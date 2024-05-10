//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Thu May  9 12:39:25 2024
//Host        : DESKTOP-F2KTFA0 running 64-bit major release  (build 9200)
//Command     : generate_target design_2.bd
//Design      : design_2
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_2,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_2.hwdef" *) 
module design_2
   (ap_clk_0,
    ap_rst_0,
    x_0,
    y_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK_0, ASSOCIATED_RESET ap_rst_0, CLK_DOMAIN design_2_ap_clk_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input ap_clk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_0, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input ap_rst_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.X_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.X_0, LAYERED_METADATA undef" *) input [31:0]x_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.Y_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.Y_0, LAYERED_METADATA undef" *) output [31:0]y_0;

  wire [31:0]IIR_Filter_0_y;
  wire ap_clk_0_1;
  wire ap_rst_0_1;
  wire [31:0]x_0_1;

  assign ap_clk_0_1 = ap_clk_0;
  assign ap_rst_0_1 = ap_rst_0;
  assign x_0_1 = x_0[31:0];
  assign y_0[31:0] = IIR_Filter_0_y;
  design_2_IIR_Filter_0_2 IIR_Filter_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst(ap_rst_0_1),
        .x(x_0_1),
        .y(IIR_Filter_0_y));
endmodule
