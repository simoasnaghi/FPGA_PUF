//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Tue Feb  8 23:24:25 2022
//Host        : DESKTOP-UV9HJ0O running 64-bit major release  (build 9200)
//Command     : generate_target ArbiterPUF.bd
//Design      : ArbiterPUF
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "ArbiterPUF,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ArbiterPUF,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "ArbiterPUF.hwdef" *) 
module ArbiterPUF
   (challenge_in_0,
    control_out_0,
    reset,
    response_out_0,
    start_in_0,
    sys_clock,
    valid_out_0);
  input [15:0]challenge_in_0;
  output control_out_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset;
  output [7:0]response_out_0;
  input start_in_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN ArbiterPUF_sys_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input sys_clock;
  output valid_out_0;

  wire Arbiter_PUF_0_control_out;
  wire [7:0]Arbiter_PUF_0_response_out;
  wire Arbiter_PUF_0_valid_out;
  wire Net;
  wire [15:0]challenge_in_0_1;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_locked;
  wire [0:0]proc_sys_reset_0_peripheral_reset;
  wire start_in_0_1;
  wire sys_clock_1;

  assign Net = reset;
  assign challenge_in_0_1 = challenge_in_0[15:0];
  assign control_out_0 = Arbiter_PUF_0_control_out;
  assign response_out_0[7:0] = Arbiter_PUF_0_response_out;
  assign start_in_0_1 = start_in_0;
  assign sys_clock_1 = sys_clock;
  assign valid_out_0 = Arbiter_PUF_0_valid_out;
  ArbiterPUF_Arbiter_PUF_0_0 Arbiter_PUF_0
       (.challenge_in(challenge_in_0_1),
        .clk(clk_wiz_0_clk_out1),
        .control_out(Arbiter_PUF_0_control_out),
        .reset(proc_sys_reset_0_peripheral_reset),
        .response_out(Arbiter_PUF_0_response_out),
        .start_in(start_in_0_1),
        .valid_out(Arbiter_PUF_0_valid_out));
  ArbiterPUF_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .locked(clk_wiz_0_locked),
        .reset(Net));
  ArbiterPUF_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(Net),
        .mb_debug_sys_rst(1'b0),
        .peripheral_reset(proc_sys_reset_0_peripheral_reset),
        .slowest_sync_clk(clk_wiz_0_clk_out1));
endmodule
