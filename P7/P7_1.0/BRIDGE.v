`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:38:56 12/22/2018 
// Design Name: 
// Module Name:    BRIDGE 
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
//timer0 32'h00007F00-32'h00007F0B
//timer1 32'h00007F10-32'h00007F1B
module BRIDGE(
    input [31:0] PrAddr,
    input [31:0] PrWD,
	 input MemWr,
	 input [2:0] StoreType,
	 
    input [31:0] Dev0RD,
    input [31:0] Dev1RD,
	 input IRQ0,
	 input IRQ1,
    
	 output [31:0] DevWD,
	 output [1:0] TC0Reg,
	 output [1:0] TC1Reg,
	 output Dev0Wr,
	 output Dev1Wr,
	 
    output [31:0] PrRD,
    output [5:0] DevInt
    );
	wire [1:0] addr;
	assign addr = PrAddr[1:0];
	wire [31:0] sb,sh,sw;
	assign sb = (addr==2'b00)? {PrRD[31:8],PrWD[7:0]}:
	            (addr==2'b01)? {PrRD[31:16],PrWD[7:0],PrRD[7:0]}:
					(addr==2'b10)? {PrRD[31:24],PrWD[7:0],PrRD[15:0]}:
					(addr==2'b11)? {PrWD[7:0],PrRD[23:0]}:
					               32'h19990413;
	assign sh = (addr==2'b00)? {PrRD[31:16],PrWD[15:0]}:
					(addr==2'b10)? {PrWD[15:0],PrRD[15:0]}:
					               32'h19990413;
	assign sw = PrWD;
	assign DevWD = (StoreType==3'b000)? sb:
	               (StoreType==3'b001)? sh:
					   (StoreType==3'b011)? sw:
					                        32'h19990413;
	wire [31:0] TC0Addr=PrAddr-32'h0000_7f00,TC1Addr=PrAddr-32'h0000_7f10;
	assign TC0Reg = TC0Addr[3:2];
	assign TC1Reg = TC1Addr[3:2];
	wire HitDev0,HitDev1,HitDev;
	assign HitDev0 = (PrAddr >= 32'h0000_7F00) && (PrAddr <= 32'h0000_7F0B);//(CPUAddr[31:4]==28'h00007F0);
	assign HitDev1 = (PrAddr >= 32'h0000_7F10) && (PrAddr <= 32'h0000_7F1B);//(CPUAddr[31:4]==28'h00007F1);
	assign HitDev = HitDev0 | HitDev1;
	assign Dev0Wr = MemWr & HitDev0;
	assign Dev1Wr = MemWr & HitDev1;
	
	assign PrRD = (HitDev0)? Dev0RD:
	              (HitDev1)? Dev1RD:
						32'h19990413;
	assign DevInt = {4'b0,IRQ1,IRQ0};
	
endmodule
