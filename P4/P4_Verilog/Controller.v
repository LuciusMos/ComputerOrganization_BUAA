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
module Controller(
    input [5:0] op,
    input [5:0] fc,
    output ALUSrc1,
	 output ALUSrc2,
    output MemWr,
    output RegWr,
    output [1:0] ExtOp,
    output [1:0] ALUOp,
    output [1:0] nPC_sel,
    output [1:0] RegDst,
    output [1:0] MemtoReg
    );
	wire addu,subu,ori,lw,sw,beq,lui,sll,jal,jr;
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

	assign ALUSrc1 = sll;
	assign ALUSrc2 = ori|lw|sw|lui|sll;
	assign MemWr = sw;
	assign RegWr = addu|subu|ori|lw|lui|sll|jal;
	assign ExtOp = {lui,lw|sw};
	assign ALUOp = {ori|sll,sll|subu};
	assign nPC_sel = {jal|jr,beq|jr};
	assign RegDst = {jal,addu|subu|sll};
	assign MemtoReg = {jal,lw};
endmodule

/*
341c0000
341d0000
34013456
00210821
8c010004
ac010004
3c027878
00411823
3c051234
34040005
00000000
ac85ffff
8c83ffff
10650003
00000000
10000011
00000000
34670404
10e3000e
00000000
3c087777
3508ffff
00080023
34001100
00e65021
34080000
34090001
340a0001
010a4021
1109fffe
0c000c22
00000000
014a5021
1000ffff
014a5021
03e00008
00000000

case(op)
6'b000000:
	case(fc)
		6'b100001: begin //addu
			RegDst = 2'b01;
			RegWr = 1'b1;
		end
		6'b001000: begin //jr
			RegDst = 2'b00;
			RegWr = 1'b0;
		end
	endcase
6'b001101: begin //ori
	RegDst = 2'b00;
	RegWr = 1'b1;
end
6'b000011: begin //jal
	RegDst = 2'b10;
	RegWr = 1'b0;
end
endcase
*/