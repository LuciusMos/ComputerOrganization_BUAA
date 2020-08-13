`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:00:54 12/12/2018
// Design Name:   ALU
// Module Name:   C:/Users/lenovo/Desktop/study/Computer Organization/ISE/P5/P5.5/alu_tb.v
// Project Name:  P5.5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_tb;

	// Inputs
	reg [31:0] ALUIn1;
	reg [31:0] ALUIn2;
	reg [4:0] ALUOp;

	// Outputs
	wire [31:0] ALUOut;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.ALUIn1(ALUIn1), 
		.ALUIn2(ALUIn2), 
		.ALUOp(ALUOp), 
		.ALUOut(ALUOut)
	);

	initial begin
		// Initialize Inputs
		ALUOp = 5'b00101;
		ALUIn2 = 32'hf1234567;
		ALUIn1 = 5;
	end
      
endmodule

