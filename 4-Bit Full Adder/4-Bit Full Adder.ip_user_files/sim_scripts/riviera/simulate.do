transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+four_bit  -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.four_bit xil_defaultlib.glbl

do {four_bit.udo}

run 1000ns

endsim

quit -force
