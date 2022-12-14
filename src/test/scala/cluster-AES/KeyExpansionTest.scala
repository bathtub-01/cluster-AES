package clusterAES

import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import chisel3.experimental.BundleLiterals._

class KeyExpansionTest extends AnyFlatSpec with ChiselScalatestTester {
  "KeyExpansion" should "pass" in {
    val user_key1 = Array(0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 
                          0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f,
                          0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 
                          0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f)
    val user_key2 = Array(0x11, 0x12, 0x13, 0x14, 0x21, 0x22, 0x23, 0x24, 
                          0x31, 0x32, 0x33, 0x34, 0x41, 0x42, 0x43, 0x44,
                          0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 
                          0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f)
    test(new KeyExpansion128).withAnnotations(Seq(WriteVcdAnnotation)) { dut =>
      dut.clock.step(3)

      for(i <- 0 until 16){
        dut.io.user_key.bits(i).poke(user_key1(i))
      }
      dut.io.user_key.valid.poke(true.B)
      dut.clock.step(5)
      dut.io.user_key.valid.poke(false.B)
      dut.clock.step(5)
      for(i <- 0 until 16){
        dut.io.user_key.bits(i).poke(user_key2(i))
      }
      dut.io.user_key.valid.poke(true.B)

      dut.clock.step(80)

      // for(i <- 0 until 32){
      //   dut.io.user_key.bits(i).poke(user_key2(i))
      // }
      // dut.io.keylength.poke(0.U)
      // dut.io.taskID.poke(3.U)
      // dut.io.user_key.valid.poke(true.B)
      // dut.clock.step(4)
      // dut.io.user_key.valid.poke(false.B)

    }
  }
}