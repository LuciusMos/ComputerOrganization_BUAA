`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:23:11 12/23/2018 
// Design Name: 
// Module Name:    TC0 
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
`define IDLE 2'b00
`define LOAD 2'b01
`define CNT 2'b10
`define INT 2'b11
module TC(
    input clk,
    input reset,
    input [1:0] TCReg,
    input DevWr,
    input [31:0] DevWD,
    output [31:0] DevRD,
    output IRQ
    );
	reg IRQIn;
	reg [31:0] ctrl,preset,count;
	wire [1:0] MODE;
	wire IM,EN;
	integer state;
	assign IM = ctrl[3];
	assign MODE = ctrl[2:1];
	assign EN = ctrl[0];
	assign IRQ = IRQIn & IM;
	assign DevRD = (TCReg==0)? ctrl:
	               (TCReg==1)? preset:
						(TCReg==3)? count:
						            32'h19990413;
	initial begin
		ctrl = 0;
		preset = 0;
		count = 0;
		state = `IDLE;
		IRQIn = 0;
	end
	always @(posedge clk) begin
		if(reset==1) begin
			ctrl <= 0;
			preset <= 0;
			count <= 0;
			state <= `IDLE;
			IRQIn <= 0;
		end
		else if(DevWr==1) begin
			//$display("%d@%h: *%h <= %h", $time, PC_M, {PrAddr[31:2],2'b0},DevWD);
			if(TCReg==0) ctrl <= {28'h0,DevWD[3:0]};
			else if(TCReg==1) preset <= DevWD;
		end
		else begin
			case(state)
				`IDLE: begin
					if(EN==1) begin
						state <= `LOAD;
						IRQIn <= 0;
						count <= preset;
					end
				end
				`LOAD: begin
					state <= `CNT;
				end
				`CNT: begin
					if(EN==0) state <= `IDLE;
					else if(EN==1&&count<=1) begin
						IRQIn <= 1;
						state <= `INT;
					end
					else count <= count-1;
				end
				`INT: begin
					if(MODE==2'b01) IRQIn <= 0;
					else if(MODE==2'b00) ctrl[0] <= 0;
					state <= `IDLE;
				end
			endcase
		end
	end
endmodule
