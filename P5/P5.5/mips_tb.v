`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:36:13 12/04/2018
// Design Name:   mips
// Module Name:   C:/Users/lenovo/Desktop/Computer Organization/ISE/P5/P5_v1.0/mips_tb.v
// Project Name:  P5_v1.0
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
		// Initialize Inputs
		clk = 0;
		reset = 0;
	end
   always #0.5 clk=~clk;
endmodule

