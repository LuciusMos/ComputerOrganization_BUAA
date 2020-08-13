`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:02:34 12/03/2018 
// Design Name: 
// Module Name:    CTRL 
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
`define R_OP 6'b000000
`define ADD_FC 6'b100000
`define ADDU_FC 6'b100001
`define SUBU_FC 6'b100011
`define AND_FC 6'b100100
`define ORI 6'b001101
`define LW 6'b100011
`define SW 6'b101011
`define BEQ 6'b000100
`define LUI 6'b001111
`define SLL_FC 6'b000000
`define J 6'b000010
`define JAL 6'b000011
`define JR_FC 6'b001000
`define JALR_FC 6'b001001

`define ADDI 6'b001000
`define ADDIU 6'b001001
`define ANDI 6'b001100

`define BGEZ 6'b000001
`define BGEZ_RT 5'b00001
`define BLTZ 6'b000001
`define BLTZ_RT 5'b00000
`define BNE 6'b000101
`define BLEZ 6'b000110
`define BGTZ 6'b000111

`define BGEZAL 6'b000001
`define BGEZAL_RT 5'b10001

`define LB 6'b100000
`define SB 6'b101000
`define SLTU_FC 6'b101011

`define DIV_FC 6'b011010
`define DIVU_FC 6'b011011
module CTRL(
    input [31:0] instr,
    output ALUSrc1,
	 output ALUSrc2,
    output MemWr,
    output RegWr,
    output [1:0] ExtOp,
    output [2:0] ALUOp,
    output [1:0] NPCsel,
    output [1:0] RegDst,
    output [1:0] MemtoReg,
	 output [2:0] BrType,
	 output lb,
	 output sb,
	 output cali,
	 output calr,
	 output br,
	 output load,
	 output store,
	 output jal,
	 output jr,
	 output jalr,
	 input BrTrue
    );
	wire [5:0] op,fc;
	wire [4:0] rt;
	assign op = instr[31:26];
	assign fc = instr[5:0];
	assign rt = instr[20:16];
	
	wire addu,subu,ori,lw,sw,beq,lui,sll,j_ins,jal_ins,jr_ins,jalr_ins;
	wire bgezal,addi;
	wire bgez,lb_ins,sb_ins,sltu;
	
	assign addu = (op==`R_OP)&(fc==`ADDU_FC);
	assign subu = (op==`R_OP)&(fc==`SUBU_FC);
	assign ori = (op==`ORI);
	assign lw = (op==`LW);
	assign sw = (op==`SW);
	assign beq = (op==`BEQ);
	assign lui = (op==`LUI);
	assign sll = (op==`R_OP)&(fc==`SLL_FC);
	assign jal_ins = (op==`JAL);
	assign jr_ins = (op==`R_OP)&(fc==`JR_FC);
	assign j_ins = (op==`J);
	assign jalr_ins = (op==`R_OP)&(fc==`JALR_FC);
	
	assign addi = (op==`ADDI);
	assign bgezal = (op==`BGEZAL)&(rt==`BGEZAL_RT);
	/*
	assign bgez = (op==`BGEZ);
	assign lb_ins = (op==`LB);
	assign sb_ins = (op==`SB);
	assign sltu = (op==`R_OP)&(fc==`SLTU_FC);
	
	*/
	
	assign RegWr = addu|subu|ori|lw|lui|sll|jal_ins|jalr_ins|addi|(bgezal&BrTrue);
	assign MemWr = sw;
	assign ALUSrc1 = sll;
	assign ALUSrc2 = ori|lw|sw|lui|addi;
	assign ExtOp = {lui,lw|sw|addi};
	assign RegDst = {jal_ins|bgezal,addu|subu|sll|jalr_ins};
	assign MemtoReg = {jal_ins|jalr_ins|bgezal,lw};
	assign NPCsel = {jal_ins|jr_ins|j_ins|jalr_ins,beq|jr_ins|jalr_ins|bgezal};
	assign BrType = {0,0,bgezal};
	assign ALUOp = {0,ori|sll,sll|subu};
	
	//assign lb = lb_ins;
	//assign sb = sb_ins;
	assign cali = ori|lui|addi;
	assign calr = addu|subu|sll;
	assign br = beq|bgezal;
	assign load = lw;
	assign store = sw;
	assign jal = jal_ins|(bgezal&BrTrue);
	assign jr = jr_ins;
	assign jalr = jalr_ins;
	
endmodule
