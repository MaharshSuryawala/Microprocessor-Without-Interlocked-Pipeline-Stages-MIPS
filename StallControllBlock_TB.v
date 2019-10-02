`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:13:01 09/01/2017
// Design Name:   StallControllBlock
// Module Name:   E:/LABs/PROCESSORS/StallControllBlock_TB.v
// Project Name:  PROCESSORS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: StallControllBlock
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module StallControllBlock_TB;

	// Inputs
	reg reset;
	reg clk;
	reg [23:0] ins;

	// Outputs
	wire Stall_pm;
	wire Stall;

	// Instantiate the Unit Under Test (UUT)
	StallControllBlock uut (
		.Stall_pm(Stall_pm), 
		.Stall(Stall), 
		.reset(reset), 
		.clk(clk), 
		.ins(ins)
	);

	initial begin
	
		reset = 1;
		ins = 24'h0;
		#200;
		
		reset = 0;
		ins = 24'h0;
		#400;
		
		reset = 1;
		ins = 24'h0;
		#1000;
		
		reset = 1;
		ins = 24'ha00000;
		#2000;
		
		reset = 1;
		ins = 24'h0;
		#1000;
		
		reset = 1;
		ins = 24'hf00000;
		#3000;
		
		reset = 1;
		ins = 24'h0;
		#1000;
		
		reset = 1;
		ins = 24'h880000;
		#4000;
	
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

