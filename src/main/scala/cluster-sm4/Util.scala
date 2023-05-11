package clusterSM4

import chisel3._
import chisel3.util._

class Para extends Bundle {
  val state = Vec(4, UInt(32.W))
  val control = new ControlInfomation
}

class ControlInfomation extends Bundle {
  val isIdle = Bool()
  val isEnc = Bool()
  val taskID = UInt(2.W)
  val rounds = UInt(5.W)
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