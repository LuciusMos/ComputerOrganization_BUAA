`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:09:43 12/25/2018
// Design Name:   mips
// Module Name:   C:/Users/lenovo/Desktop/study/Computer Organization/ISE/P7/P7_1.0/mips_tb.v
// Project Name:  P7_1.0
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mips
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mips_tb;

	// Inputs
	reg clk;
	reg reset;

	// Instantiate the Unit Under Test (UUT)
	mips uut (
		.clk(clk), 
		.reset(reset)
	);

	initial begin
		clk = 0;
		reset = 0;
	end
   always #1 clk=~clk;
endmodule

