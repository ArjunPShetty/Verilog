vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../4-Bit Full Adder.srcs/sources_1/new/four_bit.v" \


vlog -work xil_defaultlib \
"glbl.v"

