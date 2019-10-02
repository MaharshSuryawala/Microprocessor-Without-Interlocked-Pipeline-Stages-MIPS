`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:36:07 08/04/2017 
// Design Name: 
// Module Name:    ALU 
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
module ALU(flag_ex, ans_tmp, data_out_buff, data_in,A, B, op_dec, ans_ex, data_out,flag_tmp);

input [7:0] data_in,A,B,ans_ex,data_out;
input [4:0] op_dec;	
input [3:0] flag_tmp;			 
output wire [3:0] flag_ex;
output wire[7:0] ans_tmp,data_out_buff;

wire [7:0] ans_tmp_temp[2:0];  // They are used to get values from Addition, Substraction, Right Shift Arithmetic Operations.
wire [3:0] flag_ex_temp[1:0];  // They wil; assign values of all flags for Addition and Substration Operations. 
// In case, not understand please see below 3 lines of code.

Addition 				type1(flag_ex_temp[0], ans_tmp_temp[0], A, B);
Substraction 			type2(flag_ex_temp[1], ans_tmp_temp[1],  A, B);
RSA						type3(ans_tmp_temp[2], A, B);

assign ans_tmp=(op_dec==5'b00000 || op_dec==5'b01000)? ans_tmp_temp[0] : 
					(op_dec==5'b00001 || op_dec==5'b01001)? ans_tmp_temp[1] :
					(op_dec==5'b00010 || op_dec==5'b01010)? B :
					(op_dec==5'b00100 || op_dec==5'b01100)? A&B :
					(op_dec==5'b00101 || op_dec==5'b01101)? A|B :
					(op_dec==5'b00110 || op_dec==5'b01110)? A^B :
					(op_dec==5'b00111 || op_dec==5'b01111)? ~B :
					(op_dec==5'b10100 || op_dec==5'b10101)? A :
					(op_dec==5'b10000 || op_dec==5'b10001 || op_dec==5'b10111 || op_dec==5'b11000 || op_dec==5'b11100 || op_dec==5'b11101 || op_dec==5'b11110 || op_dec==5'b11111)? ans_ex :
					(op_dec==5'b10110)? data_in :  
					(op_dec==5'b11001)? A<<B[2:0] :
					(op_dec==5'b11010)? A>>B[2:0] :
					(op_dec==5'b11011)? ans_tmp_temp[2] : 8'b00000000;
	
assign data_out_buff=(op_dec==5'b10111)? A : data_out;
					 
assign flag_ex=(op_dec==5'b00000 || op_dec==5'b01000)? flag_ex_temp[0] : 
					(op_dec==5'b00001 || op_dec==5'b01001)? flag_ex_temp[1] :
					(op_dec==5'b00010 || op_dec==5'b01010 ||
					op_dec==5'b00100 || op_dec==5'b01100 ||
					op_dec==5'b00101 || op_dec==5'b01101 ||
					op_dec==5'b00110 || op_dec==5'b01110 ||
					op_dec==5'b00111 || op_dec==5'b01111 ||
					op_dec==5'b10110 || 
					op_dec==5'b11011 || op_dec==5'b11001 || op_dec==5'b11010) ? {(^ans_tmp), 1'b0,~(|ans_tmp), 1'b0} :  
					(op_dec==5'b11100 || op_dec==5'b11101 || op_dec==5'b11110 || op_dec==5'b11111) ? flag_tmp :
					4'b0000;
					
	
endmodule
