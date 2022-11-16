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
//       dut.io.input1(0).poke(0.U)
//       dut.io.input1(1).poke(1.U)
//       dut.io.input2(0).poke(2.U)
//       dut.io.input2(1).poke(3.U)

//       dut.io.out(0).expect(0.U)
//       dut.io.out(1).expect(1.U)
//       dut.io.out(2).expect(2.U)
//       dut.io.out(3).expect(3.U)
//     }
//   }
// }