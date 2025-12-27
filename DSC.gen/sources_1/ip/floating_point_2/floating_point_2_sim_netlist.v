// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sun Nov 23 19:58:18 2025
// Host        : Yaksh running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/ASUS/OneDrive/Documents/DSC/DSC.gen/sources_1/ip/floating_point_2/floating_point_2_sim_netlist.v
// Design      : floating_point_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "floating_point_2,floating_point_v7_1_20,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "floating_point_v7_1_20,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module floating_point_2
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
  floating_point_2_floating_point_v7_1_20 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4560)
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
