package clusterAES

import chisel3._
import chisel3.util._
import chisel3.experimental.BundleLiterals._

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

class amod extends Module  {
  val io = IO(new Bundle {
    val write = Input(Bool())
    val input = Input(UInt(2.W))
    val output = Output(UInt(2.W))
   })
  
   when(io.write) {
    io.output := io.input + 1.U
   }.otherwise {
    io.output := io.input + 1.U
   }

}

// object Mymain extends App {
//   emitVerilog(new amod, Array("--target-dir", "generated"))
// }