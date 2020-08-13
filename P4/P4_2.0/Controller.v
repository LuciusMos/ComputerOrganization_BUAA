`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:19:43 11/21/2018 
// Design Name: 
// Module Name:    Controller 
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
`define BGEZ 6'b000001
`define BGEZ_RT 5'b00001
`define LB 6'b100000
`define SB 6'b101000
`define J 6'b000010
`define SLTU_FC 6'b101011
`define ADDI 6'b001000
`define SLT_FC 6'b101010
module Controller(
    input [5:0] op,
    input [5:0] fc,
	 input [4:0] rt,
    output ALUSrc1,
	 output ALUSrc2,
    output MemWr,
    output RegWr,
    output [1:0] ExtOp,
    output [2:0] ALUOp,
    output [2:0] nPC_sel,
    output [1:0] RegDst,
    output [1:0] MemtoReg,
	 output lb,
	 output sb
    );
	wire addu,subu,ori,lw,sw,beq,lui,sll,jal,jr;
	wire bgez,lb_instr,sb_instr,j,sltu,slt,addi;
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
	assign bgez = (op==`BGEZ)&(rt==`BGEZ_RT);
	assign lb_instr = (op==`LB);
	assign sb_instr = (op==`SB);
	assign j = (op==`J);
	assign sltu = (op==`R_OP)&(fc==`SLTU_FC);
	assign slt = (op==`R_OP)&(fc==`SLT_FC);
	assign addi = (op==`ADDI);
	
	assign ALUSrc1 = sll;
	assign ALUSrc2 = ori|lw|sw|lui|sll|lb_instr|sb_instr|addi;
	assign MemWr = sw|sb_instr;
	assign RegWr = addu|subu|ori|lw|lui|sll|jal|lb_instr|sltu|slt|addi;
	assign ExtOp = {lui,lw|sw|lb_instr|sb_instr|addi};
	assign ALUOp = {sltu|slt,ori|sll,sll|subu|slt};
	assign nPC_sel = {bgez,jal|jr|j,beq|jr};
	assign RegDst = {jal,addu|subu|sll|sltu|slt};
	assign MemtoReg = {jal,lw|lb_instr};
	assign lb = lb_instr;
	assign sb = sb_instr;
endmodule