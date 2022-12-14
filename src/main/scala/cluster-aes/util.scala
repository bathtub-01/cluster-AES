package clusterAES

import chisel3._
import chisel3.util.ShiftRegister

class Para extends Bundle {
  val state = Vec(16, UInt(8.W))
  val control = new ControlInfomation
}

class ControlInfomation extends Bundle {
  val isIdle = Bool()
  val enc = Bool()
  val keylength = UInt(2.W) // 0-128bit, 1-192bit, 2-256bit
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
