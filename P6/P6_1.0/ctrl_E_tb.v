`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:01:44 12/04/2018
// Design Name:   CTRL
// Module Name:   C:/Users/lenovo/Desktop/Computer Organization/ISE/P5/P5_v1.0/ctrl_E_tb.v
// Project Name:  P5_v1.0
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CTRL
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ctrl_E_tb;

	// Inputs
	reg [31:0] instr;

	// Outputs
	wire ALUSrc1;
	wire ALUSrc2;
	wire MemWr;
	wire RegWr;
	wire [1:0] ExtOp;
	wire [2:0] ALUOp;
	wire [1:0] NPCsel;
	wire [1:0] RegDst;
	wire [1:0] MemtoReg;
	wire [2:0] BrType;
	wire lb;
	wire sb;
	wire br;
	wire cali;
	wire calr;
	wire load;
	wire store;

	// Instantiate the Unit Under Test (UUT)
	CTRL uut (
		.instr(instr), 
		.ALUSrc1(ALUSrc1), 
		.ALUSrc2(ALUSrc2), 
		.MemWr(MemWr), 
		.RegWr(RegWr), 
		.ExtOp(ExtOp), 
		.ALUOp(ALUOp), 
		.NPCsel(NPCsel), 
		.RegDst(RegDst), 
		.MemtoReg(MemtoReg), 
		.BrType(BrType), 
		.lb(lb), 
		.sb(sb), 
		.br(br), 
		.cali(cali), 
		.calr(calr), 
		.load(load), 
		.store(store)
	);

	initial begin
		instr = 32'h3c08ffff;
	end
      
endmodule

