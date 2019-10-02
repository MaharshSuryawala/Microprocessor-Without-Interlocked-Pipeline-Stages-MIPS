////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: MainModule_synthesis.v
// /___/   /\     Timestamp: Thu Nov 02 19:49:48 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim MainModule.ngc MainModule_synthesis.v 
// Device	: xc7a100t-1-csg324
// Input file	: MainModule.ngc
// Output file	: C:\Users\Jay Patel\Downloads\PROCESSORS-20171102T120455Z-001\PROCESSORS\netgen\synthesis\MainModule_synthesis.v
// # of Modules	: 1
// Design Name	: MainModule
// Xilinx        : E:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module MainModule (
  clk, interrupt, reset, data_in, data_out
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input interrupt;
  input reset;
  input [7 : 0] data_in;
  output [7 : 0] data_out;
  
  // synthesis translate_off
  
  wire clk_BUFGP_0;
  wire interrupt_IBUF_1;
  wire reset_IBUF_2;
  wire \ins2/reset_inv ;
  wire \NLW_ins2/PM_douta<23>_UNCONNECTED ;
  wire \NLW_ins2/PM_douta<22>_UNCONNECTED ;
  wire \NLW_ins2/PM_douta<21>_UNCONNECTED ;
  wire \NLW_ins2/PM_douta<20>_UNCONNECTED ;
  wire \NLW_ins2/PM_douta<19>_UNCONNECTED ;
  wire \NLW_ins2/PM_douta<18>_UNCONNECTED ;
  wire \NLW_ins2/PM_douta<17>_UNCONNECTED ;
  wire \NLW_ins2/PM_douta<16>_UNCONNECTED ;
  wire \NLW_ins2/PM_douta<15>_UNCONNECTED ;
  wire \NLW_ins2/PM_douta<14>_UNCONNECTED ;
  wire \NLW_ins2/PM_douta<13>_UNCONNECTED ;
  wire \NLW_ins2/PM_douta<12>_UNCONNECTED ;
  wire \NLW_ins2/PM_douta<11>_UNCONNECTED ;
  wire \NLW_ins2/PM_douta<10>_UNCONNECTED ;
  wire \NLW_ins2/PM_douta<9>_UNCONNECTED ;
  wire \NLW_ins2/PM_douta<8>_UNCONNECTED ;
  wire \NLW_ins2/PM_douta<7>_UNCONNECTED ;
  wire \NLW_ins2/PM_douta<6>_UNCONNECTED ;
  wire \NLW_ins2/PM_douta<5>_UNCONNECTED ;
  wire \NLW_ins2/PM_douta<4>_UNCONNECTED ;
  wire \NLW_ins2/PM_douta<3>_UNCONNECTED ;
  wire \NLW_ins2/PM_douta<2>_UNCONNECTED ;
  wire \NLW_ins2/PM_douta<1>_UNCONNECTED ;
  wire \NLW_ins2/PM_douta<0>_UNCONNECTED ;
  wire \NLW_ins4/DM_douta<7>_UNCONNECTED ;
  wire \NLW_ins4/DM_douta<6>_UNCONNECTED ;
  wire \NLW_ins4/DM_douta<5>_UNCONNECTED ;
  wire \NLW_ins4/DM_douta<4>_UNCONNECTED ;
  wire \NLW_ins4/DM_douta<3>_UNCONNECTED ;
  wire \NLW_ins4/DM_douta<2>_UNCONNECTED ;
  wire \NLW_ins4/DM_douta<1>_UNCONNECTED ;
  wire \NLW_ins4/DM_douta<0>_UNCONNECTED ;
  wire [0 : 0] DM_data;
  wire [0 : 0] \ins7/Q ;
  wire [0 : 0] \ins7/n0040 ;
  wire [5 : 5] \ins2/Madd_IA_cy ;
  wire [7 : 0] \ins2/IA ;
  wire [7 : 0] \ins2/Current_Address ;
  wire [7 : 0] \ins2/Next_Address ;
  GND   XST_GND (
    .G(DM_data[0])
  );
  FD   \ins7/Q_0  (
    .C(clk_BUFGP_0),
    .D(\ins7/n0040 [0]),
    .Q(\ins7/Q [0])
  );
  FDR   \ins2/Next_Address_7  (
    .C(clk_BUFGP_0),
    .D(\ins2/IA [7]),
    .R(\ins2/reset_inv ),
    .Q(\ins2/Next_Address [7])
  );
  FDR   \ins2/Next_Address_6  (
    .C(clk_BUFGP_0),
    .D(\ins2/IA [6]),
    .R(\ins2/reset_inv ),
    .Q(\ins2/Next_Address [6])
  );
  FDR   \ins2/Next_Address_5  (
    .C(clk_BUFGP_0),
    .D(\ins2/IA [5]),
    .R(\ins2/reset_inv ),
    .Q(\ins2/Next_Address [5])
  );
  FDR   \ins2/Next_Address_4  (
    .C(clk_BUFGP_0),
    .D(\ins2/IA [4]),
    .R(\ins2/reset_inv ),
    .Q(\ins2/Next_Address [4])
  );
  FDR   \ins2/Next_Address_3  (
    .C(clk_BUFGP_0),
    .D(\ins2/IA [3]),
    .R(\ins2/reset_inv ),
    .Q(\ins2/Next_Address [3])
  );
  FDR   \ins2/Next_Address_2  (
    .C(clk_BUFGP_0),
    .D(\ins2/IA [2]),
    .R(\ins2/reset_inv ),
    .Q(\ins2/Next_Address [2])
  );
  FDR   \ins2/Next_Address_1  (
    .C(clk_BUFGP_0),
    .D(\ins2/IA [1]),
    .R(\ins2/reset_inv ),
    .Q(\ins2/Next_Address [1])
  );
  FDR   \ins2/Next_Address_0  (
    .C(clk_BUFGP_0),
    .D(\ins2/IA [0]),
    .R(\ins2/reset_inv ),
    .Q(\ins2/Next_Address [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ins7/Mmux_n004011  (
    .I0(reset_IBUF_2),
    .I1(interrupt_IBUF_1),
    .O(\ins7/n0040 [0])
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAAAAAAAAAAA ))
  \ins2/Madd_IA_xor<5>11  (
    .I0(\ins2/Current_Address [5]),
    .I1(\ins2/Current_Address [0]),
    .I2(\ins2/Current_Address [1]),
    .I3(\ins2/Current_Address [2]),
    .I4(\ins2/Current_Address [3]),
    .I5(\ins2/Current_Address [4]),
    .O(\ins2/IA [5])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \ins2/Madd_IA_cy<5>11  (
    .I0(\ins2/Current_Address [5]),
    .I1(\ins2/Current_Address [4]),
    .I2(\ins2/Current_Address [3]),
    .I3(\ins2/Current_Address [2]),
    .I4(\ins2/Current_Address [1]),
    .I5(\ins2/Current_Address [0]),
    .O(\ins2/Madd_IA_cy [5])
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \ins2/Madd_IA_xor<4>11  (
    .I0(\ins2/Current_Address [4]),
    .I1(\ins2/Current_Address [0]),
    .I2(\ins2/Current_Address [1]),
    .I3(\ins2/Current_Address [2]),
    .I4(\ins2/Current_Address [3]),
    .O(\ins2/IA [4])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \ins2/Mmux_Current_Address21  (
    .I0(reset_IBUF_2),
    .I1(\ins2/Next_Address [1]),
    .I2(\ins7/Q [0]),
    .O(\ins2/Current_Address [1])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \ins2/Mmux_Current_Address31  (
    .I0(reset_IBUF_2),
    .I1(\ins2/Next_Address [2]),
    .I2(\ins7/Q [0]),
    .O(\ins2/Current_Address [2])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \ins2/Mmux_Current_Address41  (
    .I0(reset_IBUF_2),
    .I1(\ins2/Next_Address [3]),
    .I2(\ins7/Q [0]),
    .O(\ins2/Current_Address [3])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \ins2/Mmux_Current_Address51  (
    .I0(reset_IBUF_2),
    .I1(\ins2/Next_Address [4]),
    .I2(\ins7/Q [0]),
    .O(\ins2/Current_Address [4])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \ins2/Mmux_Current_Address61  (
    .I0(reset_IBUF_2),
    .I1(\ins2/Next_Address [5]),
    .I2(\ins7/Q [0]),
    .O(\ins2/Current_Address [5])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \ins2/Mmux_Current_Address71  (
    .I0(reset_IBUF_2),
    .I1(\ins7/Q [0]),
    .I2(\ins2/Next_Address [6]),
    .O(\ins2/Current_Address [6])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \ins2/Mmux_Current_Address81  (
    .I0(reset_IBUF_2),
    .I1(\ins7/Q [0]),
    .I2(\ins2/Next_Address [7]),
    .O(\ins2/Current_Address [7])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \ins2/Mmux_Current_Address11  (
    .I0(reset_IBUF_2),
    .I1(\ins2/Next_Address [0]),
    .I2(\ins7/Q [0]),
    .O(\ins2/Current_Address [0])
  );
  IBUF   interrupt_IBUF (
    .I(interrupt),
    .O(interrupt_IBUF_1)
  );
  IBUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_2)
  );
  OBUF   data_out_7_OBUF (
    .I(DM_data[0]),
    .O(data_out[7])
  );
  OBUF   data_out_6_OBUF (
    .I(DM_data[0]),
    .O(data_out[6])
  );
  OBUF   data_out_5_OBUF (
    .I(DM_data[0]),
    .O(data_out[5])
  );
  OBUF   data_out_4_OBUF (
    .I(DM_data[0]),
    .O(data_out[4])
  );
  OBUF   data_out_3_OBUF (
    .I(DM_data[0]),
    .O(data_out[3])
  );
  OBUF   data_out_2_OBUF (
    .I(DM_data[0]),
    .O(data_out[2])
  );
  OBUF   data_out_1_OBUF (
    .I(DM_data[0]),
    .O(data_out[1])
  );
  OBUF   data_out_0_OBUF (
    .I(DM_data[0]),
    .O(data_out[0])
  );
  LUT4 #(
    .INIT ( 16'h57A8 ))
  \ins2/Madd_IA_xor<6>11  (
    .I0(reset_IBUF_2),
    .I1(\ins2/Next_Address [6]),
    .I2(\ins7/Q [0]),
    .I3(\ins2/Madd_IA_cy [5]),
    .O(\ins2/IA [6])
  );
  LUT5 #(
    .INIT ( 32'h0028AA88 ))
  \ins2/Madd_IA_xor<7>11  (
    .I0(reset_IBUF_2),
    .I1(\ins2/Next_Address [7]),
    .I2(\ins2/Next_Address [6]),
    .I3(\ins7/Q [0]),
    .I4(\ins2/Madd_IA_cy [5]),
    .O(\ins2/IA [7])
  );
  LUT6 #(
    .INIT ( 64'h0440404040404040 ))
  \ins2/Madd_IA_xor<3>11  (
    .I0(\ins7/Q [0]),
    .I1(reset_IBUF_2),
    .I2(\ins2/Next_Address [3]),
    .I3(\ins2/Next_Address [0]),
    .I4(\ins2/Next_Address [1]),
    .I5(\ins2/Next_Address [2]),
    .O(\ins2/IA [3])
  );
  LUT5 #(
    .INIT ( 32'h04444000 ))
  \ins2/Madd_IA_xor<2>11  (
    .I0(\ins7/Q [0]),
    .I1(reset_IBUF_2),
    .I2(\ins2/Next_Address [0]),
    .I3(\ins2/Next_Address [1]),
    .I4(\ins2/Next_Address [2]),
    .O(\ins2/IA [2])
  );
  LUT4 #(
    .INIT ( 16'h0440 ))
  \ins2/Madd_IA_xor<1>11  (
    .I0(\ins7/Q [0]),
    .I1(reset_IBUF_2),
    .I2(\ins2/Next_Address [0]),
    .I3(\ins2/Next_Address [1]),
    .O(\ins2/IA [1])
  );
  LUT3 #(
    .INIT ( 8'hBF ))
  \ins2/Madd_IA_xor<0>11  (
    .I0(\ins7/Q [0]),
    .I1(reset_IBUF_2),
    .I2(\ins2/Next_Address [0]),
    .O(\ins2/IA [0])
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_0)
  );
  INV   \ins2/reset_inv1_INV_0  (
    .I(reset_IBUF_2),
    .O(\ins2/reset_inv )
  );
  Program_Memory   \ins2/PM  (
    .clka(clk_BUFGP_0),
    .addra({\ins2/Current_Address [7], \ins2/Current_Address [6], \ins2/Current_Address [5], \ins2/Current_Address [4], \ins2/Current_Address [3], 
\ins2/Current_Address [2], \ins2/Current_Address [1], \ins2/Current_Address [0]}),
    .douta({\NLW_ins2/PM_douta<23>_UNCONNECTED , \NLW_ins2/PM_douta<22>_UNCONNECTED , \NLW_ins2/PM_douta<21>_UNCONNECTED , 
\NLW_ins2/PM_douta<20>_UNCONNECTED , \NLW_ins2/PM_douta<19>_UNCONNECTED , \NLW_ins2/PM_douta<18>_UNCONNECTED , \NLW_ins2/PM_douta<17>_UNCONNECTED , 
\NLW_ins2/PM_douta<16>_UNCONNECTED , \NLW_ins2/PM_douta<15>_UNCONNECTED , \NLW_ins2/PM_douta<14>_UNCONNECTED , \NLW_ins2/PM_douta<13>_UNCONNECTED , 
\NLW_ins2/PM_douta<12>_UNCONNECTED , \NLW_ins2/PM_douta<11>_UNCONNECTED , \NLW_ins2/PM_douta<10>_UNCONNECTED , \NLW_ins2/PM_douta<9>_UNCONNECTED , 
\NLW_ins2/PM_douta<8>_UNCONNECTED , \NLW_ins2/PM_douta<7>_UNCONNECTED , \NLW_ins2/PM_douta<6>_UNCONNECTED , \NLW_ins2/PM_douta<5>_UNCONNECTED , 
\NLW_ins2/PM_douta<4>_UNCONNECTED , \NLW_ins2/PM_douta<3>_UNCONNECTED , \NLW_ins2/PM_douta<2>_UNCONNECTED , \NLW_ins2/PM_douta<1>_UNCONNECTED , 
\NLW_ins2/PM_douta<0>_UNCONNECTED })
  );
  DataMemory   \ins4/DM  (
    .clka(clk_BUFGP_0),
    .ena(DM_data[0]),
    .wea({DM_data[0]}),
    .addra({DM_data[0], DM_data[0], DM_data[0], DM_data[0], DM_data[0], DM_data[0], DM_data[0], DM_data[0]}),
    .dina({DM_data[0], DM_data[0], DM_data[0], DM_data[0], DM_data[0], DM_data[0], DM_data[0], DM_data[0]}),
    .douta({\NLW_ins4/DM_douta<7>_UNCONNECTED , \NLW_ins4/DM_douta<6>_UNCONNECTED , \NLW_ins4/DM_douta<5>_UNCONNECTED , 
\NLW_ins4/DM_douta<4>_UNCONNECTED , \NLW_ins4/DM_douta<3>_UNCONNECTED , \NLW_ins4/DM_douta<2>_UNCONNECTED , \NLW_ins4/DM_douta<1>_UNCONNECTED , 
\NLW_ins4/DM_douta<0>_UNCONNECTED })
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule

`endif

// synthesis translate_on
