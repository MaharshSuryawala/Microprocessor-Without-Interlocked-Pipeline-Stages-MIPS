`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:43:47 08/06/2017 
// Design Name: 
// Module Name:    RSA 
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
module RSA(ans_tmp,  A, B);
    

input [7:0] A,B;
output wire[7:0] ans_tmp;	 
wire [7:0] temp2;
wire temp1;

assign temp1=A[7];
assign temp2=A>>B[2:0]; 

assign ans_tmp=  (B[3:0]==0)? A :
					  (B[3:0]==1)? {temp1,    													temp2[6:0]} : 
					  (B[3:0]==2)? {temp1,temp1, 												temp2[5:0]} : 
					  (B[3:0]==3)? {temp1,temp1,temp1, 										temp2[4:0]}:
					  (B[3:0]==4)? {temp1,temp1,temp1,temp1, 								temp2[3:0]} :
					  (B[3:0]==5)? {temp1,temp1,temp1,temp1, temp1, 					temp2[2:0]} :
					  (B[3:0]==6)? {temp1,temp1,temp1,temp1, temp1, temp1, 			temp2[1:0]} :
					  (B[3:0]==7)? {temp1,temp1,temp1,temp1, temp1, temp1, temp1, 	temp2[0:0]} : 8'b00000000;
					  

						

endmodule
