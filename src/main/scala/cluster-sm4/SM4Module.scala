package clusterSM4

import chisel3._
import chisel3.util._
import chisel3.experimental.BundleLiterals._

// the enc and dec processes in SM4 only differ in the order they use round key
class SM4Module extends Module {
  val io = IO(new Bundle {
    val input = Flipped(Decoupled(new Para))
    val round_key = Input(UInt(32.W))
    val output = ValidIO(Vec(4, UInt(32.W)))
    val read_task = Output(UInt(2.W))
    val read_round = Output(UInt(5.W))
    val complete_taskID = Output(UInt(2.W))
  })

  val IdleValue = (new Para).Lit(_.state -> VecInit(Seq.fill(4)(0.U(32.W))),
                                 _.control -> (new ControlInfomation).Lit(_.isIdle -> true.B,
                                                                          _.isEnc -> true.B,
                                                                          _.rounds -> 0.U,
                                                                          _.taskID -> 0.U))

  val RoundTransInputWire = WireInit(IdleValue)
  val LinearTransModule = Module(new LinearTrans)
  val NonLinearTransModule = Module(new NonLinearTrans)
  val PipelineReg0 = RegInit(IdleValue)
  val PipelineReg1 = RegInit(IdleValue)
  val PipelineReg2 = RegInit(IdleValue)
  val PipelineReg3 = RegInit(IdleValue)
  val InputDelay = RegNext(io.input.bits, IdleValue)
  val InputFireDelay = RegNext(io.input.fire, false.B)
  val ReadKeySelectWire = WireInit(IdleValue.control)
  val UpdatedStateWire = WireInit(IdleValue)

  def isFinalRound(rounds: UInt): Bool = rounds === 32.U

  LinearTransModule.io.input := NonLinearTransModule.io.output
  NonLinearTransModule.io.input := RoundTransInputWire.state(1) ^ RoundTransInputWire.state(2) ^
                                   RoundTransInputWire.state(3) ^ io.round_key

  PipelineReg1 := PipelineReg0
  PipelineReg2 := PipelineReg1
  PipelineReg3 := PipelineReg2
  PipelineReg0 := RoundTransInputWire 
  
  UpdatedStateWire.control.isIdle := Mux(isFinalRound(PipelineReg3.control.rounds), false.B,
                                         PipelineReg3.control.isIdle)
  UpdatedStateWire.control.isEnc := PipelineReg3.control.isEnc
  UpdatedStateWire.control.taskID := PipelineReg3.control.taskID
  UpdatedStateWire.control.rounds := PipelineReg3.control.rounds + 1.U
  UpdatedStateWire.state := VecInit(Seq(PipelineReg3.state(1), PipelineReg3.state(2),
                                        PipelineReg3.state(3), LinearTransModule.io.output))

  io.input.ready := PipelineReg2.control.isIdle
  RoundTransInputWire := Mux(!UpdatedStateWire.control.isIdle, UpdatedStateWire,
                             Mux(InputFireDelay, InputDelay,
                             IdleValue))

  // read round key
  ReadKeySelectWire := Mux(!PipelineReg2.control.isIdle, PipelineReg2.control,
                            Mux(io.input.fire, io.input.bits.control, IdleValue.control))
  io.read_round := Mux(ReadKeySelectWire.isEnc, ReadKeySelectWire.rounds,
                                                31.U - ReadKeySelectWire.rounds)
  io.read_task := ReadKeySelectWire.taskID

  // time for output
  io.output.bits := Mux(isFinalRound(PipelineReg2.control.rounds), PipelineReg2.state,
                                                                   IdleValue.state)
  io.output.valid := isFinalRound(PipelineReg2.control.rounds)
}