`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:28:21 12/03/2018 
// Design Name: 
// Module Name:    M_pipereg 
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
module M_pipereg(
    input [31:0] IR_E,
    input [31:0] ALUOut,
	 input [31:0] XALUOut,
	 input AO_Msel,
	 input [31:0] PC4_E,
	 input [31:0] PC8_E,
	 input [31:0] RS_E,
	 input [31:0] RT_E,
    input clk,
    input reset,
    output reg [31:0] IR_M,
    output reg [31:0] PC4_M,
    output reg [31:0] PC8_M,
    output reg [31:0] AO_M,
	 output reg [31:0] RS_M,
    output reg [31:0] RT_M,
	 input BrTrue_E,
	 output reg BrTrue_M
    );
	initial begin
		IR_M = 32'h00000000;
		PC4_M = 32'h00003004;
		PC8_M = 32'h00003008;
		AO_M = 32'h00000000;
		RS_M = 32'h00000000;
		RT_M = 32'h00000000;
		BrTrue_M = 0;
	end
	always @(posedge clk) begin
		if(reset==1) begin
			IR_M <= 32'h00000000;
			PC4_M <= 32'h00003004;
			PC8_M <= 32'h00003008;
			AO_M <= 32'h00000000;
			RS_M <= 32'h00000000;
			RT_M <= 32'h00000000;
			BrTrue_M = 0;
		end
		else begin
			IR_M <= IR_E;
			PC4_M <= PC4_E;
			PC8_M <= PC8_E;
			AO_M <= (AO_Msel==0)? ALUOut:XALUOut;
			RS_M <= RS_E;
			RT_M <= RT_E;
			BrTrue_M = BrTrue_E;
		end
	end

endmodule
