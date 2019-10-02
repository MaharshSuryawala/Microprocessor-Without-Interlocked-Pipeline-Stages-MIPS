`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:08:33 09/08/2017 
// Design Name: 
// Module Name:    JumpControlBlock 
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
module JumpControlBlock(jmp_loc, pc_mux_sel, ins, Current_Address, flag_ex, interrupt, clk, reset);


input [23 : 0] ins;
input [7 : 0] Current_Address;
input [3 : 0] flag_ex;
input interrupt, clk, reset;
output wire [7:0] jmp_loc; 
output wire pc_mux_sel;
wire JC_Out, JNC_Out, JZ_Out, JNZ_Out, JMP_Out,RET_Out;
wire JC_Out_and, JNC_Out_and, JZ_Out_and, JNZ_Out_and;

//-----
wire [1:0] temp_reset;
reg [1:0] Q; 


and JC(JC_Out, ~ins[19], ~ins[20], ins[21], ins[22], ins[23]);
and JNC(JNC_Out, ins[19], ~ins[20], ins[21], ins[22], ins[23]);
and JZ(JZ_Out, ~ins[19], ins[20], ins[21], ins[22], ins[23]);
and JNZ(JNZ_Out, ins[19], ins[20], ins[21], ins[22], ins[23]);
and JMP(JMP_Out, ~ins[19], ~ins[20], ~ins[21], ins[22], ins[23]);
and RET(RET_Out, ~ins[19], ~ins[20], ~ins[21], ~ins[22], ins[23]);

and JC_and(JC_Out_and, Mux_3[0], JC_Out);
and JNC_and(JNC_Out_and, ~Mux_3[0], JNC_Out);
and JZ_and(JZ_Out_and, Mux_3[1], JZ_Out);
and JNZ_and(JNZ_Out_and, ~Mux_3[1], JNZ_Out);


or (pc_mux_sel, JC_Out_and, JNC_Out_and, JZ_Out_and, JNZ_Out_and,RET_Out, JMP_Out,Q[0]);



assign temp_reset[0]= (reset==0)  ? 0 : interrupt; 
assign temp_reset[1]= (reset==0) ? 0 : Q[0]; 
always @(posedge clk)
begin
		Q<=temp_reset;
end



wire [7:0] Mux_1;
assign Mux_1 = (interrupt==0) ? R1  : (1+ Current_Address);
reg [7:0] R1;
wire [7:0] R1_temp;
assign R1_temp=(reset==0) ? 0 : Mux_1;
always @(posedge clk)
begin
		R1<=R1_temp;
end

wire [3:0] Mux_2;
assign Mux_2=(Q[1]==0) ? flag_ex : R2;
reg [3:0] R2;
wire [3:0] R2_temp;
assign R2_temp=(reset==0) ? 0 : Mux_2; 
always @(posedge clk)
begin
		R2<=R2_temp;
end


wire [3:0] Mux_3;
assign Mux_3=(RET_Out==0) ? flag_ex : R2; 

wire [7:0] Mux_4;
assign Mux_4=(Q[0]==0) ? ins[7:0]   :8'hf0;
assign jmp_loc=(RET_Out==0) ?  Mux_4: R1;


endmodule
