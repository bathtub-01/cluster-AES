package clusterAES

import chisel3._
import chisel3.util._
import chisel3.experimental.BundleLiterals._

class Unit(isEnc: Boolean) extends Module {
  val io = IO(new Bundle {
    val input = Flipped(ValidIO(new Para))
    val completed = Output(Vec(4, Bool()))
    val output_select = Input(UInt(2.W))
    val output = DecoupledIO(Vec(16, UInt(8.W)))

    val write_en = Input(Bool())
    val write_task = Input(UInt(2.W))
    val write_round = Input(UInt(4.W))
    val write_key = Input(Vec(16, UInt(8.W)))
  })
  
  val InPara = Reg(Vec(4, new Para))
  val OutState = Reg(Vec(4, Vec(16, UInt(8.W))))
  val Active = RegInit(VecInit(Seq.fill(4)(false.B)))
  val Completed = RegInit(VecInit(Seq.fill(4)(false.B)))

  val KeyBankModule = Module(new KeyBank)
  val EngineModule = if(isEnc) Module(new AESEncModule) else Module(new AESDecModule)

  val Selector = Module(new RRArbiter(new Para, 4))

  when(io.input.fire) {
    val select = io.input.bits.control.taskID
    InPara(select) := io.input.bits
    Active(select) := true.B
  }

  for(task <- 0 until 4) {
    Selector.io.in(task).bits := InPara(task)
    Selector.io.in(task).valid := Active(task)
    when(Selector.io.in(task).fire) {
      Active(task) := false.B
    }
  }

  EngineModule.io.input <> Selector.io.out

  when(EngineModule.io.output_state.fire) {
    val select = EngineModule.io.complete_taskID
    OutState(select) := EngineModule.io.output_state.bits
    Completed(select) := true.B
  }
  
  KeyBankModule.io.read_task := EngineModule.io.read_task
  KeyBankModule.io.read_round := EngineModule.io.read_round
  EngineModule.io.round_key := KeyBankModule.io.read_key

  io.completed := Completed

  io.output.bits := OutState(io.output_select)
  io.output.valid := Completed(io.output_select)
  when(io.output.fire) {
    Completed(io.output_select) := false.B
  }

  // keep them
  KeyBankModule.io.write_en := io.write_en
  KeyBankModule.io.write_task := io.write_task
  KeyBankModule.io.write_round := io.write_round
  KeyBankModule.io.write_key := io.write_key

  // io.output := EngineModule.io.output_state
}