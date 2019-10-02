`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:12:07 08/06/2017 
// Design Name: 
// Module Name:    Substraction 
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


module Substraction(flag_ex, ans_tmp, A, B);

input [7:0] A,B;		 
output wire [3:0] flag_ex;
output wire[7:0] ans_tmp;

add_sub_8bit Add(flag_ex[2],ans_tmp, flag_ex[0], A, B, 1'b1);
assign flag_ex[1]=~(|ans_tmp);
assign flag_ex[3]=^(ans_tmp);

endmodule


