`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:36:21 12/24/2018 
// Design Name: 
// Module Name:    mips 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mips(
    input clk,
    input reset
    );
	wire [31:0] PrAddr,PrWD,PrRD;
	wire [2:0] StoreType;
	wire [5:0] DevInt;
	wire MemWr;
	CPU cpu(
		.clk(clk),
		.reset(reset),
		.PrAddr(PrAddr),
		.StoreType(StoreType),
		.PrWD(PrWD),
		.MemWr(MemWr),
		.PrRD(PrRD),
		.DevInt(DevInt)
	);
	wire [31:0] Dev0RD,Dev1RD,DevWD;
	wire [1:0] TC0Reg,TC1Reg;
	wire Dev0Wr,Dev1Wr,IRQ0,IRQ1;
	BRIDGE bridge(
		.PrAddr(PrAddr),
		.PrWD(PrWD),
		.MemWr(MemWr),
		.StoreType(StoreType),
		.Dev0RD(Dev0RD),
		.Dev1RD(Dev1RD),
		.IRQ0(IRQ0),
		.IRQ1(IRQ1),
		.DevWD(DevWD),
		.TC0Reg(TC0Reg),
		.TC1Reg(TC1Reg),
		.Dev0Wr(Dev0Wr),
		.Dev1Wr(Dev1Wr),
		.PrRD(PrRD),
		.DevInt(DevInt)
	);
	TC tc0(
		.clk(clk),
		.reset(reset),
		.TCReg(TC0Reg),
		.DevWr(Dev0Wr),
		.DevWD(DevWD),
		.DevRD(Dev0RD),
		.IRQ(IRQ0)
	);
	TC tc1(
		.clk(clk),
		.reset(reset),
		.TCReg(TC1Reg),
		.DevWr(Dev1Wr),
		.DevWD(DevWD),
		.DevRD(Dev1RD),
		.IRQ(IRQ1)
	);
endmodule
