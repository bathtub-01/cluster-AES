package clusterAES

import chisel3._
import chisel3.util._

class Wrapper extends Module {
  val io = IO(new Bundle {
    val input = Flipped(Decoupled(new Para))
    val output = ValidIO(Vec(16, UInt(8.W)))
    val complete_taskID = Output(UInt(2.W))
  })

  val aesEnc = Module(new AESEncModule)
  aesEnc.io.input.bits := io.input.bits
  aesEnc.io.input.valid := io.input.valid
  io.input.ready := aesEnc.io.input.ready
  io.output.bits := aesEnc.io.output.bits
  io.output.valid := aesEnc.io.output.valid
  io.complete_taskID := aesEnc.io.complete_taskID
}

object Mymain extends App {
  emitVerilog(new Wrapper, Array("--target-dir", "generated"))
}