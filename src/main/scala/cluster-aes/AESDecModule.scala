package clusterAES

import chisel3._
import chisel3.util._
import firrtl.FirrtlProtos.Firrtl.Statement.Register
import chisel3.experimental.BundleLiterals._

class AESDecModule extends Module {
  val io = IO(new Bundle {
    val input = Flipped(Decoupled(new Para))
    val output = ValidIO(Vec(16, UInt(8.W)))
    val complete_taskID = Output(UInt(2.W))
  })

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

  def isFirstRound(keylength: UInt, rounds: UInt): Bool = (rounds - 9.U) / 2.U === keylength
  def isFinalRound(rounds: UInt): Bool = rounds === 0.U

  RoundSubsOne := AddRoundKeyModule.io.para_out
  RoundSubsOne.control.rounds := AddRoundKeyModule.io.para_out.control.rounds - 1.U

  TmpValue := Mux(AddRoundKeyModule.io.para_out.control.isIdle,
                  IdleValue, Mux(isFinalRound(AddRoundKeyModule.io.para_out.control.rounds),
                                 IdleValue, RoundSubsOne))

  InvMixColumnsModule.io.para_in := TmpValue

  InvShiftRowsModule.io.para_in := Mux(isFirstRound(Buffer.control.keylength, Buffer.control.rounds),
                                       Buffer, InvMixColumnsModule.io.para_out)

  InvSubBytesModule.io.para_in := InvShiftRowsModule.io.para_out
  
  when(io.input.fire) {
    AddRoundKeyModule.io.para_in := io.input.bits
  }.otherwise {
    AddRoundKeyModule.io.para_in := InvSubBytesModule.io.para_out
  }

  val expK128 = ROMeKeys.expandedKey128
  val expK192 = ROMeKeys.expandedKey192
  val expK256 = ROMeKeys.expandedKey256
  AddRoundKeyModule.io.roundKey := 0.U(AddRoundKeyModule.io.roundKey.getWidth.W).asTypeOf(Vec(16, UInt(8.W)))
  switch(AddRoundKeyModule.io.para_in.control.keylength){
    is(0.U) {
      AddRoundKeyModule.io.roundKey := expK128(AddRoundKeyModule.io.para_in.control.rounds)
    }
    is(1.U) {
      AddRoundKeyModule.io.roundKey := expK192(AddRoundKeyModule.io.para_in.control.rounds)
    }
    is(2.U) {
      AddRoundKeyModule.io.roundKey := expK256(AddRoundKeyModule.io.para_in.control.rounds)
    }
    is(3.U) {
      AddRoundKeyModule.io.roundKey := expK256(AddRoundKeyModule.io.para_in.control.rounds)
    }
  }

  io.output.bits := AddRoundKeyModule.io.para_out.state
  io.output.valid := isFinalRound(AddRoundKeyModule.io.para_out.control.rounds)
  io.complete_taskID := AddRoundKeyModule.io.para_out.control.taskID

  io.input.ready := InvSubBytesModule.io.para_out.control.isIdle
}

// object Mymain extends App {
//   emitVerilog(new AES, Array("--target-dir", "generated"))
// }