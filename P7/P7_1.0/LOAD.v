`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:21:36 12/12/2018 
// Design Name: 
// Module Name:    LOAD 
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

module LOAD(
    input [31:0] DMOut,
    input [2:0] LoadType,
	 input [31:0] AO_W,
    output [31:0] LDOut
    );
	wire [1:0] addr = AO_W[1:0];
	wire [31:0] lb,lh,lw,lbu,lhu;
	assign lb = (addr==2'b00)? {{24{DMOut[7]}},DMOut[7:0]}:
	            (addr==2'b01)? {{24{DMOut[15]}},DMOut[15:8]}:
					(addr==2'b10)? {{24{DMOut[23]}},DMOut[23:16]}:
					(addr==2'b11)? {{24{DMOut[31]}},DMOut[31:24]}:
					               32'h19990413;
	assign lh = (addr==2'b00)? {{16{DMOut[15]}},DMOut[15:0]}:
					(addr==2'b10)? {{16{DMOut[31]}},DMOut[31:16]}:
					               32'h19990413;
	assign lw = DMOut;
	assign lbu= (addr==2'b00)? {{24'h0},DMOut[7:0]}:
	            (addr==2'b01)? {{24'h0},DMOut[15:8]}:
					(addr==2'b10)? {{24'h0},DMOut[23:16]}:
					(addr==2'b11)? {{24'h0},DMOut[31:24]}:
					               32'h19990413;
	assign lhu= (addr==2'b00)? {{16'h0},DMOut[15:0]}:
					(addr==2'b10)? {{16'h0},DMOut[31:16]}:
					               32'h19990413;				
	assign LDOut = (LoadType==3'b000)? lb:
	               (LoadType==3'b001)? lh:
						(LoadType==3'b011)? lw:
						(LoadType==3'b100)? lbu:
						(LoadType==3'b101)? lhu:
						                    32'h19990413;
endmodule
