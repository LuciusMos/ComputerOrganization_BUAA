`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:08:11 11/23/2018
// Design Name:   IFU
// Module Name:   C:/Users/lenovo/Desktop/Computer Organization/ISE/P4/P4_Verilog/IFU_tb2.v
// Project Name:  P4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: IFU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module IFU_tb2;

	// Inputs
	reg [1:0] nPC_sel;
	reg br_cmp;
	reg [15:0] imm16;
	reg [25:0] imm26;
	reg [31:0] jrPC;
	reg clk;
	reg reset;

	// Outputs
	wire [31:0] instr;
	wire [31:0] PC;

	// Instantiate the Unit Under Test (UUT)
	IFU uut (
		.nPC_sel(nPC_sel), 
		.br_cmp(br_cmp), 
		.imm16(imm16), 
		.imm26(imm26), 
		.jrPC(jrPC), 
		.clk(clk), 
		.reset(reset), 
		.instr(instr), 
		.PC(PC)
	);

	initial begin
		// Initialize Inputs
		nPC_sel = 0;
		br_cmp = 0;
		imm16 = 0;
		imm26 = 0;
		jrPC = 0;
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#30
		imm16=16'h0004;
		nPC_sel=2'b01;
		#10
		br_cmp=1;
		#10
		imm26=26'b0000000000110000000000;
		nPC_sel=2'b10;
	
		#10
		jrPC=32'h0000301c;
		nPC_sel=2'b11;
		#10
		reset=1;
		#10;

	end
   
	always #5 clk=~clk;
endmodule

