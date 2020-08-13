`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:15:58 12/03/2018 
// Design Name: 
// Module Name:    E_pipereg 
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
module E_pipereg(
    input [31:0] IR_D,
    input [31:0] PC4_D,
	 input [31:0] PC8_D,
	 input [31:0] RFOut1,
	 input [31:0] RFOut2,
	 input [31:0] EXTOut,
	 input start_D,
	 input clk,
	 input reset,
	 input intexc,
    output reg [31:0] IR_E,
    output reg [31:0] PC4_E,
    output reg [31:0] PC8_E,
	 output reg [31:0] RS_E,
	 output reg [31:0] RT_E,
	 output reg [31:0] EXT_E,
	 input stall,
	 input BrTrue_D,
	 output reg BrTrue_E,
	 output reg start_E,
	 input BD_D,
	 output reg BD_E,
	 input [4:0] EXCnow,
	 input [4:0] EXCpre,
	 output reg [4:0] EXCOut
    );
	initial begin
		IR_E = 32'h00000000;
		PC4_E = 32'h00003004;
		PC8_E = 32'h00003008;
		RS_E = 32'h00000000;
		RT_E = 32'h00000000;
		EXT_E = 32'h00000000;
		BrTrue_E = 0;
		start_E = 0;
		EXCOut = 0;
		BD_E = 0;
	end
	always @(posedge clk) begin
		if(reset | stall | intexc) begin
			IR_E <= 32'h00000000;
			PC4_E <= 32'h00003004;
			PC8_E <= 32'h00003008;
			RS_E <= 32'h00000000;
			RT_E <= 32'h00000000;
			EXT_E <= 32'h00000000;
			BrTrue_E <= 0;
			start_E <= 0;
			EXCOut <= 0;
			BD_E <= 0;
		end
		else begin
			IR_E <= IR_D;
			PC4_E <= PC4_D;
			PC8_E <= PC8_D;
			RS_E <= RFOut1;
			RT_E <= RFOut2;
			EXT_E <= EXTOut;
			BrTrue_E <= BrTrue_D;
			start_E <= start_D;
			EXCOut <= (EXCnow!=0)? EXCnow:EXCpre;
			BD_E <= BD_D;
		end
	end

endmodule
