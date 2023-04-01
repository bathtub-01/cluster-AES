// package clusterAES

// import chisel3._
// import chiseltest._
// import org.scalatest.flatspec.AnyFlatSpec

// class MixColumnsTest extends AnyFlatSpec with ChiselScalatestTester {
//   "mix-columns" should "pass" in {
//     test(new MixColumns) { dut =>
//       dut.io.state_in(0).poke(0x87.U)
//       dut.io.state_in(1).poke(0x6e.U)
//       dut.io.state_in(2).poke(0x46.U)
//       dut.io.state_in(3).poke(0xa6.U)

//       dut.io.state_in(4).poke(0xf2.U)
//       dut.io.state_in(5).poke(0x4c.U)
//       dut.io.state_in(6).poke(0xe7.U)
//       dut.io.state_in(7).poke(0x8c.U)

//       dut.io.state_in(8).poke(0x4d.U)
//       dut.io.state_in(9).poke(0x90.U)
//       dut.io.state_in(10).poke(0x4a.U)
//       dut.io.state_in(11).poke(0xd8.U)

//       dut.io.state_in(12).poke(0x97.U)
//       dut.io.state_in(13).poke(0xec.U)
//       dut.io.state_in(14).poke(0xc3.U)
//       dut.io.state_in(15).poke(0x95.U)

//       dut.clock.step()

//       dut.io.state_out(0).expect(0x47.U)
//       dut.io.state_out(1).expect(0x37.U)
//       dut.io.state_out(2).expect(0x94.U)
//       dut.io.state_out(3).expect(0xed.U)

//       dut.io.state_out(4).expect(0x40.U)
//       dut.io.state_out(5).expect(0xd4.U)
//       dut.io.state_out(6).expect(0xe4.U)
//       dut.io.state_out(7).expect(0xa5.U)

//       dut.io.state_out(8).expect(0xa3.U)
//       dut.io.state_out(9).expect(0x70.U)
//       dut.io.state_out(10).expect(0x3a.U)
//       dut.io.state_out(11).expect(0xa6.U)

//       dut.io.state_out(12).expect(0x4c.U)
//       dut.io.state_out(13).expect(0x9f.U)
//       dut.io.state_out(14).expect(0x42.U)
//       dut.io.state_out(15).expect(0xbc.U)
//     }
//   }
// }