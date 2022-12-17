package clusterAES

import scala.collection.immutable.ArraySeq
import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import chisel3.experimental.BundleLiterals._

class GroupTest extends AnyFlatSpec with ChiselScalatestTester {
  "Group" should "pass" in {
    val user_key = Array(0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 
                    0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f)
    val state = Array(0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 
                    0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f)
    test(new Group(3)).withAnnotations(Seq(WriteVcdAnnotation)) { dut =>
      // set key
      dut.clock.step(3)
      dut.io.workID_key.poke(1.U)
      for(i <- 0 until 16){
        dut.io.user_key.bits(i).poke(user_key(i))
      }
      dut.io.user_key.valid.poke(true.B)
      dut.clock.step()
      dut.io.user_key.valid.poke(false.B)
      dut.clock.step(50)

      // run dec
      // for(i <- 0 until 16){
      //   dut.io.input.bits.state(i).poke(state(i))
      // }
      // dut.io.input.bits.control.isIdle.poke(false.B)
      // dut.io.input.bits.control.keylength.poke(0.U)
      // dut.io.input.bits.control.rounds.poke(10.U)
      // dut.io.input.bits.control.taskID.poke(0.U)
      // dut.io.input.valid.poke(true.B)
      // dut.clock.step()
      // dut.io.input.valid.poke(false.B)

      // dut.clock.step()

      // dut.io.input.bits.control.isIdle.poke(false.B)
      // dut.io.input.bits.control.keylength.poke(1.U)
      // dut.io.input.bits.control.rounds.poke(12.U)
      // dut.io.input.bits.control.taskID.poke(1.U)
      // dut.io.input.valid.poke(true.B)

      // dut.clock.step()

      // dut.io.input.bits.control.isIdle.poke(false.B)
      // dut.io.input.bits.control.keylength.poke(2.U)
      // dut.io.input.bits.control.rounds.poke(14.U)
      // dut.io.input.bits.control.taskID.poke(2.U)
      // dut.io.input.valid.poke(true.B)
      // dut.clock.step()
      // dut.io.input.valid.poke(false.B)
      // dut.clock.step(10)

      // dut.io.input.bits.control.isIdle.poke(false.B)
      // dut.io.input.bits.control.keylength.poke(0.U)
      // dut.io.input.bits.control.rounds.poke(10.U)
      // dut.io.input.bits.control.taskID.poke(3.U)
      // dut.io.input.valid.poke(true.B)
      // dut.clock.step(4)
      // dut.io.input.valid.poke(false.B)

      // dut.clock.step(70)
      // dut.io.output.ready.poke(true.B)
      // for(i <- 0 until 4) {
      //   dut.io.output_select.poke(i.U)
      //   dut.clock.step()
      // }
    }
  }
}