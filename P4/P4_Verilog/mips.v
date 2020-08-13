`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:45:10 11/19/2018 
// Design Name: 
// Module Name:    mips 
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
module mips(
    input clk,
    input reset
    );
	 wire[5:0] opcode,funct;
	 wire ALUSrc1,ALUSrc2,MemWr,RegWr;
	 wire[1:0] ExtOp,ALUOp,nPC_sel,RegDst,MemtoReg;
	 wire br_e;
	 wire[15:0] imm16;
	 wire[25:0] imm26;
	 wire[31:0] instr,RegData,PC,RegA,RegB,ExtOut,ALUOut;
	 wire[4:0] shamt,rd,rt,rs;
	Controller controller(
		.op(opcode),
		.fc(funct),
		.ALUSrc1(ALUSrc1),
		.ALUSrc2(ALUSrc2),
		.MemWr(MemWr),
		.RegWr(RegWr),
		.ExtOp(ExtOp),
		.ALUOp(ALUOp),
		.nPC_sel(nPC_sel),
		.RegDst(RegDst),
		.MemtoReg(MemtoReg)
	);
	IFU ifu(
		.nPC_sel(nPC_sel),
		.br_e(br_e),
		.imm16(imm16),
		.imm26(imm26),
		.jrPC(ALUOut),   //!!
		.clk(clk),
		.reset(reset),
		.instr(instr),
		.PC(PC)
	);
	DC dc(
		.instr(instr),
		.fc(funct),
		.shamt(shamt),
		.rd(rd),
		.rt(rt),
		.rs(rs),
		.op(opcode),
		.imm16(imm16),
		.imm26(imm26)
	);
	GRF grf(
		.rt(rt),
		.rd(rd),
		.rs(rs),
		.RegDst(RegDst),
		.dataWr(RegData), //!!
		.RegWr(RegWr),
		.clk(clk),
		.reset(reset),
	 	.PC(PC),
		.dataA(RegA),     //!!
		.dataB(RegB)      //!!
	);
	EXT ext(
		.imm16(imm16),
		.ExtOp(ExtOp),
		.ExtOut(ExtOut)
	);
	ALU alu(
		.RegA(RegA),
		.RegB(RegB),
		.ExtOut(ExtOut),
		.ALUSrc1(ALUSrc1),
		.ALUSrc2(ALUSrc2),
		.ALUOp(ALUOp),
		.br_e(br_e),
		.ALUOut(ALUOut)
	);
	DM dm(
		.MemAddr(ALUOut), //!!
		.MemData(RegB),   //!!
		.MemWr(MemWr),
		.clk(clk),
		.reset(reset),
		.PC(PC),
		.MemtoReg(MemtoReg),
		.RegData(RegData)
	);
	//always @* begin
		//$display("%h %h",PC,instr);
	//end
endmodule
