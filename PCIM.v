`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:23:56 08/11/2017 
// Design Name: 
// Module Name:    PCIM 
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
module PCIM(ins, Current_Address,jmp_loc, pc_mux_sel, Stall, Stall_pm, reset, clk);

input[7:0] jmp_loc;
input pc_mux_sel;
input Stall;
input Stall_pm;
input reset, clk;
output wire[23:0] ins;
output wire[7:0] Current_Address;

wire [7:0] CAJ,CAR,IA;
wire [23:0] ins_PM,PM_out;
reg [7:0] Hold_Address, Next_Address;
reg [23:0] ins_prv;

assign CAJ=(Stall==0)? Next_Address: Hold_Address;
assign CAR=(pc_mux_sel==0)? CAJ : jmp_loc;
assign Current_Address=(reset==0)? 8'b0 : CAR;
Program_Memory PM(
  .clka(clk), // input clka
  .addra(Current_Address), // input [7 : 0] addra
  .douta(PM_out) // output [23 : 0] douta
);


//Reg INS1(ins_prv,ins, clk, reset);

assign ins_PM=(Stall_pm==0)?PM_out : ins_prv;
assign ins=(reset==0)? 24'b0 : ins_PM;
assign IA=(Current_Address+ 8'b00000001);


//------------------------------------------------------------------------//
wire [7:0] temp1,temp2;
assign temp1=(reset==1'b0)? 8'b00000000 :Current_Address ;                     
assign temp2=(reset==1'b0)? 8'b00000000 :IA ;                     

always @(posedge clk)
begin
	Hold_Address<=temp1;
	Next_Address<=temp2;
end
//------------------------------------------------------------------------//

//------------------------------------------------------------------------//
wire [23:0] temp3;
assign temp3 = (reset== 1'b0)? 24'b0 : ins ;                     
always @(posedge clk)
begin
	ins_prv <= temp3;
end
//---------------------------------------------------------------------------//
endmodule
