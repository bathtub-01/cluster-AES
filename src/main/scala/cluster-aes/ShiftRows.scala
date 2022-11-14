package clusterAES

import chisel3._
import chisel3.util._

// Don't need to put registers here since the circuit is too simple.
class ShiftRows extends Module {
  val io = IO(new Bundle {
    val para_in = Input(new Para)
    val para_out = Output(new Para)
  })

  io.para_out.state(0) := io.para_in.state(0)
  io.para_out.state(1) := io.para_in.state(5)
  io.para_out.state(2) := io.para_in.state(10)
  io.para_out.state(3) := io.para_in.state(15)

  io.para_out.state(4) := io.para_in.state(4)
  io.para_out.state(5) := io.para_in.state(9)
  io.para_out.state(6) := io.para_in.state(14)
  io.para_out.state(7) := io.para_in.state(3)

  io.para_out.state(8) := io.para_in.state(8)
  io.para_out.state(9) := io.para_in.state(13)
  io.para_out.state(10) := io.para_in.state(2)
  io.para_out.state(11) := io.para_in.state(7)

  io.para_out.state(12) := io.para_in.state(12)
  io.para_out.state(13) := io.para_in.state(1)
  io.para_out.state(14) := io.para_in.state(6)
  io.para_out.state(15) := io.para_in.state(11)

  io.para_out.control := io.para_in.control
}