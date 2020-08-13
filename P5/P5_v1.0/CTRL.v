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
`define ADDU_FC 6'b100001
`define SUBU_FC 6'b100011
`define ORI 6'b001101
`define LW 6'b100011
`define SW 6'b101011
`define BEQ 6'b000100
`define LUI 6'b001111
`define SLL_FC 6'b000000
`define JAL 6'b000011
`define JR_FC 6'b001000
`define J 6'b000010
`define JALR_FC 6'b001001

`define LB 6'b100000
`define SB 6'b101000
`define SLTU_FC 6'b101011
`define ADDI 6'b001000
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
	 output jalr
    );
	wire [5:0] op,fc;
	wire [4:0] rt;
	assign op = instr[31:26];
	assign fc = instr[5:0];
	assign rt = instr[20:16];
	
	wire addu,subu,ori,lw,sw,beq,lui,sll,j;
	wire bgez,lb_instr,sb_instr,sltu,addi;
	assign addu = (op==`R_OP)&(fc==`ADDU_FC);
	assign subu = (op==`R_OP)&(fc==`SUBU_FC);
	assign ori = (op==`ORI);
	assign lw = (op==`LW);
	assign sw = (op==`SW);
	assign beq = (op==`BEQ);
	assign lui = (op==`LUI);
	assign sll = (op==`R_OP)&(fc==`SLL_FC);
	assign jal = (op==`JAL);
	assign jr = (op==`R_OP)&(fc==`JR_FC);
	assign j = (op==`J);
	assign jalr = (op==`R_OP)&(fc==`JALR_FC);
	/*
	assign bgez = (op==`BGEZ);
	assign lb_instr = (op==`LB);
	assign sb_instr = (op==`SB);
	assign sltu = (op==`R_OP)&(fc==`SLTU_FC);
	assign addi = (op==`ADDI);
	*/
	assign ALUSrc1 = sll;
	assign ALUSrc2 = ori|lw|sw|lui;
	assign MemWr = sw;
	assign RegWr = addu|subu|ori|lw|lui|sll|jal|jalr;
	assign ExtOp = {lui,lw|sw};
	assign ALUOp = {0,ori|sll,sll|subu};
	assign NPCsel = {jal|jr|j|jalr,beq|jr|jalr};
	assign RegDst = {jal|jalr,addu|subu|sll};
	assign MemtoReg = {jal|jalr,lw};
	assign BrType = {0,0,0};
	assign lb = lb_instr;
	assign sb = sb_instr;
	assign cali = ori|lui;
	assign calr = addu|subu|sll;
	assign br = beq;
	assign load = lw;
	assign store = sw;
	
endmodule
