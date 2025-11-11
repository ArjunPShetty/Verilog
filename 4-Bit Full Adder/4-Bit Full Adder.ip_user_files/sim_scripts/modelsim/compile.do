vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../4-Bit Full Adder.srcs/sources_1/new/four_bit.v" \


vlog -work xil_defaultlib \
"glbl.v"

