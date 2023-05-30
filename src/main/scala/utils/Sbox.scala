/*
    The SBox's circuit implementation in this file 
      comes from https://github.com/chipsalliance/rocket-chip/pull/2950/
    Author: https://github.com/ZenithalHourlyRate
    Below is the License information from the original file
*/

// SPDX-License-Identifier: Apache-2.0
//
//  This is translated from https://github.com/riscv/riscv-crypto
//
//    2020-01-29    Markku-Juhani O. Saarinen <mjos@pqshield.com>
//    Copyright (c) 2020, PQShield Ltd. All rights reserved.
//    Converted to Chisel in 2022

/*
    [BoPe12] Boyar J., Peralta R. "A Small Depth-16 Circuit for the AES
    S-Box." Proc.SEC 2012. IFIP AICT 376. Springer, pp. 287-298 (2012)
    DOI: https://doi.org/10.1007/978-3-642-30436-1_24
    Preprint: https://eprint.iacr.org/2011/332.pdf
    [Ny93] Nyberg K., "Differentially Uniform Mappings for Cryptography",
    Proc. EUROCRYPT '93, LNCS 765, Springer, pp. 55-64 (1993)
    DOI: https://doi.org/10.1007/3-540-48285-7_6
*/

package utils

import chisel3._

// inserted registers will cause a two-cycle delay
class AESSBox(isEnc: Boolean) extends Module {
  val io = IO(new Bundle {
    val in = Input(UInt(8.W))
    val out = Output(UInt(8.W))
  })

  val st1 = if(isEnc) SBoxAESEncIn(io.in) else SBoxAESDecIn(io.in)
  val r1 = RegNext(st1)
  val mid = SBoxMid(r1)
  val r2 = RegNext(mid)
  val out =  if(isEnc) SBoxAESEncOut(r2) else SBoxAESDecOut(r2)
  io.out := out
}

class SM4SBox extends Module {
  val io = IO(new Bundle {
    val in = Input(UInt(8.W))
    val out = Output(UInt(8.W))
  })

  val st1 = SBoxSM4In(io.in)
  val r1 = RegNext(st1, st1)
  val mid = SBoxMid(r1)
  val r2 = RegNext(mid, mid)
  val out = SBoxSM4Out(r2)
  io.out := out
}

// top (inner) linear layer for AES
object SBoxAESEncIn {
  def apply(x: UInt): UInt = {
    val t = Wire(Vec(6, Bool()))
    val y = Wire(Vec(21, Bool()))
    t( 0) := x( 3) ^ x( 1)
    t( 1) := x( 6) ^ x( 5)
    t( 2) := x( 6) ^ x( 2)
    t( 3) := x( 5) ^ x( 2)
    t( 4) := x( 4) ^ x( 0)
    t( 5) := x( 1) ^ x( 0)
    y( 0) := x( 0)
    y( 1) := x( 7) ^ x( 4)
    y( 2) := x( 7) ^ x( 2)
    y( 3) := x( 7) ^ x( 1)
    y( 4) := x( 4) ^ x( 2)
    y( 5) := y( 1) ^ t( 0)
    y( 6) := x( 0) ^ y( 5)
    y( 7) := x( 0) ^ t( 1)
    y( 8) := y( 5) ^ t( 1)
    y( 9) := y( 3) ^ y( 4)
    y(10) := y( 5) ^ t( 2)
    y(11) := t( 0) ^ t( 2)
    y(12) := t( 0) ^ t( 3)
    y(13) := y( 7) ^ y(12)
    y(14) := t( 1) ^ t( 4)
    y(15) := y( 1) ^ y(14)
    y(16) := t( 1) ^ t( 5)
    y(17) := y( 2) ^ y(16)
    y(18) := y( 2) ^ y( 8)
    y(19) := y(15) ^ y(13)
    y(20) := y( 1) ^ t( 3)
    y.asUInt
  }
}

// top (inner) linear layer for AES^-1
object SBoxAESDecIn {
  def apply(x: UInt): UInt = {
    val t = Wire(Vec(5, Bool()))
    val y = Wire(Vec(21, Bool()))
    t( 0) := x( 1) ^  x( 0)
    t( 1) := x( 6) ^  x( 1)
    t( 2) := x( 5) ^ ~x( 2)
    t( 3) := x( 2) ^ ~x( 1)
    t( 4) := x( 5) ^ ~x( 3)
    y( 0) := x( 7) ^  t( 2)
    y( 1) := x( 4) ^  x( 3)
    y( 2) := x( 7) ^ ~x( 6)
    y( 3) := y( 1) ^  t( 0)
    y( 4) := x( 3) ^  y( 6)
    y( 5) := y(16) ^  t( 2)
    y( 6) := x( 6) ^ ~y(17)
    y( 7) := x( 0) ^ ~y( 1)
    y( 8) := y( 2) ^  y(18)
    y( 9) := y( 2) ^  t( 0)
    y(10) := y( 8) ^  t( 3)
    y(11) := y( 8) ^  y(20)
    y(12) := t( 1) ^  t( 4)
    y(13) := x( 5) ^ ~y(14)
    y(14) := y(16) ^  t( 0)
    y(15) := y(18) ^  t( 1)
    y(16) := x( 6) ^ ~x( 4)
    y(17) := x( 7) ^  x( 4)
    y(18) := x( 3) ^ ~x( 0)
    y(19) := x( 5) ^ ~y( 1)
    y(20) := y( 1) ^  t( 3)
    y.asUInt
  }
}

// The shared non-linear middle part for AES, AES^-1, and SM4.
object SBoxMid {
  def apply(x: UInt): UInt = {
    val t = Wire(Vec(46, Bool()))
    val y = Wire(Vec(18, Bool()))
    t( 0) := x( 3) ^ x(12) //1
    t( 1) := x( 9) & x( 5) //1
    t( 2) := x(17) & x( 6) //1
    t( 3) := x(10) ^ t( 1) //2
    t( 4) := x(14) & x( 0) //1
    t( 5) := t( 4) ^ t( 1) //2
    t( 6) := x( 3) & x(12) //1
    t( 7) := x(16) & x( 7) //1
    t( 8) := t( 0) ^ t( 6) //2
    t( 9) := x(15) & x(13) //1
    t(10) := t( 9) ^ t( 6) //2
    t(11) := x( 1) & x(11) //1
    t(12) := x( 4) & x(20) //1
    t(13) := t(12) ^ t(11) //2
    t(14) := x( 2) & x( 8) //1
    t(15) := t(14) ^ t(11) //2
    t(16) := t( 3) ^ t( 2) //3
    t(17) := t( 5) ^ x(18) //3
    t(18) := t( 8) ^ t( 7) //3
    t(19) := t(10) ^ t(15) //3
    t(20) := t(16) ^ t(13) //4
    t(21) := t(17) ^ t(15) //4
    t(22) := t(18) ^ t(13) //4
    t(23) := t(19) ^ x(19) //4
    t(24) := t(22) ^ t(23) //5
    t(25) := t(22) & t(20) //5
    t(26) := t(21) ^ t(25) //6
    t(27) := t(20) ^ t(21) //5
    t(28) := t(23) ^ t(25) //6
    t(29) := t(28) & t(27) //7
    t(30) := t(26) & t(24) //7
    t(31) := t(20) & t(23) //5
    t(32) := t(27) & t(31) //6
    t(33) := t(27) ^ t(25) //6
    t(34) := t(21) & t(22) //5
    t(35) := t(24) & t(34) //6
    t(36) := t(24) ^ t(25) //6
    t(37) := t(21) ^ t(29) //8
    t(38) := t(32) ^ t(33) //7
    t(39) := t(23) ^ t(30) //8
    t(40) := t(35) ^ t(36) //7
    t(41) := t(38) ^ t(40) //8
    t(42) := t(37) ^ t(39) //9
    t(43) := t(37) ^ t(38) //9
    t(44) := t(39) ^ t(40) //9
    t(45) := t(42) ^ t(41) //10
    y( 0) := t(38) & x( 7) //8
    y( 1) := t(37) & x(13) //9
    y( 2) := t(42) & x(11) //10
    y( 3) := t(45) & x(20) //11
    y( 4) := t(41) & x( 8) //9
    y( 5) := t(44) & x( 9) //10
    y( 6) := t(40) & x(17) //8
    y( 7) := t(39) & x(14) //9
    y( 8) := t(43) & x( 3) //10
    y( 9) := t(38) & x(16) //8
    y(10) := t(37) & x(15) //9
    y(11) := t(42) & x( 1) //10
    y(12) := t(45) & x( 4) //11
    y(13) := t(41) & x( 2) //9
    y(14) := t(44) & x( 5) //10
    y(15) := t(40) & x( 6) //8
    y(16) := t(39) & x( 0) //9
    y(17) := t(43) & x(12) //10
    y.asUInt
  }
}

// bottom (outer) linear layer for AES
object SBoxAESEncOut {
  def apply(x: UInt): UInt = {
    val t = Wire(Vec(30, Bool()))
    val y = Wire(Vec(8, Bool()))
    t( 0) := x(11) ^  x(12)
    t( 1) := x( 0) ^  x( 6)
    t( 2) := x(14) ^  x(16)
    t( 3) := x(15) ^  x( 5)
    t( 4) := x( 4) ^  x( 8)
    t( 5) := x(17) ^  x(11)
    t( 6) := x(12) ^  t( 5)
    t( 7) := x(14) ^  t( 3)
    t( 8) := x( 1) ^  x( 9)
    t( 9) := x( 2) ^  x( 3)
    t(10) := x( 3) ^  t( 4)
    t(11) := x(10) ^  t( 2)
    t(12) := x(16) ^  x( 1)
    t(13) := x( 0) ^  t( 0)
    t(14) := x( 2) ^  x(11)
    t(15) := x( 5) ^  t( 1)
    t(16) := x( 6) ^  t( 0)
    t(17) := x( 7) ^  t( 1)
    t(18) := x( 8) ^  t( 8)
    t(19) := x(13) ^  t( 4)
    t(20) := t( 0) ^  t( 1)
    t(21) := t( 1) ^  t( 7)
    t(22) := t( 3) ^  t(12)
    t(23) := t(18) ^  t( 2)
    t(24) := t(15) ^  t( 9)
    t(25) := t( 6) ^  t(10)
    t(26) := t( 7) ^  t( 9)
    t(27) := t( 8) ^  t(10)
    t(28) := t(11) ^  t(14)
    t(29) := t(11) ^  t(17)
    y( 0) := t( 6) ^ ~t(23)
    y( 1) := t(13) ^ ~t(27)
    y( 2) := t(25) ^  t(29)
    y( 3) := t(20) ^  t(22)
    y( 4) := t( 6) ^  t(21)
    y( 5) := t(19) ^ ~t(28)
    y( 6) := t(16) ^ ~t(26)
    y( 7) := t( 6) ^  t(24)
    y.asUInt
  }
}

// bottom (outer) linear layer for AES^-1
object SBoxAESDecOut {
  def apply(x: UInt): UInt = {
    val t = Wire(Vec(30, Bool()))
    val y = Wire(Vec(8, Bool()))
    t( 0) := x( 2) ^ x(11)
    t( 1) := x( 8) ^ x( 9)
    t( 2) := x( 4) ^ x(12)
    t( 3) := x(15) ^ x( 0)
    t( 4) := x(16) ^ x( 6)
    t( 5) := x(14) ^ x( 1)
    t( 6) := x(17) ^ x(10)
    t( 7) := t( 0) ^ t( 1)
    t( 8) := x( 0) ^ x( 3)
    t( 9) := x( 5) ^ x(13)
    t(10) := x( 7) ^ t( 4)
    t(11) := t( 0) ^ t( 3)
    t(12) := x(14) ^ x(16)
    t(13) := x(17) ^ x( 1)
    t(14) := x(17) ^ x(12)
    t(15) := x( 4) ^ x( 9)
    t(16) := x( 7) ^ x(11)
    t(17) := x( 8) ^ t( 2)
    t(18) := x(13) ^ t( 5)
    t(19) := t( 2) ^ t( 3)
    t(20) := t( 4) ^ t( 6)
    t(21) := 0.U
    t(22) := t( 2) ^ t( 7)
    t(23) := t( 7) ^ t( 8)
    t(24) := t( 5) ^ t( 7)
    t(25) := t( 6) ^ t(10)
    t(26) := t( 9) ^ t(11)
    t(27) := t(10) ^ t(18)
    t(28) := t(11) ^ t(25)
    t(29) := t(15) ^ t(20)
    y( 0) := t( 9) ^ t(16)
    y( 1) := t(14) ^ t(23)
    y( 2) := t(19) ^ t(24)
    y( 3) := t(23) ^ t(27)
    y( 4) := t(12) ^ t(22)
    y( 5) := t(17) ^ t(28)
    y( 6) := t(26) ^ t(29)
    y( 7) := t(13) ^ t(22)
    y.asUInt
  }
}

// top (inner) linear layer for SM4
object SBoxSM4In {
  def apply(x: UInt): UInt = {
    val t = Wire(Vec(7, Bool()))
    val y = Wire(Vec(21, Bool()))
    t( 0) := x(3) ^  x( 4)
    t( 1) := x(2) ^  x( 7)
    t( 2) := x(7) ^  y(18)
    t( 3) := x(1) ^  t( 1)
    t( 4) := x(6) ^  x( 7)
    t( 5) := x(0) ^  y(18)
    t( 6) := x(3) ^  x( 6)
    y( 0) := x(5) ^ ~y(10)
    y( 1) := t(0) ^  t( 3)
    y( 2) := x(0) ^  t( 0)
    y( 3) := x(3) ^  y( 4)
    y( 4) := x(0) ^  t( 3)
    y( 5) := x(5) ^  t( 5)
    y( 6) := x(0) ^ ~x( 1)
    y( 7) := t(0) ^ ~y(10)
    y( 8) := t(0) ^  t( 5)
    y( 9) := x(3)
    y(10) := x(1) ^  y(18)
    y(11) := t(0) ^  t( 4)
    y(12) := x(5) ^  t( 4)
    y(13) := x(5) ^ ~y( 1)
    y(14) := x(4) ^ ~t( 2)
    y(15) := x(1) ^ ~t( 6)
    y(16) := x(0) ^ ~t( 2)
    y(17) := t(0) ^ ~t( 2)
    y(18) := x(2) ^  x( 6)
    y(19) := x(5) ^ ~y(14)
    y(20) := x(0) ^  t( 1)
    y.asUInt
  }
}

// bottom (outer) linear layer for SM4
object SBoxSM4Out {
  def apply(x: UInt): UInt = {
    val t = Wire(Vec(30, Bool()))
    val y = Wire(Vec(8, Bool()))
    t( 0) := x( 4) ^  x( 7)
    t( 1) := x(13) ^  x(15)
    t( 2) := x( 2) ^  x(16)
    t( 3) := x( 6) ^  t( 0)
    t( 4) := x(12) ^  t( 1)
    t( 5) := x( 9) ^  x(10)
    t( 6) := x(11) ^  t( 2)
    t( 7) := x( 1) ^  t( 4)
    t( 8) := x( 0) ^  x(17)
    t( 9) := x( 3) ^  x(17)
    t(10) := x( 8) ^  t( 3)
    t(11) := t( 2) ^  t( 5)
    t(12) := x(14) ^  t( 6)
    t(13) := t( 7) ^  t( 9)
    t(14) := x( 0) ^  x( 6)
    t(15) := x( 7) ^  x(16)
    t(16) := x( 5) ^  x(13)
    t(17) := x( 3) ^  x(15)
    t(18) := x(10) ^  x(12)
    t(19) := x( 9) ^  t( 1)
    t(20) := x( 4) ^  t( 4)
    t(21) := x(14) ^  t( 3)
    t(22) := x(16) ^  t( 5)
    t(23) := t( 7) ^  t(14)
    t(24) := t( 8) ^  t(11)
    t(25) := t( 0) ^  t(12)
    t(26) := t(17) ^  t( 3)
    t(27) := t(18) ^  t(10)
    t(28) := t(19) ^  t( 6)
    t(29) := t( 8) ^  t(10)
    y( 0) := t(11) ^ ~t(13)
    y( 1) := t(15) ^ ~t(23)
    y( 2) := t(20) ^  t(24)
    y( 3) := t(16) ^  t(25)
    y( 4) := t(26) ^ ~t(22)
    y( 5) := t(21) ^  t(13)
    y( 6) := t(27) ^ ~t(12)
    y( 7) := t(28) ^ ~t(29)
    y.asUInt
  }
}