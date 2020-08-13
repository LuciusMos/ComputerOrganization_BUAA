`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:45:35 12/17/2018 
// Design Name: 
// Module Name:    XALU 
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
module XALU(
    input [31:0] XALUIn1,
    input [31:0] XALUIn2,
    input start,
    input clk,
    input reset,
    input [3:0] XALUOp,
	 input HLWr,
    output [31:0] XALUOut,
    output busy
    );
	reg [31:0] HI,LO,temp1,temp2;
	integer count;
	
	initial begin
		HI = 0;
		LO = 0;
		temp1 = 0;
		temp2 = 0;
		count = 0;
	end
	assign XALUOut = (XALUOp==3'b100)? HI:
	                 (XALUOp==3'b101)? LO:
						                    32'h19990413;
	assign busy = (count!=0);
	always @(posedge clk) begin
		if(reset==1) begin
			HI <= 0;
			LO <= 0;
			temp1 <= 0;
			temp2 <= 0;
			count <= 0;
		end
		else if(HLWr==1) begin
			case(XALUOp)
				4'b0000: begin
					{temp1,temp2} <= ($signed(XALUIn1))*($signed(XALUIn2));
					count <= 5;
				end
				4'b0001: begin
					{temp1,temp2} <= XALUIn1*XALUIn2;
					count <= 5;
				end
				4'b0010: begin
					temp1 <= ($signed(XALUIn1))%($signed(XALUIn2));
					temp2 <= ($signed(XALUIn1))/($signed(XALUIn2));
					count <= 10;
				end
				4'b0011: begin
					temp1 <= XALUIn1%XALUIn2;
					temp2 <= XALUIn1/XALUIn2;
					count <= 10;
				end
				4'b0110: begin
					HI <= XALUIn1;
				end
				4'b0111: begin
					LO <= XALUIn1;
				end
			endcase
		end
		if(busy) begin  //count!=0
			count <= count-1;
		end
	end
	always @(negedge busy) begin
		HI <= temp1;
		LO <= temp2;
	end
endmodule
