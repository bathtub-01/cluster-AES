package controller

import clusterAES._
import axinodes._

import chisel3._
import chisel3.util._

class LoopQ extends Bundle {
  val addr = UInt(32.W)
  val slotID = UInt(4.W)
}

class Lock extends Bundle {
  val key_lock = Bool()
  val work_lock = Bool()
  val is_cbc = Bool() // work is in CBC mode
  val cbc_vec_updated = Bool()
  val last_group = Bool()
}

class Controller(encNum: Int) extends Module {
  val max_group = 26 // 1GB
  val io = IO(new Bundle {
    // AXI-Stream slave
    val fifo_in = Flipped(Decoupled(UInt(32.W)))
    // AXI-Lite slave
    val source_addr_setwork = Flipped(Decoupled(UInt(32.W))) // from CPU
    val dest_addr_setwork = Input(UInt(32.W))
    val length_setwork = Input(UInt(max_group.W)) // number of 16-byte groups
    val slotID_setwork = Input(UInt(4.W))

    val user_key = Flipped(Decoupled(Vec(16, UInt(8.W))))
    val slotID_key = Input(UInt(4.W))
    val destroy = Flipped(Decoupled(UInt(4.W)))

    val work_mode = Input(Bool()) // 0 for ECB mode, 1 for CBC mode
    val initial_vector = Input(Vec(4, UInt(32.W))) 
    val final_vector = Output(Vec(4, UInt(32.W))) // outside world may take final_vector to store intermidiate status
    val final_vector_select = Input(UInt(4.W))
    // AXI-Lite master
    val source_addr_dma = Decoupled(UInt(32.W)) // to DMA
    val dest_addr_dma = Decoupled(UInt(32.W))
    // AXI-Stream master
    val fifo_out = Decoupled(UInt(32.W))
    // busy slot
    val busy = Output(UInt(16.W))
  })

  def risingEdge(x: Bool) = x && !RegNext(x)
  def isEncUnit(id: UInt):Bool = id < (encNum.U * 4.U)

  val AESEngine = Module(new Group(encNum))
  val LockBank = RegInit(VecInit(Seq.fill(16)(0.U.asTypeOf(new Lock))))

  val CBCVector = RegInit(VecInit(Seq.fill(16)(0.U.asTypeOf(Vec(4, UInt(32.W)))))) // if a work is in ECB mode, then its CBCVector is 0
  val LastGroupText = RegInit(VecInit(Seq.fill((4 - encNum) * 4)(0.U.asTypeOf(Vec(4, UInt(32.W)))))) // for Dec units

  val AddrLoopQueue = RegInit(VecInit(Seq.fill(16)(0.U.asTypeOf(new LoopQ))))
  val LQHead = RegInit(0.U(4.W))
  val LQTail = RegInit(0.U(4.W))
  val DestAddrBank = RegInit(VecInit(Seq.fill(16)(0.U(32.W))))
  val LengthCount = RegInit(VecInit(Seq.fill(16)(0.U(max_group.W))))
  val SourceAddr = RegInit(0.U(32.W))
  val SourceAddrValid = RegInit(false.B)
  val RecentKeySetSlotID = RegInit(0.U(4.W))

  val InputFIFO = Module(new Queue(UInt(32.W), entries = 16, useSyncReadMem = true))
  val InputSlotIDFIFO = Module(new Queue(UInt(4.W), entries = 5))
  val InputSlotID = RegInit(0.U(4.W))
  val InputCount = RegInit(0.U(2.W))
  val InputSlotIDEnqWire = WireInit(0.U.asTypeOf(Decoupled(UInt(4.W))))
  val InputSlotIDDeqWire = WireInit(0.U.asTypeOf(Decoupled(UInt(4.W))))
  val CanFeed = RegInit(false.B)
  val TextInReg = RegInit(0.U.asTypeOf(Vec(4, UInt(32.W))))

  val OutputFIFO = Module(new Queue(UInt(32.W), entries = 16, useSyncReadMem = true))
  val OutputSlotIDFIFO = Module(new Queue(UInt(4.W), entries = 5))
  val OutputCount = RegInit(0.U(2.W))
  val CanDrag = RegInit(false.B)
  val OutputEnqWire = WireInit(0.U.asTypeOf(Decoupled(UInt(32.W))))
  val OutputSlotIDEnqWire = WireInit(0.U.asTypeOf(Decoupled(UInt(4.W))))
  val OutputSlotIDDeqWire = WireInit(0.U.asTypeOf(Decoupled(UInt(4.W))))
  
  val DestAddr = RegInit(0.U(32.W))
  val DestAddrValid = RegInit(false.B)
  val OutputFireCount = RegInit(0.U(3.W))
  val OutputFIFOGuard = RegInit(false.B)

  io.busy := Cat(LockBank.map(_.work_lock).reverse)
  io.final_vector := CBCVector(io.final_vector_select)
  
  when(io.user_key.fire) {
    RecentKeySetSlotID := io.slotID_key
    AESEngine.io.user_key.bits := io.user_key.bits
    AESEngine.io.user_key.valid := true.B
    AESEngine.io.workID_key := io.slotID_key
  }.otherwise {
    AESEngine.io.user_key.bits := 0.U.asTypeOf(Vec(16, UInt(8.W)))
    AESEngine.io.user_key.valid := false.B
    AESEngine.io.workID_key := 0.U
  }

  when(risingEdge(AESEngine.io.user_key.ready)) {
    LockBank(RecentKeySetSlotID).key_lock := true.B
  }

  when(io.destroy.fire) {
    LockBank(io.destroy.bits).key_lock := false.B
  }
  
  io.destroy.ready := !LockBank(io.destroy.bits).work_lock & LockBank(io.destroy.bits).key_lock
  io.user_key.ready := AESEngine.io.user_key.ready & !LockBank(io.slotID_key).key_lock & !risingEdge(AESEngine.io.user_key.ready)

  when(io.source_addr_dma.fire) {
    SourceAddrValid := false.B
  }

  when(io.source_addr_setwork.fire) { // new work comes
    LockBank(io.slotID_setwork).work_lock := true.B
    AddrLoopQueue(LQHead).addr := io.source_addr_setwork.bits
    AddrLoopQueue(LQHead).slotID := io.slotID_setwork
    LengthCount(io.slotID_setwork) := io.length_setwork
    DestAddrBank(io.slotID_setwork) := io.dest_addr_setwork
    LQHead := LQHead + 1.U
    when(io.work_mode) { // work is in CBC mode
      when(io.initial_vector.asTypeOf(UInt(128.W)) =/= 0.U) { // update CBCVec
        CBCVector(io.slotID_setwork) := io.initial_vector
      }
    }.otherwise { // work is in ECB mode
      CBCVector(io.slotID_setwork) := 0.U.asTypeOf(Vec(4, UInt(32.W)))
    }
    LockBank(io.slotID_setwork).is_cbc := io.work_mode
    LockBank(io.slotID_setwork).cbc_vec_updated := true.B
  }.otherwise {
    when(AddrLoopQueue(LQTail).addr =/= 0.U) { // loop queue is not empty
      when(!SourceAddrValid) { // Output is needed
        SourceAddr := AddrLoopQueue(LQTail).addr
        SourceAddrValid := true.B
        InputSlotIDEnqWire.enq(AddrLoopQueue(LQTail).slotID)
        when(LengthCount(AddrLoopQueue(LQTail).slotID) =/= 1.U) { // not the final group of a work
        AddrLoopQueue(LQHead).addr := AddrLoopQueue(LQTail).addr + 16.U
        AddrLoopQueue(LQHead).slotID := AddrLoopQueue(LQTail).slotID
        LengthCount(AddrLoopQueue(LQTail).slotID) := LengthCount(AddrLoopQueue(LQTail).slotID) - 1.U
        LQHead := LQHead + 1.U
        }.otherwise { // it is the final group of a work
          LengthCount(AddrLoopQueue(LQTail).slotID) := 0.U
          LockBank(AddrLoopQueue(LQTail).slotID).last_group := true.B
        }
        when(LQHead =/= LQTail) { // loop queue is not full
          AddrLoopQueue(LQTail).addr := 0.U
        }
        LQTail := LQTail + 1.U
      }
    }
  }

  InputSlotIDFIFO.io.enq <> InputSlotIDEnqWire
  InputSlotIDDeqWire <> InputSlotIDFIFO.io.deq
  AESEngine.io.workID_start := InputSlotID
  AESEngine.io.text_in.valid := CanFeed & LockBank(InputSlotID).cbc_vec_updated
  when(AESEngine.io.text_in.fire) {
    CanFeed := false.B
    when(LockBank(InputSlotID).is_cbc) { // if the work is in ECB mode, we don't update the cbc at all and leave it as 0 during the work
      LockBank(InputSlotID).cbc_vec_updated := false.B
    }
  }
  when(!CanFeed) { // collect text for AESEngine
    InputFIFO.io.deq.ready := true.B
    when(InputFIFO.io.deq.fire) { // take 32-bit from InputFIFO
      TextInReg(InputCount) := InputFIFO.io.deq.bits
      when(InputCount === 3.U) {
        InputCount := 0.U
        CanFeed := true.B
      }.otherwise {
        InputCount := InputCount + 1.U
      }
    }
  }.otherwise {
    InputFIFO.io.deq.ready := false.B
  }
  when(InputCount === 3.U) {
    InputSlotID := InputSlotIDDeqWire.deq()
  }
  when(isEncUnit(InputSlotID)) { // Enc unit: input text needs to XOR CBCVector
    val tmp_textin = TextInReg.asTypeOf(Vec(16, UInt(8.W)))
    val tmp_cbc = CBCVector(InputSlotID).asTypeOf(Vec(16, UInt(8.W)))
    AESEngine.io.text_in.bits := tmp_textin.zip(tmp_cbc).map{case (a, b) => a ^ b}
  }.otherwise { // Dec unit
    AESEngine.io.text_in.bits := TextInReg.asTypeOf(Vec(16, UInt(8.W)))
    when(LockBank(InputSlotID).is_cbc && AESEngine.io.text_in.fire) { // store the cypher text as next round's cbc vector
      LastGroupText(InputSlotID - encNum.U * 4.U) := TextInReg
    }
  }

  OutputFIFO.io.enq <> OutputEnqWire
  OutputSlotIDFIFO.io.enq <> OutputSlotIDEnqWire
  OutputSlotIDFIFO.io.deq <> OutputSlotIDDeqWire
  AESEngine.io.text_out.ready := CanDrag
  when(AESEngine.io.text_out.fire) {
    CanDrag := false.B
  }
  when(!CanDrag) { // collect output text
    when(AESEngine.io.text_out.valid && OutputEnqWire.ready) { // output is valid
      val output_text = Cat(AESEngine.io.text_out.bits(OutputCount * 4.U + 3.U),
                            AESEngine.io.text_out.bits(OutputCount * 4.U + 2.U),
                            AESEngine.io.text_out.bits(OutputCount * 4.U + 1.U),
                            AESEngine.io.text_out.bits(OutputCount * 4.U))
      when(!isEncUnit(AESEngine.io.workID_read)) { // Dec unit: output text needs to XOR CBCVector
        OutputEnqWire.bits := output_text ^ CBCVector(AESEngine.io.workID_read)(OutputCount)
        when(OutputCount === 3.U && LockBank(AESEngine.io.workID_read).is_cbc) { // update CBCVector
          CBCVector(AESEngine.io.workID_read) := LastGroupText(AESEngine.io.workID_read - encNum.U * 4.U)
          LockBank(AESEngine.io.workID_read).cbc_vec_updated := true.B
        }
      }. otherwise { // Enc unit
        when(OutputCount === 0.U && LockBank(AESEngine.io.workID_read).is_cbc) { // update CBCVector
          val tmp_textout = AESEngine.io.text_out.bits.asTypeOf(Vec(4, UInt(32.W)))
          CBCVector(AESEngine.io.workID_read) := tmp_textout
          LockBank(AESEngine.io.workID_read).cbc_vec_updated := true.B
        }
        OutputEnqWire.bits := output_text
      }
      OutputEnqWire.valid := true.B
      when(OutputCount === 0.U) {
        OutputSlotIDEnqWire.enq(AESEngine.io.workID_read)
      }
      when(OutputCount === 3.U) {
        OutputCount := 0.U
        CanDrag := true.B
        when(LockBank(AESEngine.io.workID_read).last_group === true.B) { // last group of a work has been finished
          LockBank(AESEngine.io.workID_read).work_lock := false.B
          LockBank(AESEngine.io.workID_read).last_group := false.B
        }
      }.otherwise {
        OutputCount := OutputCount + 1.U
      }
    }
  }

  io.dest_addr_dma.bits := DestAddr
  io.dest_addr_dma.valid := DestAddrValid

  when(io.fifo_out.fire) {
    OutputFireCount := OutputFireCount + 1.U
    
  }
  when(OutputFireCount === 4.U) {
    OutputFireCount := 0.U
    OutputFIFOGuard := false.B
  }
  when(OutputSlotIDDeqWire.valid && !DestAddrValid) {
    val id = OutputSlotIDDeqWire.deq()
    val addr = DestAddrBank(id)
    DestAddr := addr
    DestAddrBank(id) := addr + 16.U
    DestAddrValid := true.B
  }
  when(io.dest_addr_dma.fire) {
    DestAddrValid := false.B
    OutputFIFOGuard := true.B
  }

  InputFIFO.io.enq <> io.fifo_in
  io.fifo_out.bits := OutputFIFO.io.deq.bits
  io.fifo_out.valid := OutputFIFO.io.deq.valid & OutputFIFOGuard
  OutputFIFO.io.deq.ready := io.fifo_out.ready & OutputFIFOGuard
  io.source_addr_setwork.ready := io.length_setwork > 0.U & LockBank(io.slotID_setwork).key_lock & 
                           !LockBank(io.slotID_setwork).work_lock
  io.source_addr_dma.bits := SourceAddr
  io.source_addr_dma.valid := SourceAddrValid
}

// object Mymain extends App {
//   emitVerilog(new Controller(3), Array("--target-dir", "generated"))
// }