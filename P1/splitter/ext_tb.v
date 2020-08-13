`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:39:43 10/27/2018
// Design Name:   ext
// Module Name:   C:/Users/lenovo/Desktop/Computer Organization/ISE/P1/splitter/ext_tb.v
// Project Name:  splitter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ext
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ext_tb;

	// Inputs
	reg [15:0] imm;
	reg [1:0] EOp;

	// Outputs
	wire [31:0] ext;

	// Instantiate the Unit Under Test (UUT)
	ext uut (
		.imm(imm), 
		.EOp(EOp), 
		.ext(ext)
	);

	initial begin
		// Initialize Inputs
		imm = 0;
		EOp = 0;

		// Wait 100 ns for global reset to finish
		#100;
      imm=16'hF3D4;
		#10
		EOp=1;
		#10
		EOp=2;
		#10
		EOp=3;
		// Add stimulus here

	end
      
endmodule

