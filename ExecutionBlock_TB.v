`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:42:53 08/08/2017
// Design Name:   ExecutionBlock
// Module Name:   D:/New folder/CoLabs/Lab1/ExecutionBlock/ExecutionBlock_TB.v
// Project Name:  ExecutionBlock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ExecutionBlock
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ExecutionBlock_TB;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg [7:0] data_in;
	reg [4:0] op_dec;
	reg clk;
	reg reset;

	// Outputs
	wire [7:0] ans_ex;
	wire [7:0] DM_data;
	wire [7:0] data_out;
	wire [3:0] flag_ex;

	// Instantiate the Unit Under Test (UUT)
	ExecutionBlock uut (
		.ans_ex(ans_ex), 
		.DM_data(DM_data), 
		.data_out(data_out), 
		.flag_ex(flag_ex), 
		.A(A), 
		.B(B), 
		.data_in(data_in), 
		.op_dec(op_dec), 
		.clk(clk), 
		.reset(reset)
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
	
	initial begin
		reset=1;
		#200;
		reset=0;
		#600;
		reset=1;
	end
	
	always
	begin
		
		clk = 1'b0;
		#1000;
		clk = 1'b1;
		#1000;
	end
      
endmodule

