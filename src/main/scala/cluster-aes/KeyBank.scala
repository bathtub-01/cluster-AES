package clusterAES

import chisel3._
import chisel3.util._

// 4 * 10 * 16 * 8 - AES-128 only
class KeyBank extends Module {
  val io = IO(new Bundle {
    val read_task = Input(UInt(2.W))
    val read_round = Input(UInt(4.W))
    val read_key = Output(Vec(16, UInt(8.W)))

    val write_en = Input(Bool())
    val write_task = Input(UInt(2.W))
    val write_round = Input(UInt(4.W))
    val write_key = Input(Vec(16, UInt(8.W)))
  })

  // val mem = SyncReadMem(60, Vec(16, UInt(8.W)))

  // io.read_key := mem.read(io.read_task * 15.U + io.read_round)

  // when(io.write_en) {
  //   mem.write(io.write_task * 15.U + io.write_round, io.write_key)
  // }
  val mem = SyncReadMem(4 * 10, Vec(16, UInt(8.W)))

  io.read_key := mem.read(io.read_task * 10.U + io.read_round)

  when(io.write_en) {
    mem.write(io.write_task * 10.U + io.write_round, io.write_key)
  }
}