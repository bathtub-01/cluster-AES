package clusterSM4

import chisel3._
import chisel3.util._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

import testutil.TestUtil._
import scala.collection.immutable.ArraySeq

class KeyExpansionTest extends AnyFlatSpec with ChiselScalatestTester {
  "SM4KeyExpansion" should "pass" in {
    val user_key1 = ArraySeq(0x01234567L, 0x89abcdefL, 0xfedcba98L, 0x76543210L).map(_.U)
    test(new KeyExpansion).withAnnotations(Seq(WriteVcdAnnotation)) { dut =>
      implicit val clk = dut.clock
      implicit val c = dut
      dut.clock.step(3)

      enqueueVec(dut.io.user_key, user_key1)

      dut.clock.step(140)

    }
  }
}