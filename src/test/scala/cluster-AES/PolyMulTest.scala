package clusterAES

import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

class PolyMulTest extends AnyFlatSpec with ChiselScalatestTester {
  "polymul" should "pass" in {
    test(new PolyMul(true)) { dut =>
      dut.io.in(0).poke(0xf2.U)
      dut.io.in(1).poke(0x4c.U)
      dut.io.in(2).poke(0xe7.U)
      dut.io.in(3).poke(0x8c.U)

      dut.io.out(0).expect(0x40.U)
      dut.io.out(1).expect(0xd4.U)
      dut.io.out(2).expect(0xe4.U)
      dut.io.out(3).expect(0xa5.U)
    }
  }
}