`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:22:56 11/03/2017
// Design Name:   MainModule
// Module Name:   C:/Users/Jay Patel/Downloads/PROCESSORS-20171102T120455Z-001/PROCESSORS/MainModule_Tb.v
// Project Name:  PROCESSORS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MainModule
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MainModule_Tb;

	// Inputs
	reg [7:0] data_in;
	reg clk;
	reg interrupt;
	reg reset;

	// Outputs
	wire [7:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	MainModule uut (
		.data_out(data_out), 
		.data_in(data_in), 
		.clk(clk), 
		.interrupt(interrupt), 
		.reset(reset)
	);

	initial
	begin
	data_in = 0;
	interrupt = 0;
	clk = 0;
	reset = 1;
	#200; reset = 0;
	#500; reset = 1;
	end
	
	always
	#500 clk = ~clk;

endmodule

