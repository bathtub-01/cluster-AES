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

class amodTest extends AnyFlatSpec with ChiselScalatestTester {
  "amod" should "pass" in {
    test(new amod).withAnnotations(Seq(WriteVcdAnnotation)) { dut =>
      dut.clock.step(5)
      dut.io.para_in.control.poke((new ControlInfomation).Lit(_.isIdle -> true.B, _.keylength -> 1.U,
                                                                        _.rounds -> 1.U, _.taskID -> 1.U))
      dut.clock.step(5)
    }
  }
}