`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:55:08 11/19/2018 
// Design Name: 
// Module Name:    IFU 
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
module IFU(
    input [1:0] nPC_sel,
    input br_e,
    input [15:0] imm16,
	 input [25:0] imm26,
	 input [31:0] jrPC,
    input clk,
    input reset,
    output [31:0] instr,
    output reg [31:0] PC
    );
	reg [31:0] IM1024 [1023:0];  //IM1024
	integer i;
	initial begin
		PC = 32'h00003000;  //PC
		for(i=0;i<1024;i=i+1) 
			IM1024[i] = 32'h00000000;
		$readmemh("code.txt",IM1024);
	end
	wire [31:0] brPC,jPC,PC4;
	assign PC4 = PC+4;
	assign brPC = (br_e==0)? PC4:                       //busA!=busB
		         PC4+{{14{imm16[15]}},imm16,{2{1'b0}}};  //busA==busB
	assign jPC = {PC4[31:28],imm26,{2{1'b0}}};
	always @(posedge clk) begin
		if(reset==1) PC <= 32'h00003000;
		else begin
			PC <= (nPC_sel==2'b00)? PC4:     //+4
			      (nPC_sel==2'b01)? brPC:    //beq
					(nPC_sel==2'b10)? jPC:     //j/jal
					                  jrPC;    //jr
		end
	end
	assign instr = IM1024[PC[11:2]];

endmodule
