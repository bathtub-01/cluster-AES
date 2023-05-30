package clusterAES

import chisel3._
import chisel3.util._
import firrtl.FirrtlProtos.Firrtl.Statement.Register
import chisel3.experimental.BundleLiterals._

class AESDecModule extends Engine {

  val IdleValue = Wire(new Para)
  IdleValue.state := Seq.fill(16)(0.U(8.W))
  IdleValue.control.isIdle := true.B
  IdleValue.control.keylength := 0.U
  IdleValue.control.taskID := 0.U
  IdleValue.control.rounds := 10.U

  val TmpValue = Wire(new Para)
  val RoundSubsOne = Wire(new Para)

  val AddRoundKeyModule = Module(new AddRoundKey)
  val InvSubBytesModule = Module(new SubBytes(false))
  val InvShiftRowsModule = Module(new ShiftRows(false))
  val InvMixColumnsModule = Module(new MixColumns(false))

  val Buffer = RegNext(TmpValue, IdleValue)
  val InputDelay = RegNext(io.input.bits, IdleValue)
  val ControlBuffer = ShiftRegisterInit(InvShiftRowsModule.io.para_out.control, 2,
                                        (new ControlInfomation).Lit(_.isIdle -> true.B, _.keylength -> 0.U,
                                                                        _.rounds -> 0.U, _.taskID -> 0.U))

  // supports AES-128, AES-192 and AES-256                                                                        
  def isFirstRound(keylength: UInt, rounds: UInt): Bool = (rounds - 9.U) / 2.U === keylength
  def isFinalRound(rounds: UInt): Bool = rounds === 0.U

  RoundSubsOne := AddRoundKeyModule.io.para_out
  RoundSubsOne.control.rounds := AddRoundKeyModule.io.para_out.control.rounds - 1.U

  when(AddRoundKeyModule.io.para_out.control.isIdle ||
       isFinalRound(AddRoundKeyModule.io.para_out.control.rounds)) {
    TmpValue := IdleValue
  }.otherwise {
    TmpValue := RoundSubsOne
  }

  InvMixColumnsModule.io.para_in := TmpValue

  InvShiftRowsModule.io.para_in := Mux(isFirstRound(Buffer.control.keylength, Buffer.control.rounds),
                                       Buffer, InvMixColumnsModule.io.para_out)

  InvSubBytesModule.io.para_in := InvShiftRowsModule.io.para_out

  when(io.input.fire) {
    io.read_task := io.input.bits.control.taskID
    io.read_round := io.input.bits.control.rounds
  }.otherwise {
    io.read_task := ControlBuffer.taskID
    io.read_round := ControlBuffer.rounds
  }
  
  when(ShiftRegister(io.input.fire, 1)) {
    AddRoundKeyModule.io.para_in := InputDelay
  }.otherwise {
    AddRoundKeyModule.io.para_in := InvSubBytesModule.io.para_out
  }

  AddRoundKeyModule.io.roundKey := io.round_key

  io.output_state.bits := AddRoundKeyModule.io.para_out.state
  io.output_state.valid := isFinalRound(AddRoundKeyModule.io.para_out.control.rounds)
  io.complete_taskID := AddRoundKeyModule.io.para_out.control.taskID
  io.input.ready := ControlBuffer.isIdle
}

// object Mymain extends App {
//   emitVerilog(new AES, Array("--target-dir", "generated"))
// }