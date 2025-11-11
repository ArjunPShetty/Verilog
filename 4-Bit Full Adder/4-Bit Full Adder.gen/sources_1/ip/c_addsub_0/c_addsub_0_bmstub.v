// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module c_addsub_0 (
  A,
  B,
  CLK,
  C_OUT,
  S
);

  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_intf DATA" *)
  (* X_INTERFACE_MODE = "slave a_intf" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *)
  input [3:0]A;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_intf DATA" *)
  (* X_INTERFACE_MODE = "slave b_intf" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *)
  input [3:0]B;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_intf CLK" *)
  (* X_INTERFACE_MODE = "slave clk_intf" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN , ASSOCIATED_PORT , INSERT_VIP 0" *)
  input CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 c_out_intf DATA" *)
  (* X_INTERFACE_MODE = "master c_out_intf" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME c_out_intf, LAYERED_METADATA undef" *)
  output C_OUT;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 s_intf DATA" *)
  (* X_INTERFACE_MODE = "master s_intf" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *)
  output [3:0]S;

  // stub module has no contents

endmodule
