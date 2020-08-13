`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:44:01 12/24/2018 
// Design Name: 
// Module Name:    EXC 
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
module EXC(
    input clk,
    input reset,
    input EN,
    input [4:0] EXCnow,
	 input [4:0] EXCpre,
    output reg [4:0] EXCOut
    );
	initial begin
		EXCOut = 0;
	end
	always @(posedge clk) begin
		if(reset==1) EXCOut <= 0;
		else if(EN==1) 
			EXCOut <= (EXCnow!=0)? EXCnow:EXCpre;
	end
endmodule
