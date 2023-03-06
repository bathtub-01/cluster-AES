package controller

import chisel3._
import chisel3.util._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

import testutil.TestUtil._

class ControllerAXITest extends AnyFlatSpec with ChiselScalatestTester {
  "ControllerAXI" should "pass" in {
    test(new ControllerAXIWrapper).withAnnotations(Seq(WriteVcdAnnotation)) { dut =>
      implicit val clk = dut.clock
      implicit val c = dut
      // dut.clock.setTimeout(0)
      dut.clock.step(3)
      dut.clock.step(15)
    }
  }
}