module RRArbiter(
  input        clock,
  output       io_in_0_ready,
  input        io_in_0_valid,
  input  [7:0] io_in_0_bits_0,
  input  [7:0] io_in_0_bits_1,
  input  [7:0] io_in_0_bits_2,
  input  [7:0] io_in_0_bits_3,
  input  [7:0] io_in_0_bits_4,
  input  [7:0] io_in_0_bits_5,
  input  [7:0] io_in_0_bits_6,
  input  [7:0] io_in_0_bits_7,
  input  [7:0] io_in_0_bits_8,
  input  [7:0] io_in_0_bits_9,
  input  [7:0] io_in_0_bits_10,
  input  [7:0] io_in_0_bits_11,
  input  [7:0] io_in_0_bits_12,
  input  [7:0] io_in_0_bits_13,
  input  [7:0] io_in_0_bits_14,
  input  [7:0] io_in_0_bits_15,
  output       io_in_1_ready,
  input        io_in_1_valid,
  input  [7:0] io_in_1_bits_0,
  input  [7:0] io_in_1_bits_1,
  input  [7:0] io_in_1_bits_2,
  input  [7:0] io_in_1_bits_3,
  input  [7:0] io_in_1_bits_4,
  input  [7:0] io_in_1_bits_5,
  input  [7:0] io_in_1_bits_6,
  input  [7:0] io_in_1_bits_7,
  input  [7:0] io_in_1_bits_8,
  input  [7:0] io_in_1_bits_9,
  input  [7:0] io_in_1_bits_10,
  input  [7:0] io_in_1_bits_11,
  input  [7:0] io_in_1_bits_12,
  input  [7:0] io_in_1_bits_13,
  input  [7:0] io_in_1_bits_14,
  input  [7:0] io_in_1_bits_15,
  output       io_in_2_ready,
  input        io_in_2_valid,
  input  [7:0] io_in_2_bits_0,
  input  [7:0] io_in_2_bits_1,
  input  [7:0] io_in_2_bits_2,
  input  [7:0] io_in_2_bits_3,
  input  [7:0] io_in_2_bits_4,
  input  [7:0] io_in_2_bits_5,
  input  [7:0] io_in_2_bits_6,
  input  [7:0] io_in_2_bits_7,
  input  [7:0] io_in_2_bits_8,
  input  [7:0] io_in_2_bits_9,
  input  [7:0] io_in_2_bits_10,
  input  [7:0] io_in_2_bits_11,
  input  [7:0] io_in_2_bits_12,
  input  [7:0] io_in_2_bits_13,
  input  [7:0] io_in_2_bits_14,
  input  [7:0] io_in_2_bits_15,
  output       io_in_3_ready,
  input        io_in_3_valid,
  input  [7:0] io_in_3_bits_0,
  input  [7:0] io_in_3_bits_1,
  input  [7:0] io_in_3_bits_2,
  input  [7:0] io_in_3_bits_3,
  input  [7:0] io_in_3_bits_4,
  input  [7:0] io_in_3_bits_5,
  input  [7:0] io_in_3_bits_6,
  input  [7:0] io_in_3_bits_7,
  input  [7:0] io_in_3_bits_8,
  input  [7:0] io_in_3_bits_9,
  input  [7:0] io_in_3_bits_10,
  input  [7:0] io_in_3_bits_11,
  input  [7:0] io_in_3_bits_12,
  input  [7:0] io_in_3_bits_13,
  input  [7:0] io_in_3_bits_14,
  input  [7:0] io_in_3_bits_15,
  input        io_out_ready,
  output       io_out_valid,
  output [7:0] io_out_bits_0,
  output [7:0] io_out_bits_1,
  output [7:0] io_out_bits_2,
  output [7:0] io_out_bits_3,
  output [7:0] io_out_bits_4,
  output [7:0] io_out_bits_5,
  output [7:0] io_out_bits_6,
  output [7:0] io_out_bits_7,
  output [7:0] io_out_bits_8,
  output [7:0] io_out_bits_9,
  output [7:0] io_out_bits_10,
  output [7:0] io_out_bits_11,
  output [7:0] io_out_bits_12,
  output [7:0] io_out_bits_13,
  output [7:0] io_out_bits_14,
  output [7:0] io_out_bits_15,
  output [1:0] io_chosen
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  _GEN_1 = 2'h1 == io_chosen ? io_in_1_valid : io_in_0_valid; // @[Arbiter.scala 56:{16,16}]
  wire  _GEN_2 = 2'h2 == io_chosen ? io_in_2_valid : _GEN_1; // @[Arbiter.scala 56:{16,16}]
  wire [7:0] _GEN_5 = 2'h1 == io_chosen ? io_in_1_bits_0 : io_in_0_bits_0; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_6 = 2'h2 == io_chosen ? io_in_2_bits_0 : _GEN_5; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_9 = 2'h1 == io_chosen ? io_in_1_bits_1 : io_in_0_bits_1; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_10 = 2'h2 == io_chosen ? io_in_2_bits_1 : _GEN_9; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_13 = 2'h1 == io_chosen ? io_in_1_bits_2 : io_in_0_bits_2; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_14 = 2'h2 == io_chosen ? io_in_2_bits_2 : _GEN_13; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_17 = 2'h1 == io_chosen ? io_in_1_bits_3 : io_in_0_bits_3; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_18 = 2'h2 == io_chosen ? io_in_2_bits_3 : _GEN_17; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_21 = 2'h1 == io_chosen ? io_in_1_bits_4 : io_in_0_bits_4; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_22 = 2'h2 == io_chosen ? io_in_2_bits_4 : _GEN_21; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_25 = 2'h1 == io_chosen ? io_in_1_bits_5 : io_in_0_bits_5; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_26 = 2'h2 == io_chosen ? io_in_2_bits_5 : _GEN_25; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_29 = 2'h1 == io_chosen ? io_in_1_bits_6 : io_in_0_bits_6; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_30 = 2'h2 == io_chosen ? io_in_2_bits_6 : _GEN_29; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_33 = 2'h1 == io_chosen ? io_in_1_bits_7 : io_in_0_bits_7; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_34 = 2'h2 == io_chosen ? io_in_2_bits_7 : _GEN_33; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_37 = 2'h1 == io_chosen ? io_in_1_bits_8 : io_in_0_bits_8; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_38 = 2'h2 == io_chosen ? io_in_2_bits_8 : _GEN_37; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_41 = 2'h1 == io_chosen ? io_in_1_bits_9 : io_in_0_bits_9; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_42 = 2'h2 == io_chosen ? io_in_2_bits_9 : _GEN_41; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_45 = 2'h1 == io_chosen ? io_in_1_bits_10 : io_in_0_bits_10; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_46 = 2'h2 == io_chosen ? io_in_2_bits_10 : _GEN_45; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_49 = 2'h1 == io_chosen ? io_in_1_bits_11 : io_in_0_bits_11; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_50 = 2'h2 == io_chosen ? io_in_2_bits_11 : _GEN_49; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_53 = 2'h1 == io_chosen ? io_in_1_bits_12 : io_in_0_bits_12; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_54 = 2'h2 == io_chosen ? io_in_2_bits_12 : _GEN_53; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_57 = 2'h1 == io_chosen ? io_in_1_bits_13 : io_in_0_bits_13; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_58 = 2'h2 == io_chosen ? io_in_2_bits_13 : _GEN_57; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_61 = 2'h1 == io_chosen ? io_in_1_bits_14 : io_in_0_bits_14; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_62 = 2'h2 == io_chosen ? io_in_2_bits_14 : _GEN_61; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_65 = 2'h1 == io_chosen ? io_in_1_bits_15 : io_in_0_bits_15; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_66 = 2'h2 == io_chosen ? io_in_2_bits_15 : _GEN_65; // @[Arbiter.scala 57:{15,15}]
  wire  _ctrl_validMask_grantMask_lastGrant_T = io_out_ready & io_out_valid; // @[Decoupled.scala 50:35]
  reg [1:0] lastGrant; // @[Reg.scala 16:16]
  wire  grantMask_1 = 2'h1 > lastGrant; // @[Arbiter.scala 82:49]
  wire  grantMask_2 = 2'h2 > lastGrant; // @[Arbiter.scala 82:49]
  wire  grantMask_3 = 2'h3 > lastGrant; // @[Arbiter.scala 82:49]
  wire  validMask_1 = io_in_1_valid & grantMask_1; // @[Arbiter.scala 83:76]
  wire  validMask_2 = io_in_2_valid & grantMask_2; // @[Arbiter.scala 83:76]
  wire  validMask_3 = io_in_3_valid & grantMask_3; // @[Arbiter.scala 83:76]
  wire  ctrl_2 = ~validMask_1; // @[Arbiter.scala 46:78]
  wire  ctrl_3 = ~(validMask_1 | validMask_2); // @[Arbiter.scala 46:78]
  wire  ctrl_4 = ~(validMask_1 | validMask_2 | validMask_3); // @[Arbiter.scala 46:78]
  wire  ctrl_5 = ~(validMask_1 | validMask_2 | validMask_3 | io_in_0_valid); // @[Arbiter.scala 46:78]
  wire  ctrl_6 = ~(validMask_1 | validMask_2 | validMask_3 | io_in_0_valid | io_in_1_valid); // @[Arbiter.scala 46:78]
  wire  ctrl_7 = ~(validMask_1 | validMask_2 | validMask_3 | io_in_0_valid | io_in_1_valid | io_in_2_valid); // @[Arbiter.scala 46:78]
  wire  _T_3 = grantMask_1 | ctrl_5; // @[Arbiter.scala 87:50]
  wire  _T_5 = ctrl_2 & grantMask_2 | ctrl_6; // @[Arbiter.scala 87:50]
  wire  _T_7 = ctrl_3 & grantMask_3 | ctrl_7; // @[Arbiter.scala 87:50]
  wire [1:0] _GEN_69 = io_in_2_valid ? 2'h2 : 2'h3; // @[Arbiter.scala 92:{26,35}]
  wire [1:0] _GEN_70 = io_in_1_valid ? 2'h1 : _GEN_69; // @[Arbiter.scala 92:{26,35}]
  wire [1:0] _GEN_71 = io_in_0_valid ? 2'h0 : _GEN_70; // @[Arbiter.scala 92:{26,35}]
  wire [1:0] _GEN_72 = validMask_3 ? 2'h3 : _GEN_71; // @[Arbiter.scala 94:{24,33}]
  wire [1:0] _GEN_73 = validMask_2 ? 2'h2 : _GEN_72; // @[Arbiter.scala 94:{24,33}]
  assign io_in_0_ready = ctrl_4 & io_out_ready; // @[Arbiter.scala 75:21]
  assign io_in_1_ready = _T_3 & io_out_ready; // @[Arbiter.scala 75:21]
  assign io_in_2_ready = _T_5 & io_out_ready; // @[Arbiter.scala 75:21]
  assign io_in_3_ready = _T_7 & io_out_ready; // @[Arbiter.scala 75:21]
  assign io_out_valid = 2'h3 == io_chosen ? io_in_3_valid : _GEN_2; // @[Arbiter.scala 56:{16,16}]
  assign io_out_bits_0 = 2'h3 == io_chosen ? io_in_3_bits_0 : _GEN_6; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_1 = 2'h3 == io_chosen ? io_in_3_bits_1 : _GEN_10; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_2 = 2'h3 == io_chosen ? io_in_3_bits_2 : _GEN_14; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_3 = 2'h3 == io_chosen ? io_in_3_bits_3 : _GEN_18; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_4 = 2'h3 == io_chosen ? io_in_3_bits_4 : _GEN_22; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_5 = 2'h3 == io_chosen ? io_in_3_bits_5 : _GEN_26; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_6 = 2'h3 == io_chosen ? io_in_3_bits_6 : _GEN_30; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_7 = 2'h3 == io_chosen ? io_in_3_bits_7 : _GEN_34; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_8 = 2'h3 == io_chosen ? io_in_3_bits_8 : _GEN_38; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_9 = 2'h3 == io_chosen ? io_in_3_bits_9 : _GEN_42; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_10 = 2'h3 == io_chosen ? io_in_3_bits_10 : _GEN_46; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_11 = 2'h3 == io_chosen ? io_in_3_bits_11 : _GEN_50; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_12 = 2'h3 == io_chosen ? io_in_3_bits_12 : _GEN_54; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_13 = 2'h3 == io_chosen ? io_in_3_bits_13 : _GEN_58; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_14 = 2'h3 == io_chosen ? io_in_3_bits_14 : _GEN_62; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_15 = 2'h3 == io_chosen ? io_in_3_bits_15 : _GEN_66; // @[Arbiter.scala 57:{15,15}]
  assign io_chosen = validMask_1 ? 2'h1 : _GEN_73; // @[Arbiter.scala 94:{24,33}]
  always @(posedge clock) begin
    if (_ctrl_validMask_grantMask_lastGrant_T) begin // @[Reg.scala 17:18]
      lastGrant <= io_chosen; // @[Reg.scala 17:22]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  lastGrant = _RAND_0[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module AESSBox(
  input        clock,
  input  [7:0] io_in,
  output [7:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire  st1_t_0 = io_in[3] ^ io_in[1]; // @[Sbox.scala 26:20]
  wire  st1_t_1 = io_in[6] ^ io_in[5]; // @[Sbox.scala 27:20]
  wire  st1_t_2 = io_in[6] ^ io_in[2]; // @[Sbox.scala 28:20]
  wire  st1_t_3 = io_in[5] ^ io_in[2]; // @[Sbox.scala 29:20]
  wire  st1_t_4 = io_in[4] ^ io_in[0]; // @[Sbox.scala 30:20]
  wire  st1_t_5 = io_in[1] ^ io_in[0]; // @[Sbox.scala 31:20]
  wire  st1_y_1 = io_in[7] ^ io_in[4]; // @[Sbox.scala 33:20]
  wire  st1_y_2 = io_in[7] ^ io_in[2]; // @[Sbox.scala 34:20]
  wire  st1_y_3 = io_in[7] ^ io_in[1]; // @[Sbox.scala 35:20]
  wire  st1_y_4 = io_in[4] ^ io_in[2]; // @[Sbox.scala 36:20]
  wire  st1_y_5 = st1_y_1 ^ st1_t_0; // @[Sbox.scala 37:20]
  wire  st1_y_6 = io_in[0] ^ st1_y_5; // @[Sbox.scala 38:20]
  wire  st1_y_7 = io_in[0] ^ st1_t_1; // @[Sbox.scala 39:20]
  wire  st1_y_8 = st1_y_5 ^ st1_t_1; // @[Sbox.scala 40:20]
  wire  st1_y_9 = st1_y_3 ^ st1_y_4; // @[Sbox.scala 41:20]
  wire  st1_y_10 = st1_y_5 ^ st1_t_2; // @[Sbox.scala 42:20]
  wire  st1_y_11 = st1_t_0 ^ st1_t_2; // @[Sbox.scala 43:20]
  wire  st1_y_12 = st1_t_0 ^ st1_t_3; // @[Sbox.scala 44:20]
  wire  st1_y_13 = st1_y_7 ^ st1_y_12; // @[Sbox.scala 45:20]
  wire  st1_y_14 = st1_t_1 ^ st1_t_4; // @[Sbox.scala 46:20]
  wire  st1_y_15 = st1_y_1 ^ st1_y_14; // @[Sbox.scala 47:20]
  wire  st1_y_16 = st1_t_1 ^ st1_t_5; // @[Sbox.scala 48:20]
  wire  st1_y_17 = st1_y_2 ^ st1_y_16; // @[Sbox.scala 49:20]
  wire  st1_y_18 = st1_y_2 ^ st1_y_8; // @[Sbox.scala 50:20]
  wire  st1_y_19 = st1_y_15 ^ st1_y_13; // @[Sbox.scala 51:20]
  wire  st1_y_20 = st1_y_1 ^ st1_t_3; // @[Sbox.scala 52:20]
  wire [9:0] st1_lo = {st1_y_9,st1_y_8,st1_y_7,st1_y_6,st1_y_5,st1_y_4,st1_y_3,st1_y_2,st1_y_1,io_in[0]}; // @[Sbox.scala 53:7]
  wire [4:0] st1_hi_lo = {st1_y_14,st1_y_13,st1_y_12,st1_y_11,st1_y_10}; // @[Sbox.scala 53:7]
  wire [10:0] st1_hi = {st1_y_20,st1_y_19,st1_y_18,st1_y_17,st1_y_16,st1_y_15,st1_hi_lo}; // @[Sbox.scala 53:7]
  reg [20:0] r1; // @[Sbox.scala 14:19]
  wire  mid_t_0 = r1[3] ^ r1[12]; // @[Sbox.scala 97:20]
  wire  mid_t_1 = r1[9] & r1[5]; // @[Sbox.scala 98:20]
  wire  mid_t_2 = r1[17] & r1[6]; // @[Sbox.scala 99:20]
  wire  mid_t_3 = r1[10] ^ mid_t_1; // @[Sbox.scala 100:20]
  wire  mid_t_4 = r1[14] & r1[0]; // @[Sbox.scala 101:20]
  wire  mid_t_5 = mid_t_4 ^ mid_t_1; // @[Sbox.scala 102:20]
  wire  mid_t_6 = r1[3] & r1[12]; // @[Sbox.scala 103:20]
  wire  mid_t_7 = r1[16] & r1[7]; // @[Sbox.scala 104:20]
  wire  mid_t_8 = mid_t_0 ^ mid_t_6; // @[Sbox.scala 105:20]
  wire  mid_t_9 = r1[15] & r1[13]; // @[Sbox.scala 106:20]
  wire  mid_t_10 = mid_t_9 ^ mid_t_6; // @[Sbox.scala 107:20]
  wire  mid_t_11 = r1[1] & r1[11]; // @[Sbox.scala 108:20]
  wire  mid_t_12 = r1[4] & r1[20]; // @[Sbox.scala 109:20]
  wire  mid_t_13 = mid_t_12 ^ mid_t_11; // @[Sbox.scala 110:20]
  wire  mid_t_14 = r1[2] & r1[8]; // @[Sbox.scala 111:20]
  wire  mid_t_15 = mid_t_14 ^ mid_t_11; // @[Sbox.scala 112:20]
  wire  mid_t_16 = mid_t_3 ^ mid_t_2; // @[Sbox.scala 113:20]
  wire  mid_t_17 = mid_t_5 ^ r1[18]; // @[Sbox.scala 114:20]
  wire  mid_t_18 = mid_t_8 ^ mid_t_7; // @[Sbox.scala 115:20]
  wire  mid_t_19 = mid_t_10 ^ mid_t_15; // @[Sbox.scala 116:20]
  wire  mid_t_20 = mid_t_16 ^ mid_t_13; // @[Sbox.scala 117:20]
  wire  mid_t_21 = mid_t_17 ^ mid_t_15; // @[Sbox.scala 118:20]
  wire  mid_t_22 = mid_t_18 ^ mid_t_13; // @[Sbox.scala 119:20]
  wire  mid_t_23 = mid_t_19 ^ r1[19]; // @[Sbox.scala 120:20]
  wire  mid_t_24 = mid_t_22 ^ mid_t_23; // @[Sbox.scala 121:20]
  wire  mid_t_25 = mid_t_22 & mid_t_20; // @[Sbox.scala 122:20]
  wire  mid_t_26 = mid_t_21 ^ mid_t_25; // @[Sbox.scala 123:20]
  wire  mid_t_27 = mid_t_20 ^ mid_t_21; // @[Sbox.scala 124:20]
  wire  mid_t_28 = mid_t_23 ^ mid_t_25; // @[Sbox.scala 125:20]
  wire  mid_t_29 = mid_t_28 & mid_t_27; // @[Sbox.scala 126:20]
  wire  mid_t_30 = mid_t_26 & mid_t_24; // @[Sbox.scala 127:20]
  wire  mid_t_31 = mid_t_20 & mid_t_23; // @[Sbox.scala 128:20]
  wire  mid_t_32 = mid_t_27 & mid_t_31; // @[Sbox.scala 129:20]
  wire  mid_t_33 = mid_t_27 ^ mid_t_25; // @[Sbox.scala 130:20]
  wire  mid_t_34 = mid_t_21 & mid_t_22; // @[Sbox.scala 131:20]
  wire  mid_t_35 = mid_t_24 & mid_t_34; // @[Sbox.scala 132:20]
  wire  mid_t_36 = mid_t_24 ^ mid_t_25; // @[Sbox.scala 133:20]
  wire  mid_t_37 = mid_t_21 ^ mid_t_29; // @[Sbox.scala 134:20]
  wire  mid_t_38 = mid_t_32 ^ mid_t_33; // @[Sbox.scala 135:20]
  wire  mid_t_39 = mid_t_23 ^ mid_t_30; // @[Sbox.scala 136:20]
  wire  mid_t_40 = mid_t_35 ^ mid_t_36; // @[Sbox.scala 137:20]
  wire  mid_t_41 = mid_t_38 ^ mid_t_40; // @[Sbox.scala 138:20]
  wire  mid_t_42 = mid_t_37 ^ mid_t_39; // @[Sbox.scala 139:20]
  wire  mid_t_43 = mid_t_37 ^ mid_t_38; // @[Sbox.scala 140:20]
  wire  mid_t_44 = mid_t_39 ^ mid_t_40; // @[Sbox.scala 141:20]
  wire  mid_t_45 = mid_t_42 ^ mid_t_41; // @[Sbox.scala 142:20]
  wire  mid_y_0 = mid_t_38 & r1[7]; // @[Sbox.scala 143:20]
  wire  mid_y_1 = mid_t_37 & r1[13]; // @[Sbox.scala 144:20]
  wire  mid_y_2 = mid_t_42 & r1[11]; // @[Sbox.scala 145:20]
  wire  mid_y_3 = mid_t_45 & r1[20]; // @[Sbox.scala 146:20]
  wire  mid_y_4 = mid_t_41 & r1[8]; // @[Sbox.scala 147:20]
  wire  mid_y_5 = mid_t_44 & r1[9]; // @[Sbox.scala 148:20]
  wire  mid_y_6 = mid_t_40 & r1[17]; // @[Sbox.scala 149:20]
  wire  mid_y_7 = mid_t_39 & r1[14]; // @[Sbox.scala 150:20]
  wire  mid_y_8 = mid_t_43 & r1[3]; // @[Sbox.scala 151:20]
  wire  mid_y_9 = mid_t_38 & r1[16]; // @[Sbox.scala 152:20]
  wire  mid_y_10 = mid_t_37 & r1[15]; // @[Sbox.scala 153:20]
  wire  mid_y_11 = mid_t_42 & r1[1]; // @[Sbox.scala 154:20]
  wire  mid_y_12 = mid_t_45 & r1[4]; // @[Sbox.scala 155:20]
  wire  mid_y_13 = mid_t_41 & r1[2]; // @[Sbox.scala 156:20]
  wire  mid_y_14 = mid_t_44 & r1[5]; // @[Sbox.scala 157:20]
  wire  mid_y_15 = mid_t_40 & r1[6]; // @[Sbox.scala 158:20]
  wire  mid_y_16 = mid_t_39 & r1[0]; // @[Sbox.scala 159:20]
  wire  mid_y_17 = mid_t_43 & r1[12]; // @[Sbox.scala 160:20]
  wire [8:0] mid_lo = {mid_y_8,mid_y_7,mid_y_6,mid_y_5,mid_y_4,mid_y_3,mid_y_2,mid_y_1,mid_y_0}; // @[Sbox.scala 161:7]
  wire [8:0] mid_hi = {mid_y_17,mid_y_16,mid_y_15,mid_y_14,mid_y_13,mid_y_12,mid_y_11,mid_y_10,mid_y_9}; // @[Sbox.scala 161:7]
  reg [17:0] r2; // @[Sbox.scala 16:19]
  wire  out_t_0 = r2[11] ^ r2[12]; // @[Sbox.scala 170:20]
  wire  out_t_1 = r2[0] ^ r2[6]; // @[Sbox.scala 171:20]
  wire  out_t_2 = r2[14] ^ r2[16]; // @[Sbox.scala 172:20]
  wire  out_t_3 = r2[15] ^ r2[5]; // @[Sbox.scala 173:20]
  wire  out_t_4 = r2[4] ^ r2[8]; // @[Sbox.scala 174:20]
  wire  out_t_5 = r2[17] ^ r2[11]; // @[Sbox.scala 175:20]
  wire  out_t_6 = r2[12] ^ out_t_5; // @[Sbox.scala 176:20]
  wire  out_t_7 = r2[14] ^ out_t_3; // @[Sbox.scala 177:20]
  wire  out_t_8 = r2[1] ^ r2[9]; // @[Sbox.scala 178:20]
  wire  out_t_9 = r2[2] ^ r2[3]; // @[Sbox.scala 179:20]
  wire  out_t_10 = r2[3] ^ out_t_4; // @[Sbox.scala 180:20]
  wire  out_t_11 = r2[10] ^ out_t_2; // @[Sbox.scala 181:20]
  wire  out_t_12 = r2[16] ^ r2[1]; // @[Sbox.scala 182:20]
  wire  out_t_13 = r2[0] ^ out_t_0; // @[Sbox.scala 183:20]
  wire  out_t_14 = r2[2] ^ r2[11]; // @[Sbox.scala 184:20]
  wire  out_t_15 = r2[5] ^ out_t_1; // @[Sbox.scala 185:20]
  wire  out_t_16 = r2[6] ^ out_t_0; // @[Sbox.scala 186:20]
  wire  out_t_17 = r2[7] ^ out_t_1; // @[Sbox.scala 187:20]
  wire  out_t_18 = r2[8] ^ out_t_8; // @[Sbox.scala 188:20]
  wire  out_t_19 = r2[13] ^ out_t_4; // @[Sbox.scala 189:20]
  wire  out_t_20 = out_t_0 ^ out_t_1; // @[Sbox.scala 190:20]
  wire  out_t_21 = out_t_1 ^ out_t_7; // @[Sbox.scala 191:20]
  wire  out_t_22 = out_t_3 ^ out_t_12; // @[Sbox.scala 192:20]
  wire  out_t_23 = out_t_18 ^ out_t_2; // @[Sbox.scala 193:20]
  wire  out_t_24 = out_t_15 ^ out_t_9; // @[Sbox.scala 194:20]
  wire  out_t_25 = out_t_6 ^ out_t_10; // @[Sbox.scala 195:20]
  wire  out_t_26 = out_t_7 ^ out_t_9; // @[Sbox.scala 196:20]
  wire  out_t_27 = out_t_8 ^ out_t_10; // @[Sbox.scala 197:20]
  wire  out_t_28 = out_t_11 ^ out_t_14; // @[Sbox.scala 198:20]
  wire  out_t_29 = out_t_11 ^ out_t_17; // @[Sbox.scala 199:20]
  wire  out_y_0 = out_t_6 ^ ~out_t_23; // @[Sbox.scala 200:20]
  wire  out_y_1 = out_t_13 ^ ~out_t_27; // @[Sbox.scala 201:20]
  wire  out_y_2 = out_t_25 ^ out_t_29; // @[Sbox.scala 202:20]
  wire  out_y_3 = out_t_20 ^ out_t_22; // @[Sbox.scala 203:20]
  wire  out_y_4 = out_t_6 ^ out_t_21; // @[Sbox.scala 204:20]
  wire  out_y_5 = out_t_19 ^ ~out_t_28; // @[Sbox.scala 205:20]
  wire  out_y_6 = out_t_16 ^ ~out_t_26; // @[Sbox.scala 206:20]
  wire  out_y_7 = out_t_6 ^ out_t_24; // @[Sbox.scala 207:20]
  wire [3:0] out_lo = {out_y_3,out_y_2,out_y_1,out_y_0}; // @[Sbox.scala 208:7]
  wire [3:0] out_hi = {out_y_7,out_y_6,out_y_5,out_y_4}; // @[Sbox.scala 208:7]
  assign io_out = {out_hi,out_lo}; // @[Sbox.scala 208:7]
  always @(posedge clock) begin
    r1 <= {st1_hi,st1_lo}; // @[Sbox.scala 53:7]
    r2 <= {mid_hi,mid_lo}; // @[Sbox.scala 161:7]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  r1 = _RAND_0[20:0];
  _RAND_1 = {1{`RANDOM}};
  r2 = _RAND_1[17:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module KSubBytes(
  input        clock,
  input  [7:0] io_input_0,
  input  [7:0] io_input_1,
  input  [7:0] io_input_2,
  input  [7:0] io_input_3,
  output [7:0] io_output_0,
  output [7:0] io_output_1,
  output [7:0] io_output_2,
  output [7:0] io_output_3
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire  sboxs_0_clock; // @[KeyExpansion.scala 46:33]
  wire [7:0] sboxs_0_io_in; // @[KeyExpansion.scala 46:33]
  wire [7:0] sboxs_0_io_out; // @[KeyExpansion.scala 46:33]
  wire  sboxs_1_clock; // @[KeyExpansion.scala 46:33]
  wire [7:0] sboxs_1_io_in; // @[KeyExpansion.scala 46:33]
  wire [7:0] sboxs_1_io_out; // @[KeyExpansion.scala 46:33]
  wire  sboxs_2_clock; // @[KeyExpansion.scala 46:33]
  wire [7:0] sboxs_2_io_in; // @[KeyExpansion.scala 46:33]
  wire [7:0] sboxs_2_io_out; // @[KeyExpansion.scala 46:33]
  wire  sboxs_3_clock; // @[KeyExpansion.scala 46:33]
  wire [7:0] sboxs_3_io_in; // @[KeyExpansion.scala 46:33]
  wire [7:0] sboxs_3_io_out; // @[KeyExpansion.scala 46:33]
  reg [7:0] io_output_0_r; // @[Reg.scala 16:16]
  reg [7:0] io_output_1_r; // @[Reg.scala 16:16]
  reg [7:0] io_output_2_r; // @[Reg.scala 16:16]
  reg [7:0] io_output_3_r; // @[Reg.scala 16:16]
  AESSBox sboxs_0 ( // @[KeyExpansion.scala 46:33]
    .clock(sboxs_0_clock),
    .io_in(sboxs_0_io_in),
    .io_out(sboxs_0_io_out)
  );
  AESSBox sboxs_1 ( // @[KeyExpansion.scala 46:33]
    .clock(sboxs_1_clock),
    .io_in(sboxs_1_io_in),
    .io_out(sboxs_1_io_out)
  );
  AESSBox sboxs_2 ( // @[KeyExpansion.scala 46:33]
    .clock(sboxs_2_clock),
    .io_in(sboxs_2_io_in),
    .io_out(sboxs_2_io_out)
  );
  AESSBox sboxs_3 ( // @[KeyExpansion.scala 46:33]
    .clock(sboxs_3_clock),
    .io_in(sboxs_3_io_in),
    .io_out(sboxs_3_io_out)
  );
  assign io_output_0 = io_output_0_r; // @[KeyExpansion.scala 49:20]
  assign io_output_1 = io_output_1_r; // @[KeyExpansion.scala 49:20]
  assign io_output_2 = io_output_2_r; // @[KeyExpansion.scala 49:20]
  assign io_output_3 = io_output_3_r; // @[KeyExpansion.scala 49:20]
  assign sboxs_0_clock = clock;
  assign sboxs_0_io_in = io_input_0; // @[KeyExpansion.scala 48:22]
  assign sboxs_1_clock = clock;
  assign sboxs_1_io_in = io_input_1; // @[KeyExpansion.scala 48:22]
  assign sboxs_2_clock = clock;
  assign sboxs_2_io_in = io_input_2; // @[KeyExpansion.scala 48:22]
  assign sboxs_3_clock = clock;
  assign sboxs_3_io_in = io_input_3; // @[KeyExpansion.scala 48:22]
  always @(posedge clock) begin
    io_output_0_r <= sboxs_0_io_out; // @[Reg.scala 16:16 17:{18,22}]
    io_output_1_r <= sboxs_1_io_out; // @[Reg.scala 16:16 17:{18,22}]
    io_output_2_r <= sboxs_2_io_out; // @[Reg.scala 16:16 17:{18,22}]
    io_output_3_r <= sboxs_3_io_out; // @[Reg.scala 16:16 17:{18,22}]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  io_output_0_r = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  io_output_1_r = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  io_output_2_r = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  io_output_3_r = _RAND_3[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module KeyExpansion128(
  input        clock,
  input        reset,
  output       io_user_key_ready,
  input        io_user_key_valid,
  input  [7:0] io_user_key_bits_0,
  input  [7:0] io_user_key_bits_1,
  input  [7:0] io_user_key_bits_2,
  input  [7:0] io_user_key_bits_3,
  input  [7:0] io_user_key_bits_4,
  input  [7:0] io_user_key_bits_5,
  input  [7:0] io_user_key_bits_6,
  input  [7:0] io_user_key_bits_7,
  input  [7:0] io_user_key_bits_8,
  input  [7:0] io_user_key_bits_9,
  input  [7:0] io_user_key_bits_10,
  input  [7:0] io_user_key_bits_11,
  input  [7:0] io_user_key_bits_12,
  input  [7:0] io_user_key_bits_13,
  input  [7:0] io_user_key_bits_14,
  input  [7:0] io_user_key_bits_15,
  output       io_write_round_valid,
  output [3:0] io_write_round_bits,
  output [7:0] io_roundKey_0,
  output [7:0] io_roundKey_1,
  output [7:0] io_roundKey_2,
  output [7:0] io_roundKey_3,
  output [7:0] io_roundKey_4,
  output [7:0] io_roundKey_5,
  output [7:0] io_roundKey_6,
  output [7:0] io_roundKey_7,
  output [7:0] io_roundKey_8,
  output [7:0] io_roundKey_9,
  output [7:0] io_roundKey_10,
  output [7:0] io_roundKey_11,
  output [7:0] io_roundKey_12,
  output [7:0] io_roundKey_13,
  output [7:0] io_roundKey_14,
  output [7:0] io_roundKey_15
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
`endif // RANDOMIZE_REG_INIT
  wire  KSubBytesModule_clock; // @[KeyExpansion.scala 66:31]
  wire [7:0] KSubBytesModule_io_input_0; // @[KeyExpansion.scala 66:31]
  wire [7:0] KSubBytesModule_io_input_1; // @[KeyExpansion.scala 66:31]
  wire [7:0] KSubBytesModule_io_input_2; // @[KeyExpansion.scala 66:31]
  wire [7:0] KSubBytesModule_io_input_3; // @[KeyExpansion.scala 66:31]
  wire [7:0] KSubBytesModule_io_output_0; // @[KeyExpansion.scala 66:31]
  wire [7:0] KSubBytesModule_io_output_1; // @[KeyExpansion.scala 66:31]
  wire [7:0] KSubBytesModule_io_output_2; // @[KeyExpansion.scala 66:31]
  wire [7:0] KSubBytesModule_io_output_3; // @[KeyExpansion.scala 66:31]
  reg  Running; // @[KeyExpansion.scala 60:24]
  reg [1:0] Counter; // @[KeyExpansion.scala 61:24]
  reg [3:0] RoundIter; // @[KeyExpansion.scala 62:26]
  reg [7:0] PrevKey_0; // @[KeyExpansion.scala 64:20]
  reg [7:0] PrevKey_1; // @[KeyExpansion.scala 64:20]
  reg [7:0] PrevKey_2; // @[KeyExpansion.scala 64:20]
  reg [7:0] PrevKey_3; // @[KeyExpansion.scala 64:20]
  reg [7:0] PrevKey_4; // @[KeyExpansion.scala 64:20]
  reg [7:0] PrevKey_5; // @[KeyExpansion.scala 64:20]
  reg [7:0] PrevKey_6; // @[KeyExpansion.scala 64:20]
  reg [7:0] PrevKey_7; // @[KeyExpansion.scala 64:20]
  reg [7:0] PrevKey_8; // @[KeyExpansion.scala 64:20]
  reg [7:0] PrevKey_9; // @[KeyExpansion.scala 64:20]
  reg [7:0] PrevKey_10; // @[KeyExpansion.scala 64:20]
  reg [7:0] PrevKey_11; // @[KeyExpansion.scala 64:20]
  reg [7:0] PrevKey_12; // @[KeyExpansion.scala 64:20]
  reg [7:0] PrevKey_13; // @[KeyExpansion.scala 64:20]
  reg [7:0] PrevKey_14; // @[KeyExpansion.scala 64:20]
  reg [7:0] PrevKey_15; // @[KeyExpansion.scala 64:20]
  wire  _T = io_user_key_ready & io_user_key_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_0 = _T | Running; // @[KeyExpansion.scala 74:26 75:13 60:24]
  wire [1:0] _Counter_T_1 = Counter + 2'h1; // @[KeyExpansion.scala 80:24]
  wire  _T_1 = Counter == 2'h0; // @[KeyExpansion.scala 86:27]
  wire [3:0] _RoundIter_T_1 = RoundIter + 4'h1; // @[KeyExpansion.scala 87:28]
  wire [31:0] _w4_T = {KSubBytesModule_io_output_3,KSubBytesModule_io_output_2,KSubBytesModule_io_output_1,
    KSubBytesModule_io_output_0}; // @[KeyExpansion.scala 95:40]
  wire [31:0] _w4_T_3 = {_w4_T[7:0],_w4_T[31:8]}; // @[KeyExpansion.scala 95:58]
  wire [3:0] _w4_T_5 = RoundIter - 4'h1; // @[KeyExpansion.scala 70:59]
  wire [7:0] _GEN_22 = 4'h1 == _w4_T_5 ? 8'h2 : 8'h1; // @[KeyExpansion.scala 95:{62,62}]
  wire [7:0] _GEN_23 = 4'h2 == _w4_T_5 ? 8'h4 : _GEN_22; // @[KeyExpansion.scala 95:{62,62}]
  wire [7:0] _GEN_24 = 4'h3 == _w4_T_5 ? 8'h8 : _GEN_23; // @[KeyExpansion.scala 95:{62,62}]
  wire [7:0] _GEN_25 = 4'h4 == _w4_T_5 ? 8'h10 : _GEN_24; // @[KeyExpansion.scala 95:{62,62}]
  wire [7:0] _GEN_26 = 4'h5 == _w4_T_5 ? 8'h20 : _GEN_25; // @[KeyExpansion.scala 95:{62,62}]
  wire [7:0] _GEN_27 = 4'h6 == _w4_T_5 ? 8'h40 : _GEN_26; // @[KeyExpansion.scala 95:{62,62}]
  wire [7:0] _GEN_28 = 4'h7 == _w4_T_5 ? 8'h80 : _GEN_27; // @[KeyExpansion.scala 95:{62,62}]
  wire [7:0] _GEN_29 = 4'h8 == _w4_T_5 ? 8'h1b : _GEN_28; // @[KeyExpansion.scala 95:{62,62}]
  wire [7:0] _GEN_30 = 4'h9 == _w4_T_5 ? 8'h36 : _GEN_29; // @[KeyExpansion.scala 95:{62,62}]
  wire [7:0] _GEN_31 = 4'ha == _w4_T_5 ? 8'h0 : _GEN_30; // @[KeyExpansion.scala 95:{62,62}]
  wire [7:0] _GEN_32 = 4'hb == _w4_T_5 ? 8'h0 : _GEN_31; // @[KeyExpansion.scala 95:{62,62}]
  wire [7:0] _GEN_33 = 4'hc == _w4_T_5 ? 8'h0 : _GEN_32; // @[KeyExpansion.scala 95:{62,62}]
  wire [7:0] _GEN_34 = 4'hd == _w4_T_5 ? 8'h0 : _GEN_33; // @[KeyExpansion.scala 95:{62,62}]
  wire [7:0] _GEN_35 = 4'he == _w4_T_5 ? 8'h0 : _GEN_34; // @[KeyExpansion.scala 95:{62,62}]
  wire [7:0] _GEN_36 = 4'hf == _w4_T_5 ? 8'h0 : _GEN_35; // @[KeyExpansion.scala 95:{62,62}]
  wire [31:0] _GEN_54 = {{24'd0}, _GEN_36}; // @[KeyExpansion.scala 95:62]
  wire [31:0] _w4_T_6 = _w4_T_3 ^ _GEN_54; // @[KeyExpansion.scala 95:62]
  wire [31:0] _w4_T_7 = {PrevKey_3,PrevKey_2,PrevKey_1,PrevKey_0}; // @[KeyExpansion.scala 97:36]
  wire [31:0] w4 = _w4_T_6 ^ _w4_T_7; // @[KeyExpansion.scala 96:40]
  wire [31:0] _w5_T = {PrevKey_7,PrevKey_6,PrevKey_5,PrevKey_4}; // @[KeyExpansion.scala 98:40]
  wire [31:0] w5 = w4 ^ _w5_T; // @[KeyExpansion.scala 98:17]
  wire [31:0] _w6_T = {PrevKey_11,PrevKey_10,PrevKey_9,PrevKey_8}; // @[KeyExpansion.scala 99:40]
  wire [31:0] w6 = w5 ^ _w6_T; // @[KeyExpansion.scala 99:17]
  wire [31:0] _w7_T = {PrevKey_15,PrevKey_14,PrevKey_13,PrevKey_12}; // @[KeyExpansion.scala 100:40]
  wire [31:0] w7 = w6 ^ _w7_T; // @[KeyExpansion.scala 100:17]
  KSubBytes KSubBytesModule ( // @[KeyExpansion.scala 66:31]
    .clock(KSubBytesModule_clock),
    .io_input_0(KSubBytesModule_io_input_0),
    .io_input_1(KSubBytesModule_io_input_1),
    .io_input_2(KSubBytesModule_io_input_2),
    .io_input_3(KSubBytesModule_io_input_3),
    .io_output_0(KSubBytesModule_io_output_0),
    .io_output_1(KSubBytesModule_io_output_1),
    .io_output_2(KSubBytesModule_io_output_2),
    .io_output_3(KSubBytesModule_io_output_3)
  );
  assign io_user_key_ready = ~Running; // @[KeyExpansion.scala 112:24]
  assign io_write_round_valid = Counter == 2'h1; // @[KeyExpansion.scala 106:16]
  assign io_write_round_bits = RoundIter - 4'h1; // @[KeyExpansion.scala 113:36]
  assign io_roundKey_0 = PrevKey_0; // @[KeyExpansion.scala 114:15]
  assign io_roundKey_1 = PrevKey_1; // @[KeyExpansion.scala 114:15]
  assign io_roundKey_2 = PrevKey_2; // @[KeyExpansion.scala 114:15]
  assign io_roundKey_3 = PrevKey_3; // @[KeyExpansion.scala 114:15]
  assign io_roundKey_4 = PrevKey_4; // @[KeyExpansion.scala 114:15]
  assign io_roundKey_5 = PrevKey_5; // @[KeyExpansion.scala 114:15]
  assign io_roundKey_6 = PrevKey_6; // @[KeyExpansion.scala 114:15]
  assign io_roundKey_7 = PrevKey_7; // @[KeyExpansion.scala 114:15]
  assign io_roundKey_8 = PrevKey_8; // @[KeyExpansion.scala 114:15]
  assign io_roundKey_9 = PrevKey_9; // @[KeyExpansion.scala 114:15]
  assign io_roundKey_10 = PrevKey_10; // @[KeyExpansion.scala 114:15]
  assign io_roundKey_11 = PrevKey_11; // @[KeyExpansion.scala 114:15]
  assign io_roundKey_12 = PrevKey_12; // @[KeyExpansion.scala 114:15]
  assign io_roundKey_13 = PrevKey_13; // @[KeyExpansion.scala 114:15]
  assign io_roundKey_14 = PrevKey_14; // @[KeyExpansion.scala 114:15]
  assign io_roundKey_15 = PrevKey_15; // @[KeyExpansion.scala 114:15]
  assign KSubBytesModule_clock = clock;
  assign KSubBytesModule_io_input_0 = PrevKey_12; // @[KeyExpansion.scala 69:{61,61}]
  assign KSubBytesModule_io_input_1 = PrevKey_13; // @[KeyExpansion.scala 69:{61,61}]
  assign KSubBytesModule_io_input_2 = PrevKey_14; // @[KeyExpansion.scala 69:{61,61}]
  assign KSubBytesModule_io_input_3 = PrevKey_15; // @[KeyExpansion.scala 69:{61,61}]
  always @(posedge clock) begin
    if (reset) begin // @[KeyExpansion.scala 60:24]
      Running <= 1'h0; // @[KeyExpansion.scala 60:24]
    end else if (RoundIter > 4'ha) begin // @[KeyExpansion.scala 90:26]
      Running <= 1'h0; // @[KeyExpansion.scala 91:13]
    end else begin
      Running <= _GEN_0;
    end
    if (reset) begin // @[KeyExpansion.scala 61:24]
      Counter <= 2'h0; // @[KeyExpansion.scala 61:24]
    end else if (Running) begin // @[KeyExpansion.scala 79:17]
      Counter <= _Counter_T_1; // @[KeyExpansion.scala 80:13]
    end else begin
      Counter <= 2'h0; // @[KeyExpansion.scala 82:13]
    end
    if (reset) begin // @[KeyExpansion.scala 62:26]
      RoundIter <= 4'h0; // @[KeyExpansion.scala 62:26]
    end else if (Running & Counter == 2'h0) begin // @[KeyExpansion.scala 86:36]
      RoundIter <= _RoundIter_T_1; // @[KeyExpansion.scala 87:15]
    end else if (!(Running)) begin // @[KeyExpansion.scala 79:17]
      RoundIter <= 4'h0; // @[KeyExpansion.scala 83:15]
    end
    if (_T_1 & RoundIter != 4'h0) begin // @[KeyExpansion.scala 94:46]
      PrevKey_0 <= w4[7:0]; // @[KeyExpansion.scala 103:13]
    end else if (_T) begin // @[KeyExpansion.scala 74:26]
      PrevKey_0 <= io_user_key_bits_0; // @[KeyExpansion.scala 76:13]
    end
    if (_T_1 & RoundIter != 4'h0) begin // @[KeyExpansion.scala 94:46]
      PrevKey_1 <= w4[15:8]; // @[KeyExpansion.scala 103:13]
    end else if (_T) begin // @[KeyExpansion.scala 74:26]
      PrevKey_1 <= io_user_key_bits_1; // @[KeyExpansion.scala 76:13]
    end
    if (_T_1 & RoundIter != 4'h0) begin // @[KeyExpansion.scala 94:46]
      PrevKey_2 <= w4[23:16]; // @[KeyExpansion.scala 103:13]
    end else if (_T) begin // @[KeyExpansion.scala 74:26]
      PrevKey_2 <= io_user_key_bits_2; // @[KeyExpansion.scala 76:13]
    end
    if (_T_1 & RoundIter != 4'h0) begin // @[KeyExpansion.scala 94:46]
      PrevKey_3 <= w4[31:24]; // @[KeyExpansion.scala 103:13]
    end else if (_T) begin // @[KeyExpansion.scala 74:26]
      PrevKey_3 <= io_user_key_bits_3; // @[KeyExpansion.scala 76:13]
    end
    if (_T_1 & RoundIter != 4'h0) begin // @[KeyExpansion.scala 94:46]
      PrevKey_4 <= w5[7:0]; // @[KeyExpansion.scala 103:13]
    end else if (_T) begin // @[KeyExpansion.scala 74:26]
      PrevKey_4 <= io_user_key_bits_4; // @[KeyExpansion.scala 76:13]
    end
    if (_T_1 & RoundIter != 4'h0) begin // @[KeyExpansion.scala 94:46]
      PrevKey_5 <= w5[15:8]; // @[KeyExpansion.scala 103:13]
    end else if (_T) begin // @[KeyExpansion.scala 74:26]
      PrevKey_5 <= io_user_key_bits_5; // @[KeyExpansion.scala 76:13]
    end
    if (_T_1 & RoundIter != 4'h0) begin // @[KeyExpansion.scala 94:46]
      PrevKey_6 <= w5[23:16]; // @[KeyExpansion.scala 103:13]
    end else if (_T) begin // @[KeyExpansion.scala 74:26]
      PrevKey_6 <= io_user_key_bits_6; // @[KeyExpansion.scala 76:13]
    end
    if (_T_1 & RoundIter != 4'h0) begin // @[KeyExpansion.scala 94:46]
      PrevKey_7 <= w5[31:24]; // @[KeyExpansion.scala 103:13]
    end else if (_T) begin // @[KeyExpansion.scala 74:26]
      PrevKey_7 <= io_user_key_bits_7; // @[KeyExpansion.scala 76:13]
    end
    if (_T_1 & RoundIter != 4'h0) begin // @[KeyExpansion.scala 94:46]
      PrevKey_8 <= w6[7:0]; // @[KeyExpansion.scala 103:13]
    end else if (_T) begin // @[KeyExpansion.scala 74:26]
      PrevKey_8 <= io_user_key_bits_8; // @[KeyExpansion.scala 76:13]
    end
    if (_T_1 & RoundIter != 4'h0) begin // @[KeyExpansion.scala 94:46]
      PrevKey_9 <= w6[15:8]; // @[KeyExpansion.scala 103:13]
    end else if (_T) begin // @[KeyExpansion.scala 74:26]
      PrevKey_9 <= io_user_key_bits_9; // @[KeyExpansion.scala 76:13]
    end
    if (_T_1 & RoundIter != 4'h0) begin // @[KeyExpansion.scala 94:46]
      PrevKey_10 <= w6[23:16]; // @[KeyExpansion.scala 103:13]
    end else if (_T) begin // @[KeyExpansion.scala 74:26]
      PrevKey_10 <= io_user_key_bits_10; // @[KeyExpansion.scala 76:13]
    end
    if (_T_1 & RoundIter != 4'h0) begin // @[KeyExpansion.scala 94:46]
      PrevKey_11 <= w6[31:24]; // @[KeyExpansion.scala 103:13]
    end else if (_T) begin // @[KeyExpansion.scala 74:26]
      PrevKey_11 <= io_user_key_bits_11; // @[KeyExpansion.scala 76:13]
    end
    if (_T_1 & RoundIter != 4'h0) begin // @[KeyExpansion.scala 94:46]
      PrevKey_12 <= w7[7:0]; // @[KeyExpansion.scala 103:13]
    end else if (_T) begin // @[KeyExpansion.scala 74:26]
      PrevKey_12 <= io_user_key_bits_12; // @[KeyExpansion.scala 76:13]
    end
    if (_T_1 & RoundIter != 4'h0) begin // @[KeyExpansion.scala 94:46]
      PrevKey_13 <= w7[15:8]; // @[KeyExpansion.scala 103:13]
    end else if (_T) begin // @[KeyExpansion.scala 74:26]
      PrevKey_13 <= io_user_key_bits_13; // @[KeyExpansion.scala 76:13]
    end
    if (_T_1 & RoundIter != 4'h0) begin // @[KeyExpansion.scala 94:46]
      PrevKey_14 <= w7[23:16]; // @[KeyExpansion.scala 103:13]
    end else if (_T) begin // @[KeyExpansion.scala 74:26]
      PrevKey_14 <= io_user_key_bits_14; // @[KeyExpansion.scala 76:13]
    end
    if (_T_1 & RoundIter != 4'h0) begin // @[KeyExpansion.scala 94:46]
      PrevKey_15 <= w7[31:24]; // @[KeyExpansion.scala 103:13]
    end else if (_T) begin // @[KeyExpansion.scala 74:26]
      PrevKey_15 <= io_user_key_bits_15; // @[KeyExpansion.scala 76:13]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  Running = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  Counter = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  RoundIter = _RAND_2[3:0];
  _RAND_3 = {1{`RANDOM}};
  PrevKey_0 = _RAND_3[7:0];
  _RAND_4 = {1{`RANDOM}};
  PrevKey_1 = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  PrevKey_2 = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  PrevKey_3 = _RAND_6[7:0];
  _RAND_7 = {1{`RANDOM}};
  PrevKey_4 = _RAND_7[7:0];
  _RAND_8 = {1{`RANDOM}};
  PrevKey_5 = _RAND_8[7:0];
  _RAND_9 = {1{`RANDOM}};
  PrevKey_6 = _RAND_9[7:0];
  _RAND_10 = {1{`RANDOM}};
  PrevKey_7 = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  PrevKey_8 = _RAND_11[7:0];
  _RAND_12 = {1{`RANDOM}};
  PrevKey_9 = _RAND_12[7:0];
  _RAND_13 = {1{`RANDOM}};
  PrevKey_10 = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  PrevKey_11 = _RAND_14[7:0];
  _RAND_15 = {1{`RANDOM}};
  PrevKey_12 = _RAND_15[7:0];
  _RAND_16 = {1{`RANDOM}};
  PrevKey_13 = _RAND_16[7:0];
  _RAND_17 = {1{`RANDOM}};
  PrevKey_14 = _RAND_17[7:0];
  _RAND_18 = {1{`RANDOM}};
  PrevKey_15 = _RAND_18[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module KeyBank(
  input        clock,
  input  [1:0] io_read_task,
  input  [3:0] io_read_round,
  output [7:0] io_read_key_0,
  output [7:0] io_read_key_1,
  output [7:0] io_read_key_2,
  output [7:0] io_read_key_3,
  output [7:0] io_read_key_4,
  output [7:0] io_read_key_5,
  output [7:0] io_read_key_6,
  output [7:0] io_read_key_7,
  output [7:0] io_read_key_8,
  output [7:0] io_read_key_9,
  output [7:0] io_read_key_10,
  output [7:0] io_read_key_11,
  output [7:0] io_read_key_12,
  output [7:0] io_read_key_13,
  output [7:0] io_read_key_14,
  output [7:0] io_read_key_15,
  input        io_write_en,
  input  [1:0] io_write_task,
  input  [3:0] io_write_round,
  input  [7:0] io_write_key_0,
  input  [7:0] io_write_key_1,
  input  [7:0] io_write_key_2,
  input  [7:0] io_write_key_3,
  input  [7:0] io_write_key_4,
  input  [7:0] io_write_key_5,
  input  [7:0] io_write_key_6,
  input  [7:0] io_write_key_7,
  input  [7:0] io_write_key_8,
  input  [7:0] io_write_key_9,
  input  [7:0] io_write_key_10,
  input  [7:0] io_write_key_11,
  input  [7:0] io_write_key_12,
  input  [7:0] io_write_key_13,
  input  [7:0] io_write_key_14,
  input  [7:0] io_write_key_15
);
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_61;
`endif // RANDOMIZE_GARBAGE_ASSIGN
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_60;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
`endif // RANDOMIZE_REG_INIT
  reg [7:0] mem_0 [0:59]; // @[KeyBank.scala 19:24]
  wire  mem_0_MPORT_en; // @[KeyBank.scala 19:24]
  wire [5:0] mem_0_MPORT_addr; // @[KeyBank.scala 19:24]
  wire [7:0] mem_0_MPORT_data; // @[KeyBank.scala 19:24]
  wire [7:0] mem_0_MPORT_1_data; // @[KeyBank.scala 19:24]
  wire [5:0] mem_0_MPORT_1_addr; // @[KeyBank.scala 19:24]
  wire  mem_0_MPORT_1_mask; // @[KeyBank.scala 19:24]
  wire  mem_0_MPORT_1_en; // @[KeyBank.scala 19:24]
  reg  mem_0_MPORT_en_pipe_0;
  reg [5:0] mem_0_MPORT_addr_pipe_0;
  reg [7:0] mem_1 [0:59]; // @[KeyBank.scala 19:24]
  wire  mem_1_MPORT_en; // @[KeyBank.scala 19:24]
  wire [5:0] mem_1_MPORT_addr; // @[KeyBank.scala 19:24]
  wire [7:0] mem_1_MPORT_data; // @[KeyBank.scala 19:24]
  wire [7:0] mem_1_MPORT_1_data; // @[KeyBank.scala 19:24]
  wire [5:0] mem_1_MPORT_1_addr; // @[KeyBank.scala 19:24]
  wire  mem_1_MPORT_1_mask; // @[KeyBank.scala 19:24]
  wire  mem_1_MPORT_1_en; // @[KeyBank.scala 19:24]
  reg  mem_1_MPORT_en_pipe_0;
  reg [5:0] mem_1_MPORT_addr_pipe_0;
  reg [7:0] mem_2 [0:59]; // @[KeyBank.scala 19:24]
  wire  mem_2_MPORT_en; // @[KeyBank.scala 19:24]
  wire [5:0] mem_2_MPORT_addr; // @[KeyBank.scala 19:24]
  wire [7:0] mem_2_MPORT_data; // @[KeyBank.scala 19:24]
  wire [7:0] mem_2_MPORT_1_data; // @[KeyBank.scala 19:24]
  wire [5:0] mem_2_MPORT_1_addr; // @[KeyBank.scala 19:24]
  wire  mem_2_MPORT_1_mask; // @[KeyBank.scala 19:24]
  wire  mem_2_MPORT_1_en; // @[KeyBank.scala 19:24]
  reg  mem_2_MPORT_en_pipe_0;
  reg [5:0] mem_2_MPORT_addr_pipe_0;
  reg [7:0] mem_3 [0:59]; // @[KeyBank.scala 19:24]
  wire  mem_3_MPORT_en; // @[KeyBank.scala 19:24]
  wire [5:0] mem_3_MPORT_addr; // @[KeyBank.scala 19:24]
  wire [7:0] mem_3_MPORT_data; // @[KeyBank.scala 19:24]
  wire [7:0] mem_3_MPORT_1_data; // @[KeyBank.scala 19:24]
  wire [5:0] mem_3_MPORT_1_addr; // @[KeyBank.scala 19:24]
  wire  mem_3_MPORT_1_mask; // @[KeyBank.scala 19:24]
  wire  mem_3_MPORT_1_en; // @[KeyBank.scala 19:24]
  reg  mem_3_MPORT_en_pipe_0;
  reg [5:0] mem_3_MPORT_addr_pipe_0;
  reg [7:0] mem_4 [0:59]; // @[KeyBank.scala 19:24]
  wire  mem_4_MPORT_en; // @[KeyBank.scala 19:24]
  wire [5:0] mem_4_MPORT_addr; // @[KeyBank.scala 19:24]
  wire [7:0] mem_4_MPORT_data; // @[KeyBank.scala 19:24]
  wire [7:0] mem_4_MPORT_1_data; // @[KeyBank.scala 19:24]
  wire [5:0] mem_4_MPORT_1_addr; // @[KeyBank.scala 19:24]
  wire  mem_4_MPORT_1_mask; // @[KeyBank.scala 19:24]
  wire  mem_4_MPORT_1_en; // @[KeyBank.scala 19:24]
  reg  mem_4_MPORT_en_pipe_0;
  reg [5:0] mem_4_MPORT_addr_pipe_0;
  reg [7:0] mem_5 [0:59]; // @[KeyBank.scala 19:24]
  wire  mem_5_MPORT_en; // @[KeyBank.scala 19:24]
  wire [5:0] mem_5_MPORT_addr; // @[KeyBank.scala 19:24]
  wire [7:0] mem_5_MPORT_data; // @[KeyBank.scala 19:24]
  wire [7:0] mem_5_MPORT_1_data; // @[KeyBank.scala 19:24]
  wire [5:0] mem_5_MPORT_1_addr; // @[KeyBank.scala 19:24]
  wire  mem_5_MPORT_1_mask; // @[KeyBank.scala 19:24]
  wire  mem_5_MPORT_1_en; // @[KeyBank.scala 19:24]
  reg  mem_5_MPORT_en_pipe_0;
  reg [5:0] mem_5_MPORT_addr_pipe_0;
  reg [7:0] mem_6 [0:59]; // @[KeyBank.scala 19:24]
  wire  mem_6_MPORT_en; // @[KeyBank.scala 19:24]
  wire [5:0] mem_6_MPORT_addr; // @[KeyBank.scala 19:24]
  wire [7:0] mem_6_MPORT_data; // @[KeyBank.scala 19:24]
  wire [7:0] mem_6_MPORT_1_data; // @[KeyBank.scala 19:24]
  wire [5:0] mem_6_MPORT_1_addr; // @[KeyBank.scala 19:24]
  wire  mem_6_MPORT_1_mask; // @[KeyBank.scala 19:24]
  wire  mem_6_MPORT_1_en; // @[KeyBank.scala 19:24]
  reg  mem_6_MPORT_en_pipe_0;
  reg [5:0] mem_6_MPORT_addr_pipe_0;
  reg [7:0] mem_7 [0:59]; // @[KeyBank.scala 19:24]
  wire  mem_7_MPORT_en; // @[KeyBank.scala 19:24]
  wire [5:0] mem_7_MPORT_addr; // @[KeyBank.scala 19:24]
  wire [7:0] mem_7_MPORT_data; // @[KeyBank.scala 19:24]
  wire [7:0] mem_7_MPORT_1_data; // @[KeyBank.scala 19:24]
  wire [5:0] mem_7_MPORT_1_addr; // @[KeyBank.scala 19:24]
  wire  mem_7_MPORT_1_mask; // @[KeyBank.scala 19:24]
  wire  mem_7_MPORT_1_en; // @[KeyBank.scala 19:24]
  reg  mem_7_MPORT_en_pipe_0;
  reg [5:0] mem_7_MPORT_addr_pipe_0;
  reg [7:0] mem_8 [0:59]; // @[KeyBank.scala 19:24]
  wire  mem_8_MPORT_en; // @[KeyBank.scala 19:24]
  wire [5:0] mem_8_MPORT_addr; // @[KeyBank.scala 19:24]
  wire [7:0] mem_8_MPORT_data; // @[KeyBank.scala 19:24]
  wire [7:0] mem_8_MPORT_1_data; // @[KeyBank.scala 19:24]
  wire [5:0] mem_8_MPORT_1_addr; // @[KeyBank.scala 19:24]
  wire  mem_8_MPORT_1_mask; // @[KeyBank.scala 19:24]
  wire  mem_8_MPORT_1_en; // @[KeyBank.scala 19:24]
  reg  mem_8_MPORT_en_pipe_0;
  reg [5:0] mem_8_MPORT_addr_pipe_0;
  reg [7:0] mem_9 [0:59]; // @[KeyBank.scala 19:24]
  wire  mem_9_MPORT_en; // @[KeyBank.scala 19:24]
  wire [5:0] mem_9_MPORT_addr; // @[KeyBank.scala 19:24]
  wire [7:0] mem_9_MPORT_data; // @[KeyBank.scala 19:24]
  wire [7:0] mem_9_MPORT_1_data; // @[KeyBank.scala 19:24]
  wire [5:0] mem_9_MPORT_1_addr; // @[KeyBank.scala 19:24]
  wire  mem_9_MPORT_1_mask; // @[KeyBank.scala 19:24]
  wire  mem_9_MPORT_1_en; // @[KeyBank.scala 19:24]
  reg  mem_9_MPORT_en_pipe_0;
  reg [5:0] mem_9_MPORT_addr_pipe_0;
  reg [7:0] mem_10 [0:59]; // @[KeyBank.scala 19:24]
  wire  mem_10_MPORT_en; // @[KeyBank.scala 19:24]
  wire [5:0] mem_10_MPORT_addr; // @[KeyBank.scala 19:24]
  wire [7:0] mem_10_MPORT_data; // @[KeyBank.scala 19:24]
  wire [7:0] mem_10_MPORT_1_data; // @[KeyBank.scala 19:24]
  wire [5:0] mem_10_MPORT_1_addr; // @[KeyBank.scala 19:24]
  wire  mem_10_MPORT_1_mask; // @[KeyBank.scala 19:24]
  wire  mem_10_MPORT_1_en; // @[KeyBank.scala 19:24]
  reg  mem_10_MPORT_en_pipe_0;
  reg [5:0] mem_10_MPORT_addr_pipe_0;
  reg [7:0] mem_11 [0:59]; // @[KeyBank.scala 19:24]
  wire  mem_11_MPORT_en; // @[KeyBank.scala 19:24]
  wire [5:0] mem_11_MPORT_addr; // @[KeyBank.scala 19:24]
  wire [7:0] mem_11_MPORT_data; // @[KeyBank.scala 19:24]
  wire [7:0] mem_11_MPORT_1_data; // @[KeyBank.scala 19:24]
  wire [5:0] mem_11_MPORT_1_addr; // @[KeyBank.scala 19:24]
  wire  mem_11_MPORT_1_mask; // @[KeyBank.scala 19:24]
  wire  mem_11_MPORT_1_en; // @[KeyBank.scala 19:24]
  reg  mem_11_MPORT_en_pipe_0;
  reg [5:0] mem_11_MPORT_addr_pipe_0;
  reg [7:0] mem_12 [0:59]; // @[KeyBank.scala 19:24]
  wire  mem_12_MPORT_en; // @[KeyBank.scala 19:24]
  wire [5:0] mem_12_MPORT_addr; // @[KeyBank.scala 19:24]
  wire [7:0] mem_12_MPORT_data; // @[KeyBank.scala 19:24]
  wire [7:0] mem_12_MPORT_1_data; // @[KeyBank.scala 19:24]
  wire [5:0] mem_12_MPORT_1_addr; // @[KeyBank.scala 19:24]
  wire  mem_12_MPORT_1_mask; // @[KeyBank.scala 19:24]
  wire  mem_12_MPORT_1_en; // @[KeyBank.scala 19:24]
  reg  mem_12_MPORT_en_pipe_0;
  reg [5:0] mem_12_MPORT_addr_pipe_0;
  reg [7:0] mem_13 [0:59]; // @[KeyBank.scala 19:24]
  wire  mem_13_MPORT_en; // @[KeyBank.scala 19:24]
  wire [5:0] mem_13_MPORT_addr; // @[KeyBank.scala 19:24]
  wire [7:0] mem_13_MPORT_data; // @[KeyBank.scala 19:24]
  wire [7:0] mem_13_MPORT_1_data; // @[KeyBank.scala 19:24]
  wire [5:0] mem_13_MPORT_1_addr; // @[KeyBank.scala 19:24]
  wire  mem_13_MPORT_1_mask; // @[KeyBank.scala 19:24]
  wire  mem_13_MPORT_1_en; // @[KeyBank.scala 19:24]
  reg  mem_13_MPORT_en_pipe_0;
  reg [5:0] mem_13_MPORT_addr_pipe_0;
  reg [7:0] mem_14 [0:59]; // @[KeyBank.scala 19:24]
  wire  mem_14_MPORT_en; // @[KeyBank.scala 19:24]
  wire [5:0] mem_14_MPORT_addr; // @[KeyBank.scala 19:24]
  wire [7:0] mem_14_MPORT_data; // @[KeyBank.scala 19:24]
  wire [7:0] mem_14_MPORT_1_data; // @[KeyBank.scala 19:24]
  wire [5:0] mem_14_MPORT_1_addr; // @[KeyBank.scala 19:24]
  wire  mem_14_MPORT_1_mask; // @[KeyBank.scala 19:24]
  wire  mem_14_MPORT_1_en; // @[KeyBank.scala 19:24]
  reg  mem_14_MPORT_en_pipe_0;
  reg [5:0] mem_14_MPORT_addr_pipe_0;
  reg [7:0] mem_15 [0:59]; // @[KeyBank.scala 19:24]
  wire  mem_15_MPORT_en; // @[KeyBank.scala 19:24]
  wire [5:0] mem_15_MPORT_addr; // @[KeyBank.scala 19:24]
  wire [7:0] mem_15_MPORT_data; // @[KeyBank.scala 19:24]
  wire [7:0] mem_15_MPORT_1_data; // @[KeyBank.scala 19:24]
  wire [5:0] mem_15_MPORT_1_addr; // @[KeyBank.scala 19:24]
  wire  mem_15_MPORT_1_mask; // @[KeyBank.scala 19:24]
  wire  mem_15_MPORT_1_en; // @[KeyBank.scala 19:24]
  reg  mem_15_MPORT_en_pipe_0;
  reg [5:0] mem_15_MPORT_addr_pipe_0;
  wire [5:0] _T = io_read_task * 4'hf; // @[KeyBank.scala 21:40]
  wire [5:0] _GEN_24 = {{2'd0}, io_read_round}; // @[KeyBank.scala 21:47]
  wire [5:0] _T_5 = io_write_task * 4'hf; // @[KeyBank.scala 24:29]
  wire [5:0] _GEN_25 = {{2'd0}, io_write_round}; // @[KeyBank.scala 24:36]
  assign mem_0_MPORT_en = mem_0_MPORT_en_pipe_0;
  assign mem_0_MPORT_addr = mem_0_MPORT_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign mem_0_MPORT_data = mem_0[mem_0_MPORT_addr]; // @[KeyBank.scala 19:24]
  `else
  assign mem_0_MPORT_data = mem_0_MPORT_addr >= 6'h3c ? _RAND_1[7:0] : mem_0[mem_0_MPORT_addr]; // @[KeyBank.scala 19:24]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign mem_0_MPORT_1_data = io_write_key_0;
  assign mem_0_MPORT_1_addr = _T_5 + _GEN_25;
  assign mem_0_MPORT_1_mask = 1'h1;
  assign mem_0_MPORT_1_en = io_write_en;
  assign mem_1_MPORT_en = mem_1_MPORT_en_pipe_0;
  assign mem_1_MPORT_addr = mem_1_MPORT_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign mem_1_MPORT_data = mem_1[mem_1_MPORT_addr]; // @[KeyBank.scala 19:24]
  `else
  assign mem_1_MPORT_data = mem_1_MPORT_addr >= 6'h3c ? _RAND_5[7:0] : mem_1[mem_1_MPORT_addr]; // @[KeyBank.scala 19:24]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign mem_1_MPORT_1_data = io_write_key_1;
  assign mem_1_MPORT_1_addr = _T_5 + _GEN_25;
  assign mem_1_MPORT_1_mask = 1'h1;
  assign mem_1_MPORT_1_en = io_write_en;
  assign mem_2_MPORT_en = mem_2_MPORT_en_pipe_0;
  assign mem_2_MPORT_addr = mem_2_MPORT_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign mem_2_MPORT_data = mem_2[mem_2_MPORT_addr]; // @[KeyBank.scala 19:24]
  `else
  assign mem_2_MPORT_data = mem_2_MPORT_addr >= 6'h3c ? _RAND_9[7:0] : mem_2[mem_2_MPORT_addr]; // @[KeyBank.scala 19:24]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign mem_2_MPORT_1_data = io_write_key_2;
  assign mem_2_MPORT_1_addr = _T_5 + _GEN_25;
  assign mem_2_MPORT_1_mask = 1'h1;
  assign mem_2_MPORT_1_en = io_write_en;
  assign mem_3_MPORT_en = mem_3_MPORT_en_pipe_0;
  assign mem_3_MPORT_addr = mem_3_MPORT_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign mem_3_MPORT_data = mem_3[mem_3_MPORT_addr]; // @[KeyBank.scala 19:24]
  `else
  assign mem_3_MPORT_data = mem_3_MPORT_addr >= 6'h3c ? _RAND_13[7:0] : mem_3[mem_3_MPORT_addr]; // @[KeyBank.scala 19:24]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign mem_3_MPORT_1_data = io_write_key_3;
  assign mem_3_MPORT_1_addr = _T_5 + _GEN_25;
  assign mem_3_MPORT_1_mask = 1'h1;
  assign mem_3_MPORT_1_en = io_write_en;
  assign mem_4_MPORT_en = mem_4_MPORT_en_pipe_0;
  assign mem_4_MPORT_addr = mem_4_MPORT_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign mem_4_MPORT_data = mem_4[mem_4_MPORT_addr]; // @[KeyBank.scala 19:24]
  `else
  assign mem_4_MPORT_data = mem_4_MPORT_addr >= 6'h3c ? _RAND_17[7:0] : mem_4[mem_4_MPORT_addr]; // @[KeyBank.scala 19:24]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign mem_4_MPORT_1_data = io_write_key_4;
  assign mem_4_MPORT_1_addr = _T_5 + _GEN_25;
  assign mem_4_MPORT_1_mask = 1'h1;
  assign mem_4_MPORT_1_en = io_write_en;
  assign mem_5_MPORT_en = mem_5_MPORT_en_pipe_0;
  assign mem_5_MPORT_addr = mem_5_MPORT_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign mem_5_MPORT_data = mem_5[mem_5_MPORT_addr]; // @[KeyBank.scala 19:24]
  `else
  assign mem_5_MPORT_data = mem_5_MPORT_addr >= 6'h3c ? _RAND_21[7:0] : mem_5[mem_5_MPORT_addr]; // @[KeyBank.scala 19:24]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign mem_5_MPORT_1_data = io_write_key_5;
  assign mem_5_MPORT_1_addr = _T_5 + _GEN_25;
  assign mem_5_MPORT_1_mask = 1'h1;
  assign mem_5_MPORT_1_en = io_write_en;
  assign mem_6_MPORT_en = mem_6_MPORT_en_pipe_0;
  assign mem_6_MPORT_addr = mem_6_MPORT_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign mem_6_MPORT_data = mem_6[mem_6_MPORT_addr]; // @[KeyBank.scala 19:24]
  `else
  assign mem_6_MPORT_data = mem_6_MPORT_addr >= 6'h3c ? _RAND_25[7:0] : mem_6[mem_6_MPORT_addr]; // @[KeyBank.scala 19:24]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign mem_6_MPORT_1_data = io_write_key_6;
  assign mem_6_MPORT_1_addr = _T_5 + _GEN_25;
  assign mem_6_MPORT_1_mask = 1'h1;
  assign mem_6_MPORT_1_en = io_write_en;
  assign mem_7_MPORT_en = mem_7_MPORT_en_pipe_0;
  assign mem_7_MPORT_addr = mem_7_MPORT_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign mem_7_MPORT_data = mem_7[mem_7_MPORT_addr]; // @[KeyBank.scala 19:24]
  `else
  assign mem_7_MPORT_data = mem_7_MPORT_addr >= 6'h3c ? _RAND_29[7:0] : mem_7[mem_7_MPORT_addr]; // @[KeyBank.scala 19:24]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign mem_7_MPORT_1_data = io_write_key_7;
  assign mem_7_MPORT_1_addr = _T_5 + _GEN_25;
  assign mem_7_MPORT_1_mask = 1'h1;
  assign mem_7_MPORT_1_en = io_write_en;
  assign mem_8_MPORT_en = mem_8_MPORT_en_pipe_0;
  assign mem_8_MPORT_addr = mem_8_MPORT_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign mem_8_MPORT_data = mem_8[mem_8_MPORT_addr]; // @[KeyBank.scala 19:24]
  `else
  assign mem_8_MPORT_data = mem_8_MPORT_addr >= 6'h3c ? _RAND_33[7:0] : mem_8[mem_8_MPORT_addr]; // @[KeyBank.scala 19:24]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign mem_8_MPORT_1_data = io_write_key_8;
  assign mem_8_MPORT_1_addr = _T_5 + _GEN_25;
  assign mem_8_MPORT_1_mask = 1'h1;
  assign mem_8_MPORT_1_en = io_write_en;
  assign mem_9_MPORT_en = mem_9_MPORT_en_pipe_0;
  assign mem_9_MPORT_addr = mem_9_MPORT_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign mem_9_MPORT_data = mem_9[mem_9_MPORT_addr]; // @[KeyBank.scala 19:24]
  `else
  assign mem_9_MPORT_data = mem_9_MPORT_addr >= 6'h3c ? _RAND_37[7:0] : mem_9[mem_9_MPORT_addr]; // @[KeyBank.scala 19:24]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign mem_9_MPORT_1_data = io_write_key_9;
  assign mem_9_MPORT_1_addr = _T_5 + _GEN_25;
  assign mem_9_MPORT_1_mask = 1'h1;
  assign mem_9_MPORT_1_en = io_write_en;
  assign mem_10_MPORT_en = mem_10_MPORT_en_pipe_0;
  assign mem_10_MPORT_addr = mem_10_MPORT_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign mem_10_MPORT_data = mem_10[mem_10_MPORT_addr]; // @[KeyBank.scala 19:24]
  `else
  assign mem_10_MPORT_data = mem_10_MPORT_addr >= 6'h3c ? _RAND_41[7:0] : mem_10[mem_10_MPORT_addr]; // @[KeyBank.scala 19:24]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign mem_10_MPORT_1_data = io_write_key_10;
  assign mem_10_MPORT_1_addr = _T_5 + _GEN_25;
  assign mem_10_MPORT_1_mask = 1'h1;
  assign mem_10_MPORT_1_en = io_write_en;
  assign mem_11_MPORT_en = mem_11_MPORT_en_pipe_0;
  assign mem_11_MPORT_addr = mem_11_MPORT_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign mem_11_MPORT_data = mem_11[mem_11_MPORT_addr]; // @[KeyBank.scala 19:24]
  `else
  assign mem_11_MPORT_data = mem_11_MPORT_addr >= 6'h3c ? _RAND_45[7:0] : mem_11[mem_11_MPORT_addr]; // @[KeyBank.scala 19:24]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign mem_11_MPORT_1_data = io_write_key_11;
  assign mem_11_MPORT_1_addr = _T_5 + _GEN_25;
  assign mem_11_MPORT_1_mask = 1'h1;
  assign mem_11_MPORT_1_en = io_write_en;
  assign mem_12_MPORT_en = mem_12_MPORT_en_pipe_0;
  assign mem_12_MPORT_addr = mem_12_MPORT_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign mem_12_MPORT_data = mem_12[mem_12_MPORT_addr]; // @[KeyBank.scala 19:24]
  `else
  assign mem_12_MPORT_data = mem_12_MPORT_addr >= 6'h3c ? _RAND_49[7:0] : mem_12[mem_12_MPORT_addr]; // @[KeyBank.scala 19:24]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign mem_12_MPORT_1_data = io_write_key_12;
  assign mem_12_MPORT_1_addr = _T_5 + _GEN_25;
  assign mem_12_MPORT_1_mask = 1'h1;
  assign mem_12_MPORT_1_en = io_write_en;
  assign mem_13_MPORT_en = mem_13_MPORT_en_pipe_0;
  assign mem_13_MPORT_addr = mem_13_MPORT_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign mem_13_MPORT_data = mem_13[mem_13_MPORT_addr]; // @[KeyBank.scala 19:24]
  `else
  assign mem_13_MPORT_data = mem_13_MPORT_addr >= 6'h3c ? _RAND_53[7:0] : mem_13[mem_13_MPORT_addr]; // @[KeyBank.scala 19:24]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign mem_13_MPORT_1_data = io_write_key_13;
  assign mem_13_MPORT_1_addr = _T_5 + _GEN_25;
  assign mem_13_MPORT_1_mask = 1'h1;
  assign mem_13_MPORT_1_en = io_write_en;
  assign mem_14_MPORT_en = mem_14_MPORT_en_pipe_0;
  assign mem_14_MPORT_addr = mem_14_MPORT_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign mem_14_MPORT_data = mem_14[mem_14_MPORT_addr]; // @[KeyBank.scala 19:24]
  `else
  assign mem_14_MPORT_data = mem_14_MPORT_addr >= 6'h3c ? _RAND_57[7:0] : mem_14[mem_14_MPORT_addr]; // @[KeyBank.scala 19:24]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign mem_14_MPORT_1_data = io_write_key_14;
  assign mem_14_MPORT_1_addr = _T_5 + _GEN_25;
  assign mem_14_MPORT_1_mask = 1'h1;
  assign mem_14_MPORT_1_en = io_write_en;
  assign mem_15_MPORT_en = mem_15_MPORT_en_pipe_0;
  assign mem_15_MPORT_addr = mem_15_MPORT_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign mem_15_MPORT_data = mem_15[mem_15_MPORT_addr]; // @[KeyBank.scala 19:24]
  `else
  assign mem_15_MPORT_data = mem_15_MPORT_addr >= 6'h3c ? _RAND_61[7:0] : mem_15[mem_15_MPORT_addr]; // @[KeyBank.scala 19:24]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign mem_15_MPORT_1_data = io_write_key_15;
  assign mem_15_MPORT_1_addr = _T_5 + _GEN_25;
  assign mem_15_MPORT_1_mask = 1'h1;
  assign mem_15_MPORT_1_en = io_write_en;
  assign io_read_key_0 = mem_0_MPORT_data; // @[KeyBank.scala 21:15]
  assign io_read_key_1 = mem_1_MPORT_data; // @[KeyBank.scala 21:15]
  assign io_read_key_2 = mem_2_MPORT_data; // @[KeyBank.scala 21:15]
  assign io_read_key_3 = mem_3_MPORT_data; // @[KeyBank.scala 21:15]
  assign io_read_key_4 = mem_4_MPORT_data; // @[KeyBank.scala 21:15]
  assign io_read_key_5 = mem_5_MPORT_data; // @[KeyBank.scala 21:15]
  assign io_read_key_6 = mem_6_MPORT_data; // @[KeyBank.scala 21:15]
  assign io_read_key_7 = mem_7_MPORT_data; // @[KeyBank.scala 21:15]
  assign io_read_key_8 = mem_8_MPORT_data; // @[KeyBank.scala 21:15]
  assign io_read_key_9 = mem_9_MPORT_data; // @[KeyBank.scala 21:15]
  assign io_read_key_10 = mem_10_MPORT_data; // @[KeyBank.scala 21:15]
  assign io_read_key_11 = mem_11_MPORT_data; // @[KeyBank.scala 21:15]
  assign io_read_key_12 = mem_12_MPORT_data; // @[KeyBank.scala 21:15]
  assign io_read_key_13 = mem_13_MPORT_data; // @[KeyBank.scala 21:15]
  assign io_read_key_14 = mem_14_MPORT_data; // @[KeyBank.scala 21:15]
  assign io_read_key_15 = mem_15_MPORT_data; // @[KeyBank.scala 21:15]
  always @(posedge clock) begin
    if (mem_0_MPORT_1_en & mem_0_MPORT_1_mask) begin
      mem_0[mem_0_MPORT_1_addr] <= mem_0_MPORT_1_data; // @[KeyBank.scala 19:24]
    end
    mem_0_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_0_MPORT_addr_pipe_0 <= _T + _GEN_24;
    end
    if (mem_1_MPORT_1_en & mem_1_MPORT_1_mask) begin
      mem_1[mem_1_MPORT_1_addr] <= mem_1_MPORT_1_data; // @[KeyBank.scala 19:24]
    end
    mem_1_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_1_MPORT_addr_pipe_0 <= _T + _GEN_24;
    end
    if (mem_2_MPORT_1_en & mem_2_MPORT_1_mask) begin
      mem_2[mem_2_MPORT_1_addr] <= mem_2_MPORT_1_data; // @[KeyBank.scala 19:24]
    end
    mem_2_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_2_MPORT_addr_pipe_0 <= _T + _GEN_24;
    end
    if (mem_3_MPORT_1_en & mem_3_MPORT_1_mask) begin
      mem_3[mem_3_MPORT_1_addr] <= mem_3_MPORT_1_data; // @[KeyBank.scala 19:24]
    end
    mem_3_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_3_MPORT_addr_pipe_0 <= _T + _GEN_24;
    end
    if (mem_4_MPORT_1_en & mem_4_MPORT_1_mask) begin
      mem_4[mem_4_MPORT_1_addr] <= mem_4_MPORT_1_data; // @[KeyBank.scala 19:24]
    end
    mem_4_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_4_MPORT_addr_pipe_0 <= _T + _GEN_24;
    end
    if (mem_5_MPORT_1_en & mem_5_MPORT_1_mask) begin
      mem_5[mem_5_MPORT_1_addr] <= mem_5_MPORT_1_data; // @[KeyBank.scala 19:24]
    end
    mem_5_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_5_MPORT_addr_pipe_0 <= _T + _GEN_24;
    end
    if (mem_6_MPORT_1_en & mem_6_MPORT_1_mask) begin
      mem_6[mem_6_MPORT_1_addr] <= mem_6_MPORT_1_data; // @[KeyBank.scala 19:24]
    end
    mem_6_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_6_MPORT_addr_pipe_0 <= _T + _GEN_24;
    end
    if (mem_7_MPORT_1_en & mem_7_MPORT_1_mask) begin
      mem_7[mem_7_MPORT_1_addr] <= mem_7_MPORT_1_data; // @[KeyBank.scala 19:24]
    end
    mem_7_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_7_MPORT_addr_pipe_0 <= _T + _GEN_24;
    end
    if (mem_8_MPORT_1_en & mem_8_MPORT_1_mask) begin
      mem_8[mem_8_MPORT_1_addr] <= mem_8_MPORT_1_data; // @[KeyBank.scala 19:24]
    end
    mem_8_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_8_MPORT_addr_pipe_0 <= _T + _GEN_24;
    end
    if (mem_9_MPORT_1_en & mem_9_MPORT_1_mask) begin
      mem_9[mem_9_MPORT_1_addr] <= mem_9_MPORT_1_data; // @[KeyBank.scala 19:24]
    end
    mem_9_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_9_MPORT_addr_pipe_0 <= _T + _GEN_24;
    end
    if (mem_10_MPORT_1_en & mem_10_MPORT_1_mask) begin
      mem_10[mem_10_MPORT_1_addr] <= mem_10_MPORT_1_data; // @[KeyBank.scala 19:24]
    end
    mem_10_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_10_MPORT_addr_pipe_0 <= _T + _GEN_24;
    end
    if (mem_11_MPORT_1_en & mem_11_MPORT_1_mask) begin
      mem_11[mem_11_MPORT_1_addr] <= mem_11_MPORT_1_data; // @[KeyBank.scala 19:24]
    end
    mem_11_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_11_MPORT_addr_pipe_0 <= _T + _GEN_24;
    end
    if (mem_12_MPORT_1_en & mem_12_MPORT_1_mask) begin
      mem_12[mem_12_MPORT_1_addr] <= mem_12_MPORT_1_data; // @[KeyBank.scala 19:24]
    end
    mem_12_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_12_MPORT_addr_pipe_0 <= _T + _GEN_24;
    end
    if (mem_13_MPORT_1_en & mem_13_MPORT_1_mask) begin
      mem_13[mem_13_MPORT_1_addr] <= mem_13_MPORT_1_data; // @[KeyBank.scala 19:24]
    end
    mem_13_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_13_MPORT_addr_pipe_0 <= _T + _GEN_24;
    end
    if (mem_14_MPORT_1_en & mem_14_MPORT_1_mask) begin
      mem_14[mem_14_MPORT_1_addr] <= mem_14_MPORT_1_data; // @[KeyBank.scala 19:24]
    end
    mem_14_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_14_MPORT_addr_pipe_0 <= _T + _GEN_24;
    end
    if (mem_15_MPORT_1_en & mem_15_MPORT_1_mask) begin
      mem_15[mem_15_MPORT_1_addr] <= mem_15_MPORT_1_data; // @[KeyBank.scala 19:24]
    end
    mem_15_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_15_MPORT_addr_pipe_0 <= _T + _GEN_24;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  _RAND_1 = {1{`RANDOM}};
  _RAND_5 = {1{`RANDOM}};
  _RAND_9 = {1{`RANDOM}};
  _RAND_13 = {1{`RANDOM}};
  _RAND_17 = {1{`RANDOM}};
  _RAND_21 = {1{`RANDOM}};
  _RAND_25 = {1{`RANDOM}};
  _RAND_29 = {1{`RANDOM}};
  _RAND_33 = {1{`RANDOM}};
  _RAND_37 = {1{`RANDOM}};
  _RAND_41 = {1{`RANDOM}};
  _RAND_45 = {1{`RANDOM}};
  _RAND_49 = {1{`RANDOM}};
  _RAND_53 = {1{`RANDOM}};
  _RAND_57 = {1{`RANDOM}};
  _RAND_61 = {1{`RANDOM}};
`endif // RANDOMIZE_GARBAGE_ASSIGN
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 60; initvar = initvar+1)
    mem_0[initvar] = _RAND_0[7:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 60; initvar = initvar+1)
    mem_1[initvar] = _RAND_4[7:0];
  _RAND_8 = {1{`RANDOM}};
  for (initvar = 0; initvar < 60; initvar = initvar+1)
    mem_2[initvar] = _RAND_8[7:0];
  _RAND_12 = {1{`RANDOM}};
  for (initvar = 0; initvar < 60; initvar = initvar+1)
    mem_3[initvar] = _RAND_12[7:0];
  _RAND_16 = {1{`RANDOM}};
  for (initvar = 0; initvar < 60; initvar = initvar+1)
    mem_4[initvar] = _RAND_16[7:0];
  _RAND_20 = {1{`RANDOM}};
  for (initvar = 0; initvar < 60; initvar = initvar+1)
    mem_5[initvar] = _RAND_20[7:0];
  _RAND_24 = {1{`RANDOM}};
  for (initvar = 0; initvar < 60; initvar = initvar+1)
    mem_6[initvar] = _RAND_24[7:0];
  _RAND_28 = {1{`RANDOM}};
  for (initvar = 0; initvar < 60; initvar = initvar+1)
    mem_7[initvar] = _RAND_28[7:0];
  _RAND_32 = {1{`RANDOM}};
  for (initvar = 0; initvar < 60; initvar = initvar+1)
    mem_8[initvar] = _RAND_32[7:0];
  _RAND_36 = {1{`RANDOM}};
  for (initvar = 0; initvar < 60; initvar = initvar+1)
    mem_9[initvar] = _RAND_36[7:0];
  _RAND_40 = {1{`RANDOM}};
  for (initvar = 0; initvar < 60; initvar = initvar+1)
    mem_10[initvar] = _RAND_40[7:0];
  _RAND_44 = {1{`RANDOM}};
  for (initvar = 0; initvar < 60; initvar = initvar+1)
    mem_11[initvar] = _RAND_44[7:0];
  _RAND_48 = {1{`RANDOM}};
  for (initvar = 0; initvar < 60; initvar = initvar+1)
    mem_12[initvar] = _RAND_48[7:0];
  _RAND_52 = {1{`RANDOM}};
  for (initvar = 0; initvar < 60; initvar = initvar+1)
    mem_13[initvar] = _RAND_52[7:0];
  _RAND_56 = {1{`RANDOM}};
  for (initvar = 0; initvar < 60; initvar = initvar+1)
    mem_14[initvar] = _RAND_56[7:0];
  _RAND_60 = {1{`RANDOM}};
  for (initvar = 0; initvar < 60; initvar = initvar+1)
    mem_15[initvar] = _RAND_60[7:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  mem_0_MPORT_en_pipe_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  mem_0_MPORT_addr_pipe_0 = _RAND_3[5:0];
  _RAND_6 = {1{`RANDOM}};
  mem_1_MPORT_en_pipe_0 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  mem_1_MPORT_addr_pipe_0 = _RAND_7[5:0];
  _RAND_10 = {1{`RANDOM}};
  mem_2_MPORT_en_pipe_0 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  mem_2_MPORT_addr_pipe_0 = _RAND_11[5:0];
  _RAND_14 = {1{`RANDOM}};
  mem_3_MPORT_en_pipe_0 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  mem_3_MPORT_addr_pipe_0 = _RAND_15[5:0];
  _RAND_18 = {1{`RANDOM}};
  mem_4_MPORT_en_pipe_0 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  mem_4_MPORT_addr_pipe_0 = _RAND_19[5:0];
  _RAND_22 = {1{`RANDOM}};
  mem_5_MPORT_en_pipe_0 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  mem_5_MPORT_addr_pipe_0 = _RAND_23[5:0];
  _RAND_26 = {1{`RANDOM}};
  mem_6_MPORT_en_pipe_0 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  mem_6_MPORT_addr_pipe_0 = _RAND_27[5:0];
  _RAND_30 = {1{`RANDOM}};
  mem_7_MPORT_en_pipe_0 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  mem_7_MPORT_addr_pipe_0 = _RAND_31[5:0];
  _RAND_34 = {1{`RANDOM}};
  mem_8_MPORT_en_pipe_0 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  mem_8_MPORT_addr_pipe_0 = _RAND_35[5:0];
  _RAND_38 = {1{`RANDOM}};
  mem_9_MPORT_en_pipe_0 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  mem_9_MPORT_addr_pipe_0 = _RAND_39[5:0];
  _RAND_42 = {1{`RANDOM}};
  mem_10_MPORT_en_pipe_0 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  mem_10_MPORT_addr_pipe_0 = _RAND_43[5:0];
  _RAND_46 = {1{`RANDOM}};
  mem_11_MPORT_en_pipe_0 = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  mem_11_MPORT_addr_pipe_0 = _RAND_47[5:0];
  _RAND_50 = {1{`RANDOM}};
  mem_12_MPORT_en_pipe_0 = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  mem_12_MPORT_addr_pipe_0 = _RAND_51[5:0];
  _RAND_54 = {1{`RANDOM}};
  mem_13_MPORT_en_pipe_0 = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  mem_13_MPORT_addr_pipe_0 = _RAND_55[5:0];
  _RAND_58 = {1{`RANDOM}};
  mem_14_MPORT_en_pipe_0 = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  mem_14_MPORT_addr_pipe_0 = _RAND_59[5:0];
  _RAND_62 = {1{`RANDOM}};
  mem_15_MPORT_en_pipe_0 = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  mem_15_MPORT_addr_pipe_0 = _RAND_63[5:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module AddRoundKey(
  input  [7:0] io_para_in_state_0,
  input  [7:0] io_para_in_state_1,
  input  [7:0] io_para_in_state_2,
  input  [7:0] io_para_in_state_3,
  input  [7:0] io_para_in_state_4,
  input  [7:0] io_para_in_state_5,
  input  [7:0] io_para_in_state_6,
  input  [7:0] io_para_in_state_7,
  input  [7:0] io_para_in_state_8,
  input  [7:0] io_para_in_state_9,
  input  [7:0] io_para_in_state_10,
  input  [7:0] io_para_in_state_11,
  input  [7:0] io_para_in_state_12,
  input  [7:0] io_para_in_state_13,
  input  [7:0] io_para_in_state_14,
  input  [7:0] io_para_in_state_15,
  input        io_para_in_control_isIdle,
  input  [1:0] io_para_in_control_keylength,
  input  [1:0] io_para_in_control_taskID,
  input  [3:0] io_para_in_control_rounds,
  output [7:0] io_para_out_state_0,
  output [7:0] io_para_out_state_1,
  output [7:0] io_para_out_state_2,
  output [7:0] io_para_out_state_3,
  output [7:0] io_para_out_state_4,
  output [7:0] io_para_out_state_5,
  output [7:0] io_para_out_state_6,
  output [7:0] io_para_out_state_7,
  output [7:0] io_para_out_state_8,
  output [7:0] io_para_out_state_9,
  output [7:0] io_para_out_state_10,
  output [7:0] io_para_out_state_11,
  output [7:0] io_para_out_state_12,
  output [7:0] io_para_out_state_13,
  output [7:0] io_para_out_state_14,
  output [7:0] io_para_out_state_15,
  output       io_para_out_control_isIdle,
  output [1:0] io_para_out_control_keylength,
  output [1:0] io_para_out_control_taskID,
  output [3:0] io_para_out_control_rounds,
  input  [7:0] io_roundKey_0,
  input  [7:0] io_roundKey_1,
  input  [7:0] io_roundKey_2,
  input  [7:0] io_roundKey_3,
  input  [7:0] io_roundKey_4,
  input  [7:0] io_roundKey_5,
  input  [7:0] io_roundKey_6,
  input  [7:0] io_roundKey_7,
  input  [7:0] io_roundKey_8,
  input  [7:0] io_roundKey_9,
  input  [7:0] io_roundKey_10,
  input  [7:0] io_roundKey_11,
  input  [7:0] io_roundKey_12,
  input  [7:0] io_roundKey_13,
  input  [7:0] io_roundKey_14,
  input  [7:0] io_roundKey_15
);
  assign io_para_out_state_0 = io_para_in_state_0 ^ io_roundKey_0; // @[AddRoundKey.scala 14:49]
  assign io_para_out_state_1 = io_para_in_state_1 ^ io_roundKey_1; // @[AddRoundKey.scala 14:49]
  assign io_para_out_state_2 = io_para_in_state_2 ^ io_roundKey_2; // @[AddRoundKey.scala 14:49]
  assign io_para_out_state_3 = io_para_in_state_3 ^ io_roundKey_3; // @[AddRoundKey.scala 14:49]
  assign io_para_out_state_4 = io_para_in_state_4 ^ io_roundKey_4; // @[AddRoundKey.scala 14:49]
  assign io_para_out_state_5 = io_para_in_state_5 ^ io_roundKey_5; // @[AddRoundKey.scala 14:49]
  assign io_para_out_state_6 = io_para_in_state_6 ^ io_roundKey_6; // @[AddRoundKey.scala 14:49]
  assign io_para_out_state_7 = io_para_in_state_7 ^ io_roundKey_7; // @[AddRoundKey.scala 14:49]
  assign io_para_out_state_8 = io_para_in_state_8 ^ io_roundKey_8; // @[AddRoundKey.scala 14:49]
  assign io_para_out_state_9 = io_para_in_state_9 ^ io_roundKey_9; // @[AddRoundKey.scala 14:49]
  assign io_para_out_state_10 = io_para_in_state_10 ^ io_roundKey_10; // @[AddRoundKey.scala 14:49]
  assign io_para_out_state_11 = io_para_in_state_11 ^ io_roundKey_11; // @[AddRoundKey.scala 14:49]
  assign io_para_out_state_12 = io_para_in_state_12 ^ io_roundKey_12; // @[AddRoundKey.scala 14:49]
  assign io_para_out_state_13 = io_para_in_state_13 ^ io_roundKey_13; // @[AddRoundKey.scala 14:49]
  assign io_para_out_state_14 = io_para_in_state_14 ^ io_roundKey_14; // @[AddRoundKey.scala 14:49]
  assign io_para_out_state_15 = io_para_in_state_15 ^ io_roundKey_15; // @[AddRoundKey.scala 14:49]
  assign io_para_out_control_isIdle = io_para_in_control_isIdle; // @[AddRoundKey.scala 16:23]
  assign io_para_out_control_keylength = io_para_in_control_keylength; // @[AddRoundKey.scala 16:23]
  assign io_para_out_control_taskID = io_para_in_control_taskID; // @[AddRoundKey.scala 16:23]
  assign io_para_out_control_rounds = io_para_in_control_rounds; // @[AddRoundKey.scala 16:23]
endmodule
module SubBytes(
  input        clock,
  input        reset,
  input  [7:0] io_para_in_state_0,
  input  [7:0] io_para_in_state_1,
  input  [7:0] io_para_in_state_2,
  input  [7:0] io_para_in_state_3,
  input  [7:0] io_para_in_state_4,
  input  [7:0] io_para_in_state_5,
  input  [7:0] io_para_in_state_6,
  input  [7:0] io_para_in_state_7,
  input  [7:0] io_para_in_state_8,
  input  [7:0] io_para_in_state_9,
  input  [7:0] io_para_in_state_10,
  input  [7:0] io_para_in_state_11,
  input  [7:0] io_para_in_state_12,
  input  [7:0] io_para_in_state_13,
  input  [7:0] io_para_in_state_14,
  input  [7:0] io_para_in_state_15,
  input        io_para_in_control_isIdle,
  input  [1:0] io_para_in_control_keylength,
  input  [1:0] io_para_in_control_taskID,
  input  [3:0] io_para_in_control_rounds,
  output [7:0] io_para_out_state_0,
  output [7:0] io_para_out_state_1,
  output [7:0] io_para_out_state_2,
  output [7:0] io_para_out_state_3,
  output [7:0] io_para_out_state_4,
  output [7:0] io_para_out_state_5,
  output [7:0] io_para_out_state_6,
  output [7:0] io_para_out_state_7,
  output [7:0] io_para_out_state_8,
  output [7:0] io_para_out_state_9,
  output [7:0] io_para_out_state_10,
  output [7:0] io_para_out_state_11,
  output [7:0] io_para_out_state_12,
  output [7:0] io_para_out_state_13,
  output [7:0] io_para_out_state_14,
  output [7:0] io_para_out_state_15,
  output       io_para_out_control_isIdle,
  output [1:0] io_para_out_control_keylength,
  output [1:0] io_para_out_control_taskID,
  output [3:0] io_para_out_control_rounds
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
`endif // RANDOMIZE_REG_INIT
  wire  sboxs_0_clock; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_0_io_in; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_0_io_out; // @[SubBytes.scala 14:34]
  wire  sboxs_1_clock; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_1_io_in; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_1_io_out; // @[SubBytes.scala 14:34]
  wire  sboxs_2_clock; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_2_io_in; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_2_io_out; // @[SubBytes.scala 14:34]
  wire  sboxs_3_clock; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_3_io_in; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_3_io_out; // @[SubBytes.scala 14:34]
  wire  sboxs_4_clock; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_4_io_in; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_4_io_out; // @[SubBytes.scala 14:34]
  wire  sboxs_5_clock; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_5_io_in; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_5_io_out; // @[SubBytes.scala 14:34]
  wire  sboxs_6_clock; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_6_io_in; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_6_io_out; // @[SubBytes.scala 14:34]
  wire  sboxs_7_clock; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_7_io_in; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_7_io_out; // @[SubBytes.scala 14:34]
  wire  sboxs_8_clock; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_8_io_in; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_8_io_out; // @[SubBytes.scala 14:34]
  wire  sboxs_9_clock; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_9_io_in; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_9_io_out; // @[SubBytes.scala 14:34]
  wire  sboxs_10_clock; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_10_io_in; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_10_io_out; // @[SubBytes.scala 14:34]
  wire  sboxs_11_clock; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_11_io_in; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_11_io_out; // @[SubBytes.scala 14:34]
  wire  sboxs_12_clock; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_12_io_in; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_12_io_out; // @[SubBytes.scala 14:34]
  wire  sboxs_13_clock; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_13_io_in; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_13_io_out; // @[SubBytes.scala 14:34]
  wire  sboxs_14_clock; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_14_io_in; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_14_io_out; // @[SubBytes.scala 14:34]
  wire  sboxs_15_clock; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_15_io_in; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_15_io_out; // @[SubBytes.scala 14:34]
  reg [7:0] io_para_out_state_0_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_1_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_2_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_3_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_4_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_5_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_6_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_7_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_8_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_9_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_10_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_11_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_12_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_13_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_14_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_15_r; // @[Reg.scala 16:16]
  reg  io_para_out_control_REG_isIdle; // @[Util.scala 33:14]
  reg [1:0] io_para_out_control_REG_keylength; // @[Util.scala 33:14]
  reg [1:0] io_para_out_control_REG_taskID; // @[Util.scala 33:14]
  reg [3:0] io_para_out_control_REG_rounds; // @[Util.scala 33:14]
  reg  io_para_out_control_REG_1_isIdle; // @[Util.scala 35:14]
  reg [1:0] io_para_out_control_REG_1_keylength; // @[Util.scala 35:14]
  reg [1:0] io_para_out_control_REG_1_taskID; // @[Util.scala 35:14]
  reg [3:0] io_para_out_control_REG_1_rounds; // @[Util.scala 35:14]
  reg  io_para_out_control_REG_2_isIdle; // @[Util.scala 35:14]
  reg [1:0] io_para_out_control_REG_2_keylength; // @[Util.scala 35:14]
  reg [1:0] io_para_out_control_REG_2_taskID; // @[Util.scala 35:14]
  reg [3:0] io_para_out_control_REG_2_rounds; // @[Util.scala 35:14]
  AESSBox sboxs_0 ( // @[SubBytes.scala 14:34]
    .clock(sboxs_0_clock),
    .io_in(sboxs_0_io_in),
    .io_out(sboxs_0_io_out)
  );
  AESSBox sboxs_1 ( // @[SubBytes.scala 14:34]
    .clock(sboxs_1_clock),
    .io_in(sboxs_1_io_in),
    .io_out(sboxs_1_io_out)
  );
  AESSBox sboxs_2 ( // @[SubBytes.scala 14:34]
    .clock(sboxs_2_clock),
    .io_in(sboxs_2_io_in),
    .io_out(sboxs_2_io_out)
  );
  AESSBox sboxs_3 ( // @[SubBytes.scala 14:34]
    .clock(sboxs_3_clock),
    .io_in(sboxs_3_io_in),
    .io_out(sboxs_3_io_out)
  );
  AESSBox sboxs_4 ( // @[SubBytes.scala 14:34]
    .clock(sboxs_4_clock),
    .io_in(sboxs_4_io_in),
    .io_out(sboxs_4_io_out)
  );
  AESSBox sboxs_5 ( // @[SubBytes.scala 14:34]
    .clock(sboxs_5_clock),
    .io_in(sboxs_5_io_in),
    .io_out(sboxs_5_io_out)
  );
  AESSBox sboxs_6 ( // @[SubBytes.scala 14:34]
    .clock(sboxs_6_clock),
    .io_in(sboxs_6_io_in),
    .io_out(sboxs_6_io_out)
  );
  AESSBox sboxs_7 ( // @[SubBytes.scala 14:34]
    .clock(sboxs_7_clock),
    .io_in(sboxs_7_io_in),
    .io_out(sboxs_7_io_out)
  );
  AESSBox sboxs_8 ( // @[SubBytes.scala 14:34]
    .clock(sboxs_8_clock),
    .io_in(sboxs_8_io_in),
    .io_out(sboxs_8_io_out)
  );
  AESSBox sboxs_9 ( // @[SubBytes.scala 14:34]
    .clock(sboxs_9_clock),
    .io_in(sboxs_9_io_in),
    .io_out(sboxs_9_io_out)
  );
  AESSBox sboxs_10 ( // @[SubBytes.scala 14:34]
    .clock(sboxs_10_clock),
    .io_in(sboxs_10_io_in),
    .io_out(sboxs_10_io_out)
  );
  AESSBox sboxs_11 ( // @[SubBytes.scala 14:34]
    .clock(sboxs_11_clock),
    .io_in(sboxs_11_io_in),
    .io_out(sboxs_11_io_out)
  );
  AESSBox sboxs_12 ( // @[SubBytes.scala 14:34]
    .clock(sboxs_12_clock),
    .io_in(sboxs_12_io_in),
    .io_out(sboxs_12_io_out)
  );
  AESSBox sboxs_13 ( // @[SubBytes.scala 14:34]
    .clock(sboxs_13_clock),
    .io_in(sboxs_13_io_in),
    .io_out(sboxs_13_io_out)
  );
  AESSBox sboxs_14 ( // @[SubBytes.scala 14:34]
    .clock(sboxs_14_clock),
    .io_in(sboxs_14_io_in),
    .io_out(sboxs_14_io_out)
  );
  AESSBox sboxs_15 ( // @[SubBytes.scala 14:34]
    .clock(sboxs_15_clock),
    .io_in(sboxs_15_io_in),
    .io_out(sboxs_15_io_out)
  );
  assign io_para_out_state_0 = io_para_out_state_0_r; // @[SubBytes.scala 17:28]
  assign io_para_out_state_1 = io_para_out_state_1_r; // @[SubBytes.scala 17:28]
  assign io_para_out_state_2 = io_para_out_state_2_r; // @[SubBytes.scala 17:28]
  assign io_para_out_state_3 = io_para_out_state_3_r; // @[SubBytes.scala 17:28]
  assign io_para_out_state_4 = io_para_out_state_4_r; // @[SubBytes.scala 17:28]
  assign io_para_out_state_5 = io_para_out_state_5_r; // @[SubBytes.scala 17:28]
  assign io_para_out_state_6 = io_para_out_state_6_r; // @[SubBytes.scala 17:28]
  assign io_para_out_state_7 = io_para_out_state_7_r; // @[SubBytes.scala 17:28]
  assign io_para_out_state_8 = io_para_out_state_8_r; // @[SubBytes.scala 17:28]
  assign io_para_out_state_9 = io_para_out_state_9_r; // @[SubBytes.scala 17:28]
  assign io_para_out_state_10 = io_para_out_state_10_r; // @[SubBytes.scala 17:28]
  assign io_para_out_state_11 = io_para_out_state_11_r; // @[SubBytes.scala 17:28]
  assign io_para_out_state_12 = io_para_out_state_12_r; // @[SubBytes.scala 17:28]
  assign io_para_out_state_13 = io_para_out_state_13_r; // @[SubBytes.scala 17:28]
  assign io_para_out_state_14 = io_para_out_state_14_r; // @[SubBytes.scala 17:28]
  assign io_para_out_state_15 = io_para_out_state_15_r; // @[SubBytes.scala 17:28]
  assign io_para_out_control_isIdle = io_para_out_control_REG_2_isIdle; // @[SubBytes.scala 20:23]
  assign io_para_out_control_keylength = io_para_out_control_REG_2_keylength; // @[SubBytes.scala 20:23]
  assign io_para_out_control_taskID = io_para_out_control_REG_2_taskID; // @[SubBytes.scala 20:23]
  assign io_para_out_control_rounds = io_para_out_control_REG_2_rounds; // @[SubBytes.scala 20:23]
  assign sboxs_0_clock = clock;
  assign sboxs_0_io_in = io_para_in_state_0; // @[SubBytes.scala 16:22]
  assign sboxs_1_clock = clock;
  assign sboxs_1_io_in = io_para_in_state_1; // @[SubBytes.scala 16:22]
  assign sboxs_2_clock = clock;
  assign sboxs_2_io_in = io_para_in_state_2; // @[SubBytes.scala 16:22]
  assign sboxs_3_clock = clock;
  assign sboxs_3_io_in = io_para_in_state_3; // @[SubBytes.scala 16:22]
  assign sboxs_4_clock = clock;
  assign sboxs_4_io_in = io_para_in_state_4; // @[SubBytes.scala 16:22]
  assign sboxs_5_clock = clock;
  assign sboxs_5_io_in = io_para_in_state_5; // @[SubBytes.scala 16:22]
  assign sboxs_6_clock = clock;
  assign sboxs_6_io_in = io_para_in_state_6; // @[SubBytes.scala 16:22]
  assign sboxs_7_clock = clock;
  assign sboxs_7_io_in = io_para_in_state_7; // @[SubBytes.scala 16:22]
  assign sboxs_8_clock = clock;
  assign sboxs_8_io_in = io_para_in_state_8; // @[SubBytes.scala 16:22]
  assign sboxs_9_clock = clock;
  assign sboxs_9_io_in = io_para_in_state_9; // @[SubBytes.scala 16:22]
  assign sboxs_10_clock = clock;
  assign sboxs_10_io_in = io_para_in_state_10; // @[SubBytes.scala 16:22]
  assign sboxs_11_clock = clock;
  assign sboxs_11_io_in = io_para_in_state_11; // @[SubBytes.scala 16:22]
  assign sboxs_12_clock = clock;
  assign sboxs_12_io_in = io_para_in_state_12; // @[SubBytes.scala 16:22]
  assign sboxs_13_clock = clock;
  assign sboxs_13_io_in = io_para_in_state_13; // @[SubBytes.scala 16:22]
  assign sboxs_14_clock = clock;
  assign sboxs_14_io_in = io_para_in_state_14; // @[SubBytes.scala 16:22]
  assign sboxs_15_clock = clock;
  assign sboxs_15_io_in = io_para_in_state_15; // @[SubBytes.scala 16:22]
  always @(posedge clock) begin
    io_para_out_state_0_r <= sboxs_0_io_out; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_1_r <= sboxs_1_io_out; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_2_r <= sboxs_2_io_out; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_3_r <= sboxs_3_io_out; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_4_r <= sboxs_4_io_out; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_5_r <= sboxs_5_io_out; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_6_r <= sboxs_6_io_out; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_7_r <= sboxs_7_io_out; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_8_r <= sboxs_8_io_out; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_9_r <= sboxs_9_io_out; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_10_r <= sboxs_10_io_out; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_11_r <= sboxs_11_io_out; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_12_r <= sboxs_12_io_out; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_13_r <= sboxs_13_io_out; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_14_r <= sboxs_14_io_out; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_15_r <= sboxs_15_io_out; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_control_REG_isIdle <= reset | io_para_in_control_isIdle; // @[Util.scala 33:{14,14,14}]
    if (reset) begin // @[Util.scala 33:14]
      io_para_out_control_REG_keylength <= 2'h0; // @[Util.scala 33:14]
    end else begin
      io_para_out_control_REG_keylength <= io_para_in_control_keylength; // @[Util.scala 33:14]
    end
    if (reset) begin // @[Util.scala 33:14]
      io_para_out_control_REG_taskID <= 2'h0; // @[Util.scala 33:14]
    end else begin
      io_para_out_control_REG_taskID <= io_para_in_control_taskID; // @[Util.scala 33:14]
    end
    if (reset) begin // @[Util.scala 33:14]
      io_para_out_control_REG_rounds <= 4'h5; // @[Util.scala 33:14]
    end else begin
      io_para_out_control_REG_rounds <= io_para_in_control_rounds; // @[Util.scala 33:14]
    end
    io_para_out_control_REG_1_isIdle <= reset | io_para_out_control_REG_isIdle; // @[Util.scala 35:{14,14,14}]
    if (reset) begin // @[Util.scala 35:14]
      io_para_out_control_REG_1_keylength <= 2'h0; // @[Util.scala 35:14]
    end else begin
      io_para_out_control_REG_1_keylength <= io_para_out_control_REG_keylength; // @[Util.scala 35:14]
    end
    if (reset) begin // @[Util.scala 35:14]
      io_para_out_control_REG_1_taskID <= 2'h0; // @[Util.scala 35:14]
    end else begin
      io_para_out_control_REG_1_taskID <= io_para_out_control_REG_taskID; // @[Util.scala 35:14]
    end
    if (reset) begin // @[Util.scala 35:14]
      io_para_out_control_REG_1_rounds <= 4'h5; // @[Util.scala 35:14]
    end else begin
      io_para_out_control_REG_1_rounds <= io_para_out_control_REG_rounds; // @[Util.scala 35:14]
    end
    io_para_out_control_REG_2_isIdle <= reset | io_para_out_control_REG_1_isIdle; // @[Util.scala 35:{14,14,14}]
    if (reset) begin // @[Util.scala 35:14]
      io_para_out_control_REG_2_keylength <= 2'h0; // @[Util.scala 35:14]
    end else begin
      io_para_out_control_REG_2_keylength <= io_para_out_control_REG_1_keylength; // @[Util.scala 35:14]
    end
    if (reset) begin // @[Util.scala 35:14]
      io_para_out_control_REG_2_taskID <= 2'h0; // @[Util.scala 35:14]
    end else begin
      io_para_out_control_REG_2_taskID <= io_para_out_control_REG_1_taskID; // @[Util.scala 35:14]
    end
    if (reset) begin // @[Util.scala 35:14]
      io_para_out_control_REG_2_rounds <= 4'h5; // @[Util.scala 35:14]
    end else begin
      io_para_out_control_REG_2_rounds <= io_para_out_control_REG_1_rounds; // @[Util.scala 35:14]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  io_para_out_state_0_r = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  io_para_out_state_1_r = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  io_para_out_state_2_r = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  io_para_out_state_3_r = _RAND_3[7:0];
  _RAND_4 = {1{`RANDOM}};
  io_para_out_state_4_r = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  io_para_out_state_5_r = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  io_para_out_state_6_r = _RAND_6[7:0];
  _RAND_7 = {1{`RANDOM}};
  io_para_out_state_7_r = _RAND_7[7:0];
  _RAND_8 = {1{`RANDOM}};
  io_para_out_state_8_r = _RAND_8[7:0];
  _RAND_9 = {1{`RANDOM}};
  io_para_out_state_9_r = _RAND_9[7:0];
  _RAND_10 = {1{`RANDOM}};
  io_para_out_state_10_r = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  io_para_out_state_11_r = _RAND_11[7:0];
  _RAND_12 = {1{`RANDOM}};
  io_para_out_state_12_r = _RAND_12[7:0];
  _RAND_13 = {1{`RANDOM}};
  io_para_out_state_13_r = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  io_para_out_state_14_r = _RAND_14[7:0];
  _RAND_15 = {1{`RANDOM}};
  io_para_out_state_15_r = _RAND_15[7:0];
  _RAND_16 = {1{`RANDOM}};
  io_para_out_control_REG_isIdle = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  io_para_out_control_REG_keylength = _RAND_17[1:0];
  _RAND_18 = {1{`RANDOM}};
  io_para_out_control_REG_taskID = _RAND_18[1:0];
  _RAND_19 = {1{`RANDOM}};
  io_para_out_control_REG_rounds = _RAND_19[3:0];
  _RAND_20 = {1{`RANDOM}};
  io_para_out_control_REG_1_isIdle = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  io_para_out_control_REG_1_keylength = _RAND_21[1:0];
  _RAND_22 = {1{`RANDOM}};
  io_para_out_control_REG_1_taskID = _RAND_22[1:0];
  _RAND_23 = {1{`RANDOM}};
  io_para_out_control_REG_1_rounds = _RAND_23[3:0];
  _RAND_24 = {1{`RANDOM}};
  io_para_out_control_REG_2_isIdle = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  io_para_out_control_REG_2_keylength = _RAND_25[1:0];
  _RAND_26 = {1{`RANDOM}};
  io_para_out_control_REG_2_taskID = _RAND_26[1:0];
  _RAND_27 = {1{`RANDOM}};
  io_para_out_control_REG_2_rounds = _RAND_27[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module ShiftRows(
  input  [7:0] io_para_in_state_0,
  input  [7:0] io_para_in_state_1,
  input  [7:0] io_para_in_state_2,
  input  [7:0] io_para_in_state_3,
  input  [7:0] io_para_in_state_4,
  input  [7:0] io_para_in_state_5,
  input  [7:0] io_para_in_state_6,
  input  [7:0] io_para_in_state_7,
  input  [7:0] io_para_in_state_8,
  input  [7:0] io_para_in_state_9,
  input  [7:0] io_para_in_state_10,
  input  [7:0] io_para_in_state_11,
  input  [7:0] io_para_in_state_12,
  input  [7:0] io_para_in_state_13,
  input  [7:0] io_para_in_state_14,
  input  [7:0] io_para_in_state_15,
  input        io_para_in_control_isIdle,
  input  [1:0] io_para_in_control_keylength,
  input  [1:0] io_para_in_control_taskID,
  input  [3:0] io_para_in_control_rounds,
  output [7:0] io_para_out_state_0,
  output [7:0] io_para_out_state_1,
  output [7:0] io_para_out_state_2,
  output [7:0] io_para_out_state_3,
  output [7:0] io_para_out_state_4,
  output [7:0] io_para_out_state_5,
  output [7:0] io_para_out_state_6,
  output [7:0] io_para_out_state_7,
  output [7:0] io_para_out_state_8,
  output [7:0] io_para_out_state_9,
  output [7:0] io_para_out_state_10,
  output [7:0] io_para_out_state_11,
  output [7:0] io_para_out_state_12,
  output [7:0] io_para_out_state_13,
  output [7:0] io_para_out_state_14,
  output [7:0] io_para_out_state_15,
  output       io_para_out_control_isIdle,
  output [1:0] io_para_out_control_keylength,
  output [1:0] io_para_out_control_taskID,
  output [3:0] io_para_out_control_rounds
);
  assign io_para_out_state_0 = io_para_in_state_0; // @[ShiftRows.scala 13:24]
  assign io_para_out_state_1 = io_para_in_state_5; // @[ShiftRows.scala 15:24]
  assign io_para_out_state_2 = io_para_in_state_10; // @[ShiftRows.scala 16:24]
  assign io_para_out_state_3 = io_para_in_state_15; // @[ShiftRows.scala 18:24]
  assign io_para_out_state_4 = io_para_in_state_4; // @[ShiftRows.scala 20:24]
  assign io_para_out_state_5 = io_para_in_state_9; // @[ShiftRows.scala 22:24]
  assign io_para_out_state_6 = io_para_in_state_14; // @[ShiftRows.scala 23:24]
  assign io_para_out_state_7 = io_para_in_state_3; // @[ShiftRows.scala 25:24]
  assign io_para_out_state_8 = io_para_in_state_8; // @[ShiftRows.scala 27:24]
  assign io_para_out_state_9 = io_para_in_state_13; // @[ShiftRows.scala 29:24]
  assign io_para_out_state_10 = io_para_in_state_2; // @[ShiftRows.scala 30:25]
  assign io_para_out_state_11 = io_para_in_state_7; // @[ShiftRows.scala 32:25]
  assign io_para_out_state_12 = io_para_in_state_12; // @[ShiftRows.scala 34:25]
  assign io_para_out_state_13 = io_para_in_state_1; // @[ShiftRows.scala 36:25]
  assign io_para_out_state_14 = io_para_in_state_6; // @[ShiftRows.scala 37:25]
  assign io_para_out_state_15 = io_para_in_state_11; // @[ShiftRows.scala 39:25]
  assign io_para_out_control_isIdle = io_para_in_control_isIdle; // @[ShiftRows.scala 41:23]
  assign io_para_out_control_keylength = io_para_in_control_keylength; // @[ShiftRows.scala 41:23]
  assign io_para_out_control_taskID = io_para_in_control_taskID; // @[ShiftRows.scala 41:23]
  assign io_para_out_control_rounds = io_para_in_control_rounds; // @[ShiftRows.scala 41:23]
endmodule
module GFMul(
  input  [7:0] io_in,
  output [7:0] io_out
);
  wire [8:0] _io_out_T = {io_in, 1'h0}; // @[PolyMul.scala 16:32]
  wire [7:0] _io_out_T_3 = io_in[7] ? 8'h1b : 8'h0; // @[PolyMul.scala 16:48]
  wire [7:0] _io_out_T_4 = _io_out_T[7:0] ^ _io_out_T_3; // @[PolyMul.scala 16:43]
  assign io_out = io_in ^ _io_out_T_4; // @[PolyMul.scala 28:14]
endmodule
module GFMul_1(
  input  [7:0] io_in,
  output [7:0] io_out
);
  wire [8:0] _io_out_T = {io_in, 1'h0}; // @[PolyMul.scala 16:32]
  wire [7:0] _io_out_T_3 = io_in[7] ? 8'h1b : 8'h0; // @[PolyMul.scala 16:48]
  assign io_out = _io_out_T[7:0] ^ _io_out_T_3; // @[PolyMul.scala 16:43]
endmodule
module TermMul(
  input  [7:0]  io_in,
  output [31:0] io_out
);
  wire [7:0] out_m_io_in; // @[PolyMul.scala 40:19]
  wire [7:0] out_m_io_out; // @[PolyMul.scala 40:19]
  wire [7:0] out_m_1_io_in; // @[PolyMul.scala 40:19]
  wire [7:0] out_m_1_io_out; // @[PolyMul.scala 40:19]
  wire [15:0] out_lo = {io_in,out_m_1_io_out}; // @[Cat.scala 31:58]
  wire [15:0] out_hi = {out_m_io_out,io_in}; // @[Cat.scala 31:58]
  GFMul out_m ( // @[PolyMul.scala 40:19]
    .io_in(out_m_io_in),
    .io_out(out_m_io_out)
  );
  GFMul_1 out_m_1 ( // @[PolyMul.scala 40:19]
    .io_in(out_m_1_io_in),
    .io_out(out_m_1_io_out)
  );
  assign io_out = {out_hi,out_lo}; // @[Cat.scala 31:58]
  assign out_m_io_in = io_in; // @[PolyMul.scala 41:13]
  assign out_m_1_io_in = io_in; // @[PolyMul.scala 41:13]
endmodule
module PolyMul(
  input  [7:0] io_in_0,
  input  [7:0] io_in_1,
  input  [7:0] io_in_2,
  input  [7:0] io_in_3,
  output [7:0] io_out_0,
  output [7:0] io_out_1,
  output [7:0] io_out_2,
  output [7:0] io_out_3
);
  wire [7:0] tmp_m_io_in; // @[PolyMul.scala 60:21]
  wire [31:0] tmp_m_io_out; // @[PolyMul.scala 60:21]
  wire [7:0] tmp_m_1_io_in; // @[PolyMul.scala 60:21]
  wire [31:0] tmp_m_1_io_out; // @[PolyMul.scala 60:21]
  wire [7:0] tmp_m_2_io_in; // @[PolyMul.scala 60:21]
  wire [31:0] tmp_m_2_io_out; // @[PolyMul.scala 60:21]
  wire [7:0] tmp_m_3_io_in; // @[PolyMul.scala 60:21]
  wire [31:0] tmp_m_3_io_out; // @[PolyMul.scala 60:21]
  wire [31:0] _tmp_T_2 = {tmp_m_1_io_out[23:0],tmp_m_1_io_out[31:24]}; // @[PolyMul.scala 62:26]
  wire [31:0] _tmp_T_5 = {tmp_m_2_io_out[15:0],tmp_m_2_io_out[31:16]}; // @[PolyMul.scala 62:26]
  wire [31:0] _tmp_T_8 = {tmp_m_3_io_out[7:0],tmp_m_3_io_out[31:8]}; // @[PolyMul.scala 62:26]
  wire [31:0] _tmp_T_9 = tmp_m_io_out ^ _tmp_T_2; // @[PolyMul.scala 64:15]
  wire [31:0] _tmp_T_10 = _tmp_T_9 ^ _tmp_T_5; // @[PolyMul.scala 64:15]
  wire [31:0] tmp = _tmp_T_10 ^ _tmp_T_8; // @[PolyMul.scala 64:15]
  wire [3:0] lo = {tmp[3],tmp[2],tmp[1],tmp[0]}; // @[PolyMul.scala 57:83]
  wire [3:0] hi = {tmp[7],tmp[6],tmp[5],tmp[4]}; // @[PolyMul.scala 57:83]
  wire [3:0] lo_1 = {tmp[11],tmp[10],tmp[9],tmp[8]}; // @[PolyMul.scala 57:83]
  wire [3:0] hi_1 = {tmp[15],tmp[14],tmp[13],tmp[12]}; // @[PolyMul.scala 57:83]
  wire [3:0] lo_2 = {tmp[19],tmp[18],tmp[17],tmp[16]}; // @[PolyMul.scala 57:83]
  wire [3:0] hi_2 = {tmp[23],tmp[22],tmp[21],tmp[20]}; // @[PolyMul.scala 57:83]
  wire [3:0] lo_3 = {tmp[27],tmp[26],tmp[25],tmp[24]}; // @[PolyMul.scala 57:83]
  wire [3:0] hi_3 = {tmp[31],tmp[30],tmp[29],tmp[28]}; // @[PolyMul.scala 57:83]
  TermMul tmp_m ( // @[PolyMul.scala 60:21]
    .io_in(tmp_m_io_in),
    .io_out(tmp_m_io_out)
  );
  TermMul tmp_m_1 ( // @[PolyMul.scala 60:21]
    .io_in(tmp_m_1_io_in),
    .io_out(tmp_m_1_io_out)
  );
  TermMul tmp_m_2 ( // @[PolyMul.scala 60:21]
    .io_in(tmp_m_2_io_in),
    .io_out(tmp_m_2_io_out)
  );
  TermMul tmp_m_3 ( // @[PolyMul.scala 60:21]
    .io_in(tmp_m_3_io_in),
    .io_out(tmp_m_3_io_out)
  );
  assign io_out_0 = {hi,lo}; // @[PolyMul.scala 57:83]
  assign io_out_1 = {hi_1,lo_1}; // @[PolyMul.scala 57:83]
  assign io_out_2 = {hi_2,lo_2}; // @[PolyMul.scala 57:83]
  assign io_out_3 = {hi_3,lo_3}; // @[PolyMul.scala 57:83]
  assign tmp_m_io_in = io_in_0; // @[PolyMul.scala 61:15]
  assign tmp_m_1_io_in = io_in_1; // @[PolyMul.scala 61:15]
  assign tmp_m_2_io_in = io_in_2; // @[PolyMul.scala 61:15]
  assign tmp_m_3_io_in = io_in_3; // @[PolyMul.scala 61:15]
endmodule
module MixColumns(
  input        clock,
  input        reset,
  input  [7:0] io_para_in_state_0,
  input  [7:0] io_para_in_state_1,
  input  [7:0] io_para_in_state_2,
  input  [7:0] io_para_in_state_3,
  input  [7:0] io_para_in_state_4,
  input  [7:0] io_para_in_state_5,
  input  [7:0] io_para_in_state_6,
  input  [7:0] io_para_in_state_7,
  input  [7:0] io_para_in_state_8,
  input  [7:0] io_para_in_state_9,
  input  [7:0] io_para_in_state_10,
  input  [7:0] io_para_in_state_11,
  input  [7:0] io_para_in_state_12,
  input  [7:0] io_para_in_state_13,
  input  [7:0] io_para_in_state_14,
  input  [7:0] io_para_in_state_15,
  input        io_para_in_control_isIdle,
  input  [1:0] io_para_in_control_keylength,
  input  [1:0] io_para_in_control_taskID,
  input  [3:0] io_para_in_control_rounds,
  output [7:0] io_para_out_state_0,
  output [7:0] io_para_out_state_1,
  output [7:0] io_para_out_state_2,
  output [7:0] io_para_out_state_3,
  output [7:0] io_para_out_state_4,
  output [7:0] io_para_out_state_5,
  output [7:0] io_para_out_state_6,
  output [7:0] io_para_out_state_7,
  output [7:0] io_para_out_state_8,
  output [7:0] io_para_out_state_9,
  output [7:0] io_para_out_state_10,
  output [7:0] io_para_out_state_11,
  output [7:0] io_para_out_state_12,
  output [7:0] io_para_out_state_13,
  output [7:0] io_para_out_state_14,
  output [7:0] io_para_out_state_15,
  output       io_para_out_control_isIdle,
  output [1:0] io_para_out_control_keylength,
  output [1:0] io_para_out_control_taskID,
  output [3:0] io_para_out_control_rounds
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
`endif // RANDOMIZE_REG_INIT
  wire [7:0] pms_0_io_in_0; // @[MixColumns.scala 16:31]
  wire [7:0] pms_0_io_in_1; // @[MixColumns.scala 16:31]
  wire [7:0] pms_0_io_in_2; // @[MixColumns.scala 16:31]
  wire [7:0] pms_0_io_in_3; // @[MixColumns.scala 16:31]
  wire [7:0] pms_0_io_out_0; // @[MixColumns.scala 16:31]
  wire [7:0] pms_0_io_out_1; // @[MixColumns.scala 16:31]
  wire [7:0] pms_0_io_out_2; // @[MixColumns.scala 16:31]
  wire [7:0] pms_0_io_out_3; // @[MixColumns.scala 16:31]
  wire [7:0] pms_1_io_in_0; // @[MixColumns.scala 16:31]
  wire [7:0] pms_1_io_in_1; // @[MixColumns.scala 16:31]
  wire [7:0] pms_1_io_in_2; // @[MixColumns.scala 16:31]
  wire [7:0] pms_1_io_in_3; // @[MixColumns.scala 16:31]
  wire [7:0] pms_1_io_out_0; // @[MixColumns.scala 16:31]
  wire [7:0] pms_1_io_out_1; // @[MixColumns.scala 16:31]
  wire [7:0] pms_1_io_out_2; // @[MixColumns.scala 16:31]
  wire [7:0] pms_1_io_out_3; // @[MixColumns.scala 16:31]
  wire [7:0] pms_2_io_in_0; // @[MixColumns.scala 16:31]
  wire [7:0] pms_2_io_in_1; // @[MixColumns.scala 16:31]
  wire [7:0] pms_2_io_in_2; // @[MixColumns.scala 16:31]
  wire [7:0] pms_2_io_in_3; // @[MixColumns.scala 16:31]
  wire [7:0] pms_2_io_out_0; // @[MixColumns.scala 16:31]
  wire [7:0] pms_2_io_out_1; // @[MixColumns.scala 16:31]
  wire [7:0] pms_2_io_out_2; // @[MixColumns.scala 16:31]
  wire [7:0] pms_2_io_out_3; // @[MixColumns.scala 16:31]
  wire [7:0] pms_3_io_in_0; // @[MixColumns.scala 16:31]
  wire [7:0] pms_3_io_in_1; // @[MixColumns.scala 16:31]
  wire [7:0] pms_3_io_in_2; // @[MixColumns.scala 16:31]
  wire [7:0] pms_3_io_in_3; // @[MixColumns.scala 16:31]
  wire [7:0] pms_3_io_out_0; // @[MixColumns.scala 16:31]
  wire [7:0] pms_3_io_out_1; // @[MixColumns.scala 16:31]
  wire [7:0] pms_3_io_out_2; // @[MixColumns.scala 16:31]
  wire [7:0] pms_3_io_out_3; // @[MixColumns.scala 16:31]
  reg [7:0] io_para_out_state_0_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_1_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_2_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_3_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_4_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_5_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_6_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_7_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_8_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_9_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_10_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_11_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_12_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_13_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_14_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_15_r; // @[Reg.scala 16:16]
  reg  io_para_out_control_REG_isIdle; // @[Util.scala 33:14]
  reg [1:0] io_para_out_control_REG_keylength; // @[Util.scala 33:14]
  reg [1:0] io_para_out_control_REG_taskID; // @[Util.scala 33:14]
  reg [3:0] io_para_out_control_REG_rounds; // @[Util.scala 33:14]
  PolyMul pms_0 ( // @[MixColumns.scala 16:31]
    .io_in_0(pms_0_io_in_0),
    .io_in_1(pms_0_io_in_1),
    .io_in_2(pms_0_io_in_2),
    .io_in_3(pms_0_io_in_3),
    .io_out_0(pms_0_io_out_0),
    .io_out_1(pms_0_io_out_1),
    .io_out_2(pms_0_io_out_2),
    .io_out_3(pms_0_io_out_3)
  );
  PolyMul pms_1 ( // @[MixColumns.scala 16:31]
    .io_in_0(pms_1_io_in_0),
    .io_in_1(pms_1_io_in_1),
    .io_in_2(pms_1_io_in_2),
    .io_in_3(pms_1_io_in_3),
    .io_out_0(pms_1_io_out_0),
    .io_out_1(pms_1_io_out_1),
    .io_out_2(pms_1_io_out_2),
    .io_out_3(pms_1_io_out_3)
  );
  PolyMul pms_2 ( // @[MixColumns.scala 16:31]
    .io_in_0(pms_2_io_in_0),
    .io_in_1(pms_2_io_in_1),
    .io_in_2(pms_2_io_in_2),
    .io_in_3(pms_2_io_in_3),
    .io_out_0(pms_2_io_out_0),
    .io_out_1(pms_2_io_out_1),
    .io_out_2(pms_2_io_out_2),
    .io_out_3(pms_2_io_out_3)
  );
  PolyMul pms_3 ( // @[MixColumns.scala 16:31]
    .io_in_0(pms_3_io_in_0),
    .io_in_1(pms_3_io_in_1),
    .io_in_2(pms_3_io_in_2),
    .io_in_3(pms_3_io_in_3),
    .io_out_0(pms_3_io_out_0),
    .io_out_1(pms_3_io_out_1),
    .io_out_2(pms_3_io_out_2),
    .io_out_3(pms_3_io_out_3)
  );
  assign io_para_out_state_0 = io_para_out_state_0_r; // @[MixColumns.scala 20:36]
  assign io_para_out_state_1 = io_para_out_state_1_r; // @[MixColumns.scala 20:36]
  assign io_para_out_state_2 = io_para_out_state_2_r; // @[MixColumns.scala 20:36]
  assign io_para_out_state_3 = io_para_out_state_3_r; // @[MixColumns.scala 20:36]
  assign io_para_out_state_4 = io_para_out_state_4_r; // @[MixColumns.scala 20:36]
  assign io_para_out_state_5 = io_para_out_state_5_r; // @[MixColumns.scala 20:36]
  assign io_para_out_state_6 = io_para_out_state_6_r; // @[MixColumns.scala 20:36]
  assign io_para_out_state_7 = io_para_out_state_7_r; // @[MixColumns.scala 20:36]
  assign io_para_out_state_8 = io_para_out_state_8_r; // @[MixColumns.scala 20:36]
  assign io_para_out_state_9 = io_para_out_state_9_r; // @[MixColumns.scala 20:36]
  assign io_para_out_state_10 = io_para_out_state_10_r; // @[MixColumns.scala 20:36]
  assign io_para_out_state_11 = io_para_out_state_11_r; // @[MixColumns.scala 20:36]
  assign io_para_out_state_12 = io_para_out_state_12_r; // @[MixColumns.scala 20:36]
  assign io_para_out_state_13 = io_para_out_state_13_r; // @[MixColumns.scala 20:36]
  assign io_para_out_state_14 = io_para_out_state_14_r; // @[MixColumns.scala 20:36]
  assign io_para_out_state_15 = io_para_out_state_15_r; // @[MixColumns.scala 20:36]
  assign io_para_out_control_isIdle = io_para_out_control_REG_isIdle; // @[MixColumns.scala 23:23]
  assign io_para_out_control_keylength = io_para_out_control_REG_keylength; // @[MixColumns.scala 23:23]
  assign io_para_out_control_taskID = io_para_out_control_REG_taskID; // @[MixColumns.scala 23:23]
  assign io_para_out_control_rounds = io_para_out_control_REG_rounds; // @[MixColumns.scala 23:23]
  assign pms_0_io_in_0 = io_para_in_state_0; // @[MixColumns.scala 19:23]
  assign pms_0_io_in_1 = io_para_in_state_1; // @[MixColumns.scala 19:23]
  assign pms_0_io_in_2 = io_para_in_state_2; // @[MixColumns.scala 19:23]
  assign pms_0_io_in_3 = io_para_in_state_3; // @[MixColumns.scala 19:23]
  assign pms_1_io_in_0 = io_para_in_state_4; // @[MixColumns.scala 19:23]
  assign pms_1_io_in_1 = io_para_in_state_5; // @[MixColumns.scala 19:23]
  assign pms_1_io_in_2 = io_para_in_state_6; // @[MixColumns.scala 19:23]
  assign pms_1_io_in_3 = io_para_in_state_7; // @[MixColumns.scala 19:23]
  assign pms_2_io_in_0 = io_para_in_state_8; // @[MixColumns.scala 19:23]
  assign pms_2_io_in_1 = io_para_in_state_9; // @[MixColumns.scala 19:23]
  assign pms_2_io_in_2 = io_para_in_state_10; // @[MixColumns.scala 19:23]
  assign pms_2_io_in_3 = io_para_in_state_11; // @[MixColumns.scala 19:23]
  assign pms_3_io_in_0 = io_para_in_state_12; // @[MixColumns.scala 19:23]
  assign pms_3_io_in_1 = io_para_in_state_13; // @[MixColumns.scala 19:23]
  assign pms_3_io_in_2 = io_para_in_state_14; // @[MixColumns.scala 19:23]
  assign pms_3_io_in_3 = io_para_in_state_15; // @[MixColumns.scala 19:23]
  always @(posedge clock) begin
    io_para_out_state_0_r <= pms_0_io_out_0; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_1_r <= pms_0_io_out_1; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_2_r <= pms_0_io_out_2; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_3_r <= pms_0_io_out_3; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_4_r <= pms_1_io_out_0; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_5_r <= pms_1_io_out_1; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_6_r <= pms_1_io_out_2; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_7_r <= pms_1_io_out_3; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_8_r <= pms_2_io_out_0; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_9_r <= pms_2_io_out_1; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_10_r <= pms_2_io_out_2; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_11_r <= pms_2_io_out_3; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_12_r <= pms_3_io_out_0; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_13_r <= pms_3_io_out_1; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_14_r <= pms_3_io_out_2; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_15_r <= pms_3_io_out_3; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_control_REG_isIdle <= reset | io_para_in_control_isIdle; // @[Util.scala 33:{14,14,14}]
    if (reset) begin // @[Util.scala 33:14]
      io_para_out_control_REG_keylength <= 2'h0; // @[Util.scala 33:14]
    end else begin
      io_para_out_control_REG_keylength <= io_para_in_control_keylength; // @[Util.scala 33:14]
    end
    if (reset) begin // @[Util.scala 33:14]
      io_para_out_control_REG_taskID <= 2'h0; // @[Util.scala 33:14]
    end else begin
      io_para_out_control_REG_taskID <= io_para_in_control_taskID; // @[Util.scala 33:14]
    end
    if (reset) begin // @[Util.scala 33:14]
      io_para_out_control_REG_rounds <= 4'h5; // @[Util.scala 33:14]
    end else begin
      io_para_out_control_REG_rounds <= io_para_in_control_rounds; // @[Util.scala 33:14]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  io_para_out_state_0_r = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  io_para_out_state_1_r = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  io_para_out_state_2_r = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  io_para_out_state_3_r = _RAND_3[7:0];
  _RAND_4 = {1{`RANDOM}};
  io_para_out_state_4_r = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  io_para_out_state_5_r = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  io_para_out_state_6_r = _RAND_6[7:0];
  _RAND_7 = {1{`RANDOM}};
  io_para_out_state_7_r = _RAND_7[7:0];
  _RAND_8 = {1{`RANDOM}};
  io_para_out_state_8_r = _RAND_8[7:0];
  _RAND_9 = {1{`RANDOM}};
  io_para_out_state_9_r = _RAND_9[7:0];
  _RAND_10 = {1{`RANDOM}};
  io_para_out_state_10_r = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  io_para_out_state_11_r = _RAND_11[7:0];
  _RAND_12 = {1{`RANDOM}};
  io_para_out_state_12_r = _RAND_12[7:0];
  _RAND_13 = {1{`RANDOM}};
  io_para_out_state_13_r = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  io_para_out_state_14_r = _RAND_14[7:0];
  _RAND_15 = {1{`RANDOM}};
  io_para_out_state_15_r = _RAND_15[7:0];
  _RAND_16 = {1{`RANDOM}};
  io_para_out_control_REG_isIdle = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  io_para_out_control_REG_keylength = _RAND_17[1:0];
  _RAND_18 = {1{`RANDOM}};
  io_para_out_control_REG_taskID = _RAND_18[1:0];
  _RAND_19 = {1{`RANDOM}};
  io_para_out_control_REG_rounds = _RAND_19[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module AESEncModule(
  input        clock,
  input        reset,
  output       io_input_ready,
  input        io_input_valid,
  input  [7:0] io_input_bits_state_0,
  input  [7:0] io_input_bits_state_1,
  input  [7:0] io_input_bits_state_2,
  input  [7:0] io_input_bits_state_3,
  input  [7:0] io_input_bits_state_4,
  input  [7:0] io_input_bits_state_5,
  input  [7:0] io_input_bits_state_6,
  input  [7:0] io_input_bits_state_7,
  input  [7:0] io_input_bits_state_8,
  input  [7:0] io_input_bits_state_9,
  input  [7:0] io_input_bits_state_10,
  input  [7:0] io_input_bits_state_11,
  input  [7:0] io_input_bits_state_12,
  input  [7:0] io_input_bits_state_13,
  input  [7:0] io_input_bits_state_14,
  input  [7:0] io_input_bits_state_15,
  input        io_input_bits_control_isIdle,
  input  [1:0] io_input_bits_control_taskID,
  input  [3:0] io_input_bits_control_rounds,
  input  [7:0] io_round_key_0,
  input  [7:0] io_round_key_1,
  input  [7:0] io_round_key_2,
  input  [7:0] io_round_key_3,
  input  [7:0] io_round_key_4,
  input  [7:0] io_round_key_5,
  input  [7:0] io_round_key_6,
  input  [7:0] io_round_key_7,
  input  [7:0] io_round_key_8,
  input  [7:0] io_round_key_9,
  input  [7:0] io_round_key_10,
  input  [7:0] io_round_key_11,
  input  [7:0] io_round_key_12,
  input  [7:0] io_round_key_13,
  input  [7:0] io_round_key_14,
  input  [7:0] io_round_key_15,
  output       io_output_state_valid,
  output [7:0] io_output_state_bits_0,
  output [7:0] io_output_state_bits_1,
  output [7:0] io_output_state_bits_2,
  output [7:0] io_output_state_bits_3,
  output [7:0] io_output_state_bits_4,
  output [7:0] io_output_state_bits_5,
  output [7:0] io_output_state_bits_6,
  output [7:0] io_output_state_bits_7,
  output [7:0] io_output_state_bits_8,
  output [7:0] io_output_state_bits_9,
  output [7:0] io_output_state_bits_10,
  output [7:0] io_output_state_bits_11,
  output [7:0] io_output_state_bits_12,
  output [7:0] io_output_state_bits_13,
  output [7:0] io_output_state_bits_14,
  output [7:0] io_output_state_bits_15,
  output [1:0] io_read_task,
  output [3:0] io_read_round,
  output [1:0] io_complete_taskID
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
`endif // RANDOMIZE_REG_INIT
  wire [7:0] AddRoundKeyModule_io_para_in_state_0; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_in_state_1; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_in_state_2; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_in_state_3; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_in_state_4; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_in_state_5; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_in_state_6; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_in_state_7; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_in_state_8; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_in_state_9; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_in_state_10; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_in_state_11; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_in_state_12; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_in_state_13; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_in_state_14; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_in_state_15; // @[AESEncModule.scala 20:33]
  wire  AddRoundKeyModule_io_para_in_control_isIdle; // @[AESEncModule.scala 20:33]
  wire [1:0] AddRoundKeyModule_io_para_in_control_keylength; // @[AESEncModule.scala 20:33]
  wire [1:0] AddRoundKeyModule_io_para_in_control_taskID; // @[AESEncModule.scala 20:33]
  wire [3:0] AddRoundKeyModule_io_para_in_control_rounds; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_out_state_0; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_out_state_1; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_out_state_2; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_out_state_3; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_out_state_4; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_out_state_5; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_out_state_6; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_out_state_7; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_out_state_8; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_out_state_9; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_out_state_10; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_out_state_11; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_out_state_12; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_out_state_13; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_out_state_14; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_out_state_15; // @[AESEncModule.scala 20:33]
  wire  AddRoundKeyModule_io_para_out_control_isIdle; // @[AESEncModule.scala 20:33]
  wire [1:0] AddRoundKeyModule_io_para_out_control_keylength; // @[AESEncModule.scala 20:33]
  wire [1:0] AddRoundKeyModule_io_para_out_control_taskID; // @[AESEncModule.scala 20:33]
  wire [3:0] AddRoundKeyModule_io_para_out_control_rounds; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_roundKey_0; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_roundKey_1; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_roundKey_2; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_roundKey_3; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_roundKey_4; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_roundKey_5; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_roundKey_6; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_roundKey_7; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_roundKey_8; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_roundKey_9; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_roundKey_10; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_roundKey_11; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_roundKey_12; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_roundKey_13; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_roundKey_14; // @[AESEncModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_roundKey_15; // @[AESEncModule.scala 20:33]
  wire  SubBytesModule_clock; // @[AESEncModule.scala 21:30]
  wire  SubBytesModule_reset; // @[AESEncModule.scala 21:30]
  wire [7:0] SubBytesModule_io_para_in_state_0; // @[AESEncModule.scala 21:30]
  wire [7:0] SubBytesModule_io_para_in_state_1; // @[AESEncModule.scala 21:30]
  wire [7:0] SubBytesModule_io_para_in_state_2; // @[AESEncModule.scala 21:30]
  wire [7:0] SubBytesModule_io_para_in_state_3; // @[AESEncModule.scala 21:30]
  wire [7:0] SubBytesModule_io_para_in_state_4; // @[AESEncModule.scala 21:30]
  wire [7:0] SubBytesModule_io_para_in_state_5; // @[AESEncModule.scala 21:30]
  wire [7:0] SubBytesModule_io_para_in_state_6; // @[AESEncModule.scala 21:30]
  wire [7:0] SubBytesModule_io_para_in_state_7; // @[AESEncModule.scala 21:30]
  wire [7:0] SubBytesModule_io_para_in_state_8; // @[AESEncModule.scala 21:30]
  wire [7:0] SubBytesModule_io_para_in_state_9; // @[AESEncModule.scala 21:30]
  wire [7:0] SubBytesModule_io_para_in_state_10; // @[AESEncModule.scala 21:30]
  wire [7:0] SubBytesModule_io_para_in_state_11; // @[AESEncModule.scala 21:30]
  wire [7:0] SubBytesModule_io_para_in_state_12; // @[AESEncModule.scala 21:30]
  wire [7:0] SubBytesModule_io_para_in_state_13; // @[AESEncModule.scala 21:30]
  wire [7:0] SubBytesModule_io_para_in_state_14; // @[AESEncModule.scala 21:30]
  wire [7:0] SubBytesModule_io_para_in_state_15; // @[AESEncModule.scala 21:30]
  wire  SubBytesModule_io_para_in_control_isIdle; // @[AESEncModule.scala 21:30]
  wire [1:0] SubBytesModule_io_para_in_control_keylength; // @[AESEncModule.scala 21:30]
  wire [1:0] SubBytesModule_io_para_in_control_taskID; // @[AESEncModule.scala 21:30]
  wire [3:0] SubBytesModule_io_para_in_control_rounds; // @[AESEncModule.scala 21:30]
  wire [7:0] SubBytesModule_io_para_out_state_0; // @[AESEncModule.scala 21:30]
  wire [7:0] SubBytesModule_io_para_out_state_1; // @[AESEncModule.scala 21:30]
  wire [7:0] SubBytesModule_io_para_out_state_2; // @[AESEncModule.scala 21:30]
  wire [7:0] SubBytesModule_io_para_out_state_3; // @[AESEncModule.scala 21:30]
  wire [7:0] SubBytesModule_io_para_out_state_4; // @[AESEncModule.scala 21:30]
  wire [7:0] SubBytesModule_io_para_out_state_5; // @[AESEncModule.scala 21:30]
  wire [7:0] SubBytesModule_io_para_out_state_6; // @[AESEncModule.scala 21:30]
  wire [7:0] SubBytesModule_io_para_out_state_7; // @[AESEncModule.scala 21:30]
  wire [7:0] SubBytesModule_io_para_out_state_8; // @[AESEncModule.scala 21:30]
  wire [7:0] SubBytesModule_io_para_out_state_9; // @[AESEncModule.scala 21:30]
  wire [7:0] SubBytesModule_io_para_out_state_10; // @[AESEncModule.scala 21:30]
  wire [7:0] SubBytesModule_io_para_out_state_11; // @[AESEncModule.scala 21:30]
  wire [7:0] SubBytesModule_io_para_out_state_12; // @[AESEncModule.scala 21:30]
  wire [7:0] SubBytesModule_io_para_out_state_13; // @[AESEncModule.scala 21:30]
  wire [7:0] SubBytesModule_io_para_out_state_14; // @[AESEncModule.scala 21:30]
  wire [7:0] SubBytesModule_io_para_out_state_15; // @[AESEncModule.scala 21:30]
  wire  SubBytesModule_io_para_out_control_isIdle; // @[AESEncModule.scala 21:30]
  wire [1:0] SubBytesModule_io_para_out_control_keylength; // @[AESEncModule.scala 21:30]
  wire [1:0] SubBytesModule_io_para_out_control_taskID; // @[AESEncModule.scala 21:30]
  wire [3:0] SubBytesModule_io_para_out_control_rounds; // @[AESEncModule.scala 21:30]
  wire [7:0] ShiftRowsModule_io_para_in_state_0; // @[AESEncModule.scala 22:31]
  wire [7:0] ShiftRowsModule_io_para_in_state_1; // @[AESEncModule.scala 22:31]
  wire [7:0] ShiftRowsModule_io_para_in_state_2; // @[AESEncModule.scala 22:31]
  wire [7:0] ShiftRowsModule_io_para_in_state_3; // @[AESEncModule.scala 22:31]
  wire [7:0] ShiftRowsModule_io_para_in_state_4; // @[AESEncModule.scala 22:31]
  wire [7:0] ShiftRowsModule_io_para_in_state_5; // @[AESEncModule.scala 22:31]
  wire [7:0] ShiftRowsModule_io_para_in_state_6; // @[AESEncModule.scala 22:31]
  wire [7:0] ShiftRowsModule_io_para_in_state_7; // @[AESEncModule.scala 22:31]
  wire [7:0] ShiftRowsModule_io_para_in_state_8; // @[AESEncModule.scala 22:31]
  wire [7:0] ShiftRowsModule_io_para_in_state_9; // @[AESEncModule.scala 22:31]
  wire [7:0] ShiftRowsModule_io_para_in_state_10; // @[AESEncModule.scala 22:31]
  wire [7:0] ShiftRowsModule_io_para_in_state_11; // @[AESEncModule.scala 22:31]
  wire [7:0] ShiftRowsModule_io_para_in_state_12; // @[AESEncModule.scala 22:31]
  wire [7:0] ShiftRowsModule_io_para_in_state_13; // @[AESEncModule.scala 22:31]
  wire [7:0] ShiftRowsModule_io_para_in_state_14; // @[AESEncModule.scala 22:31]
  wire [7:0] ShiftRowsModule_io_para_in_state_15; // @[AESEncModule.scala 22:31]
  wire  ShiftRowsModule_io_para_in_control_isIdle; // @[AESEncModule.scala 22:31]
  wire [1:0] ShiftRowsModule_io_para_in_control_keylength; // @[AESEncModule.scala 22:31]
  wire [1:0] ShiftRowsModule_io_para_in_control_taskID; // @[AESEncModule.scala 22:31]
  wire [3:0] ShiftRowsModule_io_para_in_control_rounds; // @[AESEncModule.scala 22:31]
  wire [7:0] ShiftRowsModule_io_para_out_state_0; // @[AESEncModule.scala 22:31]
  wire [7:0] ShiftRowsModule_io_para_out_state_1; // @[AESEncModule.scala 22:31]
  wire [7:0] ShiftRowsModule_io_para_out_state_2; // @[AESEncModule.scala 22:31]
  wire [7:0] ShiftRowsModule_io_para_out_state_3; // @[AESEncModule.scala 22:31]
  wire [7:0] ShiftRowsModule_io_para_out_state_4; // @[AESEncModule.scala 22:31]
  wire [7:0] ShiftRowsModule_io_para_out_state_5; // @[AESEncModule.scala 22:31]
  wire [7:0] ShiftRowsModule_io_para_out_state_6; // @[AESEncModule.scala 22:31]
  wire [7:0] ShiftRowsModule_io_para_out_state_7; // @[AESEncModule.scala 22:31]
  wire [7:0] ShiftRowsModule_io_para_out_state_8; // @[AESEncModule.scala 22:31]
  wire [7:0] ShiftRowsModule_io_para_out_state_9; // @[AESEncModule.scala 22:31]
  wire [7:0] ShiftRowsModule_io_para_out_state_10; // @[AESEncModule.scala 22:31]
  wire [7:0] ShiftRowsModule_io_para_out_state_11; // @[AESEncModule.scala 22:31]
  wire [7:0] ShiftRowsModule_io_para_out_state_12; // @[AESEncModule.scala 22:31]
  wire [7:0] ShiftRowsModule_io_para_out_state_13; // @[AESEncModule.scala 22:31]
  wire [7:0] ShiftRowsModule_io_para_out_state_14; // @[AESEncModule.scala 22:31]
  wire [7:0] ShiftRowsModule_io_para_out_state_15; // @[AESEncModule.scala 22:31]
  wire  ShiftRowsModule_io_para_out_control_isIdle; // @[AESEncModule.scala 22:31]
  wire [1:0] ShiftRowsModule_io_para_out_control_keylength; // @[AESEncModule.scala 22:31]
  wire [1:0] ShiftRowsModule_io_para_out_control_taskID; // @[AESEncModule.scala 22:31]
  wire [3:0] ShiftRowsModule_io_para_out_control_rounds; // @[AESEncModule.scala 22:31]
  wire  MixColumnsModule_clock; // @[AESEncModule.scala 23:32]
  wire  MixColumnsModule_reset; // @[AESEncModule.scala 23:32]
  wire [7:0] MixColumnsModule_io_para_in_state_0; // @[AESEncModule.scala 23:32]
  wire [7:0] MixColumnsModule_io_para_in_state_1; // @[AESEncModule.scala 23:32]
  wire [7:0] MixColumnsModule_io_para_in_state_2; // @[AESEncModule.scala 23:32]
  wire [7:0] MixColumnsModule_io_para_in_state_3; // @[AESEncModule.scala 23:32]
  wire [7:0] MixColumnsModule_io_para_in_state_4; // @[AESEncModule.scala 23:32]
  wire [7:0] MixColumnsModule_io_para_in_state_5; // @[AESEncModule.scala 23:32]
  wire [7:0] MixColumnsModule_io_para_in_state_6; // @[AESEncModule.scala 23:32]
  wire [7:0] MixColumnsModule_io_para_in_state_7; // @[AESEncModule.scala 23:32]
  wire [7:0] MixColumnsModule_io_para_in_state_8; // @[AESEncModule.scala 23:32]
  wire [7:0] MixColumnsModule_io_para_in_state_9; // @[AESEncModule.scala 23:32]
  wire [7:0] MixColumnsModule_io_para_in_state_10; // @[AESEncModule.scala 23:32]
  wire [7:0] MixColumnsModule_io_para_in_state_11; // @[AESEncModule.scala 23:32]
  wire [7:0] MixColumnsModule_io_para_in_state_12; // @[AESEncModule.scala 23:32]
  wire [7:0] MixColumnsModule_io_para_in_state_13; // @[AESEncModule.scala 23:32]
  wire [7:0] MixColumnsModule_io_para_in_state_14; // @[AESEncModule.scala 23:32]
  wire [7:0] MixColumnsModule_io_para_in_state_15; // @[AESEncModule.scala 23:32]
  wire  MixColumnsModule_io_para_in_control_isIdle; // @[AESEncModule.scala 23:32]
  wire [1:0] MixColumnsModule_io_para_in_control_keylength; // @[AESEncModule.scala 23:32]
  wire [1:0] MixColumnsModule_io_para_in_control_taskID; // @[AESEncModule.scala 23:32]
  wire [3:0] MixColumnsModule_io_para_in_control_rounds; // @[AESEncModule.scala 23:32]
  wire [7:0] MixColumnsModule_io_para_out_state_0; // @[AESEncModule.scala 23:32]
  wire [7:0] MixColumnsModule_io_para_out_state_1; // @[AESEncModule.scala 23:32]
  wire [7:0] MixColumnsModule_io_para_out_state_2; // @[AESEncModule.scala 23:32]
  wire [7:0] MixColumnsModule_io_para_out_state_3; // @[AESEncModule.scala 23:32]
  wire [7:0] MixColumnsModule_io_para_out_state_4; // @[AESEncModule.scala 23:32]
  wire [7:0] MixColumnsModule_io_para_out_state_5; // @[AESEncModule.scala 23:32]
  wire [7:0] MixColumnsModule_io_para_out_state_6; // @[AESEncModule.scala 23:32]
  wire [7:0] MixColumnsModule_io_para_out_state_7; // @[AESEncModule.scala 23:32]
  wire [7:0] MixColumnsModule_io_para_out_state_8; // @[AESEncModule.scala 23:32]
  wire [7:0] MixColumnsModule_io_para_out_state_9; // @[AESEncModule.scala 23:32]
  wire [7:0] MixColumnsModule_io_para_out_state_10; // @[AESEncModule.scala 23:32]
  wire [7:0] MixColumnsModule_io_para_out_state_11; // @[AESEncModule.scala 23:32]
  wire [7:0] MixColumnsModule_io_para_out_state_12; // @[AESEncModule.scala 23:32]
  wire [7:0] MixColumnsModule_io_para_out_state_13; // @[AESEncModule.scala 23:32]
  wire [7:0] MixColumnsModule_io_para_out_state_14; // @[AESEncModule.scala 23:32]
  wire [7:0] MixColumnsModule_io_para_out_state_15; // @[AESEncModule.scala 23:32]
  wire  MixColumnsModule_io_para_out_control_isIdle; // @[AESEncModule.scala 23:32]
  wire [1:0] MixColumnsModule_io_para_out_control_keylength; // @[AESEncModule.scala 23:32]
  wire [1:0] MixColumnsModule_io_para_out_control_taskID; // @[AESEncModule.scala 23:32]
  wire [3:0] MixColumnsModule_io_para_out_control_rounds; // @[AESEncModule.scala 23:32]
  reg [7:0] Buffer_state_0; // @[AESEncModule.scala 25:23]
  reg [7:0] Buffer_state_1; // @[AESEncModule.scala 25:23]
  reg [7:0] Buffer_state_2; // @[AESEncModule.scala 25:23]
  reg [7:0] Buffer_state_3; // @[AESEncModule.scala 25:23]
  reg [7:0] Buffer_state_4; // @[AESEncModule.scala 25:23]
  reg [7:0] Buffer_state_5; // @[AESEncModule.scala 25:23]
  reg [7:0] Buffer_state_6; // @[AESEncModule.scala 25:23]
  reg [7:0] Buffer_state_7; // @[AESEncModule.scala 25:23]
  reg [7:0] Buffer_state_8; // @[AESEncModule.scala 25:23]
  reg [7:0] Buffer_state_9; // @[AESEncModule.scala 25:23]
  reg [7:0] Buffer_state_10; // @[AESEncModule.scala 25:23]
  reg [7:0] Buffer_state_11; // @[AESEncModule.scala 25:23]
  reg [7:0] Buffer_state_12; // @[AESEncModule.scala 25:23]
  reg [7:0] Buffer_state_13; // @[AESEncModule.scala 25:23]
  reg [7:0] Buffer_state_14; // @[AESEncModule.scala 25:23]
  reg [7:0] Buffer_state_15; // @[AESEncModule.scala 25:23]
  reg  Buffer_control_isIdle; // @[AESEncModule.scala 25:23]
  reg [1:0] Buffer_control_keylength; // @[AESEncModule.scala 25:23]
  reg [1:0] Buffer_control_taskID; // @[AESEncModule.scala 25:23]
  reg [3:0] Buffer_control_rounds; // @[AESEncModule.scala 25:23]
  reg [7:0] InputDelay_state_0; // @[AESEncModule.scala 26:27]
  reg [7:0] InputDelay_state_1; // @[AESEncModule.scala 26:27]
  reg [7:0] InputDelay_state_2; // @[AESEncModule.scala 26:27]
  reg [7:0] InputDelay_state_3; // @[AESEncModule.scala 26:27]
  reg [7:0] InputDelay_state_4; // @[AESEncModule.scala 26:27]
  reg [7:0] InputDelay_state_5; // @[AESEncModule.scala 26:27]
  reg [7:0] InputDelay_state_6; // @[AESEncModule.scala 26:27]
  reg [7:0] InputDelay_state_7; // @[AESEncModule.scala 26:27]
  reg [7:0] InputDelay_state_8; // @[AESEncModule.scala 26:27]
  reg [7:0] InputDelay_state_9; // @[AESEncModule.scala 26:27]
  reg [7:0] InputDelay_state_10; // @[AESEncModule.scala 26:27]
  reg [7:0] InputDelay_state_11; // @[AESEncModule.scala 26:27]
  reg [7:0] InputDelay_state_12; // @[AESEncModule.scala 26:27]
  reg [7:0] InputDelay_state_13; // @[AESEncModule.scala 26:27]
  reg [7:0] InputDelay_state_14; // @[AESEncModule.scala 26:27]
  reg [7:0] InputDelay_state_15; // @[AESEncModule.scala 26:27]
  reg  InputDelay_control_isIdle; // @[AESEncModule.scala 26:27]
  reg [1:0] InputDelay_control_taskID; // @[AESEncModule.scala 26:27]
  reg [3:0] InputDelay_control_rounds; // @[AESEncModule.scala 26:27]
  wire [3:0] RoundAddsOne_control_rounds = AddRoundKeyModule_io_para_out_control_rounds + 4'h1; // @[AESEncModule.scala 31:79]
  wire [3:0] _TmpValue_T_1 = AddRoundKeyModule_io_para_out_control_rounds - 4'ha; // @[AESEncModule.scala 28:67]
  wire [3:0] _TmpValue_T_2 = _TmpValue_T_1 / 2'h2; // @[AESEncModule.scala 28:75]
  wire [3:0] _GEN_23 = {{2'd0}, AddRoundKeyModule_io_para_out_control_keylength}; // @[AESEncModule.scala 28:81]
  wire  _TmpValue_T_3 = _TmpValue_T_2 == _GEN_23; // @[AESEncModule.scala 28:81]
  wire [7:0] RoundAddsOne_state_0 = AddRoundKeyModule_io_para_out_state_0; // @[AESEncModule.scala 18:26 30:16]
  wire [7:0] _TmpValue_T_4_state_0 = _TmpValue_T_3 ? 8'h0 : RoundAddsOne_state_0; // @[AESEncModule.scala 34:33]
  wire [7:0] RoundAddsOne_state_1 = AddRoundKeyModule_io_para_out_state_1; // @[AESEncModule.scala 18:26 30:16]
  wire [7:0] _TmpValue_T_4_state_1 = _TmpValue_T_3 ? 8'h0 : RoundAddsOne_state_1; // @[AESEncModule.scala 34:33]
  wire [7:0] RoundAddsOne_state_2 = AddRoundKeyModule_io_para_out_state_2; // @[AESEncModule.scala 18:26 30:16]
  wire [7:0] _TmpValue_T_4_state_2 = _TmpValue_T_3 ? 8'h0 : RoundAddsOne_state_2; // @[AESEncModule.scala 34:33]
  wire [7:0] RoundAddsOne_state_3 = AddRoundKeyModule_io_para_out_state_3; // @[AESEncModule.scala 18:26 30:16]
  wire [7:0] _TmpValue_T_4_state_3 = _TmpValue_T_3 ? 8'h0 : RoundAddsOne_state_3; // @[AESEncModule.scala 34:33]
  wire [7:0] RoundAddsOne_state_4 = AddRoundKeyModule_io_para_out_state_4; // @[AESEncModule.scala 18:26 30:16]
  wire [7:0] _TmpValue_T_4_state_4 = _TmpValue_T_3 ? 8'h0 : RoundAddsOne_state_4; // @[AESEncModule.scala 34:33]
  wire [7:0] RoundAddsOne_state_5 = AddRoundKeyModule_io_para_out_state_5; // @[AESEncModule.scala 18:26 30:16]
  wire [7:0] _TmpValue_T_4_state_5 = _TmpValue_T_3 ? 8'h0 : RoundAddsOne_state_5; // @[AESEncModule.scala 34:33]
  wire [7:0] RoundAddsOne_state_6 = AddRoundKeyModule_io_para_out_state_6; // @[AESEncModule.scala 18:26 30:16]
  wire [7:0] _TmpValue_T_4_state_6 = _TmpValue_T_3 ? 8'h0 : RoundAddsOne_state_6; // @[AESEncModule.scala 34:33]
  wire [7:0] RoundAddsOne_state_7 = AddRoundKeyModule_io_para_out_state_7; // @[AESEncModule.scala 18:26 30:16]
  wire [7:0] _TmpValue_T_4_state_7 = _TmpValue_T_3 ? 8'h0 : RoundAddsOne_state_7; // @[AESEncModule.scala 34:33]
  wire [7:0] RoundAddsOne_state_8 = AddRoundKeyModule_io_para_out_state_8; // @[AESEncModule.scala 18:26 30:16]
  wire [7:0] _TmpValue_T_4_state_8 = _TmpValue_T_3 ? 8'h0 : RoundAddsOne_state_8; // @[AESEncModule.scala 34:33]
  wire [7:0] RoundAddsOne_state_9 = AddRoundKeyModule_io_para_out_state_9; // @[AESEncModule.scala 18:26 30:16]
  wire [7:0] _TmpValue_T_4_state_9 = _TmpValue_T_3 ? 8'h0 : RoundAddsOne_state_9; // @[AESEncModule.scala 34:33]
  wire [7:0] RoundAddsOne_state_10 = AddRoundKeyModule_io_para_out_state_10; // @[AESEncModule.scala 18:26 30:16]
  wire [7:0] _TmpValue_T_4_state_10 = _TmpValue_T_3 ? 8'h0 : RoundAddsOne_state_10; // @[AESEncModule.scala 34:33]
  wire [7:0] RoundAddsOne_state_11 = AddRoundKeyModule_io_para_out_state_11; // @[AESEncModule.scala 18:26 30:16]
  wire [7:0] _TmpValue_T_4_state_11 = _TmpValue_T_3 ? 8'h0 : RoundAddsOne_state_11; // @[AESEncModule.scala 34:33]
  wire [7:0] RoundAddsOne_state_12 = AddRoundKeyModule_io_para_out_state_12; // @[AESEncModule.scala 18:26 30:16]
  wire [7:0] _TmpValue_T_4_state_12 = _TmpValue_T_3 ? 8'h0 : RoundAddsOne_state_12; // @[AESEncModule.scala 34:33]
  wire [7:0] RoundAddsOne_state_13 = AddRoundKeyModule_io_para_out_state_13; // @[AESEncModule.scala 18:26 30:16]
  wire [7:0] _TmpValue_T_4_state_13 = _TmpValue_T_3 ? 8'h0 : RoundAddsOne_state_13; // @[AESEncModule.scala 34:33]
  wire [7:0] RoundAddsOne_state_14 = AddRoundKeyModule_io_para_out_state_14; // @[AESEncModule.scala 18:26 30:16]
  wire [7:0] _TmpValue_T_4_state_14 = _TmpValue_T_3 ? 8'h0 : RoundAddsOne_state_14; // @[AESEncModule.scala 34:33]
  wire [7:0] RoundAddsOne_state_15 = AddRoundKeyModule_io_para_out_state_15; // @[AESEncModule.scala 18:26 30:16]
  wire [7:0] _TmpValue_T_4_state_15 = _TmpValue_T_3 ? 8'h0 : RoundAddsOne_state_15; // @[AESEncModule.scala 34:33]
  wire  RoundAddsOne_control_isIdle = AddRoundKeyModule_io_para_out_control_isIdle; // @[AESEncModule.scala 18:26 30:16]
  wire  _TmpValue_T_4_control_isIdle = _TmpValue_T_3 | RoundAddsOne_control_isIdle; // @[AESEncModule.scala 34:33]
  wire [1:0] RoundAddsOne_control_keylength = AddRoundKeyModule_io_para_out_control_keylength; // @[AESEncModule.scala 18:26 30:16]
  wire [1:0] _TmpValue_T_4_control_keylength = _TmpValue_T_3 ? 2'h0 : RoundAddsOne_control_keylength; // @[AESEncModule.scala 34:33]
  wire [1:0] RoundAddsOne_control_taskID = AddRoundKeyModule_io_para_out_control_taskID; // @[AESEncModule.scala 18:26 30:16]
  wire [1:0] _TmpValue_T_4_control_taskID = _TmpValue_T_3 ? 2'h0 : RoundAddsOne_control_taskID; // @[AESEncModule.scala 34:33]
  wire [3:0] _TmpValue_T_4_control_rounds = _TmpValue_T_3 ? 4'h0 : RoundAddsOne_control_rounds; // @[AESEncModule.scala 34:33]
  wire  _T = io_input_ready & io_input_valid; // @[Decoupled.scala 50:35]
  reg  r; // @[Reg.scala 16:16]
  wire [3:0] _AddRoundKeyModule_io_para_in_T_1 = Buffer_control_rounds - 4'ha; // @[AESEncModule.scala 28:67]
  wire [3:0] _AddRoundKeyModule_io_para_in_T_2 = _AddRoundKeyModule_io_para_in_T_1 / 2'h2; // @[AESEncModule.scala 28:75]
  wire [3:0] _GEN_24 = {{2'd0}, Buffer_control_keylength}; // @[AESEncModule.scala 28:81]
  wire  _AddRoundKeyModule_io_para_in_T_3 = _AddRoundKeyModule_io_para_in_T_2 == _GEN_24; // @[AESEncModule.scala 28:81]
  wire [7:0] _AddRoundKeyModule_io_para_in_T_4_state_0 = _AddRoundKeyModule_io_para_in_T_3 ? Buffer_state_0 :
    MixColumnsModule_io_para_out_state_0; // @[AESEncModule.scala 55:40]
  wire [7:0] _AddRoundKeyModule_io_para_in_T_4_state_1 = _AddRoundKeyModule_io_para_in_T_3 ? Buffer_state_1 :
    MixColumnsModule_io_para_out_state_1; // @[AESEncModule.scala 55:40]
  wire [7:0] _AddRoundKeyModule_io_para_in_T_4_state_2 = _AddRoundKeyModule_io_para_in_T_3 ? Buffer_state_2 :
    MixColumnsModule_io_para_out_state_2; // @[AESEncModule.scala 55:40]
  wire [7:0] _AddRoundKeyModule_io_para_in_T_4_state_3 = _AddRoundKeyModule_io_para_in_T_3 ? Buffer_state_3 :
    MixColumnsModule_io_para_out_state_3; // @[AESEncModule.scala 55:40]
  wire [7:0] _AddRoundKeyModule_io_para_in_T_4_state_4 = _AddRoundKeyModule_io_para_in_T_3 ? Buffer_state_4 :
    MixColumnsModule_io_para_out_state_4; // @[AESEncModule.scala 55:40]
  wire [7:0] _AddRoundKeyModule_io_para_in_T_4_state_5 = _AddRoundKeyModule_io_para_in_T_3 ? Buffer_state_5 :
    MixColumnsModule_io_para_out_state_5; // @[AESEncModule.scala 55:40]
  wire [7:0] _AddRoundKeyModule_io_para_in_T_4_state_6 = _AddRoundKeyModule_io_para_in_T_3 ? Buffer_state_6 :
    MixColumnsModule_io_para_out_state_6; // @[AESEncModule.scala 55:40]
  wire [7:0] _AddRoundKeyModule_io_para_in_T_4_state_7 = _AddRoundKeyModule_io_para_in_T_3 ? Buffer_state_7 :
    MixColumnsModule_io_para_out_state_7; // @[AESEncModule.scala 55:40]
  wire [7:0] _AddRoundKeyModule_io_para_in_T_4_state_8 = _AddRoundKeyModule_io_para_in_T_3 ? Buffer_state_8 :
    MixColumnsModule_io_para_out_state_8; // @[AESEncModule.scala 55:40]
  wire [7:0] _AddRoundKeyModule_io_para_in_T_4_state_9 = _AddRoundKeyModule_io_para_in_T_3 ? Buffer_state_9 :
    MixColumnsModule_io_para_out_state_9; // @[AESEncModule.scala 55:40]
  wire [7:0] _AddRoundKeyModule_io_para_in_T_4_state_10 = _AddRoundKeyModule_io_para_in_T_3 ? Buffer_state_10 :
    MixColumnsModule_io_para_out_state_10; // @[AESEncModule.scala 55:40]
  wire [7:0] _AddRoundKeyModule_io_para_in_T_4_state_11 = _AddRoundKeyModule_io_para_in_T_3 ? Buffer_state_11 :
    MixColumnsModule_io_para_out_state_11; // @[AESEncModule.scala 55:40]
  wire [7:0] _AddRoundKeyModule_io_para_in_T_4_state_12 = _AddRoundKeyModule_io_para_in_T_3 ? Buffer_state_12 :
    MixColumnsModule_io_para_out_state_12; // @[AESEncModule.scala 55:40]
  wire [7:0] _AddRoundKeyModule_io_para_in_T_4_state_13 = _AddRoundKeyModule_io_para_in_T_3 ? Buffer_state_13 :
    MixColumnsModule_io_para_out_state_13; // @[AESEncModule.scala 55:40]
  wire [7:0] _AddRoundKeyModule_io_para_in_T_4_state_14 = _AddRoundKeyModule_io_para_in_T_3 ? Buffer_state_14 :
    MixColumnsModule_io_para_out_state_14; // @[AESEncModule.scala 55:40]
  wire [7:0] _AddRoundKeyModule_io_para_in_T_4_state_15 = _AddRoundKeyModule_io_para_in_T_3 ? Buffer_state_15 :
    MixColumnsModule_io_para_out_state_15; // @[AESEncModule.scala 55:40]
  wire  _AddRoundKeyModule_io_para_in_T_4_control_isIdle = _AddRoundKeyModule_io_para_in_T_3 ? Buffer_control_isIdle :
    MixColumnsModule_io_para_out_control_isIdle; // @[AESEncModule.scala 55:40]
  wire [1:0] _AddRoundKeyModule_io_para_in_T_4_control_keylength = _AddRoundKeyModule_io_para_in_T_3 ?
    Buffer_control_keylength : MixColumnsModule_io_para_out_control_keylength; // @[AESEncModule.scala 55:40]
  wire [1:0] _AddRoundKeyModule_io_para_in_T_4_control_taskID = _AddRoundKeyModule_io_para_in_T_3 ?
    Buffer_control_taskID : MixColumnsModule_io_para_out_control_taskID; // @[AESEncModule.scala 55:40]
  wire [3:0] _AddRoundKeyModule_io_para_in_T_4_control_rounds = _AddRoundKeyModule_io_para_in_T_3 ?
    Buffer_control_rounds : MixColumnsModule_io_para_out_control_rounds; // @[AESEncModule.scala 55:40]
  AddRoundKey AddRoundKeyModule ( // @[AESEncModule.scala 20:33]
    .io_para_in_state_0(AddRoundKeyModule_io_para_in_state_0),
    .io_para_in_state_1(AddRoundKeyModule_io_para_in_state_1),
    .io_para_in_state_2(AddRoundKeyModule_io_para_in_state_2),
    .io_para_in_state_3(AddRoundKeyModule_io_para_in_state_3),
    .io_para_in_state_4(AddRoundKeyModule_io_para_in_state_4),
    .io_para_in_state_5(AddRoundKeyModule_io_para_in_state_5),
    .io_para_in_state_6(AddRoundKeyModule_io_para_in_state_6),
    .io_para_in_state_7(AddRoundKeyModule_io_para_in_state_7),
    .io_para_in_state_8(AddRoundKeyModule_io_para_in_state_8),
    .io_para_in_state_9(AddRoundKeyModule_io_para_in_state_9),
    .io_para_in_state_10(AddRoundKeyModule_io_para_in_state_10),
    .io_para_in_state_11(AddRoundKeyModule_io_para_in_state_11),
    .io_para_in_state_12(AddRoundKeyModule_io_para_in_state_12),
    .io_para_in_state_13(AddRoundKeyModule_io_para_in_state_13),
    .io_para_in_state_14(AddRoundKeyModule_io_para_in_state_14),
    .io_para_in_state_15(AddRoundKeyModule_io_para_in_state_15),
    .io_para_in_control_isIdle(AddRoundKeyModule_io_para_in_control_isIdle),
    .io_para_in_control_keylength(AddRoundKeyModule_io_para_in_control_keylength),
    .io_para_in_control_taskID(AddRoundKeyModule_io_para_in_control_taskID),
    .io_para_in_control_rounds(AddRoundKeyModule_io_para_in_control_rounds),
    .io_para_out_state_0(AddRoundKeyModule_io_para_out_state_0),
    .io_para_out_state_1(AddRoundKeyModule_io_para_out_state_1),
    .io_para_out_state_2(AddRoundKeyModule_io_para_out_state_2),
    .io_para_out_state_3(AddRoundKeyModule_io_para_out_state_3),
    .io_para_out_state_4(AddRoundKeyModule_io_para_out_state_4),
    .io_para_out_state_5(AddRoundKeyModule_io_para_out_state_5),
    .io_para_out_state_6(AddRoundKeyModule_io_para_out_state_6),
    .io_para_out_state_7(AddRoundKeyModule_io_para_out_state_7),
    .io_para_out_state_8(AddRoundKeyModule_io_para_out_state_8),
    .io_para_out_state_9(AddRoundKeyModule_io_para_out_state_9),
    .io_para_out_state_10(AddRoundKeyModule_io_para_out_state_10),
    .io_para_out_state_11(AddRoundKeyModule_io_para_out_state_11),
    .io_para_out_state_12(AddRoundKeyModule_io_para_out_state_12),
    .io_para_out_state_13(AddRoundKeyModule_io_para_out_state_13),
    .io_para_out_state_14(AddRoundKeyModule_io_para_out_state_14),
    .io_para_out_state_15(AddRoundKeyModule_io_para_out_state_15),
    .io_para_out_control_isIdle(AddRoundKeyModule_io_para_out_control_isIdle),
    .io_para_out_control_keylength(AddRoundKeyModule_io_para_out_control_keylength),
    .io_para_out_control_taskID(AddRoundKeyModule_io_para_out_control_taskID),
    .io_para_out_control_rounds(AddRoundKeyModule_io_para_out_control_rounds),
    .io_roundKey_0(AddRoundKeyModule_io_roundKey_0),
    .io_roundKey_1(AddRoundKeyModule_io_roundKey_1),
    .io_roundKey_2(AddRoundKeyModule_io_roundKey_2),
    .io_roundKey_3(AddRoundKeyModule_io_roundKey_3),
    .io_roundKey_4(AddRoundKeyModule_io_roundKey_4),
    .io_roundKey_5(AddRoundKeyModule_io_roundKey_5),
    .io_roundKey_6(AddRoundKeyModule_io_roundKey_6),
    .io_roundKey_7(AddRoundKeyModule_io_roundKey_7),
    .io_roundKey_8(AddRoundKeyModule_io_roundKey_8),
    .io_roundKey_9(AddRoundKeyModule_io_roundKey_9),
    .io_roundKey_10(AddRoundKeyModule_io_roundKey_10),
    .io_roundKey_11(AddRoundKeyModule_io_roundKey_11),
    .io_roundKey_12(AddRoundKeyModule_io_roundKey_12),
    .io_roundKey_13(AddRoundKeyModule_io_roundKey_13),
    .io_roundKey_14(AddRoundKeyModule_io_roundKey_14),
    .io_roundKey_15(AddRoundKeyModule_io_roundKey_15)
  );
  SubBytes SubBytesModule ( // @[AESEncModule.scala 21:30]
    .clock(SubBytesModule_clock),
    .reset(SubBytesModule_reset),
    .io_para_in_state_0(SubBytesModule_io_para_in_state_0),
    .io_para_in_state_1(SubBytesModule_io_para_in_state_1),
    .io_para_in_state_2(SubBytesModule_io_para_in_state_2),
    .io_para_in_state_3(SubBytesModule_io_para_in_state_3),
    .io_para_in_state_4(SubBytesModule_io_para_in_state_4),
    .io_para_in_state_5(SubBytesModule_io_para_in_state_5),
    .io_para_in_state_6(SubBytesModule_io_para_in_state_6),
    .io_para_in_state_7(SubBytesModule_io_para_in_state_7),
    .io_para_in_state_8(SubBytesModule_io_para_in_state_8),
    .io_para_in_state_9(SubBytesModule_io_para_in_state_9),
    .io_para_in_state_10(SubBytesModule_io_para_in_state_10),
    .io_para_in_state_11(SubBytesModule_io_para_in_state_11),
    .io_para_in_state_12(SubBytesModule_io_para_in_state_12),
    .io_para_in_state_13(SubBytesModule_io_para_in_state_13),
    .io_para_in_state_14(SubBytesModule_io_para_in_state_14),
    .io_para_in_state_15(SubBytesModule_io_para_in_state_15),
    .io_para_in_control_isIdle(SubBytesModule_io_para_in_control_isIdle),
    .io_para_in_control_keylength(SubBytesModule_io_para_in_control_keylength),
    .io_para_in_control_taskID(SubBytesModule_io_para_in_control_taskID),
    .io_para_in_control_rounds(SubBytesModule_io_para_in_control_rounds),
    .io_para_out_state_0(SubBytesModule_io_para_out_state_0),
    .io_para_out_state_1(SubBytesModule_io_para_out_state_1),
    .io_para_out_state_2(SubBytesModule_io_para_out_state_2),
    .io_para_out_state_3(SubBytesModule_io_para_out_state_3),
    .io_para_out_state_4(SubBytesModule_io_para_out_state_4),
    .io_para_out_state_5(SubBytesModule_io_para_out_state_5),
    .io_para_out_state_6(SubBytesModule_io_para_out_state_6),
    .io_para_out_state_7(SubBytesModule_io_para_out_state_7),
    .io_para_out_state_8(SubBytesModule_io_para_out_state_8),
    .io_para_out_state_9(SubBytesModule_io_para_out_state_9),
    .io_para_out_state_10(SubBytesModule_io_para_out_state_10),
    .io_para_out_state_11(SubBytesModule_io_para_out_state_11),
    .io_para_out_state_12(SubBytesModule_io_para_out_state_12),
    .io_para_out_state_13(SubBytesModule_io_para_out_state_13),
    .io_para_out_state_14(SubBytesModule_io_para_out_state_14),
    .io_para_out_state_15(SubBytesModule_io_para_out_state_15),
    .io_para_out_control_isIdle(SubBytesModule_io_para_out_control_isIdle),
    .io_para_out_control_keylength(SubBytesModule_io_para_out_control_keylength),
    .io_para_out_control_taskID(SubBytesModule_io_para_out_control_taskID),
    .io_para_out_control_rounds(SubBytesModule_io_para_out_control_rounds)
  );
  ShiftRows ShiftRowsModule ( // @[AESEncModule.scala 22:31]
    .io_para_in_state_0(ShiftRowsModule_io_para_in_state_0),
    .io_para_in_state_1(ShiftRowsModule_io_para_in_state_1),
    .io_para_in_state_2(ShiftRowsModule_io_para_in_state_2),
    .io_para_in_state_3(ShiftRowsModule_io_para_in_state_3),
    .io_para_in_state_4(ShiftRowsModule_io_para_in_state_4),
    .io_para_in_state_5(ShiftRowsModule_io_para_in_state_5),
    .io_para_in_state_6(ShiftRowsModule_io_para_in_state_6),
    .io_para_in_state_7(ShiftRowsModule_io_para_in_state_7),
    .io_para_in_state_8(ShiftRowsModule_io_para_in_state_8),
    .io_para_in_state_9(ShiftRowsModule_io_para_in_state_9),
    .io_para_in_state_10(ShiftRowsModule_io_para_in_state_10),
    .io_para_in_state_11(ShiftRowsModule_io_para_in_state_11),
    .io_para_in_state_12(ShiftRowsModule_io_para_in_state_12),
    .io_para_in_state_13(ShiftRowsModule_io_para_in_state_13),
    .io_para_in_state_14(ShiftRowsModule_io_para_in_state_14),
    .io_para_in_state_15(ShiftRowsModule_io_para_in_state_15),
    .io_para_in_control_isIdle(ShiftRowsModule_io_para_in_control_isIdle),
    .io_para_in_control_keylength(ShiftRowsModule_io_para_in_control_keylength),
    .io_para_in_control_taskID(ShiftRowsModule_io_para_in_control_taskID),
    .io_para_in_control_rounds(ShiftRowsModule_io_para_in_control_rounds),
    .io_para_out_state_0(ShiftRowsModule_io_para_out_state_0),
    .io_para_out_state_1(ShiftRowsModule_io_para_out_state_1),
    .io_para_out_state_2(ShiftRowsModule_io_para_out_state_2),
    .io_para_out_state_3(ShiftRowsModule_io_para_out_state_3),
    .io_para_out_state_4(ShiftRowsModule_io_para_out_state_4),
    .io_para_out_state_5(ShiftRowsModule_io_para_out_state_5),
    .io_para_out_state_6(ShiftRowsModule_io_para_out_state_6),
    .io_para_out_state_7(ShiftRowsModule_io_para_out_state_7),
    .io_para_out_state_8(ShiftRowsModule_io_para_out_state_8),
    .io_para_out_state_9(ShiftRowsModule_io_para_out_state_9),
    .io_para_out_state_10(ShiftRowsModule_io_para_out_state_10),
    .io_para_out_state_11(ShiftRowsModule_io_para_out_state_11),
    .io_para_out_state_12(ShiftRowsModule_io_para_out_state_12),
    .io_para_out_state_13(ShiftRowsModule_io_para_out_state_13),
    .io_para_out_state_14(ShiftRowsModule_io_para_out_state_14),
    .io_para_out_state_15(ShiftRowsModule_io_para_out_state_15),
    .io_para_out_control_isIdle(ShiftRowsModule_io_para_out_control_isIdle),
    .io_para_out_control_keylength(ShiftRowsModule_io_para_out_control_keylength),
    .io_para_out_control_taskID(ShiftRowsModule_io_para_out_control_taskID),
    .io_para_out_control_rounds(ShiftRowsModule_io_para_out_control_rounds)
  );
  MixColumns MixColumnsModule ( // @[AESEncModule.scala 23:32]
    .clock(MixColumnsModule_clock),
    .reset(MixColumnsModule_reset),
    .io_para_in_state_0(MixColumnsModule_io_para_in_state_0),
    .io_para_in_state_1(MixColumnsModule_io_para_in_state_1),
    .io_para_in_state_2(MixColumnsModule_io_para_in_state_2),
    .io_para_in_state_3(MixColumnsModule_io_para_in_state_3),
    .io_para_in_state_4(MixColumnsModule_io_para_in_state_4),
    .io_para_in_state_5(MixColumnsModule_io_para_in_state_5),
    .io_para_in_state_6(MixColumnsModule_io_para_in_state_6),
    .io_para_in_state_7(MixColumnsModule_io_para_in_state_7),
    .io_para_in_state_8(MixColumnsModule_io_para_in_state_8),
    .io_para_in_state_9(MixColumnsModule_io_para_in_state_9),
    .io_para_in_state_10(MixColumnsModule_io_para_in_state_10),
    .io_para_in_state_11(MixColumnsModule_io_para_in_state_11),
    .io_para_in_state_12(MixColumnsModule_io_para_in_state_12),
    .io_para_in_state_13(MixColumnsModule_io_para_in_state_13),
    .io_para_in_state_14(MixColumnsModule_io_para_in_state_14),
    .io_para_in_state_15(MixColumnsModule_io_para_in_state_15),
    .io_para_in_control_isIdle(MixColumnsModule_io_para_in_control_isIdle),
    .io_para_in_control_keylength(MixColumnsModule_io_para_in_control_keylength),
    .io_para_in_control_taskID(MixColumnsModule_io_para_in_control_taskID),
    .io_para_in_control_rounds(MixColumnsModule_io_para_in_control_rounds),
    .io_para_out_state_0(MixColumnsModule_io_para_out_state_0),
    .io_para_out_state_1(MixColumnsModule_io_para_out_state_1),
    .io_para_out_state_2(MixColumnsModule_io_para_out_state_2),
    .io_para_out_state_3(MixColumnsModule_io_para_out_state_3),
    .io_para_out_state_4(MixColumnsModule_io_para_out_state_4),
    .io_para_out_state_5(MixColumnsModule_io_para_out_state_5),
    .io_para_out_state_6(MixColumnsModule_io_para_out_state_6),
    .io_para_out_state_7(MixColumnsModule_io_para_out_state_7),
    .io_para_out_state_8(MixColumnsModule_io_para_out_state_8),
    .io_para_out_state_9(MixColumnsModule_io_para_out_state_9),
    .io_para_out_state_10(MixColumnsModule_io_para_out_state_10),
    .io_para_out_state_11(MixColumnsModule_io_para_out_state_11),
    .io_para_out_state_12(MixColumnsModule_io_para_out_state_12),
    .io_para_out_state_13(MixColumnsModule_io_para_out_state_13),
    .io_para_out_state_14(MixColumnsModule_io_para_out_state_14),
    .io_para_out_state_15(MixColumnsModule_io_para_out_state_15),
    .io_para_out_control_isIdle(MixColumnsModule_io_para_out_control_isIdle),
    .io_para_out_control_keylength(MixColumnsModule_io_para_out_control_keylength),
    .io_para_out_control_taskID(MixColumnsModule_io_para_out_control_taskID),
    .io_para_out_control_rounds(MixColumnsModule_io_para_out_control_rounds)
  );
  assign io_input_ready = MixColumnsModule_io_para_in_control_isIdle; // @[AESEncModule.scala 65:18]
  assign io_output_state_valid = _TmpValue_T_2 == _GEN_23; // @[AESEncModule.scala 28:81]
  assign io_output_state_bits_0 = AddRoundKeyModule_io_para_out_state_0; // @[AESEncModule.scala 61:24]
  assign io_output_state_bits_1 = AddRoundKeyModule_io_para_out_state_1; // @[AESEncModule.scala 61:24]
  assign io_output_state_bits_2 = AddRoundKeyModule_io_para_out_state_2; // @[AESEncModule.scala 61:24]
  assign io_output_state_bits_3 = AddRoundKeyModule_io_para_out_state_3; // @[AESEncModule.scala 61:24]
  assign io_output_state_bits_4 = AddRoundKeyModule_io_para_out_state_4; // @[AESEncModule.scala 61:24]
  assign io_output_state_bits_5 = AddRoundKeyModule_io_para_out_state_5; // @[AESEncModule.scala 61:24]
  assign io_output_state_bits_6 = AddRoundKeyModule_io_para_out_state_6; // @[AESEncModule.scala 61:24]
  assign io_output_state_bits_7 = AddRoundKeyModule_io_para_out_state_7; // @[AESEncModule.scala 61:24]
  assign io_output_state_bits_8 = AddRoundKeyModule_io_para_out_state_8; // @[AESEncModule.scala 61:24]
  assign io_output_state_bits_9 = AddRoundKeyModule_io_para_out_state_9; // @[AESEncModule.scala 61:24]
  assign io_output_state_bits_10 = AddRoundKeyModule_io_para_out_state_10; // @[AESEncModule.scala 61:24]
  assign io_output_state_bits_11 = AddRoundKeyModule_io_para_out_state_11; // @[AESEncModule.scala 61:24]
  assign io_output_state_bits_12 = AddRoundKeyModule_io_para_out_state_12; // @[AESEncModule.scala 61:24]
  assign io_output_state_bits_13 = AddRoundKeyModule_io_para_out_state_13; // @[AESEncModule.scala 61:24]
  assign io_output_state_bits_14 = AddRoundKeyModule_io_para_out_state_14; // @[AESEncModule.scala 61:24]
  assign io_output_state_bits_15 = AddRoundKeyModule_io_para_out_state_15; // @[AESEncModule.scala 61:24]
  assign io_read_task = _T ? io_input_bits_control_taskID : ShiftRowsModule_io_para_out_control_taskID; // @[AESEncModule.scala 44:23 45:18 48:18]
  assign io_read_round = _T ? io_input_bits_control_rounds : ShiftRowsModule_io_para_out_control_rounds; // @[AESEncModule.scala 44:23 46:19 49:19]
  assign io_complete_taskID = AddRoundKeyModule_io_para_out_control_taskID; // @[AESEncModule.scala 64:22]
  assign AddRoundKeyModule_io_para_in_state_0 = r ? InputDelay_state_0 : _AddRoundKeyModule_io_para_in_T_4_state_0; // @[AESEncModule.scala 52:41 53:34 55:34]
  assign AddRoundKeyModule_io_para_in_state_1 = r ? InputDelay_state_1 : _AddRoundKeyModule_io_para_in_T_4_state_1; // @[AESEncModule.scala 52:41 53:34 55:34]
  assign AddRoundKeyModule_io_para_in_state_2 = r ? InputDelay_state_2 : _AddRoundKeyModule_io_para_in_T_4_state_2; // @[AESEncModule.scala 52:41 53:34 55:34]
  assign AddRoundKeyModule_io_para_in_state_3 = r ? InputDelay_state_3 : _AddRoundKeyModule_io_para_in_T_4_state_3; // @[AESEncModule.scala 52:41 53:34 55:34]
  assign AddRoundKeyModule_io_para_in_state_4 = r ? InputDelay_state_4 : _AddRoundKeyModule_io_para_in_T_4_state_4; // @[AESEncModule.scala 52:41 53:34 55:34]
  assign AddRoundKeyModule_io_para_in_state_5 = r ? InputDelay_state_5 : _AddRoundKeyModule_io_para_in_T_4_state_5; // @[AESEncModule.scala 52:41 53:34 55:34]
  assign AddRoundKeyModule_io_para_in_state_6 = r ? InputDelay_state_6 : _AddRoundKeyModule_io_para_in_T_4_state_6; // @[AESEncModule.scala 52:41 53:34 55:34]
  assign AddRoundKeyModule_io_para_in_state_7 = r ? InputDelay_state_7 : _AddRoundKeyModule_io_para_in_T_4_state_7; // @[AESEncModule.scala 52:41 53:34 55:34]
  assign AddRoundKeyModule_io_para_in_state_8 = r ? InputDelay_state_8 : _AddRoundKeyModule_io_para_in_T_4_state_8; // @[AESEncModule.scala 52:41 53:34 55:34]
  assign AddRoundKeyModule_io_para_in_state_9 = r ? InputDelay_state_9 : _AddRoundKeyModule_io_para_in_T_4_state_9; // @[AESEncModule.scala 52:41 53:34 55:34]
  assign AddRoundKeyModule_io_para_in_state_10 = r ? InputDelay_state_10 : _AddRoundKeyModule_io_para_in_T_4_state_10; // @[AESEncModule.scala 52:41 53:34 55:34]
  assign AddRoundKeyModule_io_para_in_state_11 = r ? InputDelay_state_11 : _AddRoundKeyModule_io_para_in_T_4_state_11; // @[AESEncModule.scala 52:41 53:34 55:34]
  assign AddRoundKeyModule_io_para_in_state_12 = r ? InputDelay_state_12 : _AddRoundKeyModule_io_para_in_T_4_state_12; // @[AESEncModule.scala 52:41 53:34 55:34]
  assign AddRoundKeyModule_io_para_in_state_13 = r ? InputDelay_state_13 : _AddRoundKeyModule_io_para_in_T_4_state_13; // @[AESEncModule.scala 52:41 53:34 55:34]
  assign AddRoundKeyModule_io_para_in_state_14 = r ? InputDelay_state_14 : _AddRoundKeyModule_io_para_in_T_4_state_14; // @[AESEncModule.scala 52:41 53:34 55:34]
  assign AddRoundKeyModule_io_para_in_state_15 = r ? InputDelay_state_15 : _AddRoundKeyModule_io_para_in_T_4_state_15; // @[AESEncModule.scala 52:41 53:34 55:34]
  assign AddRoundKeyModule_io_para_in_control_isIdle = r ? InputDelay_control_isIdle :
    _AddRoundKeyModule_io_para_in_T_4_control_isIdle; // @[AESEncModule.scala 52:41 53:34 55:34]
  assign AddRoundKeyModule_io_para_in_control_keylength = r ? 2'h0 : _AddRoundKeyModule_io_para_in_T_4_control_keylength
    ; // @[AESEncModule.scala 52:41 53:34 55:34]
  assign AddRoundKeyModule_io_para_in_control_taskID = r ? InputDelay_control_taskID :
    _AddRoundKeyModule_io_para_in_T_4_control_taskID; // @[AESEncModule.scala 52:41 53:34 55:34]
  assign AddRoundKeyModule_io_para_in_control_rounds = r ? InputDelay_control_rounds :
    _AddRoundKeyModule_io_para_in_T_4_control_rounds; // @[AESEncModule.scala 52:41 53:34 55:34]
  assign AddRoundKeyModule_io_roundKey_0 = io_round_key_0; // @[AESEncModule.scala 59:33]
  assign AddRoundKeyModule_io_roundKey_1 = io_round_key_1; // @[AESEncModule.scala 59:33]
  assign AddRoundKeyModule_io_roundKey_2 = io_round_key_2; // @[AESEncModule.scala 59:33]
  assign AddRoundKeyModule_io_roundKey_3 = io_round_key_3; // @[AESEncModule.scala 59:33]
  assign AddRoundKeyModule_io_roundKey_4 = io_round_key_4; // @[AESEncModule.scala 59:33]
  assign AddRoundKeyModule_io_roundKey_5 = io_round_key_5; // @[AESEncModule.scala 59:33]
  assign AddRoundKeyModule_io_roundKey_6 = io_round_key_6; // @[AESEncModule.scala 59:33]
  assign AddRoundKeyModule_io_roundKey_7 = io_round_key_7; // @[AESEncModule.scala 59:33]
  assign AddRoundKeyModule_io_roundKey_8 = io_round_key_8; // @[AESEncModule.scala 59:33]
  assign AddRoundKeyModule_io_roundKey_9 = io_round_key_9; // @[AESEncModule.scala 59:33]
  assign AddRoundKeyModule_io_roundKey_10 = io_round_key_10; // @[AESEncModule.scala 59:33]
  assign AddRoundKeyModule_io_roundKey_11 = io_round_key_11; // @[AESEncModule.scala 59:33]
  assign AddRoundKeyModule_io_roundKey_12 = io_round_key_12; // @[AESEncModule.scala 59:33]
  assign AddRoundKeyModule_io_roundKey_13 = io_round_key_13; // @[AESEncModule.scala 59:33]
  assign AddRoundKeyModule_io_roundKey_14 = io_round_key_14; // @[AESEncModule.scala 59:33]
  assign AddRoundKeyModule_io_roundKey_15 = io_round_key_15; // @[AESEncModule.scala 59:33]
  assign SubBytesModule_clock = clock;
  assign SubBytesModule_reset = reset;
  assign SubBytesModule_io_para_in_state_0 = AddRoundKeyModule_io_para_out_control_isIdle ? 8'h0 : _TmpValue_T_4_state_0
    ; // @[AESEncModule.scala 33:18]
  assign SubBytesModule_io_para_in_state_1 = AddRoundKeyModule_io_para_out_control_isIdle ? 8'h0 : _TmpValue_T_4_state_1
    ; // @[AESEncModule.scala 33:18]
  assign SubBytesModule_io_para_in_state_2 = AddRoundKeyModule_io_para_out_control_isIdle ? 8'h0 : _TmpValue_T_4_state_2
    ; // @[AESEncModule.scala 33:18]
  assign SubBytesModule_io_para_in_state_3 = AddRoundKeyModule_io_para_out_control_isIdle ? 8'h0 : _TmpValue_T_4_state_3
    ; // @[AESEncModule.scala 33:18]
  assign SubBytesModule_io_para_in_state_4 = AddRoundKeyModule_io_para_out_control_isIdle ? 8'h0 : _TmpValue_T_4_state_4
    ; // @[AESEncModule.scala 33:18]
  assign SubBytesModule_io_para_in_state_5 = AddRoundKeyModule_io_para_out_control_isIdle ? 8'h0 : _TmpValue_T_4_state_5
    ; // @[AESEncModule.scala 33:18]
  assign SubBytesModule_io_para_in_state_6 = AddRoundKeyModule_io_para_out_control_isIdle ? 8'h0 : _TmpValue_T_4_state_6
    ; // @[AESEncModule.scala 33:18]
  assign SubBytesModule_io_para_in_state_7 = AddRoundKeyModule_io_para_out_control_isIdle ? 8'h0 : _TmpValue_T_4_state_7
    ; // @[AESEncModule.scala 33:18]
  assign SubBytesModule_io_para_in_state_8 = AddRoundKeyModule_io_para_out_control_isIdle ? 8'h0 : _TmpValue_T_4_state_8
    ; // @[AESEncModule.scala 33:18]
  assign SubBytesModule_io_para_in_state_9 = AddRoundKeyModule_io_para_out_control_isIdle ? 8'h0 : _TmpValue_T_4_state_9
    ; // @[AESEncModule.scala 33:18]
  assign SubBytesModule_io_para_in_state_10 = AddRoundKeyModule_io_para_out_control_isIdle ? 8'h0 :
    _TmpValue_T_4_state_10; // @[AESEncModule.scala 33:18]
  assign SubBytesModule_io_para_in_state_11 = AddRoundKeyModule_io_para_out_control_isIdle ? 8'h0 :
    _TmpValue_T_4_state_11; // @[AESEncModule.scala 33:18]
  assign SubBytesModule_io_para_in_state_12 = AddRoundKeyModule_io_para_out_control_isIdle ? 8'h0 :
    _TmpValue_T_4_state_12; // @[AESEncModule.scala 33:18]
  assign SubBytesModule_io_para_in_state_13 = AddRoundKeyModule_io_para_out_control_isIdle ? 8'h0 :
    _TmpValue_T_4_state_13; // @[AESEncModule.scala 33:18]
  assign SubBytesModule_io_para_in_state_14 = AddRoundKeyModule_io_para_out_control_isIdle ? 8'h0 :
    _TmpValue_T_4_state_14; // @[AESEncModule.scala 33:18]
  assign SubBytesModule_io_para_in_state_15 = AddRoundKeyModule_io_para_out_control_isIdle ? 8'h0 :
    _TmpValue_T_4_state_15; // @[AESEncModule.scala 33:18]
  assign SubBytesModule_io_para_in_control_isIdle = AddRoundKeyModule_io_para_out_control_isIdle |
    _TmpValue_T_4_control_isIdle; // @[AESEncModule.scala 33:18]
  assign SubBytesModule_io_para_in_control_keylength = AddRoundKeyModule_io_para_out_control_isIdle ? 2'h0 :
    _TmpValue_T_4_control_keylength; // @[AESEncModule.scala 33:18]
  assign SubBytesModule_io_para_in_control_taskID = AddRoundKeyModule_io_para_out_control_isIdle ? 2'h0 :
    _TmpValue_T_4_control_taskID; // @[AESEncModule.scala 33:18]
  assign SubBytesModule_io_para_in_control_rounds = AddRoundKeyModule_io_para_out_control_isIdle ? 4'h0 :
    _TmpValue_T_4_control_rounds; // @[AESEncModule.scala 33:18]
  assign ShiftRowsModule_io_para_in_state_0 = SubBytesModule_io_para_out_state_0; // @[AESEncModule.scala 40:30]
  assign ShiftRowsModule_io_para_in_state_1 = SubBytesModule_io_para_out_state_1; // @[AESEncModule.scala 40:30]
  assign ShiftRowsModule_io_para_in_state_2 = SubBytesModule_io_para_out_state_2; // @[AESEncModule.scala 40:30]
  assign ShiftRowsModule_io_para_in_state_3 = SubBytesModule_io_para_out_state_3; // @[AESEncModule.scala 40:30]
  assign ShiftRowsModule_io_para_in_state_4 = SubBytesModule_io_para_out_state_4; // @[AESEncModule.scala 40:30]
  assign ShiftRowsModule_io_para_in_state_5 = SubBytesModule_io_para_out_state_5; // @[AESEncModule.scala 40:30]
  assign ShiftRowsModule_io_para_in_state_6 = SubBytesModule_io_para_out_state_6; // @[AESEncModule.scala 40:30]
  assign ShiftRowsModule_io_para_in_state_7 = SubBytesModule_io_para_out_state_7; // @[AESEncModule.scala 40:30]
  assign ShiftRowsModule_io_para_in_state_8 = SubBytesModule_io_para_out_state_8; // @[AESEncModule.scala 40:30]
  assign ShiftRowsModule_io_para_in_state_9 = SubBytesModule_io_para_out_state_9; // @[AESEncModule.scala 40:30]
  assign ShiftRowsModule_io_para_in_state_10 = SubBytesModule_io_para_out_state_10; // @[AESEncModule.scala 40:30]
  assign ShiftRowsModule_io_para_in_state_11 = SubBytesModule_io_para_out_state_11; // @[AESEncModule.scala 40:30]
  assign ShiftRowsModule_io_para_in_state_12 = SubBytesModule_io_para_out_state_12; // @[AESEncModule.scala 40:30]
  assign ShiftRowsModule_io_para_in_state_13 = SubBytesModule_io_para_out_state_13; // @[AESEncModule.scala 40:30]
  assign ShiftRowsModule_io_para_in_state_14 = SubBytesModule_io_para_out_state_14; // @[AESEncModule.scala 40:30]
  assign ShiftRowsModule_io_para_in_state_15 = SubBytesModule_io_para_out_state_15; // @[AESEncModule.scala 40:30]
  assign ShiftRowsModule_io_para_in_control_isIdle = SubBytesModule_io_para_out_control_isIdle; // @[AESEncModule.scala 40:30]
  assign ShiftRowsModule_io_para_in_control_keylength = SubBytesModule_io_para_out_control_keylength; // @[AESEncModule.scala 40:30]
  assign ShiftRowsModule_io_para_in_control_taskID = SubBytesModule_io_para_out_control_taskID; // @[AESEncModule.scala 40:30]
  assign ShiftRowsModule_io_para_in_control_rounds = SubBytesModule_io_para_out_control_rounds; // @[AESEncModule.scala 40:30]
  assign MixColumnsModule_clock = clock;
  assign MixColumnsModule_reset = reset;
  assign MixColumnsModule_io_para_in_state_0 = ShiftRowsModule_io_para_out_state_0; // @[AESEncModule.scala 42:31]
  assign MixColumnsModule_io_para_in_state_1 = ShiftRowsModule_io_para_out_state_1; // @[AESEncModule.scala 42:31]
  assign MixColumnsModule_io_para_in_state_2 = ShiftRowsModule_io_para_out_state_2; // @[AESEncModule.scala 42:31]
  assign MixColumnsModule_io_para_in_state_3 = ShiftRowsModule_io_para_out_state_3; // @[AESEncModule.scala 42:31]
  assign MixColumnsModule_io_para_in_state_4 = ShiftRowsModule_io_para_out_state_4; // @[AESEncModule.scala 42:31]
  assign MixColumnsModule_io_para_in_state_5 = ShiftRowsModule_io_para_out_state_5; // @[AESEncModule.scala 42:31]
  assign MixColumnsModule_io_para_in_state_6 = ShiftRowsModule_io_para_out_state_6; // @[AESEncModule.scala 42:31]
  assign MixColumnsModule_io_para_in_state_7 = ShiftRowsModule_io_para_out_state_7; // @[AESEncModule.scala 42:31]
  assign MixColumnsModule_io_para_in_state_8 = ShiftRowsModule_io_para_out_state_8; // @[AESEncModule.scala 42:31]
  assign MixColumnsModule_io_para_in_state_9 = ShiftRowsModule_io_para_out_state_9; // @[AESEncModule.scala 42:31]
  assign MixColumnsModule_io_para_in_state_10 = ShiftRowsModule_io_para_out_state_10; // @[AESEncModule.scala 42:31]
  assign MixColumnsModule_io_para_in_state_11 = ShiftRowsModule_io_para_out_state_11; // @[AESEncModule.scala 42:31]
  assign MixColumnsModule_io_para_in_state_12 = ShiftRowsModule_io_para_out_state_12; // @[AESEncModule.scala 42:31]
  assign MixColumnsModule_io_para_in_state_13 = ShiftRowsModule_io_para_out_state_13; // @[AESEncModule.scala 42:31]
  assign MixColumnsModule_io_para_in_state_14 = ShiftRowsModule_io_para_out_state_14; // @[AESEncModule.scala 42:31]
  assign MixColumnsModule_io_para_in_state_15 = ShiftRowsModule_io_para_out_state_15; // @[AESEncModule.scala 42:31]
  assign MixColumnsModule_io_para_in_control_isIdle = ShiftRowsModule_io_para_out_control_isIdle; // @[AESEncModule.scala 42:31]
  assign MixColumnsModule_io_para_in_control_keylength = ShiftRowsModule_io_para_out_control_keylength; // @[AESEncModule.scala 42:31]
  assign MixColumnsModule_io_para_in_control_taskID = ShiftRowsModule_io_para_out_control_taskID; // @[AESEncModule.scala 42:31]
  assign MixColumnsModule_io_para_in_control_rounds = ShiftRowsModule_io_para_out_control_rounds; // @[AESEncModule.scala 42:31]
  always @(posedge clock) begin
    if (reset) begin // @[AESEncModule.scala 25:23]
      Buffer_state_0 <= 8'h0; // @[AESEncModule.scala 25:23]
    end else begin
      Buffer_state_0 <= ShiftRowsModule_io_para_out_state_0; // @[AESEncModule.scala 25:23]
    end
    if (reset) begin // @[AESEncModule.scala 25:23]
      Buffer_state_1 <= 8'h0; // @[AESEncModule.scala 25:23]
    end else begin
      Buffer_state_1 <= ShiftRowsModule_io_para_out_state_1; // @[AESEncModule.scala 25:23]
    end
    if (reset) begin // @[AESEncModule.scala 25:23]
      Buffer_state_2 <= 8'h0; // @[AESEncModule.scala 25:23]
    end else begin
      Buffer_state_2 <= ShiftRowsModule_io_para_out_state_2; // @[AESEncModule.scala 25:23]
    end
    if (reset) begin // @[AESEncModule.scala 25:23]
      Buffer_state_3 <= 8'h0; // @[AESEncModule.scala 25:23]
    end else begin
      Buffer_state_3 <= ShiftRowsModule_io_para_out_state_3; // @[AESEncModule.scala 25:23]
    end
    if (reset) begin // @[AESEncModule.scala 25:23]
      Buffer_state_4 <= 8'h0; // @[AESEncModule.scala 25:23]
    end else begin
      Buffer_state_4 <= ShiftRowsModule_io_para_out_state_4; // @[AESEncModule.scala 25:23]
    end
    if (reset) begin // @[AESEncModule.scala 25:23]
      Buffer_state_5 <= 8'h0; // @[AESEncModule.scala 25:23]
    end else begin
      Buffer_state_5 <= ShiftRowsModule_io_para_out_state_5; // @[AESEncModule.scala 25:23]
    end
    if (reset) begin // @[AESEncModule.scala 25:23]
      Buffer_state_6 <= 8'h0; // @[AESEncModule.scala 25:23]
    end else begin
      Buffer_state_6 <= ShiftRowsModule_io_para_out_state_6; // @[AESEncModule.scala 25:23]
    end
    if (reset) begin // @[AESEncModule.scala 25:23]
      Buffer_state_7 <= 8'h0; // @[AESEncModule.scala 25:23]
    end else begin
      Buffer_state_7 <= ShiftRowsModule_io_para_out_state_7; // @[AESEncModule.scala 25:23]
    end
    if (reset) begin // @[AESEncModule.scala 25:23]
      Buffer_state_8 <= 8'h0; // @[AESEncModule.scala 25:23]
    end else begin
      Buffer_state_8 <= ShiftRowsModule_io_para_out_state_8; // @[AESEncModule.scala 25:23]
    end
    if (reset) begin // @[AESEncModule.scala 25:23]
      Buffer_state_9 <= 8'h0; // @[AESEncModule.scala 25:23]
    end else begin
      Buffer_state_9 <= ShiftRowsModule_io_para_out_state_9; // @[AESEncModule.scala 25:23]
    end
    if (reset) begin // @[AESEncModule.scala 25:23]
      Buffer_state_10 <= 8'h0; // @[AESEncModule.scala 25:23]
    end else begin
      Buffer_state_10 <= ShiftRowsModule_io_para_out_state_10; // @[AESEncModule.scala 25:23]
    end
    if (reset) begin // @[AESEncModule.scala 25:23]
      Buffer_state_11 <= 8'h0; // @[AESEncModule.scala 25:23]
    end else begin
      Buffer_state_11 <= ShiftRowsModule_io_para_out_state_11; // @[AESEncModule.scala 25:23]
    end
    if (reset) begin // @[AESEncModule.scala 25:23]
      Buffer_state_12 <= 8'h0; // @[AESEncModule.scala 25:23]
    end else begin
      Buffer_state_12 <= ShiftRowsModule_io_para_out_state_12; // @[AESEncModule.scala 25:23]
    end
    if (reset) begin // @[AESEncModule.scala 25:23]
      Buffer_state_13 <= 8'h0; // @[AESEncModule.scala 25:23]
    end else begin
      Buffer_state_13 <= ShiftRowsModule_io_para_out_state_13; // @[AESEncModule.scala 25:23]
    end
    if (reset) begin // @[AESEncModule.scala 25:23]
      Buffer_state_14 <= 8'h0; // @[AESEncModule.scala 25:23]
    end else begin
      Buffer_state_14 <= ShiftRowsModule_io_para_out_state_14; // @[AESEncModule.scala 25:23]
    end
    if (reset) begin // @[AESEncModule.scala 25:23]
      Buffer_state_15 <= 8'h0; // @[AESEncModule.scala 25:23]
    end else begin
      Buffer_state_15 <= ShiftRowsModule_io_para_out_state_15; // @[AESEncModule.scala 25:23]
    end
    Buffer_control_isIdle <= reset | ShiftRowsModule_io_para_out_control_isIdle; // @[AESEncModule.scala 25:{23,23,23}]
    if (reset) begin // @[AESEncModule.scala 25:23]
      Buffer_control_keylength <= 2'h0; // @[AESEncModule.scala 25:23]
    end else begin
      Buffer_control_keylength <= ShiftRowsModule_io_para_out_control_keylength; // @[AESEncModule.scala 25:23]
    end
    if (reset) begin // @[AESEncModule.scala 25:23]
      Buffer_control_taskID <= 2'h0; // @[AESEncModule.scala 25:23]
    end else begin
      Buffer_control_taskID <= ShiftRowsModule_io_para_out_control_taskID; // @[AESEncModule.scala 25:23]
    end
    if (reset) begin // @[AESEncModule.scala 25:23]
      Buffer_control_rounds <= 4'h0; // @[AESEncModule.scala 25:23]
    end else begin
      Buffer_control_rounds <= ShiftRowsModule_io_para_out_control_rounds; // @[AESEncModule.scala 25:23]
    end
    if (reset) begin // @[AESEncModule.scala 26:27]
      InputDelay_state_0 <= 8'h0; // @[AESEncModule.scala 26:27]
    end else begin
      InputDelay_state_0 <= io_input_bits_state_0; // @[AESEncModule.scala 26:27]
    end
    if (reset) begin // @[AESEncModule.scala 26:27]
      InputDelay_state_1 <= 8'h0; // @[AESEncModule.scala 26:27]
    end else begin
      InputDelay_state_1 <= io_input_bits_state_1; // @[AESEncModule.scala 26:27]
    end
    if (reset) begin // @[AESEncModule.scala 26:27]
      InputDelay_state_2 <= 8'h0; // @[AESEncModule.scala 26:27]
    end else begin
      InputDelay_state_2 <= io_input_bits_state_2; // @[AESEncModule.scala 26:27]
    end
    if (reset) begin // @[AESEncModule.scala 26:27]
      InputDelay_state_3 <= 8'h0; // @[AESEncModule.scala 26:27]
    end else begin
      InputDelay_state_3 <= io_input_bits_state_3; // @[AESEncModule.scala 26:27]
    end
    if (reset) begin // @[AESEncModule.scala 26:27]
      InputDelay_state_4 <= 8'h0; // @[AESEncModule.scala 26:27]
    end else begin
      InputDelay_state_4 <= io_input_bits_state_4; // @[AESEncModule.scala 26:27]
    end
    if (reset) begin // @[AESEncModule.scala 26:27]
      InputDelay_state_5 <= 8'h0; // @[AESEncModule.scala 26:27]
    end else begin
      InputDelay_state_5 <= io_input_bits_state_5; // @[AESEncModule.scala 26:27]
    end
    if (reset) begin // @[AESEncModule.scala 26:27]
      InputDelay_state_6 <= 8'h0; // @[AESEncModule.scala 26:27]
    end else begin
      InputDelay_state_6 <= io_input_bits_state_6; // @[AESEncModule.scala 26:27]
    end
    if (reset) begin // @[AESEncModule.scala 26:27]
      InputDelay_state_7 <= 8'h0; // @[AESEncModule.scala 26:27]
    end else begin
      InputDelay_state_7 <= io_input_bits_state_7; // @[AESEncModule.scala 26:27]
    end
    if (reset) begin // @[AESEncModule.scala 26:27]
      InputDelay_state_8 <= 8'h0; // @[AESEncModule.scala 26:27]
    end else begin
      InputDelay_state_8 <= io_input_bits_state_8; // @[AESEncModule.scala 26:27]
    end
    if (reset) begin // @[AESEncModule.scala 26:27]
      InputDelay_state_9 <= 8'h0; // @[AESEncModule.scala 26:27]
    end else begin
      InputDelay_state_9 <= io_input_bits_state_9; // @[AESEncModule.scala 26:27]
    end
    if (reset) begin // @[AESEncModule.scala 26:27]
      InputDelay_state_10 <= 8'h0; // @[AESEncModule.scala 26:27]
    end else begin
      InputDelay_state_10 <= io_input_bits_state_10; // @[AESEncModule.scala 26:27]
    end
    if (reset) begin // @[AESEncModule.scala 26:27]
      InputDelay_state_11 <= 8'h0; // @[AESEncModule.scala 26:27]
    end else begin
      InputDelay_state_11 <= io_input_bits_state_11; // @[AESEncModule.scala 26:27]
    end
    if (reset) begin // @[AESEncModule.scala 26:27]
      InputDelay_state_12 <= 8'h0; // @[AESEncModule.scala 26:27]
    end else begin
      InputDelay_state_12 <= io_input_bits_state_12; // @[AESEncModule.scala 26:27]
    end
    if (reset) begin // @[AESEncModule.scala 26:27]
      InputDelay_state_13 <= 8'h0; // @[AESEncModule.scala 26:27]
    end else begin
      InputDelay_state_13 <= io_input_bits_state_13; // @[AESEncModule.scala 26:27]
    end
    if (reset) begin // @[AESEncModule.scala 26:27]
      InputDelay_state_14 <= 8'h0; // @[AESEncModule.scala 26:27]
    end else begin
      InputDelay_state_14 <= io_input_bits_state_14; // @[AESEncModule.scala 26:27]
    end
    if (reset) begin // @[AESEncModule.scala 26:27]
      InputDelay_state_15 <= 8'h0; // @[AESEncModule.scala 26:27]
    end else begin
      InputDelay_state_15 <= io_input_bits_state_15; // @[AESEncModule.scala 26:27]
    end
    InputDelay_control_isIdle <= reset | io_input_bits_control_isIdle; // @[AESEncModule.scala 26:{27,27,27}]
    if (reset) begin // @[AESEncModule.scala 26:27]
      InputDelay_control_taskID <= 2'h0; // @[AESEncModule.scala 26:27]
    end else begin
      InputDelay_control_taskID <= io_input_bits_control_taskID; // @[AESEncModule.scala 26:27]
    end
    if (reset) begin // @[AESEncModule.scala 26:27]
      InputDelay_control_rounds <= 4'h0; // @[AESEncModule.scala 26:27]
    end else begin
      InputDelay_control_rounds <= io_input_bits_control_rounds; // @[AESEncModule.scala 26:27]
    end
    r <= io_input_ready & io_input_valid; // @[Decoupled.scala 50:35]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  Buffer_state_0 = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  Buffer_state_1 = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  Buffer_state_2 = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  Buffer_state_3 = _RAND_3[7:0];
  _RAND_4 = {1{`RANDOM}};
  Buffer_state_4 = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  Buffer_state_5 = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  Buffer_state_6 = _RAND_6[7:0];
  _RAND_7 = {1{`RANDOM}};
  Buffer_state_7 = _RAND_7[7:0];
  _RAND_8 = {1{`RANDOM}};
  Buffer_state_8 = _RAND_8[7:0];
  _RAND_9 = {1{`RANDOM}};
  Buffer_state_9 = _RAND_9[7:0];
  _RAND_10 = {1{`RANDOM}};
  Buffer_state_10 = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  Buffer_state_11 = _RAND_11[7:0];
  _RAND_12 = {1{`RANDOM}};
  Buffer_state_12 = _RAND_12[7:0];
  _RAND_13 = {1{`RANDOM}};
  Buffer_state_13 = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  Buffer_state_14 = _RAND_14[7:0];
  _RAND_15 = {1{`RANDOM}};
  Buffer_state_15 = _RAND_15[7:0];
  _RAND_16 = {1{`RANDOM}};
  Buffer_control_isIdle = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  Buffer_control_keylength = _RAND_17[1:0];
  _RAND_18 = {1{`RANDOM}};
  Buffer_control_taskID = _RAND_18[1:0];
  _RAND_19 = {1{`RANDOM}};
  Buffer_control_rounds = _RAND_19[3:0];
  _RAND_20 = {1{`RANDOM}};
  InputDelay_state_0 = _RAND_20[7:0];
  _RAND_21 = {1{`RANDOM}};
  InputDelay_state_1 = _RAND_21[7:0];
  _RAND_22 = {1{`RANDOM}};
  InputDelay_state_2 = _RAND_22[7:0];
  _RAND_23 = {1{`RANDOM}};
  InputDelay_state_3 = _RAND_23[7:0];
  _RAND_24 = {1{`RANDOM}};
  InputDelay_state_4 = _RAND_24[7:0];
  _RAND_25 = {1{`RANDOM}};
  InputDelay_state_5 = _RAND_25[7:0];
  _RAND_26 = {1{`RANDOM}};
  InputDelay_state_6 = _RAND_26[7:0];
  _RAND_27 = {1{`RANDOM}};
  InputDelay_state_7 = _RAND_27[7:0];
  _RAND_28 = {1{`RANDOM}};
  InputDelay_state_8 = _RAND_28[7:0];
  _RAND_29 = {1{`RANDOM}};
  InputDelay_state_9 = _RAND_29[7:0];
  _RAND_30 = {1{`RANDOM}};
  InputDelay_state_10 = _RAND_30[7:0];
  _RAND_31 = {1{`RANDOM}};
  InputDelay_state_11 = _RAND_31[7:0];
  _RAND_32 = {1{`RANDOM}};
  InputDelay_state_12 = _RAND_32[7:0];
  _RAND_33 = {1{`RANDOM}};
  InputDelay_state_13 = _RAND_33[7:0];
  _RAND_34 = {1{`RANDOM}};
  InputDelay_state_14 = _RAND_34[7:0];
  _RAND_35 = {1{`RANDOM}};
  InputDelay_state_15 = _RAND_35[7:0];
  _RAND_36 = {1{`RANDOM}};
  InputDelay_control_isIdle = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  InputDelay_control_taskID = _RAND_37[1:0];
  _RAND_38 = {1{`RANDOM}};
  InputDelay_control_rounds = _RAND_38[3:0];
  _RAND_39 = {1{`RANDOM}};
  r = _RAND_39[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module RRArbiter_1(
  input        clock,
  output       io_in_0_ready,
  input        io_in_0_valid,
  input  [7:0] io_in_0_bits_state_0,
  input  [7:0] io_in_0_bits_state_1,
  input  [7:0] io_in_0_bits_state_2,
  input  [7:0] io_in_0_bits_state_3,
  input  [7:0] io_in_0_bits_state_4,
  input  [7:0] io_in_0_bits_state_5,
  input  [7:0] io_in_0_bits_state_6,
  input  [7:0] io_in_0_bits_state_7,
  input  [7:0] io_in_0_bits_state_8,
  input  [7:0] io_in_0_bits_state_9,
  input  [7:0] io_in_0_bits_state_10,
  input  [7:0] io_in_0_bits_state_11,
  input  [7:0] io_in_0_bits_state_12,
  input  [7:0] io_in_0_bits_state_13,
  input  [7:0] io_in_0_bits_state_14,
  input  [7:0] io_in_0_bits_state_15,
  input        io_in_0_bits_control_isIdle,
  input  [1:0] io_in_0_bits_control_taskID,
  input  [3:0] io_in_0_bits_control_rounds,
  output       io_in_1_ready,
  input        io_in_1_valid,
  input  [7:0] io_in_1_bits_state_0,
  input  [7:0] io_in_1_bits_state_1,
  input  [7:0] io_in_1_bits_state_2,
  input  [7:0] io_in_1_bits_state_3,
  input  [7:0] io_in_1_bits_state_4,
  input  [7:0] io_in_1_bits_state_5,
  input  [7:0] io_in_1_bits_state_6,
  input  [7:0] io_in_1_bits_state_7,
  input  [7:0] io_in_1_bits_state_8,
  input  [7:0] io_in_1_bits_state_9,
  input  [7:0] io_in_1_bits_state_10,
  input  [7:0] io_in_1_bits_state_11,
  input  [7:0] io_in_1_bits_state_12,
  input  [7:0] io_in_1_bits_state_13,
  input  [7:0] io_in_1_bits_state_14,
  input  [7:0] io_in_1_bits_state_15,
  input        io_in_1_bits_control_isIdle,
  input  [1:0] io_in_1_bits_control_taskID,
  input  [3:0] io_in_1_bits_control_rounds,
  output       io_in_2_ready,
  input        io_in_2_valid,
  input  [7:0] io_in_2_bits_state_0,
  input  [7:0] io_in_2_bits_state_1,
  input  [7:0] io_in_2_bits_state_2,
  input  [7:0] io_in_2_bits_state_3,
  input  [7:0] io_in_2_bits_state_4,
  input  [7:0] io_in_2_bits_state_5,
  input  [7:0] io_in_2_bits_state_6,
  input  [7:0] io_in_2_bits_state_7,
  input  [7:0] io_in_2_bits_state_8,
  input  [7:0] io_in_2_bits_state_9,
  input  [7:0] io_in_2_bits_state_10,
  input  [7:0] io_in_2_bits_state_11,
  input  [7:0] io_in_2_bits_state_12,
  input  [7:0] io_in_2_bits_state_13,
  input  [7:0] io_in_2_bits_state_14,
  input  [7:0] io_in_2_bits_state_15,
  input        io_in_2_bits_control_isIdle,
  input  [1:0] io_in_2_bits_control_taskID,
  input  [3:0] io_in_2_bits_control_rounds,
  output       io_in_3_ready,
  input        io_in_3_valid,
  input  [7:0] io_in_3_bits_state_0,
  input  [7:0] io_in_3_bits_state_1,
  input  [7:0] io_in_3_bits_state_2,
  input  [7:0] io_in_3_bits_state_3,
  input  [7:0] io_in_3_bits_state_4,
  input  [7:0] io_in_3_bits_state_5,
  input  [7:0] io_in_3_bits_state_6,
  input  [7:0] io_in_3_bits_state_7,
  input  [7:0] io_in_3_bits_state_8,
  input  [7:0] io_in_3_bits_state_9,
  input  [7:0] io_in_3_bits_state_10,
  input  [7:0] io_in_3_bits_state_11,
  input  [7:0] io_in_3_bits_state_12,
  input  [7:0] io_in_3_bits_state_13,
  input  [7:0] io_in_3_bits_state_14,
  input  [7:0] io_in_3_bits_state_15,
  input        io_in_3_bits_control_isIdle,
  input  [1:0] io_in_3_bits_control_taskID,
  input  [3:0] io_in_3_bits_control_rounds,
  input        io_out_ready,
  output       io_out_valid,
  output [7:0] io_out_bits_state_0,
  output [7:0] io_out_bits_state_1,
  output [7:0] io_out_bits_state_2,
  output [7:0] io_out_bits_state_3,
  output [7:0] io_out_bits_state_4,
  output [7:0] io_out_bits_state_5,
  output [7:0] io_out_bits_state_6,
  output [7:0] io_out_bits_state_7,
  output [7:0] io_out_bits_state_8,
  output [7:0] io_out_bits_state_9,
  output [7:0] io_out_bits_state_10,
  output [7:0] io_out_bits_state_11,
  output [7:0] io_out_bits_state_12,
  output [7:0] io_out_bits_state_13,
  output [7:0] io_out_bits_state_14,
  output [7:0] io_out_bits_state_15,
  output       io_out_bits_control_isIdle,
  output [1:0] io_out_bits_control_taskID,
  output [3:0] io_out_bits_control_rounds,
  output [1:0] io_chosen
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  _GEN_1 = 2'h1 == io_chosen ? io_in_1_valid : io_in_0_valid; // @[Arbiter.scala 56:{16,16}]
  wire  _GEN_2 = 2'h2 == io_chosen ? io_in_2_valid : _GEN_1; // @[Arbiter.scala 56:{16,16}]
  wire [3:0] _GEN_5 = 2'h1 == io_chosen ? io_in_1_bits_control_rounds : io_in_0_bits_control_rounds; // @[Arbiter.scala 57:{15,15}]
  wire [3:0] _GEN_6 = 2'h2 == io_chosen ? io_in_2_bits_control_rounds : _GEN_5; // @[Arbiter.scala 57:{15,15}]
  wire [1:0] _GEN_9 = 2'h1 == io_chosen ? io_in_1_bits_control_taskID : io_in_0_bits_control_taskID; // @[Arbiter.scala 57:{15,15}]
  wire [1:0] _GEN_10 = 2'h2 == io_chosen ? io_in_2_bits_control_taskID : _GEN_9; // @[Arbiter.scala 57:{15,15}]
  wire  _GEN_17 = 2'h1 == io_chosen ? io_in_1_bits_control_isIdle : io_in_0_bits_control_isIdle; // @[Arbiter.scala 57:{15,15}]
  wire  _GEN_18 = 2'h2 == io_chosen ? io_in_2_bits_control_isIdle : _GEN_17; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_21 = 2'h1 == io_chosen ? io_in_1_bits_state_0 : io_in_0_bits_state_0; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_22 = 2'h2 == io_chosen ? io_in_2_bits_state_0 : _GEN_21; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_25 = 2'h1 == io_chosen ? io_in_1_bits_state_1 : io_in_0_bits_state_1; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_26 = 2'h2 == io_chosen ? io_in_2_bits_state_1 : _GEN_25; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_29 = 2'h1 == io_chosen ? io_in_1_bits_state_2 : io_in_0_bits_state_2; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_30 = 2'h2 == io_chosen ? io_in_2_bits_state_2 : _GEN_29; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_33 = 2'h1 == io_chosen ? io_in_1_bits_state_3 : io_in_0_bits_state_3; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_34 = 2'h2 == io_chosen ? io_in_2_bits_state_3 : _GEN_33; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_37 = 2'h1 == io_chosen ? io_in_1_bits_state_4 : io_in_0_bits_state_4; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_38 = 2'h2 == io_chosen ? io_in_2_bits_state_4 : _GEN_37; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_41 = 2'h1 == io_chosen ? io_in_1_bits_state_5 : io_in_0_bits_state_5; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_42 = 2'h2 == io_chosen ? io_in_2_bits_state_5 : _GEN_41; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_45 = 2'h1 == io_chosen ? io_in_1_bits_state_6 : io_in_0_bits_state_6; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_46 = 2'h2 == io_chosen ? io_in_2_bits_state_6 : _GEN_45; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_49 = 2'h1 == io_chosen ? io_in_1_bits_state_7 : io_in_0_bits_state_7; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_50 = 2'h2 == io_chosen ? io_in_2_bits_state_7 : _GEN_49; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_53 = 2'h1 == io_chosen ? io_in_1_bits_state_8 : io_in_0_bits_state_8; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_54 = 2'h2 == io_chosen ? io_in_2_bits_state_8 : _GEN_53; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_57 = 2'h1 == io_chosen ? io_in_1_bits_state_9 : io_in_0_bits_state_9; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_58 = 2'h2 == io_chosen ? io_in_2_bits_state_9 : _GEN_57; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_61 = 2'h1 == io_chosen ? io_in_1_bits_state_10 : io_in_0_bits_state_10; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_62 = 2'h2 == io_chosen ? io_in_2_bits_state_10 : _GEN_61; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_65 = 2'h1 == io_chosen ? io_in_1_bits_state_11 : io_in_0_bits_state_11; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_66 = 2'h2 == io_chosen ? io_in_2_bits_state_11 : _GEN_65; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_69 = 2'h1 == io_chosen ? io_in_1_bits_state_12 : io_in_0_bits_state_12; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_70 = 2'h2 == io_chosen ? io_in_2_bits_state_12 : _GEN_69; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_73 = 2'h1 == io_chosen ? io_in_1_bits_state_13 : io_in_0_bits_state_13; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_74 = 2'h2 == io_chosen ? io_in_2_bits_state_13 : _GEN_73; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_77 = 2'h1 == io_chosen ? io_in_1_bits_state_14 : io_in_0_bits_state_14; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_78 = 2'h2 == io_chosen ? io_in_2_bits_state_14 : _GEN_77; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_81 = 2'h1 == io_chosen ? io_in_1_bits_state_15 : io_in_0_bits_state_15; // @[Arbiter.scala 57:{15,15}]
  wire [7:0] _GEN_82 = 2'h2 == io_chosen ? io_in_2_bits_state_15 : _GEN_81; // @[Arbiter.scala 57:{15,15}]
  wire  _ctrl_validMask_grantMask_lastGrant_T = io_out_ready & io_out_valid; // @[Decoupled.scala 50:35]
  reg [1:0] lastGrant; // @[Reg.scala 16:16]
  wire  grantMask_1 = 2'h1 > lastGrant; // @[Arbiter.scala 82:49]
  wire  grantMask_2 = 2'h2 > lastGrant; // @[Arbiter.scala 82:49]
  wire  grantMask_3 = 2'h3 > lastGrant; // @[Arbiter.scala 82:49]
  wire  validMask_1 = io_in_1_valid & grantMask_1; // @[Arbiter.scala 83:76]
  wire  validMask_2 = io_in_2_valid & grantMask_2; // @[Arbiter.scala 83:76]
  wire  validMask_3 = io_in_3_valid & grantMask_3; // @[Arbiter.scala 83:76]
  wire  ctrl_2 = ~validMask_1; // @[Arbiter.scala 46:78]
  wire  ctrl_3 = ~(validMask_1 | validMask_2); // @[Arbiter.scala 46:78]
  wire  ctrl_4 = ~(validMask_1 | validMask_2 | validMask_3); // @[Arbiter.scala 46:78]
  wire  ctrl_5 = ~(validMask_1 | validMask_2 | validMask_3 | io_in_0_valid); // @[Arbiter.scala 46:78]
  wire  ctrl_6 = ~(validMask_1 | validMask_2 | validMask_3 | io_in_0_valid | io_in_1_valid); // @[Arbiter.scala 46:78]
  wire  ctrl_7 = ~(validMask_1 | validMask_2 | validMask_3 | io_in_0_valid | io_in_1_valid | io_in_2_valid); // @[Arbiter.scala 46:78]
  wire  _T_3 = grantMask_1 | ctrl_5; // @[Arbiter.scala 87:50]
  wire  _T_5 = ctrl_2 & grantMask_2 | ctrl_6; // @[Arbiter.scala 87:50]
  wire  _T_7 = ctrl_3 & grantMask_3 | ctrl_7; // @[Arbiter.scala 87:50]
  wire [1:0] _GEN_85 = io_in_2_valid ? 2'h2 : 2'h3; // @[Arbiter.scala 92:{26,35}]
  wire [1:0] _GEN_86 = io_in_1_valid ? 2'h1 : _GEN_85; // @[Arbiter.scala 92:{26,35}]
  wire [1:0] _GEN_87 = io_in_0_valid ? 2'h0 : _GEN_86; // @[Arbiter.scala 92:{26,35}]
  wire [1:0] _GEN_88 = validMask_3 ? 2'h3 : _GEN_87; // @[Arbiter.scala 94:{24,33}]
  wire [1:0] _GEN_89 = validMask_2 ? 2'h2 : _GEN_88; // @[Arbiter.scala 94:{24,33}]
  assign io_in_0_ready = ctrl_4 & io_out_ready; // @[Arbiter.scala 75:21]
  assign io_in_1_ready = _T_3 & io_out_ready; // @[Arbiter.scala 75:21]
  assign io_in_2_ready = _T_5 & io_out_ready; // @[Arbiter.scala 75:21]
  assign io_in_3_ready = _T_7 & io_out_ready; // @[Arbiter.scala 75:21]
  assign io_out_valid = 2'h3 == io_chosen ? io_in_3_valid : _GEN_2; // @[Arbiter.scala 56:{16,16}]
  assign io_out_bits_state_0 = 2'h3 == io_chosen ? io_in_3_bits_state_0 : _GEN_22; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_state_1 = 2'h3 == io_chosen ? io_in_3_bits_state_1 : _GEN_26; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_state_2 = 2'h3 == io_chosen ? io_in_3_bits_state_2 : _GEN_30; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_state_3 = 2'h3 == io_chosen ? io_in_3_bits_state_3 : _GEN_34; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_state_4 = 2'h3 == io_chosen ? io_in_3_bits_state_4 : _GEN_38; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_state_5 = 2'h3 == io_chosen ? io_in_3_bits_state_5 : _GEN_42; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_state_6 = 2'h3 == io_chosen ? io_in_3_bits_state_6 : _GEN_46; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_state_7 = 2'h3 == io_chosen ? io_in_3_bits_state_7 : _GEN_50; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_state_8 = 2'h3 == io_chosen ? io_in_3_bits_state_8 : _GEN_54; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_state_9 = 2'h3 == io_chosen ? io_in_3_bits_state_9 : _GEN_58; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_state_10 = 2'h3 == io_chosen ? io_in_3_bits_state_10 : _GEN_62; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_state_11 = 2'h3 == io_chosen ? io_in_3_bits_state_11 : _GEN_66; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_state_12 = 2'h3 == io_chosen ? io_in_3_bits_state_12 : _GEN_70; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_state_13 = 2'h3 == io_chosen ? io_in_3_bits_state_13 : _GEN_74; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_state_14 = 2'h3 == io_chosen ? io_in_3_bits_state_14 : _GEN_78; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_state_15 = 2'h3 == io_chosen ? io_in_3_bits_state_15 : _GEN_82; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_control_isIdle = 2'h3 == io_chosen ? io_in_3_bits_control_isIdle : _GEN_18; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_control_taskID = 2'h3 == io_chosen ? io_in_3_bits_control_taskID : _GEN_10; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_control_rounds = 2'h3 == io_chosen ? io_in_3_bits_control_rounds : _GEN_6; // @[Arbiter.scala 57:{15,15}]
  assign io_chosen = validMask_1 ? 2'h1 : _GEN_89; // @[Arbiter.scala 94:{24,33}]
  always @(posedge clock) begin
    if (_ctrl_validMask_grantMask_lastGrant_T) begin // @[Reg.scala 17:18]
      lastGrant <= io_chosen; // @[Reg.scala 17:22]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  lastGrant = _RAND_0[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Unit(
  input        clock,
  input        reset,
  output       io_input_ready,
  input        io_input_valid,
  input  [7:0] io_input_bits_state_0,
  input  [7:0] io_input_bits_state_1,
  input  [7:0] io_input_bits_state_2,
  input  [7:0] io_input_bits_state_3,
  input  [7:0] io_input_bits_state_4,
  input  [7:0] io_input_bits_state_5,
  input  [7:0] io_input_bits_state_6,
  input  [7:0] io_input_bits_state_7,
  input  [7:0] io_input_bits_state_8,
  input  [7:0] io_input_bits_state_9,
  input  [7:0] io_input_bits_state_10,
  input  [7:0] io_input_bits_state_11,
  input  [7:0] io_input_bits_state_12,
  input  [7:0] io_input_bits_state_13,
  input  [7:0] io_input_bits_state_14,
  input  [7:0] io_input_bits_state_15,
  input        io_input_bits_control_isIdle,
  input  [1:0] io_input_bits_control_taskID,
  input        io_output_ready,
  output       io_output_valid,
  output [7:0] io_output_bits_0,
  output [7:0] io_output_bits_1,
  output [7:0] io_output_bits_2,
  output [7:0] io_output_bits_3,
  output [7:0] io_output_bits_4,
  output [7:0] io_output_bits_5,
  output [7:0] io_output_bits_6,
  output [7:0] io_output_bits_7,
  output [7:0] io_output_bits_8,
  output [7:0] io_output_bits_9,
  output [7:0] io_output_bits_10,
  output [7:0] io_output_bits_11,
  output [7:0] io_output_bits_12,
  output [7:0] io_output_bits_13,
  output [7:0] io_output_bits_14,
  output [7:0] io_output_bits_15,
  output [1:0] io_output_task,
  input        io_write_en,
  input  [1:0] io_write_task,
  input  [3:0] io_write_round,
  input  [7:0] io_write_key_0,
  input  [7:0] io_write_key_1,
  input  [7:0] io_write_key_2,
  input  [7:0] io_write_key_3,
  input  [7:0] io_write_key_4,
  input  [7:0] io_write_key_5,
  input  [7:0] io_write_key_6,
  input  [7:0] io_write_key_7,
  input  [7:0] io_write_key_8,
  input  [7:0] io_write_key_9,
  input  [7:0] io_write_key_10,
  input  [7:0] io_write_key_11,
  input  [7:0] io_write_key_12,
  input  [7:0] io_write_key_13,
  input  [7:0] io_write_key_14,
  input  [7:0] io_write_key_15
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [31:0] _RAND_89;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
  reg [31:0] _RAND_94;
  reg [31:0] _RAND_95;
  reg [31:0] _RAND_96;
  reg [31:0] _RAND_97;
  reg [31:0] _RAND_98;
  reg [31:0] _RAND_99;
  reg [31:0] _RAND_100;
  reg [31:0] _RAND_101;
  reg [31:0] _RAND_102;
  reg [31:0] _RAND_103;
  reg [31:0] _RAND_104;
  reg [31:0] _RAND_105;
  reg [31:0] _RAND_106;
  reg [31:0] _RAND_107;
  reg [31:0] _RAND_108;
  reg [31:0] _RAND_109;
  reg [31:0] _RAND_110;
  reg [31:0] _RAND_111;
  reg [31:0] _RAND_112;
  reg [31:0] _RAND_113;
  reg [31:0] _RAND_114;
  reg [31:0] _RAND_115;
  reg [31:0] _RAND_116;
  reg [31:0] _RAND_117;
  reg [31:0] _RAND_118;
  reg [31:0] _RAND_119;
  reg [31:0] _RAND_120;
  reg [31:0] _RAND_121;
  reg [31:0] _RAND_122;
  reg [31:0] _RAND_123;
  reg [31:0] _RAND_124;
  reg [31:0] _RAND_125;
  reg [31:0] _RAND_126;
  reg [31:0] _RAND_127;
  reg [31:0] _RAND_128;
  reg [31:0] _RAND_129;
  reg [31:0] _RAND_130;
  reg [31:0] _RAND_131;
  reg [31:0] _RAND_132;
  reg [31:0] _RAND_133;
  reg [31:0] _RAND_134;
  reg [31:0] _RAND_135;
  reg [31:0] _RAND_136;
  reg [31:0] _RAND_137;
  reg [31:0] _RAND_138;
  reg [31:0] _RAND_139;
  reg [31:0] _RAND_140;
  reg [31:0] _RAND_141;
  reg [31:0] _RAND_142;
  reg [31:0] _RAND_143;
  reg [31:0] _RAND_144;
  reg [31:0] _RAND_145;
  reg [31:0] _RAND_146;
  reg [31:0] _RAND_147;
`endif // RANDOMIZE_REG_INIT
  wire  KeyBankModule_clock; // @[Unit.scala 26:29]
  wire [1:0] KeyBankModule_io_read_task; // @[Unit.scala 26:29]
  wire [3:0] KeyBankModule_io_read_round; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_read_key_0; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_read_key_1; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_read_key_2; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_read_key_3; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_read_key_4; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_read_key_5; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_read_key_6; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_read_key_7; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_read_key_8; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_read_key_9; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_read_key_10; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_read_key_11; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_read_key_12; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_read_key_13; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_read_key_14; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_read_key_15; // @[Unit.scala 26:29]
  wire  KeyBankModule_io_write_en; // @[Unit.scala 26:29]
  wire [1:0] KeyBankModule_io_write_task; // @[Unit.scala 26:29]
  wire [3:0] KeyBankModule_io_write_round; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_write_key_0; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_write_key_1; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_write_key_2; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_write_key_3; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_write_key_4; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_write_key_5; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_write_key_6; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_write_key_7; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_write_key_8; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_write_key_9; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_write_key_10; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_write_key_11; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_write_key_12; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_write_key_13; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_write_key_14; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_write_key_15; // @[Unit.scala 26:29]
  wire  EngineModule_clock; // @[Unit.scala 27:38]
  wire  EngineModule_reset; // @[Unit.scala 27:38]
  wire  EngineModule_io_input_ready; // @[Unit.scala 27:38]
  wire  EngineModule_io_input_valid; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_input_bits_state_0; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_input_bits_state_1; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_input_bits_state_2; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_input_bits_state_3; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_input_bits_state_4; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_input_bits_state_5; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_input_bits_state_6; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_input_bits_state_7; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_input_bits_state_8; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_input_bits_state_9; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_input_bits_state_10; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_input_bits_state_11; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_input_bits_state_12; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_input_bits_state_13; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_input_bits_state_14; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_input_bits_state_15; // @[Unit.scala 27:38]
  wire  EngineModule_io_input_bits_control_isIdle; // @[Unit.scala 27:38]
  wire [1:0] EngineModule_io_input_bits_control_taskID; // @[Unit.scala 27:38]
  wire [3:0] EngineModule_io_input_bits_control_rounds; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_round_key_0; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_round_key_1; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_round_key_2; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_round_key_3; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_round_key_4; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_round_key_5; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_round_key_6; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_round_key_7; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_round_key_8; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_round_key_9; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_round_key_10; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_round_key_11; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_round_key_12; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_round_key_13; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_round_key_14; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_round_key_15; // @[Unit.scala 27:38]
  wire  EngineModule_io_output_state_valid; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_output_state_bits_0; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_output_state_bits_1; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_output_state_bits_2; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_output_state_bits_3; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_output_state_bits_4; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_output_state_bits_5; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_output_state_bits_6; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_output_state_bits_7; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_output_state_bits_8; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_output_state_bits_9; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_output_state_bits_10; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_output_state_bits_11; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_output_state_bits_12; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_output_state_bits_13; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_output_state_bits_14; // @[Unit.scala 27:38]
  wire [7:0] EngineModule_io_output_state_bits_15; // @[Unit.scala 27:38]
  wire [1:0] EngineModule_io_read_task; // @[Unit.scala 27:38]
  wire [3:0] EngineModule_io_read_round; // @[Unit.scala 27:38]
  wire [1:0] EngineModule_io_complete_taskID; // @[Unit.scala 27:38]
  wire  InArbiter_clock; // @[Unit.scala 29:25]
  wire  InArbiter_io_in_0_ready; // @[Unit.scala 29:25]
  wire  InArbiter_io_in_0_valid; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_0_bits_state_0; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_0_bits_state_1; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_0_bits_state_2; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_0_bits_state_3; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_0_bits_state_4; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_0_bits_state_5; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_0_bits_state_6; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_0_bits_state_7; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_0_bits_state_8; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_0_bits_state_9; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_0_bits_state_10; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_0_bits_state_11; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_0_bits_state_12; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_0_bits_state_13; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_0_bits_state_14; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_0_bits_state_15; // @[Unit.scala 29:25]
  wire  InArbiter_io_in_0_bits_control_isIdle; // @[Unit.scala 29:25]
  wire [1:0] InArbiter_io_in_0_bits_control_taskID; // @[Unit.scala 29:25]
  wire [3:0] InArbiter_io_in_0_bits_control_rounds; // @[Unit.scala 29:25]
  wire  InArbiter_io_in_1_ready; // @[Unit.scala 29:25]
  wire  InArbiter_io_in_1_valid; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_1_bits_state_0; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_1_bits_state_1; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_1_bits_state_2; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_1_bits_state_3; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_1_bits_state_4; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_1_bits_state_5; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_1_bits_state_6; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_1_bits_state_7; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_1_bits_state_8; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_1_bits_state_9; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_1_bits_state_10; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_1_bits_state_11; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_1_bits_state_12; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_1_bits_state_13; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_1_bits_state_14; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_1_bits_state_15; // @[Unit.scala 29:25]
  wire  InArbiter_io_in_1_bits_control_isIdle; // @[Unit.scala 29:25]
  wire [1:0] InArbiter_io_in_1_bits_control_taskID; // @[Unit.scala 29:25]
  wire [3:0] InArbiter_io_in_1_bits_control_rounds; // @[Unit.scala 29:25]
  wire  InArbiter_io_in_2_ready; // @[Unit.scala 29:25]
  wire  InArbiter_io_in_2_valid; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_2_bits_state_0; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_2_bits_state_1; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_2_bits_state_2; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_2_bits_state_3; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_2_bits_state_4; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_2_bits_state_5; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_2_bits_state_6; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_2_bits_state_7; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_2_bits_state_8; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_2_bits_state_9; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_2_bits_state_10; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_2_bits_state_11; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_2_bits_state_12; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_2_bits_state_13; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_2_bits_state_14; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_2_bits_state_15; // @[Unit.scala 29:25]
  wire  InArbiter_io_in_2_bits_control_isIdle; // @[Unit.scala 29:25]
  wire [1:0] InArbiter_io_in_2_bits_control_taskID; // @[Unit.scala 29:25]
  wire [3:0] InArbiter_io_in_2_bits_control_rounds; // @[Unit.scala 29:25]
  wire  InArbiter_io_in_3_ready; // @[Unit.scala 29:25]
  wire  InArbiter_io_in_3_valid; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_3_bits_state_0; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_3_bits_state_1; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_3_bits_state_2; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_3_bits_state_3; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_3_bits_state_4; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_3_bits_state_5; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_3_bits_state_6; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_3_bits_state_7; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_3_bits_state_8; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_3_bits_state_9; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_3_bits_state_10; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_3_bits_state_11; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_3_bits_state_12; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_3_bits_state_13; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_3_bits_state_14; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_3_bits_state_15; // @[Unit.scala 29:25]
  wire  InArbiter_io_in_3_bits_control_isIdle; // @[Unit.scala 29:25]
  wire [1:0] InArbiter_io_in_3_bits_control_taskID; // @[Unit.scala 29:25]
  wire [3:0] InArbiter_io_in_3_bits_control_rounds; // @[Unit.scala 29:25]
  wire  InArbiter_io_out_ready; // @[Unit.scala 29:25]
  wire  InArbiter_io_out_valid; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_out_bits_state_0; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_out_bits_state_1; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_out_bits_state_2; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_out_bits_state_3; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_out_bits_state_4; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_out_bits_state_5; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_out_bits_state_6; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_out_bits_state_7; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_out_bits_state_8; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_out_bits_state_9; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_out_bits_state_10; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_out_bits_state_11; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_out_bits_state_12; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_out_bits_state_13; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_out_bits_state_14; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_out_bits_state_15; // @[Unit.scala 29:25]
  wire  InArbiter_io_out_bits_control_isIdle; // @[Unit.scala 29:25]
  wire [1:0] InArbiter_io_out_bits_control_taskID; // @[Unit.scala 29:25]
  wire [3:0] InArbiter_io_out_bits_control_rounds; // @[Unit.scala 29:25]
  wire [1:0] InArbiter_io_chosen; // @[Unit.scala 29:25]
  wire  OutArbiter_clock; // @[Unit.scala 30:26]
  wire  OutArbiter_io_in_0_ready; // @[Unit.scala 30:26]
  wire  OutArbiter_io_in_0_valid; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_0_bits_0; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_0_bits_1; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_0_bits_2; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_0_bits_3; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_0_bits_4; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_0_bits_5; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_0_bits_6; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_0_bits_7; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_0_bits_8; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_0_bits_9; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_0_bits_10; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_0_bits_11; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_0_bits_12; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_0_bits_13; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_0_bits_14; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_0_bits_15; // @[Unit.scala 30:26]
  wire  OutArbiter_io_in_1_ready; // @[Unit.scala 30:26]
  wire  OutArbiter_io_in_1_valid; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_1_bits_0; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_1_bits_1; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_1_bits_2; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_1_bits_3; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_1_bits_4; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_1_bits_5; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_1_bits_6; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_1_bits_7; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_1_bits_8; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_1_bits_9; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_1_bits_10; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_1_bits_11; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_1_bits_12; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_1_bits_13; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_1_bits_14; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_1_bits_15; // @[Unit.scala 30:26]
  wire  OutArbiter_io_in_2_ready; // @[Unit.scala 30:26]
  wire  OutArbiter_io_in_2_valid; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_2_bits_0; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_2_bits_1; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_2_bits_2; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_2_bits_3; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_2_bits_4; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_2_bits_5; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_2_bits_6; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_2_bits_7; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_2_bits_8; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_2_bits_9; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_2_bits_10; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_2_bits_11; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_2_bits_12; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_2_bits_13; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_2_bits_14; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_2_bits_15; // @[Unit.scala 30:26]
  wire  OutArbiter_io_in_3_ready; // @[Unit.scala 30:26]
  wire  OutArbiter_io_in_3_valid; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_3_bits_0; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_3_bits_1; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_3_bits_2; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_3_bits_3; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_3_bits_4; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_3_bits_5; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_3_bits_6; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_3_bits_7; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_3_bits_8; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_3_bits_9; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_3_bits_10; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_3_bits_11; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_3_bits_12; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_3_bits_13; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_3_bits_14; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_3_bits_15; // @[Unit.scala 30:26]
  wire  OutArbiter_io_out_ready; // @[Unit.scala 30:26]
  wire  OutArbiter_io_out_valid; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_out_bits_0; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_out_bits_1; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_out_bits_2; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_out_bits_3; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_out_bits_4; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_out_bits_5; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_out_bits_6; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_out_bits_7; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_out_bits_8; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_out_bits_9; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_out_bits_10; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_out_bits_11; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_out_bits_12; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_out_bits_13; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_out_bits_14; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_out_bits_15; // @[Unit.scala 30:26]
  wire [1:0] OutArbiter_io_chosen; // @[Unit.scala 30:26]
  reg [7:0] InPara_0_state_0; // @[Unit.scala 19:19]
  reg [7:0] InPara_0_state_1; // @[Unit.scala 19:19]
  reg [7:0] InPara_0_state_2; // @[Unit.scala 19:19]
  reg [7:0] InPara_0_state_3; // @[Unit.scala 19:19]
  reg [7:0] InPara_0_state_4; // @[Unit.scala 19:19]
  reg [7:0] InPara_0_state_5; // @[Unit.scala 19:19]
  reg [7:0] InPara_0_state_6; // @[Unit.scala 19:19]
  reg [7:0] InPara_0_state_7; // @[Unit.scala 19:19]
  reg [7:0] InPara_0_state_8; // @[Unit.scala 19:19]
  reg [7:0] InPara_0_state_9; // @[Unit.scala 19:19]
  reg [7:0] InPara_0_state_10; // @[Unit.scala 19:19]
  reg [7:0] InPara_0_state_11; // @[Unit.scala 19:19]
  reg [7:0] InPara_0_state_12; // @[Unit.scala 19:19]
  reg [7:0] InPara_0_state_13; // @[Unit.scala 19:19]
  reg [7:0] InPara_0_state_14; // @[Unit.scala 19:19]
  reg [7:0] InPara_0_state_15; // @[Unit.scala 19:19]
  reg  InPara_0_control_isIdle; // @[Unit.scala 19:19]
  reg [1:0] InPara_0_control_taskID; // @[Unit.scala 19:19]
  reg [7:0] InPara_1_state_0; // @[Unit.scala 19:19]
  reg [7:0] InPara_1_state_1; // @[Unit.scala 19:19]
  reg [7:0] InPara_1_state_2; // @[Unit.scala 19:19]
  reg [7:0] InPara_1_state_3; // @[Unit.scala 19:19]
  reg [7:0] InPara_1_state_4; // @[Unit.scala 19:19]
  reg [7:0] InPara_1_state_5; // @[Unit.scala 19:19]
  reg [7:0] InPara_1_state_6; // @[Unit.scala 19:19]
  reg [7:0] InPara_1_state_7; // @[Unit.scala 19:19]
  reg [7:0] InPara_1_state_8; // @[Unit.scala 19:19]
  reg [7:0] InPara_1_state_9; // @[Unit.scala 19:19]
  reg [7:0] InPara_1_state_10; // @[Unit.scala 19:19]
  reg [7:0] InPara_1_state_11; // @[Unit.scala 19:19]
  reg [7:0] InPara_1_state_12; // @[Unit.scala 19:19]
  reg [7:0] InPara_1_state_13; // @[Unit.scala 19:19]
  reg [7:0] InPara_1_state_14; // @[Unit.scala 19:19]
  reg [7:0] InPara_1_state_15; // @[Unit.scala 19:19]
  reg  InPara_1_control_isIdle; // @[Unit.scala 19:19]
  reg [1:0] InPara_1_control_taskID; // @[Unit.scala 19:19]
  reg [7:0] InPara_2_state_0; // @[Unit.scala 19:19]
  reg [7:0] InPara_2_state_1; // @[Unit.scala 19:19]
  reg [7:0] InPara_2_state_2; // @[Unit.scala 19:19]
  reg [7:0] InPara_2_state_3; // @[Unit.scala 19:19]
  reg [7:0] InPara_2_state_4; // @[Unit.scala 19:19]
  reg [7:0] InPara_2_state_5; // @[Unit.scala 19:19]
  reg [7:0] InPara_2_state_6; // @[Unit.scala 19:19]
  reg [7:0] InPara_2_state_7; // @[Unit.scala 19:19]
  reg [7:0] InPara_2_state_8; // @[Unit.scala 19:19]
  reg [7:0] InPara_2_state_9; // @[Unit.scala 19:19]
  reg [7:0] InPara_2_state_10; // @[Unit.scala 19:19]
  reg [7:0] InPara_2_state_11; // @[Unit.scala 19:19]
  reg [7:0] InPara_2_state_12; // @[Unit.scala 19:19]
  reg [7:0] InPara_2_state_13; // @[Unit.scala 19:19]
  reg [7:0] InPara_2_state_14; // @[Unit.scala 19:19]
  reg [7:0] InPara_2_state_15; // @[Unit.scala 19:19]
  reg  InPara_2_control_isIdle; // @[Unit.scala 19:19]
  reg [1:0] InPara_2_control_taskID; // @[Unit.scala 19:19]
  reg [7:0] InPara_3_state_0; // @[Unit.scala 19:19]
  reg [7:0] InPara_3_state_1; // @[Unit.scala 19:19]
  reg [7:0] InPara_3_state_2; // @[Unit.scala 19:19]
  reg [7:0] InPara_3_state_3; // @[Unit.scala 19:19]
  reg [7:0] InPara_3_state_4; // @[Unit.scala 19:19]
  reg [7:0] InPara_3_state_5; // @[Unit.scala 19:19]
  reg [7:0] InPara_3_state_6; // @[Unit.scala 19:19]
  reg [7:0] InPara_3_state_7; // @[Unit.scala 19:19]
  reg [7:0] InPara_3_state_8; // @[Unit.scala 19:19]
  reg [7:0] InPara_3_state_9; // @[Unit.scala 19:19]
  reg [7:0] InPara_3_state_10; // @[Unit.scala 19:19]
  reg [7:0] InPara_3_state_11; // @[Unit.scala 19:19]
  reg [7:0] InPara_3_state_12; // @[Unit.scala 19:19]
  reg [7:0] InPara_3_state_13; // @[Unit.scala 19:19]
  reg [7:0] InPara_3_state_14; // @[Unit.scala 19:19]
  reg [7:0] InPara_3_state_15; // @[Unit.scala 19:19]
  reg  InPara_3_control_isIdle; // @[Unit.scala 19:19]
  reg [1:0] InPara_3_control_taskID; // @[Unit.scala 19:19]
  reg [7:0] OutState_0_0; // @[Unit.scala 20:21]
  reg [7:0] OutState_0_1; // @[Unit.scala 20:21]
  reg [7:0] OutState_0_2; // @[Unit.scala 20:21]
  reg [7:0] OutState_0_3; // @[Unit.scala 20:21]
  reg [7:0] OutState_0_4; // @[Unit.scala 20:21]
  reg [7:0] OutState_0_5; // @[Unit.scala 20:21]
  reg [7:0] OutState_0_6; // @[Unit.scala 20:21]
  reg [7:0] OutState_0_7; // @[Unit.scala 20:21]
  reg [7:0] OutState_0_8; // @[Unit.scala 20:21]
  reg [7:0] OutState_0_9; // @[Unit.scala 20:21]
  reg [7:0] OutState_0_10; // @[Unit.scala 20:21]
  reg [7:0] OutState_0_11; // @[Unit.scala 20:21]
  reg [7:0] OutState_0_12; // @[Unit.scala 20:21]
  reg [7:0] OutState_0_13; // @[Unit.scala 20:21]
  reg [7:0] OutState_0_14; // @[Unit.scala 20:21]
  reg [7:0] OutState_0_15; // @[Unit.scala 20:21]
  reg [7:0] OutState_1_0; // @[Unit.scala 20:21]
  reg [7:0] OutState_1_1; // @[Unit.scala 20:21]
  reg [7:0] OutState_1_2; // @[Unit.scala 20:21]
  reg [7:0] OutState_1_3; // @[Unit.scala 20:21]
  reg [7:0] OutState_1_4; // @[Unit.scala 20:21]
  reg [7:0] OutState_1_5; // @[Unit.scala 20:21]
  reg [7:0] OutState_1_6; // @[Unit.scala 20:21]
  reg [7:0] OutState_1_7; // @[Unit.scala 20:21]
  reg [7:0] OutState_1_8; // @[Unit.scala 20:21]
  reg [7:0] OutState_1_9; // @[Unit.scala 20:21]
  reg [7:0] OutState_1_10; // @[Unit.scala 20:21]
  reg [7:0] OutState_1_11; // @[Unit.scala 20:21]
  reg [7:0] OutState_1_12; // @[Unit.scala 20:21]
  reg [7:0] OutState_1_13; // @[Unit.scala 20:21]
  reg [7:0] OutState_1_14; // @[Unit.scala 20:21]
  reg [7:0] OutState_1_15; // @[Unit.scala 20:21]
  reg [7:0] OutState_2_0; // @[Unit.scala 20:21]
  reg [7:0] OutState_2_1; // @[Unit.scala 20:21]
  reg [7:0] OutState_2_2; // @[Unit.scala 20:21]
  reg [7:0] OutState_2_3; // @[Unit.scala 20:21]
  reg [7:0] OutState_2_4; // @[Unit.scala 20:21]
  reg [7:0] OutState_2_5; // @[Unit.scala 20:21]
  reg [7:0] OutState_2_6; // @[Unit.scala 20:21]
  reg [7:0] OutState_2_7; // @[Unit.scala 20:21]
  reg [7:0] OutState_2_8; // @[Unit.scala 20:21]
  reg [7:0] OutState_2_9; // @[Unit.scala 20:21]
  reg [7:0] OutState_2_10; // @[Unit.scala 20:21]
  reg [7:0] OutState_2_11; // @[Unit.scala 20:21]
  reg [7:0] OutState_2_12; // @[Unit.scala 20:21]
  reg [7:0] OutState_2_13; // @[Unit.scala 20:21]
  reg [7:0] OutState_2_14; // @[Unit.scala 20:21]
  reg [7:0] OutState_2_15; // @[Unit.scala 20:21]
  reg [7:0] OutState_3_0; // @[Unit.scala 20:21]
  reg [7:0] OutState_3_1; // @[Unit.scala 20:21]
  reg [7:0] OutState_3_2; // @[Unit.scala 20:21]
  reg [7:0] OutState_3_3; // @[Unit.scala 20:21]
  reg [7:0] OutState_3_4; // @[Unit.scala 20:21]
  reg [7:0] OutState_3_5; // @[Unit.scala 20:21]
  reg [7:0] OutState_3_6; // @[Unit.scala 20:21]
  reg [7:0] OutState_3_7; // @[Unit.scala 20:21]
  reg [7:0] OutState_3_8; // @[Unit.scala 20:21]
  reg [7:0] OutState_3_9; // @[Unit.scala 20:21]
  reg [7:0] OutState_3_10; // @[Unit.scala 20:21]
  reg [7:0] OutState_3_11; // @[Unit.scala 20:21]
  reg [7:0] OutState_3_12; // @[Unit.scala 20:21]
  reg [7:0] OutState_3_13; // @[Unit.scala 20:21]
  reg [7:0] OutState_3_14; // @[Unit.scala 20:21]
  reg [7:0] OutState_3_15; // @[Unit.scala 20:21]
  reg  Active_0; // @[Unit.scala 22:23]
  reg  Active_1; // @[Unit.scala 22:23]
  reg  Active_2; // @[Unit.scala 22:23]
  reg  Active_3; // @[Unit.scala 22:23]
  reg  Busy_0; // @[Unit.scala 23:21]
  reg  Busy_1; // @[Unit.scala 23:21]
  reg  Busy_2; // @[Unit.scala 23:21]
  reg  Busy_3; // @[Unit.scala 23:21]
  reg  Completed_0; // @[Unit.scala 24:26]
  reg  Completed_1; // @[Unit.scala 24:26]
  reg  Completed_2; // @[Unit.scala 24:26]
  reg  Completed_3; // @[Unit.scala 24:26]
  wire  _GEN_1 = 2'h1 == io_input_bits_control_taskID ? Busy_1 : Busy_0; // @[Unit.scala 32:{21,21}]
  wire  _GEN_2 = 2'h2 == io_input_bits_control_taskID ? Busy_2 : _GEN_1; // @[Unit.scala 32:{21,21}]
  wire  _GEN_3 = 2'h3 == io_input_bits_control_taskID ? Busy_3 : _GEN_2; // @[Unit.scala 32:{21,21}]
  wire  _T = io_input_ready & io_input_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_328 = 2'h0 == io_input_bits_control_taskID; // @[Unit.scala 37:{20,20} 22:23]
  wire  _GEN_84 = 2'h0 == io_input_bits_control_taskID | Active_0; // @[Unit.scala 37:{20,20} 22:23]
  wire  _GEN_329 = 2'h1 == io_input_bits_control_taskID; // @[Unit.scala 37:{20,20} 22:23]
  wire  _GEN_85 = 2'h1 == io_input_bits_control_taskID | Active_1; // @[Unit.scala 37:{20,20} 22:23]
  wire  _GEN_330 = 2'h2 == io_input_bits_control_taskID; // @[Unit.scala 37:{20,20} 22:23]
  wire  _GEN_86 = 2'h2 == io_input_bits_control_taskID | Active_2; // @[Unit.scala 37:{20,20} 22:23]
  wire  _GEN_331 = 2'h3 == io_input_bits_control_taskID; // @[Unit.scala 37:{20,20} 22:23]
  wire  _GEN_87 = 2'h3 == io_input_bits_control_taskID | Active_3; // @[Unit.scala 37:{20,20} 22:23]
  wire  _GEN_88 = _GEN_328 | Busy_0; // @[Unit.scala 38:{18,18} 23:21]
  wire  _GEN_89 = _GEN_329 | Busy_1; // @[Unit.scala 38:{18,18} 23:21]
  wire  _GEN_90 = _GEN_330 | Busy_2; // @[Unit.scala 38:{18,18} 23:21]
  wire  _GEN_91 = _GEN_331 | Busy_3; // @[Unit.scala 38:{18,18} 23:21]
  wire  _T_1 = InArbiter_io_in_0_ready & InArbiter_io_in_0_valid; // @[Decoupled.scala 50:35]
  wire  _T_2 = OutArbiter_io_in_0_ready & OutArbiter_io_in_0_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_181 = _T_2 ? 1'h0 : Completed_0; // @[Unit.scala 49:39 50:23 24:26]
  wire  _T_3 = InArbiter_io_in_1_ready & InArbiter_io_in_1_valid; // @[Decoupled.scala 50:35]
  wire  _T_4 = OutArbiter_io_in_1_ready & OutArbiter_io_in_1_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_184 = _T_4 ? 1'h0 : Completed_1; // @[Unit.scala 49:39 50:23 24:26]
  wire  _T_5 = InArbiter_io_in_2_ready & InArbiter_io_in_2_valid; // @[Decoupled.scala 50:35]
  wire  _T_6 = OutArbiter_io_in_2_ready & OutArbiter_io_in_2_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_187 = _T_6 ? 1'h0 : Completed_2; // @[Unit.scala 49:39 50:23 24:26]
  wire  _T_7 = InArbiter_io_in_3_ready & InArbiter_io_in_3_valid; // @[Decoupled.scala 50:35]
  wire  _T_8 = OutArbiter_io_in_3_ready & OutArbiter_io_in_3_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_190 = _T_8 ? 1'h0 : Completed_3; // @[Unit.scala 49:39 50:23 24:26]
  wire [7:0] _OutState_EngineModule_io_complete_taskID_0 = EngineModule_io_output_state_bits_0; // @[Unit.scala 59:{22,22}]
  wire [7:0] _OutState_EngineModule_io_complete_taskID_1 = EngineModule_io_output_state_bits_1; // @[Unit.scala 59:{22,22}]
  wire [7:0] _OutState_EngineModule_io_complete_taskID_2 = EngineModule_io_output_state_bits_2; // @[Unit.scala 59:{22,22}]
  wire [7:0] _OutState_EngineModule_io_complete_taskID_3 = EngineModule_io_output_state_bits_3; // @[Unit.scala 59:{22,22}]
  wire [7:0] _OutState_EngineModule_io_complete_taskID_4 = EngineModule_io_output_state_bits_4; // @[Unit.scala 59:{22,22}]
  wire [7:0] _OutState_EngineModule_io_complete_taskID_5 = EngineModule_io_output_state_bits_5; // @[Unit.scala 59:{22,22}]
  wire [7:0] _OutState_EngineModule_io_complete_taskID_6 = EngineModule_io_output_state_bits_6; // @[Unit.scala 59:{22,22}]
  wire [7:0] _OutState_EngineModule_io_complete_taskID_7 = EngineModule_io_output_state_bits_7; // @[Unit.scala 59:{22,22}]
  wire [7:0] _OutState_EngineModule_io_complete_taskID_8 = EngineModule_io_output_state_bits_8; // @[Unit.scala 59:{22,22}]
  wire [7:0] _OutState_EngineModule_io_complete_taskID_9 = EngineModule_io_output_state_bits_9; // @[Unit.scala 59:{22,22}]
  wire [7:0] _OutState_EngineModule_io_complete_taskID_10 = EngineModule_io_output_state_bits_10; // @[Unit.scala 59:{22,22}]
  wire [7:0] _OutState_EngineModule_io_complete_taskID_11 = EngineModule_io_output_state_bits_11; // @[Unit.scala 59:{22,22}]
  wire [7:0] _OutState_EngineModule_io_complete_taskID_12 = EngineModule_io_output_state_bits_12; // @[Unit.scala 59:{22,22}]
  wire [7:0] _OutState_EngineModule_io_complete_taskID_13 = EngineModule_io_output_state_bits_13; // @[Unit.scala 59:{22,22}]
  wire [7:0] _OutState_EngineModule_io_complete_taskID_14 = EngineModule_io_output_state_bits_14; // @[Unit.scala 59:{22,22}]
  wire [7:0] _OutState_EngineModule_io_complete_taskID_15 = EngineModule_io_output_state_bits_15; // @[Unit.scala 59:{22,22}]
  wire  _GEN_256 = 2'h0 == EngineModule_io_complete_taskID | _GEN_181; // @[Unit.scala 60:{23,23}]
  wire  _GEN_257 = 2'h1 == EngineModule_io_complete_taskID | _GEN_184; // @[Unit.scala 60:{23,23}]
  wire  _GEN_258 = 2'h2 == EngineModule_io_complete_taskID | _GEN_187; // @[Unit.scala 60:{23,23}]
  wire  _GEN_259 = 2'h3 == EngineModule_io_complete_taskID | _GEN_190; // @[Unit.scala 60:{23,23}]
  KeyBank KeyBankModule ( // @[Unit.scala 26:29]
    .clock(KeyBankModule_clock),
    .io_read_task(KeyBankModule_io_read_task),
    .io_read_round(KeyBankModule_io_read_round),
    .io_read_key_0(KeyBankModule_io_read_key_0),
    .io_read_key_1(KeyBankModule_io_read_key_1),
    .io_read_key_2(KeyBankModule_io_read_key_2),
    .io_read_key_3(KeyBankModule_io_read_key_3),
    .io_read_key_4(KeyBankModule_io_read_key_4),
    .io_read_key_5(KeyBankModule_io_read_key_5),
    .io_read_key_6(KeyBankModule_io_read_key_6),
    .io_read_key_7(KeyBankModule_io_read_key_7),
    .io_read_key_8(KeyBankModule_io_read_key_8),
    .io_read_key_9(KeyBankModule_io_read_key_9),
    .io_read_key_10(KeyBankModule_io_read_key_10),
    .io_read_key_11(KeyBankModule_io_read_key_11),
    .io_read_key_12(KeyBankModule_io_read_key_12),
    .io_read_key_13(KeyBankModule_io_read_key_13),
    .io_read_key_14(KeyBankModule_io_read_key_14),
    .io_read_key_15(KeyBankModule_io_read_key_15),
    .io_write_en(KeyBankModule_io_write_en),
    .io_write_task(KeyBankModule_io_write_task),
    .io_write_round(KeyBankModule_io_write_round),
    .io_write_key_0(KeyBankModule_io_write_key_0),
    .io_write_key_1(KeyBankModule_io_write_key_1),
    .io_write_key_2(KeyBankModule_io_write_key_2),
    .io_write_key_3(KeyBankModule_io_write_key_3),
    .io_write_key_4(KeyBankModule_io_write_key_4),
    .io_write_key_5(KeyBankModule_io_write_key_5),
    .io_write_key_6(KeyBankModule_io_write_key_6),
    .io_write_key_7(KeyBankModule_io_write_key_7),
    .io_write_key_8(KeyBankModule_io_write_key_8),
    .io_write_key_9(KeyBankModule_io_write_key_9),
    .io_write_key_10(KeyBankModule_io_write_key_10),
    .io_write_key_11(KeyBankModule_io_write_key_11),
    .io_write_key_12(KeyBankModule_io_write_key_12),
    .io_write_key_13(KeyBankModule_io_write_key_13),
    .io_write_key_14(KeyBankModule_io_write_key_14),
    .io_write_key_15(KeyBankModule_io_write_key_15)
  );
  AESEncModule EngineModule ( // @[Unit.scala 27:38]
    .clock(EngineModule_clock),
    .reset(EngineModule_reset),
    .io_input_ready(EngineModule_io_input_ready),
    .io_input_valid(EngineModule_io_input_valid),
    .io_input_bits_state_0(EngineModule_io_input_bits_state_0),
    .io_input_bits_state_1(EngineModule_io_input_bits_state_1),
    .io_input_bits_state_2(EngineModule_io_input_bits_state_2),
    .io_input_bits_state_3(EngineModule_io_input_bits_state_3),
    .io_input_bits_state_4(EngineModule_io_input_bits_state_4),
    .io_input_bits_state_5(EngineModule_io_input_bits_state_5),
    .io_input_bits_state_6(EngineModule_io_input_bits_state_6),
    .io_input_bits_state_7(EngineModule_io_input_bits_state_7),
    .io_input_bits_state_8(EngineModule_io_input_bits_state_8),
    .io_input_bits_state_9(EngineModule_io_input_bits_state_9),
    .io_input_bits_state_10(EngineModule_io_input_bits_state_10),
    .io_input_bits_state_11(EngineModule_io_input_bits_state_11),
    .io_input_bits_state_12(EngineModule_io_input_bits_state_12),
    .io_input_bits_state_13(EngineModule_io_input_bits_state_13),
    .io_input_bits_state_14(EngineModule_io_input_bits_state_14),
    .io_input_bits_state_15(EngineModule_io_input_bits_state_15),
    .io_input_bits_control_isIdle(EngineModule_io_input_bits_control_isIdle),
    .io_input_bits_control_taskID(EngineModule_io_input_bits_control_taskID),
    .io_input_bits_control_rounds(EngineModule_io_input_bits_control_rounds),
    .io_round_key_0(EngineModule_io_round_key_0),
    .io_round_key_1(EngineModule_io_round_key_1),
    .io_round_key_2(EngineModule_io_round_key_2),
    .io_round_key_3(EngineModule_io_round_key_3),
    .io_round_key_4(EngineModule_io_round_key_4),
    .io_round_key_5(EngineModule_io_round_key_5),
    .io_round_key_6(EngineModule_io_round_key_6),
    .io_round_key_7(EngineModule_io_round_key_7),
    .io_round_key_8(EngineModule_io_round_key_8),
    .io_round_key_9(EngineModule_io_round_key_9),
    .io_round_key_10(EngineModule_io_round_key_10),
    .io_round_key_11(EngineModule_io_round_key_11),
    .io_round_key_12(EngineModule_io_round_key_12),
    .io_round_key_13(EngineModule_io_round_key_13),
    .io_round_key_14(EngineModule_io_round_key_14),
    .io_round_key_15(EngineModule_io_round_key_15),
    .io_output_state_valid(EngineModule_io_output_state_valid),
    .io_output_state_bits_0(EngineModule_io_output_state_bits_0),
    .io_output_state_bits_1(EngineModule_io_output_state_bits_1),
    .io_output_state_bits_2(EngineModule_io_output_state_bits_2),
    .io_output_state_bits_3(EngineModule_io_output_state_bits_3),
    .io_output_state_bits_4(EngineModule_io_output_state_bits_4),
    .io_output_state_bits_5(EngineModule_io_output_state_bits_5),
    .io_output_state_bits_6(EngineModule_io_output_state_bits_6),
    .io_output_state_bits_7(EngineModule_io_output_state_bits_7),
    .io_output_state_bits_8(EngineModule_io_output_state_bits_8),
    .io_output_state_bits_9(EngineModule_io_output_state_bits_9),
    .io_output_state_bits_10(EngineModule_io_output_state_bits_10),
    .io_output_state_bits_11(EngineModule_io_output_state_bits_11),
    .io_output_state_bits_12(EngineModule_io_output_state_bits_12),
    .io_output_state_bits_13(EngineModule_io_output_state_bits_13),
    .io_output_state_bits_14(EngineModule_io_output_state_bits_14),
    .io_output_state_bits_15(EngineModule_io_output_state_bits_15),
    .io_read_task(EngineModule_io_read_task),
    .io_read_round(EngineModule_io_read_round),
    .io_complete_taskID(EngineModule_io_complete_taskID)
  );
  RRArbiter_1 InArbiter ( // @[Unit.scala 29:25]
    .clock(InArbiter_clock),
    .io_in_0_ready(InArbiter_io_in_0_ready),
    .io_in_0_valid(InArbiter_io_in_0_valid),
    .io_in_0_bits_state_0(InArbiter_io_in_0_bits_state_0),
    .io_in_0_bits_state_1(InArbiter_io_in_0_bits_state_1),
    .io_in_0_bits_state_2(InArbiter_io_in_0_bits_state_2),
    .io_in_0_bits_state_3(InArbiter_io_in_0_bits_state_3),
    .io_in_0_bits_state_4(InArbiter_io_in_0_bits_state_4),
    .io_in_0_bits_state_5(InArbiter_io_in_0_bits_state_5),
    .io_in_0_bits_state_6(InArbiter_io_in_0_bits_state_6),
    .io_in_0_bits_state_7(InArbiter_io_in_0_bits_state_7),
    .io_in_0_bits_state_8(InArbiter_io_in_0_bits_state_8),
    .io_in_0_bits_state_9(InArbiter_io_in_0_bits_state_9),
    .io_in_0_bits_state_10(InArbiter_io_in_0_bits_state_10),
    .io_in_0_bits_state_11(InArbiter_io_in_0_bits_state_11),
    .io_in_0_bits_state_12(InArbiter_io_in_0_bits_state_12),
    .io_in_0_bits_state_13(InArbiter_io_in_0_bits_state_13),
    .io_in_0_bits_state_14(InArbiter_io_in_0_bits_state_14),
    .io_in_0_bits_state_15(InArbiter_io_in_0_bits_state_15),
    .io_in_0_bits_control_isIdle(InArbiter_io_in_0_bits_control_isIdle),
    .io_in_0_bits_control_taskID(InArbiter_io_in_0_bits_control_taskID),
    .io_in_0_bits_control_rounds(InArbiter_io_in_0_bits_control_rounds),
    .io_in_1_ready(InArbiter_io_in_1_ready),
    .io_in_1_valid(InArbiter_io_in_1_valid),
    .io_in_1_bits_state_0(InArbiter_io_in_1_bits_state_0),
    .io_in_1_bits_state_1(InArbiter_io_in_1_bits_state_1),
    .io_in_1_bits_state_2(InArbiter_io_in_1_bits_state_2),
    .io_in_1_bits_state_3(InArbiter_io_in_1_bits_state_3),
    .io_in_1_bits_state_4(InArbiter_io_in_1_bits_state_4),
    .io_in_1_bits_state_5(InArbiter_io_in_1_bits_state_5),
    .io_in_1_bits_state_6(InArbiter_io_in_1_bits_state_6),
    .io_in_1_bits_state_7(InArbiter_io_in_1_bits_state_7),
    .io_in_1_bits_state_8(InArbiter_io_in_1_bits_state_8),
    .io_in_1_bits_state_9(InArbiter_io_in_1_bits_state_9),
    .io_in_1_bits_state_10(InArbiter_io_in_1_bits_state_10),
    .io_in_1_bits_state_11(InArbiter_io_in_1_bits_state_11),
    .io_in_1_bits_state_12(InArbiter_io_in_1_bits_state_12),
    .io_in_1_bits_state_13(InArbiter_io_in_1_bits_state_13),
    .io_in_1_bits_state_14(InArbiter_io_in_1_bits_state_14),
    .io_in_1_bits_state_15(InArbiter_io_in_1_bits_state_15),
    .io_in_1_bits_control_isIdle(InArbiter_io_in_1_bits_control_isIdle),
    .io_in_1_bits_control_taskID(InArbiter_io_in_1_bits_control_taskID),
    .io_in_1_bits_control_rounds(InArbiter_io_in_1_bits_control_rounds),
    .io_in_2_ready(InArbiter_io_in_2_ready),
    .io_in_2_valid(InArbiter_io_in_2_valid),
    .io_in_2_bits_state_0(InArbiter_io_in_2_bits_state_0),
    .io_in_2_bits_state_1(InArbiter_io_in_2_bits_state_1),
    .io_in_2_bits_state_2(InArbiter_io_in_2_bits_state_2),
    .io_in_2_bits_state_3(InArbiter_io_in_2_bits_state_3),
    .io_in_2_bits_state_4(InArbiter_io_in_2_bits_state_4),
    .io_in_2_bits_state_5(InArbiter_io_in_2_bits_state_5),
    .io_in_2_bits_state_6(InArbiter_io_in_2_bits_state_6),
    .io_in_2_bits_state_7(InArbiter_io_in_2_bits_state_7),
    .io_in_2_bits_state_8(InArbiter_io_in_2_bits_state_8),
    .io_in_2_bits_state_9(InArbiter_io_in_2_bits_state_9),
    .io_in_2_bits_state_10(InArbiter_io_in_2_bits_state_10),
    .io_in_2_bits_state_11(InArbiter_io_in_2_bits_state_11),
    .io_in_2_bits_state_12(InArbiter_io_in_2_bits_state_12),
    .io_in_2_bits_state_13(InArbiter_io_in_2_bits_state_13),
    .io_in_2_bits_state_14(InArbiter_io_in_2_bits_state_14),
    .io_in_2_bits_state_15(InArbiter_io_in_2_bits_state_15),
    .io_in_2_bits_control_isIdle(InArbiter_io_in_2_bits_control_isIdle),
    .io_in_2_bits_control_taskID(InArbiter_io_in_2_bits_control_taskID),
    .io_in_2_bits_control_rounds(InArbiter_io_in_2_bits_control_rounds),
    .io_in_3_ready(InArbiter_io_in_3_ready),
    .io_in_3_valid(InArbiter_io_in_3_valid),
    .io_in_3_bits_state_0(InArbiter_io_in_3_bits_state_0),
    .io_in_3_bits_state_1(InArbiter_io_in_3_bits_state_1),
    .io_in_3_bits_state_2(InArbiter_io_in_3_bits_state_2),
    .io_in_3_bits_state_3(InArbiter_io_in_3_bits_state_3),
    .io_in_3_bits_state_4(InArbiter_io_in_3_bits_state_4),
    .io_in_3_bits_state_5(InArbiter_io_in_3_bits_state_5),
    .io_in_3_bits_state_6(InArbiter_io_in_3_bits_state_6),
    .io_in_3_bits_state_7(InArbiter_io_in_3_bits_state_7),
    .io_in_3_bits_state_8(InArbiter_io_in_3_bits_state_8),
    .io_in_3_bits_state_9(InArbiter_io_in_3_bits_state_9),
    .io_in_3_bits_state_10(InArbiter_io_in_3_bits_state_10),
    .io_in_3_bits_state_11(InArbiter_io_in_3_bits_state_11),
    .io_in_3_bits_state_12(InArbiter_io_in_3_bits_state_12),
    .io_in_3_bits_state_13(InArbiter_io_in_3_bits_state_13),
    .io_in_3_bits_state_14(InArbiter_io_in_3_bits_state_14),
    .io_in_3_bits_state_15(InArbiter_io_in_3_bits_state_15),
    .io_in_3_bits_control_isIdle(InArbiter_io_in_3_bits_control_isIdle),
    .io_in_3_bits_control_taskID(InArbiter_io_in_3_bits_control_taskID),
    .io_in_3_bits_control_rounds(InArbiter_io_in_3_bits_control_rounds),
    .io_out_ready(InArbiter_io_out_ready),
    .io_out_valid(InArbiter_io_out_valid),
    .io_out_bits_state_0(InArbiter_io_out_bits_state_0),
    .io_out_bits_state_1(InArbiter_io_out_bits_state_1),
    .io_out_bits_state_2(InArbiter_io_out_bits_state_2),
    .io_out_bits_state_3(InArbiter_io_out_bits_state_3),
    .io_out_bits_state_4(InArbiter_io_out_bits_state_4),
    .io_out_bits_state_5(InArbiter_io_out_bits_state_5),
    .io_out_bits_state_6(InArbiter_io_out_bits_state_6),
    .io_out_bits_state_7(InArbiter_io_out_bits_state_7),
    .io_out_bits_state_8(InArbiter_io_out_bits_state_8),
    .io_out_bits_state_9(InArbiter_io_out_bits_state_9),
    .io_out_bits_state_10(InArbiter_io_out_bits_state_10),
    .io_out_bits_state_11(InArbiter_io_out_bits_state_11),
    .io_out_bits_state_12(InArbiter_io_out_bits_state_12),
    .io_out_bits_state_13(InArbiter_io_out_bits_state_13),
    .io_out_bits_state_14(InArbiter_io_out_bits_state_14),
    .io_out_bits_state_15(InArbiter_io_out_bits_state_15),
    .io_out_bits_control_isIdle(InArbiter_io_out_bits_control_isIdle),
    .io_out_bits_control_taskID(InArbiter_io_out_bits_control_taskID),
    .io_out_bits_control_rounds(InArbiter_io_out_bits_control_rounds),
    .io_chosen(InArbiter_io_chosen)
  );
  RRArbiter OutArbiter ( // @[Unit.scala 30:26]
    .clock(OutArbiter_clock),
    .io_in_0_ready(OutArbiter_io_in_0_ready),
    .io_in_0_valid(OutArbiter_io_in_0_valid),
    .io_in_0_bits_0(OutArbiter_io_in_0_bits_0),
    .io_in_0_bits_1(OutArbiter_io_in_0_bits_1),
    .io_in_0_bits_2(OutArbiter_io_in_0_bits_2),
    .io_in_0_bits_3(OutArbiter_io_in_0_bits_3),
    .io_in_0_bits_4(OutArbiter_io_in_0_bits_4),
    .io_in_0_bits_5(OutArbiter_io_in_0_bits_5),
    .io_in_0_bits_6(OutArbiter_io_in_0_bits_6),
    .io_in_0_bits_7(OutArbiter_io_in_0_bits_7),
    .io_in_0_bits_8(OutArbiter_io_in_0_bits_8),
    .io_in_0_bits_9(OutArbiter_io_in_0_bits_9),
    .io_in_0_bits_10(OutArbiter_io_in_0_bits_10),
    .io_in_0_bits_11(OutArbiter_io_in_0_bits_11),
    .io_in_0_bits_12(OutArbiter_io_in_0_bits_12),
    .io_in_0_bits_13(OutArbiter_io_in_0_bits_13),
    .io_in_0_bits_14(OutArbiter_io_in_0_bits_14),
    .io_in_0_bits_15(OutArbiter_io_in_0_bits_15),
    .io_in_1_ready(OutArbiter_io_in_1_ready),
    .io_in_1_valid(OutArbiter_io_in_1_valid),
    .io_in_1_bits_0(OutArbiter_io_in_1_bits_0),
    .io_in_1_bits_1(OutArbiter_io_in_1_bits_1),
    .io_in_1_bits_2(OutArbiter_io_in_1_bits_2),
    .io_in_1_bits_3(OutArbiter_io_in_1_bits_3),
    .io_in_1_bits_4(OutArbiter_io_in_1_bits_4),
    .io_in_1_bits_5(OutArbiter_io_in_1_bits_5),
    .io_in_1_bits_6(OutArbiter_io_in_1_bits_6),
    .io_in_1_bits_7(OutArbiter_io_in_1_bits_7),
    .io_in_1_bits_8(OutArbiter_io_in_1_bits_8),
    .io_in_1_bits_9(OutArbiter_io_in_1_bits_9),
    .io_in_1_bits_10(OutArbiter_io_in_1_bits_10),
    .io_in_1_bits_11(OutArbiter_io_in_1_bits_11),
    .io_in_1_bits_12(OutArbiter_io_in_1_bits_12),
    .io_in_1_bits_13(OutArbiter_io_in_1_bits_13),
    .io_in_1_bits_14(OutArbiter_io_in_1_bits_14),
    .io_in_1_bits_15(OutArbiter_io_in_1_bits_15),
    .io_in_2_ready(OutArbiter_io_in_2_ready),
    .io_in_2_valid(OutArbiter_io_in_2_valid),
    .io_in_2_bits_0(OutArbiter_io_in_2_bits_0),
    .io_in_2_bits_1(OutArbiter_io_in_2_bits_1),
    .io_in_2_bits_2(OutArbiter_io_in_2_bits_2),
    .io_in_2_bits_3(OutArbiter_io_in_2_bits_3),
    .io_in_2_bits_4(OutArbiter_io_in_2_bits_4),
    .io_in_2_bits_5(OutArbiter_io_in_2_bits_5),
    .io_in_2_bits_6(OutArbiter_io_in_2_bits_6),
    .io_in_2_bits_7(OutArbiter_io_in_2_bits_7),
    .io_in_2_bits_8(OutArbiter_io_in_2_bits_8),
    .io_in_2_bits_9(OutArbiter_io_in_2_bits_9),
    .io_in_2_bits_10(OutArbiter_io_in_2_bits_10),
    .io_in_2_bits_11(OutArbiter_io_in_2_bits_11),
    .io_in_2_bits_12(OutArbiter_io_in_2_bits_12),
    .io_in_2_bits_13(OutArbiter_io_in_2_bits_13),
    .io_in_2_bits_14(OutArbiter_io_in_2_bits_14),
    .io_in_2_bits_15(OutArbiter_io_in_2_bits_15),
    .io_in_3_ready(OutArbiter_io_in_3_ready),
    .io_in_3_valid(OutArbiter_io_in_3_valid),
    .io_in_3_bits_0(OutArbiter_io_in_3_bits_0),
    .io_in_3_bits_1(OutArbiter_io_in_3_bits_1),
    .io_in_3_bits_2(OutArbiter_io_in_3_bits_2),
    .io_in_3_bits_3(OutArbiter_io_in_3_bits_3),
    .io_in_3_bits_4(OutArbiter_io_in_3_bits_4),
    .io_in_3_bits_5(OutArbiter_io_in_3_bits_5),
    .io_in_3_bits_6(OutArbiter_io_in_3_bits_6),
    .io_in_3_bits_7(OutArbiter_io_in_3_bits_7),
    .io_in_3_bits_8(OutArbiter_io_in_3_bits_8),
    .io_in_3_bits_9(OutArbiter_io_in_3_bits_9),
    .io_in_3_bits_10(OutArbiter_io_in_3_bits_10),
    .io_in_3_bits_11(OutArbiter_io_in_3_bits_11),
    .io_in_3_bits_12(OutArbiter_io_in_3_bits_12),
    .io_in_3_bits_13(OutArbiter_io_in_3_bits_13),
    .io_in_3_bits_14(OutArbiter_io_in_3_bits_14),
    .io_in_3_bits_15(OutArbiter_io_in_3_bits_15),
    .io_out_ready(OutArbiter_io_out_ready),
    .io_out_valid(OutArbiter_io_out_valid),
    .io_out_bits_0(OutArbiter_io_out_bits_0),
    .io_out_bits_1(OutArbiter_io_out_bits_1),
    .io_out_bits_2(OutArbiter_io_out_bits_2),
    .io_out_bits_3(OutArbiter_io_out_bits_3),
    .io_out_bits_4(OutArbiter_io_out_bits_4),
    .io_out_bits_5(OutArbiter_io_out_bits_5),
    .io_out_bits_6(OutArbiter_io_out_bits_6),
    .io_out_bits_7(OutArbiter_io_out_bits_7),
    .io_out_bits_8(OutArbiter_io_out_bits_8),
    .io_out_bits_9(OutArbiter_io_out_bits_9),
    .io_out_bits_10(OutArbiter_io_out_bits_10),
    .io_out_bits_11(OutArbiter_io_out_bits_11),
    .io_out_bits_12(OutArbiter_io_out_bits_12),
    .io_out_bits_13(OutArbiter_io_out_bits_13),
    .io_out_bits_14(OutArbiter_io_out_bits_14),
    .io_out_bits_15(OutArbiter_io_out_bits_15),
    .io_chosen(OutArbiter_io_chosen)
  );
  assign io_input_ready = ~_GEN_3; // @[Unit.scala 32:21]
  assign io_output_valid = OutArbiter_io_out_valid; // @[Unit.scala 73:13]
  assign io_output_bits_0 = OutArbiter_io_out_bits_0; // @[Unit.scala 73:13]
  assign io_output_bits_1 = OutArbiter_io_out_bits_1; // @[Unit.scala 73:13]
  assign io_output_bits_2 = OutArbiter_io_out_bits_2; // @[Unit.scala 73:13]
  assign io_output_bits_3 = OutArbiter_io_out_bits_3; // @[Unit.scala 73:13]
  assign io_output_bits_4 = OutArbiter_io_out_bits_4; // @[Unit.scala 73:13]
  assign io_output_bits_5 = OutArbiter_io_out_bits_5; // @[Unit.scala 73:13]
  assign io_output_bits_6 = OutArbiter_io_out_bits_6; // @[Unit.scala 73:13]
  assign io_output_bits_7 = OutArbiter_io_out_bits_7; // @[Unit.scala 73:13]
  assign io_output_bits_8 = OutArbiter_io_out_bits_8; // @[Unit.scala 73:13]
  assign io_output_bits_9 = OutArbiter_io_out_bits_9; // @[Unit.scala 73:13]
  assign io_output_bits_10 = OutArbiter_io_out_bits_10; // @[Unit.scala 73:13]
  assign io_output_bits_11 = OutArbiter_io_out_bits_11; // @[Unit.scala 73:13]
  assign io_output_bits_12 = OutArbiter_io_out_bits_12; // @[Unit.scala 73:13]
  assign io_output_bits_13 = OutArbiter_io_out_bits_13; // @[Unit.scala 73:13]
  assign io_output_bits_14 = OutArbiter_io_out_bits_14; // @[Unit.scala 73:13]
  assign io_output_bits_15 = OutArbiter_io_out_bits_15; // @[Unit.scala 73:13]
  assign io_output_task = OutArbiter_io_chosen; // @[Unit.scala 74:18]
  assign KeyBankModule_clock = clock;
  assign KeyBankModule_io_read_task = EngineModule_io_read_task; // @[Unit.scala 63:30]
  assign KeyBankModule_io_read_round = EngineModule_io_read_round; // @[Unit.scala 64:31]
  assign KeyBankModule_io_write_en = io_write_en; // @[Unit.scala 68:29]
  assign KeyBankModule_io_write_task = io_write_task; // @[Unit.scala 69:31]
  assign KeyBankModule_io_write_round = io_write_round; // @[Unit.scala 70:32]
  assign KeyBankModule_io_write_key_0 = io_write_key_0; // @[Unit.scala 71:30]
  assign KeyBankModule_io_write_key_1 = io_write_key_1; // @[Unit.scala 71:30]
  assign KeyBankModule_io_write_key_2 = io_write_key_2; // @[Unit.scala 71:30]
  assign KeyBankModule_io_write_key_3 = io_write_key_3; // @[Unit.scala 71:30]
  assign KeyBankModule_io_write_key_4 = io_write_key_4; // @[Unit.scala 71:30]
  assign KeyBankModule_io_write_key_5 = io_write_key_5; // @[Unit.scala 71:30]
  assign KeyBankModule_io_write_key_6 = io_write_key_6; // @[Unit.scala 71:30]
  assign KeyBankModule_io_write_key_7 = io_write_key_7; // @[Unit.scala 71:30]
  assign KeyBankModule_io_write_key_8 = io_write_key_8; // @[Unit.scala 71:30]
  assign KeyBankModule_io_write_key_9 = io_write_key_9; // @[Unit.scala 71:30]
  assign KeyBankModule_io_write_key_10 = io_write_key_10; // @[Unit.scala 71:30]
  assign KeyBankModule_io_write_key_11 = io_write_key_11; // @[Unit.scala 71:30]
  assign KeyBankModule_io_write_key_12 = io_write_key_12; // @[Unit.scala 71:30]
  assign KeyBankModule_io_write_key_13 = io_write_key_13; // @[Unit.scala 71:30]
  assign KeyBankModule_io_write_key_14 = io_write_key_14; // @[Unit.scala 71:30]
  assign KeyBankModule_io_write_key_15 = io_write_key_15; // @[Unit.scala 71:30]
  assign EngineModule_clock = clock;
  assign EngineModule_reset = reset;
  assign EngineModule_io_input_valid = InArbiter_io_out_valid; // @[Unit.scala 55:25]
  assign EngineModule_io_input_bits_state_0 = InArbiter_io_out_bits_state_0; // @[Unit.scala 55:25]
  assign EngineModule_io_input_bits_state_1 = InArbiter_io_out_bits_state_1; // @[Unit.scala 55:25]
  assign EngineModule_io_input_bits_state_2 = InArbiter_io_out_bits_state_2; // @[Unit.scala 55:25]
  assign EngineModule_io_input_bits_state_3 = InArbiter_io_out_bits_state_3; // @[Unit.scala 55:25]
  assign EngineModule_io_input_bits_state_4 = InArbiter_io_out_bits_state_4; // @[Unit.scala 55:25]
  assign EngineModule_io_input_bits_state_5 = InArbiter_io_out_bits_state_5; // @[Unit.scala 55:25]
  assign EngineModule_io_input_bits_state_6 = InArbiter_io_out_bits_state_6; // @[Unit.scala 55:25]
  assign EngineModule_io_input_bits_state_7 = InArbiter_io_out_bits_state_7; // @[Unit.scala 55:25]
  assign EngineModule_io_input_bits_state_8 = InArbiter_io_out_bits_state_8; // @[Unit.scala 55:25]
  assign EngineModule_io_input_bits_state_9 = InArbiter_io_out_bits_state_9; // @[Unit.scala 55:25]
  assign EngineModule_io_input_bits_state_10 = InArbiter_io_out_bits_state_10; // @[Unit.scala 55:25]
  assign EngineModule_io_input_bits_state_11 = InArbiter_io_out_bits_state_11; // @[Unit.scala 55:25]
  assign EngineModule_io_input_bits_state_12 = InArbiter_io_out_bits_state_12; // @[Unit.scala 55:25]
  assign EngineModule_io_input_bits_state_13 = InArbiter_io_out_bits_state_13; // @[Unit.scala 55:25]
  assign EngineModule_io_input_bits_state_14 = InArbiter_io_out_bits_state_14; // @[Unit.scala 55:25]
  assign EngineModule_io_input_bits_state_15 = InArbiter_io_out_bits_state_15; // @[Unit.scala 55:25]
  assign EngineModule_io_input_bits_control_isIdle = InArbiter_io_out_bits_control_isIdle; // @[Unit.scala 55:25]
  assign EngineModule_io_input_bits_control_taskID = InArbiter_io_out_bits_control_taskID; // @[Unit.scala 55:25]
  assign EngineModule_io_input_bits_control_rounds = InArbiter_io_out_bits_control_rounds; // @[Unit.scala 55:25]
  assign EngineModule_io_round_key_0 = KeyBankModule_io_read_key_0; // @[Unit.scala 65:29]
  assign EngineModule_io_round_key_1 = KeyBankModule_io_read_key_1; // @[Unit.scala 65:29]
  assign EngineModule_io_round_key_2 = KeyBankModule_io_read_key_2; // @[Unit.scala 65:29]
  assign EngineModule_io_round_key_3 = KeyBankModule_io_read_key_3; // @[Unit.scala 65:29]
  assign EngineModule_io_round_key_4 = KeyBankModule_io_read_key_4; // @[Unit.scala 65:29]
  assign EngineModule_io_round_key_5 = KeyBankModule_io_read_key_5; // @[Unit.scala 65:29]
  assign EngineModule_io_round_key_6 = KeyBankModule_io_read_key_6; // @[Unit.scala 65:29]
  assign EngineModule_io_round_key_7 = KeyBankModule_io_read_key_7; // @[Unit.scala 65:29]
  assign EngineModule_io_round_key_8 = KeyBankModule_io_read_key_8; // @[Unit.scala 65:29]
  assign EngineModule_io_round_key_9 = KeyBankModule_io_read_key_9; // @[Unit.scala 65:29]
  assign EngineModule_io_round_key_10 = KeyBankModule_io_read_key_10; // @[Unit.scala 65:29]
  assign EngineModule_io_round_key_11 = KeyBankModule_io_read_key_11; // @[Unit.scala 65:29]
  assign EngineModule_io_round_key_12 = KeyBankModule_io_read_key_12; // @[Unit.scala 65:29]
  assign EngineModule_io_round_key_13 = KeyBankModule_io_read_key_13; // @[Unit.scala 65:29]
  assign EngineModule_io_round_key_14 = KeyBankModule_io_read_key_14; // @[Unit.scala 65:29]
  assign EngineModule_io_round_key_15 = KeyBankModule_io_read_key_15; // @[Unit.scala 65:29]
  assign InArbiter_clock = clock;
  assign InArbiter_io_in_0_valid = Active_0; // @[Unit.scala 43:33]
  assign InArbiter_io_in_0_bits_state_0 = InPara_0_state_0; // @[Unit.scala 42:32]
  assign InArbiter_io_in_0_bits_state_1 = InPara_0_state_1; // @[Unit.scala 42:32]
  assign InArbiter_io_in_0_bits_state_2 = InPara_0_state_2; // @[Unit.scala 42:32]
  assign InArbiter_io_in_0_bits_state_3 = InPara_0_state_3; // @[Unit.scala 42:32]
  assign InArbiter_io_in_0_bits_state_4 = InPara_0_state_4; // @[Unit.scala 42:32]
  assign InArbiter_io_in_0_bits_state_5 = InPara_0_state_5; // @[Unit.scala 42:32]
  assign InArbiter_io_in_0_bits_state_6 = InPara_0_state_6; // @[Unit.scala 42:32]
  assign InArbiter_io_in_0_bits_state_7 = InPara_0_state_7; // @[Unit.scala 42:32]
  assign InArbiter_io_in_0_bits_state_8 = InPara_0_state_8; // @[Unit.scala 42:32]
  assign InArbiter_io_in_0_bits_state_9 = InPara_0_state_9; // @[Unit.scala 42:32]
  assign InArbiter_io_in_0_bits_state_10 = InPara_0_state_10; // @[Unit.scala 42:32]
  assign InArbiter_io_in_0_bits_state_11 = InPara_0_state_11; // @[Unit.scala 42:32]
  assign InArbiter_io_in_0_bits_state_12 = InPara_0_state_12; // @[Unit.scala 42:32]
  assign InArbiter_io_in_0_bits_state_13 = InPara_0_state_13; // @[Unit.scala 42:32]
  assign InArbiter_io_in_0_bits_state_14 = InPara_0_state_14; // @[Unit.scala 42:32]
  assign InArbiter_io_in_0_bits_state_15 = InPara_0_state_15; // @[Unit.scala 42:32]
  assign InArbiter_io_in_0_bits_control_isIdle = InPara_0_control_isIdle; // @[Unit.scala 42:32]
  assign InArbiter_io_in_0_bits_control_taskID = InPara_0_control_taskID; // @[Unit.scala 42:32]
  assign InArbiter_io_in_0_bits_control_rounds = 4'h0; // @[Unit.scala 42:32]
  assign InArbiter_io_in_1_valid = Active_1; // @[Unit.scala 43:33]
  assign InArbiter_io_in_1_bits_state_0 = InPara_1_state_0; // @[Unit.scala 42:32]
  assign InArbiter_io_in_1_bits_state_1 = InPara_1_state_1; // @[Unit.scala 42:32]
  assign InArbiter_io_in_1_bits_state_2 = InPara_1_state_2; // @[Unit.scala 42:32]
  assign InArbiter_io_in_1_bits_state_3 = InPara_1_state_3; // @[Unit.scala 42:32]
  assign InArbiter_io_in_1_bits_state_4 = InPara_1_state_4; // @[Unit.scala 42:32]
  assign InArbiter_io_in_1_bits_state_5 = InPara_1_state_5; // @[Unit.scala 42:32]
  assign InArbiter_io_in_1_bits_state_6 = InPara_1_state_6; // @[Unit.scala 42:32]
  assign InArbiter_io_in_1_bits_state_7 = InPara_1_state_7; // @[Unit.scala 42:32]
  assign InArbiter_io_in_1_bits_state_8 = InPara_1_state_8; // @[Unit.scala 42:32]
  assign InArbiter_io_in_1_bits_state_9 = InPara_1_state_9; // @[Unit.scala 42:32]
  assign InArbiter_io_in_1_bits_state_10 = InPara_1_state_10; // @[Unit.scala 42:32]
  assign InArbiter_io_in_1_bits_state_11 = InPara_1_state_11; // @[Unit.scala 42:32]
  assign InArbiter_io_in_1_bits_state_12 = InPara_1_state_12; // @[Unit.scala 42:32]
  assign InArbiter_io_in_1_bits_state_13 = InPara_1_state_13; // @[Unit.scala 42:32]
  assign InArbiter_io_in_1_bits_state_14 = InPara_1_state_14; // @[Unit.scala 42:32]
  assign InArbiter_io_in_1_bits_state_15 = InPara_1_state_15; // @[Unit.scala 42:32]
  assign InArbiter_io_in_1_bits_control_isIdle = InPara_1_control_isIdle; // @[Unit.scala 42:32]
  assign InArbiter_io_in_1_bits_control_taskID = InPara_1_control_taskID; // @[Unit.scala 42:32]
  assign InArbiter_io_in_1_bits_control_rounds = 4'h0; // @[Unit.scala 42:32]
  assign InArbiter_io_in_2_valid = Active_2; // @[Unit.scala 43:33]
  assign InArbiter_io_in_2_bits_state_0 = InPara_2_state_0; // @[Unit.scala 42:32]
  assign InArbiter_io_in_2_bits_state_1 = InPara_2_state_1; // @[Unit.scala 42:32]
  assign InArbiter_io_in_2_bits_state_2 = InPara_2_state_2; // @[Unit.scala 42:32]
  assign InArbiter_io_in_2_bits_state_3 = InPara_2_state_3; // @[Unit.scala 42:32]
  assign InArbiter_io_in_2_bits_state_4 = InPara_2_state_4; // @[Unit.scala 42:32]
  assign InArbiter_io_in_2_bits_state_5 = InPara_2_state_5; // @[Unit.scala 42:32]
  assign InArbiter_io_in_2_bits_state_6 = InPara_2_state_6; // @[Unit.scala 42:32]
  assign InArbiter_io_in_2_bits_state_7 = InPara_2_state_7; // @[Unit.scala 42:32]
  assign InArbiter_io_in_2_bits_state_8 = InPara_2_state_8; // @[Unit.scala 42:32]
  assign InArbiter_io_in_2_bits_state_9 = InPara_2_state_9; // @[Unit.scala 42:32]
  assign InArbiter_io_in_2_bits_state_10 = InPara_2_state_10; // @[Unit.scala 42:32]
  assign InArbiter_io_in_2_bits_state_11 = InPara_2_state_11; // @[Unit.scala 42:32]
  assign InArbiter_io_in_2_bits_state_12 = InPara_2_state_12; // @[Unit.scala 42:32]
  assign InArbiter_io_in_2_bits_state_13 = InPara_2_state_13; // @[Unit.scala 42:32]
  assign InArbiter_io_in_2_bits_state_14 = InPara_2_state_14; // @[Unit.scala 42:32]
  assign InArbiter_io_in_2_bits_state_15 = InPara_2_state_15; // @[Unit.scala 42:32]
  assign InArbiter_io_in_2_bits_control_isIdle = InPara_2_control_isIdle; // @[Unit.scala 42:32]
  assign InArbiter_io_in_2_bits_control_taskID = InPara_2_control_taskID; // @[Unit.scala 42:32]
  assign InArbiter_io_in_2_bits_control_rounds = 4'h0; // @[Unit.scala 42:32]
  assign InArbiter_io_in_3_valid = Active_3; // @[Unit.scala 43:33]
  assign InArbiter_io_in_3_bits_state_0 = InPara_3_state_0; // @[Unit.scala 42:32]
  assign InArbiter_io_in_3_bits_state_1 = InPara_3_state_1; // @[Unit.scala 42:32]
  assign InArbiter_io_in_3_bits_state_2 = InPara_3_state_2; // @[Unit.scala 42:32]
  assign InArbiter_io_in_3_bits_state_3 = InPara_3_state_3; // @[Unit.scala 42:32]
  assign InArbiter_io_in_3_bits_state_4 = InPara_3_state_4; // @[Unit.scala 42:32]
  assign InArbiter_io_in_3_bits_state_5 = InPara_3_state_5; // @[Unit.scala 42:32]
  assign InArbiter_io_in_3_bits_state_6 = InPara_3_state_6; // @[Unit.scala 42:32]
  assign InArbiter_io_in_3_bits_state_7 = InPara_3_state_7; // @[Unit.scala 42:32]
  assign InArbiter_io_in_3_bits_state_8 = InPara_3_state_8; // @[Unit.scala 42:32]
  assign InArbiter_io_in_3_bits_state_9 = InPara_3_state_9; // @[Unit.scala 42:32]
  assign InArbiter_io_in_3_bits_state_10 = InPara_3_state_10; // @[Unit.scala 42:32]
  assign InArbiter_io_in_3_bits_state_11 = InPara_3_state_11; // @[Unit.scala 42:32]
  assign InArbiter_io_in_3_bits_state_12 = InPara_3_state_12; // @[Unit.scala 42:32]
  assign InArbiter_io_in_3_bits_state_13 = InPara_3_state_13; // @[Unit.scala 42:32]
  assign InArbiter_io_in_3_bits_state_14 = InPara_3_state_14; // @[Unit.scala 42:32]
  assign InArbiter_io_in_3_bits_state_15 = InPara_3_state_15; // @[Unit.scala 42:32]
  assign InArbiter_io_in_3_bits_control_isIdle = InPara_3_control_isIdle; // @[Unit.scala 42:32]
  assign InArbiter_io_in_3_bits_control_taskID = InPara_3_control_taskID; // @[Unit.scala 42:32]
  assign InArbiter_io_in_3_bits_control_rounds = 4'h0; // @[Unit.scala 42:32]
  assign InArbiter_io_out_ready = EngineModule_io_input_ready; // @[Unit.scala 55:25]
  assign OutArbiter_clock = clock;
  assign OutArbiter_io_in_0_valid = Completed_0; // @[Unit.scala 45:34]
  assign OutArbiter_io_in_0_bits_0 = OutState_0_0; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_0_bits_1 = OutState_0_1; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_0_bits_2 = OutState_0_2; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_0_bits_3 = OutState_0_3; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_0_bits_4 = OutState_0_4; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_0_bits_5 = OutState_0_5; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_0_bits_6 = OutState_0_6; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_0_bits_7 = OutState_0_7; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_0_bits_8 = OutState_0_8; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_0_bits_9 = OutState_0_9; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_0_bits_10 = OutState_0_10; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_0_bits_11 = OutState_0_11; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_0_bits_12 = OutState_0_12; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_0_bits_13 = OutState_0_13; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_0_bits_14 = OutState_0_14; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_0_bits_15 = OutState_0_15; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_1_valid = Completed_1; // @[Unit.scala 45:34]
  assign OutArbiter_io_in_1_bits_0 = OutState_1_0; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_1_bits_1 = OutState_1_1; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_1_bits_2 = OutState_1_2; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_1_bits_3 = OutState_1_3; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_1_bits_4 = OutState_1_4; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_1_bits_5 = OutState_1_5; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_1_bits_6 = OutState_1_6; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_1_bits_7 = OutState_1_7; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_1_bits_8 = OutState_1_8; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_1_bits_9 = OutState_1_9; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_1_bits_10 = OutState_1_10; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_1_bits_11 = OutState_1_11; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_1_bits_12 = OutState_1_12; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_1_bits_13 = OutState_1_13; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_1_bits_14 = OutState_1_14; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_1_bits_15 = OutState_1_15; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_2_valid = Completed_2; // @[Unit.scala 45:34]
  assign OutArbiter_io_in_2_bits_0 = OutState_2_0; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_2_bits_1 = OutState_2_1; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_2_bits_2 = OutState_2_2; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_2_bits_3 = OutState_2_3; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_2_bits_4 = OutState_2_4; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_2_bits_5 = OutState_2_5; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_2_bits_6 = OutState_2_6; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_2_bits_7 = OutState_2_7; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_2_bits_8 = OutState_2_8; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_2_bits_9 = OutState_2_9; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_2_bits_10 = OutState_2_10; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_2_bits_11 = OutState_2_11; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_2_bits_12 = OutState_2_12; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_2_bits_13 = OutState_2_13; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_2_bits_14 = OutState_2_14; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_2_bits_15 = OutState_2_15; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_3_valid = Completed_3; // @[Unit.scala 45:34]
  assign OutArbiter_io_in_3_bits_0 = OutState_3_0; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_3_bits_1 = OutState_3_1; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_3_bits_2 = OutState_3_2; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_3_bits_3 = OutState_3_3; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_3_bits_4 = OutState_3_4; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_3_bits_5 = OutState_3_5; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_3_bits_6 = OutState_3_6; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_3_bits_7 = OutState_3_7; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_3_bits_8 = OutState_3_8; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_3_bits_9 = OutState_3_9; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_3_bits_10 = OutState_3_10; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_3_bits_11 = OutState_3_11; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_3_bits_12 = OutState_3_12; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_3_bits_13 = OutState_3_13; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_3_bits_14 = OutState_3_14; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_3_bits_15 = OutState_3_15; // @[Unit.scala 44:33]
  assign OutArbiter_io_out_ready = io_output_ready; // @[Unit.scala 73:13]
  always @(posedge clock) begin
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h0 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_0_state_0 <= io_input_bits_state_0; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h0 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_0_state_1 <= io_input_bits_state_1; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h0 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_0_state_2 <= io_input_bits_state_2; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h0 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_0_state_3 <= io_input_bits_state_3; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h0 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_0_state_4 <= io_input_bits_state_4; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h0 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_0_state_5 <= io_input_bits_state_5; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h0 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_0_state_6 <= io_input_bits_state_6; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h0 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_0_state_7 <= io_input_bits_state_7; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h0 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_0_state_8 <= io_input_bits_state_8; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h0 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_0_state_9 <= io_input_bits_state_9; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h0 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_0_state_10 <= io_input_bits_state_10; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h0 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_0_state_11 <= io_input_bits_state_11; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h0 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_0_state_12 <= io_input_bits_state_12; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h0 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_0_state_13 <= io_input_bits_state_13; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h0 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_0_state_14 <= io_input_bits_state_14; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h0 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_0_state_15 <= io_input_bits_state_15; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h0 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_0_control_isIdle <= io_input_bits_control_isIdle; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h0 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_0_control_taskID <= io_input_bits_control_taskID; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h1 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_1_state_0 <= io_input_bits_state_0; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h1 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_1_state_1 <= io_input_bits_state_1; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h1 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_1_state_2 <= io_input_bits_state_2; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h1 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_1_state_3 <= io_input_bits_state_3; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h1 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_1_state_4 <= io_input_bits_state_4; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h1 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_1_state_5 <= io_input_bits_state_5; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h1 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_1_state_6 <= io_input_bits_state_6; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h1 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_1_state_7 <= io_input_bits_state_7; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h1 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_1_state_8 <= io_input_bits_state_8; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h1 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_1_state_9 <= io_input_bits_state_9; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h1 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_1_state_10 <= io_input_bits_state_10; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h1 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_1_state_11 <= io_input_bits_state_11; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h1 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_1_state_12 <= io_input_bits_state_12; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h1 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_1_state_13 <= io_input_bits_state_13; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h1 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_1_state_14 <= io_input_bits_state_14; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h1 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_1_state_15 <= io_input_bits_state_15; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h1 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_1_control_isIdle <= io_input_bits_control_isIdle; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h1 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_1_control_taskID <= io_input_bits_control_taskID; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h2 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_2_state_0 <= io_input_bits_state_0; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h2 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_2_state_1 <= io_input_bits_state_1; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h2 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_2_state_2 <= io_input_bits_state_2; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h2 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_2_state_3 <= io_input_bits_state_3; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h2 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_2_state_4 <= io_input_bits_state_4; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h2 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_2_state_5 <= io_input_bits_state_5; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h2 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_2_state_6 <= io_input_bits_state_6; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h2 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_2_state_7 <= io_input_bits_state_7; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h2 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_2_state_8 <= io_input_bits_state_8; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h2 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_2_state_9 <= io_input_bits_state_9; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h2 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_2_state_10 <= io_input_bits_state_10; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h2 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_2_state_11 <= io_input_bits_state_11; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h2 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_2_state_12 <= io_input_bits_state_12; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h2 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_2_state_13 <= io_input_bits_state_13; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h2 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_2_state_14 <= io_input_bits_state_14; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h2 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_2_state_15 <= io_input_bits_state_15; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h2 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_2_control_isIdle <= io_input_bits_control_isIdle; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h2 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_2_control_taskID <= io_input_bits_control_taskID; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h3 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_3_state_0 <= io_input_bits_state_0; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h3 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_3_state_1 <= io_input_bits_state_1; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h3 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_3_state_2 <= io_input_bits_state_2; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h3 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_3_state_3 <= io_input_bits_state_3; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h3 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_3_state_4 <= io_input_bits_state_4; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h3 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_3_state_5 <= io_input_bits_state_5; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h3 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_3_state_6 <= io_input_bits_state_6; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h3 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_3_state_7 <= io_input_bits_state_7; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h3 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_3_state_8 <= io_input_bits_state_8; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h3 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_3_state_9 <= io_input_bits_state_9; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h3 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_3_state_10 <= io_input_bits_state_10; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h3 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_3_state_11 <= io_input_bits_state_11; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h3 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_3_state_12 <= io_input_bits_state_12; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h3 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_3_state_13 <= io_input_bits_state_13; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h3 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_3_state_14 <= io_input_bits_state_14; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h3 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_3_state_15 <= io_input_bits_state_15; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h3 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_3_control_isIdle <= io_input_bits_control_isIdle; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h3 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_3_control_taskID <= io_input_bits_control_taskID; // @[Unit.scala 36:20]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h0 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_0_0 <= _OutState_EngineModule_io_complete_taskID_0; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h0 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_0_1 <= _OutState_EngineModule_io_complete_taskID_1; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h0 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_0_2 <= _OutState_EngineModule_io_complete_taskID_2; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h0 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_0_3 <= _OutState_EngineModule_io_complete_taskID_3; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h0 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_0_4 <= _OutState_EngineModule_io_complete_taskID_4; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h0 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_0_5 <= _OutState_EngineModule_io_complete_taskID_5; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h0 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_0_6 <= _OutState_EngineModule_io_complete_taskID_6; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h0 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_0_7 <= _OutState_EngineModule_io_complete_taskID_7; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h0 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_0_8 <= _OutState_EngineModule_io_complete_taskID_8; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h0 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_0_9 <= _OutState_EngineModule_io_complete_taskID_9; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h0 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_0_10 <= _OutState_EngineModule_io_complete_taskID_10; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h0 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_0_11 <= _OutState_EngineModule_io_complete_taskID_11; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h0 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_0_12 <= _OutState_EngineModule_io_complete_taskID_12; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h0 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_0_13 <= _OutState_EngineModule_io_complete_taskID_13; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h0 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_0_14 <= _OutState_EngineModule_io_complete_taskID_14; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h0 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_0_15 <= _OutState_EngineModule_io_complete_taskID_15; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h1 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_1_0 <= _OutState_EngineModule_io_complete_taskID_0; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h1 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_1_1 <= _OutState_EngineModule_io_complete_taskID_1; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h1 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_1_2 <= _OutState_EngineModule_io_complete_taskID_2; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h1 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_1_3 <= _OutState_EngineModule_io_complete_taskID_3; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h1 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_1_4 <= _OutState_EngineModule_io_complete_taskID_4; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h1 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_1_5 <= _OutState_EngineModule_io_complete_taskID_5; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h1 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_1_6 <= _OutState_EngineModule_io_complete_taskID_6; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h1 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_1_7 <= _OutState_EngineModule_io_complete_taskID_7; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h1 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_1_8 <= _OutState_EngineModule_io_complete_taskID_8; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h1 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_1_9 <= _OutState_EngineModule_io_complete_taskID_9; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h1 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_1_10 <= _OutState_EngineModule_io_complete_taskID_10; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h1 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_1_11 <= _OutState_EngineModule_io_complete_taskID_11; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h1 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_1_12 <= _OutState_EngineModule_io_complete_taskID_12; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h1 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_1_13 <= _OutState_EngineModule_io_complete_taskID_13; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h1 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_1_14 <= _OutState_EngineModule_io_complete_taskID_14; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h1 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_1_15 <= _OutState_EngineModule_io_complete_taskID_15; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h2 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_2_0 <= _OutState_EngineModule_io_complete_taskID_0; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h2 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_2_1 <= _OutState_EngineModule_io_complete_taskID_1; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h2 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_2_2 <= _OutState_EngineModule_io_complete_taskID_2; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h2 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_2_3 <= _OutState_EngineModule_io_complete_taskID_3; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h2 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_2_4 <= _OutState_EngineModule_io_complete_taskID_4; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h2 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_2_5 <= _OutState_EngineModule_io_complete_taskID_5; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h2 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_2_6 <= _OutState_EngineModule_io_complete_taskID_6; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h2 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_2_7 <= _OutState_EngineModule_io_complete_taskID_7; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h2 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_2_8 <= _OutState_EngineModule_io_complete_taskID_8; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h2 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_2_9 <= _OutState_EngineModule_io_complete_taskID_9; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h2 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_2_10 <= _OutState_EngineModule_io_complete_taskID_10; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h2 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_2_11 <= _OutState_EngineModule_io_complete_taskID_11; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h2 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_2_12 <= _OutState_EngineModule_io_complete_taskID_12; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h2 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_2_13 <= _OutState_EngineModule_io_complete_taskID_13; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h2 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_2_14 <= _OutState_EngineModule_io_complete_taskID_14; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h2 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_2_15 <= _OutState_EngineModule_io_complete_taskID_15; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h3 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_3_0 <= _OutState_EngineModule_io_complete_taskID_0; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h3 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_3_1 <= _OutState_EngineModule_io_complete_taskID_1; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h3 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_3_2 <= _OutState_EngineModule_io_complete_taskID_2; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h3 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_3_3 <= _OutState_EngineModule_io_complete_taskID_3; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h3 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_3_4 <= _OutState_EngineModule_io_complete_taskID_4; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h3 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_3_5 <= _OutState_EngineModule_io_complete_taskID_5; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h3 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_3_6 <= _OutState_EngineModule_io_complete_taskID_6; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h3 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_3_7 <= _OutState_EngineModule_io_complete_taskID_7; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h3 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_3_8 <= _OutState_EngineModule_io_complete_taskID_8; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h3 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_3_9 <= _OutState_EngineModule_io_complete_taskID_9; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h3 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_3_10 <= _OutState_EngineModule_io_complete_taskID_10; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h3 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_3_11 <= _OutState_EngineModule_io_complete_taskID_11; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h3 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_3_12 <= _OutState_EngineModule_io_complete_taskID_12; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h3 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_3_13 <= _OutState_EngineModule_io_complete_taskID_13; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h3 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_3_14 <= _OutState_EngineModule_io_complete_taskID_14; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h3 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_3_15 <= _OutState_EngineModule_io_complete_taskID_15; // @[Unit.scala 59:22]
      end
    end
    if (reset) begin // @[Unit.scala 22:23]
      Active_0 <= 1'h0; // @[Unit.scala 22:23]
    end else if (_T_1) begin // @[Unit.scala 46:38]
      Active_0 <= 1'h0; // @[Unit.scala 47:20]
    end else if (_T) begin // @[Unit.scala 34:23]
      Active_0 <= _GEN_84;
    end
    if (reset) begin // @[Unit.scala 22:23]
      Active_1 <= 1'h0; // @[Unit.scala 22:23]
    end else if (_T_3) begin // @[Unit.scala 46:38]
      Active_1 <= 1'h0; // @[Unit.scala 47:20]
    end else if (_T) begin // @[Unit.scala 34:23]
      Active_1 <= _GEN_85;
    end
    if (reset) begin // @[Unit.scala 22:23]
      Active_2 <= 1'h0; // @[Unit.scala 22:23]
    end else if (_T_5) begin // @[Unit.scala 46:38]
      Active_2 <= 1'h0; // @[Unit.scala 47:20]
    end else if (_T) begin // @[Unit.scala 34:23]
      Active_2 <= _GEN_86;
    end
    if (reset) begin // @[Unit.scala 22:23]
      Active_3 <= 1'h0; // @[Unit.scala 22:23]
    end else if (_T_7) begin // @[Unit.scala 46:38]
      Active_3 <= 1'h0; // @[Unit.scala 47:20]
    end else if (_T) begin // @[Unit.scala 34:23]
      Active_3 <= _GEN_87;
    end
    if (reset) begin // @[Unit.scala 23:21]
      Busy_0 <= 1'h0; // @[Unit.scala 23:21]
    end else if (_T_2) begin // @[Unit.scala 49:39]
      Busy_0 <= 1'h0; // @[Unit.scala 51:18]
    end else if (_T) begin // @[Unit.scala 34:23]
      Busy_0 <= _GEN_88;
    end
    if (reset) begin // @[Unit.scala 23:21]
      Busy_1 <= 1'h0; // @[Unit.scala 23:21]
    end else if (_T_4) begin // @[Unit.scala 49:39]
      Busy_1 <= 1'h0; // @[Unit.scala 51:18]
    end else if (_T) begin // @[Unit.scala 34:23]
      Busy_1 <= _GEN_89;
    end
    if (reset) begin // @[Unit.scala 23:21]
      Busy_2 <= 1'h0; // @[Unit.scala 23:21]
    end else if (_T_6) begin // @[Unit.scala 49:39]
      Busy_2 <= 1'h0; // @[Unit.scala 51:18]
    end else if (_T) begin // @[Unit.scala 34:23]
      Busy_2 <= _GEN_90;
    end
    if (reset) begin // @[Unit.scala 23:21]
      Busy_3 <= 1'h0; // @[Unit.scala 23:21]
    end else if (_T_8) begin // @[Unit.scala 49:39]
      Busy_3 <= 1'h0; // @[Unit.scala 51:18]
    end else if (_T) begin // @[Unit.scala 34:23]
      Busy_3 <= _GEN_91;
    end
    if (reset) begin // @[Unit.scala 24:26]
      Completed_0 <= 1'h0; // @[Unit.scala 24:26]
    end else if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      Completed_0 <= _GEN_256;
    end else if (_T_2) begin // @[Unit.scala 49:39]
      Completed_0 <= 1'h0; // @[Unit.scala 50:23]
    end
    if (reset) begin // @[Unit.scala 24:26]
      Completed_1 <= 1'h0; // @[Unit.scala 24:26]
    end else if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      Completed_1 <= _GEN_257;
    end else if (_T_4) begin // @[Unit.scala 49:39]
      Completed_1 <= 1'h0; // @[Unit.scala 50:23]
    end
    if (reset) begin // @[Unit.scala 24:26]
      Completed_2 <= 1'h0; // @[Unit.scala 24:26]
    end else if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      Completed_2 <= _GEN_258;
    end else if (_T_6) begin // @[Unit.scala 49:39]
      Completed_2 <= 1'h0; // @[Unit.scala 50:23]
    end
    if (reset) begin // @[Unit.scala 24:26]
      Completed_3 <= 1'h0; // @[Unit.scala 24:26]
    end else if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      Completed_3 <= _GEN_259;
    end else if (_T_8) begin // @[Unit.scala 49:39]
      Completed_3 <= 1'h0; // @[Unit.scala 50:23]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  InPara_0_state_0 = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  InPara_0_state_1 = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  InPara_0_state_2 = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  InPara_0_state_3 = _RAND_3[7:0];
  _RAND_4 = {1{`RANDOM}};
  InPara_0_state_4 = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  InPara_0_state_5 = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  InPara_0_state_6 = _RAND_6[7:0];
  _RAND_7 = {1{`RANDOM}};
  InPara_0_state_7 = _RAND_7[7:0];
  _RAND_8 = {1{`RANDOM}};
  InPara_0_state_8 = _RAND_8[7:0];
  _RAND_9 = {1{`RANDOM}};
  InPara_0_state_9 = _RAND_9[7:0];
  _RAND_10 = {1{`RANDOM}};
  InPara_0_state_10 = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  InPara_0_state_11 = _RAND_11[7:0];
  _RAND_12 = {1{`RANDOM}};
  InPara_0_state_12 = _RAND_12[7:0];
  _RAND_13 = {1{`RANDOM}};
  InPara_0_state_13 = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  InPara_0_state_14 = _RAND_14[7:0];
  _RAND_15 = {1{`RANDOM}};
  InPara_0_state_15 = _RAND_15[7:0];
  _RAND_16 = {1{`RANDOM}};
  InPara_0_control_isIdle = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  InPara_0_control_taskID = _RAND_17[1:0];
  _RAND_18 = {1{`RANDOM}};
  InPara_1_state_0 = _RAND_18[7:0];
  _RAND_19 = {1{`RANDOM}};
  InPara_1_state_1 = _RAND_19[7:0];
  _RAND_20 = {1{`RANDOM}};
  InPara_1_state_2 = _RAND_20[7:0];
  _RAND_21 = {1{`RANDOM}};
  InPara_1_state_3 = _RAND_21[7:0];
  _RAND_22 = {1{`RANDOM}};
  InPara_1_state_4 = _RAND_22[7:0];
  _RAND_23 = {1{`RANDOM}};
  InPara_1_state_5 = _RAND_23[7:0];
  _RAND_24 = {1{`RANDOM}};
  InPara_1_state_6 = _RAND_24[7:0];
  _RAND_25 = {1{`RANDOM}};
  InPara_1_state_7 = _RAND_25[7:0];
  _RAND_26 = {1{`RANDOM}};
  InPara_1_state_8 = _RAND_26[7:0];
  _RAND_27 = {1{`RANDOM}};
  InPara_1_state_9 = _RAND_27[7:0];
  _RAND_28 = {1{`RANDOM}};
  InPara_1_state_10 = _RAND_28[7:0];
  _RAND_29 = {1{`RANDOM}};
  InPara_1_state_11 = _RAND_29[7:0];
  _RAND_30 = {1{`RANDOM}};
  InPara_1_state_12 = _RAND_30[7:0];
  _RAND_31 = {1{`RANDOM}};
  InPara_1_state_13 = _RAND_31[7:0];
  _RAND_32 = {1{`RANDOM}};
  InPara_1_state_14 = _RAND_32[7:0];
  _RAND_33 = {1{`RANDOM}};
  InPara_1_state_15 = _RAND_33[7:0];
  _RAND_34 = {1{`RANDOM}};
  InPara_1_control_isIdle = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  InPara_1_control_taskID = _RAND_35[1:0];
  _RAND_36 = {1{`RANDOM}};
  InPara_2_state_0 = _RAND_36[7:0];
  _RAND_37 = {1{`RANDOM}};
  InPara_2_state_1 = _RAND_37[7:0];
  _RAND_38 = {1{`RANDOM}};
  InPara_2_state_2 = _RAND_38[7:0];
  _RAND_39 = {1{`RANDOM}};
  InPara_2_state_3 = _RAND_39[7:0];
  _RAND_40 = {1{`RANDOM}};
  InPara_2_state_4 = _RAND_40[7:0];
  _RAND_41 = {1{`RANDOM}};
  InPara_2_state_5 = _RAND_41[7:0];
  _RAND_42 = {1{`RANDOM}};
  InPara_2_state_6 = _RAND_42[7:0];
  _RAND_43 = {1{`RANDOM}};
  InPara_2_state_7 = _RAND_43[7:0];
  _RAND_44 = {1{`RANDOM}};
  InPara_2_state_8 = _RAND_44[7:0];
  _RAND_45 = {1{`RANDOM}};
  InPara_2_state_9 = _RAND_45[7:0];
  _RAND_46 = {1{`RANDOM}};
  InPara_2_state_10 = _RAND_46[7:0];
  _RAND_47 = {1{`RANDOM}};
  InPara_2_state_11 = _RAND_47[7:0];
  _RAND_48 = {1{`RANDOM}};
  InPara_2_state_12 = _RAND_48[7:0];
  _RAND_49 = {1{`RANDOM}};
  InPara_2_state_13 = _RAND_49[7:0];
  _RAND_50 = {1{`RANDOM}};
  InPara_2_state_14 = _RAND_50[7:0];
  _RAND_51 = {1{`RANDOM}};
  InPara_2_state_15 = _RAND_51[7:0];
  _RAND_52 = {1{`RANDOM}};
  InPara_2_control_isIdle = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  InPara_2_control_taskID = _RAND_53[1:0];
  _RAND_54 = {1{`RANDOM}};
  InPara_3_state_0 = _RAND_54[7:0];
  _RAND_55 = {1{`RANDOM}};
  InPara_3_state_1 = _RAND_55[7:0];
  _RAND_56 = {1{`RANDOM}};
  InPara_3_state_2 = _RAND_56[7:0];
  _RAND_57 = {1{`RANDOM}};
  InPara_3_state_3 = _RAND_57[7:0];
  _RAND_58 = {1{`RANDOM}};
  InPara_3_state_4 = _RAND_58[7:0];
  _RAND_59 = {1{`RANDOM}};
  InPara_3_state_5 = _RAND_59[7:0];
  _RAND_60 = {1{`RANDOM}};
  InPara_3_state_6 = _RAND_60[7:0];
  _RAND_61 = {1{`RANDOM}};
  InPara_3_state_7 = _RAND_61[7:0];
  _RAND_62 = {1{`RANDOM}};
  InPara_3_state_8 = _RAND_62[7:0];
  _RAND_63 = {1{`RANDOM}};
  InPara_3_state_9 = _RAND_63[7:0];
  _RAND_64 = {1{`RANDOM}};
  InPara_3_state_10 = _RAND_64[7:0];
  _RAND_65 = {1{`RANDOM}};
  InPara_3_state_11 = _RAND_65[7:0];
  _RAND_66 = {1{`RANDOM}};
  InPara_3_state_12 = _RAND_66[7:0];
  _RAND_67 = {1{`RANDOM}};
  InPara_3_state_13 = _RAND_67[7:0];
  _RAND_68 = {1{`RANDOM}};
  InPara_3_state_14 = _RAND_68[7:0];
  _RAND_69 = {1{`RANDOM}};
  InPara_3_state_15 = _RAND_69[7:0];
  _RAND_70 = {1{`RANDOM}};
  InPara_3_control_isIdle = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  InPara_3_control_taskID = _RAND_71[1:0];
  _RAND_72 = {1{`RANDOM}};
  OutState_0_0 = _RAND_72[7:0];
  _RAND_73 = {1{`RANDOM}};
  OutState_0_1 = _RAND_73[7:0];
  _RAND_74 = {1{`RANDOM}};
  OutState_0_2 = _RAND_74[7:0];
  _RAND_75 = {1{`RANDOM}};
  OutState_0_3 = _RAND_75[7:0];
  _RAND_76 = {1{`RANDOM}};
  OutState_0_4 = _RAND_76[7:0];
  _RAND_77 = {1{`RANDOM}};
  OutState_0_5 = _RAND_77[7:0];
  _RAND_78 = {1{`RANDOM}};
  OutState_0_6 = _RAND_78[7:0];
  _RAND_79 = {1{`RANDOM}};
  OutState_0_7 = _RAND_79[7:0];
  _RAND_80 = {1{`RANDOM}};
  OutState_0_8 = _RAND_80[7:0];
  _RAND_81 = {1{`RANDOM}};
  OutState_0_9 = _RAND_81[7:0];
  _RAND_82 = {1{`RANDOM}};
  OutState_0_10 = _RAND_82[7:0];
  _RAND_83 = {1{`RANDOM}};
  OutState_0_11 = _RAND_83[7:0];
  _RAND_84 = {1{`RANDOM}};
  OutState_0_12 = _RAND_84[7:0];
  _RAND_85 = {1{`RANDOM}};
  OutState_0_13 = _RAND_85[7:0];
  _RAND_86 = {1{`RANDOM}};
  OutState_0_14 = _RAND_86[7:0];
  _RAND_87 = {1{`RANDOM}};
  OutState_0_15 = _RAND_87[7:0];
  _RAND_88 = {1{`RANDOM}};
  OutState_1_0 = _RAND_88[7:0];
  _RAND_89 = {1{`RANDOM}};
  OutState_1_1 = _RAND_89[7:0];
  _RAND_90 = {1{`RANDOM}};
  OutState_1_2 = _RAND_90[7:0];
  _RAND_91 = {1{`RANDOM}};
  OutState_1_3 = _RAND_91[7:0];
  _RAND_92 = {1{`RANDOM}};
  OutState_1_4 = _RAND_92[7:0];
  _RAND_93 = {1{`RANDOM}};
  OutState_1_5 = _RAND_93[7:0];
  _RAND_94 = {1{`RANDOM}};
  OutState_1_6 = _RAND_94[7:0];
  _RAND_95 = {1{`RANDOM}};
  OutState_1_7 = _RAND_95[7:0];
  _RAND_96 = {1{`RANDOM}};
  OutState_1_8 = _RAND_96[7:0];
  _RAND_97 = {1{`RANDOM}};
  OutState_1_9 = _RAND_97[7:0];
  _RAND_98 = {1{`RANDOM}};
  OutState_1_10 = _RAND_98[7:0];
  _RAND_99 = {1{`RANDOM}};
  OutState_1_11 = _RAND_99[7:0];
  _RAND_100 = {1{`RANDOM}};
  OutState_1_12 = _RAND_100[7:0];
  _RAND_101 = {1{`RANDOM}};
  OutState_1_13 = _RAND_101[7:0];
  _RAND_102 = {1{`RANDOM}};
  OutState_1_14 = _RAND_102[7:0];
  _RAND_103 = {1{`RANDOM}};
  OutState_1_15 = _RAND_103[7:0];
  _RAND_104 = {1{`RANDOM}};
  OutState_2_0 = _RAND_104[7:0];
  _RAND_105 = {1{`RANDOM}};
  OutState_2_1 = _RAND_105[7:0];
  _RAND_106 = {1{`RANDOM}};
  OutState_2_2 = _RAND_106[7:0];
  _RAND_107 = {1{`RANDOM}};
  OutState_2_3 = _RAND_107[7:0];
  _RAND_108 = {1{`RANDOM}};
  OutState_2_4 = _RAND_108[7:0];
  _RAND_109 = {1{`RANDOM}};
  OutState_2_5 = _RAND_109[7:0];
  _RAND_110 = {1{`RANDOM}};
  OutState_2_6 = _RAND_110[7:0];
  _RAND_111 = {1{`RANDOM}};
  OutState_2_7 = _RAND_111[7:0];
  _RAND_112 = {1{`RANDOM}};
  OutState_2_8 = _RAND_112[7:0];
  _RAND_113 = {1{`RANDOM}};
  OutState_2_9 = _RAND_113[7:0];
  _RAND_114 = {1{`RANDOM}};
  OutState_2_10 = _RAND_114[7:0];
  _RAND_115 = {1{`RANDOM}};
  OutState_2_11 = _RAND_115[7:0];
  _RAND_116 = {1{`RANDOM}};
  OutState_2_12 = _RAND_116[7:0];
  _RAND_117 = {1{`RANDOM}};
  OutState_2_13 = _RAND_117[7:0];
  _RAND_118 = {1{`RANDOM}};
  OutState_2_14 = _RAND_118[7:0];
  _RAND_119 = {1{`RANDOM}};
  OutState_2_15 = _RAND_119[7:0];
  _RAND_120 = {1{`RANDOM}};
  OutState_3_0 = _RAND_120[7:0];
  _RAND_121 = {1{`RANDOM}};
  OutState_3_1 = _RAND_121[7:0];
  _RAND_122 = {1{`RANDOM}};
  OutState_3_2 = _RAND_122[7:0];
  _RAND_123 = {1{`RANDOM}};
  OutState_3_3 = _RAND_123[7:0];
  _RAND_124 = {1{`RANDOM}};
  OutState_3_4 = _RAND_124[7:0];
  _RAND_125 = {1{`RANDOM}};
  OutState_3_5 = _RAND_125[7:0];
  _RAND_126 = {1{`RANDOM}};
  OutState_3_6 = _RAND_126[7:0];
  _RAND_127 = {1{`RANDOM}};
  OutState_3_7 = _RAND_127[7:0];
  _RAND_128 = {1{`RANDOM}};
  OutState_3_8 = _RAND_128[7:0];
  _RAND_129 = {1{`RANDOM}};
  OutState_3_9 = _RAND_129[7:0];
  _RAND_130 = {1{`RANDOM}};
  OutState_3_10 = _RAND_130[7:0];
  _RAND_131 = {1{`RANDOM}};
  OutState_3_11 = _RAND_131[7:0];
  _RAND_132 = {1{`RANDOM}};
  OutState_3_12 = _RAND_132[7:0];
  _RAND_133 = {1{`RANDOM}};
  OutState_3_13 = _RAND_133[7:0];
  _RAND_134 = {1{`RANDOM}};
  OutState_3_14 = _RAND_134[7:0];
  _RAND_135 = {1{`RANDOM}};
  OutState_3_15 = _RAND_135[7:0];
  _RAND_136 = {1{`RANDOM}};
  Active_0 = _RAND_136[0:0];
  _RAND_137 = {1{`RANDOM}};
  Active_1 = _RAND_137[0:0];
  _RAND_138 = {1{`RANDOM}};
  Active_2 = _RAND_138[0:0];
  _RAND_139 = {1{`RANDOM}};
  Active_3 = _RAND_139[0:0];
  _RAND_140 = {1{`RANDOM}};
  Busy_0 = _RAND_140[0:0];
  _RAND_141 = {1{`RANDOM}};
  Busy_1 = _RAND_141[0:0];
  _RAND_142 = {1{`RANDOM}};
  Busy_2 = _RAND_142[0:0];
  _RAND_143 = {1{`RANDOM}};
  Busy_3 = _RAND_143[0:0];
  _RAND_144 = {1{`RANDOM}};
  Completed_0 = _RAND_144[0:0];
  _RAND_145 = {1{`RANDOM}};
  Completed_1 = _RAND_145[0:0];
  _RAND_146 = {1{`RANDOM}};
  Completed_2 = _RAND_146[0:0];
  _RAND_147 = {1{`RANDOM}};
  Completed_3 = _RAND_147[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module AESSBox_52(
  input        clock,
  input  [7:0] io_in,
  output [7:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire  st1_t_0 = io_in[1] ^ io_in[0]; // @[Sbox.scala 62:20]
  wire  st1_t_1 = io_in[6] ^ io_in[1]; // @[Sbox.scala 63:20]
  wire  st1_t_2 = io_in[5] ^ ~io_in[2]; // @[Sbox.scala 64:20]
  wire  st1_t_3 = io_in[2] ^ ~io_in[1]; // @[Sbox.scala 65:20]
  wire  st1_t_4 = io_in[5] ^ ~io_in[3]; // @[Sbox.scala 66:20]
  wire  st1_y_0 = io_in[7] ^ st1_t_2; // @[Sbox.scala 67:20]
  wire  st1_y_1 = io_in[4] ^ io_in[3]; // @[Sbox.scala 68:20]
  wire  st1_y_2 = io_in[7] ^ ~io_in[6]; // @[Sbox.scala 69:20]
  wire  st1_y_3 = st1_y_1 ^ st1_t_0; // @[Sbox.scala 70:20]
  wire  st1_y_17 = io_in[7] ^ io_in[4]; // @[Sbox.scala 84:20]
  wire  st1_y_6 = io_in[6] ^ ~st1_y_17; // @[Sbox.scala 73:20]
  wire  st1_y_4 = io_in[3] ^ st1_y_6; // @[Sbox.scala 71:20]
  wire  st1_y_16 = io_in[6] ^ ~io_in[4]; // @[Sbox.scala 83:20]
  wire  st1_y_5 = st1_y_16 ^ st1_t_2; // @[Sbox.scala 72:20]
  wire  _st1_y_7_T_1 = ~st1_y_1; // @[Sbox.scala 74:22]
  wire  st1_y_7 = io_in[0] ^ ~st1_y_1; // @[Sbox.scala 74:20]
  wire  st1_y_18 = io_in[3] ^ ~io_in[0]; // @[Sbox.scala 85:20]
  wire  st1_y_8 = st1_y_2 ^ st1_y_18; // @[Sbox.scala 75:20]
  wire  st1_y_9 = st1_y_2 ^ st1_t_0; // @[Sbox.scala 76:20]
  wire  st1_y_10 = st1_y_8 ^ st1_t_3; // @[Sbox.scala 77:20]
  wire  st1_y_20 = st1_y_1 ^ st1_t_3; // @[Sbox.scala 87:20]
  wire  st1_y_11 = st1_y_8 ^ st1_y_20; // @[Sbox.scala 78:20]
  wire  st1_y_12 = st1_t_1 ^ st1_t_4; // @[Sbox.scala 79:20]
  wire  st1_y_14 = st1_y_16 ^ st1_t_0; // @[Sbox.scala 81:20]
  wire  st1_y_13 = io_in[5] ^ ~st1_y_14; // @[Sbox.scala 80:20]
  wire  st1_y_15 = st1_y_18 ^ st1_t_1; // @[Sbox.scala 82:20]
  wire  st1_y_19 = io_in[5] ^ _st1_y_7_T_1; // @[Sbox.scala 86:20]
  wire [9:0] st1_lo = {st1_y_9,st1_y_8,st1_y_7,st1_y_6,st1_y_5,st1_y_4,st1_y_3,st1_y_2,st1_y_1,st1_y_0}; // @[Sbox.scala 88:7]
  wire [4:0] st1_hi_lo = {st1_y_14,st1_y_13,st1_y_12,st1_y_11,st1_y_10}; // @[Sbox.scala 88:7]
  wire [10:0] st1_hi = {st1_y_20,st1_y_19,st1_y_18,st1_y_17,st1_y_16,st1_y_15,st1_hi_lo}; // @[Sbox.scala 88:7]
  reg [20:0] r1; // @[Sbox.scala 14:19]
  wire  mid_t_0 = r1[3] ^ r1[12]; // @[Sbox.scala 97:20]
  wire  mid_t_1 = r1[9] & r1[5]; // @[Sbox.scala 98:20]
  wire  mid_t_2 = r1[17] & r1[6]; // @[Sbox.scala 99:20]
  wire  mid_t_3 = r1[10] ^ mid_t_1; // @[Sbox.scala 100:20]
  wire  mid_t_4 = r1[14] & r1[0]; // @[Sbox.scala 101:20]
  wire  mid_t_5 = mid_t_4 ^ mid_t_1; // @[Sbox.scala 102:20]
  wire  mid_t_6 = r1[3] & r1[12]; // @[Sbox.scala 103:20]
  wire  mid_t_7 = r1[16] & r1[7]; // @[Sbox.scala 104:20]
  wire  mid_t_8 = mid_t_0 ^ mid_t_6; // @[Sbox.scala 105:20]
  wire  mid_t_9 = r1[15] & r1[13]; // @[Sbox.scala 106:20]
  wire  mid_t_10 = mid_t_9 ^ mid_t_6; // @[Sbox.scala 107:20]
  wire  mid_t_11 = r1[1] & r1[11]; // @[Sbox.scala 108:20]
  wire  mid_t_12 = r1[4] & r1[20]; // @[Sbox.scala 109:20]
  wire  mid_t_13 = mid_t_12 ^ mid_t_11; // @[Sbox.scala 110:20]
  wire  mid_t_14 = r1[2] & r1[8]; // @[Sbox.scala 111:20]
  wire  mid_t_15 = mid_t_14 ^ mid_t_11; // @[Sbox.scala 112:20]
  wire  mid_t_16 = mid_t_3 ^ mid_t_2; // @[Sbox.scala 113:20]
  wire  mid_t_17 = mid_t_5 ^ r1[18]; // @[Sbox.scala 114:20]
  wire  mid_t_18 = mid_t_8 ^ mid_t_7; // @[Sbox.scala 115:20]
  wire  mid_t_19 = mid_t_10 ^ mid_t_15; // @[Sbox.scala 116:20]
  wire  mid_t_20 = mid_t_16 ^ mid_t_13; // @[Sbox.scala 117:20]
  wire  mid_t_21 = mid_t_17 ^ mid_t_15; // @[Sbox.scala 118:20]
  wire  mid_t_22 = mid_t_18 ^ mid_t_13; // @[Sbox.scala 119:20]
  wire  mid_t_23 = mid_t_19 ^ r1[19]; // @[Sbox.scala 120:20]
  wire  mid_t_24 = mid_t_22 ^ mid_t_23; // @[Sbox.scala 121:20]
  wire  mid_t_25 = mid_t_22 & mid_t_20; // @[Sbox.scala 122:20]
  wire  mid_t_26 = mid_t_21 ^ mid_t_25; // @[Sbox.scala 123:20]
  wire  mid_t_27 = mid_t_20 ^ mid_t_21; // @[Sbox.scala 124:20]
  wire  mid_t_28 = mid_t_23 ^ mid_t_25; // @[Sbox.scala 125:20]
  wire  mid_t_29 = mid_t_28 & mid_t_27; // @[Sbox.scala 126:20]
  wire  mid_t_30 = mid_t_26 & mid_t_24; // @[Sbox.scala 127:20]
  wire  mid_t_31 = mid_t_20 & mid_t_23; // @[Sbox.scala 128:20]
  wire  mid_t_32 = mid_t_27 & mid_t_31; // @[Sbox.scala 129:20]
  wire  mid_t_33 = mid_t_27 ^ mid_t_25; // @[Sbox.scala 130:20]
  wire  mid_t_34 = mid_t_21 & mid_t_22; // @[Sbox.scala 131:20]
  wire  mid_t_35 = mid_t_24 & mid_t_34; // @[Sbox.scala 132:20]
  wire  mid_t_36 = mid_t_24 ^ mid_t_25; // @[Sbox.scala 133:20]
  wire  mid_t_37 = mid_t_21 ^ mid_t_29; // @[Sbox.scala 134:20]
  wire  mid_t_38 = mid_t_32 ^ mid_t_33; // @[Sbox.scala 135:20]
  wire  mid_t_39 = mid_t_23 ^ mid_t_30; // @[Sbox.scala 136:20]
  wire  mid_t_40 = mid_t_35 ^ mid_t_36; // @[Sbox.scala 137:20]
  wire  mid_t_41 = mid_t_38 ^ mid_t_40; // @[Sbox.scala 138:20]
  wire  mid_t_42 = mid_t_37 ^ mid_t_39; // @[Sbox.scala 139:20]
  wire  mid_t_43 = mid_t_37 ^ mid_t_38; // @[Sbox.scala 140:20]
  wire  mid_t_44 = mid_t_39 ^ mid_t_40; // @[Sbox.scala 141:20]
  wire  mid_t_45 = mid_t_42 ^ mid_t_41; // @[Sbox.scala 142:20]
  wire  mid_y_0 = mid_t_38 & r1[7]; // @[Sbox.scala 143:20]
  wire  mid_y_1 = mid_t_37 & r1[13]; // @[Sbox.scala 144:20]
  wire  mid_y_2 = mid_t_42 & r1[11]; // @[Sbox.scala 145:20]
  wire  mid_y_3 = mid_t_45 & r1[20]; // @[Sbox.scala 146:20]
  wire  mid_y_4 = mid_t_41 & r1[8]; // @[Sbox.scala 147:20]
  wire  mid_y_5 = mid_t_44 & r1[9]; // @[Sbox.scala 148:20]
  wire  mid_y_6 = mid_t_40 & r1[17]; // @[Sbox.scala 149:20]
  wire  mid_y_7 = mid_t_39 & r1[14]; // @[Sbox.scala 150:20]
  wire  mid_y_8 = mid_t_43 & r1[3]; // @[Sbox.scala 151:20]
  wire  mid_y_9 = mid_t_38 & r1[16]; // @[Sbox.scala 152:20]
  wire  mid_y_10 = mid_t_37 & r1[15]; // @[Sbox.scala 153:20]
  wire  mid_y_11 = mid_t_42 & r1[1]; // @[Sbox.scala 154:20]
  wire  mid_y_12 = mid_t_45 & r1[4]; // @[Sbox.scala 155:20]
  wire  mid_y_13 = mid_t_41 & r1[2]; // @[Sbox.scala 156:20]
  wire  mid_y_14 = mid_t_44 & r1[5]; // @[Sbox.scala 157:20]
  wire  mid_y_15 = mid_t_40 & r1[6]; // @[Sbox.scala 158:20]
  wire  mid_y_16 = mid_t_39 & r1[0]; // @[Sbox.scala 159:20]
  wire  mid_y_17 = mid_t_43 & r1[12]; // @[Sbox.scala 160:20]
  wire [8:0] mid_lo = {mid_y_8,mid_y_7,mid_y_6,mid_y_5,mid_y_4,mid_y_3,mid_y_2,mid_y_1,mid_y_0}; // @[Sbox.scala 161:7]
  wire [8:0] mid_hi = {mid_y_17,mid_y_16,mid_y_15,mid_y_14,mid_y_13,mid_y_12,mid_y_11,mid_y_10,mid_y_9}; // @[Sbox.scala 161:7]
  reg [17:0] r2; // @[Sbox.scala 16:19]
  wire  out_t_0 = r2[2] ^ r2[11]; // @[Sbox.scala 217:20]
  wire  out_t_1 = r2[8] ^ r2[9]; // @[Sbox.scala 218:20]
  wire  out_t_2 = r2[4] ^ r2[12]; // @[Sbox.scala 219:20]
  wire  out_t_3 = r2[15] ^ r2[0]; // @[Sbox.scala 220:20]
  wire  out_t_4 = r2[16] ^ r2[6]; // @[Sbox.scala 221:20]
  wire  out_t_5 = r2[14] ^ r2[1]; // @[Sbox.scala 222:20]
  wire  out_t_6 = r2[17] ^ r2[10]; // @[Sbox.scala 223:20]
  wire  out_t_7 = out_t_0 ^ out_t_1; // @[Sbox.scala 224:20]
  wire  out_t_8 = r2[0] ^ r2[3]; // @[Sbox.scala 225:20]
  wire  out_t_9 = r2[5] ^ r2[13]; // @[Sbox.scala 226:20]
  wire  out_t_10 = r2[7] ^ out_t_4; // @[Sbox.scala 227:20]
  wire  out_t_11 = out_t_0 ^ out_t_3; // @[Sbox.scala 228:20]
  wire  out_t_12 = r2[14] ^ r2[16]; // @[Sbox.scala 229:20]
  wire  out_t_13 = r2[17] ^ r2[1]; // @[Sbox.scala 230:20]
  wire  out_t_14 = r2[17] ^ r2[12]; // @[Sbox.scala 231:20]
  wire  out_t_15 = r2[4] ^ r2[9]; // @[Sbox.scala 232:20]
  wire  out_t_16 = r2[7] ^ r2[11]; // @[Sbox.scala 233:20]
  wire  out_t_17 = r2[8] ^ out_t_2; // @[Sbox.scala 234:20]
  wire  out_t_18 = r2[13] ^ out_t_5; // @[Sbox.scala 235:20]
  wire  out_t_19 = out_t_2 ^ out_t_3; // @[Sbox.scala 236:20]
  wire  out_t_20 = out_t_4 ^ out_t_6; // @[Sbox.scala 237:20]
  wire  out_t_22 = out_t_2 ^ out_t_7; // @[Sbox.scala 239:20]
  wire  out_t_23 = out_t_7 ^ out_t_8; // @[Sbox.scala 240:20]
  wire  out_t_24 = out_t_5 ^ out_t_7; // @[Sbox.scala 241:20]
  wire  out_t_25 = out_t_6 ^ out_t_10; // @[Sbox.scala 242:20]
  wire  out_t_26 = out_t_9 ^ out_t_11; // @[Sbox.scala 243:20]
  wire  out_t_27 = out_t_10 ^ out_t_18; // @[Sbox.scala 244:20]
  wire  out_t_28 = out_t_11 ^ out_t_25; // @[Sbox.scala 245:20]
  wire  out_t_29 = out_t_15 ^ out_t_20; // @[Sbox.scala 246:20]
  wire  out_y_0 = out_t_9 ^ out_t_16; // @[Sbox.scala 247:20]
  wire  out_y_1 = out_t_14 ^ out_t_23; // @[Sbox.scala 248:20]
  wire  out_y_2 = out_t_19 ^ out_t_24; // @[Sbox.scala 249:20]
  wire  out_y_3 = out_t_23 ^ out_t_27; // @[Sbox.scala 250:20]
  wire  out_y_4 = out_t_12 ^ out_t_22; // @[Sbox.scala 251:20]
  wire  out_y_5 = out_t_17 ^ out_t_28; // @[Sbox.scala 252:20]
  wire  out_y_6 = out_t_26 ^ out_t_29; // @[Sbox.scala 253:20]
  wire  out_y_7 = out_t_13 ^ out_t_22; // @[Sbox.scala 254:20]
  wire [3:0] out_lo = {out_y_3,out_y_2,out_y_1,out_y_0}; // @[Sbox.scala 255:7]
  wire [3:0] out_hi = {out_y_7,out_y_6,out_y_5,out_y_4}; // @[Sbox.scala 255:7]
  assign io_out = {out_hi,out_lo}; // @[Sbox.scala 255:7]
  always @(posedge clock) begin
    r1 <= {st1_hi,st1_lo}; // @[Sbox.scala 88:7]
    r2 <= {mid_hi,mid_lo}; // @[Sbox.scala 161:7]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  r1 = _RAND_0[20:0];
  _RAND_1 = {1{`RANDOM}};
  r2 = _RAND_1[17:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SubBytes_3(
  input        clock,
  input        reset,
  input  [7:0] io_para_in_state_0,
  input  [7:0] io_para_in_state_1,
  input  [7:0] io_para_in_state_2,
  input  [7:0] io_para_in_state_3,
  input  [7:0] io_para_in_state_4,
  input  [7:0] io_para_in_state_5,
  input  [7:0] io_para_in_state_6,
  input  [7:0] io_para_in_state_7,
  input  [7:0] io_para_in_state_8,
  input  [7:0] io_para_in_state_9,
  input  [7:0] io_para_in_state_10,
  input  [7:0] io_para_in_state_11,
  input  [7:0] io_para_in_state_12,
  input  [7:0] io_para_in_state_13,
  input  [7:0] io_para_in_state_14,
  input  [7:0] io_para_in_state_15,
  input        io_para_in_control_isIdle,
  input  [1:0] io_para_in_control_keylength,
  input  [1:0] io_para_in_control_taskID,
  input  [3:0] io_para_in_control_rounds,
  output [7:0] io_para_out_state_0,
  output [7:0] io_para_out_state_1,
  output [7:0] io_para_out_state_2,
  output [7:0] io_para_out_state_3,
  output [7:0] io_para_out_state_4,
  output [7:0] io_para_out_state_5,
  output [7:0] io_para_out_state_6,
  output [7:0] io_para_out_state_7,
  output [7:0] io_para_out_state_8,
  output [7:0] io_para_out_state_9,
  output [7:0] io_para_out_state_10,
  output [7:0] io_para_out_state_11,
  output [7:0] io_para_out_state_12,
  output [7:0] io_para_out_state_13,
  output [7:0] io_para_out_state_14,
  output [7:0] io_para_out_state_15,
  output       io_para_out_control_isIdle,
  output [1:0] io_para_out_control_keylength,
  output [1:0] io_para_out_control_taskID,
  output [3:0] io_para_out_control_rounds
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
`endif // RANDOMIZE_REG_INIT
  wire  sboxs_0_clock; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_0_io_in; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_0_io_out; // @[SubBytes.scala 14:34]
  wire  sboxs_1_clock; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_1_io_in; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_1_io_out; // @[SubBytes.scala 14:34]
  wire  sboxs_2_clock; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_2_io_in; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_2_io_out; // @[SubBytes.scala 14:34]
  wire  sboxs_3_clock; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_3_io_in; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_3_io_out; // @[SubBytes.scala 14:34]
  wire  sboxs_4_clock; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_4_io_in; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_4_io_out; // @[SubBytes.scala 14:34]
  wire  sboxs_5_clock; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_5_io_in; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_5_io_out; // @[SubBytes.scala 14:34]
  wire  sboxs_6_clock; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_6_io_in; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_6_io_out; // @[SubBytes.scala 14:34]
  wire  sboxs_7_clock; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_7_io_in; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_7_io_out; // @[SubBytes.scala 14:34]
  wire  sboxs_8_clock; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_8_io_in; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_8_io_out; // @[SubBytes.scala 14:34]
  wire  sboxs_9_clock; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_9_io_in; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_9_io_out; // @[SubBytes.scala 14:34]
  wire  sboxs_10_clock; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_10_io_in; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_10_io_out; // @[SubBytes.scala 14:34]
  wire  sboxs_11_clock; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_11_io_in; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_11_io_out; // @[SubBytes.scala 14:34]
  wire  sboxs_12_clock; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_12_io_in; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_12_io_out; // @[SubBytes.scala 14:34]
  wire  sboxs_13_clock; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_13_io_in; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_13_io_out; // @[SubBytes.scala 14:34]
  wire  sboxs_14_clock; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_14_io_in; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_14_io_out; // @[SubBytes.scala 14:34]
  wire  sboxs_15_clock; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_15_io_in; // @[SubBytes.scala 14:34]
  wire [7:0] sboxs_15_io_out; // @[SubBytes.scala 14:34]
  reg [7:0] io_para_out_state_0_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_1_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_2_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_3_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_4_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_5_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_6_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_7_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_8_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_9_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_10_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_11_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_12_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_13_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_14_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_15_r; // @[Reg.scala 16:16]
  reg  io_para_out_control_REG_isIdle; // @[Util.scala 33:14]
  reg [1:0] io_para_out_control_REG_keylength; // @[Util.scala 33:14]
  reg [1:0] io_para_out_control_REG_taskID; // @[Util.scala 33:14]
  reg [3:0] io_para_out_control_REG_rounds; // @[Util.scala 33:14]
  reg  io_para_out_control_REG_1_isIdle; // @[Util.scala 35:14]
  reg [1:0] io_para_out_control_REG_1_keylength; // @[Util.scala 35:14]
  reg [1:0] io_para_out_control_REG_1_taskID; // @[Util.scala 35:14]
  reg [3:0] io_para_out_control_REG_1_rounds; // @[Util.scala 35:14]
  reg  io_para_out_control_REG_2_isIdle; // @[Util.scala 35:14]
  reg [1:0] io_para_out_control_REG_2_keylength; // @[Util.scala 35:14]
  reg [1:0] io_para_out_control_REG_2_taskID; // @[Util.scala 35:14]
  reg [3:0] io_para_out_control_REG_2_rounds; // @[Util.scala 35:14]
  AESSBox_52 sboxs_0 ( // @[SubBytes.scala 14:34]
    .clock(sboxs_0_clock),
    .io_in(sboxs_0_io_in),
    .io_out(sboxs_0_io_out)
  );
  AESSBox_52 sboxs_1 ( // @[SubBytes.scala 14:34]
    .clock(sboxs_1_clock),
    .io_in(sboxs_1_io_in),
    .io_out(sboxs_1_io_out)
  );
  AESSBox_52 sboxs_2 ( // @[SubBytes.scala 14:34]
    .clock(sboxs_2_clock),
    .io_in(sboxs_2_io_in),
    .io_out(sboxs_2_io_out)
  );
  AESSBox_52 sboxs_3 ( // @[SubBytes.scala 14:34]
    .clock(sboxs_3_clock),
    .io_in(sboxs_3_io_in),
    .io_out(sboxs_3_io_out)
  );
  AESSBox_52 sboxs_4 ( // @[SubBytes.scala 14:34]
    .clock(sboxs_4_clock),
    .io_in(sboxs_4_io_in),
    .io_out(sboxs_4_io_out)
  );
  AESSBox_52 sboxs_5 ( // @[SubBytes.scala 14:34]
    .clock(sboxs_5_clock),
    .io_in(sboxs_5_io_in),
    .io_out(sboxs_5_io_out)
  );
  AESSBox_52 sboxs_6 ( // @[SubBytes.scala 14:34]
    .clock(sboxs_6_clock),
    .io_in(sboxs_6_io_in),
    .io_out(sboxs_6_io_out)
  );
  AESSBox_52 sboxs_7 ( // @[SubBytes.scala 14:34]
    .clock(sboxs_7_clock),
    .io_in(sboxs_7_io_in),
    .io_out(sboxs_7_io_out)
  );
  AESSBox_52 sboxs_8 ( // @[SubBytes.scala 14:34]
    .clock(sboxs_8_clock),
    .io_in(sboxs_8_io_in),
    .io_out(sboxs_8_io_out)
  );
  AESSBox_52 sboxs_9 ( // @[SubBytes.scala 14:34]
    .clock(sboxs_9_clock),
    .io_in(sboxs_9_io_in),
    .io_out(sboxs_9_io_out)
  );
  AESSBox_52 sboxs_10 ( // @[SubBytes.scala 14:34]
    .clock(sboxs_10_clock),
    .io_in(sboxs_10_io_in),
    .io_out(sboxs_10_io_out)
  );
  AESSBox_52 sboxs_11 ( // @[SubBytes.scala 14:34]
    .clock(sboxs_11_clock),
    .io_in(sboxs_11_io_in),
    .io_out(sboxs_11_io_out)
  );
  AESSBox_52 sboxs_12 ( // @[SubBytes.scala 14:34]
    .clock(sboxs_12_clock),
    .io_in(sboxs_12_io_in),
    .io_out(sboxs_12_io_out)
  );
  AESSBox_52 sboxs_13 ( // @[SubBytes.scala 14:34]
    .clock(sboxs_13_clock),
    .io_in(sboxs_13_io_in),
    .io_out(sboxs_13_io_out)
  );
  AESSBox_52 sboxs_14 ( // @[SubBytes.scala 14:34]
    .clock(sboxs_14_clock),
    .io_in(sboxs_14_io_in),
    .io_out(sboxs_14_io_out)
  );
  AESSBox_52 sboxs_15 ( // @[SubBytes.scala 14:34]
    .clock(sboxs_15_clock),
    .io_in(sboxs_15_io_in),
    .io_out(sboxs_15_io_out)
  );
  assign io_para_out_state_0 = io_para_out_state_0_r; // @[SubBytes.scala 17:28]
  assign io_para_out_state_1 = io_para_out_state_1_r; // @[SubBytes.scala 17:28]
  assign io_para_out_state_2 = io_para_out_state_2_r; // @[SubBytes.scala 17:28]
  assign io_para_out_state_3 = io_para_out_state_3_r; // @[SubBytes.scala 17:28]
  assign io_para_out_state_4 = io_para_out_state_4_r; // @[SubBytes.scala 17:28]
  assign io_para_out_state_5 = io_para_out_state_5_r; // @[SubBytes.scala 17:28]
  assign io_para_out_state_6 = io_para_out_state_6_r; // @[SubBytes.scala 17:28]
  assign io_para_out_state_7 = io_para_out_state_7_r; // @[SubBytes.scala 17:28]
  assign io_para_out_state_8 = io_para_out_state_8_r; // @[SubBytes.scala 17:28]
  assign io_para_out_state_9 = io_para_out_state_9_r; // @[SubBytes.scala 17:28]
  assign io_para_out_state_10 = io_para_out_state_10_r; // @[SubBytes.scala 17:28]
  assign io_para_out_state_11 = io_para_out_state_11_r; // @[SubBytes.scala 17:28]
  assign io_para_out_state_12 = io_para_out_state_12_r; // @[SubBytes.scala 17:28]
  assign io_para_out_state_13 = io_para_out_state_13_r; // @[SubBytes.scala 17:28]
  assign io_para_out_state_14 = io_para_out_state_14_r; // @[SubBytes.scala 17:28]
  assign io_para_out_state_15 = io_para_out_state_15_r; // @[SubBytes.scala 17:28]
  assign io_para_out_control_isIdle = io_para_out_control_REG_2_isIdle; // @[SubBytes.scala 20:23]
  assign io_para_out_control_keylength = io_para_out_control_REG_2_keylength; // @[SubBytes.scala 20:23]
  assign io_para_out_control_taskID = io_para_out_control_REG_2_taskID; // @[SubBytes.scala 20:23]
  assign io_para_out_control_rounds = io_para_out_control_REG_2_rounds; // @[SubBytes.scala 20:23]
  assign sboxs_0_clock = clock;
  assign sboxs_0_io_in = io_para_in_state_0; // @[SubBytes.scala 16:22]
  assign sboxs_1_clock = clock;
  assign sboxs_1_io_in = io_para_in_state_1; // @[SubBytes.scala 16:22]
  assign sboxs_2_clock = clock;
  assign sboxs_2_io_in = io_para_in_state_2; // @[SubBytes.scala 16:22]
  assign sboxs_3_clock = clock;
  assign sboxs_3_io_in = io_para_in_state_3; // @[SubBytes.scala 16:22]
  assign sboxs_4_clock = clock;
  assign sboxs_4_io_in = io_para_in_state_4; // @[SubBytes.scala 16:22]
  assign sboxs_5_clock = clock;
  assign sboxs_5_io_in = io_para_in_state_5; // @[SubBytes.scala 16:22]
  assign sboxs_6_clock = clock;
  assign sboxs_6_io_in = io_para_in_state_6; // @[SubBytes.scala 16:22]
  assign sboxs_7_clock = clock;
  assign sboxs_7_io_in = io_para_in_state_7; // @[SubBytes.scala 16:22]
  assign sboxs_8_clock = clock;
  assign sboxs_8_io_in = io_para_in_state_8; // @[SubBytes.scala 16:22]
  assign sboxs_9_clock = clock;
  assign sboxs_9_io_in = io_para_in_state_9; // @[SubBytes.scala 16:22]
  assign sboxs_10_clock = clock;
  assign sboxs_10_io_in = io_para_in_state_10; // @[SubBytes.scala 16:22]
  assign sboxs_11_clock = clock;
  assign sboxs_11_io_in = io_para_in_state_11; // @[SubBytes.scala 16:22]
  assign sboxs_12_clock = clock;
  assign sboxs_12_io_in = io_para_in_state_12; // @[SubBytes.scala 16:22]
  assign sboxs_13_clock = clock;
  assign sboxs_13_io_in = io_para_in_state_13; // @[SubBytes.scala 16:22]
  assign sboxs_14_clock = clock;
  assign sboxs_14_io_in = io_para_in_state_14; // @[SubBytes.scala 16:22]
  assign sboxs_15_clock = clock;
  assign sboxs_15_io_in = io_para_in_state_15; // @[SubBytes.scala 16:22]
  always @(posedge clock) begin
    io_para_out_state_0_r <= sboxs_0_io_out; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_1_r <= sboxs_1_io_out; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_2_r <= sboxs_2_io_out; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_3_r <= sboxs_3_io_out; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_4_r <= sboxs_4_io_out; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_5_r <= sboxs_5_io_out; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_6_r <= sboxs_6_io_out; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_7_r <= sboxs_7_io_out; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_8_r <= sboxs_8_io_out; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_9_r <= sboxs_9_io_out; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_10_r <= sboxs_10_io_out; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_11_r <= sboxs_11_io_out; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_12_r <= sboxs_12_io_out; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_13_r <= sboxs_13_io_out; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_14_r <= sboxs_14_io_out; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_15_r <= sboxs_15_io_out; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_control_REG_isIdle <= reset | io_para_in_control_isIdle; // @[Util.scala 33:{14,14,14}]
    if (reset) begin // @[Util.scala 33:14]
      io_para_out_control_REG_keylength <= 2'h0; // @[Util.scala 33:14]
    end else begin
      io_para_out_control_REG_keylength <= io_para_in_control_keylength; // @[Util.scala 33:14]
    end
    if (reset) begin // @[Util.scala 33:14]
      io_para_out_control_REG_taskID <= 2'h0; // @[Util.scala 33:14]
    end else begin
      io_para_out_control_REG_taskID <= io_para_in_control_taskID; // @[Util.scala 33:14]
    end
    if (reset) begin // @[Util.scala 33:14]
      io_para_out_control_REG_rounds <= 4'h5; // @[Util.scala 33:14]
    end else begin
      io_para_out_control_REG_rounds <= io_para_in_control_rounds; // @[Util.scala 33:14]
    end
    io_para_out_control_REG_1_isIdle <= reset | io_para_out_control_REG_isIdle; // @[Util.scala 35:{14,14,14}]
    if (reset) begin // @[Util.scala 35:14]
      io_para_out_control_REG_1_keylength <= 2'h0; // @[Util.scala 35:14]
    end else begin
      io_para_out_control_REG_1_keylength <= io_para_out_control_REG_keylength; // @[Util.scala 35:14]
    end
    if (reset) begin // @[Util.scala 35:14]
      io_para_out_control_REG_1_taskID <= 2'h0; // @[Util.scala 35:14]
    end else begin
      io_para_out_control_REG_1_taskID <= io_para_out_control_REG_taskID; // @[Util.scala 35:14]
    end
    if (reset) begin // @[Util.scala 35:14]
      io_para_out_control_REG_1_rounds <= 4'h5; // @[Util.scala 35:14]
    end else begin
      io_para_out_control_REG_1_rounds <= io_para_out_control_REG_rounds; // @[Util.scala 35:14]
    end
    io_para_out_control_REG_2_isIdle <= reset | io_para_out_control_REG_1_isIdle; // @[Util.scala 35:{14,14,14}]
    if (reset) begin // @[Util.scala 35:14]
      io_para_out_control_REG_2_keylength <= 2'h0; // @[Util.scala 35:14]
    end else begin
      io_para_out_control_REG_2_keylength <= io_para_out_control_REG_1_keylength; // @[Util.scala 35:14]
    end
    if (reset) begin // @[Util.scala 35:14]
      io_para_out_control_REG_2_taskID <= 2'h0; // @[Util.scala 35:14]
    end else begin
      io_para_out_control_REG_2_taskID <= io_para_out_control_REG_1_taskID; // @[Util.scala 35:14]
    end
    if (reset) begin // @[Util.scala 35:14]
      io_para_out_control_REG_2_rounds <= 4'h5; // @[Util.scala 35:14]
    end else begin
      io_para_out_control_REG_2_rounds <= io_para_out_control_REG_1_rounds; // @[Util.scala 35:14]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  io_para_out_state_0_r = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  io_para_out_state_1_r = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  io_para_out_state_2_r = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  io_para_out_state_3_r = _RAND_3[7:0];
  _RAND_4 = {1{`RANDOM}};
  io_para_out_state_4_r = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  io_para_out_state_5_r = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  io_para_out_state_6_r = _RAND_6[7:0];
  _RAND_7 = {1{`RANDOM}};
  io_para_out_state_7_r = _RAND_7[7:0];
  _RAND_8 = {1{`RANDOM}};
  io_para_out_state_8_r = _RAND_8[7:0];
  _RAND_9 = {1{`RANDOM}};
  io_para_out_state_9_r = _RAND_9[7:0];
  _RAND_10 = {1{`RANDOM}};
  io_para_out_state_10_r = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  io_para_out_state_11_r = _RAND_11[7:0];
  _RAND_12 = {1{`RANDOM}};
  io_para_out_state_12_r = _RAND_12[7:0];
  _RAND_13 = {1{`RANDOM}};
  io_para_out_state_13_r = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  io_para_out_state_14_r = _RAND_14[7:0];
  _RAND_15 = {1{`RANDOM}};
  io_para_out_state_15_r = _RAND_15[7:0];
  _RAND_16 = {1{`RANDOM}};
  io_para_out_control_REG_isIdle = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  io_para_out_control_REG_keylength = _RAND_17[1:0];
  _RAND_18 = {1{`RANDOM}};
  io_para_out_control_REG_taskID = _RAND_18[1:0];
  _RAND_19 = {1{`RANDOM}};
  io_para_out_control_REG_rounds = _RAND_19[3:0];
  _RAND_20 = {1{`RANDOM}};
  io_para_out_control_REG_1_isIdle = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  io_para_out_control_REG_1_keylength = _RAND_21[1:0];
  _RAND_22 = {1{`RANDOM}};
  io_para_out_control_REG_1_taskID = _RAND_22[1:0];
  _RAND_23 = {1{`RANDOM}};
  io_para_out_control_REG_1_rounds = _RAND_23[3:0];
  _RAND_24 = {1{`RANDOM}};
  io_para_out_control_REG_2_isIdle = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  io_para_out_control_REG_2_keylength = _RAND_25[1:0];
  _RAND_26 = {1{`RANDOM}};
  io_para_out_control_REG_2_taskID = _RAND_26[1:0];
  _RAND_27 = {1{`RANDOM}};
  io_para_out_control_REG_2_rounds = _RAND_27[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module ShiftRows_3(
  input  [7:0] io_para_in_state_0,
  input  [7:0] io_para_in_state_1,
  input  [7:0] io_para_in_state_2,
  input  [7:0] io_para_in_state_3,
  input  [7:0] io_para_in_state_4,
  input  [7:0] io_para_in_state_5,
  input  [7:0] io_para_in_state_6,
  input  [7:0] io_para_in_state_7,
  input  [7:0] io_para_in_state_8,
  input  [7:0] io_para_in_state_9,
  input  [7:0] io_para_in_state_10,
  input  [7:0] io_para_in_state_11,
  input  [7:0] io_para_in_state_12,
  input  [7:0] io_para_in_state_13,
  input  [7:0] io_para_in_state_14,
  input  [7:0] io_para_in_state_15,
  input        io_para_in_control_isIdle,
  input  [1:0] io_para_in_control_keylength,
  input  [1:0] io_para_in_control_taskID,
  input  [3:0] io_para_in_control_rounds,
  output [7:0] io_para_out_state_0,
  output [7:0] io_para_out_state_1,
  output [7:0] io_para_out_state_2,
  output [7:0] io_para_out_state_3,
  output [7:0] io_para_out_state_4,
  output [7:0] io_para_out_state_5,
  output [7:0] io_para_out_state_6,
  output [7:0] io_para_out_state_7,
  output [7:0] io_para_out_state_8,
  output [7:0] io_para_out_state_9,
  output [7:0] io_para_out_state_10,
  output [7:0] io_para_out_state_11,
  output [7:0] io_para_out_state_12,
  output [7:0] io_para_out_state_13,
  output [7:0] io_para_out_state_14,
  output [7:0] io_para_out_state_15,
  output       io_para_out_control_isIdle,
  output [1:0] io_para_out_control_keylength,
  output [1:0] io_para_out_control_taskID,
  output [3:0] io_para_out_control_rounds
);
  assign io_para_out_state_0 = io_para_in_state_0; // @[ShiftRows.scala 13:24]
  assign io_para_out_state_1 = io_para_in_state_13; // @[ShiftRows.scala 15:24]
  assign io_para_out_state_2 = io_para_in_state_10; // @[ShiftRows.scala 16:24]
  assign io_para_out_state_3 = io_para_in_state_7; // @[ShiftRows.scala 18:24]
  assign io_para_out_state_4 = io_para_in_state_4; // @[ShiftRows.scala 20:24]
  assign io_para_out_state_5 = io_para_in_state_1; // @[ShiftRows.scala 22:24]
  assign io_para_out_state_6 = io_para_in_state_14; // @[ShiftRows.scala 23:24]
  assign io_para_out_state_7 = io_para_in_state_11; // @[ShiftRows.scala 25:24]
  assign io_para_out_state_8 = io_para_in_state_8; // @[ShiftRows.scala 27:24]
  assign io_para_out_state_9 = io_para_in_state_5; // @[ShiftRows.scala 29:24]
  assign io_para_out_state_10 = io_para_in_state_2; // @[ShiftRows.scala 30:25]
  assign io_para_out_state_11 = io_para_in_state_15; // @[ShiftRows.scala 32:25]
  assign io_para_out_state_12 = io_para_in_state_12; // @[ShiftRows.scala 34:25]
  assign io_para_out_state_13 = io_para_in_state_9; // @[ShiftRows.scala 36:25]
  assign io_para_out_state_14 = io_para_in_state_6; // @[ShiftRows.scala 37:25]
  assign io_para_out_state_15 = io_para_in_state_3; // @[ShiftRows.scala 39:25]
  assign io_para_out_control_isIdle = io_para_in_control_isIdle; // @[ShiftRows.scala 41:23]
  assign io_para_out_control_keylength = io_para_in_control_keylength; // @[ShiftRows.scala 41:23]
  assign io_para_out_control_taskID = io_para_in_control_taskID; // @[ShiftRows.scala 41:23]
  assign io_para_out_control_rounds = io_para_in_control_rounds; // @[ShiftRows.scala 41:23]
endmodule
module GFMul_96(
  input  [7:0] io_in,
  output [7:0] io_out
);
  wire [8:0] _io_out_T = {io_in, 1'h0}; // @[PolyMul.scala 16:32]
  wire [7:0] _io_out_T_3 = io_in[7] ? 8'h1b : 8'h0; // @[PolyMul.scala 16:48]
  wire [7:0] _io_out_T_4 = _io_out_T[7:0] ^ _io_out_T_3; // @[PolyMul.scala 16:43]
  wire [8:0] _io_out_T_10 = {_io_out_T_4, 1'h0}; // @[PolyMul.scala 16:32]
  wire [7:0] _io_out_T_13 = _io_out_T_4[7] ? 8'h1b : 8'h0; // @[PolyMul.scala 16:48]
  wire [7:0] _io_out_T_14 = _io_out_T_10[7:0] ^ _io_out_T_13; // @[PolyMul.scala 16:43]
  wire [8:0] _io_out_T_15 = {_io_out_T_14, 1'h0}; // @[PolyMul.scala 16:32]
  wire [7:0] _io_out_T_18 = _io_out_T_14[7] ? 8'h1b : 8'h0; // @[PolyMul.scala 16:48]
  wire [7:0] _io_out_T_19 = _io_out_T_15[7:0] ^ _io_out_T_18; // @[PolyMul.scala 16:43]
  wire [7:0] _io_out_T_20 = io_in ^ _io_out_T_4; // @[PolyMul.scala 28:14]
  assign io_out = _io_out_T_20 ^ _io_out_T_19; // @[PolyMul.scala 28:14]
endmodule
module GFMul_97(
  input  [7:0] io_in,
  output [7:0] io_out
);
  wire [8:0] _io_out_T = {io_in, 1'h0}; // @[PolyMul.scala 16:32]
  wire [7:0] _io_out_T_3 = io_in[7] ? 8'h1b : 8'h0; // @[PolyMul.scala 16:48]
  wire [7:0] _io_out_T_4 = _io_out_T[7:0] ^ _io_out_T_3; // @[PolyMul.scala 16:43]
  wire [8:0] _io_out_T_5 = {_io_out_T_4, 1'h0}; // @[PolyMul.scala 16:32]
  wire [7:0] _io_out_T_8 = _io_out_T_4[7] ? 8'h1b : 8'h0; // @[PolyMul.scala 16:48]
  wire [7:0] _io_out_T_9 = _io_out_T_5[7:0] ^ _io_out_T_8; // @[PolyMul.scala 16:43]
  wire [8:0] _io_out_T_20 = {_io_out_T_9, 1'h0}; // @[PolyMul.scala 16:32]
  wire [7:0] _io_out_T_23 = _io_out_T_9[7] ? 8'h1b : 8'h0; // @[PolyMul.scala 16:48]
  wire [7:0] _io_out_T_24 = _io_out_T_20[7:0] ^ _io_out_T_23; // @[PolyMul.scala 16:43]
  wire [7:0] _io_out_T_25 = io_in ^ _io_out_T_9; // @[PolyMul.scala 28:14]
  assign io_out = _io_out_T_25 ^ _io_out_T_24; // @[PolyMul.scala 28:14]
endmodule
module GFMul_98(
  input  [7:0] io_in,
  output [7:0] io_out
);
  wire [8:0] _io_out_T = {io_in, 1'h0}; // @[PolyMul.scala 16:32]
  wire [7:0] _io_out_T_3 = io_in[7] ? 8'h1b : 8'h0; // @[PolyMul.scala 16:48]
  wire [7:0] _io_out_T_4 = _io_out_T[7:0] ^ _io_out_T_3; // @[PolyMul.scala 16:43]
  wire [8:0] _io_out_T_5 = {_io_out_T_4, 1'h0}; // @[PolyMul.scala 16:32]
  wire [7:0] _io_out_T_8 = _io_out_T_4[7] ? 8'h1b : 8'h0; // @[PolyMul.scala 16:48]
  wire [7:0] _io_out_T_9 = _io_out_T_5[7:0] ^ _io_out_T_8; // @[PolyMul.scala 16:43]
  wire [8:0] _io_out_T_10 = {_io_out_T_9, 1'h0}; // @[PolyMul.scala 16:32]
  wire [7:0] _io_out_T_13 = _io_out_T_9[7] ? 8'h1b : 8'h0; // @[PolyMul.scala 16:48]
  wire [7:0] _io_out_T_14 = _io_out_T_10[7:0] ^ _io_out_T_13; // @[PolyMul.scala 16:43]
  assign io_out = io_in ^ _io_out_T_14; // @[PolyMul.scala 28:14]
endmodule
module GFMul_99(
  input  [7:0] io_in,
  output [7:0] io_out
);
  wire [8:0] _io_out_T = {io_in, 1'h0}; // @[PolyMul.scala 16:32]
  wire [7:0] _io_out_T_3 = io_in[7] ? 8'h1b : 8'h0; // @[PolyMul.scala 16:48]
  wire [7:0] _io_out_T_4 = _io_out_T[7:0] ^ _io_out_T_3; // @[PolyMul.scala 16:43]
  wire [8:0] _io_out_T_10 = {_io_out_T_4, 1'h0}; // @[PolyMul.scala 16:32]
  wire [7:0] _io_out_T_13 = _io_out_T_4[7] ? 8'h1b : 8'h0; // @[PolyMul.scala 16:48]
  wire [7:0] _io_out_T_14 = _io_out_T_10[7:0] ^ _io_out_T_13; // @[PolyMul.scala 16:43]
  wire [8:0] _io_out_T_25 = {_io_out_T_14, 1'h0}; // @[PolyMul.scala 16:32]
  wire [7:0] _io_out_T_28 = _io_out_T_14[7] ? 8'h1b : 8'h0; // @[PolyMul.scala 16:48]
  wire [7:0] _io_out_T_29 = _io_out_T_25[7:0] ^ _io_out_T_28; // @[PolyMul.scala 16:43]
  wire [7:0] _io_out_T_30 = _io_out_T_4 ^ _io_out_T_14; // @[PolyMul.scala 28:14]
  assign io_out = _io_out_T_30 ^ _io_out_T_29; // @[PolyMul.scala 28:14]
endmodule
module TermMul_48(
  input  [7:0]  io_in,
  output [31:0] io_out
);
  wire [7:0] out_m_io_in; // @[PolyMul.scala 40:19]
  wire [7:0] out_m_io_out; // @[PolyMul.scala 40:19]
  wire [7:0] out_m_1_io_in; // @[PolyMul.scala 40:19]
  wire [7:0] out_m_1_io_out; // @[PolyMul.scala 40:19]
  wire [7:0] out_m_2_io_in; // @[PolyMul.scala 40:19]
  wire [7:0] out_m_2_io_out; // @[PolyMul.scala 40:19]
  wire [7:0] out_m_3_io_in; // @[PolyMul.scala 40:19]
  wire [7:0] out_m_3_io_out; // @[PolyMul.scala 40:19]
  wire [15:0] out_lo = {out_m_2_io_out,out_m_3_io_out}; // @[Cat.scala 31:58]
  wire [15:0] out_hi = {out_m_io_out,out_m_1_io_out}; // @[Cat.scala 31:58]
  GFMul_96 out_m ( // @[PolyMul.scala 40:19]
    .io_in(out_m_io_in),
    .io_out(out_m_io_out)
  );
  GFMul_97 out_m_1 ( // @[PolyMul.scala 40:19]
    .io_in(out_m_1_io_in),
    .io_out(out_m_1_io_out)
  );
  GFMul_98 out_m_2 ( // @[PolyMul.scala 40:19]
    .io_in(out_m_2_io_in),
    .io_out(out_m_2_io_out)
  );
  GFMul_99 out_m_3 ( // @[PolyMul.scala 40:19]
    .io_in(out_m_3_io_in),
    .io_out(out_m_3_io_out)
  );
  assign io_out = {out_hi,out_lo}; // @[Cat.scala 31:58]
  assign out_m_io_in = io_in; // @[PolyMul.scala 41:13]
  assign out_m_1_io_in = io_in; // @[PolyMul.scala 41:13]
  assign out_m_2_io_in = io_in; // @[PolyMul.scala 41:13]
  assign out_m_3_io_in = io_in; // @[PolyMul.scala 41:13]
endmodule
module PolyMul_12(
  input  [7:0] io_in_0,
  input  [7:0] io_in_1,
  input  [7:0] io_in_2,
  input  [7:0] io_in_3,
  output [7:0] io_out_0,
  output [7:0] io_out_1,
  output [7:0] io_out_2,
  output [7:0] io_out_3
);
  wire [7:0] tmp_m_io_in; // @[PolyMul.scala 60:21]
  wire [31:0] tmp_m_io_out; // @[PolyMul.scala 60:21]
  wire [7:0] tmp_m_1_io_in; // @[PolyMul.scala 60:21]
  wire [31:0] tmp_m_1_io_out; // @[PolyMul.scala 60:21]
  wire [7:0] tmp_m_2_io_in; // @[PolyMul.scala 60:21]
  wire [31:0] tmp_m_2_io_out; // @[PolyMul.scala 60:21]
  wire [7:0] tmp_m_3_io_in; // @[PolyMul.scala 60:21]
  wire [31:0] tmp_m_3_io_out; // @[PolyMul.scala 60:21]
  wire [31:0] _tmp_T_2 = {tmp_m_1_io_out[23:0],tmp_m_1_io_out[31:24]}; // @[PolyMul.scala 62:26]
  wire [31:0] _tmp_T_5 = {tmp_m_2_io_out[15:0],tmp_m_2_io_out[31:16]}; // @[PolyMul.scala 62:26]
  wire [31:0] _tmp_T_8 = {tmp_m_3_io_out[7:0],tmp_m_3_io_out[31:8]}; // @[PolyMul.scala 62:26]
  wire [31:0] _tmp_T_9 = tmp_m_io_out ^ _tmp_T_2; // @[PolyMul.scala 64:15]
  wire [31:0] _tmp_T_10 = _tmp_T_9 ^ _tmp_T_5; // @[PolyMul.scala 64:15]
  wire [31:0] tmp = _tmp_T_10 ^ _tmp_T_8; // @[PolyMul.scala 64:15]
  wire [3:0] lo = {tmp[3],tmp[2],tmp[1],tmp[0]}; // @[PolyMul.scala 57:83]
  wire [3:0] hi = {tmp[7],tmp[6],tmp[5],tmp[4]}; // @[PolyMul.scala 57:83]
  wire [3:0] lo_1 = {tmp[11],tmp[10],tmp[9],tmp[8]}; // @[PolyMul.scala 57:83]
  wire [3:0] hi_1 = {tmp[15],tmp[14],tmp[13],tmp[12]}; // @[PolyMul.scala 57:83]
  wire [3:0] lo_2 = {tmp[19],tmp[18],tmp[17],tmp[16]}; // @[PolyMul.scala 57:83]
  wire [3:0] hi_2 = {tmp[23],tmp[22],tmp[21],tmp[20]}; // @[PolyMul.scala 57:83]
  wire [3:0] lo_3 = {tmp[27],tmp[26],tmp[25],tmp[24]}; // @[PolyMul.scala 57:83]
  wire [3:0] hi_3 = {tmp[31],tmp[30],tmp[29],tmp[28]}; // @[PolyMul.scala 57:83]
  TermMul_48 tmp_m ( // @[PolyMul.scala 60:21]
    .io_in(tmp_m_io_in),
    .io_out(tmp_m_io_out)
  );
  TermMul_48 tmp_m_1 ( // @[PolyMul.scala 60:21]
    .io_in(tmp_m_1_io_in),
    .io_out(tmp_m_1_io_out)
  );
  TermMul_48 tmp_m_2 ( // @[PolyMul.scala 60:21]
    .io_in(tmp_m_2_io_in),
    .io_out(tmp_m_2_io_out)
  );
  TermMul_48 tmp_m_3 ( // @[PolyMul.scala 60:21]
    .io_in(tmp_m_3_io_in),
    .io_out(tmp_m_3_io_out)
  );
  assign io_out_0 = {hi,lo}; // @[PolyMul.scala 57:83]
  assign io_out_1 = {hi_1,lo_1}; // @[PolyMul.scala 57:83]
  assign io_out_2 = {hi_2,lo_2}; // @[PolyMul.scala 57:83]
  assign io_out_3 = {hi_3,lo_3}; // @[PolyMul.scala 57:83]
  assign tmp_m_io_in = io_in_0; // @[PolyMul.scala 61:15]
  assign tmp_m_1_io_in = io_in_1; // @[PolyMul.scala 61:15]
  assign tmp_m_2_io_in = io_in_2; // @[PolyMul.scala 61:15]
  assign tmp_m_3_io_in = io_in_3; // @[PolyMul.scala 61:15]
endmodule
module MixColumns_3(
  input        clock,
  input        reset,
  input  [7:0] io_para_in_state_0,
  input  [7:0] io_para_in_state_1,
  input  [7:0] io_para_in_state_2,
  input  [7:0] io_para_in_state_3,
  input  [7:0] io_para_in_state_4,
  input  [7:0] io_para_in_state_5,
  input  [7:0] io_para_in_state_6,
  input  [7:0] io_para_in_state_7,
  input  [7:0] io_para_in_state_8,
  input  [7:0] io_para_in_state_9,
  input  [7:0] io_para_in_state_10,
  input  [7:0] io_para_in_state_11,
  input  [7:0] io_para_in_state_12,
  input  [7:0] io_para_in_state_13,
  input  [7:0] io_para_in_state_14,
  input  [7:0] io_para_in_state_15,
  input        io_para_in_control_isIdle,
  input  [1:0] io_para_in_control_keylength,
  input  [1:0] io_para_in_control_taskID,
  input  [3:0] io_para_in_control_rounds,
  output [7:0] io_para_out_state_0,
  output [7:0] io_para_out_state_1,
  output [7:0] io_para_out_state_2,
  output [7:0] io_para_out_state_3,
  output [7:0] io_para_out_state_4,
  output [7:0] io_para_out_state_5,
  output [7:0] io_para_out_state_6,
  output [7:0] io_para_out_state_7,
  output [7:0] io_para_out_state_8,
  output [7:0] io_para_out_state_9,
  output [7:0] io_para_out_state_10,
  output [7:0] io_para_out_state_11,
  output [7:0] io_para_out_state_12,
  output [7:0] io_para_out_state_13,
  output [7:0] io_para_out_state_14,
  output [7:0] io_para_out_state_15,
  output       io_para_out_control_isIdle,
  output [1:0] io_para_out_control_keylength,
  output [1:0] io_para_out_control_taskID,
  output [3:0] io_para_out_control_rounds
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
`endif // RANDOMIZE_REG_INIT
  wire [7:0] pms_0_io_in_0; // @[MixColumns.scala 16:31]
  wire [7:0] pms_0_io_in_1; // @[MixColumns.scala 16:31]
  wire [7:0] pms_0_io_in_2; // @[MixColumns.scala 16:31]
  wire [7:0] pms_0_io_in_3; // @[MixColumns.scala 16:31]
  wire [7:0] pms_0_io_out_0; // @[MixColumns.scala 16:31]
  wire [7:0] pms_0_io_out_1; // @[MixColumns.scala 16:31]
  wire [7:0] pms_0_io_out_2; // @[MixColumns.scala 16:31]
  wire [7:0] pms_0_io_out_3; // @[MixColumns.scala 16:31]
  wire [7:0] pms_1_io_in_0; // @[MixColumns.scala 16:31]
  wire [7:0] pms_1_io_in_1; // @[MixColumns.scala 16:31]
  wire [7:0] pms_1_io_in_2; // @[MixColumns.scala 16:31]
  wire [7:0] pms_1_io_in_3; // @[MixColumns.scala 16:31]
  wire [7:0] pms_1_io_out_0; // @[MixColumns.scala 16:31]
  wire [7:0] pms_1_io_out_1; // @[MixColumns.scala 16:31]
  wire [7:0] pms_1_io_out_2; // @[MixColumns.scala 16:31]
  wire [7:0] pms_1_io_out_3; // @[MixColumns.scala 16:31]
  wire [7:0] pms_2_io_in_0; // @[MixColumns.scala 16:31]
  wire [7:0] pms_2_io_in_1; // @[MixColumns.scala 16:31]
  wire [7:0] pms_2_io_in_2; // @[MixColumns.scala 16:31]
  wire [7:0] pms_2_io_in_3; // @[MixColumns.scala 16:31]
  wire [7:0] pms_2_io_out_0; // @[MixColumns.scala 16:31]
  wire [7:0] pms_2_io_out_1; // @[MixColumns.scala 16:31]
  wire [7:0] pms_2_io_out_2; // @[MixColumns.scala 16:31]
  wire [7:0] pms_2_io_out_3; // @[MixColumns.scala 16:31]
  wire [7:0] pms_3_io_in_0; // @[MixColumns.scala 16:31]
  wire [7:0] pms_3_io_in_1; // @[MixColumns.scala 16:31]
  wire [7:0] pms_3_io_in_2; // @[MixColumns.scala 16:31]
  wire [7:0] pms_3_io_in_3; // @[MixColumns.scala 16:31]
  wire [7:0] pms_3_io_out_0; // @[MixColumns.scala 16:31]
  wire [7:0] pms_3_io_out_1; // @[MixColumns.scala 16:31]
  wire [7:0] pms_3_io_out_2; // @[MixColumns.scala 16:31]
  wire [7:0] pms_3_io_out_3; // @[MixColumns.scala 16:31]
  reg [7:0] io_para_out_state_0_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_1_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_2_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_3_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_4_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_5_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_6_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_7_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_8_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_9_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_10_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_11_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_12_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_13_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_14_r; // @[Reg.scala 16:16]
  reg [7:0] io_para_out_state_15_r; // @[Reg.scala 16:16]
  reg  io_para_out_control_REG_isIdle; // @[Util.scala 33:14]
  reg [1:0] io_para_out_control_REG_keylength; // @[Util.scala 33:14]
  reg [1:0] io_para_out_control_REG_taskID; // @[Util.scala 33:14]
  reg [3:0] io_para_out_control_REG_rounds; // @[Util.scala 33:14]
  PolyMul_12 pms_0 ( // @[MixColumns.scala 16:31]
    .io_in_0(pms_0_io_in_0),
    .io_in_1(pms_0_io_in_1),
    .io_in_2(pms_0_io_in_2),
    .io_in_3(pms_0_io_in_3),
    .io_out_0(pms_0_io_out_0),
    .io_out_1(pms_0_io_out_1),
    .io_out_2(pms_0_io_out_2),
    .io_out_3(pms_0_io_out_3)
  );
  PolyMul_12 pms_1 ( // @[MixColumns.scala 16:31]
    .io_in_0(pms_1_io_in_0),
    .io_in_1(pms_1_io_in_1),
    .io_in_2(pms_1_io_in_2),
    .io_in_3(pms_1_io_in_3),
    .io_out_0(pms_1_io_out_0),
    .io_out_1(pms_1_io_out_1),
    .io_out_2(pms_1_io_out_2),
    .io_out_3(pms_1_io_out_3)
  );
  PolyMul_12 pms_2 ( // @[MixColumns.scala 16:31]
    .io_in_0(pms_2_io_in_0),
    .io_in_1(pms_2_io_in_1),
    .io_in_2(pms_2_io_in_2),
    .io_in_3(pms_2_io_in_3),
    .io_out_0(pms_2_io_out_0),
    .io_out_1(pms_2_io_out_1),
    .io_out_2(pms_2_io_out_2),
    .io_out_3(pms_2_io_out_3)
  );
  PolyMul_12 pms_3 ( // @[MixColumns.scala 16:31]
    .io_in_0(pms_3_io_in_0),
    .io_in_1(pms_3_io_in_1),
    .io_in_2(pms_3_io_in_2),
    .io_in_3(pms_3_io_in_3),
    .io_out_0(pms_3_io_out_0),
    .io_out_1(pms_3_io_out_1),
    .io_out_2(pms_3_io_out_2),
    .io_out_3(pms_3_io_out_3)
  );
  assign io_para_out_state_0 = io_para_out_state_0_r; // @[MixColumns.scala 20:36]
  assign io_para_out_state_1 = io_para_out_state_1_r; // @[MixColumns.scala 20:36]
  assign io_para_out_state_2 = io_para_out_state_2_r; // @[MixColumns.scala 20:36]
  assign io_para_out_state_3 = io_para_out_state_3_r; // @[MixColumns.scala 20:36]
  assign io_para_out_state_4 = io_para_out_state_4_r; // @[MixColumns.scala 20:36]
  assign io_para_out_state_5 = io_para_out_state_5_r; // @[MixColumns.scala 20:36]
  assign io_para_out_state_6 = io_para_out_state_6_r; // @[MixColumns.scala 20:36]
  assign io_para_out_state_7 = io_para_out_state_7_r; // @[MixColumns.scala 20:36]
  assign io_para_out_state_8 = io_para_out_state_8_r; // @[MixColumns.scala 20:36]
  assign io_para_out_state_9 = io_para_out_state_9_r; // @[MixColumns.scala 20:36]
  assign io_para_out_state_10 = io_para_out_state_10_r; // @[MixColumns.scala 20:36]
  assign io_para_out_state_11 = io_para_out_state_11_r; // @[MixColumns.scala 20:36]
  assign io_para_out_state_12 = io_para_out_state_12_r; // @[MixColumns.scala 20:36]
  assign io_para_out_state_13 = io_para_out_state_13_r; // @[MixColumns.scala 20:36]
  assign io_para_out_state_14 = io_para_out_state_14_r; // @[MixColumns.scala 20:36]
  assign io_para_out_state_15 = io_para_out_state_15_r; // @[MixColumns.scala 20:36]
  assign io_para_out_control_isIdle = io_para_out_control_REG_isIdle; // @[MixColumns.scala 23:23]
  assign io_para_out_control_keylength = io_para_out_control_REG_keylength; // @[MixColumns.scala 23:23]
  assign io_para_out_control_taskID = io_para_out_control_REG_taskID; // @[MixColumns.scala 23:23]
  assign io_para_out_control_rounds = io_para_out_control_REG_rounds; // @[MixColumns.scala 23:23]
  assign pms_0_io_in_0 = io_para_in_state_0; // @[MixColumns.scala 19:23]
  assign pms_0_io_in_1 = io_para_in_state_1; // @[MixColumns.scala 19:23]
  assign pms_0_io_in_2 = io_para_in_state_2; // @[MixColumns.scala 19:23]
  assign pms_0_io_in_3 = io_para_in_state_3; // @[MixColumns.scala 19:23]
  assign pms_1_io_in_0 = io_para_in_state_4; // @[MixColumns.scala 19:23]
  assign pms_1_io_in_1 = io_para_in_state_5; // @[MixColumns.scala 19:23]
  assign pms_1_io_in_2 = io_para_in_state_6; // @[MixColumns.scala 19:23]
  assign pms_1_io_in_3 = io_para_in_state_7; // @[MixColumns.scala 19:23]
  assign pms_2_io_in_0 = io_para_in_state_8; // @[MixColumns.scala 19:23]
  assign pms_2_io_in_1 = io_para_in_state_9; // @[MixColumns.scala 19:23]
  assign pms_2_io_in_2 = io_para_in_state_10; // @[MixColumns.scala 19:23]
  assign pms_2_io_in_3 = io_para_in_state_11; // @[MixColumns.scala 19:23]
  assign pms_3_io_in_0 = io_para_in_state_12; // @[MixColumns.scala 19:23]
  assign pms_3_io_in_1 = io_para_in_state_13; // @[MixColumns.scala 19:23]
  assign pms_3_io_in_2 = io_para_in_state_14; // @[MixColumns.scala 19:23]
  assign pms_3_io_in_3 = io_para_in_state_15; // @[MixColumns.scala 19:23]
  always @(posedge clock) begin
    io_para_out_state_0_r <= pms_0_io_out_0; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_1_r <= pms_0_io_out_1; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_2_r <= pms_0_io_out_2; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_3_r <= pms_0_io_out_3; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_4_r <= pms_1_io_out_0; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_5_r <= pms_1_io_out_1; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_6_r <= pms_1_io_out_2; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_7_r <= pms_1_io_out_3; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_8_r <= pms_2_io_out_0; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_9_r <= pms_2_io_out_1; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_10_r <= pms_2_io_out_2; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_11_r <= pms_2_io_out_3; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_12_r <= pms_3_io_out_0; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_13_r <= pms_3_io_out_1; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_14_r <= pms_3_io_out_2; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_state_15_r <= pms_3_io_out_3; // @[Reg.scala 16:16 17:{18,22}]
    io_para_out_control_REG_isIdle <= reset | io_para_in_control_isIdle; // @[Util.scala 33:{14,14,14}]
    if (reset) begin // @[Util.scala 33:14]
      io_para_out_control_REG_keylength <= 2'h0; // @[Util.scala 33:14]
    end else begin
      io_para_out_control_REG_keylength <= io_para_in_control_keylength; // @[Util.scala 33:14]
    end
    if (reset) begin // @[Util.scala 33:14]
      io_para_out_control_REG_taskID <= 2'h0; // @[Util.scala 33:14]
    end else begin
      io_para_out_control_REG_taskID <= io_para_in_control_taskID; // @[Util.scala 33:14]
    end
    if (reset) begin // @[Util.scala 33:14]
      io_para_out_control_REG_rounds <= 4'h5; // @[Util.scala 33:14]
    end else begin
      io_para_out_control_REG_rounds <= io_para_in_control_rounds; // @[Util.scala 33:14]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  io_para_out_state_0_r = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  io_para_out_state_1_r = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  io_para_out_state_2_r = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  io_para_out_state_3_r = _RAND_3[7:0];
  _RAND_4 = {1{`RANDOM}};
  io_para_out_state_4_r = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  io_para_out_state_5_r = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  io_para_out_state_6_r = _RAND_6[7:0];
  _RAND_7 = {1{`RANDOM}};
  io_para_out_state_7_r = _RAND_7[7:0];
  _RAND_8 = {1{`RANDOM}};
  io_para_out_state_8_r = _RAND_8[7:0];
  _RAND_9 = {1{`RANDOM}};
  io_para_out_state_9_r = _RAND_9[7:0];
  _RAND_10 = {1{`RANDOM}};
  io_para_out_state_10_r = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  io_para_out_state_11_r = _RAND_11[7:0];
  _RAND_12 = {1{`RANDOM}};
  io_para_out_state_12_r = _RAND_12[7:0];
  _RAND_13 = {1{`RANDOM}};
  io_para_out_state_13_r = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  io_para_out_state_14_r = _RAND_14[7:0];
  _RAND_15 = {1{`RANDOM}};
  io_para_out_state_15_r = _RAND_15[7:0];
  _RAND_16 = {1{`RANDOM}};
  io_para_out_control_REG_isIdle = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  io_para_out_control_REG_keylength = _RAND_17[1:0];
  _RAND_18 = {1{`RANDOM}};
  io_para_out_control_REG_taskID = _RAND_18[1:0];
  _RAND_19 = {1{`RANDOM}};
  io_para_out_control_REG_rounds = _RAND_19[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module AESDecModule(
  input        clock,
  input        reset,
  output       io_input_ready,
  input        io_input_valid,
  input  [7:0] io_input_bits_state_0,
  input  [7:0] io_input_bits_state_1,
  input  [7:0] io_input_bits_state_2,
  input  [7:0] io_input_bits_state_3,
  input  [7:0] io_input_bits_state_4,
  input  [7:0] io_input_bits_state_5,
  input  [7:0] io_input_bits_state_6,
  input  [7:0] io_input_bits_state_7,
  input  [7:0] io_input_bits_state_8,
  input  [7:0] io_input_bits_state_9,
  input  [7:0] io_input_bits_state_10,
  input  [7:0] io_input_bits_state_11,
  input  [7:0] io_input_bits_state_12,
  input  [7:0] io_input_bits_state_13,
  input  [7:0] io_input_bits_state_14,
  input  [7:0] io_input_bits_state_15,
  input        io_input_bits_control_isIdle,
  input  [1:0] io_input_bits_control_taskID,
  input  [3:0] io_input_bits_control_rounds,
  input  [7:0] io_round_key_0,
  input  [7:0] io_round_key_1,
  input  [7:0] io_round_key_2,
  input  [7:0] io_round_key_3,
  input  [7:0] io_round_key_4,
  input  [7:0] io_round_key_5,
  input  [7:0] io_round_key_6,
  input  [7:0] io_round_key_7,
  input  [7:0] io_round_key_8,
  input  [7:0] io_round_key_9,
  input  [7:0] io_round_key_10,
  input  [7:0] io_round_key_11,
  input  [7:0] io_round_key_12,
  input  [7:0] io_round_key_13,
  input  [7:0] io_round_key_14,
  input  [7:0] io_round_key_15,
  output       io_output_state_valid,
  output [7:0] io_output_state_bits_0,
  output [7:0] io_output_state_bits_1,
  output [7:0] io_output_state_bits_2,
  output [7:0] io_output_state_bits_3,
  output [7:0] io_output_state_bits_4,
  output [7:0] io_output_state_bits_5,
  output [7:0] io_output_state_bits_6,
  output [7:0] io_output_state_bits_7,
  output [7:0] io_output_state_bits_8,
  output [7:0] io_output_state_bits_9,
  output [7:0] io_output_state_bits_10,
  output [7:0] io_output_state_bits_11,
  output [7:0] io_output_state_bits_12,
  output [7:0] io_output_state_bits_13,
  output [7:0] io_output_state_bits_14,
  output [7:0] io_output_state_bits_15,
  output [1:0] io_read_task,
  output [3:0] io_read_round,
  output [1:0] io_complete_taskID
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
`endif // RANDOMIZE_REG_INIT
  wire [7:0] AddRoundKeyModule_io_para_in_state_0; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_in_state_1; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_in_state_2; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_in_state_3; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_in_state_4; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_in_state_5; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_in_state_6; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_in_state_7; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_in_state_8; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_in_state_9; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_in_state_10; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_in_state_11; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_in_state_12; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_in_state_13; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_in_state_14; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_in_state_15; // @[AESDecModule.scala 20:33]
  wire  AddRoundKeyModule_io_para_in_control_isIdle; // @[AESDecModule.scala 20:33]
  wire [1:0] AddRoundKeyModule_io_para_in_control_keylength; // @[AESDecModule.scala 20:33]
  wire [1:0] AddRoundKeyModule_io_para_in_control_taskID; // @[AESDecModule.scala 20:33]
  wire [3:0] AddRoundKeyModule_io_para_in_control_rounds; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_out_state_0; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_out_state_1; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_out_state_2; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_out_state_3; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_out_state_4; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_out_state_5; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_out_state_6; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_out_state_7; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_out_state_8; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_out_state_9; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_out_state_10; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_out_state_11; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_out_state_12; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_out_state_13; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_out_state_14; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_para_out_state_15; // @[AESDecModule.scala 20:33]
  wire  AddRoundKeyModule_io_para_out_control_isIdle; // @[AESDecModule.scala 20:33]
  wire [1:0] AddRoundKeyModule_io_para_out_control_keylength; // @[AESDecModule.scala 20:33]
  wire [1:0] AddRoundKeyModule_io_para_out_control_taskID; // @[AESDecModule.scala 20:33]
  wire [3:0] AddRoundKeyModule_io_para_out_control_rounds; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_roundKey_0; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_roundKey_1; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_roundKey_2; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_roundKey_3; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_roundKey_4; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_roundKey_5; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_roundKey_6; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_roundKey_7; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_roundKey_8; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_roundKey_9; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_roundKey_10; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_roundKey_11; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_roundKey_12; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_roundKey_13; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_roundKey_14; // @[AESDecModule.scala 20:33]
  wire [7:0] AddRoundKeyModule_io_roundKey_15; // @[AESDecModule.scala 20:33]
  wire  InvSubBytesModule_clock; // @[AESDecModule.scala 21:33]
  wire  InvSubBytesModule_reset; // @[AESDecModule.scala 21:33]
  wire [7:0] InvSubBytesModule_io_para_in_state_0; // @[AESDecModule.scala 21:33]
  wire [7:0] InvSubBytesModule_io_para_in_state_1; // @[AESDecModule.scala 21:33]
  wire [7:0] InvSubBytesModule_io_para_in_state_2; // @[AESDecModule.scala 21:33]
  wire [7:0] InvSubBytesModule_io_para_in_state_3; // @[AESDecModule.scala 21:33]
  wire [7:0] InvSubBytesModule_io_para_in_state_4; // @[AESDecModule.scala 21:33]
  wire [7:0] InvSubBytesModule_io_para_in_state_5; // @[AESDecModule.scala 21:33]
  wire [7:0] InvSubBytesModule_io_para_in_state_6; // @[AESDecModule.scala 21:33]
  wire [7:0] InvSubBytesModule_io_para_in_state_7; // @[AESDecModule.scala 21:33]
  wire [7:0] InvSubBytesModule_io_para_in_state_8; // @[AESDecModule.scala 21:33]
  wire [7:0] InvSubBytesModule_io_para_in_state_9; // @[AESDecModule.scala 21:33]
  wire [7:0] InvSubBytesModule_io_para_in_state_10; // @[AESDecModule.scala 21:33]
  wire [7:0] InvSubBytesModule_io_para_in_state_11; // @[AESDecModule.scala 21:33]
  wire [7:0] InvSubBytesModule_io_para_in_state_12; // @[AESDecModule.scala 21:33]
  wire [7:0] InvSubBytesModule_io_para_in_state_13; // @[AESDecModule.scala 21:33]
  wire [7:0] InvSubBytesModule_io_para_in_state_14; // @[AESDecModule.scala 21:33]
  wire [7:0] InvSubBytesModule_io_para_in_state_15; // @[AESDecModule.scala 21:33]
  wire  InvSubBytesModule_io_para_in_control_isIdle; // @[AESDecModule.scala 21:33]
  wire [1:0] InvSubBytesModule_io_para_in_control_keylength; // @[AESDecModule.scala 21:33]
  wire [1:0] InvSubBytesModule_io_para_in_control_taskID; // @[AESDecModule.scala 21:33]
  wire [3:0] InvSubBytesModule_io_para_in_control_rounds; // @[AESDecModule.scala 21:33]
  wire [7:0] InvSubBytesModule_io_para_out_state_0; // @[AESDecModule.scala 21:33]
  wire [7:0] InvSubBytesModule_io_para_out_state_1; // @[AESDecModule.scala 21:33]
  wire [7:0] InvSubBytesModule_io_para_out_state_2; // @[AESDecModule.scala 21:33]
  wire [7:0] InvSubBytesModule_io_para_out_state_3; // @[AESDecModule.scala 21:33]
  wire [7:0] InvSubBytesModule_io_para_out_state_4; // @[AESDecModule.scala 21:33]
  wire [7:0] InvSubBytesModule_io_para_out_state_5; // @[AESDecModule.scala 21:33]
  wire [7:0] InvSubBytesModule_io_para_out_state_6; // @[AESDecModule.scala 21:33]
  wire [7:0] InvSubBytesModule_io_para_out_state_7; // @[AESDecModule.scala 21:33]
  wire [7:0] InvSubBytesModule_io_para_out_state_8; // @[AESDecModule.scala 21:33]
  wire [7:0] InvSubBytesModule_io_para_out_state_9; // @[AESDecModule.scala 21:33]
  wire [7:0] InvSubBytesModule_io_para_out_state_10; // @[AESDecModule.scala 21:33]
  wire [7:0] InvSubBytesModule_io_para_out_state_11; // @[AESDecModule.scala 21:33]
  wire [7:0] InvSubBytesModule_io_para_out_state_12; // @[AESDecModule.scala 21:33]
  wire [7:0] InvSubBytesModule_io_para_out_state_13; // @[AESDecModule.scala 21:33]
  wire [7:0] InvSubBytesModule_io_para_out_state_14; // @[AESDecModule.scala 21:33]
  wire [7:0] InvSubBytesModule_io_para_out_state_15; // @[AESDecModule.scala 21:33]
  wire  InvSubBytesModule_io_para_out_control_isIdle; // @[AESDecModule.scala 21:33]
  wire [1:0] InvSubBytesModule_io_para_out_control_keylength; // @[AESDecModule.scala 21:33]
  wire [1:0] InvSubBytesModule_io_para_out_control_taskID; // @[AESDecModule.scala 21:33]
  wire [3:0] InvSubBytesModule_io_para_out_control_rounds; // @[AESDecModule.scala 21:33]
  wire [7:0] InvShiftRowsModule_io_para_in_state_0; // @[AESDecModule.scala 22:34]
  wire [7:0] InvShiftRowsModule_io_para_in_state_1; // @[AESDecModule.scala 22:34]
  wire [7:0] InvShiftRowsModule_io_para_in_state_2; // @[AESDecModule.scala 22:34]
  wire [7:0] InvShiftRowsModule_io_para_in_state_3; // @[AESDecModule.scala 22:34]
  wire [7:0] InvShiftRowsModule_io_para_in_state_4; // @[AESDecModule.scala 22:34]
  wire [7:0] InvShiftRowsModule_io_para_in_state_5; // @[AESDecModule.scala 22:34]
  wire [7:0] InvShiftRowsModule_io_para_in_state_6; // @[AESDecModule.scala 22:34]
  wire [7:0] InvShiftRowsModule_io_para_in_state_7; // @[AESDecModule.scala 22:34]
  wire [7:0] InvShiftRowsModule_io_para_in_state_8; // @[AESDecModule.scala 22:34]
  wire [7:0] InvShiftRowsModule_io_para_in_state_9; // @[AESDecModule.scala 22:34]
  wire [7:0] InvShiftRowsModule_io_para_in_state_10; // @[AESDecModule.scala 22:34]
  wire [7:0] InvShiftRowsModule_io_para_in_state_11; // @[AESDecModule.scala 22:34]
  wire [7:0] InvShiftRowsModule_io_para_in_state_12; // @[AESDecModule.scala 22:34]
  wire [7:0] InvShiftRowsModule_io_para_in_state_13; // @[AESDecModule.scala 22:34]
  wire [7:0] InvShiftRowsModule_io_para_in_state_14; // @[AESDecModule.scala 22:34]
  wire [7:0] InvShiftRowsModule_io_para_in_state_15; // @[AESDecModule.scala 22:34]
  wire  InvShiftRowsModule_io_para_in_control_isIdle; // @[AESDecModule.scala 22:34]
  wire [1:0] InvShiftRowsModule_io_para_in_control_keylength; // @[AESDecModule.scala 22:34]
  wire [1:0] InvShiftRowsModule_io_para_in_control_taskID; // @[AESDecModule.scala 22:34]
  wire [3:0] InvShiftRowsModule_io_para_in_control_rounds; // @[AESDecModule.scala 22:34]
  wire [7:0] InvShiftRowsModule_io_para_out_state_0; // @[AESDecModule.scala 22:34]
  wire [7:0] InvShiftRowsModule_io_para_out_state_1; // @[AESDecModule.scala 22:34]
  wire [7:0] InvShiftRowsModule_io_para_out_state_2; // @[AESDecModule.scala 22:34]
  wire [7:0] InvShiftRowsModule_io_para_out_state_3; // @[AESDecModule.scala 22:34]
  wire [7:0] InvShiftRowsModule_io_para_out_state_4; // @[AESDecModule.scala 22:34]
  wire [7:0] InvShiftRowsModule_io_para_out_state_5; // @[AESDecModule.scala 22:34]
  wire [7:0] InvShiftRowsModule_io_para_out_state_6; // @[AESDecModule.scala 22:34]
  wire [7:0] InvShiftRowsModule_io_para_out_state_7; // @[AESDecModule.scala 22:34]
  wire [7:0] InvShiftRowsModule_io_para_out_state_8; // @[AESDecModule.scala 22:34]
  wire [7:0] InvShiftRowsModule_io_para_out_state_9; // @[AESDecModule.scala 22:34]
  wire [7:0] InvShiftRowsModule_io_para_out_state_10; // @[AESDecModule.scala 22:34]
  wire [7:0] InvShiftRowsModule_io_para_out_state_11; // @[AESDecModule.scala 22:34]
  wire [7:0] InvShiftRowsModule_io_para_out_state_12; // @[AESDecModule.scala 22:34]
  wire [7:0] InvShiftRowsModule_io_para_out_state_13; // @[AESDecModule.scala 22:34]
  wire [7:0] InvShiftRowsModule_io_para_out_state_14; // @[AESDecModule.scala 22:34]
  wire [7:0] InvShiftRowsModule_io_para_out_state_15; // @[AESDecModule.scala 22:34]
  wire  InvShiftRowsModule_io_para_out_control_isIdle; // @[AESDecModule.scala 22:34]
  wire [1:0] InvShiftRowsModule_io_para_out_control_keylength; // @[AESDecModule.scala 22:34]
  wire [1:0] InvShiftRowsModule_io_para_out_control_taskID; // @[AESDecModule.scala 22:34]
  wire [3:0] InvShiftRowsModule_io_para_out_control_rounds; // @[AESDecModule.scala 22:34]
  wire  InvMixColumnsModule_clock; // @[AESDecModule.scala 23:35]
  wire  InvMixColumnsModule_reset; // @[AESDecModule.scala 23:35]
  wire [7:0] InvMixColumnsModule_io_para_in_state_0; // @[AESDecModule.scala 23:35]
  wire [7:0] InvMixColumnsModule_io_para_in_state_1; // @[AESDecModule.scala 23:35]
  wire [7:0] InvMixColumnsModule_io_para_in_state_2; // @[AESDecModule.scala 23:35]
  wire [7:0] InvMixColumnsModule_io_para_in_state_3; // @[AESDecModule.scala 23:35]
  wire [7:0] InvMixColumnsModule_io_para_in_state_4; // @[AESDecModule.scala 23:35]
  wire [7:0] InvMixColumnsModule_io_para_in_state_5; // @[AESDecModule.scala 23:35]
  wire [7:0] InvMixColumnsModule_io_para_in_state_6; // @[AESDecModule.scala 23:35]
  wire [7:0] InvMixColumnsModule_io_para_in_state_7; // @[AESDecModule.scala 23:35]
  wire [7:0] InvMixColumnsModule_io_para_in_state_8; // @[AESDecModule.scala 23:35]
  wire [7:0] InvMixColumnsModule_io_para_in_state_9; // @[AESDecModule.scala 23:35]
  wire [7:0] InvMixColumnsModule_io_para_in_state_10; // @[AESDecModule.scala 23:35]
  wire [7:0] InvMixColumnsModule_io_para_in_state_11; // @[AESDecModule.scala 23:35]
  wire [7:0] InvMixColumnsModule_io_para_in_state_12; // @[AESDecModule.scala 23:35]
  wire [7:0] InvMixColumnsModule_io_para_in_state_13; // @[AESDecModule.scala 23:35]
  wire [7:0] InvMixColumnsModule_io_para_in_state_14; // @[AESDecModule.scala 23:35]
  wire [7:0] InvMixColumnsModule_io_para_in_state_15; // @[AESDecModule.scala 23:35]
  wire  InvMixColumnsModule_io_para_in_control_isIdle; // @[AESDecModule.scala 23:35]
  wire [1:0] InvMixColumnsModule_io_para_in_control_keylength; // @[AESDecModule.scala 23:35]
  wire [1:0] InvMixColumnsModule_io_para_in_control_taskID; // @[AESDecModule.scala 23:35]
  wire [3:0] InvMixColumnsModule_io_para_in_control_rounds; // @[AESDecModule.scala 23:35]
  wire [7:0] InvMixColumnsModule_io_para_out_state_0; // @[AESDecModule.scala 23:35]
  wire [7:0] InvMixColumnsModule_io_para_out_state_1; // @[AESDecModule.scala 23:35]
  wire [7:0] InvMixColumnsModule_io_para_out_state_2; // @[AESDecModule.scala 23:35]
  wire [7:0] InvMixColumnsModule_io_para_out_state_3; // @[AESDecModule.scala 23:35]
  wire [7:0] InvMixColumnsModule_io_para_out_state_4; // @[AESDecModule.scala 23:35]
  wire [7:0] InvMixColumnsModule_io_para_out_state_5; // @[AESDecModule.scala 23:35]
  wire [7:0] InvMixColumnsModule_io_para_out_state_6; // @[AESDecModule.scala 23:35]
  wire [7:0] InvMixColumnsModule_io_para_out_state_7; // @[AESDecModule.scala 23:35]
  wire [7:0] InvMixColumnsModule_io_para_out_state_8; // @[AESDecModule.scala 23:35]
  wire [7:0] InvMixColumnsModule_io_para_out_state_9; // @[AESDecModule.scala 23:35]
  wire [7:0] InvMixColumnsModule_io_para_out_state_10; // @[AESDecModule.scala 23:35]
  wire [7:0] InvMixColumnsModule_io_para_out_state_11; // @[AESDecModule.scala 23:35]
  wire [7:0] InvMixColumnsModule_io_para_out_state_12; // @[AESDecModule.scala 23:35]
  wire [7:0] InvMixColumnsModule_io_para_out_state_13; // @[AESDecModule.scala 23:35]
  wire [7:0] InvMixColumnsModule_io_para_out_state_14; // @[AESDecModule.scala 23:35]
  wire [7:0] InvMixColumnsModule_io_para_out_state_15; // @[AESDecModule.scala 23:35]
  wire  InvMixColumnsModule_io_para_out_control_isIdle; // @[AESDecModule.scala 23:35]
  wire [1:0] InvMixColumnsModule_io_para_out_control_keylength; // @[AESDecModule.scala 23:35]
  wire [1:0] InvMixColumnsModule_io_para_out_control_taskID; // @[AESDecModule.scala 23:35]
  wire [3:0] InvMixColumnsModule_io_para_out_control_rounds; // @[AESDecModule.scala 23:35]
  reg [7:0] Buffer_state_0; // @[AESDecModule.scala 25:23]
  reg [7:0] Buffer_state_1; // @[AESDecModule.scala 25:23]
  reg [7:0] Buffer_state_2; // @[AESDecModule.scala 25:23]
  reg [7:0] Buffer_state_3; // @[AESDecModule.scala 25:23]
  reg [7:0] Buffer_state_4; // @[AESDecModule.scala 25:23]
  reg [7:0] Buffer_state_5; // @[AESDecModule.scala 25:23]
  reg [7:0] Buffer_state_6; // @[AESDecModule.scala 25:23]
  reg [7:0] Buffer_state_7; // @[AESDecModule.scala 25:23]
  reg [7:0] Buffer_state_8; // @[AESDecModule.scala 25:23]
  reg [7:0] Buffer_state_9; // @[AESDecModule.scala 25:23]
  reg [7:0] Buffer_state_10; // @[AESDecModule.scala 25:23]
  reg [7:0] Buffer_state_11; // @[AESDecModule.scala 25:23]
  reg [7:0] Buffer_state_12; // @[AESDecModule.scala 25:23]
  reg [7:0] Buffer_state_13; // @[AESDecModule.scala 25:23]
  reg [7:0] Buffer_state_14; // @[AESDecModule.scala 25:23]
  reg [7:0] Buffer_state_15; // @[AESDecModule.scala 25:23]
  reg  Buffer_control_isIdle; // @[AESDecModule.scala 25:23]
  reg [1:0] Buffer_control_keylength; // @[AESDecModule.scala 25:23]
  reg [1:0] Buffer_control_taskID; // @[AESDecModule.scala 25:23]
  reg [3:0] Buffer_control_rounds; // @[AESDecModule.scala 25:23]
  reg [7:0] InputDelay_state_0; // @[AESDecModule.scala 26:27]
  reg [7:0] InputDelay_state_1; // @[AESDecModule.scala 26:27]
  reg [7:0] InputDelay_state_2; // @[AESDecModule.scala 26:27]
  reg [7:0] InputDelay_state_3; // @[AESDecModule.scala 26:27]
  reg [7:0] InputDelay_state_4; // @[AESDecModule.scala 26:27]
  reg [7:0] InputDelay_state_5; // @[AESDecModule.scala 26:27]
  reg [7:0] InputDelay_state_6; // @[AESDecModule.scala 26:27]
  reg [7:0] InputDelay_state_7; // @[AESDecModule.scala 26:27]
  reg [7:0] InputDelay_state_8; // @[AESDecModule.scala 26:27]
  reg [7:0] InputDelay_state_9; // @[AESDecModule.scala 26:27]
  reg [7:0] InputDelay_state_10; // @[AESDecModule.scala 26:27]
  reg [7:0] InputDelay_state_11; // @[AESDecModule.scala 26:27]
  reg [7:0] InputDelay_state_12; // @[AESDecModule.scala 26:27]
  reg [7:0] InputDelay_state_13; // @[AESDecModule.scala 26:27]
  reg [7:0] InputDelay_state_14; // @[AESDecModule.scala 26:27]
  reg [7:0] InputDelay_state_15; // @[AESDecModule.scala 26:27]
  reg  InputDelay_control_isIdle; // @[AESDecModule.scala 26:27]
  reg [1:0] InputDelay_control_taskID; // @[AESDecModule.scala 26:27]
  reg [3:0] InputDelay_control_rounds; // @[AESDecModule.scala 26:27]
  reg  ControlBuffer_REG_isIdle; // @[Util.scala 33:14]
  reg [1:0] ControlBuffer_REG_taskID; // @[Util.scala 33:14]
  reg [3:0] ControlBuffer_REG_rounds; // @[Util.scala 33:14]
  reg  ControlBuffer_isIdle; // @[Util.scala 35:14]
  reg [1:0] ControlBuffer_taskID; // @[Util.scala 35:14]
  reg [3:0] ControlBuffer_rounds; // @[Util.scala 35:14]
  wire [3:0] RoundSubsOne_control_rounds = AddRoundKeyModule_io_para_out_control_rounds - 4'h1; // @[AESDecModule.scala 35:79]
  wire  _TmpValue_T = AddRoundKeyModule_io_para_out_control_rounds == 4'h0; // @[AESDecModule.scala 32:49]
  wire [7:0] RoundSubsOne_state_0 = AddRoundKeyModule_io_para_out_state_0; // @[AESDecModule.scala 18:26 34:16]
  wire [7:0] _TmpValue_T_1_state_0 = _TmpValue_T ? 8'h0 : RoundSubsOne_state_0; // @[AESDecModule.scala 38:33]
  wire [7:0] RoundSubsOne_state_1 = AddRoundKeyModule_io_para_out_state_1; // @[AESDecModule.scala 18:26 34:16]
  wire [7:0] _TmpValue_T_1_state_1 = _TmpValue_T ? 8'h0 : RoundSubsOne_state_1; // @[AESDecModule.scala 38:33]
  wire [7:0] RoundSubsOne_state_2 = AddRoundKeyModule_io_para_out_state_2; // @[AESDecModule.scala 18:26 34:16]
  wire [7:0] _TmpValue_T_1_state_2 = _TmpValue_T ? 8'h0 : RoundSubsOne_state_2; // @[AESDecModule.scala 38:33]
  wire [7:0] RoundSubsOne_state_3 = AddRoundKeyModule_io_para_out_state_3; // @[AESDecModule.scala 18:26 34:16]
  wire [7:0] _TmpValue_T_1_state_3 = _TmpValue_T ? 8'h0 : RoundSubsOne_state_3; // @[AESDecModule.scala 38:33]
  wire [7:0] RoundSubsOne_state_4 = AddRoundKeyModule_io_para_out_state_4; // @[AESDecModule.scala 18:26 34:16]
  wire [7:0] _TmpValue_T_1_state_4 = _TmpValue_T ? 8'h0 : RoundSubsOne_state_4; // @[AESDecModule.scala 38:33]
  wire [7:0] RoundSubsOne_state_5 = AddRoundKeyModule_io_para_out_state_5; // @[AESDecModule.scala 18:26 34:16]
  wire [7:0] _TmpValue_T_1_state_5 = _TmpValue_T ? 8'h0 : RoundSubsOne_state_5; // @[AESDecModule.scala 38:33]
  wire [7:0] RoundSubsOne_state_6 = AddRoundKeyModule_io_para_out_state_6; // @[AESDecModule.scala 18:26 34:16]
  wire [7:0] _TmpValue_T_1_state_6 = _TmpValue_T ? 8'h0 : RoundSubsOne_state_6; // @[AESDecModule.scala 38:33]
  wire [7:0] RoundSubsOne_state_7 = AddRoundKeyModule_io_para_out_state_7; // @[AESDecModule.scala 18:26 34:16]
  wire [7:0] _TmpValue_T_1_state_7 = _TmpValue_T ? 8'h0 : RoundSubsOne_state_7; // @[AESDecModule.scala 38:33]
  wire [7:0] RoundSubsOne_state_8 = AddRoundKeyModule_io_para_out_state_8; // @[AESDecModule.scala 18:26 34:16]
  wire [7:0] _TmpValue_T_1_state_8 = _TmpValue_T ? 8'h0 : RoundSubsOne_state_8; // @[AESDecModule.scala 38:33]
  wire [7:0] RoundSubsOne_state_9 = AddRoundKeyModule_io_para_out_state_9; // @[AESDecModule.scala 18:26 34:16]
  wire [7:0] _TmpValue_T_1_state_9 = _TmpValue_T ? 8'h0 : RoundSubsOne_state_9; // @[AESDecModule.scala 38:33]
  wire [7:0] RoundSubsOne_state_10 = AddRoundKeyModule_io_para_out_state_10; // @[AESDecModule.scala 18:26 34:16]
  wire [7:0] _TmpValue_T_1_state_10 = _TmpValue_T ? 8'h0 : RoundSubsOne_state_10; // @[AESDecModule.scala 38:33]
  wire [7:0] RoundSubsOne_state_11 = AddRoundKeyModule_io_para_out_state_11; // @[AESDecModule.scala 18:26 34:16]
  wire [7:0] _TmpValue_T_1_state_11 = _TmpValue_T ? 8'h0 : RoundSubsOne_state_11; // @[AESDecModule.scala 38:33]
  wire [7:0] RoundSubsOne_state_12 = AddRoundKeyModule_io_para_out_state_12; // @[AESDecModule.scala 18:26 34:16]
  wire [7:0] _TmpValue_T_1_state_12 = _TmpValue_T ? 8'h0 : RoundSubsOne_state_12; // @[AESDecModule.scala 38:33]
  wire [7:0] RoundSubsOne_state_13 = AddRoundKeyModule_io_para_out_state_13; // @[AESDecModule.scala 18:26 34:16]
  wire [7:0] _TmpValue_T_1_state_13 = _TmpValue_T ? 8'h0 : RoundSubsOne_state_13; // @[AESDecModule.scala 38:33]
  wire [7:0] RoundSubsOne_state_14 = AddRoundKeyModule_io_para_out_state_14; // @[AESDecModule.scala 18:26 34:16]
  wire [7:0] _TmpValue_T_1_state_14 = _TmpValue_T ? 8'h0 : RoundSubsOne_state_14; // @[AESDecModule.scala 38:33]
  wire [7:0] RoundSubsOne_state_15 = AddRoundKeyModule_io_para_out_state_15; // @[AESDecModule.scala 18:26 34:16]
  wire [7:0] _TmpValue_T_1_state_15 = _TmpValue_T ? 8'h0 : RoundSubsOne_state_15; // @[AESDecModule.scala 38:33]
  wire  RoundSubsOne_control_isIdle = AddRoundKeyModule_io_para_out_control_isIdle; // @[AESDecModule.scala 18:26 34:16]
  wire  _TmpValue_T_1_control_isIdle = _TmpValue_T | RoundSubsOne_control_isIdle; // @[AESDecModule.scala 38:33]
  wire [1:0] RoundSubsOne_control_keylength = AddRoundKeyModule_io_para_out_control_keylength; // @[AESDecModule.scala 18:26 34:16]
  wire [1:0] _TmpValue_T_1_control_keylength = _TmpValue_T ? 2'h0 : RoundSubsOne_control_keylength; // @[AESDecModule.scala 38:33]
  wire [1:0] RoundSubsOne_control_taskID = AddRoundKeyModule_io_para_out_control_taskID; // @[AESDecModule.scala 18:26 34:16]
  wire [1:0] _TmpValue_T_1_control_taskID = _TmpValue_T ? 2'h0 : RoundSubsOne_control_taskID; // @[AESDecModule.scala 38:33]
  wire [3:0] _TmpValue_T_1_control_rounds = _TmpValue_T ? 4'ha : RoundSubsOne_control_rounds; // @[AESDecModule.scala 38:33]
  wire  TmpValue_control_isIdle = AddRoundKeyModule_io_para_out_control_isIdle | _TmpValue_T_1_control_isIdle; // @[AESDecModule.scala 37:18]
  wire [3:0] _InvShiftRowsModule_io_para_in_T_1 = Buffer_control_rounds - 4'h9; // @[AESDecModule.scala 31:67]
  wire [3:0] _InvShiftRowsModule_io_para_in_T_2 = _InvShiftRowsModule_io_para_in_T_1 / 2'h2; // @[AESDecModule.scala 31:74]
  wire [3:0] _GEN_23 = {{2'd0}, Buffer_control_keylength}; // @[AESDecModule.scala 31:80]
  wire  _InvShiftRowsModule_io_para_in_T_3 = _InvShiftRowsModule_io_para_in_T_2 == _GEN_23; // @[AESDecModule.scala 31:80]
  wire  _T = io_input_ready & io_input_valid; // @[Decoupled.scala 50:35]
  reg  r; // @[Reg.scala 16:16]
  AddRoundKey AddRoundKeyModule ( // @[AESDecModule.scala 20:33]
    .io_para_in_state_0(AddRoundKeyModule_io_para_in_state_0),
    .io_para_in_state_1(AddRoundKeyModule_io_para_in_state_1),
    .io_para_in_state_2(AddRoundKeyModule_io_para_in_state_2),
    .io_para_in_state_3(AddRoundKeyModule_io_para_in_state_3),
    .io_para_in_state_4(AddRoundKeyModule_io_para_in_state_4),
    .io_para_in_state_5(AddRoundKeyModule_io_para_in_state_5),
    .io_para_in_state_6(AddRoundKeyModule_io_para_in_state_6),
    .io_para_in_state_7(AddRoundKeyModule_io_para_in_state_7),
    .io_para_in_state_8(AddRoundKeyModule_io_para_in_state_8),
    .io_para_in_state_9(AddRoundKeyModule_io_para_in_state_9),
    .io_para_in_state_10(AddRoundKeyModule_io_para_in_state_10),
    .io_para_in_state_11(AddRoundKeyModule_io_para_in_state_11),
    .io_para_in_state_12(AddRoundKeyModule_io_para_in_state_12),
    .io_para_in_state_13(AddRoundKeyModule_io_para_in_state_13),
    .io_para_in_state_14(AddRoundKeyModule_io_para_in_state_14),
    .io_para_in_state_15(AddRoundKeyModule_io_para_in_state_15),
    .io_para_in_control_isIdle(AddRoundKeyModule_io_para_in_control_isIdle),
    .io_para_in_control_keylength(AddRoundKeyModule_io_para_in_control_keylength),
    .io_para_in_control_taskID(AddRoundKeyModule_io_para_in_control_taskID),
    .io_para_in_control_rounds(AddRoundKeyModule_io_para_in_control_rounds),
    .io_para_out_state_0(AddRoundKeyModule_io_para_out_state_0),
    .io_para_out_state_1(AddRoundKeyModule_io_para_out_state_1),
    .io_para_out_state_2(AddRoundKeyModule_io_para_out_state_2),
    .io_para_out_state_3(AddRoundKeyModule_io_para_out_state_3),
    .io_para_out_state_4(AddRoundKeyModule_io_para_out_state_4),
    .io_para_out_state_5(AddRoundKeyModule_io_para_out_state_5),
    .io_para_out_state_6(AddRoundKeyModule_io_para_out_state_6),
    .io_para_out_state_7(AddRoundKeyModule_io_para_out_state_7),
    .io_para_out_state_8(AddRoundKeyModule_io_para_out_state_8),
    .io_para_out_state_9(AddRoundKeyModule_io_para_out_state_9),
    .io_para_out_state_10(AddRoundKeyModule_io_para_out_state_10),
    .io_para_out_state_11(AddRoundKeyModule_io_para_out_state_11),
    .io_para_out_state_12(AddRoundKeyModule_io_para_out_state_12),
    .io_para_out_state_13(AddRoundKeyModule_io_para_out_state_13),
    .io_para_out_state_14(AddRoundKeyModule_io_para_out_state_14),
    .io_para_out_state_15(AddRoundKeyModule_io_para_out_state_15),
    .io_para_out_control_isIdle(AddRoundKeyModule_io_para_out_control_isIdle),
    .io_para_out_control_keylength(AddRoundKeyModule_io_para_out_control_keylength),
    .io_para_out_control_taskID(AddRoundKeyModule_io_para_out_control_taskID),
    .io_para_out_control_rounds(AddRoundKeyModule_io_para_out_control_rounds),
    .io_roundKey_0(AddRoundKeyModule_io_roundKey_0),
    .io_roundKey_1(AddRoundKeyModule_io_roundKey_1),
    .io_roundKey_2(AddRoundKeyModule_io_roundKey_2),
    .io_roundKey_3(AddRoundKeyModule_io_roundKey_3),
    .io_roundKey_4(AddRoundKeyModule_io_roundKey_4),
    .io_roundKey_5(AddRoundKeyModule_io_roundKey_5),
    .io_roundKey_6(AddRoundKeyModule_io_roundKey_6),
    .io_roundKey_7(AddRoundKeyModule_io_roundKey_7),
    .io_roundKey_8(AddRoundKeyModule_io_roundKey_8),
    .io_roundKey_9(AddRoundKeyModule_io_roundKey_9),
    .io_roundKey_10(AddRoundKeyModule_io_roundKey_10),
    .io_roundKey_11(AddRoundKeyModule_io_roundKey_11),
    .io_roundKey_12(AddRoundKeyModule_io_roundKey_12),
    .io_roundKey_13(AddRoundKeyModule_io_roundKey_13),
    .io_roundKey_14(AddRoundKeyModule_io_roundKey_14),
    .io_roundKey_15(AddRoundKeyModule_io_roundKey_15)
  );
  SubBytes_3 InvSubBytesModule ( // @[AESDecModule.scala 21:33]
    .clock(InvSubBytesModule_clock),
    .reset(InvSubBytesModule_reset),
    .io_para_in_state_0(InvSubBytesModule_io_para_in_state_0),
    .io_para_in_state_1(InvSubBytesModule_io_para_in_state_1),
    .io_para_in_state_2(InvSubBytesModule_io_para_in_state_2),
    .io_para_in_state_3(InvSubBytesModule_io_para_in_state_3),
    .io_para_in_state_4(InvSubBytesModule_io_para_in_state_4),
    .io_para_in_state_5(InvSubBytesModule_io_para_in_state_5),
    .io_para_in_state_6(InvSubBytesModule_io_para_in_state_6),
    .io_para_in_state_7(InvSubBytesModule_io_para_in_state_7),
    .io_para_in_state_8(InvSubBytesModule_io_para_in_state_8),
    .io_para_in_state_9(InvSubBytesModule_io_para_in_state_9),
    .io_para_in_state_10(InvSubBytesModule_io_para_in_state_10),
    .io_para_in_state_11(InvSubBytesModule_io_para_in_state_11),
    .io_para_in_state_12(InvSubBytesModule_io_para_in_state_12),
    .io_para_in_state_13(InvSubBytesModule_io_para_in_state_13),
    .io_para_in_state_14(InvSubBytesModule_io_para_in_state_14),
    .io_para_in_state_15(InvSubBytesModule_io_para_in_state_15),
    .io_para_in_control_isIdle(InvSubBytesModule_io_para_in_control_isIdle),
    .io_para_in_control_keylength(InvSubBytesModule_io_para_in_control_keylength),
    .io_para_in_control_taskID(InvSubBytesModule_io_para_in_control_taskID),
    .io_para_in_control_rounds(InvSubBytesModule_io_para_in_control_rounds),
    .io_para_out_state_0(InvSubBytesModule_io_para_out_state_0),
    .io_para_out_state_1(InvSubBytesModule_io_para_out_state_1),
    .io_para_out_state_2(InvSubBytesModule_io_para_out_state_2),
    .io_para_out_state_3(InvSubBytesModule_io_para_out_state_3),
    .io_para_out_state_4(InvSubBytesModule_io_para_out_state_4),
    .io_para_out_state_5(InvSubBytesModule_io_para_out_state_5),
    .io_para_out_state_6(InvSubBytesModule_io_para_out_state_6),
    .io_para_out_state_7(InvSubBytesModule_io_para_out_state_7),
    .io_para_out_state_8(InvSubBytesModule_io_para_out_state_8),
    .io_para_out_state_9(InvSubBytesModule_io_para_out_state_9),
    .io_para_out_state_10(InvSubBytesModule_io_para_out_state_10),
    .io_para_out_state_11(InvSubBytesModule_io_para_out_state_11),
    .io_para_out_state_12(InvSubBytesModule_io_para_out_state_12),
    .io_para_out_state_13(InvSubBytesModule_io_para_out_state_13),
    .io_para_out_state_14(InvSubBytesModule_io_para_out_state_14),
    .io_para_out_state_15(InvSubBytesModule_io_para_out_state_15),
    .io_para_out_control_isIdle(InvSubBytesModule_io_para_out_control_isIdle),
    .io_para_out_control_keylength(InvSubBytesModule_io_para_out_control_keylength),
    .io_para_out_control_taskID(InvSubBytesModule_io_para_out_control_taskID),
    .io_para_out_control_rounds(InvSubBytesModule_io_para_out_control_rounds)
  );
  ShiftRows_3 InvShiftRowsModule ( // @[AESDecModule.scala 22:34]
    .io_para_in_state_0(InvShiftRowsModule_io_para_in_state_0),
    .io_para_in_state_1(InvShiftRowsModule_io_para_in_state_1),
    .io_para_in_state_2(InvShiftRowsModule_io_para_in_state_2),
    .io_para_in_state_3(InvShiftRowsModule_io_para_in_state_3),
    .io_para_in_state_4(InvShiftRowsModule_io_para_in_state_4),
    .io_para_in_state_5(InvShiftRowsModule_io_para_in_state_5),
    .io_para_in_state_6(InvShiftRowsModule_io_para_in_state_6),
    .io_para_in_state_7(InvShiftRowsModule_io_para_in_state_7),
    .io_para_in_state_8(InvShiftRowsModule_io_para_in_state_8),
    .io_para_in_state_9(InvShiftRowsModule_io_para_in_state_9),
    .io_para_in_state_10(InvShiftRowsModule_io_para_in_state_10),
    .io_para_in_state_11(InvShiftRowsModule_io_para_in_state_11),
    .io_para_in_state_12(InvShiftRowsModule_io_para_in_state_12),
    .io_para_in_state_13(InvShiftRowsModule_io_para_in_state_13),
    .io_para_in_state_14(InvShiftRowsModule_io_para_in_state_14),
    .io_para_in_state_15(InvShiftRowsModule_io_para_in_state_15),
    .io_para_in_control_isIdle(InvShiftRowsModule_io_para_in_control_isIdle),
    .io_para_in_control_keylength(InvShiftRowsModule_io_para_in_control_keylength),
    .io_para_in_control_taskID(InvShiftRowsModule_io_para_in_control_taskID),
    .io_para_in_control_rounds(InvShiftRowsModule_io_para_in_control_rounds),
    .io_para_out_state_0(InvShiftRowsModule_io_para_out_state_0),
    .io_para_out_state_1(InvShiftRowsModule_io_para_out_state_1),
    .io_para_out_state_2(InvShiftRowsModule_io_para_out_state_2),
    .io_para_out_state_3(InvShiftRowsModule_io_para_out_state_3),
    .io_para_out_state_4(InvShiftRowsModule_io_para_out_state_4),
    .io_para_out_state_5(InvShiftRowsModule_io_para_out_state_5),
    .io_para_out_state_6(InvShiftRowsModule_io_para_out_state_6),
    .io_para_out_state_7(InvShiftRowsModule_io_para_out_state_7),
    .io_para_out_state_8(InvShiftRowsModule_io_para_out_state_8),
    .io_para_out_state_9(InvShiftRowsModule_io_para_out_state_9),
    .io_para_out_state_10(InvShiftRowsModule_io_para_out_state_10),
    .io_para_out_state_11(InvShiftRowsModule_io_para_out_state_11),
    .io_para_out_state_12(InvShiftRowsModule_io_para_out_state_12),
    .io_para_out_state_13(InvShiftRowsModule_io_para_out_state_13),
    .io_para_out_state_14(InvShiftRowsModule_io_para_out_state_14),
    .io_para_out_state_15(InvShiftRowsModule_io_para_out_state_15),
    .io_para_out_control_isIdle(InvShiftRowsModule_io_para_out_control_isIdle),
    .io_para_out_control_keylength(InvShiftRowsModule_io_para_out_control_keylength),
    .io_para_out_control_taskID(InvShiftRowsModule_io_para_out_control_taskID),
    .io_para_out_control_rounds(InvShiftRowsModule_io_para_out_control_rounds)
  );
  MixColumns_3 InvMixColumnsModule ( // @[AESDecModule.scala 23:35]
    .clock(InvMixColumnsModule_clock),
    .reset(InvMixColumnsModule_reset),
    .io_para_in_state_0(InvMixColumnsModule_io_para_in_state_0),
    .io_para_in_state_1(InvMixColumnsModule_io_para_in_state_1),
    .io_para_in_state_2(InvMixColumnsModule_io_para_in_state_2),
    .io_para_in_state_3(InvMixColumnsModule_io_para_in_state_3),
    .io_para_in_state_4(InvMixColumnsModule_io_para_in_state_4),
    .io_para_in_state_5(InvMixColumnsModule_io_para_in_state_5),
    .io_para_in_state_6(InvMixColumnsModule_io_para_in_state_6),
    .io_para_in_state_7(InvMixColumnsModule_io_para_in_state_7),
    .io_para_in_state_8(InvMixColumnsModule_io_para_in_state_8),
    .io_para_in_state_9(InvMixColumnsModule_io_para_in_state_9),
    .io_para_in_state_10(InvMixColumnsModule_io_para_in_state_10),
    .io_para_in_state_11(InvMixColumnsModule_io_para_in_state_11),
    .io_para_in_state_12(InvMixColumnsModule_io_para_in_state_12),
    .io_para_in_state_13(InvMixColumnsModule_io_para_in_state_13),
    .io_para_in_state_14(InvMixColumnsModule_io_para_in_state_14),
    .io_para_in_state_15(InvMixColumnsModule_io_para_in_state_15),
    .io_para_in_control_isIdle(InvMixColumnsModule_io_para_in_control_isIdle),
    .io_para_in_control_keylength(InvMixColumnsModule_io_para_in_control_keylength),
    .io_para_in_control_taskID(InvMixColumnsModule_io_para_in_control_taskID),
    .io_para_in_control_rounds(InvMixColumnsModule_io_para_in_control_rounds),
    .io_para_out_state_0(InvMixColumnsModule_io_para_out_state_0),
    .io_para_out_state_1(InvMixColumnsModule_io_para_out_state_1),
    .io_para_out_state_2(InvMixColumnsModule_io_para_out_state_2),
    .io_para_out_state_3(InvMixColumnsModule_io_para_out_state_3),
    .io_para_out_state_4(InvMixColumnsModule_io_para_out_state_4),
    .io_para_out_state_5(InvMixColumnsModule_io_para_out_state_5),
    .io_para_out_state_6(InvMixColumnsModule_io_para_out_state_6),
    .io_para_out_state_7(InvMixColumnsModule_io_para_out_state_7),
    .io_para_out_state_8(InvMixColumnsModule_io_para_out_state_8),
    .io_para_out_state_9(InvMixColumnsModule_io_para_out_state_9),
    .io_para_out_state_10(InvMixColumnsModule_io_para_out_state_10),
    .io_para_out_state_11(InvMixColumnsModule_io_para_out_state_11),
    .io_para_out_state_12(InvMixColumnsModule_io_para_out_state_12),
    .io_para_out_state_13(InvMixColumnsModule_io_para_out_state_13),
    .io_para_out_state_14(InvMixColumnsModule_io_para_out_state_14),
    .io_para_out_state_15(InvMixColumnsModule_io_para_out_state_15),
    .io_para_out_control_isIdle(InvMixColumnsModule_io_para_out_control_isIdle),
    .io_para_out_control_keylength(InvMixColumnsModule_io_para_out_control_keylength),
    .io_para_out_control_taskID(InvMixColumnsModule_io_para_out_control_taskID),
    .io_para_out_control_rounds(InvMixColumnsModule_io_para_out_control_rounds)
  );
  assign io_input_ready = ControlBuffer_isIdle; // @[AESDecModule.scala 67:18]
  assign io_output_state_valid = AddRoundKeyModule_io_para_out_control_rounds == 4'h0; // @[AESDecModule.scala 32:49]
  assign io_output_state_bits_0 = AddRoundKeyModule_io_para_out_state_0; // @[AESDecModule.scala 64:24]
  assign io_output_state_bits_1 = AddRoundKeyModule_io_para_out_state_1; // @[AESDecModule.scala 64:24]
  assign io_output_state_bits_2 = AddRoundKeyModule_io_para_out_state_2; // @[AESDecModule.scala 64:24]
  assign io_output_state_bits_3 = AddRoundKeyModule_io_para_out_state_3; // @[AESDecModule.scala 64:24]
  assign io_output_state_bits_4 = AddRoundKeyModule_io_para_out_state_4; // @[AESDecModule.scala 64:24]
  assign io_output_state_bits_5 = AddRoundKeyModule_io_para_out_state_5; // @[AESDecModule.scala 64:24]
  assign io_output_state_bits_6 = AddRoundKeyModule_io_para_out_state_6; // @[AESDecModule.scala 64:24]
  assign io_output_state_bits_7 = AddRoundKeyModule_io_para_out_state_7; // @[AESDecModule.scala 64:24]
  assign io_output_state_bits_8 = AddRoundKeyModule_io_para_out_state_8; // @[AESDecModule.scala 64:24]
  assign io_output_state_bits_9 = AddRoundKeyModule_io_para_out_state_9; // @[AESDecModule.scala 64:24]
  assign io_output_state_bits_10 = AddRoundKeyModule_io_para_out_state_10; // @[AESDecModule.scala 64:24]
  assign io_output_state_bits_11 = AddRoundKeyModule_io_para_out_state_11; // @[AESDecModule.scala 64:24]
  assign io_output_state_bits_12 = AddRoundKeyModule_io_para_out_state_12; // @[AESDecModule.scala 64:24]
  assign io_output_state_bits_13 = AddRoundKeyModule_io_para_out_state_13; // @[AESDecModule.scala 64:24]
  assign io_output_state_bits_14 = AddRoundKeyModule_io_para_out_state_14; // @[AESDecModule.scala 64:24]
  assign io_output_state_bits_15 = AddRoundKeyModule_io_para_out_state_15; // @[AESDecModule.scala 64:24]
  assign io_read_task = _T ? io_input_bits_control_taskID : ControlBuffer_taskID; // @[AESDecModule.scala 48:23 49:18 52:18]
  assign io_read_round = _T ? io_input_bits_control_rounds : ControlBuffer_rounds; // @[AESDecModule.scala 48:23 50:19 53:19]
  assign io_complete_taskID = AddRoundKeyModule_io_para_out_control_taskID; // @[AESDecModule.scala 66:22]
  assign AddRoundKeyModule_io_para_in_state_0 = r ? InputDelay_state_0 : InvSubBytesModule_io_para_out_state_0; // @[AESDecModule.scala 56:41 57:34 59:34]
  assign AddRoundKeyModule_io_para_in_state_1 = r ? InputDelay_state_1 : InvSubBytesModule_io_para_out_state_1; // @[AESDecModule.scala 56:41 57:34 59:34]
  assign AddRoundKeyModule_io_para_in_state_2 = r ? InputDelay_state_2 : InvSubBytesModule_io_para_out_state_2; // @[AESDecModule.scala 56:41 57:34 59:34]
  assign AddRoundKeyModule_io_para_in_state_3 = r ? InputDelay_state_3 : InvSubBytesModule_io_para_out_state_3; // @[AESDecModule.scala 56:41 57:34 59:34]
  assign AddRoundKeyModule_io_para_in_state_4 = r ? InputDelay_state_4 : InvSubBytesModule_io_para_out_state_4; // @[AESDecModule.scala 56:41 57:34 59:34]
  assign AddRoundKeyModule_io_para_in_state_5 = r ? InputDelay_state_5 : InvSubBytesModule_io_para_out_state_5; // @[AESDecModule.scala 56:41 57:34 59:34]
  assign AddRoundKeyModule_io_para_in_state_6 = r ? InputDelay_state_6 : InvSubBytesModule_io_para_out_state_6; // @[AESDecModule.scala 56:41 57:34 59:34]
  assign AddRoundKeyModule_io_para_in_state_7 = r ? InputDelay_state_7 : InvSubBytesModule_io_para_out_state_7; // @[AESDecModule.scala 56:41 57:34 59:34]
  assign AddRoundKeyModule_io_para_in_state_8 = r ? InputDelay_state_8 : InvSubBytesModule_io_para_out_state_8; // @[AESDecModule.scala 56:41 57:34 59:34]
  assign AddRoundKeyModule_io_para_in_state_9 = r ? InputDelay_state_9 : InvSubBytesModule_io_para_out_state_9; // @[AESDecModule.scala 56:41 57:34 59:34]
  assign AddRoundKeyModule_io_para_in_state_10 = r ? InputDelay_state_10 : InvSubBytesModule_io_para_out_state_10; // @[AESDecModule.scala 56:41 57:34 59:34]
  assign AddRoundKeyModule_io_para_in_state_11 = r ? InputDelay_state_11 : InvSubBytesModule_io_para_out_state_11; // @[AESDecModule.scala 56:41 57:34 59:34]
  assign AddRoundKeyModule_io_para_in_state_12 = r ? InputDelay_state_12 : InvSubBytesModule_io_para_out_state_12; // @[AESDecModule.scala 56:41 57:34 59:34]
  assign AddRoundKeyModule_io_para_in_state_13 = r ? InputDelay_state_13 : InvSubBytesModule_io_para_out_state_13; // @[AESDecModule.scala 56:41 57:34 59:34]
  assign AddRoundKeyModule_io_para_in_state_14 = r ? InputDelay_state_14 : InvSubBytesModule_io_para_out_state_14; // @[AESDecModule.scala 56:41 57:34 59:34]
  assign AddRoundKeyModule_io_para_in_state_15 = r ? InputDelay_state_15 : InvSubBytesModule_io_para_out_state_15; // @[AESDecModule.scala 56:41 57:34 59:34]
  assign AddRoundKeyModule_io_para_in_control_isIdle = r ? InputDelay_control_isIdle :
    InvSubBytesModule_io_para_out_control_isIdle; // @[AESDecModule.scala 56:41 57:34 59:34]
  assign AddRoundKeyModule_io_para_in_control_keylength = r ? 2'h0 : InvSubBytesModule_io_para_out_control_keylength; // @[AESDecModule.scala 56:41 57:34 59:34]
  assign AddRoundKeyModule_io_para_in_control_taskID = r ? InputDelay_control_taskID :
    InvSubBytesModule_io_para_out_control_taskID; // @[AESDecModule.scala 56:41 57:34 59:34]
  assign AddRoundKeyModule_io_para_in_control_rounds = r ? InputDelay_control_rounds :
    InvSubBytesModule_io_para_out_control_rounds; // @[AESDecModule.scala 56:41 57:34 59:34]
  assign AddRoundKeyModule_io_roundKey_0 = io_round_key_0; // @[AESDecModule.scala 62:33]
  assign AddRoundKeyModule_io_roundKey_1 = io_round_key_1; // @[AESDecModule.scala 62:33]
  assign AddRoundKeyModule_io_roundKey_2 = io_round_key_2; // @[AESDecModule.scala 62:33]
  assign AddRoundKeyModule_io_roundKey_3 = io_round_key_3; // @[AESDecModule.scala 62:33]
  assign AddRoundKeyModule_io_roundKey_4 = io_round_key_4; // @[AESDecModule.scala 62:33]
  assign AddRoundKeyModule_io_roundKey_5 = io_round_key_5; // @[AESDecModule.scala 62:33]
  assign AddRoundKeyModule_io_roundKey_6 = io_round_key_6; // @[AESDecModule.scala 62:33]
  assign AddRoundKeyModule_io_roundKey_7 = io_round_key_7; // @[AESDecModule.scala 62:33]
  assign AddRoundKeyModule_io_roundKey_8 = io_round_key_8; // @[AESDecModule.scala 62:33]
  assign AddRoundKeyModule_io_roundKey_9 = io_round_key_9; // @[AESDecModule.scala 62:33]
  assign AddRoundKeyModule_io_roundKey_10 = io_round_key_10; // @[AESDecModule.scala 62:33]
  assign AddRoundKeyModule_io_roundKey_11 = io_round_key_11; // @[AESDecModule.scala 62:33]
  assign AddRoundKeyModule_io_roundKey_12 = io_round_key_12; // @[AESDecModule.scala 62:33]
  assign AddRoundKeyModule_io_roundKey_13 = io_round_key_13; // @[AESDecModule.scala 62:33]
  assign AddRoundKeyModule_io_roundKey_14 = io_round_key_14; // @[AESDecModule.scala 62:33]
  assign AddRoundKeyModule_io_roundKey_15 = io_round_key_15; // @[AESDecModule.scala 62:33]
  assign InvSubBytesModule_clock = clock;
  assign InvSubBytesModule_reset = reset;
  assign InvSubBytesModule_io_para_in_state_0 = InvShiftRowsModule_io_para_out_state_0; // @[AESDecModule.scala 46:32]
  assign InvSubBytesModule_io_para_in_state_1 = InvShiftRowsModule_io_para_out_state_1; // @[AESDecModule.scala 46:32]
  assign InvSubBytesModule_io_para_in_state_2 = InvShiftRowsModule_io_para_out_state_2; // @[AESDecModule.scala 46:32]
  assign InvSubBytesModule_io_para_in_state_3 = InvShiftRowsModule_io_para_out_state_3; // @[AESDecModule.scala 46:32]
  assign InvSubBytesModule_io_para_in_state_4 = InvShiftRowsModule_io_para_out_state_4; // @[AESDecModule.scala 46:32]
  assign InvSubBytesModule_io_para_in_state_5 = InvShiftRowsModule_io_para_out_state_5; // @[AESDecModule.scala 46:32]
  assign InvSubBytesModule_io_para_in_state_6 = InvShiftRowsModule_io_para_out_state_6; // @[AESDecModule.scala 46:32]
  assign InvSubBytesModule_io_para_in_state_7 = InvShiftRowsModule_io_para_out_state_7; // @[AESDecModule.scala 46:32]
  assign InvSubBytesModule_io_para_in_state_8 = InvShiftRowsModule_io_para_out_state_8; // @[AESDecModule.scala 46:32]
  assign InvSubBytesModule_io_para_in_state_9 = InvShiftRowsModule_io_para_out_state_9; // @[AESDecModule.scala 46:32]
  assign InvSubBytesModule_io_para_in_state_10 = InvShiftRowsModule_io_para_out_state_10; // @[AESDecModule.scala 46:32]
  assign InvSubBytesModule_io_para_in_state_11 = InvShiftRowsModule_io_para_out_state_11; // @[AESDecModule.scala 46:32]
  assign InvSubBytesModule_io_para_in_state_12 = InvShiftRowsModule_io_para_out_state_12; // @[AESDecModule.scala 46:32]
  assign InvSubBytesModule_io_para_in_state_13 = InvShiftRowsModule_io_para_out_state_13; // @[AESDecModule.scala 46:32]
  assign InvSubBytesModule_io_para_in_state_14 = InvShiftRowsModule_io_para_out_state_14; // @[AESDecModule.scala 46:32]
  assign InvSubBytesModule_io_para_in_state_15 = InvShiftRowsModule_io_para_out_state_15; // @[AESDecModule.scala 46:32]
  assign InvSubBytesModule_io_para_in_control_isIdle = InvShiftRowsModule_io_para_out_control_isIdle; // @[AESDecModule.scala 46:32]
  assign InvSubBytesModule_io_para_in_control_keylength = InvShiftRowsModule_io_para_out_control_keylength; // @[AESDecModule.scala 46:32]
  assign InvSubBytesModule_io_para_in_control_taskID = InvShiftRowsModule_io_para_out_control_taskID; // @[AESDecModule.scala 46:32]
  assign InvSubBytesModule_io_para_in_control_rounds = InvShiftRowsModule_io_para_out_control_rounds; // @[AESDecModule.scala 46:32]
  assign InvShiftRowsModule_io_para_in_state_0 = _InvShiftRowsModule_io_para_in_T_3 ? Buffer_state_0 :
    InvMixColumnsModule_io_para_out_state_0; // @[AESDecModule.scala 43:39]
  assign InvShiftRowsModule_io_para_in_state_1 = _InvShiftRowsModule_io_para_in_T_3 ? Buffer_state_1 :
    InvMixColumnsModule_io_para_out_state_1; // @[AESDecModule.scala 43:39]
  assign InvShiftRowsModule_io_para_in_state_2 = _InvShiftRowsModule_io_para_in_T_3 ? Buffer_state_2 :
    InvMixColumnsModule_io_para_out_state_2; // @[AESDecModule.scala 43:39]
  assign InvShiftRowsModule_io_para_in_state_3 = _InvShiftRowsModule_io_para_in_T_3 ? Buffer_state_3 :
    InvMixColumnsModule_io_para_out_state_3; // @[AESDecModule.scala 43:39]
  assign InvShiftRowsModule_io_para_in_state_4 = _InvShiftRowsModule_io_para_in_T_3 ? Buffer_state_4 :
    InvMixColumnsModule_io_para_out_state_4; // @[AESDecModule.scala 43:39]
  assign InvShiftRowsModule_io_para_in_state_5 = _InvShiftRowsModule_io_para_in_T_3 ? Buffer_state_5 :
    InvMixColumnsModule_io_para_out_state_5; // @[AESDecModule.scala 43:39]
  assign InvShiftRowsModule_io_para_in_state_6 = _InvShiftRowsModule_io_para_in_T_3 ? Buffer_state_6 :
    InvMixColumnsModule_io_para_out_state_6; // @[AESDecModule.scala 43:39]
  assign InvShiftRowsModule_io_para_in_state_7 = _InvShiftRowsModule_io_para_in_T_3 ? Buffer_state_7 :
    InvMixColumnsModule_io_para_out_state_7; // @[AESDecModule.scala 43:39]
  assign InvShiftRowsModule_io_para_in_state_8 = _InvShiftRowsModule_io_para_in_T_3 ? Buffer_state_8 :
    InvMixColumnsModule_io_para_out_state_8; // @[AESDecModule.scala 43:39]
  assign InvShiftRowsModule_io_para_in_state_9 = _InvShiftRowsModule_io_para_in_T_3 ? Buffer_state_9 :
    InvMixColumnsModule_io_para_out_state_9; // @[AESDecModule.scala 43:39]
  assign InvShiftRowsModule_io_para_in_state_10 = _InvShiftRowsModule_io_para_in_T_3 ? Buffer_state_10 :
    InvMixColumnsModule_io_para_out_state_10; // @[AESDecModule.scala 43:39]
  assign InvShiftRowsModule_io_para_in_state_11 = _InvShiftRowsModule_io_para_in_T_3 ? Buffer_state_11 :
    InvMixColumnsModule_io_para_out_state_11; // @[AESDecModule.scala 43:39]
  assign InvShiftRowsModule_io_para_in_state_12 = _InvShiftRowsModule_io_para_in_T_3 ? Buffer_state_12 :
    InvMixColumnsModule_io_para_out_state_12; // @[AESDecModule.scala 43:39]
  assign InvShiftRowsModule_io_para_in_state_13 = _InvShiftRowsModule_io_para_in_T_3 ? Buffer_state_13 :
    InvMixColumnsModule_io_para_out_state_13; // @[AESDecModule.scala 43:39]
  assign InvShiftRowsModule_io_para_in_state_14 = _InvShiftRowsModule_io_para_in_T_3 ? Buffer_state_14 :
    InvMixColumnsModule_io_para_out_state_14; // @[AESDecModule.scala 43:39]
  assign InvShiftRowsModule_io_para_in_state_15 = _InvShiftRowsModule_io_para_in_T_3 ? Buffer_state_15 :
    InvMixColumnsModule_io_para_out_state_15; // @[AESDecModule.scala 43:39]
  assign InvShiftRowsModule_io_para_in_control_isIdle = _InvShiftRowsModule_io_para_in_T_3 ? Buffer_control_isIdle :
    InvMixColumnsModule_io_para_out_control_isIdle; // @[AESDecModule.scala 43:39]
  assign InvShiftRowsModule_io_para_in_control_keylength = _InvShiftRowsModule_io_para_in_T_3 ? Buffer_control_keylength
     : InvMixColumnsModule_io_para_out_control_keylength; // @[AESDecModule.scala 43:39]
  assign InvShiftRowsModule_io_para_in_control_taskID = _InvShiftRowsModule_io_para_in_T_3 ? Buffer_control_taskID :
    InvMixColumnsModule_io_para_out_control_taskID; // @[AESDecModule.scala 43:39]
  assign InvShiftRowsModule_io_para_in_control_rounds = _InvShiftRowsModule_io_para_in_T_3 ? Buffer_control_rounds :
    InvMixColumnsModule_io_para_out_control_rounds; // @[AESDecModule.scala 43:39]
  assign InvMixColumnsModule_clock = clock;
  assign InvMixColumnsModule_reset = reset;
  assign InvMixColumnsModule_io_para_in_state_0 = AddRoundKeyModule_io_para_out_control_isIdle ? 8'h0 :
    _TmpValue_T_1_state_0; // @[AESDecModule.scala 37:18]
  assign InvMixColumnsModule_io_para_in_state_1 = AddRoundKeyModule_io_para_out_control_isIdle ? 8'h0 :
    _TmpValue_T_1_state_1; // @[AESDecModule.scala 37:18]
  assign InvMixColumnsModule_io_para_in_state_2 = AddRoundKeyModule_io_para_out_control_isIdle ? 8'h0 :
    _TmpValue_T_1_state_2; // @[AESDecModule.scala 37:18]
  assign InvMixColumnsModule_io_para_in_state_3 = AddRoundKeyModule_io_para_out_control_isIdle ? 8'h0 :
    _TmpValue_T_1_state_3; // @[AESDecModule.scala 37:18]
  assign InvMixColumnsModule_io_para_in_state_4 = AddRoundKeyModule_io_para_out_control_isIdle ? 8'h0 :
    _TmpValue_T_1_state_4; // @[AESDecModule.scala 37:18]
  assign InvMixColumnsModule_io_para_in_state_5 = AddRoundKeyModule_io_para_out_control_isIdle ? 8'h0 :
    _TmpValue_T_1_state_5; // @[AESDecModule.scala 37:18]
  assign InvMixColumnsModule_io_para_in_state_6 = AddRoundKeyModule_io_para_out_control_isIdle ? 8'h0 :
    _TmpValue_T_1_state_6; // @[AESDecModule.scala 37:18]
  assign InvMixColumnsModule_io_para_in_state_7 = AddRoundKeyModule_io_para_out_control_isIdle ? 8'h0 :
    _TmpValue_T_1_state_7; // @[AESDecModule.scala 37:18]
  assign InvMixColumnsModule_io_para_in_state_8 = AddRoundKeyModule_io_para_out_control_isIdle ? 8'h0 :
    _TmpValue_T_1_state_8; // @[AESDecModule.scala 37:18]
  assign InvMixColumnsModule_io_para_in_state_9 = AddRoundKeyModule_io_para_out_control_isIdle ? 8'h0 :
    _TmpValue_T_1_state_9; // @[AESDecModule.scala 37:18]
  assign InvMixColumnsModule_io_para_in_state_10 = AddRoundKeyModule_io_para_out_control_isIdle ? 8'h0 :
    _TmpValue_T_1_state_10; // @[AESDecModule.scala 37:18]
  assign InvMixColumnsModule_io_para_in_state_11 = AddRoundKeyModule_io_para_out_control_isIdle ? 8'h0 :
    _TmpValue_T_1_state_11; // @[AESDecModule.scala 37:18]
  assign InvMixColumnsModule_io_para_in_state_12 = AddRoundKeyModule_io_para_out_control_isIdle ? 8'h0 :
    _TmpValue_T_1_state_12; // @[AESDecModule.scala 37:18]
  assign InvMixColumnsModule_io_para_in_state_13 = AddRoundKeyModule_io_para_out_control_isIdle ? 8'h0 :
    _TmpValue_T_1_state_13; // @[AESDecModule.scala 37:18]
  assign InvMixColumnsModule_io_para_in_state_14 = AddRoundKeyModule_io_para_out_control_isIdle ? 8'h0 :
    _TmpValue_T_1_state_14; // @[AESDecModule.scala 37:18]
  assign InvMixColumnsModule_io_para_in_state_15 = AddRoundKeyModule_io_para_out_control_isIdle ? 8'h0 :
    _TmpValue_T_1_state_15; // @[AESDecModule.scala 37:18]
  assign InvMixColumnsModule_io_para_in_control_isIdle = AddRoundKeyModule_io_para_out_control_isIdle |
    _TmpValue_T_1_control_isIdle; // @[AESDecModule.scala 37:18]
  assign InvMixColumnsModule_io_para_in_control_keylength = AddRoundKeyModule_io_para_out_control_isIdle ? 2'h0 :
    _TmpValue_T_1_control_keylength; // @[AESDecModule.scala 37:18]
  assign InvMixColumnsModule_io_para_in_control_taskID = AddRoundKeyModule_io_para_out_control_isIdle ? 2'h0 :
    _TmpValue_T_1_control_taskID; // @[AESDecModule.scala 37:18]
  assign InvMixColumnsModule_io_para_in_control_rounds = AddRoundKeyModule_io_para_out_control_isIdle ? 4'ha :
    _TmpValue_T_1_control_rounds; // @[AESDecModule.scala 37:18]
  always @(posedge clock) begin
    if (reset) begin // @[AESDecModule.scala 25:23]
      Buffer_state_0 <= 8'h0; // @[AESDecModule.scala 25:23]
    end else if (AddRoundKeyModule_io_para_out_control_isIdle) begin // @[AESDecModule.scala 37:18]
      Buffer_state_0 <= 8'h0;
    end else if (_TmpValue_T) begin // @[AESDecModule.scala 38:33]
      Buffer_state_0 <= 8'h0;
    end else begin
      Buffer_state_0 <= RoundSubsOne_state_0;
    end
    if (reset) begin // @[AESDecModule.scala 25:23]
      Buffer_state_1 <= 8'h0; // @[AESDecModule.scala 25:23]
    end else if (AddRoundKeyModule_io_para_out_control_isIdle) begin // @[AESDecModule.scala 37:18]
      Buffer_state_1 <= 8'h0;
    end else if (_TmpValue_T) begin // @[AESDecModule.scala 38:33]
      Buffer_state_1 <= 8'h0;
    end else begin
      Buffer_state_1 <= RoundSubsOne_state_1;
    end
    if (reset) begin // @[AESDecModule.scala 25:23]
      Buffer_state_2 <= 8'h0; // @[AESDecModule.scala 25:23]
    end else if (AddRoundKeyModule_io_para_out_control_isIdle) begin // @[AESDecModule.scala 37:18]
      Buffer_state_2 <= 8'h0;
    end else if (_TmpValue_T) begin // @[AESDecModule.scala 38:33]
      Buffer_state_2 <= 8'h0;
    end else begin
      Buffer_state_2 <= RoundSubsOne_state_2;
    end
    if (reset) begin // @[AESDecModule.scala 25:23]
      Buffer_state_3 <= 8'h0; // @[AESDecModule.scala 25:23]
    end else if (AddRoundKeyModule_io_para_out_control_isIdle) begin // @[AESDecModule.scala 37:18]
      Buffer_state_3 <= 8'h0;
    end else if (_TmpValue_T) begin // @[AESDecModule.scala 38:33]
      Buffer_state_3 <= 8'h0;
    end else begin
      Buffer_state_3 <= RoundSubsOne_state_3;
    end
    if (reset) begin // @[AESDecModule.scala 25:23]
      Buffer_state_4 <= 8'h0; // @[AESDecModule.scala 25:23]
    end else if (AddRoundKeyModule_io_para_out_control_isIdle) begin // @[AESDecModule.scala 37:18]
      Buffer_state_4 <= 8'h0;
    end else if (_TmpValue_T) begin // @[AESDecModule.scala 38:33]
      Buffer_state_4 <= 8'h0;
    end else begin
      Buffer_state_4 <= RoundSubsOne_state_4;
    end
    if (reset) begin // @[AESDecModule.scala 25:23]
      Buffer_state_5 <= 8'h0; // @[AESDecModule.scala 25:23]
    end else if (AddRoundKeyModule_io_para_out_control_isIdle) begin // @[AESDecModule.scala 37:18]
      Buffer_state_5 <= 8'h0;
    end else if (_TmpValue_T) begin // @[AESDecModule.scala 38:33]
      Buffer_state_5 <= 8'h0;
    end else begin
      Buffer_state_5 <= RoundSubsOne_state_5;
    end
    if (reset) begin // @[AESDecModule.scala 25:23]
      Buffer_state_6 <= 8'h0; // @[AESDecModule.scala 25:23]
    end else if (AddRoundKeyModule_io_para_out_control_isIdle) begin // @[AESDecModule.scala 37:18]
      Buffer_state_6 <= 8'h0;
    end else if (_TmpValue_T) begin // @[AESDecModule.scala 38:33]
      Buffer_state_6 <= 8'h0;
    end else begin
      Buffer_state_6 <= RoundSubsOne_state_6;
    end
    if (reset) begin // @[AESDecModule.scala 25:23]
      Buffer_state_7 <= 8'h0; // @[AESDecModule.scala 25:23]
    end else if (AddRoundKeyModule_io_para_out_control_isIdle) begin // @[AESDecModule.scala 37:18]
      Buffer_state_7 <= 8'h0;
    end else if (_TmpValue_T) begin // @[AESDecModule.scala 38:33]
      Buffer_state_7 <= 8'h0;
    end else begin
      Buffer_state_7 <= RoundSubsOne_state_7;
    end
    if (reset) begin // @[AESDecModule.scala 25:23]
      Buffer_state_8 <= 8'h0; // @[AESDecModule.scala 25:23]
    end else if (AddRoundKeyModule_io_para_out_control_isIdle) begin // @[AESDecModule.scala 37:18]
      Buffer_state_8 <= 8'h0;
    end else if (_TmpValue_T) begin // @[AESDecModule.scala 38:33]
      Buffer_state_8 <= 8'h0;
    end else begin
      Buffer_state_8 <= RoundSubsOne_state_8;
    end
    if (reset) begin // @[AESDecModule.scala 25:23]
      Buffer_state_9 <= 8'h0; // @[AESDecModule.scala 25:23]
    end else if (AddRoundKeyModule_io_para_out_control_isIdle) begin // @[AESDecModule.scala 37:18]
      Buffer_state_9 <= 8'h0;
    end else if (_TmpValue_T) begin // @[AESDecModule.scala 38:33]
      Buffer_state_9 <= 8'h0;
    end else begin
      Buffer_state_9 <= RoundSubsOne_state_9;
    end
    if (reset) begin // @[AESDecModule.scala 25:23]
      Buffer_state_10 <= 8'h0; // @[AESDecModule.scala 25:23]
    end else if (AddRoundKeyModule_io_para_out_control_isIdle) begin // @[AESDecModule.scala 37:18]
      Buffer_state_10 <= 8'h0;
    end else if (_TmpValue_T) begin // @[AESDecModule.scala 38:33]
      Buffer_state_10 <= 8'h0;
    end else begin
      Buffer_state_10 <= RoundSubsOne_state_10;
    end
    if (reset) begin // @[AESDecModule.scala 25:23]
      Buffer_state_11 <= 8'h0; // @[AESDecModule.scala 25:23]
    end else if (AddRoundKeyModule_io_para_out_control_isIdle) begin // @[AESDecModule.scala 37:18]
      Buffer_state_11 <= 8'h0;
    end else if (_TmpValue_T) begin // @[AESDecModule.scala 38:33]
      Buffer_state_11 <= 8'h0;
    end else begin
      Buffer_state_11 <= RoundSubsOne_state_11;
    end
    if (reset) begin // @[AESDecModule.scala 25:23]
      Buffer_state_12 <= 8'h0; // @[AESDecModule.scala 25:23]
    end else if (AddRoundKeyModule_io_para_out_control_isIdle) begin // @[AESDecModule.scala 37:18]
      Buffer_state_12 <= 8'h0;
    end else if (_TmpValue_T) begin // @[AESDecModule.scala 38:33]
      Buffer_state_12 <= 8'h0;
    end else begin
      Buffer_state_12 <= RoundSubsOne_state_12;
    end
    if (reset) begin // @[AESDecModule.scala 25:23]
      Buffer_state_13 <= 8'h0; // @[AESDecModule.scala 25:23]
    end else if (AddRoundKeyModule_io_para_out_control_isIdle) begin // @[AESDecModule.scala 37:18]
      Buffer_state_13 <= 8'h0;
    end else if (_TmpValue_T) begin // @[AESDecModule.scala 38:33]
      Buffer_state_13 <= 8'h0;
    end else begin
      Buffer_state_13 <= RoundSubsOne_state_13;
    end
    if (reset) begin // @[AESDecModule.scala 25:23]
      Buffer_state_14 <= 8'h0; // @[AESDecModule.scala 25:23]
    end else if (AddRoundKeyModule_io_para_out_control_isIdle) begin // @[AESDecModule.scala 37:18]
      Buffer_state_14 <= 8'h0;
    end else if (_TmpValue_T) begin // @[AESDecModule.scala 38:33]
      Buffer_state_14 <= 8'h0;
    end else begin
      Buffer_state_14 <= RoundSubsOne_state_14;
    end
    if (reset) begin // @[AESDecModule.scala 25:23]
      Buffer_state_15 <= 8'h0; // @[AESDecModule.scala 25:23]
    end else if (AddRoundKeyModule_io_para_out_control_isIdle) begin // @[AESDecModule.scala 37:18]
      Buffer_state_15 <= 8'h0;
    end else if (_TmpValue_T) begin // @[AESDecModule.scala 38:33]
      Buffer_state_15 <= 8'h0;
    end else begin
      Buffer_state_15 <= RoundSubsOne_state_15;
    end
    Buffer_control_isIdle <= reset | TmpValue_control_isIdle; // @[AESDecModule.scala 25:{23,23,23}]
    if (reset) begin // @[AESDecModule.scala 25:23]
      Buffer_control_keylength <= 2'h0; // @[AESDecModule.scala 25:23]
    end else if (AddRoundKeyModule_io_para_out_control_isIdle) begin // @[AESDecModule.scala 37:18]
      Buffer_control_keylength <= 2'h0;
    end else if (_TmpValue_T) begin // @[AESDecModule.scala 38:33]
      Buffer_control_keylength <= 2'h0;
    end else begin
      Buffer_control_keylength <= RoundSubsOne_control_keylength;
    end
    if (reset) begin // @[AESDecModule.scala 25:23]
      Buffer_control_taskID <= 2'h0; // @[AESDecModule.scala 25:23]
    end else if (AddRoundKeyModule_io_para_out_control_isIdle) begin // @[AESDecModule.scala 37:18]
      Buffer_control_taskID <= 2'h0;
    end else if (_TmpValue_T) begin // @[AESDecModule.scala 38:33]
      Buffer_control_taskID <= 2'h0;
    end else begin
      Buffer_control_taskID <= RoundSubsOne_control_taskID;
    end
    if (reset) begin // @[AESDecModule.scala 25:23]
      Buffer_control_rounds <= 4'ha; // @[AESDecModule.scala 25:23]
    end else if (AddRoundKeyModule_io_para_out_control_isIdle) begin // @[AESDecModule.scala 37:18]
      Buffer_control_rounds <= 4'ha;
    end else if (_TmpValue_T) begin // @[AESDecModule.scala 38:33]
      Buffer_control_rounds <= 4'ha;
    end else begin
      Buffer_control_rounds <= RoundSubsOne_control_rounds;
    end
    if (reset) begin // @[AESDecModule.scala 26:27]
      InputDelay_state_0 <= 8'h0; // @[AESDecModule.scala 26:27]
    end else begin
      InputDelay_state_0 <= io_input_bits_state_0; // @[AESDecModule.scala 26:27]
    end
    if (reset) begin // @[AESDecModule.scala 26:27]
      InputDelay_state_1 <= 8'h0; // @[AESDecModule.scala 26:27]
    end else begin
      InputDelay_state_1 <= io_input_bits_state_1; // @[AESDecModule.scala 26:27]
    end
    if (reset) begin // @[AESDecModule.scala 26:27]
      InputDelay_state_2 <= 8'h0; // @[AESDecModule.scala 26:27]
    end else begin
      InputDelay_state_2 <= io_input_bits_state_2; // @[AESDecModule.scala 26:27]
    end
    if (reset) begin // @[AESDecModule.scala 26:27]
      InputDelay_state_3 <= 8'h0; // @[AESDecModule.scala 26:27]
    end else begin
      InputDelay_state_3 <= io_input_bits_state_3; // @[AESDecModule.scala 26:27]
    end
    if (reset) begin // @[AESDecModule.scala 26:27]
      InputDelay_state_4 <= 8'h0; // @[AESDecModule.scala 26:27]
    end else begin
      InputDelay_state_4 <= io_input_bits_state_4; // @[AESDecModule.scala 26:27]
    end
    if (reset) begin // @[AESDecModule.scala 26:27]
      InputDelay_state_5 <= 8'h0; // @[AESDecModule.scala 26:27]
    end else begin
      InputDelay_state_5 <= io_input_bits_state_5; // @[AESDecModule.scala 26:27]
    end
    if (reset) begin // @[AESDecModule.scala 26:27]
      InputDelay_state_6 <= 8'h0; // @[AESDecModule.scala 26:27]
    end else begin
      InputDelay_state_6 <= io_input_bits_state_6; // @[AESDecModule.scala 26:27]
    end
    if (reset) begin // @[AESDecModule.scala 26:27]
      InputDelay_state_7 <= 8'h0; // @[AESDecModule.scala 26:27]
    end else begin
      InputDelay_state_7 <= io_input_bits_state_7; // @[AESDecModule.scala 26:27]
    end
    if (reset) begin // @[AESDecModule.scala 26:27]
      InputDelay_state_8 <= 8'h0; // @[AESDecModule.scala 26:27]
    end else begin
      InputDelay_state_8 <= io_input_bits_state_8; // @[AESDecModule.scala 26:27]
    end
    if (reset) begin // @[AESDecModule.scala 26:27]
      InputDelay_state_9 <= 8'h0; // @[AESDecModule.scala 26:27]
    end else begin
      InputDelay_state_9 <= io_input_bits_state_9; // @[AESDecModule.scala 26:27]
    end
    if (reset) begin // @[AESDecModule.scala 26:27]
      InputDelay_state_10 <= 8'h0; // @[AESDecModule.scala 26:27]
    end else begin
      InputDelay_state_10 <= io_input_bits_state_10; // @[AESDecModule.scala 26:27]
    end
    if (reset) begin // @[AESDecModule.scala 26:27]
      InputDelay_state_11 <= 8'h0; // @[AESDecModule.scala 26:27]
    end else begin
      InputDelay_state_11 <= io_input_bits_state_11; // @[AESDecModule.scala 26:27]
    end
    if (reset) begin // @[AESDecModule.scala 26:27]
      InputDelay_state_12 <= 8'h0; // @[AESDecModule.scala 26:27]
    end else begin
      InputDelay_state_12 <= io_input_bits_state_12; // @[AESDecModule.scala 26:27]
    end
    if (reset) begin // @[AESDecModule.scala 26:27]
      InputDelay_state_13 <= 8'h0; // @[AESDecModule.scala 26:27]
    end else begin
      InputDelay_state_13 <= io_input_bits_state_13; // @[AESDecModule.scala 26:27]
    end
    if (reset) begin // @[AESDecModule.scala 26:27]
      InputDelay_state_14 <= 8'h0; // @[AESDecModule.scala 26:27]
    end else begin
      InputDelay_state_14 <= io_input_bits_state_14; // @[AESDecModule.scala 26:27]
    end
    if (reset) begin // @[AESDecModule.scala 26:27]
      InputDelay_state_15 <= 8'h0; // @[AESDecModule.scala 26:27]
    end else begin
      InputDelay_state_15 <= io_input_bits_state_15; // @[AESDecModule.scala 26:27]
    end
    InputDelay_control_isIdle <= reset | io_input_bits_control_isIdle; // @[AESDecModule.scala 26:{27,27,27}]
    if (reset) begin // @[AESDecModule.scala 26:27]
      InputDelay_control_taskID <= 2'h0; // @[AESDecModule.scala 26:27]
    end else begin
      InputDelay_control_taskID <= io_input_bits_control_taskID; // @[AESDecModule.scala 26:27]
    end
    if (reset) begin // @[AESDecModule.scala 26:27]
      InputDelay_control_rounds <= 4'ha; // @[AESDecModule.scala 26:27]
    end else begin
      InputDelay_control_rounds <= io_input_bits_control_rounds; // @[AESDecModule.scala 26:27]
    end
    ControlBuffer_REG_isIdle <= reset | InvShiftRowsModule_io_para_out_control_isIdle; // @[Util.scala 33:{14,14,14}]
    if (reset) begin // @[Util.scala 33:14]
      ControlBuffer_REG_taskID <= 2'h0; // @[Util.scala 33:14]
    end else begin
      ControlBuffer_REG_taskID <= InvShiftRowsModule_io_para_out_control_taskID; // @[Util.scala 33:14]
    end
    if (reset) begin // @[Util.scala 33:14]
      ControlBuffer_REG_rounds <= 4'h0; // @[Util.scala 33:14]
    end else begin
      ControlBuffer_REG_rounds <= InvShiftRowsModule_io_para_out_control_rounds; // @[Util.scala 33:14]
    end
    ControlBuffer_isIdle <= reset | ControlBuffer_REG_isIdle; // @[Util.scala 35:{14,14,14}]
    if (reset) begin // @[Util.scala 35:14]
      ControlBuffer_taskID <= 2'h0; // @[Util.scala 35:14]
    end else begin
      ControlBuffer_taskID <= ControlBuffer_REG_taskID; // @[Util.scala 35:14]
    end
    if (reset) begin // @[Util.scala 35:14]
      ControlBuffer_rounds <= 4'h0; // @[Util.scala 35:14]
    end else begin
      ControlBuffer_rounds <= ControlBuffer_REG_rounds; // @[Util.scala 35:14]
    end
    r <= io_input_ready & io_input_valid; // @[Decoupled.scala 50:35]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  Buffer_state_0 = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  Buffer_state_1 = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  Buffer_state_2 = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  Buffer_state_3 = _RAND_3[7:0];
  _RAND_4 = {1{`RANDOM}};
  Buffer_state_4 = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  Buffer_state_5 = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  Buffer_state_6 = _RAND_6[7:0];
  _RAND_7 = {1{`RANDOM}};
  Buffer_state_7 = _RAND_7[7:0];
  _RAND_8 = {1{`RANDOM}};
  Buffer_state_8 = _RAND_8[7:0];
  _RAND_9 = {1{`RANDOM}};
  Buffer_state_9 = _RAND_9[7:0];
  _RAND_10 = {1{`RANDOM}};
  Buffer_state_10 = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  Buffer_state_11 = _RAND_11[7:0];
  _RAND_12 = {1{`RANDOM}};
  Buffer_state_12 = _RAND_12[7:0];
  _RAND_13 = {1{`RANDOM}};
  Buffer_state_13 = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  Buffer_state_14 = _RAND_14[7:0];
  _RAND_15 = {1{`RANDOM}};
  Buffer_state_15 = _RAND_15[7:0];
  _RAND_16 = {1{`RANDOM}};
  Buffer_control_isIdle = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  Buffer_control_keylength = _RAND_17[1:0];
  _RAND_18 = {1{`RANDOM}};
  Buffer_control_taskID = _RAND_18[1:0];
  _RAND_19 = {1{`RANDOM}};
  Buffer_control_rounds = _RAND_19[3:0];
  _RAND_20 = {1{`RANDOM}};
  InputDelay_state_0 = _RAND_20[7:0];
  _RAND_21 = {1{`RANDOM}};
  InputDelay_state_1 = _RAND_21[7:0];
  _RAND_22 = {1{`RANDOM}};
  InputDelay_state_2 = _RAND_22[7:0];
  _RAND_23 = {1{`RANDOM}};
  InputDelay_state_3 = _RAND_23[7:0];
  _RAND_24 = {1{`RANDOM}};
  InputDelay_state_4 = _RAND_24[7:0];
  _RAND_25 = {1{`RANDOM}};
  InputDelay_state_5 = _RAND_25[7:0];
  _RAND_26 = {1{`RANDOM}};
  InputDelay_state_6 = _RAND_26[7:0];
  _RAND_27 = {1{`RANDOM}};
  InputDelay_state_7 = _RAND_27[7:0];
  _RAND_28 = {1{`RANDOM}};
  InputDelay_state_8 = _RAND_28[7:0];
  _RAND_29 = {1{`RANDOM}};
  InputDelay_state_9 = _RAND_29[7:0];
  _RAND_30 = {1{`RANDOM}};
  InputDelay_state_10 = _RAND_30[7:0];
  _RAND_31 = {1{`RANDOM}};
  InputDelay_state_11 = _RAND_31[7:0];
  _RAND_32 = {1{`RANDOM}};
  InputDelay_state_12 = _RAND_32[7:0];
  _RAND_33 = {1{`RANDOM}};
  InputDelay_state_13 = _RAND_33[7:0];
  _RAND_34 = {1{`RANDOM}};
  InputDelay_state_14 = _RAND_34[7:0];
  _RAND_35 = {1{`RANDOM}};
  InputDelay_state_15 = _RAND_35[7:0];
  _RAND_36 = {1{`RANDOM}};
  InputDelay_control_isIdle = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  InputDelay_control_taskID = _RAND_37[1:0];
  _RAND_38 = {1{`RANDOM}};
  InputDelay_control_rounds = _RAND_38[3:0];
  _RAND_39 = {1{`RANDOM}};
  ControlBuffer_REG_isIdle = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  ControlBuffer_REG_taskID = _RAND_40[1:0];
  _RAND_41 = {1{`RANDOM}};
  ControlBuffer_REG_rounds = _RAND_41[3:0];
  _RAND_42 = {1{`RANDOM}};
  ControlBuffer_isIdle = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  ControlBuffer_taskID = _RAND_43[1:0];
  _RAND_44 = {1{`RANDOM}};
  ControlBuffer_rounds = _RAND_44[3:0];
  _RAND_45 = {1{`RANDOM}};
  r = _RAND_45[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Unit_3(
  input        clock,
  input        reset,
  output       io_input_ready,
  input        io_input_valid,
  input  [7:0] io_input_bits_state_0,
  input  [7:0] io_input_bits_state_1,
  input  [7:0] io_input_bits_state_2,
  input  [7:0] io_input_bits_state_3,
  input  [7:0] io_input_bits_state_4,
  input  [7:0] io_input_bits_state_5,
  input  [7:0] io_input_bits_state_6,
  input  [7:0] io_input_bits_state_7,
  input  [7:0] io_input_bits_state_8,
  input  [7:0] io_input_bits_state_9,
  input  [7:0] io_input_bits_state_10,
  input  [7:0] io_input_bits_state_11,
  input  [7:0] io_input_bits_state_12,
  input  [7:0] io_input_bits_state_13,
  input  [7:0] io_input_bits_state_14,
  input  [7:0] io_input_bits_state_15,
  input        io_input_bits_control_isIdle,
  input  [1:0] io_input_bits_control_taskID,
  input  [3:0] io_input_bits_control_rounds,
  input        io_output_ready,
  output       io_output_valid,
  output [7:0] io_output_bits_0,
  output [7:0] io_output_bits_1,
  output [7:0] io_output_bits_2,
  output [7:0] io_output_bits_3,
  output [7:0] io_output_bits_4,
  output [7:0] io_output_bits_5,
  output [7:0] io_output_bits_6,
  output [7:0] io_output_bits_7,
  output [7:0] io_output_bits_8,
  output [7:0] io_output_bits_9,
  output [7:0] io_output_bits_10,
  output [7:0] io_output_bits_11,
  output [7:0] io_output_bits_12,
  output [7:0] io_output_bits_13,
  output [7:0] io_output_bits_14,
  output [7:0] io_output_bits_15,
  output [1:0] io_output_task,
  input        io_write_en,
  input  [1:0] io_write_task,
  input  [3:0] io_write_round,
  input  [7:0] io_write_key_0,
  input  [7:0] io_write_key_1,
  input  [7:0] io_write_key_2,
  input  [7:0] io_write_key_3,
  input  [7:0] io_write_key_4,
  input  [7:0] io_write_key_5,
  input  [7:0] io_write_key_6,
  input  [7:0] io_write_key_7,
  input  [7:0] io_write_key_8,
  input  [7:0] io_write_key_9,
  input  [7:0] io_write_key_10,
  input  [7:0] io_write_key_11,
  input  [7:0] io_write_key_12,
  input  [7:0] io_write_key_13,
  input  [7:0] io_write_key_14,
  input  [7:0] io_write_key_15
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [31:0] _RAND_89;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
  reg [31:0] _RAND_94;
  reg [31:0] _RAND_95;
  reg [31:0] _RAND_96;
  reg [31:0] _RAND_97;
  reg [31:0] _RAND_98;
  reg [31:0] _RAND_99;
  reg [31:0] _RAND_100;
  reg [31:0] _RAND_101;
  reg [31:0] _RAND_102;
  reg [31:0] _RAND_103;
  reg [31:0] _RAND_104;
  reg [31:0] _RAND_105;
  reg [31:0] _RAND_106;
  reg [31:0] _RAND_107;
  reg [31:0] _RAND_108;
  reg [31:0] _RAND_109;
  reg [31:0] _RAND_110;
  reg [31:0] _RAND_111;
  reg [31:0] _RAND_112;
  reg [31:0] _RAND_113;
  reg [31:0] _RAND_114;
  reg [31:0] _RAND_115;
  reg [31:0] _RAND_116;
  reg [31:0] _RAND_117;
  reg [31:0] _RAND_118;
  reg [31:0] _RAND_119;
  reg [31:0] _RAND_120;
  reg [31:0] _RAND_121;
  reg [31:0] _RAND_122;
  reg [31:0] _RAND_123;
  reg [31:0] _RAND_124;
  reg [31:0] _RAND_125;
  reg [31:0] _RAND_126;
  reg [31:0] _RAND_127;
  reg [31:0] _RAND_128;
  reg [31:0] _RAND_129;
  reg [31:0] _RAND_130;
  reg [31:0] _RAND_131;
  reg [31:0] _RAND_132;
  reg [31:0] _RAND_133;
  reg [31:0] _RAND_134;
  reg [31:0] _RAND_135;
  reg [31:0] _RAND_136;
  reg [31:0] _RAND_137;
  reg [31:0] _RAND_138;
  reg [31:0] _RAND_139;
  reg [31:0] _RAND_140;
  reg [31:0] _RAND_141;
  reg [31:0] _RAND_142;
  reg [31:0] _RAND_143;
  reg [31:0] _RAND_144;
  reg [31:0] _RAND_145;
  reg [31:0] _RAND_146;
  reg [31:0] _RAND_147;
  reg [31:0] _RAND_148;
  reg [31:0] _RAND_149;
  reg [31:0] _RAND_150;
  reg [31:0] _RAND_151;
`endif // RANDOMIZE_REG_INIT
  wire  KeyBankModule_clock; // @[Unit.scala 26:29]
  wire [1:0] KeyBankModule_io_read_task; // @[Unit.scala 26:29]
  wire [3:0] KeyBankModule_io_read_round; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_read_key_0; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_read_key_1; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_read_key_2; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_read_key_3; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_read_key_4; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_read_key_5; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_read_key_6; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_read_key_7; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_read_key_8; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_read_key_9; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_read_key_10; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_read_key_11; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_read_key_12; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_read_key_13; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_read_key_14; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_read_key_15; // @[Unit.scala 26:29]
  wire  KeyBankModule_io_write_en; // @[Unit.scala 26:29]
  wire [1:0] KeyBankModule_io_write_task; // @[Unit.scala 26:29]
  wire [3:0] KeyBankModule_io_write_round; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_write_key_0; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_write_key_1; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_write_key_2; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_write_key_3; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_write_key_4; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_write_key_5; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_write_key_6; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_write_key_7; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_write_key_8; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_write_key_9; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_write_key_10; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_write_key_11; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_write_key_12; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_write_key_13; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_write_key_14; // @[Unit.scala 26:29]
  wire [7:0] KeyBankModule_io_write_key_15; // @[Unit.scala 26:29]
  wire  EngineModule_clock; // @[Unit.scala 27:68]
  wire  EngineModule_reset; // @[Unit.scala 27:68]
  wire  EngineModule_io_input_ready; // @[Unit.scala 27:68]
  wire  EngineModule_io_input_valid; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_input_bits_state_0; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_input_bits_state_1; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_input_bits_state_2; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_input_bits_state_3; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_input_bits_state_4; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_input_bits_state_5; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_input_bits_state_6; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_input_bits_state_7; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_input_bits_state_8; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_input_bits_state_9; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_input_bits_state_10; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_input_bits_state_11; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_input_bits_state_12; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_input_bits_state_13; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_input_bits_state_14; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_input_bits_state_15; // @[Unit.scala 27:68]
  wire  EngineModule_io_input_bits_control_isIdle; // @[Unit.scala 27:68]
  wire [1:0] EngineModule_io_input_bits_control_taskID; // @[Unit.scala 27:68]
  wire [3:0] EngineModule_io_input_bits_control_rounds; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_round_key_0; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_round_key_1; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_round_key_2; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_round_key_3; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_round_key_4; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_round_key_5; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_round_key_6; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_round_key_7; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_round_key_8; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_round_key_9; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_round_key_10; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_round_key_11; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_round_key_12; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_round_key_13; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_round_key_14; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_round_key_15; // @[Unit.scala 27:68]
  wire  EngineModule_io_output_state_valid; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_output_state_bits_0; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_output_state_bits_1; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_output_state_bits_2; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_output_state_bits_3; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_output_state_bits_4; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_output_state_bits_5; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_output_state_bits_6; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_output_state_bits_7; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_output_state_bits_8; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_output_state_bits_9; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_output_state_bits_10; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_output_state_bits_11; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_output_state_bits_12; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_output_state_bits_13; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_output_state_bits_14; // @[Unit.scala 27:68]
  wire [7:0] EngineModule_io_output_state_bits_15; // @[Unit.scala 27:68]
  wire [1:0] EngineModule_io_read_task; // @[Unit.scala 27:68]
  wire [3:0] EngineModule_io_read_round; // @[Unit.scala 27:68]
  wire [1:0] EngineModule_io_complete_taskID; // @[Unit.scala 27:68]
  wire  InArbiter_clock; // @[Unit.scala 29:25]
  wire  InArbiter_io_in_0_ready; // @[Unit.scala 29:25]
  wire  InArbiter_io_in_0_valid; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_0_bits_state_0; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_0_bits_state_1; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_0_bits_state_2; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_0_bits_state_3; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_0_bits_state_4; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_0_bits_state_5; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_0_bits_state_6; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_0_bits_state_7; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_0_bits_state_8; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_0_bits_state_9; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_0_bits_state_10; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_0_bits_state_11; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_0_bits_state_12; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_0_bits_state_13; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_0_bits_state_14; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_0_bits_state_15; // @[Unit.scala 29:25]
  wire  InArbiter_io_in_0_bits_control_isIdle; // @[Unit.scala 29:25]
  wire [1:0] InArbiter_io_in_0_bits_control_taskID; // @[Unit.scala 29:25]
  wire [3:0] InArbiter_io_in_0_bits_control_rounds; // @[Unit.scala 29:25]
  wire  InArbiter_io_in_1_ready; // @[Unit.scala 29:25]
  wire  InArbiter_io_in_1_valid; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_1_bits_state_0; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_1_bits_state_1; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_1_bits_state_2; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_1_bits_state_3; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_1_bits_state_4; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_1_bits_state_5; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_1_bits_state_6; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_1_bits_state_7; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_1_bits_state_8; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_1_bits_state_9; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_1_bits_state_10; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_1_bits_state_11; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_1_bits_state_12; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_1_bits_state_13; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_1_bits_state_14; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_1_bits_state_15; // @[Unit.scala 29:25]
  wire  InArbiter_io_in_1_bits_control_isIdle; // @[Unit.scala 29:25]
  wire [1:0] InArbiter_io_in_1_bits_control_taskID; // @[Unit.scala 29:25]
  wire [3:0] InArbiter_io_in_1_bits_control_rounds; // @[Unit.scala 29:25]
  wire  InArbiter_io_in_2_ready; // @[Unit.scala 29:25]
  wire  InArbiter_io_in_2_valid; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_2_bits_state_0; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_2_bits_state_1; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_2_bits_state_2; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_2_bits_state_3; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_2_bits_state_4; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_2_bits_state_5; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_2_bits_state_6; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_2_bits_state_7; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_2_bits_state_8; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_2_bits_state_9; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_2_bits_state_10; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_2_bits_state_11; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_2_bits_state_12; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_2_bits_state_13; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_2_bits_state_14; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_2_bits_state_15; // @[Unit.scala 29:25]
  wire  InArbiter_io_in_2_bits_control_isIdle; // @[Unit.scala 29:25]
  wire [1:0] InArbiter_io_in_2_bits_control_taskID; // @[Unit.scala 29:25]
  wire [3:0] InArbiter_io_in_2_bits_control_rounds; // @[Unit.scala 29:25]
  wire  InArbiter_io_in_3_ready; // @[Unit.scala 29:25]
  wire  InArbiter_io_in_3_valid; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_3_bits_state_0; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_3_bits_state_1; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_3_bits_state_2; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_3_bits_state_3; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_3_bits_state_4; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_3_bits_state_5; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_3_bits_state_6; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_3_bits_state_7; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_3_bits_state_8; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_3_bits_state_9; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_3_bits_state_10; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_3_bits_state_11; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_3_bits_state_12; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_3_bits_state_13; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_3_bits_state_14; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_in_3_bits_state_15; // @[Unit.scala 29:25]
  wire  InArbiter_io_in_3_bits_control_isIdle; // @[Unit.scala 29:25]
  wire [1:0] InArbiter_io_in_3_bits_control_taskID; // @[Unit.scala 29:25]
  wire [3:0] InArbiter_io_in_3_bits_control_rounds; // @[Unit.scala 29:25]
  wire  InArbiter_io_out_ready; // @[Unit.scala 29:25]
  wire  InArbiter_io_out_valid; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_out_bits_state_0; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_out_bits_state_1; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_out_bits_state_2; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_out_bits_state_3; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_out_bits_state_4; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_out_bits_state_5; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_out_bits_state_6; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_out_bits_state_7; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_out_bits_state_8; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_out_bits_state_9; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_out_bits_state_10; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_out_bits_state_11; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_out_bits_state_12; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_out_bits_state_13; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_out_bits_state_14; // @[Unit.scala 29:25]
  wire [7:0] InArbiter_io_out_bits_state_15; // @[Unit.scala 29:25]
  wire  InArbiter_io_out_bits_control_isIdle; // @[Unit.scala 29:25]
  wire [1:0] InArbiter_io_out_bits_control_taskID; // @[Unit.scala 29:25]
  wire [3:0] InArbiter_io_out_bits_control_rounds; // @[Unit.scala 29:25]
  wire [1:0] InArbiter_io_chosen; // @[Unit.scala 29:25]
  wire  OutArbiter_clock; // @[Unit.scala 30:26]
  wire  OutArbiter_io_in_0_ready; // @[Unit.scala 30:26]
  wire  OutArbiter_io_in_0_valid; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_0_bits_0; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_0_bits_1; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_0_bits_2; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_0_bits_3; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_0_bits_4; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_0_bits_5; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_0_bits_6; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_0_bits_7; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_0_bits_8; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_0_bits_9; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_0_bits_10; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_0_bits_11; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_0_bits_12; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_0_bits_13; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_0_bits_14; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_0_bits_15; // @[Unit.scala 30:26]
  wire  OutArbiter_io_in_1_ready; // @[Unit.scala 30:26]
  wire  OutArbiter_io_in_1_valid; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_1_bits_0; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_1_bits_1; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_1_bits_2; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_1_bits_3; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_1_bits_4; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_1_bits_5; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_1_bits_6; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_1_bits_7; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_1_bits_8; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_1_bits_9; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_1_bits_10; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_1_bits_11; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_1_bits_12; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_1_bits_13; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_1_bits_14; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_1_bits_15; // @[Unit.scala 30:26]
  wire  OutArbiter_io_in_2_ready; // @[Unit.scala 30:26]
  wire  OutArbiter_io_in_2_valid; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_2_bits_0; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_2_bits_1; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_2_bits_2; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_2_bits_3; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_2_bits_4; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_2_bits_5; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_2_bits_6; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_2_bits_7; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_2_bits_8; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_2_bits_9; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_2_bits_10; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_2_bits_11; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_2_bits_12; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_2_bits_13; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_2_bits_14; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_2_bits_15; // @[Unit.scala 30:26]
  wire  OutArbiter_io_in_3_ready; // @[Unit.scala 30:26]
  wire  OutArbiter_io_in_3_valid; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_3_bits_0; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_3_bits_1; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_3_bits_2; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_3_bits_3; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_3_bits_4; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_3_bits_5; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_3_bits_6; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_3_bits_7; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_3_bits_8; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_3_bits_9; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_3_bits_10; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_3_bits_11; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_3_bits_12; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_3_bits_13; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_3_bits_14; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_in_3_bits_15; // @[Unit.scala 30:26]
  wire  OutArbiter_io_out_ready; // @[Unit.scala 30:26]
  wire  OutArbiter_io_out_valid; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_out_bits_0; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_out_bits_1; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_out_bits_2; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_out_bits_3; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_out_bits_4; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_out_bits_5; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_out_bits_6; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_out_bits_7; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_out_bits_8; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_out_bits_9; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_out_bits_10; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_out_bits_11; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_out_bits_12; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_out_bits_13; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_out_bits_14; // @[Unit.scala 30:26]
  wire [7:0] OutArbiter_io_out_bits_15; // @[Unit.scala 30:26]
  wire [1:0] OutArbiter_io_chosen; // @[Unit.scala 30:26]
  reg [7:0] InPara_0_state_0; // @[Unit.scala 19:19]
  reg [7:0] InPara_0_state_1; // @[Unit.scala 19:19]
  reg [7:0] InPara_0_state_2; // @[Unit.scala 19:19]
  reg [7:0] InPara_0_state_3; // @[Unit.scala 19:19]
  reg [7:0] InPara_0_state_4; // @[Unit.scala 19:19]
  reg [7:0] InPara_0_state_5; // @[Unit.scala 19:19]
  reg [7:0] InPara_0_state_6; // @[Unit.scala 19:19]
  reg [7:0] InPara_0_state_7; // @[Unit.scala 19:19]
  reg [7:0] InPara_0_state_8; // @[Unit.scala 19:19]
  reg [7:0] InPara_0_state_9; // @[Unit.scala 19:19]
  reg [7:0] InPara_0_state_10; // @[Unit.scala 19:19]
  reg [7:0] InPara_0_state_11; // @[Unit.scala 19:19]
  reg [7:0] InPara_0_state_12; // @[Unit.scala 19:19]
  reg [7:0] InPara_0_state_13; // @[Unit.scala 19:19]
  reg [7:0] InPara_0_state_14; // @[Unit.scala 19:19]
  reg [7:0] InPara_0_state_15; // @[Unit.scala 19:19]
  reg  InPara_0_control_isIdle; // @[Unit.scala 19:19]
  reg [1:0] InPara_0_control_taskID; // @[Unit.scala 19:19]
  reg [3:0] InPara_0_control_rounds; // @[Unit.scala 19:19]
  reg [7:0] InPara_1_state_0; // @[Unit.scala 19:19]
  reg [7:0] InPara_1_state_1; // @[Unit.scala 19:19]
  reg [7:0] InPara_1_state_2; // @[Unit.scala 19:19]
  reg [7:0] InPara_1_state_3; // @[Unit.scala 19:19]
  reg [7:0] InPara_1_state_4; // @[Unit.scala 19:19]
  reg [7:0] InPara_1_state_5; // @[Unit.scala 19:19]
  reg [7:0] InPara_1_state_6; // @[Unit.scala 19:19]
  reg [7:0] InPara_1_state_7; // @[Unit.scala 19:19]
  reg [7:0] InPara_1_state_8; // @[Unit.scala 19:19]
  reg [7:0] InPara_1_state_9; // @[Unit.scala 19:19]
  reg [7:0] InPara_1_state_10; // @[Unit.scala 19:19]
  reg [7:0] InPara_1_state_11; // @[Unit.scala 19:19]
  reg [7:0] InPara_1_state_12; // @[Unit.scala 19:19]
  reg [7:0] InPara_1_state_13; // @[Unit.scala 19:19]
  reg [7:0] InPara_1_state_14; // @[Unit.scala 19:19]
  reg [7:0] InPara_1_state_15; // @[Unit.scala 19:19]
  reg  InPara_1_control_isIdle; // @[Unit.scala 19:19]
  reg [1:0] InPara_1_control_taskID; // @[Unit.scala 19:19]
  reg [3:0] InPara_1_control_rounds; // @[Unit.scala 19:19]
  reg [7:0] InPara_2_state_0; // @[Unit.scala 19:19]
  reg [7:0] InPara_2_state_1; // @[Unit.scala 19:19]
  reg [7:0] InPara_2_state_2; // @[Unit.scala 19:19]
  reg [7:0] InPara_2_state_3; // @[Unit.scala 19:19]
  reg [7:0] InPara_2_state_4; // @[Unit.scala 19:19]
  reg [7:0] InPara_2_state_5; // @[Unit.scala 19:19]
  reg [7:0] InPara_2_state_6; // @[Unit.scala 19:19]
  reg [7:0] InPara_2_state_7; // @[Unit.scala 19:19]
  reg [7:0] InPara_2_state_8; // @[Unit.scala 19:19]
  reg [7:0] InPara_2_state_9; // @[Unit.scala 19:19]
  reg [7:0] InPara_2_state_10; // @[Unit.scala 19:19]
  reg [7:0] InPara_2_state_11; // @[Unit.scala 19:19]
  reg [7:0] InPara_2_state_12; // @[Unit.scala 19:19]
  reg [7:0] InPara_2_state_13; // @[Unit.scala 19:19]
  reg [7:0] InPara_2_state_14; // @[Unit.scala 19:19]
  reg [7:0] InPara_2_state_15; // @[Unit.scala 19:19]
  reg  InPara_2_control_isIdle; // @[Unit.scala 19:19]
  reg [1:0] InPara_2_control_taskID; // @[Unit.scala 19:19]
  reg [3:0] InPara_2_control_rounds; // @[Unit.scala 19:19]
  reg [7:0] InPara_3_state_0; // @[Unit.scala 19:19]
  reg [7:0] InPara_3_state_1; // @[Unit.scala 19:19]
  reg [7:0] InPara_3_state_2; // @[Unit.scala 19:19]
  reg [7:0] InPara_3_state_3; // @[Unit.scala 19:19]
  reg [7:0] InPara_3_state_4; // @[Unit.scala 19:19]
  reg [7:0] InPara_3_state_5; // @[Unit.scala 19:19]
  reg [7:0] InPara_3_state_6; // @[Unit.scala 19:19]
  reg [7:0] InPara_3_state_7; // @[Unit.scala 19:19]
  reg [7:0] InPara_3_state_8; // @[Unit.scala 19:19]
  reg [7:0] InPara_3_state_9; // @[Unit.scala 19:19]
  reg [7:0] InPara_3_state_10; // @[Unit.scala 19:19]
  reg [7:0] InPara_3_state_11; // @[Unit.scala 19:19]
  reg [7:0] InPara_3_state_12; // @[Unit.scala 19:19]
  reg [7:0] InPara_3_state_13; // @[Unit.scala 19:19]
  reg [7:0] InPara_3_state_14; // @[Unit.scala 19:19]
  reg [7:0] InPara_3_state_15; // @[Unit.scala 19:19]
  reg  InPara_3_control_isIdle; // @[Unit.scala 19:19]
  reg [1:0] InPara_3_control_taskID; // @[Unit.scala 19:19]
  reg [3:0] InPara_3_control_rounds; // @[Unit.scala 19:19]
  reg [7:0] OutState_0_0; // @[Unit.scala 20:21]
  reg [7:0] OutState_0_1; // @[Unit.scala 20:21]
  reg [7:0] OutState_0_2; // @[Unit.scala 20:21]
  reg [7:0] OutState_0_3; // @[Unit.scala 20:21]
  reg [7:0] OutState_0_4; // @[Unit.scala 20:21]
  reg [7:0] OutState_0_5; // @[Unit.scala 20:21]
  reg [7:0] OutState_0_6; // @[Unit.scala 20:21]
  reg [7:0] OutState_0_7; // @[Unit.scala 20:21]
  reg [7:0] OutState_0_8; // @[Unit.scala 20:21]
  reg [7:0] OutState_0_9; // @[Unit.scala 20:21]
  reg [7:0] OutState_0_10; // @[Unit.scala 20:21]
  reg [7:0] OutState_0_11; // @[Unit.scala 20:21]
  reg [7:0] OutState_0_12; // @[Unit.scala 20:21]
  reg [7:0] OutState_0_13; // @[Unit.scala 20:21]
  reg [7:0] OutState_0_14; // @[Unit.scala 20:21]
  reg [7:0] OutState_0_15; // @[Unit.scala 20:21]
  reg [7:0] OutState_1_0; // @[Unit.scala 20:21]
  reg [7:0] OutState_1_1; // @[Unit.scala 20:21]
  reg [7:0] OutState_1_2; // @[Unit.scala 20:21]
  reg [7:0] OutState_1_3; // @[Unit.scala 20:21]
  reg [7:0] OutState_1_4; // @[Unit.scala 20:21]
  reg [7:0] OutState_1_5; // @[Unit.scala 20:21]
  reg [7:0] OutState_1_6; // @[Unit.scala 20:21]
  reg [7:0] OutState_1_7; // @[Unit.scala 20:21]
  reg [7:0] OutState_1_8; // @[Unit.scala 20:21]
  reg [7:0] OutState_1_9; // @[Unit.scala 20:21]
  reg [7:0] OutState_1_10; // @[Unit.scala 20:21]
  reg [7:0] OutState_1_11; // @[Unit.scala 20:21]
  reg [7:0] OutState_1_12; // @[Unit.scala 20:21]
  reg [7:0] OutState_1_13; // @[Unit.scala 20:21]
  reg [7:0] OutState_1_14; // @[Unit.scala 20:21]
  reg [7:0] OutState_1_15; // @[Unit.scala 20:21]
  reg [7:0] OutState_2_0; // @[Unit.scala 20:21]
  reg [7:0] OutState_2_1; // @[Unit.scala 20:21]
  reg [7:0] OutState_2_2; // @[Unit.scala 20:21]
  reg [7:0] OutState_2_3; // @[Unit.scala 20:21]
  reg [7:0] OutState_2_4; // @[Unit.scala 20:21]
  reg [7:0] OutState_2_5; // @[Unit.scala 20:21]
  reg [7:0] OutState_2_6; // @[Unit.scala 20:21]
  reg [7:0] OutState_2_7; // @[Unit.scala 20:21]
  reg [7:0] OutState_2_8; // @[Unit.scala 20:21]
  reg [7:0] OutState_2_9; // @[Unit.scala 20:21]
  reg [7:0] OutState_2_10; // @[Unit.scala 20:21]
  reg [7:0] OutState_2_11; // @[Unit.scala 20:21]
  reg [7:0] OutState_2_12; // @[Unit.scala 20:21]
  reg [7:0] OutState_2_13; // @[Unit.scala 20:21]
  reg [7:0] OutState_2_14; // @[Unit.scala 20:21]
  reg [7:0] OutState_2_15; // @[Unit.scala 20:21]
  reg [7:0] OutState_3_0; // @[Unit.scala 20:21]
  reg [7:0] OutState_3_1; // @[Unit.scala 20:21]
  reg [7:0] OutState_3_2; // @[Unit.scala 20:21]
  reg [7:0] OutState_3_3; // @[Unit.scala 20:21]
  reg [7:0] OutState_3_4; // @[Unit.scala 20:21]
  reg [7:0] OutState_3_5; // @[Unit.scala 20:21]
  reg [7:0] OutState_3_6; // @[Unit.scala 20:21]
  reg [7:0] OutState_3_7; // @[Unit.scala 20:21]
  reg [7:0] OutState_3_8; // @[Unit.scala 20:21]
  reg [7:0] OutState_3_9; // @[Unit.scala 20:21]
  reg [7:0] OutState_3_10; // @[Unit.scala 20:21]
  reg [7:0] OutState_3_11; // @[Unit.scala 20:21]
  reg [7:0] OutState_3_12; // @[Unit.scala 20:21]
  reg [7:0] OutState_3_13; // @[Unit.scala 20:21]
  reg [7:0] OutState_3_14; // @[Unit.scala 20:21]
  reg [7:0] OutState_3_15; // @[Unit.scala 20:21]
  reg  Active_0; // @[Unit.scala 22:23]
  reg  Active_1; // @[Unit.scala 22:23]
  reg  Active_2; // @[Unit.scala 22:23]
  reg  Active_3; // @[Unit.scala 22:23]
  reg  Busy_0; // @[Unit.scala 23:21]
  reg  Busy_1; // @[Unit.scala 23:21]
  reg  Busy_2; // @[Unit.scala 23:21]
  reg  Busy_3; // @[Unit.scala 23:21]
  reg  Completed_0; // @[Unit.scala 24:26]
  reg  Completed_1; // @[Unit.scala 24:26]
  reg  Completed_2; // @[Unit.scala 24:26]
  reg  Completed_3; // @[Unit.scala 24:26]
  wire  _GEN_1 = 2'h1 == io_input_bits_control_taskID ? Busy_1 : Busy_0; // @[Unit.scala 32:{21,21}]
  wire  _GEN_2 = 2'h2 == io_input_bits_control_taskID ? Busy_2 : _GEN_1; // @[Unit.scala 32:{21,21}]
  wire  _GEN_3 = 2'h3 == io_input_bits_control_taskID ? Busy_3 : _GEN_2; // @[Unit.scala 32:{21,21}]
  wire  _T = io_input_ready & io_input_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_328 = 2'h0 == io_input_bits_control_taskID; // @[Unit.scala 37:{20,20} 22:23]
  wire  _GEN_84 = 2'h0 == io_input_bits_control_taskID | Active_0; // @[Unit.scala 37:{20,20} 22:23]
  wire  _GEN_329 = 2'h1 == io_input_bits_control_taskID; // @[Unit.scala 37:{20,20} 22:23]
  wire  _GEN_85 = 2'h1 == io_input_bits_control_taskID | Active_1; // @[Unit.scala 37:{20,20} 22:23]
  wire  _GEN_330 = 2'h2 == io_input_bits_control_taskID; // @[Unit.scala 37:{20,20} 22:23]
  wire  _GEN_86 = 2'h2 == io_input_bits_control_taskID | Active_2; // @[Unit.scala 37:{20,20} 22:23]
  wire  _GEN_331 = 2'h3 == io_input_bits_control_taskID; // @[Unit.scala 37:{20,20} 22:23]
  wire  _GEN_87 = 2'h3 == io_input_bits_control_taskID | Active_3; // @[Unit.scala 37:{20,20} 22:23]
  wire  _GEN_88 = _GEN_328 | Busy_0; // @[Unit.scala 38:{18,18} 23:21]
  wire  _GEN_89 = _GEN_329 | Busy_1; // @[Unit.scala 38:{18,18} 23:21]
  wire  _GEN_90 = _GEN_330 | Busy_2; // @[Unit.scala 38:{18,18} 23:21]
  wire  _GEN_91 = _GEN_331 | Busy_3; // @[Unit.scala 38:{18,18} 23:21]
  wire  _T_1 = InArbiter_io_in_0_ready & InArbiter_io_in_0_valid; // @[Decoupled.scala 50:35]
  wire  _T_2 = OutArbiter_io_in_0_ready & OutArbiter_io_in_0_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_181 = _T_2 ? 1'h0 : Completed_0; // @[Unit.scala 49:39 50:23 24:26]
  wire  _T_3 = InArbiter_io_in_1_ready & InArbiter_io_in_1_valid; // @[Decoupled.scala 50:35]
  wire  _T_4 = OutArbiter_io_in_1_ready & OutArbiter_io_in_1_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_184 = _T_4 ? 1'h0 : Completed_1; // @[Unit.scala 49:39 50:23 24:26]
  wire  _T_5 = InArbiter_io_in_2_ready & InArbiter_io_in_2_valid; // @[Decoupled.scala 50:35]
  wire  _T_6 = OutArbiter_io_in_2_ready & OutArbiter_io_in_2_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_187 = _T_6 ? 1'h0 : Completed_2; // @[Unit.scala 49:39 50:23 24:26]
  wire  _T_7 = InArbiter_io_in_3_ready & InArbiter_io_in_3_valid; // @[Decoupled.scala 50:35]
  wire  _T_8 = OutArbiter_io_in_3_ready & OutArbiter_io_in_3_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_190 = _T_8 ? 1'h0 : Completed_3; // @[Unit.scala 49:39 50:23 24:26]
  wire [7:0] _OutState_EngineModule_io_complete_taskID_0 = EngineModule_io_output_state_bits_0; // @[Unit.scala 59:{22,22}]
  wire [7:0] _OutState_EngineModule_io_complete_taskID_1 = EngineModule_io_output_state_bits_1; // @[Unit.scala 59:{22,22}]
  wire [7:0] _OutState_EngineModule_io_complete_taskID_2 = EngineModule_io_output_state_bits_2; // @[Unit.scala 59:{22,22}]
  wire [7:0] _OutState_EngineModule_io_complete_taskID_3 = EngineModule_io_output_state_bits_3; // @[Unit.scala 59:{22,22}]
  wire [7:0] _OutState_EngineModule_io_complete_taskID_4 = EngineModule_io_output_state_bits_4; // @[Unit.scala 59:{22,22}]
  wire [7:0] _OutState_EngineModule_io_complete_taskID_5 = EngineModule_io_output_state_bits_5; // @[Unit.scala 59:{22,22}]
  wire [7:0] _OutState_EngineModule_io_complete_taskID_6 = EngineModule_io_output_state_bits_6; // @[Unit.scala 59:{22,22}]
  wire [7:0] _OutState_EngineModule_io_complete_taskID_7 = EngineModule_io_output_state_bits_7; // @[Unit.scala 59:{22,22}]
  wire [7:0] _OutState_EngineModule_io_complete_taskID_8 = EngineModule_io_output_state_bits_8; // @[Unit.scala 59:{22,22}]
  wire [7:0] _OutState_EngineModule_io_complete_taskID_9 = EngineModule_io_output_state_bits_9; // @[Unit.scala 59:{22,22}]
  wire [7:0] _OutState_EngineModule_io_complete_taskID_10 = EngineModule_io_output_state_bits_10; // @[Unit.scala 59:{22,22}]
  wire [7:0] _OutState_EngineModule_io_complete_taskID_11 = EngineModule_io_output_state_bits_11; // @[Unit.scala 59:{22,22}]
  wire [7:0] _OutState_EngineModule_io_complete_taskID_12 = EngineModule_io_output_state_bits_12; // @[Unit.scala 59:{22,22}]
  wire [7:0] _OutState_EngineModule_io_complete_taskID_13 = EngineModule_io_output_state_bits_13; // @[Unit.scala 59:{22,22}]
  wire [7:0] _OutState_EngineModule_io_complete_taskID_14 = EngineModule_io_output_state_bits_14; // @[Unit.scala 59:{22,22}]
  wire [7:0] _OutState_EngineModule_io_complete_taskID_15 = EngineModule_io_output_state_bits_15; // @[Unit.scala 59:{22,22}]
  wire  _GEN_256 = 2'h0 == EngineModule_io_complete_taskID | _GEN_181; // @[Unit.scala 60:{23,23}]
  wire  _GEN_257 = 2'h1 == EngineModule_io_complete_taskID | _GEN_184; // @[Unit.scala 60:{23,23}]
  wire  _GEN_258 = 2'h2 == EngineModule_io_complete_taskID | _GEN_187; // @[Unit.scala 60:{23,23}]
  wire  _GEN_259 = 2'h3 == EngineModule_io_complete_taskID | _GEN_190; // @[Unit.scala 60:{23,23}]
  KeyBank KeyBankModule ( // @[Unit.scala 26:29]
    .clock(KeyBankModule_clock),
    .io_read_task(KeyBankModule_io_read_task),
    .io_read_round(KeyBankModule_io_read_round),
    .io_read_key_0(KeyBankModule_io_read_key_0),
    .io_read_key_1(KeyBankModule_io_read_key_1),
    .io_read_key_2(KeyBankModule_io_read_key_2),
    .io_read_key_3(KeyBankModule_io_read_key_3),
    .io_read_key_4(KeyBankModule_io_read_key_4),
    .io_read_key_5(KeyBankModule_io_read_key_5),
    .io_read_key_6(KeyBankModule_io_read_key_6),
    .io_read_key_7(KeyBankModule_io_read_key_7),
    .io_read_key_8(KeyBankModule_io_read_key_8),
    .io_read_key_9(KeyBankModule_io_read_key_9),
    .io_read_key_10(KeyBankModule_io_read_key_10),
    .io_read_key_11(KeyBankModule_io_read_key_11),
    .io_read_key_12(KeyBankModule_io_read_key_12),
    .io_read_key_13(KeyBankModule_io_read_key_13),
    .io_read_key_14(KeyBankModule_io_read_key_14),
    .io_read_key_15(KeyBankModule_io_read_key_15),
    .io_write_en(KeyBankModule_io_write_en),
    .io_write_task(KeyBankModule_io_write_task),
    .io_write_round(KeyBankModule_io_write_round),
    .io_write_key_0(KeyBankModule_io_write_key_0),
    .io_write_key_1(KeyBankModule_io_write_key_1),
    .io_write_key_2(KeyBankModule_io_write_key_2),
    .io_write_key_3(KeyBankModule_io_write_key_3),
    .io_write_key_4(KeyBankModule_io_write_key_4),
    .io_write_key_5(KeyBankModule_io_write_key_5),
    .io_write_key_6(KeyBankModule_io_write_key_6),
    .io_write_key_7(KeyBankModule_io_write_key_7),
    .io_write_key_8(KeyBankModule_io_write_key_8),
    .io_write_key_9(KeyBankModule_io_write_key_9),
    .io_write_key_10(KeyBankModule_io_write_key_10),
    .io_write_key_11(KeyBankModule_io_write_key_11),
    .io_write_key_12(KeyBankModule_io_write_key_12),
    .io_write_key_13(KeyBankModule_io_write_key_13),
    .io_write_key_14(KeyBankModule_io_write_key_14),
    .io_write_key_15(KeyBankModule_io_write_key_15)
  );
  AESDecModule EngineModule ( // @[Unit.scala 27:68]
    .clock(EngineModule_clock),
    .reset(EngineModule_reset),
    .io_input_ready(EngineModule_io_input_ready),
    .io_input_valid(EngineModule_io_input_valid),
    .io_input_bits_state_0(EngineModule_io_input_bits_state_0),
    .io_input_bits_state_1(EngineModule_io_input_bits_state_1),
    .io_input_bits_state_2(EngineModule_io_input_bits_state_2),
    .io_input_bits_state_3(EngineModule_io_input_bits_state_3),
    .io_input_bits_state_4(EngineModule_io_input_bits_state_4),
    .io_input_bits_state_5(EngineModule_io_input_bits_state_5),
    .io_input_bits_state_6(EngineModule_io_input_bits_state_6),
    .io_input_bits_state_7(EngineModule_io_input_bits_state_7),
    .io_input_bits_state_8(EngineModule_io_input_bits_state_8),
    .io_input_bits_state_9(EngineModule_io_input_bits_state_9),
    .io_input_bits_state_10(EngineModule_io_input_bits_state_10),
    .io_input_bits_state_11(EngineModule_io_input_bits_state_11),
    .io_input_bits_state_12(EngineModule_io_input_bits_state_12),
    .io_input_bits_state_13(EngineModule_io_input_bits_state_13),
    .io_input_bits_state_14(EngineModule_io_input_bits_state_14),
    .io_input_bits_state_15(EngineModule_io_input_bits_state_15),
    .io_input_bits_control_isIdle(EngineModule_io_input_bits_control_isIdle),
    .io_input_bits_control_taskID(EngineModule_io_input_bits_control_taskID),
    .io_input_bits_control_rounds(EngineModule_io_input_bits_control_rounds),
    .io_round_key_0(EngineModule_io_round_key_0),
    .io_round_key_1(EngineModule_io_round_key_1),
    .io_round_key_2(EngineModule_io_round_key_2),
    .io_round_key_3(EngineModule_io_round_key_3),
    .io_round_key_4(EngineModule_io_round_key_4),
    .io_round_key_5(EngineModule_io_round_key_5),
    .io_round_key_6(EngineModule_io_round_key_6),
    .io_round_key_7(EngineModule_io_round_key_7),
    .io_round_key_8(EngineModule_io_round_key_8),
    .io_round_key_9(EngineModule_io_round_key_9),
    .io_round_key_10(EngineModule_io_round_key_10),
    .io_round_key_11(EngineModule_io_round_key_11),
    .io_round_key_12(EngineModule_io_round_key_12),
    .io_round_key_13(EngineModule_io_round_key_13),
    .io_round_key_14(EngineModule_io_round_key_14),
    .io_round_key_15(EngineModule_io_round_key_15),
    .io_output_state_valid(EngineModule_io_output_state_valid),
    .io_output_state_bits_0(EngineModule_io_output_state_bits_0),
    .io_output_state_bits_1(EngineModule_io_output_state_bits_1),
    .io_output_state_bits_2(EngineModule_io_output_state_bits_2),
    .io_output_state_bits_3(EngineModule_io_output_state_bits_3),
    .io_output_state_bits_4(EngineModule_io_output_state_bits_4),
    .io_output_state_bits_5(EngineModule_io_output_state_bits_5),
    .io_output_state_bits_6(EngineModule_io_output_state_bits_6),
    .io_output_state_bits_7(EngineModule_io_output_state_bits_7),
    .io_output_state_bits_8(EngineModule_io_output_state_bits_8),
    .io_output_state_bits_9(EngineModule_io_output_state_bits_9),
    .io_output_state_bits_10(EngineModule_io_output_state_bits_10),
    .io_output_state_bits_11(EngineModule_io_output_state_bits_11),
    .io_output_state_bits_12(EngineModule_io_output_state_bits_12),
    .io_output_state_bits_13(EngineModule_io_output_state_bits_13),
    .io_output_state_bits_14(EngineModule_io_output_state_bits_14),
    .io_output_state_bits_15(EngineModule_io_output_state_bits_15),
    .io_read_task(EngineModule_io_read_task),
    .io_read_round(EngineModule_io_read_round),
    .io_complete_taskID(EngineModule_io_complete_taskID)
  );
  RRArbiter_1 InArbiter ( // @[Unit.scala 29:25]
    .clock(InArbiter_clock),
    .io_in_0_ready(InArbiter_io_in_0_ready),
    .io_in_0_valid(InArbiter_io_in_0_valid),
    .io_in_0_bits_state_0(InArbiter_io_in_0_bits_state_0),
    .io_in_0_bits_state_1(InArbiter_io_in_0_bits_state_1),
    .io_in_0_bits_state_2(InArbiter_io_in_0_bits_state_2),
    .io_in_0_bits_state_3(InArbiter_io_in_0_bits_state_3),
    .io_in_0_bits_state_4(InArbiter_io_in_0_bits_state_4),
    .io_in_0_bits_state_5(InArbiter_io_in_0_bits_state_5),
    .io_in_0_bits_state_6(InArbiter_io_in_0_bits_state_6),
    .io_in_0_bits_state_7(InArbiter_io_in_0_bits_state_7),
    .io_in_0_bits_state_8(InArbiter_io_in_0_bits_state_8),
    .io_in_0_bits_state_9(InArbiter_io_in_0_bits_state_9),
    .io_in_0_bits_state_10(InArbiter_io_in_0_bits_state_10),
    .io_in_0_bits_state_11(InArbiter_io_in_0_bits_state_11),
    .io_in_0_bits_state_12(InArbiter_io_in_0_bits_state_12),
    .io_in_0_bits_state_13(InArbiter_io_in_0_bits_state_13),
    .io_in_0_bits_state_14(InArbiter_io_in_0_bits_state_14),
    .io_in_0_bits_state_15(InArbiter_io_in_0_bits_state_15),
    .io_in_0_bits_control_isIdle(InArbiter_io_in_0_bits_control_isIdle),
    .io_in_0_bits_control_taskID(InArbiter_io_in_0_bits_control_taskID),
    .io_in_0_bits_control_rounds(InArbiter_io_in_0_bits_control_rounds),
    .io_in_1_ready(InArbiter_io_in_1_ready),
    .io_in_1_valid(InArbiter_io_in_1_valid),
    .io_in_1_bits_state_0(InArbiter_io_in_1_bits_state_0),
    .io_in_1_bits_state_1(InArbiter_io_in_1_bits_state_1),
    .io_in_1_bits_state_2(InArbiter_io_in_1_bits_state_2),
    .io_in_1_bits_state_3(InArbiter_io_in_1_bits_state_3),
    .io_in_1_bits_state_4(InArbiter_io_in_1_bits_state_4),
    .io_in_1_bits_state_5(InArbiter_io_in_1_bits_state_5),
    .io_in_1_bits_state_6(InArbiter_io_in_1_bits_state_6),
    .io_in_1_bits_state_7(InArbiter_io_in_1_bits_state_7),
    .io_in_1_bits_state_8(InArbiter_io_in_1_bits_state_8),
    .io_in_1_bits_state_9(InArbiter_io_in_1_bits_state_9),
    .io_in_1_bits_state_10(InArbiter_io_in_1_bits_state_10),
    .io_in_1_bits_state_11(InArbiter_io_in_1_bits_state_11),
    .io_in_1_bits_state_12(InArbiter_io_in_1_bits_state_12),
    .io_in_1_bits_state_13(InArbiter_io_in_1_bits_state_13),
    .io_in_1_bits_state_14(InArbiter_io_in_1_bits_state_14),
    .io_in_1_bits_state_15(InArbiter_io_in_1_bits_state_15),
    .io_in_1_bits_control_isIdle(InArbiter_io_in_1_bits_control_isIdle),
    .io_in_1_bits_control_taskID(InArbiter_io_in_1_bits_control_taskID),
    .io_in_1_bits_control_rounds(InArbiter_io_in_1_bits_control_rounds),
    .io_in_2_ready(InArbiter_io_in_2_ready),
    .io_in_2_valid(InArbiter_io_in_2_valid),
    .io_in_2_bits_state_0(InArbiter_io_in_2_bits_state_0),
    .io_in_2_bits_state_1(InArbiter_io_in_2_bits_state_1),
    .io_in_2_bits_state_2(InArbiter_io_in_2_bits_state_2),
    .io_in_2_bits_state_3(InArbiter_io_in_2_bits_state_3),
    .io_in_2_bits_state_4(InArbiter_io_in_2_bits_state_4),
    .io_in_2_bits_state_5(InArbiter_io_in_2_bits_state_5),
    .io_in_2_bits_state_6(InArbiter_io_in_2_bits_state_6),
    .io_in_2_bits_state_7(InArbiter_io_in_2_bits_state_7),
    .io_in_2_bits_state_8(InArbiter_io_in_2_bits_state_8),
    .io_in_2_bits_state_9(InArbiter_io_in_2_bits_state_9),
    .io_in_2_bits_state_10(InArbiter_io_in_2_bits_state_10),
    .io_in_2_bits_state_11(InArbiter_io_in_2_bits_state_11),
    .io_in_2_bits_state_12(InArbiter_io_in_2_bits_state_12),
    .io_in_2_bits_state_13(InArbiter_io_in_2_bits_state_13),
    .io_in_2_bits_state_14(InArbiter_io_in_2_bits_state_14),
    .io_in_2_bits_state_15(InArbiter_io_in_2_bits_state_15),
    .io_in_2_bits_control_isIdle(InArbiter_io_in_2_bits_control_isIdle),
    .io_in_2_bits_control_taskID(InArbiter_io_in_2_bits_control_taskID),
    .io_in_2_bits_control_rounds(InArbiter_io_in_2_bits_control_rounds),
    .io_in_3_ready(InArbiter_io_in_3_ready),
    .io_in_3_valid(InArbiter_io_in_3_valid),
    .io_in_3_bits_state_0(InArbiter_io_in_3_bits_state_0),
    .io_in_3_bits_state_1(InArbiter_io_in_3_bits_state_1),
    .io_in_3_bits_state_2(InArbiter_io_in_3_bits_state_2),
    .io_in_3_bits_state_3(InArbiter_io_in_3_bits_state_3),
    .io_in_3_bits_state_4(InArbiter_io_in_3_bits_state_4),
    .io_in_3_bits_state_5(InArbiter_io_in_3_bits_state_5),
    .io_in_3_bits_state_6(InArbiter_io_in_3_bits_state_6),
    .io_in_3_bits_state_7(InArbiter_io_in_3_bits_state_7),
    .io_in_3_bits_state_8(InArbiter_io_in_3_bits_state_8),
    .io_in_3_bits_state_9(InArbiter_io_in_3_bits_state_9),
    .io_in_3_bits_state_10(InArbiter_io_in_3_bits_state_10),
    .io_in_3_bits_state_11(InArbiter_io_in_3_bits_state_11),
    .io_in_3_bits_state_12(InArbiter_io_in_3_bits_state_12),
    .io_in_3_bits_state_13(InArbiter_io_in_3_bits_state_13),
    .io_in_3_bits_state_14(InArbiter_io_in_3_bits_state_14),
    .io_in_3_bits_state_15(InArbiter_io_in_3_bits_state_15),
    .io_in_3_bits_control_isIdle(InArbiter_io_in_3_bits_control_isIdle),
    .io_in_3_bits_control_taskID(InArbiter_io_in_3_bits_control_taskID),
    .io_in_3_bits_control_rounds(InArbiter_io_in_3_bits_control_rounds),
    .io_out_ready(InArbiter_io_out_ready),
    .io_out_valid(InArbiter_io_out_valid),
    .io_out_bits_state_0(InArbiter_io_out_bits_state_0),
    .io_out_bits_state_1(InArbiter_io_out_bits_state_1),
    .io_out_bits_state_2(InArbiter_io_out_bits_state_2),
    .io_out_bits_state_3(InArbiter_io_out_bits_state_3),
    .io_out_bits_state_4(InArbiter_io_out_bits_state_4),
    .io_out_bits_state_5(InArbiter_io_out_bits_state_5),
    .io_out_bits_state_6(InArbiter_io_out_bits_state_6),
    .io_out_bits_state_7(InArbiter_io_out_bits_state_7),
    .io_out_bits_state_8(InArbiter_io_out_bits_state_8),
    .io_out_bits_state_9(InArbiter_io_out_bits_state_9),
    .io_out_bits_state_10(InArbiter_io_out_bits_state_10),
    .io_out_bits_state_11(InArbiter_io_out_bits_state_11),
    .io_out_bits_state_12(InArbiter_io_out_bits_state_12),
    .io_out_bits_state_13(InArbiter_io_out_bits_state_13),
    .io_out_bits_state_14(InArbiter_io_out_bits_state_14),
    .io_out_bits_state_15(InArbiter_io_out_bits_state_15),
    .io_out_bits_control_isIdle(InArbiter_io_out_bits_control_isIdle),
    .io_out_bits_control_taskID(InArbiter_io_out_bits_control_taskID),
    .io_out_bits_control_rounds(InArbiter_io_out_bits_control_rounds),
    .io_chosen(InArbiter_io_chosen)
  );
  RRArbiter OutArbiter ( // @[Unit.scala 30:26]
    .clock(OutArbiter_clock),
    .io_in_0_ready(OutArbiter_io_in_0_ready),
    .io_in_0_valid(OutArbiter_io_in_0_valid),
    .io_in_0_bits_0(OutArbiter_io_in_0_bits_0),
    .io_in_0_bits_1(OutArbiter_io_in_0_bits_1),
    .io_in_0_bits_2(OutArbiter_io_in_0_bits_2),
    .io_in_0_bits_3(OutArbiter_io_in_0_bits_3),
    .io_in_0_bits_4(OutArbiter_io_in_0_bits_4),
    .io_in_0_bits_5(OutArbiter_io_in_0_bits_5),
    .io_in_0_bits_6(OutArbiter_io_in_0_bits_6),
    .io_in_0_bits_7(OutArbiter_io_in_0_bits_7),
    .io_in_0_bits_8(OutArbiter_io_in_0_bits_8),
    .io_in_0_bits_9(OutArbiter_io_in_0_bits_9),
    .io_in_0_bits_10(OutArbiter_io_in_0_bits_10),
    .io_in_0_bits_11(OutArbiter_io_in_0_bits_11),
    .io_in_0_bits_12(OutArbiter_io_in_0_bits_12),
    .io_in_0_bits_13(OutArbiter_io_in_0_bits_13),
    .io_in_0_bits_14(OutArbiter_io_in_0_bits_14),
    .io_in_0_bits_15(OutArbiter_io_in_0_bits_15),
    .io_in_1_ready(OutArbiter_io_in_1_ready),
    .io_in_1_valid(OutArbiter_io_in_1_valid),
    .io_in_1_bits_0(OutArbiter_io_in_1_bits_0),
    .io_in_1_bits_1(OutArbiter_io_in_1_bits_1),
    .io_in_1_bits_2(OutArbiter_io_in_1_bits_2),
    .io_in_1_bits_3(OutArbiter_io_in_1_bits_3),
    .io_in_1_bits_4(OutArbiter_io_in_1_bits_4),
    .io_in_1_bits_5(OutArbiter_io_in_1_bits_5),
    .io_in_1_bits_6(OutArbiter_io_in_1_bits_6),
    .io_in_1_bits_7(OutArbiter_io_in_1_bits_7),
    .io_in_1_bits_8(OutArbiter_io_in_1_bits_8),
    .io_in_1_bits_9(OutArbiter_io_in_1_bits_9),
    .io_in_1_bits_10(OutArbiter_io_in_1_bits_10),
    .io_in_1_bits_11(OutArbiter_io_in_1_bits_11),
    .io_in_1_bits_12(OutArbiter_io_in_1_bits_12),
    .io_in_1_bits_13(OutArbiter_io_in_1_bits_13),
    .io_in_1_bits_14(OutArbiter_io_in_1_bits_14),
    .io_in_1_bits_15(OutArbiter_io_in_1_bits_15),
    .io_in_2_ready(OutArbiter_io_in_2_ready),
    .io_in_2_valid(OutArbiter_io_in_2_valid),
    .io_in_2_bits_0(OutArbiter_io_in_2_bits_0),
    .io_in_2_bits_1(OutArbiter_io_in_2_bits_1),
    .io_in_2_bits_2(OutArbiter_io_in_2_bits_2),
    .io_in_2_bits_3(OutArbiter_io_in_2_bits_3),
    .io_in_2_bits_4(OutArbiter_io_in_2_bits_4),
    .io_in_2_bits_5(OutArbiter_io_in_2_bits_5),
    .io_in_2_bits_6(OutArbiter_io_in_2_bits_6),
    .io_in_2_bits_7(OutArbiter_io_in_2_bits_7),
    .io_in_2_bits_8(OutArbiter_io_in_2_bits_8),
    .io_in_2_bits_9(OutArbiter_io_in_2_bits_9),
    .io_in_2_bits_10(OutArbiter_io_in_2_bits_10),
    .io_in_2_bits_11(OutArbiter_io_in_2_bits_11),
    .io_in_2_bits_12(OutArbiter_io_in_2_bits_12),
    .io_in_2_bits_13(OutArbiter_io_in_2_bits_13),
    .io_in_2_bits_14(OutArbiter_io_in_2_bits_14),
    .io_in_2_bits_15(OutArbiter_io_in_2_bits_15),
    .io_in_3_ready(OutArbiter_io_in_3_ready),
    .io_in_3_valid(OutArbiter_io_in_3_valid),
    .io_in_3_bits_0(OutArbiter_io_in_3_bits_0),
    .io_in_3_bits_1(OutArbiter_io_in_3_bits_1),
    .io_in_3_bits_2(OutArbiter_io_in_3_bits_2),
    .io_in_3_bits_3(OutArbiter_io_in_3_bits_3),
    .io_in_3_bits_4(OutArbiter_io_in_3_bits_4),
    .io_in_3_bits_5(OutArbiter_io_in_3_bits_5),
    .io_in_3_bits_6(OutArbiter_io_in_3_bits_6),
    .io_in_3_bits_7(OutArbiter_io_in_3_bits_7),
    .io_in_3_bits_8(OutArbiter_io_in_3_bits_8),
    .io_in_3_bits_9(OutArbiter_io_in_3_bits_9),
    .io_in_3_bits_10(OutArbiter_io_in_3_bits_10),
    .io_in_3_bits_11(OutArbiter_io_in_3_bits_11),
    .io_in_3_bits_12(OutArbiter_io_in_3_bits_12),
    .io_in_3_bits_13(OutArbiter_io_in_3_bits_13),
    .io_in_3_bits_14(OutArbiter_io_in_3_bits_14),
    .io_in_3_bits_15(OutArbiter_io_in_3_bits_15),
    .io_out_ready(OutArbiter_io_out_ready),
    .io_out_valid(OutArbiter_io_out_valid),
    .io_out_bits_0(OutArbiter_io_out_bits_0),
    .io_out_bits_1(OutArbiter_io_out_bits_1),
    .io_out_bits_2(OutArbiter_io_out_bits_2),
    .io_out_bits_3(OutArbiter_io_out_bits_3),
    .io_out_bits_4(OutArbiter_io_out_bits_4),
    .io_out_bits_5(OutArbiter_io_out_bits_5),
    .io_out_bits_6(OutArbiter_io_out_bits_6),
    .io_out_bits_7(OutArbiter_io_out_bits_7),
    .io_out_bits_8(OutArbiter_io_out_bits_8),
    .io_out_bits_9(OutArbiter_io_out_bits_9),
    .io_out_bits_10(OutArbiter_io_out_bits_10),
    .io_out_bits_11(OutArbiter_io_out_bits_11),
    .io_out_bits_12(OutArbiter_io_out_bits_12),
    .io_out_bits_13(OutArbiter_io_out_bits_13),
    .io_out_bits_14(OutArbiter_io_out_bits_14),
    .io_out_bits_15(OutArbiter_io_out_bits_15),
    .io_chosen(OutArbiter_io_chosen)
  );
  assign io_input_ready = ~_GEN_3; // @[Unit.scala 32:21]
  assign io_output_valid = OutArbiter_io_out_valid; // @[Unit.scala 73:13]
  assign io_output_bits_0 = OutArbiter_io_out_bits_0; // @[Unit.scala 73:13]
  assign io_output_bits_1 = OutArbiter_io_out_bits_1; // @[Unit.scala 73:13]
  assign io_output_bits_2 = OutArbiter_io_out_bits_2; // @[Unit.scala 73:13]
  assign io_output_bits_3 = OutArbiter_io_out_bits_3; // @[Unit.scala 73:13]
  assign io_output_bits_4 = OutArbiter_io_out_bits_4; // @[Unit.scala 73:13]
  assign io_output_bits_5 = OutArbiter_io_out_bits_5; // @[Unit.scala 73:13]
  assign io_output_bits_6 = OutArbiter_io_out_bits_6; // @[Unit.scala 73:13]
  assign io_output_bits_7 = OutArbiter_io_out_bits_7; // @[Unit.scala 73:13]
  assign io_output_bits_8 = OutArbiter_io_out_bits_8; // @[Unit.scala 73:13]
  assign io_output_bits_9 = OutArbiter_io_out_bits_9; // @[Unit.scala 73:13]
  assign io_output_bits_10 = OutArbiter_io_out_bits_10; // @[Unit.scala 73:13]
  assign io_output_bits_11 = OutArbiter_io_out_bits_11; // @[Unit.scala 73:13]
  assign io_output_bits_12 = OutArbiter_io_out_bits_12; // @[Unit.scala 73:13]
  assign io_output_bits_13 = OutArbiter_io_out_bits_13; // @[Unit.scala 73:13]
  assign io_output_bits_14 = OutArbiter_io_out_bits_14; // @[Unit.scala 73:13]
  assign io_output_bits_15 = OutArbiter_io_out_bits_15; // @[Unit.scala 73:13]
  assign io_output_task = OutArbiter_io_chosen; // @[Unit.scala 74:18]
  assign KeyBankModule_clock = clock;
  assign KeyBankModule_io_read_task = EngineModule_io_read_task; // @[Unit.scala 63:30]
  assign KeyBankModule_io_read_round = EngineModule_io_read_round; // @[Unit.scala 64:31]
  assign KeyBankModule_io_write_en = io_write_en; // @[Unit.scala 68:29]
  assign KeyBankModule_io_write_task = io_write_task; // @[Unit.scala 69:31]
  assign KeyBankModule_io_write_round = io_write_round; // @[Unit.scala 70:32]
  assign KeyBankModule_io_write_key_0 = io_write_key_0; // @[Unit.scala 71:30]
  assign KeyBankModule_io_write_key_1 = io_write_key_1; // @[Unit.scala 71:30]
  assign KeyBankModule_io_write_key_2 = io_write_key_2; // @[Unit.scala 71:30]
  assign KeyBankModule_io_write_key_3 = io_write_key_3; // @[Unit.scala 71:30]
  assign KeyBankModule_io_write_key_4 = io_write_key_4; // @[Unit.scala 71:30]
  assign KeyBankModule_io_write_key_5 = io_write_key_5; // @[Unit.scala 71:30]
  assign KeyBankModule_io_write_key_6 = io_write_key_6; // @[Unit.scala 71:30]
  assign KeyBankModule_io_write_key_7 = io_write_key_7; // @[Unit.scala 71:30]
  assign KeyBankModule_io_write_key_8 = io_write_key_8; // @[Unit.scala 71:30]
  assign KeyBankModule_io_write_key_9 = io_write_key_9; // @[Unit.scala 71:30]
  assign KeyBankModule_io_write_key_10 = io_write_key_10; // @[Unit.scala 71:30]
  assign KeyBankModule_io_write_key_11 = io_write_key_11; // @[Unit.scala 71:30]
  assign KeyBankModule_io_write_key_12 = io_write_key_12; // @[Unit.scala 71:30]
  assign KeyBankModule_io_write_key_13 = io_write_key_13; // @[Unit.scala 71:30]
  assign KeyBankModule_io_write_key_14 = io_write_key_14; // @[Unit.scala 71:30]
  assign KeyBankModule_io_write_key_15 = io_write_key_15; // @[Unit.scala 71:30]
  assign EngineModule_clock = clock;
  assign EngineModule_reset = reset;
  assign EngineModule_io_input_valid = InArbiter_io_out_valid; // @[Unit.scala 55:25]
  assign EngineModule_io_input_bits_state_0 = InArbiter_io_out_bits_state_0; // @[Unit.scala 55:25]
  assign EngineModule_io_input_bits_state_1 = InArbiter_io_out_bits_state_1; // @[Unit.scala 55:25]
  assign EngineModule_io_input_bits_state_2 = InArbiter_io_out_bits_state_2; // @[Unit.scala 55:25]
  assign EngineModule_io_input_bits_state_3 = InArbiter_io_out_bits_state_3; // @[Unit.scala 55:25]
  assign EngineModule_io_input_bits_state_4 = InArbiter_io_out_bits_state_4; // @[Unit.scala 55:25]
  assign EngineModule_io_input_bits_state_5 = InArbiter_io_out_bits_state_5; // @[Unit.scala 55:25]
  assign EngineModule_io_input_bits_state_6 = InArbiter_io_out_bits_state_6; // @[Unit.scala 55:25]
  assign EngineModule_io_input_bits_state_7 = InArbiter_io_out_bits_state_7; // @[Unit.scala 55:25]
  assign EngineModule_io_input_bits_state_8 = InArbiter_io_out_bits_state_8; // @[Unit.scala 55:25]
  assign EngineModule_io_input_bits_state_9 = InArbiter_io_out_bits_state_9; // @[Unit.scala 55:25]
  assign EngineModule_io_input_bits_state_10 = InArbiter_io_out_bits_state_10; // @[Unit.scala 55:25]
  assign EngineModule_io_input_bits_state_11 = InArbiter_io_out_bits_state_11; // @[Unit.scala 55:25]
  assign EngineModule_io_input_bits_state_12 = InArbiter_io_out_bits_state_12; // @[Unit.scala 55:25]
  assign EngineModule_io_input_bits_state_13 = InArbiter_io_out_bits_state_13; // @[Unit.scala 55:25]
  assign EngineModule_io_input_bits_state_14 = InArbiter_io_out_bits_state_14; // @[Unit.scala 55:25]
  assign EngineModule_io_input_bits_state_15 = InArbiter_io_out_bits_state_15; // @[Unit.scala 55:25]
  assign EngineModule_io_input_bits_control_isIdle = InArbiter_io_out_bits_control_isIdle; // @[Unit.scala 55:25]
  assign EngineModule_io_input_bits_control_taskID = InArbiter_io_out_bits_control_taskID; // @[Unit.scala 55:25]
  assign EngineModule_io_input_bits_control_rounds = InArbiter_io_out_bits_control_rounds; // @[Unit.scala 55:25]
  assign EngineModule_io_round_key_0 = KeyBankModule_io_read_key_0; // @[Unit.scala 65:29]
  assign EngineModule_io_round_key_1 = KeyBankModule_io_read_key_1; // @[Unit.scala 65:29]
  assign EngineModule_io_round_key_2 = KeyBankModule_io_read_key_2; // @[Unit.scala 65:29]
  assign EngineModule_io_round_key_3 = KeyBankModule_io_read_key_3; // @[Unit.scala 65:29]
  assign EngineModule_io_round_key_4 = KeyBankModule_io_read_key_4; // @[Unit.scala 65:29]
  assign EngineModule_io_round_key_5 = KeyBankModule_io_read_key_5; // @[Unit.scala 65:29]
  assign EngineModule_io_round_key_6 = KeyBankModule_io_read_key_6; // @[Unit.scala 65:29]
  assign EngineModule_io_round_key_7 = KeyBankModule_io_read_key_7; // @[Unit.scala 65:29]
  assign EngineModule_io_round_key_8 = KeyBankModule_io_read_key_8; // @[Unit.scala 65:29]
  assign EngineModule_io_round_key_9 = KeyBankModule_io_read_key_9; // @[Unit.scala 65:29]
  assign EngineModule_io_round_key_10 = KeyBankModule_io_read_key_10; // @[Unit.scala 65:29]
  assign EngineModule_io_round_key_11 = KeyBankModule_io_read_key_11; // @[Unit.scala 65:29]
  assign EngineModule_io_round_key_12 = KeyBankModule_io_read_key_12; // @[Unit.scala 65:29]
  assign EngineModule_io_round_key_13 = KeyBankModule_io_read_key_13; // @[Unit.scala 65:29]
  assign EngineModule_io_round_key_14 = KeyBankModule_io_read_key_14; // @[Unit.scala 65:29]
  assign EngineModule_io_round_key_15 = KeyBankModule_io_read_key_15; // @[Unit.scala 65:29]
  assign InArbiter_clock = clock;
  assign InArbiter_io_in_0_valid = Active_0; // @[Unit.scala 43:33]
  assign InArbiter_io_in_0_bits_state_0 = InPara_0_state_0; // @[Unit.scala 42:32]
  assign InArbiter_io_in_0_bits_state_1 = InPara_0_state_1; // @[Unit.scala 42:32]
  assign InArbiter_io_in_0_bits_state_2 = InPara_0_state_2; // @[Unit.scala 42:32]
  assign InArbiter_io_in_0_bits_state_3 = InPara_0_state_3; // @[Unit.scala 42:32]
  assign InArbiter_io_in_0_bits_state_4 = InPara_0_state_4; // @[Unit.scala 42:32]
  assign InArbiter_io_in_0_bits_state_5 = InPara_0_state_5; // @[Unit.scala 42:32]
  assign InArbiter_io_in_0_bits_state_6 = InPara_0_state_6; // @[Unit.scala 42:32]
  assign InArbiter_io_in_0_bits_state_7 = InPara_0_state_7; // @[Unit.scala 42:32]
  assign InArbiter_io_in_0_bits_state_8 = InPara_0_state_8; // @[Unit.scala 42:32]
  assign InArbiter_io_in_0_bits_state_9 = InPara_0_state_9; // @[Unit.scala 42:32]
  assign InArbiter_io_in_0_bits_state_10 = InPara_0_state_10; // @[Unit.scala 42:32]
  assign InArbiter_io_in_0_bits_state_11 = InPara_0_state_11; // @[Unit.scala 42:32]
  assign InArbiter_io_in_0_bits_state_12 = InPara_0_state_12; // @[Unit.scala 42:32]
  assign InArbiter_io_in_0_bits_state_13 = InPara_0_state_13; // @[Unit.scala 42:32]
  assign InArbiter_io_in_0_bits_state_14 = InPara_0_state_14; // @[Unit.scala 42:32]
  assign InArbiter_io_in_0_bits_state_15 = InPara_0_state_15; // @[Unit.scala 42:32]
  assign InArbiter_io_in_0_bits_control_isIdle = InPara_0_control_isIdle; // @[Unit.scala 42:32]
  assign InArbiter_io_in_0_bits_control_taskID = InPara_0_control_taskID; // @[Unit.scala 42:32]
  assign InArbiter_io_in_0_bits_control_rounds = InPara_0_control_rounds; // @[Unit.scala 42:32]
  assign InArbiter_io_in_1_valid = Active_1; // @[Unit.scala 43:33]
  assign InArbiter_io_in_1_bits_state_0 = InPara_1_state_0; // @[Unit.scala 42:32]
  assign InArbiter_io_in_1_bits_state_1 = InPara_1_state_1; // @[Unit.scala 42:32]
  assign InArbiter_io_in_1_bits_state_2 = InPara_1_state_2; // @[Unit.scala 42:32]
  assign InArbiter_io_in_1_bits_state_3 = InPara_1_state_3; // @[Unit.scala 42:32]
  assign InArbiter_io_in_1_bits_state_4 = InPara_1_state_4; // @[Unit.scala 42:32]
  assign InArbiter_io_in_1_bits_state_5 = InPara_1_state_5; // @[Unit.scala 42:32]
  assign InArbiter_io_in_1_bits_state_6 = InPara_1_state_6; // @[Unit.scala 42:32]
  assign InArbiter_io_in_1_bits_state_7 = InPara_1_state_7; // @[Unit.scala 42:32]
  assign InArbiter_io_in_1_bits_state_8 = InPara_1_state_8; // @[Unit.scala 42:32]
  assign InArbiter_io_in_1_bits_state_9 = InPara_1_state_9; // @[Unit.scala 42:32]
  assign InArbiter_io_in_1_bits_state_10 = InPara_1_state_10; // @[Unit.scala 42:32]
  assign InArbiter_io_in_1_bits_state_11 = InPara_1_state_11; // @[Unit.scala 42:32]
  assign InArbiter_io_in_1_bits_state_12 = InPara_1_state_12; // @[Unit.scala 42:32]
  assign InArbiter_io_in_1_bits_state_13 = InPara_1_state_13; // @[Unit.scala 42:32]
  assign InArbiter_io_in_1_bits_state_14 = InPara_1_state_14; // @[Unit.scala 42:32]
  assign InArbiter_io_in_1_bits_state_15 = InPara_1_state_15; // @[Unit.scala 42:32]
  assign InArbiter_io_in_1_bits_control_isIdle = InPara_1_control_isIdle; // @[Unit.scala 42:32]
  assign InArbiter_io_in_1_bits_control_taskID = InPara_1_control_taskID; // @[Unit.scala 42:32]
  assign InArbiter_io_in_1_bits_control_rounds = InPara_1_control_rounds; // @[Unit.scala 42:32]
  assign InArbiter_io_in_2_valid = Active_2; // @[Unit.scala 43:33]
  assign InArbiter_io_in_2_bits_state_0 = InPara_2_state_0; // @[Unit.scala 42:32]
  assign InArbiter_io_in_2_bits_state_1 = InPara_2_state_1; // @[Unit.scala 42:32]
  assign InArbiter_io_in_2_bits_state_2 = InPara_2_state_2; // @[Unit.scala 42:32]
  assign InArbiter_io_in_2_bits_state_3 = InPara_2_state_3; // @[Unit.scala 42:32]
  assign InArbiter_io_in_2_bits_state_4 = InPara_2_state_4; // @[Unit.scala 42:32]
  assign InArbiter_io_in_2_bits_state_5 = InPara_2_state_5; // @[Unit.scala 42:32]
  assign InArbiter_io_in_2_bits_state_6 = InPara_2_state_6; // @[Unit.scala 42:32]
  assign InArbiter_io_in_2_bits_state_7 = InPara_2_state_7; // @[Unit.scala 42:32]
  assign InArbiter_io_in_2_bits_state_8 = InPara_2_state_8; // @[Unit.scala 42:32]
  assign InArbiter_io_in_2_bits_state_9 = InPara_2_state_9; // @[Unit.scala 42:32]
  assign InArbiter_io_in_2_bits_state_10 = InPara_2_state_10; // @[Unit.scala 42:32]
  assign InArbiter_io_in_2_bits_state_11 = InPara_2_state_11; // @[Unit.scala 42:32]
  assign InArbiter_io_in_2_bits_state_12 = InPara_2_state_12; // @[Unit.scala 42:32]
  assign InArbiter_io_in_2_bits_state_13 = InPara_2_state_13; // @[Unit.scala 42:32]
  assign InArbiter_io_in_2_bits_state_14 = InPara_2_state_14; // @[Unit.scala 42:32]
  assign InArbiter_io_in_2_bits_state_15 = InPara_2_state_15; // @[Unit.scala 42:32]
  assign InArbiter_io_in_2_bits_control_isIdle = InPara_2_control_isIdle; // @[Unit.scala 42:32]
  assign InArbiter_io_in_2_bits_control_taskID = InPara_2_control_taskID; // @[Unit.scala 42:32]
  assign InArbiter_io_in_2_bits_control_rounds = InPara_2_control_rounds; // @[Unit.scala 42:32]
  assign InArbiter_io_in_3_valid = Active_3; // @[Unit.scala 43:33]
  assign InArbiter_io_in_3_bits_state_0 = InPara_3_state_0; // @[Unit.scala 42:32]
  assign InArbiter_io_in_3_bits_state_1 = InPara_3_state_1; // @[Unit.scala 42:32]
  assign InArbiter_io_in_3_bits_state_2 = InPara_3_state_2; // @[Unit.scala 42:32]
  assign InArbiter_io_in_3_bits_state_3 = InPara_3_state_3; // @[Unit.scala 42:32]
  assign InArbiter_io_in_3_bits_state_4 = InPara_3_state_4; // @[Unit.scala 42:32]
  assign InArbiter_io_in_3_bits_state_5 = InPara_3_state_5; // @[Unit.scala 42:32]
  assign InArbiter_io_in_3_bits_state_6 = InPara_3_state_6; // @[Unit.scala 42:32]
  assign InArbiter_io_in_3_bits_state_7 = InPara_3_state_7; // @[Unit.scala 42:32]
  assign InArbiter_io_in_3_bits_state_8 = InPara_3_state_8; // @[Unit.scala 42:32]
  assign InArbiter_io_in_3_bits_state_9 = InPara_3_state_9; // @[Unit.scala 42:32]
  assign InArbiter_io_in_3_bits_state_10 = InPara_3_state_10; // @[Unit.scala 42:32]
  assign InArbiter_io_in_3_bits_state_11 = InPara_3_state_11; // @[Unit.scala 42:32]
  assign InArbiter_io_in_3_bits_state_12 = InPara_3_state_12; // @[Unit.scala 42:32]
  assign InArbiter_io_in_3_bits_state_13 = InPara_3_state_13; // @[Unit.scala 42:32]
  assign InArbiter_io_in_3_bits_state_14 = InPara_3_state_14; // @[Unit.scala 42:32]
  assign InArbiter_io_in_3_bits_state_15 = InPara_3_state_15; // @[Unit.scala 42:32]
  assign InArbiter_io_in_3_bits_control_isIdle = InPara_3_control_isIdle; // @[Unit.scala 42:32]
  assign InArbiter_io_in_3_bits_control_taskID = InPara_3_control_taskID; // @[Unit.scala 42:32]
  assign InArbiter_io_in_3_bits_control_rounds = InPara_3_control_rounds; // @[Unit.scala 42:32]
  assign InArbiter_io_out_ready = EngineModule_io_input_ready; // @[Unit.scala 55:25]
  assign OutArbiter_clock = clock;
  assign OutArbiter_io_in_0_valid = Completed_0; // @[Unit.scala 45:34]
  assign OutArbiter_io_in_0_bits_0 = OutState_0_0; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_0_bits_1 = OutState_0_1; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_0_bits_2 = OutState_0_2; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_0_bits_3 = OutState_0_3; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_0_bits_4 = OutState_0_4; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_0_bits_5 = OutState_0_5; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_0_bits_6 = OutState_0_6; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_0_bits_7 = OutState_0_7; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_0_bits_8 = OutState_0_8; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_0_bits_9 = OutState_0_9; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_0_bits_10 = OutState_0_10; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_0_bits_11 = OutState_0_11; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_0_bits_12 = OutState_0_12; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_0_bits_13 = OutState_0_13; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_0_bits_14 = OutState_0_14; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_0_bits_15 = OutState_0_15; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_1_valid = Completed_1; // @[Unit.scala 45:34]
  assign OutArbiter_io_in_1_bits_0 = OutState_1_0; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_1_bits_1 = OutState_1_1; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_1_bits_2 = OutState_1_2; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_1_bits_3 = OutState_1_3; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_1_bits_4 = OutState_1_4; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_1_bits_5 = OutState_1_5; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_1_bits_6 = OutState_1_6; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_1_bits_7 = OutState_1_7; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_1_bits_8 = OutState_1_8; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_1_bits_9 = OutState_1_9; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_1_bits_10 = OutState_1_10; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_1_bits_11 = OutState_1_11; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_1_bits_12 = OutState_1_12; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_1_bits_13 = OutState_1_13; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_1_bits_14 = OutState_1_14; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_1_bits_15 = OutState_1_15; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_2_valid = Completed_2; // @[Unit.scala 45:34]
  assign OutArbiter_io_in_2_bits_0 = OutState_2_0; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_2_bits_1 = OutState_2_1; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_2_bits_2 = OutState_2_2; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_2_bits_3 = OutState_2_3; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_2_bits_4 = OutState_2_4; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_2_bits_5 = OutState_2_5; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_2_bits_6 = OutState_2_6; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_2_bits_7 = OutState_2_7; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_2_bits_8 = OutState_2_8; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_2_bits_9 = OutState_2_9; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_2_bits_10 = OutState_2_10; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_2_bits_11 = OutState_2_11; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_2_bits_12 = OutState_2_12; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_2_bits_13 = OutState_2_13; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_2_bits_14 = OutState_2_14; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_2_bits_15 = OutState_2_15; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_3_valid = Completed_3; // @[Unit.scala 45:34]
  assign OutArbiter_io_in_3_bits_0 = OutState_3_0; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_3_bits_1 = OutState_3_1; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_3_bits_2 = OutState_3_2; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_3_bits_3 = OutState_3_3; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_3_bits_4 = OutState_3_4; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_3_bits_5 = OutState_3_5; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_3_bits_6 = OutState_3_6; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_3_bits_7 = OutState_3_7; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_3_bits_8 = OutState_3_8; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_3_bits_9 = OutState_3_9; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_3_bits_10 = OutState_3_10; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_3_bits_11 = OutState_3_11; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_3_bits_12 = OutState_3_12; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_3_bits_13 = OutState_3_13; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_3_bits_14 = OutState_3_14; // @[Unit.scala 44:33]
  assign OutArbiter_io_in_3_bits_15 = OutState_3_15; // @[Unit.scala 44:33]
  assign OutArbiter_io_out_ready = io_output_ready; // @[Unit.scala 73:13]
  always @(posedge clock) begin
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h0 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_0_state_0 <= io_input_bits_state_0; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h0 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_0_state_1 <= io_input_bits_state_1; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h0 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_0_state_2 <= io_input_bits_state_2; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h0 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_0_state_3 <= io_input_bits_state_3; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h0 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_0_state_4 <= io_input_bits_state_4; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h0 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_0_state_5 <= io_input_bits_state_5; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h0 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_0_state_6 <= io_input_bits_state_6; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h0 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_0_state_7 <= io_input_bits_state_7; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h0 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_0_state_8 <= io_input_bits_state_8; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h0 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_0_state_9 <= io_input_bits_state_9; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h0 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_0_state_10 <= io_input_bits_state_10; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h0 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_0_state_11 <= io_input_bits_state_11; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h0 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_0_state_12 <= io_input_bits_state_12; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h0 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_0_state_13 <= io_input_bits_state_13; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h0 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_0_state_14 <= io_input_bits_state_14; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h0 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_0_state_15 <= io_input_bits_state_15; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h0 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_0_control_isIdle <= io_input_bits_control_isIdle; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h0 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_0_control_taskID <= io_input_bits_control_taskID; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h0 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_0_control_rounds <= io_input_bits_control_rounds; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h1 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_1_state_0 <= io_input_bits_state_0; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h1 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_1_state_1 <= io_input_bits_state_1; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h1 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_1_state_2 <= io_input_bits_state_2; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h1 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_1_state_3 <= io_input_bits_state_3; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h1 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_1_state_4 <= io_input_bits_state_4; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h1 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_1_state_5 <= io_input_bits_state_5; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h1 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_1_state_6 <= io_input_bits_state_6; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h1 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_1_state_7 <= io_input_bits_state_7; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h1 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_1_state_8 <= io_input_bits_state_8; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h1 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_1_state_9 <= io_input_bits_state_9; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h1 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_1_state_10 <= io_input_bits_state_10; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h1 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_1_state_11 <= io_input_bits_state_11; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h1 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_1_state_12 <= io_input_bits_state_12; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h1 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_1_state_13 <= io_input_bits_state_13; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h1 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_1_state_14 <= io_input_bits_state_14; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h1 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_1_state_15 <= io_input_bits_state_15; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h1 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_1_control_isIdle <= io_input_bits_control_isIdle; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h1 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_1_control_taskID <= io_input_bits_control_taskID; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h1 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_1_control_rounds <= io_input_bits_control_rounds; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h2 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_2_state_0 <= io_input_bits_state_0; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h2 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_2_state_1 <= io_input_bits_state_1; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h2 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_2_state_2 <= io_input_bits_state_2; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h2 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_2_state_3 <= io_input_bits_state_3; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h2 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_2_state_4 <= io_input_bits_state_4; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h2 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_2_state_5 <= io_input_bits_state_5; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h2 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_2_state_6 <= io_input_bits_state_6; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h2 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_2_state_7 <= io_input_bits_state_7; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h2 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_2_state_8 <= io_input_bits_state_8; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h2 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_2_state_9 <= io_input_bits_state_9; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h2 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_2_state_10 <= io_input_bits_state_10; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h2 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_2_state_11 <= io_input_bits_state_11; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h2 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_2_state_12 <= io_input_bits_state_12; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h2 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_2_state_13 <= io_input_bits_state_13; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h2 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_2_state_14 <= io_input_bits_state_14; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h2 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_2_state_15 <= io_input_bits_state_15; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h2 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_2_control_isIdle <= io_input_bits_control_isIdle; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h2 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_2_control_taskID <= io_input_bits_control_taskID; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h2 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_2_control_rounds <= io_input_bits_control_rounds; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h3 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_3_state_0 <= io_input_bits_state_0; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h3 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_3_state_1 <= io_input_bits_state_1; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h3 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_3_state_2 <= io_input_bits_state_2; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h3 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_3_state_3 <= io_input_bits_state_3; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h3 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_3_state_4 <= io_input_bits_state_4; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h3 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_3_state_5 <= io_input_bits_state_5; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h3 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_3_state_6 <= io_input_bits_state_6; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h3 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_3_state_7 <= io_input_bits_state_7; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h3 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_3_state_8 <= io_input_bits_state_8; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h3 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_3_state_9 <= io_input_bits_state_9; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h3 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_3_state_10 <= io_input_bits_state_10; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h3 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_3_state_11 <= io_input_bits_state_11; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h3 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_3_state_12 <= io_input_bits_state_12; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h3 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_3_state_13 <= io_input_bits_state_13; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h3 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_3_state_14 <= io_input_bits_state_14; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h3 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_3_state_15 <= io_input_bits_state_15; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h3 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_3_control_isIdle <= io_input_bits_control_isIdle; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h3 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_3_control_taskID <= io_input_bits_control_taskID; // @[Unit.scala 36:20]
      end
    end
    if (_T) begin // @[Unit.scala 34:23]
      if (2'h3 == io_input_bits_control_taskID) begin // @[Unit.scala 36:20]
        InPara_3_control_rounds <= io_input_bits_control_rounds; // @[Unit.scala 36:20]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h0 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_0_0 <= _OutState_EngineModule_io_complete_taskID_0; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h0 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_0_1 <= _OutState_EngineModule_io_complete_taskID_1; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h0 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_0_2 <= _OutState_EngineModule_io_complete_taskID_2; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h0 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_0_3 <= _OutState_EngineModule_io_complete_taskID_3; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h0 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_0_4 <= _OutState_EngineModule_io_complete_taskID_4; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h0 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_0_5 <= _OutState_EngineModule_io_complete_taskID_5; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h0 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_0_6 <= _OutState_EngineModule_io_complete_taskID_6; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h0 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_0_7 <= _OutState_EngineModule_io_complete_taskID_7; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h0 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_0_8 <= _OutState_EngineModule_io_complete_taskID_8; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h0 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_0_9 <= _OutState_EngineModule_io_complete_taskID_9; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h0 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_0_10 <= _OutState_EngineModule_io_complete_taskID_10; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h0 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_0_11 <= _OutState_EngineModule_io_complete_taskID_11; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h0 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_0_12 <= _OutState_EngineModule_io_complete_taskID_12; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h0 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_0_13 <= _OutState_EngineModule_io_complete_taskID_13; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h0 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_0_14 <= _OutState_EngineModule_io_complete_taskID_14; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h0 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_0_15 <= _OutState_EngineModule_io_complete_taskID_15; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h1 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_1_0 <= _OutState_EngineModule_io_complete_taskID_0; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h1 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_1_1 <= _OutState_EngineModule_io_complete_taskID_1; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h1 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_1_2 <= _OutState_EngineModule_io_complete_taskID_2; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h1 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_1_3 <= _OutState_EngineModule_io_complete_taskID_3; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h1 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_1_4 <= _OutState_EngineModule_io_complete_taskID_4; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h1 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_1_5 <= _OutState_EngineModule_io_complete_taskID_5; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h1 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_1_6 <= _OutState_EngineModule_io_complete_taskID_6; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h1 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_1_7 <= _OutState_EngineModule_io_complete_taskID_7; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h1 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_1_8 <= _OutState_EngineModule_io_complete_taskID_8; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h1 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_1_9 <= _OutState_EngineModule_io_complete_taskID_9; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h1 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_1_10 <= _OutState_EngineModule_io_complete_taskID_10; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h1 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_1_11 <= _OutState_EngineModule_io_complete_taskID_11; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h1 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_1_12 <= _OutState_EngineModule_io_complete_taskID_12; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h1 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_1_13 <= _OutState_EngineModule_io_complete_taskID_13; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h1 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_1_14 <= _OutState_EngineModule_io_complete_taskID_14; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h1 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_1_15 <= _OutState_EngineModule_io_complete_taskID_15; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h2 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_2_0 <= _OutState_EngineModule_io_complete_taskID_0; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h2 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_2_1 <= _OutState_EngineModule_io_complete_taskID_1; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h2 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_2_2 <= _OutState_EngineModule_io_complete_taskID_2; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h2 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_2_3 <= _OutState_EngineModule_io_complete_taskID_3; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h2 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_2_4 <= _OutState_EngineModule_io_complete_taskID_4; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h2 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_2_5 <= _OutState_EngineModule_io_complete_taskID_5; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h2 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_2_6 <= _OutState_EngineModule_io_complete_taskID_6; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h2 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_2_7 <= _OutState_EngineModule_io_complete_taskID_7; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h2 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_2_8 <= _OutState_EngineModule_io_complete_taskID_8; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h2 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_2_9 <= _OutState_EngineModule_io_complete_taskID_9; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h2 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_2_10 <= _OutState_EngineModule_io_complete_taskID_10; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h2 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_2_11 <= _OutState_EngineModule_io_complete_taskID_11; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h2 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_2_12 <= _OutState_EngineModule_io_complete_taskID_12; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h2 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_2_13 <= _OutState_EngineModule_io_complete_taskID_13; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h2 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_2_14 <= _OutState_EngineModule_io_complete_taskID_14; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h2 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_2_15 <= _OutState_EngineModule_io_complete_taskID_15; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h3 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_3_0 <= _OutState_EngineModule_io_complete_taskID_0; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h3 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_3_1 <= _OutState_EngineModule_io_complete_taskID_1; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h3 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_3_2 <= _OutState_EngineModule_io_complete_taskID_2; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h3 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_3_3 <= _OutState_EngineModule_io_complete_taskID_3; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h3 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_3_4 <= _OutState_EngineModule_io_complete_taskID_4; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h3 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_3_5 <= _OutState_EngineModule_io_complete_taskID_5; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h3 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_3_6 <= _OutState_EngineModule_io_complete_taskID_6; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h3 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_3_7 <= _OutState_EngineModule_io_complete_taskID_7; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h3 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_3_8 <= _OutState_EngineModule_io_complete_taskID_8; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h3 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_3_9 <= _OutState_EngineModule_io_complete_taskID_9; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h3 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_3_10 <= _OutState_EngineModule_io_complete_taskID_10; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h3 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_3_11 <= _OutState_EngineModule_io_complete_taskID_11; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h3 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_3_12 <= _OutState_EngineModule_io_complete_taskID_12; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h3 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_3_13 <= _OutState_EngineModule_io_complete_taskID_13; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h3 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_3_14 <= _OutState_EngineModule_io_complete_taskID_14; // @[Unit.scala 59:22]
      end
    end
    if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      if (2'h3 == EngineModule_io_complete_taskID) begin // @[Unit.scala 59:22]
        OutState_3_15 <= _OutState_EngineModule_io_complete_taskID_15; // @[Unit.scala 59:22]
      end
    end
    if (reset) begin // @[Unit.scala 22:23]
      Active_0 <= 1'h0; // @[Unit.scala 22:23]
    end else if (_T_1) begin // @[Unit.scala 46:38]
      Active_0 <= 1'h0; // @[Unit.scala 47:20]
    end else if (_T) begin // @[Unit.scala 34:23]
      Active_0 <= _GEN_84;
    end
    if (reset) begin // @[Unit.scala 22:23]
      Active_1 <= 1'h0; // @[Unit.scala 22:23]
    end else if (_T_3) begin // @[Unit.scala 46:38]
      Active_1 <= 1'h0; // @[Unit.scala 47:20]
    end else if (_T) begin // @[Unit.scala 34:23]
      Active_1 <= _GEN_85;
    end
    if (reset) begin // @[Unit.scala 22:23]
      Active_2 <= 1'h0; // @[Unit.scala 22:23]
    end else if (_T_5) begin // @[Unit.scala 46:38]
      Active_2 <= 1'h0; // @[Unit.scala 47:20]
    end else if (_T) begin // @[Unit.scala 34:23]
      Active_2 <= _GEN_86;
    end
    if (reset) begin // @[Unit.scala 22:23]
      Active_3 <= 1'h0; // @[Unit.scala 22:23]
    end else if (_T_7) begin // @[Unit.scala 46:38]
      Active_3 <= 1'h0; // @[Unit.scala 47:20]
    end else if (_T) begin // @[Unit.scala 34:23]
      Active_3 <= _GEN_87;
    end
    if (reset) begin // @[Unit.scala 23:21]
      Busy_0 <= 1'h0; // @[Unit.scala 23:21]
    end else if (_T_2) begin // @[Unit.scala 49:39]
      Busy_0 <= 1'h0; // @[Unit.scala 51:18]
    end else if (_T) begin // @[Unit.scala 34:23]
      Busy_0 <= _GEN_88;
    end
    if (reset) begin // @[Unit.scala 23:21]
      Busy_1 <= 1'h0; // @[Unit.scala 23:21]
    end else if (_T_4) begin // @[Unit.scala 49:39]
      Busy_1 <= 1'h0; // @[Unit.scala 51:18]
    end else if (_T) begin // @[Unit.scala 34:23]
      Busy_1 <= _GEN_89;
    end
    if (reset) begin // @[Unit.scala 23:21]
      Busy_2 <= 1'h0; // @[Unit.scala 23:21]
    end else if (_T_6) begin // @[Unit.scala 49:39]
      Busy_2 <= 1'h0; // @[Unit.scala 51:18]
    end else if (_T) begin // @[Unit.scala 34:23]
      Busy_2 <= _GEN_90;
    end
    if (reset) begin // @[Unit.scala 23:21]
      Busy_3 <= 1'h0; // @[Unit.scala 23:21]
    end else if (_T_8) begin // @[Unit.scala 49:39]
      Busy_3 <= 1'h0; // @[Unit.scala 51:18]
    end else if (_T) begin // @[Unit.scala 34:23]
      Busy_3 <= _GEN_91;
    end
    if (reset) begin // @[Unit.scala 24:26]
      Completed_0 <= 1'h0; // @[Unit.scala 24:26]
    end else if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      Completed_0 <= _GEN_256;
    end else if (_T_2) begin // @[Unit.scala 49:39]
      Completed_0 <= 1'h0; // @[Unit.scala 50:23]
    end
    if (reset) begin // @[Unit.scala 24:26]
      Completed_1 <= 1'h0; // @[Unit.scala 24:26]
    end else if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      Completed_1 <= _GEN_257;
    end else if (_T_4) begin // @[Unit.scala 49:39]
      Completed_1 <= 1'h0; // @[Unit.scala 50:23]
    end
    if (reset) begin // @[Unit.scala 24:26]
      Completed_2 <= 1'h0; // @[Unit.scala 24:26]
    end else if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      Completed_2 <= _GEN_258;
    end else if (_T_6) begin // @[Unit.scala 49:39]
      Completed_2 <= 1'h0; // @[Unit.scala 50:23]
    end
    if (reset) begin // @[Unit.scala 24:26]
      Completed_3 <= 1'h0; // @[Unit.scala 24:26]
    end else if (EngineModule_io_output_state_valid) begin // @[Unit.scala 57:43]
      Completed_3 <= _GEN_259;
    end else if (_T_8) begin // @[Unit.scala 49:39]
      Completed_3 <= 1'h0; // @[Unit.scala 50:23]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  InPara_0_state_0 = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  InPara_0_state_1 = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  InPara_0_state_2 = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  InPara_0_state_3 = _RAND_3[7:0];
  _RAND_4 = {1{`RANDOM}};
  InPara_0_state_4 = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  InPara_0_state_5 = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  InPara_0_state_6 = _RAND_6[7:0];
  _RAND_7 = {1{`RANDOM}};
  InPara_0_state_7 = _RAND_7[7:0];
  _RAND_8 = {1{`RANDOM}};
  InPara_0_state_8 = _RAND_8[7:0];
  _RAND_9 = {1{`RANDOM}};
  InPara_0_state_9 = _RAND_9[7:0];
  _RAND_10 = {1{`RANDOM}};
  InPara_0_state_10 = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  InPara_0_state_11 = _RAND_11[7:0];
  _RAND_12 = {1{`RANDOM}};
  InPara_0_state_12 = _RAND_12[7:0];
  _RAND_13 = {1{`RANDOM}};
  InPara_0_state_13 = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  InPara_0_state_14 = _RAND_14[7:0];
  _RAND_15 = {1{`RANDOM}};
  InPara_0_state_15 = _RAND_15[7:0];
  _RAND_16 = {1{`RANDOM}};
  InPara_0_control_isIdle = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  InPara_0_control_taskID = _RAND_17[1:0];
  _RAND_18 = {1{`RANDOM}};
  InPara_0_control_rounds = _RAND_18[3:0];
  _RAND_19 = {1{`RANDOM}};
  InPara_1_state_0 = _RAND_19[7:0];
  _RAND_20 = {1{`RANDOM}};
  InPara_1_state_1 = _RAND_20[7:0];
  _RAND_21 = {1{`RANDOM}};
  InPara_1_state_2 = _RAND_21[7:0];
  _RAND_22 = {1{`RANDOM}};
  InPara_1_state_3 = _RAND_22[7:0];
  _RAND_23 = {1{`RANDOM}};
  InPara_1_state_4 = _RAND_23[7:0];
  _RAND_24 = {1{`RANDOM}};
  InPara_1_state_5 = _RAND_24[7:0];
  _RAND_25 = {1{`RANDOM}};
  InPara_1_state_6 = _RAND_25[7:0];
  _RAND_26 = {1{`RANDOM}};
  InPara_1_state_7 = _RAND_26[7:0];
  _RAND_27 = {1{`RANDOM}};
  InPara_1_state_8 = _RAND_27[7:0];
  _RAND_28 = {1{`RANDOM}};
  InPara_1_state_9 = _RAND_28[7:0];
  _RAND_29 = {1{`RANDOM}};
  InPara_1_state_10 = _RAND_29[7:0];
  _RAND_30 = {1{`RANDOM}};
  InPara_1_state_11 = _RAND_30[7:0];
  _RAND_31 = {1{`RANDOM}};
  InPara_1_state_12 = _RAND_31[7:0];
  _RAND_32 = {1{`RANDOM}};
  InPara_1_state_13 = _RAND_32[7:0];
  _RAND_33 = {1{`RANDOM}};
  InPara_1_state_14 = _RAND_33[7:0];
  _RAND_34 = {1{`RANDOM}};
  InPara_1_state_15 = _RAND_34[7:0];
  _RAND_35 = {1{`RANDOM}};
  InPara_1_control_isIdle = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  InPara_1_control_taskID = _RAND_36[1:0];
  _RAND_37 = {1{`RANDOM}};
  InPara_1_control_rounds = _RAND_37[3:0];
  _RAND_38 = {1{`RANDOM}};
  InPara_2_state_0 = _RAND_38[7:0];
  _RAND_39 = {1{`RANDOM}};
  InPara_2_state_1 = _RAND_39[7:0];
  _RAND_40 = {1{`RANDOM}};
  InPara_2_state_2 = _RAND_40[7:0];
  _RAND_41 = {1{`RANDOM}};
  InPara_2_state_3 = _RAND_41[7:0];
  _RAND_42 = {1{`RANDOM}};
  InPara_2_state_4 = _RAND_42[7:0];
  _RAND_43 = {1{`RANDOM}};
  InPara_2_state_5 = _RAND_43[7:0];
  _RAND_44 = {1{`RANDOM}};
  InPara_2_state_6 = _RAND_44[7:0];
  _RAND_45 = {1{`RANDOM}};
  InPara_2_state_7 = _RAND_45[7:0];
  _RAND_46 = {1{`RANDOM}};
  InPara_2_state_8 = _RAND_46[7:0];
  _RAND_47 = {1{`RANDOM}};
  InPara_2_state_9 = _RAND_47[7:0];
  _RAND_48 = {1{`RANDOM}};
  InPara_2_state_10 = _RAND_48[7:0];
  _RAND_49 = {1{`RANDOM}};
  InPara_2_state_11 = _RAND_49[7:0];
  _RAND_50 = {1{`RANDOM}};
  InPara_2_state_12 = _RAND_50[7:0];
  _RAND_51 = {1{`RANDOM}};
  InPara_2_state_13 = _RAND_51[7:0];
  _RAND_52 = {1{`RANDOM}};
  InPara_2_state_14 = _RAND_52[7:0];
  _RAND_53 = {1{`RANDOM}};
  InPara_2_state_15 = _RAND_53[7:0];
  _RAND_54 = {1{`RANDOM}};
  InPara_2_control_isIdle = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  InPara_2_control_taskID = _RAND_55[1:0];
  _RAND_56 = {1{`RANDOM}};
  InPara_2_control_rounds = _RAND_56[3:0];
  _RAND_57 = {1{`RANDOM}};
  InPara_3_state_0 = _RAND_57[7:0];
  _RAND_58 = {1{`RANDOM}};
  InPara_3_state_1 = _RAND_58[7:0];
  _RAND_59 = {1{`RANDOM}};
  InPara_3_state_2 = _RAND_59[7:0];
  _RAND_60 = {1{`RANDOM}};
  InPara_3_state_3 = _RAND_60[7:0];
  _RAND_61 = {1{`RANDOM}};
  InPara_3_state_4 = _RAND_61[7:0];
  _RAND_62 = {1{`RANDOM}};
  InPara_3_state_5 = _RAND_62[7:0];
  _RAND_63 = {1{`RANDOM}};
  InPara_3_state_6 = _RAND_63[7:0];
  _RAND_64 = {1{`RANDOM}};
  InPara_3_state_7 = _RAND_64[7:0];
  _RAND_65 = {1{`RANDOM}};
  InPara_3_state_8 = _RAND_65[7:0];
  _RAND_66 = {1{`RANDOM}};
  InPara_3_state_9 = _RAND_66[7:0];
  _RAND_67 = {1{`RANDOM}};
  InPara_3_state_10 = _RAND_67[7:0];
  _RAND_68 = {1{`RANDOM}};
  InPara_3_state_11 = _RAND_68[7:0];
  _RAND_69 = {1{`RANDOM}};
  InPara_3_state_12 = _RAND_69[7:0];
  _RAND_70 = {1{`RANDOM}};
  InPara_3_state_13 = _RAND_70[7:0];
  _RAND_71 = {1{`RANDOM}};
  InPara_3_state_14 = _RAND_71[7:0];
  _RAND_72 = {1{`RANDOM}};
  InPara_3_state_15 = _RAND_72[7:0];
  _RAND_73 = {1{`RANDOM}};
  InPara_3_control_isIdle = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  InPara_3_control_taskID = _RAND_74[1:0];
  _RAND_75 = {1{`RANDOM}};
  InPara_3_control_rounds = _RAND_75[3:0];
  _RAND_76 = {1{`RANDOM}};
  OutState_0_0 = _RAND_76[7:0];
  _RAND_77 = {1{`RANDOM}};
  OutState_0_1 = _RAND_77[7:0];
  _RAND_78 = {1{`RANDOM}};
  OutState_0_2 = _RAND_78[7:0];
  _RAND_79 = {1{`RANDOM}};
  OutState_0_3 = _RAND_79[7:0];
  _RAND_80 = {1{`RANDOM}};
  OutState_0_4 = _RAND_80[7:0];
  _RAND_81 = {1{`RANDOM}};
  OutState_0_5 = _RAND_81[7:0];
  _RAND_82 = {1{`RANDOM}};
  OutState_0_6 = _RAND_82[7:0];
  _RAND_83 = {1{`RANDOM}};
  OutState_0_7 = _RAND_83[7:0];
  _RAND_84 = {1{`RANDOM}};
  OutState_0_8 = _RAND_84[7:0];
  _RAND_85 = {1{`RANDOM}};
  OutState_0_9 = _RAND_85[7:0];
  _RAND_86 = {1{`RANDOM}};
  OutState_0_10 = _RAND_86[7:0];
  _RAND_87 = {1{`RANDOM}};
  OutState_0_11 = _RAND_87[7:0];
  _RAND_88 = {1{`RANDOM}};
  OutState_0_12 = _RAND_88[7:0];
  _RAND_89 = {1{`RANDOM}};
  OutState_0_13 = _RAND_89[7:0];
  _RAND_90 = {1{`RANDOM}};
  OutState_0_14 = _RAND_90[7:0];
  _RAND_91 = {1{`RANDOM}};
  OutState_0_15 = _RAND_91[7:0];
  _RAND_92 = {1{`RANDOM}};
  OutState_1_0 = _RAND_92[7:0];
  _RAND_93 = {1{`RANDOM}};
  OutState_1_1 = _RAND_93[7:0];
  _RAND_94 = {1{`RANDOM}};
  OutState_1_2 = _RAND_94[7:0];
  _RAND_95 = {1{`RANDOM}};
  OutState_1_3 = _RAND_95[7:0];
  _RAND_96 = {1{`RANDOM}};
  OutState_1_4 = _RAND_96[7:0];
  _RAND_97 = {1{`RANDOM}};
  OutState_1_5 = _RAND_97[7:0];
  _RAND_98 = {1{`RANDOM}};
  OutState_1_6 = _RAND_98[7:0];
  _RAND_99 = {1{`RANDOM}};
  OutState_1_7 = _RAND_99[7:0];
  _RAND_100 = {1{`RANDOM}};
  OutState_1_8 = _RAND_100[7:0];
  _RAND_101 = {1{`RANDOM}};
  OutState_1_9 = _RAND_101[7:0];
  _RAND_102 = {1{`RANDOM}};
  OutState_1_10 = _RAND_102[7:0];
  _RAND_103 = {1{`RANDOM}};
  OutState_1_11 = _RAND_103[7:0];
  _RAND_104 = {1{`RANDOM}};
  OutState_1_12 = _RAND_104[7:0];
  _RAND_105 = {1{`RANDOM}};
  OutState_1_13 = _RAND_105[7:0];
  _RAND_106 = {1{`RANDOM}};
  OutState_1_14 = _RAND_106[7:0];
  _RAND_107 = {1{`RANDOM}};
  OutState_1_15 = _RAND_107[7:0];
  _RAND_108 = {1{`RANDOM}};
  OutState_2_0 = _RAND_108[7:0];
  _RAND_109 = {1{`RANDOM}};
  OutState_2_1 = _RAND_109[7:0];
  _RAND_110 = {1{`RANDOM}};
  OutState_2_2 = _RAND_110[7:0];
  _RAND_111 = {1{`RANDOM}};
  OutState_2_3 = _RAND_111[7:0];
  _RAND_112 = {1{`RANDOM}};
  OutState_2_4 = _RAND_112[7:0];
  _RAND_113 = {1{`RANDOM}};
  OutState_2_5 = _RAND_113[7:0];
  _RAND_114 = {1{`RANDOM}};
  OutState_2_6 = _RAND_114[7:0];
  _RAND_115 = {1{`RANDOM}};
  OutState_2_7 = _RAND_115[7:0];
  _RAND_116 = {1{`RANDOM}};
  OutState_2_8 = _RAND_116[7:0];
  _RAND_117 = {1{`RANDOM}};
  OutState_2_9 = _RAND_117[7:0];
  _RAND_118 = {1{`RANDOM}};
  OutState_2_10 = _RAND_118[7:0];
  _RAND_119 = {1{`RANDOM}};
  OutState_2_11 = _RAND_119[7:0];
  _RAND_120 = {1{`RANDOM}};
  OutState_2_12 = _RAND_120[7:0];
  _RAND_121 = {1{`RANDOM}};
  OutState_2_13 = _RAND_121[7:0];
  _RAND_122 = {1{`RANDOM}};
  OutState_2_14 = _RAND_122[7:0];
  _RAND_123 = {1{`RANDOM}};
  OutState_2_15 = _RAND_123[7:0];
  _RAND_124 = {1{`RANDOM}};
  OutState_3_0 = _RAND_124[7:0];
  _RAND_125 = {1{`RANDOM}};
  OutState_3_1 = _RAND_125[7:0];
  _RAND_126 = {1{`RANDOM}};
  OutState_3_2 = _RAND_126[7:0];
  _RAND_127 = {1{`RANDOM}};
  OutState_3_3 = _RAND_127[7:0];
  _RAND_128 = {1{`RANDOM}};
  OutState_3_4 = _RAND_128[7:0];
  _RAND_129 = {1{`RANDOM}};
  OutState_3_5 = _RAND_129[7:0];
  _RAND_130 = {1{`RANDOM}};
  OutState_3_6 = _RAND_130[7:0];
  _RAND_131 = {1{`RANDOM}};
  OutState_3_7 = _RAND_131[7:0];
  _RAND_132 = {1{`RANDOM}};
  OutState_3_8 = _RAND_132[7:0];
  _RAND_133 = {1{`RANDOM}};
  OutState_3_9 = _RAND_133[7:0];
  _RAND_134 = {1{`RANDOM}};
  OutState_3_10 = _RAND_134[7:0];
  _RAND_135 = {1{`RANDOM}};
  OutState_3_11 = _RAND_135[7:0];
  _RAND_136 = {1{`RANDOM}};
  OutState_3_12 = _RAND_136[7:0];
  _RAND_137 = {1{`RANDOM}};
  OutState_3_13 = _RAND_137[7:0];
  _RAND_138 = {1{`RANDOM}};
  OutState_3_14 = _RAND_138[7:0];
  _RAND_139 = {1{`RANDOM}};
  OutState_3_15 = _RAND_139[7:0];
  _RAND_140 = {1{`RANDOM}};
  Active_0 = _RAND_140[0:0];
  _RAND_141 = {1{`RANDOM}};
  Active_1 = _RAND_141[0:0];
  _RAND_142 = {1{`RANDOM}};
  Active_2 = _RAND_142[0:0];
  _RAND_143 = {1{`RANDOM}};
  Active_3 = _RAND_143[0:0];
  _RAND_144 = {1{`RANDOM}};
  Busy_0 = _RAND_144[0:0];
  _RAND_145 = {1{`RANDOM}};
  Busy_1 = _RAND_145[0:0];
  _RAND_146 = {1{`RANDOM}};
  Busy_2 = _RAND_146[0:0];
  _RAND_147 = {1{`RANDOM}};
  Busy_3 = _RAND_147[0:0];
  _RAND_148 = {1{`RANDOM}};
  Completed_0 = _RAND_148[0:0];
  _RAND_149 = {1{`RANDOM}};
  Completed_1 = _RAND_149[0:0];
  _RAND_150 = {1{`RANDOM}};
  Completed_2 = _RAND_150[0:0];
  _RAND_151 = {1{`RANDOM}};
  Completed_3 = _RAND_151[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Group(
  input        clock,
  input        reset,
  input  [3:0] io_workID_key,
  output       io_user_key_ready,
  input        io_user_key_valid,
  input  [7:0] io_user_key_bits_0,
  input  [7:0] io_user_key_bits_1,
  input  [7:0] io_user_key_bits_2,
  input  [7:0] io_user_key_bits_3,
  input  [7:0] io_user_key_bits_4,
  input  [7:0] io_user_key_bits_5,
  input  [7:0] io_user_key_bits_6,
  input  [7:0] io_user_key_bits_7,
  input  [7:0] io_user_key_bits_8,
  input  [7:0] io_user_key_bits_9,
  input  [7:0] io_user_key_bits_10,
  input  [7:0] io_user_key_bits_11,
  input  [7:0] io_user_key_bits_12,
  input  [7:0] io_user_key_bits_13,
  input  [7:0] io_user_key_bits_14,
  input  [7:0] io_user_key_bits_15,
  input  [3:0] io_workID_start,
  output       io_text_in_ready,
  input        io_text_in_valid,
  input  [7:0] io_text_in_bits_0,
  input  [7:0] io_text_in_bits_1,
  input  [7:0] io_text_in_bits_2,
  input  [7:0] io_text_in_bits_3,
  input  [7:0] io_text_in_bits_4,
  input  [7:0] io_text_in_bits_5,
  input  [7:0] io_text_in_bits_6,
  input  [7:0] io_text_in_bits_7,
  input  [7:0] io_text_in_bits_8,
  input  [7:0] io_text_in_bits_9,
  input  [7:0] io_text_in_bits_10,
  input  [7:0] io_text_in_bits_11,
  input  [7:0] io_text_in_bits_12,
  input  [7:0] io_text_in_bits_13,
  input  [7:0] io_text_in_bits_14,
  input  [7:0] io_text_in_bits_15,
  output [3:0] io_workID_read,
  input        io_text_out_ready,
  output       io_text_out_valid,
  output [7:0] io_text_out_bits_0,
  output [7:0] io_text_out_bits_1,
  output [7:0] io_text_out_bits_2,
  output [7:0] io_text_out_bits_3,
  output [7:0] io_text_out_bits_4,
  output [7:0] io_text_out_bits_5,
  output [7:0] io_text_out_bits_6,
  output [7:0] io_text_out_bits_7,
  output [7:0] io_text_out_bits_8,
  output [7:0] io_text_out_bits_9,
  output [7:0] io_text_out_bits_10,
  output [7:0] io_text_out_bits_11,
  output [7:0] io_text_out_bits_12,
  output [7:0] io_text_out_bits_13,
  output [7:0] io_text_out_bits_14,
  output [7:0] io_text_out_bits_15
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  OutArbiter_clock; // @[Group.scala 22:26]
  wire  OutArbiter_io_in_0_ready; // @[Group.scala 22:26]
  wire  OutArbiter_io_in_0_valid; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_0_bits_0; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_0_bits_1; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_0_bits_2; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_0_bits_3; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_0_bits_4; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_0_bits_5; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_0_bits_6; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_0_bits_7; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_0_bits_8; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_0_bits_9; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_0_bits_10; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_0_bits_11; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_0_bits_12; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_0_bits_13; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_0_bits_14; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_0_bits_15; // @[Group.scala 22:26]
  wire  OutArbiter_io_in_1_ready; // @[Group.scala 22:26]
  wire  OutArbiter_io_in_1_valid; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_1_bits_0; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_1_bits_1; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_1_bits_2; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_1_bits_3; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_1_bits_4; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_1_bits_5; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_1_bits_6; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_1_bits_7; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_1_bits_8; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_1_bits_9; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_1_bits_10; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_1_bits_11; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_1_bits_12; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_1_bits_13; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_1_bits_14; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_1_bits_15; // @[Group.scala 22:26]
  wire  OutArbiter_io_in_2_ready; // @[Group.scala 22:26]
  wire  OutArbiter_io_in_2_valid; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_2_bits_0; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_2_bits_1; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_2_bits_2; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_2_bits_3; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_2_bits_4; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_2_bits_5; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_2_bits_6; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_2_bits_7; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_2_bits_8; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_2_bits_9; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_2_bits_10; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_2_bits_11; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_2_bits_12; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_2_bits_13; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_2_bits_14; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_2_bits_15; // @[Group.scala 22:26]
  wire  OutArbiter_io_in_3_ready; // @[Group.scala 22:26]
  wire  OutArbiter_io_in_3_valid; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_3_bits_0; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_3_bits_1; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_3_bits_2; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_3_bits_3; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_3_bits_4; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_3_bits_5; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_3_bits_6; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_3_bits_7; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_3_bits_8; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_3_bits_9; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_3_bits_10; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_3_bits_11; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_3_bits_12; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_3_bits_13; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_3_bits_14; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_in_3_bits_15; // @[Group.scala 22:26]
  wire  OutArbiter_io_out_ready; // @[Group.scala 22:26]
  wire  OutArbiter_io_out_valid; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_out_bits_0; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_out_bits_1; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_out_bits_2; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_out_bits_3; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_out_bits_4; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_out_bits_5; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_out_bits_6; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_out_bits_7; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_out_bits_8; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_out_bits_9; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_out_bits_10; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_out_bits_11; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_out_bits_12; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_out_bits_13; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_out_bits_14; // @[Group.scala 22:26]
  wire [7:0] OutArbiter_io_out_bits_15; // @[Group.scala 22:26]
  wire [1:0] OutArbiter_io_chosen; // @[Group.scala 22:26]
  wire  KeyExpansionModule_clock; // @[Group.scala 24:34]
  wire  KeyExpansionModule_reset; // @[Group.scala 24:34]
  wire  KeyExpansionModule_io_user_key_ready; // @[Group.scala 24:34]
  wire  KeyExpansionModule_io_user_key_valid; // @[Group.scala 24:34]
  wire [7:0] KeyExpansionModule_io_user_key_bits_0; // @[Group.scala 24:34]
  wire [7:0] KeyExpansionModule_io_user_key_bits_1; // @[Group.scala 24:34]
  wire [7:0] KeyExpansionModule_io_user_key_bits_2; // @[Group.scala 24:34]
  wire [7:0] KeyExpansionModule_io_user_key_bits_3; // @[Group.scala 24:34]
  wire [7:0] KeyExpansionModule_io_user_key_bits_4; // @[Group.scala 24:34]
  wire [7:0] KeyExpansionModule_io_user_key_bits_5; // @[Group.scala 24:34]
  wire [7:0] KeyExpansionModule_io_user_key_bits_6; // @[Group.scala 24:34]
  wire [7:0] KeyExpansionModule_io_user_key_bits_7; // @[Group.scala 24:34]
  wire [7:0] KeyExpansionModule_io_user_key_bits_8; // @[Group.scala 24:34]
  wire [7:0] KeyExpansionModule_io_user_key_bits_9; // @[Group.scala 24:34]
  wire [7:0] KeyExpansionModule_io_user_key_bits_10; // @[Group.scala 24:34]
  wire [7:0] KeyExpansionModule_io_user_key_bits_11; // @[Group.scala 24:34]
  wire [7:0] KeyExpansionModule_io_user_key_bits_12; // @[Group.scala 24:34]
  wire [7:0] KeyExpansionModule_io_user_key_bits_13; // @[Group.scala 24:34]
  wire [7:0] KeyExpansionModule_io_user_key_bits_14; // @[Group.scala 24:34]
  wire [7:0] KeyExpansionModule_io_user_key_bits_15; // @[Group.scala 24:34]
  wire  KeyExpansionModule_io_write_round_valid; // @[Group.scala 24:34]
  wire [3:0] KeyExpansionModule_io_write_round_bits; // @[Group.scala 24:34]
  wire [7:0] KeyExpansionModule_io_roundKey_0; // @[Group.scala 24:34]
  wire [7:0] KeyExpansionModule_io_roundKey_1; // @[Group.scala 24:34]
  wire [7:0] KeyExpansionModule_io_roundKey_2; // @[Group.scala 24:34]
  wire [7:0] KeyExpansionModule_io_roundKey_3; // @[Group.scala 24:34]
  wire [7:0] KeyExpansionModule_io_roundKey_4; // @[Group.scala 24:34]
  wire [7:0] KeyExpansionModule_io_roundKey_5; // @[Group.scala 24:34]
  wire [7:0] KeyExpansionModule_io_roundKey_6; // @[Group.scala 24:34]
  wire [7:0] KeyExpansionModule_io_roundKey_7; // @[Group.scala 24:34]
  wire [7:0] KeyExpansionModule_io_roundKey_8; // @[Group.scala 24:34]
  wire [7:0] KeyExpansionModule_io_roundKey_9; // @[Group.scala 24:34]
  wire [7:0] KeyExpansionModule_io_roundKey_10; // @[Group.scala 24:34]
  wire [7:0] KeyExpansionModule_io_roundKey_11; // @[Group.scala 24:34]
  wire [7:0] KeyExpansionModule_io_roundKey_12; // @[Group.scala 24:34]
  wire [7:0] KeyExpansionModule_io_roundKey_13; // @[Group.scala 24:34]
  wire [7:0] KeyExpansionModule_io_roundKey_14; // @[Group.scala 24:34]
  wire [7:0] KeyExpansionModule_io_roundKey_15; // @[Group.scala 24:34]
  wire  Units_0_clock; // @[Group.scala 28:11]
  wire  Units_0_reset; // @[Group.scala 28:11]
  wire  Units_0_io_input_ready; // @[Group.scala 28:11]
  wire  Units_0_io_input_valid; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_input_bits_state_0; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_input_bits_state_1; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_input_bits_state_2; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_input_bits_state_3; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_input_bits_state_4; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_input_bits_state_5; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_input_bits_state_6; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_input_bits_state_7; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_input_bits_state_8; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_input_bits_state_9; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_input_bits_state_10; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_input_bits_state_11; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_input_bits_state_12; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_input_bits_state_13; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_input_bits_state_14; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_input_bits_state_15; // @[Group.scala 28:11]
  wire  Units_0_io_input_bits_control_isIdle; // @[Group.scala 28:11]
  wire [1:0] Units_0_io_input_bits_control_taskID; // @[Group.scala 28:11]
  wire  Units_0_io_output_ready; // @[Group.scala 28:11]
  wire  Units_0_io_output_valid; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_output_bits_0; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_output_bits_1; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_output_bits_2; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_output_bits_3; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_output_bits_4; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_output_bits_5; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_output_bits_6; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_output_bits_7; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_output_bits_8; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_output_bits_9; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_output_bits_10; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_output_bits_11; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_output_bits_12; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_output_bits_13; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_output_bits_14; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_output_bits_15; // @[Group.scala 28:11]
  wire [1:0] Units_0_io_output_task; // @[Group.scala 28:11]
  wire  Units_0_io_write_en; // @[Group.scala 28:11]
  wire [1:0] Units_0_io_write_task; // @[Group.scala 28:11]
  wire [3:0] Units_0_io_write_round; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_write_key_0; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_write_key_1; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_write_key_2; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_write_key_3; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_write_key_4; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_write_key_5; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_write_key_6; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_write_key_7; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_write_key_8; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_write_key_9; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_write_key_10; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_write_key_11; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_write_key_12; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_write_key_13; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_write_key_14; // @[Group.scala 28:11]
  wire [7:0] Units_0_io_write_key_15; // @[Group.scala 28:11]
  wire  Units_1_clock; // @[Group.scala 28:11]
  wire  Units_1_reset; // @[Group.scala 28:11]
  wire  Units_1_io_input_ready; // @[Group.scala 28:11]
  wire  Units_1_io_input_valid; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_input_bits_state_0; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_input_bits_state_1; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_input_bits_state_2; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_input_bits_state_3; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_input_bits_state_4; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_input_bits_state_5; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_input_bits_state_6; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_input_bits_state_7; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_input_bits_state_8; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_input_bits_state_9; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_input_bits_state_10; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_input_bits_state_11; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_input_bits_state_12; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_input_bits_state_13; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_input_bits_state_14; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_input_bits_state_15; // @[Group.scala 28:11]
  wire  Units_1_io_input_bits_control_isIdle; // @[Group.scala 28:11]
  wire [1:0] Units_1_io_input_bits_control_taskID; // @[Group.scala 28:11]
  wire  Units_1_io_output_ready; // @[Group.scala 28:11]
  wire  Units_1_io_output_valid; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_output_bits_0; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_output_bits_1; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_output_bits_2; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_output_bits_3; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_output_bits_4; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_output_bits_5; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_output_bits_6; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_output_bits_7; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_output_bits_8; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_output_bits_9; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_output_bits_10; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_output_bits_11; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_output_bits_12; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_output_bits_13; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_output_bits_14; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_output_bits_15; // @[Group.scala 28:11]
  wire [1:0] Units_1_io_output_task; // @[Group.scala 28:11]
  wire  Units_1_io_write_en; // @[Group.scala 28:11]
  wire [1:0] Units_1_io_write_task; // @[Group.scala 28:11]
  wire [3:0] Units_1_io_write_round; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_write_key_0; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_write_key_1; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_write_key_2; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_write_key_3; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_write_key_4; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_write_key_5; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_write_key_6; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_write_key_7; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_write_key_8; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_write_key_9; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_write_key_10; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_write_key_11; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_write_key_12; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_write_key_13; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_write_key_14; // @[Group.scala 28:11]
  wire [7:0] Units_1_io_write_key_15; // @[Group.scala 28:11]
  wire  Units_2_clock; // @[Group.scala 28:11]
  wire  Units_2_reset; // @[Group.scala 28:11]
  wire  Units_2_io_input_ready; // @[Group.scala 28:11]
  wire  Units_2_io_input_valid; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_input_bits_state_0; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_input_bits_state_1; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_input_bits_state_2; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_input_bits_state_3; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_input_bits_state_4; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_input_bits_state_5; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_input_bits_state_6; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_input_bits_state_7; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_input_bits_state_8; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_input_bits_state_9; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_input_bits_state_10; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_input_bits_state_11; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_input_bits_state_12; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_input_bits_state_13; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_input_bits_state_14; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_input_bits_state_15; // @[Group.scala 28:11]
  wire  Units_2_io_input_bits_control_isIdle; // @[Group.scala 28:11]
  wire [1:0] Units_2_io_input_bits_control_taskID; // @[Group.scala 28:11]
  wire  Units_2_io_output_ready; // @[Group.scala 28:11]
  wire  Units_2_io_output_valid; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_output_bits_0; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_output_bits_1; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_output_bits_2; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_output_bits_3; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_output_bits_4; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_output_bits_5; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_output_bits_6; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_output_bits_7; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_output_bits_8; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_output_bits_9; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_output_bits_10; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_output_bits_11; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_output_bits_12; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_output_bits_13; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_output_bits_14; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_output_bits_15; // @[Group.scala 28:11]
  wire [1:0] Units_2_io_output_task; // @[Group.scala 28:11]
  wire  Units_2_io_write_en; // @[Group.scala 28:11]
  wire [1:0] Units_2_io_write_task; // @[Group.scala 28:11]
  wire [3:0] Units_2_io_write_round; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_write_key_0; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_write_key_1; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_write_key_2; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_write_key_3; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_write_key_4; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_write_key_5; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_write_key_6; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_write_key_7; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_write_key_8; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_write_key_9; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_write_key_10; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_write_key_11; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_write_key_12; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_write_key_13; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_write_key_14; // @[Group.scala 28:11]
  wire [7:0] Units_2_io_write_key_15; // @[Group.scala 28:11]
  wire  Units_3_clock; // @[Group.scala 28:11]
  wire  Units_3_reset; // @[Group.scala 28:11]
  wire  Units_3_io_input_ready; // @[Group.scala 28:11]
  wire  Units_3_io_input_valid; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_input_bits_state_0; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_input_bits_state_1; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_input_bits_state_2; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_input_bits_state_3; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_input_bits_state_4; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_input_bits_state_5; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_input_bits_state_6; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_input_bits_state_7; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_input_bits_state_8; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_input_bits_state_9; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_input_bits_state_10; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_input_bits_state_11; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_input_bits_state_12; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_input_bits_state_13; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_input_bits_state_14; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_input_bits_state_15; // @[Group.scala 28:11]
  wire  Units_3_io_input_bits_control_isIdle; // @[Group.scala 28:11]
  wire [1:0] Units_3_io_input_bits_control_taskID; // @[Group.scala 28:11]
  wire [3:0] Units_3_io_input_bits_control_rounds; // @[Group.scala 28:11]
  wire  Units_3_io_output_ready; // @[Group.scala 28:11]
  wire  Units_3_io_output_valid; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_output_bits_0; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_output_bits_1; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_output_bits_2; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_output_bits_3; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_output_bits_4; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_output_bits_5; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_output_bits_6; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_output_bits_7; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_output_bits_8; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_output_bits_9; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_output_bits_10; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_output_bits_11; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_output_bits_12; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_output_bits_13; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_output_bits_14; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_output_bits_15; // @[Group.scala 28:11]
  wire [1:0] Units_3_io_output_task; // @[Group.scala 28:11]
  wire  Units_3_io_write_en; // @[Group.scala 28:11]
  wire [1:0] Units_3_io_write_task; // @[Group.scala 28:11]
  wire [3:0] Units_3_io_write_round; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_write_key_0; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_write_key_1; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_write_key_2; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_write_key_3; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_write_key_4; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_write_key_5; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_write_key_6; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_write_key_7; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_write_key_8; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_write_key_9; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_write_key_10; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_write_key_11; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_write_key_12; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_write_key_13; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_write_key_14; // @[Group.scala 28:11]
  wire [7:0] Units_3_io_write_key_15; // @[Group.scala 28:11]
  reg [3:0] WorkID_Key; // @[Group.scala 21:27]
  wire  _T = io_user_key_ready & io_user_key_valid; // @[Decoupled.scala 50:35]
  wire  _io_text_in_ready_T_2 = 2'h1 == io_workID_start[3:2] ? Units_1_io_input_ready : Units_0_io_input_ready; // @[Mux.scala 81:58]
  wire  _io_text_in_ready_T_4 = 2'h2 == io_workID_start[3:2] ? Units_2_io_input_ready : _io_text_in_ready_T_2; // @[Mux.scala 81:58]
  wire [1:0] _io_workID_read_T_1 = 2'h1 == OutArbiter_io_chosen ? Units_1_io_output_task : Units_0_io_output_task; // @[Mux.scala 81:58]
  wire [1:0] _io_workID_read_T_3 = 2'h2 == OutArbiter_io_chosen ? Units_2_io_output_task : _io_workID_read_T_1; // @[Mux.scala 81:58]
  wire [1:0] _io_workID_read_T_5 = 2'h3 == OutArbiter_io_chosen ? Units_3_io_output_task : _io_workID_read_T_3; // @[Mux.scala 81:58]
  RRArbiter OutArbiter ( // @[Group.scala 22:26]
    .clock(OutArbiter_clock),
    .io_in_0_ready(OutArbiter_io_in_0_ready),
    .io_in_0_valid(OutArbiter_io_in_0_valid),
    .io_in_0_bits_0(OutArbiter_io_in_0_bits_0),
    .io_in_0_bits_1(OutArbiter_io_in_0_bits_1),
    .io_in_0_bits_2(OutArbiter_io_in_0_bits_2),
    .io_in_0_bits_3(OutArbiter_io_in_0_bits_3),
    .io_in_0_bits_4(OutArbiter_io_in_0_bits_4),
    .io_in_0_bits_5(OutArbiter_io_in_0_bits_5),
    .io_in_0_bits_6(OutArbiter_io_in_0_bits_6),
    .io_in_0_bits_7(OutArbiter_io_in_0_bits_7),
    .io_in_0_bits_8(OutArbiter_io_in_0_bits_8),
    .io_in_0_bits_9(OutArbiter_io_in_0_bits_9),
    .io_in_0_bits_10(OutArbiter_io_in_0_bits_10),
    .io_in_0_bits_11(OutArbiter_io_in_0_bits_11),
    .io_in_0_bits_12(OutArbiter_io_in_0_bits_12),
    .io_in_0_bits_13(OutArbiter_io_in_0_bits_13),
    .io_in_0_bits_14(OutArbiter_io_in_0_bits_14),
    .io_in_0_bits_15(OutArbiter_io_in_0_bits_15),
    .io_in_1_ready(OutArbiter_io_in_1_ready),
    .io_in_1_valid(OutArbiter_io_in_1_valid),
    .io_in_1_bits_0(OutArbiter_io_in_1_bits_0),
    .io_in_1_bits_1(OutArbiter_io_in_1_bits_1),
    .io_in_1_bits_2(OutArbiter_io_in_1_bits_2),
    .io_in_1_bits_3(OutArbiter_io_in_1_bits_3),
    .io_in_1_bits_4(OutArbiter_io_in_1_bits_4),
    .io_in_1_bits_5(OutArbiter_io_in_1_bits_5),
    .io_in_1_bits_6(OutArbiter_io_in_1_bits_6),
    .io_in_1_bits_7(OutArbiter_io_in_1_bits_7),
    .io_in_1_bits_8(OutArbiter_io_in_1_bits_8),
    .io_in_1_bits_9(OutArbiter_io_in_1_bits_9),
    .io_in_1_bits_10(OutArbiter_io_in_1_bits_10),
    .io_in_1_bits_11(OutArbiter_io_in_1_bits_11),
    .io_in_1_bits_12(OutArbiter_io_in_1_bits_12),
    .io_in_1_bits_13(OutArbiter_io_in_1_bits_13),
    .io_in_1_bits_14(OutArbiter_io_in_1_bits_14),
    .io_in_1_bits_15(OutArbiter_io_in_1_bits_15),
    .io_in_2_ready(OutArbiter_io_in_2_ready),
    .io_in_2_valid(OutArbiter_io_in_2_valid),
    .io_in_2_bits_0(OutArbiter_io_in_2_bits_0),
    .io_in_2_bits_1(OutArbiter_io_in_2_bits_1),
    .io_in_2_bits_2(OutArbiter_io_in_2_bits_2),
    .io_in_2_bits_3(OutArbiter_io_in_2_bits_3),
    .io_in_2_bits_4(OutArbiter_io_in_2_bits_4),
    .io_in_2_bits_5(OutArbiter_io_in_2_bits_5),
    .io_in_2_bits_6(OutArbiter_io_in_2_bits_6),
    .io_in_2_bits_7(OutArbiter_io_in_2_bits_7),
    .io_in_2_bits_8(OutArbiter_io_in_2_bits_8),
    .io_in_2_bits_9(OutArbiter_io_in_2_bits_9),
    .io_in_2_bits_10(OutArbiter_io_in_2_bits_10),
    .io_in_2_bits_11(OutArbiter_io_in_2_bits_11),
    .io_in_2_bits_12(OutArbiter_io_in_2_bits_12),
    .io_in_2_bits_13(OutArbiter_io_in_2_bits_13),
    .io_in_2_bits_14(OutArbiter_io_in_2_bits_14),
    .io_in_2_bits_15(OutArbiter_io_in_2_bits_15),
    .io_in_3_ready(OutArbiter_io_in_3_ready),
    .io_in_3_valid(OutArbiter_io_in_3_valid),
    .io_in_3_bits_0(OutArbiter_io_in_3_bits_0),
    .io_in_3_bits_1(OutArbiter_io_in_3_bits_1),
    .io_in_3_bits_2(OutArbiter_io_in_3_bits_2),
    .io_in_3_bits_3(OutArbiter_io_in_3_bits_3),
    .io_in_3_bits_4(OutArbiter_io_in_3_bits_4),
    .io_in_3_bits_5(OutArbiter_io_in_3_bits_5),
    .io_in_3_bits_6(OutArbiter_io_in_3_bits_6),
    .io_in_3_bits_7(OutArbiter_io_in_3_bits_7),
    .io_in_3_bits_8(OutArbiter_io_in_3_bits_8),
    .io_in_3_bits_9(OutArbiter_io_in_3_bits_9),
    .io_in_3_bits_10(OutArbiter_io_in_3_bits_10),
    .io_in_3_bits_11(OutArbiter_io_in_3_bits_11),
    .io_in_3_bits_12(OutArbiter_io_in_3_bits_12),
    .io_in_3_bits_13(OutArbiter_io_in_3_bits_13),
    .io_in_3_bits_14(OutArbiter_io_in_3_bits_14),
    .io_in_3_bits_15(OutArbiter_io_in_3_bits_15),
    .io_out_ready(OutArbiter_io_out_ready),
    .io_out_valid(OutArbiter_io_out_valid),
    .io_out_bits_0(OutArbiter_io_out_bits_0),
    .io_out_bits_1(OutArbiter_io_out_bits_1),
    .io_out_bits_2(OutArbiter_io_out_bits_2),
    .io_out_bits_3(OutArbiter_io_out_bits_3),
    .io_out_bits_4(OutArbiter_io_out_bits_4),
    .io_out_bits_5(OutArbiter_io_out_bits_5),
    .io_out_bits_6(OutArbiter_io_out_bits_6),
    .io_out_bits_7(OutArbiter_io_out_bits_7),
    .io_out_bits_8(OutArbiter_io_out_bits_8),
    .io_out_bits_9(OutArbiter_io_out_bits_9),
    .io_out_bits_10(OutArbiter_io_out_bits_10),
    .io_out_bits_11(OutArbiter_io_out_bits_11),
    .io_out_bits_12(OutArbiter_io_out_bits_12),
    .io_out_bits_13(OutArbiter_io_out_bits_13),
    .io_out_bits_14(OutArbiter_io_out_bits_14),
    .io_out_bits_15(OutArbiter_io_out_bits_15),
    .io_chosen(OutArbiter_io_chosen)
  );
  KeyExpansion128 KeyExpansionModule ( // @[Group.scala 24:34]
    .clock(KeyExpansionModule_clock),
    .reset(KeyExpansionModule_reset),
    .io_user_key_ready(KeyExpansionModule_io_user_key_ready),
    .io_user_key_valid(KeyExpansionModule_io_user_key_valid),
    .io_user_key_bits_0(KeyExpansionModule_io_user_key_bits_0),
    .io_user_key_bits_1(KeyExpansionModule_io_user_key_bits_1),
    .io_user_key_bits_2(KeyExpansionModule_io_user_key_bits_2),
    .io_user_key_bits_3(KeyExpansionModule_io_user_key_bits_3),
    .io_user_key_bits_4(KeyExpansionModule_io_user_key_bits_4),
    .io_user_key_bits_5(KeyExpansionModule_io_user_key_bits_5),
    .io_user_key_bits_6(KeyExpansionModule_io_user_key_bits_6),
    .io_user_key_bits_7(KeyExpansionModule_io_user_key_bits_7),
    .io_user_key_bits_8(KeyExpansionModule_io_user_key_bits_8),
    .io_user_key_bits_9(KeyExpansionModule_io_user_key_bits_9),
    .io_user_key_bits_10(KeyExpansionModule_io_user_key_bits_10),
    .io_user_key_bits_11(KeyExpansionModule_io_user_key_bits_11),
    .io_user_key_bits_12(KeyExpansionModule_io_user_key_bits_12),
    .io_user_key_bits_13(KeyExpansionModule_io_user_key_bits_13),
    .io_user_key_bits_14(KeyExpansionModule_io_user_key_bits_14),
    .io_user_key_bits_15(KeyExpansionModule_io_user_key_bits_15),
    .io_write_round_valid(KeyExpansionModule_io_write_round_valid),
    .io_write_round_bits(KeyExpansionModule_io_write_round_bits),
    .io_roundKey_0(KeyExpansionModule_io_roundKey_0),
    .io_roundKey_1(KeyExpansionModule_io_roundKey_1),
    .io_roundKey_2(KeyExpansionModule_io_roundKey_2),
    .io_roundKey_3(KeyExpansionModule_io_roundKey_3),
    .io_roundKey_4(KeyExpansionModule_io_roundKey_4),
    .io_roundKey_5(KeyExpansionModule_io_roundKey_5),
    .io_roundKey_6(KeyExpansionModule_io_roundKey_6),
    .io_roundKey_7(KeyExpansionModule_io_roundKey_7),
    .io_roundKey_8(KeyExpansionModule_io_roundKey_8),
    .io_roundKey_9(KeyExpansionModule_io_roundKey_9),
    .io_roundKey_10(KeyExpansionModule_io_roundKey_10),
    .io_roundKey_11(KeyExpansionModule_io_roundKey_11),
    .io_roundKey_12(KeyExpansionModule_io_roundKey_12),
    .io_roundKey_13(KeyExpansionModule_io_roundKey_13),
    .io_roundKey_14(KeyExpansionModule_io_roundKey_14),
    .io_roundKey_15(KeyExpansionModule_io_roundKey_15)
  );
  Unit Units_0 ( // @[Group.scala 28:11]
    .clock(Units_0_clock),
    .reset(Units_0_reset),
    .io_input_ready(Units_0_io_input_ready),
    .io_input_valid(Units_0_io_input_valid),
    .io_input_bits_state_0(Units_0_io_input_bits_state_0),
    .io_input_bits_state_1(Units_0_io_input_bits_state_1),
    .io_input_bits_state_2(Units_0_io_input_bits_state_2),
    .io_input_bits_state_3(Units_0_io_input_bits_state_3),
    .io_input_bits_state_4(Units_0_io_input_bits_state_4),
    .io_input_bits_state_5(Units_0_io_input_bits_state_5),
    .io_input_bits_state_6(Units_0_io_input_bits_state_6),
    .io_input_bits_state_7(Units_0_io_input_bits_state_7),
    .io_input_bits_state_8(Units_0_io_input_bits_state_8),
    .io_input_bits_state_9(Units_0_io_input_bits_state_9),
    .io_input_bits_state_10(Units_0_io_input_bits_state_10),
    .io_input_bits_state_11(Units_0_io_input_bits_state_11),
    .io_input_bits_state_12(Units_0_io_input_bits_state_12),
    .io_input_bits_state_13(Units_0_io_input_bits_state_13),
    .io_input_bits_state_14(Units_0_io_input_bits_state_14),
    .io_input_bits_state_15(Units_0_io_input_bits_state_15),
    .io_input_bits_control_isIdle(Units_0_io_input_bits_control_isIdle),
    .io_input_bits_control_taskID(Units_0_io_input_bits_control_taskID),
    .io_output_ready(Units_0_io_output_ready),
    .io_output_valid(Units_0_io_output_valid),
    .io_output_bits_0(Units_0_io_output_bits_0),
    .io_output_bits_1(Units_0_io_output_bits_1),
    .io_output_bits_2(Units_0_io_output_bits_2),
    .io_output_bits_3(Units_0_io_output_bits_3),
    .io_output_bits_4(Units_0_io_output_bits_4),
    .io_output_bits_5(Units_0_io_output_bits_5),
    .io_output_bits_6(Units_0_io_output_bits_6),
    .io_output_bits_7(Units_0_io_output_bits_7),
    .io_output_bits_8(Units_0_io_output_bits_8),
    .io_output_bits_9(Units_0_io_output_bits_9),
    .io_output_bits_10(Units_0_io_output_bits_10),
    .io_output_bits_11(Units_0_io_output_bits_11),
    .io_output_bits_12(Units_0_io_output_bits_12),
    .io_output_bits_13(Units_0_io_output_bits_13),
    .io_output_bits_14(Units_0_io_output_bits_14),
    .io_output_bits_15(Units_0_io_output_bits_15),
    .io_output_task(Units_0_io_output_task),
    .io_write_en(Units_0_io_write_en),
    .io_write_task(Units_0_io_write_task),
    .io_write_round(Units_0_io_write_round),
    .io_write_key_0(Units_0_io_write_key_0),
    .io_write_key_1(Units_0_io_write_key_1),
    .io_write_key_2(Units_0_io_write_key_2),
    .io_write_key_3(Units_0_io_write_key_3),
    .io_write_key_4(Units_0_io_write_key_4),
    .io_write_key_5(Units_0_io_write_key_5),
    .io_write_key_6(Units_0_io_write_key_6),
    .io_write_key_7(Units_0_io_write_key_7),
    .io_write_key_8(Units_0_io_write_key_8),
    .io_write_key_9(Units_0_io_write_key_9),
    .io_write_key_10(Units_0_io_write_key_10),
    .io_write_key_11(Units_0_io_write_key_11),
    .io_write_key_12(Units_0_io_write_key_12),
    .io_write_key_13(Units_0_io_write_key_13),
    .io_write_key_14(Units_0_io_write_key_14),
    .io_write_key_15(Units_0_io_write_key_15)
  );
  Unit Units_1 ( // @[Group.scala 28:11]
    .clock(Units_1_clock),
    .reset(Units_1_reset),
    .io_input_ready(Units_1_io_input_ready),
    .io_input_valid(Units_1_io_input_valid),
    .io_input_bits_state_0(Units_1_io_input_bits_state_0),
    .io_input_bits_state_1(Units_1_io_input_bits_state_1),
    .io_input_bits_state_2(Units_1_io_input_bits_state_2),
    .io_input_bits_state_3(Units_1_io_input_bits_state_3),
    .io_input_bits_state_4(Units_1_io_input_bits_state_4),
    .io_input_bits_state_5(Units_1_io_input_bits_state_5),
    .io_input_bits_state_6(Units_1_io_input_bits_state_6),
    .io_input_bits_state_7(Units_1_io_input_bits_state_7),
    .io_input_bits_state_8(Units_1_io_input_bits_state_8),
    .io_input_bits_state_9(Units_1_io_input_bits_state_9),
    .io_input_bits_state_10(Units_1_io_input_bits_state_10),
    .io_input_bits_state_11(Units_1_io_input_bits_state_11),
    .io_input_bits_state_12(Units_1_io_input_bits_state_12),
    .io_input_bits_state_13(Units_1_io_input_bits_state_13),
    .io_input_bits_state_14(Units_1_io_input_bits_state_14),
    .io_input_bits_state_15(Units_1_io_input_bits_state_15),
    .io_input_bits_control_isIdle(Units_1_io_input_bits_control_isIdle),
    .io_input_bits_control_taskID(Units_1_io_input_bits_control_taskID),
    .io_output_ready(Units_1_io_output_ready),
    .io_output_valid(Units_1_io_output_valid),
    .io_output_bits_0(Units_1_io_output_bits_0),
    .io_output_bits_1(Units_1_io_output_bits_1),
    .io_output_bits_2(Units_1_io_output_bits_2),
    .io_output_bits_3(Units_1_io_output_bits_3),
    .io_output_bits_4(Units_1_io_output_bits_4),
    .io_output_bits_5(Units_1_io_output_bits_5),
    .io_output_bits_6(Units_1_io_output_bits_6),
    .io_output_bits_7(Units_1_io_output_bits_7),
    .io_output_bits_8(Units_1_io_output_bits_8),
    .io_output_bits_9(Units_1_io_output_bits_9),
    .io_output_bits_10(Units_1_io_output_bits_10),
    .io_output_bits_11(Units_1_io_output_bits_11),
    .io_output_bits_12(Units_1_io_output_bits_12),
    .io_output_bits_13(Units_1_io_output_bits_13),
    .io_output_bits_14(Units_1_io_output_bits_14),
    .io_output_bits_15(Units_1_io_output_bits_15),
    .io_output_task(Units_1_io_output_task),
    .io_write_en(Units_1_io_write_en),
    .io_write_task(Units_1_io_write_task),
    .io_write_round(Units_1_io_write_round),
    .io_write_key_0(Units_1_io_write_key_0),
    .io_write_key_1(Units_1_io_write_key_1),
    .io_write_key_2(Units_1_io_write_key_2),
    .io_write_key_3(Units_1_io_write_key_3),
    .io_write_key_4(Units_1_io_write_key_4),
    .io_write_key_5(Units_1_io_write_key_5),
    .io_write_key_6(Units_1_io_write_key_6),
    .io_write_key_7(Units_1_io_write_key_7),
    .io_write_key_8(Units_1_io_write_key_8),
    .io_write_key_9(Units_1_io_write_key_9),
    .io_write_key_10(Units_1_io_write_key_10),
    .io_write_key_11(Units_1_io_write_key_11),
    .io_write_key_12(Units_1_io_write_key_12),
    .io_write_key_13(Units_1_io_write_key_13),
    .io_write_key_14(Units_1_io_write_key_14),
    .io_write_key_15(Units_1_io_write_key_15)
  );
  Unit Units_2 ( // @[Group.scala 28:11]
    .clock(Units_2_clock),
    .reset(Units_2_reset),
    .io_input_ready(Units_2_io_input_ready),
    .io_input_valid(Units_2_io_input_valid),
    .io_input_bits_state_0(Units_2_io_input_bits_state_0),
    .io_input_bits_state_1(Units_2_io_input_bits_state_1),
    .io_input_bits_state_2(Units_2_io_input_bits_state_2),
    .io_input_bits_state_3(Units_2_io_input_bits_state_3),
    .io_input_bits_state_4(Units_2_io_input_bits_state_4),
    .io_input_bits_state_5(Units_2_io_input_bits_state_5),
    .io_input_bits_state_6(Units_2_io_input_bits_state_6),
    .io_input_bits_state_7(Units_2_io_input_bits_state_7),
    .io_input_bits_state_8(Units_2_io_input_bits_state_8),
    .io_input_bits_state_9(Units_2_io_input_bits_state_9),
    .io_input_bits_state_10(Units_2_io_input_bits_state_10),
    .io_input_bits_state_11(Units_2_io_input_bits_state_11),
    .io_input_bits_state_12(Units_2_io_input_bits_state_12),
    .io_input_bits_state_13(Units_2_io_input_bits_state_13),
    .io_input_bits_state_14(Units_2_io_input_bits_state_14),
    .io_input_bits_state_15(Units_2_io_input_bits_state_15),
    .io_input_bits_control_isIdle(Units_2_io_input_bits_control_isIdle),
    .io_input_bits_control_taskID(Units_2_io_input_bits_control_taskID),
    .io_output_ready(Units_2_io_output_ready),
    .io_output_valid(Units_2_io_output_valid),
    .io_output_bits_0(Units_2_io_output_bits_0),
    .io_output_bits_1(Units_2_io_output_bits_1),
    .io_output_bits_2(Units_2_io_output_bits_2),
    .io_output_bits_3(Units_2_io_output_bits_3),
    .io_output_bits_4(Units_2_io_output_bits_4),
    .io_output_bits_5(Units_2_io_output_bits_5),
    .io_output_bits_6(Units_2_io_output_bits_6),
    .io_output_bits_7(Units_2_io_output_bits_7),
    .io_output_bits_8(Units_2_io_output_bits_8),
    .io_output_bits_9(Units_2_io_output_bits_9),
    .io_output_bits_10(Units_2_io_output_bits_10),
    .io_output_bits_11(Units_2_io_output_bits_11),
    .io_output_bits_12(Units_2_io_output_bits_12),
    .io_output_bits_13(Units_2_io_output_bits_13),
    .io_output_bits_14(Units_2_io_output_bits_14),
    .io_output_bits_15(Units_2_io_output_bits_15),
    .io_output_task(Units_2_io_output_task),
    .io_write_en(Units_2_io_write_en),
    .io_write_task(Units_2_io_write_task),
    .io_write_round(Units_2_io_write_round),
    .io_write_key_0(Units_2_io_write_key_0),
    .io_write_key_1(Units_2_io_write_key_1),
    .io_write_key_2(Units_2_io_write_key_2),
    .io_write_key_3(Units_2_io_write_key_3),
    .io_write_key_4(Units_2_io_write_key_4),
    .io_write_key_5(Units_2_io_write_key_5),
    .io_write_key_6(Units_2_io_write_key_6),
    .io_write_key_7(Units_2_io_write_key_7),
    .io_write_key_8(Units_2_io_write_key_8),
    .io_write_key_9(Units_2_io_write_key_9),
    .io_write_key_10(Units_2_io_write_key_10),
    .io_write_key_11(Units_2_io_write_key_11),
    .io_write_key_12(Units_2_io_write_key_12),
    .io_write_key_13(Units_2_io_write_key_13),
    .io_write_key_14(Units_2_io_write_key_14),
    .io_write_key_15(Units_2_io_write_key_15)
  );
  Unit_3 Units_3 ( // @[Group.scala 28:11]
    .clock(Units_3_clock),
    .reset(Units_3_reset),
    .io_input_ready(Units_3_io_input_ready),
    .io_input_valid(Units_3_io_input_valid),
    .io_input_bits_state_0(Units_3_io_input_bits_state_0),
    .io_input_bits_state_1(Units_3_io_input_bits_state_1),
    .io_input_bits_state_2(Units_3_io_input_bits_state_2),
    .io_input_bits_state_3(Units_3_io_input_bits_state_3),
    .io_input_bits_state_4(Units_3_io_input_bits_state_4),
    .io_input_bits_state_5(Units_3_io_input_bits_state_5),
    .io_input_bits_state_6(Units_3_io_input_bits_state_6),
    .io_input_bits_state_7(Units_3_io_input_bits_state_7),
    .io_input_bits_state_8(Units_3_io_input_bits_state_8),
    .io_input_bits_state_9(Units_3_io_input_bits_state_9),
    .io_input_bits_state_10(Units_3_io_input_bits_state_10),
    .io_input_bits_state_11(Units_3_io_input_bits_state_11),
    .io_input_bits_state_12(Units_3_io_input_bits_state_12),
    .io_input_bits_state_13(Units_3_io_input_bits_state_13),
    .io_input_bits_state_14(Units_3_io_input_bits_state_14),
    .io_input_bits_state_15(Units_3_io_input_bits_state_15),
    .io_input_bits_control_isIdle(Units_3_io_input_bits_control_isIdle),
    .io_input_bits_control_taskID(Units_3_io_input_bits_control_taskID),
    .io_input_bits_control_rounds(Units_3_io_input_bits_control_rounds),
    .io_output_ready(Units_3_io_output_ready),
    .io_output_valid(Units_3_io_output_valid),
    .io_output_bits_0(Units_3_io_output_bits_0),
    .io_output_bits_1(Units_3_io_output_bits_1),
    .io_output_bits_2(Units_3_io_output_bits_2),
    .io_output_bits_3(Units_3_io_output_bits_3),
    .io_output_bits_4(Units_3_io_output_bits_4),
    .io_output_bits_5(Units_3_io_output_bits_5),
    .io_output_bits_6(Units_3_io_output_bits_6),
    .io_output_bits_7(Units_3_io_output_bits_7),
    .io_output_bits_8(Units_3_io_output_bits_8),
    .io_output_bits_9(Units_3_io_output_bits_9),
    .io_output_bits_10(Units_3_io_output_bits_10),
    .io_output_bits_11(Units_3_io_output_bits_11),
    .io_output_bits_12(Units_3_io_output_bits_12),
    .io_output_bits_13(Units_3_io_output_bits_13),
    .io_output_bits_14(Units_3_io_output_bits_14),
    .io_output_bits_15(Units_3_io_output_bits_15),
    .io_output_task(Units_3_io_output_task),
    .io_write_en(Units_3_io_write_en),
    .io_write_task(Units_3_io_write_task),
    .io_write_round(Units_3_io_write_round),
    .io_write_key_0(Units_3_io_write_key_0),
    .io_write_key_1(Units_3_io_write_key_1),
    .io_write_key_2(Units_3_io_write_key_2),
    .io_write_key_3(Units_3_io_write_key_3),
    .io_write_key_4(Units_3_io_write_key_4),
    .io_write_key_5(Units_3_io_write_key_5),
    .io_write_key_6(Units_3_io_write_key_6),
    .io_write_key_7(Units_3_io_write_key_7),
    .io_write_key_8(Units_3_io_write_key_8),
    .io_write_key_9(Units_3_io_write_key_9),
    .io_write_key_10(Units_3_io_write_key_10),
    .io_write_key_11(Units_3_io_write_key_11),
    .io_write_key_12(Units_3_io_write_key_12),
    .io_write_key_13(Units_3_io_write_key_13),
    .io_write_key_14(Units_3_io_write_key_14),
    .io_write_key_15(Units_3_io_write_key_15)
  );
  assign io_user_key_ready = KeyExpansionModule_io_user_key_ready; // @[Group.scala 38:34]
  assign io_text_in_ready = 2'h3 == io_workID_start[3:2] ? Units_3_io_input_ready : _io_text_in_ready_T_4; // @[Mux.scala 81:58]
  assign io_workID_read = {OutArbiter_io_chosen,_io_workID_read_T_5}; // @[Cat.scala 31:58]
  assign io_text_out_valid = OutArbiter_io_out_valid; // @[Group.scala 75:15]
  assign io_text_out_bits_0 = OutArbiter_io_out_bits_0; // @[Group.scala 75:15]
  assign io_text_out_bits_1 = OutArbiter_io_out_bits_1; // @[Group.scala 75:15]
  assign io_text_out_bits_2 = OutArbiter_io_out_bits_2; // @[Group.scala 75:15]
  assign io_text_out_bits_3 = OutArbiter_io_out_bits_3; // @[Group.scala 75:15]
  assign io_text_out_bits_4 = OutArbiter_io_out_bits_4; // @[Group.scala 75:15]
  assign io_text_out_bits_5 = OutArbiter_io_out_bits_5; // @[Group.scala 75:15]
  assign io_text_out_bits_6 = OutArbiter_io_out_bits_6; // @[Group.scala 75:15]
  assign io_text_out_bits_7 = OutArbiter_io_out_bits_7; // @[Group.scala 75:15]
  assign io_text_out_bits_8 = OutArbiter_io_out_bits_8; // @[Group.scala 75:15]
  assign io_text_out_bits_9 = OutArbiter_io_out_bits_9; // @[Group.scala 75:15]
  assign io_text_out_bits_10 = OutArbiter_io_out_bits_10; // @[Group.scala 75:15]
  assign io_text_out_bits_11 = OutArbiter_io_out_bits_11; // @[Group.scala 75:15]
  assign io_text_out_bits_12 = OutArbiter_io_out_bits_12; // @[Group.scala 75:15]
  assign io_text_out_bits_13 = OutArbiter_io_out_bits_13; // @[Group.scala 75:15]
  assign io_text_out_bits_14 = OutArbiter_io_out_bits_14; // @[Group.scala 75:15]
  assign io_text_out_bits_15 = OutArbiter_io_out_bits_15; // @[Group.scala 75:15]
  assign OutArbiter_clock = clock;
  assign OutArbiter_io_in_0_valid = Units_0_io_output_valid; // @[Group.scala 70:25]
  assign OutArbiter_io_in_0_bits_0 = Units_0_io_output_bits_0; // @[Group.scala 70:25]
  assign OutArbiter_io_in_0_bits_1 = Units_0_io_output_bits_1; // @[Group.scala 70:25]
  assign OutArbiter_io_in_0_bits_2 = Units_0_io_output_bits_2; // @[Group.scala 70:25]
  assign OutArbiter_io_in_0_bits_3 = Units_0_io_output_bits_3; // @[Group.scala 70:25]
  assign OutArbiter_io_in_0_bits_4 = Units_0_io_output_bits_4; // @[Group.scala 70:25]
  assign OutArbiter_io_in_0_bits_5 = Units_0_io_output_bits_5; // @[Group.scala 70:25]
  assign OutArbiter_io_in_0_bits_6 = Units_0_io_output_bits_6; // @[Group.scala 70:25]
  assign OutArbiter_io_in_0_bits_7 = Units_0_io_output_bits_7; // @[Group.scala 70:25]
  assign OutArbiter_io_in_0_bits_8 = Units_0_io_output_bits_8; // @[Group.scala 70:25]
  assign OutArbiter_io_in_0_bits_9 = Units_0_io_output_bits_9; // @[Group.scala 70:25]
  assign OutArbiter_io_in_0_bits_10 = Units_0_io_output_bits_10; // @[Group.scala 70:25]
  assign OutArbiter_io_in_0_bits_11 = Units_0_io_output_bits_11; // @[Group.scala 70:25]
  assign OutArbiter_io_in_0_bits_12 = Units_0_io_output_bits_12; // @[Group.scala 70:25]
  assign OutArbiter_io_in_0_bits_13 = Units_0_io_output_bits_13; // @[Group.scala 70:25]
  assign OutArbiter_io_in_0_bits_14 = Units_0_io_output_bits_14; // @[Group.scala 70:25]
  assign OutArbiter_io_in_0_bits_15 = Units_0_io_output_bits_15; // @[Group.scala 70:25]
  assign OutArbiter_io_in_1_valid = Units_1_io_output_valid; // @[Group.scala 70:25]
  assign OutArbiter_io_in_1_bits_0 = Units_1_io_output_bits_0; // @[Group.scala 70:25]
  assign OutArbiter_io_in_1_bits_1 = Units_1_io_output_bits_1; // @[Group.scala 70:25]
  assign OutArbiter_io_in_1_bits_2 = Units_1_io_output_bits_2; // @[Group.scala 70:25]
  assign OutArbiter_io_in_1_bits_3 = Units_1_io_output_bits_3; // @[Group.scala 70:25]
  assign OutArbiter_io_in_1_bits_4 = Units_1_io_output_bits_4; // @[Group.scala 70:25]
  assign OutArbiter_io_in_1_bits_5 = Units_1_io_output_bits_5; // @[Group.scala 70:25]
  assign OutArbiter_io_in_1_bits_6 = Units_1_io_output_bits_6; // @[Group.scala 70:25]
  assign OutArbiter_io_in_1_bits_7 = Units_1_io_output_bits_7; // @[Group.scala 70:25]
  assign OutArbiter_io_in_1_bits_8 = Units_1_io_output_bits_8; // @[Group.scala 70:25]
  assign OutArbiter_io_in_1_bits_9 = Units_1_io_output_bits_9; // @[Group.scala 70:25]
  assign OutArbiter_io_in_1_bits_10 = Units_1_io_output_bits_10; // @[Group.scala 70:25]
  assign OutArbiter_io_in_1_bits_11 = Units_1_io_output_bits_11; // @[Group.scala 70:25]
  assign OutArbiter_io_in_1_bits_12 = Units_1_io_output_bits_12; // @[Group.scala 70:25]
  assign OutArbiter_io_in_1_bits_13 = Units_1_io_output_bits_13; // @[Group.scala 70:25]
  assign OutArbiter_io_in_1_bits_14 = Units_1_io_output_bits_14; // @[Group.scala 70:25]
  assign OutArbiter_io_in_1_bits_15 = Units_1_io_output_bits_15; // @[Group.scala 70:25]
  assign OutArbiter_io_in_2_valid = Units_2_io_output_valid; // @[Group.scala 70:25]
  assign OutArbiter_io_in_2_bits_0 = Units_2_io_output_bits_0; // @[Group.scala 70:25]
  assign OutArbiter_io_in_2_bits_1 = Units_2_io_output_bits_1; // @[Group.scala 70:25]
  assign OutArbiter_io_in_2_bits_2 = Units_2_io_output_bits_2; // @[Group.scala 70:25]
  assign OutArbiter_io_in_2_bits_3 = Units_2_io_output_bits_3; // @[Group.scala 70:25]
  assign OutArbiter_io_in_2_bits_4 = Units_2_io_output_bits_4; // @[Group.scala 70:25]
  assign OutArbiter_io_in_2_bits_5 = Units_2_io_output_bits_5; // @[Group.scala 70:25]
  assign OutArbiter_io_in_2_bits_6 = Units_2_io_output_bits_6; // @[Group.scala 70:25]
  assign OutArbiter_io_in_2_bits_7 = Units_2_io_output_bits_7; // @[Group.scala 70:25]
  assign OutArbiter_io_in_2_bits_8 = Units_2_io_output_bits_8; // @[Group.scala 70:25]
  assign OutArbiter_io_in_2_bits_9 = Units_2_io_output_bits_9; // @[Group.scala 70:25]
  assign OutArbiter_io_in_2_bits_10 = Units_2_io_output_bits_10; // @[Group.scala 70:25]
  assign OutArbiter_io_in_2_bits_11 = Units_2_io_output_bits_11; // @[Group.scala 70:25]
  assign OutArbiter_io_in_2_bits_12 = Units_2_io_output_bits_12; // @[Group.scala 70:25]
  assign OutArbiter_io_in_2_bits_13 = Units_2_io_output_bits_13; // @[Group.scala 70:25]
  assign OutArbiter_io_in_2_bits_14 = Units_2_io_output_bits_14; // @[Group.scala 70:25]
  assign OutArbiter_io_in_2_bits_15 = Units_2_io_output_bits_15; // @[Group.scala 70:25]
  assign OutArbiter_io_in_3_valid = Units_3_io_output_valid; // @[Group.scala 70:25]
  assign OutArbiter_io_in_3_bits_0 = Units_3_io_output_bits_0; // @[Group.scala 70:25]
  assign OutArbiter_io_in_3_bits_1 = Units_3_io_output_bits_1; // @[Group.scala 70:25]
  assign OutArbiter_io_in_3_bits_2 = Units_3_io_output_bits_2; // @[Group.scala 70:25]
  assign OutArbiter_io_in_3_bits_3 = Units_3_io_output_bits_3; // @[Group.scala 70:25]
  assign OutArbiter_io_in_3_bits_4 = Units_3_io_output_bits_4; // @[Group.scala 70:25]
  assign OutArbiter_io_in_3_bits_5 = Units_3_io_output_bits_5; // @[Group.scala 70:25]
  assign OutArbiter_io_in_3_bits_6 = Units_3_io_output_bits_6; // @[Group.scala 70:25]
  assign OutArbiter_io_in_3_bits_7 = Units_3_io_output_bits_7; // @[Group.scala 70:25]
  assign OutArbiter_io_in_3_bits_8 = Units_3_io_output_bits_8; // @[Group.scala 70:25]
  assign OutArbiter_io_in_3_bits_9 = Units_3_io_output_bits_9; // @[Group.scala 70:25]
  assign OutArbiter_io_in_3_bits_10 = Units_3_io_output_bits_10; // @[Group.scala 70:25]
  assign OutArbiter_io_in_3_bits_11 = Units_3_io_output_bits_11; // @[Group.scala 70:25]
  assign OutArbiter_io_in_3_bits_12 = Units_3_io_output_bits_12; // @[Group.scala 70:25]
  assign OutArbiter_io_in_3_bits_13 = Units_3_io_output_bits_13; // @[Group.scala 70:25]
  assign OutArbiter_io_in_3_bits_14 = Units_3_io_output_bits_14; // @[Group.scala 70:25]
  assign OutArbiter_io_in_3_bits_15 = Units_3_io_output_bits_15; // @[Group.scala 70:25]
  assign OutArbiter_io_out_ready = io_text_out_ready; // @[Group.scala 75:15]
  assign KeyExpansionModule_clock = clock;
  assign KeyExpansionModule_reset = reset;
  assign KeyExpansionModule_io_user_key_valid = io_user_key_valid; // @[Group.scala 38:34]
  assign KeyExpansionModule_io_user_key_bits_0 = io_user_key_bits_0; // @[Group.scala 38:34]
  assign KeyExpansionModule_io_user_key_bits_1 = io_user_key_bits_1; // @[Group.scala 38:34]
  assign KeyExpansionModule_io_user_key_bits_2 = io_user_key_bits_2; // @[Group.scala 38:34]
  assign KeyExpansionModule_io_user_key_bits_3 = io_user_key_bits_3; // @[Group.scala 38:34]
  assign KeyExpansionModule_io_user_key_bits_4 = io_user_key_bits_4; // @[Group.scala 38:34]
  assign KeyExpansionModule_io_user_key_bits_5 = io_user_key_bits_5; // @[Group.scala 38:34]
  assign KeyExpansionModule_io_user_key_bits_6 = io_user_key_bits_6; // @[Group.scala 38:34]
  assign KeyExpansionModule_io_user_key_bits_7 = io_user_key_bits_7; // @[Group.scala 38:34]
  assign KeyExpansionModule_io_user_key_bits_8 = io_user_key_bits_8; // @[Group.scala 38:34]
  assign KeyExpansionModule_io_user_key_bits_9 = io_user_key_bits_9; // @[Group.scala 38:34]
  assign KeyExpansionModule_io_user_key_bits_10 = io_user_key_bits_10; // @[Group.scala 38:34]
  assign KeyExpansionModule_io_user_key_bits_11 = io_user_key_bits_11; // @[Group.scala 38:34]
  assign KeyExpansionModule_io_user_key_bits_12 = io_user_key_bits_12; // @[Group.scala 38:34]
  assign KeyExpansionModule_io_user_key_bits_13 = io_user_key_bits_13; // @[Group.scala 38:34]
  assign KeyExpansionModule_io_user_key_bits_14 = io_user_key_bits_14; // @[Group.scala 38:34]
  assign KeyExpansionModule_io_user_key_bits_15 = io_user_key_bits_15; // @[Group.scala 38:34]
  assign Units_0_clock = clock;
  assign Units_0_reset = reset;
  assign Units_0_io_input_valid = io_workID_start[3:2] == 2'h0 & io_text_in_valid; // @[Group.scala 53:47 54:31 62:31]
  assign Units_0_io_input_bits_state_0 = io_text_in_bits_0; // @[Group.scala 53:47 55:36]
  assign Units_0_io_input_bits_state_1 = io_text_in_bits_1; // @[Group.scala 53:47 55:36]
  assign Units_0_io_input_bits_state_2 = io_text_in_bits_2; // @[Group.scala 53:47 55:36]
  assign Units_0_io_input_bits_state_3 = io_text_in_bits_3; // @[Group.scala 53:47 55:36]
  assign Units_0_io_input_bits_state_4 = io_text_in_bits_4; // @[Group.scala 53:47 55:36]
  assign Units_0_io_input_bits_state_5 = io_text_in_bits_5; // @[Group.scala 53:47 55:36]
  assign Units_0_io_input_bits_state_6 = io_text_in_bits_6; // @[Group.scala 53:47 55:36]
  assign Units_0_io_input_bits_state_7 = io_text_in_bits_7; // @[Group.scala 53:47 55:36]
  assign Units_0_io_input_bits_state_8 = io_text_in_bits_8; // @[Group.scala 53:47 55:36]
  assign Units_0_io_input_bits_state_9 = io_text_in_bits_9; // @[Group.scala 53:47 55:36]
  assign Units_0_io_input_bits_state_10 = io_text_in_bits_10; // @[Group.scala 53:47 55:36]
  assign Units_0_io_input_bits_state_11 = io_text_in_bits_11; // @[Group.scala 53:47 55:36]
  assign Units_0_io_input_bits_state_12 = io_text_in_bits_12; // @[Group.scala 53:47 55:36]
  assign Units_0_io_input_bits_state_13 = io_text_in_bits_13; // @[Group.scala 53:47 55:36]
  assign Units_0_io_input_bits_state_14 = io_text_in_bits_14; // @[Group.scala 53:47 55:36]
  assign Units_0_io_input_bits_state_15 = io_text_in_bits_15; // @[Group.scala 53:47 55:36]
  assign Units_0_io_input_bits_control_isIdle = io_workID_start[3:2] == 2'h0 ? 1'h0 : 1'h1; // @[Group.scala 53:47 56:45 64:45]
  assign Units_0_io_input_bits_control_taskID = io_workID_start[3:2] == 2'h0 ? io_workID_start[1:0] : 2'h0; // @[Group.scala 53:47 58:45 66:45]
  assign Units_0_io_output_ready = OutArbiter_io_in_0_ready; // @[Group.scala 70:25]
  assign Units_0_io_write_en = WorkID_Key[3:2] == 2'h0 & KeyExpansionModule_io_write_round_valid; // @[Group.scala 41:42 42:28 47:28]
  assign Units_0_io_write_task = WorkID_Key[3:2] == 2'h0 ? WorkID_Key[1:0] : 2'h0; // @[Group.scala 41:42 43:30 48:30]
  assign Units_0_io_write_round = WorkID_Key[3:2] == 2'h0 ? KeyExpansionModule_io_write_round_bits : 4'h0; // @[Group.scala 41:42 44:31 49:31]
  assign Units_0_io_write_key_0 = KeyExpansionModule_io_roundKey_0; // @[Group.scala 41:42 45:29]
  assign Units_0_io_write_key_1 = KeyExpansionModule_io_roundKey_1; // @[Group.scala 41:42 45:29]
  assign Units_0_io_write_key_2 = KeyExpansionModule_io_roundKey_2; // @[Group.scala 41:42 45:29]
  assign Units_0_io_write_key_3 = KeyExpansionModule_io_roundKey_3; // @[Group.scala 41:42 45:29]
  assign Units_0_io_write_key_4 = KeyExpansionModule_io_roundKey_4; // @[Group.scala 41:42 45:29]
  assign Units_0_io_write_key_5 = KeyExpansionModule_io_roundKey_5; // @[Group.scala 41:42 45:29]
  assign Units_0_io_write_key_6 = KeyExpansionModule_io_roundKey_6; // @[Group.scala 41:42 45:29]
  assign Units_0_io_write_key_7 = KeyExpansionModule_io_roundKey_7; // @[Group.scala 41:42 45:29]
  assign Units_0_io_write_key_8 = KeyExpansionModule_io_roundKey_8; // @[Group.scala 41:42 45:29]
  assign Units_0_io_write_key_9 = KeyExpansionModule_io_roundKey_9; // @[Group.scala 41:42 45:29]
  assign Units_0_io_write_key_10 = KeyExpansionModule_io_roundKey_10; // @[Group.scala 41:42 45:29]
  assign Units_0_io_write_key_11 = KeyExpansionModule_io_roundKey_11; // @[Group.scala 41:42 45:29]
  assign Units_0_io_write_key_12 = KeyExpansionModule_io_roundKey_12; // @[Group.scala 41:42 45:29]
  assign Units_0_io_write_key_13 = KeyExpansionModule_io_roundKey_13; // @[Group.scala 41:42 45:29]
  assign Units_0_io_write_key_14 = KeyExpansionModule_io_roundKey_14; // @[Group.scala 41:42 45:29]
  assign Units_0_io_write_key_15 = KeyExpansionModule_io_roundKey_15; // @[Group.scala 41:42 45:29]
  assign Units_1_clock = clock;
  assign Units_1_reset = reset;
  assign Units_1_io_input_valid = io_workID_start[3:2] == 2'h1 & io_text_in_valid; // @[Group.scala 53:47 54:31 62:31]
  assign Units_1_io_input_bits_state_0 = io_text_in_bits_0; // @[Group.scala 53:47 55:36]
  assign Units_1_io_input_bits_state_1 = io_text_in_bits_1; // @[Group.scala 53:47 55:36]
  assign Units_1_io_input_bits_state_2 = io_text_in_bits_2; // @[Group.scala 53:47 55:36]
  assign Units_1_io_input_bits_state_3 = io_text_in_bits_3; // @[Group.scala 53:47 55:36]
  assign Units_1_io_input_bits_state_4 = io_text_in_bits_4; // @[Group.scala 53:47 55:36]
  assign Units_1_io_input_bits_state_5 = io_text_in_bits_5; // @[Group.scala 53:47 55:36]
  assign Units_1_io_input_bits_state_6 = io_text_in_bits_6; // @[Group.scala 53:47 55:36]
  assign Units_1_io_input_bits_state_7 = io_text_in_bits_7; // @[Group.scala 53:47 55:36]
  assign Units_1_io_input_bits_state_8 = io_text_in_bits_8; // @[Group.scala 53:47 55:36]
  assign Units_1_io_input_bits_state_9 = io_text_in_bits_9; // @[Group.scala 53:47 55:36]
  assign Units_1_io_input_bits_state_10 = io_text_in_bits_10; // @[Group.scala 53:47 55:36]
  assign Units_1_io_input_bits_state_11 = io_text_in_bits_11; // @[Group.scala 53:47 55:36]
  assign Units_1_io_input_bits_state_12 = io_text_in_bits_12; // @[Group.scala 53:47 55:36]
  assign Units_1_io_input_bits_state_13 = io_text_in_bits_13; // @[Group.scala 53:47 55:36]
  assign Units_1_io_input_bits_state_14 = io_text_in_bits_14; // @[Group.scala 53:47 55:36]
  assign Units_1_io_input_bits_state_15 = io_text_in_bits_15; // @[Group.scala 53:47 55:36]
  assign Units_1_io_input_bits_control_isIdle = io_workID_start[3:2] == 2'h1 ? 1'h0 : 1'h1; // @[Group.scala 53:47 56:45 64:45]
  assign Units_1_io_input_bits_control_taskID = io_workID_start[3:2] == 2'h1 ? io_workID_start[1:0] : 2'h0; // @[Group.scala 53:47 58:45 66:45]
  assign Units_1_io_output_ready = OutArbiter_io_in_1_ready; // @[Group.scala 70:25]
  assign Units_1_io_write_en = WorkID_Key[3:2] == 2'h1 & KeyExpansionModule_io_write_round_valid; // @[Group.scala 41:42 42:28 47:28]
  assign Units_1_io_write_task = WorkID_Key[3:2] == 2'h1 ? WorkID_Key[1:0] : 2'h0; // @[Group.scala 41:42 43:30 48:30]
  assign Units_1_io_write_round = WorkID_Key[3:2] == 2'h1 ? KeyExpansionModule_io_write_round_bits : 4'h0; // @[Group.scala 41:42 44:31 49:31]
  assign Units_1_io_write_key_0 = KeyExpansionModule_io_roundKey_0; // @[Group.scala 41:42 45:29]
  assign Units_1_io_write_key_1 = KeyExpansionModule_io_roundKey_1; // @[Group.scala 41:42 45:29]
  assign Units_1_io_write_key_2 = KeyExpansionModule_io_roundKey_2; // @[Group.scala 41:42 45:29]
  assign Units_1_io_write_key_3 = KeyExpansionModule_io_roundKey_3; // @[Group.scala 41:42 45:29]
  assign Units_1_io_write_key_4 = KeyExpansionModule_io_roundKey_4; // @[Group.scala 41:42 45:29]
  assign Units_1_io_write_key_5 = KeyExpansionModule_io_roundKey_5; // @[Group.scala 41:42 45:29]
  assign Units_1_io_write_key_6 = KeyExpansionModule_io_roundKey_6; // @[Group.scala 41:42 45:29]
  assign Units_1_io_write_key_7 = KeyExpansionModule_io_roundKey_7; // @[Group.scala 41:42 45:29]
  assign Units_1_io_write_key_8 = KeyExpansionModule_io_roundKey_8; // @[Group.scala 41:42 45:29]
  assign Units_1_io_write_key_9 = KeyExpansionModule_io_roundKey_9; // @[Group.scala 41:42 45:29]
  assign Units_1_io_write_key_10 = KeyExpansionModule_io_roundKey_10; // @[Group.scala 41:42 45:29]
  assign Units_1_io_write_key_11 = KeyExpansionModule_io_roundKey_11; // @[Group.scala 41:42 45:29]
  assign Units_1_io_write_key_12 = KeyExpansionModule_io_roundKey_12; // @[Group.scala 41:42 45:29]
  assign Units_1_io_write_key_13 = KeyExpansionModule_io_roundKey_13; // @[Group.scala 41:42 45:29]
  assign Units_1_io_write_key_14 = KeyExpansionModule_io_roundKey_14; // @[Group.scala 41:42 45:29]
  assign Units_1_io_write_key_15 = KeyExpansionModule_io_roundKey_15; // @[Group.scala 41:42 45:29]
  assign Units_2_clock = clock;
  assign Units_2_reset = reset;
  assign Units_2_io_input_valid = io_workID_start[3:2] == 2'h2 & io_text_in_valid; // @[Group.scala 53:47 54:31 62:31]
  assign Units_2_io_input_bits_state_0 = io_text_in_bits_0; // @[Group.scala 53:47 55:36]
  assign Units_2_io_input_bits_state_1 = io_text_in_bits_1; // @[Group.scala 53:47 55:36]
  assign Units_2_io_input_bits_state_2 = io_text_in_bits_2; // @[Group.scala 53:47 55:36]
  assign Units_2_io_input_bits_state_3 = io_text_in_bits_3; // @[Group.scala 53:47 55:36]
  assign Units_2_io_input_bits_state_4 = io_text_in_bits_4; // @[Group.scala 53:47 55:36]
  assign Units_2_io_input_bits_state_5 = io_text_in_bits_5; // @[Group.scala 53:47 55:36]
  assign Units_2_io_input_bits_state_6 = io_text_in_bits_6; // @[Group.scala 53:47 55:36]
  assign Units_2_io_input_bits_state_7 = io_text_in_bits_7; // @[Group.scala 53:47 55:36]
  assign Units_2_io_input_bits_state_8 = io_text_in_bits_8; // @[Group.scala 53:47 55:36]
  assign Units_2_io_input_bits_state_9 = io_text_in_bits_9; // @[Group.scala 53:47 55:36]
  assign Units_2_io_input_bits_state_10 = io_text_in_bits_10; // @[Group.scala 53:47 55:36]
  assign Units_2_io_input_bits_state_11 = io_text_in_bits_11; // @[Group.scala 53:47 55:36]
  assign Units_2_io_input_bits_state_12 = io_text_in_bits_12; // @[Group.scala 53:47 55:36]
  assign Units_2_io_input_bits_state_13 = io_text_in_bits_13; // @[Group.scala 53:47 55:36]
  assign Units_2_io_input_bits_state_14 = io_text_in_bits_14; // @[Group.scala 53:47 55:36]
  assign Units_2_io_input_bits_state_15 = io_text_in_bits_15; // @[Group.scala 53:47 55:36]
  assign Units_2_io_input_bits_control_isIdle = io_workID_start[3:2] == 2'h2 ? 1'h0 : 1'h1; // @[Group.scala 53:47 56:45 64:45]
  assign Units_2_io_input_bits_control_taskID = io_workID_start[3:2] == 2'h2 ? io_workID_start[1:0] : 2'h0; // @[Group.scala 53:47 58:45 66:45]
  assign Units_2_io_output_ready = OutArbiter_io_in_2_ready; // @[Group.scala 70:25]
  assign Units_2_io_write_en = WorkID_Key[3:2] == 2'h2 & KeyExpansionModule_io_write_round_valid; // @[Group.scala 41:42 42:28 47:28]
  assign Units_2_io_write_task = WorkID_Key[3:2] == 2'h2 ? WorkID_Key[1:0] : 2'h0; // @[Group.scala 41:42 43:30 48:30]
  assign Units_2_io_write_round = WorkID_Key[3:2] == 2'h2 ? KeyExpansionModule_io_write_round_bits : 4'h0; // @[Group.scala 41:42 44:31 49:31]
  assign Units_2_io_write_key_0 = KeyExpansionModule_io_roundKey_0; // @[Group.scala 41:42 45:29]
  assign Units_2_io_write_key_1 = KeyExpansionModule_io_roundKey_1; // @[Group.scala 41:42 45:29]
  assign Units_2_io_write_key_2 = KeyExpansionModule_io_roundKey_2; // @[Group.scala 41:42 45:29]
  assign Units_2_io_write_key_3 = KeyExpansionModule_io_roundKey_3; // @[Group.scala 41:42 45:29]
  assign Units_2_io_write_key_4 = KeyExpansionModule_io_roundKey_4; // @[Group.scala 41:42 45:29]
  assign Units_2_io_write_key_5 = KeyExpansionModule_io_roundKey_5; // @[Group.scala 41:42 45:29]
  assign Units_2_io_write_key_6 = KeyExpansionModule_io_roundKey_6; // @[Group.scala 41:42 45:29]
  assign Units_2_io_write_key_7 = KeyExpansionModule_io_roundKey_7; // @[Group.scala 41:42 45:29]
  assign Units_2_io_write_key_8 = KeyExpansionModule_io_roundKey_8; // @[Group.scala 41:42 45:29]
  assign Units_2_io_write_key_9 = KeyExpansionModule_io_roundKey_9; // @[Group.scala 41:42 45:29]
  assign Units_2_io_write_key_10 = KeyExpansionModule_io_roundKey_10; // @[Group.scala 41:42 45:29]
  assign Units_2_io_write_key_11 = KeyExpansionModule_io_roundKey_11; // @[Group.scala 41:42 45:29]
  assign Units_2_io_write_key_12 = KeyExpansionModule_io_roundKey_12; // @[Group.scala 41:42 45:29]
  assign Units_2_io_write_key_13 = KeyExpansionModule_io_roundKey_13; // @[Group.scala 41:42 45:29]
  assign Units_2_io_write_key_14 = KeyExpansionModule_io_roundKey_14; // @[Group.scala 41:42 45:29]
  assign Units_2_io_write_key_15 = KeyExpansionModule_io_roundKey_15; // @[Group.scala 41:42 45:29]
  assign Units_3_clock = clock;
  assign Units_3_reset = reset;
  assign Units_3_io_input_valid = io_workID_start[3:2] == 2'h3 & io_text_in_valid; // @[Group.scala 53:47 54:31 62:31]
  assign Units_3_io_input_bits_state_0 = io_text_in_bits_0; // @[Group.scala 53:47 55:36]
  assign Units_3_io_input_bits_state_1 = io_text_in_bits_1; // @[Group.scala 53:47 55:36]
  assign Units_3_io_input_bits_state_2 = io_text_in_bits_2; // @[Group.scala 53:47 55:36]
  assign Units_3_io_input_bits_state_3 = io_text_in_bits_3; // @[Group.scala 53:47 55:36]
  assign Units_3_io_input_bits_state_4 = io_text_in_bits_4; // @[Group.scala 53:47 55:36]
  assign Units_3_io_input_bits_state_5 = io_text_in_bits_5; // @[Group.scala 53:47 55:36]
  assign Units_3_io_input_bits_state_6 = io_text_in_bits_6; // @[Group.scala 53:47 55:36]
  assign Units_3_io_input_bits_state_7 = io_text_in_bits_7; // @[Group.scala 53:47 55:36]
  assign Units_3_io_input_bits_state_8 = io_text_in_bits_8; // @[Group.scala 53:47 55:36]
  assign Units_3_io_input_bits_state_9 = io_text_in_bits_9; // @[Group.scala 53:47 55:36]
  assign Units_3_io_input_bits_state_10 = io_text_in_bits_10; // @[Group.scala 53:47 55:36]
  assign Units_3_io_input_bits_state_11 = io_text_in_bits_11; // @[Group.scala 53:47 55:36]
  assign Units_3_io_input_bits_state_12 = io_text_in_bits_12; // @[Group.scala 53:47 55:36]
  assign Units_3_io_input_bits_state_13 = io_text_in_bits_13; // @[Group.scala 53:47 55:36]
  assign Units_3_io_input_bits_state_14 = io_text_in_bits_14; // @[Group.scala 53:47 55:36]
  assign Units_3_io_input_bits_state_15 = io_text_in_bits_15; // @[Group.scala 53:47 55:36]
  assign Units_3_io_input_bits_control_isIdle = io_workID_start[3:2] == 2'h3 ? 1'h0 : 1'h1; // @[Group.scala 53:47 56:45 64:45]
  assign Units_3_io_input_bits_control_taskID = io_workID_start[3:2] == 2'h3 ? io_workID_start[1:0] : 2'h0; // @[Group.scala 53:47 58:45 66:45]
  assign Units_3_io_input_bits_control_rounds = io_workID_start[3:2] == 2'h3 ? 4'ha : 4'h0; // @[Group.scala 53:47 60:45 67:45]
  assign Units_3_io_output_ready = OutArbiter_io_in_3_ready; // @[Group.scala 70:25]
  assign Units_3_io_write_en = WorkID_Key[3:2] == 2'h3 & KeyExpansionModule_io_write_round_valid; // @[Group.scala 41:42 42:28 47:28]
  assign Units_3_io_write_task = WorkID_Key[3:2] == 2'h3 ? WorkID_Key[1:0] : 2'h0; // @[Group.scala 41:42 43:30 48:30]
  assign Units_3_io_write_round = WorkID_Key[3:2] == 2'h3 ? KeyExpansionModule_io_write_round_bits : 4'h0; // @[Group.scala 41:42 44:31 49:31]
  assign Units_3_io_write_key_0 = KeyExpansionModule_io_roundKey_0; // @[Group.scala 41:42 45:29]
  assign Units_3_io_write_key_1 = KeyExpansionModule_io_roundKey_1; // @[Group.scala 41:42 45:29]
  assign Units_3_io_write_key_2 = KeyExpansionModule_io_roundKey_2; // @[Group.scala 41:42 45:29]
  assign Units_3_io_write_key_3 = KeyExpansionModule_io_roundKey_3; // @[Group.scala 41:42 45:29]
  assign Units_3_io_write_key_4 = KeyExpansionModule_io_roundKey_4; // @[Group.scala 41:42 45:29]
  assign Units_3_io_write_key_5 = KeyExpansionModule_io_roundKey_5; // @[Group.scala 41:42 45:29]
  assign Units_3_io_write_key_6 = KeyExpansionModule_io_roundKey_6; // @[Group.scala 41:42 45:29]
  assign Units_3_io_write_key_7 = KeyExpansionModule_io_roundKey_7; // @[Group.scala 41:42 45:29]
  assign Units_3_io_write_key_8 = KeyExpansionModule_io_roundKey_8; // @[Group.scala 41:42 45:29]
  assign Units_3_io_write_key_9 = KeyExpansionModule_io_roundKey_9; // @[Group.scala 41:42 45:29]
  assign Units_3_io_write_key_10 = KeyExpansionModule_io_roundKey_10; // @[Group.scala 41:42 45:29]
  assign Units_3_io_write_key_11 = KeyExpansionModule_io_roundKey_11; // @[Group.scala 41:42 45:29]
  assign Units_3_io_write_key_12 = KeyExpansionModule_io_roundKey_12; // @[Group.scala 41:42 45:29]
  assign Units_3_io_write_key_13 = KeyExpansionModule_io_roundKey_13; // @[Group.scala 41:42 45:29]
  assign Units_3_io_write_key_14 = KeyExpansionModule_io_roundKey_14; // @[Group.scala 41:42 45:29]
  assign Units_3_io_write_key_15 = KeyExpansionModule_io_roundKey_15; // @[Group.scala 41:42 45:29]
  always @(posedge clock) begin
    if (reset) begin // @[Group.scala 21:27]
      WorkID_Key <= 4'h0; // @[Group.scala 21:27]
    end else if (_T) begin // @[Group.scala 34:26]
      WorkID_Key <= io_workID_key; // @[Group.scala 35:16]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  WorkID_Key = _RAND_0[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Queue(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [31:0] io_enq_bits,
  input         io_deq_ready,
  output        io_deq_valid,
  output [31:0] io_deq_bits
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] ram [0:15]; // @[Decoupled.scala 259:44]
  wire  ram_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:44]
  wire [3:0] ram_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:44]
  wire [31:0] ram_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:44]
  wire [31:0] ram_MPORT_data; // @[Decoupled.scala 259:44]
  wire [3:0] ram_MPORT_addr; // @[Decoupled.scala 259:44]
  wire  ram_MPORT_mask; // @[Decoupled.scala 259:44]
  wire  ram_MPORT_en; // @[Decoupled.scala 259:44]
  reg  ram_io_deq_bits_MPORT_en_pipe_0;
  reg [3:0] ram_io_deq_bits_MPORT_addr_pipe_0;
  reg [3:0] enq_ptr_value; // @[Counter.scala 62:40]
  reg [3:0] deq_ptr_value; // @[Counter.scala 62:40]
  reg  maybe_full; // @[Decoupled.scala 262:27]
  wire  ptr_match = enq_ptr_value == deq_ptr_value; // @[Decoupled.scala 263:33]
  wire  empty = ptr_match & ~maybe_full; // @[Decoupled.scala 264:25]
  wire  full = ptr_match & maybe_full; // @[Decoupled.scala 265:24]
  wire  do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 50:35]
  wire  do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 50:35]
  wire [3:0] _value_T_1 = enq_ptr_value + 4'h1; // @[Counter.scala 78:24]
  wire [3:0] _value_T_3 = deq_ptr_value + 4'h1; // @[Counter.scala 78:24]
  wire [4:0] _deq_ptr_next_T_1 = 5'h10 - 5'h1; // @[Decoupled.scala 292:57]
  wire [4:0] _GEN_15 = {{1'd0}, deq_ptr_value}; // @[Decoupled.scala 292:42]
  assign ram_io_deq_bits_MPORT_en = ram_io_deq_bits_MPORT_en_pipe_0;
  assign ram_io_deq_bits_MPORT_addr = ram_io_deq_bits_MPORT_addr_pipe_0;
  assign ram_io_deq_bits_MPORT_data = ram[ram_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:44]
  assign ram_MPORT_data = io_enq_bits;
  assign ram_MPORT_addr = enq_ptr_value;
  assign ram_MPORT_mask = 1'h1;
  assign ram_MPORT_en = io_enq_ready & io_enq_valid;
  assign io_enq_ready = ~full; // @[Decoupled.scala 289:19]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 288:19]
  assign io_deq_bits = ram_io_deq_bits_MPORT_data; // @[Decoupled.scala 294:17]
  always @(posedge clock) begin
    if (ram_MPORT_en & ram_MPORT_mask) begin
      ram[ram_MPORT_addr] <= ram_MPORT_data; // @[Decoupled.scala 259:44]
    end
    ram_io_deq_bits_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      if (do_deq) begin
        if (_GEN_15 == _deq_ptr_next_T_1) begin // @[Decoupled.scala 292:27]
          ram_io_deq_bits_MPORT_addr_pipe_0 <= 4'h0;
        end else begin
          ram_io_deq_bits_MPORT_addr_pipe_0 <= _value_T_3;
        end
      end else begin
        ram_io_deq_bits_MPORT_addr_pipe_0 <= deq_ptr_value;
      end
    end
    if (reset) begin // @[Counter.scala 62:40]
      enq_ptr_value <= 4'h0; // @[Counter.scala 62:40]
    end else if (do_enq) begin // @[Decoupled.scala 272:16]
      enq_ptr_value <= _value_T_1; // @[Counter.scala 78:15]
    end
    if (reset) begin // @[Counter.scala 62:40]
      deq_ptr_value <= 4'h0; // @[Counter.scala 62:40]
    end else if (do_deq) begin // @[Decoupled.scala 276:16]
      deq_ptr_value <= _value_T_3; // @[Counter.scala 78:15]
    end
    if (reset) begin // @[Decoupled.scala 262:27]
      maybe_full <= 1'h0; // @[Decoupled.scala 262:27]
    end else if (do_enq != do_deq) begin // @[Decoupled.scala 279:27]
      maybe_full <= do_enq; // @[Decoupled.scala 280:16]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    ram[initvar] = _RAND_0[31:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  ram_io_deq_bits_MPORT_en_pipe_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  ram_io_deq_bits_MPORT_addr_pipe_0 = _RAND_2[3:0];
  _RAND_3 = {1{`RANDOM}};
  enq_ptr_value = _RAND_3[3:0];
  _RAND_4 = {1{`RANDOM}};
  deq_ptr_value = _RAND_4[3:0];
  _RAND_5 = {1{`RANDOM}};
  maybe_full = _RAND_5[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Queue_1(
  input        clock,
  input        reset,
  output       io_enq_ready,
  input        io_enq_valid,
  input  [3:0] io_enq_bits,
  input        io_deq_ready,
  output       io_deq_valid,
  output [3:0] io_deq_bits
);
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_GARBAGE_ASSIGN
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  reg [3:0] ram [0:4]; // @[Decoupled.scala 259:95]
  wire  ram_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [2:0] ram_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [3:0] ram_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [3:0] ram_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_MPORT_en; // @[Decoupled.scala 259:95]
  reg [2:0] enq_ptr_value; // @[Counter.scala 62:40]
  reg [2:0] deq_ptr_value; // @[Counter.scala 62:40]
  reg  maybe_full; // @[Decoupled.scala 262:27]
  wire  ptr_match = enq_ptr_value == deq_ptr_value; // @[Decoupled.scala 263:33]
  wire  empty = ptr_match & ~maybe_full; // @[Decoupled.scala 264:25]
  wire  full = ptr_match & maybe_full; // @[Decoupled.scala 265:24]
  wire  do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 50:35]
  wire  do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 50:35]
  wire  wrap = enq_ptr_value == 3'h4; // @[Counter.scala 74:24]
  wire [2:0] _value_T_1 = enq_ptr_value + 3'h1; // @[Counter.scala 78:24]
  wire  wrap_1 = deq_ptr_value == 3'h4; // @[Counter.scala 74:24]
  wire [2:0] _value_T_3 = deq_ptr_value + 3'h1; // @[Counter.scala 78:24]
  assign ram_io_deq_bits_MPORT_en = 1'h1;
  assign ram_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_io_deq_bits_MPORT_data = ram[ram_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  `else
  assign ram_io_deq_bits_MPORT_data = ram_io_deq_bits_MPORT_addr >= 3'h5 ? _RAND_1[3:0] :
    ram[ram_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_MPORT_data = io_enq_bits;
  assign ram_MPORT_addr = enq_ptr_value;
  assign ram_MPORT_mask = 1'h1;
  assign ram_MPORT_en = io_enq_ready & io_enq_valid;
  assign io_enq_ready = ~full; // @[Decoupled.scala 289:19]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 288:19]
  assign io_deq_bits = ram_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  always @(posedge clock) begin
    if (ram_MPORT_en & ram_MPORT_mask) begin
      ram[ram_MPORT_addr] <= ram_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (reset) begin // @[Counter.scala 62:40]
      enq_ptr_value <= 3'h0; // @[Counter.scala 62:40]
    end else if (do_enq) begin // @[Decoupled.scala 272:16]
      if (wrap) begin // @[Counter.scala 88:20]
        enq_ptr_value <= 3'h0; // @[Counter.scala 88:28]
      end else begin
        enq_ptr_value <= _value_T_1; // @[Counter.scala 78:15]
      end
    end
    if (reset) begin // @[Counter.scala 62:40]
      deq_ptr_value <= 3'h0; // @[Counter.scala 62:40]
    end else if (do_deq) begin // @[Decoupled.scala 276:16]
      if (wrap_1) begin // @[Counter.scala 88:20]
        deq_ptr_value <= 3'h0; // @[Counter.scala 88:28]
      end else begin
        deq_ptr_value <= _value_T_3; // @[Counter.scala 78:15]
      end
    end
    if (reset) begin // @[Decoupled.scala 262:27]
      maybe_full <= 1'h0; // @[Decoupled.scala 262:27]
    end else if (do_enq != do_deq) begin // @[Decoupled.scala 279:27]
      maybe_full <= do_enq; // @[Decoupled.scala 280:16]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  _RAND_1 = {1{`RANDOM}};
`endif // RANDOMIZE_GARBAGE_ASSIGN
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 5; initvar = initvar+1)
    ram[initvar] = _RAND_0[3:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  enq_ptr_value = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  deq_ptr_value = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  maybe_full = _RAND_4[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Controller(
  input         clock,
  input         reset,
  output        io_fifo_in_ready,
  input         io_fifo_in_valid,
  input  [31:0] io_fifo_in_bits,
  output        io_source_addr_setwork_ready,
  input         io_source_addr_setwork_valid,
  input  [31:0] io_source_addr_setwork_bits,
  input  [31:0] io_dest_addr_setwork,
  input  [25:0] io_length_setwork,
  input  [3:0]  io_slotID_setwork,
  output        io_user_key_ready,
  input         io_user_key_valid,
  input  [7:0]  io_user_key_bits_0,
  input  [7:0]  io_user_key_bits_1,
  input  [7:0]  io_user_key_bits_2,
  input  [7:0]  io_user_key_bits_3,
  input  [7:0]  io_user_key_bits_4,
  input  [7:0]  io_user_key_bits_5,
  input  [7:0]  io_user_key_bits_6,
  input  [7:0]  io_user_key_bits_7,
  input  [7:0]  io_user_key_bits_8,
  input  [7:0]  io_user_key_bits_9,
  input  [7:0]  io_user_key_bits_10,
  input  [7:0]  io_user_key_bits_11,
  input  [7:0]  io_user_key_bits_12,
  input  [7:0]  io_user_key_bits_13,
  input  [7:0]  io_user_key_bits_14,
  input  [7:0]  io_user_key_bits_15,
  input  [3:0]  io_slotID_key,
  output        io_destroy_ready,
  input         io_destroy_valid,
  input  [3:0]  io_destroy_bits,
  input         io_source_addr_dma_ready,
  output        io_source_addr_dma_valid,
  output [31:0] io_source_addr_dma_bits,
  input         io_dest_addr_dma_ready,
  output        io_dest_addr_dma_valid,
  output [31:0] io_dest_addr_dma_bits,
  input         io_fifo_out_ready,
  output        io_fifo_out_valid,
  output [31:0] io_fifo_out_bits,
  output        io_source_interrupt,
  output        io_dest_interrupt
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [31:0] _RAND_89;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
  reg [31:0] _RAND_94;
  reg [31:0] _RAND_95;
  reg [31:0] _RAND_96;
  reg [31:0] _RAND_97;
  reg [31:0] _RAND_98;
  reg [31:0] _RAND_99;
  reg [31:0] _RAND_100;
  reg [31:0] _RAND_101;
  reg [31:0] _RAND_102;
  reg [31:0] _RAND_103;
  reg [31:0] _RAND_104;
  reg [31:0] _RAND_105;
  reg [31:0] _RAND_106;
  reg [31:0] _RAND_107;
  reg [31:0] _RAND_108;
  reg [31:0] _RAND_109;
  reg [31:0] _RAND_110;
  reg [31:0] _RAND_111;
  reg [31:0] _RAND_112;
  reg [31:0] _RAND_113;
  reg [31:0] _RAND_114;
  reg [31:0] _RAND_115;
  reg [31:0] _RAND_116;
  reg [31:0] _RAND_117;
`endif // RANDOMIZE_REG_INIT
  wire  AESEngine_clock; // @[Controller.scala 46:25]
  wire  AESEngine_reset; // @[Controller.scala 46:25]
  wire [3:0] AESEngine_io_workID_key; // @[Controller.scala 46:25]
  wire  AESEngine_io_user_key_ready; // @[Controller.scala 46:25]
  wire  AESEngine_io_user_key_valid; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_user_key_bits_0; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_user_key_bits_1; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_user_key_bits_2; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_user_key_bits_3; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_user_key_bits_4; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_user_key_bits_5; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_user_key_bits_6; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_user_key_bits_7; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_user_key_bits_8; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_user_key_bits_9; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_user_key_bits_10; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_user_key_bits_11; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_user_key_bits_12; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_user_key_bits_13; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_user_key_bits_14; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_user_key_bits_15; // @[Controller.scala 46:25]
  wire [3:0] AESEngine_io_workID_start; // @[Controller.scala 46:25]
  wire  AESEngine_io_text_in_ready; // @[Controller.scala 46:25]
  wire  AESEngine_io_text_in_valid; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_text_in_bits_0; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_text_in_bits_1; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_text_in_bits_2; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_text_in_bits_3; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_text_in_bits_4; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_text_in_bits_5; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_text_in_bits_6; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_text_in_bits_7; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_text_in_bits_8; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_text_in_bits_9; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_text_in_bits_10; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_text_in_bits_11; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_text_in_bits_12; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_text_in_bits_13; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_text_in_bits_14; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_text_in_bits_15; // @[Controller.scala 46:25]
  wire [3:0] AESEngine_io_workID_read; // @[Controller.scala 46:25]
  wire  AESEngine_io_text_out_ready; // @[Controller.scala 46:25]
  wire  AESEngine_io_text_out_valid; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_text_out_bits_0; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_text_out_bits_1; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_text_out_bits_2; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_text_out_bits_3; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_text_out_bits_4; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_text_out_bits_5; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_text_out_bits_6; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_text_out_bits_7; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_text_out_bits_8; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_text_out_bits_9; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_text_out_bits_10; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_text_out_bits_11; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_text_out_bits_12; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_text_out_bits_13; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_text_out_bits_14; // @[Controller.scala 46:25]
  wire [7:0] AESEngine_io_text_out_bits_15; // @[Controller.scala 46:25]
  wire  InputFIFO_clock; // @[Controller.scala 58:25]
  wire  InputFIFO_reset; // @[Controller.scala 58:25]
  wire  InputFIFO_io_enq_ready; // @[Controller.scala 58:25]
  wire  InputFIFO_io_enq_valid; // @[Controller.scala 58:25]
  wire [31:0] InputFIFO_io_enq_bits; // @[Controller.scala 58:25]
  wire  InputFIFO_io_deq_ready; // @[Controller.scala 58:25]
  wire  InputFIFO_io_deq_valid; // @[Controller.scala 58:25]
  wire [31:0] InputFIFO_io_deq_bits; // @[Controller.scala 58:25]
  wire  InputSlotIDFIFO_clock; // @[Controller.scala 59:31]
  wire  InputSlotIDFIFO_reset; // @[Controller.scala 59:31]
  wire  InputSlotIDFIFO_io_enq_ready; // @[Controller.scala 59:31]
  wire  InputSlotIDFIFO_io_enq_valid; // @[Controller.scala 59:31]
  wire [3:0] InputSlotIDFIFO_io_enq_bits; // @[Controller.scala 59:31]
  wire  InputSlotIDFIFO_io_deq_ready; // @[Controller.scala 59:31]
  wire  InputSlotIDFIFO_io_deq_valid; // @[Controller.scala 59:31]
  wire [3:0] InputSlotIDFIFO_io_deq_bits; // @[Controller.scala 59:31]
  wire  OutputFIFO_clock; // @[Controller.scala 67:26]
  wire  OutputFIFO_reset; // @[Controller.scala 67:26]
  wire  OutputFIFO_io_enq_ready; // @[Controller.scala 67:26]
  wire  OutputFIFO_io_enq_valid; // @[Controller.scala 67:26]
  wire [31:0] OutputFIFO_io_enq_bits; // @[Controller.scala 67:26]
  wire  OutputFIFO_io_deq_ready; // @[Controller.scala 67:26]
  wire  OutputFIFO_io_deq_valid; // @[Controller.scala 67:26]
  wire [31:0] OutputFIFO_io_deq_bits; // @[Controller.scala 67:26]
  wire  OutputSlotIDFIFO_clock; // @[Controller.scala 68:32]
  wire  OutputSlotIDFIFO_reset; // @[Controller.scala 68:32]
  wire  OutputSlotIDFIFO_io_enq_ready; // @[Controller.scala 68:32]
  wire  OutputSlotIDFIFO_io_enq_valid; // @[Controller.scala 68:32]
  wire [3:0] OutputSlotIDFIFO_io_enq_bits; // @[Controller.scala 68:32]
  wire  OutputSlotIDFIFO_io_deq_ready; // @[Controller.scala 68:32]
  wire  OutputSlotIDFIFO_io_deq_valid; // @[Controller.scala 68:32]
  wire [3:0] OutputSlotIDFIFO_io_deq_bits; // @[Controller.scala 68:32]
  reg  LockBank_0_key_lock; // @[Controller.scala 47:25]
  reg  LockBank_0_work_lock; // @[Controller.scala 47:25]
  reg  LockBank_1_key_lock; // @[Controller.scala 47:25]
  reg  LockBank_1_work_lock; // @[Controller.scala 47:25]
  reg  LockBank_2_key_lock; // @[Controller.scala 47:25]
  reg  LockBank_2_work_lock; // @[Controller.scala 47:25]
  reg  LockBank_3_key_lock; // @[Controller.scala 47:25]
  reg  LockBank_3_work_lock; // @[Controller.scala 47:25]
  reg  LockBank_4_key_lock; // @[Controller.scala 47:25]
  reg  LockBank_4_work_lock; // @[Controller.scala 47:25]
  reg  LockBank_5_key_lock; // @[Controller.scala 47:25]
  reg  LockBank_5_work_lock; // @[Controller.scala 47:25]
  reg  LockBank_6_key_lock; // @[Controller.scala 47:25]
  reg  LockBank_6_work_lock; // @[Controller.scala 47:25]
  reg  LockBank_7_key_lock; // @[Controller.scala 47:25]
  reg  LockBank_7_work_lock; // @[Controller.scala 47:25]
  reg  LockBank_8_key_lock; // @[Controller.scala 47:25]
  reg  LockBank_8_work_lock; // @[Controller.scala 47:25]
  reg  LockBank_9_key_lock; // @[Controller.scala 47:25]
  reg  LockBank_9_work_lock; // @[Controller.scala 47:25]
  reg  LockBank_10_key_lock; // @[Controller.scala 47:25]
  reg  LockBank_10_work_lock; // @[Controller.scala 47:25]
  reg  LockBank_11_key_lock; // @[Controller.scala 47:25]
  reg  LockBank_11_work_lock; // @[Controller.scala 47:25]
  reg  LockBank_12_key_lock; // @[Controller.scala 47:25]
  reg  LockBank_12_work_lock; // @[Controller.scala 47:25]
  reg  LockBank_13_key_lock; // @[Controller.scala 47:25]
  reg  LockBank_13_work_lock; // @[Controller.scala 47:25]
  reg  LockBank_14_key_lock; // @[Controller.scala 47:25]
  reg  LockBank_14_work_lock; // @[Controller.scala 47:25]
  reg  LockBank_15_key_lock; // @[Controller.scala 47:25]
  reg  LockBank_15_work_lock; // @[Controller.scala 47:25]
  reg [31:0] AddrLoopQueue_0_addr; // @[Controller.scala 49:30]
  reg [3:0] AddrLoopQueue_0_slotID; // @[Controller.scala 49:30]
  reg [31:0] AddrLoopQueue_1_addr; // @[Controller.scala 49:30]
  reg [3:0] AddrLoopQueue_1_slotID; // @[Controller.scala 49:30]
  reg [31:0] AddrLoopQueue_2_addr; // @[Controller.scala 49:30]
  reg [3:0] AddrLoopQueue_2_slotID; // @[Controller.scala 49:30]
  reg [31:0] AddrLoopQueue_3_addr; // @[Controller.scala 49:30]
  reg [3:0] AddrLoopQueue_3_slotID; // @[Controller.scala 49:30]
  reg [31:0] AddrLoopQueue_4_addr; // @[Controller.scala 49:30]
  reg [3:0] AddrLoopQueue_4_slotID; // @[Controller.scala 49:30]
  reg [31:0] AddrLoopQueue_5_addr; // @[Controller.scala 49:30]
  reg [3:0] AddrLoopQueue_5_slotID; // @[Controller.scala 49:30]
  reg [31:0] AddrLoopQueue_6_addr; // @[Controller.scala 49:30]
  reg [3:0] AddrLoopQueue_6_slotID; // @[Controller.scala 49:30]
  reg [31:0] AddrLoopQueue_7_addr; // @[Controller.scala 49:30]
  reg [3:0] AddrLoopQueue_7_slotID; // @[Controller.scala 49:30]
  reg [31:0] AddrLoopQueue_8_addr; // @[Controller.scala 49:30]
  reg [3:0] AddrLoopQueue_8_slotID; // @[Controller.scala 49:30]
  reg [31:0] AddrLoopQueue_9_addr; // @[Controller.scala 49:30]
  reg [3:0] AddrLoopQueue_9_slotID; // @[Controller.scala 49:30]
  reg [31:0] AddrLoopQueue_10_addr; // @[Controller.scala 49:30]
  reg [3:0] AddrLoopQueue_10_slotID; // @[Controller.scala 49:30]
  reg [31:0] AddrLoopQueue_11_addr; // @[Controller.scala 49:30]
  reg [3:0] AddrLoopQueue_11_slotID; // @[Controller.scala 49:30]
  reg [31:0] AddrLoopQueue_12_addr; // @[Controller.scala 49:30]
  reg [3:0] AddrLoopQueue_12_slotID; // @[Controller.scala 49:30]
  reg [31:0] AddrLoopQueue_13_addr; // @[Controller.scala 49:30]
  reg [3:0] AddrLoopQueue_13_slotID; // @[Controller.scala 49:30]
  reg [31:0] AddrLoopQueue_14_addr; // @[Controller.scala 49:30]
  reg [3:0] AddrLoopQueue_14_slotID; // @[Controller.scala 49:30]
  reg [31:0] AddrLoopQueue_15_addr; // @[Controller.scala 49:30]
  reg [3:0] AddrLoopQueue_15_slotID; // @[Controller.scala 49:30]
  reg [3:0] LQHead; // @[Controller.scala 50:23]
  reg [3:0] LQTail; // @[Controller.scala 51:23]
  reg [31:0] DestAddrBank_0; // @[Controller.scala 52:29]
  reg [31:0] DestAddrBank_1; // @[Controller.scala 52:29]
  reg [31:0] DestAddrBank_2; // @[Controller.scala 52:29]
  reg [31:0] DestAddrBank_3; // @[Controller.scala 52:29]
  reg [31:0] DestAddrBank_4; // @[Controller.scala 52:29]
  reg [31:0] DestAddrBank_5; // @[Controller.scala 52:29]
  reg [31:0] DestAddrBank_6; // @[Controller.scala 52:29]
  reg [31:0] DestAddrBank_7; // @[Controller.scala 52:29]
  reg [31:0] DestAddrBank_8; // @[Controller.scala 52:29]
  reg [31:0] DestAddrBank_9; // @[Controller.scala 52:29]
  reg [31:0] DestAddrBank_10; // @[Controller.scala 52:29]
  reg [31:0] DestAddrBank_11; // @[Controller.scala 52:29]
  reg [31:0] DestAddrBank_12; // @[Controller.scala 52:29]
  reg [31:0] DestAddrBank_13; // @[Controller.scala 52:29]
  reg [31:0] DestAddrBank_14; // @[Controller.scala 52:29]
  reg [31:0] DestAddrBank_15; // @[Controller.scala 52:29]
  reg [25:0] LengthCount_0; // @[Controller.scala 53:28]
  reg [25:0] LengthCount_1; // @[Controller.scala 53:28]
  reg [25:0] LengthCount_2; // @[Controller.scala 53:28]
  reg [25:0] LengthCount_3; // @[Controller.scala 53:28]
  reg [25:0] LengthCount_4; // @[Controller.scala 53:28]
  reg [25:0] LengthCount_5; // @[Controller.scala 53:28]
  reg [25:0] LengthCount_6; // @[Controller.scala 53:28]
  reg [25:0] LengthCount_7; // @[Controller.scala 53:28]
  reg [25:0] LengthCount_8; // @[Controller.scala 53:28]
  reg [25:0] LengthCount_9; // @[Controller.scala 53:28]
  reg [25:0] LengthCount_10; // @[Controller.scala 53:28]
  reg [25:0] LengthCount_11; // @[Controller.scala 53:28]
  reg [25:0] LengthCount_12; // @[Controller.scala 53:28]
  reg [25:0] LengthCount_13; // @[Controller.scala 53:28]
  reg [25:0] LengthCount_14; // @[Controller.scala 53:28]
  reg [25:0] LengthCount_15; // @[Controller.scala 53:28]
  reg [31:0] SourceAddr; // @[Controller.scala 54:27]
  reg  SourceAddrValid; // @[Controller.scala 55:32]
  reg [3:0] RecentKeySetSlotID; // @[Controller.scala 56:35]
  reg [3:0] InputSlotID; // @[Controller.scala 60:28]
  reg [1:0] InputCount; // @[Controller.scala 61:27]
  reg  CanFeed; // @[Controller.scala 64:24]
  reg [31:0] TextInReg_0; // @[Controller.scala 65:26]
  reg [31:0] TextInReg_1; // @[Controller.scala 65:26]
  reg [31:0] TextInReg_2; // @[Controller.scala 65:26]
  reg [31:0] TextInReg_3; // @[Controller.scala 65:26]
  reg [1:0] OutputCount; // @[Controller.scala 69:28]
  reg  CanDrag; // @[Controller.scala 70:24]
  reg [31:0] DestAddr; // @[Controller.scala 75:25]
  reg  DestAddrValid; // @[Controller.scala 76:30]
  reg [1:0] InputFireCount; // @[Controller.scala 78:31]
  reg [1:0] OutputFireCount; // @[Controller.scala 79:32]
  reg  SourceIntReg; // @[Controller.scala 80:29]
  reg  DestIntReg; // @[Controller.scala 81:27]
  wire  _T = io_user_key_ready & io_user_key_valid; // @[Decoupled.scala 50:35]
  reg  REG; // @[Controller.scala 44:42]
  wire  _T_2 = AESEngine_io_user_key_ready & ~REG; // @[Controller.scala 44:31]
  wire  _GEN_19 = 4'h0 == RecentKeySetSlotID | LockBank_0_key_lock; // @[Controller.scala 47:25 99:{43,43}]
  wire  _GEN_20 = 4'h1 == RecentKeySetSlotID | LockBank_1_key_lock; // @[Controller.scala 47:25 99:{43,43}]
  wire  _GEN_21 = 4'h2 == RecentKeySetSlotID | LockBank_2_key_lock; // @[Controller.scala 47:25 99:{43,43}]
  wire  _GEN_22 = 4'h3 == RecentKeySetSlotID | LockBank_3_key_lock; // @[Controller.scala 47:25 99:{43,43}]
  wire  _GEN_23 = 4'h4 == RecentKeySetSlotID | LockBank_4_key_lock; // @[Controller.scala 47:25 99:{43,43}]
  wire  _GEN_24 = 4'h5 == RecentKeySetSlotID | LockBank_5_key_lock; // @[Controller.scala 47:25 99:{43,43}]
  wire  _GEN_25 = 4'h6 == RecentKeySetSlotID | LockBank_6_key_lock; // @[Controller.scala 47:25 99:{43,43}]
  wire  _GEN_26 = 4'h7 == RecentKeySetSlotID | LockBank_7_key_lock; // @[Controller.scala 47:25 99:{43,43}]
  wire  _GEN_27 = 4'h8 == RecentKeySetSlotID | LockBank_8_key_lock; // @[Controller.scala 47:25 99:{43,43}]
  wire  _GEN_28 = 4'h9 == RecentKeySetSlotID | LockBank_9_key_lock; // @[Controller.scala 47:25 99:{43,43}]
  wire  _GEN_29 = 4'ha == RecentKeySetSlotID | LockBank_10_key_lock; // @[Controller.scala 47:25 99:{43,43}]
  wire  _GEN_30 = 4'hb == RecentKeySetSlotID | LockBank_11_key_lock; // @[Controller.scala 47:25 99:{43,43}]
  wire  _GEN_31 = 4'hc == RecentKeySetSlotID | LockBank_12_key_lock; // @[Controller.scala 47:25 99:{43,43}]
  wire  _GEN_32 = 4'hd == RecentKeySetSlotID | LockBank_13_key_lock; // @[Controller.scala 47:25 99:{43,43}]
  wire  _GEN_33 = 4'he == RecentKeySetSlotID | LockBank_14_key_lock; // @[Controller.scala 47:25 99:{43,43}]
  wire  _GEN_34 = 4'hf == RecentKeySetSlotID | LockBank_15_key_lock; // @[Controller.scala 47:25 99:{43,43}]
  wire  _GEN_35 = _T_2 ? _GEN_19 : LockBank_0_key_lock; // @[Controller.scala 47:25 98:49]
  wire  _GEN_36 = _T_2 ? _GEN_20 : LockBank_1_key_lock; // @[Controller.scala 47:25 98:49]
  wire  _GEN_37 = _T_2 ? _GEN_21 : LockBank_2_key_lock; // @[Controller.scala 47:25 98:49]
  wire  _GEN_38 = _T_2 ? _GEN_22 : LockBank_3_key_lock; // @[Controller.scala 47:25 98:49]
  wire  _GEN_39 = _T_2 ? _GEN_23 : LockBank_4_key_lock; // @[Controller.scala 47:25 98:49]
  wire  _GEN_40 = _T_2 ? _GEN_24 : LockBank_5_key_lock; // @[Controller.scala 47:25 98:49]
  wire  _GEN_41 = _T_2 ? _GEN_25 : LockBank_6_key_lock; // @[Controller.scala 47:25 98:49]
  wire  _GEN_42 = _T_2 ? _GEN_26 : LockBank_7_key_lock; // @[Controller.scala 47:25 98:49]
  wire  _GEN_43 = _T_2 ? _GEN_27 : LockBank_8_key_lock; // @[Controller.scala 47:25 98:49]
  wire  _GEN_44 = _T_2 ? _GEN_28 : LockBank_9_key_lock; // @[Controller.scala 47:25 98:49]
  wire  _GEN_45 = _T_2 ? _GEN_29 : LockBank_10_key_lock; // @[Controller.scala 47:25 98:49]
  wire  _GEN_46 = _T_2 ? _GEN_30 : LockBank_11_key_lock; // @[Controller.scala 47:25 98:49]
  wire  _GEN_47 = _T_2 ? _GEN_31 : LockBank_12_key_lock; // @[Controller.scala 47:25 98:49]
  wire  _GEN_48 = _T_2 ? _GEN_32 : LockBank_13_key_lock; // @[Controller.scala 47:25 98:49]
  wire  _GEN_49 = _T_2 ? _GEN_33 : LockBank_14_key_lock; // @[Controller.scala 47:25 98:49]
  wire  _GEN_50 = _T_2 ? _GEN_34 : LockBank_15_key_lock; // @[Controller.scala 47:25 98:49]
  wire  _T_3 = io_destroy_ready & io_destroy_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_84 = 4'h1 == io_destroy_bits ? LockBank_1_work_lock : LockBank_0_work_lock; // @[Controller.scala 106:{23,23}]
  wire  _GEN_85 = 4'h2 == io_destroy_bits ? LockBank_2_work_lock : _GEN_84; // @[Controller.scala 106:{23,23}]
  wire  _GEN_86 = 4'h3 == io_destroy_bits ? LockBank_3_work_lock : _GEN_85; // @[Controller.scala 106:{23,23}]
  wire  _GEN_87 = 4'h4 == io_destroy_bits ? LockBank_4_work_lock : _GEN_86; // @[Controller.scala 106:{23,23}]
  wire  _GEN_88 = 4'h5 == io_destroy_bits ? LockBank_5_work_lock : _GEN_87; // @[Controller.scala 106:{23,23}]
  wire  _GEN_89 = 4'h6 == io_destroy_bits ? LockBank_6_work_lock : _GEN_88; // @[Controller.scala 106:{23,23}]
  wire  _GEN_90 = 4'h7 == io_destroy_bits ? LockBank_7_work_lock : _GEN_89; // @[Controller.scala 106:{23,23}]
  wire  _GEN_91 = 4'h8 == io_destroy_bits ? LockBank_8_work_lock : _GEN_90; // @[Controller.scala 106:{23,23}]
  wire  _GEN_92 = 4'h9 == io_destroy_bits ? LockBank_9_work_lock : _GEN_91; // @[Controller.scala 106:{23,23}]
  wire  _GEN_93 = 4'ha == io_destroy_bits ? LockBank_10_work_lock : _GEN_92; // @[Controller.scala 106:{23,23}]
  wire  _GEN_94 = 4'hb == io_destroy_bits ? LockBank_11_work_lock : _GEN_93; // @[Controller.scala 106:{23,23}]
  wire  _GEN_95 = 4'hc == io_destroy_bits ? LockBank_12_work_lock : _GEN_94; // @[Controller.scala 106:{23,23}]
  wire  _GEN_96 = 4'hd == io_destroy_bits ? LockBank_13_work_lock : _GEN_95; // @[Controller.scala 106:{23,23}]
  wire  _GEN_97 = 4'he == io_destroy_bits ? LockBank_14_work_lock : _GEN_96; // @[Controller.scala 106:{23,23}]
  wire  _GEN_98 = 4'hf == io_destroy_bits ? LockBank_15_work_lock : _GEN_97; // @[Controller.scala 106:{23,23}]
  wire  _GEN_100 = 4'h1 == io_destroy_bits ? LockBank_1_key_lock : LockBank_0_key_lock; // @[Controller.scala 106:{60,60}]
  wire  _GEN_101 = 4'h2 == io_destroy_bits ? LockBank_2_key_lock : _GEN_100; // @[Controller.scala 106:{60,60}]
  wire  _GEN_102 = 4'h3 == io_destroy_bits ? LockBank_3_key_lock : _GEN_101; // @[Controller.scala 106:{60,60}]
  wire  _GEN_103 = 4'h4 == io_destroy_bits ? LockBank_4_key_lock : _GEN_102; // @[Controller.scala 106:{60,60}]
  wire  _GEN_104 = 4'h5 == io_destroy_bits ? LockBank_5_key_lock : _GEN_103; // @[Controller.scala 106:{60,60}]
  wire  _GEN_105 = 4'h6 == io_destroy_bits ? LockBank_6_key_lock : _GEN_104; // @[Controller.scala 106:{60,60}]
  wire  _GEN_106 = 4'h7 == io_destroy_bits ? LockBank_7_key_lock : _GEN_105; // @[Controller.scala 106:{60,60}]
  wire  _GEN_107 = 4'h8 == io_destroy_bits ? LockBank_8_key_lock : _GEN_106; // @[Controller.scala 106:{60,60}]
  wire  _GEN_108 = 4'h9 == io_destroy_bits ? LockBank_9_key_lock : _GEN_107; // @[Controller.scala 106:{60,60}]
  wire  _GEN_109 = 4'ha == io_destroy_bits ? LockBank_10_key_lock : _GEN_108; // @[Controller.scala 106:{60,60}]
  wire  _GEN_110 = 4'hb == io_destroy_bits ? LockBank_11_key_lock : _GEN_109; // @[Controller.scala 106:{60,60}]
  wire  _GEN_111 = 4'hc == io_destroy_bits ? LockBank_12_key_lock : _GEN_110; // @[Controller.scala 106:{60,60}]
  wire  _GEN_112 = 4'hd == io_destroy_bits ? LockBank_13_key_lock : _GEN_111; // @[Controller.scala 106:{60,60}]
  wire  _GEN_113 = 4'he == io_destroy_bits ? LockBank_14_key_lock : _GEN_112; // @[Controller.scala 106:{60,60}]
  wire  _GEN_114 = 4'hf == io_destroy_bits ? LockBank_15_key_lock : _GEN_113; // @[Controller.scala 106:{60,60}]
  wire  _GEN_116 = 4'h1 == io_slotID_key ? LockBank_1_key_lock : LockBank_0_key_lock; // @[Controller.scala 107:{54,54}]
  wire  _GEN_117 = 4'h2 == io_slotID_key ? LockBank_2_key_lock : _GEN_116; // @[Controller.scala 107:{54,54}]
  wire  _GEN_118 = 4'h3 == io_slotID_key ? LockBank_3_key_lock : _GEN_117; // @[Controller.scala 107:{54,54}]
  wire  _GEN_119 = 4'h4 == io_slotID_key ? LockBank_4_key_lock : _GEN_118; // @[Controller.scala 107:{54,54}]
  wire  _GEN_120 = 4'h5 == io_slotID_key ? LockBank_5_key_lock : _GEN_119; // @[Controller.scala 107:{54,54}]
  wire  _GEN_121 = 4'h6 == io_slotID_key ? LockBank_6_key_lock : _GEN_120; // @[Controller.scala 107:{54,54}]
  wire  _GEN_122 = 4'h7 == io_slotID_key ? LockBank_7_key_lock : _GEN_121; // @[Controller.scala 107:{54,54}]
  wire  _GEN_123 = 4'h8 == io_slotID_key ? LockBank_8_key_lock : _GEN_122; // @[Controller.scala 107:{54,54}]
  wire  _GEN_124 = 4'h9 == io_slotID_key ? LockBank_9_key_lock : _GEN_123; // @[Controller.scala 107:{54,54}]
  wire  _GEN_125 = 4'ha == io_slotID_key ? LockBank_10_key_lock : _GEN_124; // @[Controller.scala 107:{54,54}]
  wire  _GEN_126 = 4'hb == io_slotID_key ? LockBank_11_key_lock : _GEN_125; // @[Controller.scala 107:{54,54}]
  wire  _GEN_127 = 4'hc == io_slotID_key ? LockBank_12_key_lock : _GEN_126; // @[Controller.scala 107:{54,54}]
  wire  _GEN_128 = 4'hd == io_slotID_key ? LockBank_13_key_lock : _GEN_127; // @[Controller.scala 107:{54,54}]
  wire  _GEN_129 = 4'he == io_slotID_key ? LockBank_14_key_lock : _GEN_128; // @[Controller.scala 107:{54,54}]
  wire  _GEN_130 = 4'hf == io_slotID_key ? LockBank_15_key_lock : _GEN_129; // @[Controller.scala 107:{54,54}]
  reg  io_user_key_ready_REG; // @[Controller.scala 44:42]
  wire  _io_user_key_ready_T_3 = AESEngine_io_user_key_ready & ~io_user_key_ready_REG; // @[Controller.scala 44:31]
  wire  _T_4 = io_fifo_in_ready & io_fifo_in_valid; // @[Decoupled.scala 50:35]
  wire [1:0] _InputFireCount_T_1 = InputFireCount + 2'h1; // @[Controller.scala 110:38]
  wire  _GEN_132 = InputFireCount == 2'h0 | SourceIntReg; // @[Controller.scala 112:32 113:18 80:29]
  wire  _T_6 = io_source_addr_dma_ready & io_source_addr_dma_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_134 = _T_6 ? 1'h0 : SourceAddrValid; // @[Controller.scala 115:33 117:21 55:32]
  wire  _T_7 = io_source_addr_setwork_ready & io_source_addr_setwork_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_135 = 4'h0 == io_slotID_setwork | LockBank_0_work_lock; // @[Controller.scala 121:{43,43} 47:25]
  wire  _GEN_136 = 4'h1 == io_slotID_setwork | LockBank_1_work_lock; // @[Controller.scala 121:{43,43} 47:25]
  wire  _GEN_137 = 4'h2 == io_slotID_setwork | LockBank_2_work_lock; // @[Controller.scala 121:{43,43} 47:25]
  wire  _GEN_138 = 4'h3 == io_slotID_setwork | LockBank_3_work_lock; // @[Controller.scala 121:{43,43} 47:25]
  wire  _GEN_139 = 4'h4 == io_slotID_setwork | LockBank_4_work_lock; // @[Controller.scala 121:{43,43} 47:25]
  wire  _GEN_140 = 4'h5 == io_slotID_setwork | LockBank_5_work_lock; // @[Controller.scala 121:{43,43} 47:25]
  wire  _GEN_141 = 4'h6 == io_slotID_setwork | LockBank_6_work_lock; // @[Controller.scala 121:{43,43} 47:25]
  wire  _GEN_142 = 4'h7 == io_slotID_setwork | LockBank_7_work_lock; // @[Controller.scala 121:{43,43} 47:25]
  wire  _GEN_143 = 4'h8 == io_slotID_setwork | LockBank_8_work_lock; // @[Controller.scala 121:{43,43} 47:25]
  wire  _GEN_144 = 4'h9 == io_slotID_setwork | LockBank_9_work_lock; // @[Controller.scala 121:{43,43} 47:25]
  wire  _GEN_145 = 4'ha == io_slotID_setwork | LockBank_10_work_lock; // @[Controller.scala 121:{43,43} 47:25]
  wire  _GEN_146 = 4'hb == io_slotID_setwork | LockBank_11_work_lock; // @[Controller.scala 121:{43,43} 47:25]
  wire  _GEN_147 = 4'hc == io_slotID_setwork | LockBank_12_work_lock; // @[Controller.scala 121:{43,43} 47:25]
  wire  _GEN_148 = 4'hd == io_slotID_setwork | LockBank_13_work_lock; // @[Controller.scala 121:{43,43} 47:25]
  wire  _GEN_149 = 4'he == io_slotID_setwork | LockBank_14_work_lock; // @[Controller.scala 121:{43,43} 47:25]
  wire  _GEN_150 = 4'hf == io_slotID_setwork | LockBank_15_work_lock; // @[Controller.scala 121:{43,43} 47:25]
  wire [3:0] _LQHead_T_1 = LQHead + 4'h1; // @[Controller.scala 126:22]
  wire [31:0] _GEN_216 = 4'h1 == LQTail ? AddrLoopQueue_1_addr : AddrLoopQueue_0_addr; // @[Controller.scala 128:{37,37}]
  wire [31:0] _GEN_217 = 4'h2 == LQTail ? AddrLoopQueue_2_addr : _GEN_216; // @[Controller.scala 128:{37,37}]
  wire [31:0] _GEN_218 = 4'h3 == LQTail ? AddrLoopQueue_3_addr : _GEN_217; // @[Controller.scala 128:{37,37}]
  wire [31:0] _GEN_219 = 4'h4 == LQTail ? AddrLoopQueue_4_addr : _GEN_218; // @[Controller.scala 128:{37,37}]
  wire [31:0] _GEN_220 = 4'h5 == LQTail ? AddrLoopQueue_5_addr : _GEN_219; // @[Controller.scala 128:{37,37}]
  wire [31:0] _GEN_221 = 4'h6 == LQTail ? AddrLoopQueue_6_addr : _GEN_220; // @[Controller.scala 128:{37,37}]
  wire [31:0] _GEN_222 = 4'h7 == LQTail ? AddrLoopQueue_7_addr : _GEN_221; // @[Controller.scala 128:{37,37}]
  wire [31:0] _GEN_223 = 4'h8 == LQTail ? AddrLoopQueue_8_addr : _GEN_222; // @[Controller.scala 128:{37,37}]
  wire [31:0] _GEN_224 = 4'h9 == LQTail ? AddrLoopQueue_9_addr : _GEN_223; // @[Controller.scala 128:{37,37}]
  wire [31:0] _GEN_225 = 4'ha == LQTail ? AddrLoopQueue_10_addr : _GEN_224; // @[Controller.scala 128:{37,37}]
  wire [31:0] _GEN_226 = 4'hb == LQTail ? AddrLoopQueue_11_addr : _GEN_225; // @[Controller.scala 128:{37,37}]
  wire [31:0] _GEN_227 = 4'hc == LQTail ? AddrLoopQueue_12_addr : _GEN_226; // @[Controller.scala 128:{37,37}]
  wire [31:0] _GEN_228 = 4'hd == LQTail ? AddrLoopQueue_13_addr : _GEN_227; // @[Controller.scala 128:{37,37}]
  wire [31:0] _GEN_229 = 4'he == LQTail ? AddrLoopQueue_14_addr : _GEN_228; // @[Controller.scala 128:{37,37}]
  wire [31:0] _GEN_230 = 4'hf == LQTail ? AddrLoopQueue_15_addr : _GEN_229; // @[Controller.scala 128:{37,37}]
  wire  _T_10 = SourceIntReg & ~SourceAddrValid; // @[Controller.scala 129:25]
  wire [3:0] _GEN_232 = 4'h1 == LQTail ? AddrLoopQueue_1_slotID : AddrLoopQueue_0_slotID; // @[Decoupled.scala 64:{19,19}]
  wire [3:0] _GEN_233 = 4'h2 == LQTail ? AddrLoopQueue_2_slotID : _GEN_232; // @[Decoupled.scala 64:{19,19}]
  wire [3:0] _GEN_234 = 4'h3 == LQTail ? AddrLoopQueue_3_slotID : _GEN_233; // @[Decoupled.scala 64:{19,19}]
  wire [3:0] _GEN_235 = 4'h4 == LQTail ? AddrLoopQueue_4_slotID : _GEN_234; // @[Decoupled.scala 64:{19,19}]
  wire [3:0] _GEN_236 = 4'h5 == LQTail ? AddrLoopQueue_5_slotID : _GEN_235; // @[Decoupled.scala 64:{19,19}]
  wire [3:0] _GEN_237 = 4'h6 == LQTail ? AddrLoopQueue_6_slotID : _GEN_236; // @[Decoupled.scala 64:{19,19}]
  wire [3:0] _GEN_238 = 4'h7 == LQTail ? AddrLoopQueue_7_slotID : _GEN_237; // @[Decoupled.scala 64:{19,19}]
  wire [3:0] _GEN_239 = 4'h8 == LQTail ? AddrLoopQueue_8_slotID : _GEN_238; // @[Decoupled.scala 64:{19,19}]
  wire [3:0] _GEN_240 = 4'h9 == LQTail ? AddrLoopQueue_9_slotID : _GEN_239; // @[Decoupled.scala 64:{19,19}]
  wire [3:0] _GEN_241 = 4'ha == LQTail ? AddrLoopQueue_10_slotID : _GEN_240; // @[Decoupled.scala 64:{19,19}]
  wire [3:0] _GEN_242 = 4'hb == LQTail ? AddrLoopQueue_11_slotID : _GEN_241; // @[Decoupled.scala 64:{19,19}]
  wire [3:0] _GEN_243 = 4'hc == LQTail ? AddrLoopQueue_12_slotID : _GEN_242; // @[Decoupled.scala 64:{19,19}]
  wire [3:0] _GEN_244 = 4'hd == LQTail ? AddrLoopQueue_13_slotID : _GEN_243; // @[Decoupled.scala 64:{19,19}]
  wire [3:0] _GEN_245 = 4'he == LQTail ? AddrLoopQueue_14_slotID : _GEN_244; // @[Decoupled.scala 64:{19,19}]
  wire [3:0] _GEN_246 = 4'hf == LQTail ? AddrLoopQueue_15_slotID : _GEN_245; // @[Decoupled.scala 64:{19,19}]
  wire [25:0] _GEN_248 = 4'h1 == _GEN_246 ? LengthCount_1 : LengthCount_0; // @[Controller.scala 133:{56,56}]
  wire [25:0] _GEN_249 = 4'h2 == _GEN_246 ? LengthCount_2 : _GEN_248; // @[Controller.scala 133:{56,56}]
  wire [25:0] _GEN_250 = 4'h3 == _GEN_246 ? LengthCount_3 : _GEN_249; // @[Controller.scala 133:{56,56}]
  wire [25:0] _GEN_251 = 4'h4 == _GEN_246 ? LengthCount_4 : _GEN_250; // @[Controller.scala 133:{56,56}]
  wire [25:0] _GEN_252 = 4'h5 == _GEN_246 ? LengthCount_5 : _GEN_251; // @[Controller.scala 133:{56,56}]
  wire [25:0] _GEN_253 = 4'h6 == _GEN_246 ? LengthCount_6 : _GEN_252; // @[Controller.scala 133:{56,56}]
  wire [25:0] _GEN_254 = 4'h7 == _GEN_246 ? LengthCount_7 : _GEN_253; // @[Controller.scala 133:{56,56}]
  wire [25:0] _GEN_255 = 4'h8 == _GEN_246 ? LengthCount_8 : _GEN_254; // @[Controller.scala 133:{56,56}]
  wire [25:0] _GEN_256 = 4'h9 == _GEN_246 ? LengthCount_9 : _GEN_255; // @[Controller.scala 133:{56,56}]
  wire [25:0] _GEN_257 = 4'ha == _GEN_246 ? LengthCount_10 : _GEN_256; // @[Controller.scala 133:{56,56}]
  wire [25:0] _GEN_258 = 4'hb == _GEN_246 ? LengthCount_11 : _GEN_257; // @[Controller.scala 133:{56,56}]
  wire [25:0] _GEN_259 = 4'hc == _GEN_246 ? LengthCount_12 : _GEN_258; // @[Controller.scala 133:{56,56}]
  wire [25:0] _GEN_260 = 4'hd == _GEN_246 ? LengthCount_13 : _GEN_259; // @[Controller.scala 133:{56,56}]
  wire [25:0] _GEN_261 = 4'he == _GEN_246 ? LengthCount_14 : _GEN_260; // @[Controller.scala 133:{56,56}]
  wire [25:0] _GEN_262 = 4'hf == _GEN_246 ? LengthCount_15 : _GEN_261; // @[Controller.scala 133:{56,56}]
  wire [31:0] _AddrLoopQueue_addr_T_1 = _GEN_230 + 32'h10; // @[Controller.scala 134:66]
  wire [31:0] _GEN_263 = 4'h0 == LQHead ? _AddrLoopQueue_addr_T_1 : AddrLoopQueue_0_addr; // @[Controller.scala 134:{36,36} 49:30]
  wire [31:0] _GEN_264 = 4'h1 == LQHead ? _AddrLoopQueue_addr_T_1 : AddrLoopQueue_1_addr; // @[Controller.scala 134:{36,36} 49:30]
  wire [31:0] _GEN_265 = 4'h2 == LQHead ? _AddrLoopQueue_addr_T_1 : AddrLoopQueue_2_addr; // @[Controller.scala 134:{36,36} 49:30]
  wire [31:0] _GEN_266 = 4'h3 == LQHead ? _AddrLoopQueue_addr_T_1 : AddrLoopQueue_3_addr; // @[Controller.scala 134:{36,36} 49:30]
  wire [31:0] _GEN_267 = 4'h4 == LQHead ? _AddrLoopQueue_addr_T_1 : AddrLoopQueue_4_addr; // @[Controller.scala 134:{36,36} 49:30]
  wire [31:0] _GEN_268 = 4'h5 == LQHead ? _AddrLoopQueue_addr_T_1 : AddrLoopQueue_5_addr; // @[Controller.scala 134:{36,36} 49:30]
  wire [31:0] _GEN_269 = 4'h6 == LQHead ? _AddrLoopQueue_addr_T_1 : AddrLoopQueue_6_addr; // @[Controller.scala 134:{36,36} 49:30]
  wire [31:0] _GEN_270 = 4'h7 == LQHead ? _AddrLoopQueue_addr_T_1 : AddrLoopQueue_7_addr; // @[Controller.scala 134:{36,36} 49:30]
  wire [31:0] _GEN_271 = 4'h8 == LQHead ? _AddrLoopQueue_addr_T_1 : AddrLoopQueue_8_addr; // @[Controller.scala 134:{36,36} 49:30]
  wire [31:0] _GEN_272 = 4'h9 == LQHead ? _AddrLoopQueue_addr_T_1 : AddrLoopQueue_9_addr; // @[Controller.scala 134:{36,36} 49:30]
  wire [31:0] _GEN_273 = 4'ha == LQHead ? _AddrLoopQueue_addr_T_1 : AddrLoopQueue_10_addr; // @[Controller.scala 134:{36,36} 49:30]
  wire [31:0] _GEN_274 = 4'hb == LQHead ? _AddrLoopQueue_addr_T_1 : AddrLoopQueue_11_addr; // @[Controller.scala 134:{36,36} 49:30]
  wire [31:0] _GEN_275 = 4'hc == LQHead ? _AddrLoopQueue_addr_T_1 : AddrLoopQueue_12_addr; // @[Controller.scala 134:{36,36} 49:30]
  wire [31:0] _GEN_276 = 4'hd == LQHead ? _AddrLoopQueue_addr_T_1 : AddrLoopQueue_13_addr; // @[Controller.scala 134:{36,36} 49:30]
  wire [31:0] _GEN_277 = 4'he == LQHead ? _AddrLoopQueue_addr_T_1 : AddrLoopQueue_14_addr; // @[Controller.scala 134:{36,36} 49:30]
  wire [31:0] _GEN_278 = 4'hf == LQHead ? _AddrLoopQueue_addr_T_1 : AddrLoopQueue_15_addr; // @[Controller.scala 134:{36,36} 49:30]
  wire [3:0] _GEN_279 = 4'h0 == LQHead ? _GEN_246 : AddrLoopQueue_0_slotID; // @[Controller.scala 135:{38,38} 49:30]
  wire [3:0] _GEN_280 = 4'h1 == LQHead ? _GEN_246 : AddrLoopQueue_1_slotID; // @[Controller.scala 135:{38,38} 49:30]
  wire [3:0] _GEN_281 = 4'h2 == LQHead ? _GEN_246 : AddrLoopQueue_2_slotID; // @[Controller.scala 135:{38,38} 49:30]
  wire [3:0] _GEN_282 = 4'h3 == LQHead ? _GEN_246 : AddrLoopQueue_3_slotID; // @[Controller.scala 135:{38,38} 49:30]
  wire [3:0] _GEN_283 = 4'h4 == LQHead ? _GEN_246 : AddrLoopQueue_4_slotID; // @[Controller.scala 135:{38,38} 49:30]
  wire [3:0] _GEN_284 = 4'h5 == LQHead ? _GEN_246 : AddrLoopQueue_5_slotID; // @[Controller.scala 135:{38,38} 49:30]
  wire [3:0] _GEN_285 = 4'h6 == LQHead ? _GEN_246 : AddrLoopQueue_6_slotID; // @[Controller.scala 135:{38,38} 49:30]
  wire [3:0] _GEN_286 = 4'h7 == LQHead ? _GEN_246 : AddrLoopQueue_7_slotID; // @[Controller.scala 135:{38,38} 49:30]
  wire [3:0] _GEN_287 = 4'h8 == LQHead ? _GEN_246 : AddrLoopQueue_8_slotID; // @[Controller.scala 135:{38,38} 49:30]
  wire [3:0] _GEN_288 = 4'h9 == LQHead ? _GEN_246 : AddrLoopQueue_9_slotID; // @[Controller.scala 135:{38,38} 49:30]
  wire [3:0] _GEN_289 = 4'ha == LQHead ? _GEN_246 : AddrLoopQueue_10_slotID; // @[Controller.scala 135:{38,38} 49:30]
  wire [3:0] _GEN_290 = 4'hb == LQHead ? _GEN_246 : AddrLoopQueue_11_slotID; // @[Controller.scala 135:{38,38} 49:30]
  wire [3:0] _GEN_291 = 4'hc == LQHead ? _GEN_246 : AddrLoopQueue_12_slotID; // @[Controller.scala 135:{38,38} 49:30]
  wire [3:0] _GEN_292 = 4'hd == LQHead ? _GEN_246 : AddrLoopQueue_13_slotID; // @[Controller.scala 135:{38,38} 49:30]
  wire [3:0] _GEN_293 = 4'he == LQHead ? _GEN_246 : AddrLoopQueue_14_slotID; // @[Controller.scala 135:{38,38} 49:30]
  wire [3:0] _GEN_294 = 4'hf == LQHead ? _GEN_246 : AddrLoopQueue_15_slotID; // @[Controller.scala 135:{38,38} 49:30]
  wire [25:0] _LengthCount_T_1 = _GEN_262 - 26'h1; // @[Controller.scala 136:96]
  wire [25:0] _GEN_311 = 4'h0 == _GEN_246 ? _LengthCount_T_1 : LengthCount_0; // @[Controller.scala 136:{51,51} 53:28]
  wire [25:0] _GEN_312 = 4'h1 == _GEN_246 ? _LengthCount_T_1 : LengthCount_1; // @[Controller.scala 136:{51,51} 53:28]
  wire [25:0] _GEN_313 = 4'h2 == _GEN_246 ? _LengthCount_T_1 : LengthCount_2; // @[Controller.scala 136:{51,51} 53:28]
  wire [25:0] _GEN_314 = 4'h3 == _GEN_246 ? _LengthCount_T_1 : LengthCount_3; // @[Controller.scala 136:{51,51} 53:28]
  wire [25:0] _GEN_315 = 4'h4 == _GEN_246 ? _LengthCount_T_1 : LengthCount_4; // @[Controller.scala 136:{51,51} 53:28]
  wire [25:0] _GEN_316 = 4'h5 == _GEN_246 ? _LengthCount_T_1 : LengthCount_5; // @[Controller.scala 136:{51,51} 53:28]
  wire [25:0] _GEN_317 = 4'h6 == _GEN_246 ? _LengthCount_T_1 : LengthCount_6; // @[Controller.scala 136:{51,51} 53:28]
  wire [25:0] _GEN_318 = 4'h7 == _GEN_246 ? _LengthCount_T_1 : LengthCount_7; // @[Controller.scala 136:{51,51} 53:28]
  wire [25:0] _GEN_319 = 4'h8 == _GEN_246 ? _LengthCount_T_1 : LengthCount_8; // @[Controller.scala 136:{51,51} 53:28]
  wire [25:0] _GEN_320 = 4'h9 == _GEN_246 ? _LengthCount_T_1 : LengthCount_9; // @[Controller.scala 136:{51,51} 53:28]
  wire [25:0] _GEN_321 = 4'ha == _GEN_246 ? _LengthCount_T_1 : LengthCount_10; // @[Controller.scala 136:{51,51} 53:28]
  wire [25:0] _GEN_322 = 4'hb == _GEN_246 ? _LengthCount_T_1 : LengthCount_11; // @[Controller.scala 136:{51,51} 53:28]
  wire [25:0] _GEN_323 = 4'hc == _GEN_246 ? _LengthCount_T_1 : LengthCount_12; // @[Controller.scala 136:{51,51} 53:28]
  wire [25:0] _GEN_324 = 4'hd == _GEN_246 ? _LengthCount_T_1 : LengthCount_13; // @[Controller.scala 136:{51,51} 53:28]
  wire [25:0] _GEN_325 = 4'he == _GEN_246 ? _LengthCount_T_1 : LengthCount_14; // @[Controller.scala 136:{51,51} 53:28]
  wire [25:0] _GEN_326 = 4'hf == _GEN_246 ? _LengthCount_T_1 : LengthCount_15; // @[Controller.scala 136:{51,51} 53:28]
  wire [25:0] _GEN_327 = 4'h0 == _GEN_246 ? 26'h0 : LengthCount_0; // @[Controller.scala 139:{53,53} 53:28]
  wire [25:0] _GEN_328 = 4'h1 == _GEN_246 ? 26'h0 : LengthCount_1; // @[Controller.scala 139:{53,53} 53:28]
  wire [25:0] _GEN_329 = 4'h2 == _GEN_246 ? 26'h0 : LengthCount_2; // @[Controller.scala 139:{53,53} 53:28]
  wire [25:0] _GEN_330 = 4'h3 == _GEN_246 ? 26'h0 : LengthCount_3; // @[Controller.scala 139:{53,53} 53:28]
  wire [25:0] _GEN_331 = 4'h4 == _GEN_246 ? 26'h0 : LengthCount_4; // @[Controller.scala 139:{53,53} 53:28]
  wire [25:0] _GEN_332 = 4'h5 == _GEN_246 ? 26'h0 : LengthCount_5; // @[Controller.scala 139:{53,53} 53:28]
  wire [25:0] _GEN_333 = 4'h6 == _GEN_246 ? 26'h0 : LengthCount_6; // @[Controller.scala 139:{53,53} 53:28]
  wire [25:0] _GEN_334 = 4'h7 == _GEN_246 ? 26'h0 : LengthCount_7; // @[Controller.scala 139:{53,53} 53:28]
  wire [25:0] _GEN_335 = 4'h8 == _GEN_246 ? 26'h0 : LengthCount_8; // @[Controller.scala 139:{53,53} 53:28]
  wire [25:0] _GEN_336 = 4'h9 == _GEN_246 ? 26'h0 : LengthCount_9; // @[Controller.scala 139:{53,53} 53:28]
  wire [25:0] _GEN_337 = 4'ha == _GEN_246 ? 26'h0 : LengthCount_10; // @[Controller.scala 139:{53,53} 53:28]
  wire [25:0] _GEN_338 = 4'hb == _GEN_246 ? 26'h0 : LengthCount_11; // @[Controller.scala 139:{53,53} 53:28]
  wire [25:0] _GEN_339 = 4'hc == _GEN_246 ? 26'h0 : LengthCount_12; // @[Controller.scala 139:{53,53} 53:28]
  wire [25:0] _GEN_340 = 4'hd == _GEN_246 ? 26'h0 : LengthCount_13; // @[Controller.scala 139:{53,53} 53:28]
  wire [25:0] _GEN_341 = 4'he == _GEN_246 ? 26'h0 : LengthCount_14; // @[Controller.scala 139:{53,53} 53:28]
  wire [25:0] _GEN_342 = 4'hf == _GEN_246 ? 26'h0 : LengthCount_15; // @[Controller.scala 139:{53,53} 53:28]
  wire [31:0] _GEN_343 = _GEN_262 != 26'h1 ? _GEN_263 : AddrLoopQueue_0_addr; // @[Controller.scala 133:65 49:30]
  wire [31:0] _GEN_344 = _GEN_262 != 26'h1 ? _GEN_264 : AddrLoopQueue_1_addr; // @[Controller.scala 133:65 49:30]
  wire [31:0] _GEN_345 = _GEN_262 != 26'h1 ? _GEN_265 : AddrLoopQueue_2_addr; // @[Controller.scala 133:65 49:30]
  wire [31:0] _GEN_346 = _GEN_262 != 26'h1 ? _GEN_266 : AddrLoopQueue_3_addr; // @[Controller.scala 133:65 49:30]
  wire [31:0] _GEN_347 = _GEN_262 != 26'h1 ? _GEN_267 : AddrLoopQueue_4_addr; // @[Controller.scala 133:65 49:30]
  wire [31:0] _GEN_348 = _GEN_262 != 26'h1 ? _GEN_268 : AddrLoopQueue_5_addr; // @[Controller.scala 133:65 49:30]
  wire [31:0] _GEN_349 = _GEN_262 != 26'h1 ? _GEN_269 : AddrLoopQueue_6_addr; // @[Controller.scala 133:65 49:30]
  wire [31:0] _GEN_350 = _GEN_262 != 26'h1 ? _GEN_270 : AddrLoopQueue_7_addr; // @[Controller.scala 133:65 49:30]
  wire [31:0] _GEN_351 = _GEN_262 != 26'h1 ? _GEN_271 : AddrLoopQueue_8_addr; // @[Controller.scala 133:65 49:30]
  wire [31:0] _GEN_352 = _GEN_262 != 26'h1 ? _GEN_272 : AddrLoopQueue_9_addr; // @[Controller.scala 133:65 49:30]
  wire [31:0] _GEN_353 = _GEN_262 != 26'h1 ? _GEN_273 : AddrLoopQueue_10_addr; // @[Controller.scala 133:65 49:30]
  wire [31:0] _GEN_354 = _GEN_262 != 26'h1 ? _GEN_274 : AddrLoopQueue_11_addr; // @[Controller.scala 133:65 49:30]
  wire [31:0] _GEN_355 = _GEN_262 != 26'h1 ? _GEN_275 : AddrLoopQueue_12_addr; // @[Controller.scala 133:65 49:30]
  wire [31:0] _GEN_356 = _GEN_262 != 26'h1 ? _GEN_276 : AddrLoopQueue_13_addr; // @[Controller.scala 133:65 49:30]
  wire [31:0] _GEN_357 = _GEN_262 != 26'h1 ? _GEN_277 : AddrLoopQueue_14_addr; // @[Controller.scala 133:65 49:30]
  wire [31:0] _GEN_358 = _GEN_262 != 26'h1 ? _GEN_278 : AddrLoopQueue_15_addr; // @[Controller.scala 133:65 49:30]
  wire [3:0] _GEN_359 = _GEN_262 != 26'h1 ? _GEN_279 : AddrLoopQueue_0_slotID; // @[Controller.scala 133:65 49:30]
  wire [3:0] _GEN_360 = _GEN_262 != 26'h1 ? _GEN_280 : AddrLoopQueue_1_slotID; // @[Controller.scala 133:65 49:30]
  wire [3:0] _GEN_361 = _GEN_262 != 26'h1 ? _GEN_281 : AddrLoopQueue_2_slotID; // @[Controller.scala 133:65 49:30]
  wire [3:0] _GEN_362 = _GEN_262 != 26'h1 ? _GEN_282 : AddrLoopQueue_3_slotID; // @[Controller.scala 133:65 49:30]
  wire [3:0] _GEN_363 = _GEN_262 != 26'h1 ? _GEN_283 : AddrLoopQueue_4_slotID; // @[Controller.scala 133:65 49:30]
  wire [3:0] _GEN_364 = _GEN_262 != 26'h1 ? _GEN_284 : AddrLoopQueue_5_slotID; // @[Controller.scala 133:65 49:30]
  wire [3:0] _GEN_365 = _GEN_262 != 26'h1 ? _GEN_285 : AddrLoopQueue_6_slotID; // @[Controller.scala 133:65 49:30]
  wire [3:0] _GEN_366 = _GEN_262 != 26'h1 ? _GEN_286 : AddrLoopQueue_7_slotID; // @[Controller.scala 133:65 49:30]
  wire [3:0] _GEN_367 = _GEN_262 != 26'h1 ? _GEN_287 : AddrLoopQueue_8_slotID; // @[Controller.scala 133:65 49:30]
  wire [3:0] _GEN_368 = _GEN_262 != 26'h1 ? _GEN_288 : AddrLoopQueue_9_slotID; // @[Controller.scala 133:65 49:30]
  wire [3:0] _GEN_369 = _GEN_262 != 26'h1 ? _GEN_289 : AddrLoopQueue_10_slotID; // @[Controller.scala 133:65 49:30]
  wire [3:0] _GEN_370 = _GEN_262 != 26'h1 ? _GEN_290 : AddrLoopQueue_11_slotID; // @[Controller.scala 133:65 49:30]
  wire [3:0] _GEN_371 = _GEN_262 != 26'h1 ? _GEN_291 : AddrLoopQueue_12_slotID; // @[Controller.scala 133:65 49:30]
  wire [3:0] _GEN_372 = _GEN_262 != 26'h1 ? _GEN_292 : AddrLoopQueue_13_slotID; // @[Controller.scala 133:65 49:30]
  wire [3:0] _GEN_373 = _GEN_262 != 26'h1 ? _GEN_293 : AddrLoopQueue_14_slotID; // @[Controller.scala 133:65 49:30]
  wire [3:0] _GEN_374 = _GEN_262 != 26'h1 ? _GEN_294 : AddrLoopQueue_15_slotID; // @[Controller.scala 133:65 49:30]
  wire [25:0] _GEN_375 = _GEN_262 != 26'h1 ? _GEN_311 : _GEN_327; // @[Controller.scala 133:65]
  wire [25:0] _GEN_376 = _GEN_262 != 26'h1 ? _GEN_312 : _GEN_328; // @[Controller.scala 133:65]
  wire [25:0] _GEN_377 = _GEN_262 != 26'h1 ? _GEN_313 : _GEN_329; // @[Controller.scala 133:65]
  wire [25:0] _GEN_378 = _GEN_262 != 26'h1 ? _GEN_314 : _GEN_330; // @[Controller.scala 133:65]
  wire [25:0] _GEN_379 = _GEN_262 != 26'h1 ? _GEN_315 : _GEN_331; // @[Controller.scala 133:65]
  wire [25:0] _GEN_380 = _GEN_262 != 26'h1 ? _GEN_316 : _GEN_332; // @[Controller.scala 133:65]
  wire [25:0] _GEN_381 = _GEN_262 != 26'h1 ? _GEN_317 : _GEN_333; // @[Controller.scala 133:65]
  wire [25:0] _GEN_382 = _GEN_262 != 26'h1 ? _GEN_318 : _GEN_334; // @[Controller.scala 133:65]
  wire [25:0] _GEN_383 = _GEN_262 != 26'h1 ? _GEN_319 : _GEN_335; // @[Controller.scala 133:65]
  wire [25:0] _GEN_384 = _GEN_262 != 26'h1 ? _GEN_320 : _GEN_336; // @[Controller.scala 133:65]
  wire [25:0] _GEN_385 = _GEN_262 != 26'h1 ? _GEN_321 : _GEN_337; // @[Controller.scala 133:65]
  wire [25:0] _GEN_386 = _GEN_262 != 26'h1 ? _GEN_322 : _GEN_338; // @[Controller.scala 133:65]
  wire [25:0] _GEN_387 = _GEN_262 != 26'h1 ? _GEN_323 : _GEN_339; // @[Controller.scala 133:65]
  wire [25:0] _GEN_388 = _GEN_262 != 26'h1 ? _GEN_324 : _GEN_340; // @[Controller.scala 133:65]
  wire [25:0] _GEN_389 = _GEN_262 != 26'h1 ? _GEN_325 : _GEN_341; // @[Controller.scala 133:65]
  wire [25:0] _GEN_390 = _GEN_262 != 26'h1 ? _GEN_326 : _GEN_342; // @[Controller.scala 133:65]
  wire [3:0] _GEN_391 = _GEN_262 != 26'h1 ? _LQHead_T_1 : LQHead; // @[Controller.scala 133:65 137:16 50:23]
  wire [31:0] _GEN_392 = 4'h0 == LQTail ? 32'h0 : _GEN_343; // @[Controller.scala 143:{38,38}]
  wire [31:0] _GEN_393 = 4'h1 == LQTail ? 32'h0 : _GEN_344; // @[Controller.scala 143:{38,38}]
  wire [31:0] _GEN_394 = 4'h2 == LQTail ? 32'h0 : _GEN_345; // @[Controller.scala 143:{38,38}]
  wire [31:0] _GEN_395 = 4'h3 == LQTail ? 32'h0 : _GEN_346; // @[Controller.scala 143:{38,38}]
  wire [31:0] _GEN_396 = 4'h4 == LQTail ? 32'h0 : _GEN_347; // @[Controller.scala 143:{38,38}]
  wire [31:0] _GEN_397 = 4'h5 == LQTail ? 32'h0 : _GEN_348; // @[Controller.scala 143:{38,38}]
  wire [31:0] _GEN_398 = 4'h6 == LQTail ? 32'h0 : _GEN_349; // @[Controller.scala 143:{38,38}]
  wire [31:0] _GEN_399 = 4'h7 == LQTail ? 32'h0 : _GEN_350; // @[Controller.scala 143:{38,38}]
  wire [31:0] _GEN_400 = 4'h8 == LQTail ? 32'h0 : _GEN_351; // @[Controller.scala 143:{38,38}]
  wire [31:0] _GEN_401 = 4'h9 == LQTail ? 32'h0 : _GEN_352; // @[Controller.scala 143:{38,38}]
  wire [31:0] _GEN_402 = 4'ha == LQTail ? 32'h0 : _GEN_353; // @[Controller.scala 143:{38,38}]
  wire [31:0] _GEN_403 = 4'hb == LQTail ? 32'h0 : _GEN_354; // @[Controller.scala 143:{38,38}]
  wire [31:0] _GEN_404 = 4'hc == LQTail ? 32'h0 : _GEN_355; // @[Controller.scala 143:{38,38}]
  wire [31:0] _GEN_405 = 4'hd == LQTail ? 32'h0 : _GEN_356; // @[Controller.scala 143:{38,38}]
  wire [31:0] _GEN_406 = 4'he == LQTail ? 32'h0 : _GEN_357; // @[Controller.scala 143:{38,38}]
  wire [31:0] _GEN_407 = 4'hf == LQTail ? 32'h0 : _GEN_358; // @[Controller.scala 143:{38,38}]
  wire [31:0] _GEN_408 = LQHead != LQTail ? _GEN_392 : _GEN_343; // @[Controller.scala 142:33]
  wire [31:0] _GEN_409 = LQHead != LQTail ? _GEN_393 : _GEN_344; // @[Controller.scala 142:33]
  wire [31:0] _GEN_410 = LQHead != LQTail ? _GEN_394 : _GEN_345; // @[Controller.scala 142:33]
  wire [31:0] _GEN_411 = LQHead != LQTail ? _GEN_395 : _GEN_346; // @[Controller.scala 142:33]
  wire [31:0] _GEN_412 = LQHead != LQTail ? _GEN_396 : _GEN_347; // @[Controller.scala 142:33]
  wire [31:0] _GEN_413 = LQHead != LQTail ? _GEN_397 : _GEN_348; // @[Controller.scala 142:33]
  wire [31:0] _GEN_414 = LQHead != LQTail ? _GEN_398 : _GEN_349; // @[Controller.scala 142:33]
  wire [31:0] _GEN_415 = LQHead != LQTail ? _GEN_399 : _GEN_350; // @[Controller.scala 142:33]
  wire [31:0] _GEN_416 = LQHead != LQTail ? _GEN_400 : _GEN_351; // @[Controller.scala 142:33]
  wire [31:0] _GEN_417 = LQHead != LQTail ? _GEN_401 : _GEN_352; // @[Controller.scala 142:33]
  wire [31:0] _GEN_418 = LQHead != LQTail ? _GEN_402 : _GEN_353; // @[Controller.scala 142:33]
  wire [31:0] _GEN_419 = LQHead != LQTail ? _GEN_403 : _GEN_354; // @[Controller.scala 142:33]
  wire [31:0] _GEN_420 = LQHead != LQTail ? _GEN_404 : _GEN_355; // @[Controller.scala 142:33]
  wire [31:0] _GEN_421 = LQHead != LQTail ? _GEN_405 : _GEN_356; // @[Controller.scala 142:33]
  wire [31:0] _GEN_422 = LQHead != LQTail ? _GEN_406 : _GEN_357; // @[Controller.scala 142:33]
  wire [31:0] _GEN_423 = LQHead != LQTail ? _GEN_407 : _GEN_358; // @[Controller.scala 142:33]
  wire [3:0] _LQTail_T_1 = LQTail + 4'h1; // @[Controller.scala 145:26]
  wire  _GEN_425 = SourceIntReg & ~SourceAddrValid | _GEN_134; // @[Controller.scala 129:46 131:25]
  wire [3:0] _GEN_427 = SourceIntReg & ~SourceAddrValid ? _GEN_246 : 4'h0; // @[Controller.scala 129:46 Decoupled.scala 64:19]
  wire  _GEN_480 = _GEN_230 != 32'h0 & _T_10; // @[Controller.scala 128:46]
  wire [3:0] _GEN_481 = _GEN_230 != 32'h0 ? _GEN_427 : 4'h0; // @[Controller.scala 128:46]
  wire  _T_13 = AESEngine_io_text_in_ready & AESEngine_io_text_in_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_618 = _T_13 ? 1'h0 : CanFeed; // @[Controller.scala 154:35 155:13 64:24]
  wire  _T_15 = InputFIFO_io_deq_ready & InputFIFO_io_deq_valid; // @[Decoupled.scala 50:35]
  wire [31:0] _TextInReg_InputCount = InputFIFO_io_deq_bits; // @[Controller.scala 160:{29,29}]
  wire  _T_16 = InputCount == 2'h3; // @[Controller.scala 161:23]
  wire [1:0] _InputCount_T_1 = InputCount + 2'h1; // @[Controller.scala 165:34]
  wire  _GEN_624 = InputCount == 2'h3 | _GEN_618; // @[Controller.scala 161:32 163:17]
  wire [3:0] InputSlotIDDeqWire_bits = InputSlotIDFIFO_io_deq_bits;
  wire  _T_18 = AESEngine_io_text_out_ready & AESEngine_io_text_out_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_640 = _T_18 ? 1'h0 : CanDrag; // @[Controller.scala 179:36 180:13 70:24]
  wire  OutputEnqWire_ready = OutputFIFO_io_enq_ready;
  wire  _T_20 = AESEngine_io_text_out_valid & OutputEnqWire_ready; // @[Controller.scala 183:38]
  wire [4:0] _OutputEnqWire_bits_T = OutputCount * 3'h4; // @[Controller.scala 184:72]
  wire [4:0] _OutputEnqWire_bits_T_2 = _OutputEnqWire_bits_T + 5'h3; // @[Controller.scala 184:78]
  wire [4:0] _OutputEnqWire_bits_T_6 = _OutputEnqWire_bits_T + 5'h2; // @[Controller.scala 185:78]
  wire [4:0] _OutputEnqWire_bits_T_10 = _OutputEnqWire_bits_T + 5'h1; // @[Controller.scala 186:78]
  wire [7:0] _GEN_641 = AESEngine_io_text_out_bits_0; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_642 = 4'h1 == _OutputEnqWire_bits_T_10[3:0] ? AESEngine_io_text_out_bits_1 : _GEN_641; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_643 = 4'h2 == _OutputEnqWire_bits_T_10[3:0] ? AESEngine_io_text_out_bits_2 : _GEN_642; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_644 = 4'h3 == _OutputEnqWire_bits_T_10[3:0] ? AESEngine_io_text_out_bits_3 : _GEN_643; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_645 = 4'h4 == _OutputEnqWire_bits_T_10[3:0] ? AESEngine_io_text_out_bits_4 : _GEN_644; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_646 = 4'h5 == _OutputEnqWire_bits_T_10[3:0] ? AESEngine_io_text_out_bits_5 : _GEN_645; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_647 = 4'h6 == _OutputEnqWire_bits_T_10[3:0] ? AESEngine_io_text_out_bits_6 : _GEN_646; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_648 = 4'h7 == _OutputEnqWire_bits_T_10[3:0] ? AESEngine_io_text_out_bits_7 : _GEN_647; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_649 = 4'h8 == _OutputEnqWire_bits_T_10[3:0] ? AESEngine_io_text_out_bits_8 : _GEN_648; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_650 = 4'h9 == _OutputEnqWire_bits_T_10[3:0] ? AESEngine_io_text_out_bits_9 : _GEN_649; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_651 = 4'ha == _OutputEnqWire_bits_T_10[3:0] ? AESEngine_io_text_out_bits_10 : _GEN_650; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_652 = 4'hb == _OutputEnqWire_bits_T_10[3:0] ? AESEngine_io_text_out_bits_11 : _GEN_651; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_653 = 4'hc == _OutputEnqWire_bits_T_10[3:0] ? AESEngine_io_text_out_bits_12 : _GEN_652; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_654 = 4'hd == _OutputEnqWire_bits_T_10[3:0] ? AESEngine_io_text_out_bits_13 : _GEN_653; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_655 = 4'he == _OutputEnqWire_bits_T_10[3:0] ? AESEngine_io_text_out_bits_14 : _GEN_654; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_656 = 4'hf == _OutputEnqWire_bits_T_10[3:0] ? AESEngine_io_text_out_bits_15 : _GEN_655; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_658 = 4'h1 == _OutputEnqWire_bits_T[3:0] ? AESEngine_io_text_out_bits_1 : _GEN_641; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_659 = 4'h2 == _OutputEnqWire_bits_T[3:0] ? AESEngine_io_text_out_bits_2 : _GEN_658; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_660 = 4'h3 == _OutputEnqWire_bits_T[3:0] ? AESEngine_io_text_out_bits_3 : _GEN_659; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_661 = 4'h4 == _OutputEnqWire_bits_T[3:0] ? AESEngine_io_text_out_bits_4 : _GEN_660; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_662 = 4'h5 == _OutputEnqWire_bits_T[3:0] ? AESEngine_io_text_out_bits_5 : _GEN_661; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_663 = 4'h6 == _OutputEnqWire_bits_T[3:0] ? AESEngine_io_text_out_bits_6 : _GEN_662; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_664 = 4'h7 == _OutputEnqWire_bits_T[3:0] ? AESEngine_io_text_out_bits_7 : _GEN_663; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_665 = 4'h8 == _OutputEnqWire_bits_T[3:0] ? AESEngine_io_text_out_bits_8 : _GEN_664; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_666 = 4'h9 == _OutputEnqWire_bits_T[3:0] ? AESEngine_io_text_out_bits_9 : _GEN_665; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_667 = 4'ha == _OutputEnqWire_bits_T[3:0] ? AESEngine_io_text_out_bits_10 : _GEN_666; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_668 = 4'hb == _OutputEnqWire_bits_T[3:0] ? AESEngine_io_text_out_bits_11 : _GEN_667; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_669 = 4'hc == _OutputEnqWire_bits_T[3:0] ? AESEngine_io_text_out_bits_12 : _GEN_668; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_670 = 4'hd == _OutputEnqWire_bits_T[3:0] ? AESEngine_io_text_out_bits_13 : _GEN_669; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_671 = 4'he == _OutputEnqWire_bits_T[3:0] ? AESEngine_io_text_out_bits_14 : _GEN_670; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_672 = 4'hf == _OutputEnqWire_bits_T[3:0] ? AESEngine_io_text_out_bits_15 : _GEN_671; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_674 = 4'h1 == _OutputEnqWire_bits_T_2[3:0] ? AESEngine_io_text_out_bits_1 : _GEN_641; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_675 = 4'h2 == _OutputEnqWire_bits_T_2[3:0] ? AESEngine_io_text_out_bits_2 : _GEN_674; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_676 = 4'h3 == _OutputEnqWire_bits_T_2[3:0] ? AESEngine_io_text_out_bits_3 : _GEN_675; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_677 = 4'h4 == _OutputEnqWire_bits_T_2[3:0] ? AESEngine_io_text_out_bits_4 : _GEN_676; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_678 = 4'h5 == _OutputEnqWire_bits_T_2[3:0] ? AESEngine_io_text_out_bits_5 : _GEN_677; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_679 = 4'h6 == _OutputEnqWire_bits_T_2[3:0] ? AESEngine_io_text_out_bits_6 : _GEN_678; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_680 = 4'h7 == _OutputEnqWire_bits_T_2[3:0] ? AESEngine_io_text_out_bits_7 : _GEN_679; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_681 = 4'h8 == _OutputEnqWire_bits_T_2[3:0] ? AESEngine_io_text_out_bits_8 : _GEN_680; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_682 = 4'h9 == _OutputEnqWire_bits_T_2[3:0] ? AESEngine_io_text_out_bits_9 : _GEN_681; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_683 = 4'ha == _OutputEnqWire_bits_T_2[3:0] ? AESEngine_io_text_out_bits_10 : _GEN_682; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_684 = 4'hb == _OutputEnqWire_bits_T_2[3:0] ? AESEngine_io_text_out_bits_11 : _GEN_683; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_685 = 4'hc == _OutputEnqWire_bits_T_2[3:0] ? AESEngine_io_text_out_bits_12 : _GEN_684; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_686 = 4'hd == _OutputEnqWire_bits_T_2[3:0] ? AESEngine_io_text_out_bits_13 : _GEN_685; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_687 = 4'he == _OutputEnqWire_bits_T_2[3:0] ? AESEngine_io_text_out_bits_14 : _GEN_686; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_688 = 4'hf == _OutputEnqWire_bits_T_2[3:0] ? AESEngine_io_text_out_bits_15 : _GEN_687; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_690 = 4'h1 == _OutputEnqWire_bits_T_6[3:0] ? AESEngine_io_text_out_bits_1 : _GEN_641; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_691 = 4'h2 == _OutputEnqWire_bits_T_6[3:0] ? AESEngine_io_text_out_bits_2 : _GEN_690; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_692 = 4'h3 == _OutputEnqWire_bits_T_6[3:0] ? AESEngine_io_text_out_bits_3 : _GEN_691; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_693 = 4'h4 == _OutputEnqWire_bits_T_6[3:0] ? AESEngine_io_text_out_bits_4 : _GEN_692; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_694 = 4'h5 == _OutputEnqWire_bits_T_6[3:0] ? AESEngine_io_text_out_bits_5 : _GEN_693; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_695 = 4'h6 == _OutputEnqWire_bits_T_6[3:0] ? AESEngine_io_text_out_bits_6 : _GEN_694; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_696 = 4'h7 == _OutputEnqWire_bits_T_6[3:0] ? AESEngine_io_text_out_bits_7 : _GEN_695; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_697 = 4'h8 == _OutputEnqWire_bits_T_6[3:0] ? AESEngine_io_text_out_bits_8 : _GEN_696; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_698 = 4'h9 == _OutputEnqWire_bits_T_6[3:0] ? AESEngine_io_text_out_bits_9 : _GEN_697; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_699 = 4'ha == _OutputEnqWire_bits_T_6[3:0] ? AESEngine_io_text_out_bits_10 : _GEN_698; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_700 = 4'hb == _OutputEnqWire_bits_T_6[3:0] ? AESEngine_io_text_out_bits_11 : _GEN_699; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_701 = 4'hc == _OutputEnqWire_bits_T_6[3:0] ? AESEngine_io_text_out_bits_12 : _GEN_700; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_702 = 4'hd == _OutputEnqWire_bits_T_6[3:0] ? AESEngine_io_text_out_bits_13 : _GEN_701; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_703 = 4'he == _OutputEnqWire_bits_T_6[3:0] ? AESEngine_io_text_out_bits_14 : _GEN_702; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_704 = 4'hf == _OutputEnqWire_bits_T_6[3:0] ? AESEngine_io_text_out_bits_15 : _GEN_703; // @[Cat.scala 31:{58,58}]
  wire [31:0] _OutputEnqWire_bits_T_14 = {_GEN_688,_GEN_704,_GEN_656,_GEN_672}; // @[Cat.scala 31:58]
  wire  _T_21 = OutputCount == 2'h0; // @[Controller.scala 189:24]
  wire [3:0] _GEN_706 = OutputCount == 2'h0 ? AESEngine_io_workID_read : 4'h0; // @[Controller.scala 189:33 Decoupled.scala 64:19]
  wire [1:0] _OutputCount_T_1 = OutputCount + 2'h1; // @[Controller.scala 196:36]
  wire  _GEN_708 = OutputCount == 2'h3 | _GEN_640; // @[Controller.scala 192:33 194:17]
  wire [31:0] _GEN_709 = AESEngine_io_text_out_valid & OutputEnqWire_ready ? _OutputEnqWire_bits_T_14 : 32'h0; // @[Controller.scala 183:62 184:26]
  wire  _GEN_711 = AESEngine_io_text_out_valid & OutputEnqWire_ready & _T_21; // @[Controller.scala 183:62]
  wire [3:0] _GEN_712 = AESEngine_io_text_out_valid & OutputEnqWire_ready ? _GEN_706 : 4'h0; // @[Controller.scala 183:62]
  wire  _T_23 = io_fifo_out_ready & io_fifo_out_valid; // @[Decoupled.scala 50:35]
  wire [1:0] _OutputFireCount_T_1 = OutputFireCount + 2'h1; // @[Controller.scala 205:40]
  wire  _GEN_722 = OutputFireCount == 2'h0 | DestIntReg; // @[Controller.scala 207:33 208:16 81:27]
  wire  OutputSlotIDDeqWire_valid = OutputSlotIDFIFO_io_deq_valid;
  wire  _T_26 = ~DestAddrValid; // @[Controller.scala 211:10]
  wire [3:0] OutputSlotIDDeqWire_bits = OutputSlotIDFIFO_io_deq_bits;
  wire [31:0] _GEN_724 = 4'h1 == OutputSlotIDDeqWire_bits ? DestAddrBank_1 : DestAddrBank_0; // @[Controller.scala 212:{16,16}]
  wire [31:0] _GEN_725 = 4'h2 == OutputSlotIDDeqWire_bits ? DestAddrBank_2 : _GEN_724; // @[Controller.scala 212:{16,16}]
  wire [31:0] _GEN_726 = 4'h3 == OutputSlotIDDeqWire_bits ? DestAddrBank_3 : _GEN_725; // @[Controller.scala 212:{16,16}]
  wire [31:0] _GEN_727 = 4'h4 == OutputSlotIDDeqWire_bits ? DestAddrBank_4 : _GEN_726; // @[Controller.scala 212:{16,16}]
  wire [31:0] _GEN_728 = 4'h5 == OutputSlotIDDeqWire_bits ? DestAddrBank_5 : _GEN_727; // @[Controller.scala 212:{16,16}]
  wire [31:0] _GEN_729 = 4'h6 == OutputSlotIDDeqWire_bits ? DestAddrBank_6 : _GEN_728; // @[Controller.scala 212:{16,16}]
  wire [31:0] _GEN_730 = 4'h7 == OutputSlotIDDeqWire_bits ? DestAddrBank_7 : _GEN_729; // @[Controller.scala 212:{16,16}]
  wire [31:0] _GEN_731 = 4'h8 == OutputSlotIDDeqWire_bits ? DestAddrBank_8 : _GEN_730; // @[Controller.scala 212:{16,16}]
  wire [31:0] _GEN_732 = 4'h9 == OutputSlotIDDeqWire_bits ? DestAddrBank_9 : _GEN_731; // @[Controller.scala 212:{16,16}]
  wire [31:0] _GEN_733 = 4'ha == OutputSlotIDDeqWire_bits ? DestAddrBank_10 : _GEN_732; // @[Controller.scala 212:{16,16}]
  wire [31:0] _GEN_734 = 4'hb == OutputSlotIDDeqWire_bits ? DestAddrBank_11 : _GEN_733; // @[Controller.scala 212:{16,16}]
  wire [31:0] _GEN_735 = 4'hc == OutputSlotIDDeqWire_bits ? DestAddrBank_12 : _GEN_734; // @[Controller.scala 212:{16,16}]
  wire [31:0] _GEN_736 = 4'hd == OutputSlotIDDeqWire_bits ? DestAddrBank_13 : _GEN_735; // @[Controller.scala 212:{16,16}]
  wire [31:0] _GEN_737 = 4'he == OutputSlotIDDeqWire_bits ? DestAddrBank_14 : _GEN_736; // @[Controller.scala 212:{16,16}]
  wire  _GEN_741 = ~DestAddrValid | DestAddrValid; // @[Controller.scala 211:26 213:21 76:30]
  wire  _T_27 = io_dest_addr_dma_ready & io_dest_addr_dma_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_748 = 4'h1 == io_slotID_setwork ? LockBank_1_key_lock : LockBank_0_key_lock; // @[Controller.scala 223:{59,59}]
  wire  _GEN_749 = 4'h2 == io_slotID_setwork ? LockBank_2_key_lock : _GEN_748; // @[Controller.scala 223:{59,59}]
  wire  _GEN_750 = 4'h3 == io_slotID_setwork ? LockBank_3_key_lock : _GEN_749; // @[Controller.scala 223:{59,59}]
  wire  _GEN_751 = 4'h4 == io_slotID_setwork ? LockBank_4_key_lock : _GEN_750; // @[Controller.scala 223:{59,59}]
  wire  _GEN_752 = 4'h5 == io_slotID_setwork ? LockBank_5_key_lock : _GEN_751; // @[Controller.scala 223:{59,59}]
  wire  _GEN_753 = 4'h6 == io_slotID_setwork ? LockBank_6_key_lock : _GEN_752; // @[Controller.scala 223:{59,59}]
  wire  _GEN_754 = 4'h7 == io_slotID_setwork ? LockBank_7_key_lock : _GEN_753; // @[Controller.scala 223:{59,59}]
  wire  _GEN_755 = 4'h8 == io_slotID_setwork ? LockBank_8_key_lock : _GEN_754; // @[Controller.scala 223:{59,59}]
  wire  _GEN_756 = 4'h9 == io_slotID_setwork ? LockBank_9_key_lock : _GEN_755; // @[Controller.scala 223:{59,59}]
  wire  _GEN_757 = 4'ha == io_slotID_setwork ? LockBank_10_key_lock : _GEN_756; // @[Controller.scala 223:{59,59}]
  wire  _GEN_758 = 4'hb == io_slotID_setwork ? LockBank_11_key_lock : _GEN_757; // @[Controller.scala 223:{59,59}]
  wire  _GEN_759 = 4'hc == io_slotID_setwork ? LockBank_12_key_lock : _GEN_758; // @[Controller.scala 223:{59,59}]
  wire  _GEN_760 = 4'hd == io_slotID_setwork ? LockBank_13_key_lock : _GEN_759; // @[Controller.scala 223:{59,59}]
  wire  _GEN_761 = 4'he == io_slotID_setwork ? LockBank_14_key_lock : _GEN_760; // @[Controller.scala 223:{59,59}]
  wire  _GEN_762 = 4'hf == io_slotID_setwork ? LockBank_15_key_lock : _GEN_761; // @[Controller.scala 223:{59,59}]
  wire  _GEN_764 = 4'h1 == io_slotID_setwork ? LockBank_1_work_lock : LockBank_0_work_lock; // @[Controller.scala 224:{28,28}]
  wire  _GEN_765 = 4'h2 == io_slotID_setwork ? LockBank_2_work_lock : _GEN_764; // @[Controller.scala 224:{28,28}]
  wire  _GEN_766 = 4'h3 == io_slotID_setwork ? LockBank_3_work_lock : _GEN_765; // @[Controller.scala 224:{28,28}]
  wire  _GEN_767 = 4'h4 == io_slotID_setwork ? LockBank_4_work_lock : _GEN_766; // @[Controller.scala 224:{28,28}]
  wire  _GEN_768 = 4'h5 == io_slotID_setwork ? LockBank_5_work_lock : _GEN_767; // @[Controller.scala 224:{28,28}]
  wire  _GEN_769 = 4'h6 == io_slotID_setwork ? LockBank_6_work_lock : _GEN_768; // @[Controller.scala 224:{28,28}]
  wire  _GEN_770 = 4'h7 == io_slotID_setwork ? LockBank_7_work_lock : _GEN_769; // @[Controller.scala 224:{28,28}]
  wire  _GEN_771 = 4'h8 == io_slotID_setwork ? LockBank_8_work_lock : _GEN_770; // @[Controller.scala 224:{28,28}]
  wire  _GEN_772 = 4'h9 == io_slotID_setwork ? LockBank_9_work_lock : _GEN_771; // @[Controller.scala 224:{28,28}]
  wire  _GEN_773 = 4'ha == io_slotID_setwork ? LockBank_10_work_lock : _GEN_772; // @[Controller.scala 224:{28,28}]
  wire  _GEN_774 = 4'hb == io_slotID_setwork ? LockBank_11_work_lock : _GEN_773; // @[Controller.scala 224:{28,28}]
  wire  _GEN_775 = 4'hc == io_slotID_setwork ? LockBank_12_work_lock : _GEN_774; // @[Controller.scala 224:{28,28}]
  wire  _GEN_776 = 4'hd == io_slotID_setwork ? LockBank_13_work_lock : _GEN_775; // @[Controller.scala 224:{28,28}]
  wire  _GEN_777 = 4'he == io_slotID_setwork ? LockBank_14_work_lock : _GEN_776; // @[Controller.scala 224:{28,28}]
  wire  _GEN_778 = 4'hf == io_slotID_setwork ? LockBank_15_work_lock : _GEN_777; // @[Controller.scala 224:{28,28}]
  wire  _io_source_addr_setwork_ready_T_2 = ~_GEN_778; // @[Controller.scala 224:28]
  wire [127:0] _T_28 = {TextInReg_3,TextInReg_2,TextInReg_1,TextInReg_0}; // @[Controller.scala 227:50]
  Group AESEngine ( // @[Controller.scala 46:25]
    .clock(AESEngine_clock),
    .reset(AESEngine_reset),
    .io_workID_key(AESEngine_io_workID_key),
    .io_user_key_ready(AESEngine_io_user_key_ready),
    .io_user_key_valid(AESEngine_io_user_key_valid),
    .io_user_key_bits_0(AESEngine_io_user_key_bits_0),
    .io_user_key_bits_1(AESEngine_io_user_key_bits_1),
    .io_user_key_bits_2(AESEngine_io_user_key_bits_2),
    .io_user_key_bits_3(AESEngine_io_user_key_bits_3),
    .io_user_key_bits_4(AESEngine_io_user_key_bits_4),
    .io_user_key_bits_5(AESEngine_io_user_key_bits_5),
    .io_user_key_bits_6(AESEngine_io_user_key_bits_6),
    .io_user_key_bits_7(AESEngine_io_user_key_bits_7),
    .io_user_key_bits_8(AESEngine_io_user_key_bits_8),
    .io_user_key_bits_9(AESEngine_io_user_key_bits_9),
    .io_user_key_bits_10(AESEngine_io_user_key_bits_10),
    .io_user_key_bits_11(AESEngine_io_user_key_bits_11),
    .io_user_key_bits_12(AESEngine_io_user_key_bits_12),
    .io_user_key_bits_13(AESEngine_io_user_key_bits_13),
    .io_user_key_bits_14(AESEngine_io_user_key_bits_14),
    .io_user_key_bits_15(AESEngine_io_user_key_bits_15),
    .io_workID_start(AESEngine_io_workID_start),
    .io_text_in_ready(AESEngine_io_text_in_ready),
    .io_text_in_valid(AESEngine_io_text_in_valid),
    .io_text_in_bits_0(AESEngine_io_text_in_bits_0),
    .io_text_in_bits_1(AESEngine_io_text_in_bits_1),
    .io_text_in_bits_2(AESEngine_io_text_in_bits_2),
    .io_text_in_bits_3(AESEngine_io_text_in_bits_3),
    .io_text_in_bits_4(AESEngine_io_text_in_bits_4),
    .io_text_in_bits_5(AESEngine_io_text_in_bits_5),
    .io_text_in_bits_6(AESEngine_io_text_in_bits_6),
    .io_text_in_bits_7(AESEngine_io_text_in_bits_7),
    .io_text_in_bits_8(AESEngine_io_text_in_bits_8),
    .io_text_in_bits_9(AESEngine_io_text_in_bits_9),
    .io_text_in_bits_10(AESEngine_io_text_in_bits_10),
    .io_text_in_bits_11(AESEngine_io_text_in_bits_11),
    .io_text_in_bits_12(AESEngine_io_text_in_bits_12),
    .io_text_in_bits_13(AESEngine_io_text_in_bits_13),
    .io_text_in_bits_14(AESEngine_io_text_in_bits_14),
    .io_text_in_bits_15(AESEngine_io_text_in_bits_15),
    .io_workID_read(AESEngine_io_workID_read),
    .io_text_out_ready(AESEngine_io_text_out_ready),
    .io_text_out_valid(AESEngine_io_text_out_valid),
    .io_text_out_bits_0(AESEngine_io_text_out_bits_0),
    .io_text_out_bits_1(AESEngine_io_text_out_bits_1),
    .io_text_out_bits_2(AESEngine_io_text_out_bits_2),
    .io_text_out_bits_3(AESEngine_io_text_out_bits_3),
    .io_text_out_bits_4(AESEngine_io_text_out_bits_4),
    .io_text_out_bits_5(AESEngine_io_text_out_bits_5),
    .io_text_out_bits_6(AESEngine_io_text_out_bits_6),
    .io_text_out_bits_7(AESEngine_io_text_out_bits_7),
    .io_text_out_bits_8(AESEngine_io_text_out_bits_8),
    .io_text_out_bits_9(AESEngine_io_text_out_bits_9),
    .io_text_out_bits_10(AESEngine_io_text_out_bits_10),
    .io_text_out_bits_11(AESEngine_io_text_out_bits_11),
    .io_text_out_bits_12(AESEngine_io_text_out_bits_12),
    .io_text_out_bits_13(AESEngine_io_text_out_bits_13),
    .io_text_out_bits_14(AESEngine_io_text_out_bits_14),
    .io_text_out_bits_15(AESEngine_io_text_out_bits_15)
  );
  Queue InputFIFO ( // @[Controller.scala 58:25]
    .clock(InputFIFO_clock),
    .reset(InputFIFO_reset),
    .io_enq_ready(InputFIFO_io_enq_ready),
    .io_enq_valid(InputFIFO_io_enq_valid),
    .io_enq_bits(InputFIFO_io_enq_bits),
    .io_deq_ready(InputFIFO_io_deq_ready),
    .io_deq_valid(InputFIFO_io_deq_valid),
    .io_deq_bits(InputFIFO_io_deq_bits)
  );
  Queue_1 InputSlotIDFIFO ( // @[Controller.scala 59:31]
    .clock(InputSlotIDFIFO_clock),
    .reset(InputSlotIDFIFO_reset),
    .io_enq_ready(InputSlotIDFIFO_io_enq_ready),
    .io_enq_valid(InputSlotIDFIFO_io_enq_valid),
    .io_enq_bits(InputSlotIDFIFO_io_enq_bits),
    .io_deq_ready(InputSlotIDFIFO_io_deq_ready),
    .io_deq_valid(InputSlotIDFIFO_io_deq_valid),
    .io_deq_bits(InputSlotIDFIFO_io_deq_bits)
  );
  Queue OutputFIFO ( // @[Controller.scala 67:26]
    .clock(OutputFIFO_clock),
    .reset(OutputFIFO_reset),
    .io_enq_ready(OutputFIFO_io_enq_ready),
    .io_enq_valid(OutputFIFO_io_enq_valid),
    .io_enq_bits(OutputFIFO_io_enq_bits),
    .io_deq_ready(OutputFIFO_io_deq_ready),
    .io_deq_valid(OutputFIFO_io_deq_valid),
    .io_deq_bits(OutputFIFO_io_deq_bits)
  );
  Queue_1 OutputSlotIDFIFO ( // @[Controller.scala 68:32]
    .clock(OutputSlotIDFIFO_clock),
    .reset(OutputSlotIDFIFO_reset),
    .io_enq_ready(OutputSlotIDFIFO_io_enq_ready),
    .io_enq_valid(OutputSlotIDFIFO_io_enq_valid),
    .io_enq_bits(OutputSlotIDFIFO_io_enq_bits),
    .io_deq_ready(OutputSlotIDFIFO_io_deq_ready),
    .io_deq_valid(OutputSlotIDFIFO_io_deq_valid),
    .io_deq_bits(OutputSlotIDFIFO_io_deq_bits)
  );
  assign io_fifo_in_ready = InputFIFO_io_enq_ready; // @[Controller.scala 221:20]
  assign io_source_addr_setwork_ready = io_length_setwork > 26'h0 & _GEN_762 & _io_source_addr_setwork_ready_T_2; // @[Controller.scala 223:98]
  assign io_user_key_ready = AESEngine_io_user_key_ready & ~_GEN_130 & ~_io_user_key_ready_T_3; // @[Controller.scala 107:88]
  assign io_destroy_ready = ~_GEN_98 & _GEN_114; // @[Controller.scala 106:60]
  assign io_source_addr_dma_valid = SourceAddrValid; // @[Controller.scala 226:28]
  assign io_source_addr_dma_bits = SourceAddr; // @[Controller.scala 225:27]
  assign io_dest_addr_dma_valid = DestAddrValid; // @[Controller.scala 202:26]
  assign io_dest_addr_dma_bits = DestAddr; // @[Controller.scala 201:25]
  assign io_fifo_out_valid = OutputFIFO_io_deq_valid; // @[Controller.scala 222:15]
  assign io_fifo_out_bits = OutputFIFO_io_deq_bits; // @[Controller.scala 222:15]
  assign io_source_interrupt = SourceIntReg; // @[Controller.scala 83:23]
  assign io_dest_interrupt = DestIntReg; // @[Controller.scala 84:21]
  assign AESEngine_clock = clock;
  assign AESEngine_reset = reset;
  assign AESEngine_io_workID_key = _T ? io_slotID_key : 4'h0; // @[Controller.scala 86:26 91:29 95:29]
  assign AESEngine_io_user_key_valid = io_user_key_ready & io_user_key_valid; // @[Decoupled.scala 50:35]
  assign AESEngine_io_user_key_bits_0 = _T ? io_user_key_bits_0 : 8'h0; // @[Controller.scala 86:26 89:32 93:32]
  assign AESEngine_io_user_key_bits_1 = _T ? io_user_key_bits_1 : 8'h0; // @[Controller.scala 86:26 89:32 93:32]
  assign AESEngine_io_user_key_bits_2 = _T ? io_user_key_bits_2 : 8'h0; // @[Controller.scala 86:26 89:32 93:32]
  assign AESEngine_io_user_key_bits_3 = _T ? io_user_key_bits_3 : 8'h0; // @[Controller.scala 86:26 89:32 93:32]
  assign AESEngine_io_user_key_bits_4 = _T ? io_user_key_bits_4 : 8'h0; // @[Controller.scala 86:26 89:32 93:32]
  assign AESEngine_io_user_key_bits_5 = _T ? io_user_key_bits_5 : 8'h0; // @[Controller.scala 86:26 89:32 93:32]
  assign AESEngine_io_user_key_bits_6 = _T ? io_user_key_bits_6 : 8'h0; // @[Controller.scala 86:26 89:32 93:32]
  assign AESEngine_io_user_key_bits_7 = _T ? io_user_key_bits_7 : 8'h0; // @[Controller.scala 86:26 89:32 93:32]
  assign AESEngine_io_user_key_bits_8 = _T ? io_user_key_bits_8 : 8'h0; // @[Controller.scala 86:26 89:32 93:32]
  assign AESEngine_io_user_key_bits_9 = _T ? io_user_key_bits_9 : 8'h0; // @[Controller.scala 86:26 89:32 93:32]
  assign AESEngine_io_user_key_bits_10 = _T ? io_user_key_bits_10 : 8'h0; // @[Controller.scala 86:26 89:32 93:32]
  assign AESEngine_io_user_key_bits_11 = _T ? io_user_key_bits_11 : 8'h0; // @[Controller.scala 86:26 89:32 93:32]
  assign AESEngine_io_user_key_bits_12 = _T ? io_user_key_bits_12 : 8'h0; // @[Controller.scala 86:26 89:32 93:32]
  assign AESEngine_io_user_key_bits_13 = _T ? io_user_key_bits_13 : 8'h0; // @[Controller.scala 86:26 89:32 93:32]
  assign AESEngine_io_user_key_bits_14 = _T ? io_user_key_bits_14 : 8'h0; // @[Controller.scala 86:26 89:32 93:32]
  assign AESEngine_io_user_key_bits_15 = _T ? io_user_key_bits_15 : 8'h0; // @[Controller.scala 86:26 89:32 93:32]
  assign AESEngine_io_workID_start = InputSlotID; // @[Controller.scala 152:29]
  assign AESEngine_io_text_in_valid = CanFeed; // @[Controller.scala 153:30]
  assign AESEngine_io_text_in_bits_0 = _T_28[7:0]; // @[Controller.scala 227:50]
  assign AESEngine_io_text_in_bits_1 = _T_28[15:8]; // @[Controller.scala 227:50]
  assign AESEngine_io_text_in_bits_2 = _T_28[23:16]; // @[Controller.scala 227:50]
  assign AESEngine_io_text_in_bits_3 = _T_28[31:24]; // @[Controller.scala 227:50]
  assign AESEngine_io_text_in_bits_4 = _T_28[39:32]; // @[Controller.scala 227:50]
  assign AESEngine_io_text_in_bits_5 = _T_28[47:40]; // @[Controller.scala 227:50]
  assign AESEngine_io_text_in_bits_6 = _T_28[55:48]; // @[Controller.scala 227:50]
  assign AESEngine_io_text_in_bits_7 = _T_28[63:56]; // @[Controller.scala 227:50]
  assign AESEngine_io_text_in_bits_8 = _T_28[71:64]; // @[Controller.scala 227:50]
  assign AESEngine_io_text_in_bits_9 = _T_28[79:72]; // @[Controller.scala 227:50]
  assign AESEngine_io_text_in_bits_10 = _T_28[87:80]; // @[Controller.scala 227:50]
  assign AESEngine_io_text_in_bits_11 = _T_28[95:88]; // @[Controller.scala 227:50]
  assign AESEngine_io_text_in_bits_12 = _T_28[103:96]; // @[Controller.scala 227:50]
  assign AESEngine_io_text_in_bits_13 = _T_28[111:104]; // @[Controller.scala 227:50]
  assign AESEngine_io_text_in_bits_14 = _T_28[119:112]; // @[Controller.scala 227:50]
  assign AESEngine_io_text_in_bits_15 = _T_28[127:120]; // @[Controller.scala 227:50]
  assign AESEngine_io_text_out_ready = CanDrag; // @[Controller.scala 178:31]
  assign InputFIFO_clock = clock;
  assign InputFIFO_reset = reset;
  assign InputFIFO_io_enq_valid = io_fifo_in_valid; // @[Controller.scala 221:20]
  assign InputFIFO_io_enq_bits = io_fifo_in_bits; // @[Controller.scala 221:20]
  assign InputFIFO_io_deq_ready = ~CanFeed; // @[Controller.scala 157:8]
  assign InputSlotIDFIFO_clock = clock;
  assign InputSlotIDFIFO_reset = reset;
  assign InputSlotIDFIFO_io_enq_valid = _T_7 ? 1'h0 : _GEN_480; // @[Controller.scala 120:37]
  assign InputSlotIDFIFO_io_enq_bits = _T_7 ? 4'h0 : _GEN_481; // @[Controller.scala 120:37]
  assign InputSlotIDFIFO_io_deq_ready = InputCount == 2'h3; // @[Controller.scala 171:19]
  assign OutputFIFO_clock = clock;
  assign OutputFIFO_reset = reset;
  assign OutputFIFO_io_enq_valid = ~CanDrag & _T_20; // @[Controller.scala 182:18]
  assign OutputFIFO_io_enq_bits = ~CanDrag ? _GEN_709 : 32'h0; // @[Controller.scala 182:18]
  assign OutputFIFO_io_deq_ready = io_fifo_out_ready; // @[Controller.scala 222:15]
  assign OutputSlotIDFIFO_clock = clock;
  assign OutputSlotIDFIFO_reset = reset;
  assign OutputSlotIDFIFO_io_enq_valid = ~CanDrag & _GEN_711; // @[Controller.scala 182:18]
  assign OutputSlotIDFIFO_io_enq_bits = ~CanDrag ? _GEN_712 : 4'h0; // @[Controller.scala 182:18]
  assign OutputSlotIDFIFO_io_deq_ready = DestIntReg & OutputSlotIDDeqWire_valid & _T_26; // @[Controller.scala 210:49]
  always @(posedge clock) begin
    if (reset) begin // @[Controller.scala 47:25]
      LockBank_0_key_lock <= 1'h0; // @[Controller.scala 47:25]
    end else if (_T_3) begin // @[Controller.scala 102:25]
      if (4'h0 == io_destroy_bits) begin // @[Controller.scala 103:40]
        LockBank_0_key_lock <= 1'h0; // @[Controller.scala 103:40]
      end else begin
        LockBank_0_key_lock <= _GEN_35;
      end
    end else begin
      LockBank_0_key_lock <= _GEN_35;
    end
    if (reset) begin // @[Controller.scala 47:25]
      LockBank_0_work_lock <= 1'h0; // @[Controller.scala 47:25]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      LockBank_0_work_lock <= _GEN_135;
    end
    if (reset) begin // @[Controller.scala 47:25]
      LockBank_1_key_lock <= 1'h0; // @[Controller.scala 47:25]
    end else if (_T_3) begin // @[Controller.scala 102:25]
      if (4'h1 == io_destroy_bits) begin // @[Controller.scala 103:40]
        LockBank_1_key_lock <= 1'h0; // @[Controller.scala 103:40]
      end else begin
        LockBank_1_key_lock <= _GEN_36;
      end
    end else begin
      LockBank_1_key_lock <= _GEN_36;
    end
    if (reset) begin // @[Controller.scala 47:25]
      LockBank_1_work_lock <= 1'h0; // @[Controller.scala 47:25]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      LockBank_1_work_lock <= _GEN_136;
    end
    if (reset) begin // @[Controller.scala 47:25]
      LockBank_2_key_lock <= 1'h0; // @[Controller.scala 47:25]
    end else if (_T_3) begin // @[Controller.scala 102:25]
      if (4'h2 == io_destroy_bits) begin // @[Controller.scala 103:40]
        LockBank_2_key_lock <= 1'h0; // @[Controller.scala 103:40]
      end else begin
        LockBank_2_key_lock <= _GEN_37;
      end
    end else begin
      LockBank_2_key_lock <= _GEN_37;
    end
    if (reset) begin // @[Controller.scala 47:25]
      LockBank_2_work_lock <= 1'h0; // @[Controller.scala 47:25]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      LockBank_2_work_lock <= _GEN_137;
    end
    if (reset) begin // @[Controller.scala 47:25]
      LockBank_3_key_lock <= 1'h0; // @[Controller.scala 47:25]
    end else if (_T_3) begin // @[Controller.scala 102:25]
      if (4'h3 == io_destroy_bits) begin // @[Controller.scala 103:40]
        LockBank_3_key_lock <= 1'h0; // @[Controller.scala 103:40]
      end else begin
        LockBank_3_key_lock <= _GEN_38;
      end
    end else begin
      LockBank_3_key_lock <= _GEN_38;
    end
    if (reset) begin // @[Controller.scala 47:25]
      LockBank_3_work_lock <= 1'h0; // @[Controller.scala 47:25]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      LockBank_3_work_lock <= _GEN_138;
    end
    if (reset) begin // @[Controller.scala 47:25]
      LockBank_4_key_lock <= 1'h0; // @[Controller.scala 47:25]
    end else if (_T_3) begin // @[Controller.scala 102:25]
      if (4'h4 == io_destroy_bits) begin // @[Controller.scala 103:40]
        LockBank_4_key_lock <= 1'h0; // @[Controller.scala 103:40]
      end else begin
        LockBank_4_key_lock <= _GEN_39;
      end
    end else begin
      LockBank_4_key_lock <= _GEN_39;
    end
    if (reset) begin // @[Controller.scala 47:25]
      LockBank_4_work_lock <= 1'h0; // @[Controller.scala 47:25]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      LockBank_4_work_lock <= _GEN_139;
    end
    if (reset) begin // @[Controller.scala 47:25]
      LockBank_5_key_lock <= 1'h0; // @[Controller.scala 47:25]
    end else if (_T_3) begin // @[Controller.scala 102:25]
      if (4'h5 == io_destroy_bits) begin // @[Controller.scala 103:40]
        LockBank_5_key_lock <= 1'h0; // @[Controller.scala 103:40]
      end else begin
        LockBank_5_key_lock <= _GEN_40;
      end
    end else begin
      LockBank_5_key_lock <= _GEN_40;
    end
    if (reset) begin // @[Controller.scala 47:25]
      LockBank_5_work_lock <= 1'h0; // @[Controller.scala 47:25]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      LockBank_5_work_lock <= _GEN_140;
    end
    if (reset) begin // @[Controller.scala 47:25]
      LockBank_6_key_lock <= 1'h0; // @[Controller.scala 47:25]
    end else if (_T_3) begin // @[Controller.scala 102:25]
      if (4'h6 == io_destroy_bits) begin // @[Controller.scala 103:40]
        LockBank_6_key_lock <= 1'h0; // @[Controller.scala 103:40]
      end else begin
        LockBank_6_key_lock <= _GEN_41;
      end
    end else begin
      LockBank_6_key_lock <= _GEN_41;
    end
    if (reset) begin // @[Controller.scala 47:25]
      LockBank_6_work_lock <= 1'h0; // @[Controller.scala 47:25]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      LockBank_6_work_lock <= _GEN_141;
    end
    if (reset) begin // @[Controller.scala 47:25]
      LockBank_7_key_lock <= 1'h0; // @[Controller.scala 47:25]
    end else if (_T_3) begin // @[Controller.scala 102:25]
      if (4'h7 == io_destroy_bits) begin // @[Controller.scala 103:40]
        LockBank_7_key_lock <= 1'h0; // @[Controller.scala 103:40]
      end else begin
        LockBank_7_key_lock <= _GEN_42;
      end
    end else begin
      LockBank_7_key_lock <= _GEN_42;
    end
    if (reset) begin // @[Controller.scala 47:25]
      LockBank_7_work_lock <= 1'h0; // @[Controller.scala 47:25]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      LockBank_7_work_lock <= _GEN_142;
    end
    if (reset) begin // @[Controller.scala 47:25]
      LockBank_8_key_lock <= 1'h0; // @[Controller.scala 47:25]
    end else if (_T_3) begin // @[Controller.scala 102:25]
      if (4'h8 == io_destroy_bits) begin // @[Controller.scala 103:40]
        LockBank_8_key_lock <= 1'h0; // @[Controller.scala 103:40]
      end else begin
        LockBank_8_key_lock <= _GEN_43;
      end
    end else begin
      LockBank_8_key_lock <= _GEN_43;
    end
    if (reset) begin // @[Controller.scala 47:25]
      LockBank_8_work_lock <= 1'h0; // @[Controller.scala 47:25]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      LockBank_8_work_lock <= _GEN_143;
    end
    if (reset) begin // @[Controller.scala 47:25]
      LockBank_9_key_lock <= 1'h0; // @[Controller.scala 47:25]
    end else if (_T_3) begin // @[Controller.scala 102:25]
      if (4'h9 == io_destroy_bits) begin // @[Controller.scala 103:40]
        LockBank_9_key_lock <= 1'h0; // @[Controller.scala 103:40]
      end else begin
        LockBank_9_key_lock <= _GEN_44;
      end
    end else begin
      LockBank_9_key_lock <= _GEN_44;
    end
    if (reset) begin // @[Controller.scala 47:25]
      LockBank_9_work_lock <= 1'h0; // @[Controller.scala 47:25]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      LockBank_9_work_lock <= _GEN_144;
    end
    if (reset) begin // @[Controller.scala 47:25]
      LockBank_10_key_lock <= 1'h0; // @[Controller.scala 47:25]
    end else if (_T_3) begin // @[Controller.scala 102:25]
      if (4'ha == io_destroy_bits) begin // @[Controller.scala 103:40]
        LockBank_10_key_lock <= 1'h0; // @[Controller.scala 103:40]
      end else begin
        LockBank_10_key_lock <= _GEN_45;
      end
    end else begin
      LockBank_10_key_lock <= _GEN_45;
    end
    if (reset) begin // @[Controller.scala 47:25]
      LockBank_10_work_lock <= 1'h0; // @[Controller.scala 47:25]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      LockBank_10_work_lock <= _GEN_145;
    end
    if (reset) begin // @[Controller.scala 47:25]
      LockBank_11_key_lock <= 1'h0; // @[Controller.scala 47:25]
    end else if (_T_3) begin // @[Controller.scala 102:25]
      if (4'hb == io_destroy_bits) begin // @[Controller.scala 103:40]
        LockBank_11_key_lock <= 1'h0; // @[Controller.scala 103:40]
      end else begin
        LockBank_11_key_lock <= _GEN_46;
      end
    end else begin
      LockBank_11_key_lock <= _GEN_46;
    end
    if (reset) begin // @[Controller.scala 47:25]
      LockBank_11_work_lock <= 1'h0; // @[Controller.scala 47:25]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      LockBank_11_work_lock <= _GEN_146;
    end
    if (reset) begin // @[Controller.scala 47:25]
      LockBank_12_key_lock <= 1'h0; // @[Controller.scala 47:25]
    end else if (_T_3) begin // @[Controller.scala 102:25]
      if (4'hc == io_destroy_bits) begin // @[Controller.scala 103:40]
        LockBank_12_key_lock <= 1'h0; // @[Controller.scala 103:40]
      end else begin
        LockBank_12_key_lock <= _GEN_47;
      end
    end else begin
      LockBank_12_key_lock <= _GEN_47;
    end
    if (reset) begin // @[Controller.scala 47:25]
      LockBank_12_work_lock <= 1'h0; // @[Controller.scala 47:25]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      LockBank_12_work_lock <= _GEN_147;
    end
    if (reset) begin // @[Controller.scala 47:25]
      LockBank_13_key_lock <= 1'h0; // @[Controller.scala 47:25]
    end else if (_T_3) begin // @[Controller.scala 102:25]
      if (4'hd == io_destroy_bits) begin // @[Controller.scala 103:40]
        LockBank_13_key_lock <= 1'h0; // @[Controller.scala 103:40]
      end else begin
        LockBank_13_key_lock <= _GEN_48;
      end
    end else begin
      LockBank_13_key_lock <= _GEN_48;
    end
    if (reset) begin // @[Controller.scala 47:25]
      LockBank_13_work_lock <= 1'h0; // @[Controller.scala 47:25]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      LockBank_13_work_lock <= _GEN_148;
    end
    if (reset) begin // @[Controller.scala 47:25]
      LockBank_14_key_lock <= 1'h0; // @[Controller.scala 47:25]
    end else if (_T_3) begin // @[Controller.scala 102:25]
      if (4'he == io_destroy_bits) begin // @[Controller.scala 103:40]
        LockBank_14_key_lock <= 1'h0; // @[Controller.scala 103:40]
      end else begin
        LockBank_14_key_lock <= _GEN_49;
      end
    end else begin
      LockBank_14_key_lock <= _GEN_49;
    end
    if (reset) begin // @[Controller.scala 47:25]
      LockBank_14_work_lock <= 1'h0; // @[Controller.scala 47:25]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      LockBank_14_work_lock <= _GEN_149;
    end
    if (reset) begin // @[Controller.scala 47:25]
      LockBank_15_key_lock <= 1'h0; // @[Controller.scala 47:25]
    end else if (_T_3) begin // @[Controller.scala 102:25]
      if (4'hf == io_destroy_bits) begin // @[Controller.scala 103:40]
        LockBank_15_key_lock <= 1'h0; // @[Controller.scala 103:40]
      end else begin
        LockBank_15_key_lock <= _GEN_50;
      end
    end else begin
      LockBank_15_key_lock <= _GEN_50;
    end
    if (reset) begin // @[Controller.scala 47:25]
      LockBank_15_work_lock <= 1'h0; // @[Controller.scala 47:25]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      LockBank_15_work_lock <= _GEN_150;
    end
    if (reset) begin // @[Controller.scala 49:30]
      AddrLoopQueue_0_addr <= 32'h0; // @[Controller.scala 49:30]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h0 == LQHead) begin // @[Controller.scala 122:32]
        AddrLoopQueue_0_addr <= io_source_addr_setwork_bits; // @[Controller.scala 122:32]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        AddrLoopQueue_0_addr <= _GEN_408;
      end
    end
    if (reset) begin // @[Controller.scala 49:30]
      AddrLoopQueue_0_slotID <= 4'h0; // @[Controller.scala 49:30]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h0 == LQHead) begin // @[Controller.scala 123:34]
        AddrLoopQueue_0_slotID <= io_slotID_setwork; // @[Controller.scala 123:34]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        AddrLoopQueue_0_slotID <= _GEN_359;
      end
    end
    if (reset) begin // @[Controller.scala 49:30]
      AddrLoopQueue_1_addr <= 32'h0; // @[Controller.scala 49:30]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h1 == LQHead) begin // @[Controller.scala 122:32]
        AddrLoopQueue_1_addr <= io_source_addr_setwork_bits; // @[Controller.scala 122:32]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        AddrLoopQueue_1_addr <= _GEN_409;
      end
    end
    if (reset) begin // @[Controller.scala 49:30]
      AddrLoopQueue_1_slotID <= 4'h0; // @[Controller.scala 49:30]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h1 == LQHead) begin // @[Controller.scala 123:34]
        AddrLoopQueue_1_slotID <= io_slotID_setwork; // @[Controller.scala 123:34]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        AddrLoopQueue_1_slotID <= _GEN_360;
      end
    end
    if (reset) begin // @[Controller.scala 49:30]
      AddrLoopQueue_2_addr <= 32'h0; // @[Controller.scala 49:30]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h2 == LQHead) begin // @[Controller.scala 122:32]
        AddrLoopQueue_2_addr <= io_source_addr_setwork_bits; // @[Controller.scala 122:32]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        AddrLoopQueue_2_addr <= _GEN_410;
      end
    end
    if (reset) begin // @[Controller.scala 49:30]
      AddrLoopQueue_2_slotID <= 4'h0; // @[Controller.scala 49:30]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h2 == LQHead) begin // @[Controller.scala 123:34]
        AddrLoopQueue_2_slotID <= io_slotID_setwork; // @[Controller.scala 123:34]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        AddrLoopQueue_2_slotID <= _GEN_361;
      end
    end
    if (reset) begin // @[Controller.scala 49:30]
      AddrLoopQueue_3_addr <= 32'h0; // @[Controller.scala 49:30]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h3 == LQHead) begin // @[Controller.scala 122:32]
        AddrLoopQueue_3_addr <= io_source_addr_setwork_bits; // @[Controller.scala 122:32]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        AddrLoopQueue_3_addr <= _GEN_411;
      end
    end
    if (reset) begin // @[Controller.scala 49:30]
      AddrLoopQueue_3_slotID <= 4'h0; // @[Controller.scala 49:30]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h3 == LQHead) begin // @[Controller.scala 123:34]
        AddrLoopQueue_3_slotID <= io_slotID_setwork; // @[Controller.scala 123:34]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        AddrLoopQueue_3_slotID <= _GEN_362;
      end
    end
    if (reset) begin // @[Controller.scala 49:30]
      AddrLoopQueue_4_addr <= 32'h0; // @[Controller.scala 49:30]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h4 == LQHead) begin // @[Controller.scala 122:32]
        AddrLoopQueue_4_addr <= io_source_addr_setwork_bits; // @[Controller.scala 122:32]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        AddrLoopQueue_4_addr <= _GEN_412;
      end
    end
    if (reset) begin // @[Controller.scala 49:30]
      AddrLoopQueue_4_slotID <= 4'h0; // @[Controller.scala 49:30]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h4 == LQHead) begin // @[Controller.scala 123:34]
        AddrLoopQueue_4_slotID <= io_slotID_setwork; // @[Controller.scala 123:34]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        AddrLoopQueue_4_slotID <= _GEN_363;
      end
    end
    if (reset) begin // @[Controller.scala 49:30]
      AddrLoopQueue_5_addr <= 32'h0; // @[Controller.scala 49:30]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h5 == LQHead) begin // @[Controller.scala 122:32]
        AddrLoopQueue_5_addr <= io_source_addr_setwork_bits; // @[Controller.scala 122:32]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        AddrLoopQueue_5_addr <= _GEN_413;
      end
    end
    if (reset) begin // @[Controller.scala 49:30]
      AddrLoopQueue_5_slotID <= 4'h0; // @[Controller.scala 49:30]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h5 == LQHead) begin // @[Controller.scala 123:34]
        AddrLoopQueue_5_slotID <= io_slotID_setwork; // @[Controller.scala 123:34]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        AddrLoopQueue_5_slotID <= _GEN_364;
      end
    end
    if (reset) begin // @[Controller.scala 49:30]
      AddrLoopQueue_6_addr <= 32'h0; // @[Controller.scala 49:30]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h6 == LQHead) begin // @[Controller.scala 122:32]
        AddrLoopQueue_6_addr <= io_source_addr_setwork_bits; // @[Controller.scala 122:32]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        AddrLoopQueue_6_addr <= _GEN_414;
      end
    end
    if (reset) begin // @[Controller.scala 49:30]
      AddrLoopQueue_6_slotID <= 4'h0; // @[Controller.scala 49:30]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h6 == LQHead) begin // @[Controller.scala 123:34]
        AddrLoopQueue_6_slotID <= io_slotID_setwork; // @[Controller.scala 123:34]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        AddrLoopQueue_6_slotID <= _GEN_365;
      end
    end
    if (reset) begin // @[Controller.scala 49:30]
      AddrLoopQueue_7_addr <= 32'h0; // @[Controller.scala 49:30]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h7 == LQHead) begin // @[Controller.scala 122:32]
        AddrLoopQueue_7_addr <= io_source_addr_setwork_bits; // @[Controller.scala 122:32]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        AddrLoopQueue_7_addr <= _GEN_415;
      end
    end
    if (reset) begin // @[Controller.scala 49:30]
      AddrLoopQueue_7_slotID <= 4'h0; // @[Controller.scala 49:30]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h7 == LQHead) begin // @[Controller.scala 123:34]
        AddrLoopQueue_7_slotID <= io_slotID_setwork; // @[Controller.scala 123:34]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        AddrLoopQueue_7_slotID <= _GEN_366;
      end
    end
    if (reset) begin // @[Controller.scala 49:30]
      AddrLoopQueue_8_addr <= 32'h0; // @[Controller.scala 49:30]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h8 == LQHead) begin // @[Controller.scala 122:32]
        AddrLoopQueue_8_addr <= io_source_addr_setwork_bits; // @[Controller.scala 122:32]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        AddrLoopQueue_8_addr <= _GEN_416;
      end
    end
    if (reset) begin // @[Controller.scala 49:30]
      AddrLoopQueue_8_slotID <= 4'h0; // @[Controller.scala 49:30]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h8 == LQHead) begin // @[Controller.scala 123:34]
        AddrLoopQueue_8_slotID <= io_slotID_setwork; // @[Controller.scala 123:34]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        AddrLoopQueue_8_slotID <= _GEN_367;
      end
    end
    if (reset) begin // @[Controller.scala 49:30]
      AddrLoopQueue_9_addr <= 32'h0; // @[Controller.scala 49:30]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h9 == LQHead) begin // @[Controller.scala 122:32]
        AddrLoopQueue_9_addr <= io_source_addr_setwork_bits; // @[Controller.scala 122:32]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        AddrLoopQueue_9_addr <= _GEN_417;
      end
    end
    if (reset) begin // @[Controller.scala 49:30]
      AddrLoopQueue_9_slotID <= 4'h0; // @[Controller.scala 49:30]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h9 == LQHead) begin // @[Controller.scala 123:34]
        AddrLoopQueue_9_slotID <= io_slotID_setwork; // @[Controller.scala 123:34]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        AddrLoopQueue_9_slotID <= _GEN_368;
      end
    end
    if (reset) begin // @[Controller.scala 49:30]
      AddrLoopQueue_10_addr <= 32'h0; // @[Controller.scala 49:30]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'ha == LQHead) begin // @[Controller.scala 122:32]
        AddrLoopQueue_10_addr <= io_source_addr_setwork_bits; // @[Controller.scala 122:32]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        AddrLoopQueue_10_addr <= _GEN_418;
      end
    end
    if (reset) begin // @[Controller.scala 49:30]
      AddrLoopQueue_10_slotID <= 4'h0; // @[Controller.scala 49:30]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'ha == LQHead) begin // @[Controller.scala 123:34]
        AddrLoopQueue_10_slotID <= io_slotID_setwork; // @[Controller.scala 123:34]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        AddrLoopQueue_10_slotID <= _GEN_369;
      end
    end
    if (reset) begin // @[Controller.scala 49:30]
      AddrLoopQueue_11_addr <= 32'h0; // @[Controller.scala 49:30]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'hb == LQHead) begin // @[Controller.scala 122:32]
        AddrLoopQueue_11_addr <= io_source_addr_setwork_bits; // @[Controller.scala 122:32]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        AddrLoopQueue_11_addr <= _GEN_419;
      end
    end
    if (reset) begin // @[Controller.scala 49:30]
      AddrLoopQueue_11_slotID <= 4'h0; // @[Controller.scala 49:30]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'hb == LQHead) begin // @[Controller.scala 123:34]
        AddrLoopQueue_11_slotID <= io_slotID_setwork; // @[Controller.scala 123:34]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        AddrLoopQueue_11_slotID <= _GEN_370;
      end
    end
    if (reset) begin // @[Controller.scala 49:30]
      AddrLoopQueue_12_addr <= 32'h0; // @[Controller.scala 49:30]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'hc == LQHead) begin // @[Controller.scala 122:32]
        AddrLoopQueue_12_addr <= io_source_addr_setwork_bits; // @[Controller.scala 122:32]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        AddrLoopQueue_12_addr <= _GEN_420;
      end
    end
    if (reset) begin // @[Controller.scala 49:30]
      AddrLoopQueue_12_slotID <= 4'h0; // @[Controller.scala 49:30]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'hc == LQHead) begin // @[Controller.scala 123:34]
        AddrLoopQueue_12_slotID <= io_slotID_setwork; // @[Controller.scala 123:34]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        AddrLoopQueue_12_slotID <= _GEN_371;
      end
    end
    if (reset) begin // @[Controller.scala 49:30]
      AddrLoopQueue_13_addr <= 32'h0; // @[Controller.scala 49:30]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'hd == LQHead) begin // @[Controller.scala 122:32]
        AddrLoopQueue_13_addr <= io_source_addr_setwork_bits; // @[Controller.scala 122:32]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        AddrLoopQueue_13_addr <= _GEN_421;
      end
    end
    if (reset) begin // @[Controller.scala 49:30]
      AddrLoopQueue_13_slotID <= 4'h0; // @[Controller.scala 49:30]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'hd == LQHead) begin // @[Controller.scala 123:34]
        AddrLoopQueue_13_slotID <= io_slotID_setwork; // @[Controller.scala 123:34]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        AddrLoopQueue_13_slotID <= _GEN_372;
      end
    end
    if (reset) begin // @[Controller.scala 49:30]
      AddrLoopQueue_14_addr <= 32'h0; // @[Controller.scala 49:30]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'he == LQHead) begin // @[Controller.scala 122:32]
        AddrLoopQueue_14_addr <= io_source_addr_setwork_bits; // @[Controller.scala 122:32]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        AddrLoopQueue_14_addr <= _GEN_422;
      end
    end
    if (reset) begin // @[Controller.scala 49:30]
      AddrLoopQueue_14_slotID <= 4'h0; // @[Controller.scala 49:30]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'he == LQHead) begin // @[Controller.scala 123:34]
        AddrLoopQueue_14_slotID <= io_slotID_setwork; // @[Controller.scala 123:34]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        AddrLoopQueue_14_slotID <= _GEN_373;
      end
    end
    if (reset) begin // @[Controller.scala 49:30]
      AddrLoopQueue_15_addr <= 32'h0; // @[Controller.scala 49:30]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'hf == LQHead) begin // @[Controller.scala 122:32]
        AddrLoopQueue_15_addr <= io_source_addr_setwork_bits; // @[Controller.scala 122:32]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        AddrLoopQueue_15_addr <= _GEN_423;
      end
    end
    if (reset) begin // @[Controller.scala 49:30]
      AddrLoopQueue_15_slotID <= 4'h0; // @[Controller.scala 49:30]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'hf == LQHead) begin // @[Controller.scala 123:34]
        AddrLoopQueue_15_slotID <= io_slotID_setwork; // @[Controller.scala 123:34]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        AddrLoopQueue_15_slotID <= _GEN_374;
      end
    end
    if (reset) begin // @[Controller.scala 50:23]
      LQHead <= 4'h0; // @[Controller.scala 50:23]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      LQHead <= _LQHead_T_1; // @[Controller.scala 126:12]
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        LQHead <= _GEN_391;
      end
    end
    if (reset) begin // @[Controller.scala 51:23]
      LQTail <= 4'h0; // @[Controller.scala 51:23]
    end else if (!(_T_7)) begin // @[Controller.scala 120:37]
      if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
        if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
          LQTail <= _LQTail_T_1; // @[Controller.scala 145:16]
        end
      end
    end
    if (reset) begin // @[Controller.scala 52:29]
      DestAddrBank_0 <= 32'h0; // @[Controller.scala 52:29]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h0 == io_slotID_setwork) begin // @[Controller.scala 125:37]
        DestAddrBank_0 <= io_dest_addr_setwork; // @[Controller.scala 125:37]
      end
    end
    if (reset) begin // @[Controller.scala 52:29]
      DestAddrBank_1 <= 32'h0; // @[Controller.scala 52:29]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h1 == io_slotID_setwork) begin // @[Controller.scala 125:37]
        DestAddrBank_1 <= io_dest_addr_setwork; // @[Controller.scala 125:37]
      end
    end
    if (reset) begin // @[Controller.scala 52:29]
      DestAddrBank_2 <= 32'h0; // @[Controller.scala 52:29]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h2 == io_slotID_setwork) begin // @[Controller.scala 125:37]
        DestAddrBank_2 <= io_dest_addr_setwork; // @[Controller.scala 125:37]
      end
    end
    if (reset) begin // @[Controller.scala 52:29]
      DestAddrBank_3 <= 32'h0; // @[Controller.scala 52:29]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h3 == io_slotID_setwork) begin // @[Controller.scala 125:37]
        DestAddrBank_3 <= io_dest_addr_setwork; // @[Controller.scala 125:37]
      end
    end
    if (reset) begin // @[Controller.scala 52:29]
      DestAddrBank_4 <= 32'h0; // @[Controller.scala 52:29]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h4 == io_slotID_setwork) begin // @[Controller.scala 125:37]
        DestAddrBank_4 <= io_dest_addr_setwork; // @[Controller.scala 125:37]
      end
    end
    if (reset) begin // @[Controller.scala 52:29]
      DestAddrBank_5 <= 32'h0; // @[Controller.scala 52:29]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h5 == io_slotID_setwork) begin // @[Controller.scala 125:37]
        DestAddrBank_5 <= io_dest_addr_setwork; // @[Controller.scala 125:37]
      end
    end
    if (reset) begin // @[Controller.scala 52:29]
      DestAddrBank_6 <= 32'h0; // @[Controller.scala 52:29]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h6 == io_slotID_setwork) begin // @[Controller.scala 125:37]
        DestAddrBank_6 <= io_dest_addr_setwork; // @[Controller.scala 125:37]
      end
    end
    if (reset) begin // @[Controller.scala 52:29]
      DestAddrBank_7 <= 32'h0; // @[Controller.scala 52:29]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h7 == io_slotID_setwork) begin // @[Controller.scala 125:37]
        DestAddrBank_7 <= io_dest_addr_setwork; // @[Controller.scala 125:37]
      end
    end
    if (reset) begin // @[Controller.scala 52:29]
      DestAddrBank_8 <= 32'h0; // @[Controller.scala 52:29]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h8 == io_slotID_setwork) begin // @[Controller.scala 125:37]
        DestAddrBank_8 <= io_dest_addr_setwork; // @[Controller.scala 125:37]
      end
    end
    if (reset) begin // @[Controller.scala 52:29]
      DestAddrBank_9 <= 32'h0; // @[Controller.scala 52:29]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h9 == io_slotID_setwork) begin // @[Controller.scala 125:37]
        DestAddrBank_9 <= io_dest_addr_setwork; // @[Controller.scala 125:37]
      end
    end
    if (reset) begin // @[Controller.scala 52:29]
      DestAddrBank_10 <= 32'h0; // @[Controller.scala 52:29]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'ha == io_slotID_setwork) begin // @[Controller.scala 125:37]
        DestAddrBank_10 <= io_dest_addr_setwork; // @[Controller.scala 125:37]
      end
    end
    if (reset) begin // @[Controller.scala 52:29]
      DestAddrBank_11 <= 32'h0; // @[Controller.scala 52:29]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'hb == io_slotID_setwork) begin // @[Controller.scala 125:37]
        DestAddrBank_11 <= io_dest_addr_setwork; // @[Controller.scala 125:37]
      end
    end
    if (reset) begin // @[Controller.scala 52:29]
      DestAddrBank_12 <= 32'h0; // @[Controller.scala 52:29]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'hc == io_slotID_setwork) begin // @[Controller.scala 125:37]
        DestAddrBank_12 <= io_dest_addr_setwork; // @[Controller.scala 125:37]
      end
    end
    if (reset) begin // @[Controller.scala 52:29]
      DestAddrBank_13 <= 32'h0; // @[Controller.scala 52:29]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'hd == io_slotID_setwork) begin // @[Controller.scala 125:37]
        DestAddrBank_13 <= io_dest_addr_setwork; // @[Controller.scala 125:37]
      end
    end
    if (reset) begin // @[Controller.scala 52:29]
      DestAddrBank_14 <= 32'h0; // @[Controller.scala 52:29]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'he == io_slotID_setwork) begin // @[Controller.scala 125:37]
        DestAddrBank_14 <= io_dest_addr_setwork; // @[Controller.scala 125:37]
      end
    end
    if (reset) begin // @[Controller.scala 52:29]
      DestAddrBank_15 <= 32'h0; // @[Controller.scala 52:29]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'hf == io_slotID_setwork) begin // @[Controller.scala 125:37]
        DestAddrBank_15 <= io_dest_addr_setwork; // @[Controller.scala 125:37]
      end
    end
    if (reset) begin // @[Controller.scala 53:28]
      LengthCount_0 <= 26'h0; // @[Controller.scala 53:28]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h0 == io_slotID_setwork) begin // @[Controller.scala 124:36]
        LengthCount_0 <= io_length_setwork; // @[Controller.scala 124:36]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        LengthCount_0 <= _GEN_375;
      end
    end
    if (reset) begin // @[Controller.scala 53:28]
      LengthCount_1 <= 26'h0; // @[Controller.scala 53:28]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h1 == io_slotID_setwork) begin // @[Controller.scala 124:36]
        LengthCount_1 <= io_length_setwork; // @[Controller.scala 124:36]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        LengthCount_1 <= _GEN_376;
      end
    end
    if (reset) begin // @[Controller.scala 53:28]
      LengthCount_2 <= 26'h0; // @[Controller.scala 53:28]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h2 == io_slotID_setwork) begin // @[Controller.scala 124:36]
        LengthCount_2 <= io_length_setwork; // @[Controller.scala 124:36]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        LengthCount_2 <= _GEN_377;
      end
    end
    if (reset) begin // @[Controller.scala 53:28]
      LengthCount_3 <= 26'h0; // @[Controller.scala 53:28]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h3 == io_slotID_setwork) begin // @[Controller.scala 124:36]
        LengthCount_3 <= io_length_setwork; // @[Controller.scala 124:36]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        LengthCount_3 <= _GEN_378;
      end
    end
    if (reset) begin // @[Controller.scala 53:28]
      LengthCount_4 <= 26'h0; // @[Controller.scala 53:28]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h4 == io_slotID_setwork) begin // @[Controller.scala 124:36]
        LengthCount_4 <= io_length_setwork; // @[Controller.scala 124:36]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        LengthCount_4 <= _GEN_379;
      end
    end
    if (reset) begin // @[Controller.scala 53:28]
      LengthCount_5 <= 26'h0; // @[Controller.scala 53:28]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h5 == io_slotID_setwork) begin // @[Controller.scala 124:36]
        LengthCount_5 <= io_length_setwork; // @[Controller.scala 124:36]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        LengthCount_5 <= _GEN_380;
      end
    end
    if (reset) begin // @[Controller.scala 53:28]
      LengthCount_6 <= 26'h0; // @[Controller.scala 53:28]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h6 == io_slotID_setwork) begin // @[Controller.scala 124:36]
        LengthCount_6 <= io_length_setwork; // @[Controller.scala 124:36]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        LengthCount_6 <= _GEN_381;
      end
    end
    if (reset) begin // @[Controller.scala 53:28]
      LengthCount_7 <= 26'h0; // @[Controller.scala 53:28]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h7 == io_slotID_setwork) begin // @[Controller.scala 124:36]
        LengthCount_7 <= io_length_setwork; // @[Controller.scala 124:36]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        LengthCount_7 <= _GEN_382;
      end
    end
    if (reset) begin // @[Controller.scala 53:28]
      LengthCount_8 <= 26'h0; // @[Controller.scala 53:28]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h8 == io_slotID_setwork) begin // @[Controller.scala 124:36]
        LengthCount_8 <= io_length_setwork; // @[Controller.scala 124:36]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        LengthCount_8 <= _GEN_383;
      end
    end
    if (reset) begin // @[Controller.scala 53:28]
      LengthCount_9 <= 26'h0; // @[Controller.scala 53:28]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'h9 == io_slotID_setwork) begin // @[Controller.scala 124:36]
        LengthCount_9 <= io_length_setwork; // @[Controller.scala 124:36]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        LengthCount_9 <= _GEN_384;
      end
    end
    if (reset) begin // @[Controller.scala 53:28]
      LengthCount_10 <= 26'h0; // @[Controller.scala 53:28]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'ha == io_slotID_setwork) begin // @[Controller.scala 124:36]
        LengthCount_10 <= io_length_setwork; // @[Controller.scala 124:36]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        LengthCount_10 <= _GEN_385;
      end
    end
    if (reset) begin // @[Controller.scala 53:28]
      LengthCount_11 <= 26'h0; // @[Controller.scala 53:28]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'hb == io_slotID_setwork) begin // @[Controller.scala 124:36]
        LengthCount_11 <= io_length_setwork; // @[Controller.scala 124:36]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        LengthCount_11 <= _GEN_386;
      end
    end
    if (reset) begin // @[Controller.scala 53:28]
      LengthCount_12 <= 26'h0; // @[Controller.scala 53:28]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'hc == io_slotID_setwork) begin // @[Controller.scala 124:36]
        LengthCount_12 <= io_length_setwork; // @[Controller.scala 124:36]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        LengthCount_12 <= _GEN_387;
      end
    end
    if (reset) begin // @[Controller.scala 53:28]
      LengthCount_13 <= 26'h0; // @[Controller.scala 53:28]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'hd == io_slotID_setwork) begin // @[Controller.scala 124:36]
        LengthCount_13 <= io_length_setwork; // @[Controller.scala 124:36]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        LengthCount_13 <= _GEN_388;
      end
    end
    if (reset) begin // @[Controller.scala 53:28]
      LengthCount_14 <= 26'h0; // @[Controller.scala 53:28]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'he == io_slotID_setwork) begin // @[Controller.scala 124:36]
        LengthCount_14 <= io_length_setwork; // @[Controller.scala 124:36]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        LengthCount_14 <= _GEN_389;
      end
    end
    if (reset) begin // @[Controller.scala 53:28]
      LengthCount_15 <= 26'h0; // @[Controller.scala 53:28]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      if (4'hf == io_slotID_setwork) begin // @[Controller.scala 124:36]
        LengthCount_15 <= io_length_setwork; // @[Controller.scala 124:36]
      end
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
        LengthCount_15 <= _GEN_390;
      end
    end
    if (reset) begin // @[Controller.scala 54:27]
      SourceAddr <= 32'h0; // @[Controller.scala 54:27]
    end else if (!(_T_7)) begin // @[Controller.scala 120:37]
      if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
        if (SourceIntReg & ~SourceAddrValid) begin // @[Controller.scala 129:46]
          SourceAddr <= _GEN_230; // @[Controller.scala 130:20]
        end
      end
    end
    if (reset) begin // @[Controller.scala 55:32]
      SourceAddrValid <= 1'h0; // @[Controller.scala 55:32]
    end else if (_T_7) begin // @[Controller.scala 120:37]
      SourceAddrValid <= _GEN_134;
    end else if (_GEN_230 != 32'h0) begin // @[Controller.scala 128:46]
      SourceAddrValid <= _GEN_425;
    end else begin
      SourceAddrValid <= _GEN_134;
    end
    if (reset) begin // @[Controller.scala 56:35]
      RecentKeySetSlotID <= 4'h0; // @[Controller.scala 56:35]
    end else if (_T) begin // @[Controller.scala 86:26]
      RecentKeySetSlotID <= io_slotID_key; // @[Controller.scala 88:24]
    end
    if (reset) begin // @[Controller.scala 60:28]
      InputSlotID <= 4'h0; // @[Controller.scala 60:28]
    end else if (_T_16) begin // @[Controller.scala 171:28]
      InputSlotID <= InputSlotIDDeqWire_bits; // @[Controller.scala 172:17]
    end
    if (reset) begin // @[Controller.scala 61:27]
      InputCount <= 2'h0; // @[Controller.scala 61:27]
    end else if (~CanFeed) begin // @[Controller.scala 157:18]
      if (_T_15) begin // @[Controller.scala 159:33]
        if (InputCount == 2'h3) begin // @[Controller.scala 161:32]
          InputCount <= 2'h0; // @[Controller.scala 162:20]
        end else begin
          InputCount <= _InputCount_T_1; // @[Controller.scala 165:20]
        end
      end
    end
    if (reset) begin // @[Controller.scala 64:24]
      CanFeed <= 1'h0; // @[Controller.scala 64:24]
    end else if (~CanFeed) begin // @[Controller.scala 157:18]
      if (_T_15) begin // @[Controller.scala 159:33]
        CanFeed <= _GEN_624;
      end else begin
        CanFeed <= _GEN_618;
      end
    end else begin
      CanFeed <= _GEN_618;
    end
    if (reset) begin // @[Controller.scala 65:26]
      TextInReg_0 <= 32'h0; // @[Controller.scala 65:26]
    end else if (~CanFeed) begin // @[Controller.scala 157:18]
      if (_T_15) begin // @[Controller.scala 159:33]
        if (2'h0 == InputCount) begin // @[Controller.scala 160:29]
          TextInReg_0 <= _TextInReg_InputCount; // @[Controller.scala 160:29]
        end
      end
    end
    if (reset) begin // @[Controller.scala 65:26]
      TextInReg_1 <= 32'h0; // @[Controller.scala 65:26]
    end else if (~CanFeed) begin // @[Controller.scala 157:18]
      if (_T_15) begin // @[Controller.scala 159:33]
        if (2'h1 == InputCount) begin // @[Controller.scala 160:29]
          TextInReg_1 <= _TextInReg_InputCount; // @[Controller.scala 160:29]
        end
      end
    end
    if (reset) begin // @[Controller.scala 65:26]
      TextInReg_2 <= 32'h0; // @[Controller.scala 65:26]
    end else if (~CanFeed) begin // @[Controller.scala 157:18]
      if (_T_15) begin // @[Controller.scala 159:33]
        if (2'h2 == InputCount) begin // @[Controller.scala 160:29]
          TextInReg_2 <= _TextInReg_InputCount; // @[Controller.scala 160:29]
        end
      end
    end
    if (reset) begin // @[Controller.scala 65:26]
      TextInReg_3 <= 32'h0; // @[Controller.scala 65:26]
    end else if (~CanFeed) begin // @[Controller.scala 157:18]
      if (_T_15) begin // @[Controller.scala 159:33]
        if (2'h3 == InputCount) begin // @[Controller.scala 160:29]
          TextInReg_3 <= _TextInReg_InputCount; // @[Controller.scala 160:29]
        end
      end
    end
    if (reset) begin // @[Controller.scala 69:28]
      OutputCount <= 2'h0; // @[Controller.scala 69:28]
    end else if (~CanDrag) begin // @[Controller.scala 182:18]
      if (AESEngine_io_text_out_valid & OutputEnqWire_ready) begin // @[Controller.scala 183:62]
        if (OutputCount == 2'h3) begin // @[Controller.scala 192:33]
          OutputCount <= 2'h0; // @[Controller.scala 193:21]
        end else begin
          OutputCount <= _OutputCount_T_1; // @[Controller.scala 196:21]
        end
      end
    end
    if (reset) begin // @[Controller.scala 70:24]
      CanDrag <= 1'h0; // @[Controller.scala 70:24]
    end else if (~CanDrag) begin // @[Controller.scala 182:18]
      if (AESEngine_io_text_out_valid & OutputEnqWire_ready) begin // @[Controller.scala 183:62]
        CanDrag <= _GEN_708;
      end else begin
        CanDrag <= _GEN_640;
      end
    end else begin
      CanDrag <= _GEN_640;
    end
    if (reset) begin // @[Controller.scala 75:25]
      DestAddr <= 32'h0; // @[Controller.scala 75:25]
    end else if (DestIntReg & OutputSlotIDDeqWire_valid) begin // @[Controller.scala 210:49]
      if (~DestAddrValid) begin // @[Controller.scala 211:26]
        if (4'hf == OutputSlotIDDeqWire_bits) begin // @[Controller.scala 212:16]
          DestAddr <= DestAddrBank_15; // @[Controller.scala 212:16]
        end else begin
          DestAddr <= _GEN_737;
        end
      end
    end
    if (reset) begin // @[Controller.scala 76:30]
      DestAddrValid <= 1'h0; // @[Controller.scala 76:30]
    end else if (_T_27) begin // @[Controller.scala 216:31]
      DestAddrValid <= 1'h0; // @[Controller.scala 217:19]
    end else if (DestIntReg & OutputSlotIDDeqWire_valid) begin // @[Controller.scala 210:49]
      DestAddrValid <= _GEN_741;
    end
    if (reset) begin // @[Controller.scala 78:31]
      InputFireCount <= 2'h0; // @[Controller.scala 78:31]
    end else if (_T_4) begin // @[Controller.scala 109:25]
      InputFireCount <= _InputFireCount_T_1; // @[Controller.scala 110:20]
    end
    if (reset) begin // @[Controller.scala 79:32]
      OutputFireCount <= 2'h0; // @[Controller.scala 79:32]
    end else if (_T_23) begin // @[Controller.scala 204:26]
      OutputFireCount <= _OutputFireCount_T_1; // @[Controller.scala 205:21]
    end
    if (reset) begin // @[Controller.scala 80:29]
      SourceIntReg <= 1'h0; // @[Controller.scala 80:29]
    end else if (_T_6) begin // @[Controller.scala 115:33]
      SourceIntReg <= 1'h0; // @[Controller.scala 116:18]
    end else begin
      SourceIntReg <= _GEN_132;
    end
    if (reset) begin // @[Controller.scala 81:27]
      DestIntReg <= 1'h0; // @[Controller.scala 81:27]
    end else if (_T_27) begin // @[Controller.scala 216:31]
      DestIntReg <= 1'h0; // @[Controller.scala 218:16]
    end else begin
      DestIntReg <= _GEN_722;
    end
    REG <= AESEngine_io_user_key_ready; // @[Controller.scala 44:42]
    io_user_key_ready_REG <= AESEngine_io_user_key_ready; // @[Controller.scala 44:42]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  LockBank_0_key_lock = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  LockBank_0_work_lock = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  LockBank_1_key_lock = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  LockBank_1_work_lock = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  LockBank_2_key_lock = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  LockBank_2_work_lock = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  LockBank_3_key_lock = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  LockBank_3_work_lock = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  LockBank_4_key_lock = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  LockBank_4_work_lock = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  LockBank_5_key_lock = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  LockBank_5_work_lock = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  LockBank_6_key_lock = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  LockBank_6_work_lock = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  LockBank_7_key_lock = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  LockBank_7_work_lock = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  LockBank_8_key_lock = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  LockBank_8_work_lock = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  LockBank_9_key_lock = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  LockBank_9_work_lock = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  LockBank_10_key_lock = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  LockBank_10_work_lock = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  LockBank_11_key_lock = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  LockBank_11_work_lock = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  LockBank_12_key_lock = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  LockBank_12_work_lock = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  LockBank_13_key_lock = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  LockBank_13_work_lock = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  LockBank_14_key_lock = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  LockBank_14_work_lock = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  LockBank_15_key_lock = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  LockBank_15_work_lock = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  AddrLoopQueue_0_addr = _RAND_32[31:0];
  _RAND_33 = {1{`RANDOM}};
  AddrLoopQueue_0_slotID = _RAND_33[3:0];
  _RAND_34 = {1{`RANDOM}};
  AddrLoopQueue_1_addr = _RAND_34[31:0];
  _RAND_35 = {1{`RANDOM}};
  AddrLoopQueue_1_slotID = _RAND_35[3:0];
  _RAND_36 = {1{`RANDOM}};
  AddrLoopQueue_2_addr = _RAND_36[31:0];
  _RAND_37 = {1{`RANDOM}};
  AddrLoopQueue_2_slotID = _RAND_37[3:0];
  _RAND_38 = {1{`RANDOM}};
  AddrLoopQueue_3_addr = _RAND_38[31:0];
  _RAND_39 = {1{`RANDOM}};
  AddrLoopQueue_3_slotID = _RAND_39[3:0];
  _RAND_40 = {1{`RANDOM}};
  AddrLoopQueue_4_addr = _RAND_40[31:0];
  _RAND_41 = {1{`RANDOM}};
  AddrLoopQueue_4_slotID = _RAND_41[3:0];
  _RAND_42 = {1{`RANDOM}};
  AddrLoopQueue_5_addr = _RAND_42[31:0];
  _RAND_43 = {1{`RANDOM}};
  AddrLoopQueue_5_slotID = _RAND_43[3:0];
  _RAND_44 = {1{`RANDOM}};
  AddrLoopQueue_6_addr = _RAND_44[31:0];
  _RAND_45 = {1{`RANDOM}};
  AddrLoopQueue_6_slotID = _RAND_45[3:0];
  _RAND_46 = {1{`RANDOM}};
  AddrLoopQueue_7_addr = _RAND_46[31:0];
  _RAND_47 = {1{`RANDOM}};
  AddrLoopQueue_7_slotID = _RAND_47[3:0];
  _RAND_48 = {1{`RANDOM}};
  AddrLoopQueue_8_addr = _RAND_48[31:0];
  _RAND_49 = {1{`RANDOM}};
  AddrLoopQueue_8_slotID = _RAND_49[3:0];
  _RAND_50 = {1{`RANDOM}};
  AddrLoopQueue_9_addr = _RAND_50[31:0];
  _RAND_51 = {1{`RANDOM}};
  AddrLoopQueue_9_slotID = _RAND_51[3:0];
  _RAND_52 = {1{`RANDOM}};
  AddrLoopQueue_10_addr = _RAND_52[31:0];
  _RAND_53 = {1{`RANDOM}};
  AddrLoopQueue_10_slotID = _RAND_53[3:0];
  _RAND_54 = {1{`RANDOM}};
  AddrLoopQueue_11_addr = _RAND_54[31:0];
  _RAND_55 = {1{`RANDOM}};
  AddrLoopQueue_11_slotID = _RAND_55[3:0];
  _RAND_56 = {1{`RANDOM}};
  AddrLoopQueue_12_addr = _RAND_56[31:0];
  _RAND_57 = {1{`RANDOM}};
  AddrLoopQueue_12_slotID = _RAND_57[3:0];
  _RAND_58 = {1{`RANDOM}};
  AddrLoopQueue_13_addr = _RAND_58[31:0];
  _RAND_59 = {1{`RANDOM}};
  AddrLoopQueue_13_slotID = _RAND_59[3:0];
  _RAND_60 = {1{`RANDOM}};
  AddrLoopQueue_14_addr = _RAND_60[31:0];
  _RAND_61 = {1{`RANDOM}};
  AddrLoopQueue_14_slotID = _RAND_61[3:0];
  _RAND_62 = {1{`RANDOM}};
  AddrLoopQueue_15_addr = _RAND_62[31:0];
  _RAND_63 = {1{`RANDOM}};
  AddrLoopQueue_15_slotID = _RAND_63[3:0];
  _RAND_64 = {1{`RANDOM}};
  LQHead = _RAND_64[3:0];
  _RAND_65 = {1{`RANDOM}};
  LQTail = _RAND_65[3:0];
  _RAND_66 = {1{`RANDOM}};
  DestAddrBank_0 = _RAND_66[31:0];
  _RAND_67 = {1{`RANDOM}};
  DestAddrBank_1 = _RAND_67[31:0];
  _RAND_68 = {1{`RANDOM}};
  DestAddrBank_2 = _RAND_68[31:0];
  _RAND_69 = {1{`RANDOM}};
  DestAddrBank_3 = _RAND_69[31:0];
  _RAND_70 = {1{`RANDOM}};
  DestAddrBank_4 = _RAND_70[31:0];
  _RAND_71 = {1{`RANDOM}};
  DestAddrBank_5 = _RAND_71[31:0];
  _RAND_72 = {1{`RANDOM}};
  DestAddrBank_6 = _RAND_72[31:0];
  _RAND_73 = {1{`RANDOM}};
  DestAddrBank_7 = _RAND_73[31:0];
  _RAND_74 = {1{`RANDOM}};
  DestAddrBank_8 = _RAND_74[31:0];
  _RAND_75 = {1{`RANDOM}};
  DestAddrBank_9 = _RAND_75[31:0];
  _RAND_76 = {1{`RANDOM}};
  DestAddrBank_10 = _RAND_76[31:0];
  _RAND_77 = {1{`RANDOM}};
  DestAddrBank_11 = _RAND_77[31:0];
  _RAND_78 = {1{`RANDOM}};
  DestAddrBank_12 = _RAND_78[31:0];
  _RAND_79 = {1{`RANDOM}};
  DestAddrBank_13 = _RAND_79[31:0];
  _RAND_80 = {1{`RANDOM}};
  DestAddrBank_14 = _RAND_80[31:0];
  _RAND_81 = {1{`RANDOM}};
  DestAddrBank_15 = _RAND_81[31:0];
  _RAND_82 = {1{`RANDOM}};
  LengthCount_0 = _RAND_82[25:0];
  _RAND_83 = {1{`RANDOM}};
  LengthCount_1 = _RAND_83[25:0];
  _RAND_84 = {1{`RANDOM}};
  LengthCount_2 = _RAND_84[25:0];
  _RAND_85 = {1{`RANDOM}};
  LengthCount_3 = _RAND_85[25:0];
  _RAND_86 = {1{`RANDOM}};
  LengthCount_4 = _RAND_86[25:0];
  _RAND_87 = {1{`RANDOM}};
  LengthCount_5 = _RAND_87[25:0];
  _RAND_88 = {1{`RANDOM}};
  LengthCount_6 = _RAND_88[25:0];
  _RAND_89 = {1{`RANDOM}};
  LengthCount_7 = _RAND_89[25:0];
  _RAND_90 = {1{`RANDOM}};
  LengthCount_8 = _RAND_90[25:0];
  _RAND_91 = {1{`RANDOM}};
  LengthCount_9 = _RAND_91[25:0];
  _RAND_92 = {1{`RANDOM}};
  LengthCount_10 = _RAND_92[25:0];
  _RAND_93 = {1{`RANDOM}};
  LengthCount_11 = _RAND_93[25:0];
  _RAND_94 = {1{`RANDOM}};
  LengthCount_12 = _RAND_94[25:0];
  _RAND_95 = {1{`RANDOM}};
  LengthCount_13 = _RAND_95[25:0];
  _RAND_96 = {1{`RANDOM}};
  LengthCount_14 = _RAND_96[25:0];
  _RAND_97 = {1{`RANDOM}};
  LengthCount_15 = _RAND_97[25:0];
  _RAND_98 = {1{`RANDOM}};
  SourceAddr = _RAND_98[31:0];
  _RAND_99 = {1{`RANDOM}};
  SourceAddrValid = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  RecentKeySetSlotID = _RAND_100[3:0];
  _RAND_101 = {1{`RANDOM}};
  InputSlotID = _RAND_101[3:0];
  _RAND_102 = {1{`RANDOM}};
  InputCount = _RAND_102[1:0];
  _RAND_103 = {1{`RANDOM}};
  CanFeed = _RAND_103[0:0];
  _RAND_104 = {1{`RANDOM}};
  TextInReg_0 = _RAND_104[31:0];
  _RAND_105 = {1{`RANDOM}};
  TextInReg_1 = _RAND_105[31:0];
  _RAND_106 = {1{`RANDOM}};
  TextInReg_2 = _RAND_106[31:0];
  _RAND_107 = {1{`RANDOM}};
  TextInReg_3 = _RAND_107[31:0];
  _RAND_108 = {1{`RANDOM}};
  OutputCount = _RAND_108[1:0];
  _RAND_109 = {1{`RANDOM}};
  CanDrag = _RAND_109[0:0];
  _RAND_110 = {1{`RANDOM}};
  DestAddr = _RAND_110[31:0];
  _RAND_111 = {1{`RANDOM}};
  DestAddrValid = _RAND_111[0:0];
  _RAND_112 = {1{`RANDOM}};
  InputFireCount = _RAND_112[1:0];
  _RAND_113 = {1{`RANDOM}};
  OutputFireCount = _RAND_113[1:0];
  _RAND_114 = {1{`RANDOM}};
  SourceIntReg = _RAND_114[0:0];
  _RAND_115 = {1{`RANDOM}};
  DestIntReg = _RAND_115[0:0];
  _RAND_116 = {1{`RANDOM}};
  REG = _RAND_116[0:0];
  _RAND_117 = {1{`RANDOM}};
  io_user_key_ready_REG = _RAND_117[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SkidBuffer(
  input        clock,
  input        reset,
  output       enq_ready,
  input        enq_valid,
  input  [5:0] enq_bits_addr,
  input        deq_ready,
  output       deq_valid,
  output [5:0] deq_bits_addr
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg  validReg; // @[SkidBuffer.scala 19:31]
  reg [5:0] dataReg_addr; // @[SkidBuffer.scala 20:30]
  wire  _T = enq_ready & enq_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_0 = deq_ready ? 1'h0 : validReg; // @[SkidBuffer.scala 27:24 28:13 19:31]
  wire  _GEN_1 = _T & (deq_valid & ~deq_ready) | _GEN_0; // @[SkidBuffer.scala 25:46 26:13]
  wire [5:0] _GEN_7 = enq_valid ? enq_bits_addr : 6'h0; // @[SkidBuffer.scala 39:24 40:13 42:13]
  assign enq_ready = ~validReg; // @[SkidBuffer.scala 22:16]
  assign deq_valid = ~reset & (enq_valid | validReg); // @[SkidBuffer.scala 23:30]
  assign deq_bits_addr = validReg ? dataReg_addr : _GEN_7; // @[SkidBuffer.scala 37:17 38:13]
  always @(posedge clock) begin
    if (reset) begin // @[SkidBuffer.scala 19:31]
      validReg <= 1'h0; // @[SkidBuffer.scala 19:31]
    end else begin
      validReg <= _GEN_1;
    end
    if (reset) begin // @[SkidBuffer.scala 20:30]
      dataReg_addr <= 6'h0; // @[SkidBuffer.scala 20:30]
    end else if (~deq_valid | deq_ready) begin // @[SkidBuffer.scala 31:32]
      dataReg_addr <= 6'h0; // @[SkidBuffer.scala 32:12]
    end else if (_T) begin // @[SkidBuffer.scala 33:23]
      dataReg_addr <= enq_bits_addr; // @[SkidBuffer.scala 34:12]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  validReg = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  dataReg_addr = _RAND_1[5:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SkidBuffer_1(
  input         clock,
  input         reset,
  output        enq_ready,
  input         enq_valid,
  input  [31:0] enq_bits_data,
  input  [3:0]  enq_bits_strb,
  input         deq_ready,
  output        deq_valid,
  output [31:0] deq_bits_data,
  output [3:0]  deq_bits_strb
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg  validReg; // @[SkidBuffer.scala 19:31]
  reg [31:0] dataReg_data; // @[SkidBuffer.scala 20:30]
  reg [3:0] dataReg_strb; // @[SkidBuffer.scala 20:30]
  wire  _T = enq_ready & enq_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_0 = deq_ready ? 1'h0 : validReg; // @[SkidBuffer.scala 27:24 28:13 19:31]
  wire  _GEN_1 = _T & (deq_valid & ~deq_ready) | _GEN_0; // @[SkidBuffer.scala 25:46 26:13]
  wire [3:0] _GEN_6 = enq_valid ? enq_bits_strb : 4'h0; // @[SkidBuffer.scala 39:24 40:13 42:13]
  wire [31:0] _GEN_7 = enq_valid ? enq_bits_data : 32'h0; // @[SkidBuffer.scala 39:24 40:13 42:13]
  assign enq_ready = ~validReg; // @[SkidBuffer.scala 22:16]
  assign deq_valid = ~reset & (enq_valid | validReg); // @[SkidBuffer.scala 23:30]
  assign deq_bits_data = validReg ? dataReg_data : _GEN_7; // @[SkidBuffer.scala 37:17 38:13]
  assign deq_bits_strb = validReg ? dataReg_strb : _GEN_6; // @[SkidBuffer.scala 37:17 38:13]
  always @(posedge clock) begin
    if (reset) begin // @[SkidBuffer.scala 19:31]
      validReg <= 1'h0; // @[SkidBuffer.scala 19:31]
    end else begin
      validReg <= _GEN_1;
    end
    if (reset) begin // @[SkidBuffer.scala 20:30]
      dataReg_data <= 32'h0; // @[SkidBuffer.scala 20:30]
    end else if (~deq_valid | deq_ready) begin // @[SkidBuffer.scala 31:32]
      dataReg_data <= 32'h0; // @[SkidBuffer.scala 32:12]
    end else if (_T) begin // @[SkidBuffer.scala 33:23]
      dataReg_data <= enq_bits_data; // @[SkidBuffer.scala 34:12]
    end
    if (reset) begin // @[SkidBuffer.scala 20:30]
      dataReg_strb <= 4'h0; // @[SkidBuffer.scala 20:30]
    end else if (~deq_valid | deq_ready) begin // @[SkidBuffer.scala 31:32]
      dataReg_strb <= 4'h0; // @[SkidBuffer.scala 32:12]
    end else if (_T) begin // @[SkidBuffer.scala 33:23]
      dataReg_strb <= enq_bits_strb; // @[SkidBuffer.scala 34:12]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  validReg = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  dataReg_data = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  dataReg_strb = _RAND_2[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SkidBuffer_3(
  input         clock,
  input         reset,
  output        enq_ready,
  input         enq_valid,
  input  [31:0] enq_bits_data,
  input         deq_ready,
  output        deq_valid,
  output [31:0] deq_bits_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg  validReg; // @[SkidBuffer.scala 19:31]
  reg [31:0] dataReg_data; // @[SkidBuffer.scala 20:30]
  wire  _T = enq_ready & enq_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_0 = deq_ready ? 1'h0 : validReg; // @[SkidBuffer.scala 27:24 28:13 19:31]
  wire  _GEN_1 = _T & (deq_valid & ~deq_ready) | _GEN_0; // @[SkidBuffer.scala 25:46 26:13]
  wire [31:0] _GEN_22 = enq_valid ? enq_bits_data : 32'h0; // @[SkidBuffer.scala 39:24 40:13 42:13]
  assign enq_ready = ~validReg; // @[SkidBuffer.scala 22:16]
  assign deq_valid = ~reset & (enq_valid | validReg); // @[SkidBuffer.scala 23:30]
  assign deq_bits_data = validReg ? dataReg_data : _GEN_22; // @[SkidBuffer.scala 37:17 38:13]
  always @(posedge clock) begin
    if (reset) begin // @[SkidBuffer.scala 19:31]
      validReg <= 1'h0; // @[SkidBuffer.scala 19:31]
    end else begin
      validReg <= _GEN_1;
    end
    if (reset) begin // @[SkidBuffer.scala 20:30]
      dataReg_data <= 32'h0; // @[SkidBuffer.scala 20:30]
    end else if (~deq_valid | deq_ready) begin // @[SkidBuffer.scala 31:32]
      dataReg_data <= 32'h0; // @[SkidBuffer.scala 32:12]
    end else if (_T) begin // @[SkidBuffer.scala 33:23]
      dataReg_data <= enq_bits_data; // @[SkidBuffer.scala 34:12]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  validReg = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  dataReg_data = _RAND_1[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module ControllerAXI(
  input         aclock,
  input         areset,
  input         S00_AXI_AWVALID,
  output        S00_AXI_AWREADY,
  input  [5:0]  S00_AXI_AWADDR,
  input  [2:0]  S00_AXI_AWPROT,
  input         S00_AXI_WVALID,
  output        S00_AXI_WREADY,
  input  [31:0] S00_AXI_WDATA,
  input  [3:0]  S00_AXI_WSTRB,
  output        S00_AXI_BVALID,
  input         S00_AXI_BREADY,
  output [1:0]  S00_AXI_BRESP,
  input         S00_AXI_ARVALID,
  output        S00_AXI_ARREADY,
  input  [5:0]  S00_AXI_ARADDR,
  input  [2:0]  S00_AXI_ARPROT,
  output        S00_AXI_RVALID,
  input         S00_AXI_RREADY,
  output [31:0] S00_AXI_RDATA,
  output [1:0]  S00_AXI_RRESP,
  output        M00_AXI_AWVALID,
  input         M00_AXI_AWREADY,
  output [31:0] M00_AXI_AWADDR,
  output [2:0]  M00_AXI_AWPROT,
  output        M00_AXI_WVALID,
  input         M00_AXI_WREADY,
  output [31:0] M00_AXI_WDATA,
  output [3:0]  M00_AXI_WSTRB,
  input         M00_AXI_BVALID,
  output        M00_AXI_BREADY,
  input  [1:0]  M00_AXI_BRESP,
  output        M00_AXI_ARVALID,
  input         M00_AXI_ARREADY,
  output [31:0] M00_AXI_ARADDR,
  output [2:0]  M00_AXI_ARPROT,
  input         M00_AXI_RVALID,
  output        M00_AXI_RREADY,
  input  [31:0] M00_AXI_RDATA,
  input  [1:0]  M00_AXI_RRESP,
  input         S00_AXIS_TVALID,
  output        S00_AXIS_TREADY,
  input  [31:0] S00_AXIS_TDATA,
  input  [3:0]  S00_AXIS_TSTRB,
  input  [3:0]  S00_AXIS_TKEEP,
  input         S00_AXIS_TLAST,
  input  [7:0]  S00_AXIS_TID,
  input  [3:0]  S00_AXIS_TDEST,
  input  [7:0]  S00_AXIS_TUSER,
  output        M00_AXIS_TVALID,
  input         M00_AXIS_TREADY,
  output [31:0] M00_AXIS_TDATA,
  output [3:0]  M00_AXIS_TSTRB,
  output [3:0]  M00_AXIS_TKEEP,
  output        M00_AXIS_TLAST,
  output [7:0]  M00_AXIS_TID,
  output [3:0]  M00_AXIS_TDEST,
  output [7:0]  M00_AXIS_TUSER
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
`endif // RANDOMIZE_REG_INIT
  wire  Ctl_clock; // @[ControllerAXI.scala 95:21]
  wire  Ctl_reset; // @[ControllerAXI.scala 95:21]
  wire  Ctl_io_fifo_in_ready; // @[ControllerAXI.scala 95:21]
  wire  Ctl_io_fifo_in_valid; // @[ControllerAXI.scala 95:21]
  wire [31:0] Ctl_io_fifo_in_bits; // @[ControllerAXI.scala 95:21]
  wire  Ctl_io_source_addr_setwork_ready; // @[ControllerAXI.scala 95:21]
  wire  Ctl_io_source_addr_setwork_valid; // @[ControllerAXI.scala 95:21]
  wire [31:0] Ctl_io_source_addr_setwork_bits; // @[ControllerAXI.scala 95:21]
  wire [31:0] Ctl_io_dest_addr_setwork; // @[ControllerAXI.scala 95:21]
  wire [25:0] Ctl_io_length_setwork; // @[ControllerAXI.scala 95:21]
  wire [3:0] Ctl_io_slotID_setwork; // @[ControllerAXI.scala 95:21]
  wire  Ctl_io_user_key_ready; // @[ControllerAXI.scala 95:21]
  wire  Ctl_io_user_key_valid; // @[ControllerAXI.scala 95:21]
  wire [7:0] Ctl_io_user_key_bits_0; // @[ControllerAXI.scala 95:21]
  wire [7:0] Ctl_io_user_key_bits_1; // @[ControllerAXI.scala 95:21]
  wire [7:0] Ctl_io_user_key_bits_2; // @[ControllerAXI.scala 95:21]
  wire [7:0] Ctl_io_user_key_bits_3; // @[ControllerAXI.scala 95:21]
  wire [7:0] Ctl_io_user_key_bits_4; // @[ControllerAXI.scala 95:21]
  wire [7:0] Ctl_io_user_key_bits_5; // @[ControllerAXI.scala 95:21]
  wire [7:0] Ctl_io_user_key_bits_6; // @[ControllerAXI.scala 95:21]
  wire [7:0] Ctl_io_user_key_bits_7; // @[ControllerAXI.scala 95:21]
  wire [7:0] Ctl_io_user_key_bits_8; // @[ControllerAXI.scala 95:21]
  wire [7:0] Ctl_io_user_key_bits_9; // @[ControllerAXI.scala 95:21]
  wire [7:0] Ctl_io_user_key_bits_10; // @[ControllerAXI.scala 95:21]
  wire [7:0] Ctl_io_user_key_bits_11; // @[ControllerAXI.scala 95:21]
  wire [7:0] Ctl_io_user_key_bits_12; // @[ControllerAXI.scala 95:21]
  wire [7:0] Ctl_io_user_key_bits_13; // @[ControllerAXI.scala 95:21]
  wire [7:0] Ctl_io_user_key_bits_14; // @[ControllerAXI.scala 95:21]
  wire [7:0] Ctl_io_user_key_bits_15; // @[ControllerAXI.scala 95:21]
  wire [3:0] Ctl_io_slotID_key; // @[ControllerAXI.scala 95:21]
  wire  Ctl_io_destroy_ready; // @[ControllerAXI.scala 95:21]
  wire  Ctl_io_destroy_valid; // @[ControllerAXI.scala 95:21]
  wire [3:0] Ctl_io_destroy_bits; // @[ControllerAXI.scala 95:21]
  wire  Ctl_io_source_addr_dma_ready; // @[ControllerAXI.scala 95:21]
  wire  Ctl_io_source_addr_dma_valid; // @[ControllerAXI.scala 95:21]
  wire [31:0] Ctl_io_source_addr_dma_bits; // @[ControllerAXI.scala 95:21]
  wire  Ctl_io_dest_addr_dma_ready; // @[ControllerAXI.scala 95:21]
  wire  Ctl_io_dest_addr_dma_valid; // @[ControllerAXI.scala 95:21]
  wire [31:0] Ctl_io_dest_addr_dma_bits; // @[ControllerAXI.scala 95:21]
  wire  Ctl_io_fifo_out_ready; // @[ControllerAXI.scala 95:21]
  wire  Ctl_io_fifo_out_valid; // @[ControllerAXI.scala 95:21]
  wire [31:0] Ctl_io_fifo_out_bits; // @[ControllerAXI.scala 95:21]
  wire  Ctl_io_source_interrupt; // @[ControllerAXI.scala 95:21]
  wire  Ctl_io_dest_interrupt; // @[ControllerAXI.scala 95:21]
  wire  awSkidBuffer_clock; // @[AXI4LiteNode.scala 279:34]
  wire  awSkidBuffer_reset; // @[AXI4LiteNode.scala 279:34]
  wire  awSkidBuffer_enq_ready; // @[AXI4LiteNode.scala 279:34]
  wire  awSkidBuffer_enq_valid; // @[AXI4LiteNode.scala 279:34]
  wire [5:0] awSkidBuffer_enq_bits_addr; // @[AXI4LiteNode.scala 279:34]
  wire  awSkidBuffer_deq_ready; // @[AXI4LiteNode.scala 279:34]
  wire  awSkidBuffer_deq_valid; // @[AXI4LiteNode.scala 279:34]
  wire [5:0] awSkidBuffer_deq_bits_addr; // @[AXI4LiteNode.scala 279:34]
  wire  wSkidBuffer_clock; // @[AXI4LiteNode.scala 280:33]
  wire  wSkidBuffer_reset; // @[AXI4LiteNode.scala 280:33]
  wire  wSkidBuffer_enq_ready; // @[AXI4LiteNode.scala 280:33]
  wire  wSkidBuffer_enq_valid; // @[AXI4LiteNode.scala 280:33]
  wire [31:0] wSkidBuffer_enq_bits_data; // @[AXI4LiteNode.scala 280:33]
  wire [3:0] wSkidBuffer_enq_bits_strb; // @[AXI4LiteNode.scala 280:33]
  wire  wSkidBuffer_deq_ready; // @[AXI4LiteNode.scala 280:33]
  wire  wSkidBuffer_deq_valid; // @[AXI4LiteNode.scala 280:33]
  wire [31:0] wSkidBuffer_deq_bits_data; // @[AXI4LiteNode.scala 280:33]
  wire [3:0] wSkidBuffer_deq_bits_strb; // @[AXI4LiteNode.scala 280:33]
  wire  arSkidBuffer_clock; // @[AXI4LiteNode.scala 281:34]
  wire  arSkidBuffer_reset; // @[AXI4LiteNode.scala 281:34]
  wire  arSkidBuffer_enq_ready; // @[AXI4LiteNode.scala 281:34]
  wire  arSkidBuffer_enq_valid; // @[AXI4LiteNode.scala 281:34]
  wire [5:0] arSkidBuffer_enq_bits_addr; // @[AXI4LiteNode.scala 281:34]
  wire  arSkidBuffer_deq_ready; // @[AXI4LiteNode.scala 281:34]
  wire  arSkidBuffer_deq_valid; // @[AXI4LiteNode.scala 281:34]
  wire [5:0] arSkidBuffer_deq_bits_addr; // @[AXI4LiteNode.scala 281:34]
  wire  tSkidBuffer_clock; // @[AXI4StreamNode.scala 175:33]
  wire  tSkidBuffer_reset; // @[AXI4StreamNode.scala 175:33]
  wire  tSkidBuffer_enq_ready; // @[AXI4StreamNode.scala 175:33]
  wire  tSkidBuffer_enq_valid; // @[AXI4StreamNode.scala 175:33]
  wire [31:0] tSkidBuffer_enq_bits_data; // @[AXI4StreamNode.scala 175:33]
  wire  tSkidBuffer_deq_ready; // @[AXI4StreamNode.scala 175:33]
  wire  tSkidBuffer_deq_valid; // @[AXI4StreamNode.scala 175:33]
  wire [31:0] tSkidBuffer_deq_bits_data; // @[AXI4StreamNode.scala 175:33]
  wire  _T_1 = ~areset; // @[ControllerAXI.scala 94:29]
  reg [31:0] source_addr_setwork_reg; // @[ControllerAXI.scala 12:45]
  reg [31:0] dest_addr_setwork_reg; // @[ControllerAXI.scala 13:43]
  reg [31:0] setwork_control_reg; // @[ControllerAXI.scala 14:41]
  reg [31:0] user_key_reg0; // @[ControllerAXI.scala 15:35]
  reg [31:0] user_key_reg1; // @[ControllerAXI.scala 16:35]
  reg [31:0] user_key_reg2; // @[ControllerAXI.scala 17:35]
  reg [31:0] user_key_reg3; // @[ControllerAXI.scala 18:35]
  reg [31:0] key_control_reg; // @[ControllerAXI.scala 19:37]
  reg [31:0] status_reg; // @[ControllerAXI.scala 20:32]
  reg [31:0] rdataReg; // @[AXI4LiteNode.scala 266:33]
  reg  rValidReg; // @[AXI4LiteNode.scala 271:32]
  reg  bValidReg; // @[AXI4LiteNode.scala 272:32]
  wire  wReady = awSkidBuffer_deq_valid & wSkidBuffer_deq_valid & (~S00_AXI_BVALID | S00_AXI_BREADY); // @[AXI4LiteNode.scala 318:59]
  wire  rReady = arSkidBuffer_deq_valid & (~rValidReg | S00_AXI_RREADY); // @[AXI4LiteNode.scala 321:34]
  wire [7:0] _GEN_0 = wSkidBuffer_deq_bits_strb[0] ? wSkidBuffer_deq_bits_data[7:0] : source_addr_setwork_reg[7:0]; // @[AXI4LiteNode.scala 351:63 352:32 354:32]
  wire [7:0] _GEN_1 = wSkidBuffer_deq_bits_strb[1] ? wSkidBuffer_deq_bits_data[15:8] : source_addr_setwork_reg[15:8]; // @[AXI4LiteNode.scala 351:63 352:32 354:32]
  wire [7:0] _GEN_2 = wSkidBuffer_deq_bits_strb[2] ? wSkidBuffer_deq_bits_data[23:16] : source_addr_setwork_reg[23:16]; // @[AXI4LiteNode.scala 351:63 352:32 354:32]
  wire [7:0] _GEN_3 = wSkidBuffer_deq_bits_strb[3] ? wSkidBuffer_deq_bits_data[31:24] : source_addr_setwork_reg[31:24]; // @[AXI4LiteNode.scala 351:63 352:32 354:32]
  wire [7:0] _GEN_64 = wSkidBuffer_deq_bits_strb[1] ? wSkidBuffer_deq_bits_data[15:8] : key_control_reg[15:8]; // @[AXI4LiteNode.scala 351:63 352:32 354:32]
  wire [7:0] _GEN_55 = wSkidBuffer_deq_bits_strb[1] ? wSkidBuffer_deq_bits_data[15:8] : user_key_reg3[15:8]; // @[AXI4LiteNode.scala 351:63 352:32 354:32]
  wire [7:0] _GEN_46 = wSkidBuffer_deq_bits_strb[1] ? wSkidBuffer_deq_bits_data[15:8] : user_key_reg2[15:8]; // @[AXI4LiteNode.scala 351:63 352:32 354:32]
  wire [7:0] _GEN_37 = wSkidBuffer_deq_bits_strb[1] ? wSkidBuffer_deq_bits_data[15:8] : user_key_reg1[15:8]; // @[AXI4LiteNode.scala 351:63 352:32 354:32]
  wire [7:0] _GEN_28 = wSkidBuffer_deq_bits_strb[1] ? wSkidBuffer_deq_bits_data[15:8] : user_key_reg0[15:8]; // @[AXI4LiteNode.scala 351:63 352:32 354:32]
  wire [7:0] _GEN_19 = wSkidBuffer_deq_bits_strb[1] ? wSkidBuffer_deq_bits_data[15:8] : setwork_control_reg[15:8]; // @[AXI4LiteNode.scala 351:63 352:32 354:32]
  wire [7:0] _GEN_10 = wSkidBuffer_deq_bits_strb[1] ? wSkidBuffer_deq_bits_data[15:8] : dest_addr_setwork_reg[15:8]; // @[AXI4LiteNode.scala 351:63 352:32 354:32]
  wire [7:0] _GEN_5 = awSkidBuffer_deq_bits_addr[5:2] == 4'h0 ? _GEN_1 : 8'h0; // @[AXI4LiteNode.scala 349:71]
  wire [7:0] _GEN_14 = awSkidBuffer_deq_bits_addr[5:2] == 4'h1 ? _GEN_10 : _GEN_5; // @[AXI4LiteNode.scala 349:71]
  wire [7:0] _GEN_23 = awSkidBuffer_deq_bits_addr[5:2] == 4'h2 ? _GEN_19 : _GEN_14; // @[AXI4LiteNode.scala 349:71]
  wire [7:0] _GEN_32 = awSkidBuffer_deq_bits_addr[5:2] == 4'h3 ? _GEN_28 : _GEN_23; // @[AXI4LiteNode.scala 349:71]
  wire [7:0] _GEN_41 = awSkidBuffer_deq_bits_addr[5:2] == 4'h4 ? _GEN_37 : _GEN_32; // @[AXI4LiteNode.scala 349:71]
  wire [7:0] _GEN_50 = awSkidBuffer_deq_bits_addr[5:2] == 4'h5 ? _GEN_46 : _GEN_41; // @[AXI4LiteNode.scala 349:71]
  wire [7:0] _GEN_59 = awSkidBuffer_deq_bits_addr[5:2] == 4'h6 ? _GEN_55 : _GEN_50; // @[AXI4LiteNode.scala 349:71]
  wire [7:0] subWords_1 = awSkidBuffer_deq_bits_addr[5:2] == 4'h7 ? _GEN_64 : _GEN_59; // @[AXI4LiteNode.scala 349:71]
  wire [7:0] _GEN_63 = wSkidBuffer_deq_bits_strb[0] ? wSkidBuffer_deq_bits_data[7:0] : key_control_reg[7:0]; // @[AXI4LiteNode.scala 351:63 352:32 354:32]
  wire [7:0] _GEN_54 = wSkidBuffer_deq_bits_strb[0] ? wSkidBuffer_deq_bits_data[7:0] : user_key_reg3[7:0]; // @[AXI4LiteNode.scala 351:63 352:32 354:32]
  wire [7:0] _GEN_45 = wSkidBuffer_deq_bits_strb[0] ? wSkidBuffer_deq_bits_data[7:0] : user_key_reg2[7:0]; // @[AXI4LiteNode.scala 351:63 352:32 354:32]
  wire [7:0] _GEN_36 = wSkidBuffer_deq_bits_strb[0] ? wSkidBuffer_deq_bits_data[7:0] : user_key_reg1[7:0]; // @[AXI4LiteNode.scala 351:63 352:32 354:32]
  wire [7:0] _GEN_27 = wSkidBuffer_deq_bits_strb[0] ? wSkidBuffer_deq_bits_data[7:0] : user_key_reg0[7:0]; // @[AXI4LiteNode.scala 351:63 352:32 354:32]
  wire [7:0] _GEN_18 = wSkidBuffer_deq_bits_strb[0] ? wSkidBuffer_deq_bits_data[7:0] : setwork_control_reg[7:0]; // @[AXI4LiteNode.scala 351:63 352:32 354:32]
  wire [7:0] _GEN_9 = wSkidBuffer_deq_bits_strb[0] ? wSkidBuffer_deq_bits_data[7:0] : dest_addr_setwork_reg[7:0]; // @[AXI4LiteNode.scala 351:63 352:32 354:32]
  wire [7:0] _GEN_4 = awSkidBuffer_deq_bits_addr[5:2] == 4'h0 ? _GEN_0 : 8'h0; // @[AXI4LiteNode.scala 349:71]
  wire [7:0] _GEN_13 = awSkidBuffer_deq_bits_addr[5:2] == 4'h1 ? _GEN_9 : _GEN_4; // @[AXI4LiteNode.scala 349:71]
  wire [7:0] _GEN_22 = awSkidBuffer_deq_bits_addr[5:2] == 4'h2 ? _GEN_18 : _GEN_13; // @[AXI4LiteNode.scala 349:71]
  wire [7:0] _GEN_31 = awSkidBuffer_deq_bits_addr[5:2] == 4'h3 ? _GEN_27 : _GEN_22; // @[AXI4LiteNode.scala 349:71]
  wire [7:0] _GEN_40 = awSkidBuffer_deq_bits_addr[5:2] == 4'h4 ? _GEN_36 : _GEN_31; // @[AXI4LiteNode.scala 349:71]
  wire [7:0] _GEN_49 = awSkidBuffer_deq_bits_addr[5:2] == 4'h5 ? _GEN_45 : _GEN_40; // @[AXI4LiteNode.scala 349:71]
  wire [7:0] _GEN_58 = awSkidBuffer_deq_bits_addr[5:2] == 4'h6 ? _GEN_54 : _GEN_49; // @[AXI4LiteNode.scala 349:71]
  wire [7:0] subWords_0 = awSkidBuffer_deq_bits_addr[5:2] == 4'h7 ? _GEN_63 : _GEN_58; // @[AXI4LiteNode.scala 349:71]
  wire [7:0] _GEN_66 = wSkidBuffer_deq_bits_strb[3] ? wSkidBuffer_deq_bits_data[31:24] : key_control_reg[31:24]; // @[AXI4LiteNode.scala 351:63 352:32 354:32]
  wire [7:0] _GEN_57 = wSkidBuffer_deq_bits_strb[3] ? wSkidBuffer_deq_bits_data[31:24] : user_key_reg3[31:24]; // @[AXI4LiteNode.scala 351:63 352:32 354:32]
  wire [7:0] _GEN_48 = wSkidBuffer_deq_bits_strb[3] ? wSkidBuffer_deq_bits_data[31:24] : user_key_reg2[31:24]; // @[AXI4LiteNode.scala 351:63 352:32 354:32]
  wire [7:0] _GEN_39 = wSkidBuffer_deq_bits_strb[3] ? wSkidBuffer_deq_bits_data[31:24] : user_key_reg1[31:24]; // @[AXI4LiteNode.scala 351:63 352:32 354:32]
  wire [7:0] _GEN_30 = wSkidBuffer_deq_bits_strb[3] ? wSkidBuffer_deq_bits_data[31:24] : user_key_reg0[31:24]; // @[AXI4LiteNode.scala 351:63 352:32 354:32]
  wire [7:0] _GEN_21 = wSkidBuffer_deq_bits_strb[3] ? wSkidBuffer_deq_bits_data[31:24] : setwork_control_reg[31:24]; // @[AXI4LiteNode.scala 351:63 352:32 354:32]
  wire [7:0] _GEN_12 = wSkidBuffer_deq_bits_strb[3] ? wSkidBuffer_deq_bits_data[31:24] : dest_addr_setwork_reg[31:24]; // @[AXI4LiteNode.scala 351:63 352:32 354:32]
  wire [7:0] _GEN_7 = awSkidBuffer_deq_bits_addr[5:2] == 4'h0 ? _GEN_3 : 8'h0; // @[AXI4LiteNode.scala 349:71]
  wire [7:0] _GEN_16 = awSkidBuffer_deq_bits_addr[5:2] == 4'h1 ? _GEN_12 : _GEN_7; // @[AXI4LiteNode.scala 349:71]
  wire [7:0] _GEN_25 = awSkidBuffer_deq_bits_addr[5:2] == 4'h2 ? _GEN_21 : _GEN_16; // @[AXI4LiteNode.scala 349:71]
  wire [7:0] _GEN_34 = awSkidBuffer_deq_bits_addr[5:2] == 4'h3 ? _GEN_30 : _GEN_25; // @[AXI4LiteNode.scala 349:71]
  wire [7:0] _GEN_43 = awSkidBuffer_deq_bits_addr[5:2] == 4'h4 ? _GEN_39 : _GEN_34; // @[AXI4LiteNode.scala 349:71]
  wire [7:0] _GEN_52 = awSkidBuffer_deq_bits_addr[5:2] == 4'h5 ? _GEN_48 : _GEN_43; // @[AXI4LiteNode.scala 349:71]
  wire [7:0] _GEN_61 = awSkidBuffer_deq_bits_addr[5:2] == 4'h6 ? _GEN_57 : _GEN_52; // @[AXI4LiteNode.scala 349:71]
  wire [7:0] subWords_3 = awSkidBuffer_deq_bits_addr[5:2] == 4'h7 ? _GEN_66 : _GEN_61; // @[AXI4LiteNode.scala 349:71]
  wire [7:0] _GEN_65 = wSkidBuffer_deq_bits_strb[2] ? wSkidBuffer_deq_bits_data[23:16] : key_control_reg[23:16]; // @[AXI4LiteNode.scala 351:63 352:32 354:32]
  wire [7:0] _GEN_56 = wSkidBuffer_deq_bits_strb[2] ? wSkidBuffer_deq_bits_data[23:16] : user_key_reg3[23:16]; // @[AXI4LiteNode.scala 351:63 352:32 354:32]
  wire [7:0] _GEN_47 = wSkidBuffer_deq_bits_strb[2] ? wSkidBuffer_deq_bits_data[23:16] : user_key_reg2[23:16]; // @[AXI4LiteNode.scala 351:63 352:32 354:32]
  wire [7:0] _GEN_38 = wSkidBuffer_deq_bits_strb[2] ? wSkidBuffer_deq_bits_data[23:16] : user_key_reg1[23:16]; // @[AXI4LiteNode.scala 351:63 352:32 354:32]
  wire [7:0] _GEN_29 = wSkidBuffer_deq_bits_strb[2] ? wSkidBuffer_deq_bits_data[23:16] : user_key_reg0[23:16]; // @[AXI4LiteNode.scala 351:63 352:32 354:32]
  wire [7:0] _GEN_20 = wSkidBuffer_deq_bits_strb[2] ? wSkidBuffer_deq_bits_data[23:16] : setwork_control_reg[23:16]; // @[AXI4LiteNode.scala 351:63 352:32 354:32]
  wire [7:0] _GEN_11 = wSkidBuffer_deq_bits_strb[2] ? wSkidBuffer_deq_bits_data[23:16] : dest_addr_setwork_reg[23:16]; // @[AXI4LiteNode.scala 351:63 352:32 354:32]
  wire [7:0] _GEN_6 = awSkidBuffer_deq_bits_addr[5:2] == 4'h0 ? _GEN_2 : 8'h0; // @[AXI4LiteNode.scala 349:71]
  wire [7:0] _GEN_15 = awSkidBuffer_deq_bits_addr[5:2] == 4'h1 ? _GEN_11 : _GEN_6; // @[AXI4LiteNode.scala 349:71]
  wire [7:0] _GEN_24 = awSkidBuffer_deq_bits_addr[5:2] == 4'h2 ? _GEN_20 : _GEN_15; // @[AXI4LiteNode.scala 349:71]
  wire [7:0] _GEN_33 = awSkidBuffer_deq_bits_addr[5:2] == 4'h3 ? _GEN_29 : _GEN_24; // @[AXI4LiteNode.scala 349:71]
  wire [7:0] _GEN_42 = awSkidBuffer_deq_bits_addr[5:2] == 4'h4 ? _GEN_38 : _GEN_33; // @[AXI4LiteNode.scala 349:71]
  wire [7:0] _GEN_51 = awSkidBuffer_deq_bits_addr[5:2] == 4'h5 ? _GEN_47 : _GEN_42; // @[AXI4LiteNode.scala 349:71]
  wire [7:0] _GEN_60 = awSkidBuffer_deq_bits_addr[5:2] == 4'h6 ? _GEN_56 : _GEN_51; // @[AXI4LiteNode.scala 349:71]
  wire [7:0] subWords_2 = awSkidBuffer_deq_bits_addr[5:2] == 4'h7 ? _GEN_65 : _GEN_60; // @[AXI4LiteNode.scala 349:71]
  wire [31:0] _source_addr_setwork_reg_T = {subWords_3,subWords_2,subWords_1,subWords_0}; // @[AXI4LiteNode.scala 357:31]
  wire  _GEN_72 = S00_AXI_BREADY ? 1'h0 : bValidReg; // @[AXI4LiteNode.scala 329:29 330:14 272:32]
  wire  _GEN_81 = wReady | _GEN_72; // @[AXI4LiteNode.scala 326:15 328:14]
  wire  _GEN_83 = S00_AXI_RREADY ? 1'h0 : rValidReg; // @[AXI4LiteNode.scala 336:29 337:14 271:32]
  wire  _GEN_85 = rReady | _GEN_83; // @[AXI4LiteNode.scala 333:15 335:14]
  reg  startWriteReg; // @[AXI4LiteNode.scala 472:36]
  reg [31:0] wDataReg; // @[AXI4LiteNode.scala 475:31]
  reg [3:0] wStrobeReg; // @[AXI4LiteNode.scala 476:33]
  reg [31:0] wAddrReg; // @[AXI4LiteNode.scala 477:31]
  reg  wValidReg; // @[AXI4LiteNode.scala 478:32]
  reg  awValidReg; // @[AXI4LiteNode.scala 479:33]
  reg  bReadyReg; // @[AXI4LiteNode.scala 481:32]
  reg  ready2writeReg; // @[AXI4LiteNode.scala 490:37]
  wire  _T_84 = M00_AXI_BREADY & M00_AXI_BVALID; // @[Decoupled.scala 50:35]
  wire  _GEN_86 = _T_84 | ready2writeReg; // @[AXI4LiteNode.scala 517:22 518:19 490:37]
  wire  _T_87 = ~bReadyReg; // @[AXI4LiteNode.scala 524:56]
  wire  _T_89 = startWriteReg & ~wValidReg & (M00_AXI_BVALID | ~bReadyReg); // @[AXI4LiteNode.scala 524:35]
  wire  _GEN_87 = M00_AXI_WREADY ? 1'h0 : wValidReg; // @[AXI4LiteNode.scala 527:29 528:14 478:32]
  wire  _GEN_88 = startWriteReg & ~wValidReg & (M00_AXI_BVALID | ~bReadyReg) | _GEN_87; // @[AXI4LiteNode.scala 524:68 525:14]
  wire  _GEN_89 = startWriteReg & ~wValidReg & (M00_AXI_BVALID | ~bReadyReg) ? 1'h0 : startWriteReg; // @[AXI4LiteNode.scala 524:68 526:18 472:36]
  wire  _GEN_90 = M00_AXI_AWREADY ? 1'h0 : awValidReg; // @[AXI4LiteNode.scala 534:30 535:15 479:33]
  wire  _GEN_91 = _T_89 | _GEN_90; // @[AXI4LiteNode.scala 532:68 533:15]
  wire  _GEN_92 = M00_AXI_BVALID ? 1'h0 : bReadyReg; // @[AXI4LiteNode.scala 542:29 543:14 481:32]
  wire  _GEN_93 = (startWriteReg | wValidReg) & _T_87 | _GEN_92; // @[AXI4LiteNode.scala 540:49 541:14]
  wire  tReady = tSkidBuffer_deq_valid & (~S00_AXIS_TVALID | S00_AXIS_TREADY); // @[AXI4StreamNode.scala 196:58]
  reg  startWriteReg_1; // @[AXI4StreamNode.scala 307:36]
  reg [31:0] axisSignalsReg_data; // @[AXI4StreamNode.scala 308:37]
  reg  ready2writeReg_1; // @[AXI4StreamNode.scala 321:37]
  reg  tValidReg; // @[AXI4StreamNode.scala 322:32]
  wire  _T_107 = M00_AXIS_TREADY & M00_AXIS_TVALID; // @[Decoupled.scala 50:35]
  wire  _GEN_102 = _T_107 | ready2writeReg_1; // @[AXI4StreamNode.scala 324:22 325:19 321:37]
  wire  _GEN_103 = M00_AXIS_TREADY ? 1'h0 : tValidReg; // @[AXI4StreamNode.scala 330:29 331:14 322:32]
  wire  _GEN_104 = startWriteReg_1 & ~tValidReg | _GEN_103; // @[AXI4StreamNode.scala 327:36 328:14]
  wire  _GEN_105 = startWriteReg_1 & ~tValidReg ? 1'h0 : startWriteReg_1; // @[AXI4StreamNode.scala 327:36 329:18 307:36]
  wire [127:0] _T_110 = {user_key_reg3,user_key_reg2,user_key_reg1,user_key_reg0}; // @[Cat.scala 31:58]
  wire [2:0] _T_127 = {Ctl_io_destroy_ready,Ctl_io_user_key_ready,Ctl_io_source_addr_setwork_ready}; // @[Cat.scala 31:58]
  reg [2:0] STM; // @[ControllerAXI.scala 124:22]
  reg  S2MM_FIRST; // @[ControllerAXI.scala 125:29]
  wire  _T_130 = ready2writeReg | _T_84; // @[AXI4LiteNode.scala 622:54]
  wire [31:0] _GEN_106 = _T_130 ? 32'h1 : wDataReg; // @[ControllerAXI.scala 130:41 AXI4LiteNode.scala 582:13 475:31]
  wire [3:0] _GEN_108 = _T_130 ? 4'hf : wStrobeReg; // @[ControllerAXI.scala 130:41 AXI4LiteNode.scala 584:15 476:33]
  wire  _GEN_109 = _T_130 | _GEN_89; // @[ControllerAXI.scala 130:41 AXI4LiteNode.scala 585:18]
  wire  _GEN_110 = _T_130 ? 1'h0 : _GEN_86; // @[ControllerAXI.scala 130:41 AXI4LiteNode.scala 586:19]
  wire [2:0] _GEN_117 = _T_130 ? 3'h3 : STM; // @[ControllerAXI.scala 136:41 138:15 124:22]
  wire  _T_137 = Ctl_io_dest_interrupt & Ctl_io_dest_addr_dma_valid; // @[ControllerAXI.scala 144:40]
  wire  _T_138 = Ctl_io_source_interrupt & Ctl_io_source_addr_dma_valid; // @[ControllerAXI.scala 148:48]
  wire [31:0] _GEN_118 = Ctl_io_source_interrupt & Ctl_io_source_addr_dma_valid ? Ctl_io_source_addr_dma_bits : wDataReg
    ; // @[ControllerAXI.scala 148:81 AXI4LiteNode.scala 582:13 475:31]
  wire [31:0] _GEN_119 = Ctl_io_source_interrupt & Ctl_io_source_addr_dma_valid ? 32'h18 : wAddrReg; // @[ControllerAXI.scala 148:81 AXI4LiteNode.scala 583:13 477:31]
  wire [3:0] _GEN_120 = Ctl_io_source_interrupt & Ctl_io_source_addr_dma_valid ? 4'hf : wStrobeReg; // @[ControllerAXI.scala 148:81 AXI4LiteNode.scala 584:15 476:33]
  wire  _GEN_121 = Ctl_io_source_interrupt & Ctl_io_source_addr_dma_valid | _GEN_89; // @[ControllerAXI.scala 148:81 AXI4LiteNode.scala 585:18]
  wire  _GEN_122 = Ctl_io_source_interrupt & Ctl_io_source_addr_dma_valid ? 1'h0 : _GEN_86; // @[ControllerAXI.scala 148:81 AXI4LiteNode.scala 586:19]
  wire [2:0] _GEN_124 = Ctl_io_source_interrupt & Ctl_io_source_addr_dma_valid ? 3'h6 : STM; // @[ControllerAXI.scala 148:81 151:19 124:22]
  wire [31:0] _GEN_125 = Ctl_io_dest_interrupt & Ctl_io_dest_addr_dma_valid ? Ctl_io_dest_addr_dma_bits : _GEN_118; // @[ControllerAXI.scala 144:71 AXI4LiteNode.scala 582:13]
  wire [31:0] _GEN_126 = Ctl_io_dest_interrupt & Ctl_io_dest_addr_dma_valid ? 32'h48 : _GEN_119; // @[ControllerAXI.scala 144:71 AXI4LiteNode.scala 583:13]
  wire [3:0] _GEN_127 = Ctl_io_dest_interrupt & Ctl_io_dest_addr_dma_valid ? 4'hf : _GEN_120; // @[ControllerAXI.scala 144:71 AXI4LiteNode.scala 584:15]
  wire  _GEN_128 = Ctl_io_dest_interrupt & Ctl_io_dest_addr_dma_valid | _GEN_121; // @[ControllerAXI.scala 144:71 AXI4LiteNode.scala 585:18]
  wire  _GEN_129 = Ctl_io_dest_interrupt & Ctl_io_dest_addr_dma_valid ? 1'h0 : _GEN_122; // @[ControllerAXI.scala 144:71 AXI4LiteNode.scala 586:19]
  wire [2:0] _GEN_131 = Ctl_io_dest_interrupt & Ctl_io_dest_addr_dma_valid ? 3'h4 : _GEN_124; // @[ControllerAXI.scala 144:71 147:19]
  wire  _GEN_132 = Ctl_io_dest_interrupt & Ctl_io_dest_addr_dma_valid ? 1'h0 : _T_138; // @[ControllerAXI.scala 144:71]
  wire [31:0] _GEN_133 = _T_137 ? Ctl_io_dest_addr_dma_bits : wDataReg; // @[ControllerAXI.scala 158:77 AXI4LiteNode.scala 582:13 475:31]
  wire [31:0] _GEN_134 = _T_137 ? 32'h48 : wAddrReg; // @[ControllerAXI.scala 158:77 AXI4LiteNode.scala 583:13 477:31]
  wire [3:0] _GEN_135 = _T_137 ? 4'hf : wStrobeReg; // @[ControllerAXI.scala 158:77 AXI4LiteNode.scala 584:15 476:33]
  wire  _GEN_136 = _T_137 | _GEN_89; // @[ControllerAXI.scala 158:77 AXI4LiteNode.scala 585:18]
  wire  _GEN_137 = _T_137 ? 1'h0 : _GEN_86; // @[ControllerAXI.scala 158:77 AXI4LiteNode.scala 586:19]
  wire [2:0] _GEN_139 = _T_137 ? 3'h4 : STM; // @[ControllerAXI.scala 158:77 161:19 124:22]
  wire [31:0] _GEN_140 = _T_138 ? Ctl_io_source_addr_dma_bits : _GEN_133; // @[ControllerAXI.scala 154:75 AXI4LiteNode.scala 582:13]
  wire [31:0] _GEN_141 = _T_138 ? 32'h18 : _GEN_134; // @[ControllerAXI.scala 154:75 AXI4LiteNode.scala 583:13]
  wire [3:0] _GEN_142 = _T_138 ? 4'hf : _GEN_135; // @[ControllerAXI.scala 154:75 AXI4LiteNode.scala 584:15]
  wire  _GEN_143 = _T_138 | _GEN_136; // @[ControllerAXI.scala 154:75 AXI4LiteNode.scala 585:18]
  wire  _GEN_144 = _T_138 ? 1'h0 : _GEN_137; // @[ControllerAXI.scala 154:75 AXI4LiteNode.scala 586:19]
  wire [2:0] _GEN_146 = _T_138 ? 3'h6 : _GEN_139; // @[ControllerAXI.scala 154:75 157:19]
  wire  _GEN_147 = _T_138 ? 1'h0 : _T_137; // @[ControllerAXI.scala 154:75]
  wire [31:0] _GEN_148 = S2MM_FIRST ? _GEN_125 : _GEN_140; // @[ControllerAXI.scala 143:28]
  wire [31:0] _GEN_149 = S2MM_FIRST ? _GEN_126 : _GEN_141; // @[ControllerAXI.scala 143:28]
  wire [3:0] _GEN_150 = S2MM_FIRST ? _GEN_127 : _GEN_142; // @[ControllerAXI.scala 143:28]
  wire  _GEN_151 = S2MM_FIRST ? _GEN_128 : _GEN_143; // @[ControllerAXI.scala 143:28]
  wire  _GEN_152 = S2MM_FIRST ? _GEN_129 : _GEN_144; // @[ControllerAXI.scala 143:28]
  wire  _GEN_153 = S2MM_FIRST ? _T_137 : _GEN_147; // @[ControllerAXI.scala 143:28]
  wire [2:0] _GEN_154 = S2MM_FIRST ? _GEN_131 : _GEN_146; // @[ControllerAXI.scala 143:28]
  wire  _GEN_155 = S2MM_FIRST ? _GEN_132 : _T_138; // @[ControllerAXI.scala 143:28]
  wire [31:0] _GEN_156 = _T_130 ? _GEN_148 : wDataReg; // @[ControllerAXI.scala 142:41 AXI4LiteNode.scala 475:31]
  wire [31:0] _GEN_157 = _T_130 ? _GEN_149 : wAddrReg; // @[ControllerAXI.scala 142:41 AXI4LiteNode.scala 477:31]
  wire [3:0] _GEN_158 = _T_130 ? _GEN_150 : wStrobeReg; // @[ControllerAXI.scala 142:41 AXI4LiteNode.scala 476:33]
  wire  _GEN_159 = _T_130 ? _GEN_151 : _GEN_89; // @[ControllerAXI.scala 142:41]
  wire  _GEN_160 = _T_130 ? _GEN_152 : _GEN_86; // @[ControllerAXI.scala 142:41]
  wire  _GEN_161 = _T_130 & _GEN_153; // @[ControllerAXI.scala 142:41]
  wire [2:0] _GEN_162 = _T_130 ? _GEN_154 : STM; // @[ControllerAXI.scala 124:22 142:41]
  wire  _GEN_163 = _T_130 & _GEN_155; // @[ControllerAXI.scala 142:41]
  wire [31:0] _GEN_164 = _T_130 ? 32'h10 : wDataReg; // @[ControllerAXI.scala 167:41 AXI4LiteNode.scala 582:13 475:31]
  wire [31:0] _GEN_165 = _T_130 ? 32'h58 : wAddrReg; // @[ControllerAXI.scala 167:41 AXI4LiteNode.scala 583:13 477:31]
  wire [2:0] _GEN_169 = _T_130 ? 3'h5 : STM; // @[ControllerAXI.scala 167:41 169:15 124:22]
  wire  _GEN_170 = _T_130 ? 1'h0 : S2MM_FIRST; // @[ControllerAXI.scala 173:41 174:22 125:29]
  wire [31:0] _GEN_173 = _T_130 ? 32'h28 : wAddrReg; // @[ControllerAXI.scala 179:41 AXI4LiteNode.scala 583:13 477:31]
  wire [2:0] _GEN_177 = _T_130 ? 3'h7 : STM; // @[ControllerAXI.scala 179:41 181:15 124:22]
  wire  _GEN_178 = _T_130 | S2MM_FIRST; // @[ControllerAXI.scala 185:41 186:22 125:29]
  wire  _GEN_180 = 3'h7 == STM ? _GEN_178 : S2MM_FIRST; // @[ControllerAXI.scala 128:17 125:29]
  wire [2:0] _GEN_181 = 3'h7 == STM ? _GEN_117 : STM; // @[ControllerAXI.scala 128:17 124:22]
  wire [31:0] _GEN_182 = 3'h6 == STM ? _GEN_164 : wDataReg; // @[ControllerAXI.scala 128:17 AXI4LiteNode.scala 475:31]
  wire [31:0] _GEN_183 = 3'h6 == STM ? _GEN_173 : wAddrReg; // @[ControllerAXI.scala 128:17 AXI4LiteNode.scala 477:31]
  wire [3:0] _GEN_184 = 3'h6 == STM ? _GEN_108 : wStrobeReg; // @[ControllerAXI.scala 128:17 AXI4LiteNode.scala 476:33]
  wire  _GEN_185 = 3'h6 == STM ? _GEN_109 : _GEN_89; // @[ControllerAXI.scala 128:17]
  wire  _GEN_186 = 3'h6 == STM ? _GEN_110 : _GEN_86; // @[ControllerAXI.scala 128:17]
  wire [2:0] _GEN_187 = 3'h6 == STM ? _GEN_177 : _GEN_181; // @[ControllerAXI.scala 128:17]
  wire  _GEN_188 = 3'h6 == STM ? S2MM_FIRST : _GEN_180; // @[ControllerAXI.scala 128:17 125:29]
  wire  _GEN_189 = 3'h5 == STM ? _GEN_170 : _GEN_188; // @[ControllerAXI.scala 128:17]
  wire [2:0] _GEN_190 = 3'h5 == STM ? _GEN_117 : _GEN_187; // @[ControllerAXI.scala 128:17]
  wire [31:0] _GEN_191 = 3'h5 == STM ? wDataReg : _GEN_182; // @[ControllerAXI.scala 128:17 AXI4LiteNode.scala 475:31]
  wire [31:0] _GEN_192 = 3'h5 == STM ? wAddrReg : _GEN_183; // @[ControllerAXI.scala 128:17 AXI4LiteNode.scala 477:31]
  wire [3:0] _GEN_193 = 3'h5 == STM ? wStrobeReg : _GEN_184; // @[ControllerAXI.scala 128:17 AXI4LiteNode.scala 476:33]
  wire  _GEN_194 = 3'h5 == STM ? _GEN_89 : _GEN_185; // @[ControllerAXI.scala 128:17]
  wire  _GEN_195 = 3'h5 == STM ? _GEN_86 : _GEN_186; // @[ControllerAXI.scala 128:17]
  wire [31:0] _GEN_196 = 3'h4 == STM ? _GEN_164 : _GEN_191; // @[ControllerAXI.scala 128:17]
  wire [31:0] _GEN_197 = 3'h4 == STM ? _GEN_165 : _GEN_192; // @[ControllerAXI.scala 128:17]
  wire [3:0] _GEN_198 = 3'h4 == STM ? _GEN_108 : _GEN_193; // @[ControllerAXI.scala 128:17]
  wire  _GEN_199 = 3'h4 == STM ? _GEN_109 : _GEN_194; // @[ControllerAXI.scala 128:17]
  wire  _GEN_200 = 3'h4 == STM ? _GEN_110 : _GEN_195; // @[ControllerAXI.scala 128:17]
  wire [2:0] _GEN_201 = 3'h4 == STM ? _GEN_169 : _GEN_190; // @[ControllerAXI.scala 128:17]
  wire  _GEN_202 = 3'h4 == STM ? S2MM_FIRST : _GEN_189; // @[ControllerAXI.scala 128:17 125:29]
  wire  _GEN_207 = 3'h3 == STM ? _GEN_160 : _GEN_200; // @[ControllerAXI.scala 128:17]
  wire  _GEN_216 = 3'h1 == STM ? _GEN_110 : _GEN_207; // @[ControllerAXI.scala 128:17]
  wire  _GEN_218 = 3'h1 == STM ? 1'h0 : 3'h3 == STM & _GEN_161; // @[ControllerAXI.scala 128:17]
  wire  _GEN_219 = 3'h1 == STM ? 1'h0 : 3'h3 == STM & _GEN_163; // @[ControllerAXI.scala 128:17]
  wire  _GEN_225 = 3'h0 == STM ? _GEN_110 : _GEN_216; // @[ControllerAXI.scala 128:17]
  wire  EnqWire_ready = Ctl_io_fifo_in_ready;
  wire [31:0] axiStreamSignals_data = tSkidBuffer_deq_bits_data; // @[AXI4StreamNode.scala 191:60 199:19]
  wire [31:0] _GEN_231 = EnqWire_ready ? axiStreamSignals_data : 32'h0; // @[ControllerAXI.scala 72:25 Decoupled.scala 64:19]
  wire  DeqWire_valid = Ctl_io_fifo_out_valid;
  wire  DeqWire_ready = ready2writeReg_1 & DeqWire_valid; // @[ControllerAXI.scala 83:25]
  wire [31:0] DeqWire_bits = Ctl_io_fifo_out_bits;
  wire  _GEN_236 = DeqWire_ready | _GEN_105; // @[AXI4StreamNode.scala 344:18 ControllerAXI.scala 83:41]
  wire  _GEN_237 = DeqWire_ready ? 1'h0 : _GEN_102; // @[AXI4StreamNode.scala 345:19 ControllerAXI.scala 83:41]
  Controller Ctl ( // @[ControllerAXI.scala 95:21]
    .clock(Ctl_clock),
    .reset(Ctl_reset),
    .io_fifo_in_ready(Ctl_io_fifo_in_ready),
    .io_fifo_in_valid(Ctl_io_fifo_in_valid),
    .io_fifo_in_bits(Ctl_io_fifo_in_bits),
    .io_source_addr_setwork_ready(Ctl_io_source_addr_setwork_ready),
    .io_source_addr_setwork_valid(Ctl_io_source_addr_setwork_valid),
    .io_source_addr_setwork_bits(Ctl_io_source_addr_setwork_bits),
    .io_dest_addr_setwork(Ctl_io_dest_addr_setwork),
    .io_length_setwork(Ctl_io_length_setwork),
    .io_slotID_setwork(Ctl_io_slotID_setwork),
    .io_user_key_ready(Ctl_io_user_key_ready),
    .io_user_key_valid(Ctl_io_user_key_valid),
    .io_user_key_bits_0(Ctl_io_user_key_bits_0),
    .io_user_key_bits_1(Ctl_io_user_key_bits_1),
    .io_user_key_bits_2(Ctl_io_user_key_bits_2),
    .io_user_key_bits_3(Ctl_io_user_key_bits_3),
    .io_user_key_bits_4(Ctl_io_user_key_bits_4),
    .io_user_key_bits_5(Ctl_io_user_key_bits_5),
    .io_user_key_bits_6(Ctl_io_user_key_bits_6),
    .io_user_key_bits_7(Ctl_io_user_key_bits_7),
    .io_user_key_bits_8(Ctl_io_user_key_bits_8),
    .io_user_key_bits_9(Ctl_io_user_key_bits_9),
    .io_user_key_bits_10(Ctl_io_user_key_bits_10),
    .io_user_key_bits_11(Ctl_io_user_key_bits_11),
    .io_user_key_bits_12(Ctl_io_user_key_bits_12),
    .io_user_key_bits_13(Ctl_io_user_key_bits_13),
    .io_user_key_bits_14(Ctl_io_user_key_bits_14),
    .io_user_key_bits_15(Ctl_io_user_key_bits_15),
    .io_slotID_key(Ctl_io_slotID_key),
    .io_destroy_ready(Ctl_io_destroy_ready),
    .io_destroy_valid(Ctl_io_destroy_valid),
    .io_destroy_bits(Ctl_io_destroy_bits),
    .io_source_addr_dma_ready(Ctl_io_source_addr_dma_ready),
    .io_source_addr_dma_valid(Ctl_io_source_addr_dma_valid),
    .io_source_addr_dma_bits(Ctl_io_source_addr_dma_bits),
    .io_dest_addr_dma_ready(Ctl_io_dest_addr_dma_ready),
    .io_dest_addr_dma_valid(Ctl_io_dest_addr_dma_valid),
    .io_dest_addr_dma_bits(Ctl_io_dest_addr_dma_bits),
    .io_fifo_out_ready(Ctl_io_fifo_out_ready),
    .io_fifo_out_valid(Ctl_io_fifo_out_valid),
    .io_fifo_out_bits(Ctl_io_fifo_out_bits),
    .io_source_interrupt(Ctl_io_source_interrupt),
    .io_dest_interrupt(Ctl_io_dest_interrupt)
  );
  SkidBuffer awSkidBuffer ( // @[AXI4LiteNode.scala 279:34]
    .clock(awSkidBuffer_clock),
    .reset(awSkidBuffer_reset),
    .enq_ready(awSkidBuffer_enq_ready),
    .enq_valid(awSkidBuffer_enq_valid),
    .enq_bits_addr(awSkidBuffer_enq_bits_addr),
    .deq_ready(awSkidBuffer_deq_ready),
    .deq_valid(awSkidBuffer_deq_valid),
    .deq_bits_addr(awSkidBuffer_deq_bits_addr)
  );
  SkidBuffer_1 wSkidBuffer ( // @[AXI4LiteNode.scala 280:33]
    .clock(wSkidBuffer_clock),
    .reset(wSkidBuffer_reset),
    .enq_ready(wSkidBuffer_enq_ready),
    .enq_valid(wSkidBuffer_enq_valid),
    .enq_bits_data(wSkidBuffer_enq_bits_data),
    .enq_bits_strb(wSkidBuffer_enq_bits_strb),
    .deq_ready(wSkidBuffer_deq_ready),
    .deq_valid(wSkidBuffer_deq_valid),
    .deq_bits_data(wSkidBuffer_deq_bits_data),
    .deq_bits_strb(wSkidBuffer_deq_bits_strb)
  );
  SkidBuffer arSkidBuffer ( // @[AXI4LiteNode.scala 281:34]
    .clock(arSkidBuffer_clock),
    .reset(arSkidBuffer_reset),
    .enq_ready(arSkidBuffer_enq_ready),
    .enq_valid(arSkidBuffer_enq_valid),
    .enq_bits_addr(arSkidBuffer_enq_bits_addr),
    .deq_ready(arSkidBuffer_deq_ready),
    .deq_valid(arSkidBuffer_deq_valid),
    .deq_bits_addr(arSkidBuffer_deq_bits_addr)
  );
  SkidBuffer_3 tSkidBuffer ( // @[AXI4StreamNode.scala 175:33]
    .clock(tSkidBuffer_clock),
    .reset(tSkidBuffer_reset),
    .enq_ready(tSkidBuffer_enq_ready),
    .enq_valid(tSkidBuffer_enq_valid),
    .enq_bits_data(tSkidBuffer_enq_bits_data),
    .deq_ready(tSkidBuffer_deq_ready),
    .deq_valid(tSkidBuffer_deq_valid),
    .deq_bits_data(tSkidBuffer_deq_bits_data)
  );
  assign S00_AXI_AWREADY = awSkidBuffer_enq_ready; // @[AXI4LiteNode.scala 302:20]
  assign S00_AXI_WREADY = wSkidBuffer_enq_ready; // @[AXI4LiteNode.scala 303:19]
  assign S00_AXI_BVALID = bValidReg; // @[AXI4LiteNode.scala 310:17]
  assign S00_AXI_BRESP = 2'h0; // @[AXI4LiteNode.scala 311:21]
  assign S00_AXI_ARREADY = arSkidBuffer_enq_ready; // @[AXI4LiteNode.scala 304:20]
  assign S00_AXI_RVALID = rValidReg; // @[AXI4LiteNode.scala 315:17]
  assign S00_AXI_RDATA = rdataReg; // @[AXI4LiteNode.scala 313:21]
  assign S00_AXI_RRESP = 2'h0; // @[AXI4LiteNode.scala 314:21]
  assign M00_AXI_AWVALID = awValidReg; // @[AXI4LiteNode.scala 497:18]
  assign M00_AXI_AWADDR = wAddrReg; // @[AXI4LiteNode.scala 498:22]
  assign M00_AXI_AWPROT = 3'h0; // @[AXI4LiteNode.scala 499:22]
  assign M00_AXI_WVALID = wValidReg; // @[AXI4LiteNode.scala 501:17]
  assign M00_AXI_WDATA = wDataReg; // @[AXI4LiteNode.scala 503:21]
  assign M00_AXI_WSTRB = wStrobeReg; // @[AXI4LiteNode.scala 502:21]
  assign M00_AXI_BREADY = bReadyReg; // @[AXI4LiteNode.scala 505:17]
  assign M00_AXI_ARVALID = 1'h0; // @[AXI4LiteNode.scala 509:18]
  assign M00_AXI_ARADDR = 32'h0; // @[AXI4LiteNode.scala 510:22]
  assign M00_AXI_ARPROT = 3'h0; // @[AXI4LiteNode.scala 511:22]
  assign M00_AXI_RREADY = 1'h0; // @[AXI4LiteNode.scala 508:17]
  assign S00_AXIS_TREADY = tSkidBuffer_enq_ready; // @[AXI4StreamNode.scala 193:19]
  assign M00_AXIS_TVALID = tValidReg; // @[AXI4StreamNode.scala 335:17]
  assign M00_AXIS_TDATA = axisSignalsReg_data; // @[AXI4StreamNode.scala 334:17]
  assign M00_AXIS_TSTRB = 4'hf; // @[AXI4StreamNode.scala 334:17]
  assign M00_AXIS_TKEEP = 4'hf; // @[AXI4StreamNode.scala 334:17]
  assign M00_AXIS_TLAST = 1'h0; // @[AXI4StreamNode.scala 334:17]
  assign M00_AXIS_TID = 8'h0; // @[AXI4StreamNode.scala 334:17]
  assign M00_AXIS_TDEST = 4'h0; // @[AXI4StreamNode.scala 334:17]
  assign M00_AXIS_TUSER = 8'h0; // @[AXI4StreamNode.scala 334:17]
  assign Ctl_clock = aclock;
  assign Ctl_reset = ~areset; // @[ControllerAXI.scala 94:29]
  assign Ctl_io_fifo_in_valid = tReady & EnqWire_ready; // @[ControllerAXI.scala 71:27]
  assign Ctl_io_fifo_in_bits = tReady ? _GEN_231 : 32'h0; // @[ControllerAXI.scala 71:27]
  assign Ctl_io_source_addr_setwork_valid = setwork_control_reg[30]; // @[ControllerAXI.scala 105:70]
  assign Ctl_io_source_addr_setwork_bits = source_addr_setwork_reg; // @[ControllerAXI.scala 103:37]
  assign Ctl_io_dest_addr_setwork = dest_addr_setwork_reg; // @[ControllerAXI.scala 104:30]
  assign Ctl_io_length_setwork = setwork_control_reg[25:0]; // @[ControllerAXI.scala 106:59]
  assign Ctl_io_slotID_setwork = setwork_control_reg[29:26]; // @[ControllerAXI.scala 107:59]
  assign Ctl_io_user_key_valid = key_control_reg[8]; // @[ControllerAXI.scala 112:55]
  assign Ctl_io_user_key_bits_0 = _T_110[7:0]; // @[ControllerAXI.scala 111:66]
  assign Ctl_io_user_key_bits_1 = _T_110[15:8]; // @[ControllerAXI.scala 111:66]
  assign Ctl_io_user_key_bits_2 = _T_110[23:16]; // @[ControllerAXI.scala 111:66]
  assign Ctl_io_user_key_bits_3 = _T_110[31:24]; // @[ControllerAXI.scala 111:66]
  assign Ctl_io_user_key_bits_4 = _T_110[39:32]; // @[ControllerAXI.scala 111:66]
  assign Ctl_io_user_key_bits_5 = _T_110[47:40]; // @[ControllerAXI.scala 111:66]
  assign Ctl_io_user_key_bits_6 = _T_110[55:48]; // @[ControllerAXI.scala 111:66]
  assign Ctl_io_user_key_bits_7 = _T_110[63:56]; // @[ControllerAXI.scala 111:66]
  assign Ctl_io_user_key_bits_8 = _T_110[71:64]; // @[ControllerAXI.scala 111:66]
  assign Ctl_io_user_key_bits_9 = _T_110[79:72]; // @[ControllerAXI.scala 111:66]
  assign Ctl_io_user_key_bits_10 = _T_110[87:80]; // @[ControllerAXI.scala 111:66]
  assign Ctl_io_user_key_bits_11 = _T_110[95:88]; // @[ControllerAXI.scala 111:66]
  assign Ctl_io_user_key_bits_12 = _T_110[103:96]; // @[ControllerAXI.scala 111:66]
  assign Ctl_io_user_key_bits_13 = _T_110[111:104]; // @[ControllerAXI.scala 111:66]
  assign Ctl_io_user_key_bits_14 = _T_110[119:112]; // @[ControllerAXI.scala 111:66]
  assign Ctl_io_user_key_bits_15 = _T_110[127:120]; // @[ControllerAXI.scala 111:66]
  assign Ctl_io_slotID_key = key_control_reg[3:0]; // @[ControllerAXI.scala 113:51]
  assign Ctl_io_destroy_valid = key_control_reg[9]; // @[ControllerAXI.scala 115:54]
  assign Ctl_io_destroy_bits = key_control_reg[7:4]; // @[ControllerAXI.scala 114:53]
  assign Ctl_io_source_addr_dma_ready = 3'h0 == STM ? 1'h0 : _GEN_219; // @[ControllerAXI.scala 128:17]
  assign Ctl_io_dest_addr_dma_ready = 3'h0 == STM ? 1'h0 : _GEN_218; // @[ControllerAXI.scala 128:17]
  assign Ctl_io_fifo_out_ready = ready2writeReg_1 & DeqWire_valid; // @[ControllerAXI.scala 83:25]
  assign awSkidBuffer_clock = aclock;
  assign awSkidBuffer_reset = ~areset; // @[ControllerAXI.scala 94:29]
  assign awSkidBuffer_enq_valid = S00_AXI_AWVALID; // @[AXI4LiteNode.scala 302:20]
  assign awSkidBuffer_enq_bits_addr = S00_AXI_AWADDR; // @[AXI4LiteNode.scala 302:20]
  assign awSkidBuffer_deq_ready = awSkidBuffer_deq_valid & wSkidBuffer_deq_valid & (~S00_AXI_BVALID | S00_AXI_BREADY); // @[AXI4LiteNode.scala 318:59]
  assign wSkidBuffer_clock = aclock;
  assign wSkidBuffer_reset = ~areset; // @[ControllerAXI.scala 94:29]
  assign wSkidBuffer_enq_valid = S00_AXI_WVALID; // @[AXI4LiteNode.scala 303:19]
  assign wSkidBuffer_enq_bits_data = S00_AXI_WDATA; // @[AXI4LiteNode.scala 303:19]
  assign wSkidBuffer_enq_bits_strb = S00_AXI_WSTRB; // @[AXI4LiteNode.scala 303:19]
  assign wSkidBuffer_deq_ready = awSkidBuffer_deq_valid & wSkidBuffer_deq_valid & (~S00_AXI_BVALID | S00_AXI_BREADY); // @[AXI4LiteNode.scala 318:59]
  assign arSkidBuffer_clock = aclock;
  assign arSkidBuffer_reset = ~areset; // @[ControllerAXI.scala 94:29]
  assign arSkidBuffer_enq_valid = S00_AXI_ARVALID; // @[AXI4LiteNode.scala 304:20]
  assign arSkidBuffer_enq_bits_addr = S00_AXI_ARADDR; // @[AXI4LiteNode.scala 304:20]
  assign arSkidBuffer_deq_ready = arSkidBuffer_deq_valid & (~rValidReg | S00_AXI_RREADY); // @[AXI4LiteNode.scala 321:34]
  assign tSkidBuffer_clock = aclock;
  assign tSkidBuffer_reset = ~areset; // @[ControllerAXI.scala 94:29]
  assign tSkidBuffer_enq_valid = S00_AXIS_TVALID; // @[AXI4StreamNode.scala 193:19]
  assign tSkidBuffer_enq_bits_data = S00_AXIS_TDATA; // @[AXI4StreamNode.scala 193:19]
  assign tSkidBuffer_deq_ready = tSkidBuffer_deq_valid & (~S00_AXIS_TVALID | S00_AXIS_TREADY); // @[AXI4StreamNode.scala 196:58]
  always @(posedge aclock) begin
    if (_T_1) begin // @[ControllerAXI.scala 12:45]
      source_addr_setwork_reg <= 32'h0; // @[ControllerAXI.scala 12:45]
    end else if (wReady) begin // @[AXI4LiteNode.scala 326:15]
      if (awSkidBuffer_deq_bits_addr[5:2] == 4'h0) begin // @[AXI4LiteNode.scala 349:71]
        source_addr_setwork_reg <= _source_addr_setwork_reg_T; // @[AXI4LiteNode.scala 357:20]
      end
    end
    if (_T_1) begin // @[ControllerAXI.scala 13:43]
      dest_addr_setwork_reg <= 32'h0; // @[ControllerAXI.scala 13:43]
    end else if (wReady) begin // @[AXI4LiteNode.scala 326:15]
      if (awSkidBuffer_deq_bits_addr[5:2] == 4'h1) begin // @[AXI4LiteNode.scala 349:71]
        dest_addr_setwork_reg <= _source_addr_setwork_reg_T; // @[AXI4LiteNode.scala 357:20]
      end
    end
    if (_T_1) begin // @[ControllerAXI.scala 14:41]
      setwork_control_reg <= 32'h0; // @[ControllerAXI.scala 14:41]
    end else if (wReady) begin // @[AXI4LiteNode.scala 326:15]
      if (awSkidBuffer_deq_bits_addr[5:2] == 4'h2) begin // @[AXI4LiteNode.scala 349:71]
        setwork_control_reg <= _source_addr_setwork_reg_T; // @[AXI4LiteNode.scala 357:20]
      end
    end
    if (_T_1) begin // @[ControllerAXI.scala 15:35]
      user_key_reg0 <= 32'h0; // @[ControllerAXI.scala 15:35]
    end else if (wReady) begin // @[AXI4LiteNode.scala 326:15]
      if (awSkidBuffer_deq_bits_addr[5:2] == 4'h3) begin // @[AXI4LiteNode.scala 349:71]
        user_key_reg0 <= _source_addr_setwork_reg_T; // @[AXI4LiteNode.scala 357:20]
      end
    end
    if (_T_1) begin // @[ControllerAXI.scala 16:35]
      user_key_reg1 <= 32'h0; // @[ControllerAXI.scala 16:35]
    end else if (wReady) begin // @[AXI4LiteNode.scala 326:15]
      if (awSkidBuffer_deq_bits_addr[5:2] == 4'h4) begin // @[AXI4LiteNode.scala 349:71]
        user_key_reg1 <= _source_addr_setwork_reg_T; // @[AXI4LiteNode.scala 357:20]
      end
    end
    if (_T_1) begin // @[ControllerAXI.scala 17:35]
      user_key_reg2 <= 32'h0; // @[ControllerAXI.scala 17:35]
    end else if (wReady) begin // @[AXI4LiteNode.scala 326:15]
      if (awSkidBuffer_deq_bits_addr[5:2] == 4'h5) begin // @[AXI4LiteNode.scala 349:71]
        user_key_reg2 <= _source_addr_setwork_reg_T; // @[AXI4LiteNode.scala 357:20]
      end
    end
    if (_T_1) begin // @[ControllerAXI.scala 18:35]
      user_key_reg3 <= 32'h0; // @[ControllerAXI.scala 18:35]
    end else if (wReady) begin // @[AXI4LiteNode.scala 326:15]
      if (awSkidBuffer_deq_bits_addr[5:2] == 4'h6) begin // @[AXI4LiteNode.scala 349:71]
        user_key_reg3 <= _source_addr_setwork_reg_T; // @[AXI4LiteNode.scala 357:20]
      end
    end
    if (_T_1) begin // @[ControllerAXI.scala 19:37]
      key_control_reg <= 32'h0; // @[ControllerAXI.scala 19:37]
    end else if (wReady) begin // @[AXI4LiteNode.scala 326:15]
      if (awSkidBuffer_deq_bits_addr[5:2] == 4'h7) begin // @[AXI4LiteNode.scala 349:71]
        key_control_reg <= _source_addr_setwork_reg_T; // @[AXI4LiteNode.scala 357:20]
      end
    end
    if (_T_1) begin // @[ControllerAXI.scala 20:32]
      status_reg <= 32'h0; // @[ControllerAXI.scala 20:32]
    end else begin
      status_reg <= {{29'd0}, _T_127}; // @[ControllerAXI.scala 31:16]
    end
    if (_T_1) begin // @[AXI4LiteNode.scala 266:33]
      rdataReg <= 32'h0; // @[AXI4LiteNode.scala 266:33]
    end else if (rReady) begin // @[AXI4LiteNode.scala 333:15]
      if (S00_AXI_ARADDR[5:2] == 4'h8) begin // @[AXI4LiteNode.scala 369:64]
        rdataReg <= status_reg; // @[AXI4LiteNode.scala 370:17]
      end
    end
    if (_T_1) begin // @[AXI4LiteNode.scala 271:32]
      rValidReg <= 1'h0; // @[AXI4LiteNode.scala 271:32]
    end else begin
      rValidReg <= _GEN_85;
    end
    if (_T_1) begin // @[AXI4LiteNode.scala 272:32]
      bValidReg <= 1'h0; // @[AXI4LiteNode.scala 272:32]
    end else begin
      bValidReg <= _GEN_81;
    end
    if (_T_1) begin // @[AXI4LiteNode.scala 472:36]
      startWriteReg <= 1'h0; // @[AXI4LiteNode.scala 472:36]
    end else if (3'h0 == STM) begin // @[ControllerAXI.scala 128:17]
      startWriteReg <= _GEN_109;
    end else if (3'h1 == STM) begin // @[ControllerAXI.scala 128:17]
      startWriteReg <= _GEN_109;
    end else if (3'h3 == STM) begin // @[ControllerAXI.scala 128:17]
      startWriteReg <= _GEN_159;
    end else begin
      startWriteReg <= _GEN_199;
    end
    if (_T_1) begin // @[AXI4LiteNode.scala 475:31]
      wDataReg <= 32'h0; // @[AXI4LiteNode.scala 475:31]
    end else if (3'h0 == STM) begin // @[ControllerAXI.scala 128:17]
      wDataReg <= _GEN_106;
    end else if (3'h1 == STM) begin // @[ControllerAXI.scala 128:17]
      wDataReg <= _GEN_106;
    end else if (3'h3 == STM) begin // @[ControllerAXI.scala 128:17]
      wDataReg <= _GEN_156;
    end else begin
      wDataReg <= _GEN_196;
    end
    if (_T_1) begin // @[AXI4LiteNode.scala 476:33]
      wStrobeReg <= 4'h0; // @[AXI4LiteNode.scala 476:33]
    end else if (3'h0 == STM) begin // @[ControllerAXI.scala 128:17]
      wStrobeReg <= _GEN_108;
    end else if (3'h1 == STM) begin // @[ControllerAXI.scala 128:17]
      wStrobeReg <= _GEN_108;
    end else if (3'h3 == STM) begin // @[ControllerAXI.scala 128:17]
      wStrobeReg <= _GEN_158;
    end else begin
      wStrobeReg <= _GEN_198;
    end
    if (_T_1) begin // @[AXI4LiteNode.scala 477:31]
      wAddrReg <= 32'h0; // @[AXI4LiteNode.scala 477:31]
    end else if (3'h0 == STM) begin // @[ControllerAXI.scala 128:17]
      if (_T_130) begin // @[ControllerAXI.scala 130:41]
        wAddrReg <= 32'h30; // @[AXI4LiteNode.scala 583:13]
      end
    end else if (3'h1 == STM) begin // @[ControllerAXI.scala 128:17]
      if (_T_130) begin // @[ControllerAXI.scala 136:41]
        wAddrReg <= 32'h0; // @[AXI4LiteNode.scala 583:13]
      end
    end else if (3'h3 == STM) begin // @[ControllerAXI.scala 128:17]
      wAddrReg <= _GEN_157;
    end else begin
      wAddrReg <= _GEN_197;
    end
    if (_T_1) begin // @[AXI4LiteNode.scala 478:32]
      wValidReg <= 1'h0; // @[AXI4LiteNode.scala 478:32]
    end else begin
      wValidReg <= _GEN_88;
    end
    if (_T_1) begin // @[AXI4LiteNode.scala 479:33]
      awValidReg <= 1'h0; // @[AXI4LiteNode.scala 479:33]
    end else begin
      awValidReg <= _GEN_91;
    end
    if (_T_1) begin // @[AXI4LiteNode.scala 481:32]
      bReadyReg <= 1'h0; // @[AXI4LiteNode.scala 481:32]
    end else begin
      bReadyReg <= _GEN_93;
    end
    ready2writeReg <= _T_1 | _GEN_225; // @[AXI4LiteNode.scala 490:{37,37}]
    if (_T_1) begin // @[AXI4StreamNode.scala 307:36]
      startWriteReg_1 <= 1'h0; // @[AXI4StreamNode.scala 307:36]
    end else begin
      startWriteReg_1 <= _GEN_236;
    end
    if (_T_1) begin // @[AXI4StreamNode.scala 308:37]
      axisSignalsReg_data <= 32'h0; // @[AXI4StreamNode.scala 308:37]
    end else if (DeqWire_ready) begin // @[ControllerAXI.scala 83:41]
      axisSignalsReg_data <= DeqWire_bits; // @[AXI4StreamNode.scala 343:24]
    end
    ready2writeReg_1 <= _T_1 | _GEN_237; // @[AXI4StreamNode.scala 321:{37,37}]
    if (_T_1) begin // @[AXI4StreamNode.scala 322:32]
      tValidReg <= 1'h0; // @[AXI4StreamNode.scala 322:32]
    end else begin
      tValidReg <= _GEN_104;
    end
    if (_T_1) begin // @[ControllerAXI.scala 124:22]
      STM <= 3'h0; // @[ControllerAXI.scala 124:22]
    end else if (3'h0 == STM) begin // @[ControllerAXI.scala 128:17]
      if (_T_130) begin // @[ControllerAXI.scala 130:41]
        STM <= 3'h1; // @[ControllerAXI.scala 132:15]
      end
    end else if (3'h1 == STM) begin // @[ControllerAXI.scala 128:17]
      if (_T_130) begin // @[ControllerAXI.scala 136:41]
        STM <= 3'h3; // @[ControllerAXI.scala 138:15]
      end
    end else if (3'h3 == STM) begin // @[ControllerAXI.scala 128:17]
      STM <= _GEN_162;
    end else begin
      STM <= _GEN_201;
    end
    if (_T_1) begin // @[ControllerAXI.scala 125:29]
      S2MM_FIRST <= 1'h0; // @[ControllerAXI.scala 125:29]
    end else if (!(3'h0 == STM)) begin // @[ControllerAXI.scala 128:17]
      if (!(3'h1 == STM)) begin // @[ControllerAXI.scala 128:17]
        if (!(3'h3 == STM)) begin // @[ControllerAXI.scala 128:17]
          S2MM_FIRST <= _GEN_202;
        end
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  source_addr_setwork_reg = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  dest_addr_setwork_reg = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  setwork_control_reg = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  user_key_reg0 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  user_key_reg1 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  user_key_reg2 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  user_key_reg3 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  key_control_reg = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  status_reg = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  rdataReg = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  rValidReg = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  bValidReg = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  startWriteReg = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  wDataReg = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  wStrobeReg = _RAND_14[3:0];
  _RAND_15 = {1{`RANDOM}};
  wAddrReg = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  wValidReg = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  awValidReg = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  bReadyReg = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  ready2writeReg = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  startWriteReg_1 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  axisSignalsReg_data = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  ready2writeReg_1 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  tValidReg = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  STM = _RAND_24[2:0];
  _RAND_25 = {1{`RANDOM}};
  S2MM_FIRST = _RAND_25[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
