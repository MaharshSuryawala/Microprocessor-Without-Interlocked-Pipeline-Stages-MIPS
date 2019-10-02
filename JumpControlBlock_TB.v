`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:32:40 09/08/2017
// Design Name:   JumpControlBlock
// Module Name:   E:/LABs/PROCESSORS/JumpControlBlock_TB.v
// Project Name:  PROCESSORS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: JumpControlBlock
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module JumpControlBlock_TB;

	// Inputs
	reg [23:0] ins;
	reg [7:0] Current_Address;
	reg [3:0] flag_ex;
	reg interrupt;
	reg clk;
	reg reset;

	// Outputs
	wire [7:0] jmp_loc;
	wire pc_mux_sel;

	// Instantiate the Unit Under Test (UUT)
	JumpControlBlock uut (
		.jmp_loc(jmp_loc), 
		.pc_mux_sel(pc_mux_sel), 
		.ins(ins), 
		.Current_Address(Current_Address), 
		.flag_ex(flag_ex), 
		.interrupt(interrupt), 
		.clk(clk), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		ins = 24'h0;
		Current_Address = 8'h01;
		flag_ex = 4'hf;
		interrupt = 0;

		reset = 1;

		// Wait 100 ns for global reset to finish
		#200;
      reset=0;
		  
		#500;
		reset=1;

		#900;
		interrupt=1;
		
		#1000;
		interrupt=0;
		ins = 24'h000008;
		
		#1000;
		ins=24'hc00008;
		
		#2000;
		ins=24'h800008;
		flag_ex=4'h0;
		
		#1000;
		ins=24'hf00008;
		
		
		
		// Add stimulus here
		

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

