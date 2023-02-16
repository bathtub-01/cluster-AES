package controller

import chisel3._
import chisel3.util._

class LoopQ extends Bundle {
  val addr = UInt(32.W)
  val workID = UInt(4.W)
}

class Controller(encNum: Int) extends Module {
  val max_group = 26 // 1GB
  val io = IO(new Bundle {
    // AXI-Stream slave
    // val fifo_in = Flipped(Decoupled(UInt(32.W)))
    // AXI-Lite slave
    val addr_in = Flipped(Decoupled(UInt(32.W))) // from CPU
    val length_in = Input(UInt(max_group.W)) // number of 16-byte groups
    val workID_in = Input(UInt(4.W))
    // AXI-Lite master
    val addr_out = Decoupled(UInt(32.W)) // to DMA
    // AXI-Stream master
    // val fifo_out = Decoupled(UInt(32.W))
  })

  // val InputFIFO = Module(new Queue(UInt(32.W), entries = 16))
  // val OutputFIFO = Module(new Queue(UInt(32.W), entries = 16))
  val AddrLoopQueue = RegInit(VecInit(Seq.fill(16)(0.U.asTypeOf(new LoopQ))))
  val LQHead = RegInit(0.U(4.W))
  val LQTail = RegInit(0.U(4.W))
  val LengthCount = RegInit(VecInit(Seq.fill(16)(0.U(max_group.W))))
  val OutputAddr = RegInit(0.U(32.W))
  val OutputAddrValid = RegInit(false.B)

  // when(io.addr_out.fire) {
  //   OutputAddrValid := false.B
  // }

  when(io.addr_in.fire && io.length_in > 0.U) { // new work comes
    AddrLoopQueue(LQHead).addr := io.addr_in.bits
    AddrLoopQueue(LQHead).workID := io.workID_in
    LengthCount(io.workID_in) := io.length_in
    LQHead := LQHead + 1.U
  }.otherwise {
    when(AddrLoopQueue(LQTail).addr =/= 0.U) { // loop queue is not empty
      when(io.addr_out.fire || OutputAddr === 0.U) { // Output is needed
        OutputAddr := AddrLoopQueue(LQTail).addr
        OutputAddrValid := true.B
        when(LengthCount(AddrLoopQueue(LQTail).workID) =/= 1.U) { // not the final group of a work
        AddrLoopQueue(LQHead).addr := AddrLoopQueue(LQTail).addr + 16.U
        AddrLoopQueue(LQHead).workID := AddrLoopQueue(LQTail).workID
        LengthCount(AddrLoopQueue(LQTail).workID) := LengthCount(AddrLoopQueue(LQTail).workID) - 1.U
        LQHead := LQHead + 1.U
        }.otherwise { // it is the final group of a work
          LengthCount(AddrLoopQueue(LQTail).workID) := 0.U
        }
        when(LQHead =/= LQTail) { // loop queue is not full
          AddrLoopQueue(LQTail).addr := 0.U
        }
        LQTail := LQTail + 1.U
      }
    }.otherwise {
      when(io.addr_out.fire) { // all done
        OutputAddrValid := false.B
        OutputAddr := 0.U
      }
    }
  }
  // InputFIFO.io.enq <> io.fifo_in
  // io.fifo_out <> OutputFIFO.io.deq
  // io.addr_in.ready := LengthCount(io.workID_in) === 0.U
  io.addr_in.ready := true.B
  io.addr_out.bits := OutputAddr
  io.addr_out.valid := OutputAddrValid
}

object Mymain extends App {
  emitVerilog(new Controller(3), Array("--target-dir", "generated"))
}