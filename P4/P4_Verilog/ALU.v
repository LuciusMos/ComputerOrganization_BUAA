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
	 input [1:0] ALUOp,
    output br_e,
    output [31:0] ALUOut
    );
	wire [31:0] ALUIn1, ALUIn2;
	assign ALUIn1 = (ALUSrc1==0)? RegA:
	                              RegB;
	assign ALUIn2 = (ALUSrc2==0)? RegB:
	                              ExtOut;
	assign br_e = (ALUIn1==ALUIn2);
	assign ALUOut = (ALUOp==2'b00)? ALUIn1 + ALUIn2:
	                (ALUOp==2'b01)? ALUIn1 - ALUIn2:
						 (ALUOp==2'b10)? ALUIn1 | ALUIn2:
						                 ALUIn1 << (ALUIn2 [10:6]);

endmodule
