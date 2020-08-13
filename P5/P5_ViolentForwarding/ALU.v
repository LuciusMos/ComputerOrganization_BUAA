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
    input [2:0] ALUOp,
    output [31:0] ALUOut
    );
	wire [31:0] sltu_re;
	assign sltu_re = (ALUIn1<ALUIn2)? 32'h1:32'h0;
	assign ALUOut = (ALUOp==3'b000)? ALUIn1 + ALUIn2:
	                (ALUOp==3'b001)? ALUIn1 - ALUIn2:
						 (ALUOp==3'b010)? ALUIn1 | ALUIn2:
						 (ALUOp==3'b011)? ALUIn2 << (ALUIn1[4:0])://sll
						                  32'h19990413;

endmodule
