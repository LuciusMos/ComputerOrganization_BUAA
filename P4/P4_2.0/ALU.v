`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:32:31 11/20/2018 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [31:0] RegA,
    input [31:0] RegB,
    input [31:0] ExtOut,
    input ALUSrc1,
	 input ALUSrc2,
	 input [2:0] ALUOp,
	 output br_gez,
    output br_e,
    output [31:0] ALUOut
    );
	wire [31:0] ALUIn1,ALUIn2,sltu_re,slt_re;
	assign ALUIn1 = (ALUSrc1==0)? RegA:
	                              RegB;
	assign ALUIn2 = (ALUSrc2==0)? RegB:
	                              ExtOut;
	assign br_e = (ALUIn1==ALUIn2);
	assign br_gez = ($signed(ALUIn1)>=0);
	assign sltu_re = ($unsigned(ALUIn1)<$unsigned(ALUIn2))? 32'h1 : 32'h0; 
	assign slt_re = ($signed(ALUIn1)<$signed(ALUIn2))? 32'h1 : 32'h0;
	assign ALUOut = (ALUOp==3'b000)? ALUIn1 + ALUIn2:
	                (ALUOp==3'b001)? ALUIn1 - ALUIn2:
						 (ALUOp==3'b010)? ALUIn1 | ALUIn2:
						 (ALUOp==3'b011)? ALUIn1 << (ALUIn2[10:6])://sll
						 (ALUOp==3'b100)? sltu_re:
						 (ALUOp==3'b101)? slt_re:
						                  32'h19990413;

endmodule
