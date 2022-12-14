package clusterAES

import chisel3._
import chisel3.util._
import chisel3.experimental.BundleLiterals._

object Rcon {
  val rcon: Seq[Int] = Seq(
    0x01, 0x02, 0x04, 0x08,
    0x10, 0x20, 0x40, 0x80,
    0x1b, 0x36, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00
  )
}

// class KSBPara extends Bundle {
//   val word = Vec(4, UInt(8.W))
//   val taskID = UInt(2.W)
//   val isIdle = Bool()
// }

// class KSubBytes extends Module {
//   val pipeline_layer = 3
//   val io = IO(new Bundle {
//     val para_in = Input(new KSBPara)
//     val para_out = Output(new KSBPara)
//   })

//   val sboxs = Seq.fill(4)(Module(new AESSBox(true)))
//   for (i <- 0 until 4) {
//       sboxs(i).io.in := io.para_in.word(i)
//       io.para_out.word(i) := ShiftRegister(sboxs(i).io.out, 1)
//   }
  
//   io.para_out.taskID := ShiftRegisterInit(io.para_in.taskID, pipeline_layer, 0.U)
//   io.para_out.isIdle := ShiftRegisterInit(io.para_in.isIdle, pipeline_layer, true.B)
// }

class KSubBytes extends Module {
  // val pipeline_layer = 3
  val io = IO(new Bundle {
    val input = Input(Vec(4, UInt(8.W)))
    val output = Output(Vec(4, UInt(8.W)))
  })

  val sboxs = Seq.fill(4)(Module(new AESSBox(true)))
  for (i <- 0 until 4) {
      sboxs(i).io.in := io.input(i)
      io.output(i) := ShiftRegister(sboxs(i).io.out, 1)
  }
}

class KeyExpansion128 extends Module {
  val io = IO(new Bundle {
    val user_key = Flipped(Decoupled(Vec(16, UInt(8.W))))
    // val keylength = Input(UInt(2.W))
    // val taskID = Input(UInt(2.W))
    // val round = Input(UInt(4.W))
    val write_round = ValidIO(UInt(4.W))
    val roundKey = Output(Vec(16, UInt(8.W)))
    // val complete_taskID = ValidIO(UInt(2.W))
  })

  val Running = RegInit(false.B)
  val Counter = RegInit(0.U(2.W))
  val RoundIter = RegInit(0.U(4.W))

  val PrevKey = Reg(Vec(16, UInt(8.W)))

  val KSubBytesModule = Module(new KSubBytes)
  val RoundConst = VecInit(Rcon.rcon.map(_.U(8.W)))

  def takeWord(in: Vec[UInt], nth: Int): Vec[UInt] = VecInit(in.slice(nth * 4, nth * 4 + 4)) 
  def chooseRcon128(round: UInt): UInt = RoundConst(round - 1.U)

  KSubBytesModule.io.input := takeWord(PrevKey, 3)

  when(io.user_key.fire) {
    Running := true.B
    PrevKey := io.user_key.bits
  }

  when(Running) {
    Counter := Counter + 1.U
  }.otherwise {
    Counter := 0.U
    RoundIter := 0.U
  }

  when(Running && Counter === 0.U) {
    RoundIter := RoundIter + 1.U
  }

  when(RoundIter > 10.U) {
    Running := false.B
  }

  when(Counter === 0.U && RoundIter =/= 0.U) {
    val w4 = KSubBytesModule.io.output.asUInt.rotateRight(8) ^ 
              chooseRcon128(RoundIter) ^
              takeWord(PrevKey, 0).asUInt
    val w5 = w4 ^ takeWord(PrevKey, 1).asUInt
    val w6 = w5 ^ takeWord(PrevKey, 2).asUInt
    val w7 = w6 ^ takeWord(PrevKey, 3).asUInt

    val k = Seq(w4, w5, w6, w7).map(_.asTypeOf(Vec(4, UInt(8.W)))).flatten
    PrevKey := k
  }

  when(Counter === 1.U) {
    io.write_round.valid := true.B
  }.otherwise {
    io.write_round.valid := false.B
  }

  io.user_key.ready := !Running
  io.write_round.bits := RoundIter - 1.U
  io.roundKey := PrevKey
}

// class KeyExpansion extends Module {
//   val io = IO(new Bundle {
//     val user_key = Flipped(Decoupled(Vec(32, UInt(8.W))))
//     val keylength = Input(UInt(2.W))
//     val taskID = Input(UInt(2.W))
//     val round = Input(UInt(4.W))
//     val roundKey = Output(Vec(16, UInt(8.W)))
//     val complete_taskID = ValidIO(UInt(2.W))
//   })

//   val KeyMem = SyncReadMem(60, Vec(16, UInt(8.W))) // (4 * 15 * 16)B
//   val TaskCounter = RegInit(0.U(2.W)) // update every clk
//   val TaskIter = RegInit(VecInit(Seq.fill(4)(0.U(4.W)))) // round counter, update every 4-clk
//   val KeyLength = Reg(Vec(4, UInt(2.W)))
//   val IsIdle = RegInit(VecInit(Seq.fill(4)(true.B)))
//   val PrevKey0 = Reg(Vec(4, Vec(16, UInt(8.W))))
//   val PrevKey1 = Reg(Vec(4, Vec(16, UInt(8.W))))
//   val NewKey = Reg(Vec(4, Vec(16, UInt(8.W)))) 
//   val TaskSelect = Wire((Vec(4, Vec(4, UInt(8.W)))))
//   val RoundConst = VecInit(Rcon.rcon.map(_.U(8.W)))

//   val KSubBytesModule = Module(new KSubBytes)


//   TaskCounter := TaskCounter + 1.U

//   KSubBytesModule.io.para_in.taskID := TaskCounter 
//   KSubBytesModule.io.para_in.isIdle := IsIdle(TaskCounter)
//   KSubBytesModule.io.para_in.word := TaskSelect(TaskCounter) 
  
//   def takeWord(in: Vec[UInt], nth: Int): Vec[UInt] = VecInit(in.slice(nth * 4, nth * 4 + 4)) 
//   def partialAssign(lhs: Vec[UInt], from: Int, until: Int, rhs: Vec[UInt]) = 
//     lhs.slice(from, until).zip(rhs).foreach{case(a, b) => a := b}
//   def chooseRcon128(round: UInt): UInt = RoundConst(round - 1.U)
//   def chooseRcon192(round: UInt): UInt = RoundConst((round % 3.U) + (round / 3.U * 2.U) - 1.U)
//   def chooseRcon256(round: UInt): UInt = RoundConst((round >> 1) - 1.U)

//   io.user_key.ready := (TaskCounter + 1.U === io.taskID) && IsIdle(io.taskID)
//   when(io.user_key.fire) { 
//     IsIdle(io.taskID) := false.B
//     KeyLength(io.taskID) := io.keylength
//     NewKey(io.taskID) := io.user_key.bits.dropRight(16)
//     KeyMem.write(io.taskID * 15.U, VecInit(io.user_key.bits.dropRight(16)))
//     KeyMem.write(io.taskID * 15.U + 1.U, VecInit(io.user_key.bits.drop(16)))
//   }

//   TaskSelect := DontCare
//   io.complete_taskID.bits := DontCare
//   io.complete_taskID.valid := false.B
//   for (i <- 0 until 4) {
//     when(TaskCounter + 1.U === i.U && !IsIdle(i)) { 
//       TaskIter(i) := TaskIter(i) + 1.U 
//       PrevKey0(i) := NewKey(i)
//       PrevKey1(i) := PrevKey0(i)
//     }
//     when((KeyLength(i) === 0.U && TaskIter(i) > 10.U) ||
//          (KeyLength(i) === 1.U && TaskIter(i) > 12.U) ||
//          (KeyLength(i) === 2.U && TaskIter(i) > 14.U)) {
//       IsIdle(i) := true.B
//       TaskIter(i) := 0.U
//       io.complete_taskID.valid := true.B
//       io.complete_taskID.bits := i.U 
//     }
//     switch(KeyLength(i)) {
//       is(0.U) { // 128-bit
//         when(TaskIter(i) === 0.U) {
//           // do nothing
//         }.elsewhen(!IsIdle(i)) {
//           TaskSelect(i) := takeWord(PrevKey0(i), 3)
//           when(!KSubBytesModule.io.para_out.isIdle && KSubBytesModule.io.para_out.taskID === i.U) {
//             val w4 = KSubBytesModule.io.para_out.word.asUInt.rotateRight(8) ^ 
//                       chooseRcon128(TaskIter(i)) ^
//                       takeWord(PrevKey0(i), 0).asUInt
//             val w5 = w4 ^ takeWord(PrevKey0(i), 1).asUInt
//             val w6 = w5 ^ takeWord(PrevKey0(i), 2).asUInt
//             val w7 = w6 ^ takeWord(PrevKey0(i), 3).asUInt

//             val k = Seq(w4, w5, w6, w7).map(_.asTypeOf(Vec(4, UInt(8.W)))).flatten
            
//             NewKey(i) := k
//             KeyMem.write((i * 15).U + TaskIter(i), VecInit(k))
//           }
//         }
//       }
//       is(1.U) { // 192-bit
//         when(TaskIter(i) === 0.U && !IsIdle(i)) {
//           when(TaskCounter + 2.U === i.U || TaskCounter + 1.U === i.U){
//             //read from keymem
//             NewKey(i) := KeyMem.read((i * 15 + 1).U)
//           }
//         }.elsewhen(TaskIter(i) === 1.U && !IsIdle(i)) {
//           TaskSelect(i) := takeWord(NewKey(i), 1)
//           when(!KSubBytesModule.io.para_out.isIdle && KSubBytesModule.io.para_out.taskID === i.U) {
//             val w6 = KSubBytesModule.io.para_out.word.asUInt.rotateRight(8) ^ 
//                       chooseRcon192(TaskIter(i)) ^
//                       takeWord(PrevKey0(i), 0).asUInt
//             val w7 = w6 ^ takeWord(PrevKey0(i), 1).asUInt
//             partialAssign(NewKey(i), 8, 12, w6.asTypeOf(Vec(4, UInt(8.W))))
//             partialAssign(NewKey(i), 12, 16, w7.asTypeOf(Vec(4, UInt(8.W))))
//           }
//         }.elsewhen(TaskIter(i) % 3.U === 0.U && !IsIdle(i)) {
//           TaskSelect(i) := takeWord(PrevKey0(i), 3)
//           when(!KSubBytesModule.io.para_out.isIdle && KSubBytesModule.io.para_out.taskID === i.U) {
//             val w4 = KSubBytesModule.io.para_out.word.asUInt.rotateRight(8) ^ 
//                       chooseRcon192(TaskIter(i)) ^
//                       takeWord(PrevKey1(i), 2).asUInt
//             val w5 = w4 ^ takeWord(PrevKey1(i), 3).asUInt
//             val w6 = w5 ^ takeWord(PrevKey0(i), 0).asUInt
//             val w7 = w6 ^ takeWord(PrevKey0(i), 1).asUInt

//             val k = Seq(w4, w5, w6, w7).map(_.asTypeOf(Vec(4, UInt(8.W)))).flatten
            
//             NewKey(i) := k
//             KeyMem.write((i * 15).U + TaskIter(i), VecInit(k))
//           }
//         }.elsewhen(TaskIter(i) % 3.U === 1.U && !IsIdle(i)) {
//           val w4 = takeWord(PrevKey0(i), 3).asUInt ^ takeWord(PrevKey1(i), 2).asUInt
//           val w5 = w4 ^ takeWord(PrevKey1(i), 3).asUInt
//           TaskSelect(i) := w5.asTypeOf(Vec(4, UInt(8.W)))
//           when(!KSubBytesModule.io.para_out.isIdle && KSubBytesModule.io.para_out.taskID === i.U) {
//             val w6 = KSubBytesModule.io.para_out.word.asUInt.rotateRight(8) ^ 
//                       chooseRcon192(TaskIter(i)) ^
//                       takeWord(PrevKey0(i), 0).asUInt
//             val w7 = w6 ^ takeWord(PrevKey0(i), 1).asUInt

//             val k = Seq(w4, w5, w6, w7).map(_.asTypeOf(Vec(4, UInt(8.W)))).flatten
            
//             NewKey(i) := k
//             KeyMem.write((i * 15).U + TaskIter(i), VecInit(k))
//           }
//         }.elsewhen(TaskIter(i) % 3.U === 2.U && !IsIdle(i)) {
//           val w4 = takeWord(PrevKey0(i), 3).asUInt ^ takeWord(PrevKey1(i), 2).asUInt
//           val w5 = w4 ^ takeWord(PrevKey1(i), 3).asUInt
//           val w6 = w5 ^ takeWord(PrevKey0(i), 0).asUInt
//           val w7 = w6 ^ takeWord(PrevKey0(i), 1).asUInt

//           val k = Seq(w4, w5, w6, w7).map(_.asTypeOf(Vec(4, UInt(8.W)))).flatten
            
//           NewKey(i) := k
//           KeyMem.write((i * 15).U + TaskIter(i), VecInit(k))
//         }
//       }
//       is(2.U) { // 256-bit
//         when(TaskIter(i) === 0.U || TaskIter(i) === 1.U) {
//           when(TaskCounter + 2.U === i.U || TaskCounter + 1.U === i.U){
//             NewKey(i) := KeyMem.read((i * 15 + 1).U)
//           }
//         }.elsewhen(!IsIdle(i)) {
//           TaskSelect(i) := takeWord(PrevKey0(i), 3)
//           when(!KSubBytesModule.io.para_out.isIdle && KSubBytesModule.io.para_out.taskID === i.U) {
//             val s = KSubBytesModule.io.para_out.word.asUInt
//             val src = Mux(TaskIter(i) % 2.U === 0.U, s.rotateRight(8) ^ chooseRcon256(TaskIter(i)), s)
//             val w4 = src ^ takeWord(PrevKey1(i), 0).asUInt
//             val w5 = w4 ^ takeWord(PrevKey1(i), 1).asUInt
//             val w6 = w5 ^ takeWord(PrevKey1(i), 2).asUInt
//             val w7 = w6 ^ takeWord(PrevKey1(i), 3).asUInt

//             val k = Seq(w4, w5, w6, w7).map(_.asTypeOf(Vec(4, UInt(8.W)))).flatten
      
//             NewKey(i) := k
//             KeyMem.write((i * 15).U + TaskIter(i), VecInit(k))
//           }
//         }
//       }
//     }
//   }
//   io.roundKey := KeyMem.read(io.taskID * 15.U + io.round)
// }

// object Mymain extends App {
//   emitVerilog(new KeyExpansion, Array("--target-dir", "generated"))
// }