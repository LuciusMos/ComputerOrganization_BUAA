`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:50:09 11/19/2018 
// Design Name: 
// Module Name:    EXT 
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
module EXT(
    input [15:0] imm16,
	 input [1:0] ExtOp,
    output [31:0] ExtOut
    );
	assign ExtOut=(ExtOp==2'b00)? {{16{1'b0}},imm16}:          //zero_extend
	              (ExtOp==2'b01)? {{16{imm16[15]}},imm16}:     //sign_extend
					  (ExtOp==2'b10)? {imm16,{16{1'b0}}}:          //lui
					                  32'hxxxxxxxx;

endmodule
