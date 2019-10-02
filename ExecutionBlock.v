`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:21:59 08/04/2017 
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
module ExecutionBlock(ans_ex, DM_data, data_out, flag_ex ,A, B, data_in, op_dec, clk, reset);

input [7:0] A, B, data_in;
input [4:0] op_dec;
input clk, reset;
output reg [7:0] ans_ex, DM_data, data_out;
output wire [3:0] flag_ex;
wire [7:0] ans_tmp, data_out_buff;
reg [3:0] flag_tmp;
wire [3:0] temp4;


ALU ALU_Execution(flag_ex, ans_tmp, data_out_buff, data_in,A, B, op_dec, ans_ex, data_out, flag_tmp);   //ans _ex and data_out are feedback to ALU from Reg.//
//Reg Reg_Execution(ans_ex, data_out, DM_data ,ans_tmp, data_out_buff , B,clk, reset);

wire [7:0] temp1, temp2, temp3;

assign temp1=(reset==0)? 8'b00000000 : ans_tmp;                     
assign temp2=(reset==0)? 8'b00000000 : data_out_buff;
assign temp3=(reset==0)? 8'b00000000 : B;
assign temp4=(reset==0)? 4'b0000 : flag_ex;

always @(posedge clk)
begin
	ans_ex=temp1;
	data_out=temp2;
	DM_data=temp3;
	flag_tmp=temp4;
end
endmodule
