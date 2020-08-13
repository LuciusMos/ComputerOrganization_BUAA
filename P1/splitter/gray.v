`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:27:20 10/27/2018 
// Design Name: 
// Module Name:    gray 
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
module gray(
    input Clk,
    input Reset,
    input En,
    output [2:0] Output,
    output reg Overflow
    );
	
	integer cnt=0;
	assign Output=(cnt>>1)^cnt;
	initial Overflow=0;
	
	always @(posedge Clk) begin
		if(Reset==1) begin
			cnt=0;
			Overflow<=0;
		end
		else if(En==1) begin
			if(cnt==7) begin
				cnt=0;
				Overflow<=1'b1;
			end
			else cnt=cnt+1;
		end
	end

endmodule
