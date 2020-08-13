`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:59:09 11/21/2018 
// Design Name: 
// Module Name:    DC 
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
module DC(
    input [31:0] instr,
    output [5:0] fc,
    output [4:0] shamt,
    output [4:0] rd,
    output [4:0] rt,
    output [4:0] rs,
    output [5:0] op,
    output [15:0] imm16,
    output [25:0] imm26
    );
	assign fc=instr[5:0];
	assign shamt=instr[10:6];
	assign rd=instr[15:11];
	assign rt=instr[20:16];
	assign rs=instr[25:21];
	assign op=instr[31:26];
	assign imm16=instr[15:0];
	assign imm26=instr[25:0];

endmodule
