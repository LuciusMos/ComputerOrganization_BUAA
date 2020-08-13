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
    output [31:0] RegData,
	 input lb,
	 input sb
    );
	reg [31:0] DM1024 [1023:0];
	integer i;
	initial 
		for(i=0;i<1024;i=i+1) DM1024[i] = 32'h00000000;
	wire [31:0] MemOut,DMOut,LBOut,LBOut00,LBOut01,LBOut10,LBOut11;
	//31:24  23:16  15:8  7:0
	//load
	assign DMOut = DM1024[MemAddr[11:2]];
	assign LBOut00 = {{24{DMOut[7]}},DMOut[7:0]};
	assign LBOut01 = {{24{DMOut[15]}},DMOut[15:8]};
	assign LBOut10 = {{24{DMOut[23]}},DMOut[23:16]};
	assign LBOut11 = {{24{DMOut[31]}},DMOut[31:24]};
	assign LBOut = (MemAddr[1:0]==2'b00)? LBOut00:
	               (MemAddr[1:0]==2'b01)? LBOut01:
						(MemAddr[1:0]==2'b10)? LBOut10:
                                         LBOut11;
	assign MemOut = (lb==0)? DMOut:   //MemOut为最终读出的数据
	                         LBOut;
	                         
	//save
	wire [31:0] MemIn,SBIn00,SBIn01,SBIn10,SBIn11,SBIn; 
	           //MemIn为最终存入的数据
	assign SBIn00 = {DMOut[31:8],MemData[7:0]};
	assign SBIn01 = {DMOut[31:16],MemData[7:0],DMOut[7:0]};
	assign SBIn10 = {DMOut[31:24],MemData[7:0],DMOut[15:0]};
	assign SBIn11 = {MemData[7:0],DMOut[23:0]};
	assign SBIn = (MemAddr[1:0]==2'b00)? SBIn00:
	              (MemAddr[1:0]==2'b01)? SBIn01:
					  (MemAddr[1:0]==2'b10)? SBIn10:
                                        SBIn11;
	assign MemIn = (sb==0)? MemData:
	                        SBIn;
	always @(posedge clk) begin
		if(reset==1) 
			for(i=0;i<1024;i=i+1) DM1024[i] <= 32'h00000000;
		else begin
			if(MemWr==1) begin
				DM1024[MemAddr[11:2]] <= MemIn;
				if(sb==0) $display("@%h: *%h <= %h",PC,MemAddr,MemIn);
				else if(sb==1) $display("@%h: *%h <= %h",PC,MemAddr,MemData[7:0]);
			end
		end
	end
	
	assign RegData = (MemtoReg==2'b00)? MemAddr:
	                 (MemtoReg==2'b01)? MemOut:
						  (MemtoReg==2'b10)? PC+32'h00000004:
						                     32'hxxxxxxxx;
endmodule