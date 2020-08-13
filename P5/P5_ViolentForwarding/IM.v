`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:27:52 11/30/2018 
// Design Name: 
// Module Name:    IM 
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
module IM(
    input [31:0] PC,
    input reset,
    input clk,
    output [31:0] instr
    );
	reg [31:0] IM1024[1023:0];
	integer i;
	initial begin
		for(i=0;i<1024;i=i+1) 
			IM1024[i] = 32'h00000000;
		$readmemh("code.txt",IM1024);
	end
	assign instr = IM1024[PC[11:2]];
endmodule
