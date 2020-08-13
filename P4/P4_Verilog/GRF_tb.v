`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:06:32 11/23/2018
// Design Name:   GRF
// Module Name:   C:/Users/lenovo/Desktop/Computer Organization/ISE/P4/P4_Verilog/GRF_tb.v
// Project Name:  P4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: GRF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module GRF_tb;

	// Inputs
	reg [4:0] rt;
	reg [4:0] rd;
	reg [4:0] rs;
	reg [1:0] RegDst;
	reg [31:0] dataWr;
	reg RegWr;
	reg clk;
	reg reset;
	reg [31:0] PC;

	// Outputs
	wire [31:0] dataA;
	wire [31:0] dataB;

	// Instantiate the Unit Under Test (UUT)
	GRF uut (
		.rt(rt), 
		.rd(rd), 
		.rs(rs), 
		.RegDst(RegDst), 
		.dataWr(dataWr), 
		.RegWr(RegWr), 
		.clk(clk), 
		.reset(reset), 
		.PC(PC), 
		.dataA(dataA), 
		.dataB(dataB)
	);

	initial begin
		// Initialize Inputs
		rs = 3;
		rt = 2;
		rd = 3;
		RegDst = 0;
		dataWr = 0;
		RegWr = 0;
		clk = 0;
		reset = 0;
		PC = 0;

		dataWr=1;
		#10
		dataWr=2;
		RegWr=1;
		RegDst=0;
		#10
		dataWr=3;
		RegDst=1;
		#10
		dataWr=4;
		rs=31;
		RegDst=2;
		#10
		reset=1;
		
	end
   always #5 clk=~clk;  
endmodule

