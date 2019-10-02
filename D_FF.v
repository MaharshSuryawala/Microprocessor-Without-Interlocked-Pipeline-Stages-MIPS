`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:52:17 09/01/2017 
// Design Name: 
// Module Name:    D_FF 
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
module D_FF(clk, clear, D, Q, Q_bar);
input clk, D, clear;
output Q, Q_bar;
reg Q;
wire Q_bar;
always @(posedge clk)
begin
			if(clear==1 && clk==1)
				Q=1'b0;		
			else
				Q=D;
end
	
assign Q_bar = ~Q;
endmodule
