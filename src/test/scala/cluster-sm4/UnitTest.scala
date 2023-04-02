package clusterSM4

import chisel3._
import chisel3.util._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

import testutil.TestUtil._
import scala.collection.immutable.ArraySeq

class UnitTest extends AnyFlatSpec with ChiselScalatestTester {
  "SM4Unit" should "pass" in {
    val user_key1 = ArraySeq(0x01234567L, 0x89abcdefL, 0xfedcba98L, 0x76543210L).map(_.U)
    val text = user_key1
    val c_text = ArraySeq(0x681edf34L, 0xd206965eL, 0x86b3e94fL, 0x536e4246L).map(_.U)
    test(new DebugUnit).withAnnotations(Seq(WriteVcdAnnotation)) { dut =>
      implicit val clk = dut.clock
      implicit val c = dut
      dut.clock.step(3)
      enqueueVec(dut.io.user_key, user_key1)
      dut.clock.step(140)
      pokeVec(dut.io.input.bits.state, c_text)
      dut.io.input.bits.control.isEnc.poke(false)
      dut.io.input.bits.control.isIdle.poke(false)
      dut.io.input.bits.control.taskID.poke(1)
      dut.io.input.bits.control.rounds.poke(0)
      dut.io.input.valid.poke(true)
      dut.clock.step()
      dut.io.input.valid.poke(false)
      dut.clock.step(140)
    }
  }
}