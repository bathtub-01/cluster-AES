package clusterSM4

import chisel3._
import chisel3.util._

class KeyBank extends Module {
  val io = IO(new Bundle {
    val read_task = Input(UInt(2.W))
    val read_round = Input(UInt(5.W))
    val read_key = Output(UInt(32.W))

    val write_en = Input(Bool())
    val write_task = Input(UInt(2.W))
    val write_round = Input(UInt(5.W))
    val write_key = Input(UInt(32.W))
  })

  // there is a one-cycle deley at reading
  val mem = SyncReadMem(4 * 32, UInt(32.W))

  io.read_key := mem.read(io.read_task * 32.U + io.read_round)

  when(io.write_en) {
    mem.write(io.write_task * 32.U + io.write_round, io.write_key)
  }
}
