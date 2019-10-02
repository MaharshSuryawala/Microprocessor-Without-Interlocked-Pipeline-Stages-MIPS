`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:18:01 09/29/2017 
// Design Name: 
// Module Name:    MainModule 
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
 module MainModule(data_out,data_in,clk,interrupt,reset);

input [7:0] data_in;
input clk,interrupt,reset;
output [7:0] data_out;


wire [23:0] ins;
wire [7:0] A,B,Current_Address,ans_ex,ans_dm,ans_wb;
wire [1:0] mux_sel_A,mux_sel_B;
wire imm_sel;

//-----------------------------------------------------------------//
wire [7:0] DM_data, jmp_loc,  imm ;
wire [4:0] op_dec,RW_dm;
wire [3:0] flag_ex ;
wire pc_mux_sel, Stall, Stall_pm;
wire mem_rw_ex, mem_en_ex, mem_mux_sel_dm;

ExecutionBlock  ins1(ans_ex, DM_data, data_out, flag_ex ,A, B, data_in, op_dec, clk, reset);
PCIM ins2(ins, Current_Address,jmp_loc, pc_mux_sel, Stall, Stall_pm, reset, clk);
RegisterBankBlock ins3(A, B, ins, ans_ex,ans_dm, ans_wb, imm, RW_dm, mux_sel_A, mux_sel_B, imm_sel, clk);
DataMemoryBlock ins4(ans_dm, ans_ex, DM_data, mem_rw_ex, mem_en_ex, mem_mux_sel_dm, reset, clk);
StallControllBlock ins5(Stall_pm, Stall, reset, clk, ins);
WriteBackBlock ins6(ans_wb,ans_dm, reset, clk);
JumpControlBlock ins7(jmp_loc, pc_mux_sel, ins, Current_Address, flag_ex, interrupt, clk, reset);
DependencyCheckBlock ins8(imm, RW_dm, op_dec, mux_sel_A, mux_sel_B, imm_sel, mem_en_ex, mem_rw_ex, mem_mux_sel_dm,   ins, clk, reset);
//-----------------------------------------------------------------//





//-----------------------------------------------------------------//




endmodule
