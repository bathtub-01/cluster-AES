package clusterAES

import chisel3._
import scala.collection.immutable.ArraySeq

// I think there is a bug in Chisel; it should be fine to use each val in other Chisel modules with Tables.val_name
// and it actually works when running a single test, but not when running more than one test
object ROMeKeys {
  val roundKey128 = VecInit(ArraySeq(
    0x00.U, 0x01.U, 0x02.U, 0x03.U, 0x04.U, 0x05.U, 0x06.U, 0x07.U, 0x08.U, 0x09.U, 0x0a.U, 0x0b.U, 0x0c.U, 0x0d.U, 0x0e.U, 0x0f.U))
  val expandedKey128 = Reg(Vec(16, Vec(16, UInt(8.W))))
  expandedKey128(0) := VecInit(ArraySeq(0x00.U, 0x01.U, 0x02.U, 0x03.U, 0x04.U, 0x05.U, 0x06.U, 0x07.U, 0x08.U, 0x09.U, 0x0a.U, 0x0b.U, 0x0c.U, 0x0d.U, 0x0e.U, 0x0f.U))
  expandedKey128(1) := VecInit(ArraySeq(0xd6.U, 0xaa.U, 0x74.U, 0xfd.U, 0xd2.U, 0xaf.U, 0x72.U, 0xfa.U, 0xda.U, 0xa6.U, 0x78.U, 0xf1.U, 0xd6.U, 0xab.U, 0x76.U, 0xfe.U))
  expandedKey128(2) := VecInit(ArraySeq(0xb6.U, 0x92.U, 0xcf.U, 0x0b.U, 0x64.U, 0x3d.U, 0xbd.U, 0xf1.U, 0xbe.U, 0x9b.U, 0xc5.U, 0x00.U, 0x68.U, 0x30.U, 0xb3.U, 0xfe.U))
  expandedKey128(3) := VecInit(ArraySeq(0xb6.U, 0xff.U, 0x74.U, 0x4e.U, 0xd2.U, 0xc2.U, 0xc9.U, 0xbf.U, 0x6c.U, 0x59.U, 0x0c.U, 0xbf.U, 0x04.U, 0x69.U, 0xbf.U, 0x41.U))
  expandedKey128(4) := VecInit(ArraySeq(0x47.U, 0xf7.U, 0xf7.U, 0xbc.U, 0x95.U, 0x35.U, 0x3e.U, 0x03.U, 0xf9.U, 0x6c.U, 0x32.U, 0xbc.U, 0xfd.U, 0x05.U, 0x8d.U, 0xfd.U))
  expandedKey128(5) := VecInit(ArraySeq(0x3c.U, 0xaa.U, 0xa3.U, 0xe8.U, 0xa9.U, 0x9f.U, 0x9d.U, 0xeb.U, 0x50.U, 0xf3.U, 0xaf.U, 0x57.U, 0xad.U, 0xf6.U, 0x22.U, 0xaa.U))
  expandedKey128(6) := VecInit(ArraySeq(0x5e.U, 0x39.U, 0x0f.U, 0x7d.U, 0xf7.U, 0xa6.U, 0x92.U, 0x96.U, 0xa7.U, 0x55.U, 0x3d.U, 0xc1.U, 0x0a.U, 0xa3.U, 0x1f.U, 0x6b.U))
  expandedKey128(7) := VecInit(ArraySeq(0x14.U, 0xf9.U, 0x70.U, 0x1a.U, 0xe3.U, 0x5f.U, 0xe2.U, 0x8c.U, 0x44.U, 0x0a.U, 0xdf.U, 0x4d.U, 0x4e.U, 0xa9.U, 0xc0.U, 0x26.U))
  expandedKey128(8) := VecInit(ArraySeq(0x47.U, 0x43.U, 0x87.U, 0x35.U, 0xa4.U, 0x1c.U, 0x65.U, 0xb9.U, 0xe0.U, 0x16.U, 0xba.U, 0xf4.U, 0xae.U, 0xbf.U, 0x7a.U, 0xd2.U))
  expandedKey128(9) := VecInit(ArraySeq(0x54.U, 0x99.U, 0x32.U, 0xd1.U, 0xf0.U, 0x85.U, 0x57.U, 0x68.U, 0x10.U, 0x93.U, 0xed.U, 0x9c.U, 0xbe.U, 0x2c.U, 0x97.U, 0x4e.U))
  expandedKey128(10) := VecInit(ArraySeq(0x13.U, 0x11.U, 0x1d.U, 0x7f.U, 0xe3.U, 0x94.U, 0x4a.U, 0x17.U, 0xf3.U, 0x07.U, 0xa7.U, 0x8b.U, 0x4d.U, 0x2b.U, 0x30.U, 0xc5.U))
  expandedKey128(11) := VecInit(ArraySeq(0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U))
  expandedKey128(12) := VecInit(ArraySeq(0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U))
  expandedKey128(13) := VecInit(ArraySeq(0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U))
  expandedKey128(14) := VecInit(ArraySeq(0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U))
  expandedKey128(15) := VecInit(ArraySeq(0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U))

  val roundKey192 = VecInit(ArraySeq(
    0x00.U, 0x01.U, 0x02.U, 0x03.U, 0x04.U, 0x05.U, 0x06.U, 0x07.U, 0x08.U, 0x09.U, 0x0a.U, 0x0b.U, 0x0c.U, 0x0d.U, 0x0e.U, 0x0f.U, 0x10.U, 0x11.U, 0x12.U, 0x13.U, 0x14.U, 0x15.U, 0x16.U, 0x17.U))
  val expandedKey192 = Reg(Vec(16, Vec(16, UInt(8.W))))
  expandedKey192(0) := VecInit(ArraySeq(0x00.U, 0x01.U, 0x02.U, 0x03.U, 0x04.U, 0x05.U, 0x06.U, 0x07.U, 0x08.U, 0x09.U, 0x0a.U, 0x0b.U, 0x0c.U, 0x0d.U, 0x0e.U, 0x0f.U))
  expandedKey192(1) := VecInit(ArraySeq(0x10.U, 0x11.U, 0x12.U, 0x13.U, 0x14.U, 0x15.U, 0x16.U, 0x17.U, 0x58.U, 0x46.U, 0xf2.U, 0xf9.U, 0x5c.U, 0x43.U, 0xf4.U, 0xfe.U))
  expandedKey192(2) := VecInit(ArraySeq(0x54.U, 0x4a.U, 0xfe.U, 0xf5.U, 0x58.U, 0x47.U, 0xf0.U, 0xfa.U, 0x48.U, 0x56.U, 0xe2.U, 0xe9.U, 0x5c.U, 0x43.U, 0xf4.U, 0xfe.U))
  expandedKey192(3) := VecInit(ArraySeq(0x40.U, 0xf9.U, 0x49.U, 0xb3.U, 0x1c.U, 0xba.U, 0xbd.U, 0x4d.U, 0x48.U, 0xf0.U, 0x43.U, 0xb8.U, 0x10.U, 0xb7.U, 0xb3.U, 0x42.U))
  expandedKey192(4) := VecInit(ArraySeq(0x58.U, 0xe1.U, 0x51.U, 0xab.U, 0x04.U, 0xa2.U, 0xa5.U, 0x55.U, 0x7e.U, 0xff.U, 0xb5.U, 0x41.U, 0x62.U, 0x45.U, 0x08.U, 0x0c.U))
  expandedKey192(5) := VecInit(ArraySeq(0x2a.U, 0xb5.U, 0x4b.U, 0xb4.U, 0x3a.U, 0x02.U, 0xf8.U, 0xf6.U, 0x62.U, 0xe3.U, 0xa9.U, 0x5d.U, 0x66.U, 0x41.U, 0x0c.U, 0x08.U))
  expandedKey192(6) := VecInit(ArraySeq(0xf5.U, 0x01.U, 0x85.U, 0x72.U, 0x97.U, 0x44.U, 0x8d.U, 0x7e.U, 0xbd.U, 0xf1.U, 0xc6.U, 0xca.U, 0x87.U, 0xf3.U, 0x3e.U, 0x3c.U))
  expandedKey192(7) := VecInit(ArraySeq(0xe5.U, 0x10.U, 0x97.U, 0x61.U, 0x83.U, 0x51.U, 0x9b.U, 0x69.U, 0x34.U, 0x15.U, 0x7c.U, 0x9e.U, 0xa3.U, 0x51.U, 0xf1.U, 0xe0.U))
  expandedKey192(8) := VecInit(ArraySeq(0x1e.U, 0xa0.U, 0x37.U, 0x2a.U, 0x99.U, 0x53.U, 0x09.U, 0x16.U, 0x7c.U, 0x43.U, 0x9e.U, 0x77.U, 0xff.U, 0x12.U, 0x05.U, 0x1e.U))
  expandedKey192(9) := VecInit(ArraySeq(0xdd.U, 0x7e.U, 0x0e.U, 0x88.U, 0x7e.U, 0x2f.U, 0xff.U, 0x68.U, 0x60.U, 0x8f.U, 0xc8.U, 0x42.U, 0xf9.U, 0xdc.U, 0xc1.U, 0x54.U))
  expandedKey192(10) := VecInit(ArraySeq(0x85.U, 0x9f.U, 0x5f.U, 0x23.U, 0x7a.U, 0x8d.U, 0x5a.U, 0x3d.U, 0xc0.U, 0xc0.U, 0x29.U, 0x52.U, 0xbe.U, 0xef.U, 0xd6.U, 0x3a.U))
  expandedKey192(11) := VecInit(ArraySeq(0xde.U, 0x60.U, 0x1e.U, 0x78.U, 0x27.U, 0xbc.U, 0xdf.U, 0x2c.U, 0xa2.U, 0x23.U, 0x80.U, 0x0f.U, 0xd8.U, 0xae.U, 0xda.U, 0x32.U))
  expandedKey192(12) := VecInit(ArraySeq(0xa4.U, 0x97.U, 0x0a.U, 0x33.U, 0x1a.U, 0x78.U, 0xdc.U, 0x09.U, 0xc4.U, 0x18.U, 0xc2.U, 0x71.U, 0xe3.U, 0xa4.U, 0x1d.U, 0x5d.U))
  expandedKey192(13) := VecInit(ArraySeq(0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U))
  expandedKey192(14) := VecInit(ArraySeq(0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U))
  expandedKey192(15) := VecInit(ArraySeq(0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U))

  val roundKey256 = VecInit(ArraySeq(
    0x00.U, 0x01.U, 0x02.U, 0x03.U, 0x04.U, 0x05.U, 0x06.U, 0x07.U, 0x08.U, 0x09.U, 0x0a.U, 0x0b.U, 0x0c.U, 0x0d.U, 0x0e.U, 0x0f.U, 0x10.U, 0x11.U, 0x12.U, 0x13.U, 0x14.U, 0x15.U, 0x16.U, 0x17.U, 0x18.U, 0x19.U, 0x1a.U, 0x1b.U, 0x1c.U, 0x1d.U, 0x1e.U, 0x1f.U))
  val expandedKey256 = Reg(Vec(16, Vec(16, UInt(8.W))))
  expandedKey256(0) := VecInit(ArraySeq(0x00.U, 0x01.U, 0x02.U, 0x03.U, 0x04.U, 0x05.U, 0x06.U, 0x07.U, 0x08.U, 0x09.U, 0x0a.U, 0x0b.U, 0x0c.U, 0x0d.U, 0x0e.U, 0x0f.U))
  expandedKey256(1) := VecInit(ArraySeq(0x10.U, 0x11.U, 0x12.U, 0x13.U, 0x14.U, 0x15.U, 0x16.U, 0x17.U, 0x18.U, 0x19.U, 0x1a.U, 0x1b.U, 0x1c.U, 0x1d.U, 0x1e.U, 0x1f.U))
  expandedKey256(2) := VecInit(ArraySeq(0xa5.U, 0x73.U, 0xc2.U, 0x9f.U, 0xa1.U, 0x76.U, 0xc4.U, 0x98.U, 0xa9.U, 0x7f.U, 0xce.U, 0x93.U, 0xa5.U, 0x72.U, 0xc0.U, 0x9c.U))
  expandedKey256(3) := VecInit(ArraySeq(0x16.U, 0x51.U, 0xa8.U, 0xcd.U, 0x02.U, 0x44.U, 0xbe.U, 0xda.U, 0x1a.U, 0x5d.U, 0xa4.U, 0xc1.U, 0x06.U, 0x40.U, 0xba.U, 0xde.U))
  expandedKey256(4) := VecInit(ArraySeq(0xae.U, 0x87.U, 0xdf.U, 0xf0.U, 0x0f.U, 0xf1.U, 0x1b.U, 0x68.U, 0xa6.U, 0x8e.U, 0xd5.U, 0xfb.U, 0x03.U, 0xfc.U, 0x15.U, 0x67.U))
  expandedKey256(5) := VecInit(ArraySeq(0x6d.U, 0xe1.U, 0xf1.U, 0x48.U, 0x6f.U, 0xa5.U, 0x4f.U, 0x92.U, 0x75.U, 0xf8.U, 0xeb.U, 0x53.U, 0x73.U, 0xb8.U, 0x51.U, 0x8d.U))
  expandedKey256(6) := VecInit(ArraySeq(0xc6.U, 0x56.U, 0x82.U, 0x7f.U, 0xc9.U, 0xa7.U, 0x99.U, 0x17.U, 0x6f.U, 0x29.U, 0x4c.U, 0xec.U, 0x6c.U, 0xd5.U, 0x59.U, 0x8b.U))
  expandedKey256(7) := VecInit(ArraySeq(0x3d.U, 0xe2.U, 0x3a.U, 0x75.U, 0x52.U, 0x47.U, 0x75.U, 0xe7.U, 0x27.U, 0xbf.U, 0x9e.U, 0xb4.U, 0x54.U, 0x07.U, 0xcf.U, 0x39.U))
  expandedKey256(8) := VecInit(ArraySeq(0x0b.U, 0xdc.U, 0x90.U, 0x5f.U, 0xc2.U, 0x7b.U, 0x09.U, 0x48.U, 0xad.U, 0x52.U, 0x45.U, 0xa4.U, 0xc1.U, 0x87.U, 0x1c.U, 0x2f.U))
  expandedKey256(9) := VecInit(ArraySeq(0x45.U, 0xf5.U, 0xa6.U, 0x60.U, 0x17.U, 0xb2.U, 0xd3.U, 0x87.U, 0x30.U, 0x0d.U, 0x4d.U, 0x33.U, 0x64.U, 0x0a.U, 0x82.U, 0x0a.U))
  expandedKey256(10) := VecInit(ArraySeq(0x7c.U, 0xcf.U, 0xf7.U, 0x1c.U, 0xbe.U, 0xb4.U, 0xfe.U, 0x54.U, 0x13.U, 0xe6.U, 0xbb.U, 0xf0.U, 0xd2.U, 0x61.U, 0xa7.U, 0xdf.U))
  expandedKey256(11) := VecInit(ArraySeq(0xf0.U, 0x1a.U, 0xfa.U, 0xfe.U, 0xe7.U, 0xa8.U, 0x29.U, 0x79.U, 0xd7.U, 0xa5.U, 0x64.U, 0x4a.U, 0xb3.U, 0xaf.U, 0xe6.U, 0x40.U))
  expandedKey256(12) := VecInit(ArraySeq(0x25.U, 0x41.U, 0xfe.U, 0x71.U, 0x9b.U, 0xf5.U, 0x00.U, 0x25.U, 0x88.U, 0x13.U, 0xbb.U, 0xd5.U, 0x5a.U, 0x72.U, 0x1c.U, 0x0a.U))
  expandedKey256(13) := VecInit(ArraySeq(0x4e.U, 0x5a.U, 0x66.U, 0x99.U, 0xa9.U, 0xf2.U, 0x4f.U, 0xe0.U, 0x7e.U, 0x57.U, 0x2b.U, 0xaa.U, 0xcd.U, 0xf8.U, 0xcd.U, 0xea.U))
  expandedKey256(14) := VecInit(ArraySeq(0x24.U, 0xfc.U, 0x79.U, 0xcc.U, 0xbf.U, 0x09.U, 0x79.U, 0xe9.U, 0x37.U, 0x1a.U, 0xc2.U, 0x3c.U, 0x6d.U, 0x68.U, 0xde.U, 0x36.U))
  expandedKey256(15) := VecInit(ArraySeq(0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U, 0x00.U))
}