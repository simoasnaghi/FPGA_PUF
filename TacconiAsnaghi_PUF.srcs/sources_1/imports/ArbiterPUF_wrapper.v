//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Tue Feb  8 23:24:25 2022
//Host        : DESKTOP-UV9HJ0O running 64-bit major release  (build 9200)
//Command     : generate_target ArbiterPUF_wrapper.bd
//Design      : ArbiterPUF_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ArbiterPUF_wrapper
   (challenge_in_0,
    control_out_0,
    reset,
    response_out_0,
    start_in_0,
    sys_clock,
    valid_out_0);
  input [15:0]challenge_in_0;
  output control_out_0;
  input reset;
  output [7:0]response_out_0;
  input start_in_0;
  input sys_clock;
  output valid_out_0;

  wire [15:0]challenge_in_0;
  wire control_out_0;
  wire reset;
  wire [7:0]response_out_0;
  wire start_in_0;
  wire sys_clock;
  wire valid_out_0;

  ArbiterPUF ArbiterPUF_i
       (.challenge_in_0(challenge_in_0),
        .control_out_0(control_out_0),
        .reset(reset),
        .response_out_0(response_out_0),
        .start_in_0(start_in_0),
        .sys_clock(sys_clock),
        .valid_out_0(valid_out_0));
endmodule
