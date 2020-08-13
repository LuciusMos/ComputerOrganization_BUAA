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
	reg [31:0] IM4096[4095:0];
	integer i;
	initial begin
		for(i=0;i<4096;i=i+1) 
			IM4096[i] = 32'h00000000;
		$readmemh("code.txt",IM4096);
	end
	wire [31:0] rPC;
	assign rPC = PC-32'h3000;
	assign instr = IM4096[rPC[13:2]]; 
	 
	
	//reg [31:0] IM4096[32'h00006fff:32'h00003000];
	//integer i;
	//initial begin
	//	for(i=32'h00003000;i<32'h00006fff;i=i+1) 
	//		IM4096[i] = 32'h00000000;
	//	$readmemh("code.txt",IM4096,32'h00003000,32'h00006fff);
	//end
	//assign instr = IM4096[PC];
endmodule
