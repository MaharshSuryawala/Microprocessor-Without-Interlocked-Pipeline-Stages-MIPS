`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:41:54 08/04/2017 
// Design Name: 
// Module Name:    Reg 
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
module Reg(ans_ex, data_out, DM_data ,ans_tmp, data_out_buff , B,clk, reset);

input clk,reset;
input [7:0] ans_tmp, data_out_buff, B;
output reg [7:0] ans_ex, data_out, DM_data;
wire [7:0] temp1, temp2, temp3;

assign temp1=(reset==0)? 8'b00000000 : ans_tmp;                     
assign temp2=(reset==0)? 8'b00000000 : data_out_buff;
assign temp3=(reset==0)? 8'b00000000 : B;

always @(posedge clk)
begin
	ans_ex=temp1;
	data_out=temp2;
	DM_data=temp3;
	
end

endmodule
