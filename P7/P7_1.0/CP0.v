`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:38:32 12/24/2018 
// Design Name: 
// Module Name:    CP0 
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
module CP0(
    input [4:0] A1,
    input [31:0] CP0In,
    input [31:0] PC4_M,
	 input [31:0] PC4_E,
	 input [31:0] PC4_D,
    input [4:0] EXCIn,
    input [5:0] DevInt,
    input CP0Wr,
    input EXLClr,
    input clk,
    input reset,
    output intexc,
    output reg [31:0] EPC,
    output [31:0] CP0Out,
	 input BD_M
    );
	reg [15:10] IM,IP;//IM：设备中断屏蔽  IP: 设备当前状态 1中断0没中断
	reg [6:2] EXC;
	reg EXL,IE,BD;//EXL：是否在中断中  IE：全局中断使能
	wire [31:0] SR,Cause,PRID;
	assign SR = {16'b0,IM[15:10],8'b0,EXL,IE};
	assign Cause = {BD,15'b0,IP[15:10],3'b0,EXC[6:2],2'b0};
	assign PRID = 32'hAABBCCDD;
	assign CP0Out = (A1==12)? SR:
	                (A1==13)? Cause:
						 (A1==14)? EPC:
						 (A1==15)? PRID:
						           32'h19990413;
	wire exception;
	assign exception = (EXCIn>0) & !EXL;
	assign interrupt = |(DevInt & IM) & IE & !EXL;
	assign intexc = interrupt|exception;
	
	initial begin
		IM = 0; 
		EXL = 0;
		IE = 0;
		BD = 0;
		IP = 0;
		EXC = 0;
		EPC = 0;
	end
	wire [31:0] PC = PC4_M-4;
	always @(posedge clk) begin
		if(reset==1) begin
			IM <= 0; 
			EXL <= 0;
			IE <= 0;
			BD <= 0;
			IP <= 0;
			EXC <= 0;
			EPC <= 0;
		end
		else begin
			//SR写入+更新
			if(CP0Wr==1 && A1==12) begin 
				{IM,EXL,IE} <= {CP0In[15:10],CP0In[1],CP0In[0]};
				//$display("%d@%h: $CP0_12 <= %h",$time,PC,{16'b0,CP0In[15:10],8'b0,CP0In[1],CP0In[0]});
			end
			if(intexc==1) begin
				EXL <= 1'b1;
			end
			if(EXLClr==1) begin
				EXL <= 1'b0;
			end
			//Cause更新
			BD <= (intexc==1)? BD_M:BD;//BD <= BD_M;
			IP <= DevInt;
			EXC <= (intexc==1 && DevInt==0)? EXCIn:EXC;//EXC <= EXCIn; 
			//EPC写入+更新
			EPC <= (intexc & BD_M==0 & PC4_M!=32'h3004)? {PC4_M[31:2],2'b00}-4:
			       (intexc & BD_M==1 & PC4_M!=32'h3004)? {PC4_M[31:2],2'b00}-8:
					 (intexc & PC4_E!=32'h3004)? {PC4_E[31:2],2'b00}-4:
					 (intexc & PC4_D!=32'h3004)? {PC4_D[31:2],2'b00}-4:
					                                       EPC;
			if(CP0Wr==1 && A1==14) begin 
				EPC <= CP0In;
				//$display("%d@%h: $CP0_14 <= %h",$time,PC,CP0In);
			end
		end
	end
endmodule
