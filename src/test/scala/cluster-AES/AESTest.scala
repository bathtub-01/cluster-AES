package clusterAES

import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

class AESTest extends AnyFlatSpec with ChiselScalatestTester {
  val state = Array(0x32, 0x43, 0xf6, 0xa8, 0x88, 0x5a, 0x30, 0x8d, 
                    0x31, 0x31, 0x98, 0xa2, 0xe0, 0x37, 0x07, 0x34)
  "aes" should "pass" in {
    test(new AES).withAnnotations(Seq(WriteVcdAnnotation)) { dut =>
      //dut.io.para_in.control.isIdle.poke(true.B)
      dut.clock.step(4)
      for(i <- 0 until 16){
        dut.io.input.bits.state(i).poke(state(i))
      }
      dut.io.input.bits.control.isIdle.poke(false.B)
      dut.io.input.bits.control.keylength.poke(0.U)
      dut.io.input.bits.control.rounds.poke(0.U)
      dut.io.input.bits.control.taskID.poke(0.U)
      dut.io.input.valid.poke(true.B)
      dut.clock.step()
      dut.io.input.valid.poke(false.B)

      dut.clock.step()

      dut.io.input.bits.control.isIdle.poke(false.B)
      dut.io.input.bits.control.keylength.poke(1.U)
      dut.io.input.bits.control.rounds.poke(0.U)
      dut.io.input.bits.control.taskID.poke(1.U)
      dut.io.input.valid.poke(true.B)

      dut.clock.step()

      dut.io.input.bits.control.isIdle.poke(false.B)
      dut.io.input.bits.control.keylength.poke(2.U)
      dut.io.input.bits.control.rounds.poke(0.U)
      dut.io.input.bits.control.taskID.poke(2.U)
      dut.io.input.valid.poke(true.B)
      dut.clock.step()
      dut.io.input.valid.poke(false.B)
      dut.clock.step(10)

      dut.io.input.bits.control.isIdle.poke(false.B)
      dut.io.input.bits.control.keylength.poke(0.U)
      dut.io.input.bits.control.rounds.poke(0.U)
      dut.io.input.bits.control.taskID.poke(3.U)
      dut.io.input.valid.poke(true.B)
      dut.clock.step(4)
      dut.io.input.valid.poke(false.B)

      dut.clock.step(70)
    }
  }
}