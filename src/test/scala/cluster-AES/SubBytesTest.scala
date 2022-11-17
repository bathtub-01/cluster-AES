package clusterAES

import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import chisel3.experimental.BundleLiterals._

// class SubBytesTest extends AnyFlatSpec with ChiselScalatestTester {
//   "Waveform" should "pass" in {
//     test(new SubBytes).withAnnotations(Seq(WriteVcdAnnotation)) { dut =>
//       for(i <- 0 until 16) {
//         for(j <- 0 until 16){
//           dut.io.state_in(j).poke((i * 16 + j).U)
//         }
//         dut.clock.step()
//       }
//     }
//   }
// }

// class amodTest extends AnyFlatSpec with ChiselScalatestTester {
//   "amod" should "pass" in {
//     test(new amod).withAnnotations(Seq(WriteVcdAnnotation)) { dut =>
//       dut.io.write.poke(true.B)
//       dut.clock.step()
//       dut.io.write.poke(false.B)
//       dut.io.addr.bits.poke(7.U)
//       dut.io.addr.valid.poke(true.B)
//       dut.clock.step(5)
//     }
//   }
// }