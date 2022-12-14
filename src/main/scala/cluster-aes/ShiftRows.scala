package clusterAES

import chisel3._
import chisel3.util._

// Don't need to put registers here since the circuit is too simple.
class ShiftRows(isEnc: Boolean) extends Module {
  val io = IO(new Bundle {
    val para_in = Input(new Para)
    val para_out = Output(new Para)
  })

  io.para_out.state(0) := io.para_in.state(0)
  val out_1 = if(isEnc) io.para_in.state(5) else io.para_in.state(13)
  io.para_out.state(1) := out_1
  io.para_out.state(2) := io.para_in.state(10)
  val out_3 = if(isEnc) io.para_in.state(15) else io.para_in.state(7)
  io.para_out.state(3) := out_3

  io.para_out.state(4) := io.para_in.state(4)
  val out_5 = if(isEnc) io.para_in.state(9) else io.para_in.state(1)
  io.para_out.state(5) := out_5
  io.para_out.state(6) := io.para_in.state(14)
  val out_7 = if(isEnc) io.para_in.state(3) else io.para_in.state(11)
  io.para_out.state(7) := out_7

  io.para_out.state(8) := io.para_in.state(8)
  val out_9 = if(isEnc) io.para_in.state(13) else io.para_in.state(5)
  io.para_out.state(9) := out_9
  io.para_out.state(10) := io.para_in.state(2)
  val out_11 = if(isEnc) io.para_in.state(7) else io.para_in.state(15)
  io.para_out.state(11) := out_11

  io.para_out.state(12) := io.para_in.state(12)
  val out_13 = if(isEnc) io.para_in.state(1) else io.para_in.state(9)
  io.para_out.state(13) := out_13
  io.para_out.state(14) := io.para_in.state(6)
  val out_15 = if(isEnc) io.para_in.state(11) else io.para_in.state(3)
  io.para_out.state(15) := out_15

  io.para_out.control := io.para_in.control
}