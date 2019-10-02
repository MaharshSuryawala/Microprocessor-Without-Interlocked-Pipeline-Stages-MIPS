`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:13:24 09/01/2017 
// Design Name: 
// Module Name:    WriteBackBlock 
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
module WriteBackBlock(ans_wb,ans_dm, reset, clk);

//inputs and outputs
input clk,reset;
input [7:0]ans_dm; 
output reg [7:0] ans_wb;

wire [7:0] temp1;

assign temp1 = (reset== 1'b0)? 0 : ans_dm ;     //regester                

always @(posedge clk)
begin
	ans_wb <= temp1;
end

endmodule
