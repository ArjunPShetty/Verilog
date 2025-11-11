// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Nov 11 05:47:26 2025
// Host        : Arjun-laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/programming/testcode/vivado/4-Bit Full Adder/4-Bit Full
//               Adder.gen/sources_1/ip/c_addsub_0/c_addsub_0_sim_netlist.v}
// Design      : c_addsub_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_addsub_0,c_addsub_v12_0_19,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_19,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module c_addsub_0
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
  c_addsub_0_c_addsub_v12_0_19 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2448)
`pragma protect data_block
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
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6032)
`pragma protect data_block
ucDePOqzRWixxhLzaCiSpgD3DmlcrBgP9LKJj40mgQCGJa7SXQCicMhH97x/K776v8hu2DxVi1jX
XXI9tH7OmyhFywwGRJtsntgQS2MnMpGvD2maS8YbHaFX7pWlrAFPWxsAk3VxcKNZp0TCsWtaAvyZ
xtsM1MB2S0uwcVmwPCNxD+Nb9ZupZqScuef8gagHlzNjnE0P4M60VH21u+8pBpK4WLShVKzNvQci
m+dpk/PHZo1KqPHDL3LPSplZMnxJmoDy3M2Bk9aoR4tGhSni9jsay8+nm9OgvKwguSTXu1AAEaKA
pOwxvtCrvryEK9PFuMBFAueFTSMmFGkm+Tlp74c22yLVAb4bAyX+zGAXKhuODdGl7KG74uxNnRpT
s4IWq5bi2wnlN1Y2+vyO0S3KFKF25w8tc1LpnFWNUQ/3j+WBxc900gUmu377SONXTWS5qZSthyJq
4j0QuG23OCQAigrZhS7cSY+yF367sezt1SA4mD9BntA77W6Z8STRZxByPy5Hhy67ihhBZcIxKHvP
rWX4m2cxPZmEyI1InjlhCvL1TZAAiQUb5upA4mfM+0YKcdOimqiY3zumF++HgMbpB22ghzveZV94
ur4KE9+O73/xkXssMfB5YubRtgm/iZMNqGLIg+ie6QdnVgQ7VftG0j8XGTabcAUqn1Z7XO4iWd2m
y1iAW13VRGLskOYTC8VuZpXqB55LCQcAPhSm1cMpmE5HnGr/cZOYOk5FMq9OOBI+a0CIlp3Uzfcg
UIHjo1KZwPXWzEVdf3R9dbT8KA26Mp5gbPWbxvFVyTaXdjPnzjpRHBTZvqP0HiENtlwS2N/KN2p4
/12ZPRU9kCMGg798OprQaq7dVaE2V5PxpEY1XT019pZV8VI01Um+0wSMQqumq1IOAqWt30aZ6fIe
XkdrzxEVHBl2sEaH2wpTL518p5JTEcCM+QbeyyswDdwKKbxvb8XyZQ3TTA1XUo+n+cGhep20Limz
wbZ7IfPb9/LPxJ1W6uiG2L3YdJS4OcSkFa9a7wh73EIpABM7xsMNu6pDJQoJic7TFaNdhcrw+N9s
Q0XskYBKJ8ENJpP12TfBiA/fbvZqAe2cv6NITGvfAh2GKFDaarsVM55GlT89foua/j471oOGQzWk
GMQAJ3d65dqOxGXQmhRJ9K1q6nhU7JGfqeF9kvyvcqm1UpGjIVDFI9vLbVyJMrlh19mO3oOy3lbD
DnxdUw+zVaMg2rt1SacE7etAqNAHNScD4negx7gpzhNJMc1WJEl6iaY9L3W1K1WDysoLog3HRGAt
Bo1fCdGh5E308y/oEp22yleZRRHAZqBSMpQCMBPOktdmzrjsPm0hp+hdWH/HVJwgPTSE9+hM+w3u
gnfoVKMrap+YVT+i+w8Rs02ibJ9UqH/V1+5HN8hAR2yUiLsDAIoMesMy4z16zwYF9hQNpmBqpmUE
4Xtw9TFiBhwQp9WGm0065K+D2v9ZutZI+pMGSxj5Rj/hOurGJa7Td5Xv3emTLOE8V7Np6+kWgpOS
ST6fd87emt4EvcVcMvd+oM2eBzyfOSzTdD3zVgK8a8vhMYZ5w4EVm1AIhLovwhAW+sUpMKHpRKpr
rPp1mPwxrOWH1riMenjllyiTjZe3B/PjypjhX/obrYmc8Gbg3NyBxRAUPnehYZXauOW9Gpdpw2fA
TFYxBH3kLf1A0kGeT9uhJ7PfbJ7Pt9etOi+vAfycMRDatocTkrCyHyvZ/5GckuzW9NxDEoRJh4T7
VCVDa5pdhy800PDocxE4kaqni3LPYqV3WOOlLb8HbYAFoTf7iGpz+XvF0hwc9Nc5zbM5sdvH7YSG
j6dNj/6gmVhvne+5FLnj47BoYV9b6wfISciUPlRfkTtMxWi1cV89+sEOnu6vmzyOCi+dqaKARYJY
peirgzZ9XvG0jyV8re9PCJbiN29w2LnK+mv8p/fOcPOvc0QBhKYWclN+q7hr793zx2mofo1t0Bir
2OjvkdVqfnNgdVFq+05pxXwbM8T5R766XzximieU9mGcqZhZ6CFDkIgKmoNVq9eNmtbJR8PB4Rhm
M0ZIkBV42D21LS2E/NGjUKVy0i3M1IhcKZug2al6zkFC5wFQJ2bB+/7hEd+nSC/XU0dbe9dbWlk/
Ipys+i0xUi6KPNPXnMqQbl3GaA/DctxgdG+I7zB2yj7sjujejFFMyK3cD46uqLY45SvzZWduEojA
PUQwa2/WvbjoBImTadmln8CC/njn9luYZLquYhXtFuKST77lU6tZerC8w3pkY9eD3K3+UzQP/8pl
uZoDIHQ7+e97XiwGLWr8K4oqKi1kMZ8/EkEwkltAznlj28lmJ0bcbpYv80M189GlIxefjMoU9x4q
L4fMbEQyWkv+lfMBON+z8FRor0lPwiTOedVDf6CJmNULBe6wVBQ9Ig9CCfvmJma6/YrJGzRCMm8L
j2L/JxzOjAoXX4DJrNctfTnTDJVHJ8KezZPvbR9HCFGUbVyKJMOgC+laFUuWINs1MTW4tkjHqGyr
LfJUoC6sP5GXgEKT0Ihr2fGkw/CvwWIfECdHblsNO+qpVt09NzKYSdQ34IawyRMpqx4UcuFCLhYi
FgcMNH27YMWxqkMxEn1DODTg63FEQC29nW4TpAQcg5Ya8uDVSoTwsPz+/IvIX+ae6I32nIj53Gef
3Fepln4ZnefALv5oOpDAayX+mg9Rs9mwn4+RgUe5Wv6az26hYYVpwkSjGMwsH4+LeLX+pFL22ZQ7
UwziSOnDNFIIbiSGjD9NpJofyI2018LpizJNiBqM+9yYOCXI2IBt226F6kpcE7Uo7yFXiV8V5PR+
vy/For6ekjGwaN4vraGkkgyA/DAyPVQ698pLoS7dHCLvFOLUMBALAllXfboETwE5eb6w4YxMnM3m
9vpiUp/bOJZTqajQC9JcaFtRofFO4aJ+cagy80uOeYcu1+JWZxshisZAf52A3Ke6CuDM4ddbXHa0
dEl8sapBsrE0QVht8m3tcT2VjGnryyNlksrpj9qzHA7F5YvEXrY0rZ+mPwYPyIjCxnJlapnrx3Ry
hqmHwBsIHR0EzwIPr8h7MZQXb2V+zBOpZTkkCAv7HGFo04Nsq6uwKw0F+So/vqhpC7o+8OTFg2/N
PT5Yc4grrMy5EJECSHmjkWWXt7BngP+h08Tp3XGtCnI+O8jgkxZiTxMSSw6pdraBt6YG8REWM+ag
uku/+aLspsY333Y08Dcijji4N7/cZZACXwtjdFcd/AwvjuKckMuQP4yyItVUdWFYi1IqTFFKn0hh
zjCdxMd7TalpsLVlXfdumgJ+L5aEmTB6DTB0TGXNkHE4YiJi7D1rp2tcnbRpDGSVvLmNUOJ//vSq
porgy2tRo255nK+v2GHYhpHPllT3wFB9/CB2Z88VUxpOKZprOrCMhuGESlAwQ8PoubIH+pA0gPRE
tOj0y+KlS+8CoVqttwGj/X316b+VsDaUTvo5N/waNMPPQkMs60wq+QXKgchelWkgEZo10sF0FtnG
n8AlIpAb7EA1YduXiIo/ZfQjZkF2s7Er22n41dHEdTiOdEA+HjYwSF51N6D6BzwhYDM1r5gTm+lE
zdqYzm2cXRf25yeuOo9DhtZCxuR9Adt36BSXi963pYm3VoG4Bo71PXiMcgAG7xvQkxzzdQR35uNn
4U2IxNthMzVzlLiVDfckgckxacnSepl1WV7uhI4WYZ15TV70afRbH/1solnoRxkM8cl+sdid6LJ3
WuyharI8QmvubmIroUfwjH2tjtWgE/UV8SGzk+06hTSLeo+++vyzlx6bazTITwp+UJ4inq1HP1Cn
kcMVr+oJzlKKFZf7AdThAPS56+JLIATPV+9hXf/QhrIu9jXblYLe49h+jiuaHa3U94YIzdx5mp9R
MW2NkZLP64n9Iqtlnhj9q+Obnhr6ly5wyL/V2miDPwcYoBx4B9UY/OmyNOn/MpxAS0PCr73c1EnB
ck1Dh9hnBPjYthE7NXleLShes/Q4i1ExY1REzTDi7YQSPX9ohoP7kei/59Kn8umcsK4HOP6iIref
PPMD0PwWpJBMKf8yyVCBNPMxSJe/dSNJwMSuucbYC+SQvXgOiSZvzKqI794cq6r8BNkU96d1QVCB
FQlfAgAy/eBZTNV4SlT7QyJbCfpwEY2OpUZ4id7npRMjGh1FedkO3uY4b/tHL7GeiNf3F7YUyhsd
genYUoILs+93rveKxP/NebyDt02HPH+z0JxvkGdQbBzRcOfwRECV3bOjw4TdmpstNrhJ0fKU6uSF
TfbXGxHQuY0b72MWFyLpyjXrnRo6Tb76DPZ5auN51asPZBFnyzP0PMmkwaZCAqwsqtKjl9NNvnTA
0j1ZXpcTdrZOudahY15qzSw42btwhBNvh71kaQ9MscmE5tuENN1cH02RMMv/Xs0eeWtHVaD0OWRN
t36EV8edhn9tbT4rFgv5w4y9ogY0xKX4ZUSwoljgzylas2QmhPEVcjkgfmAvLMpnAQScbrVS4/Ab
xrMJ+N6X4Nuxk5YfUbCuQ/NxGz6+FGojBvDYYJR5ATudpcL/mhODgpfTez9TF44gP0Vm35cUqrLE
0EJBzPRocF7uS/QKJWToYnZVASxycH9t8bcoTu2/GSngCSc2RLYXDC2ITgtMkXWZsrtIYoUamhyH
V9Ooy101a7EI+/0rkEyH1rbuY/AZ5C3tLfbXttKN+WfmYI30muNLvwT6maE+d9dfB2cIwgs4rQ8e
6CuwGkceWj1gTmbrC3XzwGUF/xv3r72zMGm7YnZJk55rxUtH8r0HqJ8+qVy3WtXF/mWeS6Yv3oNM
CrelOBpul/JquwVu46V+xBo0UeoDUNgY1In3m3FIWJbE69zOP/1SS2pdf6LPV/wMcy7hS5Aai3P9
HqhTaVnhp0SnQFIzXAD/SpebcLOjva0ZrCkA2iOBccUZWW0HJ7PHpoJ9q71AdXb2e+IpOr0k9IgW
W+VVAEMeYDaEvqCtnG0Ph+2MGQpnFhpkbdfOfvTzmJ/5u9Nl/Twj/qgJ2Vo8DGn1V6SjOw/8vsjL
r+BH8z2SifvBIysr7fGg9FaD/bmDaus97+CxAyysavb7m6RuIWhbhuGeVk5loai3A3V3fqxyLObC
C5SjvB4KAi1REu5MUNvqvBHuD3zMQL92Su87Cd4RFXiBFz7EhEtW8akTYFQ725cwMejq0zTQwtYx
owMVKAAHFXrF335PhjPndsQpt7gvgykVTkeAGzSyeeUoOgxLw03ONOTECqyzcrfAc6p4gXeTMj8j
SuS3IS28fopN1QjA+Cx34ydKriby49AzteFXKKMchAWOdfD/B0U7/vPgEbJgiIJZrBC/RyizLzH1
xqTZa1N5wsGi9Bp22ySHSmOEi+3RsuRcAeVWWiLiqwt6FavJuSgnFil6yn4cKbRv/LJN1DQzNTot
1EdzbycHe2bI7Jq05KodT0YhWf3TXmWvo7TDP9O0ufVk7Cm6Bi7ZUlg4qsLYzU/4GRr7OGyFB63l
3Qbbj+zEwqLyMMe+qREihS0z139iTXx+xTRZ4fRVrxtwi5Vo023AuTxwCLToVGGdvXQEi6LeIkPC
4//VWNIii2V9heoHPXh+PzQB7jx/wgHCJQwKtbc5AoJHQ5XDdvWynFjifsfHJ5Civ3CZXd5rX5Ma
RAEPa3SNt/zY0tsPFuwLzTgGKtf03CtaU9ktpSrT7bw33SgViqfzLTa45D48zO635+VCGhwti/M4
bxqPAQF/gkyynXnNtHreihfWys+hnsM29YnHV8TThbEknv46HtTjdWJsAE1MevG1cnfGV5PF08Lo
xpJ2gNwQKrOYUPDXPRCrqZJorZXvHSQ6IVDuLh3S5wKthi8bMw+eb2whk7sU6qd+rFaVbO15Tc4M
nABSxhotOlxmmri34CvKrZfZcFAyWGn8sx7ZK/pZI5mYLevtkdLfX5pud1mo8Rgg4d7aF232mlBm
UjKTR58Rn9+SZoCjjTZ1KLVP8VavlF3r7xRCwZx/bjwRMbXVqEKvhY11cmVPQ6Qyagx1cQ/SBXqj
sG971tJ+77eRdqCC9fT8I2Mg4od+H9WvuPKt8xXufNfTshXl8VKgOblGYviROZgAjVuwDqJjdQgW
nNws8VleTDyboq32Ph2fr6NUwneFWa9G8+Rpfw4tLydaIpqeSmxGhJvNIt6lB6uKNaAYPnCnjqIE
GjG1r+/9cBCMHJnLgh3OMG9XFh7bu5gGq2DluaMdFE1qwVhRNfjdxWXKu7N0Fl9a0+kYwePzC5dB
3SReFfsQf4vdvL7xnLc3CW3syJoeW0/Gy/WU8qO3mq5EdZRLgYIsxu3OyGahtSEOcc/5aw58ENcN
AuN4vPwt4Kk1hWK9n6G0RSXBxryDr5l/kCmVkxE5cGVPoFlPcJuG0pBhAtCjGx3Ii77avyJfHWq9
eBJK4xBPGSSSdBX3eTOYhxhemqSlPadn7/abjg51pcowSqZ0igAbbQFFE9f71o+qNo1lgkCs8V4q
V43PWWW3Q+FThpKLZbgHIFs7e+1PLYtWRfIXAwyn9Le2jc9fMNAWcUf6nnO0Em2lXm0087Mfigfr
j+Iwo6SaXd0sM4h84tchDiHydqlkwwgzVxfCkBtkarpoAuYhZGFyDUUk3801p/vsWPjZVljkvOUl
AZ9/7I9gux9VngHXkA1RWb2Cn8uEvc16t+oQpL/xBLaWaG5IVBlJr9wiy/heToCvuiikuug6DBo8
zLqlyd8uKfrjYzimDSZAJcSmOcvZqt04wUYCf12QzldS+vpZdEkUES+ylHhNJ5Wej2QP1utTR6SL
oAOwt+sPbSnhuUtlH4/rDeds+1WwfNuACDWHqYLs79Qpp+0AAQX/If079QZZyvFLC1ibeS1Z3iiL
QH9f5WT6BhP38sDYzsjBgWjCKGUAr+f9qikAL2axVRiFFb0XEXA23o7OLxbKKyCFcDxENK2s/dNP
scen1dL4MdouauQ+mjRoAi8DE4kpvUBw4vQr1OFL2Ms0GI/B3kJfFPTapE8aMJ93fh4lK+3M5qn2
LVQfTBM6SQpYiGW271Dd16be97vIqdvtwBvPONd0FyxdOltFED4ZDojiQ7MUT6I8EDDRRzsOlP0D
OIZZhbWFwZRGMa6qEWu3bWnIYCctoBIam4h/g8vkdoEgbIfMGMEzTFrx897k+iI+oEJ7+tG65m+Z
DqlPl2XbdQLEYeMOSvE+dTMvh3+bzRMuzo0T5ANuu7FUBPH8bd1uFDrydtBl6VNomDQVeHRzF/G2
duJRcaCJjsgi8txfZ/S3d5nnOjrACZJyyzSB+GNMYLFmwwZ7RDltpB3sTM7zcyYBEd89RiF9NDb5
5HjgMa/lHpbwHzrg26h2CwTvJjwhgnmbVB+pu7man5k6e1BlJSzkaMus4fS3y5D1tkAYGv8Yzvzb
R9Ab0SO4l/qpdLRqrTx97aEXCeMTcSWtZuZBCtLhCUMWbl124e1o8vneq6udIYWMJBhZcjnXpWxl
ajB7bVAtF5qmVcO9oDeWMNlHhXt0iecwVIIm5FQDNHpywV8RBeXcyWwHDZAj5Hl7JmftraspmFfm
3hKfGyoKVOoIgSNZMbF774zfNOQOZvs/s4i2FXwO7XHl1nnHS6z4Kqc9ia6Ucie1mOChx8195nsS
0V8lpzv/bDCDJmfcBTHUjqLMn6jw09eGBpyZ2jljA2bVs4clgznMCtgb2ppl8XeZh5+eDz255FvE
fcCY+d7jQbjoJsHoetv8I0cLKOCIdNP89UpTH9DqTEyb61QkjLDnGycUGX/tL3lmqbiPjkF1vsou
Ldz6r+5H1cRSBJuGPAvbcJChHSr+Nsy22XvoqRaQe6/BZS8+4Vgn8QbHVSzvMfO9ATwfDziFeS/7
MtRfobT587pf6J19XxHEE1EKiU2Pswx6lZ/5IOwGLkZkAgxOlgt5f49rAjFr910qv8BZKJvdVG5t
rj3EKfJ+yfj+ADEI3/EEbzyjrBOOEj6sMg0pmh/Wd5rdcbSoZM1q8ZWYtXXRBZJyv75BBcXQZ8sM
8vywKpd48Qzdk++/G1kaeqbrv3nKuYR+oyDQ2m8VoOvy7OdgMzwLAPAI2sJTY8g=
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
