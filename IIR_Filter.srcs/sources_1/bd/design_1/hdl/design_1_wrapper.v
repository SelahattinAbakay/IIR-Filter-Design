//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Thu May  9 11:51:39 2024
//Host        : DESKTOP-F2KTFA0 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (ap_clk_0,
    ap_rst_0,
    x_0,
    y_0);
  input ap_clk_0;
  input ap_rst_0;
  input [31:0]x_0;
  output [31:0]y_0;

  wire ap_clk_0;
  wire ap_rst_0;
  wire [31:0]x_0;
  wire [31:0]y_0;

  design_1 design_1_i
       (.ap_clk_0(ap_clk_0),
        .ap_rst_0(ap_rst_0),
        .x_0(x_0),
        .y_0(y_0));
endmodule
