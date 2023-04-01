package clusterSM4

import chisel3._
import chisel3.util._

import utils.SM4SBox

class NonLinearTrans extends Module {
  val pipeline_layer = 3
  val io = IO(new Bundle {
    val input = Input(UInt(32.W))
    val output = Output(UInt(32.W))
  })

  val sboxs = Seq.fill(4)(Module(new SM4SBox))

  for (i <- 0 until 4) {
      sboxs(i).io.in := io.input((i + 1) * 8 - 1, i * 8)
  }
  io.output := ShiftRegister(Cat(sboxs(3).io.out, 
                                 sboxs(2).io.out, 
                                 sboxs(1).io.out, 
                                 sboxs(0).io.out), 1)
}