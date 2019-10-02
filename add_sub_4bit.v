`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:34:33 08/06/2017 
// Design Name: 
// Module Name:    add_sub_8bit 
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
module add_sub_8bit(overflow,S_D, C_B, A, B, operator);

   
    
	input operator;
	input [7:0] A;
	input [7:0] B;
	output wire [7:0] S_D;
	output wire C_B; 
	output wire overflow;
	wire [6:0] temp_carryout;
    wire [7:0] B_temp;
	
	
	xor inst11(B_temp[0],B[0],operator);
	full_adder inst1(S_D[0], temp_carryout[0], A[0], B_temp[0], operator);	
	
	xor inst22(B_temp[1],B[1],operator);
	full_adder inst2(S_D[1], temp_carryout[1], A[1], B_temp[1], temp_carryout[0]);	
	
	xor inst33(B_temp[2],B[2],operator);
	full_adder inst3(S_D[2], temp_carryout[2], A[2], B_temp[2], temp_carryout[1]);
	
	xor inst44(B_temp[3],B[3],operator);	
	full_adder inst4(S_D[3], temp_carryout[3], A[3], B_temp[3], temp_carryout[2]);
	
	xor inst55(B_temp[4],B[4],operator);	
	full_adder inst5(S_D[4], temp_carryout[4], A[4], B_temp[4], temp_carryout[3]);
	
	xor inst66(B_temp[5],B[5],operator);	
	full_adder inst6(S_D[5], temp_carryout[5], A[5], B_temp[5], temp_carryout[4]);
	
	xor inst77(B_temp[6],B[6],operator);	
	full_adder inst7(S_D[6], temp_carryout[6], A[6], B_temp[6], temp_carryout[5]);
	
	xor inst88(B_temp[7],B[7],operator);	
	full_adder inst8(S_D[7], C_B, A[7], B_temp[7], temp_carryout[6]);
	
	
	xor inst_over(overflow,temp_carryout[6],C_B);
		
	

	
endmodule

