package clusterAES

import chisel3._
import chisel3.util._

abstract class Engine extends Module {
  val io = IO(new Bundle {
    val input = Flipped(Decoupled(new Para))
    val round_key = Input(Vec(16, UInt(8.W)))
    val output_state = ValidIO(Vec(16, UInt(8.W)))
    val read_task = Output(UInt(2.W))
    val read_round = Output(UInt(4.W))
    val complete_taskID = Output(UInt(2.W))
  })
}

class Para extends Bundle {
  val state = Vec(16, UInt(8.W))
  val control = new ControlInfomation
}

class ControlInfomation extends Bundle {
  val isIdle = Bool()
  // keylength: 0-128bit, 1-192bit, 2-256bit, 3-IdleValue
  val keylength = UInt(2.W)
  val taskID = UInt(2.W)
  val rounds = UInt(4.W)
}

object ShiftRegisterInit {
  def apply[T <: Data](next: T, n: Int, init: T): T = {
    if (n == 1) {
      RegNext(next, init)
    } else if (n > 0) {
      RegNext(apply(next, n - 1, init), init)
    } else {
      next
    }
  }
}

// class ControlInfomation extends Bundle {
//   val isIdle_in = Input(Bool())
//   val isIdle_out = Output(Bool())

//   // keylength: 0-128bit, 1-192bit, 2-256bit, 3-IdleValue
//   val keylength_in = Input(UInt(2.W))
//   val keylength_out = Output(UInt(2.W))

//   val taskID_in = Input(UInt(2.W))
//   val taskID_out = Output(UInt(2.W))

//   val rounds_in = Input(UInt(4.W))
//   val rounds_out = Output(UInt(4.W))
// }

// object Bypass_CtrlInfo {
//   def apply(cio: ControlInfomation, delay: Int): Int = {
//     cio.isIdle_out := ShiftRegister(cio.isIdle_in, delay)
//     cio.keylength_out := ShiftRegister(cio.keylength_in, delay)
//     cio.taskID_out := ShiftRegister(cio.taskID_in, delay)
//     cio.rounds_out := ShiftRegister(cio.rounds_in, delay)
//     0
//   }
// }