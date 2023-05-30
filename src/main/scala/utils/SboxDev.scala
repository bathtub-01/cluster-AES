/*
    An alternative SBox circuit implementation.
    
    Adopted from: 
  
    @article{maximov2019new,
      title={New circuit minimization techniques for smaller and faster AES SBoxes},
      author={Maximov, Alexander and Ekdahl, Patrik},
      journal={IACR Transactions on Cryptographic Hardware and Embedded Systems},
      pages={91--125},
      year={2019}
    }
*/

package utils

import chisel3._
import chisel3.util.ShiftRegister

// inserted registers will cause a two-circle delay
class SBoxAlt() extends Module {
  val io = IO(new Bundle {
    val in = Input(UInt(8.W))
    val out = Output(UInt(8.W))
  })

  // chisel3.util.Reverse will add EXTRA gates into the generated Verilog code
  def reverse(in: UInt): UInt = {
    val res = Wire(Vec(8, Bool()))
    for(i <- 0 until 8) {
      res(i) := in(7 - i)
    }
    res.asUInt
  }

  val u = reverse(io.in)
  val reg_u = RegNext(u)
  val (l, x) = ftop(reg_u)
  val reg_l = RegNext(l)
  val reg_x = RegNext(x)
  val y = inv(reg_x)
  val m = mull(y, reg_l)
  val res = xor8_4(m)
  io.out := reverse(res)
}

object gates {
  def NAND(op1: Bool, op2: Bool): Bool = ~(op1 & op2)
  def NOR(op1: Bool, op2: Bool): Bool = ~(op1 | op2)
  def XNOR(op1: Bool, op2: Bool): Bool = ~(op1 ^ op2)
}
import gates._

object xor8_4 {
  def apply(k: UInt): UInt = {
    val r = Wire(Vec(8, Bool()))
    // File: 8xor4.d
    for(i <- 0 until 8) {
      r(i) := (k(i * 4) ^ k(i * 4 + 1)) ^ (k(i * 4 + 2) ^ k(i * 4 + 3)) //3
    }
    r.asUInt
  }
}

object mull {
  def apply(y: UInt, l: UInt): UInt = {
    val k = Wire(Vec(32, Bool()))
    // File: mull.d
    def con(s: Seq[Int], yi: Int) = s.foreach(i => k(i) := NAND(y(yi), l(i))) //2
    con(Seq(0, 12, 16, 20), 0)
    con(Seq(1, 5, 9, 13, 17, 21, 25, 29), 1)
    con(Seq(2, 6, 10, 14, 18, 22, 26, 30), 2)
    con(Seq(3, 7, 11, 15, 19, 23 ,27, 31), 3)
    // File: mull.f
    def coa(s: Seq[Int]) = s.foreach(i => k(i) := y(0) & l(i)) //1
    coa(Seq(4, 8, 24, 28))
    k.asUInt
  }
}

object inv {
  def apply(x: UInt): UInt = {
    val y = Wire(Vec(4, Bool()))
    val t = Wire(Vec(3, Bool()))
    // File: inv.a
    // t(0) := NAND(x(0), x(2)) //2
    // t(1) := NOR(x(1), x(3)) //2
    // t(2) := XNOR(t(0), t(1)) //4
    // y(0) := Mux(x(2), t(2), x(3)) //6
    // y(2) := Mux(x(0), t(2), x(1)) //6
    // t(3) := Mux(x(1), x(2), true.B) //2
    // y(1) := Mux(t(2), x(3), t(3)) //6
    // t(4) := Mux(x(3), x(0), true.B) //2
    // y(3) := Mux(t(2), x(1), t(4)) //6
    t(0) := x(0) ^ x(1)
    t(1) := x(0) & x(2)
    t(2) := x(2) ^ x(3)
    y(0) := XNOR(t(1), NAND(NAND(x(1), x(2)), t(2)))
    y(1) := NAND(t(2), x(1)) ^ NOR(t(1), x(3))
    y(2) := XNOR(t(1), NAND(t(0), NAND(x(0), x(3))))
    y(3) := NAND(t(0), x(3)) ^ NOR(t(1), x(1))
    y.asUInt
  }
}

object ftop {
  def apply(u: UInt): (UInt, UInt) = {
    val l = Wire(Vec(32, Bool()))
    val x = Wire(Vec(4, Bool()))
    val z = Wire(Vec(5, Bool())) 
    val q = Wire(Vec(18, Bool())) 
    val t = Wire(Vec(7, Bool()))
    // File: ftop.d
    z( 0) := u( 1) ^ u( 4) //1
    l(28) := z( 0) ^ u( 6) //2 *
    q( 0) := u( 2) ^ l(28) //3
    z( 1) := u( 5) ^ u( 6) //1
    q( 1) := u( 0) ^ z( 1) //2
    z( 2) := u( 5) ^ u( 7) //1
    q( 2) := u( 6) ^ z( 2) //2
    q(11) := u( 2) ^ u( 3) //1
    l( 6) := u( 4) ^ z( 1) //2 *
    q( 3) := q(11) ^ l( 6) //3
    q(16) := u( 0) ^ q(11) //2
    q( 4) := q(16) ^ u( 4) //3
    q( 5) := z( 0) ^ z( 2) //2
    z( 3) := u( 1) ^ u( 3) //1
    q( 6) := z( 3) ^ q( 2) //3
    q( 7) := u( 0) ^ u( 7) //1
    z( 4) := u( 2) ^ u( 5) //1
    q( 8) := z( 4) ^ q( 5) //3
    l(19) := u( 2) ^ z( 1) //2 *
    q( 9) := z( 0) ^ l(19) //3
    q(10) := z( 3) ^ q( 1) //3
    q(12) := u( 3) ^ l(28) //3
    q(13) := u( 3) ^ q( 2) //3
    l(10) := z( 4) ^ q( 7) //2 *
    q(14) := u( 6) ^ l(10) //3
    q(15) := u( 0) ^ q( 5) //3
    l( 8) := u( 3) ^ q( 5) //3 *
    l(12) := q(16) ^ q( 2) //3 *
    l(16) := u( 2) ^ q( 4) //4 *
    l(15) := u( 1) ^ z( 1) //2 *
    l(31) := q(16) ^ l(15) //3 *
    l( 5) := q(12) ^ l(31) //4 *
    l(13) := u( 3) ^ q( 8) //4 *
    l(17) := u( 4) ^ l(10) //3 *
    l(29) := z( 1) ^ l(10) //3 *
    l(14) := q(11) ^ l(10) //3 *
    l(26) := q(11) ^ q( 5) //3 *
    l(30) := q(11) ^ u( 6) //2 *
    l( 7) := q(12) ^ q( 1) //4 *
    l(11) := q(12) ^ l(15) //4 *
    l(27) := l(30) ^ l(10) //3 *
    q(17) := u( 0) //0
    l( 0) := q(10) //3 *
    l( 4) := u( 6) //0 *
    l(20) := q( 0) //3 *
    l(24) := q(16) //2 *
    l( 1) := q( 6) //3 *
    l( 9) := u( 5) //0 *
    l(21) := q(11) //1 *
    l(25) := q(13) //3 *
    l( 2) := q( 9) //3 *
    l(18) := u( 1) //0 *
    l(22) := q(15) //3 *
    l( 3) := q( 8) //3 *
    l(23) := u(0) //0 *
    // File: mulx.a
    t( 0) := NAND(q(6), q(12)) //2 5
    t( 1) := NAND(q(3), q(14)) //2 5
    t( 2) := NAND(q(1), q(16)) //2 4
    t( 3) := NOR(q(3), q(14)) ^ NAND(q(0), q(7)) //3 6
    t( 4) := NOR(q(4), q(13)) ^ NAND(q(10), q(11)) //3 6
    t( 5) := NOR(q(2), q(17)) ^ NAND(q(5), q(9)) //3 6
    t( 6) := NOR(q(8), q(15)) ^ NAND(q(2), q(17)) //3 6
    x( 0) := t(3) ^ (t(0) ^ t(2)) //4 7
    x( 1) := t(4) ^ (t(1) ^ t(0)) //4 7
    x( 2) := t(5) ^ (t(1) ^ t(2)) //4 7
    x( 3) := t(6) ^ (t(1) ^ NAND(q(4), q(13))) //4 7
    (l.asUInt, x.asUInt)
  }
}

object ftop_x { 
  def apply(u: UInt): UInt = {
    val a = Wire(Vec(4, Bool()))
    val x = Wire(Vec(4, Bool()))
    val z = Wire(Vec(5, Bool())) 
    val q = Wire(Vec(18, Bool())) 
    val t = Wire(Vec(7, Bool()))
    // File: ftop.d
    z( 0) := u( 1) ^ u( 4) //1 ?
    a( 0) := z( 0) ^ u( 6) //2 ?
    q( 0) := u( 2) ^ a( 0) //3 ?
    z( 1) := u( 5) ^ u( 6) //1 ?
    q( 1) := u( 0) ^ z( 1) //2 ?
    z( 2) := u( 5) ^ u( 7) //1 ?
    q( 2) := u( 6) ^ z( 2) //2 ?
    q(11) := u( 2) ^ u( 3) //1 ?
    a( 1) := u( 4) ^ z( 1) //2 ?
    q( 3) := q(11) ^ a( 1) //3 ?
    q(16) := u( 0) ^ q(11) //2 ?
    q( 4) := q(16) ^ u( 4) //3 ?
    q( 5) := z( 0) ^ z( 2) //2 ?
    z( 3) := u( 1) ^ u( 3) //1 ?
    q( 6) := z( 3) ^ q( 2) //3 ?
    q( 7) := u( 0) ^ u( 7) //1 ?
    z( 4) := u( 2) ^ u( 5) //1 ?
    q( 8) := z( 4) ^ q( 5) //3 ?
    a( 2) := u( 2) ^ z( 1) //2 ?
    q( 9) := z( 0) ^ a( 2) //3 ?
    q(10) := z( 3) ^ q( 1) //3 ?
    q(12) := u( 3) ^ a( 0) //3 ?
    q(13) := u( 3) ^ q( 2) //3 ?
    a( 3) := z( 4) ^ q( 7) //2 ?
    q(14) := u( 6) ^ a( 3) //3 ?
    q(15) := u( 0) ^ q( 5) //3 ?
    q(17) := u( 0) //0 ?
    // File: mulx.a
    t( 0) := NAND(q(6), q(12)) //2 5 ?
    t( 1) := NAND(q(3), q(14)) //2 5 ?
    t( 2) := NAND(q(1), q(16)) //2 4 ?
    t( 3) := NOR(q(3), q(14)) ^ NAND(q(0), q(7)) //3 6 ?
    t( 4) := NOR(q(4), q(13)) ^ NAND(q(10), q(11)) //3 6 ?
    t( 5) := NOR(q(2), q(17)) ^ NAND(q(5), q(9)) //3 6 ?
    t( 6) := NOR(q(8), q(15)) ^ NAND(q(2), q(17)) //3 6 ?
    x( 0) := t(3) ^ (t(0) ^ t(2)) //4 7 ?
    x( 1) := t(4) ^ (t(1) ^ t(0)) //4 7 ?
    x( 2) := t(5) ^ (t(1) ^ t(2)) //4 7 ?
    x( 3) := t(6) ^ (t(1) ^ NAND(q(4), q(13))) //4 7 ?
    x.asUInt
  }
}

object ftop_l { 
  def apply(u: UInt): UInt = {
    val l = Wire(Vec(32, Bool()))
    val b = Wire(Vec(15, Bool()))
    val c = Wire(Vec(5, Bool()))
    // File: ftop.d
    c( 0) := u( 1) ^ u( 4) //1 *
    l(28) := c( 0) ^ u( 6) //2 *
    b( 0) := u( 2) ^ l(28) //3 *
    c( 1) := u( 5) ^ u( 6) //1 *
    b( 1) := u( 0) ^ c( 1) //2 *
    c( 2) := u( 5) ^ u( 7) //1 *
    b(14) := u( 6) ^ c( 2) //2 *
    b( 2) := u( 2) ^ u( 3) //1 *
    l( 6) := u( 4) ^ c( 1) //2 *
    b( 3) := u( 0) ^ b( 2) //2 *
    b( 4) := b( 3) ^ u( 4) //3 *
    b( 5) := c( 0) ^ c( 2) //2 *
    b( 6) := c( 4) ^ b(14) //3 *
    b( 7) := u( 0) ^ u( 7) //1 *
    c( 3) := u( 2) ^ u( 5) //1 *
    c( 4) := u( 1) ^ u( 3) //1 * 
    b( 8) := c( 3) ^ b( 5) //3 *
    l(19) := u( 2) ^ c( 1) //2 *
    b( 9) := c( 0) ^ l(19) //3 *
    b(10) := c( 4) ^ b( 1) //3 *
    b(11) := u( 3) ^ l(28) //3 *
    b(12) := u( 3) ^ b(14) //3 *
    l(10) := c( 3) ^ b( 7) //2 *
    b(13) := u( 0) ^ b( 5) //3 *
    l( 8) := u( 3) ^ b( 5) //3 *
    l(12) := b( 3) ^ b(14) //3 *
    l(16) := u( 2) ^ b( 4) //4 *
    l(15) := u( 1) ^ c( 1) //2 *
    l(31) := b( 3) ^ l(15) //3 *
    l( 5) := b(11) ^ l(31) //4 *
    l(13) := u( 3) ^ b( 8) //4 *
    l(17) := u( 4) ^ l(10) //3 *
    l(29) := c( 1) ^ l(10) //3 *
    l(14) := b( 2) ^ l(10) //3 *
    l(26) := b( 2) ^ b( 5) //3 *
    l(30) := b( 2) ^ u( 6) //2 *
    l( 7) := b(11) ^ b( 1) //4 *
    l(11) := b(11) ^ l(15) //4 *
    l(27) := l(30) ^ l(10) //3 *
    l( 0) := b(10) //3 *
    l( 4) := u( 6) //0 *
    l(20) := b( 0) //3 *
    l(24) := b( 3) //2 *
    l( 1) := b( 6) //3 *
    l( 9) := u( 5) //0 *
    l(21) := b( 2) //1 *
    l(25) := b(12) //3 *
    l( 2) := b( 9) //3 *
    l(18) := u( 1) //0 *
    l(22) := b(13) //3 *
    l( 3) := b( 8) //3 *
    l(23) := u(0) //0 *
    l.asUInt
  }
}

// object Mymain extends App {
//   emitVerilog(new AESSBox(true), Array("--target-dir", "generated"))
// }