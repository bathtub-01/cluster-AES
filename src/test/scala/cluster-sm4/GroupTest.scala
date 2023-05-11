package clusterSM4

import chisel3._
import chisel3.util._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

import testutil.TestUtil._
import scala.collection.immutable.ArraySeq

class GroupTest extends AnyFlatSpec with ChiselScalatestTester {
  "SM4Group" should "pass" in {
    val user_key1 = ArraySeq(0x01234567L, 0x89abcdefL, 0xfedcba98L, 0x76543210L).map(_.U)
    val text = user_key1
    val c_text = ArraySeq(0x681edf34L, 0xd206965eL, 0x86b3e94fL, 0x536e4246L).map(_.U)
    test(new Group(2)).withAnnotations(Seq(WriteVcdAnnotation)) { dut =>
      implicit val clk = dut.clock
      implicit val c = dut
      dut.clock.step(3)
      dut.io.workID_key.poke(1.U)
      enqueueVec(dut.io.user_key, user_key1)
      dut.clock.step(3)
      dut.io.workID_key.poke(12.U)
      enqueueVec(dut.io.user_key, user_key1)
      dut.io.workID_start.poke(1.U)
      enqueueVec(dut.io.text_in, text)
      while(dut.io.user_key.ready.peek().litToBoolean == false) {
        dut.clock.step()
      }
      dut.io.workID_start.poke(12.U)
      enqueueVec(dut.io.text_in, c_text)
      dut.clock.step(140)
      dut.io.text_out.ready.poke(true.B)
      dut.clock.step(5)
    }
  }
}