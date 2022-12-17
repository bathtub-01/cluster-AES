package clusterAES

import chisel3._
import chisel3.util._

// a Group contains 1 KeyExpansionModule and 4 Units
// the first "encNum" Units are for encryption and the rest are for decryption
class Group(encNum: Int) extends Module {
  require(encNum >= 0 && encNum <= 4)
  val io = IO(new Bundle {
    val workID_key = Input(UInt(4.W))
    val user_key = Flipped(Decoupled(Vec(16, UInt(8.W))))
    // signal that setkey is done - user_key.ready!

    val workID_start = Input(UInt(4.W))
    val text_in = Flipped(ValidIO(Vec(16, UInt(8.W))))
    val completed = Output(Vec(16, Bool()))
    
    val workID_read = Input(UInt(4.W))
    val text_out = Decoupled(Vec(16, UInt(8.W)))   
  })

  val WorkID_Key = RegInit(0.U(4.W))
  
  val KeyExpansionModule = Module(new KeyExpansion128)
  var encCount = 0
  val Units = Seq.fill(4)({
    encCount = encCount + 1
    Module(new Unit(encCount <= encNum))
  })

  def takeUnitID(workID: UInt): UInt = workID(3, 2)
  def takeTaskID(workID: UInt): UInt = workID(1, 0)

  KeyExpansionModule.io.user_key <> io.user_key

  io.completed := Units(3).io.completed ++ Units(2).io.completed ++
                  Units(1).io.completed ++ Units(0).io.completed

  io.text_out <> DontCare
  for(i <- 0 until 4) {
    Units(i).io.write_en := DontCare
    Units(i).io.write_task := DontCare
    Units(i).io.write_round := DontCare
    Units(i).io.write_key := DontCare
    Units(i).io.input <> DontCare
    Units(i).io.output_select := DontCare
    Units(i).io.output.ready := DontCare
    when(takeUnitID(WorkID_Key) === i.U) {
      Units(i).io.write_en := KeyExpansionModule.io.write_round.valid
      Units(i).io.write_task := takeTaskID(WorkID_Key)
      Units(i).io.write_round := KeyExpansionModule.io.write_round.bits
      Units(i).io.write_key := KeyExpansionModule.io.roundKey
    }
    when(takeUnitID(io.workID_start) === i.U) {
      Units(i).io.input.valid := io.text_in.valid
      Units(i).io.input.bits.state := io.text_in.bits
      Units(i).io.input.bits.control.isIdle := false.B
      Units(i).io.input.bits.control.keylength := 0.U // FOR NOW ONLY AES-128
      Units(i).io.input.bits.control.taskID := takeTaskID(io.workID_start)
      val first_round = if(i < encNum) 0.U else 10.U // FOR NOW ONLY AES-128
      Units(i).io.input.bits.control.rounds := first_round
    }
    when(takeUnitID(io.workID_read) === i.U) {
      Units(i).io.output_select := takeTaskID(io.workID_read)
      io.text_out <> Units(i).io.output
    }
  }

}