package clusterAES

import chisel3._

class AddRoundKey extends Module {
  val io = IO(new Bundle {
    val para_in = Input(new Para)
    val para_out = Output(new Para)
    val roundKey = Input(Vec(16, UInt(8.W)))
  })

  for (i <- 0 until 16) {
    io.para_out.state(i) := io.para_in.state(i) ^ io.roundKey(i)
  }
  io.para_out.control := io.para_in.control
}