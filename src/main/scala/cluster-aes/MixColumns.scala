package clusterAES

import chisel3._
import chisel3.util._
import chisel3.experimental.BundleLiterals._

// For now only consider encryption.

class MixColumns extends Module {
  val pipeline_layer = 1
  val io = IO(new Bundle {
    val para_in = Input(new Para)
    val para_out = Output(new Para)
  })

  val pms = Seq.fill(4)(Module(new PolyMul))
  for (i <- 0 until 4) {
    for (j <- 0 until 4) {
      pms(i).io.in(j) := io.para_in.state(i * 4 + j)
      io.para_out.state(i * 4 + j) := ShiftRegister(pms(i).io.out(j), 1)
    }
  }
  io.para_out.control := ShiftRegisterInit(io.para_in.control, pipeline_layer,
                                           (new ControlInfomation).Lit(_.isIdle -> true.B, _.keylength -> 0.U,
                                                                        _.rounds -> 0.U, _.taskID -> 0.U))
}

// object Mymain extends App {
//   emitVerilog(new MixColumns, Array("--target-dir", "generated"))
// }