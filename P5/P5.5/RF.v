`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:15:48 12/03/2018 
// Design Name: 
// Module Name:    RF 
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
module RF(
    input [31:0] IR_D,
    input [4:0] R3,
    input [31:0] RFIn,
    output [31:0] RFOut1,
    output [31:0] RFOut2,
    input clk,
    input reset,
	 input RegWr,
	 input [31:0] PC4
    );
	reg [31:0] GRF32 [31:0];
	integer i;
	initial begin
		for(i=0;i<32;i=i+1) GRF32[i] = 32'h00000000;
	end
	wire [4:0] R1,R2;
	assign R1 = IR_D[25:21];//rs
	assign R2 = IR_D[20:16];//rt
	assign RFOut1 = (R3==R1 & R3!=0 & RegWr==1)? RFIn:
	                                             GRF32[R1];
	assign RFOut2 = (R3==R2 & R3!=0 & RegWr==1)? RFIn:
	                                             GRF32[R2];														  
	wire [31:0] PC;
	assign PC = PC4-4;

	always @(posedge clk) begin
		if(reset==1) 
			for(i=0;i<32;i=i+1) GRF32[i] <= 32'h00000000;
		else begin
			if(RegWr==1 && R3!=0) begin
				GRF32[R3] <= RFIn;
				$display("%d@%h: $%d <= %h",$time,PC,R3,RFIn);
			end
			//if(RegWr==1 && !(R3==0&&RFIn==0))
				//$display("@%h:$%d <= %h",PC[15:0],R3,RFIn);
		end
	end


endmodule
