package clusterAES

import chisel3._
import chisel3.util._
import chisel3.experimental.BundleLiterals._

// For now only consider encryption
class SubBytes extends Module {
  val pipeline_layer = 3
  val io = IO(new Bundle {
    val para_in = Input(new Para)
    val para_out = Output(new Para)
  })

  val sboxs = Seq.fill(16)(Module(new AESSBox))
  for (i <- 0 until 16) {
      sboxs(i).io.in := io.para_in.state(i)
      io.para_out.state(i) := ShiftRegister(sboxs(i).io.out, 1) // delay 1 clk, indeed!
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
    val input1 = Input(Vec(2, UInt(2.W)))
    val input2 = Input(Vec(2, UInt(2.W)))
    val output1 = Output(Vec(4, UInt(2.W)))
    val output2 = Output(Bool())
   })
  
  val w0 = io.input1.asUInt
  val w1 = io.input2.asUInt
  // reassignment is allowed in chisel??
  io.output1 := Seq(w0.asTypeOf(Vec(2, UInt(2.W))), w1.asTypeOf(Vec(2, UInt(2.W)))).flatten
  io.output1 := Seq(w0.asTypeOf(Vec(2, UInt(2.W))), w0.asTypeOf(Vec(2, UInt(2.W)))).flatten
  io.output2 := true.B
  io.output2 := false.B
}

// object Mymain extends App {
//   emitVerilog(new amod, Array("--target-dir", "generated"))
// }