`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:01:43 12/03/2018 
// Design Name: 
// Module Name:    D_pipereg 
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
module D_pipereg(
    input [31:0] instr,
    input [31:0] PC,
	 input clk,
	 input reset,
	 input intexc,
    output reg [31:0] IR_D,
    output reg [31:0] PC4_D,
    output reg [31:0] PC8_D,
	 input stall,
	 input BD,
	 output reg BD_D,
	 input [4:0] EXCnow,
	 input [4:0] EXCpre,
	 output reg [4:0] EXCOut,
	 input DClr
    );
	initial begin
		IR_D = 32'h00000000;
		PC4_D = 32'h00003004;
		PC8_D = 32'h00003008;
		EXCOut = 32'h00000000;
		BD_D = 0;
	end
	always @(posedge clk) begin
		if(reset|intexc|(DClr&!stall)) begin
			IR_D <= 32'h00000000;
			PC4_D <= 32'h00003004;
			PC8_D <= 32'h00003008;
			EXCOut <= 32'h00000000;
			BD_D <= 0;
		end
		else if(stall==0) begin//ÔÝÍ££¬¶³½áD_pipereg
			IR_D <= instr;
			PC4_D <= PC+4;
			PC8_D <= PC+8;
			EXCOut <= (EXCnow!=0)? EXCnow:EXCpre;
			BD_D <= BD;
		end
	end

endmodule
