`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:31:02 11/20/2018 
// Design Name: 
// Module Name:    GRF 
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
module GRF(
    input [4:0] rt,
    input [4:0] rd,
    input [4:0] rs,
    input [1:0] RegDst,
    input [31:0] dataWr,
    input RegWr,
    input clk,
    input reset,
	 input [31:0] PC,
    output [31:0] dataA,
    output [31:0] dataB
    );
	reg [31:0] GRF32 [31:0];
	integer i;
	initial begin
		for(i=0;i<32;i=i+1) GRF32[i] = 32'h00000000;
	end
	wire [4:0] RegD, RegA, RegB;
	assign RegD = (RegDst==2'b00)? rt:
	              (RegDst==2'b01)? rd:
					  (RegDst==2'b10)? 5'b11111:
						                5'bxxxxx;
	assign RegA = rs;
	assign RegB = rt;
	
	always @(posedge clk) begin
		if(reset==1) 
			for(i=0;i<32;i=i+1) GRF32[i] <= 32'h00000000;
		else begin
			if(RegWr==1 && RegD!=0) begin
				GRF32[RegD] <= dataWr;
				$display("@%h: $%d <= %h", PC, RegD, dataWr);
			end
		end
	end

	assign dataA = GRF32[RegA];
	assign dataB = GRF32[RegB];
endmodule
