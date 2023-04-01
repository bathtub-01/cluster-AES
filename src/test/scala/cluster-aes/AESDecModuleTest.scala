package clusterAES

import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

class AESDecModuleTest extends AnyFlatSpec with ChiselScalatestTester {
  val state128 = Array(0x0a, 0x94, 0x0b, 0xb5, 0x41, 0x6e, 0xf0, 0x45, 
                    0xf1, 0xc3, 0x94, 0x58, 0xc6, 0x53, 0xea, 0x5a)
  val state192 = Array(0x00, 0x60, 0xbf, 0xfe, 0x46, 0x83, 0x4b, 0xb8, 
                    0xda, 0x5c, 0xf9, 0xa6, 0x1f, 0xf2, 0x20, 0xae)
  val state256 = Array(0x5a, 0x6e, 0x04, 0x57, 0x08, 0xfb, 0x71, 0x96, 
                    0xf0, 0x2e, 0x55, 0x3d, 0x02, 0xc3, 0xa6, 0x92)
  "AESDec" should "pass" in {
    test(new AESDecModule).withAnnotations(Seq(WriteVcdAnnotation)) { dut =>
      //dut.io.para_in.control.isIdle.poke(true.B)
      dut.clock.step(4)
      for(i <- 0 until 16){
        dut.io.input.bits.state(i).poke(state128(i))
      }
      dut.io.input.bits.control.isIdle.poke(false.B)
      dut.io.input.bits.control.keylength.poke(0.U)
      dut.io.input.bits.control.rounds.poke(10.U)
      dut.io.input.bits.control.taskID.poke(0.U)
      dut.io.input.valid.poke(true.B)
      dut.clock.step()
      dut.io.input.valid.poke(false.B)

      dut.clock.step()

      for(i <- 0 until 16){
        dut.io.input.bits.state(i).poke(state192(i))
      }
      dut.io.input.bits.control.isIdle.poke(false.B)
      dut.io.input.bits.control.keylength.poke(1.U)
      dut.io.input.bits.control.rounds.poke(12.U)
      dut.io.input.bits.control.taskID.poke(1.U)
      dut.io.input.valid.poke(true.B)

      dut.clock.step()

      for(i <- 0 until 16){
        dut.io.input.bits.state(i).poke(state256(i))
      }
      dut.io.input.bits.control.isIdle.poke(false.B)
      dut.io.input.bits.control.keylength.poke(2.U)
      dut.io.input.bits.control.rounds.poke(14.U)
      dut.io.input.bits.control.taskID.poke(2.U)
      dut.io.input.valid.poke(true.B)
      dut.clock.step()
      dut.io.input.valid.poke(false.B)
      dut.clock.step(10)

      for(i <- 0 until 16){
        dut.io.input.bits.state(i).poke(state128(i))
      }
      dut.io.input.bits.control.isIdle.poke(false.B)
      dut.io.input.bits.control.keylength.poke(0.U)
      dut.io.input.bits.control.rounds.poke(10.U)
      dut.io.input.bits.control.taskID.poke(3.U)
      dut.io.input.valid.poke(true.B)
      dut.clock.step(4)
      dut.io.input.valid.poke(false.B)

      dut.clock.step(50)
    }
  }
}