`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:50:08 08/11/2017 
// Design Name: 
// Module Name:    Reg2 
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
module Reg2(Hold_Address, Next_Address,Current_Address, IA, clk, reset);

input clk,reset;
input [7:0] Current_Address, IA; 
output reg [7:0] Hold_Address, Next_Address;
wire [7:0] temp1,temp2;

assign temp1=(reset==1'b0)? 8'b00000000 :Current_Address ;                     
assign temp2=(reset==1'b0)? 8'b00000000 :IA ;                     

always @(posedge clk)
begin
	Hold_Address<=temp1;
	Next_Address<=temp2;
end

endmodule


