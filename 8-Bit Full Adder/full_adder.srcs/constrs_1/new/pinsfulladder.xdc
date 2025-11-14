set_property IOSTANDARD LVCMOS33 [get_ports clk_0]
set_property PACKAGE_PIN N11 [get_ports clk_0]

set_property BEL A5FF [get_cells {full_adder_i/ila_0/inst/ack_reg1_reg[0]}]
set_property LOC SLICE_X37Y74 [get_cells {full_adder_i/ila_0/inst/ack_reg1_reg[0]}]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk_0_IBUF_BUFG]
