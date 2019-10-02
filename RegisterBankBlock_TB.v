`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:29:25 08/18/2017
// Design Name:   RegisterBankBlock
// Module Name:   E:/LABs/PROCESSORS/RegisterBankBlock_TB.v
// Project Name:  PROCESSORS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RegisterBankBlock
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RegisterBankBlock_TB;

	// Inputs
	reg [23:0] ins;
	reg [7:0] ans_ex;
	reg [7:0] ans_dm;
	reg [7:0] ans_wb;
	reg [7:0] imm;
	reg [4:0] RW_dm;
	reg [1:0] mux_sel_A;
	reg [1:0] mux_sel_B;
	reg imm_sel;
	reg clk;

	// Outputs
	wire [7:0] A;
	wire [7:0] B;

	// Instantiate the Unit Under Test (UUT)
	RegisterBankBlock uut (
		.A(A), 
		.B(B), 
		.ins(ins), 
		.ans_ex(ans_ex), 
		.ans_dm(ans_dm), 
		.ans_wb(ans_wb), 
		.imm(imm), 
		.RW_dm(RW_dm), 
		.mux_sel_A(mux_sel_A), 
		.mux_sel_B(mux_sel_B), 
		.imm_sel(imm_sel), 
		.clk(clk)
	);

	initial begin
		
		ins = 24'h014C50;
		ans_ex = 8'hC0;
		ans_dm = 8'hD0;
		ans_wb = 8'hE0;
		imm = 8'hFF;
		RW_dm = 5'b00111;
		mux_sel_A = 2'b00;
		mux_sel_B = 2'b00;
		imm_sel = 1;
		#500;
		
		ins = 24'h014C50;
		ans_ex = 8'hC0;
		ans_dm = 8'hD0;
		ans_wb = 8'hE0;
		imm = 8'hFF;
		RW_dm = 5'b00111;
		mux_sel_A = 2'b00;
		mux_sel_B = 2'b00;
		imm_sel = 1;
		#500;
		
		
		ins = 24'h014E50;
		ans_ex = 8'hC0;
		ans_dm = 8'hD0;
		ans_wb = 8'hE0;
		imm = 8'hFF;
		RW_dm = 5'b00111;
		mux_sel_A = 2'b00;
		mux_sel_B = 2'b01;
		imm_sel = 0;
		#500;
		
		
		ins = 24'h014E50;
		ans_ex = 8'hC0;
		ans_dm = 8'hD0;
		ans_wb = 8'hE0;
		imm = 8'hFF;
		RW_dm = 5'b00111;
		mux_sel_A = 2'b00;
		mux_sel_B = 2'b01;
		imm_sel = 0;
		#500;
		
		ins = 24'h014E50;
		ans_ex = 8'hC0;
		ans_dm = 8'hD0;
		ans_wb = 8'hE0;
		imm = 8'hFF;
		RW_dm = 5'b00111;
		mux_sel_A = 2'b11;
		mux_sel_B = 2'b10;
		imm_sel = 0;
		#500;
		
		
		
		
        
		

	end
	
	initial begin 
		clk=0;
		#500
		forever begin
			clk=~clk;
			#500;
		end
	end
      
endmodule

