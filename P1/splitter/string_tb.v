`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:44:13 10/27/2018
// Design Name:   string
// Module Name:   C:/Users/lenovo/Desktop/Computer Organization/ISE/P1/splitter/string_tb.v
// Project Name:  splitter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: string
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module string_tb;

	// Inputs
	reg clk;
	reg clr;
	reg [7:0] in;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	string uut (
		.clk(clk), 
		.clr(clr), 
		.in(in), 
		.out(out)
	);

	initial begin
		clk = 0;
		clr = 0;
		in=48;
		#20;
		clr=1;
		#10
		clr=0;
		in=48;
		#10;
		in=42;
		#10
		in=49;
		#10
		in=43;
		#30//0*1++
		clr=1;
		#20
		clr=0;
		in=48;
		#10;
		in=42;
		#10
		in=49;
		#20;//0*11
	end
   always #5 clk=~clk; 
endmodule

