`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:23:14 10/31/2018 
// Design Name: 
// Module Name:    xmg 
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
module xmg(
    input [7:0] in,
    output [9:0] out
    );

	reg [9:0] a=0,b=0;
	integer bj=0;
	assign out=a;
	
	always @(in) begin
		if(in=="+") begin
			a<=a+b;
			bj=0;
		end
		else if(in=="*") bj=1;
		else if("0"<=in&&in<="9") begin
			if(bj==0) b<=in-"0";
			if(bj==1) b<=b*(in-"0");
		end
		else if(in=="=") a<=a+b;
	end
	
endmodule
