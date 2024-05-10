`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2024 12:42:35
// Design Name: 
// Module Name: design_2_wrapper_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


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

