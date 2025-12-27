// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sun Nov 23 19:58:14 2025
// Host        : Yaksh running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ floating_point_2_sim_netlist.v
// Design      : floating_point_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "floating_point_2,floating_point_v7_1_20,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "floating_point_v7_1_20,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axis_a_tvalid,
    s_axis_a_tready,
    s_axis_a_tdata,
    m_axis_result_tvalid,
    m_axis_result_tready,
    m_axis_result_tdata);
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_A TVALID" *) (* x_interface_mode = "slave S_AXIS_A" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_A, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_a_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_A TREADY" *) output s_axis_a_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_A TDATA" *) input [31:0]s_axis_a_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TVALID" *) (* x_interface_mode = "master M_AXIS_RESULT" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_RESULT, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_result_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TREADY" *) input m_axis_result_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TDATA" *) output [31:0]m_axis_result_tdata;

  wire \<const0> ;
  wire [30:0]\^m_axis_result_tdata ;
  wire m_axis_result_tready;
  wire m_axis_result_tvalid;
  wire [31:0]s_axis_a_tdata;
  wire s_axis_a_tready;
  wire s_axis_a_tvalid;
  wire NLW_U0_m_axis_result_tlast_UNCONNECTED;
  wire NLW_U0_s_axis_b_tready_UNCONNECTED;
  wire NLW_U0_s_axis_c_tready_UNCONNECTED;
  wire NLW_U0_s_axis_operation_tready_UNCONNECTED;
  wire [31:31]NLW_U0_m_axis_result_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_result_tuser_UNCONNECTED;

  assign m_axis_result_tdata[31] = \<const0> ;
  assign m_axis_result_tdata[30:0] = \^m_axis_result_tdata [30:0];
  GND GND
       (.G(\<const0> ));
  (* C_ACCUM_INPUT_MSB = "32" *) 
  (* C_ACCUM_LSB = "-31" *) 
  (* C_ACCUM_MSB = "32" *) 
  (* C_A_FRACTION_WIDTH = "24" *) 
  (* C_A_TDATA_WIDTH = "32" *) 
  (* C_A_TUSER_WIDTH = "1" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_BRAM_USAGE = "0" *) 
  (* C_B_FRACTION_WIDTH = "24" *) 
  (* C_B_TDATA_WIDTH = "32" *) 
  (* C_B_TUSER_WIDTH = "1" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_COMPARE_OPERATION = "8" *) 
  (* C_C_FRACTION_WIDTH = "24" *) 
  (* C_C_TDATA_WIDTH = "32" *) 
  (* C_C_TUSER_WIDTH = "1" *) 
  (* C_C_WIDTH = "32" *) 
  (* C_FIXED_DATA_UNSIGNED = "0" *) 
  (* C_HAS_ABSOLUTE = "1" *) 
  (* C_HAS_ACCUMULATOR_A = "0" *) 
  (* C_HAS_ACCUMULATOR_PRIMITIVE_A = "0" *) 
  (* C_HAS_ACCUMULATOR_PRIMITIVE_S = "0" *) 
  (* C_HAS_ACCUMULATOR_S = "0" *) 
  (* C_HAS_ACCUM_INPUT_OVERFLOW = "0" *) 
  (* C_HAS_ACCUM_OVERFLOW = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ADD = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_A_TLAST = "0" *) 
  (* C_HAS_A_TUSER = "0" *) 
  (* C_HAS_B = "0" *) 
  (* C_HAS_B_TLAST = "0" *) 
  (* C_HAS_B_TUSER = "0" *) 
  (* C_HAS_C = "0" *) 
  (* C_HAS_COMPARE = "0" *) 
  (* C_HAS_C_TLAST = "0" *) 
  (* C_HAS_C_TUSER = "0" *) 
  (* C_HAS_DIVIDE = "0" *) 
  (* C_HAS_DIVIDE_BY_ZERO = "0" *) 
  (* C_HAS_EXPONENTIAL = "0" *) 
  (* C_HAS_FIX_TO_FLT = "0" *) 
  (* C_HAS_FLT_TO_FIX = "0" *) 
  (* C_HAS_FLT_TO_FLT = "0" *) 
  (* C_HAS_FMA = "0" *) 
  (* C_HAS_FMS = "0" *) 
  (* C_HAS_INVALID_OP = "0" *) 
  (* C_HAS_LOGARITHM = "0" *) 
  (* C_HAS_MULTIPLY = "0" *) 
  (* C_HAS_OPERATION = "0" *) 
  (* C_HAS_OPERATION_TLAST = "0" *) 
  (* C_HAS_OPERATION_TUSER = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_RECIP = "0" *) 
  (* C_HAS_RECIP_SQRT = "0" *) 
  (* C_HAS_RESULT_TLAST = "0" *) 
  (* C_HAS_RESULT_TUSER = "0" *) 
  (* C_HAS_SQRT = "0" *) 
  (* C_HAS_SUBTRACT = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_UNFUSED_MULTIPLY_ACCUMULATOR_A = "0" *) 
  (* C_HAS_UNFUSED_MULTIPLY_ACCUMULATOR_S = "0" *) 
  (* C_HAS_UNFUSED_MULTIPLY_ADD = "0" *) 
  (* C_HAS_UNFUSED_MULTIPLY_SUB = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_MULT_USAGE = "0" *) 
  (* C_OPERATION_TDATA_WIDTH = "8" *) 
  (* C_OPERATION_TUSER_WIDTH = "1" *) 
  (* C_OPTIMIZATION = "1" *) 
  (* C_PART = "xc7a200tfbg484-2L" *) 
  (* C_RATE = "1" *) 
  (* C_RESULT_FRACTION_WIDTH = "24" *) 
  (* C_RESULT_TDATA_WIDTH = "32" *) 
  (* C_RESULT_TUSER_WIDTH = "1" *) 
  (* C_RESULT_WIDTH = "32" *) 
  (* C_THROTTLE_SCHEME = "1" *) 
  (* C_TLAST_RESOLUTION = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_floating_point_v7_1_20 U0
       (.aclk(1'b0),
        .aclken(1'b1),
        .aresetn(1'b1),
        .m_axis_result_tdata({NLW_U0_m_axis_result_tdata_UNCONNECTED[31],\^m_axis_result_tdata }),
        .m_axis_result_tlast(NLW_U0_m_axis_result_tlast_UNCONNECTED),
        .m_axis_result_tready(m_axis_result_tready),
        .m_axis_result_tuser(NLW_U0_m_axis_result_tuser_UNCONNECTED[0]),
        .m_axis_result_tvalid(m_axis_result_tvalid),
        .s_axis_a_tdata({1'b0,s_axis_a_tdata[30:0]}),
        .s_axis_a_tlast(1'b0),
        .s_axis_a_tready(s_axis_a_tready),
        .s_axis_a_tuser(1'b0),
        .s_axis_a_tvalid(s_axis_a_tvalid),
        .s_axis_b_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_b_tlast(1'b0),
        .s_axis_b_tready(NLW_U0_s_axis_b_tready_UNCONNECTED),
        .s_axis_b_tuser(1'b0),
        .s_axis_b_tvalid(1'b0),
        .s_axis_c_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_c_tlast(1'b0),
        .s_axis_c_tready(NLW_U0_s_axis_c_tready_UNCONNECTED),
        .s_axis_c_tuser(1'b0),
        .s_axis_c_tvalid(1'b0),
        .s_axis_operation_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_operation_tlast(1'b0),
        .s_axis_operation_tready(NLW_U0_s_axis_operation_tready_UNCONNECTED),
        .s_axis_operation_tuser(1'b0),
        .s_axis_operation_tvalid(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
bjal/8sg1sKURiJGYdgZpwhBJEY8+PVi6FXItSuuj1E7lxyjht+btjWGW/AVwQwXBo0XIwKu/rMo
zbmlVJzZDqhBo5J0ZjmJgdGGUSardqekGIe3oIEx8EuI9j4g5s/T/CF77SNXoMcyMjoPuZaMXU45
JQEKnJUmBJw0vg3Xh6s=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
q9Nm7K3iP4mfBRpX2IpbfiemXRhaTL9/HecW5RKNJixEq8UeUY/gAJlPFvybcM2TaVOXS9BocLRK
HxpdSL5w+uqDWU5/f9I5o8+FWCKuS3xC8VE0DvrSA3Fj/bFKvibWmQ1qF/enGe/8jsMLiLVBt7TV
gQdtfulY7gVIhgIkhXVqiM9uZZxk/Ho0SDCDC8oitx+ae1e/X0ih8GX51EkdnoerzNcDUoFoYHKj
h8dZiFgelYbrei30++ViF93P1kd8KZ484TypR5MBJaO85U9WyDC1pzZLOK3ckR4xJW+LVBJAt+Vk
yfr4oG3WFNexQAsiApRsiora2ERb8VZ+yfxOcg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ZwVTn/i91GYrPPsi+vo8EZW9rIfxNWIlVS1Q+3AHpSqji8OKEJePGYzAJhg1pzHMCtmWitA6lV8T
V0thiwdlQZeXzY3UIdKmSgs/kHz8ZQgzds4KSN2TwUNxdiRBgl/5nOm9Fe1idAOUX9TEmcYjHInF
79RzSeIA/cV8XMfzqvo=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
p6wrzWRrkGjRMuyUQVqrkboDJMW1siafGWLu6Iccp2r1o1br00t5BRqu/nTGEs91LgzU85L4o3e1
RqPo/mIyXxsbC3A8V6O5HcscTziIXKpVeEmJQauBfQlkYqqxnZnHA1U6DYL7SrIUlX0mFU+71Xeo
OxsvcCljFc1GycHrDPg3IWSA850IUJFORXdmd6eb5tMEWLyBeb0QkCcXQcuizEy1uErg/Zugb5ae
hPyyHgKM9F09XDdX6rOyBysQhCwldOCQN9XtHqbfd2ebxa1f10FET0g5NICBp013+KIBwks/j9Fa
TEt+56eOxNiSnwjiQ5/Cu79pTAd7JlQUzJDl+Q==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1NRxOURobKsb7EtcWJOhsKQBq+5PV8JajvpTgmIF7PCmokw7CNlh+xCE20B4iCgWl7ZM3aB+dJFb
37LA7tBJg0cpQICz+jdR4i3hCGpO+nOh0YI/1k42wckk3Ys9DcPBal2rV2lH0X5EB1732z5IHgD2
DvGnHejxO3I/L8mfyXKu64EXaSxLQ5QBqmRDFMEvIoYTUEAl3sZIqOD3loXl0NcYbHzzWXxE6mmq
b9Xej/o1j2X1BEU3GxuPQc8asD3kYRWBkhG6jJyW5IYnGXBSEiYnKqd031oo9//6ELGbVgFh3qCt
j95m3ydchcRBpxadxtW07Nbrgogkvq+4GkJS3A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PRUXJDW2V6A9nopGvSgP6Y1yPUvJ500vlQGvBGyVxr+Gb7EegC39AE2bfL0dnbvutnrpx89JFkkM
6rhPY6Bp7U6yzq6QX8nKP+fiejigQG7RXnLiKPhV6TNrtDFqDIJvVkwzfT5qrjGaW4ySXa/PCxSW
pb6xQOYKBVyXEZp6BUb1Nks4W+M0O8itkrQm7OiihntByqbm16Bk9w3YeJbdIMjt5bTxbFeb3Dt+
9MGPCLrWhT44aD+3ZUzb0wayS60ExW3hCMeHh/ledj1yzXNA89h3NQenG86YurpBwJQL1Fqd4fcM
L9hErToJWMqyyYFBdXDT4KGchO9kLX53VwCaHA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qjuONF8jxdS7+/zLxb3FHVs9mqEsgiYDYAp/1iXQpnVvAidF+x1TZOMyH/lUEZsOqmBTEe6JytDj
/fDdgn0mZQ8OTgvIwnA26qqWdnaXecg3AOUSdhjBn2LT78h1sfkWoyUXbwOmPrtarrug2ZMK43Ul
prY1IOUjyBDOBEYSL4ttwWaIrOKvmcjuGL+7Mpajv4OzYQda5Hg0M/SbgMBe9VYfYIMDd7SnkL6n
MMahJXjfBA7MthcEgmWLDkTnMCaM5QGPfu0XxxRAPnMSf5XBG5dXOA99X7/wmzUDLkwFk3aNJSYf
NePMBfQ0uYyGxSm1zPM1Wx3P8vTmG6OiovrnBA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
g49ROE7HDOvxuGL/meJbfNZEbWAcGwWE2OBBARkNsw0oe/VvKe8Bq3ng/2qIhQ0kQ1gSnP0wKLil
Nj03uYIHP2fT1hCQoP/LrRENSjiyr0yqEPar1xyswLT2nZtTWbPF7bfRS7GFCYyDFIxdEFqjqWZS
lDzyMJ6geyicdGKUI0PEsQY5dIKVjzHXEp0ho6HyweogV5Yaoalir3CZmeSCW1XCG0+A+LhZYTw7
by4NjagdXrpW/CpONSfLBHIxd0aDETnkRxWb5fPf6uUHf2glwe7SRiRbtuuMTPQRcuXVp4uIAgOx
tKxk74n9u0EAzJpDtb/UgoH0nuyY71PEJhKwEkFj3AFffXu00DwAve9J8C8NMUHWSiy9pd6Moy8t
cBT9VCYeXR2rUlTfIrjCa/DXxKwAQX4+XQdr2wFm4lgtMAfy8Lw37zL0tYFs0/L/nE1FU+F0wOP8
q6/q4de0Hxi6iSpLsvjB4vYRuMKI6zGUfakjJoakiCJ4HPD9tZgxI86H

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kAGTnwtURPwFrlzH8PIUqYC/LHHuy2uOg5BaN9csekRnpYPtrD8G4ysuRWBCHmIC1lpzl5dQsJ09
woWQE84uPVdOCxg8mEr8lbK82MEAuY8xA8oEXRW4HnlCyNBlgxAq1uhifPlrT0P3UyD7m4/pc4Kg
EhJYA4DVGzSYJw9kKZkyxbj786K09DMl5+AdkBEi/akE1TENGRcg/tVV9Q39xDmXZn4/zRslmwUz
arQOAoHkUcOLNhCbYZ3V44jr31FmEoUhFNjR/Exc1DVwIT4PwGILdnjkJuLwtHgb7VDllLhsSdZu
H0wiC13i7xnWY3a8atgPCugf+D+8X4WKBT+4Cg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PlP+t5vbYAE3pSCAR/X3Bjunl64QadE+ZArN87OAgVabH6zTW+TXhFEUmT2SkBljt9RdnyqWyMll
jZzai9aGUQMJqOLjapBWmaLKQXVX9NLBLMZCbe9Nt0+1LqYhAYPSi6mFjJkH0o7GqRrQTD+39Rqd
SKGRKDTa/sI6LLv+//Je1JCyhVXZq5zWvWKtMSl2vNDm3RSK7wLj1HXPULNO/vxh9sQeYktsHnO2
Id1vg82K27PGCZW1tDa+wlqNXQWqbWI+V1nInvvb+hxxGqib9vkSq1Er3DW2k8MrIr/iQfLWUGv5
txXFomLbH6FWf4v2aBCIPBJ4+okaWWRxMR8qng==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aJiVtEIswxQ0JR3yyfLxbY5Cl25K5yPgvMD3TmTTbkwme6yH2kl6f3wqIuTzRfGIto3iT15tPsrt
kNi0abteWOQVd7aO7wMmE7c62CW0vXKhE0bO/hHD5wmPSDlPp+KoWORXo7WApKaD5CBcljPA8wgy
QVPK23xSiQs2y4Y2mr3SjxcbtwicZ622QzoyryyUaN4YfgehqB5LeZqg1oi9DX2tbVgJvpQF9lOm
9wnEG+7fIwX+xhHRIDe6To+wLnbG7DVodpwWZ5kZ2xSw9FRXv6EZwsmlJfliMbR2kAvLKwzGdf2O
ePPOu6Vx3PmWVo04feSOCXbk07bKSkPHGZNSBQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9168)
`pragma protect data_block
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
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
bjal/8sg1sKURiJGYdgZpwhBJEY8+PVi6FXItSuuj1E7lxyjht+btjWGW/AVwQwXBo0XIwKu/rMo
zbmlVJzZDqhBo5J0ZjmJgdGGUSardqekGIe3oIEx8EuI9j4g5s/T/CF77SNXoMcyMjoPuZaMXU45
JQEKnJUmBJw0vg3Xh6s=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
q9Nm7K3iP4mfBRpX2IpbfiemXRhaTL9/HecW5RKNJixEq8UeUY/gAJlPFvybcM2TaVOXS9BocLRK
HxpdSL5w+uqDWU5/f9I5o8+FWCKuS3xC8VE0DvrSA3Fj/bFKvibWmQ1qF/enGe/8jsMLiLVBt7TV
gQdtfulY7gVIhgIkhXVqiM9uZZxk/Ho0SDCDC8oitx+ae1e/X0ih8GX51EkdnoerzNcDUoFoYHKj
h8dZiFgelYbrei30++ViF93P1kd8KZ484TypR5MBJaO85U9WyDC1pzZLOK3ckR4xJW+LVBJAt+Vk
yfr4oG3WFNexQAsiApRsiora2ERb8VZ+yfxOcg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ZwVTn/i91GYrPPsi+vo8EZW9rIfxNWIlVS1Q+3AHpSqji8OKEJePGYzAJhg1pzHMCtmWitA6lV8T
V0thiwdlQZeXzY3UIdKmSgs/kHz8ZQgzds4KSN2TwUNxdiRBgl/5nOm9Fe1idAOUX9TEmcYjHInF
79RzSeIA/cV8XMfzqvo=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
p6wrzWRrkGjRMuyUQVqrkboDJMW1siafGWLu6Iccp2r1o1br00t5BRqu/nTGEs91LgzU85L4o3e1
RqPo/mIyXxsbC3A8V6O5HcscTziIXKpVeEmJQauBfQlkYqqxnZnHA1U6DYL7SrIUlX0mFU+71Xeo
OxsvcCljFc1GycHrDPg3IWSA850IUJFORXdmd6eb5tMEWLyBeb0QkCcXQcuizEy1uErg/Zugb5ae
hPyyHgKM9F09XDdX6rOyBysQhCwldOCQN9XtHqbfd2ebxa1f10FET0g5NICBp013+KIBwks/j9Fa
TEt+56eOxNiSnwjiQ5/Cu79pTAd7JlQUzJDl+Q==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1NRxOURobKsb7EtcWJOhsKQBq+5PV8JajvpTgmIF7PCmokw7CNlh+xCE20B4iCgWl7ZM3aB+dJFb
37LA7tBJg0cpQICz+jdR4i3hCGpO+nOh0YI/1k42wckk3Ys9DcPBal2rV2lH0X5EB1732z5IHgD2
DvGnHejxO3I/L8mfyXKu64EXaSxLQ5QBqmRDFMEvIoYTUEAl3sZIqOD3loXl0NcYbHzzWXxE6mmq
b9Xej/o1j2X1BEU3GxuPQc8asD3kYRWBkhG6jJyW5IYnGXBSEiYnKqd031oo9//6ELGbVgFh3qCt
j95m3ydchcRBpxadxtW07Nbrgogkvq+4GkJS3A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PRUXJDW2V6A9nopGvSgP6Y1yPUvJ500vlQGvBGyVxr+Gb7EegC39AE2bfL0dnbvutnrpx89JFkkM
6rhPY6Bp7U6yzq6QX8nKP+fiejigQG7RXnLiKPhV6TNrtDFqDIJvVkwzfT5qrjGaW4ySXa/PCxSW
pb6xQOYKBVyXEZp6BUb1Nks4W+M0O8itkrQm7OiihntByqbm16Bk9w3YeJbdIMjt5bTxbFeb3Dt+
9MGPCLrWhT44aD+3ZUzb0wayS60ExW3hCMeHh/ledj1yzXNA89h3NQenG86YurpBwJQL1Fqd4fcM
L9hErToJWMqyyYFBdXDT4KGchO9kLX53VwCaHA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qjuONF8jxdS7+/zLxb3FHVs9mqEsgiYDYAp/1iXQpnVvAidF+x1TZOMyH/lUEZsOqmBTEe6JytDj
/fDdgn0mZQ8OTgvIwnA26qqWdnaXecg3AOUSdhjBn2LT78h1sfkWoyUXbwOmPrtarrug2ZMK43Ul
prY1IOUjyBDOBEYSL4ttwWaIrOKvmcjuGL+7Mpajv4OzYQda5Hg0M/SbgMBe9VYfYIMDd7SnkL6n
MMahJXjfBA7MthcEgmWLDkTnMCaM5QGPfu0XxxRAPnMSf5XBG5dXOA99X7/wmzUDLkwFk3aNJSYf
NePMBfQ0uYyGxSm1zPM1Wx3P8vTmG6OiovrnBA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
g49ROE7HDOvxuGL/meJbfNZEbWAcGwWE2OBBARkNsw0oe/VvKe8Bq3ng/2qIhQ0kQ1gSnP0wKLil
Nj03uYIHP2fT1hCQoP/LrRENSjiyr0yqEPar1xyswLT2nZtTWbPF7bfRS7GFCYyDFIxdEFqjqWZS
lDzyMJ6geyicdGKUI0PEsQY5dIKVjzHXEp0ho6HyweogV5Yaoalir3CZmeSCW1XCG0+A+LhZYTw7
by4NjagdXrpW/CpONSfLBHIxd0aDETnkRxWb5fPf6uUHf2glwe7SRiRbtuuMTPQRcuXVp4uIAgOx
tKxk74n9u0EAzJpDtb/UgoH0nuyY71PEJhKwEkFj3AFffXu00DwAve9J8C8NMUHWSiy9pd6Moy8t
cBT9VCYeXR2rUlTfIrjCa/DXxKwAQX4+XQdr2wFm4lgtMAfy8Lw37zL0tYFs0/L/nE1FU+F0wOP8
q6/q4de0Hxi6iSpLsvjB4vYRuMKI6zGUfakjJoakiCJ4HPD9tZgxI86H

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kAGTnwtURPwFrlzH8PIUqYC/LHHuy2uOg5BaN9csekRnpYPtrD8G4ysuRWBCHmIC1lpzl5dQsJ09
woWQE84uPVdOCxg8mEr8lbK82MEAuY8xA8oEXRW4HnlCyNBlgxAq1uhifPlrT0P3UyD7m4/pc4Kg
EhJYA4DVGzSYJw9kKZkyxbj786K09DMl5+AdkBEi/akE1TENGRcg/tVV9Q39xDmXZn4/zRslmwUz
arQOAoHkUcOLNhCbYZ3V44jr31FmEoUhFNjR/Exc1DVwIT4PwGILdnjkJuLwtHgb7VDllLhsSdZu
H0wiC13i7xnWY3a8atgPCugf+D+8X4WKBT+4Cg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PlP+t5vbYAE3pSCAR/X3Bjunl64QadE+ZArN87OAgVabH6zTW+TXhFEUmT2SkBljt9RdnyqWyMll
jZzai9aGUQMJqOLjapBWmaLKQXVX9NLBLMZCbe9Nt0+1LqYhAYPSi6mFjJkH0o7GqRrQTD+39Rqd
SKGRKDTa/sI6LLv+//Je1JCyhVXZq5zWvWKtMSl2vNDm3RSK7wLj1HXPULNO/vxh9sQeYktsHnO2
Id1vg82K27PGCZW1tDa+wlqNXQWqbWI+V1nInvvb+hxxGqib9vkSq1Er3DW2k8MrIr/iQfLWUGv5
txXFomLbH6FWf4v2aBCIPBJ4+okaWWRxMR8qng==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aJiVtEIswxQ0JR3yyfLxbY5Cl25K5yPgvMD3TmTTbkwme6yH2kl6f3wqIuTzRfGIto3iT15tPsrt
kNi0abteWOQVd7aO7wMmE7c62CW0vXKhE0bO/hHD5wmPSDlPp+KoWORXo7WApKaD5CBcljPA8wgy
QVPK23xSiQs2y4Y2mr3SjxcbtwicZ622QzoyryyUaN4YfgehqB5LeZqg1oi9DX2tbVgJvpQF9lOm
9wnEG+7fIwX+xhHRIDe6To+wLnbG7DVodpwWZ5kZ2xSw9FRXv6EZwsmlJfliMbR2kAvLKwzGdf2O
ePPOu6Vx3PmWVo04feSOCXbk07bKSkPHGZNSBQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4544)
`pragma protect data_block
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
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
