package clusterAES

import chisel3._
import chisel3.util._
import firrtl.FirrtlProtos.Firrtl.Statement.Register
import chisel3.experimental.BundleLiterals._

class AES extends Module {
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
  IdleValue.control.rounds := 0.U

  val TmpValue = Wire(new Para)
  val RoundAddsOne = Wire(new Para)

  val AddRoundKeyModule = Module(new AddRoundKey)
  val SubBytesModule = Module(new SubBytes)
  val ShiftRowsModule = Module(new ShiftRows)
  val MixColumnsModule = Module(new MixColumns)

  val Buffer = RegNext(ShiftRowsModule.io.para_out, IdleValue)

  def isFinalRound(keylength: UInt, rounds: UInt): Bool = (rounds - 10.U) / 2.U === keylength

  // Need to do this in a nicer way... maybe reassignment?
  RoundAddsOne.state := AddRoundKeyModule.io.para_out.state
  RoundAddsOne.control.isIdle := AddRoundKeyModule.io.para_out.control.isIdle
  RoundAddsOne.control.keylength := AddRoundKeyModule.io.para_out.control.keylength
  RoundAddsOne.control.taskID := AddRoundKeyModule.io.para_out.control.taskID
  RoundAddsOne.control.rounds := AddRoundKeyModule.io.para_out.control.rounds + 1.U

  TmpValue := Mux(AddRoundKeyModule.io.para_out.control.isIdle,
                  IdleValue, Mux(isFinalRound(AddRoundKeyModule.io.para_out.control.keylength,
                                              AddRoundKeyModule.io.para_out.control.rounds),
                                 IdleValue, RoundAddsOne))

  SubBytesModule.io.para_in := TmpValue

  ShiftRowsModule.io.para_in := SubBytesModule.io.para_out

  MixColumnsModule.io.para_in := ShiftRowsModule.io.para_out
  
  when(io.input.fire) {
    AddRoundKeyModule.io.para_in := io.input.bits
  }.otherwise {
    AddRoundKeyModule.io.para_in := Mux(isFinalRound(Buffer.control.keylength, Buffer.control.rounds),
                                          Buffer, MixColumnsModule.io.para_out)
  }

  // AddRoundKeyModule.io.para_in := Mux(Buffer.control.isIdle, io.input.bits,
  //                                     Mux(isFinalRound(Buffer.control.keylength, Buffer.control.rounds),
  //                                         Buffer, MixColumnsModule.io.para_out))
  
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
  io.output.valid := isFinalRound(AddRoundKeyModule.io.para_out.control.keylength,
                                  AddRoundKeyModule.io.para_out.control.rounds)
  io.complete_taskID := AddRoundKeyModule.io.para_out.control.taskID
  // How to determine if a new input can come in?
  io.input.ready := Buffer.control.isIdle
}

// object Mymain extends App {
//   emitVerilog(new AES, Array("--target-dir", "generated"))
// }