`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:44:02 12/03/2018 
// Design Name: 
// Module Name:    DM 
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
module DM(
    input [31:0] DMAddr,
    input [31:0] DMIn,
    input MemWr,
    input clk,
    input reset,
    input [31:0] PC4,
    output [31:0] DMOut
    );
	reg [31:0] DM1024 [1023:0];
	integer i;
	initial
		for(i=0;i<1024;i=i+1)
			DM1024[i] <= 32'h00000000;
	assign DMOut = DM1024[DMAddr[11:2]];
	wire [31:0] PC;
	assign PC = PC4-4;
	
	always @(posedge clk) begin
		if(reset==1) 
			for(i=0;i<1024;i=i+1)
				DM1024[i] <= 32'h00000000;
		else if(MemWr==1) begin
			DM1024[DMAddr[11:2]] <= DMIn;
			$display("%d@%h: *%h <= %h",$time,PC,DMAddr,DMIn);
			//$display("*%h <= %h",DMAddr,DMIn);
		end
	end

endmodule
