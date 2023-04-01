package clusterSM4

import chisel3._
import chisel3.util._

class LinearTrans extends Module {
  val pipeline_layer = 1
  val io = IO(new Bundle {
    val input = Input(UInt(32.W))
    val output = Output(UInt(32.W))
  })

  def rotate_left(in: UInt, n: Int): UInt = (in << n) ^ in(in.getWidth - 1, in.getWidth - n)
  val left2 = rotate_left(io.input, 2)
  val left10 = rotate_left(io.input, 10)
  val left18 = rotate_left(io.input, 18)
  val left24 = rotate_left(io.input, 24)

  io.output := ShiftRegister(io.input ^ left2 ^ left10 ^ left18 ^ left24, 1)
}

class KlinearTrans extends Module {
  val io = IO(new Bundle {
    val input = Input(UInt(32.W))
    val output = Output(UInt(32.W))
  })

  def rotate_left(in: UInt, n: Int): UInt = (in << n) ^ in(in.getWidth - 1, in.getWidth - n)
  val left13 = rotate_left(io.input, 13)
  val left23 = rotate_left(io.input, 23)
  
  io.output := io.input ^ left13 ^ left23
}