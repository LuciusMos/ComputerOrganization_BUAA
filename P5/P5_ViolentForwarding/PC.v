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
    output reg [31:0] PC,
	 input stall
    );
	initial begin
		PC = 32'h00003000;
	end
	always @(posedge clk) begin
		if(reset==1) PC <= 32'h00003000;
		else if(stall==0) PC <= NPC;//ÔÝÍ£,¶³½áPC
	end
endmodule
