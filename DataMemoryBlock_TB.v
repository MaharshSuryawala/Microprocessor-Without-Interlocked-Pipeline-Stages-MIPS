`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:32:25 08/18/2017
// Design Name:   DataMemoryBlock
// Module Name:   E:/LABs/PROCESSORS/DataMemoryBlock_TB.v
// Project Name:  PROCESSORS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DataMemoryBlock
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DataMemoryBlock_TB;

	// Inputs
	reg [7:0] ans_ex;
	reg [7:0] DM_data;
	reg mem_rw_ex;
	reg mem_en_ex;
	reg mem_mux_sel_dm;
	reg reset;
	reg clk;

	// Outputs
	wire [7:0] ans_dm;

	// Instantiate the Unit Under Test (UUT)
	DataMemoryBlock uut (
		.ans_dm(ans_dm), 
		.ans_ex(ans_ex), 
		.DM_data(DM_data), 
		.mem_rw_ex(mem_rw_ex), 
		.mem_en_ex(mem_en_ex), 
		.mem_mux_sel_dm(mem_mux_sel_dm), 
		.reset(reset), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		ans_ex = 8'h03;
		DM_data = 8'hFF;
		mem_rw_ex = 0;
		mem_en_ex = 0;
		mem_mux_sel_dm = 0;
		reset = 1;
		#200;
		
		ans_ex = 8'h03;
		DM_data = 8'hFF;
		mem_rw_ex = 0;
		mem_en_ex = 0;
		mem_mux_sel_dm = 0;
		reset = 0;
		#600;
		
		ans_ex = 8'h03;
		DM_data = 8'hFF;
		mem_rw_ex = 0;
		mem_en_ex = 0;
		mem_mux_sel_dm = 0;
		reset = 1;
		#200;
		
		ans_ex = 8'h03;
		DM_data = 8'hFF;
		mem_rw_ex = 0;
		mem_en_ex = 1;
		mem_mux_sel_dm = 1;
		reset = 1;
		#500;
		
		ans_ex = 8'h03;
		DM_data = 8'hFF;
		mem_rw_ex = 0;
		mem_en_ex = 1;
		mem_mux_sel_dm = 1;
		reset = 1;
		#500;
		
		ans_ex = 8'h03;
		DM_data = 8'hFF;
		mem_rw_ex = 1;
		mem_en_ex = 1;
		mem_mux_sel_dm = 1;
		reset = 1;
		#500;
		
		ans_ex = 8'h03;
		DM_data = 8'hFF;
		mem_rw_ex = 1;
		mem_en_ex = 1;
		mem_mux_sel_dm = 1;
		reset = 1;
		#500;
		
		ans_ex = 8'h03;
		DM_data = 8'hFF;
		mem_rw_ex = 0;
		mem_en_ex = 1;
		mem_mux_sel_dm = 1;
		reset = 1;
		#500;
		
		ans_ex = 8'h03;
		DM_data = 8'hFF;
		mem_rw_ex = 0;
		mem_en_ex = 1;
		mem_mux_sel_dm = 1;
		reset = 1;
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

