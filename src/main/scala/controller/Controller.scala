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
}

class Controller(encNum: Int) extends Module {
  val max_group = 26 // 1GB
  val io = IO(new Bundle {
    // AXI-Stream slave
    val fifo_in = Flipped(Decoupled(UInt(32.W)))
    // AXI-Lite slave
    val addr_setwork = Flipped(Decoupled(UInt(32.W))) // from CPU
    val length_setwork = Input(UInt(max_group.W)) // number of 16-byte groups
    val slotID_setwork = Input(UInt(4.W))

    val user_key = Flipped(Decoupled(Vec(16, UInt(8.W))))
    val slotID_key = Input(UInt(4.W))
    val destroy = Flipped(Decoupled(UInt(4.W)))
    // AXI-Lite master
    val addr_dma = Decoupled(UInt(32.W)) // to DMA
    // AXI-Stream master
    // val fifo_out = Decoupled(UInt(32.W))
  })

  val AESEngine = Module(new Group(3))
  val LockBank = RegInit(VecInit(Seq.fill(16)(0.U.asTypeOf(new Lock))))

  // val OutputFIFO = Module(new Queue(UInt(32.W), entries = 16))
  val AddrLoopQueue = RegInit(VecInit(Seq.fill(16)(0.U.asTypeOf(new LoopQ))))
  val LQHead = RegInit(0.U(4.W))
  val LQTail = RegInit(0.U(4.W))
  val LengthCount = RegInit(VecInit(Seq.fill(16)(0.U(max_group.W))))
  val OutputAddr = RegInit(0.U(32.W))
  val OutputAddrValid = RegInit(false.B)
  
  when(io.user_key.fire) {
    LockBank(io.slotID_key).key_lock := true.B
    AESEngine.io.user_key.bits := io.user_key.bits
    AESEngine.io.user_key.valid := true.B
    AESEngine.io.workID_key := io.slotID_key
  }.otherwise {
    AESEngine.io.user_key.bits := 0.U.asTypeOf(Vec(16, UInt(8.W)))
    AESEngine.io.user_key.valid := false.B
    AESEngine.io.workID_key := 0.U
  }

  when(io.destroy.fire) {
    LockBank(io.destroy.bits).key_lock := false.B
  }
  
  io.destroy.ready := !LockBank(io.destroy.bits).work_lock & LockBank(io.destroy.bits).key_lock
  io.user_key.ready := AESEngine.io.user_key.ready & !LockBank(io.slotID_key).key_lock

  when(io.addr_setwork.fire) { // new work comes
    LockBank(io.slotID_setwork).work_lock := true.B
    AddrLoopQueue(LQHead).addr := io.addr_setwork.bits
    AddrLoopQueue(LQHead).slotID := io.slotID_setwork
    LengthCount(io.slotID_setwork) := io.length_setwork
    LQHead := LQHead + 1.U
    when(io.addr_dma.fire) { 
      OutputAddrValid := false.B
    }
  }.otherwise {
    when(AddrLoopQueue(LQTail).addr =/= 0.U) { // loop queue is not empty
      when(io.addr_dma.fire || OutputAddr === 0.U) { // Output is needed
        OutputAddr := AddrLoopQueue(LQTail).addr
        OutputAddrValid := true.B
        EnqWire.enq(AddrLoopQueue(LQTail).slotID)
        when(LengthCount(AddrLoopQueue(LQTail).slotID) =/= 1.U) { // not the final group of a work
        AddrLoopQueue(LQHead).addr := AddrLoopQueue(LQTail).addr + 16.U
        AddrLoopQueue(LQHead).slotID := AddrLoopQueue(LQTail).slotID
        LengthCount(AddrLoopQueue(LQTail).slotID) := LengthCount(AddrLoopQueue(LQTail).slotID) - 1.U
        LQHead := LQHead + 1.U
        }.otherwise { // it is the final group of a work
          LengthCount(AddrLoopQueue(LQTail).slotID) := 0.U
          // LockBank(AddrLoopQueue(LQTail).slotID) := false.B
        }
        when(LQHead =/= LQTail) { // loop queue is not full
          AddrLoopQueue(LQTail).addr := 0.U
        }
        LQTail := LQTail + 1.U
      }
    }.otherwise {
      when(io.addr_dma.fire) { // all done
        OutputAddrValid := false.B
        OutputAddr := 0.U
      }
    }
  }

  val InputFIFO = Module(new Queue(UInt(32.W), entries = 16, useSyncReadMem = true))
  val InputSlotIDFIFO = Module(new Queue(UInt(4.W), entries = 5))
  val DeqCount = RegInit(0.U(2.W))
  val EnqWire = WireInit(0.U.asTypeOf(Decoupled(UInt(4.W))))
  val CanFeed = RegInit(false.B)
  AESEngine.io.text_in.valid := CanFeed
  when(AESEngine.io.text_in.fire) {
    CanFeed := false.B
  }
  InputSlotIDFIFO.io.enq <> EnqWire
  when(!CanFeed) { // collect text for AESEngine
    InputFIFO.io.deq.ready := true.B
    when(InputFIFO.io.deq.fire) { // take 32-bit from InputFIFO
      TextInWire(DeqCount) := InputFIFO.io.deq.bits
      when(DeqCount === 3.U) {
        DeqCount := 0.U
        CanFeed := true.B
      }.otherwise {
        DeqCount := DeqCount + 1.U
      }
    }
  }

  InputFIFO.io.enq <> io.fifo_in
  // io.fifo_out <> OutputFIFO.io.deq
  io.addr_setwork.ready := io.length_setwork > 0.U & LockBank(io.slotID_setwork).key_lock & 
                           !LockBank(io.slotID_setwork).work_lock
  io.addr_dma.bits := OutputAddr
  io.addr_dma.valid := OutputAddrValid

  val TextInWire = WireInit(0.U.asTypeOf(Vec(4, UInt(32.W))))
  AESEngine.io.text_in.bits := TextInWire.asTypeOf(Vec(16, UInt(8.W)))

  // ad-hoc code
  AESEngine.io.text_in.valid := false.B
  AESEngine.io.text_in.bits := 0.U.asTypeOf(Vec(16, UInt(8.W)))
  AESEngine.io.workID_start := 0.U
  AESEngine.io.text_out.ready := false.B
  InputFIFO.io.deq.ready := false.B
}

trait CtrollerAXILiteSlave extends AXI4LiteSlaveInterface {
  lazy val regCount = 8
  /*AXI register definitions.They must be define as lazy since regmap must be overrided as lazy*/
  lazy val addr_setwork_reg = RegInit(0.U(bitsWide.value.W))
  lazy val setwork_control_reg = RegInit(0.U(bitsWide.value.W))
  lazy val user_key_reg0 = RegInit(0.U(bitsWide.value.W))
  lazy val user_key_reg1 = RegInit(0.U(bitsWide.value.W))
  lazy val user_key_reg2 = RegInit(0.U(bitsWide.value.W))
  lazy val user_key_reg3 = RegInit(0.U(bitsWide.value.W))
  lazy val key_control_reg = RegInit(0.U(bitsWide.value.W))
  lazy val status_reg = RegInit(0.U(bitsWide.value.W))
  lazy val regmap = AXI4LiteRegMap(0 -> AXI4LiteWriteReg(addr_setwork_reg), 
                                   1 -> AXI4LiteWriteReg(setwork_control_reg),
                                   2 -> AXI4LiteWriteReg(user_key_reg0),
                                   3 -> AXI4LiteWriteReg(user_key_reg1),
                                   4 -> AXI4LiteWriteReg(user_key_reg2),
                                   5 -> AXI4LiteWriteReg(user_key_reg3),
                                   6 -> AXI4LiteWriteReg(key_control_reg),
                                   7 -> AXI4LiteReadReg(status_reg))
  def connect_status_reg(in: UInt) = {
    status_reg := in
  }
}

trait ControllerAXIStreamSlave extends AXI4StreamSlaveInterface {
  /**
   * Write data to queue
   * @param memio Queue enq interface
   */
  def write(memio:DecoupledIO[UInt]) = {
    when(newDataReceived) {
      when(memio.ready) {
        memio.enq(axiStreamSignals.data)
      }
    }
  }
}

class ControllerAXI extends AXIModule {
  // val m=AXIClockAndResetDomain(new AXI4LiteMasterNode with MasterInterfaceImp) // Create master node
  // don't use AXIClockAndResetDomain to seperate these clocks! create a single clock by your own! 
  val aclock= IO(Input(Clock()))
  val areset= IO(Input(Bool()))
  withClockAndReset(aclock, !areset.asBool) {
    val LiteSlave = new AXI4LiteSlaveNode with CtrollerAXILiteSlave 
    val StreamSlave = new AXI4StreamSlaveNode with ControllerAXIStreamSlave
    val Ctl = Module(new Controller(3))

    // LiteSlave conncection
    Ctl.io.addr_setwork.bits := LiteSlave.addr_setwork_reg
    Ctl.io.addr_setwork.valid := LiteSlave.setwork_control_reg(30)
    Ctl.io.length_setwork := LiteSlave.setwork_control_reg(25, 0)
    Ctl.io.slotID_setwork := LiteSlave.setwork_control_reg(29, 26)
    Ctl.io.user_key.bits := Cat(LiteSlave.user_key_reg3, 
                                LiteSlave.user_key_reg2,
                                LiteSlave.user_key_reg1, 
                                LiteSlave.user_key_reg0).asTypeOf(Vec(16, UInt(8.W)))
    Ctl.io.user_key.valid := LiteSlave.key_control_reg(8)
    Ctl.io.slotID_key := LiteSlave.key_control_reg(3, 0)
    Ctl.io.destroy.bits := LiteSlave.key_control_reg(7, 4)
    Ctl.io.destroy.valid := LiteSlave.key_control_reg(9)
    LiteSlave.connect_status_reg(Cat(Ctl.io.addr_setwork.ready,
                                     Ctl.io.user_key.ready,
                                     Ctl.io.destroy.ready))
    Ctl.io.addr_dma.ready := true.B // ad-hoc

    // StreamSlave connection
    val EnqWire = WireInit(0.U.asTypeOf(Decoupled(UInt(32.W)))) 
    Ctl.io.fifo_in <> EnqWire
    StreamSlave.write(EnqWire)
  }
}

object Mymain extends App {
  emitVerilog(new ControllerAXI, Array("--target-dir", "generated"))
}