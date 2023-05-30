/*
    The implementation in this file 
      comes from https://github.com/chipsalliance/rocket-chip/pull/2950/
    Author: https://github.com/ZenithalHourlyRate
    Below is the License information from the original file
*/

// SPDX-License-Identifier: Apache-2.0
package clusterAES

import chisel3._
import chisel3.util._


// Generator for multiplier on GF(2^8). (Multiply input by y)
class GFMul(y: Int) extends Module {
  val io = IO(new Bundle {
    val in = Input(UInt(8.W))
    val out = Output(UInt(8.W))
  })

  // x*f(x) = 2*in in GF
  def xt(in: UInt): UInt = (in << 1)(7,0) ^ Mux(in(7), 0x1b.U(8.W), 0x00.U(8.W))
  // 4*in in GF
  def xt2(in: UInt): UInt = xt(xt(in))
  // 8*in in GF
  def xt3(in: UInt): UInt = xt(xt2(in))

  require(y != 0)
  io.out := VecInit(
    (if ((y & 0x1) != 0) Seq(   (io.in)) else Nil) ++
    (if ((y & 0x2) != 0) Seq( xt(io.in)) else Nil) ++
    (if ((y & 0x4) != 0) Seq(xt2(io.in)) else Nil) ++
    (if ((y & 0x8) != 0) Seq(xt3(io.in)) else Nil)
  ).reduce(_ ^ _)
}

// Input: 8-bit coefficient
// Output: result coefficients for multiply 3x^3 + x^2 + x + 2 or bx^3 + dx^2 + 9x + e, arranging by 4 terms
class TermMul(isEnc: Boolean) extends Module {
  val io = IO(new Bundle {
    val in = Input(UInt(8.W))
    val out = Output(UInt(32.W))
  })

  def m(x: UInt, y: Int): UInt = {
    val m = Module(new GFMul(y))
    m.io.in := x
    m.io.out
  }

  val out = if(isEnc) Cat(m(io.in, 3), io.in, io.in, m(io.in, 2))
              else Cat(m(io.in, 0xb), m(io.in, 0xd), m(io.in, 9), m(io.in, 0xe))
  io.out := out
}


class PolyMul(isEnc: Boolean) extends Module {
  val io = IO(new Bundle {
    val in = Input(Vec(4, UInt(8.W)))
    val out = Output(Vec(4, UInt(8.W)))
  })

  def asBytes(in: UInt): Vec[UInt] = VecInit(in.asBools.grouped(8).map(VecInit(_).asUInt).toSeq)
  val tmp = io.in.zipWithIndex.map({
    case (b, i) => {
      val m = Module(new TermMul(isEnc))
      m.io.in := b
      m.io.out.rotateLeft(i * 8)
    }
  }).reduce(_ ^ _)
  io.out := asBytes(tmp)
}
