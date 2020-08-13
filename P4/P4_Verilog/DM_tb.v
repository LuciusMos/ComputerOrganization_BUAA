`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:54:05 11/23/2018
// Design Name:   DM
// Module Name:   C:/Users/lenovo/Desktop/Computer Organization/ISE/P4/P4_Verilog/DM_tb.v
// Project Name:  P4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DM_tb;

	// Inputs
	reg [31:0] MemAddr;
	reg [31:0] MemData;
	reg MemWr;
	reg clk;
	reg reset;
	reg PC;
	reg [1:0] MemtoReg;

	// Outputs
	wire [31:0] RegData;

	// Instantiate the Unit Under Test (UUT)
	DM uut (
		.MemAddr(MemAddr), 
		.MemData(MemData), 
		.MemWr(MemWr), 
		.clk(clk), 
		.reset(reset), 
		.PC(PC), 
		.MemtoReg(MemtoReg), 
		.RegData(RegData)
	);

	initial begin
		// Initialize Inputs
		MemAddr = 0;
		MemData = 0;
		MemWr = 0;
		clk = 0;
		reset = 0;
		PC = 0;
		MemtoReg = 0;

		MemData = 1;
		#10
		MemWr=1;
		MemData=2;
		#10
		MemAddr=4;
		MemData=3;
		MemtoReg=1;
		#10
		reset=1;

	end
   always #5 clk=~clk; 
endmodule

