`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:33:49 11/19/2018
// Design Name:   EXT
// Module Name:   C:/Users/lenovo/Desktop/Computer Organization/ISE/P pre/P4/EXT_tb.v
// Project Name:  P4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: EXT
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module EXT_tb;

	// Inputs
	reg [15:0] imm16;
	reg [1:0] ExtOp;

	// Outputs
	wire [31:0] EXTout;

	// Instantiate the Unit Under Test (UUT)
	EXT uut (
		.imm16(imm16), 
		.ExtOp(ExtOp), 
		.EXTout(EXTout)
	);

	initial begin
		// Initialize Inputs
		imm16 = 16'b1000100010001000;
		ExtOp = 2'b00;
		
		#10
		ExtOp = 2'b01;
		
		#10
		ExtOp = 2'b10;
		
		#10
		ExtOp = 2'b11;

        
		// Add stimulus here

	end
      
endmodule

