// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Nov 11 05:47:24 2025
// Host        : Arjun-laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_addsub_0_sim_netlist.v
// Design      : c_addsub_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_addsub_0,c_addsub_v12_0_19,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_19,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A,
    B,
    CLK,
    C_OUT,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_mode = "slave a_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [3:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_mode = "slave b_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [3:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_mode = "slave clk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_out_intf DATA" *) (* x_interface_mode = "master c_out_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME c_out_intf, LAYERED_METADATA undef" *) output C_OUT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_mode = "master s_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [3:0]S;

  wire [3:0]A;
  wire [3:0]B;
  wire CLK;
  wire C_OUT;
  wire [3:0]S;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "4" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "0000" *) 
  (* c_b_width = "4" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "1" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "4" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_19 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(C_OUT),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oeiSycU/+UTHUctAP/1EG0ARA7oWt+xFQ9F10RrtHn5SZO+NXJ2Sm1lpLWPVfe/IDP9GV69i1poN
BhSAs1MJDIQLH5itROLuDXYYF/elSJEMeT/k73s+GON1baIJHccZb15U9aChMHgHXrYpoUMUrHTj
cWKmcYvrvycsSZ0Ngj0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qORY6ws3UX1BZqnQJ1io0G9Nj1mDoEV6ROyL+jga0TOnG+bD0DFym5LX2wB5jhQI/eRptItp6+Xw
3dz9zFmq8NXFF+H+NoAKmelb5s1UO1+nfsrEsY8jRSPwzzSzuTFf9OtMNFu42aJmeH09lBQfBPMd
0g8oj4NEftYfLjmarR5bIjHb/GieQEuAG4o3tNixOIZPopFrEcLQmXA0/6Si94XRfX8SGit/uPiX
Cm3Ld7fjVMOIf5S5tOgoEZwsHYzMx0XvK3i+9QPsCeqsuebvotwtKvZDSmshdCRoRGC2h/2yNcZl
ec51FkbmEd1je49PLDVQ8/qLCS6k38XKHO3MBQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lmkJZn2yha+73EQxzvf2ftjA2ZPsXiOCU7WmgNFhW/A6MvolqZ8LDAIchWnJc/ZHbIScX4wfK6+7
nDmo6Gs7JUBsq8skyRrsRz+cU89cm9KQWXWgtduzrbZnLzKX46ZgLyQglaYI6K3bULnKfCjO8SLR
LtNR6Q2KaQzjkJvk6SQ=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eUZvqSLYSMj/GdGxHahsqEMos5RJfJi42gE7cSTGksQEWHG4i3FQfGZX1wHlW544I/vgSbV+T81a
VLBgL8TiR93gf3RM05BCx8hCdksptudNbJ1B+4bvi8ZUhlGzurVccrLFZwFViff1f7GRdvDjzWaC
gOP2Ljbv4XRXnLGH2pxiBcZOMaKwAlxIvD4LazzzRpctyr2JFmoxUvEo+YztJYzUGHSBsEtnzBtd
J7yR39/fIvbDUpo/EHHYPEgeKU4TqN311PIFFg4H/jMgjESY+COMLQNxYMNBoLECrtgjYfOa0o2M
cChrq3YEH96IEyG8GPIv/BrjL3zNOZfog2sp8w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
K26hlSK1EjbroYKyAOeyuiAeDIHUk71YecuhEaZditw+NrpQu3KoUAiuicPSmI1CMdSZyYBxyLV5
1zZW6PAXj/jSMlODXEo5cpb86txEmESnLjH9zpgRiRvN5tSxGAIHxnuwOlqT6Oqsyek5yoTywyTz
lAjGwIvXleEv832/9ERcxAFOPqeI5aKS39t+VTcC9fhAnvrMTACqwFgkEWl8O5l0B5tK49ogIRlj
NmgVEAnTph1Jz2k5wajNZccl3LPj/11FbVllMHM8UV3jR/Jn21gWOnBcc+Z55sGeUvOMdOXuv1gX
OU8m9JenUD3vWSVeyg3klIRuYc+H8lLDlxT70Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bzXdP1pGOW3mmxgqQfwXHtnVzDGC/wEa2NlskilDjfkNQUN5CsHuexL9ELnpc4xM656F9IQy3qdN
piNJKaCQxyCFaAKUELbM5o+y8sbqpyVb7p+1PEkmVqZEX6WN4hWeKD20/nlshmC7fHDGYRDOFHQv
UVCqnndg8GmguGkFVlc6xNb0DB+UFIUeMVxsbRC3c+5xuIKlUpf3xO2wJ2JMcHsGoGExA5jDpVtC
XUb6lRjP6FQKVPpHxVM43BDo4meN0J4mZJgJ6Y0NGl7p2hIpw2B3FUeCsGuMBHa1yyjtbeaYm04V
ZtsEdxqhatDH6Hbh1HmBYUrqB5AWn0IQCFBcJw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E9YZrDeBcNG88vADiIeQq98M+D+IK5O8qKdsAiqH8H2Vq6CihreD0CvL8FNmEeeK29hS1YcWPCIM
Vwii1zmOvyMg70UBVcqHUSHSCU+9gUfFtXhbceEsyGvflmbTqPLzIQv4+JAixbrvmdtDkAnrgBBb
mP2pUJpAbd2EJ5aSksRcY7nZxv/9/cPYiDfnGma6GIwsGcVmEfX45fEWszsNE5cuwZ9mDYww+Wwr
4TQ7mHobAuu8bFp870HEVz691DIkWHFCis3+2xdsOqJFwFIrNbUTXpJyDq7aB1bMVpfsWFJiR/nd
m7QGmvoxXtZB4099VGFkmiRQoe43NF881HmROg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
XWIUz3r9K8YdMNtaDPZkHe/sQ6BdHgzj6ek4zBJS2bZbt+F9Uuu0cDLJ/G4cMqkL7Euw5Tyy09Ba
kqvksnSP/Q34/hUL6lgViALqcO5b4oL7wuCqzJ7ghXQ7IOU3kPn/zDkXZ53Xf4RQCR8EYWxobBcX
C5jBL3Ra174J3ZNpwK8jSxkoH/zXfIy7YzwVkOK3sfYyiBROekX3pLu52dooP6VCZeGDVfZQi3ki
2QUbldTjM807egjriAka63+4cLzrlil3HjPPhJ1jsWqpP/b1pEPDjtfRt3qRC6q01mbnuQhJc/Qp
fWZoKt6T5F5FHmAdb9HwiGfxQmOXxTXiCCN8OgZnNOOeGEloQoB/OjByD+bzq9D3fGzHZOidm7xG
YeiwIX+r8L4p7fPa8tXtyzbTQD+doc9JsPYl2eweVHAqvXFUQRL17bAsxW3MsaLOJa/77ZbTBkvx
vitvirW0oMKOGwQ9n/yo7LteTENDBnMrmNJhoklTavuV+XSZqje0USVQ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YZ//P+GUHQDqpn2u7+vaRR/n6pkgMcX0ltpdiACAy9T1rY9/JIRYQaB0jbllhOrQAppfK9GfyabA
0PpVWsb2l42OnLoZg5rlWo6g+aaOAe8Vii++hndQmXs9M3gbv6lUmrE7P+u/8LdmuRaPzEUnFJeH
tn1O3IjnizGIsbwnD7lPOtetKIA0X9BIdwHx0x4vH845vPXdzz210rc/Y/PP6NN8uHzxeYaE5s0w
sr29XI9ibUMV07reHGJOZbiAbzzUMELVDuLeHFra4b1zriwCUVbeax/RhTcNggdKjbcpjo8HT/yW
IHglsLc4qAt3aTStevZ4b03narZeDNBHdSPhrw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EsSOcM2Ymz4XVAa0+f0dwPkTVaLSDSU6b/FPqA/TuuKf9X+OY4I0pT12//yNB5tSSxRW6aTsvpFT
isjZq3EDfIjvVzkFvRB+gAIJfFLUz+wE9HMbvrIkVpouAIjjjiXwQyX/8bF/8wN6QhWAr327PE94
OSYhfM22sNAfyr/tpX0BQe6zkO7I8wC8s0A+XHMDHmzfCA0ACcTwMhv7Hn4O4lBQbqhlGpdCY2T+
IhGXWCY/rXETUI/myVT4br4jxSFqQajZotIjycwHFeS+Gb3eUaXY+5Bsm8X3WAWW5RZiecGzoND7
uha2V8ClYn3Z9DcxmKp8nJn08TwK97bL98hxwg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OApFoHJ3RKPX62eyc4yYtb5WJ3Qq2xS6L7LmVy1hGXfeO5s98jlGjNSDa+MYB7Vj9QU2mlejnFqT
EtDgJngAQuR4gPz6gdKAvARnH9/YyO/8gmkUmHvHhHOZdeho5P9VUagspwSb9O51a3yP+ubv3Jd6
7K7oHXPeFume77AEP0tsCheh0r/9IkwWu4CrETL/Xccob5Am5wEp6fStopqDNThZsQu/i+9Id10z
/nuVz+nBzYgcU1zL1FZfKrKqATGivEVsKDaY8Hhy/z2COk6iT9/5HLY2QTXDn6npr2PzbZXt7vyW
E9/1Op+Z8E+6CnWp1HXH4uMJGVTS6Kr6yGU60Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2464)
`pragma protect data_block
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
KAnB9mQf1QD0/mcY3A==
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oeiSycU/+UTHUctAP/1EG0ARA7oWt+xFQ9F10RrtHn5SZO+NXJ2Sm1lpLWPVfe/IDP9GV69i1poN
BhSAs1MJDIQLH5itROLuDXYYF/elSJEMeT/k73s+GON1baIJHccZb15U9aChMHgHXrYpoUMUrHTj
cWKmcYvrvycsSZ0Ngj0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qORY6ws3UX1BZqnQJ1io0G9Nj1mDoEV6ROyL+jga0TOnG+bD0DFym5LX2wB5jhQI/eRptItp6+Xw
3dz9zFmq8NXFF+H+NoAKmelb5s1UO1+nfsrEsY8jRSPwzzSzuTFf9OtMNFu42aJmeH09lBQfBPMd
0g8oj4NEftYfLjmarR5bIjHb/GieQEuAG4o3tNixOIZPopFrEcLQmXA0/6Si94XRfX8SGit/uPiX
Cm3Ld7fjVMOIf5S5tOgoEZwsHYzMx0XvK3i+9QPsCeqsuebvotwtKvZDSmshdCRoRGC2h/2yNcZl
ec51FkbmEd1je49PLDVQ8/qLCS6k38XKHO3MBQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lmkJZn2yha+73EQxzvf2ftjA2ZPsXiOCU7WmgNFhW/A6MvolqZ8LDAIchWnJc/ZHbIScX4wfK6+7
nDmo6Gs7JUBsq8skyRrsRz+cU89cm9KQWXWgtduzrbZnLzKX46ZgLyQglaYI6K3bULnKfCjO8SLR
LtNR6Q2KaQzjkJvk6SQ=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eUZvqSLYSMj/GdGxHahsqEMos5RJfJi42gE7cSTGksQEWHG4i3FQfGZX1wHlW544I/vgSbV+T81a
VLBgL8TiR93gf3RM05BCx8hCdksptudNbJ1B+4bvi8ZUhlGzurVccrLFZwFViff1f7GRdvDjzWaC
gOP2Ljbv4XRXnLGH2pxiBcZOMaKwAlxIvD4LazzzRpctyr2JFmoxUvEo+YztJYzUGHSBsEtnzBtd
J7yR39/fIvbDUpo/EHHYPEgeKU4TqN311PIFFg4H/jMgjESY+COMLQNxYMNBoLECrtgjYfOa0o2M
cChrq3YEH96IEyG8GPIv/BrjL3zNOZfog2sp8w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
K26hlSK1EjbroYKyAOeyuiAeDIHUk71YecuhEaZditw+NrpQu3KoUAiuicPSmI1CMdSZyYBxyLV5
1zZW6PAXj/jSMlODXEo5cpb86txEmESnLjH9zpgRiRvN5tSxGAIHxnuwOlqT6Oqsyek5yoTywyTz
lAjGwIvXleEv832/9ERcxAFOPqeI5aKS39t+VTcC9fhAnvrMTACqwFgkEWl8O5l0B5tK49ogIRlj
NmgVEAnTph1Jz2k5wajNZccl3LPj/11FbVllMHM8UV3jR/Jn21gWOnBcc+Z55sGeUvOMdOXuv1gX
OU8m9JenUD3vWSVeyg3klIRuYc+H8lLDlxT70Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bzXdP1pGOW3mmxgqQfwXHtnVzDGC/wEa2NlskilDjfkNQUN5CsHuexL9ELnpc4xM656F9IQy3qdN
piNJKaCQxyCFaAKUELbM5o+y8sbqpyVb7p+1PEkmVqZEX6WN4hWeKD20/nlshmC7fHDGYRDOFHQv
UVCqnndg8GmguGkFVlc6xNb0DB+UFIUeMVxsbRC3c+5xuIKlUpf3xO2wJ2JMcHsGoGExA5jDpVtC
XUb6lRjP6FQKVPpHxVM43BDo4meN0J4mZJgJ6Y0NGl7p2hIpw2B3FUeCsGuMBHa1yyjtbeaYm04V
ZtsEdxqhatDH6Hbh1HmBYUrqB5AWn0IQCFBcJw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E9YZrDeBcNG88vADiIeQq98M+D+IK5O8qKdsAiqH8H2Vq6CihreD0CvL8FNmEeeK29hS1YcWPCIM
Vwii1zmOvyMg70UBVcqHUSHSCU+9gUfFtXhbceEsyGvflmbTqPLzIQv4+JAixbrvmdtDkAnrgBBb
mP2pUJpAbd2EJ5aSksRcY7nZxv/9/cPYiDfnGma6GIwsGcVmEfX45fEWszsNE5cuwZ9mDYww+Wwr
4TQ7mHobAuu8bFp870HEVz691DIkWHFCis3+2xdsOqJFwFIrNbUTXpJyDq7aB1bMVpfsWFJiR/nd
m7QGmvoxXtZB4099VGFkmiRQoe43NF881HmROg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
XWIUz3r9K8YdMNtaDPZkHe/sQ6BdHgzj6ek4zBJS2bZbt+F9Uuu0cDLJ/G4cMqkL7Euw5Tyy09Ba
kqvksnSP/Q34/hUL6lgViALqcO5b4oL7wuCqzJ7ghXQ7IOU3kPn/zDkXZ53Xf4RQCR8EYWxobBcX
C5jBL3Ra174J3ZNpwK8jSxkoH/zXfIy7YzwVkOK3sfYyiBROekX3pLu52dooP6VCZeGDVfZQi3ki
2QUbldTjM807egjriAka63+4cLzrlil3HjPPhJ1jsWqpP/b1pEPDjtfRt3qRC6q01mbnuQhJc/Qp
fWZoKt6T5F5FHmAdb9HwiGfxQmOXxTXiCCN8OgZnNOOeGEloQoB/OjByD+bzq9D3fGzHZOidm7xG
YeiwIX+r8L4p7fPa8tXtyzbTQD+doc9JsPYl2eweVHAqvXFUQRL17bAsxW3MsaLOJa/77ZbTBkvx
vitvirW0oMKOGwQ9n/yo7LteTENDBnMrmNJhoklTavuV+XSZqje0USVQ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YZ//P+GUHQDqpn2u7+vaRR/n6pkgMcX0ltpdiACAy9T1rY9/JIRYQaB0jbllhOrQAppfK9GfyabA
0PpVWsb2l42OnLoZg5rlWo6g+aaOAe8Vii++hndQmXs9M3gbv6lUmrE7P+u/8LdmuRaPzEUnFJeH
tn1O3IjnizGIsbwnD7lPOtetKIA0X9BIdwHx0x4vH845vPXdzz210rc/Y/PP6NN8uHzxeYaE5s0w
sr29XI9ibUMV07reHGJOZbiAbzzUMELVDuLeHFra4b1zriwCUVbeax/RhTcNggdKjbcpjo8HT/yW
IHglsLc4qAt3aTStevZ4b03narZeDNBHdSPhrw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EsSOcM2Ymz4XVAa0+f0dwPkTVaLSDSU6b/FPqA/TuuKf9X+OY4I0pT12//yNB5tSSxRW6aTsvpFT
isjZq3EDfIjvVzkFvRB+gAIJfFLUz+wE9HMbvrIkVpouAIjjjiXwQyX/8bF/8wN6QhWAr327PE94
OSYhfM22sNAfyr/tpX0BQe6zkO7I8wC8s0A+XHMDHmzfCA0ACcTwMhv7Hn4O4lBQbqhlGpdCY2T+
IhGXWCY/rXETUI/myVT4br4jxSFqQajZotIjycwHFeS+Gb3eUaXY+5Bsm8X3WAWW5RZiecGzoND7
uha2V8ClYn3Z9DcxmKp8nJn08TwK97bL98hxwg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OApFoHJ3RKPX62eyc4yYtb5WJ3Qq2xS6L7LmVy1hGXfeO5s98jlGjNSDa+MYB7Vj9QU2mlejnFqT
EtDgJngAQuR4gPz6gdKAvARnH9/YyO/8gmkUmHvHhHOZdeho5P9VUagspwSb9O51a3yP+ubv3Jd6
7K7oHXPeFume77AEP0tsCheh0r/9IkwWu4CrETL/Xccob5Am5wEp6fStopqDNThZsQu/i+9Id10z
/nuVz+nBzYgcU1zL1FZfKrKqATGivEVsKDaY8Hhy/z2COk6iT9/5HLY2QTXDn6npr2PzbZXt7vyW
E9/1Op+Z8E+6CnWp1HXH4uMJGVTS6Kr6yGU60Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6112)
`pragma protect data_block
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
SSW8v/yWC4ziAVEZIg==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
