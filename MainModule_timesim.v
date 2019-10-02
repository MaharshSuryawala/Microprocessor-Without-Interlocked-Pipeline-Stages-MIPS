////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: MainModule_timesim.v
// /___/   /\     Timestamp: Fri Oct 27 17:25:50 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 1 -pcf MainModule.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim MainModule.ncd MainModule_timesim.v 
// Device	: 7a100tcsg324-1 (PRODUCTION 1.10 2013-10-13)
// Input file	: MainModule.ncd
// Output file	: E:\LABs\PROCESSORS\netgen\par\MainModule_timesim.v
// # of Modules	: 1
// Design Name	: MainModule
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module MainModule (
  clk, interrupt, reset, imm_sel, data_in, A, B, Current_Address, ans_ex, ans_dm, ans_wb, mux_sel_A, mux_sel_B, ins, data_out
);
  input clk;
  input interrupt;
  input reset;
  output imm_sel;
  input [7 : 0] data_in;
  output [7 : 0] A;
  output [7 : 0] B;
  output [7 : 0] Current_Address;
  output [7 : 0] ans_ex;
  output [7 : 0] ans_dm;
  output [7 : 0] ans_wb;
  output [1 : 0] mux_sel_A;
  output [1 : 0] mux_sel_B;
  output [23 : 0] ins;
  output [7 : 0] data_out;
  wire N101;
  wire reset_IBUF_3189;
  wire N19;
  wire N29;
  wire N17;
  wire N15;
  wire N210_0;
  wire clk_BUFGP;
  wire ins_19_OBUF_3197;
  wire \ins8/DFF2_0_0 ;
  wire \ins1/reset_inv ;
  wire N168;
  wire Stall;
  wire \ins7/RET_Out ;
  wire ins_0_OBUF_3209;
  wire N169_0;
  wire N95;
  wire N99_0;
  wire N96;
  wire N100_0;
  wire ins_2_OBUF_3223;
  wire N157_0;
  wire mux_sel_A_1_OBUF_3225;
  wire \ins8/C1 ;
  wire \ins8/Reg6[4]_Reg2[4]_equal_59_o ;
  wire \ins8/Reg7[4]_Reg2[4]_equal_61_o ;
  wire mux_sel_A_0_OBUF_0;
  wire N209;
  wire interrupt_IBUF_3231;
  wire ins_3_OBUF_3233;
  wire N160_0;
  wire N162;
  wire N21;
  wire ins_4_OBUF_3240;
  wire N163_0;
  wire N165;
  wire N23;
  wire ins_5_OBUF_3247;
  wire N166_0;
  wire \ins1/ALU_Execution/Mmux_ans_tmp102 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp101_0 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp111 ;
  wire \ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_58_o_0 ;
  wire \ins1/ALU_Execution/Mmux_flag_ex21_3257 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp201_0 ;
  wire \ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_45_o ;
  wire \ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_44_o_0 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp122_3261 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp113_0 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp207_3263 ;
  wire \ins1/ALU_Execution/op_dec[4]_PWR_3_o_equal_29_o_0 ;
  wire ins_1_OBUF_3265;
  wire N154_0;
  wire ins_21_OBUF_3268;
  wire ins_22_OBUF_3269;
  wire ins_20_OBUF_3270;
  wire ins_23_OBUF_3271;
  wire \ins8/DFF4_3272 ;
  wire N200;
  wire ins_6_OBUF_3276;
  wire N201_0;
  wire \ins8/DFF5_3280 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp121_3281 ;
  wire \ins1/ALU_Execution/Mmux_flag_ex25_0 ;
  wire \ins3/Mmux_n00358 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp3210_0 ;
  wire \ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_48_o ;
  wire \ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_47_o_0 ;
  wire N203;
  wire ins_7_OBUF_3290;
  wire N204_0;
  wire A_1_OBUF_3293;
  wire \ins1/ALU_Execution/op_dec[4]_PWR_3_o_equal_23_o ;
  wire A_0_OBUF_3297;
  wire A_3_OBUF_3298;
  wire A_2_OBUF_3301;
  wire A_5_OBUF_3302;
  wire A_4_OBUF_3305;
  wire A_7_OBUF_3306;
  wire A_6_OBUF_3309;
  wire ans_dm_1_OBUF_3311;
  wire ans_dm_0_OBUF_3312;
  wire \ins4/Ex_out<1>_0 ;
  wire \ins8/DFF9_3315 ;
  wire \ins4/Ex_out<0>_0 ;
  wire N31;
  wire \ins8/OR_out ;
  wire N156;
  wire \ins5/Mmux_n002011_3323 ;
  wire ins_18_OBUF_3325;
  wire mux_sel_B_1_OBUF_3331;
  wire mux_sel_B_0_OBUF_3333;
  wire ans_dm_7_OBUF_3334;
  wire ans_dm_6_OBUF_3335;
  wire \ins8/DFF6_0 ;
  wire \ins8/DFF8_3345 ;
  wire Current_Address_7_OBUF_3375;
  wire Current_Address_6_OBUF_3376;
  wire Current_Address_5_OBUF_3377;
  wire Current_Address_4_OBUF_3378;
  wire Current_Address_3_OBUF_3379;
  wire Current_Address_2_OBUF_3380;
  wire Current_Address_1_OBUF_3381;
  wire Current_Address_0_OBUF_3382;
  wire ins_8_OBUF_3396;
  wire ins_9_OBUF_3397;
  wire ins_14_OBUF_3398;
  wire ins_13_OBUF_3399;
  wire ins_12_OBUF_3400;
  wire ins_11_OBUF_3401;
  wire ins_10_OBUF_3402;
  wire ins_17_OBUF_3403;
  wire ins_16_OBUF_3404;
  wire ins_15_OBUF_3405;
  wire ans_dm_2_OBUF_3406;
  wire ans_dm_4_OBUF_3407;
  wire ans_dm_3_OBUF_3408;
  wire ans_dm_5_OBUF_3409;
  wire B_0_OBUF_0;
  wire B_1_OBUF_3411;
  wire B_2_OBUF_3412;
  wire B_3_OBUF_3413;
  wire B_4_OBUF_3414;
  wire B_5_OBUF_3415;
  wire B_6_OBUF_3416;
  wire B_7_OBUF_3417;
  wire \clk_BUFGP/IBUFG_3418 ;
  wire data_in_7_IBUF_3419;
  wire data_in_5_IBUF_3420;
  wire data_in_6_IBUF_3421;
  wire data_in_0_IBUF_3422;
  wire data_in_3_IBUF_3423;
  wire data_in_4_IBUF_3424;
  wire data_in_1_IBUF_3425;
  wire data_in_2_IBUF_3426;
  wire \ins3/BR<0>_0 ;
  wire \ins3/BR<2>_0 ;
  wire \ins3/BR<4>_0 ;
  wire \ins3/AR<0>_0 ;
  wire \ins3/AR<2>_0 ;
  wire \ins3/AR<4>_0 ;
  wire \ins3/AR<6>_0 ;
  wire \ins3/BR<6>_0 ;
  wire N270_0;
  wire \ins1/ALU_Execution/Mmux_ans_tmp112 ;
  wire N127;
  wire N128;
  wire N56;
  wire pc_mux_sel;
  wire N103;
  wire N104;
  wire N105;
  wire N58;
  wire N78;
  wire N108;
  wire N107;
  wire N109;
  wire N173;
  wire \ins7/Mmux_n004251_3462 ;
  wire \ins4/Ex_out<2>_0 ;
  wire \ins4/Ex_out<3>_0 ;
  wire N197;
  wire N198_0;
  wire N194;
  wire N195_0;
  wire \ins1/ALU_Execution/Mmux_flag_ex1 ;
  wire \ins1/ALU_Execution/Mmux_flag_ex24_3477 ;
  wire \ins1/ALU_Execution/Mmux_flag_ex22_3479 ;
  wire \ins1/ALU_Execution/Mmux_flag_ex26_3480 ;
  wire N171;
  wire N153;
  wire N61;
  wire N60;
  wire \ins1/ALU_Execution/Mmux_ans_tmp241_3490 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp2411 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp24 ;
  wire \ins1/ALU_Execution/ans_tmp_temp<0><7>_0 ;
  wire \ins1/ALU_Execution/ans_tmp_temp<1>[7] ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp329_3495 ;
  wire N72;
  wire N71;
  wire \ins1/ALU_Execution/Mmux_ans_tmp45_3499 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp110 ;
  wire N69;
  wire N68;
  wire \ins1/ALU_Execution/Mmux_ans_tmp202 ;
  wire N66;
  wire N65;
  wire \ins1/ALU_Execution/Mmux_ans_tmp243 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp32 ;
  wire N159;
  wire N33;
  wire N142;
  wire N185;
  wire \ins8/Reg7[4]_Reg4[4]_equal_67_o ;
  wire \ins8/C4 ;
  wire \ins8/Reg6[4]_Reg4[4]_equal_65_o ;
  wire N124;
  wire \ins1/ALU_Execution/Mmux_ans_tmp4 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp43_3519 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp81_3520 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp44_3521 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp46_3522 ;
  wire \ins1/ALU_Execution/Sh161 ;
  wire \ins1/ALU_Execution/Sh20 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp42 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp82_3526 ;
  wire \ins1/ALU_Execution/Sh251_3527 ;
  wire N217;
  wire \ins1/ALU_Execution/Mmux_ans_tmp84_3529 ;
  wire N216;
  wire \ins1/ALU_Execution/Mmux_ans_tmp8 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp83_3532 ;
  wire N113;
  wire \ins3/Mmux_n0034611 ;
  wire N133;
  wire N134;
  wire \ins1/ALU_Execution/Mmux_ans_tmp205_3537 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp125_3538 ;
  wire \ins1/ALU_Execution/type3/Mmux__n007021 ;
  wire \ins3/Mmux_n003461_3540 ;
  wire \ins8/Reg7<4>_0 ;
  wire \ins1/ALU_Execution/type2/Add/inst6/x_y_XOR_2_o ;
  wire N279;
  wire \ins1/ALU_Execution/Sh191 ;
  wire \ins1/ALU_Execution/Sh33 ;
  wire \ins3/Mmux_n00351 ;
  wire \ins8/GND_17_o_GND_17_o_equal_7_o_0_3561 ;
  wire N206;
  wire N54;
  wire N86;
  wire N41;
  wire N74;
  wire N75;
  wire N2;
  wire N222;
  wire \ins3/Mmux_n00357 ;
  wire N3;
  wire \ins1/ALU_Execution/type2/Add/temp_carryout[6] ;
  wire \ins1/ALU_Execution/type2/Add/temp_carryout[2] ;
  wire N280;
  wire \ins1/ALU_Execution/type1/Add/temp_carryout[0] ;
  wire \ins1/ALU_Execution/ans_tmp_temp<1>[6] ;
  wire N148;
  wire N149;
  wire \ins1/ALU_Execution/Mmux_ans_tmp244_3585 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp245_3586 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp247_3587 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp248_3588 ;
  wire \ins3/Mmux_n00352 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp206_3590 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp281_3591 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp288_3592 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp282_3594 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp283_3595 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp284_3596 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp287 ;
  wire N39;
  wire \ins1/ALU_Execution/Mmux_ans_tmp12 ;
  wire \ins1/ALU_Execution/ans_tmp_temp<1>[2] ;
  wire N116_0;
  wire \ins1/ALU_Execution/Mmux_ans_tmp126_3602 ;
  wire N115;
  wire \ins1/ALU_Execution/Mmux_ans_tmp8221 ;
  wire \ins1/ALU_Execution/Sh2 ;
  wire \ins1/ALU_Execution/Sh26 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp127 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp162_3608 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp163_3609 ;
  wire \ins1/ALU_Execution/Sh3 ;
  wire \ins8/Reg5<4>_0 ;
  wire N260;
  wire N93;
  wire N188;
  wire N189;
  wire N92;
  wire N262;
  wire N43;
  wire N264;
  wire \ins1/ALU_Execution/Mmux_ans_tmp322_3624 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp323_3625 ;
  wire N130;
  wire N207;
  wire \ins1/ALU_Execution/type2/Add/inst1/x_y_XOR_2_o ;
  wire N90;
  wire N89;
  wire \ins1/ALU_Execution/ans_tmp_temp<1>[5] ;
  wire \ins1/ALU_Execution/Mmux_flag_ex23_3637 ;
  wire N83;
  wire \ins1/ALU_Execution/Mmux_ans_tmp209 ;
  wire \ins1/ALU_Execution/type2/Add/inst7/x_y_XOR_2_o ;
  wire N145;
  wire N146;
  wire N219;
  wire N191;
  wire N268;
  wire \ins1/ALU_Execution/Mmux_ans_tmp161_3646 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp16 ;
  wire \ins1/ALU_Execution/type1/Add/temp_carryout[3] ;
  wire N225;
  wire N224;
  wire N150;
  wire N151;
  wire N6;
  wire N7;
  wire N5;
  wire N8;
  wire N176;
  wire N111;
  wire \ins1/ALU_Execution/type2/Add/inst5/x_y_XOR_2_o ;
  wire N255;
  wire N139;
  wire N140;
  wire \ins1/ALU_Execution/Sh51 ;
  wire \ins1/ALU_Execution/Sh61 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp246_3667 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp328 ;
  wire N52;
  wire N186;
  wire \ins1/ALU_Execution/type1/Add/temp_carryout[6] ;
  wire \ins3/Mmux_n003441_3672 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp20 ;
  wire \ins1/ALU_Execution/type2/Add/inst4/x_y_XOR_2_o ;
  wire N136;
  wire \ins1/ALU_Execution/Mmux_ans_tmp2011_3677 ;
  wire \ins1/ALU_Execution/ans_tmp_temp<1>[1] ;
  wire N181;
  wire \ins8/DFF7_3681 ;
  wire \ins3/Mram_RegisterBank11_RAMD_D1_O_0 ;
  wire \ins3/Mram_RegisterBank2_RAMD_D1_O_0 ;
  wire N45;
  wire \ins8/ins<23>_0 ;
  wire N266;
  wire N35;
  wire N37;
  wire N84;
  wire N259;
  wire N137;
  wire \ins1/ALU_Execution/Mmux_ans_tmp204_3698 ;
  wire N282;
  wire N131;
  wire N245;
  wire N143;
  wire N192;
  wire N87;
  wire N257;
  wire \ins1/ALU_Execution/Mmux_ans_tmp2010_3707 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp123_3709 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp87_3710 ;
  wire N212;
  wire \ins1/ALU_Execution/Mmux_ans_tmp249_3713 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp124 ;
  wire N277;
  wire \ins1/ALU_Execution/Mmux_ans_tmp47_3716 ;
  wire N254;
  wire N51;
  wire N179;
  wire N97;
  wire N214;
  wire N221;
  wire \ins1/ALU_Execution/Mmux_flag_ex2 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp285_3724 ;
  wire N27;
  wire \ins1/ALU_Execution/type2/Add/temp_carryout[5] ;
  wire N177;
  wire N25;
  wire N63;
  wire N125;
  wire \ins1/ALU_Execution/Mmux_ans_tmp28 ;
  wire \ProtoComp26.INTERMDISABLE_GND.0 ;
  wire \clk/ProtoComp26.INTERMDISABLE_GND.0 ;
  wire \interrupt/ProtoComp26.INTERMDISABLE_GND.0 ;
  wire \data_in<7>/ProtoComp26.INTERMDISABLE_GND.0 ;
  wire \data_in<0>/ProtoComp26.INTERMDISABLE_GND.0 ;
  wire \data_in<6>/ProtoComp26.INTERMDISABLE_GND.0 ;
  wire \data_in<5>/ProtoComp26.INTERMDISABLE_GND.0 ;
  wire \data_in<4>/ProtoComp26.INTERMDISABLE_GND.0 ;
  wire \data_in<3>/ProtoComp26.INTERMDISABLE_GND.0 ;
  wire \data_in<2>/ProtoComp26.INTERMDISABLE_GND.0 ;
  wire \data_in<1>/ProtoComp26.INTERMDISABLE_GND.0 ;
  wire mux_sel_A_0_OBUF_425;
  wire \ins3/ins[8]_read_port_22_OUT<0> ;
  wire \ins3/ins[8]_read_port_22_OUT<1> ;
  wire \ins3/ins[8]_read_port_22_OUT<3> ;
  wire \ins3/ins[8]_read_port_22_OUT<5> ;
  wire \ins3/ins[8]_read_port_22_OUT<4> ;
  wire \ins3/ins[8]_read_port_22_OUT<2> ;
  wire \ins3/Mram_RegisterBank11_RAMD_D1_O ;
  wire \ins8/DFF2_0 ;
  wire \ins3/ins[13]_read_port_21_OUT<0> ;
  wire \ins3/ins[13]_read_port_21_OUT<1> ;
  wire \ins3/ins[13]_read_port_21_OUT<3> ;
  wire \ins3/ins[13]_read_port_21_OUT<5> ;
  wire \ins3/ins[13]_read_port_21_OUT<4> ;
  wire \ins3/ins[13]_read_port_21_OUT<2> ;
  wire \ins3/Mram_RegisterBank2_RAMD_D1_O ;
  wire \ins8/Reg4<4>_pack_2 ;
  wire \ins3/ins[13]_read_port_21_OUT<6> ;
  wire \ins3/ins[13]_read_port_21_OUT<7> ;
  wire \ins3/ins[8]_read_port_22_OUT<6> ;
  wire \ins3/ins[8]_read_port_22_OUT<7> ;
  wire \ins8/Reg7<1>_pack_1 ;
  wire N31_pack_4;
  wire Stall_pack_5;
  wire N154;
  wire \ins8/ST_out ;
  wire N289;
  wire N288;
  wire B_1_OBUF_pack_4;
  wire \ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_58_o ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp101 ;
  wire N157;
  wire N291;
  wire B_0_OBUF_1399;
  wire N290;
  wire ans_dm_1_OBUF_pack_3;
  wire \ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_44_o ;
  wire \ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_47_o ;
  wire N116;
  wire \ins1/ALU_Execution/Mmux_ans_tmp113 ;
  wire N99;
  wire \ins8/DFF6_2317 ;
  wire N169;
  wire N97_pack_1;
  wire ans_dm_7_OBUF_pack_5;
  wire N210;
  wire N160;
  wire N198;
  wire N195;
  wire \ins1/ALU_Execution/op_dec[4]_PWR_3_o_equal_29_o ;
  wire N284;
  wire N270;
  wire N163;
  wire N201;
  wire N204;
  wire \ins1/ALU_Execution/Mmux_ans_tmp201_2808 ;
  wire \ins1/ALU_Execution/Mmux_ans_tmp3210_2867 ;
  wire N166;
  wire \ins1/ALU_Execution/Mmux_flag_ex25_2537 ;
  wire N100;
  wire N286;
  wire N287;
  wire \ins1/data_out<5>_pack_8 ;
  wire \ins1/data_out<7>_pack_10 ;
  wire \ins1/data_out<3>_pack_6 ;
  wire \ins1/data_out<1>_pack_4 ;
  wire \NlwBufferSignal_ans_wb_1_OBUF/I ;
  wire \NlwBufferSignal_ans_wb_4_OBUF/I ;
  wire \NlwBufferSignal_ans_wb_2_OBUF/I ;
  wire \NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<10> ;
  wire \NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<11> ;
  wire \NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<12> ;
  wire \NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<5> ;
  wire \NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<6> ;
  wire \NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<7> ;
  wire \NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<8> ;
  wire \NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<9> ;
  wire \NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<10> ;
  wire \NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<11> ;
  wire \NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<12> ;
  wire \NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<5> ;
  wire \NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<6> ;
  wire \NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<7> ;
  wire \NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<8> ;
  wire \NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<9> ;
  wire \NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/CLKARDCLK ;
  wire \NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/CLKBWRCLK ;
  wire \NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/DIADI<0> ;
  wire \NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/DIADI<1> ;
  wire \NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/DIADI<8> ;
  wire \NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/DIADI<9> ;
  wire \NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/DIBDI<0> ;
  wire \NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/DIBDI<1> ;
  wire \NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/DIBDI<8> ;
  wire \NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/DIBDI<9> ;
  wire \NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ENARDEN ;
  wire \NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ENBWREN ;
  wire \NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/WEA<0> ;
  wire \NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/WEA<1> ;
  wire \NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/WEBWE<0> ;
  wire \NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/WEBWE<1> ;
  wire \NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<10> ;
  wire \NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<11> ;
  wire \NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<12> ;
  wire \NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<5> ;
  wire \NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<6> ;
  wire \NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<7> ;
  wire \NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<8> ;
  wire \NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<9> ;
  wire \NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<10> ;
  wire \NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<11> ;
  wire \NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<12> ;
  wire \NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<5> ;
  wire \NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<6> ;
  wire \NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<7> ;
  wire \NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<8> ;
  wire \NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<9> ;
  wire \NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/CLKARDCLK ;
  wire \NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/CLKBWRCLK ;
  wire \NlwBufferSignal_ans_wb_6_OBUF/I ;
  wire \NlwBufferSignal_ans_wb_0_OBUF/I ;
  wire \NlwBufferSignal_ans_wb_3_OBUF/I ;
  wire \NlwBufferSignal_A_0_OBUF/I ;
  wire \NlwBufferSignal_ans_wb_7_OBUF/I ;
  wire \NlwBufferSignal_ans_wb_5_OBUF/I ;
  wire \NlwBufferSignal_mux_sel_A_0_OBUF/I ;
  wire \NlwBufferSignal_ins_1_OBUF/I ;
  wire \NlwBufferSignal_A_5_OBUF/I ;
  wire \NlwBufferSignal_A_3_OBUF/I ;
  wire \NlwBufferSignal_A_2_OBUF/I ;
  wire \NlwBufferSignal_mux_sel_A_1_OBUF/I ;
  wire \NlwBufferSignal_ins_0_OBUF/I ;
  wire \NlwBufferSignal_A_1_OBUF/I ;
  wire \NlwBufferSignal_A_4_OBUF/I ;
  wire \NlwBufferSignal_A_6_OBUF/I ;
  wire \NlwBufferSignal_A_7_OBUF/I ;
  wire \NlwBufferSignal_ins_5_OBUF/I ;
  wire \NlwBufferSignal_ins_4_OBUF/I ;
  wire \NlwBufferSignal_ins_12_OBUF/I ;
  wire \NlwBufferSignal_ins_3_OBUF/I ;
  wire \NlwBufferSignal_ins_7_OBUF/I ;
  wire \NlwBufferSignal_ins_11_OBUF/I ;
  wire \NlwBufferSignal_ins_14_OBUF/I ;
  wire \NlwBufferSignal_ins_9_OBUF/I ;
  wire \NlwBufferSignal_ins_6_OBUF/I ;
  wire \NlwBufferSignal_ins_8_OBUF/I ;
  wire \NlwBufferSignal_ins_2_OBUF/I ;
  wire \NlwBufferSignal_ins_13_OBUF/I ;
  wire \NlwBufferSignal_ins_15_OBUF/I ;
  wire \NlwBufferSignal_ans_dm_2_OBUF/I ;
  wire \NlwBufferSignal_ins_19_OBUF/I ;
  wire \NlwBufferSignal_ins_18_OBUF/I ;
  wire \NlwBufferSignal_ins_22_OBUF/I ;
  wire \NlwBufferSignal_imm_sel_OBUF/I ;
  wire \NlwBufferSignal_ins_20_OBUF/I ;
  wire \NlwBufferSignal_ins_21_OBUF/I ;
  wire \NlwBufferSignal_ins_10_OBUF/I ;
  wire \NlwBufferSignal_ins_16_OBUF/I ;
  wire \NlwBufferSignal_ins_23_OBUF/I ;
  wire \NlwBufferSignal_ins_17_OBUF/I ;
  wire \NlwBufferSignal_Current_Address_1_OBUF/I ;
  wire \NlwBufferSignal_ans_dm_1_OBUF/I ;
  wire \NlwBufferSignal_ans_dm_7_OBUF/I ;
  wire \NlwBufferSignal_Current_Address_4_OBUF/I ;
  wire \NlwBufferSignal_Current_Address_7_OBUF/I ;
  wire \NlwBufferSignal_ans_dm_6_OBUF/I ;
  wire \NlwBufferSignal_B_2_OBUF/I ;
  wire \NlwBufferSignal_B_0_OBUF/I ;
  wire \NlwBufferSignal_ans_dm_3_OBUF/I ;
  wire \NlwBufferSignal_ans_dm_0_OBUF/I ;
  wire \NlwBufferSignal_Current_Address_5_OBUF/I ;
  wire \NlwBufferSignal_B_4_OBUF/I ;
  wire \NlwBufferSignal_Current_Address_6_OBUF/I ;
  wire \NlwBufferSignal_Current_Address_3_OBUF/I ;
  wire \NlwBufferSignal_Current_Address_2_OBUF/I ;
  wire \NlwBufferSignal_ans_dm_5_OBUF/I ;
  wire \NlwBufferSignal_B_3_OBUF/I ;
  wire \NlwBufferSignal_Current_Address_0_OBUF/I ;
  wire \NlwBufferSignal_B_5_OBUF/I ;
  wire \NlwBufferSignal_ans_dm_4_OBUF/I ;
  wire \NlwBufferSignal_B_1_OBUF/I ;
  wire \NlwBufferSignal_B_6_OBUF/I ;
  wire \NlwBufferSignal_B_7_OBUF/I ;
  wire \NlwBufferSignal_data_out_1_OBUF/I ;
  wire \NlwBufferSignal_data_out_0_OBUF/I ;
  wire \NlwBufferSignal_data_out_5_OBUF/I ;
  wire \NlwBufferSignal_ans_ex_3_OBUF/I ;
  wire \NlwBufferSignal_data_out_4_OBUF/I ;
  wire \NlwBufferSignal_data_out_2_OBUF/I ;
  wire \NlwBufferSignal_ans_ex_2_OBUF/I ;
  wire \NlwBufferSignal_ans_ex_1_OBUF/I ;
  wire \NlwBufferSignal_ans_ex_4_OBUF/I ;
  wire \NlwBufferSignal_data_out_3_OBUF/I ;
  wire \NlwBufferSignal_data_out_7_OBUF/I ;
  wire \NlwBufferSignal_mux_sel_B_1_OBUF/I ;
  wire \NlwBufferSignal_data_out_6_OBUF/I ;
  wire \NlwBufferSignal_mux_sel_B_0_OBUF/I ;
  wire \NlwBufferSignal_ins8/Reg3_3/CLK ;
  wire \NlwBufferSignal_ins8/Reg3_3/IN ;
  wire \NlwBufferSignal_ins8/Reg3_2/CLK ;
  wire \NlwBufferSignal_ins8/Reg3_1/CLK ;
  wire \NlwBufferSignal_ins8/Reg3_0/CLK ;
  wire \NlwBufferSignal_ins8/Reg3_0/IN ;
  wire \NlwBufferSignal_ans_ex_6_OBUF/I ;
  wire \NlwBufferSignal_ins8/Reg3_4/CLK ;
  wire \NlwBufferSignal_ins8/Reg3_4/IN ;
  wire \NlwBufferSignal_ins2/ins_prv_15/CLK ;
  wire \NlwBufferSignal_ins2/ins_prv_15/IN ;
  wire \NlwBufferSignal_ins2/ins_prv_14/CLK ;
  wire \NlwBufferSignal_ins2/ins_prv_13/CLK ;
  wire \NlwBufferSignal_ins2/ins_prv_13/IN ;
  wire \NlwBufferSignal_ins2/ins_prv_12/CLK ;
  wire \NlwBufferSignal_ins2/ins_prv_12/IN ;
  wire \NlwBufferSignal_ins8/Reg5_4/CLK ;
  wire \NlwBufferSignal_ins8/Reg5_4/IN ;
  wire \NlwBufferSignal_ans_ex_7_OBUF/I ;
  wire \NlwBufferSignal_clk_BUFGP/BUFG/IN ;
  wire \NlwBufferSignal_ins8/Reg6_4/CLK ;
  wire \NlwBufferSignal_ins8/Reg6_4/IN ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD_D1/RADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD_D1/RADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD_D1/RADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD_D1/RADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD_D1/RADR4 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD_D1/CLK ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD_D1/WADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD_D1/WADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD_D1/WADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD_D1/WADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD_D1/WADR4 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD/RADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD/RADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD/RADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD/RADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD/RADR4 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD/CLK ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD/WADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD/WADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD/WADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD/WADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD/WADR4 ;
  wire \NlwBufferSignal_ins3/BR_5/CLK ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC_D1/RADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC_D1/RADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC_D1/RADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC_D1/RADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC_D1/RADR4 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC_D1/CLK ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC_D1/IN ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC_D1/WADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC_D1/WADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC_D1/WADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC_D1/WADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC_D1/WADR4 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC/RADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC/RADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC/RADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC/RADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC/RADR4 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC/CLK ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC/IN ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC/WADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC/WADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC/WADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC/WADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC/WADR4 ;
  wire \NlwBufferSignal_ins3/BR_4/CLK ;
  wire \NlwBufferSignal_ins3/BR_3/CLK ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB_D1/RADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB_D1/RADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB_D1/RADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB_D1/RADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB_D1/RADR4 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB_D1/CLK ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB_D1/IN ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB_D1/WADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB_D1/WADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB_D1/WADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB_D1/WADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB_D1/WADR4 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB/RADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB/RADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB/RADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB/RADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB/RADR4 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB/CLK ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB/IN ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB/WADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB/WADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB/WADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB/WADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB/WADR4 ;
  wire \NlwBufferSignal_ins3/BR_2/CLK ;
  wire \NlwBufferSignal_ins3/BR_1/CLK ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA_D1/RADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA_D1/RADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA_D1/RADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA_D1/RADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA_D1/RADR4 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA_D1/CLK ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA_D1/IN ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA_D1/WADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA_D1/WADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA_D1/WADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA_D1/WADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA_D1/WADR4 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA/RADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA/RADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA/RADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA/RADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA/RADR4 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA/CLK ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA/IN ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA/WADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA/WADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA/WADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA/WADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA/WADR4 ;
  wire \NlwBufferSignal_ins3/BR_0/CLK ;
  wire \NlwBufferSignal_ans_ex_0_OBUF/I ;
  wire \NlwBufferSignal_ins2/ins_prv_19/CLK ;
  wire \NlwBufferSignal_ins2/ins_prv_18/CLK ;
  wire \NlwBufferSignal_ins2/ins_prv_18/IN ;
  wire \NlwBufferSignal_ins2/ins_prv_17/CLK ;
  wire \NlwBufferSignal_ins2/ins_prv_16/CLK ;
  wire \NlwBufferSignal_ins2/ins_prv_16/IN ;
  wire \NlwBufferSignal_ans_ex_5_OBUF/I ;
  wire \NlwBufferSignal_ins5/Q_3/CLK ;
  wire \NlwBufferSignal_ins5/Q_2/CLK ;
  wire \NlwBufferSignal_ins8/Reg5_3/CLK ;
  wire \NlwBufferSignal_ins8/Reg5_3/IN ;
  wire \NlwBufferSignal_ins8/Reg5_2/CLK ;
  wire \NlwBufferSignal_ins8/Reg5_2/IN ;
  wire \NlwBufferSignal_ins8/Reg5_1/CLK ;
  wire \NlwBufferSignal_ins8/Reg5_1/IN ;
  wire \NlwBufferSignal_ins8/Reg5_0/CLK ;
  wire \NlwBufferSignal_ins8/Reg5_0/IN ;
  wire \NlwBufferSignal_ins8/Reg4_2/CLK ;
  wire \NlwBufferSignal_ins8/Reg4_2/IN ;
  wire \NlwBufferSignal_ins8/Reg4_1/CLK ;
  wire \NlwBufferSignal_ins8/Reg4_1/IN ;
  wire \NlwBufferSignal_ins8/Reg4_0/CLK ;
  wire \NlwBufferSignal_ins8/Reg4_0/IN ;
  wire \NlwBufferSignal_ins8/DFF9/CLK ;
  wire \NlwBufferSignal_ins8/DFF9/IN ;
  wire \NlwBufferSignal_ins8/DFF8/CLK ;
  wire \NlwBufferSignal_ins8/DFF8/IN ;
  wire \NlwBufferSignal_ins8/Reg7_4/CLK ;
  wire \NlwBufferSignal_ins8/Reg7_4/IN ;
  wire \NlwBufferSignal_ins8/Reg6_3/CLK ;
  wire \NlwBufferSignal_ins8/Reg6_3/IN ;
  wire \NlwBufferSignal_ins8/Reg6_2/CLK ;
  wire \NlwBufferSignal_ins8/Reg6_2/IN ;
  wire \NlwBufferSignal_ins8/Reg6_1/CLK ;
  wire \NlwBufferSignal_ins8/Reg6_1/IN ;
  wire \NlwBufferSignal_ins8/Reg6_0/CLK ;
  wire \NlwBufferSignal_ins8/Reg6_0/IN ;
  wire \NlwBufferSignal_ins8/Reg2_4/CLK ;
  wire \NlwBufferSignal_ins8/Reg2_4/IN ;
  wire \NlwBufferSignal_ins8/Reg2_3/CLK ;
  wire \NlwBufferSignal_ins8/Reg2_3/IN ;
  wire \NlwBufferSignal_ins8/Reg4_3/CLK ;
  wire \NlwBufferSignal_ins8/Reg4_3/IN ;
  wire \NlwBufferSignal_ins8/DFF5/CLK ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD_D1/RADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD_D1/RADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD_D1/RADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD_D1/RADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD_D1/RADR4 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD_D1/CLK ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD_D1/WADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD_D1/WADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD_D1/WADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD_D1/WADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD_D1/WADR4 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD/RADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD/RADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD/RADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD/RADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD/RADR4 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD/CLK ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD/WADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD/WADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD/WADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD/WADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD/WADR4 ;
  wire \NlwBufferSignal_ins3/AR_5/CLK ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC_D1/RADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC_D1/RADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC_D1/RADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC_D1/RADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC_D1/RADR4 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC_D1/CLK ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC_D1/IN ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC_D1/WADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC_D1/WADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC_D1/WADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC_D1/WADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC_D1/WADR4 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC/RADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC/RADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC/RADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC/RADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC/RADR4 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC/CLK ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC/IN ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC/WADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC/WADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC/WADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC/WADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC/WADR4 ;
  wire \NlwBufferSignal_ins3/AR_4/CLK ;
  wire \NlwBufferSignal_ins3/AR_3/CLK ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB_D1/RADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB_D1/RADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB_D1/RADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB_D1/RADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB_D1/RADR4 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB_D1/CLK ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB_D1/IN ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB_D1/WADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB_D1/WADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB_D1/WADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB_D1/WADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB_D1/WADR4 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB/RADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB/RADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB/RADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB/RADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB/RADR4 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB/CLK ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB/IN ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB/WADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB/WADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB/WADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB/WADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB/WADR4 ;
  wire \NlwBufferSignal_ins3/AR_2/CLK ;
  wire \NlwBufferSignal_ins3/AR_1/CLK ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA_D1/RADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA_D1/RADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA_D1/RADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA_D1/RADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA_D1/RADR4 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA_D1/CLK ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA_D1/IN ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA_D1/WADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA_D1/WADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA_D1/WADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA_D1/WADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA_D1/WADR4 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA/RADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA/RADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA/RADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA/RADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA/RADR4 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA/CLK ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA/IN ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA/WADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA/WADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA/WADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA/WADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA/WADR4 ;
  wire \NlwBufferSignal_ins3/AR_0/CLK ;
  wire \NlwBufferSignal_ins2/ins_prv_11/CLK ;
  wire \NlwBufferSignal_ins2/ins_prv_10/CLK ;
  wire \NlwBufferSignal_ins2/ins_prv_9/CLK ;
  wire \NlwBufferSignal_ins2/ins_prv_8/CLK ;
  wire \NlwBufferSignal_ins8/Reg4_4/CLK ;
  wire \NlwBufferSignal_ins8/Reg4_4/IN ;
  wire \NlwBufferSignal_ins8/Reg2_2/CLK ;
  wire \NlwBufferSignal_ins8/Reg2_2/IN ;
  wire \NlwBufferSignal_ins8/Reg2_1/CLK ;
  wire \NlwBufferSignal_ins8/Reg2_1/IN ;
  wire \NlwBufferSignal_ins8/Reg2_0/CLK ;
  wire \NlwBufferSignal_ins8/Reg2_0/IN ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank122/SP/RADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank122/SP/RADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank122/SP/RADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank122/SP/RADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank122/SP/RADR4 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank122/SP/CLK ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank122/SP/IN ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank122/SP/WADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank122/SP/WADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank122/SP/WADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank122/SP/WADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank122/SP/WADR4 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank121/SP/RADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank121/SP/RADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank121/SP/RADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank121/SP/RADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank121/SP/RADR4 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank121/SP/CLK ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank121/SP/IN ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank121/SP/WADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank121/SP/WADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank121/SP/WADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank121/SP/WADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank121/SP/WADR4 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank32/SP/RADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank32/SP/RADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank32/SP/RADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank32/SP/RADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank32/SP/RADR4 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank32/SP/CLK ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank32/SP/IN ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank32/SP/WADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank32/SP/WADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank32/SP/WADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank32/SP/WADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank32/SP/WADR4 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank31/SP/RADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank31/SP/RADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank31/SP/RADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank31/SP/RADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank31/SP/RADR4 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank31/SP/CLK ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank31/SP/IN ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank31/SP/WADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank31/SP/WADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank31/SP/WADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank31/SP/WADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank31/SP/WADR4 ;
  wire \NlwBufferSignal_ins3/BR_7/CLK ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank122/DP/RADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank122/DP/RADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank122/DP/RADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank122/DP/RADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank122/DP/RADR4 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank122/DP/CLK ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank122/DP/IN ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank122/DP/WADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank122/DP/WADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank122/DP/WADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank122/DP/WADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank122/DP/WADR4 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank121/DP/RADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank121/DP/RADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank121/DP/RADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank121/DP/RADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank121/DP/RADR4 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank121/DP/CLK ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank121/DP/IN ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank121/DP/WADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank121/DP/WADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank121/DP/WADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank121/DP/WADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank121/DP/WADR4 ;
  wire \NlwBufferSignal_ins3/BR_6/CLK ;
  wire \NlwBufferSignal_ins3/AR_7/CLK ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank32/DP/RADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank32/DP/RADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank32/DP/RADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank32/DP/RADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank32/DP/RADR4 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank32/DP/CLK ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank32/DP/IN ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank32/DP/WADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank32/DP/WADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank32/DP/WADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank32/DP/WADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank32/DP/WADR4 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank31/DP/RADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank31/DP/RADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank31/DP/RADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank31/DP/RADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank31/DP/RADR4 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank31/DP/CLK ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank31/DP/IN ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank31/DP/WADR0 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank31/DP/WADR1 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank31/DP/WADR2 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank31/DP/WADR3 ;
  wire \NlwBufferSignal_ins3/Mram_RegisterBank31/DP/WADR4 ;
  wire \NlwBufferSignal_ins3/AR_6/CLK ;
  wire \NlwBufferSignal_ins8/Reg7_2/CLK ;
  wire \NlwBufferSignal_ins8/Reg7_2/IN ;
  wire \NlwBufferSignal_ins8/Reg7_1/CLK ;
  wire \NlwBufferSignal_ins8/Reg7_1/IN ;
  wire \NlwBufferSignal_ins5/Q_1/CLK ;
  wire \NlwBufferSignal_ins5/Q_0/CLK ;
  wire \NlwBufferSignal_ins8/DFF4/CLK ;
  wire \NlwBufferSignal_ins8/DFF7/CLK ;
  wire \NlwBufferSignal_ins8/DFF7/IN ;
  wire \NlwBufferSignal_ins8/Reg7_3/CLK ;
  wire \NlwBufferSignal_ins8/Reg7_3/IN ;
  wire \NlwBufferSignal_ins8/Reg7_0/CLK ;
  wire \NlwBufferSignal_ins8/Reg7_0/IN ;
  wire \NlwBufferSignal_ins1/DM_data_1/CLK ;
  wire \NlwBufferSignal_ins1/DM_data_0/CLK ;
  wire \NlwBufferSignal_ins4/Ex_out_3/CLK ;
  wire \NlwBufferSignal_ins4/Ex_out_3/IN ;
  wire \NlwBufferSignal_ins4/Ex_out_2/CLK ;
  wire \NlwBufferSignal_ins4/Ex_out_2/IN ;
  wire \NlwBufferSignal_ins4/Ex_out_1/CLK ;
  wire \NlwBufferSignal_ins4/Ex_out_1/IN ;
  wire \NlwBufferSignal_ins4/Ex_out_0/CLK ;
  wire \NlwBufferSignal_ins4/Ex_out_0/IN ;
  wire \NlwBufferSignal_ins1/ans_ex_5/CLK ;
  wire \NlwBufferSignal_ins1/ans_ex_4/CLK ;
  wire \NlwBufferSignal_ins2/ins_prv_3/CLK ;
  wire \NlwBufferSignal_ins2/ins_prv_2/CLK ;
  wire \NlwBufferSignal_ins2/ins_prv_1/CLK ;
  wire \NlwBufferSignal_ins2/ins_prv_0/CLK ;
  wire \NlwBufferSignal_ins6/ans_wb_3/CLK ;
  wire \NlwBufferSignal_ins6/ans_wb_2/CLK ;
  wire \NlwBufferSignal_ins6/ans_wb_0/CLK ;
  wire \NlwBufferSignal_ins6/ans_wb_1/CLK ;
  wire \NlwBufferSignal_ins6/ans_wb_1/IN ;
  wire \NlwBufferSignal_ins1/ans_ex_1/CLK ;
  wire \NlwBufferSignal_ins8/DFF6/CLK ;
  wire \NlwBufferSignal_ins8/DFF6/IN ;
  wire \NlwBufferSignal_ins7/Q_0/CLK ;
  wire \NlwBufferSignal_ins6/ans_wb_6/CLK ;
  wire \NlwBufferSignal_ins6/ans_wb_7/CLK ;
  wire \NlwBufferSignal_ins6/ans_wb_7/IN ;
  wire \NlwBufferSignal_ins6/ans_wb_5/CLK ;
  wire \NlwBufferSignal_ins6/ans_wb_4/CLK ;
  wire \NlwBufferSignal_ins7/R1_3/CLK ;
  wire \NlwBufferSignal_ins7/R1_2/CLK ;
  wire \NlwBufferSignal_ins7/R1_1/CLK ;
  wire \NlwBufferSignal_ins7/R1_0/CLK ;
  wire \NlwBufferSignal_ins2/ins_prv_7/CLK ;
  wire \NlwBufferSignal_ins2/ins_prv_6/CLK ;
  wire \NlwBufferSignal_ins2/ins_prv_5/CLK ;
  wire \NlwBufferSignal_ins2/ins_prv_4/CLK ;
  wire \NlwBufferSignal_ins2/ins_prv_4/IN ;
  wire \NlwBufferSignal_ins4/Ex_out_7/CLK ;
  wire \NlwBufferSignal_ins4/Ex_out_7/IN ;
  wire \NlwBufferSignal_ins4/Ex_out_6/CLK ;
  wire \NlwBufferSignal_ins4/Ex_out_6/IN ;
  wire \NlwBufferSignal_ins4/Ex_out_5/CLK ;
  wire \NlwBufferSignal_ins4/Ex_out_5/IN ;
  wire \NlwBufferSignal_ins4/Ex_out_4/CLK ;
  wire \NlwBufferSignal_ins4/Ex_out_4/IN ;
  wire \NlwBufferSignal_ins2/ins_prv_23/CLK ;
  wire \NlwBufferSignal_ins2/ins_prv_23/IN ;
  wire \NlwBufferSignal_ins2/ins_prv_21/CLK ;
  wire \NlwBufferSignal_ins2/ins_prv_22/CLK ;
  wire \NlwBufferSignal_ins2/ins_prv_22/IN ;
  wire \NlwBufferSignal_ins2/ins_prv_20/CLK ;
  wire \NlwBufferSignal_ins1/ans_ex_0/CLK ;
  wire \NlwBufferSignal_ins1/DM_data_3/CLK ;
  wire \NlwBufferSignal_ins1/DM_data_2/CLK ;
  wire \NlwBufferSignal_ins1/DM_data_5/CLK ;
  wire \NlwBufferSignal_ins1/DM_data_4/CLK ;
  wire \NlwBufferSignal_ins1/ans_ex_3/CLK ;
  wire \NlwBufferSignal_ins1/ans_ex_2/CLK ;
  wire \NlwBufferSignal_ins1/DM_data_7/CLK ;
  wire \NlwBufferSignal_ins1/DM_data_6/CLK ;
  wire \NlwBufferSignal_ins2/Next_Address_5/CLK ;
  wire \NlwBufferSignal_ins2/Hold_Address_4/CLK ;
  wire \NlwBufferSignal_ins2/Hold_Address_7/CLK ;
  wire \NlwBufferSignal_ins7/R1_7/CLK ;
  wire \NlwBufferSignal_ins2/Hold_Address_6/CLK ;
  wire \NlwBufferSignal_ins2/Next_Address_2/CLK ;
  wire \NlwBufferSignal_ins2/Next_Address_1/CLK ;
  wire \NlwBufferSignal_ins2/Next_Address_0/CLK ;
  wire \NlwBufferSignal_ins2/Hold_Address_1/CLK ;
  wire \NlwBufferSignal_ins1/flag_tmp_1/CLK ;
  wire \NlwBufferSignal_ins1/flag_tmp_0/CLK ;
  wire \NlwBufferSignal_ins2/Hold_Address_5/CLK ;
  wire \NlwBufferSignal_ins2/Next_Address_4/CLK ;
  wire \NlwBufferSignal_ins2/Hold_Address_3/CLK ;
  wire \NlwBufferSignal_ins2/Hold_Address_2/CLK ;
  wire \NlwBufferSignal_ins2/Hold_Address_0/CLK ;
  wire \NlwBufferSignal_ins7/R1_6/CLK ;
  wire \NlwBufferSignal_ins7/R1_5/CLK ;
  wire \NlwBufferSignal_ins7/R1_4/CLK ;
  wire \NlwBufferSignal_ins2/Next_Address_7/CLK ;
  wire \NlwBufferSignal_ins2/Next_Address_6/CLK ;
  wire \NlwBufferSignal_ins2/Next_Address_3/CLK ;
  wire \NlwBufferSignal_ins1/ans_ex_7/CLK ;
  wire \NlwBufferSignal_ins1/ans_ex_6/CLK ;
  wire \NlwBufferSignal_ins1/data_out_6/CLK ;
  wire \NlwBufferSignal_ins1/data_out_7/CLK ;
  wire \NlwBufferSignal_ins1/data_out_4/CLK ;
  wire \NlwBufferSignal_ins1/data_out_5/CLK ;
  wire \NlwBufferSignal_ins1/data_out_2/CLK ;
  wire \NlwBufferSignal_ins1/data_out_3/CLK ;
  wire \NlwBufferSignal_ins1/data_out_0/CLK ;
  wire \NlwBufferSignal_ins1/data_out_1/CLK ;
  wire \NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO[10]_UNCONNECTED ;
  wire \NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO[11]_UNCONNECTED ;
  wire \NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO[12]_UNCONNECTED ;
  wire \NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO[13]_UNCONNECTED ;
  wire \NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO[14]_UNCONNECTED ;
  wire \NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO[15]_UNCONNECTED ;
  wire \NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO[2]_UNCONNECTED ;
  wire \NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO[3]_UNCONNECTED ;
  wire \NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO[4]_UNCONNECTED ;
  wire \NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO[5]_UNCONNECTED ;
  wire \NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO[6]_UNCONNECTED ;
  wire \NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO[7]_UNCONNECTED ;
  wire \NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO[10]_UNCONNECTED ;
  wire \NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO[11]_UNCONNECTED ;
  wire \NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO[12]_UNCONNECTED ;
  wire \NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO[13]_UNCONNECTED ;
  wire \NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO[14]_UNCONNECTED ;
  wire \NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO[15]_UNCONNECTED ;
  wire \NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO[2]_UNCONNECTED ;
  wire \NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO[3]_UNCONNECTED ;
  wire \NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO[4]_UNCONNECTED ;
  wire \NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO[5]_UNCONNECTED ;
  wire \NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO[6]_UNCONNECTED ;
  wire \NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO[7]_UNCONNECTED ;
  wire \NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOPADOP[0]_UNCONNECTED ;
  wire \NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOPADOP[1]_UNCONNECTED ;
  wire \NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOPBDOP[0]_UNCONNECTED ;
  wire \NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOPBDOP[1]_UNCONNECTED ;
  wire \NLW_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO[14]_UNCONNECTED ;
  wire \NLW_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO[15]_UNCONNECTED ;
  wire \NLW_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO[6]_UNCONNECTED ;
  wire \NLW_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO[7]_UNCONNECTED ;
  wire \NLW_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO[14]_UNCONNECTED ;
  wire \NLW_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO[15]_UNCONNECTED ;
  wire \NLW_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO[6]_UNCONNECTED ;
  wire \NLW_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO[7]_UNCONNECTED ;
  wire \NLW_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOPADOP[0]_UNCONNECTED ;
  wire \NLW_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOPADOP[1]_UNCONNECTED ;
  wire \NLW_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOPBDOP[0]_UNCONNECTED ;
  wire \NLW_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOPBDOP[1]_UNCONNECTED ;
  wire VCC;
  wire GND;
  wire \NLW_ins3/Mram_RegisterBank11_RAMD_D1_O_UNCONNECTED ;
  wire \NLW_ins3/Mram_RegisterBank2_RAMD_D1_O_UNCONNECTED ;
  wire \NLW_ins3/Mram_RegisterBank122/SP_O_UNCONNECTED ;
  wire \NLW_ins3/Mram_RegisterBank121/SP_O_UNCONNECTED ;
  wire \NLW_ins3/Mram_RegisterBank32/SP_O_UNCONNECTED ;
  wire \NLW_ins3/Mram_RegisterBank31/SP_O_UNCONNECTED ;
  wire \NLW_N0.C6LUT_O_UNCONNECTED ;
  wire [3 : 0] \ins5/Q ;
  wire [23 : 0] \ins2/ins_prv ;
  wire [23 : 0] \ins2/PM_out ;
  wire [0 : 0] \ins7/Q ;
  wire [7 : 0] \ins2/Hold_Address ;
  wire [7 : 0] \ins2/Next_Address ;
  wire [7 : 0] \ins7/R1 ;
  wire [7 : 0] \ins1/data_out ;
  wire [7 : 0] \ins6/ans_wb ;
  wire [7 : 0] \ins4/DM_out ;
  wire [7 : 0] \ins3/BR ;
  wire [7 : 0] \ins1/ans_ex ;
  wire [7 : 0] \ins4/Ex_out ;
  wire [7 : 0] \ins1/DM_data ;
  wire [4 : 0] \ins8/Reg6 ;
  wire [7 : 0] \ins3/AR ;
  wire [1 : 0] \ins1/flag_tmp ;
  wire [1 : 0] flag_ex;
  wire [7 : 0] \ins1/ans_tmp ;
  wire [4 : 0] \ins8/Reg7 ;
  wire [4 : 0] \ins8/Reg2 ;
  wire [4 : 0] \ins8/Reg4 ;
  wire [7 : 1] \ins1/ALU_Execution/ans_tmp_temp<0> ;
  wire [4 : 0] \ins8/Reg5 ;
  wire [4 : 0] \ins8/Reg3 ;
  wire [5 : 5] \ins2/Madd_IA_cy ;
  wire [0 : 0] \ins5/n0019 ;
  wire [0 : 0] \ins5/n0018 ;
  wire [0 : 0] \ins5/n0021 ;
  wire [0 : 0] \ins7/n0040 ;
  wire [7 : 0] \ins7/n0042 ;
  wire [7 : 0] \ins2/IA ;
  wire [7 : 0] \ins1/data_out_buff ;
  initial $sdf_annotate("netgen/par/mainmodule_timesim.sdf");
  X_OPAD #(
    .LOC ( "IOB_X0Y139" ))
  \ans_wb<1>  (
    .PAD(ans_wb[1])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y139" ))
  ans_wb_1_OBUF (
    .I(\NlwBufferSignal_ans_wb_1_OBUF/I ),
    .O(ans_wb[1])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y135" ))
  \ans_wb<4>  (
    .PAD(ans_wb[4])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y135" ))
  ans_wb_4_OBUF (
    .I(\NlwBufferSignal_ans_wb_4_OBUF/I ),
    .O(ans_wb[4])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y104" ))
  reset_8 (
    .PAD(reset)
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y104" ))
  \ProtoComp26.INTERMDISABLE_GND  (
    .O(\ProtoComp26.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y104" ))
  reset_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\ProtoComp26.INTERMDISABLE_GND.0 ),
    .O(reset_IBUF_3189),
    .I(reset),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y139" ))
  \ans_wb<2>  (
    .PAD(ans_wb[2])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y139" ))
  ans_wb_2_OBUF (
    .I(\NlwBufferSignal_ans_wb_2_OBUF/I ),
    .O(ans_wb[2])
  );
  X_RAMB18E1 #(
    .DOA_REG ( 0 ),
    .DOB_REG ( 0 ),
    .READ_WIDTH_A ( 18 ),
    .READ_WIDTH_B ( 18 ),
    .WRITE_WIDTH_A ( 18 ),
    .WRITE_WIDTH_B ( 18 ),
    .RAM_MODE ( "TDP" ),
    .RDADDR_COLLISION_HWCONFIG ( "DELAYED_WRITE" ),
    .RSTREG_PRIORITY_A ( "REGCE" ),
    .RSTREG_PRIORITY_B ( "REGCE" ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_00 ( 256'h0001010200010100000100020001000000000200000001020000010000000002 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000200020002000000010200 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_A ( 18'h00000 ),
    .INIT_B ( 18'h00000 ),
    .SRVAL_A ( 18'h00000 ),
    .SRVAL_B ( 18'h00000 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_DEVICE ( "7SERIES" ),
    .INIT_FILE ( "NONE" ),
    .LOC ( "RAMB18_X1Y54" ))
  \ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram  (
    .CLKARDCLK
(\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/CLKARDCLK )
,
    .CLKBWRCLK
(\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/CLKBWRCLK )
,
    .ENARDEN
(\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ENARDEN )
,
    .ENBWREN
(\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ENBWREN )
,
    .REGCEAREGCE(1'b0),
    .REGCEB(1'b0),
    .RSTRAMARSTRAM(1'b0),
    .RSTRAMB(1'b0),
    .RSTREGARSTREG(1'b0),
    .RSTREGB(1'b0),
    .ADDRARDADDR({1'b0, 
\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<12> 
, 
\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<11> 
, 
\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<10> 
, 
\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<9> 
, 
\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<8> 
, 
\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<7> 
, 
\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<6> 
, 
\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<5> 
, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}),
    .ADDRBWRADDR({1'b0, 
\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<12> 
, 
\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<11> 
, 
\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<10> 
, 
\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<9> 
, 
\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<8> 
, 
\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<7> 
, 
\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<6> 
, 
\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<5> 
, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0}),
    .DIADI({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/DIADI<9> 
, 
\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/DIADI<8> 
, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/DIADI<1> 
, 
\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/DIADI<0> 
}),
    .DIBDI({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/DIBDI<9> 
, 
\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/DIBDI<8> 
, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/DIBDI<1> 
, 
\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/DIBDI<0> 
}),
    .DIPADIP({1'b0, 1'b0}),
    .DIPBDIP({1'b0, 1'b0}),
    .DOADO({
\NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO[15]_UNCONNECTED 
, 
\NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO[14]_UNCONNECTED 
, 
\NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO[13]_UNCONNECTED 
, 
\NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO[12]_UNCONNECTED 
, 
\NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO[11]_UNCONNECTED 
, 
\NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO[10]_UNCONNECTED 
, \ins4/DM_out [3], \ins4/DM_out [2], 
\NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO[7]_UNCONNECTED 
, 
\NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO[6]_UNCONNECTED 
, 
\NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO[5]_UNCONNECTED 
, 
\NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO[4]_UNCONNECTED 
, 
\NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO[3]_UNCONNECTED 
, 
\NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO[2]_UNCONNECTED 
, \ins4/DM_out [1], \ins4/DM_out [0]}),
    .DOBDO({
\NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO[15]_UNCONNECTED 
, 
\NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO[14]_UNCONNECTED 
, 
\NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO[13]_UNCONNECTED 
, 
\NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO[12]_UNCONNECTED 
, 
\NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO[11]_UNCONNECTED 
, 
\NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO[10]_UNCONNECTED 
, \ins4/DM_out [7], \ins4/DM_out [6], 
\NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO[7]_UNCONNECTED 
, 
\NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO[6]_UNCONNECTED 
, 
\NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO[5]_UNCONNECTED 
, 
\NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO[4]_UNCONNECTED 
, 
\NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO[3]_UNCONNECTED 
, 
\NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO[2]_UNCONNECTED 
, \ins4/DM_out [5], \ins4/DM_out [4]}),
    .DOPADOP({
\NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOPADOP[1]_UNCONNECTED 
, 
\NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOPADOP[0]_UNCONNECTED 
}),
    .DOPBDOP({
\NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOPBDOP[1]_UNCONNECTED 
, 
\NLW_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOPBDOP[0]_UNCONNECTED 
}),
    .WEA({
\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/WEA<1> 
, 
\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/WEA<0> 
}),
    .WEBWE({1'b0, 1'b0, 
\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/WEBWE<1> 
, 
\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/WEBWE<0> 
})
  );
  X_RAMB18E1 #(
    .DOA_REG ( 0 ),
    .DOB_REG ( 0 ),
    .READ_WIDTH_A ( 18 ),
    .READ_WIDTH_B ( 18 ),
    .WRITE_WIDTH_A ( 18 ),
    .WRITE_WIDTH_B ( 18 ),
    .RAM_MODE ( "TDP" ),
    .RDADDR_COLLISION_HWCONFIG ( "DELAYED_WRITE" ),
    .RSTREG_PRIORITY_A ( "REGCE" ),
    .RSTREG_PRIORITY_B ( "REGCE" ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_00 ( 256'h3E00000512081002000C181014100008140C00001408000C1404001000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000220000002A0020302E001800 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_A ( 18'h00000 ),
    .INIT_B ( 18'h00000 ),
    .SRVAL_A ( 18'h00000 ),
    .SRVAL_B ( 18'h00000 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_DEVICE ( "7SERIES" ),
    .INIT_FILE ( "NONE" ),
    .LOC ( "RAMB18_X1Y49" ))
  \ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram  (
    .CLKARDCLK
(\NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/CLKARDCLK )
,
    .CLKBWRCLK
(\NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/CLKBWRCLK )
,
    .ENARDEN(1'b1),
    .ENBWREN(1'b1),
    .REGCEAREGCE(1'b0),
    .REGCEB(1'b0),
    .RSTRAMARSTRAM(1'b0),
    .RSTRAMB(1'b0),
    .RSTREGARSTREG(1'b0),
    .RSTREGB(1'b0),
    .ADDRARDADDR({1'b0, 
\NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<12> 
, 
\NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<11> 
, 
\NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<10> 
, 
\NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<9> 
, 
\NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<8> 
, 
\NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<7> 
, 
\NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<6> 
, 
\NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<5> 
, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}),
    .ADDRBWRADDR({1'b0, 
\NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<12> 
, 
\NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<11> 
, 
\NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<10> 
, 
\NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<9> 
, 
\NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<8> 
, 
\NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<7> 
, 
\NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<6> 
, 
\NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<5> 
, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0}),
    .DIADI({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}),
    .DIBDI({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}),
    .DIPADIP({1'b0, 1'b0}),
    .DIPBDIP({1'b0, 1'b0}),
    .DOADO({
\NLW_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO[15]_UNCONNECTED 
, 
\NLW_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO[14]_UNCONNECTED 
, \ins2/PM_out [11], \ins2/PM_out [10], \ins2/PM_out [9], \ins2/PM_out [8], \ins2/PM_out [7], \ins2/PM_out [6], 
\NLW_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO[7]_UNCONNECTED 
, 
\NLW_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO[6]_UNCONNECTED 
, \ins2/PM_out [5], \ins2/PM_out [4], \ins2/PM_out [3], \ins2/PM_out [2], \ins2/PM_out [1], \ins2/PM_out [0]}),
    .DOBDO({
\NLW_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO[15]_UNCONNECTED 
, 
\NLW_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO[14]_UNCONNECTED 
, \ins2/PM_out [23], \ins2/PM_out [22], \ins2/PM_out [21], \ins2/PM_out [20], \ins2/PM_out [19], \ins2/PM_out [18], 
\NLW_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO[7]_UNCONNECTED 
, 
\NLW_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO[6]_UNCONNECTED 
, \ins2/PM_out [17], \ins2/PM_out [16], \ins2/PM_out [15], \ins2/PM_out [14], \ins2/PM_out [13], \ins2/PM_out [12]}),
    .DOPADOP({
\NLW_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOPADOP[1]_UNCONNECTED 
, 
\NLW_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOPADOP[0]_UNCONNECTED 
}),
    .DOPBDOP({
\NLW_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOPBDOP[1]_UNCONNECTED 
, 
\NLW_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOPBDOP[0]_UNCONNECTED 
}),
    .WEA({1'b0, 1'b0}),
    .WEBWE({1'b0, 1'b0, 1'b0, 1'b0})
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y132" ))
  \ans_wb<6>  (
    .PAD(ans_wb[6])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y132" ))
  ans_wb_6_OBUF (
    .I(\NlwBufferSignal_ans_wb_6_OBUF/I ),
    .O(ans_wb[6])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y138" ))
  \ans_wb<0>  (
    .PAD(ans_wb[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y138" ))
  ans_wb_0_OBUF (
    .I(\NlwBufferSignal_ans_wb_0_OBUF/I ),
    .O(ans_wb[0])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y138" ))
  \ans_wb<3>  (
    .PAD(ans_wb[3])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y138" ))
  ans_wb_3_OBUF (
    .I(\NlwBufferSignal_ans_wb_3_OBUF/I ),
    .O(ans_wb[3])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y135" ))
  \A<0>  (
    .PAD(A[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y135" ))
  A_0_OBUF (
    .I(\NlwBufferSignal_A_0_OBUF/I ),
    .O(A[0])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y137" ))
  \ans_wb<7>  (
    .PAD(ans_wb[7])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y137" ))
  ans_wb_7_OBUF (
    .I(\NlwBufferSignal_ans_wb_7_OBUF/I ),
    .O(ans_wb[7])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y134" ))
  \ans_wb<5>  (
    .PAD(ans_wb[5])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y134" ))
  ans_wb_5_OBUF (
    .I(\NlwBufferSignal_ans_wb_5_OBUF/I ),
    .O(ans_wb[5])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y105" ))
  \mux_sel_A<0>  (
    .PAD(mux_sel_A[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y105" ))
  mux_sel_A_0_OBUF (
    .I(\NlwBufferSignal_mux_sel_A_0_OBUF/I ),
    .O(mux_sel_A[0])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y119" ))
  \ins<1>  (
    .PAD(ins[1])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y119" ))
  ins_1_OBUF (
    .I(\NlwBufferSignal_ins_1_OBUF/I ),
    .O(ins[1])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y117" ))
  \A<5>  (
    .PAD(A[5])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y117" ))
  A_5_OBUF (
    .I(\NlwBufferSignal_A_5_OBUF/I ),
    .O(A[5])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y120" ))
  \A<3>  (
    .PAD(A[3])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y120" ))
  A_3_OBUF (
    .I(\NlwBufferSignal_A_3_OBUF/I ),
    .O(A[3])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y123" ))
  \A<2>  (
    .PAD(A[2])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y123" ))
  A_2_OBUF (
    .I(\NlwBufferSignal_A_2_OBUF/I ),
    .O(A[2])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y106" ))
  \mux_sel_A<1>  (
    .PAD(mux_sel_A[1])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y106" ))
  mux_sel_A_1_OBUF (
    .I(\NlwBufferSignal_mux_sel_A_1_OBUF/I ),
    .O(mux_sel_A[1])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y126" ))
  \ins<0>  (
    .PAD(ins[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y126" ))
  ins_0_OBUF (
    .I(\NlwBufferSignal_ins_0_OBUF/I ),
    .O(ins[0])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y121" ))
  \A<1>  (
    .PAD(A[1])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y121" ))
  A_1_OBUF (
    .I(\NlwBufferSignal_A_1_OBUF/I ),
    .O(A[1])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y122" ))
  \A<4>  (
    .PAD(A[4])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y122" ))
  A_4_OBUF (
    .I(\NlwBufferSignal_A_4_OBUF/I ),
    .O(A[4])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y119" ))
  \A<6>  (
    .PAD(A[6])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y119" ))
  A_6_OBUF (
    .I(\NlwBufferSignal_A_6_OBUF/I ),
    .O(A[6])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y118" ))
  \A<7>  (
    .PAD(A[7])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y118" ))
  A_7_OBUF (
    .I(\NlwBufferSignal_A_7_OBUF/I ),
    .O(A[7])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y111" ))
  \ins<5>  (
    .PAD(ins[5])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y111" ))
  ins_5_OBUF (
    .I(\NlwBufferSignal_ins_5_OBUF/I ),
    .O(ins[5])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y125" ))
  \ins<4>  (
    .PAD(ins[4])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y125" ))
  ins_4_OBUF (
    .I(\NlwBufferSignal_ins_4_OBUF/I ),
    .O(ins[4])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y128" ))
  \ins<12>  (
    .PAD(ins[12])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y128" ))
  ins_12_OBUF (
    .I(\NlwBufferSignal_ins_12_OBUF/I ),
    .O(ins[12])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y115" ))
  \ins<3>  (
    .PAD(ins[3])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y115" ))
  ins_3_OBUF (
    .I(\NlwBufferSignal_ins_3_OBUF/I ),
    .O(ins[3])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y112" ))
  \ins<7>  (
    .PAD(ins[7])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y112" ))
  ins_7_OBUF (
    .I(\NlwBufferSignal_ins_7_OBUF/I ),
    .O(ins[7])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y126" ))
  \ins<11>  (
    .PAD(ins[11])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y126" ))
  ins_11_OBUF (
    .I(\NlwBufferSignal_ins_11_OBUF/I ),
    .O(ins[11])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y127" ))
  \ins<14>  (
    .PAD(ins[14])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y127" ))
  ins_14_OBUF (
    .I(\NlwBufferSignal_ins_14_OBUF/I ),
    .O(ins[14])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y125" ))
  \ins<9>  (
    .PAD(ins[9])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y125" ))
  ins_9_OBUF (
    .I(\NlwBufferSignal_ins_9_OBUF/I ),
    .O(ins[9])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y124" ))
  \ins<6>  (
    .PAD(ins[6])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y124" ))
  ins_6_OBUF (
    .I(\NlwBufferSignal_ins_6_OBUF/I ),
    .O(ins[6])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y133" ))
  \ins<8>  (
    .PAD(ins[8])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y133" ))
  ins_8_OBUF (
    .I(\NlwBufferSignal_ins_8_OBUF/I ),
    .O(ins[8])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y124" ))
  \ins<2>  (
    .PAD(ins[2])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y124" ))
  ins_2_OBUF (
    .I(\NlwBufferSignal_ins_2_OBUF/I ),
    .O(ins[2])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y120" ))
  \ins<13>  (
    .PAD(ins[13])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y120" ))
  ins_13_OBUF (
    .I(\NlwBufferSignal_ins_13_OBUF/I ),
    .O(ins[13])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y130" ))
  \ins<15>  (
    .PAD(ins[15])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y130" ))
  ins_15_OBUF (
    .I(\NlwBufferSignal_ins_15_OBUF/I ),
    .O(ins[15])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y140" ))
  \ans_dm<2>  (
    .PAD(ans_dm[2])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y140" ))
  ans_dm_2_OBUF (
    .I(\NlwBufferSignal_ans_dm_2_OBUF/I ),
    .O(ans_dm[2])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y114" ))
  \ins<19>  (
    .PAD(ins[19])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y114" ))
  ins_19_OBUF (
    .I(\NlwBufferSignal_ins_19_OBUF/I ),
    .O(ins[19])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y122" ))
  \ins<18>  (
    .PAD(ins[18])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y122" ))
  ins_18_OBUF (
    .I(\NlwBufferSignal_ins_18_OBUF/I ),
    .O(ins[18])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y109" ))
  \ins<22>  (
    .PAD(ins[22])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y109" ))
  ins_22_OBUF (
    .I(\NlwBufferSignal_ins_22_OBUF/I ),
    .O(ins[22])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y107" ))
  imm_sel_134 (
    .PAD(imm_sel)
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y107" ))
  imm_sel_OBUF (
    .I(\NlwBufferSignal_imm_sel_OBUF/I ),
    .O(imm_sel)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y113" ))
  \ins<20>  (
    .PAD(ins[20])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y113" ))
  ins_20_OBUF (
    .I(\NlwBufferSignal_ins_20_OBUF/I ),
    .O(ins[20])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y108" ))
  \ins<21>  (
    .PAD(ins[21])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y108" ))
  ins_21_OBUF (
    .I(\NlwBufferSignal_ins_21_OBUF/I ),
    .O(ins[21])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y123" ))
  \ins<10>  (
    .PAD(ins[10])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y123" ))
  ins_10_OBUF (
    .I(\NlwBufferSignal_ins_10_OBUF/I ),
    .O(ins[10])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y117" ))
  \ins<16>  (
    .PAD(ins[16])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y117" ))
  ins_16_OBUF (
    .I(\NlwBufferSignal_ins_16_OBUF/I ),
    .O(ins[16])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y110" ))
  \ins<23>  (
    .PAD(ins[23])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y110" ))
  ins_23_OBUF (
    .I(\NlwBufferSignal_ins_23_OBUF/I ),
    .O(ins[23])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y121" ))
  \ins<17>  (
    .PAD(ins[17])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y121" ))
  ins_17_OBUF (
    .I(\NlwBufferSignal_ins_17_OBUF/I ),
    .O(ins[17])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y107" ))
  \Current_Address<1>  (
    .PAD(Current_Address[1])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y107" ))
  Current_Address_1_OBUF (
    .I(\NlwBufferSignal_Current_Address_1_OBUF/I ),
    .O(Current_Address[1])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y136" ))
  \ans_dm<1>  (
    .PAD(ans_dm[1])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y136" ))
  ans_dm_1_OBUF (
    .I(\NlwBufferSignal_ans_dm_1_OBUF/I ),
    .O(ans_dm[1])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y131" ))
  \ans_dm<7>  (
    .PAD(ans_dm[7])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y131" ))
  ans_dm_7_OBUF (
    .I(\NlwBufferSignal_ans_dm_7_OBUF/I ),
    .O(ans_dm[7])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y102" ))
  \Current_Address<4>  (
    .PAD(Current_Address[4])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y102" ))
  Current_Address_4_OBUF (
    .I(\NlwBufferSignal_Current_Address_4_OBUF/I ),
    .O(Current_Address[4])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y101" ))
  \Current_Address<7>  (
    .PAD(Current_Address[7])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y101" ))
  Current_Address_7_OBUF (
    .I(\NlwBufferSignal_Current_Address_7_OBUF/I ),
    .O(Current_Address[7])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y132" ))
  \ans_dm<6>  (
    .PAD(ans_dm[6])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y132" ))
  ans_dm_6_OBUF (
    .I(\NlwBufferSignal_ans_dm_6_OBUF/I ),
    .O(ans_dm[6])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y147" ))
  \B<2>  (
    .PAD(B[2])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y147" ))
  B_2_OBUF (
    .I(\NlwBufferSignal_B_2_OBUF/I ),
    .O(B[2])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y149" ))
  \B<0>  (
    .PAD(B[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y149" ))
  B_0_OBUF (
    .I(\NlwBufferSignal_B_0_OBUF/I ),
    .O(B[0])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y129" ))
  \ans_dm<3>  (
    .PAD(ans_dm[3])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y129" ))
  ans_dm_3_OBUF (
    .I(\NlwBufferSignal_ans_dm_3_OBUF/I ),
    .O(ans_dm[3])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y136" ))
  \ans_dm<0>  (
    .PAD(ans_dm[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y136" ))
  ans_dm_0_OBUF (
    .I(\NlwBufferSignal_ans_dm_0_OBUF/I ),
    .O(ans_dm[0])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y103" ))
  \Current_Address<5>  (
    .PAD(Current_Address[5])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y103" ))
  Current_Address_5_OBUF (
    .I(\NlwBufferSignal_Current_Address_5_OBUF/I ),
    .O(Current_Address[5])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y145" ))
  \B<4>  (
    .PAD(B[4])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y145" ))
  B_4_OBUF (
    .I(\NlwBufferSignal_B_4_OBUF/I ),
    .O(B[4])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y104" ))
  \Current_Address<6>  (
    .PAD(Current_Address[6])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y104" ))
  Current_Address_6_OBUF (
    .I(\NlwBufferSignal_Current_Address_6_OBUF/I ),
    .O(Current_Address[6])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y105" ))
  \Current_Address<3>  (
    .PAD(Current_Address[3])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y105" ))
  Current_Address_3_OBUF (
    .I(\NlwBufferSignal_Current_Address_3_OBUF/I ),
    .O(Current_Address[3])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y106" ))
  \Current_Address<2>  (
    .PAD(Current_Address[2])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y106" ))
  Current_Address_2_OBUF (
    .I(\NlwBufferSignal_Current_Address_2_OBUF/I ),
    .O(Current_Address[2])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y134" ))
  \ans_dm<5>  (
    .PAD(ans_dm[5])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y134" ))
  ans_dm_5_OBUF (
    .I(\NlwBufferSignal_ans_dm_5_OBUF/I ),
    .O(ans_dm[5])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y146" ))
  \B<3>  (
    .PAD(B[3])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y146" ))
  B_3_OBUF (
    .I(\NlwBufferSignal_B_3_OBUF/I ),
    .O(B[3])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y108" ))
  \Current_Address<0>  (
    .PAD(Current_Address[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y108" ))
  Current_Address_0_OBUF (
    .I(\NlwBufferSignal_Current_Address_0_OBUF/I ),
    .O(Current_Address[0])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y144" ))
  \B<5>  (
    .PAD(B[5])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y144" ))
  B_5_OBUF (
    .I(\NlwBufferSignal_B_5_OBUF/I ),
    .O(B[5])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y133" ))
  \ans_dm<4>  (
    .PAD(ans_dm[4])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y133" ))
  ans_dm_4_OBUF (
    .I(\NlwBufferSignal_ans_dm_4_OBUF/I ),
    .O(ans_dm[4])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y148" ))
  \B<1>  (
    .PAD(B[1])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y148" ))
  B_1_OBUF (
    .I(\NlwBufferSignal_B_1_OBUF/I ),
    .O(B[1])
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y128" ))
  clk_213 (
    .PAD(clk)
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y128" ))
  \ProtoComp26.INTERMDISABLE_GND.1  (
    .O(\clk/ProtoComp26.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y128" ))
  \clk_BUFGP/IBUFG  (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\clk/ProtoComp26.INTERMDISABLE_GND.0 ),
    .O(\clk_BUFGP/IBUFG_3418 ),
    .I(clk),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y143" ))
  \B<6>  (
    .PAD(B[6])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y143" ))
  B_6_OBUF (
    .I(\NlwBufferSignal_B_6_OBUF/I ),
    .O(B[6])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y130" ))
  \B<7>  (
    .PAD(B[7])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y130" ))
  B_7_OBUF (
    .I(\NlwBufferSignal_B_7_OBUF/I ),
    .O(B[7])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y115" ))
  \data_out<1>  (
    .PAD(data_out[1])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y115" ))
  data_out_1_OBUF (
    .I(\NlwBufferSignal_data_out_1_OBUF/I ),
    .O(data_out[1])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y116" ))
  \data_out<0>  (
    .PAD(data_out[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y116" ))
  data_out_0_OBUF (
    .I(\NlwBufferSignal_data_out_0_OBUF/I ),
    .O(data_out[0])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y111" ))
  \data_out<5>  (
    .PAD(data_out[5])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y111" ))
  data_out_5_OBUF (
    .I(\NlwBufferSignal_data_out_5_OBUF/I ),
    .O(data_out[5])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y140" ))
  \ans_ex<3>  (
    .PAD(ans_ex[3])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y140" ))
  ans_ex_3_OBUF (
    .I(\NlwBufferSignal_ans_ex_3_OBUF/I ),
    .O(ans_ex[3])
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y100" ))
  interrupt_241 (
    .PAD(interrupt)
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y100" ))
  \ProtoComp26.INTERMDISABLE_GND.2  (
    .O(\interrupt/ProtoComp26.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y100" ))
  interrupt_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\interrupt/ProtoComp26.INTERMDISABLE_GND.0 ),
    .O(interrupt_IBUF_3231),
    .I(interrupt),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y142" ))
  \data_in<7>  (
    .PAD(data_in[7])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y142" ))
  \ProtoComp26.INTERMDISABLE_GND.3  (
    .O(\data_in<7>/ProtoComp26.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y142" ))
  data_in_7_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\data_in<7>/ProtoComp26.INTERMDISABLE_GND.0 ),
    .O(data_in_7_IBUF_3419),
    .I(data_in[7]),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y112" ))
  \data_out<4>  (
    .PAD(data_out[4])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y112" ))
  data_out_4_OBUF (
    .I(\NlwBufferSignal_data_out_4_OBUF/I ),
    .O(data_out[4])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y114" ))
  \data_out<2>  (
    .PAD(data_out[2])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y114" ))
  data_out_2_OBUF (
    .I(\NlwBufferSignal_data_out_2_OBUF/I ),
    .O(data_out[2])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y141" ))
  \ans_ex<2>  (
    .PAD(ans_ex[2])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y141" ))
  ans_ex_2_OBUF (
    .I(\NlwBufferSignal_ans_ex_2_OBUF/I ),
    .O(ans_ex[2])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y142" ))
  \ans_ex<1>  (
    .PAD(ans_ex[1])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y142" ))
  ans_ex_1_OBUF (
    .I(\NlwBufferSignal_ans_ex_1_OBUF/I ),
    .O(ans_ex[1])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y149" ))
  \data_in<0>  (
    .PAD(data_in[0])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y149" ))
  \ProtoComp26.INTERMDISABLE_GND.6  (
    .O(\data_in<0>/ProtoComp26.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y149" ))
  data_in_0_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\data_in<0>/ProtoComp26.INTERMDISABLE_GND.0 ),
    .O(data_in_0_IBUF_3422),
    .I(data_in[0]),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y137" ))
  \ans_ex<4>  (
    .PAD(ans_ex[4])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y137" ))
  ans_ex_4_OBUF (
    .I(\NlwBufferSignal_ans_ex_4_OBUF/I ),
    .O(ans_ex[4])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y113" ))
  \data_out<3>  (
    .PAD(data_out[3])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y113" ))
  data_out_3_OBUF (
    .I(\NlwBufferSignal_data_out_3_OBUF/I ),
    .O(data_out[3])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y143" ))
  \data_in<6>  (
    .PAD(data_in[6])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y143" ))
  \ProtoComp26.INTERMDISABLE_GND.5  (
    .O(\data_in<6>/ProtoComp26.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y143" ))
  data_in_6_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\data_in<6>/ProtoComp26.INTERMDISABLE_GND.0 ),
    .O(data_in_6_IBUF_3421),
    .I(data_in[6]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y144" ))
  \data_in<5>  (
    .PAD(data_in[5])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y144" ))
  \ProtoComp26.INTERMDISABLE_GND.4  (
    .O(\data_in<5>/ProtoComp26.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y144" ))
  data_in_5_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\data_in<5>/ProtoComp26.INTERMDISABLE_GND.0 ),
    .O(data_in_5_IBUF_3420),
    .I(data_in[5]),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y109" ))
  \data_out<7>  (
    .PAD(data_out[7])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y109" ))
  data_out_7_OBUF (
    .I(\NlwBufferSignal_data_out_7_OBUF/I ),
    .O(data_out[7])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y116" ))
  \mux_sel_B<1>  (
    .PAD(mux_sel_B[1])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y116" ))
  mux_sel_B_1_OBUF (
    .I(\NlwBufferSignal_mux_sel_B_1_OBUF/I ),
    .O(mux_sel_B[1])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y110" ))
  \data_out<6>  (
    .PAD(data_out[6])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y110" ))
  data_out_6_OBUF (
    .I(\NlwBufferSignal_data_out_6_OBUF/I ),
    .O(data_out[6])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y118" ))
  \mux_sel_B<0>  (
    .PAD(mux_sel_B[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y118" ))
  mux_sel_B_0_OBUF (
    .I(\NlwBufferSignal_mux_sel_B_0_OBUF/I ),
    .O(mux_sel_B[0])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y145" ))
  \data_in<4>  (
    .PAD(data_in[4])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y145" ))
  \ProtoComp26.INTERMDISABLE_GND.8  (
    .O(\data_in<4>/ProtoComp26.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y145" ))
  data_in_4_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\data_in<4>/ProtoComp26.INTERMDISABLE_GND.0 ),
    .O(data_in_4_IBUF_3424),
    .I(data_in[4]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y146" ))
  \data_in<3>  (
    .PAD(data_in[3])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y146" ))
  \ProtoComp26.INTERMDISABLE_GND.7  (
    .O(\data_in<3>/ProtoComp26.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y146" ))
  data_in_3_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\data_in<3>/ProtoComp26.INTERMDISABLE_GND.0 ),
    .O(data_in_3_IBUF_3423),
    .I(data_in[3]),
    .TPWRGT(1'b1)
  );
  X_SFF #(
    .LOC ( "SLICE_X40Y127" ),
    .INIT ( 1'b0 ))
  \ins8/Reg3_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins8/Reg3_3/CLK ),
    .I(\NlwBufferSignal_ins8/Reg3_3/IN ),
    .O(\ins8/Reg3 [3]),
    .SRST(\ins8/GND_17_o_GND_17_o_equal_7_o_0_3561 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X40Y127" ),
    .INIT ( 1'b0 ))
  \ins8/Reg3_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins8/Reg3_2/CLK ),
    .I(ins_16_OBUF_3404),
    .O(\ins8/Reg3 [2]),
    .SRST(\ins8/GND_17_o_GND_17_o_equal_7_o_0_3561 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X40Y127" ),
    .INIT ( 64'hE0E04040E0E04040 ))
  \ins2/Mmux_ins81  (
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR2(reset_IBUF_3189),
    .ADR0(\ins5/Q [1]),
    .ADR1(\ins2/PM_out [16]),
    .ADR4(\ins2/ins_prv [16]),
    .O(ins_16_OBUF_3404)
  );
  X_SFF #(
    .LOC ( "SLICE_X40Y127" ),
    .INIT ( 1'b0 ))
  \ins8/Reg3_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins8/Reg3_1/CLK ),
    .I(ins_15_OBUF_3405),
    .O(\ins8/Reg3 [1]),
    .SRST(\ins8/GND_17_o_GND_17_o_equal_7_o_0_3561 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X40Y127" ),
    .INIT ( 64'h8A8A80808A8A8080 ))
  \ins2/Mmux_ins71  (
    .ADR3(1'b1),
    .ADR5(1'b1),
    .ADR0(reset_IBUF_3189),
    .ADR2(\ins5/Q [1]),
    .ADR4(\ins2/PM_out [15]),
    .ADR1(\ins2/ins_prv [15]),
    .O(ins_15_OBUF_3405)
  );
  X_SFF #(
    .LOC ( "SLICE_X40Y127" ),
    .INIT ( 1'b0 ))
  \ins8/Reg3_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins8/Reg3_0/CLK ),
    .I(\NlwBufferSignal_ins8/Reg3_0/IN ),
    .O(\ins8/Reg3 [0]),
    .SRST(\ins8/GND_17_o_GND_17_o_equal_7_o_0_3561 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y147" ))
  \data_in<2>  (
    .PAD(data_in[2])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y147" ))
  \ProtoComp26.INTERMDISABLE_GND.10  (
    .O(\data_in<2>/ProtoComp26.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y147" ))
  data_in_2_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\data_in<2>/ProtoComp26.INTERMDISABLE_GND.0 ),
    .O(data_in_2_IBUF_3426),
    .I(data_in[2]),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y127" ))
  \ans_ex<6>  (
    .PAD(ans_ex[6])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y127" ))
  ans_ex_6_OBUF (
    .I(\NlwBufferSignal_ans_ex_6_OBUF/I ),
    .O(ans_ex[6])
  );
  X_SFF #(
    .LOC ( "SLICE_X41Y123" ),
    .INIT ( 1'b0 ))
  \ins8/Reg3_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins8/Reg3_4/CLK ),
    .I(\NlwBufferSignal_ins8/Reg3_4/IN ),
    .O(\ins8/Reg3 [4]),
    .SRST(\ins8/GND_17_o_GND_17_o_equal_7_o_0_3561 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X41Y127" ),
    .INIT ( 1'b0 ))
  \ins2/ins_prv_15  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/ins_prv_15/CLK ),
    .I(\NlwBufferSignal_ins2/ins_prv_15/IN ),
    .O(\ins2/ins_prv [15]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X41Y127" ),
    .INIT ( 1'b0 ))
  \ins2/ins_prv_14  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/ins_prv_14/CLK ),
    .I(ins_14_OBUF_3398),
    .O(\ins2/ins_prv [14]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X41Y127" ),
    .INIT ( 64'hDD880000DD880000 ))
  \ins2/Mmux_ins61  (
    .ADR5(1'b1),
    .ADR2(1'b1),
    .ADR4(reset_IBUF_3189),
    .ADR1(\ins2/ins_prv [14]),
    .ADR0(\ins5/Q [1]),
    .ADR3(\ins2/PM_out [14]),
    .O(ins_14_OBUF_3398)
  );
  X_SFF #(
    .LOC ( "SLICE_X41Y127" ),
    .INIT ( 1'b0 ))
  \ins2/ins_prv_13  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/ins_prv_13/CLK ),
    .I(\NlwBufferSignal_ins2/ins_prv_13/IN ),
    .O(\ins2/ins_prv [13]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X41Y127" ),
    .INIT ( 1'b0 ))
  \ins2/ins_prv_12  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/ins_prv_12/CLK ),
    .I(\NlwBufferSignal_ins2/ins_prv_12/IN ),
    .O(\ins2/ins_prv [12]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_BUF   \ins8/Reg5<4>/ins8/Reg5<4>_AMUX_Delay  (
    .I(\ins8/Reg5 [4]),
    .O(\ins8/Reg5<4>_0 )
  );
  X_SFF #(
    .LOC ( "SLICE_X45Y133" ),
    .INIT ( 1'b0 ))
  \ins8/Reg5_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins8/Reg5_4/CLK ),
    .I(\NlwBufferSignal_ins8/Reg5_4/IN ),
    .O(\ins8/Reg5 [4]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y148" ))
  \data_in<1>  (
    .PAD(data_in[1])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y148" ))
  \ProtoComp26.INTERMDISABLE_GND.9  (
    .O(\data_in<1>/ProtoComp26.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y148" ))
  data_in_1_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\data_in<1>/ProtoComp26.INTERMDISABLE_GND.0 ),
    .O(data_in_1_IBUF_3425),
    .I(data_in[1]),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y129" ))
  \ans_ex<7>  (
    .PAD(ans_ex[7])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y129" ))
  ans_ex_7_OBUF (
    .I(\NlwBufferSignal_ans_ex_7_OBUF/I ),
    .O(ans_ex[7])
  );
  X_CKBUF #(
    .LOC ( "BUFGCTRL_X0Y31" ))
  \clk_BUFGP/BUFG  (
    .I(\NlwBufferSignal_clk_BUFGP/BUFG/IN ),
    .O(clk_BUFGP)
  );
  X_BUF   \mux_sel_A_1_OBUF/mux_sel_A_1_OBUF_AMUX_Delay  (
    .I(mux_sel_A_0_OBUF_425),
    .O(mux_sel_A_0_OBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X0Y105" ),
    .INIT ( 64'h0000FFCC0000FFCC ))
  \ins8/Mmux_mux_sel_A21  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR4(\ins8/C1 ),
    .ADR3(\ins8/Reg6[4]_Reg2[4]_equal_59_o ),
    .ADR1(\ins8/Reg7[4]_Reg2[4]_equal_61_o ),
    .ADR5(1'b1),
    .O(mux_sel_A_1_OBUF_3225)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X0Y105" ),
    .INIT ( 32'hFFFF00CC ))
  \ins8/Mmux_mux_sel_A11  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR4(\ins8/C1 ),
    .ADR3(\ins8/Reg6[4]_Reg2[4]_equal_59_o ),
    .ADR1(\ins8/Reg7[4]_Reg2[4]_equal_61_o ),
    .O(mux_sel_A_0_OBUF_425)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X38Y137" ),
    .INIT ( 64'h0000000000008000 ))
  \ins1/ALU_Execution/Mmux_ans_tmp245  (
    .ADR5(\ins2/ins_prv [19]),
    .ADR2(data_in_5_IBUF_3420),
    .ADR0(\ins2/ins_prv [21]),
    .ADR3(\ins2/ins_prv [23]),
    .ADR4(\ins2/ins_prv [22]),
    .ADR1(\ins2/ins_prv [20]),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp244_3585 )
  );
  X_SFF #(
    .LOC ( "SLICE_X47Y134" ),
    .INIT ( 1'b0 ))
  \ins8/Reg6_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins8/Reg6_4/CLK ),
    .I(\NlwBufferSignal_ins8/Reg6_4/IN ),
    .O(\ins8/Reg6 [4]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_BUF   \ins3/BR<5>/ins3/BR<5>_DMUX_Delay  (
    .I(\ins3/Mram_RegisterBank11_RAMD_D1_O ),
    .O(\ins3/Mram_RegisterBank11_RAMD_D1_O_0 )
  );
  X_BUF   \ins3/BR<5>/ins3/BR<5>_CMUX_Delay  (
    .I(\ins3/BR [4]),
    .O(\ins3/BR<4>_0 )
  );
  X_BUF   \ins3/BR<5>/ins3/BR<5>_BMUX_Delay  (
    .I(\ins3/BR [2]),
    .O(\ins3/BR<2>_0 )
  );
  X_BUF   \ins3/BR<5>/ins3/BR<5>_AMUX_Delay  (
    .I(\ins3/BR [0]),
    .O(\ins3/BR<0>_0 )
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X46Y134" ),
    .INIT ( 32'h00000000 ))
  \ins3/Mram_RegisterBank11_RAMD_D1  (
    .RADR0(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD_D1/RADR0 ),
    .RADR1(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD_D1/RADR1 ),
    .RADR2(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD_D1/RADR2 ),
    .RADR3(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD_D1/RADR3 ),
    .RADR4(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD_D1/RADR4 ),
    .CLK(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD_D1/CLK ),
    .I(1'b0),
    .O(\NLW_ins3/Mram_RegisterBank11_RAMD_D1_O_UNCONNECTED ),
    .WADR0(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD_D1/WADR0 ),
    .WADR1(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD_D1/WADR1 ),
    .WADR2(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD_D1/WADR2 ),
    .WADR3(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD_D1/WADR3 ),
    .WADR4(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD_D1/WADR4 ),
    .WE(1'b1)
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X46Y134" ),
    .INIT ( 32'h00000000 ))
  \ins3/Mram_RegisterBank11_RAMD  (
    .RADR0(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD/RADR0 ),
    .RADR1(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD/RADR1 ),
    .RADR2(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD/RADR2 ),
    .RADR3(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD/RADR3 ),
    .RADR4(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD/RADR4 ),
    .CLK(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD/CLK ),
    .I(1'b0),
    .O(\ins3/Mram_RegisterBank11_RAMD_D1_O ),
    .WADR0(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD/WADR0 ),
    .WADR1(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD/WADR1 ),
    .WADR2(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD/WADR2 ),
    .WADR3(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD/WADR3 ),
    .WADR4(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD/WADR4 ),
    .WE(1'b1)
  );
  X_FF #(
    .LOC ( "SLICE_X46Y134" ),
    .INIT ( 1'b0 ))
  \ins3/BR_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins3/BR_5/CLK ),
    .I(\ins3/ins[8]_read_port_22_OUT<5> ),
    .O(\ins3/BR [5]),
    .RST(GND),
    .SET(GND)
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X46Y134" ),
    .INIT ( 32'h00000000 ))
  \ins3/Mram_RegisterBank11_RAMC_D1  (
    .RADR0(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC_D1/RADR0 ),
    .RADR1(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC_D1/RADR1 ),
    .RADR2(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC_D1/RADR2 ),
    .RADR3(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC_D1/RADR3 ),
    .RADR4(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC_D1/RADR4 ),
    .CLK(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC_D1/CLK ),
    .I(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC_D1/IN ),
    .O(\ins3/ins[8]_read_port_22_OUT<5> ),
    .WADR0(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC_D1/WADR0 ),
    .WADR1(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC_D1/WADR1 ),
    .WADR2(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC_D1/WADR2 ),
    .WADR3(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC_D1/WADR3 ),
    .WADR4(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC_D1/WADR4 ),
    .WE(1'b1)
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X46Y134" ),
    .INIT ( 32'h00000000 ))
  \ins3/Mram_RegisterBank11_RAMC  (
    .RADR0(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC/RADR0 ),
    .RADR1(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC/RADR1 ),
    .RADR2(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC/RADR2 ),
    .RADR3(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC/RADR3 ),
    .RADR4(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC/RADR4 ),
    .CLK(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC/CLK ),
    .I(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC/IN ),
    .O(\ins3/ins[8]_read_port_22_OUT<4> ),
    .WADR0(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC/WADR0 ),
    .WADR1(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC/WADR1 ),
    .WADR2(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC/WADR2 ),
    .WADR3(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC/WADR3 ),
    .WADR4(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC/WADR4 ),
    .WE(1'b1)
  );
  X_FF #(
    .LOC ( "SLICE_X46Y134" ),
    .INIT ( 1'b0 ))
  \ins3/BR_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins3/BR_4/CLK ),
    .I(\ins3/ins[8]_read_port_22_OUT<4> ),
    .O(\ins3/BR [4]),
    .RST(GND),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X46Y134" ),
    .INIT ( 1'b0 ))
  \ins3/BR_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins3/BR_3/CLK ),
    .I(\ins3/ins[8]_read_port_22_OUT<3> ),
    .O(\ins3/BR [3]),
    .RST(GND),
    .SET(GND)
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X46Y134" ),
    .INIT ( 32'h00000000 ))
  \ins3/Mram_RegisterBank11_RAMB_D1  (
    .RADR0(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB_D1/RADR0 ),
    .RADR1(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB_D1/RADR1 ),
    .RADR2(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB_D1/RADR2 ),
    .RADR3(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB_D1/RADR3 ),
    .RADR4(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB_D1/RADR4 ),
    .CLK(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB_D1/CLK ),
    .I(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB_D1/IN ),
    .O(\ins3/ins[8]_read_port_22_OUT<3> ),
    .WADR0(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB_D1/WADR0 ),
    .WADR1(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB_D1/WADR1 ),
    .WADR2(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB_D1/WADR2 ),
    .WADR3(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB_D1/WADR3 ),
    .WADR4(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB_D1/WADR4 ),
    .WE(1'b1)
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X46Y134" ),
    .INIT ( 32'h00000000 ))
  \ins3/Mram_RegisterBank11_RAMB  (
    .RADR0(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB/RADR0 ),
    .RADR1(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB/RADR1 ),
    .RADR2(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB/RADR2 ),
    .RADR3(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB/RADR3 ),
    .RADR4(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB/RADR4 ),
    .CLK(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB/CLK ),
    .I(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB/IN ),
    .O(\ins3/ins[8]_read_port_22_OUT<2> ),
    .WADR0(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB/WADR0 ),
    .WADR1(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB/WADR1 ),
    .WADR2(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB/WADR2 ),
    .WADR3(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB/WADR3 ),
    .WADR4(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB/WADR4 ),
    .WE(1'b1)
  );
  X_FF #(
    .LOC ( "SLICE_X46Y134" ),
    .INIT ( 1'b0 ))
  \ins3/BR_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins3/BR_2/CLK ),
    .I(\ins3/ins[8]_read_port_22_OUT<2> ),
    .O(\ins3/BR [2]),
    .RST(GND),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X46Y134" ),
    .INIT ( 1'b0 ))
  \ins3/BR_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins3/BR_1/CLK ),
    .I(\ins3/ins[8]_read_port_22_OUT<1> ),
    .O(\ins3/BR [1]),
    .RST(GND),
    .SET(GND)
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X46Y134" ),
    .INIT ( 32'h00000000 ))
  \ins3/Mram_RegisterBank11_RAMA_D1  (
    .RADR0(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA_D1/RADR0 ),
    .RADR1(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA_D1/RADR1 ),
    .RADR2(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA_D1/RADR2 ),
    .RADR3(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA_D1/RADR3 ),
    .RADR4(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA_D1/RADR4 ),
    .CLK(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA_D1/CLK ),
    .I(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA_D1/IN ),
    .O(\ins3/ins[8]_read_port_22_OUT<1> ),
    .WADR0(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA_D1/WADR0 ),
    .WADR1(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA_D1/WADR1 ),
    .WADR2(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA_D1/WADR2 ),
    .WADR3(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA_D1/WADR3 ),
    .WADR4(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA_D1/WADR4 ),
    .WE(1'b1)
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X46Y134" ),
    .INIT ( 32'h00000000 ))
  \ins3/Mram_RegisterBank11_RAMA  (
    .RADR0(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA/RADR0 ),
    .RADR1(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA/RADR1 ),
    .RADR2(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA/RADR2 ),
    .RADR3(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA/RADR3 ),
    .RADR4(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA/RADR4 ),
    .CLK(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA/CLK ),
    .I(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA/IN ),
    .O(\ins3/ins[8]_read_port_22_OUT<0> ),
    .WADR0(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA/WADR0 ),
    .WADR1(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA/WADR1 ),
    .WADR2(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA/WADR2 ),
    .WADR3(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA/WADR3 ),
    .WADR4(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA/WADR4 ),
    .WE(1'b1)
  );
  X_FF #(
    .LOC ( "SLICE_X46Y134" ),
    .INIT ( 1'b0 ))
  \ins3/BR_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins3/BR_0/CLK ),
    .I(\ins3/ins[8]_read_port_22_OUT<0> ),
    .O(\ins3/BR [0]),
    .RST(GND),
    .SET(GND)
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y141" ))
  \ans_ex<0>  (
    .PAD(ans_ex[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y141" ))
  ans_ex_0_OBUF (
    .I(\NlwBufferSignal_ans_ex_0_OBUF/I ),
    .O(ans_ex[0])
  );
  X_BUF   \ins2/ins_prv<19>/ins2/ins_prv<19>_DMUX_Delay  (
    .I(\ins8/DFF2_0 ),
    .O(\ins8/DFF2_0_0 )
  );
  X_SFF #(
    .LOC ( "SLICE_X40Y123" ),
    .INIT ( 1'b0 ))
  \ins2/ins_prv_19  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/ins_prv_19/CLK ),
    .I(ins_19_OBUF_3197),
    .O(\ins2/ins_prv [19]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X40Y123" ),
    .INIT ( 64'hC4C48080C4C48080 ))
  \ins2/Mmux_ins111  (
    .ADR3(1'b1),
    .ADR1(reset_IBUF_3189),
    .ADR0(\ins5/Q [1]),
    .ADR2(\ins2/ins_prv [19]),
    .ADR4(\ins2/PM_out [19]),
    .ADR5(1'b1),
    .O(ins_19_OBUF_3197)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X40Y123" ),
    .INIT ( 32'hF3F3F3F3 ))
  \ins8/DFF211  (
    .ADR0(1'b1),
    .ADR1(reset_IBUF_3189),
    .ADR3(1'b1),
    .ADR2(\ins2/ins_prv [19]),
    .ADR4(1'b1),
    .O(\ins8/DFF2_0 )
  );
  X_SFF #(
    .LOC ( "SLICE_X40Y123" ),
    .INIT ( 1'b0 ))
  \ins2/ins_prv_18  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/ins_prv_18/CLK ),
    .I(\NlwBufferSignal_ins2/ins_prv_18/IN ),
    .O(\ins2/ins_prv [18]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X40Y123" ),
    .INIT ( 1'b0 ))
  \ins2/ins_prv_17  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/ins_prv_17/CLK ),
    .I(ins_17_OBUF_3403),
    .O(\ins2/ins_prv [17]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X40Y123" ),
    .INIT ( 64'h8888AAAA88880000 ))
  \ins2/Mmux_ins91  (
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(reset_IBUF_3189),
    .ADR1(\ins2/ins_prv [17]),
    .ADR4(\ins5/Q [1]),
    .ADR5(\ins2/PM_out [17]),
    .O(ins_17_OBUF_3403)
  );
  X_SFF #(
    .LOC ( "SLICE_X40Y123" ),
    .INIT ( 1'b0 ))
  \ins2/ins_prv_16  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/ins_prv_16/CLK ),
    .I(\NlwBufferSignal_ins2/ins_prv_16/IN ),
    .O(\ins2/ins_prv [16]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y131" ))
  \ans_ex<5>  (
    .PAD(ans_ex[5])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y131" ))
  ans_ex_5_OBUF (
    .I(\NlwBufferSignal_ans_ex_5_OBUF/I ),
    .O(ans_ex[5])
  );
  X_FF #(
    .LOC ( "SLICE_X40Y121" ),
    .INIT ( 1'b0 ))
  \ins5/Q_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins5/Q_3/CLK ),
    .I(\ins5/n0018 [0]),
    .O(\ins5/Q [3]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X40Y121" ),
    .INIT ( 64'h0A00000000000000 ))
  \ins5/Mmux_n001811  (
    .ADR1(1'b1),
    .ADR0(ins_23_OBUF_3271),
    .ADR5(ins_22_OBUF_3269),
    .ADR3(ins_21_OBUF_3268),
    .ADR2(\ins5/Q [2]),
    .ADR4(reset_IBUF_3189),
    .O(\ins5/n0018 [0])
  );
  X_FF #(
    .LOC ( "SLICE_X40Y121" ),
    .INIT ( 1'b0 ))
  \ins5/Q_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins5/Q_2/CLK ),
    .I(\ins5/n0019 [0]),
    .O(\ins5/Q [2]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X40Y121" ),
    .INIT ( 64'hAAF00000AAF00000 ))
  \ins2/Mmux_ins101  (
    .ADR1(1'b1),
    .ADR4(reset_IBUF_3189),
    .ADR3(\ins5/Q [1]),
    .ADR2(\ins2/PM_out [18]),
    .ADR0(\ins2/ins_prv [18]),
    .ADR5(1'b1),
    .O(ins_18_OBUF_3325)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X40Y121" ),
    .INIT ( 32'hCCCC0000 ))
  \ins5/Mmux_n001911  (
    .ADR1(\ins5/Q [3]),
    .ADR4(reset_IBUF_3189),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(1'b1),
    .O(\ins5/n0019 [0])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X38Y133" ),
    .INIT ( 64'h0000000000008000 ))
  \ins1/ALU_Execution/Mmux_ans_tmp324  (
    .ADR5(\ins2/ins_prv [19]),
    .ADR3(data_in_7_IBUF_3419),
    .ADR2(\ins2/ins_prv [21]),
    .ADR0(\ins2/ins_prv [23]),
    .ADR4(\ins2/ins_prv [22]),
    .ADR1(\ins2/ins_prv [20]),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp323_3625 )
  );
  X_SFF #(
    .LOC ( "SLICE_X48Y133" ),
    .INIT ( 1'b0 ))
  \ins8/Reg5_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins8/Reg5_3/CLK ),
    .I(\NlwBufferSignal_ins8/Reg5_3/IN ),
    .O(\ins8/Reg5 [3]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X48Y133" ),
    .INIT ( 1'b0 ))
  \ins8/Reg5_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins8/Reg5_2/CLK ),
    .I(\NlwBufferSignal_ins8/Reg5_2/IN ),
    .O(\ins8/Reg5 [2]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X48Y133" ),
    .INIT ( 1'b0 ))
  \ins8/Reg5_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins8/Reg5_1/CLK ),
    .I(\NlwBufferSignal_ins8/Reg5_1/IN ),
    .O(\ins8/Reg5 [1]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X48Y133" ),
    .INIT ( 1'b0 ))
  \ins8/Reg5_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins8/Reg5_0/CLK ),
    .I(\NlwBufferSignal_ins8/Reg5_0/IN ),
    .O(\ins8/Reg5 [0]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X49Y135" ),
    .INIT ( 1'b0 ))
  \ins8/Reg4_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins8/Reg4_2/CLK ),
    .I(\NlwBufferSignal_ins8/Reg4_2/IN ),
    .O(\ins8/Reg4 [2]),
    .SRST(\ins8/GND_17_o_GND_17_o_equal_7_o_0_3561 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X49Y135" ),
    .INIT ( 1'b0 ))
  \ins8/Reg4_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins8/Reg4_1/CLK ),
    .I(\NlwBufferSignal_ins8/Reg4_1/IN ),
    .O(\ins8/Reg4 [1]),
    .SRST(\ins8/GND_17_o_GND_17_o_equal_7_o_0_3561 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X49Y135" ),
    .INIT ( 1'b0 ))
  \ins8/Reg4_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins8/Reg4_0/CLK ),
    .I(\NlwBufferSignal_ins8/Reg4_0/IN ),
    .O(\ins8/Reg4 [0]),
    .SRST(\ins8/GND_17_o_GND_17_o_equal_7_o_0_3561 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X51Y126" ),
    .INIT ( 1'b0 ))
  \ins8/DFF9  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins8/DFF9/CLK ),
    .I(\NlwBufferSignal_ins8/DFF9/IN ),
    .O(\ins8/DFF9_3315 ),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X51Y126" ),
    .INIT ( 1'b0 ))
  \ins8/DFF8  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins8/DFF8/CLK ),
    .I(\NlwBufferSignal_ins8/DFF8/IN ),
    .O(\ins8/DFF8_3345 ),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X51Y135" ),
    .INIT ( 64'hF0F04400F0F01100 ))
  \ins3/Mmux_n003511_SW2  (
    .ADR5(\ins8/Reg4 [4]),
    .ADR1(\ins8/Reg5<4>_0 ),
    .ADR2(\ins2/ins_prv [1]),
    .ADR4(\ins8/DFF5_3280 ),
    .ADR3(N266),
    .ADR0(N43),
    .O(N191)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X51Y135" ),
    .INIT ( 64'hAA550000AA550000 ))
  \ins8/C45_SW3  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\ins1/ans_ex [0]),
    .ADR3(\ins8/Reg5 [3]),
    .ADR0(\ins8/Reg4 [3]),
    .O(N266)
  );
  X_BUF   \N130/N130_DMUX_Delay  (
    .I(\ins8/Reg7 [4]),
    .O(\ins8/Reg7<4>_0 )
  );
  X_SFF #(
    .LOC ( "SLICE_X51Y136" ),
    .INIT ( 1'b0 ))
  \ins8/Reg7_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins8/Reg7_4/CLK ),
    .I(\NlwBufferSignal_ins8/Reg7_4/IN ),
    .O(\ins8/Reg7 [4]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X51Y136" ),
    .INIT ( 64'h5550DDD805008D88 ))
  \ins3/Mmux_n003471_SW0  (
    .ADR3(\ins3/AR<6>_0 ),
    .ADR1(\ins4/Ex_out [6]),
    .ADR5(\ins6/ans_wb [6]),
    .ADR4(\ins8/DFF9_3315 ),
    .ADR2(\ins8/Reg7[4]_Reg2[4]_equal_61_o ),
    .ADR0(\ins8/Reg6[4]_Reg2[4]_equal_59_o ),
    .O(N130)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X51Y136" ),
    .INIT ( 64'h5404FEAE54045404 ))
  \ins3/Mmux_n003461_SW0  (
    .ADR1(\ins3/AR [5]),
    .ADR5(\ins4/Ex_out [5]),
    .ADR3(\ins6/ans_wb [5]),
    .ADR4(\ins8/DFF9_3315 ),
    .ADR2(\ins8/Reg7[4]_Reg2[4]_equal_61_o ),
    .ADR0(\ins8/Reg6[4]_Reg2[4]_equal_59_o ),
    .O(N133)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X51Y134" ),
    .INIT ( 64'h7BFFDEFFFF7BFFDE ))
  \ins8/Reg6[4]_Reg2[4]_equal_59_o5_SW0  (
    .ADR4(\ins8/Reg2 [0]),
    .ADR1(\ins8/Reg6 [0]),
    .ADR2(\ins8/Reg2 [1]),
    .ADR0(\ins8/Reg6 [1]),
    .ADR5(\ins8/Reg2 [2]),
    .ADR3(\ins8/Reg6 [2]),
    .O(N41)
  );
  X_SFF #(
    .LOC ( "SLICE_X49Y134" ),
    .INIT ( 1'b0 ))
  \ins8/Reg6_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins8/Reg6_3/CLK ),
    .I(\NlwBufferSignal_ins8/Reg6_3/IN ),
    .O(\ins8/Reg6 [3]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X49Y134" ),
    .INIT ( 1'b0 ))
  \ins8/Reg6_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins8/Reg6_2/CLK ),
    .I(\NlwBufferSignal_ins8/Reg6_2/IN ),
    .O(\ins8/Reg6 [2]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X49Y134" ),
    .INIT ( 1'b0 ))
  \ins8/Reg6_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins8/Reg6_1/CLK ),
    .I(\NlwBufferSignal_ins8/Reg6_1/IN ),
    .O(\ins8/Reg6 [1]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X49Y134" ),
    .INIT ( 1'b0 ))
  \ins8/Reg6_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins8/Reg6_0/CLK ),
    .I(\NlwBufferSignal_ins8/Reg6_0/IN ),
    .O(\ins8/Reg6 [0]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X49Y134" ),
    .INIT ( 64'h7FF7BFFBDFFDEFFE ))
  \ins8/Reg6[4]_Reg4[4]_equal_65_o5_SW0  (
    .ADR3(\ins8/Reg4 [2]),
    .ADR5(\ins8/Reg4 [1]),
    .ADR4(\ins8/Reg4 [0]),
    .ADR0(\ins8/Reg6 [0]),
    .ADR2(\ins8/Reg6 [2]),
    .ADR1(\ins8/Reg6 [1]),
    .O(N39)
  );
  X_SFF #(
    .LOC ( "SLICE_X48Y135" ),
    .INIT ( 1'b0 ))
  \ins8/Reg2_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins8/Reg2_4/CLK ),
    .I(\NlwBufferSignal_ins8/Reg2_4/IN ),
    .O(\ins8/Reg2 [4]),
    .SRST(\ins8/GND_17_o_GND_17_o_equal_7_o_0_3561 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X48Y135" ),
    .INIT ( 64'h6FFFF6FFFF6FFFF6 ))
  \ins8/C15_SW0  (
    .ADR4(\ins8/Reg2 [0]),
    .ADR2(\ins8/Reg5 [0]),
    .ADR1(\ins8/Reg2 [1]),
    .ADR0(\ins8/Reg5 [1]),
    .ADR3(\ins8/Reg2 [2]),
    .ADR5(\ins8/Reg5 [2]),
    .O(N45)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X48Y135" ),
    .INIT ( 64'h0082008200410041 ))
  \ins8/C15  (
    .ADR4(1'b1),
    .ADR1(\ins8/Reg2 [4]),
    .ADR5(\ins8/Reg2 [3]),
    .ADR2(\ins8/Reg5<4>_0 ),
    .ADR0(\ins8/Reg5 [3]),
    .ADR3(N45),
    .O(\ins8/C1 )
  );
  X_SFF #(
    .LOC ( "SLICE_X48Y134" ),
    .INIT ( 1'b0 ))
  \ins8/Reg2_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins8/Reg2_3/CLK ),
    .I(\NlwBufferSignal_ins8/Reg2_3/IN ),
    .O(\ins8/Reg2 [3]),
    .SRST(\ins8/GND_17_o_GND_17_o_equal_7_o_0_3561 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X48Y134" ),
    .INIT ( 64'h7FDFBFEFF7FDFBFE ))
  \ins8/C45_SW0  (
    .ADR0(\ins8/Reg4 [0]),
    .ADR4(\ins8/Reg5 [0]),
    .ADR2(\ins8/Reg4 [1]),
    .ADR5(\ins8/Reg5 [1]),
    .ADR3(\ins8/Reg4 [2]),
    .ADR1(\ins8/Reg5 [2]),
    .O(N43)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X48Y134" ),
    .INIT ( 64'h0000909000000909 ))
  \ins8/C45  (
    .ADR3(1'b1),
    .ADR1(\ins8/Reg5<4>_0 ),
    .ADR0(\ins8/Reg4 [4]),
    .ADR5(\ins8/Reg4 [3]),
    .ADR2(\ins8/Reg5 [3]),
    .ADR4(N43),
    .O(\ins8/C4 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X51Y137" ),
    .INIT ( 64'hF0FFF0FFF0CCF0AA ))
  \ins3/Mmux_n003531_SW1  (
    .ADR0(\ins3/BR<2>_0 ),
    .ADR1(\ins6/ans_wb [2]),
    .ADR2(\ins1/ans_ex [2]),
    .ADR4(\ins8/Reg7[4]_Reg4[4]_equal_67_o ),
    .ADR3(\ins8/C4 ),
    .ADR5(\ins8/Reg6[4]_Reg4[4]_equal_65_o ),
    .O(N75)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X51Y137" ),
    .INIT ( 64'h0000000082824141 ))
  \ins8/Reg6[4]_Reg2[4]_equal_59_o5  (
    .ADR3(1'b1),
    .ADR1(\ins8/Reg2 [4]),
    .ADR4(\ins8/Reg2 [3]),
    .ADR2(\ins8/Reg6 [4]),
    .ADR0(\ins8/Reg6 [3]),
    .ADR5(N41),
    .O(\ins8/Reg6[4]_Reg2[4]_equal_59_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X51Y137" ),
    .INIT ( 64'h22FF220022F022F0 ))
  \ins3/Mmux_n003421_SW0  (
    .ADR2(\ins3/AR [1]),
    .ADR0(\ins4/Ex_out<1>_0 ),
    .ADR4(\ins6/ans_wb [1]),
    .ADR1(\ins8/DFF9_3315 ),
    .ADR5(\ins8/Reg7[4]_Reg2[4]_equal_61_o ),
    .ADR3(\ins8/Reg6[4]_Reg2[4]_equal_59_o ),
    .O(N86)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X48Y127" ),
    .INIT ( 64'hAAAA888822220000 ))
  \ins2/Mmux_ins51  (
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(reset_IBUF_3189),
    .ADR1(\ins5/Q [1]),
    .ADR4(\ins2/PM_out [13]),
    .ADR5(\ins2/ins_prv [13]),
    .O(ins_13_OBUF_3399)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X51Y132" ),
    .INIT ( 64'h0F0F0000EE22EE22 ))
  \ins3/Mmux_n003571_SW0  (
    .ADR0(\ins3/BR<6>_0 ),
    .ADR4(\ins4/Ex_out [6]),
    .ADR3(\ins6/ans_wb [6]),
    .ADR2(\ins8/DFF9_3315 ),
    .ADR1(\ins8/Reg7[4]_Reg4[4]_equal_67_o ),
    .ADR5(\ins8/Reg6[4]_Reg4[4]_equal_65_o ),
    .O(N145)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X51Y132" ),
    .INIT ( 64'hAAAAAAAAFFFCCFCC ))
  \ins3/Mmux_n003561_SW1  (
    .ADR3(\ins3/BR [5]),
    .ADR4(\ins6/ans_wb [5]),
    .ADR0(\ins1/ans_ex [5]),
    .ADR2(\ins8/Reg7[4]_Reg4[4]_equal_67_o ),
    .ADR5(\ins8/C4 ),
    .ADR1(\ins8/Reg6[4]_Reg4[4]_equal_65_o ),
    .O(N66)
  );
  X_SFF #(
    .LOC ( "SLICE_X49Y133" ),
    .INIT ( 1'b0 ))
  \ins8/Reg4_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins8/Reg4_3/CLK ),
    .I(\NlwBufferSignal_ins8/Reg4_3/IN ),
    .O(\ins8/Reg4 [3]),
    .SRST(\ins8/GND_17_o_GND_17_o_equal_7_o_0_3561 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X51Y120" ),
    .INIT ( 1'b0 ))
  \ins8/DFF5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins8/DFF5/CLK ),
    .I(ins_22_OBUF_3269),
    .O(\ins8/DFF5_3280 ),
    .SRST(\ins8/ins<23>_0 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X51Y120" ),
    .INIT ( 64'hF000FF00F0000000 ))
  \ins2/Mmux_ins151  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(reset_IBUF_3189),
    .ADR2(\ins2/ins_prv [22]),
    .ADR4(\ins5/Q [1]),
    .ADR5(\ins2/PM_out [22]),
    .O(ins_22_OBUF_3269)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X51Y120" ),
    .INIT ( 64'h0C0C0C0C00220066 ))
  \ins5/Mmux_n0020111  (
    .ADR2(\ins5/Q [2]),
    .ADR4(\ins5/Q [0]),
    .ADR0(ins_19_OBUF_3197),
    .ADR3(ins_20_OBUF_3270),
    .ADR1(ins_21_OBUF_3268),
    .ADR5(ins_22_OBUF_3269),
    .O(\ins5/Mmux_n002011_3323 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X51Y120" ),
    .INIT ( 64'hEEEEFFFF4444FFFF ))
  \ins8/ins<23>1  (
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(\ins5/Q [1]),
    .ADR5(\ins2/ins_prv [23]),
    .ADR4(reset_IBUF_3189),
    .ADR1(\ins2/PM_out [23]),
    .O(\ins8/ins<23>_0 )
  );
  X_BUF   \ins3/AR<5>/ins3/AR<5>_DMUX_Delay  (
    .I(\ins3/Mram_RegisterBank2_RAMD_D1_O ),
    .O(\ins3/Mram_RegisterBank2_RAMD_D1_O_0 )
  );
  X_BUF   \ins3/AR<5>/ins3/AR<5>_CMUX_Delay  (
    .I(\ins3/AR [4]),
    .O(\ins3/AR<4>_0 )
  );
  X_BUF   \ins3/AR<5>/ins3/AR<5>_BMUX_Delay  (
    .I(\ins3/AR [2]),
    .O(\ins3/AR<2>_0 )
  );
  X_BUF   \ins3/AR<5>/ins3/AR<5>_AMUX_Delay  (
    .I(\ins3/AR [0]),
    .O(\ins3/AR<0>_0 )
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X46Y135" ),
    .INIT ( 32'h00000000 ))
  \ins3/Mram_RegisterBank2_RAMD_D1  (
    .RADR0(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD_D1/RADR0 ),
    .RADR1(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD_D1/RADR1 ),
    .RADR2(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD_D1/RADR2 ),
    .RADR3(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD_D1/RADR3 ),
    .RADR4(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD_D1/RADR4 ),
    .CLK(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD_D1/CLK ),
    .I(1'b0),
    .O(\NLW_ins3/Mram_RegisterBank2_RAMD_D1_O_UNCONNECTED ),
    .WADR0(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD_D1/WADR0 ),
    .WADR1(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD_D1/WADR1 ),
    .WADR2(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD_D1/WADR2 ),
    .WADR3(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD_D1/WADR3 ),
    .WADR4(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD_D1/WADR4 ),
    .WE(1'b1)
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X46Y135" ),
    .INIT ( 32'h00000000 ))
  \ins3/Mram_RegisterBank2_RAMD  (
    .RADR0(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD/RADR0 ),
    .RADR1(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD/RADR1 ),
    .RADR2(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD/RADR2 ),
    .RADR3(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD/RADR3 ),
    .RADR4(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD/RADR4 ),
    .CLK(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD/CLK ),
    .I(1'b0),
    .O(\ins3/Mram_RegisterBank2_RAMD_D1_O ),
    .WADR0(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD/WADR0 ),
    .WADR1(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD/WADR1 ),
    .WADR2(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD/WADR2 ),
    .WADR3(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD/WADR3 ),
    .WADR4(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD/WADR4 ),
    .WE(1'b1)
  );
  X_FF #(
    .LOC ( "SLICE_X46Y135" ),
    .INIT ( 1'b0 ))
  \ins3/AR_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins3/AR_5/CLK ),
    .I(\ins3/ins[13]_read_port_21_OUT<5> ),
    .O(\ins3/AR [5]),
    .RST(GND),
    .SET(GND)
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X46Y135" ),
    .INIT ( 32'h00000000 ))
  \ins3/Mram_RegisterBank2_RAMC_D1  (
    .RADR0(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC_D1/RADR0 ),
    .RADR1(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC_D1/RADR1 ),
    .RADR2(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC_D1/RADR2 ),
    .RADR3(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC_D1/RADR3 ),
    .RADR4(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC_D1/RADR4 ),
    .CLK(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC_D1/CLK ),
    .I(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC_D1/IN ),
    .O(\ins3/ins[13]_read_port_21_OUT<5> ),
    .WADR0(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC_D1/WADR0 ),
    .WADR1(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC_D1/WADR1 ),
    .WADR2(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC_D1/WADR2 ),
    .WADR3(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC_D1/WADR3 ),
    .WADR4(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC_D1/WADR4 ),
    .WE(1'b1)
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X46Y135" ),
    .INIT ( 32'h00000000 ))
  \ins3/Mram_RegisterBank2_RAMC  (
    .RADR0(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC/RADR0 ),
    .RADR1(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC/RADR1 ),
    .RADR2(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC/RADR2 ),
    .RADR3(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC/RADR3 ),
    .RADR4(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC/RADR4 ),
    .CLK(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC/CLK ),
    .I(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC/IN ),
    .O(\ins3/ins[13]_read_port_21_OUT<4> ),
    .WADR0(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC/WADR0 ),
    .WADR1(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC/WADR1 ),
    .WADR2(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC/WADR2 ),
    .WADR3(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC/WADR3 ),
    .WADR4(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC/WADR4 ),
    .WE(1'b1)
  );
  X_FF #(
    .LOC ( "SLICE_X46Y135" ),
    .INIT ( 1'b0 ))
  \ins3/AR_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins3/AR_4/CLK ),
    .I(\ins3/ins[13]_read_port_21_OUT<4> ),
    .O(\ins3/AR [4]),
    .RST(GND),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X46Y135" ),
    .INIT ( 1'b0 ))
  \ins3/AR_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins3/AR_3/CLK ),
    .I(\ins3/ins[13]_read_port_21_OUT<3> ),
    .O(\ins3/AR [3]),
    .RST(GND),
    .SET(GND)
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X46Y135" ),
    .INIT ( 32'h00000000 ))
  \ins3/Mram_RegisterBank2_RAMB_D1  (
    .RADR0(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB_D1/RADR0 ),
    .RADR1(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB_D1/RADR1 ),
    .RADR2(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB_D1/RADR2 ),
    .RADR3(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB_D1/RADR3 ),
    .RADR4(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB_D1/RADR4 ),
    .CLK(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB_D1/CLK ),
    .I(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB_D1/IN ),
    .O(\ins3/ins[13]_read_port_21_OUT<3> ),
    .WADR0(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB_D1/WADR0 ),
    .WADR1(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB_D1/WADR1 ),
    .WADR2(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB_D1/WADR2 ),
    .WADR3(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB_D1/WADR3 ),
    .WADR4(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB_D1/WADR4 ),
    .WE(1'b1)
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X46Y135" ),
    .INIT ( 32'h00000000 ))
  \ins3/Mram_RegisterBank2_RAMB  (
    .RADR0(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB/RADR0 ),
    .RADR1(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB/RADR1 ),
    .RADR2(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB/RADR2 ),
    .RADR3(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB/RADR3 ),
    .RADR4(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB/RADR4 ),
    .CLK(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB/CLK ),
    .I(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB/IN ),
    .O(\ins3/ins[13]_read_port_21_OUT<2> ),
    .WADR0(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB/WADR0 ),
    .WADR1(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB/WADR1 ),
    .WADR2(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB/WADR2 ),
    .WADR3(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB/WADR3 ),
    .WADR4(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB/WADR4 ),
    .WE(1'b1)
  );
  X_FF #(
    .LOC ( "SLICE_X46Y135" ),
    .INIT ( 1'b0 ))
  \ins3/AR_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins3/AR_2/CLK ),
    .I(\ins3/ins[13]_read_port_21_OUT<2> ),
    .O(\ins3/AR [2]),
    .RST(GND),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X46Y135" ),
    .INIT ( 1'b0 ))
  \ins3/AR_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins3/AR_1/CLK ),
    .I(\ins3/ins[13]_read_port_21_OUT<1> ),
    .O(\ins3/AR [1]),
    .RST(GND),
    .SET(GND)
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X46Y135" ),
    .INIT ( 32'h00000000 ))
  \ins3/Mram_RegisterBank2_RAMA_D1  (
    .RADR0(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA_D1/RADR0 ),
    .RADR1(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA_D1/RADR1 ),
    .RADR2(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA_D1/RADR2 ),
    .RADR3(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA_D1/RADR3 ),
    .RADR4(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA_D1/RADR4 ),
    .CLK(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA_D1/CLK ),
    .I(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA_D1/IN ),
    .O(\ins3/ins[13]_read_port_21_OUT<1> ),
    .WADR0(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA_D1/WADR0 ),
    .WADR1(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA_D1/WADR1 ),
    .WADR2(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA_D1/WADR2 ),
    .WADR3(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA_D1/WADR3 ),
    .WADR4(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA_D1/WADR4 ),
    .WE(1'b1)
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X46Y135" ),
    .INIT ( 32'h00000000 ))
  \ins3/Mram_RegisterBank2_RAMA  (
    .RADR0(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA/RADR0 ),
    .RADR1(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA/RADR1 ),
    .RADR2(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA/RADR2 ),
    .RADR3(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA/RADR3 ),
    .RADR4(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA/RADR4 ),
    .CLK(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA/CLK ),
    .I(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA/IN ),
    .O(\ins3/ins[13]_read_port_21_OUT<0> ),
    .WADR0(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA/WADR0 ),
    .WADR1(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA/WADR1 ),
    .WADR2(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA/WADR2 ),
    .WADR3(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA/WADR3 ),
    .WADR4(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA/WADR4 ),
    .WE(1'b1)
  );
  X_FF #(
    .LOC ( "SLICE_X46Y135" ),
    .INIT ( 1'b0 ))
  \ins3/AR_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins3/AR_0/CLK ),
    .I(\ins3/ins[13]_read_port_21_OUT<0> ),
    .O(\ins3/AR [0]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X54Y135" ),
    .INIT ( 64'h0000000040400000 ))
  \ins1/ALU_Execution/Mmux_ans_tmp1121  (
    .ADR3(1'b1),
    .ADR1(\ins2/ins_prv [22]),
    .ADR2(\ins2/ins_prv [20]),
    .ADR0(\ins2/ins_prv [19]),
    .ADR5(\ins2/ins_prv [21]),
    .ADR4(\ins2/ins_prv [23]),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp112 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X55Y137" ),
    .INIT ( 64'hC0E2C0E2C0C0C0C0 ))
  \ins1/ALU_Execution/Mmux_ans_tmp164  (
    .ADR4(1'b1),
    .ADR1(\ins1/ALU_Execution/op_dec[4]_PWR_3_o_equal_29_o_0 ),
    .ADR2(data_in_3_IBUF_3423),
    .ADR5(\ins1/ALU_Execution/Mmux_ans_tmp207_3263 ),
    .ADR3(B_2_OBUF_3412),
    .ADR0(\ins1/ALU_Execution/Sh3 ),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp163_3609 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X55Y137" ),
    .INIT ( 64'hBB33AA00AA00AA00 ))
  \ins1/ALU_Execution/Mmux_ans_tmp207  (
    .ADR2(1'b1),
    .ADR0(data_in_4_IBUF_3424),
    .ADR3(\ins1/ALU_Execution/op_dec[4]_PWR_3_o_equal_29_o_0 ),
    .ADR5(\ins1/ALU_Execution/Mmux_ans_tmp112 ),
    .ADR1(B_2_OBUF_3412),
    .ADR4(\ins1/ALU_Execution/Sh20 ),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp206_3590 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X57Y134" ),
    .INIT ( 64'hF0CCF0AAF0CCF0AA ))
  \ins3/Mmux_n003461  (
    .ADR5(1'b1),
    .ADR2(\ins1/ans_ex [5]),
    .ADR4(\ins4/DM_out [5]),
    .ADR3(\ins8/C1 ),
    .ADR0(N133),
    .ADR1(N134),
    .O(A_5_OBUF_3302)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X57Y134" ),
    .INIT ( 64'hCCDDCC88FFDD0088 ))
  \ins1/ALU_Execution/Sh511  (
    .ADR2(1'b1),
    .ADR5(\ins2/ins_prv [2]),
    .ADR3(\ins8/DFF5_3280 ),
    .ADR0(\ins3/Mmux_n00352 ),
    .ADR1(A_3_OBUF_3298),
    .ADR4(A_5_OBUF_3302),
    .O(\ins1/ALU_Execution/Sh51 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X55Y139" ),
    .INIT ( 64'hAAAAB8B8E2E2F0F0 ))
  \ins1/ALU_Execution/Sh331  (
    .ADR3(1'b1),
    .ADR5(\ins2/ins_prv [1]),
    .ADR1(\ins8/DFF5_3280 ),
    .ADR4(\ins3/Mmux_n00351 ),
    .ADR0(A_0_OBUF_3297),
    .ADR2(A_1_OBUF_3293),
    .O(\ins1/ALU_Execution/Sh33 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X55Y139" ),
    .INIT ( 64'hC0C0C0C0C0E2C0C0 ))
  \ins1/ALU_Execution/Mmux_ans_tmp84  (
    .ADR2(data_in_1_IBUF_3425),
    .ADR1(\ins1/ALU_Execution/op_dec[4]_PWR_3_o_equal_29_o_0 ),
    .ADR0(\ins1/ALU_Execution/Mmux_ans_tmp207_3263 ),
    .ADR3(B_2_OBUF_3412),
    .ADR5(B_1_OBUF_3411),
    .ADR4(\ins1/ALU_Execution/Sh33 ),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp84_3529 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X55Y139" ),
    .INIT ( 64'hFFCCF0CCFFAAF0AA ))
  \ins3/Mmux_n003431_SW1  (
    .ADR0(\ins3/AR<2>_0 ),
    .ADR4(\ins4/Ex_out<2>_0 ),
    .ADR1(\ins6/ans_wb [2]),
    .ADR2(\ins8/DFF9_3315 ),
    .ADR5(\ins8/Reg7[4]_Reg2[4]_equal_61_o ),
    .ADR3(\ins8/Reg6[4]_Reg2[4]_equal_59_o ),
    .O(N143)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X55Y139" ),
    .INIT ( 64'hAFA3ACA0AFA3ACA0 ))
  \ins3/Mmux_n003431  (
    .ADR5(1'b1),
    .ADR0(\ins1/ans_ex [2]),
    .ADR1(\ins4/DM_out [2]),
    .ADR2(\ins8/C1 ),
    .ADR4(N142),
    .ADR3(N143),
    .O(A_2_OBUF_3301)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X52Y137" ),
    .INIT ( 64'h55005500F3F3C0C0 ))
  \ins3/Mmux_n003441_SW0  (
    .ADR4(\ins3/AR [3]),
    .ADR3(\ins4/Ex_out<3>_0 ),
    .ADR2(\ins6/ans_wb [3]),
    .ADR0(\ins8/DFF9_3315 ),
    .ADR1(\ins8/Reg7[4]_Reg2[4]_equal_61_o ),
    .ADR5(\ins8/Reg6[4]_Reg2[4]_equal_59_o ),
    .O(N139)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X52Y137" ),
    .INIT ( 64'hFFF0CCF0FFAACCAA ))
  \ins3/Mmux_n003411_SW1  (
    .ADR0(\ins3/AR<0>_0 ),
    .ADR2(\ins6/ans_wb [0]),
    .ADR1(\ins4/Ex_out<0>_0 ),
    .ADR4(\ins8/DFF9_3315 ),
    .ADR5(\ins8/Reg7[4]_Reg2[4]_equal_61_o ),
    .ADR3(\ins8/Reg6[4]_Reg2[4]_equal_59_o ),
    .O(N90)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X52Y137" ),
    .INIT ( 64'hFECEFECE32023202 ))
  \ins3/Mmux_n003411  (
    .ADR4(1'b1),
    .ADR5(\ins1/ans_ex [0]),
    .ADR2(\ins4/DM_out [0]),
    .ADR1(\ins8/C1 ),
    .ADR0(N89),
    .ADR3(N90),
    .O(A_0_OBUF_3297)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X55Y132" ),
    .INIT ( 64'hFF50FF4400500044 ))
  \ins3/Mmux_n003561_SW0  (
    .ADR1(\ins3/BR [5]),
    .ADR2(\ins6/ans_wb [5]),
    .ADR5(\ins1/ans_ex [5]),
    .ADR4(\ins8/Reg7[4]_Reg4[4]_equal_67_o ),
    .ADR3(\ins8/C4 ),
    .ADR0(\ins8/Reg6[4]_Reg4[4]_equal_65_o ),
    .O(N65)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X54Y138" ),
    .INIT ( 64'h0505303FF5F5303F ))
  \ins1/ALU_Execution/Sh262_SW0  (
    .ADR3(A_2_OBUF_3301),
    .ADR1(\ins3/Mmux_n003441_3672 ),
    .ADR5(\ins3/Mmux_n003461_3540 ),
    .ADR0(A_4_OBUF_3305),
    .ADR2(B_0_OBUF_0),
    .ADR4(B_1_OBUF_3411),
    .O(N282)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X54Y138" ),
    .INIT ( 64'h0000C8083333FB3B ))
  \ins1/ALU_Execution/Sh262  (
    .ADR4(B_1_OBUF_3411),
    .ADR1(B_2_OBUF_3412),
    .ADR2(B_0_OBUF_0),
    .ADR3(A_7_OBUF_3306),
    .ADR0(A_6_OBUF_3309),
    .ADR5(N282),
    .O(\ins1/ALU_Execution/Sh26 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X54Y138" ),
    .INIT ( 64'hF7B3D591E6A2C480 ))
  \ins1/ALU_Execution/Sh31  (
    .ADR2(A_0_OBUF_3297),
    .ADR4(A_1_OBUF_3293),
    .ADR3(A_2_OBUF_3301),
    .ADR5(A_3_OBUF_3298),
    .ADR1(B_0_OBUF_0),
    .ADR0(B_1_OBUF_3411),
    .O(\ins1/ALU_Execution/Sh3 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X54Y138" ),
    .INIT ( 64'hAFAFACACA3A3A0A0 ))
  \ins3/Mmux_n003441  (
    .ADR3(1'b1),
    .ADR0(\ins1/ans_ex [3]),
    .ADR1(\ins4/DM_out [3]),
    .ADR2(\ins8/C1 ),
    .ADR4(N139),
    .ADR5(N140),
    .O(A_3_OBUF_3298)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X52Y138" ),
    .INIT ( 64'hFC883088FC883088 ))
  \ins1/ALU_Execution/Mmux_ans_tmp125_SW0  (
    .ADR5(1'b1),
    .ADR0(A_3_OBUF_3298),
    .ADR4(A_5_OBUF_3302),
    .ADR2(A_4_OBUF_3305),
    .ADR1(B_0_OBUF_0),
    .ADR3(B_1_OBUF_3411),
    .O(N259)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X52Y138" ),
    .INIT ( 64'hA0A08888AA00AA00 ))
  \ins1/ALU_Execution/Mmux_ans_tmp125  (
    .ADR1(A_6_OBUF_3309),
    .ADR2(A_7_OBUF_3306),
    .ADR0(\ins1/ALU_Execution/Mmux_ans_tmp125_3538 ),
    .ADR5(B_2_OBUF_3412),
    .ADR4(N260),
    .ADR3(N259),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp126_3602 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X54Y137" ),
    .INIT ( 64'hDFD5DAD08F858A80 ))
  \ins1/ALU_Execution/Sh201  (
    .ADR3(A_6_OBUF_3309),
    .ADR1(A_7_OBUF_3306),
    .ADR5(\ins3/Mmux_n003461_3540 ),
    .ADR4(A_4_OBUF_3305),
    .ADR2(B_0_OBUF_0),
    .ADR0(B_1_OBUF_3411),
    .O(\ins1/ALU_Execution/Sh20 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X54Y137" ),
    .INIT ( 64'hC0C0C0C0CC888888 ))
  \ins1/ALU_Execution/Mmux_ans_tmp206  (
    .ADR1(\ins1/ALU_Execution/Mmux_ans_tmp125_3538 ),
    .ADR2(A_7_OBUF_3306),
    .ADR5(B_2_OBUF_3412),
    .ADR3(\ins1/ALU_Execution/type3/Mmux__n007021 ),
    .ADR0(\ins1/ALU_Execution/Mmux_ans_tmp204_3698 ),
    .ADR4(\ins1/ALU_Execution/Sh20 ),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp205_3537 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X54Y137" ),
    .INIT ( 64'h0030003000005050 ))
  \ins1/ALU_Execution/Mmux_ans_tmp205  (
    .ADR3(\ins2/ins_prv [1]),
    .ADR1(\ins2/ins_prv [2]),
    .ADR5(\ins8/DFF5_3280 ),
    .ADR4(\ins3/Mmux_n00351 ),
    .ADR0(\ins3/Mmux_n00352 ),
    .ADR2(A_4_OBUF_3305),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp204_3698 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X53Y137" ),
    .INIT ( 64'hFFAAF0AAFFCCF0CC ))
  \ins3/Mmux_n003441_SW1  (
    .ADR1(\ins3/AR [3]),
    .ADR2(\ins4/Ex_out<3>_0 ),
    .ADR0(\ins6/ans_wb [3]),
    .ADR4(\ins8/DFF9_3315 ),
    .ADR5(\ins8/Reg7[4]_Reg2[4]_equal_61_o ),
    .ADR3(\ins8/Reg6[4]_Reg2[4]_equal_59_o ),
    .O(N140)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X53Y137" ),
    .INIT ( 64'hBB88B8B8BB88B8B8 ))
  \ins3/Mmux_n003441_1  (
    .ADR5(1'b1),
    .ADR0(\ins1/ans_ex [3]),
    .ADR4(\ins4/DM_out [3]),
    .ADR1(\ins8/C1 ),
    .ADR2(N139),
    .ADR3(N140),
    .O(\ins3/Mmux_n003441_3672 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X55Y138" ),
    .INIT ( 64'hFCFCF0F0FCFCF0F0 ))
  \ins1/ALU_Execution/Mmux_ans_tmp87_SW1  (
    .ADR0(1'b1),
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR2(\ins1/ALU_Execution/Mmux_ans_tmp112 ),
    .ADR1(\ins1/ALU_Execution/Mmux_ans_tmp125_3538 ),
    .ADR4(\ins1/ALU_Execution/type3/Mmux__n007021 ),
    .O(N217)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X55Y138" ),
    .INIT ( 64'hF0CCFFAAF0CC00AA ))
  \ins1/ALU_Execution/Mmux_ans_tmp2010_SW0  (
    .ADR2(A_1_OBUF_3293),
    .ADR1(A_2_OBUF_3301),
    .ADR5(A_3_OBUF_3298),
    .ADR0(A_4_OBUF_3305),
    .ADR3(B_0_OBUF_0),
    .ADR4(B_1_OBUF_3411),
    .O(N245)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X55Y138" ),
    .INIT ( 64'h5500752000000000 ))
  \ins1/ALU_Execution/Mmux_ans_tmp2010  (
    .ADR5(\ins1/ALU_Execution/Mmux_ans_tmp207_3263 ),
    .ADR0(B_2_OBUF_3412),
    .ADR4(B_1_OBUF_3411),
    .ADR1(B_0_OBUF_0),
    .ADR2(A_0_OBUF_3297),
    .ADR3(N245),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp209 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X55Y136" ),
    .INIT ( 64'hFFAAFFAAF0F0CCCC ))
  \ins3/Mmux_n003471_SW1  (
    .ADR1(\ins3/AR<6>_0 ),
    .ADR2(\ins6/ans_wb [6]),
    .ADR0(\ins4/Ex_out [6]),
    .ADR3(\ins8/DFF9_3315 ),
    .ADR4(\ins8/Reg7[4]_Reg2[4]_equal_61_o ),
    .ADR5(\ins8/Reg6[4]_Reg2[4]_equal_59_o ),
    .O(N131)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X55Y136" ),
    .INIT ( 64'hF5F5A0A0F5A0F5A0 ))
  \ins3/Mmux_n003471  (
    .ADR1(1'b1),
    .ADR2(\ins1/ans_ex [6]),
    .ADR5(\ins4/DM_out [6]),
    .ADR0(\ins8/C1 ),
    .ADR3(N130),
    .ADR4(N131),
    .O(A_6_OBUF_3309)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X53Y138" ),
    .INIT ( 64'hF0AAF0AAF0FFF000 ))
  \ins3/Mmux_n003521  (
    .ADR1(1'b1),
    .ADR2(\ins1/ans_ex [1]),
    .ADR5(\ins4/DM_out [1]),
    .ADR3(\ins8/C4 ),
    .ADR4(N92),
    .ADR0(N93),
    .O(\ins3/Mmux_n00352 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X53Y138" ),
    .INIT ( 64'hFFFFFF33EEEEEE22 ))
  \ins1/ALU_Execution/type3/Mmux__n0070211  (
    .ADR2(1'b1),
    .ADR3(\ins2/ins_prv [1]),
    .ADR4(\ins2/ins_prv [2]),
    .ADR1(\ins8/DFF5_3280 ),
    .ADR0(\ins3/Mmux_n00351 ),
    .ADR5(\ins3/Mmux_n00352 ),
    .O(\ins1/ALU_Execution/type3/Mmux__n007021 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X53Y138" ),
    .INIT ( 64'h3030FC302222EE22 ))
  \ins3/Mmux_n003431_SW0  (
    .ADR0(\ins3/AR<2>_0 ),
    .ADR3(\ins4/Ex_out<2>_0 ),
    .ADR2(\ins6/ans_wb [2]),
    .ADR4(\ins8/DFF9_3315 ),
    .ADR5(\ins8/Reg7[4]_Reg2[4]_equal_61_o ),
    .ADR1(\ins8/Reg6[4]_Reg2[4]_equal_59_o ),
    .O(N142)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X52Y136" ),
    .INIT ( 64'hFFFF3C3CFFFF3C3C ))
  \ins8/C45_SW2  (
    .ADR0(1'b1),
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR4(\ins1/ans_ex [1]),
    .ADR1(\ins8/Reg5 [3]),
    .ADR2(\ins8/Reg4 [3]),
    .O(N264)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X52Y136" ),
    .INIT ( 64'hFFCCAACCFFF0AAF0 ))
  \ins3/Mmux_n003461_SW1  (
    .ADR2(\ins3/AR [5]),
    .ADR0(\ins4/Ex_out [5]),
    .ADR1(\ins6/ans_wb [5]),
    .ADR4(\ins8/DFF9_3315 ),
    .ADR5(\ins8/Reg7[4]_Reg2[4]_equal_61_o ),
    .ADR3(\ins8/Reg6[4]_Reg2[4]_equal_59_o ),
    .O(N134)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X52Y136" ),
    .INIT ( 64'hFFFFFC300000FC30 ))
  \ins3/Mmux_n003461_1  (
    .ADR0(1'b1),
    .ADR5(\ins1/ans_ex [5]),
    .ADR1(\ins4/DM_out [5]),
    .ADR4(\ins8/C1 ),
    .ADR2(N133),
    .ADR3(N134),
    .O(\ins3/Mmux_n003461_3540 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X52Y135" ),
    .INIT ( 64'hDDDDDDDDEEEEEEEE ))
  \ins8/C45_SW4  (
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR1(\ins1/ans_ex [0]),
    .ADR5(\ins8/Reg5 [3]),
    .ADR0(\ins8/Reg4 [3]),
    .O(N268)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X54Y136" ),
    .INIT ( 64'hAAAA0C00AAAA000C ))
  \ins3/Mmux_n003521_SW2  (
    .ADR5(\ins8/Reg4 [4]),
    .ADR3(\ins8/Reg5<4>_0 ),
    .ADR0(\ins2/ins_prv [2]),
    .ADR4(\ins8/DFF5_3280 ),
    .ADR1(N262),
    .ADR2(N43),
    .O(N188)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X54Y136" ),
    .INIT ( 64'hFFEEF0EEFF44F044 ))
  \ins3/Mmux_n003451_SW1  (
    .ADR1(\ins3/AR<4>_0 ),
    .ADR4(\ins4/Ex_out [4]),
    .ADR5(\ins6/ans_wb [4]),
    .ADR2(\ins8/DFF9_3315 ),
    .ADR0(\ins8/Reg7[4]_Reg2[4]_equal_61_o ),
    .ADR3(\ins8/Reg6[4]_Reg2[4]_equal_59_o ),
    .O(N137)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X54Y136" ),
    .INIT ( 64'hBB88B8B8BB88B8B8 ))
  \ins3/Mmux_n003451  (
    .ADR5(1'b1),
    .ADR0(\ins1/ans_ex [4]),
    .ADR4(\ins4/DM_out [4]),
    .ADR1(\ins8/C1 ),
    .ADR2(N136),
    .ADR3(N137),
    .O(A_4_OBUF_3305)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X57Y130" ),
    .INIT ( 64'hF0F03300F0F02222 ))
  \ins3/Mmux_n003551_SW0  (
    .ADR0(\ins3/BR<4>_0 ),
    .ADR3(\ins6/ans_wb [4]),
    .ADR2(\ins1/ans_ex [4]),
    .ADR5(\ins8/Reg7[4]_Reg4[4]_equal_67_o ),
    .ADR4(\ins8/C4 ),
    .ADR1(\ins8/Reg6[4]_Reg4[4]_equal_65_o ),
    .O(N68)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X57Y130" ),
    .INIT ( 64'hA0A0A0A0C0C0F000 ))
  \ins1/ALU_Execution/type2/Add/inst5/Mxor_sum_xo<0>1_SW0  (
    .ADR0(\ins2/ins_prv [5]),
    .ADR5(\ins8/DFF5_3280 ),
    .ADR2(\ins1/ALU_Execution/Mmux_ans_tmp121_3281 ),
    .ADR4(ans_dm_4_OBUF_3407),
    .ADR1(N69),
    .ADR3(N68),
    .O(N185)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y130" ),
    .INIT ( 64'hFFFFFFFF00FF0000 ))
  \ins8/Mmux_mux_sel_B11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(\ins8/C4 ),
    .ADR3(\ins8/Reg6[4]_Reg4[4]_equal_65_o ),
    .ADR4(\ins8/Reg7[4]_Reg4[4]_equal_67_o ),
    .O(mux_sel_B_0_OBUF_3333)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y130" ),
    .INIT ( 64'h00FF00FF00FF0000 ))
  \ins8/Mmux_mux_sel_B21  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\ins8/C4 ),
    .ADR5(\ins8/Reg6[4]_Reg4[4]_equal_65_o ),
    .ADR4(\ins8/Reg7[4]_Reg4[4]_equal_67_o ),
    .O(mux_sel_B_1_OBUF_3331)
  );
  X_SFF #(
    .LOC ( "SLICE_X50Y124" ),
    .INIT ( 1'b0 ))
  \ins2/ins_prv_11  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/ins_prv_11/CLK ),
    .I(ins_11_OBUF_3401),
    .O(\ins2/ins_prv [11]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y124" ),
    .INIT ( 64'hA2A28080A2A28080 ))
  \ins2/Mmux_ins31  (
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR0(reset_IBUF_3189),
    .ADR2(\ins2/ins_prv [11]),
    .ADR1(\ins5/Q [1]),
    .ADR4(\ins2/PM_out [11]),
    .O(ins_11_OBUF_3401)
  );
  X_SFF #(
    .LOC ( "SLICE_X50Y124" ),
    .INIT ( 1'b0 ))
  \ins2/ins_prv_10  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/ins_prv_10/CLK ),
    .I(ins_10_OBUF_3402),
    .O(\ins2/ins_prv [10]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y124" ),
    .INIT ( 64'hCACACACA00000000 ))
  \ins2/Mmux_ins25  (
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(reset_IBUF_3189),
    .ADR1(\ins2/ins_prv [10]),
    .ADR2(\ins5/Q [1]),
    .ADR0(\ins2/PM_out [10]),
    .O(ins_10_OBUF_3402)
  );
  X_SFF #(
    .LOC ( "SLICE_X50Y124" ),
    .INIT ( 1'b0 ))
  \ins2/ins_prv_9  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/ins_prv_9/CLK ),
    .I(ins_9_OBUF_3397),
    .O(\ins2/ins_prv [9]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y124" ),
    .INIT ( 64'hD8D80000D8D80000 ))
  \ins2/Mmux_ins241  (
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR4(reset_IBUF_3189),
    .ADR1(\ins2/ins_prv [9]),
    .ADR0(\ins5/Q [1]),
    .ADR2(\ins2/PM_out [9]),
    .O(ins_9_OBUF_3397)
  );
  X_SFF #(
    .LOC ( "SLICE_X50Y124" ),
    .INIT ( 1'b0 ))
  \ins2/ins_prv_8  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/ins_prv_8/CLK ),
    .I(ins_8_OBUF_3396),
    .O(\ins2/ins_prv [8]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y124" ),
    .INIT ( 64'hF5F50000A0A00000 ))
  \ins2/Mmux_ins231  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR4(reset_IBUF_3189),
    .ADR2(\ins2/ins_prv [8]),
    .ADR0(\ins5/Q [1]),
    .ADR5(\ins2/PM_out [8]),
    .O(ins_8_OBUF_3396)
  );
  X_BUF   \ins8/Reg2<2>/ins8/Reg2<2>_DMUX_Delay  (
    .I(\ins8/Reg4<4>_pack_2 ),
    .O(\ins8/Reg4 [4])
  );
  X_SFF #(
    .LOC ( "SLICE_X50Y134" ),
    .INIT ( 1'b0 ))
  \ins8/Reg4_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins8/Reg4_4/CLK ),
    .I(\NlwBufferSignal_ins8/Reg4_4/IN ),
    .O(\ins8/Reg4<4>_pack_2 ),
    .SRST(\ins8/GND_17_o_GND_17_o_equal_7_o_0_3561 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X50Y134" ),
    .INIT ( 1'b0 ))
  \ins8/Reg2_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins8/Reg2_2/CLK ),
    .I(\NlwBufferSignal_ins8/Reg2_2/IN ),
    .O(\ins8/Reg2 [2]),
    .SRST(\ins8/GND_17_o_GND_17_o_equal_7_o_0_3561 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X50Y134" ),
    .INIT ( 1'b0 ))
  \ins8/Reg2_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins8/Reg2_1/CLK ),
    .I(\NlwBufferSignal_ins8/Reg2_1/IN ),
    .O(\ins8/Reg2 [1]),
    .SRST(\ins8/GND_17_o_GND_17_o_equal_7_o_0_3561 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y134" ),
    .INIT ( 64'h00A50000000000A5 ))
  \ins8/Reg6[4]_Reg4[4]_equal_65_o5  (
    .ADR1(1'b1),
    .ADR0(\ins8/Reg4 [4]),
    .ADR4(\ins8/Reg4 [3]),
    .ADR2(\ins8/Reg6 [4]),
    .ADR5(\ins8/Reg6 [3]),
    .ADR3(N39),
    .O(\ins8/Reg6[4]_Reg4[4]_equal_65_o )
  );
  X_SFF #(
    .LOC ( "SLICE_X50Y134" ),
    .INIT ( 1'b0 ))
  \ins8/Reg2_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins8/Reg2_0/CLK ),
    .I(\NlwBufferSignal_ins8/Reg2_0/IN ),
    .O(\ins8/Reg2 [0]),
    .SRST(\ins8/GND_17_o_GND_17_o_equal_7_o_0_3561 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y134" ),
    .INIT ( 64'h0ACC0ACC0AFF0A00 ))
  \ins3/Mmux_n003511_SW0  (
    .ADR4(\ins3/BR<0>_0 ),
    .ADR0(\ins4/Ex_out<0>_0 ),
    .ADR1(\ins6/ans_wb [0]),
    .ADR2(\ins8/DFF9_3315 ),
    .ADR5(\ins8/Reg7[4]_Reg4[4]_equal_67_o ),
    .ADR3(\ins8/Reg6[4]_Reg4[4]_equal_65_o ),
    .O(N83)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X51Y138" ),
    .INIT ( 64'h4E445F554E440A00 ))
  \ins3/Mmux_n003521_SW0  (
    .ADR5(\ins3/BR [1]),
    .ADR3(\ins4/Ex_out<1>_0 ),
    .ADR1(\ins6/ans_wb [1]),
    .ADR2(\ins8/DFF9_3315 ),
    .ADR4(\ins8/Reg7[4]_Reg4[4]_equal_67_o ),
    .ADR0(\ins8/Reg6[4]_Reg4[4]_equal_65_o ),
    .O(N92)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X51Y138" ),
    .INIT ( 64'hFFFFFFFFCEDFC480 ))
  \ins1/ALU_Execution/Mmux_ans_tmp125_SW1  (
    .ADR0(\ins4/DM_out [1]),
    .ADR2(N93),
    .ADR4(N188),
    .ADR1(N189),
    .ADR3(N92),
    .ADR5(B_0_OBUF_0),
    .O(N260)
  );
  X_BUF   \ins3/BR<7>/ins3/BR<7>_BMUX_Delay  (
    .I(\ins3/BR [6]),
    .O(\ins3/BR<6>_0 )
  );
  X_BUF   \ins3/BR<7>/ins3/BR<7>_AMUX_Delay  (
    .I(\ins3/AR [6]),
    .O(\ins3/AR<6>_0 )
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X50Y131" ),
    .INIT ( 32'h00000000 ))
  \ins3/Mram_RegisterBank122/SP  (
    .RADR0(\NlwBufferSignal_ins3/Mram_RegisterBank122/SP/RADR0 ),
    .RADR1(\NlwBufferSignal_ins3/Mram_RegisterBank122/SP/RADR1 ),
    .RADR2(\NlwBufferSignal_ins3/Mram_RegisterBank122/SP/RADR2 ),
    .RADR3(\NlwBufferSignal_ins3/Mram_RegisterBank122/SP/RADR3 ),
    .RADR4(\NlwBufferSignal_ins3/Mram_RegisterBank122/SP/RADR4 ),
    .CLK(\NlwBufferSignal_ins3/Mram_RegisterBank122/SP/CLK ),
    .I(\NlwBufferSignal_ins3/Mram_RegisterBank122/SP/IN ),
    .O(\NLW_ins3/Mram_RegisterBank122/SP_O_UNCONNECTED ),
    .WADR0(\NlwBufferSignal_ins3/Mram_RegisterBank122/SP/WADR0 ),
    .WADR1(\NlwBufferSignal_ins3/Mram_RegisterBank122/SP/WADR1 ),
    .WADR2(\NlwBufferSignal_ins3/Mram_RegisterBank122/SP/WADR2 ),
    .WADR3(\NlwBufferSignal_ins3/Mram_RegisterBank122/SP/WADR3 ),
    .WADR4(\NlwBufferSignal_ins3/Mram_RegisterBank122/SP/WADR4 ),
    .WE(1'b1)
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X50Y131" ),
    .INIT ( 32'h00000000 ))
  \ins3/Mram_RegisterBank121/SP  (
    .RADR0(\NlwBufferSignal_ins3/Mram_RegisterBank121/SP/RADR0 ),
    .RADR1(\NlwBufferSignal_ins3/Mram_RegisterBank121/SP/RADR1 ),
    .RADR2(\NlwBufferSignal_ins3/Mram_RegisterBank121/SP/RADR2 ),
    .RADR3(\NlwBufferSignal_ins3/Mram_RegisterBank121/SP/RADR3 ),
    .RADR4(\NlwBufferSignal_ins3/Mram_RegisterBank121/SP/RADR4 ),
    .CLK(\NlwBufferSignal_ins3/Mram_RegisterBank121/SP/CLK ),
    .I(\NlwBufferSignal_ins3/Mram_RegisterBank121/SP/IN ),
    .O(\NLW_ins3/Mram_RegisterBank121/SP_O_UNCONNECTED ),
    .WADR0(\NlwBufferSignal_ins3/Mram_RegisterBank121/SP/WADR0 ),
    .WADR1(\NlwBufferSignal_ins3/Mram_RegisterBank121/SP/WADR1 ),
    .WADR2(\NlwBufferSignal_ins3/Mram_RegisterBank121/SP/WADR2 ),
    .WADR3(\NlwBufferSignal_ins3/Mram_RegisterBank121/SP/WADR3 ),
    .WADR4(\NlwBufferSignal_ins3/Mram_RegisterBank121/SP/WADR4 ),
    .WE(1'b1)
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X50Y131" ),
    .INIT ( 32'h00000000 ))
  \ins3/Mram_RegisterBank32/SP  (
    .RADR0(\NlwBufferSignal_ins3/Mram_RegisterBank32/SP/RADR0 ),
    .RADR1(\NlwBufferSignal_ins3/Mram_RegisterBank32/SP/RADR1 ),
    .RADR2(\NlwBufferSignal_ins3/Mram_RegisterBank32/SP/RADR2 ),
    .RADR3(\NlwBufferSignal_ins3/Mram_RegisterBank32/SP/RADR3 ),
    .RADR4(\NlwBufferSignal_ins3/Mram_RegisterBank32/SP/RADR4 ),
    .CLK(\NlwBufferSignal_ins3/Mram_RegisterBank32/SP/CLK ),
    .I(\NlwBufferSignal_ins3/Mram_RegisterBank32/SP/IN ),
    .O(\NLW_ins3/Mram_RegisterBank32/SP_O_UNCONNECTED ),
    .WADR0(\NlwBufferSignal_ins3/Mram_RegisterBank32/SP/WADR0 ),
    .WADR1(\NlwBufferSignal_ins3/Mram_RegisterBank32/SP/WADR1 ),
    .WADR2(\NlwBufferSignal_ins3/Mram_RegisterBank32/SP/WADR2 ),
    .WADR3(\NlwBufferSignal_ins3/Mram_RegisterBank32/SP/WADR3 ),
    .WADR4(\NlwBufferSignal_ins3/Mram_RegisterBank32/SP/WADR4 ),
    .WE(1'b1)
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X50Y131" ),
    .INIT ( 32'h00000000 ))
  \ins3/Mram_RegisterBank31/SP  (
    .RADR0(\NlwBufferSignal_ins3/Mram_RegisterBank31/SP/RADR0 ),
    .RADR1(\NlwBufferSignal_ins3/Mram_RegisterBank31/SP/RADR1 ),
    .RADR2(\NlwBufferSignal_ins3/Mram_RegisterBank31/SP/RADR2 ),
    .RADR3(\NlwBufferSignal_ins3/Mram_RegisterBank31/SP/RADR3 ),
    .RADR4(\NlwBufferSignal_ins3/Mram_RegisterBank31/SP/RADR4 ),
    .CLK(\NlwBufferSignal_ins3/Mram_RegisterBank31/SP/CLK ),
    .I(\NlwBufferSignal_ins3/Mram_RegisterBank31/SP/IN ),
    .O(\NLW_ins3/Mram_RegisterBank31/SP_O_UNCONNECTED ),
    .WADR0(\NlwBufferSignal_ins3/Mram_RegisterBank31/SP/WADR0 ),
    .WADR1(\NlwBufferSignal_ins3/Mram_RegisterBank31/SP/WADR1 ),
    .WADR2(\NlwBufferSignal_ins3/Mram_RegisterBank31/SP/WADR2 ),
    .WADR3(\NlwBufferSignal_ins3/Mram_RegisterBank31/SP/WADR3 ),
    .WADR4(\NlwBufferSignal_ins3/Mram_RegisterBank31/SP/WADR4 ),
    .WE(1'b1)
  );
  X_FF #(
    .LOC ( "SLICE_X50Y131" ),
    .INIT ( 1'b0 ))
  \ins3/BR_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins3/BR_7/CLK ),
    .I(\ins3/ins[8]_read_port_22_OUT<7> ),
    .O(\ins3/BR [7]),
    .RST(GND),
    .SET(GND)
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X50Y131" ),
    .INIT ( 32'h00000000 ))
  \ins3/Mram_RegisterBank122/DP  (
    .RADR0(\NlwBufferSignal_ins3/Mram_RegisterBank122/DP/RADR0 ),
    .RADR1(\NlwBufferSignal_ins3/Mram_RegisterBank122/DP/RADR1 ),
    .RADR2(\NlwBufferSignal_ins3/Mram_RegisterBank122/DP/RADR2 ),
    .RADR3(\NlwBufferSignal_ins3/Mram_RegisterBank122/DP/RADR3 ),
    .RADR4(\NlwBufferSignal_ins3/Mram_RegisterBank122/DP/RADR4 ),
    .CLK(\NlwBufferSignal_ins3/Mram_RegisterBank122/DP/CLK ),
    .I(\NlwBufferSignal_ins3/Mram_RegisterBank122/DP/IN ),
    .O(\ins3/ins[8]_read_port_22_OUT<7> ),
    .WADR0(\NlwBufferSignal_ins3/Mram_RegisterBank122/DP/WADR0 ),
    .WADR1(\NlwBufferSignal_ins3/Mram_RegisterBank122/DP/WADR1 ),
    .WADR2(\NlwBufferSignal_ins3/Mram_RegisterBank122/DP/WADR2 ),
    .WADR3(\NlwBufferSignal_ins3/Mram_RegisterBank122/DP/WADR3 ),
    .WADR4(\NlwBufferSignal_ins3/Mram_RegisterBank122/DP/WADR4 ),
    .WE(1'b1)
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X50Y131" ),
    .INIT ( 32'h00000000 ))
  \ins3/Mram_RegisterBank121/DP  (
    .RADR0(\NlwBufferSignal_ins3/Mram_RegisterBank121/DP/RADR0 ),
    .RADR1(\NlwBufferSignal_ins3/Mram_RegisterBank121/DP/RADR1 ),
    .RADR2(\NlwBufferSignal_ins3/Mram_RegisterBank121/DP/RADR2 ),
    .RADR3(\NlwBufferSignal_ins3/Mram_RegisterBank121/DP/RADR3 ),
    .RADR4(\NlwBufferSignal_ins3/Mram_RegisterBank121/DP/RADR4 ),
    .CLK(\NlwBufferSignal_ins3/Mram_RegisterBank121/DP/CLK ),
    .I(\NlwBufferSignal_ins3/Mram_RegisterBank121/DP/IN ),
    .O(\ins3/ins[8]_read_port_22_OUT<6> ),
    .WADR0(\NlwBufferSignal_ins3/Mram_RegisterBank121/DP/WADR0 ),
    .WADR1(\NlwBufferSignal_ins3/Mram_RegisterBank121/DP/WADR1 ),
    .WADR2(\NlwBufferSignal_ins3/Mram_RegisterBank121/DP/WADR2 ),
    .WADR3(\NlwBufferSignal_ins3/Mram_RegisterBank121/DP/WADR3 ),
    .WADR4(\NlwBufferSignal_ins3/Mram_RegisterBank121/DP/WADR4 ),
    .WE(1'b1)
  );
  X_FF #(
    .LOC ( "SLICE_X50Y131" ),
    .INIT ( 1'b0 ))
  \ins3/BR_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins3/BR_6/CLK ),
    .I(\ins3/ins[8]_read_port_22_OUT<6> ),
    .O(\ins3/BR [6]),
    .RST(GND),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X50Y131" ),
    .INIT ( 1'b0 ))
  \ins3/AR_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins3/AR_7/CLK ),
    .I(\ins3/ins[13]_read_port_21_OUT<7> ),
    .O(\ins3/AR [7]),
    .RST(GND),
    .SET(GND)
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X50Y131" ),
    .INIT ( 32'h00000000 ))
  \ins3/Mram_RegisterBank32/DP  (
    .RADR0(\NlwBufferSignal_ins3/Mram_RegisterBank32/DP/RADR0 ),
    .RADR1(\NlwBufferSignal_ins3/Mram_RegisterBank32/DP/RADR1 ),
    .RADR2(\NlwBufferSignal_ins3/Mram_RegisterBank32/DP/RADR2 ),
    .RADR3(\NlwBufferSignal_ins3/Mram_RegisterBank32/DP/RADR3 ),
    .RADR4(\NlwBufferSignal_ins3/Mram_RegisterBank32/DP/RADR4 ),
    .CLK(\NlwBufferSignal_ins3/Mram_RegisterBank32/DP/CLK ),
    .I(\NlwBufferSignal_ins3/Mram_RegisterBank32/DP/IN ),
    .O(\ins3/ins[13]_read_port_21_OUT<7> ),
    .WADR0(\NlwBufferSignal_ins3/Mram_RegisterBank32/DP/WADR0 ),
    .WADR1(\NlwBufferSignal_ins3/Mram_RegisterBank32/DP/WADR1 ),
    .WADR2(\NlwBufferSignal_ins3/Mram_RegisterBank32/DP/WADR2 ),
    .WADR3(\NlwBufferSignal_ins3/Mram_RegisterBank32/DP/WADR3 ),
    .WADR4(\NlwBufferSignal_ins3/Mram_RegisterBank32/DP/WADR4 ),
    .WE(1'b1)
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X50Y131" ),
    .INIT ( 32'h00000000 ))
  \ins3/Mram_RegisterBank31/DP  (
    .RADR0(\NlwBufferSignal_ins3/Mram_RegisterBank31/DP/RADR0 ),
    .RADR1(\NlwBufferSignal_ins3/Mram_RegisterBank31/DP/RADR1 ),
    .RADR2(\NlwBufferSignal_ins3/Mram_RegisterBank31/DP/RADR2 ),
    .RADR3(\NlwBufferSignal_ins3/Mram_RegisterBank31/DP/RADR3 ),
    .RADR4(\NlwBufferSignal_ins3/Mram_RegisterBank31/DP/RADR4 ),
    .CLK(\NlwBufferSignal_ins3/Mram_RegisterBank31/DP/CLK ),
    .I(\NlwBufferSignal_ins3/Mram_RegisterBank31/DP/IN ),
    .O(\ins3/ins[13]_read_port_21_OUT<6> ),
    .WADR0(\NlwBufferSignal_ins3/Mram_RegisterBank31/DP/WADR0 ),
    .WADR1(\NlwBufferSignal_ins3/Mram_RegisterBank31/DP/WADR1 ),
    .WADR2(\NlwBufferSignal_ins3/Mram_RegisterBank31/DP/WADR2 ),
    .WADR3(\NlwBufferSignal_ins3/Mram_RegisterBank31/DP/WADR3 ),
    .WADR4(\NlwBufferSignal_ins3/Mram_RegisterBank31/DP/WADR4 ),
    .WE(1'b1)
  );
  X_FF #(
    .LOC ( "SLICE_X50Y131" ),
    .INIT ( 1'b0 ))
  \ins3/AR_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins3/AR_6/CLK ),
    .I(\ins3/ins[13]_read_port_21_OUT<6> ),
    .O(\ins3/AR [6]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y121" ),
    .INIT ( 64'hFFCDFF00FF00FF00 ))
  \ins8/GND_17_o_GND_17_o_equal_7_o_0  (
    .ADR4(ins_22_OBUF_3269),
    .ADR5(ins_23_OBUF_3271),
    .ADR2(ins_20_OBUF_3270),
    .ADR0(ins_19_OBUF_3197),
    .ADR1(ins_21_OBUF_3268),
    .ADR3(N31),
    .O(\ins8/GND_17_o_GND_17_o_equal_7_o_0_3561 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y132" ),
    .INIT ( 64'hEEFFEE00EEF0EEF0 ))
  \ins3/Mmux_n003571_SW1  (
    .ADR2(\ins3/BR<6>_0 ),
    .ADR4(\ins6/ans_wb [6]),
    .ADR1(\ins4/Ex_out [6]),
    .ADR0(\ins8/DFF9_3315 ),
    .ADR5(\ins8/Reg7[4]_Reg4[4]_equal_67_o ),
    .ADR3(\ins8/Reg6[4]_Reg4[4]_equal_65_o ),
    .O(N146)
  );
  X_BUF   \ins8/Reg7<2>/ins8/Reg7<2>_AMUX_Delay  (
    .I(\ins8/Reg7<1>_pack_1 ),
    .O(\ins8/Reg7 [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y135" ),
    .INIT ( 64'h44444444FF00F0F0 ))
  \ins3/Mmux_n003451_SW0  (
    .ADR2(\ins3/AR<4>_0 ),
    .ADR1(\ins4/Ex_out [4]),
    .ADR3(\ins6/ans_wb [4]),
    .ADR0(\ins8/DFF9_3315 ),
    .ADR4(\ins8/Reg7[4]_Reg2[4]_equal_61_o ),
    .ADR5(\ins8/Reg6[4]_Reg2[4]_equal_59_o ),
    .O(N136)
  );
  X_SFF #(
    .LOC ( "SLICE_X50Y135" ),
    .INIT ( 1'b0 ))
  \ins8/Reg7_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins8/Reg7_2/CLK ),
    .I(\NlwBufferSignal_ins8/Reg7_2/IN ),
    .O(\ins8/Reg7 [2]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y135" ),
    .INIT ( 64'h6FFFF6FFFF6FFFF6 ))
  \ins8/Reg7[4]_Reg4[4]_equal_67_o5_SW0  (
    .ADR0(\ins8/Reg7 [0]),
    .ADR1(\ins8/Reg4 [0]),
    .ADR4(\ins8/Reg7 [1]),
    .ADR2(\ins8/Reg4 [1]),
    .ADR3(\ins8/Reg7 [2]),
    .ADR5(\ins8/Reg4 [2]),
    .O(N35)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y135" ),
    .INIT ( 64'h0088004400220011 ))
  \ins8/Reg7[4]_Reg4[4]_equal_67_o5  (
    .ADR2(1'b1),
    .ADR1(\ins8/Reg7<4>_0 ),
    .ADR0(\ins8/Reg7 [3]),
    .ADR5(\ins8/Reg4 [4]),
    .ADR4(\ins8/Reg4 [3]),
    .ADR3(N35),
    .O(\ins8/Reg7[4]_Reg4[4]_equal_67_o )
  );
  X_SFF #(
    .LOC ( "SLICE_X50Y135" ),
    .INIT ( 1'b0 ))
  \ins8/Reg7_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins8/Reg7_1/CLK ),
    .I(\NlwBufferSignal_ins8/Reg7_1/IN ),
    .O(\ins8/Reg7<1>_pack_1 ),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_BUF   \ins5/Q<1>/ins5/Q<1>_DMUX_Delay  (
    .I(Stall_pack_5),
    .O(Stall)
  );
  X_BUF   \ins5/Q<1>/ins5/Q<1>_BMUX_Delay  (
    .I(N31_pack_4),
    .O(N31)
  );
  X_FF #(
    .LOC ( "SLICE_X50Y120" ),
    .INIT ( 1'b0 ))
  \ins5/Q_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins5/Q_1/CLK ),
    .I(Stall_pack_5),
    .O(\ins5/Q [1]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y120" ),
    .INIT ( 64'h8A808A808A808A80 ))
  \ins2/Mmux_ins161  (
    .ADR4(1'b1),
    .ADR0(reset_IBUF_3189),
    .ADR1(\ins2/ins_prv [23]),
    .ADR2(\ins5/Q [1]),
    .ADR3(\ins2/PM_out [23]),
    .ADR5(1'b1),
    .O(ins_23_OBUF_3271)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X50Y120" ),
    .INIT ( 32'h8A800000 ))
  \ins5/Mmux_n002011  (
    .ADR4(\ins5/Mmux_n002011_3323 ),
    .ADR0(reset_IBUF_3189),
    .ADR1(\ins2/ins_prv [23]),
    .ADR2(\ins5/Q [1]),
    .ADR3(\ins2/PM_out [23]),
    .O(Stall_pack_5)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y120" ),
    .INIT ( 64'h88C088C088CC8800 ))
  \ins7/out62_SW2  (
    .ADR1(reset_IBUF_3189),
    .ADR4(\ins2/Next_Address [2]),
    .ADR2(\ins2/Hold_Address [2]),
    .ADR3(\ins7/Q [0]),
    .ADR0(N17),
    .ADR5(Stall),
    .O(N156)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y120" ),
    .INIT ( 64'hFAFAFAFAFAFAFAFA ))
  \ins8/OR_out1  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\ins5/Q [0]),
    .ADR0(\ins8/DFF4_3272 ),
    .ADR5(1'b1),
    .O(\ins8/OR_out )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X50Y120" ),
    .INIT ( 32'hF0F0FFFF ))
  \ins5/Mmux_n00211_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(reset_IBUF_3189),
    .ADR2(\ins5/Q [0]),
    .ADR3(1'b1),
    .O(N31_pack_4)
  );
  X_FF #(
    .LOC ( "SLICE_X50Y120" ),
    .INIT ( 1'b0 ))
  \ins5/Q_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins5/Q_0/CLK ),
    .I(\ins5/n0021 [0]),
    .O(\ins5/Q [0]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y120" ),
    .INIT ( 64'h0000000200000000 ))
  \ins5/Mmux_n00211  (
    .ADR2(ins_22_OBUF_3269),
    .ADR3(ins_20_OBUF_3270),
    .ADR4(ins_19_OBUF_3197),
    .ADR0(ins_23_OBUF_3271),
    .ADR5(ins_21_OBUF_3268),
    .ADR1(N31),
    .O(\ins5/n0021 [0])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y127" ),
    .INIT ( 64'hAAAAAA000000AA00 ))
  \ins2/Mmux_ins41  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR0(reset_IBUF_3189),
    .ADR4(\ins5/Q [1]),
    .ADR3(\ins2/PM_out [12]),
    .ADR5(\ins2/ins_prv [12]),
    .O(ins_12_OBUF_3400)
  );
  X_BUF   \ins8/DFF4/ins8/DFF4_CMUX_Delay  (
    .I(N154),
    .O(N154_0)
  );
  X_SFF #(
    .LOC ( "SLICE_X50Y115" ),
    .INIT ( 1'b0 ))
  \ins8/DFF4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins8/DFF4/CLK ),
    .I(\ins8/ST_out ),
    .O(\ins8/DFF4_3272 ),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y115" ),
    .INIT ( 64'h0001000000010000 ))
  \ins7/out51  (
    .ADR1(ins_21_OBUF_3268),
    .ADR3(ins_22_OBUF_3269),
    .ADR0(ins_19_OBUF_3197),
    .ADR2(ins_20_OBUF_3270),
    .ADR4(ins_23_OBUF_3271),
    .ADR5(1'b1),
    .O(\ins7/RET_Out )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X50Y115" ),
    .INIT ( 32'h00080000 ))
  \ins8/out31  (
    .ADR1(ins_21_OBUF_3268),
    .ADR3(ins_22_OBUF_3269),
    .ADR0(ins_19_OBUF_3197),
    .ADR2(ins_20_OBUF_3270),
    .ADR4(ins_23_OBUF_3271),
    .O(\ins8/ST_out )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y115" ),
    .INIT ( 64'hAAAA3300AAAA3300 ))
  \ins2/Mmux_Current_Address2_SW0  (
    .ADR2(1'b1),
    .ADR4(\ins7/RET_Out ),
    .ADR3(ins_1_OBUF_3265),
    .ADR1(\ins7/Q [0]),
    .ADR0(\ins7/R1 [1]),
    .ADR5(1'b1),
    .O(N15)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X50Y115" ),
    .INIT ( 32'hA0A03000 ))
  \ins7/out62_SW1  (
    .ADR2(reset_IBUF_3189),
    .ADR4(\ins7/RET_Out ),
    .ADR3(ins_1_OBUF_3265),
    .ADR1(\ins7/Q [0]),
    .ADR0(\ins7/R1 [1]),
    .O(N154)
  );
  X_SFF #(
    .LOC ( "SLICE_X50Y126" ),
    .INIT ( 1'b0 ))
  \ins8/DFF7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins8/DFF7/CLK ),
    .I(\NlwBufferSignal_ins8/DFF7/IN ),
    .O(\ins8/DFF7_3681 ),
    .SRST(\ins8/DFF2_0_0 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X53Y136" ),
    .INIT ( 64'hF00000F0F00000F0 ))
  \ins8/C45_SW1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR2(\ins1/ans_ex [1]),
    .ADR3(\ins8/Reg5 [3]),
    .ADR4(\ins8/Reg4 [3]),
    .O(N262)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X53Y136" ),
    .INIT ( 64'hFDA8FDFDFDA8A8A8 ))
  \ins3/Mmux_n003511_SW1  (
    .ADR5(\ins3/BR<0>_0 ),
    .ADR3(\ins6/ans_wb [0]),
    .ADR1(\ins4/Ex_out<0>_0 ),
    .ADR2(\ins8/DFF9_3315 ),
    .ADR4(\ins8/Reg7[4]_Reg4[4]_equal_67_o ),
    .ADR0(\ins8/Reg6[4]_Reg4[4]_equal_65_o ),
    .O(N84)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X53Y136" ),
    .INIT ( 64'hAAAAAAAAFF33CC00 ))
  \ins3/Mmux_n003511  (
    .ADR2(1'b1),
    .ADR0(\ins1/ans_ex [0]),
    .ADR1(\ins4/DM_out [0]),
    .ADR5(\ins8/C4 ),
    .ADR4(N83),
    .ADR3(N84),
    .O(\ins3/Mmux_n00351 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y137" ),
    .INIT ( 64'hFFCCFFCCAAAAF0F0 ))
  \ins3/Mmux_n003521_SW1  (
    .ADR2(\ins3/BR [1]),
    .ADR0(\ins6/ans_wb [1]),
    .ADR1(\ins4/Ex_out<1>_0 ),
    .ADR3(\ins8/DFF9_3315 ),
    .ADR4(\ins8/Reg7[4]_Reg4[4]_equal_67_o ),
    .ADR5(\ins8/Reg6[4]_Reg4[4]_equal_65_o ),
    .O(N93)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y137" ),
    .INIT ( 64'h3300F3C02222E2E2 ))
  \ins3/Mmux_n003411_SW0  (
    .ADR0(\ins3/AR<0>_0 ),
    .ADR2(\ins4/Ex_out<0>_0 ),
    .ADR3(\ins6/ans_wb [0]),
    .ADR4(\ins8/DFF9_3315 ),
    .ADR5(\ins8/Reg7[4]_Reg2[4]_equal_61_o ),
    .ADR1(\ins8/Reg6[4]_Reg2[4]_equal_59_o ),
    .O(N89)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y137" ),
    .INIT ( 64'hA9A9AAA559595A55 ))
  \ins1/ALU_Execution/type2/Add/inst1/Mxor_x_y_XOR_2_o_xo<0>1  (
    .ADR5(\ins1/ans_ex [0]),
    .ADR4(\ins4/DM_out [0]),
    .ADR2(\ins8/C1 ),
    .ADR1(N90),
    .ADR3(N89),
    .ADR0(B_0_OBUF_0),
    .O(\ins1/ALU_Execution/type2/Add/inst1/x_y_XOR_2_o )
  );
  X_SFF #(
    .LOC ( "SLICE_X50Y136" ),
    .INIT ( 1'b0 ))
  \ins8/Reg7_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins8/Reg7_3/CLK ),
    .I(\NlwBufferSignal_ins8/Reg7_3/IN ),
    .O(\ins8/Reg7 [3]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y136" ),
    .INIT ( 64'h7FF7DFFDBFFBEFFE ))
  \ins8/Reg7[4]_Reg2[4]_equal_61_o5_SW0  (
    .ADR0(\ins8/Reg2 [0]),
    .ADR5(\ins8/Reg7 [0]),
    .ADR4(\ins8/Reg2 [1]),
    .ADR1(\ins8/Reg7 [1]),
    .ADR3(\ins8/Reg2 [2]),
    .ADR2(\ins8/Reg7 [2]),
    .O(N37)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y136" ),
    .INIT ( 64'h0000A05000000A05 ))
  \ins8/Reg7[4]_Reg2[4]_equal_61_o5  (
    .ADR1(1'b1),
    .ADR3(\ins8/Reg7<4>_0 ),
    .ADR2(\ins8/Reg7 [3]),
    .ADR0(\ins8/Reg2 [4]),
    .ADR5(\ins8/Reg2 [3]),
    .ADR4(N37),
    .O(\ins8/Reg7[4]_Reg2[4]_equal_61_o )
  );
  X_SFF #(
    .LOC ( "SLICE_X50Y136" ),
    .INIT ( 1'b0 ))
  \ins8/Reg7_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins8/Reg7_0/CLK ),
    .I(\NlwBufferSignal_ins8/Reg7_0/IN ),
    .O(\ins8/Reg7 [0]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_BUF   \ins1/DM_data<1>/ins1/DM_data<1>_CMUX_Delay  (
    .I(B_1_OBUF_pack_4),
    .O(B_1_OBUF_3411)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X56Y138" ))
  \ins3/Mmux_n003522  (
    .IA(N288),
    .IB(N289),
    .O(B_1_OBUF_pack_4),
    .SEL(\ins8/Reg6[4]_Reg4[4]_equal_65_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X56Y138" ),
    .INIT ( 64'hFDFDECEC08084C4C ))
  \ins3/Mmux_n003522_F  (
    .ADR3(1'b1),
    .ADR0(\ins8/Reg7[4]_Reg4[4]_equal_67_o ),
    .ADR2(\ins6/ans_wb [1]),
    .ADR1(N188),
    .ADR5(N189),
    .ADR4(\ins3/BR [1]),
    .O(N288)
  );
  X_SFF #(
    .LOC ( "SLICE_X56Y138" ),
    .INIT ( 1'b0 ))
  \ins1/DM_data_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins1/DM_data_1/CLK ),
    .I(B_1_OBUF_pack_4),
    .O(\ins1/DM_data [1]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X56Y138" ),
    .INIT ( 64'hFDFDECEC08084C4C ))
  \ins3/Mmux_n003522_G  (
    .ADR3(1'b1),
    .ADR0(\ins8/DFF9_3315 ),
    .ADR2(\ins4/DM_out [1]),
    .ADR1(N188),
    .ADR5(N189),
    .ADR4(\ins4/Ex_out<1>_0 ),
    .O(N289)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X56Y138" ),
    .INIT ( 64'hF0F0F0F0FFFFFF66 ))
  \ins3/Mmux_n003521_SW3  (
    .ADR0(\ins8/Reg4 [4]),
    .ADR1(\ins8/Reg5<4>_0 ),
    .ADR2(\ins2/ins_prv [2]),
    .ADR5(\ins8/DFF5_3280 ),
    .ADR4(N264),
    .ADR3(N43),
    .O(N189)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X56Y138" ),
    .INIT ( 64'hAAAAAFAA00000F0A ))
  \ins1/ALU_Execution/Mmux_ans_tmp168_SW0_SW1  (
    .ADR1(1'b1),
    .ADR3(\ins1/ALU_Execution/Mmux_ans_tmp112 ),
    .ADR0(\ins1/ALU_Execution/Mmux_ans_tmp125_3538 ),
    .ADR2(B_0_OBUF_0),
    .ADR4(B_1_OBUF_3411),
    .ADR5(\ins1/ALU_Execution/type3/Mmux__n007021 ),
    .O(N280)
  );
  X_BUF   \ins1/ALU_Execution/Mmux_ans_tmp111/ins1/ALU_Execution/Mmux_ans_tmp111_CMUX_Delay  (
    .I(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_58_o ),
    .O(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_58_o_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X59Y129" ),
    .INIT ( 64'h0000202000002020 ))
  \ins1/ALU_Execution/Mmux_ans_tmp1111  (
    .ADR3(1'b1),
    .ADR2(\ins2/ins_prv [21]),
    .ADR0(\ins2/ins_prv [20]),
    .ADR1(\ins2/ins_prv [23]),
    .ADR4(\ins2/ins_prv [19]),
    .ADR5(1'b1),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp111 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X59Y129" ),
    .INIT ( 32'h20200000 ))
  \ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_58_o1  (
    .ADR3(1'b1),
    .ADR2(\ins2/ins_prv [21]),
    .ADR0(\ins2/ins_prv [20]),
    .ADR1(\ins2/ins_prv [23]),
    .ADR4(\ins2/ins_prv [19]),
    .O(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_58_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X56Y137" ),
    .INIT ( 64'hFCFCFCFCFF55AA00 ))
  \ins3/Mmux_n003481_SW1  (
    .ADR4(\ins3/AR [7]),
    .ADR2(\ins4/Ex_out [7]),
    .ADR3(\ins6/ans_wb [7]),
    .ADR1(\ins8/DFF9_3315 ),
    .ADR0(\ins8/Reg7[4]_Reg2[4]_equal_61_o ),
    .ADR5(\ins8/Reg6[4]_Reg2[4]_equal_59_o ),
    .O(N128)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X56Y137" ),
    .INIT ( 64'hAAAAAAAAFCFC3030 ))
  \ins3/Mmux_n003481  (
    .ADR3(1'b1),
    .ADR0(\ins1/ans_ex [7]),
    .ADR1(\ins4/DM_out [7]),
    .ADR5(\ins8/C1 ),
    .ADR2(N127),
    .ADR4(N128),
    .O(A_7_OBUF_3306)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X56Y137" ),
    .INIT ( 64'hFFCCFFAAF0CCF0AA ))
  \ins3/Mmux_n003421_SW1  (
    .ADR0(\ins3/AR [1]),
    .ADR1(\ins6/ans_wb [1]),
    .ADR5(\ins4/Ex_out<1>_0 ),
    .ADR2(\ins8/DFF9_3315 ),
    .ADR4(\ins8/Reg7[4]_Reg2[4]_equal_61_o ),
    .ADR3(\ins8/Reg6[4]_Reg2[4]_equal_59_o ),
    .O(N87)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X56Y137" ),
    .INIT ( 64'hDD88DD88DDDD8888 ))
  \ins3/Mmux_n003421  (
    .ADR2(1'b1),
    .ADR1(\ins1/ans_ex [1]),
    .ADR5(\ins4/DM_out [1]),
    .ADR0(\ins8/C1 ),
    .ADR4(N86),
    .ADR3(N87),
    .O(A_1_OBUF_3293)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X57Y137" ),
    .INIT ( 64'h0000FF00D8D8D8D8 ))
  \ins3/Mmux_n003481_SW0  (
    .ADR2(\ins3/AR [7]),
    .ADR3(\ins4/Ex_out [7]),
    .ADR1(\ins6/ans_wb [7]),
    .ADR4(\ins8/DFF9_3315 ),
    .ADR0(\ins8/Reg7[4]_Reg2[4]_equal_61_o ),
    .ADR5(\ins8/Reg6[4]_Reg2[4]_equal_59_o ),
    .O(N127)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X57Y137" ),
    .INIT ( 64'hFFFFFFFF2A0A2000 ))
  \ins1/ALU_Execution/Mmux_ans_tmp247  (
    .ADR5(\ins1/ALU_Execution/Mmux_ans_tmp244_3585 ),
    .ADR0(\ins1/ALU_Execution/Mmux_ans_tmp245_3586 ),
    .ADR3(A_7_OBUF_3306),
    .ADR1(B_0_OBUF_0),
    .ADR2(B_1_OBUF_3411),
    .ADR4(\ins1/ALU_Execution/Sh191 ),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp246_3667 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X57Y137" ),
    .INIT ( 64'hE2F0E2AAE2F0E2AA ))
  \ins1/ALU_Execution/Sh1911  (
    .ADR5(1'b1),
    .ADR1(\ins2/ins_prv [1]),
    .ADR3(\ins8/DFF5_3280 ),
    .ADR4(\ins3/Mmux_n00351 ),
    .ADR2(A_6_OBUF_3309),
    .ADR0(\ins3/Mmux_n0034611 ),
    .O(\ins1/ALU_Execution/Sh191 )
  );
  X_BUF   \ins1/ALU_Execution/Mmux_ans_tmp102/ins1/ALU_Execution/Mmux_ans_tmp102_DMUX_Delay  (
    .I(\ins1/ALU_Execution/Mmux_ans_tmp101 ),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp101_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X59Y130" ),
    .INIT ( 64'h33757F5533757F55 ))
  \ins1/ALU_Execution/Mmux_ans_tmp1021  (
    .ADR4(\ins2/ins_prv [19]),
    .ADR3(\ins2/ins_prv [20]),
    .ADR2(\ins2/ins_prv [22]),
    .ADR0(\ins2/ins_prv [23]),
    .ADR1(\ins2/ins_prv [21]),
    .ADR5(1'b1),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp102 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X59Y130" ),
    .INIT ( 32'h888280A2 ))
  \ins1/ALU_Execution/Mmux_ans_tmp1011  (
    .ADR4(\ins2/ins_prv [19]),
    .ADR3(\ins2/ins_prv [20]),
    .ADR2(\ins2/ins_prv [22]),
    .ADR0(\ins2/ins_prv [23]),
    .ADR1(\ins2/ins_prv [21]),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp101 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X57Y135" ),
    .INIT ( 64'hFFFF3333FEDC3210 ))
  \ins3/Mmux_n003541_SW1  (
    .ADR2(\ins3/BR [3]),
    .ADR3(\ins6/ans_wb [3]),
    .ADR4(\ins1/ans_ex [3]),
    .ADR0(\ins8/Reg7[4]_Reg4[4]_equal_67_o ),
    .ADR1(\ins8/C4 ),
    .ADR5(\ins8/Reg6[4]_Reg4[4]_equal_65_o ),
    .O(N72)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X57Y135" ),
    .INIT ( 64'hAAA88A8822200200 ))
  \ins1/ALU_Execution/Mmux_ans_tmp161_SW0  (
    .ADR5(\ins2/ins_prv [4]),
    .ADR1(\ins8/DFF5_3280 ),
    .ADR0(\ins1/ALU_Execution/Mmux_ans_tmp121_3281 ),
    .ADR2(ans_dm_3_OBUF_3408),
    .ADR3(N71),
    .ADR4(N72),
    .O(N181)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X57Y135" ),
    .INIT ( 64'hF00FA55AA55A0FF0 ))
  \ins1/ALU_Execution/type1/Add/inst3/Mxor_sum_xo<0>1  (
    .ADR1(1'b1),
    .ADR0(A_1_OBUF_3293),
    .ADR2(A_2_OBUF_3301),
    .ADR3(B_2_OBUF_3412),
    .ADR4(B_1_OBUF_3411),
    .ADR5(\ins1/ALU_Execution/type1/Add/temp_carryout[0] ),
    .O(\ins1/ALU_Execution/ans_tmp_temp<0> [2])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X57Y135" ),
    .INIT ( 64'h88AA88AA88008800 ))
  \ins1/ALU_Execution/type1/Add/temp_carryout<0>1  (
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR1(\ins2/ins_prv [1]),
    .ADR3(\ins8/DFF5_3280 ),
    .ADR5(\ins3/Mmux_n00351 ),
    .ADR0(A_0_OBUF_3297),
    .O(\ins1/ALU_Execution/type1/Add/temp_carryout[0] )
  );
  X_BUF   \N17/N17_AMUX_Delay  (
    .I(N157),
    .O(N157_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X59Y112" ),
    .INIT ( 64'hA0A0E4E4A0A0E4E4 ))
  \ins2/Mmux_Current_Address3_SW0  (
    .ADR3(1'b1),
    .ADR2(\ins7/R1 [2]),
    .ADR4(\ins7/Q [0]),
    .ADR1(ins_2_OBUF_3223),
    .ADR0(\ins7/RET_Out ),
    .ADR5(1'b1),
    .O(N17)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X59Y112" ),
    .INIT ( 32'hA000E400 ))
  \ins7/out62_SW3  (
    .ADR3(reset_IBUF_3189),
    .ADR2(\ins7/R1 [2]),
    .ADR4(\ins7/Q [0]),
    .ADR1(ins_2_OBUF_3223),
    .ADR0(\ins7/RET_Out ),
    .O(N157)
  );
  X_BUF   \ins1/DM_data<0>/ins1/DM_data<0>_CMUX_Delay  (
    .I(B_0_OBUF_1399),
    .O(B_0_OBUF_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X57Y138" ))
  \ins3/Mmux_n003512  (
    .IA(N290),
    .IB(N291),
    .O(B_0_OBUF_1399),
    .SEL(\ins8/Reg6[4]_Reg4[4]_equal_65_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X57Y138" ),
    .INIT ( 64'hFAFAFCFC50503030 ))
  \ins3/Mmux_n003512_F  (
    .ADR3(1'b1),
    .ADR4(\ins8/Reg7[4]_Reg4[4]_equal_67_o ),
    .ADR0(\ins6/ans_wb [0]),
    .ADR2(N191),
    .ADR5(N192),
    .ADR1(\ins3/BR<0>_0 ),
    .O(N290)
  );
  X_SFF #(
    .LOC ( "SLICE_X57Y138" ),
    .INIT ( 1'b0 ))
  \ins1/DM_data_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins1/DM_data_0/CLK ),
    .I(B_0_OBUF_1399),
    .O(\ins1/DM_data [0]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X57Y138" ),
    .INIT ( 64'hF1F1E0E0FBFB4040 ))
  \ins3/Mmux_n003512_G  (
    .ADR3(1'b1),
    .ADR0(\ins8/DFF9_3315 ),
    .ADR5(\ins4/DM_out [0]),
    .ADR4(N191),
    .ADR2(N192),
    .ADR1(\ins4/Ex_out<0>_0 ),
    .O(N291)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X57Y138" ),
    .INIT ( 64'hF5F5F5F5E4F5F5E4 ))
  \ins3/Mmux_n003511_SW3  (
    .ADR3(\ins8/Reg4 [4]),
    .ADR4(\ins8/Reg5<4>_0 ),
    .ADR2(\ins2/ins_prv [1]),
    .ADR0(\ins8/DFF5_3280 ),
    .ADR5(N268),
    .ADR1(N43),
    .O(N192)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X57Y138" ),
    .INIT ( 64'h87788778A55A0FF0 ))
  \ins1/ALU_Execution/type1/Add/inst2/Mxor_sum_xo<0>1  (
    .ADR1(\ins2/ins_prv [1]),
    .ADR5(\ins8/DFF5_3280 ),
    .ADR0(A_0_OBUF_3297),
    .ADR3(A_1_OBUF_3293),
    .ADR4(\ins3/Mmux_n00351 ),
    .ADR2(B_1_OBUF_3411),
    .O(\ins1/ALU_Execution/ans_tmp_temp<0> [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X56Y130" ),
    .INIT ( 64'hFFFEEEFE55544454 ))
  \ins3/Mmux_n003551_SW1  (
    .ADR2(\ins3/BR<4>_0 ),
    .ADR4(\ins6/ans_wb [4]),
    .ADR5(\ins1/ans_ex [4]),
    .ADR3(\ins8/Reg7[4]_Reg4[4]_equal_67_o ),
    .ADR0(\ins8/C4 ),
    .ADR1(\ins8/Reg6[4]_Reg4[4]_equal_65_o ),
    .O(N69)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X57Y139" ),
    .INIT ( 64'hCCFACC0ACCF0CC00 ))
  \ins1/ALU_Execution/Mmux_ans_tmp47  (
    .ADR5(A_2_OBUF_3301),
    .ADR3(B_2_OBUF_3412),
    .ADR0(B_1_OBUF_3411),
    .ADR2(B_0_OBUF_0),
    .ADR4(\ins1/ALU_Execution/Sh161 ),
    .ADR1(\ins1/ALU_Execution/Sh20 ),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp46_3522 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X57Y139" ),
    .INIT ( 64'hAAEEE0E00000E0E0 ))
  \ins1/ALU_Execution/Mmux_ans_tmp87_SW0  (
    .ADR1(\ins1/ALU_Execution/Mmux_ans_tmp112 ),
    .ADR0(\ins1/ALU_Execution/Mmux_ans_tmp125_3538 ),
    .ADR5(A_7_OBUF_3306),
    .ADR3(B_0_OBUF_0),
    .ADR4(B_1_OBUF_3411),
    .ADR2(\ins1/ALU_Execution/Sh191 ),
    .O(N216)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X57Y139" ),
    .INIT ( 64'hAAFFCCF0AA00CCF0 ))
  \ins1/ALU_Execution/Sh251  (
    .ADR2(A_1_OBUF_3293),
    .ADR1(A_2_OBUF_3301),
    .ADR5(A_3_OBUF_3298),
    .ADR0(A_4_OBUF_3305),
    .ADR3(B_0_OBUF_0),
    .ADR4(B_1_OBUF_3411),
    .O(\ins1/ALU_Execution/Sh251_3527 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X56Y126" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \ins1/reset_inv1_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .ADR4(reset_IBUF_3189),
    .O(\ins1/reset_inv )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X56Y139" ),
    .INIT ( 64'hFF00BB88EE22AAAA ))
  \ins1/ALU_Execution/Sh1611  (
    .ADR2(1'b1),
    .ADR4(\ins2/ins_prv [2]),
    .ADR1(\ins8/DFF5_3280 ),
    .ADR5(\ins3/Mmux_n00352 ),
    .ADR0(A_1_OBUF_3293),
    .ADR3(A_3_OBUF_3298),
    .O(\ins1/ALU_Execution/Sh161 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X56Y139" ),
    .INIT ( 64'h4747474747474747 ))
  \ins1/ALU_Execution/Sh27_SW0_SW0  (
    .ADR4(1'b1),
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR2(A_3_OBUF_3298),
    .ADR0(A_4_OBUF_3305),
    .ADR1(B_0_OBUF_0),
    .O(N257)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X56Y139" ),
    .INIT ( 64'hE0E000EEC0C000CC ))
  \ins1/ALU_Execution/Mmux_ans_tmp168_SW0_SW0  (
    .ADR1(\ins1/ALU_Execution/Mmux_ans_tmp112 ),
    .ADR0(\ins1/ALU_Execution/Mmux_ans_tmp125_3538 ),
    .ADR4(B_1_OBUF_3411),
    .ADR5(\ins1/ALU_Execution/type3/Mmux__n007021 ),
    .ADR2(\ins1/ALU_Execution/Sh191 ),
    .ADR3(N257),
    .O(N279)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X56Y135" ),
    .INIT ( 64'hFFFF0000CCAACCAA ))
  \ins3/Mmux_n003461_2  (
    .ADR2(1'b1),
    .ADR4(\ins1/ans_ex [5]),
    .ADR3(\ins4/DM_out [5]),
    .ADR5(\ins8/C1 ),
    .ADR0(N133),
    .ADR1(N134),
    .O(\ins3/Mmux_n0034611 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X56Y135" ),
    .INIT ( 64'hFFFF11DDEE220000 ))
  \ins1/ALU_Execution/Sh611  (
    .ADR2(1'b1),
    .ADR3(\ins2/ins_prv [2]),
    .ADR1(\ins8/DFF5_3280 ),
    .ADR0(\ins3/Mmux_n00352 ),
    .ADR5(A_6_OBUF_3309),
    .ADR4(A_4_OBUF_3305),
    .O(\ins1/ALU_Execution/Sh61 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X56Y135" ),
    .INIT ( 64'hFF5FFC0CF757F000 ))
  \ins1/ALU_Execution/Mmux_ans_tmp329_SW1  (
    .ADR4(A_7_OBUF_3306),
    .ADR0(N219),
    .ADR5(A_5_OBUF_3302),
    .ADR2(B_0_OBUF_0),
    .ADR1(B_1_OBUF_3411),
    .ADR3(\ins1/ALU_Execution/Sh61 ),
    .O(N52)
  );
  X_BUF   \ins1/ALU_Execution/Mmux_ans_tmp125/ins1/ALU_Execution/Mmux_ans_tmp125_DMUX_Delay  (
    .I(\ins4/Ex_out [3]),
    .O(\ins4/Ex_out<3>_0 )
  );
  X_BUF   \ins1/ALU_Execution/Mmux_ans_tmp125/ins1/ALU_Execution/Mmux_ans_tmp125_CMUX_Delay  (
    .I(\ins4/Ex_out [2]),
    .O(\ins4/Ex_out<2>_0 )
  );
  X_BUF   \ins1/ALU_Execution/Mmux_ans_tmp125/ins1/ALU_Execution/Mmux_ans_tmp125_BMUX_Delay  (
    .I(\ins4/Ex_out [1]),
    .O(\ins4/Ex_out<1>_0 )
  );
  X_BUF   \ins1/ALU_Execution/Mmux_ans_tmp125/ins1/ALU_Execution/Mmux_ans_tmp125_AMUX_Delay  (
    .I(\ins4/Ex_out [0]),
    .O(\ins4/Ex_out<0>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X57Y136" ),
    .INIT ( 64'h0C1D3F1D00000000 ))
  \ins1/ALU_Execution/Mmux_ans_tmp204  (
    .ADR2(\ins2/ins_prv [4]),
    .ADR1(\ins8/DFF5_3280 ),
    .ADR5(\ins1/ALU_Execution/Mmux_ans_tmp110 ),
    .ADR3(ans_dm_3_OBUF_3408),
    .ADR4(N72),
    .ADR0(N71),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp125_3538 )
  );
  X_SFF #(
    .LOC ( "SLICE_X57Y136" ),
    .INIT ( 1'b0 ))
  \ins4/Ex_out_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins4/Ex_out_3/CLK ),
    .I(\NlwBufferSignal_ins4/Ex_out_3/IN ),
    .O(\ins4/Ex_out [3]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X57Y136" ),
    .INIT ( 64'hFF000000FFD800D8 ))
  \ins3/Mmux_n003541_SW0  (
    .ADR2(\ins3/BR [3]),
    .ADR1(\ins6/ans_wb [3]),
    .ADR4(\ins1/ans_ex [3]),
    .ADR0(\ins8/Reg7[4]_Reg4[4]_equal_67_o ),
    .ADR3(\ins8/C4 ),
    .ADR5(\ins8/Reg6[4]_Reg4[4]_equal_65_o ),
    .O(N71)
  );
  X_SFF #(
    .LOC ( "SLICE_X57Y136" ),
    .INIT ( 1'b0 ))
  \ins4/Ex_out_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins4/Ex_out_2/CLK ),
    .I(\NlwBufferSignal_ins4/Ex_out_2/IN ),
    .O(\ins4/Ex_out [2]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X57Y136" ),
    .INIT ( 1'b0 ))
  \ins4/Ex_out_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins4/Ex_out_1/CLK ),
    .I(\NlwBufferSignal_ins4/Ex_out_1/IN ),
    .O(\ins4/Ex_out [1]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X57Y136" ),
    .INIT ( 64'hF3F3FF77F3F3BB33 ))
  \ins1/ALU_Execution/Mmux_ans_tmp325_SW0  (
    .ADR2(\ins2/ins_prv [4]),
    .ADR4(\ins8/DFF5_3280 ),
    .ADR1(\ins1/ALU_Execution/Mmux_ans_tmp110 ),
    .ADR0(ans_dm_3_OBUF_3408),
    .ADR3(N72),
    .ADR5(N71),
    .O(N219)
  );
  X_SFF #(
    .LOC ( "SLICE_X57Y136" ),
    .INIT ( 1'b0 ))
  \ins4/Ex_out_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins4/Ex_out_0/CLK ),
    .I(\NlwBufferSignal_ins4/Ex_out_0/IN ),
    .O(\ins4/Ex_out [0]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y127" ),
    .INIT ( 64'hEE004400EE004400 ))
  \ins2/Mmux_ins191  (
    .ADR5(1'b1),
    .ADR2(1'b1),
    .ADR3(reset_IBUF_3189),
    .ADR0(\ins5/Q [1]),
    .ADR1(\ins2/PM_out [4]),
    .ADR4(\ins2/ins_prv [4]),
    .O(ins_4_OBUF_3240)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X59Y138" ),
    .INIT ( 64'h0A000A220A880AAA ))
  \ins1/ALU_Execution/Mmux_ans_tmp246  (
    .ADR2(\ins2/ins_prv [3]),
    .ADR3(\ins8/DFF5_3280 ),
    .ADR0(\ins1/ALU_Execution/Mmux_ans_tmp112 ),
    .ADR1(ans_dm_2_OBUF_3406),
    .ADR5(N75),
    .ADR4(N74),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp245_3586 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X59Y138" ),
    .INIT ( 64'h000000000F0F0000 ))
  \ins1/ALU_Execution/Mmux_ans_tmp82211  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR5(\ins1/ALU_Execution/op_dec[4]_PWR_3_o_equal_29_o_0 ),
    .ADR4(\ins1/ALU_Execution/Mmux_ans_tmp207_3263 ),
    .ADR2(B_2_OBUF_3412),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp8221 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X59Y138" ),
    .INIT ( 64'h3CC30FF03CC30FF0 ))
  \ins1/ALU_Execution/type2/Add/inst2/Mxor_sum_xo<0>1  (
    .ADR0(1'b1),
    .ADR5(1'b1),
    .ADR1(A_0_OBUF_3297),
    .ADR3(A_1_OBUF_3293),
    .ADR2(B_1_OBUF_3411),
    .ADR4(B_0_OBUF_0),
    .O(\ins1/ALU_Execution/ans_tmp_temp<1>[1] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X59Y138" ),
    .INIT ( 64'hEFECAFA0ECECA0A0 ))
  \ins1/ALU_Execution/Mmux_ans_tmp81  (
    .ADR5(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_45_o ),
    .ADR1(\ins1/ALU_Execution/Mmux_ans_tmp121_3281 ),
    .ADR2(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_44_o_0 ),
    .ADR4(B_1_OBUF_3411),
    .ADR0(\ins1/ALU_Execution/ans_tmp_temp<0> [1]),
    .ADR3(\ins1/ALU_Execution/ans_tmp_temp<1>[1] ),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp8 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X59Y134" ),
    .INIT ( 64'h339399C99399C9CC ))
  \ins1/ALU_Execution/type2/Add/inst6/Mxor_sum_xo<0>1  (
    .ADR0(B_4_OBUF_3414),
    .ADR2(B_3_OBUF_3413),
    .ADR5(A_3_OBUF_3298),
    .ADR4(A_4_OBUF_3305),
    .ADR1(\ins1/ALU_Execution/type2/Add/inst6/x_y_XOR_2_o ),
    .ADR3(\ins1/ALU_Execution/type2/Add/temp_carryout[2] ),
    .O(\ins1/ALU_Execution/ans_tmp_temp<1>[5] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X59Y134" ),
    .INIT ( 64'hB000F0B0FBF0FFFB ))
  \ins1/ALU_Execution/type2/Add/inst3/carryout1  (
    .ADR0(A_0_OBUF_3297),
    .ADR3(A_1_OBUF_3293),
    .ADR2(A_2_OBUF_3301),
    .ADR5(B_2_OBUF_3412),
    .ADR1(B_0_OBUF_0),
    .ADR4(B_1_OBUF_3411),
    .O(\ins1/ALU_Execution/type2/Add/temp_carryout[2] )
  );
  X_SFF #(
    .LOC ( "SLICE_X59Y135" ),
    .INIT ( 1'b0 ))
  \ins1/ans_ex_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins1/ans_ex_5/CLK ),
    .I(\ins1/ans_tmp [5]),
    .O(\ins1/ans_ex [5]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X59Y135" ),
    .INIT ( 64'hFFFFFC00FFFFF000 ))
  \ins1/ALU_Execution/Mmux_ans_tmp2413  (
    .ADR0(1'b1),
    .ADR3(\ins1/ALU_Execution/Mmux_ans_tmp122_3261 ),
    .ADR2(\ins1/ALU_Execution/Mmux_ans_tmp241_3490 ),
    .ADR5(\ins1/ALU_Execution/Mmux_ans_tmp113_0 ),
    .ADR1(\ins1/ALU_Execution/Mmux_ans_tmp2411 ),
    .ADR4(\ins1/ALU_Execution/Mmux_ans_tmp24 ),
    .O(\ins1/ans_tmp [5])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X59Y135" ),
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \ins1/ALU_Execution/Mmux_flag_ex27_SW0_SW0  (
    .ADR1(\ins1/ans_tmp [1]),
    .ADR5(\ins1/ans_tmp [3]),
    .ADR2(\ins1/ans_tmp [2]),
    .ADR3(\ins1/ans_tmp [0]),
    .ADR0(\ins1/ans_tmp [4]),
    .ADR4(\ins1/ans_tmp [5]),
    .O(N171)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X59Y135" ),
    .INIT ( 64'hCCCCCCCCCCC80000 ))
  \ins1/ALU_Execution/Mmux_ans_tmp2011  (
    .ADR1(\ins1/ALU_Execution/Mmux_ans_tmp113_0 ),
    .ADR4(\ins1/ALU_Execution/Mmux_ans_tmp102 ),
    .ADR5(\ins1/ALU_Execution/Mmux_ans_tmp202 ),
    .ADR2(\ins1/ALU_Execution/Mmux_ans_tmp209 ),
    .ADR0(\ins1/ALU_Execution/Mmux_ans_tmp206_3590 ),
    .ADR3(\ins1/ALU_Execution/Mmux_ans_tmp205_3537 ),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp2010_3707 )
  );
  X_SFF #(
    .LOC ( "SLICE_X59Y135" ),
    .INIT ( 1'b0 ))
  \ins1/ans_ex_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins1/ans_ex_4/CLK ),
    .I(\ins1/ans_tmp [4]),
    .O(\ins1/ans_ex [4]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X59Y135" ),
    .INIT ( 64'hFFFFEEECFFFFAAA0 ))
  \ins1/ALU_Execution/Mmux_ans_tmp2013  (
    .ADR0(\ins1/ALU_Execution/Mmux_ans_tmp122_3261 ),
    .ADR1(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_44_o_0 ),
    .ADR2(\ins1/ALU_Execution/Mmux_ans_tmp20 ),
    .ADR4(\ins1/ALU_Execution/Mmux_ans_tmp2011_3677 ),
    .ADR5(\ins1/ALU_Execution/ans_tmp_temp<0> [4]),
    .ADR3(\ins1/ALU_Execution/Mmux_ans_tmp2010_3707 ),
    .O(\ins1/ans_tmp [4])
  );
  X_SFF #(
    .LOC ( "SLICE_X58Y123" ),
    .INIT ( 1'b0 ))
  \ins2/ins_prv_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/ins_prv_3/CLK ),
    .I(ins_3_OBUF_3233),
    .O(\ins2/ins_prv [3]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y123" ),
    .INIT ( 64'hF000CC00F000CC00 ))
  \ins2/Mmux_ins181  (
    .ADR0(1'b1),
    .ADR5(1'b1),
    .ADR3(reset_IBUF_3189),
    .ADR2(\ins2/ins_prv [3]),
    .ADR4(\ins5/Q [1]),
    .ADR1(\ins2/PM_out [3]),
    .O(ins_3_OBUF_3233)
  );
  X_SFF #(
    .LOC ( "SLICE_X58Y123" ),
    .INIT ( 1'b0 ))
  \ins2/ins_prv_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/ins_prv_2/CLK ),
    .I(ins_2_OBUF_3223),
    .O(\ins2/ins_prv [2]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y123" ),
    .INIT ( 64'hCC00FF00CC000000 ))
  \ins2/Mmux_ins171  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR3(reset_IBUF_3189),
    .ADR1(\ins2/ins_prv [2]),
    .ADR4(\ins5/Q [1]),
    .ADR5(\ins2/PM_out [2]),
    .O(ins_2_OBUF_3223)
  );
  X_SFF #(
    .LOC ( "SLICE_X58Y123" ),
    .INIT ( 1'b0 ))
  \ins2/ins_prv_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/ins_prv_1/CLK ),
    .I(ins_1_OBUF_3265),
    .O(\ins2/ins_prv [1]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y123" ),
    .INIT ( 64'hD800D800D800D800 ))
  \ins2/Mmux_ins121  (
    .ADR4(1'b1),
    .ADR5(1'b1),
    .ADR3(reset_IBUF_3189),
    .ADR1(\ins2/ins_prv [1]),
    .ADR0(\ins5/Q [1]),
    .ADR2(\ins2/PM_out [1]),
    .O(ins_1_OBUF_3265)
  );
  X_SFF #(
    .LOC ( "SLICE_X58Y123" ),
    .INIT ( 1'b0 ))
  \ins2/ins_prv_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/ins_prv_0/CLK ),
    .I(ins_0_OBUF_3209),
    .O(\ins2/ins_prv [0]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y123" ),
    .INIT ( 64'hE4E4E4E400000000 ))
  \ins2/Mmux_ins110  (
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(reset_IBUF_3189),
    .ADR2(\ins2/ins_prv [0]),
    .ADR0(\ins5/Q [1]),
    .ADR1(\ins2/PM_out [0]),
    .O(ins_0_OBUF_3209)
  );
  X_BUF   \ins6/ans_wb<3>/ins6/ans_wb<3>_BMUX_Delay  (
    .I(ans_dm_1_OBUF_pack_3),
    .O(ans_dm_1_OBUF_3311)
  );
  X_SFF #(
    .LOC ( "SLICE_X59Y136" ),
    .INIT ( 1'b0 ))
  \ins6/ans_wb_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins6/ans_wb_3/CLK ),
    .I(ans_dm_3_OBUF_3408),
    .O(\ins6/ans_wb [3]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X59Y136" ),
    .INIT ( 64'hDDDDDDDD88888888 ))
  \ins4/Mmux_ans_dm41  (
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR5(\ins4/Ex_out<3>_0 ),
    .ADR0(\ins8/DFF9_3315 ),
    .ADR1(\ins4/DM_out [3]),
    .O(ans_dm_3_OBUF_3408)
  );
  X_SFF #(
    .LOC ( "SLICE_X59Y136" ),
    .INIT ( 1'b0 ))
  \ins6/ans_wb_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins6/ans_wb_2/CLK ),
    .I(ans_dm_2_OBUF_3406),
    .O(\ins6/ans_wb [2]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X59Y136" ),
    .INIT ( 64'hFFAAFFAA55005500 ))
  \ins4/Mmux_ans_dm31  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\ins4/Ex_out<2>_0 ),
    .ADR0(\ins8/DFF9_3315 ),
    .ADR5(\ins4/DM_out [2]),
    .O(ans_dm_2_OBUF_3406)
  );
  X_SFF #(
    .LOC ( "SLICE_X59Y136" ),
    .INIT ( 1'b0 ))
  \ins6/ans_wb_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins6/ans_wb_0/CLK ),
    .I(ans_dm_0_OBUF_3312),
    .O(\ins6/ans_wb [0]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X59Y136" ),
    .INIT ( 64'hFF00F0F0FF00F0F0 ))
  \ins4/Mmux_ans_dm11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(\ins8/DFF9_3315 ),
    .ADR3(\ins4/DM_out [0]),
    .ADR2(\ins4/Ex_out<0>_0 ),
    .ADR5(1'b1),
    .O(ans_dm_0_OBUF_3312)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X59Y136" ),
    .INIT ( 32'hCCCCAAAA ))
  \ins4/Mmux_ans_dm21  (
    .ADR1(\ins4/DM_out [1]),
    .ADR0(\ins4/Ex_out<1>_0 ),
    .ADR4(\ins8/DFF9_3315 ),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .O(ans_dm_1_OBUF_pack_3)
  );
  X_SFF #(
    .LOC ( "SLICE_X59Y136" ),
    .INIT ( 1'b0 ))
  \ins6/ans_wb_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins6/ans_wb_1/CLK ),
    .I(\NlwBufferSignal_ins6/ans_wb_1/IN ),
    .O(\ins6/ans_wb [1]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X59Y136" ),
    .INIT ( 64'hFFCC00CCEEEE4444 ))
  \ins1/ALU_Execution/Mmux_ans_tmp249  (
    .ADR2(1'b1),
    .ADR3(\ins2/ins_prv [2]),
    .ADR5(\ins8/DFF5_3280 ),
    .ADR0(\ins3/Mmux_n00352 ),
    .ADR4(A_2_OBUF_3301),
    .ADR1(A_4_OBUF_3305),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp248_3588 )
  );
  X_SFF #(
    .LOC ( "SLICE_X59Y139" ),
    .INIT ( 1'b0 ))
  \ins1/ans_ex_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins1/ans_ex_1/CLK ),
    .I(\ins1/ans_tmp [1]),
    .O(\ins1/ans_ex [1]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X59Y139" ),
    .INIT ( 64'hFFFEF0F0FAFAF0F0 ))
  \ins1/ALU_Execution/Mmux_ans_tmp88  (
    .ADR5(\ins1/ALU_Execution/Mmux_ans_tmp113_0 ),
    .ADR4(\ins1/ALU_Execution/Mmux_ans_tmp122_3261 ),
    .ADR0(\ins1/ALU_Execution/Mmux_ans_tmp82_3526 ),
    .ADR2(\ins1/ALU_Execution/Mmux_ans_tmp8 ),
    .ADR1(\ins1/ALU_Execution/Mmux_ans_tmp83_3532 ),
    .ADR3(\ins1/ALU_Execution/Mmux_ans_tmp87_3710 ),
    .O(\ins1/ans_tmp [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X59Y139" ),
    .INIT ( 64'hCCCCC8C0CCCC0800 ))
  \ins1/ALU_Execution/Mmux_ans_tmp87  (
    .ADR1(\ins1/ALU_Execution/Mmux_ans_tmp102 ),
    .ADR2(B_2_OBUF_3412),
    .ADR0(\ins1/ALU_Execution/Sh251_3527 ),
    .ADR3(N217),
    .ADR4(\ins1/ALU_Execution/Mmux_ans_tmp84_3529 ),
    .ADR5(N216),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp87_3710 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X59Y139" ),
    .INIT ( 64'h0005000400000000 ))
  \ins1/ALU_Execution/Mmux_ans_tmp45  (
    .ADR4(\ins1/ALU_Execution/Mmux_ans_tmp207_3263 ),
    .ADR1(\ins1/ALU_Execution/Mmux_ans_tmp112 ),
    .ADR5(A_0_OBUF_3297),
    .ADR3(B_2_OBUF_3412),
    .ADR0(B_0_OBUF_0),
    .ADR2(B_1_OBUF_3411),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp44_3521 )
  );
  X_BUF   \ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_45_o/ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_45_o_AMUX_Delay  (
    .I(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_44_o ),
    .O(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_44_o_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y128" ),
    .INIT ( 64'h0005000000050000 ))
  \ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_45_o1  (
    .ADR1(1'b1),
    .ADR4(\ins2/ins_prv [19]),
    .ADR0(\ins2/ins_prv [20]),
    .ADR3(\ins2/ins_prv [21]),
    .ADR2(\ins2/ins_prv [23]),
    .ADR5(1'b1),
    .O(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_45_o )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X58Y128" ),
    .INIT ( 32'h00000005 ))
  \ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_44_o1  (
    .ADR1(1'b1),
    .ADR4(\ins2/ins_prv [19]),
    .ADR0(\ins2/ins_prv [20]),
    .ADR3(\ins2/ins_prv [21]),
    .ADR2(\ins2/ins_prv [23]),
    .O(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_44_o )
  );
  X_BUF   \ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_48_o/ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_48_o_AMUX_Delay  (
    .I(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_47_o ),
    .O(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_47_o_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y129" ),
    .INIT ( 64'h0020002000200020 ))
  \ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_48_o1  (
    .ADR4(1'b1),
    .ADR0(\ins2/ins_prv [19]),
    .ADR2(\ins2/ins_prv [21]),
    .ADR1(\ins2/ins_prv [20]),
    .ADR3(\ins2/ins_prv [23]),
    .ADR5(1'b1),
    .O(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_48_o )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X58Y129" ),
    .INIT ( 32'h00100010 ))
  \ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_47_o1  (
    .ADR4(1'b1),
    .ADR0(\ins2/ins_prv [19]),
    .ADR2(\ins2/ins_prv [21]),
    .ADR1(\ins2/ins_prv [20]),
    .ADR3(\ins2/ins_prv [23]),
    .O(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_47_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X59Y133" ),
    .INIT ( 64'hAAFA00F0AAFA00F0 ))
  \ins1/ALU_Execution/type2/Add/inst5/Mxor_sum_xo<0>1_SW1  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR2(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_45_o ),
    .ADR4(\ins1/ALU_Execution/Mmux_ans_tmp121_3281 ),
    .ADR3(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_44_o_0 ),
    .ADR0(B_4_OBUF_3414),
    .O(N186)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X59Y132" ),
    .INIT ( 64'hDDF555D5CCF000C0 ))
  \ins1/ALU_Execution/Mmux_ans_tmp242  (
    .ADR2(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_48_o ),
    .ADR5(\ins1/ALU_Execution/Mmux_ans_tmp111 ),
    .ADR3(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_47_o_0 ),
    .ADR4(A_5_OBUF_3302),
    .ADR1(B_5_OBUF_3415),
    .ADR0(\ins1/ALU_Execution/type2/Add/inst6/x_y_XOR_2_o ),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp241_3490 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X59Y132" ),
    .INIT ( 64'hF0AA0F55F0CC0F33 ))
  \ins1/ALU_Execution/type2/Add/inst6/Mxor_x_y_XOR_2_o_xo<0>1  (
    .ADR2(\ins2/ins_prv [6]),
    .ADR3(\ins8/DFF5_3280 ),
    .ADR5(ans_dm_5_OBUF_3409),
    .ADR0(N66),
    .ADR1(N65),
    .ADR4(A_5_OBUF_3302),
    .O(\ins1/ALU_Execution/type2/Add/inst6/x_y_XOR_2_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X59Y132" ),
    .INIT ( 64'h7BFFDEFF3FFFCFFF ))
  \ins1/ALU_Execution/Mmux_flag_ex23_SW1  (
    .ADR3(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_45_o ),
    .ADR4(A_0_OBUF_3297),
    .ADR0(A_3_OBUF_3298),
    .ADR5(B_3_OBUF_3413),
    .ADR1(B_0_OBUF_0),
    .ADR2(\ins1/ALU_Execution/type2/Add/inst5/x_y_XOR_2_o ),
    .O(N255)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y115" ),
    .INIT ( 64'hCF3FCA3ACF3FC535 ))
  \ins7/Mmux_n004221_SW1  (
    .ADR2(\ins7/RET_Out ),
    .ADR4(\ins7/Q [0]),
    .ADR5(ins_1_OBUF_3265),
    .ADR0(ins_0_OBUF_3209),
    .ADR3(\ins7/R1 [1]),
    .ADR1(\ins7/R1 [0]),
    .O(N78)
  );
  X_BUF   \ins1/ALU_Execution/Mmux_ans_tmp121/ins1/ALU_Execution/Mmux_ans_tmp121_DMUX_Delay  (
    .I(N116),
    .O(N116_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X59Y137" ),
    .INIT ( 64'h0000040400000404 ))
  \ins1/ALU_Execution/Mmux_ans_tmp1211  (
    .ADR3(1'b1),
    .ADR1(\ins2/ins_prv [20]),
    .ADR0(\ins2/ins_prv [21]),
    .ADR2(\ins2/ins_prv [23]),
    .ADR4(\ins2/ins_prv [19]),
    .ADR5(1'b1),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp121_3281 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X59Y137" ),
    .INIT ( 32'hFEFCFAF0 ))
  \ins1/ALU_Execution/Mmux_ans_tmp127_SW1  (
    .ADR3(\ins1/ALU_Execution/Mmux_ans_tmp123_3709 ),
    .ADR1(\ins2/ins_prv [20]),
    .ADR0(\ins2/ins_prv [21]),
    .ADR2(\ins2/ins_prv [23]),
    .ADR4(\ins2/ins_prv [19]),
    .O(N116)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X59Y137" ),
    .INIT ( 64'hEEEE8888FF44AA88 ))
  \ins1/ALU_Execution/Mmux_ans_tmp122  (
    .ADR2(1'b1),
    .ADR3(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_48_o ),
    .ADR5(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_47_o_0 ),
    .ADR1(\ins1/ALU_Execution/Mmux_ans_tmp111 ),
    .ADR0(A_2_OBUF_3301),
    .ADR4(B_2_OBUF_3412),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp123_3709 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X59Y137" ),
    .INIT ( 64'hEEAACC00FEFAFCF0 ))
  \ins1/ALU_Execution/Mmux_ans_tmp163  (
    .ADR3(\ins1/ans_ex [3]),
    .ADR1(\ins1/ALU_Execution/Mmux_ans_tmp101_0 ),
    .ADR2(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_58_o_0 ),
    .ADR5(B_3_OBUF_3413),
    .ADR4(A_3_OBUF_3298),
    .ADR0(\ins1/ALU_Execution/Mmux_ans_tmp81_3520 ),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp162_3608 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X59Y137" ),
    .INIT ( 64'hF0F0F0F0C080C000 ))
  \ins1/ALU_Execution/Mmux_ans_tmp127_SW0  (
    .ADR1(\ins1/ALU_Execution/Mmux_ans_tmp113_0 ),
    .ADR2(\ins1/ALU_Execution/Mmux_ans_tmp122_3261 ),
    .ADR4(A_2_OBUF_3301),
    .ADR3(\ins1/ALU_Execution/Mmux_ans_tmp127 ),
    .ADR5(\ins1/ALU_Execution/Mmux_ans_tmp123_3709 ),
    .ADR0(\ins1/ALU_Execution/Mmux_ans_tmp81_3520 ),
    .O(N115)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y112" ),
    .INIT ( 64'hC30F66AAC30F33FF ))
  \ins2/Madd_IA_xor<2>11_SW2  (
    .ADR4(\ins7/RET_Out ),
    .ADR5(ins_2_OBUF_3223),
    .ADR0(\ins7/Q [0]),
    .ADR2(\ins7/R1 [2]),
    .ADR3(N29),
    .ADR1(N15),
    .O(N105)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y112" ),
    .INIT ( 64'hC44CF77F4C4C7F7F ))
  \ins7/Mmux_n004231_SW2  (
    .ADR1(interrupt_IBUF_3231),
    .ADR2(N17),
    .ADR3(N29),
    .ADR5(N15),
    .ADR0(reset_IBUF_3189),
    .ADR4(\ins7/R1 [2]),
    .O(N109)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y135" ),
    .INIT ( 64'hFEF80107E0801F7F ))
  \ins1/ALU_Execution/type1/Add/inst4/Mxor_sum_xo<0>1  (
    .ADR1(A_1_OBUF_3293),
    .ADR5(A_2_OBUF_3301),
    .ADR2(B_2_OBUF_3412),
    .ADR3(B_1_OBUF_3411),
    .ADR4(\ins1/ALU_Execution/type2/Add/inst4/x_y_XOR_2_o ),
    .ADR0(\ins1/ALU_Execution/type1/Add/temp_carryout[0] ),
    .O(\ins1/ALU_Execution/ans_tmp_temp<0> [3])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y135" ),
    .INIT ( 64'hFFFFFF00FF60FF60 ))
  \ins1/ALU_Execution/Mmux_ans_tmp161  (
    .ADR2(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_45_o ),
    .ADR5(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_44_o_0 ),
    .ADR3(N181),
    .ADR0(\ins1/ALU_Execution/type2/Add/inst4/x_y_XOR_2_o ),
    .ADR1(\ins1/ALU_Execution/type2/Add/temp_carryout[2] ),
    .ADR4(\ins1/ALU_Execution/ans_tmp_temp<0> [3]),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp16 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y135" ),
    .INIT ( 64'h00F0CCFF00F0CC00 ))
  \ins1/ALU_Execution/Sh21  (
    .ADR0(1'b1),
    .ADR1(A_0_OBUF_3297),
    .ADR2(A_1_OBUF_3293),
    .ADR5(A_2_OBUF_3301),
    .ADR4(B_0_OBUF_0),
    .ADR3(B_1_OBUF_3411),
    .O(\ins1/ALU_Execution/Sh2 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y135" ),
    .INIT ( 64'hAA00AA00A0A08888 ))
  \ins1/ALU_Execution/Mmux_ans_tmp288  (
    .ADR0(\ins1/ALU_Execution/Mmux_ans_tmp207_3263 ),
    .ADR5(B_2_OBUF_3412),
    .ADR4(B_0_OBUF_0),
    .ADR1(\ins1/ALU_Execution/Sh61 ),
    .ADR2(\ins1/ALU_Execution/Sh51 ),
    .ADR3(\ins1/ALU_Execution/Sh2 ),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp287 )
  );
  X_BUF   \ins1/ALU_Execution/Mmux_ans_tmp122/ins1/ALU_Execution/Mmux_ans_tmp122_AMUX_Delay  (
    .I(\ins1/ALU_Execution/Mmux_ans_tmp113 ),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp113_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y131" ),
    .INIT ( 64'hFFEEFFCCFFEEFFCC ))
  \ins1/ALU_Execution/Mmux_ans_tmp1221  (
    .ADR2(1'b1),
    .ADR4(\ins2/ins_prv [20]),
    .ADR0(\ins2/ins_prv [19]),
    .ADR3(\ins2/ins_prv [23]),
    .ADR1(\ins2/ins_prv [21]),
    .ADR5(1'b1),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp122_3261 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X58Y131" ),
    .INIT ( 32'hFFBBFF33 ))
  \ins1/ALU_Execution/Mmux_ans_tmp1131  (
    .ADR2(1'b1),
    .ADR4(\ins2/ins_prv [20]),
    .ADR0(\ins2/ins_prv [19]),
    .ADR3(\ins2/ins_prv [23]),
    .ADR1(\ins2/ins_prv [21]),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp113 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y130" ),
    .INIT ( 64'hFE320000CE020000 ))
  \ins1/ALU_Execution/type1/Add/inst6/Mxor_sum_xo<0>1_SW2_SW0  (
    .ADR3(\ins2/ins_prv [5]),
    .ADR1(\ins8/DFF5_3280 ),
    .ADR2(ans_dm_4_OBUF_3407),
    .ADR5(N69),
    .ADR0(N68),
    .ADR4(A_4_OBUF_3305),
    .O(N212)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y130" ),
    .INIT ( 64'hFE0ACEFACEFAFE0A ))
  \ins1/ALU_Execution/type1/Add/inst6/Mxor_sum_xo<0>1_SW2  (
    .ADR0(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_45_o ),
    .ADR1(\ins1/ALU_Execution/Mmux_ans_tmp121_3281 ),
    .ADR2(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_44_o_0 ),
    .ADR4(A_5_OBUF_3302),
    .ADR3(B_5_OBUF_3415),
    .ADR5(N212),
    .O(N150)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y130" ),
    .INIT ( 64'hAAF000A0EEFCCCEC ))
  \ins1/ALU_Execution/Mmux_ans_tmp201  (
    .ADR2(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_48_o ),
    .ADR1(\ins1/ALU_Execution/Mmux_ans_tmp111 ),
    .ADR3(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_47_o_0 ),
    .ADR0(A_4_OBUF_3305),
    .ADR4(B_4_OBUF_3414),
    .ADR5(\ins1/ALU_Execution/type2/Add/inst5/x_y_XOR_2_o ),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp20 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y130" ),
    .INIT ( 64'hA5A5A5A5AA669955 ))
  \ins1/ALU_Execution/type2/Add/inst5/Mxor_x_y_XOR_2_o_xo<0>1  (
    .ADR2(\ins2/ins_prv [5]),
    .ADR5(\ins8/DFF5_3280 ),
    .ADR1(ans_dm_4_OBUF_3407),
    .ADR3(N69),
    .ADR4(N68),
    .ADR0(A_4_OBUF_3305),
    .O(\ins1/ALU_Execution/type2/Add/inst5/x_y_XOR_2_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y133" ),
    .INIT ( 64'hF0D8CCE4D8CCE4F0 ))
  \ins1/ALU_Execution/Mmux_ans_tmp2012  (
    .ADR2(N185),
    .ADR0(B_3_OBUF_3413),
    .ADR3(A_3_OBUF_3298),
    .ADR1(N186),
    .ADR4(\ins1/ALU_Execution/type2/Add/inst5/x_y_XOR_2_o ),
    .ADR5(\ins1/ALU_Execution/type2/Add/temp_carryout[2] ),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp2011_3677 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y134" ),
    .INIT ( 64'hAFA0EFEC0A00CECC ))
  \ins1/ALU_Execution/Mmux_ans_tmp162  (
    .ADR3(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_48_o ),
    .ADR1(\ins1/ALU_Execution/Mmux_ans_tmp111 ),
    .ADR2(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_47_o_0 ),
    .ADR5(A_3_OBUF_3298),
    .ADR0(B_3_OBUF_3413),
    .ADR4(\ins1/ALU_Execution/type2/Add/inst4/x_y_XOR_2_o ),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp161_3646 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y134" ),
    .INIT ( 64'hFEF40E04010BF1FB ))
  \ins1/ALU_Execution/type2/Add/inst4/Mxor_x_y_XOR_2_o_xo<0>1  (
    .ADR4(\ins2/ins_prv [4]),
    .ADR2(\ins8/DFF5_3280 ),
    .ADR0(ans_dm_3_OBUF_3408),
    .ADR3(N72),
    .ADR1(N71),
    .ADR5(A_3_OBUF_3298),
    .O(\ins1/ALU_Execution/type2/Add/inst4/x_y_XOR_2_o )
  );
  X_BUF   \N173/N173_AMUX_Delay  (
    .I(N99),
    .O(N99_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X62Y112" ),
    .INIT ( 64'hD8D8F0F0D8D8F0F0 ))
  \ins7/Mmux_n0042511_SW3  (
    .ADR3(1'b1),
    .ADR5(1'b1),
    .ADR2(N95),
    .ADR4(ins_23_OBUF_3271),
    .ADR0(\ins5/Mmux_n002011_3323 ),
    .ADR1(N96),
    .O(N173)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X62Y112" ),
    .INIT ( 64'h8000000080000000 ))
  \ins7/Mmux_n0042511_SW0  (
    .ADR3(\ins2/Next_Address [3]),
    .ADR0(\ins2/Next_Address [2]),
    .ADR2(\ins2/Next_Address [1]),
    .ADR4(\ins2/Next_Address [0]),
    .ADR1(reset_IBUF_3189),
    .ADR5(1'b1),
    .O(N95)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X62Y112" ),
    .INIT ( 32'hA05F00FF ))
  \ins2/Madd_IA_xor<3>11_SW0  (
    .ADR3(\ins2/Next_Address [3]),
    .ADR0(\ins2/Next_Address [2]),
    .ADR2(\ins2/Next_Address [1]),
    .ADR4(\ins2/Next_Address [0]),
    .ADR1(1'b1),
    .O(N99)
  );
  X_BUF   \ins1/ALU_Execution/Mmux_ans_tmp81/ins1/ALU_Execution/Mmux_ans_tmp81_AMUX_Delay  (
    .I(\ins8/DFF6_2317 ),
    .O(\ins8/DFF6_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X61Y137" ),
    .INIT ( 64'hF0F0F0F0F0F0F0F4 ))
  \ins1/ALU_Execution/Mmux_ans_tmp813  (
    .ADR2(\ins1/ALU_Execution/Mmux_ans_tmp201_0 ),
    .ADR1(\ins1/ALU_Execution/Mmux_ans_tmp110 ),
    .ADR3(B_3_OBUF_3413),
    .ADR5(B_2_OBUF_3412),
    .ADR4(B_0_OBUF_0),
    .ADR0(B_1_OBUF_3411),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp81_3520 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X61Y137" ),
    .INIT ( 64'hFFC0FFEAC0C0EAEA ))
  \ins1/ALU_Execution/Mmux_ans_tmp83  (
    .ADR2(\ins1/ans_ex [1]),
    .ADR1(\ins1/ALU_Execution/Mmux_ans_tmp101_0 ),
    .ADR0(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_58_o_0 ),
    .ADR4(B_1_OBUF_3411),
    .ADR3(A_1_OBUF_3293),
    .ADR5(\ins1/ALU_Execution/Mmux_ans_tmp81_3520 ),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp83_3532 )
  );
  X_SFF #(
    .LOC ( "SLICE_X61Y137" ),
    .INIT ( 1'b0 ))
  \ins8/DFF6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins8/DFF6/CLK ),
    .I(\NlwBufferSignal_ins8/DFF6/IN ),
    .O(\ins8/DFF6_2317 ),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_BUF   \N159/N159_BMUX_Delay  (
    .I(N169),
    .O(N169_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X62Y115" ),
    .INIT ( 64'hE0E04040F0A05000 ))
  \ins7/out62_SW4  (
    .ADR2(reset_IBUF_3189),
    .ADR3(\ins2/Next_Address [3]),
    .ADR1(\ins2/Hold_Address [3]),
    .ADR0(\ins7/Q [0]),
    .ADR4(N19),
    .ADR5(Stall),
    .O(N159)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X62Y115" ),
    .INIT ( 64'hF000F0CCF000F0CC ))
  \ins2/Mmux_Current_Address1_SW0  (
    .ADR0(1'b1),
    .ADR3(\ins7/RET_Out ),
    .ADR1(ins_0_OBUF_3209),
    .ADR4(\ins7/Q [0]),
    .ADR2(\ins7/R1 [0]),
    .ADR5(1'b1),
    .O(N29)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X62Y115" ),
    .INIT ( 32'hA000A088 ))
  \ins7/out62_SW11  (
    .ADR0(reset_IBUF_3189),
    .ADR3(\ins7/RET_Out ),
    .ADR1(ins_0_OBUF_3209),
    .ADR4(\ins7/Q [0]),
    .ADR2(\ins7/R1 [0]),
    .O(N169)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X62Y115" ),
    .INIT ( 64'hAA00A2A2AA008080 ))
  \ins7/out62_SW10  (
    .ADR0(reset_IBUF_3189),
    .ADR4(\ins7/Q [0]),
    .ADR1(Stall),
    .ADR2(\ins2/Hold_Address [0]),
    .ADR5(\ins2/Next_Address [0]),
    .ADR3(N29),
    .O(N168)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X61Y132" ),
    .INIT ( 64'hEEEE8888FAFAA0A0 ))
  \ins1/ALU_Execution/type1/Add/inst4/carryout_SW2  (
    .ADR3(1'b1),
    .ADR1(\ins2/ins_prv [2]),
    .ADR5(\ins8/DFF5_3280 ),
    .ADR2(\ins3/Mmux_n00352 ),
    .ADR4(A_1_OBUF_3293),
    .ADR0(\ins1/ALU_Execution/type1/Add/temp_carryout[0] ),
    .O(N111)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X61Y132" ),
    .INIT ( 64'hCCC9C9C3C3939333 ))
  \ins1/ALU_Execution/type1/Add/inst5/Mxor_sum_xo<0>1  (
    .ADR0(A_2_OBUF_3301),
    .ADR2(B_3_OBUF_3413),
    .ADR3(B_2_OBUF_3412),
    .ADR5(A_3_OBUF_3298),
    .ADR1(\ins1/ALU_Execution/type2/Add/inst5/x_y_XOR_2_o ),
    .ADR4(N111),
    .O(\ins1/ALU_Execution/ans_tmp_temp<0> [4])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X61Y138" ),
    .INIT ( 64'hFCFFC0F0FC0CC0C0 ))
  \ins1/ALU_Execution/Mmux_ans_tmp82  (
    .ADR0(1'b1),
    .ADR5(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_48_o ),
    .ADR3(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_47_o_0 ),
    .ADR1(\ins1/ALU_Execution/Mmux_ans_tmp111 ),
    .ADR4(A_1_OBUF_3293),
    .ADR2(B_1_OBUF_3411),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp82_3526 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X61Y111" ),
    .INIT ( 64'hF55F33335F5F3333 ))
  \ins7/Mmux_n004231_SW1  (
    .ADR4(interrupt_IBUF_3231),
    .ADR2(\ins2/Hold_Address [2]),
    .ADR3(\ins2/Hold_Address [0]),
    .ADR5(\ins2/Hold_Address [1]),
    .ADR0(reset_IBUF_3189),
    .ADR1(\ins7/R1 [2]),
    .O(N108)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X61Y135" ),
    .INIT ( 64'hFFFFF888F000F888 ))
  \ins1/ALU_Execution/Mmux_ans_tmp121  (
    .ADR0(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_45_o ),
    .ADR2(\ins1/ALU_Execution/Mmux_ans_tmp121_3281 ),
    .ADR4(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_44_o_0 ),
    .ADR3(B_2_OBUF_3412),
    .ADR1(\ins1/ALU_Execution/ans_tmp_temp<1>[2] ),
    .ADR5(\ins1/ALU_Execution/ans_tmp_temp<0> [2]),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp12 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y138" ),
    .INIT ( 64'hEEEEEEEE22222222 ))
  \ins1/ALU_Execution/Mmux_ans_tmp43_SW0  (
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR1(\ins8/DFF5_3280 ),
    .ADR5(\ins2/ins_prv [1]),
    .ADR0(\ins3/Mmux_n00351 ),
    .O(N179)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y138" ),
    .INIT ( 64'hFDB87530AAA8AA20 ))
  \ins1/ALU_Execution/Mmux_ans_tmp43  (
    .ADR2(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_48_o ),
    .ADR1(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_47_o_0 ),
    .ADR3(\ins1/ALU_Execution/Mmux_ans_tmp111 ),
    .ADR0(A_0_OBUF_3297),
    .ADR5(B_0_OBUF_0),
    .ADR4(N179),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp42 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y138" ),
    .INIT ( 64'hCCCCEEEE0000AAAA ))
  \ins1/ALU_Execution/Mmux_ans_tmp126  (
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR1(\ins1/ans_ex [2]),
    .ADR0(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_58_o_0 ),
    .ADR5(\ins1/ALU_Execution/Mmux_ans_tmp101_0 ),
    .ADR4(B_2_OBUF_3412),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp127 )
  );
  X_BUF   \ins7/Q<0>/ins7/Q<0>_BMUX_Delay  (
    .I(N97_pack_1),
    .O(N97)
  );
  X_FF #(
    .LOC ( "SLICE_X61Y112" ),
    .INIT ( 1'b0 ))
  \ins7/Q_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins7/Q_0/CLK ),
    .I(\ins7/n0040 [0]),
    .O(\ins7/Q [0]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X61Y112" ),
    .INIT ( 64'hCCCC0000CCCC0000 ))
  \ins7/Mmux_n004011  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR4(reset_IBUF_3189),
    .ADR1(interrupt_IBUF_3231),
    .ADR5(1'b1),
    .O(\ins7/n0040 [0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X61Y112" ),
    .INIT ( 32'hA0000000 ))
  \ins7/Mmux_n0042511_SW2  (
    .ADR0(N19),
    .ADR3(N17),
    .ADR2(N15),
    .ADR4(reset_IBUF_3189),
    .ADR1(1'b1),
    .O(N97_pack_1)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X61Y112" ),
    .INIT ( 64'hBB883300B8B83030 ))
  \ins7/out62_SW18  (
    .ADR1(\ins7/Q [0]),
    .ADR5(Stall),
    .ADR3(N96),
    .ADR2(N95),
    .ADR4(N29),
    .ADR0(N97),
    .O(N209)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X61Y130" ),
    .INIT ( 64'hFFFFAFA3FFFFACA0 ))
  \ins1/ALU_Execution/type1/Add/inst6/Mxor_sum_xo<0>1_SW3_SW0  (
    .ADR2(\ins8/DFF5_3280 ),
    .ADR3(N69),
    .ADR1(ans_dm_4_OBUF_3407),
    .ADR5(N68),
    .ADR0(\ins2/ins_prv [5]),
    .ADR4(A_4_OBUF_3305),
    .O(N214)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X61Y130" ),
    .INIT ( 64'hCEFEFECECA3A3ACA ))
  \ins1/ALU_Execution/type1/Add/inst6/Mxor_sum_xo<0>1_SW3  (
    .ADR0(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_45_o ),
    .ADR5(\ins1/ALU_Execution/Mmux_ans_tmp121_3281 ),
    .ADR2(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_44_o_0 ),
    .ADR3(A_5_OBUF_3302),
    .ADR1(B_5_OBUF_3415),
    .ADR4(N214),
    .O(N151)
  );
  X_BUF   \ins6/ans_wb<6>/ins6/ans_wb<6>_DMUX_Delay  (
    .I(ans_dm_7_OBUF_pack_5),
    .O(ans_dm_7_OBUF_3334)
  );
  X_SFF #(
    .LOC ( "SLICE_X61Y131" ),
    .INIT ( 1'b0 ))
  \ins6/ans_wb_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins6/ans_wb_6/CLK ),
    .I(ans_dm_6_OBUF_3335),
    .O(\ins6/ans_wb [6]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X61Y131" ),
    .INIT ( 64'hFFCC3300FFCC3300 ))
  \ins4/Mmux_ans_dm71  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(\ins8/DFF9_3315 ),
    .ADR4(\ins4/DM_out [6]),
    .ADR3(\ins4/Ex_out [6]),
    .ADR5(1'b1),
    .O(ans_dm_6_OBUF_3335)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X61Y131" ),
    .INIT ( 32'hB8B8B8B8 ))
  \ins4/Mmux_ans_dm81  (
    .ADR2(\ins4/Ex_out [7]),
    .ADR0(\ins4/DM_out [7]),
    .ADR1(\ins8/DFF9_3315 ),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(ans_dm_7_OBUF_pack_5)
  );
  X_SFF #(
    .LOC ( "SLICE_X61Y131" ),
    .INIT ( 1'b0 ))
  \ins6/ans_wb_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins6/ans_wb_7/CLK ),
    .I(\NlwBufferSignal_ins6/ans_wb_7/IN ),
    .O(\ins6/ans_wb [7]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X61Y131" ),
    .INIT ( 64'hD8D8FFAAD8D85500 ))
  \ins3/Mmux_n003581  (
    .ADR3(\ins3/BR [7]),
    .ADR2(\ins1/ans_ex [7]),
    .ADR0(mux_sel_B_1_OBUF_3331),
    .ADR1(\ins6/ans_wb [7]),
    .ADR4(mux_sel_B_0_OBUF_3333),
    .ADR5(ans_dm_7_OBUF_3334),
    .O(\ins3/Mmux_n00358 )
  );
  X_SFF #(
    .LOC ( "SLICE_X61Y131" ),
    .INIT ( 1'b0 ))
  \ins6/ans_wb_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins6/ans_wb_5/CLK ),
    .I(ans_dm_5_OBUF_3409),
    .O(\ins6/ans_wb [5]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X61Y131" ),
    .INIT ( 64'hAAAAFFFFAAAA0000 ))
  \ins4/Mmux_ans_dm61  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(\ins4/Ex_out [5]),
    .ADR4(\ins8/DFF9_3315 ),
    .ADR0(\ins4/DM_out [5]),
    .O(ans_dm_5_OBUF_3409)
  );
  X_SFF #(
    .LOC ( "SLICE_X61Y131" ),
    .INIT ( 1'b0 ))
  \ins6/ans_wb_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins6/ans_wb_4/CLK ),
    .I(ans_dm_4_OBUF_3407),
    .O(\ins6/ans_wb [4]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X61Y131" ),
    .INIT ( 64'hFFFFF0F00F0F0000 ))
  \ins4/Mmux_ans_dm51  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR4(\ins4/Ex_out [4]),
    .ADR2(\ins8/DFF9_3315 ),
    .ADR5(\ins4/DM_out [4]),
    .O(ans_dm_4_OBUF_3407)
  );
  X_SFF #(
    .LOC ( "SLICE_X62Y110" ),
    .INIT ( 1'b0 ))
  \ins7/R1_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins7/R1_3/CLK ),
    .I(\ins7/n0042 [3]),
    .O(\ins7/R1 [3]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X62Y110" ),
    .INIT ( 64'h3FFFC000AAAAAAAA ))
  \ins7/Mmux_n004241  (
    .ADR5(interrupt_IBUF_3231),
    .ADR1(Current_Address_2_OBUF_3380),
    .ADR2(Current_Address_1_OBUF_3381),
    .ADR0(\ins7/R1 [3]),
    .ADR3(Current_Address_0_OBUF_3382),
    .ADR4(Current_Address_3_OBUF_3379),
    .O(\ins7/n0042 [3])
  );
  X_SFF #(
    .LOC ( "SLICE_X62Y110" ),
    .INIT ( 1'b0 ))
  \ins7/R1_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins7/R1_2/CLK ),
    .I(\ins7/n0042 [2]),
    .O(\ins7/R1 [2]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X62Y110" ),
    .INIT ( 64'h01115111ABBBFBBB ))
  \ins7/Mmux_n004231  (
    .ADR4(N108),
    .ADR1(N107),
    .ADR2(ins_23_OBUF_3271),
    .ADR3(\ins5/Mmux_n002011_3323 ),
    .ADR5(N109),
    .ADR0(pc_mux_sel),
    .O(\ins7/n0042 [2])
  );
  X_SFF #(
    .LOC ( "SLICE_X62Y110" ),
    .INIT ( 1'b0 ))
  \ins7/R1_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins7/R1_1/CLK ),
    .I(\ins7/n0042 [1]),
    .O(\ins7/R1 [1]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X62Y110" ),
    .INIT ( 64'h55CC0FCC00CC00CC ))
  \ins7/Mmux_n004221  (
    .ADR3(interrupt_IBUF_3231),
    .ADR5(reset_IBUF_3189),
    .ADR2(N56),
    .ADR1(\ins7/R1 [1]),
    .ADR0(N78),
    .ADR4(pc_mux_sel),
    .O(\ins7/n0042 [1])
  );
  X_SFF #(
    .LOC ( "SLICE_X62Y110" ),
    .INIT ( 1'b0 ))
  \ins7/R1_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins7/R1_0/CLK ),
    .I(\ins7/n0042 [0]),
    .O(\ins7/R1 [0]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X62Y110" ),
    .INIT ( 64'h747430FCFCFCFCFC ))
  \ins7/Mmux_n004211  (
    .ADR5(reset_IBUF_3189),
    .ADR1(interrupt_IBUF_3231),
    .ADR3(N58),
    .ADR2(\ins7/R1 [0]),
    .ADR0(N29),
    .ADR4(pc_mux_sel),
    .O(\ins7/n0042 [0])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X62Y111" ),
    .INIT ( 64'hFF0000FF0000FFFF ))
  \ins2/Madd_IA_xor<2>11_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\ins2/Next_Address [2]),
    .ADR3(\ins2/Next_Address [1]),
    .ADR5(\ins2/Next_Address [0]),
    .O(N103)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X62Y111" ),
    .INIT ( 64'h8BCF47CF47CF47CF ))
  \ins7/Mmux_n004231_SW0  (
    .ADR1(interrupt_IBUF_3231),
    .ADR0(\ins2/Next_Address [2]),
    .ADR4(\ins2/Next_Address [0]),
    .ADR5(\ins2/Next_Address [1]),
    .ADR3(reset_IBUF_3189),
    .ADR2(\ins7/R1 [2]),
    .O(N107)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y140" ),
    .INIT ( 64'hFEF0FEF00EE00EE0 ))
  \ins1/ALU_Execution/Mmux_ans_tmp41  (
    .ADR4(1'b1),
    .ADR0(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_45_o ),
    .ADR5(\ins1/ALU_Execution/Mmux_ans_tmp121_3281 ),
    .ADR1(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_44_o_0 ),
    .ADR3(A_0_OBUF_3297),
    .ADR2(B_0_OBUF_0),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp4 )
  );
  X_SFF #(
    .LOC ( "SLICE_X60Y123" ),
    .INIT ( 1'b0 ))
  \ins2/ins_prv_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/ins_prv_7/CLK ),
    .I(ins_7_OBUF_3290),
    .O(\ins2/ins_prv [7]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y123" ),
    .INIT ( 64'hF500A000F500A000 ))
  \ins2/Mmux_ins221  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR3(reset_IBUF_3189),
    .ADR2(\ins2/ins_prv [7]),
    .ADR0(\ins5/Q [1]),
    .ADR4(\ins2/PM_out [7]),
    .O(ins_7_OBUF_3290)
  );
  X_SFF #(
    .LOC ( "SLICE_X60Y123" ),
    .INIT ( 1'b0 ))
  \ins2/ins_prv_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/ins_prv_6/CLK ),
    .I(ins_6_OBUF_3276),
    .O(\ins2/ins_prv [6]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y123" ),
    .INIT ( 64'hD800D800D800D800 ))
  \ins2/Mmux_ins211  (
    .ADR5(1'b1),
    .ADR4(1'b1),
    .ADR3(reset_IBUF_3189),
    .ADR1(\ins2/ins_prv [6]),
    .ADR0(\ins5/Q [1]),
    .ADR2(\ins2/PM_out [6]),
    .O(ins_6_OBUF_3276)
  );
  X_SFF #(
    .LOC ( "SLICE_X60Y123" ),
    .INIT ( 1'b0 ))
  \ins2/ins_prv_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/ins_prv_5/CLK ),
    .I(ins_5_OBUF_3247),
    .O(\ins2/ins_prv [5]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y123" ),
    .INIT ( 64'hCF00CF00C000C000 ))
  \ins2/Mmux_ins201  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR3(reset_IBUF_3189),
    .ADR1(\ins2/ins_prv [5]),
    .ADR2(\ins5/Q [1]),
    .ADR5(\ins2/PM_out [5]),
    .O(ins_5_OBUF_3247)
  );
  X_SFF #(
    .LOC ( "SLICE_X60Y123" ),
    .INIT ( 1'b0 ))
  \ins2/ins_prv_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/ins_prv_4/CLK ),
    .I(\NlwBufferSignal_ins2/ins_prv_4/IN ),
    .O(\ins2/ins_prv [4]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y123" ),
    .INIT ( 64'hCCC8444000000000 ))
  \ins7/out62_SW17  (
    .ADR5(N21),
    .ADR1(reset_IBUF_3189),
    .ADR0(\ins7/RET_Out ),
    .ADR3(ins_5_OBUF_3247),
    .ADR2(\ins7/Q [0]),
    .ADR4(\ins7/R1 [5]),
    .O(N207)
  );
  X_SFF #(
    .LOC ( "SLICE_X60Y132" ),
    .INIT ( 1'b0 ))
  \ins4/Ex_out_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins4/Ex_out_7/CLK ),
    .I(\NlwBufferSignal_ins4/Ex_out_7/IN ),
    .O(\ins4/Ex_out [7]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y132" ),
    .INIT ( 64'hD7DDFFFFFFFFD7DD ))
  \ins1/ALU_Execution/Mmux_flag_ex23_SW0  (
    .ADR0(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_45_o ),
    .ADR4(A_0_OBUF_3297),
    .ADR3(A_3_OBUF_3298),
    .ADR2(B_3_OBUF_3413),
    .ADR5(B_0_OBUF_0),
    .ADR1(\ins1/ALU_Execution/type2/Add/inst5/x_y_XOR_2_o ),
    .O(N254)
  );
  X_SFF #(
    .LOC ( "SLICE_X60Y132" ),
    .INIT ( 1'b0 ))
  \ins4/Ex_out_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins4/Ex_out_6/CLK ),
    .I(\NlwBufferSignal_ins4/Ex_out_6/IN ),
    .O(\ins4/Ex_out [6]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y132" ),
    .INIT ( 64'h0004000400000003 ))
  \ins1/ALU_Execution/Mmux_flag_ex23  (
    .ADR5(\ins1/ALU_Execution/type2/Add/inst4/x_y_XOR_2_o ),
    .ADR3(\ins1/ALU_Execution/ans_tmp_temp<1>[1] ),
    .ADR4(N254),
    .ADR0(N255),
    .ADR2(\ins1/ALU_Execution/ans_tmp_temp<1>[2] ),
    .ADR1(\ins1/ALU_Execution/type2/Add/temp_carryout[2] ),
    .O(\ins1/ALU_Execution/Mmux_flag_ex23_3637 )
  );
  X_SFF #(
    .LOC ( "SLICE_X60Y132" ),
    .INIT ( 1'b0 ))
  \ins4/Ex_out_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins4/Ex_out_5/CLK ),
    .I(\NlwBufferSignal_ins4/Ex_out_5/IN ),
    .O(\ins4/Ex_out [5]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X60Y132" ),
    .INIT ( 1'b0 ))
  \ins4/Ex_out_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins4/Ex_out_4/CLK ),
    .I(\NlwBufferSignal_ins4/Ex_out_4/IN ),
    .O(\ins4/Ex_out [4]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y111" ),
    .INIT ( 64'h8888777788887777 ))
  \ins2/Madd_IA_xor<2>11_SW1  (
    .ADR3(1'b1),
    .ADR5(1'b1),
    .ADR2(1'b1),
    .ADR4(\ins2/Hold_Address [2]),
    .ADR0(\ins2/Hold_Address [1]),
    .ADR1(\ins2/Hold_Address [0]),
    .O(N104)
  );
  X_BUF   \N19/N19_DMUX_Delay  (
    .I(N160),
    .O(N160_0)
  );
  X_BUF   \N19/N19_AMUX_Delay  (
    .I(N210),
    .O(N210_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y115" ),
    .INIT ( 64'hCC50CC50CC50CC50 ))
  \ins2/Mmux_Current_Address4_SW0  (
    .ADR4(1'b1),
    .ADR1(\ins7/R1 [3]),
    .ADR0(\ins7/Q [0]),
    .ADR2(ins_3_OBUF_3233),
    .ADR3(\ins7/RET_Out ),
    .ADR5(1'b1),
    .O(N19)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X60Y115" ),
    .INIT ( 32'hCC500000 ))
  \ins7/out62_SW5  (
    .ADR4(reset_IBUF_3189),
    .ADR1(\ins7/R1 [3]),
    .ADR0(\ins7/Q [0]),
    .ADR2(ins_3_OBUF_3233),
    .ADR3(\ins7/RET_Out ),
    .O(N160)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y115" ),
    .INIT ( 64'h9955555599555555 ))
  \ins2/Madd_IA_xor<3>11_SW2  (
    .ADR2(1'b1),
    .ADR0(N19),
    .ADR3(N29),
    .ADR4(N17),
    .ADR1(N15),
    .ADR5(1'b1),
    .O(N101)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X60Y115" ),
    .INIT ( 32'h80000000 ))
  \ins7/out62_SW19  (
    .ADR2(reset_IBUF_3189),
    .ADR0(N19),
    .ADR3(N29),
    .ADR4(N17),
    .ADR1(N15),
    .O(N210)
  );
  X_BUF   \ins2/ins_prv<23>/ins2/ins_prv<23>_DMUX_Delay  (
    .I(N195),
    .O(N195_0)
  );
  X_BUF   \ins2/ins_prv<23>/ins2/ins_prv<23>_BMUX_Delay  (
    .I(N198),
    .O(N198_0)
  );
  X_SFF #(
    .LOC ( "SLICE_X60Y121" ),
    .INIT ( 1'b0 ))
  \ins2/ins_prv_23  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/ins_prv_23/CLK ),
    .I(\NlwBufferSignal_ins2/ins_prv_23/IN ),
    .O(\ins2/ins_prv [23]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y121" ),
    .INIT ( 64'hCC000055CC000055 ))
  \ins7/out6111_SW0  (
    .ADR2(1'b1),
    .ADR3(ins_21_OBUF_3268),
    .ADR4(ins_19_OBUF_3197),
    .ADR0(ins_20_OBUF_3270),
    .ADR1(ins_22_OBUF_3269),
    .ADR5(1'b1),
    .O(N194)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X60Y121" ),
    .INIT ( 32'h88004455 ))
  \ins7/out6111_SW1  (
    .ADR2(1'b1),
    .ADR3(ins_21_OBUF_3268),
    .ADR4(ins_19_OBUF_3197),
    .ADR0(ins_20_OBUF_3270),
    .ADR1(ins_22_OBUF_3269),
    .O(N195)
  );
  X_SFF #(
    .LOC ( "SLICE_X60Y121" ),
    .INIT ( 1'b0 ))
  \ins2/ins_prv_21  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/ins_prv_21/CLK ),
    .I(ins_21_OBUF_3268),
    .O(\ins2/ins_prv [21]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y121" ),
    .INIT ( 64'hCC00FF00CC000000 ))
  \ins2/Mmux_ins141  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR3(reset_IBUF_3189),
    .ADR1(\ins2/ins_prv [21]),
    .ADR4(\ins5/Q [1]),
    .ADR5(\ins2/PM_out [21]),
    .O(ins_21_OBUF_3268)
  );
  X_SFF #(
    .LOC ( "SLICE_X60Y121" ),
    .INIT ( 1'b0 ))
  \ins2/ins_prv_22  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/ins_prv_22/CLK ),
    .I(\NlwBufferSignal_ins2/ins_prv_22/IN ),
    .O(\ins2/ins_prv [22]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y121" ),
    .INIT ( 64'hBBFF66EEBBFF66EE ))
  \ins7/out6111_SW2  (
    .ADR2(1'b1),
    .ADR1(ins_21_OBUF_3268),
    .ADR3(ins_22_OBUF_3269),
    .ADR0(ins_19_OBUF_3197),
    .ADR4(ins_20_OBUF_3270),
    .ADR5(1'b1),
    .O(N197)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X60Y121" ),
    .INIT ( 32'hBBFFAAEE ))
  \ins7/out6111_SW3  (
    .ADR2(1'b1),
    .ADR1(ins_21_OBUF_3268),
    .ADR3(ins_22_OBUF_3269),
    .ADR0(ins_19_OBUF_3197),
    .ADR4(ins_20_OBUF_3270),
    .O(N198)
  );
  X_SFF #(
    .LOC ( "SLICE_X60Y121" ),
    .INIT ( 1'b0 ))
  \ins2/ins_prv_20  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/ins_prv_20/CLK ),
    .I(ins_20_OBUF_3270),
    .O(\ins2/ins_prv [20]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y121" ),
    .INIT ( 64'hE4E4E4E400000000 ))
  \ins2/Mmux_ins131  (
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR5(reset_IBUF_3189),
    .ADR2(\ins2/ins_prv [20]),
    .ADR0(\ins5/Q [1]),
    .ADR1(\ins2/PM_out [20]),
    .O(ins_20_OBUF_3270)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y139" ),
    .INIT ( 64'hFFF8F8F800000000 ))
  \ins1/ALU_Execution/Mmux_ans_tmp48  (
    .ADR1(data_in_0_IBUF_3422),
    .ADR0(\ins1/ALU_Execution/op_dec[4]_PWR_3_o_equal_29_o_0 ),
    .ADR5(\ins1/ALU_Execution/Mmux_ans_tmp102 ),
    .ADR3(\ins1/ALU_Execution/Mmux_ans_tmp45_3499 ),
    .ADR2(\ins1/ALU_Execution/Mmux_ans_tmp44_3521 ),
    .ADR4(\ins1/ALU_Execution/Mmux_ans_tmp46_3522 ),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp47_3716 )
  );
  X_SFF #(
    .LOC ( "SLICE_X58Y139" ),
    .INIT ( 1'b0 ))
  \ins1/ans_ex_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins1/ans_ex_0/CLK ),
    .I(\ins1/ans_tmp [0]),
    .O(\ins1/ans_ex [0]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y139" ),
    .INIT ( 64'hFFF0FFF0FFA0FF80 ))
  \ins1/ALU_Execution/Mmux_ans_tmp49  (
    .ADR0(\ins1/ALU_Execution/Mmux_ans_tmp113_0 ),
    .ADR2(\ins1/ALU_Execution/Mmux_ans_tmp122_3261 ),
    .ADR3(\ins1/ALU_Execution/Mmux_ans_tmp4 ),
    .ADR5(\ins1/ALU_Execution/Mmux_ans_tmp42 ),
    .ADR1(\ins1/ALU_Execution/Mmux_ans_tmp43_3519 ),
    .ADR4(\ins1/ALU_Execution/Mmux_ans_tmp47_3716 ),
    .O(\ins1/ans_tmp [0])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y139" ),
    .INIT ( 64'h00000000AA00A820 ))
  \ins1/ALU_Execution/Mmux_ans_tmp248  (
    .ADR0(\ins1/ALU_Execution/Mmux_ans_tmp110 ),
    .ADR3(A_7_OBUF_3306),
    .ADR1(B_2_OBUF_3412),
    .ADR5(B_3_OBUF_3413),
    .ADR4(B_1_OBUF_3411),
    .ADR2(\ins1/ALU_Execution/Sh191 ),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp247_3587 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y138" ),
    .INIT ( 64'hAAFFAAAAAAFFAAAA ))
  \ins1/ALU_Execution/Mmux_ans_tmp46  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\ins1/ALU_Execution/Mmux_ans_tmp110 ),
    .ADR0(\ins1/ALU_Execution/Mmux_ans_tmp112 ),
    .ADR3(B_3_OBUF_3413),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp45_3499 )
  );
  X_SFF #(
    .LOC ( "SLICE_X58Y138" ),
    .INIT ( 1'b0 ))
  \ins1/DM_data_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins1/DM_data_3/CLK ),
    .I(B_3_OBUF_3413),
    .O(\ins1/DM_data [3]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y138" ),
    .INIT ( 64'hF0EEF022F0EEF022 ))
  \ins3/Mmux_n003542  (
    .ADR5(1'b1),
    .ADR2(\ins2/ins_prv [4]),
    .ADR3(\ins8/DFF5_3280 ),
    .ADR1(ans_dm_3_OBUF_3408),
    .ADR4(N72),
    .ADR0(N71),
    .O(B_3_OBUF_3413)
  );
  X_SFF #(
    .LOC ( "SLICE_X58Y138" ),
    .INIT ( 1'b0 ))
  \ins1/DM_data_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins1/DM_data_2/CLK ),
    .I(B_2_OBUF_3412),
    .O(\ins1/DM_data [2]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y138" ),
    .INIT ( 64'hAAAAAAAACCFFCC00 ))
  \ins3/Mmux_n003532  (
    .ADR2(1'b1),
    .ADR0(\ins2/ins_prv [3]),
    .ADR5(\ins8/DFF5_3280 ),
    .ADR3(ans_dm_2_OBUF_3406),
    .ADR1(N75),
    .ADR4(N74),
    .O(B_2_OBUF_3412)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y138" ),
    .INIT ( 64'hFF320032FF100010 ))
  \ins3/Mmux_n003531_SW0  (
    .ADR2(\ins3/BR<2>_0 ),
    .ADR5(\ins6/ans_wb [2]),
    .ADR4(\ins1/ans_ex [2]),
    .ADR0(\ins8/Reg7[4]_Reg4[4]_equal_67_o ),
    .ADR3(\ins8/C4 ),
    .ADR1(\ins8/Reg6[4]_Reg4[4]_equal_65_o ),
    .O(N74)
  );
  X_BUF   \ins1/ALU_Execution/Mmux_ans_tmp207/ins1/ALU_Execution/Mmux_ans_tmp207_DMUX_Delay  (
    .I(\ins1/ALU_Execution/op_dec[4]_PWR_3_o_equal_29_o ),
    .O(\ins1/ALU_Execution/op_dec[4]_PWR_3_o_equal_29_o_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y136" ),
    .INIT ( 64'h0000008000000080 ))
  \ins1/ALU_Execution/op_dec[4]_PWR_3_o_equal_30_o<4>1  (
    .ADR4(\ins2/ins_prv [20]),
    .ADR1(\ins2/ins_prv [19]),
    .ADR0(\ins2/ins_prv [23]),
    .ADR3(\ins2/ins_prv [21]),
    .ADR2(\ins2/ins_prv [22]),
    .ADR5(1'b1),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp207_3263 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X58Y136" ),
    .INIT ( 32'h02000000 ))
  \ins1/ALU_Execution/op_dec[4]_PWR_3_o_equal_29_o<4>1  (
    .ADR4(\ins2/ins_prv [20]),
    .ADR1(\ins2/ins_prv [19]),
    .ADR0(\ins2/ins_prv [23]),
    .ADR3(\ins2/ins_prv [21]),
    .ADR2(\ins2/ins_prv [22]),
    .O(\ins1/ALU_Execution/op_dec[4]_PWR_3_o_equal_29_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y136" ),
    .INIT ( 64'h7520752075752020 ))
  \ins1/ALU_Execution/Mmux_ans_tmp2410  (
    .ADR0(B_2_OBUF_3412),
    .ADR5(B_0_OBUF_0),
    .ADR1(B_1_OBUF_3411),
    .ADR2(\ins1/ALU_Execution/Sh33 ),
    .ADR3(\ins1/ALU_Execution/Mmux_ans_tmp248_3588 ),
    .ADR4(\ins1/ALU_Execution/Sh51 ),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp249_3713 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y136" ),
    .INIT ( 64'hFFFFF0F0FFFFE0C0 ))
  \ins1/ALU_Execution/Mmux_ans_tmp2412  (
    .ADR0(\ins1/ALU_Execution/Mmux_ans_tmp207_3263 ),
    .ADR2(\ins1/ALU_Execution/Mmux_ans_tmp102 ),
    .ADR4(\ins1/ALU_Execution/Mmux_ans_tmp243 ),
    .ADR1(\ins1/ALU_Execution/Mmux_ans_tmp246_3667 ),
    .ADR5(\ins1/ALU_Execution/Mmux_ans_tmp247_3587 ),
    .ADR3(\ins1/ALU_Execution/Mmux_ans_tmp249_3713 ),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp2411 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y129" ),
    .INIT ( 64'hB3FFA0ECA0ECA0EC ))
  \ins1/ALU_Execution/Mmux_ans_tmp244  (
    .ADR0(\ins1/ans_ex [5]),
    .ADR5(\ins1/ALU_Execution/Mmux_ans_tmp201_0 ),
    .ADR1(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_58_o_0 ),
    .ADR2(\ins1/ALU_Execution/Mmux_ans_tmp101_0 ),
    .ADR4(A_5_OBUF_3302),
    .ADR3(B_5_OBUF_3415),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp243 )
  );
  X_SFF #(
    .LOC ( "SLICE_X60Y129" ),
    .INIT ( 1'b0 ))
  \ins1/DM_data_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins1/DM_data_5/CLK ),
    .I(B_5_OBUF_3415),
    .O(\ins1/DM_data [5]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y129" ),
    .INIT ( 64'hE2E2E2E2F3C0F3C0 ))
  \ins3/Mmux_n003562  (
    .ADR4(1'b1),
    .ADR2(\ins2/ins_prv [6]),
    .ADR1(\ins8/DFF5_3280 ),
    .ADR5(ans_dm_5_OBUF_3409),
    .ADR0(N66),
    .ADR3(N65),
    .O(B_5_OBUF_3415)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y129" ),
    .INIT ( 64'hC0EAFFEAC0C0FFC0 ))
  \ins1/ALU_Execution/Mmux_ans_tmp203  (
    .ADR2(\ins1/ans_ex [4]),
    .ADR5(\ins1/ALU_Execution/Mmux_ans_tmp201_0 ),
    .ADR3(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_58_o_0 ),
    .ADR1(\ins1/ALU_Execution/Mmux_ans_tmp101_0 ),
    .ADR0(A_4_OBUF_3305),
    .ADR4(B_4_OBUF_3414),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp202 )
  );
  X_SFF #(
    .LOC ( "SLICE_X60Y129" ),
    .INIT ( 1'b0 ))
  \ins1/DM_data_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins1/DM_data_4/CLK ),
    .I(B_4_OBUF_3414),
    .O(\ins1/DM_data [4]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y129" ),
    .INIT ( 64'hAAAAFFCCAAAA3300 ))
  \ins3/Mmux_n003552  (
    .ADR2(1'b1),
    .ADR0(\ins2/ins_prv [5]),
    .ADR4(\ins8/DFF5_3280 ),
    .ADR1(ans_dm_4_OBUF_3407),
    .ADR5(N69),
    .ADR3(N68),
    .O(B_4_OBUF_3414)
  );
  X_SFF #(
    .LOC ( "SLICE_X58Y137" ),
    .INIT ( 1'b0 ))
  \ins1/ans_ex_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins1/ans_ex_3/CLK ),
    .I(\ins1/ans_tmp [3]),
    .O(\ins1/ans_ex [3]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y137" ),
    .INIT ( 64'hFFFECCCCEEEECCCC ))
  \ins1/ALU_Execution/Mmux_ans_tmp168  (
    .ADR5(\ins1/ALU_Execution/Mmux_ans_tmp113_0 ),
    .ADR4(\ins1/ALU_Execution/Mmux_ans_tmp122_3261 ),
    .ADR0(\ins1/ALU_Execution/Mmux_ans_tmp161_3646 ),
    .ADR2(\ins1/ALU_Execution/Mmux_ans_tmp162_3608 ),
    .ADR1(\ins1/ALU_Execution/Mmux_ans_tmp16 ),
    .ADR3(N277),
    .O(\ins1/ans_tmp [3])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y137" ),
    .INIT ( 64'hFE00CE00CE00CE00 ))
  \ins1/ALU_Execution/Mmux_ans_tmp168_SW0  (
    .ADR3(\ins1/ALU_Execution/Mmux_ans_tmp102 ),
    .ADR4(A_7_OBUF_3306),
    .ADR2(B_2_OBUF_3412),
    .ADR5(N280),
    .ADR0(N279),
    .ADR1(\ins1/ALU_Execution/Mmux_ans_tmp163_3609 ),
    .O(N277)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y137" ),
    .INIT ( 64'hFFF8FF88F8F88888 ))
  \ins1/ALU_Execution/Mmux_ans_tmp123  (
    .ADR0(\ins1/ALU_Execution/Mmux_ans_tmp8221 ),
    .ADR1(\ins1/ALU_Execution/Sh2 ),
    .ADR4(data_in_2_IBUF_3426),
    .ADR2(\ins1/ALU_Execution/op_dec[4]_PWR_3_o_equal_29_o_0 ),
    .ADR3(\ins1/ALU_Execution/Mmux_ans_tmp112 ),
    .ADR5(\ins1/ALU_Execution/Sh26 ),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp124 )
  );
  X_SFF #(
    .LOC ( "SLICE_X58Y137" ),
    .INIT ( 1'b0 ))
  \ins1/ans_ex_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins1/ans_ex_2/CLK ),
    .I(\ins1/ans_tmp [2]),
    .O(\ins1/ans_ex [2]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y137" ),
    .INIT ( 64'hEEEEEEFAFAFAFAFA ))
  \ins1/ALU_Execution/Mmux_ans_tmp128  (
    .ADR5(\ins1/ALU_Execution/Mmux_ans_tmp102 ),
    .ADR1(N116_0),
    .ADR4(\ins1/ALU_Execution/Mmux_ans_tmp126_3602 ),
    .ADR2(N115),
    .ADR0(\ins1/ALU_Execution/Mmux_ans_tmp12 ),
    .ADR3(\ins1/ALU_Execution/Mmux_ans_tmp124 ),
    .O(\ins1/ans_tmp [2])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y134" ),
    .INIT ( 64'h2200000000000000 ))
  \ins1/ALU_Execution/Mmux_ans_tmp1101  (
    .ADR2(1'b1),
    .ADR5(\ins2/ins_prv [22]),
    .ADR0(\ins2/ins_prv [20]),
    .ADR3(\ins2/ins_prv [19]),
    .ADR1(\ins2/ins_prv [21]),
    .ADR4(\ins2/ins_prv [23]),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp110 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y135" ),
    .INIT ( 64'hFEFEFFFAA8A8AAA0 ))
  \ins1/ALU_Execution/type1/Add/inst4/carryout_SW2_SW1  (
    .ADR1(\ins2/ins_prv [2]),
    .ADR4(\ins8/DFF5_3280 ),
    .ADR2(A_1_OBUF_3293),
    .ADR0(A_2_OBUF_3301),
    .ADR3(\ins3/Mmux_n00352 ),
    .ADR5(B_2_OBUF_3412),
    .O(N225)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y135" ),
    .INIT ( 64'h3CC33C3C96C33C96 ))
  \ins1/ALU_Execution/type2/Add/inst3/Mxor_sum_xo<0>1  (
    .ADR5(A_0_OBUF_3297),
    .ADR3(A_1_OBUF_3293),
    .ADR2(A_2_OBUF_3301),
    .ADR1(B_2_OBUF_3412),
    .ADR0(B_0_OBUF_0),
    .ADR4(B_1_OBUF_3411),
    .O(\ins1/ALU_Execution/ans_tmp_temp<1>[2] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y135" ),
    .INIT ( 64'hEFCC8C00ECCC8000 ))
  \ins1/ALU_Execution/type1/Add/inst4/carryout_SW2_SW0  (
    .ADR0(\ins2/ins_prv [2]),
    .ADR2(\ins8/DFF5_3280 ),
    .ADR3(A_1_OBUF_3293),
    .ADR4(A_2_OBUF_3301),
    .ADR5(\ins3/Mmux_n00352 ),
    .ADR1(B_2_OBUF_3412),
    .O(N224)
  );
  X_BUF   \ins1/ALU_Execution/Mmux_ans_tmp283/ins1/ALU_Execution/Mmux_ans_tmp283_CMUX_Delay  (
    .I(N270),
    .O(N270_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X60Y137" ))
  \ins1/ALU_Execution/Mmux_ans_tmp325_SW1  (
    .IA(N284),
    .IB(1'b0),
    .O(N270),
    .SEL(B_0_OBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y137" ),
    .INIT ( 64'hA2A280A2A2808080 ))
  \ins1/ALU_Execution/Mmux_ans_tmp325_SW1_F  (
    .ADR2(\ins1/ans_ex [7]),
    .ADR0(\ins1/ALU_Execution/Mmux_ans_tmp112 ),
    .ADR3(\ins4/DM_out [7]),
    .ADR1(\ins8/C1 ),
    .ADR5(N127),
    .ADR4(N128),
    .O(N284)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y137" ),
    .INIT ( 64'h0000000000000000 ))
  \N0.C6LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\NLW_N0.C6LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y137" ),
    .INIT ( 64'h00000000C0C0C080 ))
  \ins1/ALU_Execution/Mmux_ans_tmp284  (
    .ADR2(\ins1/ALU_Execution/Mmux_ans_tmp110 ),
    .ADR1(A_7_OBUF_3306),
    .ADR5(B_3_OBUF_3413),
    .ADR3(B_2_OBUF_3412),
    .ADR4(B_0_OBUF_0),
    .ADR0(B_1_OBUF_3411),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp283_3595 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y137" ),
    .INIT ( 64'h1000101010000000 ))
  \ins1/ALU_Execution/Mmux_ans_tmp285  (
    .ADR2(\ins1/ALU_Execution/Mmux_ans_tmp112 ),
    .ADR3(A_7_OBUF_3306),
    .ADR5(A_6_OBUF_3309),
    .ADR1(B_2_OBUF_3412),
    .ADR4(B_0_OBUF_0),
    .ADR0(B_1_OBUF_3411),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp284_3596 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y133" ),
    .INIT ( 64'hFFFFEEF0FFFFE2F0 ))
  \ins1/ALU_Execution/Mmux_ans_tmp329  (
    .ADR4(\ins1/ALU_Execution/Mmux_ans_tmp323_3625 ),
    .ADR3(\ins1/ALU_Execution/Mmux_ans_tmp207_3263 ),
    .ADR1(B_2_OBUF_3412),
    .ADR5(\ins1/ALU_Execution/Sh3 ),
    .ADR0(N52),
    .ADR2(N51),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp328 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y133" ),
    .INIT ( 64'h00550000C0C5C0C0 ))
  \ins1/ALU_Execution/Mmux_ans_tmp329_SW0  (
    .ADR2(\ins1/ALU_Execution/Mmux_ans_tmp110 ),
    .ADR1(A_7_OBUF_3306),
    .ADR5(B_3_OBUF_3413),
    .ADR3(B_2_OBUF_3412),
    .ADR0(B_1_OBUF_3411),
    .ADR4(N270_0),
    .O(N51)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y136" ),
    .INIT ( 64'hEEAAFEFACC00FCF0 ))
  \ins1/ALU_Execution/Mmux_ans_tmp44  (
    .ADR5(\ins1/ans_ex [0]),
    .ADR0(\ins1/ALU_Execution/Mmux_ans_tmp101_0 ),
    .ADR2(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_58_o_0 ),
    .ADR4(B_0_OBUF_0),
    .ADR1(A_0_OBUF_3297),
    .ADR3(\ins1/ALU_Execution/Mmux_ans_tmp81_3520 ),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp43_3519 )
  );
  X_BUF   \N21/N21_BMUX_Delay  (
    .I(N163),
    .O(N163_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X65Y119" ),
    .INIT ( 64'hDDDDD8D8DDDDD8D8 ))
  \ins2/Mmux_Current_Address5_SW0  (
    .ADR3(1'b1),
    .ADR1(\ins7/R1 [4]),
    .ADR2(\ins7/Q [0]),
    .ADR4(ins_4_OBUF_3240),
    .ADR0(\ins7/RET_Out ),
    .ADR5(1'b1),
    .O(N21)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X65Y119" ),
    .INIT ( 32'hDD00D800 ))
  \ins7/out62_SW7  (
    .ADR3(reset_IBUF_3189),
    .ADR1(\ins7/R1 [4]),
    .ADR2(\ins7/Q [0]),
    .ADR4(ins_4_OBUF_3240),
    .ADR0(\ins7/RET_Out ),
    .O(N163)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X65Y119" ),
    .INIT ( 64'hFD0DF80800000000 ))
  \ins7/out62_SW6  (
    .ADR5(reset_IBUF_3189),
    .ADR4(\ins2/Next_Address [4]),
    .ADR1(\ins2/Hold_Address [4]),
    .ADR2(\ins7/Q [0]),
    .ADR0(Stall),
    .ADR3(N21),
    .O(N162)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X63Y128" ),
    .INIT ( 64'hDCFD8C08DCFD8C08 ))
  \ins1/ALU_Execution/type2/Add/inst6/carryout  (
    .ADR5(1'b1),
    .ADR2(B_3_OBUF_3413),
    .ADR0(A_3_OBUF_3298),
    .ADR1(N3),
    .ADR4(N2),
    .ADR3(\ins1/ALU_Execution/type2/Add/temp_carryout[2] ),
    .O(\ins1/ALU_Execution/type2/Add/temp_carryout[5] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X63Y128" ),
    .INIT ( 64'h0000003300000000 ))
  \ins1/ALU_Execution/Mmux_flag_ex24  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR3(\ins1/ALU_Execution/ans_tmp_temp<1>[5] ),
    .ADR1(\ins1/ALU_Execution/ans_tmp_temp<1>[6] ),
    .ADR5(\ins1/ALU_Execution/Mmux_flag_ex23_3637 ),
    .ADR4(\ins1/ALU_Execution/ans_tmp_temp<1>[7] ),
    .O(\ins1/ALU_Execution/Mmux_flag_ex24_3477 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X63Y128" ),
    .INIT ( 64'h4B4BD2D2B4B42D2D ))
  \ins1/ALU_Execution/type2/Add/inst8/Mxor_sum_xo<0>1  (
    .ADR3(1'b1),
    .ADR4(A_6_OBUF_3309),
    .ADR2(A_7_OBUF_3306),
    .ADR5(B_7_OBUF_3417),
    .ADR1(B_6_OBUF_3416),
    .ADR0(\ins1/ALU_Execution/type2/Add/temp_carryout[5] ),
    .O(\ins1/ALU_Execution/ans_tmp_temp<1>[7] )
  );
  X_BUF   \N25/N25_BMUX_Delay  (
    .I(N201),
    .O(N201_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X65Y120" ),
    .INIT ( 64'hFFFA5550FFFA5550 ))
  \ins2/Mmux_Current_Address7_SW0  (
    .ADR1(1'b1),
    .ADR0(\ins7/RET_Out ),
    .ADR2(ins_6_OBUF_3276),
    .ADR3(\ins7/Q [0]),
    .ADR4(\ins7/R1 [6]),
    .ADR5(1'b1),
    .O(N25)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X65Y120" ),
    .INIT ( 32'hCCC84440 ))
  \ins7/out62_SW13  (
    .ADR1(reset_IBUF_3189),
    .ADR0(\ins7/RET_Out ),
    .ADR2(ins_6_OBUF_3276),
    .ADR3(\ins7/Q [0]),
    .ADR4(\ins7/R1 [6]),
    .O(N201)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X65Y120" ),
    .INIT ( 64'hE020E020F030C000 ))
  \ins7/out62_SW12  (
    .ADR2(reset_IBUF_3189),
    .ADR1(\ins7/Q [0]),
    .ADR5(Stall),
    .ADR0(\ins2/Hold_Address [6]),
    .ADR4(\ins2/Next_Address [6]),
    .ADR3(N25),
    .O(N200)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X63Y133" ),
    .INIT ( 64'hFEF8E080FCF0C000 ))
  \ins1/ALU_Execution/type1/Add/inst4/carryout_SW0  (
    .ADR0(A_2_OBUF_3301),
    .ADR1(A_3_OBUF_3298),
    .ADR2(A_4_OBUF_3305),
    .ADR4(B_4_OBUF_3414),
    .ADR3(B_3_OBUF_3413),
    .ADR5(B_2_OBUF_3412),
    .O(N176)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X65Y129" ),
    .INIT ( 64'hFFCCBBCCCC00AA88 ))
  \ins1/ALU_Execution/Mmux_ans_tmp321  (
    .ADR2(1'b1),
    .ADR0(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_48_o ),
    .ADR4(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_47_o_0 ),
    .ADR5(\ins1/ALU_Execution/Mmux_ans_tmp111 ),
    .ADR1(A_7_OBUF_3306),
    .ADR3(B_7_OBUF_3417),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp32 )
  );
  X_SFF #(
    .LOC ( "SLICE_X65Y129" ),
    .INIT ( 1'b0 ))
  \ins1/DM_data_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins1/DM_data_7/CLK ),
    .I(B_7_OBUF_3417),
    .O(\ins1/DM_data [7]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X65Y129" ),
    .INIT ( 64'hFFFF0000AAAAAAAA ))
  \ins3/Mmux_n003582  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(\ins8/DFF5_3280 ),
    .ADR4(\ins2/ins_prv [8]),
    .ADR0(\ins3/Mmux_n00358 ),
    .O(B_7_OBUF_3417)
  );
  X_SFF #(
    .LOC ( "SLICE_X65Y129" ),
    .INIT ( 1'b0 ))
  \ins1/DM_data_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins1/DM_data_6/CLK ),
    .I(B_6_OBUF_3416),
    .O(\ins1/DM_data [6]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X65Y129" ),
    .INIT ( 64'hFFFFF0F00F0F0000 ))
  \ins3/Mmux_n003572  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\ins8/DFF5_3280 ),
    .ADR5(\ins2/ins_prv [7]),
    .ADR4(\ins3/Mmux_n00357 ),
    .O(B_6_OBUF_3416)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X65Y129" ),
    .INIT ( 64'hB8B8BB88B8B8BB88 ))
  \ins3/Mmux_n003571  (
    .ADR5(1'b1),
    .ADR0(\ins1/ans_ex [6]),
    .ADR4(\ins4/DM_out [6]),
    .ADR1(\ins8/C4 ),
    .ADR3(N145),
    .ADR2(N146),
    .O(\ins3/Mmux_n00357 )
  );
  X_BUF   \N27/N27_BMUX_Delay  (
    .I(N204),
    .O(N204_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X63Y120" ),
    .INIT ( 64'hFE0EFE0EFE0EFE0E ))
  \ins2/Mmux_Current_Address8_SW0  (
    .ADR4(1'b1),
    .ADR2(\ins7/RET_Out ),
    .ADR0(ins_7_OBUF_3290),
    .ADR1(\ins7/Q [0]),
    .ADR3(\ins7/R1 [7]),
    .ADR5(1'b1),
    .O(N27)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X63Y120" ),
    .INIT ( 32'hFE0E0000 ))
  \ins7/out62_SW15  (
    .ADR4(reset_IBUF_3189),
    .ADR2(\ins7/RET_Out ),
    .ADR0(ins_7_OBUF_3290),
    .ADR1(\ins7/Q [0]),
    .ADR3(\ins7/R1 [7]),
    .O(N204)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X63Y120" ),
    .INIT ( 64'hF030E020D010C000 ))
  \ins7/out62_SW14  (
    .ADR2(reset_IBUF_3189),
    .ADR1(\ins7/Q [0]),
    .ADR0(Stall),
    .ADR5(\ins2/Hold_Address [7]),
    .ADR4(\ins2/Next_Address [7]),
    .ADR3(N27),
    .O(N203)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X63Y122" ),
    .INIT ( 64'h0000000000000F0F ))
  \ins1/ALU_Execution/Mmux_flag_ex12_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR5(\ins2/ins_prv [23]),
    .ADR2(\ins2/ins_prv [21]),
    .ADR4(\ins2/ins_prv [20]),
    .O(N113)
  );
  X_BUF   \N2/N2_AMUX_Delay  (
    .I(\ins1/ALU_Execution/Mmux_ans_tmp201_2808 ),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp201_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X63Y130" ),
    .INIT ( 64'h44FF004444FF0044 ))
  \ins1/ALU_Execution/type2/Add/inst6/carryout_SW0  (
    .ADR5(1'b1),
    .ADR2(1'b1),
    .ADR4(A_5_OBUF_3302),
    .ADR1(A_4_OBUF_3305),
    .ADR3(B_5_OBUF_3415),
    .ADR0(B_4_OBUF_3414),
    .O(N2)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X63Y130" ),
    .INIT ( 64'hC000C000C000C000 ))
  \ins1/ALU_Execution/Mmux_flag_ex211  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(\ins2/ins_prv [23]),
    .ADR3(\ins2/ins_prv [21]),
    .ADR1(\ins2/ins_prv [22]),
    .ADR5(1'b1),
    .O(\ins1/ALU_Execution/Mmux_flag_ex21_3257 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X63Y130" ),
    .INIT ( 32'h00003000 ))
  \ins1/ALU_Execution/Mmux_ans_tmp322  (
    .ADR0(1'b1),
    .ADR4(\ins2/ins_prv [20]),
    .ADR2(\ins2/ins_prv [23]),
    .ADR3(\ins2/ins_prv [21]),
    .ADR1(\ins2/ins_prv [22]),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp201_2808 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X63Y132" ),
    .INIT ( 64'hFFFAF0A0FEF8E080 ))
  \ins1/ALU_Execution/type1/Add/inst4/carryout_SW1  (
    .ADR1(A_2_OBUF_3301),
    .ADR0(A_3_OBUF_3298),
    .ADR4(A_4_OBUF_3305),
    .ADR2(B_4_OBUF_3414),
    .ADR3(B_3_OBUF_3413),
    .ADR5(B_2_OBUF_3412),
    .O(N177)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X63Y132" ),
    .INIT ( 64'hAA99AAA59955A555 ))
  \ins1/ALU_Execution/type1/Add/inst7/Mxor_sum_xo<0>1  (
    .ADR3(A_5_OBUF_3302),
    .ADR5(B_5_OBUF_3415),
    .ADR0(\ins1/ALU_Execution/type2/Add/inst7/x_y_XOR_2_o ),
    .ADR4(N111),
    .ADR2(N176),
    .ADR1(N177),
    .O(\ins1/ALU_Execution/ans_tmp_temp<0> [6])
  );
  X_BUF   \N63/N63_DMUX_Delay  (
    .I(\ins1/ALU_Execution/Mmux_ans_tmp3210_2867 ),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp3210_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X65Y128" ),
    .INIT ( 64'hA8FF08FFA8FF08FF ))
  \ins1/ALU_Execution/Mmux_ans_tmp3212_SW0  (
    .ADR4(\ins2/ins_prv [8]),
    .ADR2(\ins8/DFF5_3280 ),
    .ADR0(\ins1/ALU_Execution/Mmux_ans_tmp121_3281 ),
    .ADR3(\ins1/ALU_Execution/Mmux_flag_ex25_0 ),
    .ADR1(\ins3/Mmux_n00358 ),
    .ADR5(1'b1),
    .O(N63)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X65Y128" ),
    .INIT ( 32'hA8A80808 ))
  \ins1/ALU_Execution/Mmux_ans_tmp3211  (
    .ADR4(\ins2/ins_prv [8]),
    .ADR2(\ins8/DFF5_3280 ),
    .ADR0(\ins1/ALU_Execution/Mmux_ans_tmp121_3281 ),
    .ADR3(1'b1),
    .ADR1(\ins3/Mmux_n00358 ),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp3210_2867 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X65Y128" ),
    .INIT ( 64'hFFFFAAAAFFFAAAA0 ))
  \ins1/ALU_Execution/type1/Add/inst7/carryout_SW3  (
    .ADR1(1'b1),
    .ADR4(A_6_OBUF_3309),
    .ADR3(A_5_OBUF_3302),
    .ADR2(A_4_OBUF_3305),
    .ADR5(B_4_OBUF_3414),
    .ADR0(B_6_OBUF_3416),
    .O(N8)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X65Y128" ),
    .INIT ( 64'hCCC8C0C0CCC0C0C0 ))
  \ins1/ALU_Execution/Mmux_ans_tmp3210  (
    .ADR4(\ins1/ALU_Execution/Mmux_ans_tmp113_0 ),
    .ADR1(\ins1/ALU_Execution/Mmux_ans_tmp122_3261 ),
    .ADR0(\ins1/ALU_Execution/Mmux_ans_tmp102 ),
    .ADR3(\ins1/ALU_Execution/Mmux_ans_tmp322_3624 ),
    .ADR2(\ins1/ALU_Execution/Mmux_ans_tmp32 ),
    .ADR5(\ins1/ALU_Execution/Mmux_ans_tmp328 ),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp329_3495 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X65Y128" ),
    .INIT ( 64'h0011001100050055 ))
  \ins1/ALU_Execution/Mmux_flag_ex26  (
    .ADR2(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_45_o ),
    .ADR5(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_44_o_0 ),
    .ADR0(N63),
    .ADR4(\ins1/ALU_Execution/ans_tmp_temp<1>[7] ),
    .ADR1(\ins1/ALU_Execution/ans_tmp_temp<0><7>_0 ),
    .ADR3(\ins1/ALU_Execution/Mmux_ans_tmp329_3495 ),
    .O(\ins1/ALU_Execution/Mmux_flag_ex26_3480 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X63Y119" ),
    .INIT ( 64'hEA2AC0002A2A0000 ))
  \ins7/Mmux_n00428_SW0_SW0  (
    .ADR0(\ins2/Next_Address [5]),
    .ADR4(\ins2/Next_Address [4]),
    .ADR1(ins_23_OBUF_3271),
    .ADR2(\ins5/Mmux_n002011_3323 ),
    .ADR3(\ins2/Hold_Address [5]),
    .ADR5(\ins2/Hold_Address [4]),
    .O(N54)
  );
  X_SFF #(
    .LOC ( "SLICE_X63Y119" ),
    .INIT ( 1'b0 ))
  \ins2/Next_Address_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/Next_Address_5/CLK ),
    .I(\ins2/IA [5]),
    .O(\ins2/Next_Address [5]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X63Y119" ),
    .INIT ( 64'h7FFFFFFF80000000 ))
  \ins2/Madd_IA_xor<5>11  (
    .ADR5(Current_Address_5_OBUF_3377),
    .ADR2(Current_Address_0_OBUF_3382),
    .ADR3(Current_Address_1_OBUF_3381),
    .ADR1(Current_Address_2_OBUF_3380),
    .ADR4(Current_Address_3_OBUF_3379),
    .ADR0(Current_Address_4_OBUF_3378),
    .O(\ins2/IA [5])
  );
  X_SFF #(
    .LOC ( "SLICE_X63Y119" ),
    .INIT ( 1'b0 ))
  \ins2/Hold_Address_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/Hold_Address_4/CLK ),
    .I(Current_Address_4_OBUF_3378),
    .O(\ins2/Hold_Address [4]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X63Y119" ),
    .INIT ( 64'hFFE4FF001B00FF00 ))
  \ins2/Mmux_Current_Address5  (
    .ADR4(ins_23_OBUF_3271),
    .ADR5(N163_0),
    .ADR3(N162),
    .ADR2(N61),
    .ADR1(N60),
    .ADR0(flag_ex[1]),
    .O(Current_Address_4_OBUF_3378)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X65Y130" ),
    .INIT ( 64'hD5C0C0C0FFEAEAEA ))
  \ins1/ALU_Execution/Mmux_ans_tmp323  (
    .ADR1(\ins1/ans_ex [7]),
    .ADR2(\ins1/ALU_Execution/Mmux_ans_tmp101_0 ),
    .ADR0(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_58_o_0 ),
    .ADR3(A_7_OBUF_3306),
    .ADR4(\ins1/ALU_Execution/Mmux_ans_tmp201_0 ),
    .ADR5(B_7_OBUF_3417),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp322_3624 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X65Y130" ),
    .INIT ( 64'h040DFBF2BF2F40D0 ))
  \ins1/ALU_Execution/type2/Add/inst7/Mxor_sum_xo<0>1  (
    .ADR1(B_3_OBUF_3413),
    .ADR0(A_3_OBUF_3298),
    .ADR4(B_6_OBUF_3416),
    .ADR2(N124),
    .ADR5(N125),
    .ADR3(\ins1/ALU_Execution/type2/Add/temp_carryout[2] ),
    .O(\ins1/ALU_Execution/ans_tmp_temp<1>[6] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X65Y130" ),
    .INIT ( 64'h9CCC393C9CCC393C ))
  \ins1/ALU_Execution/type2/Add/inst7/Mxor_sum_xo<0>1_SW1  (
    .ADR5(1'b1),
    .ADR1(A_6_OBUF_3309),
    .ADR4(A_5_OBUF_3302),
    .ADR0(A_4_OBUF_3305),
    .ADR2(B_5_OBUF_3415),
    .ADR3(B_4_OBUF_3414),
    .O(N125)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X65Y130" ),
    .INIT ( 64'hE8E817171717E8E8 ))
  \ins1/ALU_Execution/type1/Add/inst6/Mxor_sum_xo<0>1  (
    .ADR3(1'b1),
    .ADR5(B_5_OBUF_3415),
    .ADR1(B_4_OBUF_3414),
    .ADR4(A_5_OBUF_3302),
    .ADR0(A_4_OBUF_3305),
    .ADR2(\ins1/ALU_Execution/type1/Add/temp_carryout[3] ),
    .O(\ins1/ALU_Execution/ans_tmp_temp<0> [5])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X63Y129" ),
    .INIT ( 64'hFFFF00FF55FF0055 ))
  \ins1/ALU_Execution/type2/Add/inst6/carryout_SW1  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR4(A_5_OBUF_3302),
    .ADR5(A_4_OBUF_3305),
    .ADR3(B_5_OBUF_3415),
    .ADR0(B_4_OBUF_3414),
    .O(N3)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X63Y129" ),
    .INIT ( 64'hFF0C0C00FF3F3F00 ))
  \ins1/ALU_Execution/type2/Add/inst6/carryout_SW3  (
    .ADR0(1'b1),
    .ADR2(\ins2/ins_prv [7]),
    .ADR1(\ins8/DFF5_3280 ),
    .ADR5(\ins3/Mmux_n00357 ),
    .ADR3(A_6_OBUF_3309),
    .ADR4(N3),
    .O(N222)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X63Y129" ),
    .INIT ( 64'hF5F05500F3F03300 ))
  \ins1/ALU_Execution/Mmux_ans_tmp283  (
    .ADR0(\ins2/ins_prv [7]),
    .ADR2(\ins1/ans_ex [6]),
    .ADR5(\ins8/DFF5_3280 ),
    .ADR3(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_58_o_0 ),
    .ADR4(\ins1/ALU_Execution/Mmux_ans_tmp101_0 ),
    .ADR1(\ins3/Mmux_n00357 ),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp282_3594 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X62Y120" ),
    .INIT ( 64'h0013FFB31313B3B3 ))
  \ins7/out61_SW1  (
    .ADR2(\ins1/flag_tmp [0]),
    .ADR3(N113),
    .ADR0(\ins1/ALU_Execution/Mmux_flag_ex21_3257 ),
    .ADR4(N198_0),
    .ADR1(N197),
    .ADR5(\ins1/ALU_Execution/Mmux_flag_ex1 ),
    .O(N61)
  );
  X_SFF #(
    .LOC ( "SLICE_X62Y120" ),
    .INIT ( 1'b0 ))
  \ins2/Hold_Address_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/Hold_Address_7/CLK ),
    .I(Current_Address_7_OBUF_3375),
    .O(\ins2/Hold_Address [7]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X62Y120" ),
    .INIT ( 64'hF0CCE4CCCCCCE4CC ))
  \ins2/Mmux_Current_Address8  (
    .ADR3(ins_23_OBUF_3271),
    .ADR2(N204_0),
    .ADR1(N203),
    .ADR5(N61),
    .ADR0(N60),
    .ADR4(flag_ex[1]),
    .O(Current_Address_7_OBUF_3375)
  );
  X_SFF #(
    .LOC ( "SLICE_X62Y120" ),
    .INIT ( 1'b0 ))
  \ins7/R1_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins7/R1_7/CLK ),
    .I(\ins7/n0042 [7]),
    .O(\ins7/R1 [7]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X62Y120" ),
    .INIT ( 64'hDFD0FFF02F200F00 ))
  \ins7/Mmux_n00428  (
    .ADR2(interrupt_IBUF_3231),
    .ADR0(N33),
    .ADR1(\ins7/Mmux_n004251_3462 ),
    .ADR3(\ins7/R1 [7]),
    .ADR5(Current_Address_7_OBUF_3375),
    .ADR4(Current_Address_6_OBUF_3376),
    .O(\ins7/n0042 [7])
  );
  X_SFF #(
    .LOC ( "SLICE_X62Y120" ),
    .INIT ( 1'b0 ))
  \ins2/Hold_Address_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/Hold_Address_6/CLK ),
    .I(Current_Address_6_OBUF_3376),
    .O(\ins2/Hold_Address [6]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X62Y120" ),
    .INIT ( 64'hF1FBE040FFFF0000 ))
  \ins2/Mmux_Current_Address7  (
    .ADR5(ins_23_OBUF_3271),
    .ADR2(N201_0),
    .ADR4(N200),
    .ADR3(N61),
    .ADR1(N60),
    .ADR0(flag_ex[1]),
    .O(Current_Address_6_OBUF_3376)
  );
  X_SFF #(
    .LOC ( "SLICE_X63Y111" ),
    .INIT ( 1'b0 ))
  \ins2/Next_Address_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/Next_Address_2/CLK ),
    .I(\ins2/IA [2]),
    .O(\ins2/Next_Address [2]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X63Y111" ),
    .INIT ( 64'h2277000027270000 ))
  \ins2/Madd_IA_xor<2>11  (
    .ADR4(reset_IBUF_3189),
    .ADR2(N103),
    .ADR3(N104),
    .ADR5(Stall),
    .ADR1(N105),
    .ADR0(pc_mux_sel),
    .O(\ins2/IA [2])
  );
  X_SFF #(
    .LOC ( "SLICE_X63Y111" ),
    .INIT ( 1'b0 ))
  \ins2/Next_Address_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/Next_Address_1/CLK ),
    .I(\ins2/IA [1]),
    .O(\ins2/Next_Address [1]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X63Y111" ),
    .INIT ( 64'h1B1B0000B1B10000 ))
  \ins2/Madd_IA_xor<1>11  (
    .ADR3(1'b1),
    .ADR4(reset_IBUF_3189),
    .ADR2(N15),
    .ADR5(N29),
    .ADR1(N56),
    .ADR0(pc_mux_sel),
    .O(\ins2/IA [1])
  );
  X_SFF #(
    .LOC ( "SLICE_X63Y111" ),
    .INIT ( 1'b0 ))
  \ins2/Next_Address_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/Next_Address_0/CLK ),
    .I(\ins2/IA [0]),
    .O(\ins2/Next_Address [0]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X63Y111" ),
    .INIT ( 64'h7777555F7777FF5F ))
  \ins2/Madd_IA_xor<0>11  (
    .ADR0(reset_IBUF_3189),
    .ADR5(\ins2/Hold_Address [0]),
    .ADR1(N29),
    .ADR2(\ins2/Next_Address [0]),
    .ADR3(Stall),
    .ADR4(pc_mux_sel),
    .O(\ins2/IA [0])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X63Y111" ),
    .INIT ( 64'hFDFDECECCCCCCCCC ))
  \ins7/out62  (
    .ADR3(1'b1),
    .ADR1(\ins7/Q [0]),
    .ADR5(ins_23_OBUF_3271),
    .ADR2(N61),
    .ADR4(N60),
    .ADR0(flag_ex[1]),
    .O(pc_mux_sel)
  );
  X_SFF #(
    .LOC ( "SLICE_X62Y121" ),
    .INIT ( 1'b0 ))
  \ins2/Hold_Address_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/Hold_Address_1/CLK ),
    .I(Current_Address_1_OBUF_3381),
    .O(\ins2/Hold_Address [1]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X62Y121" ),
    .INIT ( 64'hFCEC0C4CCCECCC4C ))
  \ins2/Mmux_Current_Address2  (
    .ADR2(ins_23_OBUF_3271),
    .ADR4(N154_0),
    .ADR1(N153),
    .ADR5(N61),
    .ADR0(N60),
    .ADR3(flag_ex[1]),
    .O(Current_Address_1_OBUF_3381)
  );
  X_SFF #(
    .LOC ( "SLICE_X62Y121" ),
    .INIT ( 1'b0 ))
  \ins1/flag_tmp_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins1/flag_tmp_1/CLK ),
    .I(flag_ex[1]),
    .O(\ins1/flag_tmp [1]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X62Y121" ),
    .INIT ( 64'hFF0CFF0CFF0CFF0E ))
  \ins1/ALU_Execution/Mmux_flag_ex28  (
    .ADR2(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_44_o_0 ),
    .ADR1(\ins1/ALU_Execution/Mmux_flag_ex24_3477 ),
    .ADR4(\ins1/ans_tmp [6]),
    .ADR3(\ins1/ALU_Execution/Mmux_flag_ex22_3479 ),
    .ADR0(\ins1/ALU_Execution/Mmux_flag_ex26_3480 ),
    .ADR5(N171),
    .O(flag_ex[1])
  );
  X_SFF #(
    .LOC ( "SLICE_X62Y121" ),
    .INIT ( 1'b0 ))
  \ins1/flag_tmp_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins1/flag_tmp_0/CLK ),
    .I(flag_ex[0]),
    .O(\ins1/flag_tmp [0]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X62Y121" ),
    .INIT ( 64'hCC00CC00CC00CE0A ))
  \ins1/ALU_Execution/Mmux_flag_ex12  (
    .ADR0(\ins1/ALU_Execution/Mmux_flag_ex1 ),
    .ADR4(\ins2/ins_prv [21]),
    .ADR5(\ins2/ins_prv [23]),
    .ADR1(\ins1/flag_tmp [0]),
    .ADR2(\ins2/ins_prv [20]),
    .ADR3(\ins1/ALU_Execution/Mmux_flag_ex21_3257 ),
    .O(flag_ex[0])
  );
  X_SFF #(
    .LOC ( "SLICE_X62Y121" ),
    .INIT ( 1'b0 ))
  \ins2/Hold_Address_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/Hold_Address_5/CLK ),
    .I(Current_Address_5_OBUF_3377),
    .O(\ins2/Hold_Address [5]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X62Y121" ),
    .INIT ( 64'hF870F870FC30F0F0 ))
  \ins2/Mmux_Current_Address6  (
    .ADR1(ins_23_OBUF_3271),
    .ADR3(N166_0),
    .ADR2(N165),
    .ADR0(N61),
    .ADR4(N60),
    .ADR5(flag_ex[1]),
    .O(Current_Address_5_OBUF_3377)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X62Y130" ),
    .INIT ( 64'h0000000000040000 ))
  \ins1/ALU_Execution/Mmux_flag_ex21  (
    .ADR1(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_44_o_0 ),
    .ADR4(\ins1/ALU_Execution/type2/Add/inst1/x_y_XOR_2_o ),
    .ADR2(\ins1/ALU_Execution/ans_tmp_temp<0> [1]),
    .ADR3(\ins1/ALU_Execution/ans_tmp_temp<0> [2]),
    .ADR0(\ins1/ALU_Execution/ans_tmp_temp<0> [3]),
    .ADR5(\ins1/ALU_Execution/ans_tmp_temp<0> [4]),
    .O(\ins1/ALU_Execution/Mmux_flag_ex2 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X62Y130" ),
    .INIT ( 64'hF0F0F1F000001100 ))
  \ins1/ALU_Execution/Mmux_flag_ex22  (
    .ADR5(\ins1/flag_tmp [1]),
    .ADR2(\ins1/ALU_Execution/Mmux_flag_ex21_3257 ),
    .ADR0(\ins1/ALU_Execution/ans_tmp_temp<0> [6]),
    .ADR1(\ins1/ALU_Execution/ans_tmp_temp<0> [5]),
    .ADR3(\ins1/ALU_Execution/Mmux_flag_ex2 ),
    .ADR4(\ins1/ALU_Execution/ans_tmp_temp<0><7>_0 ),
    .O(\ins1/ALU_Execution/Mmux_flag_ex22_3479 )
  );
  X_BUF   \N23/N23_BMUX_Delay  (
    .I(N166),
    .O(N166_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X62Y118" ),
    .INIT ( 64'hDDDDDD88DDDDDD88 ))
  \ins2/Mmux_Current_Address6_SW0  (
    .ADR2(1'b1),
    .ADR1(\ins7/R1 [5]),
    .ADR3(\ins7/Q [0]),
    .ADR4(ins_5_OBUF_3247),
    .ADR0(\ins7/RET_Out ),
    .ADR5(1'b1),
    .O(N23)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X62Y118" ),
    .INIT ( 32'hD0D0D080 ))
  \ins7/out62_SW9  (
    .ADR2(reset_IBUF_3189),
    .ADR1(\ins7/R1 [5]),
    .ADR3(\ins7/Q [0]),
    .ADR4(ins_5_OBUF_3247),
    .ADR0(\ins7/RET_Out ),
    .O(N166)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X62Y118" ),
    .INIT ( 64'hF030E020C000E020 ))
  \ins7/out62_SW8  (
    .ADR2(reset_IBUF_3189),
    .ADR0(\ins2/Next_Address [5]),
    .ADR5(\ins2/Hold_Address [5]),
    .ADR1(\ins7/Q [0]),
    .ADR4(Stall),
    .ADR3(N23),
    .O(N165)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X62Y129" ),
    .INIT ( 64'hF9F0F5F06600AA00 ))
  \ins1/ALU_Execution/type1/Add/inst6/Mxor_sum_xo<0>1_SW0  (
    .ADR2(\ins1/ALU_Execution/Mmux_ans_tmp121_3281 ),
    .ADR3(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_44_o_0 ),
    .ADR0(A_5_OBUF_3302),
    .ADR1(A_4_OBUF_3305),
    .ADR5(B_5_OBUF_3415),
    .ADR4(B_4_OBUF_3414),
    .O(N148)
  );
  X_SFF #(
    .LOC ( "SLICE_X62Y119" ),
    .INIT ( 1'b0 ))
  \ins2/Next_Address_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/Next_Address_4/CLK ),
    .I(\ins2/IA [4]),
    .O(\ins2/Next_Address [4]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X62Y119" ),
    .INIT ( 64'h66CCCCCCCCCCCCCC ))
  \ins2/Madd_IA_xor<4>11  (
    .ADR2(1'b1),
    .ADR1(Current_Address_4_OBUF_3378),
    .ADR0(Current_Address_0_OBUF_3382),
    .ADR4(Current_Address_1_OBUF_3381),
    .ADR5(Current_Address_2_OBUF_3380),
    .ADR3(Current_Address_3_OBUF_3379),
    .O(\ins2/IA [4])
  );
  X_SFF #(
    .LOC ( "SLICE_X62Y119" ),
    .INIT ( 1'b0 ))
  \ins2/Hold_Address_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/Hold_Address_3/CLK ),
    .I(Current_Address_3_OBUF_3379),
    .O(\ins2/Hold_Address [3]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X62Y119" ),
    .INIT ( 64'hACCCAACCACCCCCCC ))
  \ins2/Mmux_Current_Address4  (
    .ADR3(ins_23_OBUF_3271),
    .ADR0(N160_0),
    .ADR1(N159),
    .ADR2(N61),
    .ADR5(N60),
    .ADR4(flag_ex[1]),
    .O(Current_Address_3_OBUF_3379)
  );
  X_SFF #(
    .LOC ( "SLICE_X62Y119" ),
    .INIT ( 1'b0 ))
  \ins2/Hold_Address_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/Hold_Address_2/CLK ),
    .I(Current_Address_2_OBUF_3380),
    .O(\ins2/Hold_Address [2]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X62Y119" ),
    .INIT ( 64'hCFDFEFFFC0804000 ))
  \ins2/Mmux_Current_Address3  (
    .ADR2(ins_23_OBUF_3271),
    .ADR1(N157_0),
    .ADR5(N156),
    .ADR4(N61),
    .ADR3(N60),
    .ADR0(flag_ex[1]),
    .O(Current_Address_2_OBUF_3380)
  );
  X_SFF #(
    .LOC ( "SLICE_X62Y119" ),
    .INIT ( 1'b0 ))
  \ins2/Hold_Address_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/Hold_Address_0/CLK ),
    .I(Current_Address_0_OBUF_3382),
    .O(\ins2/Hold_Address [0]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X62Y119" ),
    .INIT ( 64'hCCF0E4F0D8F0F0F0 ))
  \ins2/Mmux_Current_Address1  (
    .ADR3(ins_23_OBUF_3271),
    .ADR1(N169_0),
    .ADR2(N168),
    .ADR4(N61),
    .ADR5(N60),
    .ADR0(flag_ex[1]),
    .O(Current_Address_0_OBUF_3382)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X62Y131" ),
    .INIT ( 64'hFF88FF8444444848 ))
  \ins1/ALU_Execution/type1/Add/inst6/Mxor_sum_xo<0>1_SW1  (
    .ADR3(\ins1/ALU_Execution/Mmux_ans_tmp121_3281 ),
    .ADR1(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_44_o_0 ),
    .ADR0(A_5_OBUF_3302),
    .ADR4(A_4_OBUF_3305),
    .ADR5(B_5_OBUF_3415),
    .ADR2(B_4_OBUF_3414),
    .O(N149)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X62Y132" ),
    .INIT ( 64'hFA50EEEEFA504444 ))
  \ins1/ALU_Execution/Mmux_ans_tmp241  (
    .ADR2(N149),
    .ADR1(N148),
    .ADR5(N150),
    .ADR3(N151),
    .ADR4(\ins1/ALU_Execution/type1/Add/temp_carryout[3] ),
    .ADR0(\ins1/ALU_Execution/ans_tmp_temp<1>[5] ),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp24 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X62Y132" ),
    .INIT ( 64'hEEEEFCFC8888C0C0 ))
  \ins1/ALU_Execution/type1/Add/inst4/carryout  (
    .ADR3(1'b1),
    .ADR1(A_3_OBUF_3298),
    .ADR5(B_3_OBUF_3413),
    .ADR4(\ins1/ALU_Execution/type1/Add/temp_carryout[0] ),
    .ADR0(N225),
    .ADR2(N224),
    .O(\ins1/ALU_Execution/type1/Add/temp_carryout[3] )
  );
  X_BUF   \ins1/ALU_Execution/op_dec[4]_PWR_3_o_equal_23_o/ins1/ALU_Execution/op_dec[4]_PWR_3_o_equal_23_o_DMUX_Delay  (
    .I(\ins1/ALU_Execution/Mmux_flag_ex25_2537 ),
    .O(\ins1/ALU_Execution/Mmux_flag_ex25_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X62Y122" ),
    .INIT ( 64'h2000000020000000 ))
  \ins1/ALU_Execution/op_dec[4]_PWR_3_o_equal_23_o<4>1  (
    .ADR0(\ins2/ins_prv [21]),
    .ADR4(\ins2/ins_prv [20]),
    .ADR3(\ins2/ins_prv [23]),
    .ADR1(\ins2/ins_prv [22]),
    .ADR2(\ins2/ins_prv [19]),
    .ADR5(1'b1),
    .O(\ins1/ALU_Execution/op_dec[4]_PWR_3_o_equal_23_o )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X62Y122" ),
    .INIT ( 32'h46AF40AA ))
  \ins1/ALU_Execution/Mmux_flag_ex25  (
    .ADR0(\ins2/ins_prv [21]),
    .ADR4(\ins2/ins_prv [20]),
    .ADR3(\ins2/ins_prv [23]),
    .ADR1(\ins2/ins_prv [22]),
    .ADR2(\ins2/ins_prv [19]),
    .O(\ins1/ALU_Execution/Mmux_flag_ex25_2537 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X62Y122" ),
    .INIT ( 64'hF5FFF5AA50AA5000 ))
  \ins1/ALU_Execution/Mmux_flag_ex11  (
    .ADR1(1'b1),
    .ADR3(\ins2/ins_prv [19]),
    .ADR5(A_7_OBUF_3306),
    .ADR0(B_7_OBUF_3417),
    .ADR4(\ins1/ALU_Execution/type1/Add/temp_carryout[6] ),
    .ADR2(\ins1/ALU_Execution/type2/Add/temp_carryout[6] ),
    .O(\ins1/ALU_Execution/Mmux_flag_ex1 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X62Y122" ),
    .INIT ( 64'hFFFF0777F8880000 ))
  \ins7/out61_SW0  (
    .ADR1(\ins1/flag_tmp [0]),
    .ADR2(N113),
    .ADR0(\ins1/ALU_Execution/Mmux_flag_ex21_3257 ),
    .ADR5(N194),
    .ADR4(N195_0),
    .ADR3(\ins1/ALU_Execution/Mmux_flag_ex1 ),
    .O(N60)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X62Y136" ),
    .INIT ( 64'hFFEAFFEAFFEAFFEA ))
  \ins1/ALU_Execution/Mmux_ans_tmp286  (
    .ADR4(1'b1),
    .ADR5(1'b1),
    .ADR1(data_in_6_IBUF_3421),
    .ADR2(\ins1/ALU_Execution/op_dec[4]_PWR_3_o_equal_29_o_0 ),
    .ADR3(\ins1/ALU_Execution/Mmux_ans_tmp284_3596 ),
    .ADR0(\ins1/ALU_Execution/Mmux_ans_tmp283_3595 ),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp285_3724 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X62Y136" ),
    .INIT ( 64'hFEFEFEFCFAFAFAF0 ))
  \ins1/ALU_Execution/Mmux_ans_tmp289  (
    .ADR0(\ins1/ALU_Execution/Mmux_ans_tmp102 ),
    .ADR1(A_6_OBUF_3309),
    .ADR2(\ins1/ALU_Execution/Mmux_ans_tmp282_3594 ),
    .ADR5(\ins1/ALU_Execution/Mmux_ans_tmp81_3520 ),
    .ADR4(\ins1/ALU_Execution/Mmux_ans_tmp287 ),
    .ADR3(\ins1/ALU_Execution/Mmux_ans_tmp285_3724 ),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp288_3592 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X62Y128" ),
    .INIT ( 64'hA0A0B2B2E8E8FAFA ))
  \ins1/ALU_Execution/type2/Add/inst6/carryout_SW2  (
    .ADR3(1'b1),
    .ADR5(\ins2/ins_prv [7]),
    .ADR1(\ins8/DFF5_3280 ),
    .ADR4(\ins3/Mmux_n00357 ),
    .ADR2(A_6_OBUF_3309),
    .ADR0(N2),
    .O(N221)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X62Y128" ),
    .INIT ( 64'hF2D0F2D0FB40FB40 ))
  \ins1/ALU_Execution/type2/Add/inst7/carryout1  (
    .ADR4(1'b1),
    .ADR0(B_3_OBUF_3413),
    .ADR1(A_3_OBUF_3298),
    .ADR5(\ins1/ALU_Execution/type2/Add/temp_carryout[2] ),
    .ADR2(N222),
    .ADR3(N221),
    .O(\ins1/ALU_Execution/type2/Add/temp_carryout[6] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X63Y110" ),
    .INIT ( 64'hD782FF0082D700FF ))
  \ins2/Madd_IA_xor<1>11_SW0  (
    .ADR0(ins_23_OBUF_3271),
    .ADR4(\ins5/Mmux_n002011_3323 ),
    .ADR2(\ins2/Hold_Address [1]),
    .ADR1(\ins2/Hold_Address [0]),
    .ADR5(\ins2/Next_Address [1]),
    .ADR3(\ins2/Next_Address [0]),
    .O(N56)
  );
  X_SFF #(
    .LOC ( "SLICE_X63Y116" ),
    .INIT ( 1'b0 ))
  \ins7/R1_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins7/R1_6/CLK ),
    .I(\ins7/n0042 [6]),
    .O(\ins7/R1 [6]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X63Y116" ),
    .INIT ( 64'hAA66F0F0AAAAF0F0 ))
  \ins7/Mmux_n004271  (
    .ADR4(interrupt_IBUF_3231),
    .ADR3(\ins7/Mmux_n004251_3462 ),
    .ADR5(Current_Address_5_OBUF_3377),
    .ADR2(\ins7/R1 [6]),
    .ADR0(Current_Address_6_OBUF_3376),
    .ADR1(Current_Address_4_OBUF_3378),
    .O(\ins7/n0042 [6])
  );
  X_SFF #(
    .LOC ( "SLICE_X63Y116" ),
    .INIT ( 1'b0 ))
  \ins7/R1_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins7/R1_5/CLK ),
    .I(\ins7/n0042 [5]),
    .O(\ins7/R1 [5]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X63Y116" ),
    .INIT ( 64'hF75DF75DA208A208 ))
  \ins7/Mmux_n004261  (
    .ADR4(1'b1),
    .ADR0(interrupt_IBUF_3231),
    .ADR2(\ins7/Mmux_n004251_3462 ),
    .ADR5(\ins7/R1 [5]),
    .ADR3(Current_Address_5_OBUF_3377),
    .ADR1(Current_Address_4_OBUF_3378),
    .O(\ins7/n0042 [5])
  );
  X_SFF #(
    .LOC ( "SLICE_X63Y116" ),
    .INIT ( 1'b0 ))
  \ins7/R1_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins7/R1_4/CLK ),
    .I(\ins7/n0042 [4]),
    .O(\ins7/R1 [4]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X63Y116" ),
    .INIT ( 64'h727272D8D8D872D8 ))
  \ins7/Mmux_n004251  (
    .ADR0(interrupt_IBUF_3231),
    .ADR3(N173),
    .ADR5(N210_0),
    .ADR2(\ins7/R1 [4]),
    .ADR4(pc_mux_sel),
    .ADR1(Current_Address_4_OBUF_3378),
    .O(\ins7/n0042 [4])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X63Y115" ),
    .INIT ( 64'h000053FFAC00FFFF ))
  \ins7/Mmux_n0042511  (
    .ADR3(ins_23_OBUF_3271),
    .ADR5(N210_0),
    .ADR4(N209),
    .ADR0(N61),
    .ADR1(N60),
    .ADR2(flag_ex[1]),
    .O(\ins7/Mmux_n004251_3462 )
  );
  X_BUF   \N96/N96_AMUX_Delay  (
    .I(N100),
    .O(N100_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X63Y112" ),
    .INIT ( 64'h8000000080000000 ))
  \ins7/Mmux_n0042511_SW1  (
    .ADR0(\ins2/Hold_Address [3]),
    .ADR4(\ins2/Hold_Address [2]),
    .ADR2(\ins2/Hold_Address [1]),
    .ADR1(\ins2/Hold_Address [0]),
    .ADR3(reset_IBUF_3189),
    .ADR5(1'b1),
    .O(N96)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X63Y112" ),
    .INIT ( 32'h95955555 ))
  \ins2/Madd_IA_xor<3>11_SW1  (
    .ADR0(\ins2/Hold_Address [3]),
    .ADR4(\ins2/Hold_Address [2]),
    .ADR2(\ins2/Hold_Address [1]),
    .ADR1(\ins2/Hold_Address [0]),
    .ADR3(1'b1),
    .O(N100)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X63Y118" ),
    .INIT ( 64'h8000000000000000 ))
  \ins2/Madd_IA_cy<5>11  (
    .ADR1(Current_Address_5_OBUF_3377),
    .ADR5(Current_Address_4_OBUF_3378),
    .ADR2(Current_Address_3_OBUF_3379),
    .ADR3(Current_Address_2_OBUF_3380),
    .ADR4(Current_Address_1_OBUF_3381),
    .ADR0(Current_Address_0_OBUF_3382),
    .O(\ins2/Madd_IA_cy [5])
  );
  X_SFF #(
    .LOC ( "SLICE_X63Y118" ),
    .INIT ( 1'b0 ))
  \ins2/Next_Address_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/Next_Address_7/CLK ),
    .I(\ins2/IA [7]),
    .O(\ins2/Next_Address [7]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X63Y118" ),
    .INIT ( 64'h55AAFF0055AAFF00 ))
  \ins2/Madd_IA_xor<7>11  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(Current_Address_7_OBUF_3375),
    .ADR0(Current_Address_6_OBUF_3376),
    .ADR4(\ins2/Madd_IA_cy [5]),
    .O(\ins2/IA [7])
  );
  X_SFF #(
    .LOC ( "SLICE_X63Y118" ),
    .INIT ( 1'b0 ))
  \ins2/Next_Address_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/Next_Address_6/CLK ),
    .I(\ins2/IA [6]),
    .O(\ins2/Next_Address [6]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X63Y118" ),
    .INIT ( 64'h3333CCCC3333CCCC ))
  \ins2/Madd_IA_xor<6>11  (
    .ADR0(1'b1),
    .ADR5(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(Current_Address_6_OBUF_3376),
    .ADR4(\ins2/Madd_IA_cy [5]),
    .O(\ins2/IA [6])
  );
  X_SFF #(
    .LOC ( "SLICE_X63Y118" ),
    .INIT ( 1'b0 ))
  \ins2/Next_Address_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins2/Next_Address_3/CLK ),
    .I(\ins2/IA [3]),
    .O(\ins2/Next_Address [3]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X63Y118" ),
    .INIT ( 64'h0F0F447700000000 ))
  \ins2/Madd_IA_xor<3>11  (
    .ADR5(reset_IBUF_3189),
    .ADR3(N99_0),
    .ADR0(N100_0),
    .ADR1(Stall),
    .ADR2(N101),
    .ADR4(pc_mux_sel),
    .O(\ins2/IA [3])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X66Y129" ),
    .INIT ( 64'hCC33CCCCCC333333 ))
  \ins1/ALU_Execution/type2/Add/inst7/Mxor_x_y_XOR_2_o_xo<0>1  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR3(\ins2/ins_prv [7]),
    .ADR4(\ins8/DFF5_3280 ),
    .ADR5(\ins3/Mmux_n00357 ),
    .ADR1(A_6_OBUF_3309),
    .O(\ins1/ALU_Execution/type2/Add/inst7/x_y_XOR_2_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X64Y120" ),
    .INIT ( 64'hF8F87070FAF050F0 ))
  \ins7/Mmux_n00428_SW0  (
    .ADR0(ins_23_OBUF_3271),
    .ADR2(N206),
    .ADR4(N207),
    .ADR1(N61),
    .ADR3(N60),
    .ADR5(flag_ex[1]),
    .O(N33)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X67Y129" ),
    .INIT ( 64'hFFAAAA00DDCCAA88 ))
  \ins1/ALU_Execution/Mmux_ans_tmp282  (
    .ADR2(1'b1),
    .ADR1(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_48_o ),
    .ADR5(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_47_o_0 ),
    .ADR3(\ins1/ALU_Execution/Mmux_ans_tmp111 ),
    .ADR4(A_6_OBUF_3309),
    .ADR0(B_6_OBUF_3416),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp281_3591 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X64Y128" ),
    .INIT ( 64'hCCAAF0FFCCAAF000 ))
  \ins1/ALU_Execution/type1/Add/inst7/carryout  (
    .ADR3(B_5_OBUF_3415),
    .ADR0(N7),
    .ADR1(N8),
    .ADR2(N6),
    .ADR5(N5),
    .ADR4(\ins1/ALU_Execution/type1/Add/temp_carryout[3] ),
    .O(\ins1/ALU_Execution/type1/Add/temp_carryout[6] )
  );
  X_SFF #(
    .LOC ( "SLICE_X64Y128" ),
    .INIT ( 1'b0 ))
  \ins1/ans_ex_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins1/ans_ex_7/CLK ),
    .I(\ins1/ans_tmp [7]),
    .O(\ins1/ans_ex [7]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X64Y128" ),
    .INIT ( 64'hFFFFFEF2FFFFFCF0 ))
  \ins1/ALU_Execution/Mmux_ans_tmp3212  (
    .ADR3(\ins1/ALU_Execution/ans_tmp_temp<0><7>_0 ),
    .ADR1(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_44_o_0 ),
    .ADR4(\ins1/ALU_Execution/Mmux_ans_tmp3210_0 ),
    .ADR0(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_45_o ),
    .ADR5(\ins1/ALU_Execution/ans_tmp_temp<1>[7] ),
    .ADR2(\ins1/ALU_Execution/Mmux_ans_tmp329_3495 ),
    .O(\ins1/ans_tmp [7])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X64Y128" ),
    .INIT ( 64'hFFC0FFC0EAEAC0C0 ))
  \ins1/ALU_Execution/Mmux_ans_tmp281  (
    .ADR0(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_45_o ),
    .ADR2(\ins1/ALU_Execution/Mmux_ans_tmp121_3281 ),
    .ADR5(\ins1/ALU_Execution/op_dec[4]_op_dec[4]_OR_44_o_0 ),
    .ADR1(B_6_OBUF_3416),
    .ADR4(\ins1/ALU_Execution/ans_tmp_temp<1>[6] ),
    .ADR3(\ins1/ALU_Execution/ans_tmp_temp<0> [6]),
    .O(\ins1/ALU_Execution/Mmux_ans_tmp28 )
  );
  X_SFF #(
    .LOC ( "SLICE_X64Y128" ),
    .INIT ( 1'b0 ))
  \ins1/ans_ex_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins1/ans_ex_6/CLK ),
    .I(\ins1/ans_tmp [6]),
    .O(\ins1/ans_ex [6]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X64Y128" ),
    .INIT ( 64'hFFC8FF88FFC8FF88 ))
  \ins1/ALU_Execution/Mmux_ans_tmp2810  (
    .ADR5(1'b1),
    .ADR1(\ins1/ALU_Execution/Mmux_ans_tmp122_3261 ),
    .ADR0(\ins1/ALU_Execution/Mmux_ans_tmp281_3591 ),
    .ADR2(\ins1/ALU_Execution/Mmux_ans_tmp113_0 ),
    .ADR4(\ins1/ALU_Execution/Mmux_ans_tmp288_3592 ),
    .ADR3(\ins1/ALU_Execution/Mmux_ans_tmp28 ),
    .O(\ins1/ans_tmp [6])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X64Y119" ),
    .INIT ( 64'hCF0F0000C0000000 ))
  \ins7/out62_SW16  (
    .ADR0(1'b1),
    .ADR4(reset_IBUF_3189),
    .ADR2(\ins7/Q [0]),
    .ADR5(N54),
    .ADR1(N21),
    .ADR3(N23),
    .O(N206)
  );
  X_BUF   \N5/N5_CMUX_Delay  (
    .I(\ins1/ALU_Execution/ans_tmp_temp<0> [7]),
    .O(\ins1/ALU_Execution/ans_tmp_temp<0><7>_0 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X64Y129" ))
  \ins1/ALU_Execution/type1/Add/inst8/Mxor_sum_xo<0>1  (
    .IA(N286),
    .IB(N287),
    .O(\ins1/ALU_Execution/ans_tmp_temp<0> [7]),
    .SEL(\ins1/ALU_Execution/type1/Add/temp_carryout[3] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X64Y129" ),
    .INIT ( 64'hC33CC3C3C33C3C3C ))
  \ins1/ALU_Execution/type1/Add/inst8/Mxor_sum_xo<0>1_F  (
    .ADR0(1'b1),
    .ADR1(B_7_OBUF_3417),
    .ADR4(B_5_OBUF_3415),
    .ADR3(N6),
    .ADR2(A_7_OBUF_3306),
    .ADR5(N5),
    .O(N286)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X64Y129" ),
    .INIT ( 64'hCC33999933CC6666 ))
  \ins1/ALU_Execution/type1/Add/inst8/Mxor_sum_xo<0>1_G  (
    .ADR2(1'b1),
    .ADR1(B_7_OBUF_3417),
    .ADR4(B_5_OBUF_3415),
    .ADR3(N8),
    .ADR5(A_7_OBUF_3306),
    .ADR0(N7),
    .O(N287)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X64Y129" ),
    .INIT ( 64'hEE88888888888888 ))
  \ins1/ALU_Execution/type1/Add/inst7/carryout_SW0  (
    .ADR2(1'b1),
    .ADR0(A_6_OBUF_3309),
    .ADR3(A_5_OBUF_3302),
    .ADR4(A_4_OBUF_3305),
    .ADR5(B_4_OBUF_3414),
    .ADR1(B_6_OBUF_3416),
    .O(N5)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X64Y129" ),
    .INIT ( 64'hEEEEEE8888888888 ))
  \ins1/ALU_Execution/type1/Add/inst7/carryout_SW2  (
    .ADR2(1'b1),
    .ADR0(A_6_OBUF_3309),
    .ADR5(A_5_OBUF_3302),
    .ADR4(A_4_OBUF_3305),
    .ADR3(B_4_OBUF_3414),
    .ADR1(B_6_OBUF_3416),
    .O(N7)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X64Y130" ),
    .INIT ( 64'h0A0AF5F58E8E7171 ))
  \ins1/ALU_Execution/type2/Add/inst7/Mxor_sum_xo<0>1_SW0  (
    .ADR3(1'b1),
    .ADR4(A_6_OBUF_3309),
    .ADR0(A_5_OBUF_3302),
    .ADR1(A_4_OBUF_3305),
    .ADR2(B_5_OBUF_3415),
    .ADR5(B_4_OBUF_3414),
    .O(N124)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X64Y112" ),
    .INIT ( 64'hC480C480C4C48080 ))
  \ins7/out62_SW0  (
    .ADR1(reset_IBUF_3189),
    .ADR0(\ins7/Q [0]),
    .ADR5(Stall),
    .ADR3(\ins2/Hold_Address [1]),
    .ADR4(\ins2/Next_Address [1]),
    .ADR2(N15),
    .O(N153)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X64Y110" ),
    .INIT ( 64'hEEEE4444CCCCCCCC ))
  \ins2/Mmux_Current_Address1_SW1  (
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR1(\ins2/Next_Address [0]),
    .ADR0(ins_23_OBUF_3271),
    .ADR5(\ins5/Mmux_n002011_3323 ),
    .ADR4(\ins2/Hold_Address [0]),
    .O(N58)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X68Y129" ),
    .INIT ( 64'hEEEEE8E8E8E8E8E8 ))
  \ins1/ALU_Execution/type1/Add/inst7/carryout_SW1  (
    .ADR3(1'b1),
    .ADR0(A_6_OBUF_3309),
    .ADR2(A_5_OBUF_3302),
    .ADR4(A_4_OBUF_3305),
    .ADR5(B_4_OBUF_3414),
    .ADR1(B_6_OBUF_3416),
    .O(N6)
  );
  X_BUF   \ins1/data_out<6>/ins1/data_out<6>_DMUX_Delay  (
    .I(\ins1/data_out<7>_pack_10 ),
    .O(\ins1/data_out [7])
  );
  X_BUF   \ins1/data_out<6>/ins1/data_out<6>_CMUX_Delay  (
    .I(\ins1/data_out<5>_pack_8 ),
    .O(\ins1/data_out [5])
  );
  X_BUF   \ins1/data_out<6>/ins1/data_out<6>_BMUX_Delay  (
    .I(\ins1/data_out<3>_pack_6 ),
    .O(\ins1/data_out [3])
  );
  X_BUF   \ins1/data_out<6>/ins1/data_out<6>_AMUX_Delay  (
    .I(\ins1/data_out<1>_pack_4 ),
    .O(\ins1/data_out [1])
  );
  X_SFF #(
    .LOC ( "SLICE_X88Y115" ),
    .INIT ( 1'b0 ))
  \ins1/data_out_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins1/data_out_6/CLK ),
    .I(\ins1/data_out_buff [6]),
    .O(\ins1/data_out [6]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X88Y115" ),
    .INIT ( 64'hCCCCF0F0CCCCF0F0 ))
  \ins1/ALU_Execution/Mmux_data_out_buff71  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR4(\ins1/ALU_Execution/op_dec[4]_PWR_3_o_equal_23_o ),
    .ADR2(\ins1/data_out [6]),
    .ADR1(A_6_OBUF_3309),
    .ADR5(1'b1),
    .O(\ins1/data_out_buff [6])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X88Y115" ),
    .INIT ( 32'hFF00AAAA ))
  \ins1/ALU_Execution/Mmux_data_out_buff81  (
    .ADR3(A_7_OBUF_3306),
    .ADR0(\ins1/data_out [7]),
    .ADR4(\ins1/ALU_Execution/op_dec[4]_PWR_3_o_equal_23_o ),
    .ADR2(1'b1),
    .ADR1(1'b1),
    .O(\ins1/data_out_buff [7])
  );
  X_SFF #(
    .LOC ( "SLICE_X88Y115" ),
    .INIT ( 1'b0 ))
  \ins1/data_out_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins1/data_out_7/CLK ),
    .I(\ins1/data_out_buff [7]),
    .O(\ins1/data_out<7>_pack_10 ),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X88Y115" ),
    .INIT ( 1'b0 ))
  \ins1/data_out_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins1/data_out_4/CLK ),
    .I(\ins1/data_out_buff [4]),
    .O(\ins1/data_out [4]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X88Y115" ),
    .INIT ( 64'hFF00CCCCFF00CCCC ))
  \ins1/ALU_Execution/Mmux_data_out_buff51  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR4(\ins1/ALU_Execution/op_dec[4]_PWR_3_o_equal_23_o ),
    .ADR1(\ins1/data_out [4]),
    .ADR3(A_4_OBUF_3305),
    .ADR5(1'b1),
    .O(\ins1/data_out_buff [4])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X88Y115" ),
    .INIT ( 32'hAAAAF0F0 ))
  \ins1/ALU_Execution/Mmux_data_out_buff61  (
    .ADR0(A_5_OBUF_3302),
    .ADR2(\ins1/data_out [5]),
    .ADR4(\ins1/ALU_Execution/op_dec[4]_PWR_3_o_equal_23_o ),
    .ADR3(1'b1),
    .ADR1(1'b1),
    .O(\ins1/data_out_buff [5])
  );
  X_SFF #(
    .LOC ( "SLICE_X88Y115" ),
    .INIT ( 1'b0 ))
  \ins1/data_out_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins1/data_out_5/CLK ),
    .I(\ins1/data_out_buff [5]),
    .O(\ins1/data_out<5>_pack_8 ),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X88Y115" ),
    .INIT ( 1'b0 ))
  \ins1/data_out_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins1/data_out_2/CLK ),
    .I(\ins1/data_out_buff [2]),
    .O(\ins1/data_out [2]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X88Y115" ),
    .INIT ( 64'hE4E4E4E4E4E4E4E4 ))
  \ins1/ALU_Execution/Mmux_data_out_buff31  (
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR0(\ins1/ALU_Execution/op_dec[4]_PWR_3_o_equal_23_o ),
    .ADR1(\ins1/data_out [2]),
    .ADR2(A_2_OBUF_3301),
    .ADR5(1'b1),
    .O(\ins1/data_out_buff [2])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X88Y115" ),
    .INIT ( 32'hFFAA5500 ))
  \ins1/ALU_Execution/Mmux_data_out_buff41  (
    .ADR4(A_3_OBUF_3298),
    .ADR3(\ins1/data_out [3]),
    .ADR0(\ins1/ALU_Execution/op_dec[4]_PWR_3_o_equal_23_o ),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .O(\ins1/data_out_buff [3])
  );
  X_SFF #(
    .LOC ( "SLICE_X88Y115" ),
    .INIT ( 1'b0 ))
  \ins1/data_out_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins1/data_out_3/CLK ),
    .I(\ins1/data_out_buff [3]),
    .O(\ins1/data_out<3>_pack_6 ),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X88Y115" ),
    .INIT ( 1'b0 ))
  \ins1/data_out_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins1/data_out_0/CLK ),
    .I(\ins1/data_out_buff [0]),
    .O(\ins1/data_out [0]),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X88Y115" ),
    .INIT ( 64'hFA50FA50FA50FA50 ))
  \ins1/ALU_Execution/Mmux_data_out_buff11  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR0(\ins1/ALU_Execution/op_dec[4]_PWR_3_o_equal_23_o ),
    .ADR2(\ins1/data_out [0]),
    .ADR3(A_0_OBUF_3297),
    .ADR5(1'b1),
    .O(\ins1/data_out_buff [0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X88Y115" ),
    .INIT ( 32'hEEEE4444 ))
  \ins1/ALU_Execution/Mmux_data_out_buff21  (
    .ADR4(A_1_OBUF_3293),
    .ADR1(\ins1/data_out [1]),
    .ADR0(\ins1/ALU_Execution/op_dec[4]_PWR_3_o_equal_23_o ),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .O(\ins1/data_out_buff [1])
  );
  X_SFF #(
    .LOC ( "SLICE_X88Y115" ),
    .INIT ( 1'b0 ))
  \ins1/data_out_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_ins1/data_out_1/CLK ),
    .I(\ins1/data_out_buff [1]),
    .O(\ins1/data_out<1>_pack_4 ),
    .SRST(\ins1/reset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_BUF   \NlwBufferBlock_ans_wb_1_OBUF/I  (
    .I(\ins6/ans_wb [1]),
    .O(\NlwBufferSignal_ans_wb_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ans_wb_4_OBUF/I  (
    .I(\ins6/ans_wb [4]),
    .O(\NlwBufferSignal_ans_wb_4_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ans_wb_2_OBUF/I  (
    .I(\ins6/ans_wb [2]),
    .O(\NlwBufferSignal_ans_wb_2_OBUF/I )
  );
  X_BUF 
  \NlwBufferBlock_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<10>  (
    .I(\ins1/ans_ex [5]),
    .O
(\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<10> )

  );
  X_BUF 
  \NlwBufferBlock_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<11>  (
    .I(\ins1/ans_ex [6]),
    .O
(\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<11> )

  );
  X_BUF 
  \NlwBufferBlock_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<12>  (
    .I(\ins1/ans_ex [7]),
    .O
(\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<12> )

  );
  X_BUF 
  \NlwBufferBlock_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<5>  (
    .I(\ins1/ans_ex [0]),
    .O
(\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<5> )

  );
  X_BUF 
  \NlwBufferBlock_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<6>  (
    .I(\ins1/ans_ex [1]),
    .O
(\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<6> )

  );
  X_BUF 
  \NlwBufferBlock_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<7>  (
    .I(\ins1/ans_ex [2]),
    .O
(\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<7> )

  );
  X_BUF 
  \NlwBufferBlock_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<8>  (
    .I(\ins1/ans_ex [3]),
    .O
(\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<8> )

  );
  X_BUF 
  \NlwBufferBlock_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<9>  (
    .I(\ins1/ans_ex [4]),
    .O
(\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<9> )

  );
  X_BUF 
  \NlwBufferBlock_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<10>  (
    .I(\ins1/ans_ex [5]),
    .O
(\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<10> )

  );
  X_BUF 
  \NlwBufferBlock_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<11>  (
    .I(\ins1/ans_ex [6]),
    .O
(\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<11> )

  );
  X_BUF 
  \NlwBufferBlock_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<12>  (
    .I(\ins1/ans_ex [7]),
    .O
(\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<12> )

  );
  X_BUF 
  \NlwBufferBlock_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<5>  (
    .I(\ins1/ans_ex [0]),
    .O
(\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<5> )

  );
  X_BUF 
  \NlwBufferBlock_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<6>  (
    .I(\ins1/ans_ex [1]),
    .O
(\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<6> )

  );
  X_BUF 
  \NlwBufferBlock_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<7>  (
    .I(\ins1/ans_ex [2]),
    .O
(\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<7> )

  );
  X_BUF 
  \NlwBufferBlock_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<8>  (
    .I(\ins1/ans_ex [3]),
    .O
(\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<8> )

  );
  X_BUF 
  \NlwBufferBlock_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<9>  (
    .I(\ins1/ans_ex [4]),
    .O
(\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<9> )

  );
  X_BUF 
  \NlwBufferBlock_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/CLKARDCLK  (
    .I(clk_BUFGP),
    .O
(\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/CLKARDCLK )

  );
  X_BUF 
  \NlwBufferBlock_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/CLKBWRCLK  (
    .I(clk_BUFGP),
    .O
(\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/CLKBWRCLK )

  );
  X_BUF 
  \NlwBufferBlock_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/DIADI<0>  (
    .I(\ins1/DM_data [0]),
    .O
(\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/DIADI<0> )

  );
  X_BUF 
  \NlwBufferBlock_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/DIADI<1>  (
    .I(\ins1/DM_data [1]),
    .O
(\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/DIADI<1> )

  );
  X_BUF 
  \NlwBufferBlock_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/DIADI<8>  (
    .I(\ins1/DM_data [2]),
    .O
(\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/DIADI<8> )

  );
  X_BUF 
  \NlwBufferBlock_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/DIADI<9>  (
    .I(\ins1/DM_data [3]),
    .O
(\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/DIADI<9> )

  );
  X_BUF 
  \NlwBufferBlock_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/DIBDI<0>  (
    .I(\ins1/DM_data [4]),
    .O
(\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/DIBDI<0> )

  );
  X_BUF 
  \NlwBufferBlock_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/DIBDI<1>  (
    .I(\ins1/DM_data [5]),
    .O
(\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/DIBDI<1> )

  );
  X_BUF 
  \NlwBufferBlock_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/DIBDI<8>  (
    .I(\ins1/DM_data [6]),
    .O
(\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/DIBDI<8> )

  );
  X_BUF 
  \NlwBufferBlock_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/DIBDI<9>  (
    .I(\ins1/DM_data [7]),
    .O
(\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/DIBDI<9> )

  );
  X_BUF 
  \NlwBufferBlock_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ENARDEN  (
    .I(\ins8/DFF8_3345 ),
    .O
(\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ENARDEN )

  );
  X_BUF 
  \NlwBufferBlock_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ENBWREN  (
    .I(\ins8/DFF8_3345 ),
    .O
(\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ENBWREN )

  );
  X_BUF 
  \NlwBufferBlock_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/WEA<0>  (
    .I(\ins8/DFF6_0 ),
    .O
(\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/WEA<0> )

  );
  X_BUF 
  \NlwBufferBlock_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/WEA<1>  (
    .I(\ins8/DFF6_0 ),
    .O
(\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/WEA<1> )

  );
  X_BUF 
  \NlwBufferBlock_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/WEBWE<0>  (
    .I(\ins8/DFF6_0 ),
    .O
(\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/WEBWE<0> )

  );
  X_BUF 
  \NlwBufferBlock_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/WEBWE<1>  (
    .I(\ins8/DFF6_0 ),
    .O
(\NlwBufferSignal_ins4/DM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/WEBWE<1> )

  );
  X_BUF 
  \NlwBufferBlock_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<10>  (
    .I(Current_Address_5_OBUF_3377),
    .O
(\NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<10> )

  );
  X_BUF 
  \NlwBufferBlock_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<11>  (
    .I(Current_Address_6_OBUF_3376),
    .O
(\NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<11> )

  );
  X_BUF 
  \NlwBufferBlock_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<12>  (
    .I(Current_Address_7_OBUF_3375),
    .O
(\NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<12> )

  );
  X_BUF 
  \NlwBufferBlock_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<5>  (
    .I(Current_Address_0_OBUF_3382),
    .O
(\NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<5> )

  );
  X_BUF 
  \NlwBufferBlock_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<6>  (
    .I(Current_Address_1_OBUF_3381),
    .O
(\NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<6> )

  );
  X_BUF 
  \NlwBufferBlock_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<7>  (
    .I(Current_Address_2_OBUF_3380),
    .O
(\NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<7> )

  );
  X_BUF 
  \NlwBufferBlock_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<8>  (
    .I(Current_Address_3_OBUF_3379),
    .O
(\NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<8> )

  );
  X_BUF 
  \NlwBufferBlock_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<9>  (
    .I(Current_Address_4_OBUF_3378),
    .O
(\NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRARDADDR<9> )

  );
  X_BUF 
  \NlwBufferBlock_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<10>  (
    .I(Current_Address_5_OBUF_3377),
    .O
(\NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<10> )

  );
  X_BUF 
  \NlwBufferBlock_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<11>  (
    .I(Current_Address_6_OBUF_3376),
    .O
(\NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<11> )

  );
  X_BUF 
  \NlwBufferBlock_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<12>  (
    .I(Current_Address_7_OBUF_3375),
    .O
(\NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<12> )

  );
  X_BUF 
  \NlwBufferBlock_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<5>  (
    .I(Current_Address_0_OBUF_3382),
    .O
(\NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<5> )

  );
  X_BUF 
  \NlwBufferBlock_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<6>  (
    .I(Current_Address_1_OBUF_3381),
    .O
(\NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<6> )

  );
  X_BUF 
  \NlwBufferBlock_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<7>  (
    .I(Current_Address_2_OBUF_3380),
    .O
(\NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<7> )

  );
  X_BUF 
  \NlwBufferBlock_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<8>  (
    .I(Current_Address_3_OBUF_3379),
    .O
(\NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<8> )

  );
  X_BUF 
  \NlwBufferBlock_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<9>  (
    .I(Current_Address_4_OBUF_3378),
    .O
(\NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/ADDRBWRADDR<9> )

  );
  X_BUF 
  \NlwBufferBlock_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/CLKARDCLK  (
    .I(clk_BUFGP),
    .O
(\NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/CLKARDCLK )

  );
  X_BUF 
  \NlwBufferBlock_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/CLKBWRCLK  (
    .I(clk_BUFGP),
    .O
(\NlwBufferSignal_ins2/PM/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v6_init.ram/NO_BMM_INFO.SP.WIDE_PRIM18.ram/CLKBWRCLK )

  );
  X_BUF   \NlwBufferBlock_ans_wb_6_OBUF/I  (
    .I(\ins6/ans_wb [6]),
    .O(\NlwBufferSignal_ans_wb_6_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ans_wb_0_OBUF/I  (
    .I(\ins6/ans_wb [0]),
    .O(\NlwBufferSignal_ans_wb_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ans_wb_3_OBUF/I  (
    .I(\ins6/ans_wb [3]),
    .O(\NlwBufferSignal_ans_wb_3_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_A_0_OBUF/I  (
    .I(A_0_OBUF_3297),
    .O(\NlwBufferSignal_A_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ans_wb_7_OBUF/I  (
    .I(\ins6/ans_wb [7]),
    .O(\NlwBufferSignal_ans_wb_7_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ans_wb_5_OBUF/I  (
    .I(\ins6/ans_wb [5]),
    .O(\NlwBufferSignal_ans_wb_5_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_mux_sel_A_0_OBUF/I  (
    .I(mux_sel_A_0_OBUF_0),
    .O(\NlwBufferSignal_mux_sel_A_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ins_1_OBUF/I  (
    .I(ins_1_OBUF_3265),
    .O(\NlwBufferSignal_ins_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_A_5_OBUF/I  (
    .I(A_5_OBUF_3302),
    .O(\NlwBufferSignal_A_5_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_A_3_OBUF/I  (
    .I(A_3_OBUF_3298),
    .O(\NlwBufferSignal_A_3_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_A_2_OBUF/I  (
    .I(A_2_OBUF_3301),
    .O(\NlwBufferSignal_A_2_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_mux_sel_A_1_OBUF/I  (
    .I(mux_sel_A_1_OBUF_3225),
    .O(\NlwBufferSignal_mux_sel_A_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ins_0_OBUF/I  (
    .I(ins_0_OBUF_3209),
    .O(\NlwBufferSignal_ins_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_A_1_OBUF/I  (
    .I(A_1_OBUF_3293),
    .O(\NlwBufferSignal_A_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_A_4_OBUF/I  (
    .I(A_4_OBUF_3305),
    .O(\NlwBufferSignal_A_4_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_A_6_OBUF/I  (
    .I(A_6_OBUF_3309),
    .O(\NlwBufferSignal_A_6_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_A_7_OBUF/I  (
    .I(A_7_OBUF_3306),
    .O(\NlwBufferSignal_A_7_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ins_5_OBUF/I  (
    .I(ins_5_OBUF_3247),
    .O(\NlwBufferSignal_ins_5_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ins_4_OBUF/I  (
    .I(ins_4_OBUF_3240),
    .O(\NlwBufferSignal_ins_4_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ins_12_OBUF/I  (
    .I(ins_12_OBUF_3400),
    .O(\NlwBufferSignal_ins_12_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ins_3_OBUF/I  (
    .I(ins_3_OBUF_3233),
    .O(\NlwBufferSignal_ins_3_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ins_7_OBUF/I  (
    .I(ins_7_OBUF_3290),
    .O(\NlwBufferSignal_ins_7_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ins_11_OBUF/I  (
    .I(ins_11_OBUF_3401),
    .O(\NlwBufferSignal_ins_11_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ins_14_OBUF/I  (
    .I(ins_14_OBUF_3398),
    .O(\NlwBufferSignal_ins_14_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ins_9_OBUF/I  (
    .I(ins_9_OBUF_3397),
    .O(\NlwBufferSignal_ins_9_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ins_6_OBUF/I  (
    .I(ins_6_OBUF_3276),
    .O(\NlwBufferSignal_ins_6_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ins_8_OBUF/I  (
    .I(ins_8_OBUF_3396),
    .O(\NlwBufferSignal_ins_8_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ins_2_OBUF/I  (
    .I(ins_2_OBUF_3223),
    .O(\NlwBufferSignal_ins_2_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ins_13_OBUF/I  (
    .I(ins_13_OBUF_3399),
    .O(\NlwBufferSignal_ins_13_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ins_15_OBUF/I  (
    .I(ins_15_OBUF_3405),
    .O(\NlwBufferSignal_ins_15_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ans_dm_2_OBUF/I  (
    .I(ans_dm_2_OBUF_3406),
    .O(\NlwBufferSignal_ans_dm_2_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ins_19_OBUF/I  (
    .I(ins_19_OBUF_3197),
    .O(\NlwBufferSignal_ins_19_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ins_18_OBUF/I  (
    .I(ins_18_OBUF_3325),
    .O(\NlwBufferSignal_ins_18_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ins_22_OBUF/I  (
    .I(ins_22_OBUF_3269),
    .O(\NlwBufferSignal_ins_22_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_imm_sel_OBUF/I  (
    .I(\ins8/DFF5_3280 ),
    .O(\NlwBufferSignal_imm_sel_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ins_20_OBUF/I  (
    .I(ins_20_OBUF_3270),
    .O(\NlwBufferSignal_ins_20_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ins_21_OBUF/I  (
    .I(ins_21_OBUF_3268),
    .O(\NlwBufferSignal_ins_21_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ins_10_OBUF/I  (
    .I(ins_10_OBUF_3402),
    .O(\NlwBufferSignal_ins_10_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ins_16_OBUF/I  (
    .I(ins_16_OBUF_3404),
    .O(\NlwBufferSignal_ins_16_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ins_23_OBUF/I  (
    .I(ins_23_OBUF_3271),
    .O(\NlwBufferSignal_ins_23_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ins_17_OBUF/I  (
    .I(ins_17_OBUF_3403),
    .O(\NlwBufferSignal_ins_17_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Current_Address_1_OBUF/I  (
    .I(Current_Address_1_OBUF_3381),
    .O(\NlwBufferSignal_Current_Address_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ans_dm_1_OBUF/I  (
    .I(ans_dm_1_OBUF_3311),
    .O(\NlwBufferSignal_ans_dm_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ans_dm_7_OBUF/I  (
    .I(ans_dm_7_OBUF_3334),
    .O(\NlwBufferSignal_ans_dm_7_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Current_Address_4_OBUF/I  (
    .I(Current_Address_4_OBUF_3378),
    .O(\NlwBufferSignal_Current_Address_4_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Current_Address_7_OBUF/I  (
    .I(Current_Address_7_OBUF_3375),
    .O(\NlwBufferSignal_Current_Address_7_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ans_dm_6_OBUF/I  (
    .I(ans_dm_6_OBUF_3335),
    .O(\NlwBufferSignal_ans_dm_6_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_B_2_OBUF/I  (
    .I(B_2_OBUF_3412),
    .O(\NlwBufferSignal_B_2_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_B_0_OBUF/I  (
    .I(B_0_OBUF_0),
    .O(\NlwBufferSignal_B_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ans_dm_3_OBUF/I  (
    .I(ans_dm_3_OBUF_3408),
    .O(\NlwBufferSignal_ans_dm_3_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ans_dm_0_OBUF/I  (
    .I(ans_dm_0_OBUF_3312),
    .O(\NlwBufferSignal_ans_dm_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Current_Address_5_OBUF/I  (
    .I(Current_Address_5_OBUF_3377),
    .O(\NlwBufferSignal_Current_Address_5_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_B_4_OBUF/I  (
    .I(B_4_OBUF_3414),
    .O(\NlwBufferSignal_B_4_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Current_Address_6_OBUF/I  (
    .I(Current_Address_6_OBUF_3376),
    .O(\NlwBufferSignal_Current_Address_6_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Current_Address_3_OBUF/I  (
    .I(Current_Address_3_OBUF_3379),
    .O(\NlwBufferSignal_Current_Address_3_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Current_Address_2_OBUF/I  (
    .I(Current_Address_2_OBUF_3380),
    .O(\NlwBufferSignal_Current_Address_2_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ans_dm_5_OBUF/I  (
    .I(ans_dm_5_OBUF_3409),
    .O(\NlwBufferSignal_ans_dm_5_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_B_3_OBUF/I  (
    .I(B_3_OBUF_3413),
    .O(\NlwBufferSignal_B_3_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Current_Address_0_OBUF/I  (
    .I(Current_Address_0_OBUF_3382),
    .O(\NlwBufferSignal_Current_Address_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_B_5_OBUF/I  (
    .I(B_5_OBUF_3415),
    .O(\NlwBufferSignal_B_5_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ans_dm_4_OBUF/I  (
    .I(ans_dm_4_OBUF_3407),
    .O(\NlwBufferSignal_ans_dm_4_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_B_1_OBUF/I  (
    .I(B_1_OBUF_3411),
    .O(\NlwBufferSignal_B_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_B_6_OBUF/I  (
    .I(B_6_OBUF_3416),
    .O(\NlwBufferSignal_B_6_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_B_7_OBUF/I  (
    .I(B_7_OBUF_3417),
    .O(\NlwBufferSignal_B_7_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_data_out_1_OBUF/I  (
    .I(\ins1/data_out [1]),
    .O(\NlwBufferSignal_data_out_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_data_out_0_OBUF/I  (
    .I(\ins1/data_out [0]),
    .O(\NlwBufferSignal_data_out_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_data_out_5_OBUF/I  (
    .I(\ins1/data_out [5]),
    .O(\NlwBufferSignal_data_out_5_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ans_ex_3_OBUF/I  (
    .I(\ins1/ans_ex [3]),
    .O(\NlwBufferSignal_ans_ex_3_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_data_out_4_OBUF/I  (
    .I(\ins1/data_out [4]),
    .O(\NlwBufferSignal_data_out_4_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_data_out_2_OBUF/I  (
    .I(\ins1/data_out [2]),
    .O(\NlwBufferSignal_data_out_2_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ans_ex_2_OBUF/I  (
    .I(\ins1/ans_ex [2]),
    .O(\NlwBufferSignal_ans_ex_2_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ans_ex_1_OBUF/I  (
    .I(\ins1/ans_ex [1]),
    .O(\NlwBufferSignal_ans_ex_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ans_ex_4_OBUF/I  (
    .I(\ins1/ans_ex [4]),
    .O(\NlwBufferSignal_ans_ex_4_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_data_out_3_OBUF/I  (
    .I(\ins1/data_out [3]),
    .O(\NlwBufferSignal_data_out_3_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_data_out_7_OBUF/I  (
    .I(\ins1/data_out [7]),
    .O(\NlwBufferSignal_data_out_7_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_mux_sel_B_1_OBUF/I  (
    .I(mux_sel_B_1_OBUF_3331),
    .O(\NlwBufferSignal_mux_sel_B_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_data_out_6_OBUF/I  (
    .I(\ins1/data_out [6]),
    .O(\NlwBufferSignal_data_out_6_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_mux_sel_B_0_OBUF/I  (
    .I(mux_sel_B_0_OBUF_3333),
    .O(\NlwBufferSignal_mux_sel_B_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg3_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins8/Reg3_3/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg3_3/IN  (
    .I(ins_17_OBUF_3403),
    .O(\NlwBufferSignal_ins8/Reg3_3/IN )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg3_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins8/Reg3_2/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg3_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins8/Reg3_1/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg3_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins8/Reg3_0/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg3_0/IN  (
    .I(ins_14_OBUF_3398),
    .O(\NlwBufferSignal_ins8/Reg3_0/IN )
  );
  X_BUF   \NlwBufferBlock_ans_ex_6_OBUF/I  (
    .I(\ins1/ans_ex [6]),
    .O(\NlwBufferSignal_ans_ex_6_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg3_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins8/Reg3_4/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg3_4/IN  (
    .I(ins_18_OBUF_3325),
    .O(\NlwBufferSignal_ins8/Reg3_4/IN )
  );
  X_BUF   \NlwBufferBlock_ins2/ins_prv_15/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/ins_prv_15/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/ins_prv_15/IN  (
    .I(ins_15_OBUF_3405),
    .O(\NlwBufferSignal_ins2/ins_prv_15/IN )
  );
  X_BUF   \NlwBufferBlock_ins2/ins_prv_14/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/ins_prv_14/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/ins_prv_13/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/ins_prv_13/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/ins_prv_13/IN  (
    .I(ins_13_OBUF_3399),
    .O(\NlwBufferSignal_ins2/ins_prv_13/IN )
  );
  X_BUF   \NlwBufferBlock_ins2/ins_prv_12/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/ins_prv_12/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/ins_prv_12/IN  (
    .I(ins_12_OBUF_3400),
    .O(\NlwBufferSignal_ins2/ins_prv_12/IN )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg5_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins8/Reg5_4/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg5_4/IN  (
    .I(\ins8/Reg3 [4]),
    .O(\NlwBufferSignal_ins8/Reg5_4/IN )
  );
  X_BUF   \NlwBufferBlock_ans_ex_7_OBUF/I  (
    .I(\ins1/ans_ex [7]),
    .O(\NlwBufferSignal_ans_ex_7_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_clk_BUFGP/BUFG/IN  (
    .I(\clk_BUFGP/IBUFG_3418 ),
    .O(\NlwBufferSignal_clk_BUFGP/BUFG/IN )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg6_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins8/Reg6_4/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg6_4/IN  (
    .I(\ins8/Reg5<4>_0 ),
    .O(\NlwBufferSignal_ins8/Reg6_4/IN )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMD_D1/RADR0  (
    .I(\ins8/Reg6 [0]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD_D1/RADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMD_D1/RADR1  (
    .I(\ins8/Reg6 [1]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD_D1/RADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMD_D1/RADR2  (
    .I(\ins8/Reg6 [2]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD_D1/RADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMD_D1/RADR3  (
    .I(\ins8/Reg6 [3]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD_D1/RADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMD_D1/RADR4  (
    .I(\ins8/Reg6 [4]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD_D1/RADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMD_D1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD_D1/CLK )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMD_D1/WADR0  (
    .I(\ins8/Reg6 [0]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD_D1/WADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMD_D1/WADR1  (
    .I(\ins8/Reg6 [1]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD_D1/WADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMD_D1/WADR2  (
    .I(\ins8/Reg6 [2]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD_D1/WADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMD_D1/WADR3  (
    .I(\ins8/Reg6 [3]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD_D1/WADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMD_D1/WADR4  (
    .I(\ins8/Reg6 [4]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD_D1/WADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMD/RADR0  (
    .I(\ins8/Reg6 [0]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD/RADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMD/RADR1  (
    .I(\ins8/Reg6 [1]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD/RADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMD/RADR2  (
    .I(\ins8/Reg6 [2]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD/RADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMD/RADR3  (
    .I(\ins8/Reg6 [3]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD/RADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMD/RADR4  (
    .I(\ins8/Reg6 [4]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD/RADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMD/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD/CLK )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMD/WADR0  (
    .I(\ins8/Reg6 [0]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD/WADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMD/WADR1  (
    .I(\ins8/Reg6 [1]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD/WADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMD/WADR2  (
    .I(\ins8/Reg6 [2]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD/WADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMD/WADR3  (
    .I(\ins8/Reg6 [3]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD/WADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMD/WADR4  (
    .I(\ins8/Reg6 [4]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMD/WADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/BR_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/BR_5/CLK )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMC_D1/RADR0  (
    .I(ins_4_OBUF_3240),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC_D1/RADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMC_D1/RADR1  (
    .I(ins_5_OBUF_3247),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC_D1/RADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMC_D1/RADR2  (
    .I(ins_6_OBUF_3276),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC_D1/RADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMC_D1/RADR3  (
    .I(ins_7_OBUF_3290),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC_D1/RADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMC_D1/RADR4  (
    .I(ins_8_OBUF_3396),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC_D1/RADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMC_D1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC_D1/CLK )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMC_D1/IN  (
    .I(ans_dm_5_OBUF_3409),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC_D1/IN )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMC_D1/WADR0  (
    .I(\ins8/Reg6 [0]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC_D1/WADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMC_D1/WADR1  (
    .I(\ins8/Reg6 [1]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC_D1/WADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMC_D1/WADR2  (
    .I(\ins8/Reg6 [2]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC_D1/WADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMC_D1/WADR3  (
    .I(\ins8/Reg6 [3]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC_D1/WADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMC_D1/WADR4  (
    .I(\ins8/Reg6 [4]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC_D1/WADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMC/RADR0  (
    .I(ins_4_OBUF_3240),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC/RADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMC/RADR1  (
    .I(ins_5_OBUF_3247),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC/RADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMC/RADR2  (
    .I(ins_6_OBUF_3276),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC/RADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMC/RADR3  (
    .I(ins_7_OBUF_3290),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC/RADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMC/RADR4  (
    .I(ins_8_OBUF_3396),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC/RADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMC/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC/CLK )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMC/IN  (
    .I(ans_dm_4_OBUF_3407),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC/IN )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMC/WADR0  (
    .I(\ins8/Reg6 [0]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC/WADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMC/WADR1  (
    .I(\ins8/Reg6 [1]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC/WADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMC/WADR2  (
    .I(\ins8/Reg6 [2]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC/WADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMC/WADR3  (
    .I(\ins8/Reg6 [3]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC/WADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMC/WADR4  (
    .I(\ins8/Reg6 [4]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMC/WADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/BR_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/BR_4/CLK )
  );
  X_BUF   \NlwBufferBlock_ins3/BR_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/BR_3/CLK )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMB_D1/RADR0  (
    .I(ins_4_OBUF_3240),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB_D1/RADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMB_D1/RADR1  (
    .I(ins_5_OBUF_3247),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB_D1/RADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMB_D1/RADR2  (
    .I(ins_6_OBUF_3276),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB_D1/RADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMB_D1/RADR3  (
    .I(ins_7_OBUF_3290),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB_D1/RADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMB_D1/RADR4  (
    .I(ins_8_OBUF_3396),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB_D1/RADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMB_D1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB_D1/CLK )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMB_D1/IN  (
    .I(ans_dm_3_OBUF_3408),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB_D1/IN )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMB_D1/WADR0  (
    .I(\ins8/Reg6 [0]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB_D1/WADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMB_D1/WADR1  (
    .I(\ins8/Reg6 [1]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB_D1/WADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMB_D1/WADR2  (
    .I(\ins8/Reg6 [2]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB_D1/WADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMB_D1/WADR3  (
    .I(\ins8/Reg6 [3]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB_D1/WADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMB_D1/WADR4  (
    .I(\ins8/Reg6 [4]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB_D1/WADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMB/RADR0  (
    .I(ins_4_OBUF_3240),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB/RADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMB/RADR1  (
    .I(ins_5_OBUF_3247),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB/RADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMB/RADR2  (
    .I(ins_6_OBUF_3276),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB/RADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMB/RADR3  (
    .I(ins_7_OBUF_3290),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB/RADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMB/RADR4  (
    .I(ins_8_OBUF_3396),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB/RADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMB/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB/CLK )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMB/IN  (
    .I(ans_dm_2_OBUF_3406),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB/IN )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMB/WADR0  (
    .I(\ins8/Reg6 [0]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB/WADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMB/WADR1  (
    .I(\ins8/Reg6 [1]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB/WADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMB/WADR2  (
    .I(\ins8/Reg6 [2]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB/WADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMB/WADR3  (
    .I(\ins8/Reg6 [3]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB/WADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMB/WADR4  (
    .I(\ins8/Reg6 [4]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMB/WADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/BR_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/BR_2/CLK )
  );
  X_BUF   \NlwBufferBlock_ins3/BR_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/BR_1/CLK )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMA_D1/RADR0  (
    .I(ins_4_OBUF_3240),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA_D1/RADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMA_D1/RADR1  (
    .I(ins_5_OBUF_3247),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA_D1/RADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMA_D1/RADR2  (
    .I(ins_6_OBUF_3276),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA_D1/RADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMA_D1/RADR3  (
    .I(ins_7_OBUF_3290),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA_D1/RADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMA_D1/RADR4  (
    .I(ins_8_OBUF_3396),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA_D1/RADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMA_D1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA_D1/CLK )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMA_D1/IN  (
    .I(ans_dm_1_OBUF_3311),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA_D1/IN )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMA_D1/WADR0  (
    .I(\ins8/Reg6 [0]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA_D1/WADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMA_D1/WADR1  (
    .I(\ins8/Reg6 [1]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA_D1/WADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMA_D1/WADR2  (
    .I(\ins8/Reg6 [2]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA_D1/WADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMA_D1/WADR3  (
    .I(\ins8/Reg6 [3]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA_D1/WADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMA_D1/WADR4  (
    .I(\ins8/Reg6 [4]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA_D1/WADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMA/RADR0  (
    .I(ins_4_OBUF_3240),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA/RADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMA/RADR1  (
    .I(ins_5_OBUF_3247),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA/RADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMA/RADR2  (
    .I(ins_6_OBUF_3276),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA/RADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMA/RADR3  (
    .I(ins_7_OBUF_3290),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA/RADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMA/RADR4  (
    .I(ins_8_OBUF_3396),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA/RADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMA/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA/CLK )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMA/IN  (
    .I(ans_dm_0_OBUF_3312),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA/IN )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMA/WADR0  (
    .I(\ins8/Reg6 [0]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA/WADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMA/WADR1  (
    .I(\ins8/Reg6 [1]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA/WADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMA/WADR2  (
    .I(\ins8/Reg6 [2]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA/WADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMA/WADR3  (
    .I(\ins8/Reg6 [3]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA/WADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank11_RAMA/WADR4  (
    .I(\ins8/Reg6 [4]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank11_RAMA/WADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/BR_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/BR_0/CLK )
  );
  X_BUF   \NlwBufferBlock_ans_ex_0_OBUF/I  (
    .I(\ins1/ans_ex [0]),
    .O(\NlwBufferSignal_ans_ex_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ins2/ins_prv_19/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/ins_prv_19/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/ins_prv_18/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/ins_prv_18/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/ins_prv_18/IN  (
    .I(ins_18_OBUF_3325),
    .O(\NlwBufferSignal_ins2/ins_prv_18/IN )
  );
  X_BUF   \NlwBufferBlock_ins2/ins_prv_17/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/ins_prv_17/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/ins_prv_16/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/ins_prv_16/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/ins_prv_16/IN  (
    .I(ins_16_OBUF_3404),
    .O(\NlwBufferSignal_ins2/ins_prv_16/IN )
  );
  X_BUF   \NlwBufferBlock_ans_ex_5_OBUF/I  (
    .I(\ins1/ans_ex [5]),
    .O(\NlwBufferSignal_ans_ex_5_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ins5/Q_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins5/Q_3/CLK )
  );
  X_BUF   \NlwBufferBlock_ins5/Q_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins5/Q_2/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg5_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins8/Reg5_3/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg5_3/IN  (
    .I(\ins8/Reg3 [3]),
    .O(\NlwBufferSignal_ins8/Reg5_3/IN )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg5_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins8/Reg5_2/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg5_2/IN  (
    .I(\ins8/Reg3 [2]),
    .O(\NlwBufferSignal_ins8/Reg5_2/IN )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg5_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins8/Reg5_1/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg5_1/IN  (
    .I(\ins8/Reg3 [1]),
    .O(\NlwBufferSignal_ins8/Reg5_1/IN )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg5_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins8/Reg5_0/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg5_0/IN  (
    .I(\ins8/Reg3 [0]),
    .O(\NlwBufferSignal_ins8/Reg5_0/IN )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg4_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins8/Reg4_2/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg4_2/IN  (
    .I(ins_6_OBUF_3276),
    .O(\NlwBufferSignal_ins8/Reg4_2/IN )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg4_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins8/Reg4_1/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg4_1/IN  (
    .I(ins_5_OBUF_3247),
    .O(\NlwBufferSignal_ins8/Reg4_1/IN )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg4_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins8/Reg4_0/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg4_0/IN  (
    .I(ins_4_OBUF_3240),
    .O(\NlwBufferSignal_ins8/Reg4_0/IN )
  );
  X_BUF   \NlwBufferBlock_ins8/DFF9/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins8/DFF9/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/DFF9/IN  (
    .I(\ins8/DFF7_3681 ),
    .O(\NlwBufferSignal_ins8/DFF9/IN )
  );
  X_BUF   \NlwBufferBlock_ins8/DFF8/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins8/DFF8/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/DFF8/IN  (
    .I(\ins8/OR_out ),
    .O(\NlwBufferSignal_ins8/DFF8/IN )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg7_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins8/Reg7_4/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg7_4/IN  (
    .I(\ins8/Reg6 [4]),
    .O(\NlwBufferSignal_ins8/Reg7_4/IN )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg6_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins8/Reg6_3/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg6_3/IN  (
    .I(\ins8/Reg5 [3]),
    .O(\NlwBufferSignal_ins8/Reg6_3/IN )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg6_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins8/Reg6_2/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg6_2/IN  (
    .I(\ins8/Reg5 [2]),
    .O(\NlwBufferSignal_ins8/Reg6_2/IN )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg6_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins8/Reg6_1/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg6_1/IN  (
    .I(\ins8/Reg5 [1]),
    .O(\NlwBufferSignal_ins8/Reg6_1/IN )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg6_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins8/Reg6_0/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg6_0/IN  (
    .I(\ins8/Reg5 [0]),
    .O(\NlwBufferSignal_ins8/Reg6_0/IN )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg2_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins8/Reg2_4/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg2_4/IN  (
    .I(ins_13_OBUF_3399),
    .O(\NlwBufferSignal_ins8/Reg2_4/IN )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg2_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins8/Reg2_3/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg2_3/IN  (
    .I(ins_12_OBUF_3400),
    .O(\NlwBufferSignal_ins8/Reg2_3/IN )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg4_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins8/Reg4_3/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg4_3/IN  (
    .I(ins_7_OBUF_3290),
    .O(\NlwBufferSignal_ins8/Reg4_3/IN )
  );
  X_BUF   \NlwBufferBlock_ins8/DFF5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins8/DFF5/CLK )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMD_D1/RADR0  (
    .I(\ins8/Reg6 [0]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD_D1/RADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMD_D1/RADR1  (
    .I(\ins8/Reg6 [1]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD_D1/RADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMD_D1/RADR2  (
    .I(\ins8/Reg6 [2]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD_D1/RADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMD_D1/RADR3  (
    .I(\ins8/Reg6 [3]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD_D1/RADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMD_D1/RADR4  (
    .I(\ins8/Reg6 [4]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD_D1/RADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMD_D1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD_D1/CLK )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMD_D1/WADR0  (
    .I(\ins8/Reg6 [0]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD_D1/WADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMD_D1/WADR1  (
    .I(\ins8/Reg6 [1]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD_D1/WADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMD_D1/WADR2  (
    .I(\ins8/Reg6 [2]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD_D1/WADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMD_D1/WADR3  (
    .I(\ins8/Reg6 [3]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD_D1/WADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMD_D1/WADR4  (
    .I(\ins8/Reg6 [4]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD_D1/WADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMD/RADR0  (
    .I(\ins8/Reg6 [0]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD/RADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMD/RADR1  (
    .I(\ins8/Reg6 [1]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD/RADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMD/RADR2  (
    .I(\ins8/Reg6 [2]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD/RADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMD/RADR3  (
    .I(\ins8/Reg6 [3]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD/RADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMD/RADR4  (
    .I(\ins8/Reg6 [4]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD/RADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMD/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD/CLK )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMD/WADR0  (
    .I(\ins8/Reg6 [0]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD/WADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMD/WADR1  (
    .I(\ins8/Reg6 [1]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD/WADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMD/WADR2  (
    .I(\ins8/Reg6 [2]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD/WADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMD/WADR3  (
    .I(\ins8/Reg6 [3]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD/WADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMD/WADR4  (
    .I(\ins8/Reg6 [4]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMD/WADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/AR_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/AR_5/CLK )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMC_D1/RADR0  (
    .I(ins_9_OBUF_3397),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC_D1/RADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMC_D1/RADR1  (
    .I(ins_10_OBUF_3402),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC_D1/RADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMC_D1/RADR2  (
    .I(ins_11_OBUF_3401),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC_D1/RADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMC_D1/RADR3  (
    .I(ins_12_OBUF_3400),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC_D1/RADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMC_D1/RADR4  (
    .I(ins_13_OBUF_3399),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC_D1/RADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMC_D1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC_D1/CLK )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMC_D1/IN  (
    .I(ans_dm_5_OBUF_3409),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC_D1/IN )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMC_D1/WADR0  (
    .I(\ins8/Reg6 [0]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC_D1/WADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMC_D1/WADR1  (
    .I(\ins8/Reg6 [1]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC_D1/WADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMC_D1/WADR2  (
    .I(\ins8/Reg6 [2]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC_D1/WADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMC_D1/WADR3  (
    .I(\ins8/Reg6 [3]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC_D1/WADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMC_D1/WADR4  (
    .I(\ins8/Reg6 [4]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC_D1/WADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMC/RADR0  (
    .I(ins_9_OBUF_3397),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC/RADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMC/RADR1  (
    .I(ins_10_OBUF_3402),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC/RADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMC/RADR2  (
    .I(ins_11_OBUF_3401),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC/RADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMC/RADR3  (
    .I(ins_12_OBUF_3400),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC/RADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMC/RADR4  (
    .I(ins_13_OBUF_3399),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC/RADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMC/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC/CLK )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMC/IN  (
    .I(ans_dm_4_OBUF_3407),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC/IN )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMC/WADR0  (
    .I(\ins8/Reg6 [0]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC/WADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMC/WADR1  (
    .I(\ins8/Reg6 [1]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC/WADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMC/WADR2  (
    .I(\ins8/Reg6 [2]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC/WADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMC/WADR3  (
    .I(\ins8/Reg6 [3]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC/WADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMC/WADR4  (
    .I(\ins8/Reg6 [4]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMC/WADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/AR_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/AR_4/CLK )
  );
  X_BUF   \NlwBufferBlock_ins3/AR_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/AR_3/CLK )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMB_D1/RADR0  (
    .I(ins_9_OBUF_3397),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB_D1/RADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMB_D1/RADR1  (
    .I(ins_10_OBUF_3402),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB_D1/RADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMB_D1/RADR2  (
    .I(ins_11_OBUF_3401),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB_D1/RADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMB_D1/RADR3  (
    .I(ins_12_OBUF_3400),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB_D1/RADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMB_D1/RADR4  (
    .I(ins_13_OBUF_3399),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB_D1/RADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMB_D1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB_D1/CLK )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMB_D1/IN  (
    .I(ans_dm_3_OBUF_3408),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB_D1/IN )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMB_D1/WADR0  (
    .I(\ins8/Reg6 [0]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB_D1/WADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMB_D1/WADR1  (
    .I(\ins8/Reg6 [1]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB_D1/WADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMB_D1/WADR2  (
    .I(\ins8/Reg6 [2]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB_D1/WADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMB_D1/WADR3  (
    .I(\ins8/Reg6 [3]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB_D1/WADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMB_D1/WADR4  (
    .I(\ins8/Reg6 [4]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB_D1/WADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMB/RADR0  (
    .I(ins_9_OBUF_3397),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB/RADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMB/RADR1  (
    .I(ins_10_OBUF_3402),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB/RADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMB/RADR2  (
    .I(ins_11_OBUF_3401),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB/RADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMB/RADR3  (
    .I(ins_12_OBUF_3400),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB/RADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMB/RADR4  (
    .I(ins_13_OBUF_3399),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB/RADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMB/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB/CLK )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMB/IN  (
    .I(ans_dm_2_OBUF_3406),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB/IN )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMB/WADR0  (
    .I(\ins8/Reg6 [0]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB/WADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMB/WADR1  (
    .I(\ins8/Reg6 [1]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB/WADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMB/WADR2  (
    .I(\ins8/Reg6 [2]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB/WADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMB/WADR3  (
    .I(\ins8/Reg6 [3]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB/WADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMB/WADR4  (
    .I(\ins8/Reg6 [4]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMB/WADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/AR_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/AR_2/CLK )
  );
  X_BUF   \NlwBufferBlock_ins3/AR_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/AR_1/CLK )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMA_D1/RADR0  (
    .I(ins_9_OBUF_3397),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA_D1/RADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMA_D1/RADR1  (
    .I(ins_10_OBUF_3402),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA_D1/RADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMA_D1/RADR2  (
    .I(ins_11_OBUF_3401),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA_D1/RADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMA_D1/RADR3  (
    .I(ins_12_OBUF_3400),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA_D1/RADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMA_D1/RADR4  (
    .I(ins_13_OBUF_3399),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA_D1/RADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMA_D1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA_D1/CLK )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMA_D1/IN  (
    .I(ans_dm_1_OBUF_3311),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA_D1/IN )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMA_D1/WADR0  (
    .I(\ins8/Reg6 [0]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA_D1/WADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMA_D1/WADR1  (
    .I(\ins8/Reg6 [1]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA_D1/WADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMA_D1/WADR2  (
    .I(\ins8/Reg6 [2]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA_D1/WADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMA_D1/WADR3  (
    .I(\ins8/Reg6 [3]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA_D1/WADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMA_D1/WADR4  (
    .I(\ins8/Reg6 [4]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA_D1/WADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMA/RADR0  (
    .I(ins_9_OBUF_3397),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA/RADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMA/RADR1  (
    .I(ins_10_OBUF_3402),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA/RADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMA/RADR2  (
    .I(ins_11_OBUF_3401),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA/RADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMA/RADR3  (
    .I(ins_12_OBUF_3400),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA/RADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMA/RADR4  (
    .I(ins_13_OBUF_3399),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA/RADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMA/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA/CLK )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMA/IN  (
    .I(ans_dm_0_OBUF_3312),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA/IN )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMA/WADR0  (
    .I(\ins8/Reg6 [0]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA/WADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMA/WADR1  (
    .I(\ins8/Reg6 [1]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA/WADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMA/WADR2  (
    .I(\ins8/Reg6 [2]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA/WADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMA/WADR3  (
    .I(\ins8/Reg6 [3]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA/WADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank2_RAMA/WADR4  (
    .I(\ins8/Reg6 [4]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank2_RAMA/WADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/AR_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/AR_0/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/ins_prv_11/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/ins_prv_11/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/ins_prv_10/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/ins_prv_10/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/ins_prv_9/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/ins_prv_9/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/ins_prv_8/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/ins_prv_8/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg4_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins8/Reg4_4/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg4_4/IN  (
    .I(ins_8_OBUF_3396),
    .O(\NlwBufferSignal_ins8/Reg4_4/IN )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg2_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins8/Reg2_2/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg2_2/IN  (
    .I(ins_11_OBUF_3401),
    .O(\NlwBufferSignal_ins8/Reg2_2/IN )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg2_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins8/Reg2_1/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg2_1/IN  (
    .I(ins_10_OBUF_3402),
    .O(\NlwBufferSignal_ins8/Reg2_1/IN )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg2_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins8/Reg2_0/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg2_0/IN  (
    .I(ins_9_OBUF_3397),
    .O(\NlwBufferSignal_ins8/Reg2_0/IN )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank122/SP/RADR0  (
    .I(\ins8/Reg6 [0]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank122/SP/RADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank122/SP/RADR1  (
    .I(\ins8/Reg6 [1]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank122/SP/RADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank122/SP/RADR2  (
    .I(\ins8/Reg6 [2]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank122/SP/RADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank122/SP/RADR3  (
    .I(\ins8/Reg6 [3]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank122/SP/RADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank122/SP/RADR4  (
    .I(\ins8/Reg6 [4]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank122/SP/RADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank122/SP/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank122/SP/CLK )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank122/SP/IN  (
    .I(ans_dm_7_OBUF_3334),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank122/SP/IN )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank122/SP/WADR0  (
    .I(\ins8/Reg6 [0]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank122/SP/WADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank122/SP/WADR1  (
    .I(\ins8/Reg6 [1]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank122/SP/WADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank122/SP/WADR2  (
    .I(\ins8/Reg6 [2]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank122/SP/WADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank122/SP/WADR3  (
    .I(\ins8/Reg6 [3]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank122/SP/WADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank122/SP/WADR4  (
    .I(\ins8/Reg6 [4]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank122/SP/WADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank121/SP/RADR0  (
    .I(\ins8/Reg6 [0]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank121/SP/RADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank121/SP/RADR1  (
    .I(\ins8/Reg6 [1]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank121/SP/RADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank121/SP/RADR2  (
    .I(\ins8/Reg6 [2]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank121/SP/RADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank121/SP/RADR3  (
    .I(\ins8/Reg6 [3]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank121/SP/RADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank121/SP/RADR4  (
    .I(\ins8/Reg6 [4]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank121/SP/RADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank121/SP/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank121/SP/CLK )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank121/SP/IN  (
    .I(ans_dm_6_OBUF_3335),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank121/SP/IN )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank121/SP/WADR0  (
    .I(\ins8/Reg6 [0]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank121/SP/WADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank121/SP/WADR1  (
    .I(\ins8/Reg6 [1]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank121/SP/WADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank121/SP/WADR2  (
    .I(\ins8/Reg6 [2]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank121/SP/WADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank121/SP/WADR3  (
    .I(\ins8/Reg6 [3]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank121/SP/WADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank121/SP/WADR4  (
    .I(\ins8/Reg6 [4]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank121/SP/WADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank32/SP/RADR0  (
    .I(\ins8/Reg6 [0]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank32/SP/RADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank32/SP/RADR1  (
    .I(\ins8/Reg6 [1]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank32/SP/RADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank32/SP/RADR2  (
    .I(\ins8/Reg6 [2]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank32/SP/RADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank32/SP/RADR3  (
    .I(\ins8/Reg6 [3]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank32/SP/RADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank32/SP/RADR4  (
    .I(\ins8/Reg6 [4]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank32/SP/RADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank32/SP/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank32/SP/CLK )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank32/SP/IN  (
    .I(ans_dm_7_OBUF_3334),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank32/SP/IN )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank32/SP/WADR0  (
    .I(\ins8/Reg6 [0]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank32/SP/WADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank32/SP/WADR1  (
    .I(\ins8/Reg6 [1]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank32/SP/WADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank32/SP/WADR2  (
    .I(\ins8/Reg6 [2]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank32/SP/WADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank32/SP/WADR3  (
    .I(\ins8/Reg6 [3]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank32/SP/WADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank32/SP/WADR4  (
    .I(\ins8/Reg6 [4]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank32/SP/WADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank31/SP/RADR0  (
    .I(\ins8/Reg6 [0]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank31/SP/RADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank31/SP/RADR1  (
    .I(\ins8/Reg6 [1]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank31/SP/RADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank31/SP/RADR2  (
    .I(\ins8/Reg6 [2]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank31/SP/RADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank31/SP/RADR3  (
    .I(\ins8/Reg6 [3]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank31/SP/RADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank31/SP/RADR4  (
    .I(\ins8/Reg6 [4]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank31/SP/RADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank31/SP/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank31/SP/CLK )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank31/SP/IN  (
    .I(ans_dm_6_OBUF_3335),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank31/SP/IN )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank31/SP/WADR0  (
    .I(\ins8/Reg6 [0]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank31/SP/WADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank31/SP/WADR1  (
    .I(\ins8/Reg6 [1]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank31/SP/WADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank31/SP/WADR2  (
    .I(\ins8/Reg6 [2]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank31/SP/WADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank31/SP/WADR3  (
    .I(\ins8/Reg6 [3]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank31/SP/WADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank31/SP/WADR4  (
    .I(\ins8/Reg6 [4]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank31/SP/WADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/BR_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/BR_7/CLK )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank122/DP/RADR0  (
    .I(ins_4_OBUF_3240),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank122/DP/RADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank122/DP/RADR1  (
    .I(ins_5_OBUF_3247),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank122/DP/RADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank122/DP/RADR2  (
    .I(ins_6_OBUF_3276),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank122/DP/RADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank122/DP/RADR3  (
    .I(ins_7_OBUF_3290),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank122/DP/RADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank122/DP/RADR4  (
    .I(ins_8_OBUF_3396),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank122/DP/RADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank122/DP/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank122/DP/CLK )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank122/DP/IN  (
    .I(ans_dm_7_OBUF_3334),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank122/DP/IN )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank122/DP/WADR0  (
    .I(\ins8/Reg6 [0]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank122/DP/WADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank122/DP/WADR1  (
    .I(\ins8/Reg6 [1]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank122/DP/WADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank122/DP/WADR2  (
    .I(\ins8/Reg6 [2]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank122/DP/WADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank122/DP/WADR3  (
    .I(\ins8/Reg6 [3]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank122/DP/WADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank122/DP/WADR4  (
    .I(\ins8/Reg6 [4]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank122/DP/WADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank121/DP/RADR0  (
    .I(ins_4_OBUF_3240),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank121/DP/RADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank121/DP/RADR1  (
    .I(ins_5_OBUF_3247),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank121/DP/RADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank121/DP/RADR2  (
    .I(ins_6_OBUF_3276),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank121/DP/RADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank121/DP/RADR3  (
    .I(ins_7_OBUF_3290),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank121/DP/RADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank121/DP/RADR4  (
    .I(ins_8_OBUF_3396),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank121/DP/RADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank121/DP/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank121/DP/CLK )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank121/DP/IN  (
    .I(ans_dm_6_OBUF_3335),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank121/DP/IN )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank121/DP/WADR0  (
    .I(\ins8/Reg6 [0]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank121/DP/WADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank121/DP/WADR1  (
    .I(\ins8/Reg6 [1]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank121/DP/WADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank121/DP/WADR2  (
    .I(\ins8/Reg6 [2]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank121/DP/WADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank121/DP/WADR3  (
    .I(\ins8/Reg6 [3]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank121/DP/WADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank121/DP/WADR4  (
    .I(\ins8/Reg6 [4]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank121/DP/WADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/BR_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/BR_6/CLK )
  );
  X_BUF   \NlwBufferBlock_ins3/AR_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/AR_7/CLK )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank32/DP/RADR0  (
    .I(ins_9_OBUF_3397),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank32/DP/RADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank32/DP/RADR1  (
    .I(ins_10_OBUF_3402),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank32/DP/RADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank32/DP/RADR2  (
    .I(ins_11_OBUF_3401),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank32/DP/RADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank32/DP/RADR3  (
    .I(ins_12_OBUF_3400),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank32/DP/RADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank32/DP/RADR4  (
    .I(ins_13_OBUF_3399),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank32/DP/RADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank32/DP/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank32/DP/CLK )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank32/DP/IN  (
    .I(ans_dm_7_OBUF_3334),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank32/DP/IN )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank32/DP/WADR0  (
    .I(\ins8/Reg6 [0]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank32/DP/WADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank32/DP/WADR1  (
    .I(\ins8/Reg6 [1]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank32/DP/WADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank32/DP/WADR2  (
    .I(\ins8/Reg6 [2]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank32/DP/WADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank32/DP/WADR3  (
    .I(\ins8/Reg6 [3]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank32/DP/WADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank32/DP/WADR4  (
    .I(\ins8/Reg6 [4]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank32/DP/WADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank31/DP/RADR0  (
    .I(ins_9_OBUF_3397),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank31/DP/RADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank31/DP/RADR1  (
    .I(ins_10_OBUF_3402),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank31/DP/RADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank31/DP/RADR2  (
    .I(ins_11_OBUF_3401),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank31/DP/RADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank31/DP/RADR3  (
    .I(ins_12_OBUF_3400),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank31/DP/RADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank31/DP/RADR4  (
    .I(ins_13_OBUF_3399),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank31/DP/RADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank31/DP/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank31/DP/CLK )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank31/DP/IN  (
    .I(ans_dm_6_OBUF_3335),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank31/DP/IN )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank31/DP/WADR0  (
    .I(\ins8/Reg6 [0]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank31/DP/WADR0 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank31/DP/WADR1  (
    .I(\ins8/Reg6 [1]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank31/DP/WADR1 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank31/DP/WADR2  (
    .I(\ins8/Reg6 [2]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank31/DP/WADR2 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank31/DP/WADR3  (
    .I(\ins8/Reg6 [3]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank31/DP/WADR3 )
  );
  X_BUF   \NlwBufferBlock_ins3/Mram_RegisterBank31/DP/WADR4  (
    .I(\ins8/Reg6 [4]),
    .O(\NlwBufferSignal_ins3/Mram_RegisterBank31/DP/WADR4 )
  );
  X_BUF   \NlwBufferBlock_ins3/AR_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins3/AR_6/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg7_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins8/Reg7_2/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg7_2/IN  (
    .I(\ins8/Reg6 [2]),
    .O(\NlwBufferSignal_ins8/Reg7_2/IN )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg7_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins8/Reg7_1/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg7_1/IN  (
    .I(\ins8/Reg6 [1]),
    .O(\NlwBufferSignal_ins8/Reg7_1/IN )
  );
  X_BUF   \NlwBufferBlock_ins5/Q_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins5/Q_1/CLK )
  );
  X_BUF   \NlwBufferBlock_ins5/Q_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins5/Q_0/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/DFF4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins8/DFF4/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/DFF7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins8/DFF7/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/DFF7/IN  (
    .I(\ins8/OR_out ),
    .O(\NlwBufferSignal_ins8/DFF7/IN )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg7_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins8/Reg7_3/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg7_3/IN  (
    .I(\ins8/Reg6 [3]),
    .O(\NlwBufferSignal_ins8/Reg7_3/IN )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg7_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins8/Reg7_0/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/Reg7_0/IN  (
    .I(\ins8/Reg6 [0]),
    .O(\NlwBufferSignal_ins8/Reg7_0/IN )
  );
  X_BUF   \NlwBufferBlock_ins1/DM_data_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins1/DM_data_1/CLK )
  );
  X_BUF   \NlwBufferBlock_ins1/DM_data_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins1/DM_data_0/CLK )
  );
  X_BUF   \NlwBufferBlock_ins4/Ex_out_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins4/Ex_out_3/CLK )
  );
  X_BUF   \NlwBufferBlock_ins4/Ex_out_3/IN  (
    .I(\ins1/ans_ex [3]),
    .O(\NlwBufferSignal_ins4/Ex_out_3/IN )
  );
  X_BUF   \NlwBufferBlock_ins4/Ex_out_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins4/Ex_out_2/CLK )
  );
  X_BUF   \NlwBufferBlock_ins4/Ex_out_2/IN  (
    .I(\ins1/ans_ex [2]),
    .O(\NlwBufferSignal_ins4/Ex_out_2/IN )
  );
  X_BUF   \NlwBufferBlock_ins4/Ex_out_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins4/Ex_out_1/CLK )
  );
  X_BUF   \NlwBufferBlock_ins4/Ex_out_1/IN  (
    .I(\ins1/ans_ex [1]),
    .O(\NlwBufferSignal_ins4/Ex_out_1/IN )
  );
  X_BUF   \NlwBufferBlock_ins4/Ex_out_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins4/Ex_out_0/CLK )
  );
  X_BUF   \NlwBufferBlock_ins4/Ex_out_0/IN  (
    .I(\ins1/ans_ex [0]),
    .O(\NlwBufferSignal_ins4/Ex_out_0/IN )
  );
  X_BUF   \NlwBufferBlock_ins1/ans_ex_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins1/ans_ex_5/CLK )
  );
  X_BUF   \NlwBufferBlock_ins1/ans_ex_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins1/ans_ex_4/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/ins_prv_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/ins_prv_3/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/ins_prv_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/ins_prv_2/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/ins_prv_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/ins_prv_1/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/ins_prv_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/ins_prv_0/CLK )
  );
  X_BUF   \NlwBufferBlock_ins6/ans_wb_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins6/ans_wb_3/CLK )
  );
  X_BUF   \NlwBufferBlock_ins6/ans_wb_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins6/ans_wb_2/CLK )
  );
  X_BUF   \NlwBufferBlock_ins6/ans_wb_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins6/ans_wb_0/CLK )
  );
  X_BUF   \NlwBufferBlock_ins6/ans_wb_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins6/ans_wb_1/CLK )
  );
  X_BUF   \NlwBufferBlock_ins6/ans_wb_1/IN  (
    .I(ans_dm_1_OBUF_3311),
    .O(\NlwBufferSignal_ins6/ans_wb_1/IN )
  );
  X_BUF   \NlwBufferBlock_ins1/ans_ex_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins1/ans_ex_1/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/DFF6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins8/DFF6/CLK )
  );
  X_BUF   \NlwBufferBlock_ins8/DFF6/IN  (
    .I(\ins2/ins_prv [19]),
    .O(\NlwBufferSignal_ins8/DFF6/IN )
  );
  X_BUF   \NlwBufferBlock_ins7/Q_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins7/Q_0/CLK )
  );
  X_BUF   \NlwBufferBlock_ins6/ans_wb_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins6/ans_wb_6/CLK )
  );
  X_BUF   \NlwBufferBlock_ins6/ans_wb_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins6/ans_wb_7/CLK )
  );
  X_BUF   \NlwBufferBlock_ins6/ans_wb_7/IN  (
    .I(ans_dm_7_OBUF_3334),
    .O(\NlwBufferSignal_ins6/ans_wb_7/IN )
  );
  X_BUF   \NlwBufferBlock_ins6/ans_wb_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins6/ans_wb_5/CLK )
  );
  X_BUF   \NlwBufferBlock_ins6/ans_wb_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins6/ans_wb_4/CLK )
  );
  X_BUF   \NlwBufferBlock_ins7/R1_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins7/R1_3/CLK )
  );
  X_BUF   \NlwBufferBlock_ins7/R1_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins7/R1_2/CLK )
  );
  X_BUF   \NlwBufferBlock_ins7/R1_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins7/R1_1/CLK )
  );
  X_BUF   \NlwBufferBlock_ins7/R1_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins7/R1_0/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/ins_prv_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/ins_prv_7/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/ins_prv_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/ins_prv_6/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/ins_prv_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/ins_prv_5/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/ins_prv_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/ins_prv_4/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/ins_prv_4/IN  (
    .I(ins_4_OBUF_3240),
    .O(\NlwBufferSignal_ins2/ins_prv_4/IN )
  );
  X_BUF   \NlwBufferBlock_ins4/Ex_out_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins4/Ex_out_7/CLK )
  );
  X_BUF   \NlwBufferBlock_ins4/Ex_out_7/IN  (
    .I(\ins1/ans_ex [7]),
    .O(\NlwBufferSignal_ins4/Ex_out_7/IN )
  );
  X_BUF   \NlwBufferBlock_ins4/Ex_out_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins4/Ex_out_6/CLK )
  );
  X_BUF   \NlwBufferBlock_ins4/Ex_out_6/IN  (
    .I(\ins1/ans_ex [6]),
    .O(\NlwBufferSignal_ins4/Ex_out_6/IN )
  );
  X_BUF   \NlwBufferBlock_ins4/Ex_out_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins4/Ex_out_5/CLK )
  );
  X_BUF   \NlwBufferBlock_ins4/Ex_out_5/IN  (
    .I(\ins1/ans_ex [5]),
    .O(\NlwBufferSignal_ins4/Ex_out_5/IN )
  );
  X_BUF   \NlwBufferBlock_ins4/Ex_out_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins4/Ex_out_4/CLK )
  );
  X_BUF   \NlwBufferBlock_ins4/Ex_out_4/IN  (
    .I(\ins1/ans_ex [4]),
    .O(\NlwBufferSignal_ins4/Ex_out_4/IN )
  );
  X_BUF   \NlwBufferBlock_ins2/ins_prv_23/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/ins_prv_23/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/ins_prv_23/IN  (
    .I(ins_23_OBUF_3271),
    .O(\NlwBufferSignal_ins2/ins_prv_23/IN )
  );
  X_BUF   \NlwBufferBlock_ins2/ins_prv_21/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/ins_prv_21/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/ins_prv_22/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/ins_prv_22/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/ins_prv_22/IN  (
    .I(ins_22_OBUF_3269),
    .O(\NlwBufferSignal_ins2/ins_prv_22/IN )
  );
  X_BUF   \NlwBufferBlock_ins2/ins_prv_20/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/ins_prv_20/CLK )
  );
  X_BUF   \NlwBufferBlock_ins1/ans_ex_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins1/ans_ex_0/CLK )
  );
  X_BUF   \NlwBufferBlock_ins1/DM_data_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins1/DM_data_3/CLK )
  );
  X_BUF   \NlwBufferBlock_ins1/DM_data_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins1/DM_data_2/CLK )
  );
  X_BUF   \NlwBufferBlock_ins1/DM_data_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins1/DM_data_5/CLK )
  );
  X_BUF   \NlwBufferBlock_ins1/DM_data_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins1/DM_data_4/CLK )
  );
  X_BUF   \NlwBufferBlock_ins1/ans_ex_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins1/ans_ex_3/CLK )
  );
  X_BUF   \NlwBufferBlock_ins1/ans_ex_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins1/ans_ex_2/CLK )
  );
  X_BUF   \NlwBufferBlock_ins1/DM_data_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins1/DM_data_7/CLK )
  );
  X_BUF   \NlwBufferBlock_ins1/DM_data_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins1/DM_data_6/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/Next_Address_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/Next_Address_5/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/Hold_Address_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/Hold_Address_4/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/Hold_Address_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/Hold_Address_7/CLK )
  );
  X_BUF   \NlwBufferBlock_ins7/R1_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins7/R1_7/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/Hold_Address_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/Hold_Address_6/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/Next_Address_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/Next_Address_2/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/Next_Address_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/Next_Address_1/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/Next_Address_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/Next_Address_0/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/Hold_Address_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/Hold_Address_1/CLK )
  );
  X_BUF   \NlwBufferBlock_ins1/flag_tmp_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins1/flag_tmp_1/CLK )
  );
  X_BUF   \NlwBufferBlock_ins1/flag_tmp_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins1/flag_tmp_0/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/Hold_Address_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/Hold_Address_5/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/Next_Address_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/Next_Address_4/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/Hold_Address_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/Hold_Address_3/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/Hold_Address_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/Hold_Address_2/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/Hold_Address_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/Hold_Address_0/CLK )
  );
  X_BUF   \NlwBufferBlock_ins7/R1_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins7/R1_6/CLK )
  );
  X_BUF   \NlwBufferBlock_ins7/R1_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins7/R1_5/CLK )
  );
  X_BUF   \NlwBufferBlock_ins7/R1_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins7/R1_4/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/Next_Address_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/Next_Address_7/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/Next_Address_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/Next_Address_6/CLK )
  );
  X_BUF   \NlwBufferBlock_ins2/Next_Address_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins2/Next_Address_3/CLK )
  );
  X_BUF   \NlwBufferBlock_ins1/ans_ex_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins1/ans_ex_7/CLK )
  );
  X_BUF   \NlwBufferBlock_ins1/ans_ex_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins1/ans_ex_6/CLK )
  );
  X_BUF   \NlwBufferBlock_ins1/data_out_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins1/data_out_6/CLK )
  );
  X_BUF   \NlwBufferBlock_ins1/data_out_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins1/data_out_7/CLK )
  );
  X_BUF   \NlwBufferBlock_ins1/data_out_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins1/data_out_4/CLK )
  );
  X_BUF   \NlwBufferBlock_ins1/data_out_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins1/data_out_5/CLK )
  );
  X_BUF   \NlwBufferBlock_ins1/data_out_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins1/data_out_2/CLK )
  );
  X_BUF   \NlwBufferBlock_ins1/data_out_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins1/data_out_3/CLK )
  );
  X_BUF   \NlwBufferBlock_ins1/data_out_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins1/data_out_0/CLK )
  );
  X_BUF   \NlwBufferBlock_ins1/data_out_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_ins1/data_out_1/CLK )
  );
  X_ONE   NlwBlock_MainModule_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_MainModule_GND (
    .O(GND)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

