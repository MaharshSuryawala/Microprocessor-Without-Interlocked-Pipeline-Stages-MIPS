`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:41:13 08/08/2017
// Design Name:   ALU
// Module Name:   D:/New folder/CoLabs/Lab1/ExecutionBlock/ALU_TB.v
// Project Name:  ExecutionBlock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_TB;

	// Inputs
	reg [7:0] data_in;
	reg [7:0] A;
	reg [7:0] B;
	reg [4:0] op_dec;
	reg [7:0] ans_ex;

	// Outputs
	wire [3:0] flag_ex;
	wire [7:0] ans_tmp;
	wire [7:0] data_out_buff;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.flag_ex(flag_ex), 
		.ans_tmp(ans_tmp), 
		.data_out_buff(data_out_buff), 
		.data_in(data_in), 
		.A(A), 
		.B(B), 
		.op_dec(op_dec), 
		.ans_ex(ans_ex)
	);	
	
	initial begin
		
		
		
		#1000;
		
		A = 64;
		B = 192;
		data_in = 8;
		op_dec = 5'b00000;
		#1000;
		
		A = 64;
		B = 192;
		data_in = 8;
		op_dec = 5'b00001;
		#1000;
		
		A = 64;
		B = 192;
		data_in = 8;
		op_dec = 5'b00010;
		#1000;
		
		A = 64;
		B = 192;
		data_in = 8;
		op_dec = 5'b00100;
		#1000;
		
		A = 64;
		B = 192;
		data_in = 8;
		op_dec = 5'b00101;
		#1000;
		
		A = 64;
		B = 192;
		data_in = 8;
		op_dec = 5'b00110;
		#1000;
		
		A = 64;
		B = 192;
		data_in = 8;
		op_dec = 5'b00111;
		#1000;
		
		A = 64;
		B = 192;
		data_in = 8;
		op_dec = 5'b01000;
		#1000;
		
		A = 64;
		B = 192;
		data_in = 8;
		op_dec = 5'b01001;
		#1000;
		
		A = 64;
		B = 192;
		data_in = 8;
		op_dec = 5'b01010;
		#1000;
	
		
		A = 64;
		B = 192;
		data_in = 8;
		op_dec = 5'b01100;
		#1000;
		
		A = 64;
		B = 192;
		data_in = 8;
		op_dec = 5'b01101;
		#1000;
		
		A = 64;
		B = 192;
		data_in = 8;
		op_dec = 5'b01110;
		#1000;
		
		A = 64;
		B = 192;
		data_in = 8;
		op_dec = 5'b01111;
		#1000;
		
		A = 64;
		B = 192;
		data_in = 8;
		op_dec = 5'b10000;
		#1000;
		
		A = 64;
		B = 192;
		data_in = 8;
		op_dec = 5'b10001;
		#1000;
		
		A = 64;
		B = 192;
		data_in = 8;
		op_dec = 5'b10100;
		#1000;
		
		A = 64;
		B = 192;
		data_in = 8;
		op_dec = 5'b10101;
		#1000;
		
		A = 64;
		B = 192;
		data_in = 8;
		op_dec = 5'b10110;
		#1000;
		
		A = 64;
		B = 192;
		data_in = 8;
		op_dec = 5'b10111;
		#1000;
		
		A = 64;
		B = 192;
		data_in = 8;
		op_dec = 5'b11000;
		#1000;
		
		A = 192;
		B = 1;
		data_in = 8;
		op_dec = 5'b11001;
		#1000;
		
		A = 192;
		B = 1;
		data_in = 8;
		op_dec = 5'b11010;
		#1000;
		
		A = 192;
		B = 1;
		data_in = 8;
		op_dec = 5'b11011;
		#1000;
		
		A = 192;
		B = 1;
		data_in = 8;
		op_dec = 5'b11100;
		#1000;
		
		A = 192;
		B = 1;
		data_in = 8;
		op_dec = 5'b11101;
		#1000;
		
		A = 192;
		B = 1;
		data_in = 8;
		op_dec = 5'b11110;
		#1000;
        
		A = 192;
		B = 1;
		data_in = 8;
		op_dec = 5'b11111;
		#1000;
		
	end
      
endmodule

