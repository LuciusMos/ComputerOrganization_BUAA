`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:23:07 12/03/2018 
// Design Name: 
// Module Name:    W_pipereg 
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
module W_pipereg(
    input [31:0] IR_M,
    input [31:0] DMOut,
	 input [31:0] PC4_M,
	 input [31:0] PC8_M,
	 input [31:0] AO_M,
    input clk,
    input reset,
    output reg [31:0] IR_W,
    output reg [31:0] PC4_W,
    output reg [31:0] PC8_W,
	 output reg [31:0] AO_W,
    output reg [31:0] DO_W,
	 input BrTrue_M,
	 output reg BrTrue_W
    );
	initial begin
		IR_W = 32'h00000000;
		PC4_W = 32'h00003004;
		PC8_W = 32'h00003008;
		AO_W = 32'h00000000;
		DO_W = 32'h00000000;
		BrTrue_W = 0;
	end
	always @(posedge clk) begin
		if(reset==1) begin
			IR_W <= 32'h00000000;
			PC4_W <= 32'h00003004;
			PC8_W <= 32'h00003008;
			AO_W <= 32'h00000000;
			DO_W <= 32'h00000000;
			BrTrue_W = 0;
		end
		else begin
			IR_W <= IR_M;
			PC4_W <= PC4_M;
			PC8_W <= PC8_M;
			AO_W <= AO_M;
			DO_W <= DMOut;
			BrTrue_W = BrTrue_M;
		end
	end

endmodule
