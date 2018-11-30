// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Fri Nov 30 01:26:52 2018
// Host        : MY-LAPTOP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {d:/sangm/Documents/UCSB/4th Year/Fall/ECE
//               253/ECE-253-Final-Project/ECE 253 Final Project/ECE 253 Final
//               Project.srcs/sources_1/bd/system/ip/system_microblaze_0_xlconcat_0/system_microblaze_0_xlconcat_0_stub.v}
// Design      : system_microblaze_0_xlconcat_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xlconcat_v2_1_1_xlconcat,Vivado 2017.4" *)
module system_microblaze_0_xlconcat_0(In0, In1, dout)
/* synthesis syn_black_box black_box_pad_pin="In0[0:0],In1[0:0],dout[1:0]" */;
  input [0:0]In0;
  input [0:0]In1;
  output [1:0]dout;
endmodule
