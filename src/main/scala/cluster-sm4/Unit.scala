package clusterSM4

import chisel3._
import chisel3.util._

class Unit extends Module {
  val io = IO(new Bundle {
    val input = Flipped(DecoupledIO(new Para))
    val output = DecoupledIO(Vec(4, UInt(32.W)))
    val output_task = Output(UInt(2.W))

    val write_en = Input(Bool())
    val write_task = Input(UInt(2.W))
    val write_round = Input(UInt(5.W))
    val write_key = Input(UInt(32.W))
  })

  val InPara = Reg(Vec(4, new Para))
  val OutState = Reg(Vec(4, Vec(4, UInt(32.W))))
  val Active = RegInit(VecInit(Seq.fill(4)(false.B)))
  val Busy = RegInit(VecInit(Seq.fill(4)(false.B)))
  val Completed = RegInit(VecInit(Seq.fill(4)(false.B)))

  val KeyBankModule = Module(new KeyBank)
  val EngineModule = Module(new SM4Module)

  val InArbiter = Module(new RRArbiter(new Para, 4))
  val OutArbiter = Module(new RRArbiter(Vec(4, UInt(32.W)), 4))

  io.input.ready := !Busy(io.input.bits.control.taskID)

  when(io.input.fire) {
    val select = io.input.bits.control.taskID
    InPara(select) := io.input.bits
    Active(select) := true.B
    Busy(select) := true.B
  }

  for(task <- 0 until 4) {
    InArbiter.io.in(task).bits := InPara(task)
    InArbiter.io.in(task).valid := Active(task)
    OutArbiter.io.in(task).bits := OutState(task)
    OutArbiter.io.in(task).valid := Completed(task)
    when(InArbiter.io.in(task).fire) {
      Active(task) := false.B
    }
    when(OutArbiter.io.in(task).fire) {
      Completed(task) := false.B
      Busy(task) := false.B
    }
  }

  EngineModule.io.input <> InArbiter.io.out

  when(EngineModule.io.output.fire) {
    val select = EngineModule.io.complete_taskID
    OutState(select) := EngineModule.io.output.bits
    Completed(select) := true.B
  }
  
  KeyBankModule.io.read_task := EngineModule.io.read_task
  KeyBankModule.io.read_round := EngineModule.io.read_round
  EngineModule.io.round_key := KeyBankModule.io.read_key

  KeyBankModule.io.write_en := io.write_en
  KeyBankModule.io.write_task := io.write_task
  KeyBankModule.io.write_round := io.write_round
  KeyBankModule.io.write_key := io.write_key

  io.output <> OutArbiter.io.out
  io.output_task := OutArbiter.io.chosen
}