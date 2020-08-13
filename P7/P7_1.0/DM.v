`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:44:02 12/03/2018 
// Design Name: 
// Module Name:    DM 
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
module DM(
    input [31:0] DMAddr,
    input [31:0] DMIn,
    input MemWr,
    input clk,
    input reset,
    input [31:0] PC4,
    output [31:0] DMOut,
	 input [2:0] StoreType,
	 output HitDM
    );
	reg [31:0] DM4096 [4095:0];
	integer i;
	initial
		for(i=0;i<4095;i=i+1)
			DM4096[i] <= 32'h00000000;
	assign DMOut = DM4096[DMAddr[13:2]];
	wire [31:0] PC;
	assign PC = PC4-4;
	
	wire [1:0] addr = DMAddr[1:0];
	wire [31:0] DMWD,sb,sh,sw;
	assign sb = (addr==2'b00)? {DMOut[31:8],DMIn[7:0]}:
	            (addr==2'b01)? {DMOut[31:16],DMIn[7:0],DMOut[7:0]}:
					(addr==2'b10)? {DMOut[31:24],DMIn[7:0],DMOut[15:0]}:
					(addr==2'b11)? {DMIn[7:0],DMOut[23:0]}:
					               32'h19990413;
	assign sh = (addr==2'b00)? {DMOut[31:16],DMIn[15:0]}:
					(addr==2'b10)? {DMIn[15:0],DMOut[15:0]}:
					               32'h19990413;
	assign sw = DMIn;
	assign DMWD = (StoreType==3'b000)? sb:
	              (StoreType==3'b001)? sh:
					  (StoreType==3'b011)? sw:
					                       32'h19990413;
	wire DMWr;
	assign HitDM =  (DMAddr>=32'h0000_0000 && DMAddr<32'h0000_3000);
	assign DMWr = MemWr & HitDM;
	always @(posedge clk) begin
		if(reset==1) 
			for(i=0;i<1024;i=i+1)
				DM4096[i] <= 32'h00000000;
		else if(DMWr==1) begin
			DM4096[DMAddr[13:2]] <= DMWD;
			$display("%d@%h: *%h <= %h",$time,PC,{DMAddr[31:2],2'b0},DMWD);
			//$display("@%h:*%h <= %h",PC[15:0],{DMAddr[31:2],2'b0},DMWD);
		end
	end

endmodule
