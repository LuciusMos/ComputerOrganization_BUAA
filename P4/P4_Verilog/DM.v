`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:35:59 11/20/2018 
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
    input [31:0] MemAddr,
    input [31:0] MemData,
    input MemWr,
    input clk,
    input reset,
	 input [31:0] PC,
    input [1:0] MemtoReg,
    output [31:0] RegData
    );
	reg [31:0] DM1024 [1023:0];
	integer i;
	initial 
		for(i=0;i<1024;i=i+1) DM1024[i] = 32'h00000000;
	wire [31:0] MemOut;
	assign MemOut = DM1024[MemAddr[11:2]];
	
	always @(posedge clk) begin
		if(reset==1) 
			for(i=0;i<1024;i=i+1) DM1024[i] <= 32'h00000000;
		else begin
			if(MemWr==1) begin
				DM1024[MemAddr[11:2]] <= MemData;
				$display("@%h: *%h <= %h",PC,MemAddr,MemData);
			end
		end
	end
	
	assign RegData = (MemtoReg==2'b00)? MemAddr:
	                 (MemtoReg==2'b01)? MemOut:
						  (MemtoReg==2'b10)? PC+32'h00000004:
						                     32'hxxxxxxxx;
endmodule
