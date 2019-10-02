`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:57:08 09/25/2017 
// Design Name: 
// Module Name:    DependencyCheckBlock 
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
module DependencyCheckBlock(imm, RW_dm, op_dec, mux_sel_A, mux_sel_B, imm_sel, mem_en_ex, mem_rw_ex, mem_mux_sel_dm,   ins, clk, reset);

//inputs and outputs
input [23: 0]  ins;
input clk, reset;

output reg [7 : 0] imm;
output wire [4 : 0] RW_dm, op_dec ;
output wire [1 : 0] mux_sel_A, mux_sel_B;
output wire  imm_sel,mem_en_ex, mem_rw_ex, mem_mux_sel_dm;

//temp variables
wire JMP_out, Cond_J_out, LD1_out, Imm_out, LD2_out, ST_out;
wire Nor_out;
wire [18:0] AND1_out; 
wire AND2_out, AND3_out;
wire OR_out;
reg DFF1, DFF2, DFF3, DFF4, DFF5, DFF6, DFF7, DFF8, DFF9;
wire T_DFF1, T_DFF2, T_DFF3, T_DFF4, T_DFF5, T_DFF6, T_DFF7, T_DFF8,T_DFF9;

//AND Gates formed by ins bit from 19 to 23
and JMP(JMP_out, ~ins[19], ~ins[20], ~ins[21], ins[22], ins[23]);
and Cond_J(Cond_J_out, ins[21], ins[22], ins[23]);
and LD1(LD1_out, ~ins[19], ~ins[20], ins[21], ~ins[22], ins[23], ~DFF1); 
and Imm(Imm_out,  ins[22], ~ins[23]);
and LD2(LD2_out, ~ins[19], ~ins[20], ins[21], ~ins[22], ins[23]);
and ST(ST_out, ins[19], ~ins[20], ins[21], ~ins[22], ins[23]);

//NOR Gate 
nor NORGATE(Nor_out, JMP_out, Cond_J_out, DFF1); 

//Bit extender
wire [18:0] EXT_out;
assign EXT_out=(Nor_out==0) ? 0 : 19'b1111111111111111111;

//AND Gates
assign AND1_out=EXT_out & ins;

and ANDGATE2(AND2_out, LD2_out, ~DFF3);

//D-FFs for generating signals of the lower half of the block
assign T_DFF1=(reset==0) ? 0 : LD1_out;
assign T_DFF2=(reset==0) ? 0 : ins[19];
assign T_DFF3=(reset==0) ? 0 : AND2_out;
assign T_DFF4=(reset==0) ? 0 : ST_out;
assign T_DFF5=(reset==0) ? 0 : Imm_out;
assign T_DFF6=(reset==0) ? 0 : DFF2;
assign T_DFF7=(reset==0) ? 0 : AND3_out;
assign T_DFF8=(reset==0) ? 0 : OR_out;
assign T_DFF9=(reset==0) ? 0 : DFF7;


//assigning values to D-FFs
always @(posedge clk)
begin
		DFF1<=T_DFF1;
		DFF2<=T_DFF2;
		DFF3<=T_DFF3;
		DFF4<=T_DFF4;
		DFF5<=T_DFF5;
		DFF6<=T_DFF6;
		DFF7<=T_DFF7;
		DFF8<=T_DFF8;
		DFF9<=T_DFF9;
end

//reg [7:0] imm;
//imm value from reg
wire [7:0] T_imm;
assign T_imm=(reset==0) ? 0 : ins[8:1];
always @(posedge clk)
begin
		imm<=T_imm;
end

//OR Gates
or ORGATE(OR_out, DFF3, DFF4);
and ANDGATE3(AND3_out, ~DFF2, OR_out);


//assigning mem signals
assign mem_en_ex=DFF8;
assign mem_rw_ex=DFF6;
assign mem_mux_sel_dm=DFF9;
assign imm_sel=DFF5;

//temp variables
reg [4 :0] Reg1, Reg2, Reg3, Reg4, Reg5, Reg6, Reg7;
wire [4:0] T_Reg1, T_Reg2, T_Reg3, T_Reg4, T_Reg5, T_Reg6, T_Reg7;
wire AND4_out, AND5_out, AND6_out, AND7_out;
wire C1, C2, C3, C4, C5, C6;


//Regs for upper part of the design
assign T_Reg1=(reset==0) ? 0 : ins[23:19];
assign T_Reg2=(reset==0) ? 0 : AND1_out[13:9];
assign T_Reg3=(reset==0) ? 0 : AND1_out[18:14];
assign T_Reg4=(reset==0) ? 0 : AND1_out[8:4];
assign T_Reg5=(reset==0) ? 0 : Reg3;
assign T_Reg6=(reset==0) ? 0 : Reg5;
assign T_Reg7=(reset==0) ? 0 : Reg6;


//assigning values to Regs
always @(posedge clk)
begin
		Reg1<=T_Reg1;
		Reg2<=T_Reg2;
		Reg3<=T_Reg3;
		Reg4<=T_Reg4;
		Reg5<=T_Reg5;
		Reg6<=T_Reg6;
		Reg7<=T_Reg7;
end

//assigning signals
assign RW_dm= Reg6;
assign op_dec=Reg1 ;

//Comparator
assign C1=(Reg5==Reg2)? 1'b1 : 0;
assign C2=(Reg6==Reg2)? 1'b1 : 0;
assign C3=(Reg7==Reg2)? 1'b1 : 0;
assign C4=(Reg5==Reg4)? 1'b1 : 0;
assign C5=(Reg6==Reg4)? 1'b1 : 0;
assign C6=(Reg7==Reg4)? 1'b1 : 0;


//AND gates after the comparator
and ANDGATE4(AND4_out, ~C1, C2 );
and ANDGATE5(AND5_out, ~C1, ~C2, C3 );
and ANDGATE6(AND6_out, ~C4, C5 );
and ANDGATE7(AND7_out, ~C4, ~C5, C6 );


//assigning values to Mux sel using priority encoder
assign mux_sel_A=(AND5_out==1)? 2'b11 :  
					  (AND4_out==1)? 2'b10 :
					  (C1==1)? 2'b01 : 2'b00;

assign mux_sel_B=(AND7_out==1)? 2'b11 :  
					  (AND6_out==1)? 2'b10 :
					  (C4==1)? 2'b01 : 2'b00;



endmodule
