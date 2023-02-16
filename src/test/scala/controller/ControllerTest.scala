package controller

import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

class ControllerTest extends AnyFlatSpec with ChiselScalatestTester {
  "Controller" should "pass" in {
    test(new Controller(3)).withAnnotations(Seq(WriteVcdAnnotation)) { dut =>
      dut.clock.setTimeout(0)
      dut.clock.step(3)
      dut.io.addr_out.ready.poke(true)
      for(i <- 0 until 16) {
        dut.io.workID_in.poke(i.U)
        dut.io.length_in.poke(30)
        dut.io.addr_in.bits.poke(((i << 20) + 4096).U)
        dut.io.addr_in.valid.poke(true)
        dut.clock.step()
        dut.io.addr_in.valid.poke(false)
        dut.clock.step(3)
      }
      dut.clock.step(1000)
      // dut.io.length_in.poke(7)
      // dut.io.workID_in.poke(4)
      // dut.io.addr_in.bits.poke(0x4000_0000)
      // dut.io.addr_in.valid.poke(true)
      // dut.clock.step()
      // dut.io.addr_in.valid.poke(false)
      // dut.clock.step(3)

      // dut.io.length_in.poke(5)
      // dut.io.workID_in.poke(2)
      // dut.io.addr_in.bits.poke(0x2000_0000)
      // dut.io.addr_in.valid.poke(true)
      // dut.clock.step()
      // dut.io.addr_in.valid.poke(false)
      // dut.clock.step(4)

      // dut.io.length_in.poke(17)
      // dut.io.workID_in.poke(11)
      // dut.io.addr_in.bits.poke(0x3000_0000)
      // dut.io.addr_in.valid.poke(true)
      // dut.clock.step()
      // dut.io.addr_in.valid.poke(false)
      // dut.clock.step(80)
      
    }
  }
}