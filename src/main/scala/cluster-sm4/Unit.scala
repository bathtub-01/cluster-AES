package clusterSM4

import chisel3._
import chisel3.util._

class DebugUnit extends Module {
  val io = IO(new Bundle {
    val input = Flipped(DecoupledIO(new Para))
    val output = DecoupledIO(Vec(4, UInt(32.W)))

    val user_key = Flipped(Decoupled(Vec(4, UInt(32.W))))
  })
  val Engine = Module(new SM4Module)
  val KeyBankModule = Module(new DebugKeyBank)
  val KeyExpansionModule = Module(new KeyExpansion)

  io.user_key <> KeyExpansionModule.io.user_key
  KeyBankModule.io.write_en := KeyExpansionModule.io.write_round.valid
  KeyBankModule.io.write_round := KeyExpansionModule.io.write_round.bits
  KeyBankModule.io.write_key := KeyExpansionModule.io.roundKey

  KeyBankModule.io.read_round := Engine.io.read_round
  Engine.io.round_key := KeyBankModule.io.read_key
  io.input <> Engine.io.input
  io.output.valid := Engine.io.output.valid
  io.output.bits := Engine.io.output.bits
}