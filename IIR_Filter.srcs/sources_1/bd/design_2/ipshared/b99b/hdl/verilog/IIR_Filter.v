// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="IIR_Filter,hls_ip_2019_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a35t-cpg236-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.207000,HLS_SYN_LAT=2,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=194,HLS_SYN_LUT=252,HLS_VERSION=2019_2}" *)

module IIR_Filter (
        ap_clk,
        ap_rst,
        x,
        y
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input  [31:0] x;
output  [31:0] y;

reg   [31:0] xn1;
reg   [31:0] xn2;
reg   [31:0] yn1;
reg   [31:0] yn2;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] add_ln18_fu_79_p2;
reg   [31:0] add_ln18_reg_165;
wire    ap_CS_fsm_state2;
wire   [31:0] sub_ln18_1_fu_104_p2;
reg   [31:0] sub_ln18_1_reg_175;
wire   [31:0] yn_fu_143_p2;
wire    ap_CS_fsm_state3;
wire   [31:0] shl_ln18_fu_51_p2;
wire   [31:0] shl_ln18_1_fu_57_p2;
wire   [31:0] shl_ln18_2_fu_73_p2;
wire   [31:0] sub_ln18_fu_63_p2;
wire   [31:0] add_ln18_1_fu_99_p2;
wire   [31:0] shl_ln18_3_fu_93_p2;
wire   [31:0] shl_ln18_4_fu_125_p2;
wire   [31:0] sub_ln18_3_fu_131_p2;
wire   [31:0] add_ln18_2_fu_137_p2;
reg   [2:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 xn1 = 32'd0;
#0 xn2 = 32'd0;
#0 yn1 = 32'd0;
#0 yn2 = 32'd0;
#0 ap_CS_fsm = 3'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        add_ln18_reg_165[31 : 1] <= add_ln18_fu_79_p2[31 : 1];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        sub_ln18_1_reg_175 <= sub_ln18_1_fu_104_p2;
        xn1 <= x;
        xn2 <= xn1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        yn1 <= yn_fu_143_p2;
        yn2 <= yn1;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln18_1_fu_99_p2 = (xn1 + add_ln18_reg_165);

assign add_ln18_2_fu_137_p2 = (yn2 + sub_ln18_3_fu_131_p2);

assign add_ln18_fu_79_p2 = (shl_ln18_2_fu_73_p2 + sub_ln18_fu_63_p2);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign shl_ln18_1_fu_57_p2 = x << 32'd1;

assign shl_ln18_2_fu_73_p2 = xn2 << 32'd1;

assign shl_ln18_3_fu_93_p2 = yn1 << 32'd2;

assign shl_ln18_4_fu_125_p2 = yn2 << 32'd2;

assign shl_ln18_fu_51_p2 = x << 32'd3;

assign sub_ln18_1_fu_104_p2 = (add_ln18_1_fu_99_p2 - shl_ln18_3_fu_93_p2);

assign sub_ln18_3_fu_131_p2 = (32'd0 - shl_ln18_4_fu_125_p2);

assign sub_ln18_fu_63_p2 = (shl_ln18_fu_51_p2 - shl_ln18_1_fu_57_p2);

assign y = (add_ln18_2_fu_137_p2 + sub_ln18_1_reg_175);

assign yn_fu_143_p2 = (add_ln18_2_fu_137_p2 + sub_ln18_1_reg_175);

always @ (posedge ap_clk) begin
    add_ln18_reg_165[0] <= 1'b0;
end

endmodule //IIR_Filter