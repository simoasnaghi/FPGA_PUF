// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Feb  9 00:10:19 2022
// Host        : DESKTOP-UV9HJ0O running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Simone/Desktop/finale/TacconiAsnaghi_PUF/TacconiAsnaghi_PUF.sim/enmapper_ECC_dut/impl/timing/xsim/tb_enmapper_ECC_time_impl.v
// Design      : Arbiter_PUF
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* CHALLENGE_BITS = "16" *) (* ECO_CHECKSUM = "a1d5071f" *) (* INDEX_BITS = "8" *) 
(* ITERATION = "8" *) (* RESPONSE_BITS = "8" *) (* ROW_NUMBER = "2" *) 
(* NotValidForBitStream *)
module Arbiter_PUF
   (clk,
    reset,
    start_in,
    challenge_in,
    response_out,
    control_out,
    valid_out);
  input clk;
  input reset;
  input start_in;
  input [15:0]challenge_in;
  output [7:0]response_out;
  output control_out;
  output valid_out;

  wire IBS_Standalone_inst_n_0;
  wire [15:0]challenge_in;
  wire [15:0]challenge_in_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire control_out;
  wire reset;
  wire reset2;
  wire reset_IBUF;
  wire [7:0]response_out;
  wire start1_reg_n_0;
  wire start_in;
  wire start_in_IBUF;
  wire valid_out;
  wire [7:0]NLW_IBS_Standalone_inst_out_UNCONNECTED;
  wire [7:0]NLW_starter_inst_out_UNCONNECTED;

initial begin
 $sdf_annotate("tb_enmapper_ECC_time_impl.sdf",,,,"tool_control");
end
  IBS_Standalone IBS_Standalone_inst
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out(NLW_IBS_Standalone_inst_out_UNCONNECTED[7:0]),
        .reset2(reset2),
        .reset_IBUF(reset_IBUF),
        .start1_reg(start1_reg_n_0),
        .start_in_IBUF(start_in_IBUF),
        .start_out_reg_0(IBS_Standalone_inst_n_0));
  IBUF \challenge_in_IBUF[0]_inst 
       (.I(challenge_in[0]),
        .O(challenge_in_IBUF[0]));
  IBUF \challenge_in_IBUF[10]_inst 
       (.I(challenge_in[10]),
        .O(challenge_in_IBUF[10]));
  IBUF \challenge_in_IBUF[11]_inst 
       (.I(challenge_in[11]),
        .O(challenge_in_IBUF[11]));
  IBUF \challenge_in_IBUF[12]_inst 
       (.I(challenge_in[12]),
        .O(challenge_in_IBUF[12]));
  IBUF \challenge_in_IBUF[13]_inst 
       (.I(challenge_in[13]),
        .O(challenge_in_IBUF[13]));
  IBUF \challenge_in_IBUF[14]_inst 
       (.I(challenge_in[14]),
        .O(challenge_in_IBUF[14]));
  IBUF \challenge_in_IBUF[15]_inst 
       (.I(challenge_in[15]),
        .O(challenge_in_IBUF[15]));
  IBUF \challenge_in_IBUF[1]_inst 
       (.I(challenge_in[1]),
        .O(challenge_in_IBUF[1]));
  IBUF \challenge_in_IBUF[2]_inst 
       (.I(challenge_in[2]),
        .O(challenge_in_IBUF[2]));
  IBUF \challenge_in_IBUF[3]_inst 
       (.I(challenge_in[3]),
        .O(challenge_in_IBUF[3]));
  IBUF \challenge_in_IBUF[4]_inst 
       (.I(challenge_in[4]),
        .O(challenge_in_IBUF[4]));
  IBUF \challenge_in_IBUF[5]_inst 
       (.I(challenge_in[5]),
        .O(challenge_in_IBUF[5]));
  IBUF \challenge_in_IBUF[6]_inst 
       (.I(challenge_in[6]),
        .O(challenge_in_IBUF[6]));
  IBUF \challenge_in_IBUF[7]_inst 
       (.I(challenge_in[7]),
        .O(challenge_in_IBUF[7]));
  IBUF \challenge_in_IBUF[8]_inst 
       (.I(challenge_in[8]),
        .O(challenge_in_IBUF[8]));
  IBUF \challenge_in_IBUF[9]_inst 
       (.I(challenge_in[9]),
        .O(challenge_in_IBUF[9]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF control_out_OBUF_inst
       (.I(1'b0),
        .O(control_out));
  FDSE #(
    .INIT(1'b1)) 
    reset2_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(start_in_IBUF),
        .Q(reset2),
        .S(reset_IBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  OBUF \response_out_OBUF[0]_inst 
       (.I(1'b0),
        .O(response_out[0]));
  OBUF \response_out_OBUF[1]_inst 
       (.I(1'b0),
        .O(response_out[1]));
  OBUF \response_out_OBUF[2]_inst 
       (.I(1'b0),
        .O(response_out[2]));
  OBUF \response_out_OBUF[3]_inst 
       (.I(1'b0),
        .O(response_out[3]));
  OBUF \response_out_OBUF[4]_inst 
       (.I(1'b0),
        .O(response_out[4]));
  OBUF \response_out_OBUF[5]_inst 
       (.I(1'b0),
        .O(response_out[5]));
  OBUF \response_out_OBUF[6]_inst 
       (.I(1'b0),
        .O(response_out[6]));
  OBUF \response_out_OBUF[7]_inst 
       (.I(1'b0),
        .O(response_out[7]));
  FDRE #(
    .INIT(1'b0)) 
    start1_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(IBS_Standalone_inst_n_0),
        .Q(start1_reg_n_0),
        .R(1'b0));
  IBUF start_in_IBUF_inst
       (.I(start_in),
        .O(start_in_IBUF));
  starter starter_inst
       (.\SINGLE_APUF_GENERATOR[7].trigger_down_reg_0 (start1_reg_n_0),
        .challenge_in(challenge_in_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out(NLW_starter_inst_out_UNCONNECTED[7:0]),
        .reset_IBUF(reset_IBUF));
  OBUF valid_out_OBUF_inst
       (.I(1'b0),
        .O(valid_out));
endmodule

module IBS_Standalone
   (start_out_reg_0,
    out,
    clk_IBUF_BUFG,
    start1_reg,
    reset_IBUF,
    start_in_IBUF,
    reset2);
  output start_out_reg_0;
  input [7:0]out;
  input clk_IBUF_BUFG;
  input start1_reg;
  input reset_IBUF;
  input start_in_IBUF;
  input reset2;

  wire clk_IBUF_BUFG;
  wire [0:0]current_state;
  wire reset2;
  wire reset_IBUF;
  wire start1_reg;
  wire start_from_en;
  wire start_in_IBUF;
  wire start_out;
  wire start_out_reg_0;

  enmapper_ECC enmapper_ECC_inst
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .current_state(current_state),
        .reset2(reset2));
  LUT4 #(
    .INIT(16'hCFCA)) 
    start1_i_1
       (.I0(start_out),
        .I1(start1_reg),
        .I2(reset_IBUF),
        .I3(start_in_IBUF),
        .O(start_out_reg_0));
  LUT1 #(
    .INIT(2'h1)) 
    start_out_i_1
       (.I0(current_state),
        .O(start_from_en));
  FDRE #(
    .INIT(1'b0)) 
    start_out_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(start_from_en),
        .Q(start_out),
        .R(1'b0));
endmodule

module arbiter
   (in0,
    response_out_reg_0,
    clk_IBUF_BUFG,
    out,
    response_out_reg_1);
  output [0:0]in0;
  input response_out_reg_0;
  input clk_IBUF_BUFG;
  input out;
  input response_out_reg_1;


endmodule

(* ORIG_REF_NAME = "arbiter" *) 
module arbiter_0
   (in0,
    response_out_reg_0,
    clk_IBUF_BUFG,
    out,
    response_out_reg_1);
  output [0:0]in0;
  input response_out_reg_0;
  input clk_IBUF_BUFG;
  input out;
  input response_out_reg_1;


endmodule

(* ORIG_REF_NAME = "arbiter" *) 
module arbiter_10
   (in0,
    reset,
    clk_IBUF_BUFG,
    reset_IBUF,
    out,
    response_out_reg_0);
  output [0:0]in0;
  output reset;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input out;
  input response_out_reg_0;


endmodule

(* ORIG_REF_NAME = "arbiter" *) 
module arbiter_12
   (in0,
    response_out_reg_0,
    clk_IBUF_BUFG,
    out,
    response_out_reg_1);
  output [0:0]in0;
  input response_out_reg_0;
  input clk_IBUF_BUFG;
  input out;
  input response_out_reg_1;


endmodule

(* ORIG_REF_NAME = "arbiter" *) 
module arbiter_2
   (in0,
    response_out_reg_0,
    clk_IBUF_BUFG,
    out,
    response_out_reg_1);
  output [0:0]in0;
  input response_out_reg_0;
  input clk_IBUF_BUFG;
  input out;
  input response_out_reg_1;


endmodule

(* ORIG_REF_NAME = "arbiter" *) 
module arbiter_4
   (in0,
    response_out_reg_0,
    clk_IBUF_BUFG,
    out,
    response_out_reg_1);
  output [0:0]in0;
  input response_out_reg_0;
  input clk_IBUF_BUFG;
  input out;
  input response_out_reg_1;


endmodule

(* ORIG_REF_NAME = "arbiter" *) 
module arbiter_6
   (in0,
    response_out_reg_0,
    clk_IBUF_BUFG,
    out,
    response_out_reg_1);
  output [0:0]in0;
  input response_out_reg_0;
  input clk_IBUF_BUFG;
  input out;
  input response_out_reg_1;


endmodule

(* ORIG_REF_NAME = "arbiter" *) 
module arbiter_8
   (in0,
    response_out_reg_0,
    clk_IBUF_BUFG,
    out,
    response_out_reg_1);
  output [0:0]in0;
  input response_out_reg_0;
  input clk_IBUF_BUFG;
  input out;
  input response_out_reg_1;


endmodule

module enmapper_ECC
   (current_state,
    clk_IBUF_BUFG,
    reset2);
  output [0:0]current_state;
  input clk_IBUF_BUFG;
  input reset2;

  wire \FSM_sequential_current_state[0]_i_1_n_0 ;
  wire clk_IBUF_BUFG;
  wire [0:0]current_state;
  wire reset2;

  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(reset2),
        .I1(current_state),
        .O(\FSM_sequential_current_state[0]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "STORAGE_STATE:01,OUT_STATE:11,IDLE_STATE:00,COMPUTING_STATE:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_current_state[0]_i_1_n_0 ),
        .Q(current_state),
        .R(1'b0));
endmodule

module singlebitAPUF
   (up_chain_out,
    down_chain_out,
    trigger_up_in,
    trigger_down_in,
    challenge_in);
  output up_chain_out;
  output down_chain_out;
  input trigger_up_in;
  input trigger_down_in;
  input [15:0]challenge_in;

  wire [15:0]challenge_in;
  wire down_chain_out;
  (* DONT_TOUCH *) wire [14:0]mux_out_down;
  (* DONT_TOUCH *) wire [14:0]mux_out_up;
  wire trigger_down_in;
  wire trigger_up_in;
  wire up_chain_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[0].LUT3_inst 
       (.I0(trigger_down_in),
        .I1(trigger_up_in),
        .I2(challenge_in[0]),
        .O(mux_out_down[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[10].LUT3_inst 
       (.I0(mux_out_down[9]),
        .I1(mux_out_up[9]),
        .I2(challenge_in[10]),
        .O(mux_out_down[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[11].LUT3_inst 
       (.I0(mux_out_down[10]),
        .I1(mux_out_up[10]),
        .I2(challenge_in[11]),
        .O(mux_out_down[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[12].LUT3_inst 
       (.I0(mux_out_down[11]),
        .I1(mux_out_up[11]),
        .I2(challenge_in[12]),
        .O(mux_out_down[12]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[13].LUT3_inst 
       (.I0(mux_out_down[12]),
        .I1(mux_out_up[12]),
        .I2(challenge_in[13]),
        .O(mux_out_down[13]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[14].LUT3_inst 
       (.I0(mux_out_down[13]),
        .I1(mux_out_up[13]),
        .I2(challenge_in[14]),
        .O(mux_out_down[14]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[15].LUT3_inst 
       (.I0(mux_out_down[14]),
        .I1(mux_out_up[14]),
        .I2(challenge_in[15]),
        .O(down_chain_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[1].LUT3_inst 
       (.I0(mux_out_down[0]),
        .I1(mux_out_up[0]),
        .I2(challenge_in[1]),
        .O(mux_out_down[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[2].LUT3_inst 
       (.I0(mux_out_down[1]),
        .I1(mux_out_up[1]),
        .I2(challenge_in[2]),
        .O(mux_out_down[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[3].LUT3_inst 
       (.I0(mux_out_down[2]),
        .I1(mux_out_up[2]),
        .I2(challenge_in[3]),
        .O(mux_out_down[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[4].LUT3_inst 
       (.I0(mux_out_down[3]),
        .I1(mux_out_up[3]),
        .I2(challenge_in[4]),
        .O(mux_out_down[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[5].LUT3_inst 
       (.I0(mux_out_down[4]),
        .I1(mux_out_up[4]),
        .I2(challenge_in[5]),
        .O(mux_out_down[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[6].LUT3_inst 
       (.I0(mux_out_down[5]),
        .I1(mux_out_up[5]),
        .I2(challenge_in[6]),
        .O(mux_out_down[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[7].LUT3_inst 
       (.I0(mux_out_down[6]),
        .I1(mux_out_up[6]),
        .I2(challenge_in[7]),
        .O(mux_out_down[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[8].LUT3_inst 
       (.I0(mux_out_down[7]),
        .I1(mux_out_up[7]),
        .I2(challenge_in[8]),
        .O(mux_out_down[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[9].LUT3_inst 
       (.I0(mux_out_down[8]),
        .I1(mux_out_up[8]),
        .I2(challenge_in[9]),
        .O(mux_out_down[9]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[0].LUT3_inst 
       (.I0(trigger_up_in),
        .I1(trigger_down_in),
        .I2(challenge_in[0]),
        .O(mux_out_up[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[10].LUT3_inst 
       (.I0(mux_out_up[9]),
        .I1(mux_out_down[9]),
        .I2(challenge_in[10]),
        .O(mux_out_up[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[11].LUT3_inst 
       (.I0(mux_out_up[10]),
        .I1(mux_out_down[10]),
        .I2(challenge_in[11]),
        .O(mux_out_up[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[12].LUT3_inst 
       (.I0(mux_out_up[11]),
        .I1(mux_out_down[11]),
        .I2(challenge_in[12]),
        .O(mux_out_up[12]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[13].LUT3_inst 
       (.I0(mux_out_up[12]),
        .I1(mux_out_down[12]),
        .I2(challenge_in[13]),
        .O(mux_out_up[13]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[14].LUT3_inst 
       (.I0(mux_out_up[13]),
        .I1(mux_out_down[13]),
        .I2(challenge_in[14]),
        .O(mux_out_up[14]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[15].LUT3_inst 
       (.I0(mux_out_up[14]),
        .I1(mux_out_down[14]),
        .I2(challenge_in[15]),
        .O(up_chain_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[1].LUT3_inst 
       (.I0(mux_out_up[0]),
        .I1(mux_out_down[0]),
        .I2(challenge_in[1]),
        .O(mux_out_up[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[2].LUT3_inst 
       (.I0(mux_out_up[1]),
        .I1(mux_out_down[1]),
        .I2(challenge_in[2]),
        .O(mux_out_up[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[3].LUT3_inst 
       (.I0(mux_out_up[2]),
        .I1(mux_out_down[2]),
        .I2(challenge_in[3]),
        .O(mux_out_up[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[4].LUT3_inst 
       (.I0(mux_out_up[3]),
        .I1(mux_out_down[3]),
        .I2(challenge_in[4]),
        .O(mux_out_up[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[5].LUT3_inst 
       (.I0(mux_out_up[4]),
        .I1(mux_out_down[4]),
        .I2(challenge_in[5]),
        .O(mux_out_up[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[6].LUT3_inst 
       (.I0(mux_out_up[5]),
        .I1(mux_out_down[5]),
        .I2(challenge_in[6]),
        .O(mux_out_up[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[7].LUT3_inst 
       (.I0(mux_out_up[6]),
        .I1(mux_out_down[6]),
        .I2(challenge_in[7]),
        .O(mux_out_up[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[8].LUT3_inst 
       (.I0(mux_out_up[7]),
        .I1(mux_out_down[7]),
        .I2(challenge_in[8]),
        .O(mux_out_up[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[9].LUT3_inst 
       (.I0(mux_out_up[8]),
        .I1(mux_out_down[8]),
        .I2(challenge_in[9]),
        .O(mux_out_up[9]));
endmodule

(* ORIG_REF_NAME = "singlebitAPUF" *) 
module singlebitAPUF_1
   (up_chain_out,
    down_chain_out,
    trigger_up_in,
    trigger_down_in,
    challenge_in);
  output up_chain_out;
  output down_chain_out;
  input trigger_up_in;
  input trigger_down_in;
  input [15:0]challenge_in;

  wire [15:0]challenge_in;
  wire down_chain_out;
  (* DONT_TOUCH *) wire [14:0]mux_out_down;
  (* DONT_TOUCH *) wire [14:0]mux_out_up;
  wire trigger_down_in;
  wire trigger_up_in;
  wire up_chain_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[0].LUT3_inst 
       (.I0(trigger_down_in),
        .I1(trigger_up_in),
        .I2(challenge_in[0]),
        .O(mux_out_down[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[10].LUT3_inst 
       (.I0(mux_out_down[9]),
        .I1(mux_out_up[9]),
        .I2(challenge_in[10]),
        .O(mux_out_down[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[11].LUT3_inst 
       (.I0(mux_out_down[10]),
        .I1(mux_out_up[10]),
        .I2(challenge_in[11]),
        .O(mux_out_down[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[12].LUT3_inst 
       (.I0(mux_out_down[11]),
        .I1(mux_out_up[11]),
        .I2(challenge_in[12]),
        .O(mux_out_down[12]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[13].LUT3_inst 
       (.I0(mux_out_down[12]),
        .I1(mux_out_up[12]),
        .I2(challenge_in[13]),
        .O(mux_out_down[13]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[14].LUT3_inst 
       (.I0(mux_out_down[13]),
        .I1(mux_out_up[13]),
        .I2(challenge_in[14]),
        .O(mux_out_down[14]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[15].LUT3_inst 
       (.I0(mux_out_down[14]),
        .I1(mux_out_up[14]),
        .I2(challenge_in[15]),
        .O(down_chain_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[1].LUT3_inst 
       (.I0(mux_out_down[0]),
        .I1(mux_out_up[0]),
        .I2(challenge_in[1]),
        .O(mux_out_down[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[2].LUT3_inst 
       (.I0(mux_out_down[1]),
        .I1(mux_out_up[1]),
        .I2(challenge_in[2]),
        .O(mux_out_down[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[3].LUT3_inst 
       (.I0(mux_out_down[2]),
        .I1(mux_out_up[2]),
        .I2(challenge_in[3]),
        .O(mux_out_down[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[4].LUT3_inst 
       (.I0(mux_out_down[3]),
        .I1(mux_out_up[3]),
        .I2(challenge_in[4]),
        .O(mux_out_down[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[5].LUT3_inst 
       (.I0(mux_out_down[4]),
        .I1(mux_out_up[4]),
        .I2(challenge_in[5]),
        .O(mux_out_down[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[6].LUT3_inst 
       (.I0(mux_out_down[5]),
        .I1(mux_out_up[5]),
        .I2(challenge_in[6]),
        .O(mux_out_down[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[7].LUT3_inst 
       (.I0(mux_out_down[6]),
        .I1(mux_out_up[6]),
        .I2(challenge_in[7]),
        .O(mux_out_down[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[8].LUT3_inst 
       (.I0(mux_out_down[7]),
        .I1(mux_out_up[7]),
        .I2(challenge_in[8]),
        .O(mux_out_down[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[9].LUT3_inst 
       (.I0(mux_out_down[8]),
        .I1(mux_out_up[8]),
        .I2(challenge_in[9]),
        .O(mux_out_down[9]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[0].LUT3_inst 
       (.I0(trigger_up_in),
        .I1(trigger_down_in),
        .I2(challenge_in[0]),
        .O(mux_out_up[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[10].LUT3_inst 
       (.I0(mux_out_up[9]),
        .I1(mux_out_down[9]),
        .I2(challenge_in[10]),
        .O(mux_out_up[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[11].LUT3_inst 
       (.I0(mux_out_up[10]),
        .I1(mux_out_down[10]),
        .I2(challenge_in[11]),
        .O(mux_out_up[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[12].LUT3_inst 
       (.I0(mux_out_up[11]),
        .I1(mux_out_down[11]),
        .I2(challenge_in[12]),
        .O(mux_out_up[12]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[13].LUT3_inst 
       (.I0(mux_out_up[12]),
        .I1(mux_out_down[12]),
        .I2(challenge_in[13]),
        .O(mux_out_up[13]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[14].LUT3_inst 
       (.I0(mux_out_up[13]),
        .I1(mux_out_down[13]),
        .I2(challenge_in[14]),
        .O(mux_out_up[14]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[15].LUT3_inst 
       (.I0(mux_out_up[14]),
        .I1(mux_out_down[14]),
        .I2(challenge_in[15]),
        .O(up_chain_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[1].LUT3_inst 
       (.I0(mux_out_up[0]),
        .I1(mux_out_down[0]),
        .I2(challenge_in[1]),
        .O(mux_out_up[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[2].LUT3_inst 
       (.I0(mux_out_up[1]),
        .I1(mux_out_down[1]),
        .I2(challenge_in[2]),
        .O(mux_out_up[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[3].LUT3_inst 
       (.I0(mux_out_up[2]),
        .I1(mux_out_down[2]),
        .I2(challenge_in[3]),
        .O(mux_out_up[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[4].LUT3_inst 
       (.I0(mux_out_up[3]),
        .I1(mux_out_down[3]),
        .I2(challenge_in[4]),
        .O(mux_out_up[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[5].LUT3_inst 
       (.I0(mux_out_up[4]),
        .I1(mux_out_down[4]),
        .I2(challenge_in[5]),
        .O(mux_out_up[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[6].LUT3_inst 
       (.I0(mux_out_up[5]),
        .I1(mux_out_down[5]),
        .I2(challenge_in[6]),
        .O(mux_out_up[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[7].LUT3_inst 
       (.I0(mux_out_up[6]),
        .I1(mux_out_down[6]),
        .I2(challenge_in[7]),
        .O(mux_out_up[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[8].LUT3_inst 
       (.I0(mux_out_up[7]),
        .I1(mux_out_down[7]),
        .I2(challenge_in[8]),
        .O(mux_out_up[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[9].LUT3_inst 
       (.I0(mux_out_up[8]),
        .I1(mux_out_down[8]),
        .I2(challenge_in[9]),
        .O(mux_out_up[9]));
endmodule

(* ORIG_REF_NAME = "singlebitAPUF" *) 
module singlebitAPUF_11
   (up_chain_out,
    down_chain_out,
    trigger_up_in,
    trigger_down_in,
    challenge_in);
  output up_chain_out;
  output down_chain_out;
  input trigger_up_in;
  input trigger_down_in;
  input [15:0]challenge_in;

  wire [15:0]challenge_in;
  wire down_chain_out;
  (* DONT_TOUCH *) wire [14:0]mux_out_down;
  (* DONT_TOUCH *) wire [14:0]mux_out_up;
  wire trigger_down_in;
  wire trigger_up_in;
  wire up_chain_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[0].LUT3_inst 
       (.I0(trigger_down_in),
        .I1(trigger_up_in),
        .I2(challenge_in[0]),
        .O(mux_out_down[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[10].LUT3_inst 
       (.I0(mux_out_down[9]),
        .I1(mux_out_up[9]),
        .I2(challenge_in[10]),
        .O(mux_out_down[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[11].LUT3_inst 
       (.I0(mux_out_down[10]),
        .I1(mux_out_up[10]),
        .I2(challenge_in[11]),
        .O(mux_out_down[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[12].LUT3_inst 
       (.I0(mux_out_down[11]),
        .I1(mux_out_up[11]),
        .I2(challenge_in[12]),
        .O(mux_out_down[12]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[13].LUT3_inst 
       (.I0(mux_out_down[12]),
        .I1(mux_out_up[12]),
        .I2(challenge_in[13]),
        .O(mux_out_down[13]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[14].LUT3_inst 
       (.I0(mux_out_down[13]),
        .I1(mux_out_up[13]),
        .I2(challenge_in[14]),
        .O(mux_out_down[14]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[15].LUT3_inst 
       (.I0(mux_out_down[14]),
        .I1(mux_out_up[14]),
        .I2(challenge_in[15]),
        .O(down_chain_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[1].LUT3_inst 
       (.I0(mux_out_down[0]),
        .I1(mux_out_up[0]),
        .I2(challenge_in[1]),
        .O(mux_out_down[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[2].LUT3_inst 
       (.I0(mux_out_down[1]),
        .I1(mux_out_up[1]),
        .I2(challenge_in[2]),
        .O(mux_out_down[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[3].LUT3_inst 
       (.I0(mux_out_down[2]),
        .I1(mux_out_up[2]),
        .I2(challenge_in[3]),
        .O(mux_out_down[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[4].LUT3_inst 
       (.I0(mux_out_down[3]),
        .I1(mux_out_up[3]),
        .I2(challenge_in[4]),
        .O(mux_out_down[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[5].LUT3_inst 
       (.I0(mux_out_down[4]),
        .I1(mux_out_up[4]),
        .I2(challenge_in[5]),
        .O(mux_out_down[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[6].LUT3_inst 
       (.I0(mux_out_down[5]),
        .I1(mux_out_up[5]),
        .I2(challenge_in[6]),
        .O(mux_out_down[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[7].LUT3_inst 
       (.I0(mux_out_down[6]),
        .I1(mux_out_up[6]),
        .I2(challenge_in[7]),
        .O(mux_out_down[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[8].LUT3_inst 
       (.I0(mux_out_down[7]),
        .I1(mux_out_up[7]),
        .I2(challenge_in[8]),
        .O(mux_out_down[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[9].LUT3_inst 
       (.I0(mux_out_down[8]),
        .I1(mux_out_up[8]),
        .I2(challenge_in[9]),
        .O(mux_out_down[9]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[0].LUT3_inst 
       (.I0(trigger_up_in),
        .I1(trigger_down_in),
        .I2(challenge_in[0]),
        .O(mux_out_up[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[10].LUT3_inst 
       (.I0(mux_out_up[9]),
        .I1(mux_out_down[9]),
        .I2(challenge_in[10]),
        .O(mux_out_up[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[11].LUT3_inst 
       (.I0(mux_out_up[10]),
        .I1(mux_out_down[10]),
        .I2(challenge_in[11]),
        .O(mux_out_up[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[12].LUT3_inst 
       (.I0(mux_out_up[11]),
        .I1(mux_out_down[11]),
        .I2(challenge_in[12]),
        .O(mux_out_up[12]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[13].LUT3_inst 
       (.I0(mux_out_up[12]),
        .I1(mux_out_down[12]),
        .I2(challenge_in[13]),
        .O(mux_out_up[13]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[14].LUT3_inst 
       (.I0(mux_out_up[13]),
        .I1(mux_out_down[13]),
        .I2(challenge_in[14]),
        .O(mux_out_up[14]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[15].LUT3_inst 
       (.I0(mux_out_up[14]),
        .I1(mux_out_down[14]),
        .I2(challenge_in[15]),
        .O(up_chain_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[1].LUT3_inst 
       (.I0(mux_out_up[0]),
        .I1(mux_out_down[0]),
        .I2(challenge_in[1]),
        .O(mux_out_up[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[2].LUT3_inst 
       (.I0(mux_out_up[1]),
        .I1(mux_out_down[1]),
        .I2(challenge_in[2]),
        .O(mux_out_up[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[3].LUT3_inst 
       (.I0(mux_out_up[2]),
        .I1(mux_out_down[2]),
        .I2(challenge_in[3]),
        .O(mux_out_up[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[4].LUT3_inst 
       (.I0(mux_out_up[3]),
        .I1(mux_out_down[3]),
        .I2(challenge_in[4]),
        .O(mux_out_up[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[5].LUT3_inst 
       (.I0(mux_out_up[4]),
        .I1(mux_out_down[4]),
        .I2(challenge_in[5]),
        .O(mux_out_up[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[6].LUT3_inst 
       (.I0(mux_out_up[5]),
        .I1(mux_out_down[5]),
        .I2(challenge_in[6]),
        .O(mux_out_up[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[7].LUT3_inst 
       (.I0(mux_out_up[6]),
        .I1(mux_out_down[6]),
        .I2(challenge_in[7]),
        .O(mux_out_up[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[8].LUT3_inst 
       (.I0(mux_out_up[7]),
        .I1(mux_out_down[7]),
        .I2(challenge_in[8]),
        .O(mux_out_up[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[9].LUT3_inst 
       (.I0(mux_out_up[8]),
        .I1(mux_out_down[8]),
        .I2(challenge_in[9]),
        .O(mux_out_up[9]));
endmodule

(* ORIG_REF_NAME = "singlebitAPUF" *) 
module singlebitAPUF_13
   (up_chain_out,
    down_chain_out,
    trigger_up_in,
    trigger_down_in,
    challenge_in);
  output up_chain_out;
  output down_chain_out;
  input trigger_up_in;
  input trigger_down_in;
  input [15:0]challenge_in;

  wire [15:0]challenge_in;
  wire down_chain_out;
  (* DONT_TOUCH *) wire [14:0]mux_out_down;
  (* DONT_TOUCH *) wire [14:0]mux_out_up;
  wire trigger_down_in;
  wire trigger_up_in;
  wire up_chain_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[0].LUT3_inst 
       (.I0(trigger_down_in),
        .I1(trigger_up_in),
        .I2(challenge_in[0]),
        .O(mux_out_down[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[10].LUT3_inst 
       (.I0(mux_out_down[9]),
        .I1(mux_out_up[9]),
        .I2(challenge_in[10]),
        .O(mux_out_down[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[11].LUT3_inst 
       (.I0(mux_out_down[10]),
        .I1(mux_out_up[10]),
        .I2(challenge_in[11]),
        .O(mux_out_down[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[12].LUT3_inst 
       (.I0(mux_out_down[11]),
        .I1(mux_out_up[11]),
        .I2(challenge_in[12]),
        .O(mux_out_down[12]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[13].LUT3_inst 
       (.I0(mux_out_down[12]),
        .I1(mux_out_up[12]),
        .I2(challenge_in[13]),
        .O(mux_out_down[13]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[14].LUT3_inst 
       (.I0(mux_out_down[13]),
        .I1(mux_out_up[13]),
        .I2(challenge_in[14]),
        .O(mux_out_down[14]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[15].LUT3_inst 
       (.I0(mux_out_down[14]),
        .I1(mux_out_up[14]),
        .I2(challenge_in[15]),
        .O(down_chain_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[1].LUT3_inst 
       (.I0(mux_out_down[0]),
        .I1(mux_out_up[0]),
        .I2(challenge_in[1]),
        .O(mux_out_down[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[2].LUT3_inst 
       (.I0(mux_out_down[1]),
        .I1(mux_out_up[1]),
        .I2(challenge_in[2]),
        .O(mux_out_down[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[3].LUT3_inst 
       (.I0(mux_out_down[2]),
        .I1(mux_out_up[2]),
        .I2(challenge_in[3]),
        .O(mux_out_down[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[4].LUT3_inst 
       (.I0(mux_out_down[3]),
        .I1(mux_out_up[3]),
        .I2(challenge_in[4]),
        .O(mux_out_down[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[5].LUT3_inst 
       (.I0(mux_out_down[4]),
        .I1(mux_out_up[4]),
        .I2(challenge_in[5]),
        .O(mux_out_down[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[6].LUT3_inst 
       (.I0(mux_out_down[5]),
        .I1(mux_out_up[5]),
        .I2(challenge_in[6]),
        .O(mux_out_down[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[7].LUT3_inst 
       (.I0(mux_out_down[6]),
        .I1(mux_out_up[6]),
        .I2(challenge_in[7]),
        .O(mux_out_down[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[8].LUT3_inst 
       (.I0(mux_out_down[7]),
        .I1(mux_out_up[7]),
        .I2(challenge_in[8]),
        .O(mux_out_down[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[9].LUT3_inst 
       (.I0(mux_out_down[8]),
        .I1(mux_out_up[8]),
        .I2(challenge_in[9]),
        .O(mux_out_down[9]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[0].LUT3_inst 
       (.I0(trigger_up_in),
        .I1(trigger_down_in),
        .I2(challenge_in[0]),
        .O(mux_out_up[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[10].LUT3_inst 
       (.I0(mux_out_up[9]),
        .I1(mux_out_down[9]),
        .I2(challenge_in[10]),
        .O(mux_out_up[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[11].LUT3_inst 
       (.I0(mux_out_up[10]),
        .I1(mux_out_down[10]),
        .I2(challenge_in[11]),
        .O(mux_out_up[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[12].LUT3_inst 
       (.I0(mux_out_up[11]),
        .I1(mux_out_down[11]),
        .I2(challenge_in[12]),
        .O(mux_out_up[12]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[13].LUT3_inst 
       (.I0(mux_out_up[12]),
        .I1(mux_out_down[12]),
        .I2(challenge_in[13]),
        .O(mux_out_up[13]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[14].LUT3_inst 
       (.I0(mux_out_up[13]),
        .I1(mux_out_down[13]),
        .I2(challenge_in[14]),
        .O(mux_out_up[14]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[15].LUT3_inst 
       (.I0(mux_out_up[14]),
        .I1(mux_out_down[14]),
        .I2(challenge_in[15]),
        .O(up_chain_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[1].LUT3_inst 
       (.I0(mux_out_up[0]),
        .I1(mux_out_down[0]),
        .I2(challenge_in[1]),
        .O(mux_out_up[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[2].LUT3_inst 
       (.I0(mux_out_up[1]),
        .I1(mux_out_down[1]),
        .I2(challenge_in[2]),
        .O(mux_out_up[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[3].LUT3_inst 
       (.I0(mux_out_up[2]),
        .I1(mux_out_down[2]),
        .I2(challenge_in[3]),
        .O(mux_out_up[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[4].LUT3_inst 
       (.I0(mux_out_up[3]),
        .I1(mux_out_down[3]),
        .I2(challenge_in[4]),
        .O(mux_out_up[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[5].LUT3_inst 
       (.I0(mux_out_up[4]),
        .I1(mux_out_down[4]),
        .I2(challenge_in[5]),
        .O(mux_out_up[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[6].LUT3_inst 
       (.I0(mux_out_up[5]),
        .I1(mux_out_down[5]),
        .I2(challenge_in[6]),
        .O(mux_out_up[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[7].LUT3_inst 
       (.I0(mux_out_up[6]),
        .I1(mux_out_down[6]),
        .I2(challenge_in[7]),
        .O(mux_out_up[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[8].LUT3_inst 
       (.I0(mux_out_up[7]),
        .I1(mux_out_down[7]),
        .I2(challenge_in[8]),
        .O(mux_out_up[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[9].LUT3_inst 
       (.I0(mux_out_up[8]),
        .I1(mux_out_down[8]),
        .I2(challenge_in[9]),
        .O(mux_out_up[9]));
endmodule

(* ORIG_REF_NAME = "singlebitAPUF" *) 
module singlebitAPUF_3
   (up_chain_out,
    down_chain_out,
    trigger_up_in,
    trigger_down_in,
    challenge_in);
  output up_chain_out;
  output down_chain_out;
  input trigger_up_in;
  input trigger_down_in;
  input [15:0]challenge_in;

  wire [15:0]challenge_in;
  wire down_chain_out;
  (* DONT_TOUCH *) wire [14:0]mux_out_down;
  (* DONT_TOUCH *) wire [14:0]mux_out_up;
  wire trigger_down_in;
  wire trigger_up_in;
  wire up_chain_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[0].LUT3_inst 
       (.I0(trigger_down_in),
        .I1(trigger_up_in),
        .I2(challenge_in[0]),
        .O(mux_out_down[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[10].LUT3_inst 
       (.I0(mux_out_down[9]),
        .I1(mux_out_up[9]),
        .I2(challenge_in[10]),
        .O(mux_out_down[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[11].LUT3_inst 
       (.I0(mux_out_down[10]),
        .I1(mux_out_up[10]),
        .I2(challenge_in[11]),
        .O(mux_out_down[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[12].LUT3_inst 
       (.I0(mux_out_down[11]),
        .I1(mux_out_up[11]),
        .I2(challenge_in[12]),
        .O(mux_out_down[12]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[13].LUT3_inst 
       (.I0(mux_out_down[12]),
        .I1(mux_out_up[12]),
        .I2(challenge_in[13]),
        .O(mux_out_down[13]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[14].LUT3_inst 
       (.I0(mux_out_down[13]),
        .I1(mux_out_up[13]),
        .I2(challenge_in[14]),
        .O(mux_out_down[14]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[15].LUT3_inst 
       (.I0(mux_out_down[14]),
        .I1(mux_out_up[14]),
        .I2(challenge_in[15]),
        .O(down_chain_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[1].LUT3_inst 
       (.I0(mux_out_down[0]),
        .I1(mux_out_up[0]),
        .I2(challenge_in[1]),
        .O(mux_out_down[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[2].LUT3_inst 
       (.I0(mux_out_down[1]),
        .I1(mux_out_up[1]),
        .I2(challenge_in[2]),
        .O(mux_out_down[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[3].LUT3_inst 
       (.I0(mux_out_down[2]),
        .I1(mux_out_up[2]),
        .I2(challenge_in[3]),
        .O(mux_out_down[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[4].LUT3_inst 
       (.I0(mux_out_down[3]),
        .I1(mux_out_up[3]),
        .I2(challenge_in[4]),
        .O(mux_out_down[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[5].LUT3_inst 
       (.I0(mux_out_down[4]),
        .I1(mux_out_up[4]),
        .I2(challenge_in[5]),
        .O(mux_out_down[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[6].LUT3_inst 
       (.I0(mux_out_down[5]),
        .I1(mux_out_up[5]),
        .I2(challenge_in[6]),
        .O(mux_out_down[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[7].LUT3_inst 
       (.I0(mux_out_down[6]),
        .I1(mux_out_up[6]),
        .I2(challenge_in[7]),
        .O(mux_out_down[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[8].LUT3_inst 
       (.I0(mux_out_down[7]),
        .I1(mux_out_up[7]),
        .I2(challenge_in[8]),
        .O(mux_out_down[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[9].LUT3_inst 
       (.I0(mux_out_down[8]),
        .I1(mux_out_up[8]),
        .I2(challenge_in[9]),
        .O(mux_out_down[9]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[0].LUT3_inst 
       (.I0(trigger_up_in),
        .I1(trigger_down_in),
        .I2(challenge_in[0]),
        .O(mux_out_up[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[10].LUT3_inst 
       (.I0(mux_out_up[9]),
        .I1(mux_out_down[9]),
        .I2(challenge_in[10]),
        .O(mux_out_up[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[11].LUT3_inst 
       (.I0(mux_out_up[10]),
        .I1(mux_out_down[10]),
        .I2(challenge_in[11]),
        .O(mux_out_up[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[12].LUT3_inst 
       (.I0(mux_out_up[11]),
        .I1(mux_out_down[11]),
        .I2(challenge_in[12]),
        .O(mux_out_up[12]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[13].LUT3_inst 
       (.I0(mux_out_up[12]),
        .I1(mux_out_down[12]),
        .I2(challenge_in[13]),
        .O(mux_out_up[13]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[14].LUT3_inst 
       (.I0(mux_out_up[13]),
        .I1(mux_out_down[13]),
        .I2(challenge_in[14]),
        .O(mux_out_up[14]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[15].LUT3_inst 
       (.I0(mux_out_up[14]),
        .I1(mux_out_down[14]),
        .I2(challenge_in[15]),
        .O(up_chain_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[1].LUT3_inst 
       (.I0(mux_out_up[0]),
        .I1(mux_out_down[0]),
        .I2(challenge_in[1]),
        .O(mux_out_up[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[2].LUT3_inst 
       (.I0(mux_out_up[1]),
        .I1(mux_out_down[1]),
        .I2(challenge_in[2]),
        .O(mux_out_up[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[3].LUT3_inst 
       (.I0(mux_out_up[2]),
        .I1(mux_out_down[2]),
        .I2(challenge_in[3]),
        .O(mux_out_up[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[4].LUT3_inst 
       (.I0(mux_out_up[3]),
        .I1(mux_out_down[3]),
        .I2(challenge_in[4]),
        .O(mux_out_up[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[5].LUT3_inst 
       (.I0(mux_out_up[4]),
        .I1(mux_out_down[4]),
        .I2(challenge_in[5]),
        .O(mux_out_up[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[6].LUT3_inst 
       (.I0(mux_out_up[5]),
        .I1(mux_out_down[5]),
        .I2(challenge_in[6]),
        .O(mux_out_up[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[7].LUT3_inst 
       (.I0(mux_out_up[6]),
        .I1(mux_out_down[6]),
        .I2(challenge_in[7]),
        .O(mux_out_up[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[8].LUT3_inst 
       (.I0(mux_out_up[7]),
        .I1(mux_out_down[7]),
        .I2(challenge_in[8]),
        .O(mux_out_up[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[9].LUT3_inst 
       (.I0(mux_out_up[8]),
        .I1(mux_out_down[8]),
        .I2(challenge_in[9]),
        .O(mux_out_up[9]));
endmodule

(* ORIG_REF_NAME = "singlebitAPUF" *) 
module singlebitAPUF_5
   (up_chain_out,
    down_chain_out,
    trigger_up_in,
    trigger_down_in,
    challenge_in);
  output up_chain_out;
  output down_chain_out;
  input trigger_up_in;
  input trigger_down_in;
  input [15:0]challenge_in;

  wire [15:0]challenge_in;
  wire down_chain_out;
  (* DONT_TOUCH *) wire [14:0]mux_out_down;
  (* DONT_TOUCH *) wire [14:0]mux_out_up;
  wire trigger_down_in;
  wire trigger_up_in;
  wire up_chain_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[0].LUT3_inst 
       (.I0(trigger_down_in),
        .I1(trigger_up_in),
        .I2(challenge_in[0]),
        .O(mux_out_down[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[10].LUT3_inst 
       (.I0(mux_out_down[9]),
        .I1(mux_out_up[9]),
        .I2(challenge_in[10]),
        .O(mux_out_down[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[11].LUT3_inst 
       (.I0(mux_out_down[10]),
        .I1(mux_out_up[10]),
        .I2(challenge_in[11]),
        .O(mux_out_down[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[12].LUT3_inst 
       (.I0(mux_out_down[11]),
        .I1(mux_out_up[11]),
        .I2(challenge_in[12]),
        .O(mux_out_down[12]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[13].LUT3_inst 
       (.I0(mux_out_down[12]),
        .I1(mux_out_up[12]),
        .I2(challenge_in[13]),
        .O(mux_out_down[13]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[14].LUT3_inst 
       (.I0(mux_out_down[13]),
        .I1(mux_out_up[13]),
        .I2(challenge_in[14]),
        .O(mux_out_down[14]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[15].LUT3_inst 
       (.I0(mux_out_down[14]),
        .I1(mux_out_up[14]),
        .I2(challenge_in[15]),
        .O(down_chain_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[1].LUT3_inst 
       (.I0(mux_out_down[0]),
        .I1(mux_out_up[0]),
        .I2(challenge_in[1]),
        .O(mux_out_down[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[2].LUT3_inst 
       (.I0(mux_out_down[1]),
        .I1(mux_out_up[1]),
        .I2(challenge_in[2]),
        .O(mux_out_down[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[3].LUT3_inst 
       (.I0(mux_out_down[2]),
        .I1(mux_out_up[2]),
        .I2(challenge_in[3]),
        .O(mux_out_down[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[4].LUT3_inst 
       (.I0(mux_out_down[3]),
        .I1(mux_out_up[3]),
        .I2(challenge_in[4]),
        .O(mux_out_down[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[5].LUT3_inst 
       (.I0(mux_out_down[4]),
        .I1(mux_out_up[4]),
        .I2(challenge_in[5]),
        .O(mux_out_down[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[6].LUT3_inst 
       (.I0(mux_out_down[5]),
        .I1(mux_out_up[5]),
        .I2(challenge_in[6]),
        .O(mux_out_down[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[7].LUT3_inst 
       (.I0(mux_out_down[6]),
        .I1(mux_out_up[6]),
        .I2(challenge_in[7]),
        .O(mux_out_down[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[8].LUT3_inst 
       (.I0(mux_out_down[7]),
        .I1(mux_out_up[7]),
        .I2(challenge_in[8]),
        .O(mux_out_down[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[9].LUT3_inst 
       (.I0(mux_out_down[8]),
        .I1(mux_out_up[8]),
        .I2(challenge_in[9]),
        .O(mux_out_down[9]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[0].LUT3_inst 
       (.I0(trigger_up_in),
        .I1(trigger_down_in),
        .I2(challenge_in[0]),
        .O(mux_out_up[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[10].LUT3_inst 
       (.I0(mux_out_up[9]),
        .I1(mux_out_down[9]),
        .I2(challenge_in[10]),
        .O(mux_out_up[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[11].LUT3_inst 
       (.I0(mux_out_up[10]),
        .I1(mux_out_down[10]),
        .I2(challenge_in[11]),
        .O(mux_out_up[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[12].LUT3_inst 
       (.I0(mux_out_up[11]),
        .I1(mux_out_down[11]),
        .I2(challenge_in[12]),
        .O(mux_out_up[12]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[13].LUT3_inst 
       (.I0(mux_out_up[12]),
        .I1(mux_out_down[12]),
        .I2(challenge_in[13]),
        .O(mux_out_up[13]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[14].LUT3_inst 
       (.I0(mux_out_up[13]),
        .I1(mux_out_down[13]),
        .I2(challenge_in[14]),
        .O(mux_out_up[14]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[15].LUT3_inst 
       (.I0(mux_out_up[14]),
        .I1(mux_out_down[14]),
        .I2(challenge_in[15]),
        .O(up_chain_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[1].LUT3_inst 
       (.I0(mux_out_up[0]),
        .I1(mux_out_down[0]),
        .I2(challenge_in[1]),
        .O(mux_out_up[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[2].LUT3_inst 
       (.I0(mux_out_up[1]),
        .I1(mux_out_down[1]),
        .I2(challenge_in[2]),
        .O(mux_out_up[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[3].LUT3_inst 
       (.I0(mux_out_up[2]),
        .I1(mux_out_down[2]),
        .I2(challenge_in[3]),
        .O(mux_out_up[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[4].LUT3_inst 
       (.I0(mux_out_up[3]),
        .I1(mux_out_down[3]),
        .I2(challenge_in[4]),
        .O(mux_out_up[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[5].LUT3_inst 
       (.I0(mux_out_up[4]),
        .I1(mux_out_down[4]),
        .I2(challenge_in[5]),
        .O(mux_out_up[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[6].LUT3_inst 
       (.I0(mux_out_up[5]),
        .I1(mux_out_down[5]),
        .I2(challenge_in[6]),
        .O(mux_out_up[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[7].LUT3_inst 
       (.I0(mux_out_up[6]),
        .I1(mux_out_down[6]),
        .I2(challenge_in[7]),
        .O(mux_out_up[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[8].LUT3_inst 
       (.I0(mux_out_up[7]),
        .I1(mux_out_down[7]),
        .I2(challenge_in[8]),
        .O(mux_out_up[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[9].LUT3_inst 
       (.I0(mux_out_up[8]),
        .I1(mux_out_down[8]),
        .I2(challenge_in[9]),
        .O(mux_out_up[9]));
endmodule

(* ORIG_REF_NAME = "singlebitAPUF" *) 
module singlebitAPUF_7
   (up_chain_out,
    down_chain_out,
    trigger_up_in,
    trigger_down_in,
    challenge_in);
  output up_chain_out;
  output down_chain_out;
  input trigger_up_in;
  input trigger_down_in;
  input [15:0]challenge_in;

  wire [15:0]challenge_in;
  wire down_chain_out;
  (* DONT_TOUCH *) wire [14:0]mux_out_down;
  (* DONT_TOUCH *) wire [14:0]mux_out_up;
  wire trigger_down_in;
  wire trigger_up_in;
  wire up_chain_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[0].LUT3_inst 
       (.I0(trigger_down_in),
        .I1(trigger_up_in),
        .I2(challenge_in[0]),
        .O(mux_out_down[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[10].LUT3_inst 
       (.I0(mux_out_down[9]),
        .I1(mux_out_up[9]),
        .I2(challenge_in[10]),
        .O(mux_out_down[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[11].LUT3_inst 
       (.I0(mux_out_down[10]),
        .I1(mux_out_up[10]),
        .I2(challenge_in[11]),
        .O(mux_out_down[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[12].LUT3_inst 
       (.I0(mux_out_down[11]),
        .I1(mux_out_up[11]),
        .I2(challenge_in[12]),
        .O(mux_out_down[12]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[13].LUT3_inst 
       (.I0(mux_out_down[12]),
        .I1(mux_out_up[12]),
        .I2(challenge_in[13]),
        .O(mux_out_down[13]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[14].LUT3_inst 
       (.I0(mux_out_down[13]),
        .I1(mux_out_up[13]),
        .I2(challenge_in[14]),
        .O(mux_out_down[14]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[15].LUT3_inst 
       (.I0(mux_out_down[14]),
        .I1(mux_out_up[14]),
        .I2(challenge_in[15]),
        .O(down_chain_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[1].LUT3_inst 
       (.I0(mux_out_down[0]),
        .I1(mux_out_up[0]),
        .I2(challenge_in[1]),
        .O(mux_out_down[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[2].LUT3_inst 
       (.I0(mux_out_down[1]),
        .I1(mux_out_up[1]),
        .I2(challenge_in[2]),
        .O(mux_out_down[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[3].LUT3_inst 
       (.I0(mux_out_down[2]),
        .I1(mux_out_up[2]),
        .I2(challenge_in[3]),
        .O(mux_out_down[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[4].LUT3_inst 
       (.I0(mux_out_down[3]),
        .I1(mux_out_up[3]),
        .I2(challenge_in[4]),
        .O(mux_out_down[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[5].LUT3_inst 
       (.I0(mux_out_down[4]),
        .I1(mux_out_up[4]),
        .I2(challenge_in[5]),
        .O(mux_out_down[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[6].LUT3_inst 
       (.I0(mux_out_down[5]),
        .I1(mux_out_up[5]),
        .I2(challenge_in[6]),
        .O(mux_out_down[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[7].LUT3_inst 
       (.I0(mux_out_down[6]),
        .I1(mux_out_up[6]),
        .I2(challenge_in[7]),
        .O(mux_out_down[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[8].LUT3_inst 
       (.I0(mux_out_down[7]),
        .I1(mux_out_up[7]),
        .I2(challenge_in[8]),
        .O(mux_out_down[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[9].LUT3_inst 
       (.I0(mux_out_down[8]),
        .I1(mux_out_up[8]),
        .I2(challenge_in[9]),
        .O(mux_out_down[9]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[0].LUT3_inst 
       (.I0(trigger_up_in),
        .I1(trigger_down_in),
        .I2(challenge_in[0]),
        .O(mux_out_up[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[10].LUT3_inst 
       (.I0(mux_out_up[9]),
        .I1(mux_out_down[9]),
        .I2(challenge_in[10]),
        .O(mux_out_up[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[11].LUT3_inst 
       (.I0(mux_out_up[10]),
        .I1(mux_out_down[10]),
        .I2(challenge_in[11]),
        .O(mux_out_up[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[12].LUT3_inst 
       (.I0(mux_out_up[11]),
        .I1(mux_out_down[11]),
        .I2(challenge_in[12]),
        .O(mux_out_up[12]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[13].LUT3_inst 
       (.I0(mux_out_up[12]),
        .I1(mux_out_down[12]),
        .I2(challenge_in[13]),
        .O(mux_out_up[13]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[14].LUT3_inst 
       (.I0(mux_out_up[13]),
        .I1(mux_out_down[13]),
        .I2(challenge_in[14]),
        .O(mux_out_up[14]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[15].LUT3_inst 
       (.I0(mux_out_up[14]),
        .I1(mux_out_down[14]),
        .I2(challenge_in[15]),
        .O(up_chain_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[1].LUT3_inst 
       (.I0(mux_out_up[0]),
        .I1(mux_out_down[0]),
        .I2(challenge_in[1]),
        .O(mux_out_up[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[2].LUT3_inst 
       (.I0(mux_out_up[1]),
        .I1(mux_out_down[1]),
        .I2(challenge_in[2]),
        .O(mux_out_up[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[3].LUT3_inst 
       (.I0(mux_out_up[2]),
        .I1(mux_out_down[2]),
        .I2(challenge_in[3]),
        .O(mux_out_up[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[4].LUT3_inst 
       (.I0(mux_out_up[3]),
        .I1(mux_out_down[3]),
        .I2(challenge_in[4]),
        .O(mux_out_up[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[5].LUT3_inst 
       (.I0(mux_out_up[4]),
        .I1(mux_out_down[4]),
        .I2(challenge_in[5]),
        .O(mux_out_up[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[6].LUT3_inst 
       (.I0(mux_out_up[5]),
        .I1(mux_out_down[5]),
        .I2(challenge_in[6]),
        .O(mux_out_up[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[7].LUT3_inst 
       (.I0(mux_out_up[6]),
        .I1(mux_out_down[6]),
        .I2(challenge_in[7]),
        .O(mux_out_up[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[8].LUT3_inst 
       (.I0(mux_out_up[7]),
        .I1(mux_out_down[7]),
        .I2(challenge_in[8]),
        .O(mux_out_up[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[9].LUT3_inst 
       (.I0(mux_out_up[8]),
        .I1(mux_out_down[8]),
        .I2(challenge_in[9]),
        .O(mux_out_up[9]));
endmodule

(* ORIG_REF_NAME = "singlebitAPUF" *) 
module singlebitAPUF_9
   (up_chain_out,
    down_chain_out,
    trigger_up_in,
    trigger_down_in,
    challenge_in);
  output up_chain_out;
  output down_chain_out;
  input trigger_up_in;
  input trigger_down_in;
  input [15:0]challenge_in;

  wire [15:0]challenge_in;
  wire down_chain_out;
  (* DONT_TOUCH *) wire [14:0]mux_out_down;
  (* DONT_TOUCH *) wire [14:0]mux_out_up;
  wire trigger_down_in;
  wire trigger_up_in;
  wire up_chain_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[0].LUT3_inst 
       (.I0(trigger_down_in),
        .I1(trigger_up_in),
        .I2(challenge_in[0]),
        .O(mux_out_down[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[10].LUT3_inst 
       (.I0(mux_out_down[9]),
        .I1(mux_out_up[9]),
        .I2(challenge_in[10]),
        .O(mux_out_down[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[11].LUT3_inst 
       (.I0(mux_out_down[10]),
        .I1(mux_out_up[10]),
        .I2(challenge_in[11]),
        .O(mux_out_down[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[12].LUT3_inst 
       (.I0(mux_out_down[11]),
        .I1(mux_out_up[11]),
        .I2(challenge_in[12]),
        .O(mux_out_down[12]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[13].LUT3_inst 
       (.I0(mux_out_down[12]),
        .I1(mux_out_up[12]),
        .I2(challenge_in[13]),
        .O(mux_out_down[13]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[14].LUT3_inst 
       (.I0(mux_out_down[13]),
        .I1(mux_out_up[13]),
        .I2(challenge_in[14]),
        .O(mux_out_down[14]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[15].LUT3_inst 
       (.I0(mux_out_down[14]),
        .I1(mux_out_up[14]),
        .I2(challenge_in[15]),
        .O(down_chain_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[1].LUT3_inst 
       (.I0(mux_out_down[0]),
        .I1(mux_out_up[0]),
        .I2(challenge_in[1]),
        .O(mux_out_down[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[2].LUT3_inst 
       (.I0(mux_out_down[1]),
        .I1(mux_out_up[1]),
        .I2(challenge_in[2]),
        .O(mux_out_down[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[3].LUT3_inst 
       (.I0(mux_out_down[2]),
        .I1(mux_out_up[2]),
        .I2(challenge_in[3]),
        .O(mux_out_down[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[4].LUT3_inst 
       (.I0(mux_out_down[3]),
        .I1(mux_out_up[3]),
        .I2(challenge_in[4]),
        .O(mux_out_down[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[5].LUT3_inst 
       (.I0(mux_out_down[4]),
        .I1(mux_out_up[4]),
        .I2(challenge_in[5]),
        .O(mux_out_down[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[6].LUT3_inst 
       (.I0(mux_out_down[5]),
        .I1(mux_out_up[5]),
        .I2(challenge_in[6]),
        .O(mux_out_down[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[7].LUT3_inst 
       (.I0(mux_out_down[6]),
        .I1(mux_out_up[6]),
        .I2(challenge_in[7]),
        .O(mux_out_down[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[8].LUT3_inst 
       (.I0(mux_out_down[7]),
        .I1(mux_out_up[7]),
        .I2(challenge_in[8]),
        .O(mux_out_down[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \DOWN[9].LUT3_inst 
       (.I0(mux_out_down[8]),
        .I1(mux_out_up[8]),
        .I2(challenge_in[9]),
        .O(mux_out_down[9]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[0].LUT3_inst 
       (.I0(trigger_up_in),
        .I1(trigger_down_in),
        .I2(challenge_in[0]),
        .O(mux_out_up[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[10].LUT3_inst 
       (.I0(mux_out_up[9]),
        .I1(mux_out_down[9]),
        .I2(challenge_in[10]),
        .O(mux_out_up[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[11].LUT3_inst 
       (.I0(mux_out_up[10]),
        .I1(mux_out_down[10]),
        .I2(challenge_in[11]),
        .O(mux_out_up[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[12].LUT3_inst 
       (.I0(mux_out_up[11]),
        .I1(mux_out_down[11]),
        .I2(challenge_in[12]),
        .O(mux_out_up[12]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[13].LUT3_inst 
       (.I0(mux_out_up[12]),
        .I1(mux_out_down[12]),
        .I2(challenge_in[13]),
        .O(mux_out_up[13]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[14].LUT3_inst 
       (.I0(mux_out_up[13]),
        .I1(mux_out_down[13]),
        .I2(challenge_in[14]),
        .O(mux_out_up[14]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[15].LUT3_inst 
       (.I0(mux_out_up[14]),
        .I1(mux_out_down[14]),
        .I2(challenge_in[15]),
        .O(up_chain_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[1].LUT3_inst 
       (.I0(mux_out_up[0]),
        .I1(mux_out_down[0]),
        .I2(challenge_in[1]),
        .O(mux_out_up[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[2].LUT3_inst 
       (.I0(mux_out_up[1]),
        .I1(mux_out_down[1]),
        .I2(challenge_in[2]),
        .O(mux_out_up[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[3].LUT3_inst 
       (.I0(mux_out_up[2]),
        .I1(mux_out_down[2]),
        .I2(challenge_in[3]),
        .O(mux_out_up[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[4].LUT3_inst 
       (.I0(mux_out_up[3]),
        .I1(mux_out_down[3]),
        .I2(challenge_in[4]),
        .O(mux_out_up[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[5].LUT3_inst 
       (.I0(mux_out_up[4]),
        .I1(mux_out_down[4]),
        .I2(challenge_in[5]),
        .O(mux_out_up[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[6].LUT3_inst 
       (.I0(mux_out_up[5]),
        .I1(mux_out_down[5]),
        .I2(challenge_in[6]),
        .O(mux_out_up[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[7].LUT3_inst 
       (.I0(mux_out_up[6]),
        .I1(mux_out_down[6]),
        .I2(challenge_in[7]),
        .O(mux_out_up[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[8].LUT3_inst 
       (.I0(mux_out_up[7]),
        .I1(mux_out_down[7]),
        .I2(challenge_in[8]),
        .O(mux_out_up[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hAA)) 
    \UP[9].LUT3_inst 
       (.I0(mux_out_up[8]),
        .I1(mux_out_down[8]),
        .I2(challenge_in[9]),
        .O(mux_out_up[9]));
endmodule

module starter
   (out,
    clk_IBUF_BUFG,
    \SINGLE_APUF_GENERATOR[7].trigger_down_reg_0 ,
    reset_IBUF,
    challenge_in);
  output [7:0]out;
  input clk_IBUF_BUFG;
  input \SINGLE_APUF_GENERATOR[7].trigger_down_reg_0 ;
  input reset_IBUF;
  input [15:0]challenge_in;

  (* DONT_TOUCH *) wire \SINGLE_APUF_GENERATOR[0].down_chain ;
  (* DONT_TOUCH *) wire \SINGLE_APUF_GENERATOR[0].trigger_down ;
  (* DONT_TOUCH *) wire \SINGLE_APUF_GENERATOR[0].trigger_up ;
  wire \SINGLE_APUF_GENERATOR[0].trigger_up_i_1_n_0 ;
  (* DONT_TOUCH *) wire \SINGLE_APUF_GENERATOR[0].up_chain ;
  (* DONT_TOUCH *) wire \SINGLE_APUF_GENERATOR[1].down_chain ;
  (* DONT_TOUCH *) wire \SINGLE_APUF_GENERATOR[1].trigger_down ;
  (* DONT_TOUCH *) wire \SINGLE_APUF_GENERATOR[1].trigger_up ;
  (* DONT_TOUCH *) wire \SINGLE_APUF_GENERATOR[1].up_chain ;
  (* DONT_TOUCH *) wire \SINGLE_APUF_GENERATOR[2].down_chain ;
  (* DONT_TOUCH *) wire \SINGLE_APUF_GENERATOR[2].trigger_down ;
  (* DONT_TOUCH *) wire \SINGLE_APUF_GENERATOR[2].trigger_up ;
  (* DONT_TOUCH *) wire \SINGLE_APUF_GENERATOR[2].up_chain ;
  (* DONT_TOUCH *) wire \SINGLE_APUF_GENERATOR[3].down_chain ;
  (* DONT_TOUCH *) wire \SINGLE_APUF_GENERATOR[3].trigger_down ;
  (* DONT_TOUCH *) wire \SINGLE_APUF_GENERATOR[3].trigger_up ;
  (* DONT_TOUCH *) wire \SINGLE_APUF_GENERATOR[3].up_chain ;
  (* DONT_TOUCH *) wire \SINGLE_APUF_GENERATOR[4].down_chain ;
  (* DONT_TOUCH *) wire \SINGLE_APUF_GENERATOR[4].trigger_down ;
  (* DONT_TOUCH *) wire \SINGLE_APUF_GENERATOR[4].trigger_up ;
  (* DONT_TOUCH *) wire \SINGLE_APUF_GENERATOR[4].up_chain ;
  (* DONT_TOUCH *) wire \SINGLE_APUF_GENERATOR[5].down_chain ;
  (* DONT_TOUCH *) wire \SINGLE_APUF_GENERATOR[5].trigger_down ;
  (* DONT_TOUCH *) wire \SINGLE_APUF_GENERATOR[5].trigger_up ;
  (* DONT_TOUCH *) wire \SINGLE_APUF_GENERATOR[5].up_chain ;
  (* DONT_TOUCH *) wire \SINGLE_APUF_GENERATOR[6].down_chain ;
  (* DONT_TOUCH *) wire \SINGLE_APUF_GENERATOR[6].trigger_down ;
  (* DONT_TOUCH *) wire \SINGLE_APUF_GENERATOR[6].trigger_up ;
  (* DONT_TOUCH *) wire \SINGLE_APUF_GENERATOR[6].up_chain ;
  (* DONT_TOUCH *) wire \SINGLE_APUF_GENERATOR[7].down_chain ;
  (* DONT_TOUCH *) wire \SINGLE_APUF_GENERATOR[7].trigger_down ;
  wire \SINGLE_APUF_GENERATOR[7].trigger_down_reg_0 ;
  (* DONT_TOUCH *) wire \SINGLE_APUF_GENERATOR[7].trigger_up ;
  (* DONT_TOUCH *) wire \SINGLE_APUF_GENERATOR[7].up_chain ;
  wire [15:0]challenge_in;
  wire clk_IBUF_BUFG;
  wire reset_IBUF;
  wire \NLW_SINGLE_APUF_GENERATOR[0].arbiter_inst_clk_IBUF_BUFG_UNCONNECTED ;
  wire \NLW_SINGLE_APUF_GENERATOR[0].arbiter_inst_response_out_reg_0_UNCONNECTED ;
  wire [0:0]\NLW_SINGLE_APUF_GENERATOR[0].arbiter_inst_in0_UNCONNECTED ;
  wire \NLW_SINGLE_APUF_GENERATOR[1].arbiter_inst_clk_IBUF_BUFG_UNCONNECTED ;
  wire \NLW_SINGLE_APUF_GENERATOR[1].arbiter_inst_response_out_reg_0_UNCONNECTED ;
  wire [0:0]\NLW_SINGLE_APUF_GENERATOR[1].arbiter_inst_in0_UNCONNECTED ;
  wire \NLW_SINGLE_APUF_GENERATOR[2].arbiter_inst_clk_IBUF_BUFG_UNCONNECTED ;
  wire \NLW_SINGLE_APUF_GENERATOR[2].arbiter_inst_response_out_reg_0_UNCONNECTED ;
  wire [0:0]\NLW_SINGLE_APUF_GENERATOR[2].arbiter_inst_in0_UNCONNECTED ;
  wire \NLW_SINGLE_APUF_GENERATOR[3].arbiter_inst_clk_IBUF_BUFG_UNCONNECTED ;
  wire \NLW_SINGLE_APUF_GENERATOR[3].arbiter_inst_response_out_reg_0_UNCONNECTED ;
  wire [0:0]\NLW_SINGLE_APUF_GENERATOR[3].arbiter_inst_in0_UNCONNECTED ;
  wire \NLW_SINGLE_APUF_GENERATOR[4].arbiter_inst_clk_IBUF_BUFG_UNCONNECTED ;
  wire \NLW_SINGLE_APUF_GENERATOR[4].arbiter_inst_response_out_reg_0_UNCONNECTED ;
  wire [0:0]\NLW_SINGLE_APUF_GENERATOR[4].arbiter_inst_in0_UNCONNECTED ;
  wire \NLW_SINGLE_APUF_GENERATOR[5].arbiter_inst_clk_IBUF_BUFG_UNCONNECTED ;
  wire \NLW_SINGLE_APUF_GENERATOR[5].arbiter_inst_response_out_reg_0_UNCONNECTED ;
  wire [0:0]\NLW_SINGLE_APUF_GENERATOR[5].arbiter_inst_in0_UNCONNECTED ;
  wire \NLW_SINGLE_APUF_GENERATOR[6].arbiter_inst_clk_IBUF_BUFG_UNCONNECTED ;
  wire \NLW_SINGLE_APUF_GENERATOR[6].arbiter_inst_reset_UNCONNECTED ;
  wire \NLW_SINGLE_APUF_GENERATOR[6].arbiter_inst_reset_IBUF_UNCONNECTED ;
  wire [0:0]\NLW_SINGLE_APUF_GENERATOR[6].arbiter_inst_in0_UNCONNECTED ;
  wire \NLW_SINGLE_APUF_GENERATOR[7].arbiter_inst_clk_IBUF_BUFG_UNCONNECTED ;
  wire \NLW_SINGLE_APUF_GENERATOR[7].arbiter_inst_response_out_reg_0_UNCONNECTED ;
  wire [0:0]\NLW_SINGLE_APUF_GENERATOR[7].arbiter_inst_in0_UNCONNECTED ;

  (* EMPTY_BOX *) 
  (* SWEEP_EMPTY_HIER *) 
  arbiter \SINGLE_APUF_GENERATOR[0].arbiter_inst 
       (.clk_IBUF_BUFG(\NLW_SINGLE_APUF_GENERATOR[0].arbiter_inst_clk_IBUF_BUFG_UNCONNECTED ),
        .in0(\NLW_SINGLE_APUF_GENERATOR[0].arbiter_inst_in0_UNCONNECTED [0]),
        .out(\SINGLE_APUF_GENERATOR[0].down_chain ),
        .response_out_reg_0(\NLW_SINGLE_APUF_GENERATOR[0].arbiter_inst_response_out_reg_0_UNCONNECTED ),
        .response_out_reg_1(\SINGLE_APUF_GENERATOR[0].up_chain ));
  singlebitAPUF \SINGLE_APUF_GENERATOR[0].singlebitAPUF_inst 
       (.challenge_in(challenge_in),
        .down_chain_out(\SINGLE_APUF_GENERATOR[0].down_chain ),
        .trigger_down_in(\SINGLE_APUF_GENERATOR[0].trigger_down ),
        .trigger_up_in(\SINGLE_APUF_GENERATOR[0].trigger_up ),
        .up_chain_out(\SINGLE_APUF_GENERATOR[0].up_chain ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \SINGLE_APUF_GENERATOR[0].trigger_down_reg 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\SINGLE_APUF_GENERATOR[0].trigger_up_i_1_n_0 ),
        .Q(\SINGLE_APUF_GENERATOR[0].trigger_down ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \SINGLE_APUF_GENERATOR[0].trigger_up_i_1 
       (.I0(\SINGLE_APUF_GENERATOR[7].trigger_down_reg_0 ),
        .I1(reset_IBUF),
        .O(\SINGLE_APUF_GENERATOR[0].trigger_up_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \SINGLE_APUF_GENERATOR[0].trigger_up_reg 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\SINGLE_APUF_GENERATOR[0].trigger_up_i_1_n_0 ),
        .Q(\SINGLE_APUF_GENERATOR[0].trigger_up ),
        .R(1'b0));
  (* EMPTY_BOX *) 
  (* SWEEP_EMPTY_HIER *) 
  arbiter_0 \SINGLE_APUF_GENERATOR[1].arbiter_inst 
       (.clk_IBUF_BUFG(\NLW_SINGLE_APUF_GENERATOR[1].arbiter_inst_clk_IBUF_BUFG_UNCONNECTED ),
        .in0(\NLW_SINGLE_APUF_GENERATOR[1].arbiter_inst_in0_UNCONNECTED [0]),
        .out(\SINGLE_APUF_GENERATOR[1].down_chain ),
        .response_out_reg_0(\NLW_SINGLE_APUF_GENERATOR[1].arbiter_inst_response_out_reg_0_UNCONNECTED ),
        .response_out_reg_1(\SINGLE_APUF_GENERATOR[1].up_chain ));
  singlebitAPUF_1 \SINGLE_APUF_GENERATOR[1].singlebitAPUF_inst 
       (.challenge_in(challenge_in),
        .down_chain_out(\SINGLE_APUF_GENERATOR[1].down_chain ),
        .trigger_down_in(\SINGLE_APUF_GENERATOR[1].trigger_down ),
        .trigger_up_in(\SINGLE_APUF_GENERATOR[1].trigger_up ),
        .up_chain_out(\SINGLE_APUF_GENERATOR[1].up_chain ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \SINGLE_APUF_GENERATOR[1].trigger_down_reg 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\SINGLE_APUF_GENERATOR[0].trigger_up_i_1_n_0 ),
        .Q(\SINGLE_APUF_GENERATOR[1].trigger_down ),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \SINGLE_APUF_GENERATOR[1].trigger_up_reg 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\SINGLE_APUF_GENERATOR[0].trigger_up_i_1_n_0 ),
        .Q(\SINGLE_APUF_GENERATOR[1].trigger_up ),
        .R(1'b0));
  (* EMPTY_BOX *) 
  (* SWEEP_EMPTY_HIER *) 
  arbiter_2 \SINGLE_APUF_GENERATOR[2].arbiter_inst 
       (.clk_IBUF_BUFG(\NLW_SINGLE_APUF_GENERATOR[2].arbiter_inst_clk_IBUF_BUFG_UNCONNECTED ),
        .in0(\NLW_SINGLE_APUF_GENERATOR[2].arbiter_inst_in0_UNCONNECTED [0]),
        .out(\SINGLE_APUF_GENERATOR[2].down_chain ),
        .response_out_reg_0(\NLW_SINGLE_APUF_GENERATOR[2].arbiter_inst_response_out_reg_0_UNCONNECTED ),
        .response_out_reg_1(\SINGLE_APUF_GENERATOR[2].up_chain ));
  singlebitAPUF_3 \SINGLE_APUF_GENERATOR[2].singlebitAPUF_inst 
       (.challenge_in(challenge_in),
        .down_chain_out(\SINGLE_APUF_GENERATOR[2].down_chain ),
        .trigger_down_in(\SINGLE_APUF_GENERATOR[2].trigger_down ),
        .trigger_up_in(\SINGLE_APUF_GENERATOR[2].trigger_up ),
        .up_chain_out(\SINGLE_APUF_GENERATOR[2].up_chain ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \SINGLE_APUF_GENERATOR[2].trigger_down_reg 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\SINGLE_APUF_GENERATOR[0].trigger_up_i_1_n_0 ),
        .Q(\SINGLE_APUF_GENERATOR[2].trigger_down ),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \SINGLE_APUF_GENERATOR[2].trigger_up_reg 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\SINGLE_APUF_GENERATOR[0].trigger_up_i_1_n_0 ),
        .Q(\SINGLE_APUF_GENERATOR[2].trigger_up ),
        .R(1'b0));
  (* EMPTY_BOX *) 
  (* SWEEP_EMPTY_HIER *) 
  arbiter_4 \SINGLE_APUF_GENERATOR[3].arbiter_inst 
       (.clk_IBUF_BUFG(\NLW_SINGLE_APUF_GENERATOR[3].arbiter_inst_clk_IBUF_BUFG_UNCONNECTED ),
        .in0(\NLW_SINGLE_APUF_GENERATOR[3].arbiter_inst_in0_UNCONNECTED [0]),
        .out(\SINGLE_APUF_GENERATOR[3].down_chain ),
        .response_out_reg_0(\NLW_SINGLE_APUF_GENERATOR[3].arbiter_inst_response_out_reg_0_UNCONNECTED ),
        .response_out_reg_1(\SINGLE_APUF_GENERATOR[3].up_chain ));
  singlebitAPUF_5 \SINGLE_APUF_GENERATOR[3].singlebitAPUF_inst 
       (.challenge_in(challenge_in),
        .down_chain_out(\SINGLE_APUF_GENERATOR[3].down_chain ),
        .trigger_down_in(\SINGLE_APUF_GENERATOR[3].trigger_down ),
        .trigger_up_in(\SINGLE_APUF_GENERATOR[3].trigger_up ),
        .up_chain_out(\SINGLE_APUF_GENERATOR[3].up_chain ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \SINGLE_APUF_GENERATOR[3].trigger_down_reg 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\SINGLE_APUF_GENERATOR[0].trigger_up_i_1_n_0 ),
        .Q(\SINGLE_APUF_GENERATOR[3].trigger_down ),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \SINGLE_APUF_GENERATOR[3].trigger_up_reg 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\SINGLE_APUF_GENERATOR[0].trigger_up_i_1_n_0 ),
        .Q(\SINGLE_APUF_GENERATOR[3].trigger_up ),
        .R(1'b0));
  (* EMPTY_BOX *) 
  (* SWEEP_EMPTY_HIER *) 
  arbiter_6 \SINGLE_APUF_GENERATOR[4].arbiter_inst 
       (.clk_IBUF_BUFG(\NLW_SINGLE_APUF_GENERATOR[4].arbiter_inst_clk_IBUF_BUFG_UNCONNECTED ),
        .in0(\NLW_SINGLE_APUF_GENERATOR[4].arbiter_inst_in0_UNCONNECTED [0]),
        .out(\SINGLE_APUF_GENERATOR[4].down_chain ),
        .response_out_reg_0(\NLW_SINGLE_APUF_GENERATOR[4].arbiter_inst_response_out_reg_0_UNCONNECTED ),
        .response_out_reg_1(\SINGLE_APUF_GENERATOR[4].up_chain ));
  singlebitAPUF_7 \SINGLE_APUF_GENERATOR[4].singlebitAPUF_inst 
       (.challenge_in(challenge_in),
        .down_chain_out(\SINGLE_APUF_GENERATOR[4].down_chain ),
        .trigger_down_in(\SINGLE_APUF_GENERATOR[4].trigger_down ),
        .trigger_up_in(\SINGLE_APUF_GENERATOR[4].trigger_up ),
        .up_chain_out(\SINGLE_APUF_GENERATOR[4].up_chain ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \SINGLE_APUF_GENERATOR[4].trigger_down_reg 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\SINGLE_APUF_GENERATOR[0].trigger_up_i_1_n_0 ),
        .Q(\SINGLE_APUF_GENERATOR[4].trigger_down ),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \SINGLE_APUF_GENERATOR[4].trigger_up_reg 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\SINGLE_APUF_GENERATOR[0].trigger_up_i_1_n_0 ),
        .Q(\SINGLE_APUF_GENERATOR[4].trigger_up ),
        .R(1'b0));
  (* EMPTY_BOX *) 
  (* SWEEP_EMPTY_HIER *) 
  arbiter_8 \SINGLE_APUF_GENERATOR[5].arbiter_inst 
       (.clk_IBUF_BUFG(\NLW_SINGLE_APUF_GENERATOR[5].arbiter_inst_clk_IBUF_BUFG_UNCONNECTED ),
        .in0(\NLW_SINGLE_APUF_GENERATOR[5].arbiter_inst_in0_UNCONNECTED [0]),
        .out(\SINGLE_APUF_GENERATOR[5].down_chain ),
        .response_out_reg_0(\NLW_SINGLE_APUF_GENERATOR[5].arbiter_inst_response_out_reg_0_UNCONNECTED ),
        .response_out_reg_1(\SINGLE_APUF_GENERATOR[5].up_chain ));
  singlebitAPUF_9 \SINGLE_APUF_GENERATOR[5].singlebitAPUF_inst 
       (.challenge_in(challenge_in),
        .down_chain_out(\SINGLE_APUF_GENERATOR[5].down_chain ),
        .trigger_down_in(\SINGLE_APUF_GENERATOR[5].trigger_down ),
        .trigger_up_in(\SINGLE_APUF_GENERATOR[5].trigger_up ),
        .up_chain_out(\SINGLE_APUF_GENERATOR[5].up_chain ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \SINGLE_APUF_GENERATOR[5].trigger_down_reg 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\SINGLE_APUF_GENERATOR[0].trigger_up_i_1_n_0 ),
        .Q(\SINGLE_APUF_GENERATOR[5].trigger_down ),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \SINGLE_APUF_GENERATOR[5].trigger_up_reg 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\SINGLE_APUF_GENERATOR[0].trigger_up_i_1_n_0 ),
        .Q(\SINGLE_APUF_GENERATOR[5].trigger_up ),
        .R(1'b0));
  (* EMPTY_BOX *) 
  (* SWEEP_EMPTY_HIER *) 
  arbiter_10 \SINGLE_APUF_GENERATOR[6].arbiter_inst 
       (.clk_IBUF_BUFG(\NLW_SINGLE_APUF_GENERATOR[6].arbiter_inst_clk_IBUF_BUFG_UNCONNECTED ),
        .in0(\NLW_SINGLE_APUF_GENERATOR[6].arbiter_inst_in0_UNCONNECTED [0]),
        .out(\SINGLE_APUF_GENERATOR[6].down_chain ),
        .reset(\NLW_SINGLE_APUF_GENERATOR[6].arbiter_inst_reset_UNCONNECTED ),
        .reset_IBUF(\NLW_SINGLE_APUF_GENERATOR[6].arbiter_inst_reset_IBUF_UNCONNECTED ),
        .response_out_reg_0(\SINGLE_APUF_GENERATOR[6].up_chain ));
  singlebitAPUF_11 \SINGLE_APUF_GENERATOR[6].singlebitAPUF_inst 
       (.challenge_in(challenge_in),
        .down_chain_out(\SINGLE_APUF_GENERATOR[6].down_chain ),
        .trigger_down_in(\SINGLE_APUF_GENERATOR[6].trigger_down ),
        .trigger_up_in(\SINGLE_APUF_GENERATOR[6].trigger_up ),
        .up_chain_out(\SINGLE_APUF_GENERATOR[6].up_chain ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \SINGLE_APUF_GENERATOR[6].trigger_down_reg 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\SINGLE_APUF_GENERATOR[0].trigger_up_i_1_n_0 ),
        .Q(\SINGLE_APUF_GENERATOR[6].trigger_down ),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \SINGLE_APUF_GENERATOR[6].trigger_up_reg 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\SINGLE_APUF_GENERATOR[0].trigger_up_i_1_n_0 ),
        .Q(\SINGLE_APUF_GENERATOR[6].trigger_up ),
        .R(1'b0));
  (* EMPTY_BOX *) 
  (* SWEEP_EMPTY_HIER *) 
  arbiter_12 \SINGLE_APUF_GENERATOR[7].arbiter_inst 
       (.clk_IBUF_BUFG(\NLW_SINGLE_APUF_GENERATOR[7].arbiter_inst_clk_IBUF_BUFG_UNCONNECTED ),
        .in0(\NLW_SINGLE_APUF_GENERATOR[7].arbiter_inst_in0_UNCONNECTED [0]),
        .out(\SINGLE_APUF_GENERATOR[7].down_chain ),
        .response_out_reg_0(\NLW_SINGLE_APUF_GENERATOR[7].arbiter_inst_response_out_reg_0_UNCONNECTED ),
        .response_out_reg_1(\SINGLE_APUF_GENERATOR[7].up_chain ));
  singlebitAPUF_13 \SINGLE_APUF_GENERATOR[7].singlebitAPUF_inst 
       (.challenge_in(challenge_in),
        .down_chain_out(\SINGLE_APUF_GENERATOR[7].down_chain ),
        .trigger_down_in(\SINGLE_APUF_GENERATOR[7].trigger_down ),
        .trigger_up_in(\SINGLE_APUF_GENERATOR[7].trigger_up ),
        .up_chain_out(\SINGLE_APUF_GENERATOR[7].up_chain ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \SINGLE_APUF_GENERATOR[7].trigger_down_reg 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\SINGLE_APUF_GENERATOR[0].trigger_up_i_1_n_0 ),
        .Q(\SINGLE_APUF_GENERATOR[7].trigger_down ),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \SINGLE_APUF_GENERATOR[7].trigger_up_reg 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\SINGLE_APUF_GENERATOR[0].trigger_up_i_1_n_0 ),
        .Q(\SINGLE_APUF_GENERATOR[7].trigger_up ),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
