package clusterSM4

import chisel3._
import chisel3.util._

// although the hardware for sm4 enc/dec is the same, seperating them can be helpful to
// create same interface with AES and to handle CBC mode easier
class Group(encNum: Int) extends Module {
  require(encNum >= 0 && encNum <= 4)
  val io = IO(new Bundle {
    val workID_key = Input(UInt(4.W))
    val user_key = Flipped(Decoupled(Vec(4, UInt(32.W))))

    val workID_start = Input(UInt(4.W))
    val text_in = Flipped(DecoupledIO(Vec(4, UInt(32.W))))
    
    val workID_read = Output(UInt(4.W))
    val text_out = Decoupled(Vec(4, UInt(32.W)))   
  })

  val WorkID_Key = RegInit(0.U(4.W))
  val OutArbiter = Module(new RRArbiter(Vec(4, UInt(32.W)), 4))
  
  val KeyExpansionModule = Module(new KeyExpansion)
  var encCount = 0
  val Units = Seq.fill(4)(Module(new Unit))

  def takeUnitID(workID: UInt): UInt = workID(3, 2)
  def takeTaskID(workID: UInt): UInt = workID(1, 0)

  when(io.user_key.fire) {
    WorkID_Key := io.workID_key
  }

  KeyExpansionModule.io.user_key <> io.user_key

  for(i <- 0 until 4) {
    when(takeUnitID(WorkID_Key) === i.U) {
      Units(i).io.write_en := KeyExpansionModule.io.write_round.valid
      Units(i).io.write_task := takeTaskID(WorkID_Key)
      Units(i).io.write_round := KeyExpansionModule.io.write_round.bits
      Units(i).io.write_key := KeyExpansionModule.io.roundKey
    }.otherwise {
      Units(i).io.write_en := false.B
      Units(i).io.write_task := 0.U
      Units(i).io.write_round := 0.U
      Units(i).io.write_key := DontCare
    }

    when(takeUnitID(io.workID_start) === i.U) {
      Units(i).io.input.valid := io.text_in.valid
      Units(i).io.input.bits.state := io.text_in.bits
      Units(i).io.input.bits.control.isIdle := false.B
      val isEnc = if(i < encNum) true.B else false.B
      Units(i).io.input.bits.control.isEnc := isEnc
      Units(i).io.input.bits.control.taskID := takeTaskID(io.workID_start)
      Units(i).io.input.bits.control.rounds := 0.U
    }.otherwise {
      Units(i).io.input.valid := false.B
      Units(i).io.input.bits.state := DontCare
      Units(i).io.input.bits.control.isIdle := true.B
      Units(i).io.input.bits.control.isEnc := false.B
      Units(i).io.input.bits.control.taskID := 0.U
      Units(i).io.input.bits.control.rounds := 0.U
    }

    OutArbiter.io.in(i) <> Units(i).io.output
  }

  io.text_in.ready := MuxLookup(takeUnitID(io.workID_start), false.B, 
                                (0 until 4).map(i => (i.U, Units(i).io.input.ready)))
  io.text_out <> OutArbiter.io.out
  io.workID_read := Cat(OutArbiter.io.chosen, MuxLookup(OutArbiter.io.chosen, 0.U, 
                                                        (0 until 4).map(i => (i.U, Units(i).io.output_task))))
}
