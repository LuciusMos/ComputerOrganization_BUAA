`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:06:30 10/26/2018
// Design Name:   alu
// Module Name:   C:/Users/lenovo/Desktop/Computer Organization/ISE/P1/splitter/alu_tb.v
// Project Name:  splitter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu
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
	reg [31:0] A;
	reg [31:0] B;
	reg [2:0] ALUOp;

	// Outputs
	wire [31:0] C;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.A(A), 
		.B(B), 
		.ALUOp(ALUOp), 
		.C(C)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		ALUOp = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		A=32'b101;
		B=32'b10;
		#10
		ALUOp=3'b001;
		#10
		ALUOp=3'b010;
		#5
		A=32'b1101;
		#5
		ALUOp=3'b011;
		#10
		ALUOp=3'b100;
		#5
		A=32'b11111111111100000000000011110011;
		B=32'b110;
		#5
		ALUOp=3'b101;
	end
      
endmodule

