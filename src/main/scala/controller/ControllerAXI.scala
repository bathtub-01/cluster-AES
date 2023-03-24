package controller

import clusterAES._
import axinodes._

import chisel3._
import chisel3.util._

trait ControllerAXILiteSlave extends AXI4LiteSlaveInterface {
  lazy val regCount = 17
  /*AXI register definitions.They must be define as lazy since regmap must be overrided as lazy*/
  lazy val source_addr_setwork_reg = RegInit(0.U(bitsWide.value.W))
  lazy val dest_addr_setwork_reg = RegInit(0.U(bitsWide.value.W))
  lazy val setwork_control_reg = RegInit(0.U(bitsWide.value.W))
  lazy val user_key_reg0 = RegInit(0.U(bitsWide.value.W))
  lazy val user_key_reg1 = RegInit(0.U(bitsWide.value.W))
  lazy val user_key_reg2 = RegInit(0.U(bitsWide.value.W))
  lazy val user_key_reg3 = RegInit(0.U(bitsWide.value.W))
  lazy val key_control_reg = RegInit(0.U(bitsWide.value.W))
  lazy val status_reg = RegInit(0.U(bitsWide.value.W))
  lazy val initial_vector_reg0 = RegInit(0.U(bitsWide.value.W))
  lazy val initial_vector_reg1 = RegInit(0.U(bitsWide.value.W))
  lazy val initial_vector_reg2 = RegInit(0.U(bitsWide.value.W))
  lazy val initial_vector_reg3 = RegInit(0.U(bitsWide.value.W))
  lazy val final_vector_reg0 = RegInit(0.U(bitsWide.value.W))
  lazy val final_vector_reg1 = RegInit(0.U(bitsWide.value.W))
  lazy val final_vector_reg2 = RegInit(0.U(bitsWide.value.W))
  lazy val final_vector_reg3 = RegInit(0.U(bitsWide.value.W))

  val source_addr_setwork_fired = RegInit(false.B)
  val user_key_fired = RegInit(false.B)
  val destroy_fired = RegInit(false.B)
  lazy val regmap = AXI4LiteRegMap(0 -> AXI4LiteWriteReg(source_addr_setwork_reg), 
                                   1 -> AXI4LiteWriteReg(dest_addr_setwork_reg),
                                   2 -> AXI4LiteWriteReg(setwork_control_reg),
                                   3 -> AXI4LiteWriteReg(user_key_reg0),
                                   4 -> AXI4LiteWriteReg(user_key_reg1),
                                   5 -> AXI4LiteWriteReg(user_key_reg2),
                                   6 -> AXI4LiteWriteReg(user_key_reg3),
                                   7 -> AXI4LiteWriteReg(key_control_reg),
                                   8 -> AXI4LiteReadReg(status_reg),
                                   9 ->  AXI4LiteWriteReg(initial_vector_reg0),
                                   10 -> AXI4LiteWriteReg(initial_vector_reg1),
                                   11 -> AXI4LiteWriteReg(initial_vector_reg2),
                                   12 -> AXI4LiteWriteReg(initial_vector_reg3),
                                   13 -> AXI4LiteReadReg(final_vector_reg0),
                                   14 -> AXI4LiteReadReg(final_vector_reg1),
                                   15 -> AXI4LiteReadReg(final_vector_reg2),
                                   16 -> AXI4LiteReadReg(final_vector_reg3))
  def connect_status_reg(in: UInt) = {
    status_reg := in
  }
  def connect_final_vector(in: Vec[UInt]) = {
    final_vector_reg0 := in(0)
    final_vector_reg1 := in(1)
    final_vector_reg2 := in(2)
    final_vector_reg3 := in(3)
  }
  when(currentWriteAddress === 2.U && newDataReceived) { // setwork_control_reg was written
    source_addr_setwork_fired := false.B
  }
  when(currentWriteAddress === 7.U && newDataReceived) { // key_control_reg was written
    user_key_fired := false.B
    destroy_fired := false.B
  }
}

trait ControllerAXILiteMaster extends AXI4LiteMasterInterface {

  // register address
  val MM2S_DMACR_ADDR   = 0x0000_0000
  val MM2S_DMASR_ADDR   = 0x0000_0004
  val MM2S_SA_ADDR      = 0x0000_0018
  val MM2S_LENGTH_ADDR  = 0x0000_0028
  val S2MM_DMACR_ADDR   = 0x0000_0030
  val S2MM_DMASR_ADDR   = 0x0000_0034
  val S2MM_DA_ADDR      = 0x0000_0048
  val S2MM_LENGTH_ADDR  = 0x0000_0058

  def set_MM2S_DMACR(data: UInt) = {
    startWriteTransaction(data, MM2S_DMACR_ADDR.U)
  }
  def set_MM2S_DMASR(data: UInt) = {
    startWriteTransaction(data, MM2S_DMASR_ADDR.U)
  }
  def set_MM2S_SA(data: UInt) = {
    startWriteTransaction(data, MM2S_SA_ADDR.U)
  }
  def set_MM2S_LENGTH(data: UInt) = {
    startWriteTransaction(data, MM2S_LENGTH_ADDR.U)
  }
  def set_S2MM_DMACR(data: UInt) = {
    startWriteTransaction(data, S2MM_DMACR_ADDR.U)
  }
  def set_S2MM_DMASR(data: UInt) = {
    startWriteTransaction(data, S2MM_DMASR_ADDR.U)
  }
  def set_S2MM_DA(data: UInt) = {
    startWriteTransaction(data, S2MM_DA_ADDR.U)
  }
  def set_S2MM_LENGTH(data: UInt) = {
    startWriteTransaction(data, S2MM_LENGTH_ADDR.U)
  }
}

trait ControllerAXIStreamSlave extends AXI4StreamSlaveInterface {
  /**
   * Write data to queue
   * @param memio Queue enq interface
   */
  def write(memio:DecoupledIO[UInt]) = {
    when(newDataReceived) {
      when(memio.ready) {
        memio.enq(axiStreamSignals.data)
      }
    }
  }
}

trait ControllerAXIStreamMaster extends AXI4StreamMasterInterface{
  // val rdAddr=RegInit(0.U(bitsWide.value.W))
  // val startMemRead=RegInit(false.B)
  val streamCounter = RegInit(0.U(2.W))
  def read(memio:DecoupledIO[UInt]) = {
    when(isReadyToWrite && memio.valid) {
      streamCounter := streamCounter + 1.U
      when(streamCounter === 3.U) {
        setLast(true.B)
      }.otherwise {
        setLast(false.B)
      }
      startWriteTransaction(memio.deq())
    }
  }
}

class ControllerAXI extends AXIModule {
  val aclock= IO(Input(Clock()))
  val areset= IO(Input(Bool()))
  val s2mm_interrupt = IO(Input(Bool()))
  val mm2s_interrupt = IO(Input(Bool()))
  withClockAndReset(aclock, !areset.asBool) {
    val Ctl = Module(new Controller(3))

    val LiteSlave = new AXI4LiteSlaveNode with ControllerAXILiteSlave 
    val LiteMaster = new AXI4LiteMasterNode with ControllerAXILiteMaster
    val StreamSlave = new AXI4StreamSlaveNode with ControllerAXIStreamSlave
    val StreamMaster = new AXI4StreamMasterNode with ControllerAXIStreamMaster

    // LiteSlave conncection
    Ctl.io.source_addr_setwork.bits := LiteSlave.source_addr_setwork_reg
    Ctl.io.dest_addr_setwork := LiteSlave.dest_addr_setwork_reg
    Ctl.io.source_addr_setwork.valid := LiteSlave.setwork_control_reg(30) & !LiteSlave.source_addr_setwork_fired
    Ctl.io.length_setwork := LiteSlave.setwork_control_reg(25, 0)
    Ctl.io.slotID_setwork := LiteSlave.setwork_control_reg(29, 26)
    Ctl.io.work_mode := LiteSlave.setwork_control_reg(31)
    Ctl.io.user_key.bits := Cat(LiteSlave.user_key_reg3, 
                                LiteSlave.user_key_reg2,
                                LiteSlave.user_key_reg1, 
                                LiteSlave.user_key_reg0).asTypeOf(Vec(16, UInt(8.W)))
    Ctl.io.initial_vector := Cat(LiteSlave.initial_vector_reg3,
                                 LiteSlave.initial_vector_reg2,
                                 LiteSlave.initial_vector_reg1,
                                 LiteSlave.initial_vector_reg0).asTypeOf(Vec(4, UInt(32.W)))
    LiteSlave.connect_final_vector(Ctl.io.final_vector)
    Ctl.io.user_key.valid := LiteSlave.key_control_reg(8) & !LiteSlave.user_key_fired
    Ctl.io.slotID_key := LiteSlave.key_control_reg(3, 0)
    Ctl.io.destroy.bits := LiteSlave.key_control_reg(7, 4)
    Ctl.io.destroy.valid := LiteSlave.key_control_reg(9) & !LiteSlave.destroy_fired
    Ctl.io.final_vector_select := LiteSlave.key_control_reg(13, 10)
    LiteSlave.connect_status_reg(Cat(Ctl.io.busy, // 18-3
                                     Ctl.io.destroy.ready, // 2
                                     Ctl.io.user_key.ready, // 1
                                     Ctl.io.source_addr_setwork.ready)) //0
    when(Ctl.io.source_addr_setwork.fire) {
      LiteSlave.source_addr_setwork_fired := true.B
    }
    when(Ctl.io.user_key.fire) {
      LiteSlave.user_key_fired := true.B
    }
    when(Ctl.io.destroy.fire) {
      LiteSlave.destroy_fired := true.B
    }

    // LiteMaster connection
    val DestAddrReadyWire = WireInit(false.B)
    val SourceAddrReadyWire = WireInit(false.B)
    val reset_state :: write_s2mm_control :: write_mm2s_control :: idle_state :: clear_s2mm_intr :: clear_mm2s_intr :: write_s2mm_da :: write_s2mm_length :: write_mm2s_sa :: write_mm2s_length :: Nil = Enum(10)
    val STM = RegInit(reset_state)
    val S2MM_FIRST = RegInit(false.B)
    val S2MM_FIRST_RUN = RegInit(true.B)
    val MM2S_FIRST_RUN = RegInit(true.B)
    val control_reg_bits = (1 << 12) | 1
    val clear_intr_bits = (1 << 12)
    Ctl.io.dest_addr_dma.ready := DestAddrReadyWire
    Ctl.io.source_addr_dma.ready := SourceAddrReadyWire
    switch(STM) {
      is(reset_state) {
        when(LiteMaster.isReadyToWrite) {
          LiteMaster.set_S2MM_DMACR(control_reg_bits.U)
          STM := write_s2mm_control
        }
      }
      is(write_s2mm_control) {
        when(LiteMaster.isReadyToWrite) {
          LiteMaster.set_MM2S_DMACR(control_reg_bits.U)
          STM := idle_state
        }
      }
      is(idle_state) {
        when(LiteMaster.isReadyToWrite) {
          when(S2MM_FIRST) {
            when((S2MM_FIRST_RUN || s2mm_interrupt) && Ctl.io.dest_addr_dma.valid) {
              LiteMaster.set_S2MM_DMASR(clear_intr_bits.U)
              S2MM_FIRST_RUN := false.B
              STM := clear_s2mm_intr
            }.elsewhen((MM2S_FIRST_RUN || mm2s_interrupt) && Ctl.io.source_addr_dma.valid) {
              LiteMaster.set_MM2S_DMASR(clear_intr_bits.U)
              MM2S_FIRST_RUN := false.B
              STM := clear_mm2s_intr
            }
          }.otherwise { // MM2S first
            when((MM2S_FIRST_RUN || mm2s_interrupt) && Ctl.io.source_addr_dma.valid) {
              LiteMaster.set_MM2S_DMASR(clear_intr_bits.U)
              MM2S_FIRST_RUN := false.B
              STM := clear_mm2s_intr
            }.elsewhen((S2MM_FIRST_RUN || s2mm_interrupt) && Ctl.io.dest_addr_dma.valid) {
              LiteMaster.set_S2MM_DMASR(clear_intr_bits.U)
              S2MM_FIRST_RUN := false.B
              STM := clear_s2mm_intr
            }
          }
        }
      }
      is(clear_s2mm_intr) {
        when(LiteMaster.isReadyToWrite) {
          LiteMaster.set_S2MM_DA(Ctl.io.dest_addr_dma.bits)
          DestAddrReadyWire := true.B
          STM := write_s2mm_da
        }
      }
      is(clear_mm2s_intr) {
        when(LiteMaster.isReadyToWrite) {
          LiteMaster.set_MM2S_SA(Ctl.io.source_addr_dma.bits)
          SourceAddrReadyWire := true.B
          STM := write_mm2s_sa
        }
      }
      is(write_s2mm_da) {
        when(LiteMaster.isReadyToWrite) {
          LiteMaster.set_S2MM_LENGTH(16.U)
          STM := write_s2mm_length
        }
      }
      is(write_s2mm_length) {
        when(LiteMaster.isReadyToWrite) {
          S2MM_FIRST := false.B
          STM := idle_state
        }
      }
      is(write_mm2s_sa) {
        when(LiteMaster.isReadyToWrite) {
          LiteMaster.set_MM2S_LENGTH(16.U)
          STM := write_mm2s_length
        }
      }
      is(write_mm2s_length) {
        when(LiteMaster.isReadyToWrite) {
          S2MM_FIRST := true.B
          STM := idle_state
        }
      }
    }

    // StreamSlave connection
    val EnqWire = WireInit(0.U.asTypeOf(Decoupled(UInt(32.W)))) 
    Ctl.io.fifo_in <> EnqWire
    StreamSlave.write(EnqWire)

    // StreamMaster connection
    val DeqWire = WireInit(0.U.asTypeOf(Decoupled(UInt(32.W))))
    DeqWire <> Ctl.io.fifo_out
    StreamMaster.read(DeqWire)
  }
}

object Mymain extends App {
  emitVerilog(new ControllerAXI, Array("--target-dir", "generated"))
}