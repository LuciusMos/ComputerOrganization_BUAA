`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:13:33 12/03/2018 
// Design Name: 
// Module Name:    CMP 
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
module CMP(
    input [31:0] CMPIn1,
    input [31:0] CMPIn2,
    input [2:0] BrType,
    output BrTrue
    );
	assign BrTrue = (BrType==3'b000 & CMPIn1==CMPIn2) |    //beq
	                (BrType==3'b001 & $signed($signed(CMPIn1)>=$signed(0))) | //bgez
						 (BrType==3'b010 & $signed($signed(CMPIn1)> $signed(0))) | //bgtz
						 (BrType==3'b011 & $signed($signed(CMPIn1)<=$signed(0))) | //blez
						 (BrType==3'b100 & $signed($signed(CMPIn1)< $signed(0))) | //bltz
						 (BrType==3'b101 & CMPIn1!=CMPIn2) ;

endmodule
