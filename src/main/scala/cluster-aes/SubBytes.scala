package clusterAES

import chisel3._
import chisel3.util._
import chisel3.experimental.BundleLiterals._

import utils.AESSBox
class SubBytes(isEnc: Boolean) extends Module {
  val pipeline_layer = 3
  val io = IO(new Bundle {
    val para_in = Input(new Para)
    val para_out = Output(new Para)
  })

  val sboxs = Seq.fill(16)(Module(new AESSBox(isEnc)))
  for (i <- 0 until 16) {
      sboxs(i).io.in := io.para_in.state(i)
      io.para_out.state(i) := ShiftRegister(sboxs(i).io.out, 1) // delay 1 clk, indeed!
  }
  
  io.para_out.control := ShiftRegisterInit(io.para_in.control, pipeline_layer,
                                           (new ControlInfomation).Lit(_.isIdle -> true.B, _.keylength -> 0.U,
                                                                        _.rounds -> 5.U, _.taskID -> 0.U))
}
