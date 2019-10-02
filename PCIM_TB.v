`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:14:00 08/11/2017
// Design Name:   PCIM
// Module Name:   E:/LABs/PROCESSORS/PCIM_TB.v
// Project Name:  PROCESSORS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PCIM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PCIM_TB;

	// Inputs
	reg [7:0] jmp_loc;
	reg pc_mux_sel;
	reg Stall;
	reg Stall_pm;
	reg reset;
	reg clk;

	// Outputs
	wire [23:0] ins;
	wire [7:0] Current_Address;

	// Instantiate the Unit Under Test (UUT)
	PCIM uut (
		.ins(ins), 
		.Current_Address(Current_Address), 
		.jmp_loc(jmp_loc), 
		.pc_mux_sel(pc_mux_sel), 
		.Stall(Stall), 
		.Stall_pm(Stall_pm), 
		.reset(reset), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		jmp_loc = 8;
		pc_mux_sel = 1;
		Stall = 0;
		Stall_pm = 0;
		reset = 1;

		#200;
		
		jmp_loc = 8;
		pc_mux_sel = 1;
		Stall = 0;
		Stall_pm = 0;
		reset = 0;

		#600;

		jmp_loc = 8;
		pc_mux_sel = 0;
		Stall = 0;
		Stall_pm = 0;
		reset = 1;
		
		#700;
		
		jmp_loc = 8;
		pc_mux_sel = 0;
		Stall = 0;
		Stall_pm = 0;
		reset = 1;
		
		#1000;
		
		jmp_loc = 8;
		pc_mux_sel = 0;
		Stall = 0;
		Stall_pm = 0;
		reset = 1;
		
		#1000;
		
		jmp_loc = 8;
		pc_mux_sel = 0;
		Stall = 0;
		Stall_pm = 0;
		reset = 1;
		
		#500;
		
		jmp_loc = 8;
		pc_mux_sel = 0;
		Stall = 1;
		Stall_pm = 0;
		reset = 1;
		
		#500;
		
		jmp_loc = 8;
		pc_mux_sel = 0;
		Stall = 1;
		Stall_pm = 0;
		reset = 1;
		
		#500;
		
		jmp_loc = 8;
		pc_mux_sel = 0;
		Stall = 0;
		Stall_pm = 1;
		reset = 1;
		
		#500;
		
		jmp_loc = 8;
		pc_mux_sel = 0;
		Stall = 0;
		Stall_pm = 1;
		reset = 1;
		
		#500;
		
		jmp_loc = 8;
		pc_mux_sel = 1;
		Stall = 0;
		Stall_pm = 0;
		reset = 1;
		
		#500;
		
		jmp_loc = 8;
		pc_mux_sel = 1;
		Stall = 0;
		Stall_pm = 0;
		reset = 1;
			
		
		// Wait 100 ns for global reset to finish
		#100;
        
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

