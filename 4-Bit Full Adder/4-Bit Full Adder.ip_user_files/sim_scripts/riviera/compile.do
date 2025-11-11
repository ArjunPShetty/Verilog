transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -incr -v2k5 -l xil_defaultlib \
"../../../4-Bit Full Adder.srcs/sources_1/new/four_bit.v" \


vlog -work xil_defaultlib \
"glbl.v"

