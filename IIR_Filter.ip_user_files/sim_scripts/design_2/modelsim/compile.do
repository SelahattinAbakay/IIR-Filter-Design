vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../IIR_Filter.srcs/sources_1/bd/design_2/ipshared/b99b/hdl/verilog/IIR_Filter.v" \
"../../../bd/design_2/ip/design_2_IIR_Filter_0_2/sim/design_2_IIR_Filter_0_2.v" \
"../../../bd/design_2/sim/design_2.v" \


vlog -work xil_defaultlib \
"glbl.v"

