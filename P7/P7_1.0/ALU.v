`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:23:26 12/03/2018 
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
    input [31:0] ALUIn1,
    input [31:0] ALUIn2,
    input [4:0] ALUOp,
    output [31:0] ALUOut
    );
	wire [31:0] slt_re,sltu_re;
	assign slt_re = ($signed(ALUIn1)<$signed(ALUIn2))? 32'h1:32'h0;
	assign sltu_re = (ALUIn1<ALUIn2)? 32'h1:32'h0;
	assign ALUOut = (ALUOp==5'b00000)? ALUIn1 + ALUIn2:
	                (ALUOp==5'b00001)? ALUIn1 - ALUIn2:
						 (ALUOp==5'b00010)? ALUIn1 | ALUIn2://or
						 (ALUOp==5'b00011)? ALUIn2 << (ALUIn1[4:0])://sll
						 (ALUOp==5'b00100)? ALUIn2 >> (ALUIn1[4:0])://srl
						 (ALUOp==5'b00101)? $signed($signed(ALUIn2)>>>$signed(ALUIn1[4:0]))://sra  {{32{ALUIn2[31]}},ALUIn2>>(ALUIn1[4:0])}
						 (ALUOp==5'b01001)? ALUIn1 & ALUIn2://and
						 (ALUOp==5'b01010)? ALUIn1 ^ ALUIn2://xor
						 (ALUOp==5'b01011)? ~(ALUIn1 | ALUIn2)://nor
						 (ALUOp==5'b01100)? slt_re:
						 (ALUOp==5'b01101)? sltu_re:
						                    32'h19990413;

endmodule
