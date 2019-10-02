`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:04:25 08/18/2017 
// Design Name: 
// Module Name:    DataMemoryBlock 
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
module DataMemoryBlock(ans_dm, ans_ex, DM_data, mem_rw_ex, mem_en_ex, mem_mux_sel_dm, reset, clk );

input [7 : 0]  ans_ex;
input [7 : 0]  DM_data;
input mem_rw_ex, mem_en_ex, mem_mux_sel_dm, reset, clk;
output wire[7 : 0] ans_dm;
reg [7 : 0] Ex_out; 
wire [7 : 0] DM_out;
wire [7:0] temp;

assign temp=(reset==0)? 8'b00000000 : ans_ex;

always @(posedge clk)
begin
	Ex_out = temp;
end

assign ans_dm = (mem_mux_sel_dm==1) ? DM_out : Ex_out;

DataMemory DM (
  .clka(clk), // input clka
  .ena(mem_en_ex), // input ena
  .wea(mem_rw_ex), // input [0 : 0] wea
  .addra(ans_ex), // input [7 : 0] addra
  .dina(DM_data), // input [7 : 0] dina
  .douta(DM_out) // output [7 : 0] douta
);

endmodule
