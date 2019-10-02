`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:43:05 09/01/2017 
// Design Name: 
// Module Name:    StallControllBlock 
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
module StallControllBlock(Stall_pm, Stall, reset, clk, ins);

//inputs and outputs
input [23 : 0] ins;
input clk, reset;
output wire Stall, Stall_pm;
wire [2:0] temp;
wire [3:0] temp_reset;
reg [3:0] Q;

//assigning the and gates
and HLT(temp[0],ins[19],~ins[20],~ins[21],~ins[22],ins[23]);               //HLT and gate
and Ld(temp[1],~ins[19],~ins[20],ins[21],~ins[22],ins[23],~Q[0]);				//LD and gate
and JUMP(temp[2],ins[21],ins[22],ins[23],~Q[2]);									//JUMP and gate
or  inst(Stall,temp[0],temp[1],temp[2]);												//Stall and gate

//assigning D FFs
assign temp_reset[0]= (reset==0) ? 0 : temp[1];         
assign temp_reset[1]= (reset==0) ? 0 : Stall;
assign temp_reset[2]= (reset==0) ? 0 : Q[3];
assign temp_reset[3]= (reset==0) ? 0 : temp[2];


always @(posedge clk)
begin
		Q<=temp_reset;
end
	
assign Stall_pm=Q[1];


endmodule
