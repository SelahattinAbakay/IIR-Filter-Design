vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../IIR_Filter.srcs/sources_1/bd/design_2/ipshared/b99b/hdl/verilog/IIR_Filter.v" \
"../../../bd/design_2/ip/design_2_IIR_Filter_0_2/sim/design_2_IIR_Filter_0_2.v" \
"../../../bd/design_2/sim/design_2.v" \


vlog -work xil_defaultlib \
"glbl.v"

