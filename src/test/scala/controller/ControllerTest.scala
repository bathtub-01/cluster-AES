package controller

import chisel3._
import chisel3.util._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

import testutil.TestUtil._

class ControllerTest extends AnyFlatSpec with ChiselScalatestTester {
  
  def setKey(id: Int, key: Seq[UInt])(implicit dut: Controller) = {
    require(id < 16)
    dut.io.slotID_key.poke(id.U)
    enqueueVec(dut.io.user_key, key)(dut.clock)
  }
  def setWork(id: Int, length: Int, source_addr: BigInt, dest_addr: BigInt, mode: Boolean, initial_vector: Seq[UInt])(implicit dut: Controller) = {
    require(id < 16)
    dut.io.slotID_setwork.poke(id.U)
    dut.io.length_setwork.poke(length.U)
    dut.io.dest_addr_setwork.poke(dest_addr)
    dut.io.work_mode.poke(mode.B)
    pokeVec(dut.io.initial_vector, initial_vector)
    enqueue(dut.io.source_addr_setwork, source_addr.U)(dut.clock)
  }
  def feedText(text: Seq[UInt])(implicit dut: Controller) = {
    enqueueSeq(dut.io.fifo_in, text)(dut.clock)
  }
  

  "Controller" should "pass" in {
    test(new Controller(3)).withAnnotations(Seq(WriteVcdAnnotation)) { dut =>
      val s = Seq(0x00.U, 0x01.U, 0x02.U, 0x03.U, 
                  0x04.U, 0x05.U, 0x06.U, 0x07.U, 
                  0x08.U, 0x09.U, 0x0a.U, 0x0b.U, 
                  0x0c.U, 0x0d.U, 0x0e.U, 0x0f.U)
      implicit val clk = dut.clock
      implicit val c = dut
      // dut.clock.setTimeout(0)
      initDecoupled(dut.io, dut.clock)
      dut.clock.step(3)
      dut.io.source_addr_dma.ready.poke(true.B)
      setKey(15, s)
      setWork(15, 2, 0x1000_0000, 0x1100_0000, true, Seq(0x03020100.U, 0x07060504.U, 0x0b0a0908.U, 0x0f0e0d0c.U))
      feedText(Seq(0x373ba1c6L.U, 0x825b8f87L.U, 0x62814f6fL.U, 0x79d8c8a1L.U,
                   0x64108ab5L.U, 0x9ba9acd8L.U, 0x5b40b0d9L.U, 0xbbf54585L.U))
      dut.io.dest_addr_dma.ready.poke(true.B)
      dut.clock.step(90)
      dut.io.fifo_out.ready.poke(true.B)
      dut.clock.step(15)
    }
  }
}
