`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:34:20 08/18/2017 
// Design Name: 
// Module Name:    RegisterBankBlock 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module RegisterBankBlock(A, B, ins, ans_ex,ans_dm, ans_wb, imm, RW_dm, mux_sel_A, mux_sel_B, imm_sel, clk);

//inputs and outputs
input [ 23:0]  ins; 
input [ 7: 0]  ans_ex,ans_dm, ans_wb, imm;
input [ 4: 0]  RW_dm;
input [ 1: 0]  mux_sel_A, mux_sel_B;
input   imm_sel, clk;
output  wire [7:0] A, B;
reg [7:0] RegisterBank [0:31]; // reg or wire
wire [7:0] BI;
reg [7:0] AR,BR;


//constructing MUXs
assign A= (mux_sel_A==0) ?  AR : 
			 (mux_sel_A==1) ?  ans_ex:
			 (mux_sel_A==2) ?  ans_dm:
			 (mux_sel_A==3) ?  ans_wb: 0;		


assign BI=(mux_sel_B==0) ?  BR: 
			 (mux_sel_B==1) ?  ans_ex:
			 (mux_sel_B==2) ?  ans_dm:
			 (mux_sel_B==3) ?  ans_wb:	0;

assign B= (imm_sel==0) ? BI : 
			 (imm_sel==1) ? imm : 0;

//Register Bank
always @(posedge clk)
begin
	
	AR<=RegisterBank[ins[13:9]]; 
   BR<=RegisterBank[ins[8:4]]; 
	RegisterBank[RW_dm]=ans_dm;
	
end
					
endmodule
