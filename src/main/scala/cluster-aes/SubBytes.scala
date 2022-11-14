package clusterAES

import chisel3._
import chisel3.util._
import chisel3.experimental.BundleLiterals._

// For now only consider encryption
class SubBytes() extends Module {
  val pipeline_layer = 3
  val io = IO(new Bundle {
    val para_in = Input(new Para)
    val para_out = Output(new Para)
  })

  val sboxs = Seq.fill(16)(Module(new AESSBox))
  for (i <- 0 until 16) {
      sboxs(i).io.in := io.para_in.state(i)
      io.para_out.state(i) := ShiftRegister(sboxs(i).io.out, 3) // delay 1 clk, indeed!
  }
  
  io.para_out.control := ShiftRegisterInit(io.para_in.control, pipeline_layer,
                                           (new ControlInfomation).Lit(_.isIdle -> true.B, _.keylength -> 0.U,
                                                                        _.rounds -> 0.U, _.taskID -> 0.U))
}

// class bmod extends Module {
//   val io = IO(new Bundle {
//     val in1 = Input(UInt(4.W))
//     val in2 = Input(UInt(2.W))
//     val out1 = Output(UInt(4.W))
//     val out2 = Output(UInt(2.W))
//   })
//   val A = Module(new amod)
//   val B = Module(new amod)
//   A.io.control <> B.io.control
// }

class amod extends Module  {
  val io = IO(new Bundle {
    val para_in = Input(new Para)
    val para_out = Output(new Para)
   })

  val IdleValue = Wire(new ControlInfomation)
  IdleValue.isIdle := true.B
  IdleValue.keylength := 0.U
  IdleValue.taskID := 0.U
  IdleValue.rounds := 5.U
  
  io.para_out.state := io.para_in.state
  io.para_out.control := (new ControlInfomation).Lit(_.rounds -> (IdleValue.rounds.asUInt + 1.U))
}

object Mymain extends App {
  emitVerilog(new amod, Array("--target-dir", "generated"))
}