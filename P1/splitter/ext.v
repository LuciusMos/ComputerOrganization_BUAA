`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:20:00 10/27/2018 
// Design Name: 
// Module Name:    ext 
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
module ext(
    input [15:0] imm,
    input [1:0] EOp,
    output reg [31:0] ext
    );
	
	always @(*) begin
		case(EOp) 
			2'b00: ext<={{16{imm[15]}},imm};
			2'b01: ext<={{16{1'b0}},imm};
			2'b10: ext<={imm,{16{1'b0}}};
			2'b11: begin
					ext<={{16{imm[15]}},imm}<<2;
					//ext<=ext<<2;
			end
		endcase
	end
			
endmodule
