`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:29:18 10/27/2018 
// Design Name: 
// Module Name:    string 
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
module string2(
    input clk,
    input clr,
    input [7:0] in,
    output out
    );
	 
parameter state0=4'b0001,
          state1=4'b0010,
			 //state2=4'b0100,
			 state3=4'b1000;
		
	reg [3:0] state=state0;
	assign out=(state==state0)&&(48<=in&&in<=57);
	//Êý×Ö£º(48<=in&&in<=57)
	//+/*£º (in==42||in==43)
	
	always @(posedge clk or posedge clr) begin
		if(clr==1) state=state0;
		else begin
			case(state)
				state0: state<=(48<=in&&in<=57)? state1:state3;
				state1: state<=(in==42||in==43)? state0:state3;
				//state2: state<=(48<=in&&in<=57)? state1:state3;
				state3: state<=state3;
				default state<=state3;
			endcase
		end
	end

endmodule
