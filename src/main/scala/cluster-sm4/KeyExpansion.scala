package clusterSM4

import chisel3._
import chisel3.util._
import chisel3.experimental.BundleLiterals._

object Const {
  val fk = Seq(0xa3b1bac6L, 0x56aa3350L, 0x677d9197L, 0xb27022dcL).map(_.U)
  val ck = Seq(
    0x00070e15L, 0x1c232a31L, 0x383f464dL, 0x545b6269L,
    0x70777e85L, 0x8c939aa1L, 0xa8afb6bdL, 0xc4cbd2d9L,
    0xe0e7eef5L, 0xfc030a11L, 0x181f262dL, 0x343b4249L,
    0x50575e65L, 0x6c737a81L, 0x888f969dL, 0xa4abb2b9L,
    0xc0c7ced5L, 0xdce3eaf1L, 0xf8ff060dL, 0x141b2229L,
    0x30373e45L, 0x4c535a61L, 0x686f767dL, 0x848b9299L,
    0xa0a7aeb5L, 0xbcc3cad1L, 0xd8dfe6edL, 0xf4fb0209L,
    0x10171e25L, 0x2c333a41L, 0x484f565dL, 0x646b7279L
  ).map(_.U)
}

class KeyExpansion extends Module {
  val io = IO(new Bundle {
    val user_key = Flipped(Decoupled(Vec(4, UInt(32.W))))
    val write_round = ValidIO(UInt(5.W))
    val roundKey = Output(UInt(32.W))
  })

  val NonLinearTransModule = Module(new NonLinearTrans) // no delay!
  val KLinearTransModule = Module(new KlinearTrans)
  val KeyWord = RegInit(0.U.asTypeOf(Vec(4, UInt(32.W))))
  val Running = RegInit(false.B)
  val PipelineCounter = RegInit(0.U(2.W))
  val RoundIter = RegInit(0.U(5.W))

  val CK = VecInit(Const.ck)

  KLinearTransModule.io.input := NonLinearTransModule.io.output
  NonLinearTransModule.io.input := KeyWord(1) ^ KeyWord(2) ^ KeyWord(3) ^ CK(RoundIter)

  io.user_key.ready := !Running
  when(io.user_key.fire) {
    for(i <- 0 until 4) {
      KeyWord(i) := io.user_key.bits(i) ^ Const.fk(i)
    }
    Running := true.B
  }
  
  when(Running) {
    PipelineCounter := PipelineCounter + 1.U
    when(PipelineCounter === 3.U) {
      RoundIter := RoundIter + 1.U
      io.write_round.valid := true.B
      io.write_round.bits := RoundIter
      KeyWord(0) := KeyWord(1)
      KeyWord(1) := KeyWord(2)
      KeyWord(2) := KeyWord(3)
      KeyWord(3) := KeyWord(0) ^ KLinearTransModule.io.output
      when(RoundIter === 31.U) {
        Running := false.B
      }
     }.otherwise {
      io.write_round.valid := false.B
    }
  }.otherwise {
    io.write_round.valid := false.B
  }
  io.write_round.bits := RoundIter
  io.roundKey := KeyWord(0) ^ KLinearTransModule.io.output
}

object Mymain extends App {
  emitVerilog(new KeyExpansion, Array("--target-dir", "generated"))
}