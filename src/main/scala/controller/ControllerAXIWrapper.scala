package controller

import chisel3._
import chisel3.util._
import chisel3.util.HasBlackBoxResource

// an AXIModule is not a Chisel Module, so it can't be tested using Chisel tester
// to test it, I wrap the generated Verilog file into a BlackBox

class ControllerAXIIO extends Bundle {
  // val aclock = Input(Clock())
  // val areset = Input(Reset())
  val aclock = Input(Bool())
  val areset = Input(Bool())
  val S00_AXI_AWVALID = Input(Bool())
  val S00_AXI_AWREADY = Output(Bool())
  val S00_AXI_AWADDR = Input(UInt(6.W))
  val S00_AXI_AWPROT = Input(UInt(3.W))
  val S00_AXI_WVALID = Input(Bool())
  val S00_AXI_WREADY = Output(Bool())
  val S00_AXI_WDATA = Input(UInt(32.W))
  val S00_AXI_WSTRB = Input(UInt(4.W))
  val S00_AXI_BVALID = Output(Bool())
  val S00_AXI_BREADY = Input(Bool())
  val S00_AXI_BRESP = Output(UInt(2.W))
  val S00_AXI_ARVALID = Input(Bool())
  val S00_AXI_ARREADY = Output(Bool())
  val S00_AXI_ARADDR = Input(UInt(6.W))
  val S00_AXI_ARPROT = Input(UInt(3.W))
  val S00_AXI_RVALID = Output(Bool())
  val S00_AXI_RREADY = Input(Bool())
  val S00_AXI_RDATA = Output(UInt(32.W))
  val S00_AXI_RRESP = Output(UInt(2.W))
  val M00_AXI_AWVALID = Output(Bool())
  val M00_AXI_AWREADY = Input(Bool())
  val M00_AXI_AWADDR = Output(UInt(32.W))
  val M00_AXI_AWPROT = Output(UInt(3.W))
  val M00_AXI_WVALID = Output(Bool())
  val M00_AXI_WREADY = Input(Bool())
  val M00_AXI_WDATA = Output(UInt(32.W))
  val M00_AXI_WSTRB = Output(UInt(4.W))
  val M00_AXI_BVALID = Input(Bool())
  val M00_AXI_BREADY = Output(Bool())
  val M00_AXI_BRESP = Input(UInt(2.W))
  val M00_AXI_ARVALID = Output(Bool())
  val M00_AXI_ARREADY = Input(Bool())
  val M00_AXI_ARADDR = Output(UInt(32.W))
  val M00_AXI_ARPROT = Output(UInt(3.W))
  val M00_AXI_RVALID = Input(Bool())
  val M00_AXI_RREADY = Output(Bool())
  val M00_AXI_RDATA = Input(UInt(32.W))
  val M00_AXI_RRESP = Input(UInt(2.W))
  val S00_AXIS_TVALID = Input(Bool())
  val S00_AXIS_TREADY = Output(Bool())
  val S00_AXIS_TDATA = Input(UInt(32.W))
  val S00_AXIS_TSTRB = Input(UInt(4.W))
  val S00_AXIS_TKEEP = Input(UInt(4.W))
  val S00_AXIS_TLAST = Input(Bool())
  val S00_AXIS_TID = Input(UInt(8.W))
  val S00_AXIS_TDEST = Input(UInt(4.W))
  val S00_AXIS_TUSER = Input(UInt(8.W))
  val M00_AXIS_TVALID = Output(Bool())
  val M00_AXIS_TREADY = Input(Bool())
  val M00_AXIS_TDATA = Output(UInt(32.W))
  val M00_AXIS_TSTRB = Output(UInt(4.W))
  val M00_AXIS_TKEEP = Output(UInt(4.W))
  val M00_AXIS_TLAST = Output(Bool())
  val M00_AXIS_TID = Output(UInt(8.W))
  val M00_AXIS_TDEST = Output(UInt(4.W))
  val M00_AXIS_TUSER = Output(UInt(8.W))
}

class ControllerAXIBlackBox extends BlackBox with HasBlackBoxResource {
  val io = IO(new ControllerAXIIO)
  // val aclock = Input(Clock())
  // val areset = Input(Reset())
  addResource("/ControllerAXI.v")
}

class ControllerAXIWrapper extends Module {
  val io = IO(new ControllerAXIIO)
  val bb = Module(new ControllerAXIBlackBox)
  io <> bb.io
}

class W extends Module {
  val io = IO(new ControllerAXIIO)
  val ctl = Module(new ControllerAXI)
  // io <> ctl.
}