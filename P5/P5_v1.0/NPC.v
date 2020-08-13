`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:17:11 11/30/2018 
// Design Name: 
// Module Name:    NPC 
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
module NPC(
    input [31:0] PC4,
    input [31:0] IR_D,
    input BrTrue,
    output [31:0] brPC,
	 output [31:0] jPC
    );
	wire [15:0] imm16;
	wire [25:0] imm26;
	assign imm26 = IR_D[25:0];
	assign imm16 = IR_D[15:0];

	assign brPC = (BrTrue==0)? PC4+4:
		          PC4+{{14{imm16[15]}},imm16,{2{1'b0}}};
	assign jPC = {PC4[31:28],imm26,{2{1'b0}}};										 
endmodule
