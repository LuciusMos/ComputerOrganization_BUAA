`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:34:34 10/31/2018
// Design Name:   xmg
// Module Name:   C:/Users/lenovo/Desktop/Computer Organization/ISE/P1/splitter/xmg_tb.v
// Project Name:  splitter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: xmg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module xmg_tb;

	// Inputs
	reg [7:0] in;

	// Outputs
	wire [9:0] out;

	// Instantiate the Unit Under Test (UUT)
	xmg uut (
		.in(in), 
		.out(out)
	);

	initial begin
		in="1";
		#10
		in="*";
		#10
		in="2";
		#10
		in="*";
		#10
		in="3";
		#10
		in="+";
		#10
		in="4";
		#10
		in="=";
	end
      
endmodule

