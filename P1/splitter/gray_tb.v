`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:34:44 10/27/2018
// Design Name:   gray
// Module Name:   C:/Users/lenovo/Desktop/Computer Organization/ISE/P1/splitter/gray_tb.v
// Project Name:  splitter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: gray
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module gray_tb;

	// Inputs
	reg Clk;
	reg Reset;
	reg En;

	// Outputs
	wire [2:0] Output;
	wire Overflow;

	// Instantiate the Unit Under Test (UUT)
	gray uut (
		.Clk(Clk), 
		.Reset(Reset), 
		.En(En), 
		.Output(Output), 
		.Overflow(Overflow)
	);

	initial begin
		// Initialize Inputs
		Clk = 0;
		Reset = 0;
		En = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		En=1;
		#45
		Reset=1;
		#10
		Reset=0;
		
	end
   
	always #5 Clk=~Clk;
endmodule

