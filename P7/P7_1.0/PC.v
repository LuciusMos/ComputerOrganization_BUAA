`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:05:58 11/30/2018 
// Design Name: 
// Module Name:    PC 
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
module PC(
    input reset,
	 input clk,
    input [31:0] NPC,
	 input intexc,
    output reg [31:0] PC,
	 input stall,
	 output [4:0] EXC_F
    );
	assign EXC_F = ((PC[1:0] != 2'b00) | (PC < 32'h0000_3000) 
	                 | (PC > 32'h0000_4ffc))? 4:0;
	initial begin
		PC = 32'h00003000;
	end
	always @(posedge clk) begin
		if(reset==1) PC <= 32'h00003000;
		else if(intexc==1) PC <= 32'h0000_4180;
		else if(stall==0) PC <= NPC;//ÔÝÍ£,¶³½áPC
	end
endmodule
