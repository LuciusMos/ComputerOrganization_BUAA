`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:21:59 12/04/2018
// Design Name:   RF
// Module Name:   C:/Users/lenovo/Desktop/Computer Organization/ISE/P5/P5_v1.0/rf_tb.v
// Project Name:  P5_v1.0
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module rf_tb;

	// Inputs
	reg [31:0] IR_D;
	reg [4:0] R3;
	reg [31:0] RFIn;
	reg clk;
	reg reset;
	reg RegWr;
	reg [31:0] PC4;

	// Outputs
	wire [31:0] RFOut1;
	wire [31:0] RFOut2;

	// Instantiate the Unit Under Test (UUT)
	RF uut (
		.IR_D(IR_D), 
		.R3(R3), 
		.RFIn(RFIn), 
		.RFOut1(RFOut1), 
		.RFOut2(RFOut2), 
		.clk(clk), 
		.reset(reset), 
		.RegWr(RegWr), 
		.PC4(PC4)
	);

	initial begin
		// Initialize Inputs
		IR_D = 32'h3c08ffff;
	end
      
endmodule

