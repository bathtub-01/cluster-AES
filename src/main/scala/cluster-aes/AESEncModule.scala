package clusterAES

import chisel3._
import chisel3.util._
import firrtl.FirrtlProtos.Firrtl.Statement.Register
import chisel3.experimental.BundleLiterals._

class AESEncModule extends Engine {

  val IdleValue = Wire(new Para)
  IdleValue.state := Seq.fill(16)(0.U(8.W))
  IdleValue.control.isIdle := true.B
  IdleValue.control.keylength := 0.U
  IdleValue.control.taskID := 0.U
  IdleValue.control.rounds := 0.U

  val TmpValue = Wire(new Para)
  val RoundAddsOne = Wire(new Para)

  val AddRoundKeyModule = Module(new AddRoundKey)
  val SubBytesModule = Module(new SubBytes(true))
  val ShiftRowsModule = Module(new ShiftRows(true))
  val MixColumnsModule = Module(new MixColumns(true))

  val Buffer = RegNext(ShiftRowsModule.io.para_out, IdleValue)
  val InputDelay = RegNext(io.input.bits, IdleValue)

  def isFinalRound(keylength: UInt, rounds: UInt): Bool = (rounds - 10.U) / 2.U === keylength

  RoundAddsOne := AddRoundKeyModule.io.para_out
  RoundAddsOne.control.rounds := AddRoundKeyModule.io.para_out.control.rounds + 1.U

  TmpValue := Mux(AddRoundKeyModule.io.para_out.control.isIdle,
                  IdleValue, Mux(isFinalRound(AddRoundKeyModule.io.para_out.control.keylength,
                                              AddRoundKeyModule.io.para_out.control.rounds),
                                 IdleValue, RoundAddsOne))

  SubBytesModule.io.para_in := TmpValue

  ShiftRowsModule.io.para_in := SubBytesModule.io.para_out

  MixColumnsModule.io.para_in := ShiftRowsModule.io.para_out
  
  when(io.input.fire) {
    io.read_task := io.input.bits.control.taskID
    io.read_round := io.input.bits.control.rounds
  }.otherwise {
    io.read_task := ShiftRowsModule.io.para_out.control.taskID
    io.read_round := ShiftRowsModule.io.para_out.control.rounds 
  }

  when(ShiftRegister(io.input.fire, 1)) {
    AddRoundKeyModule.io.para_in := InputDelay
  }.otherwise {
    AddRoundKeyModule.io.para_in := Mux(isFinalRound(Buffer.control.keylength, Buffer.control.rounds),
                                          Buffer, MixColumnsModule.io.para_out)
  }

  AddRoundKeyModule.io.roundKey := io.round_key

  io.output_state.bits := AddRoundKeyModule.io.para_out.state
  io.output_state.valid := isFinalRound(AddRoundKeyModule.io.para_out.control.keylength,
                                  AddRoundKeyModule.io.para_out.control.rounds)
  io.complete_taskID := AddRoundKeyModule.io.para_out.control.taskID
  io.input.ready := MixColumnsModule.io.para_in.control.isIdle
}

// object Mymain extends App {
//   emitVerilog(new AES, Array("--target-dir", "generated"))
// }