package clusterAES

import scala.collection.immutable.ArraySeq
import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import chisel3.experimental.BundleLiterals._

class EncUnitTest extends AnyFlatSpec with ChiselScalatestTester {
  "EncUnit" should "pass" in {
    val state = Array(0x32, 0x43, 0xf6, 0xa8, 0x88, 0x5a, 0x30, 0x8d, 
                    0x31, 0x31, 0x98, 0xa2, 0xe0, 0x37, 0x07, 0x34)
    val round_key = Array(
                          ArraySeq(0x00.U, 0x01.U, 0x02.U, 0x03.U, 0x04.U, 0x05.U, 0x06.U, 0x07.U, 0x08.U, 0x09.U, 0x0a.U, 0x0b.U, 0x0c.U, 0x0d.U, 0x0e.U, 0x0f.U),
                          ArraySeq(0xd6.U, 0xaa.U, 0x74.U, 0xfd.U, 0xd2.U, 0xaf.U, 0x72.U, 0xfa.U, 0xda.U, 0xa6.U, 0x78.U, 0xf1.U, 0xd6.U, 0xab.U, 0x76.U, 0xfe.U),
                          ArraySeq(0xb6.U, 0x92.U, 0xcf.U, 0x0b.U, 0x64.U, 0x3d.U, 0xbd.U, 0xf1.U, 0xbe.U, 0x9b.U, 0xc5.U, 0x00.U, 0x68.U, 0x30.U, 0xb3.U, 0xfe.U),
                          ArraySeq(0xb6.U, 0xff.U, 0x74.U, 0x4e.U, 0xd2.U, 0xc2.U, 0xc9.U, 0xbf.U, 0x6c.U, 0x59.U, 0x0c.U, 0xbf.U, 0x04.U, 0x69.U, 0xbf.U, 0x41.U),
                          ArraySeq(0x47.U, 0xf7.U, 0xf7.U, 0xbc.U, 0x95.U, 0x35.U, 0x3e.U, 0x03.U, 0xf9.U, 0x6c.U, 0x32.U, 0xbc.U, 0xfd.U, 0x05.U, 0x8d.U, 0xfd.U),
                          ArraySeq(0x3c.U, 0xaa.U, 0xa3.U, 0xe8.U, 0xa9.U, 0x9f.U, 0x9d.U, 0xeb.U, 0x50.U, 0xf3.U, 0xaf.U, 0x57.U, 0xad.U, 0xf6.U, 0x22.U, 0xaa.U),
                          ArraySeq(0x5e.U, 0x39.U, 0x0f.U, 0x7d.U, 0xf7.U, 0xa6.U, 0x92.U, 0x96.U, 0xa7.U, 0x55.U, 0x3d.U, 0xc1.U, 0x0a.U, 0xa3.U, 0x1f.U, 0x6b.U),
                          ArraySeq(0x14.U, 0xf9.U, 0x70.U, 0x1a.U, 0xe3.U, 0x5f.U, 0xe2.U, 0x8c.U, 0x44.U, 0x0a.U, 0xdf.U, 0x4d.U, 0x4e.U, 0xa9.U, 0xc0.U, 0x26.U),
                          ArraySeq(0x47.U, 0x43.U, 0x87.U, 0x35.U, 0xa4.U, 0x1c.U, 0x65.U, 0xb9.U, 0xe0.U, 0x16.U, 0xba.U, 0xf4.U, 0xae.U, 0xbf.U, 0x7a.U, 0xd2.U),
                          ArraySeq(0x54.U, 0x99.U, 0x32.U, 0xd1.U, 0xf0.U, 0x85.U, 0x57.U, 0x68.U, 0x10.U, 0x93.U, 0xed.U, 0x9c.U, 0xbe.U, 0x2c.U, 0x97.U, 0x4e.U),
                          ArraySeq(0x13.U, 0x11.U, 0x1d.U, 0x7f.U, 0xe3.U, 0x94.U, 0x4a.U, 0x17.U, 0xf3.U, 0x07.U, 0xa7.U, 0x8b.U, 0x4d.U, 0x2b.U, 0x30.U, 0xc5.U)
                        )
    test(new Unit(true)).withAnnotations(Seq(WriteVcdAnnotation)) { dut =>
      // set key
      dut.clock.step(3)
      dut.io.write_en.poke(true.B)
      for(task <- 0 until 4){
        dut.io.write_task.poke(task.U)
        for(round <- 0 until 11){
          dut.io.write_round.poke(round.U)
          for(i <- 0 until 16){
            dut.io.write_key(i).poke(round_key(round)(i))
          }
          dut.clock.step()
        }
      }
      dut.clock.step(3)

      // run enc
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
      dut.io.output.ready.poke(true.B)
      dut.clock.step(8)
    }
  }
}

class DecUnitTest extends AnyFlatSpec with ChiselScalatestTester {
  "DecUnit" should "pass" in {
    val state = Array(0x0a, 0x94, 0x0b, 0xb5, 0x41, 0x6e, 0xf0, 0x45, 
                    0xf1, 0xc3, 0x94, 0x58, 0xc6, 0x53, 0xea, 0x5a)
    val round_key = Array(
                          ArraySeq(0x00.U, 0x01.U, 0x02.U, 0x03.U, 0x04.U, 0x05.U, 0x06.U, 0x07.U, 0x08.U, 0x09.U, 0x0a.U, 0x0b.U, 0x0c.U, 0x0d.U, 0x0e.U, 0x0f.U),
                          ArraySeq(0xd6.U, 0xaa.U, 0x74.U, 0xfd.U, 0xd2.U, 0xaf.U, 0x72.U, 0xfa.U, 0xda.U, 0xa6.U, 0x78.U, 0xf1.U, 0xd6.U, 0xab.U, 0x76.U, 0xfe.U),
                          ArraySeq(0xb6.U, 0x92.U, 0xcf.U, 0x0b.U, 0x64.U, 0x3d.U, 0xbd.U, 0xf1.U, 0xbe.U, 0x9b.U, 0xc5.U, 0x00.U, 0x68.U, 0x30.U, 0xb3.U, 0xfe.U),
                          ArraySeq(0xb6.U, 0xff.U, 0x74.U, 0x4e.U, 0xd2.U, 0xc2.U, 0xc9.U, 0xbf.U, 0x6c.U, 0x59.U, 0x0c.U, 0xbf.U, 0x04.U, 0x69.U, 0xbf.U, 0x41.U),
                          ArraySeq(0x47.U, 0xf7.U, 0xf7.U, 0xbc.U, 0x95.U, 0x35.U, 0x3e.U, 0x03.U, 0xf9.U, 0x6c.U, 0x32.U, 0xbc.U, 0xfd.U, 0x05.U, 0x8d.U, 0xfd.U),
                          ArraySeq(0x3c.U, 0xaa.U, 0xa3.U, 0xe8.U, 0xa9.U, 0x9f.U, 0x9d.U, 0xeb.U, 0x50.U, 0xf3.U, 0xaf.U, 0x57.U, 0xad.U, 0xf6.U, 0x22.U, 0xaa.U),
                          ArraySeq(0x5e.U, 0x39.U, 0x0f.U, 0x7d.U, 0xf7.U, 0xa6.U, 0x92.U, 0x96.U, 0xa7.U, 0x55.U, 0x3d.U, 0xc1.U, 0x0a.U, 0xa3.U, 0x1f.U, 0x6b.U),
                          ArraySeq(0x14.U, 0xf9.U, 0x70.U, 0x1a.U, 0xe3.U, 0x5f.U, 0xe2.U, 0x8c.U, 0x44.U, 0x0a.U, 0xdf.U, 0x4d.U, 0x4e.U, 0xa9.U, 0xc0.U, 0x26.U),
                          ArraySeq(0x47.U, 0x43.U, 0x87.U, 0x35.U, 0xa4.U, 0x1c.U, 0x65.U, 0xb9.U, 0xe0.U, 0x16.U, 0xba.U, 0xf4.U, 0xae.U, 0xbf.U, 0x7a.U, 0xd2.U),
                          ArraySeq(0x54.U, 0x99.U, 0x32.U, 0xd1.U, 0xf0.U, 0x85.U, 0x57.U, 0x68.U, 0x10.U, 0x93.U, 0xed.U, 0x9c.U, 0xbe.U, 0x2c.U, 0x97.U, 0x4e.U),
                          ArraySeq(0x13.U, 0x11.U, 0x1d.U, 0x7f.U, 0xe3.U, 0x94.U, 0x4a.U, 0x17.U, 0xf3.U, 0x07.U, 0xa7.U, 0x8b.U, 0x4d.U, 0x2b.U, 0x30.U, 0xc5.U)
                        )
    test(new Unit(false)).withAnnotations(Seq(WriteVcdAnnotation)) { dut =>
      // set key
      dut.clock.step(3)
      dut.io.write_en.poke(true.B)
      for(task <- 0 until 4){
        dut.io.write_task.poke(task.U)
        for(round <- 0 until 11){
          dut.io.write_round.poke(round.U)
          for(i <- 0 until 16){
            dut.io.write_key(i).poke(round_key(round)(i))
          }
          dut.clock.step()
        }
      }
      dut.clock.step(3)

      // run dec
      for(i <- 0 until 16){
        dut.io.input.bits.state(i).poke(state(i))
      }
      dut.io.input.bits.control.isIdle.poke(false.B)
      dut.io.input.bits.control.keylength.poke(0.U)
      dut.io.input.bits.control.rounds.poke(10.U)
      dut.io.input.bits.control.taskID.poke(0.U)
      dut.io.input.valid.poke(true.B)
      dut.clock.step()
      dut.io.input.valid.poke(false.B)

      dut.clock.step()

      dut.io.input.bits.control.isIdle.poke(false.B)
      dut.io.input.bits.control.keylength.poke(1.U)
      dut.io.input.bits.control.rounds.poke(12.U)
      dut.io.input.bits.control.taskID.poke(1.U)
      dut.io.input.valid.poke(true.B)

      dut.clock.step()

      dut.io.input.bits.control.isIdle.poke(false.B)
      dut.io.input.bits.control.keylength.poke(2.U)
      dut.io.input.bits.control.rounds.poke(14.U)
      dut.io.input.bits.control.taskID.poke(2.U)
      dut.io.input.valid.poke(true.B)
      dut.clock.step()
      dut.io.input.valid.poke(false.B)
      dut.clock.step(10)

      dut.io.input.bits.control.isIdle.poke(false.B)
      dut.io.input.bits.control.keylength.poke(0.U)
      dut.io.input.bits.control.rounds.poke(10.U)
      dut.io.input.bits.control.taskID.poke(3.U)
      dut.io.input.valid.poke(true.B)
      dut.clock.step(4)
      dut.io.input.valid.poke(false.B)

      dut.clock.step(70)
      dut.io.output.ready.poke(true.B)
      dut.clock.step(8)
    }
  }
}