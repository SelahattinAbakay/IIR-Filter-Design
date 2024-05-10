//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Thu May  9 12:39:25 2024
//Host        : DESKTOP-F2KTFA0 running 64-bit major release  (build 9200)
//Command     : generate_target design_2_wrapper.bd
//Design      : design_2_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_2_testbench;

  // Parameters
  parameter CLK_PERIOD = 10; // Clock period in ps

  // Inputs
  reg ap_clk_0;
  reg ap_rst_0;
  reg [31:0] x_0;

  // Outputs
  wire [31:0] y_0;

  // Instantiate the DUT
  design_2_wrapper dut
  (
    .ap_clk_0(ap_clk_0),
    .ap_rst_0(ap_rst_0),
    .x_0(x_0),
    .y_0(y_0)
  );

  // Clock generation
  always #((CLK_PERIOD / 2)) ap_clk_0 = ~ap_clk_0;

  // Initial stimulus
  initial begin
    ap_clk_0 = 0;
    ap_rst_0 = 1;
    x_0 = 0;

    // Reset
    #20;
    ap_rst_0 = 0;

    // Test input
    #10;
    x_0 = 32'h00000001; // Test input, change it according to your test case

    // Add more test cases here...

    #100;
    $finish;
  end

  // Monitor
  always @(posedge ap_clk_0) begin
    $display("Time=%0t, Input=x_0=%d, Output=y_0=%d", $time, x_0, y_0);
  end

endmodule
