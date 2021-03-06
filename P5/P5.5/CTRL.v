`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:02:34 12/03/2018 
// Design Name: 
// Module Name:    CTRL 
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

//---------R-----------
`define R_OP 6'b000000

`define SLL_FC  6'b000000
`define SRL_FC  6'b000010
`define SRA_FC  6'b000011
`define SLLV_FC 6'b000100
`define SRLV_FC 6'b000110
`define SRAV_FC 6'b000111

`define JR_FC   6'b001000
`define JALR_FC 6'b001001

`define MULT_FC  6'b011000
`define MULTU_FC 6'b011001
`define DIV_FC   6'b011010
`define DIVU_FC  6'b011011

`define MFHI_FC 6'b010000
`define MTHI_FC 6'b010001
`define MFLO_FC 6'b010010
`define MTLO_FC 6'b010011

`define ADD_FC  6'b100000
`define ADDU_FC 6'b100001
`define SUB_FC  6'b100010
`define SUBU_FC 6'b100011
`define AND_FC  6'b100100
`define OR_FC   6'b100101
`define XOR_FC  6'b100110
`define NOR_FC  6'b100111
`define SLT_FC  6'b101010
`define SLTU_FC 6'b101011

//---------J-----------
`define J   6'b000010
`define JAL 6'b000011

//---------I-----------
`define BGEZ      6'b000001
`define BGEZ_RT   5'b00001
`define BLTZ      6'b000001
`define BLTZ_RT   5'b00000
`define BGEZAL    6'b000001
`define BGEZAL_RT 5'b10001

`define BEQ  6'b000100
`define BNE  6'b000101
`define BLEZ 6'b000110
`define BGTZ 6'b000111

`define ADDI  6'b001000
`define ADDIU 6'b001001
`define SLTI  6'b001010
`define SLTIU 6'b001011
`define ANDI  6'b001100
`define ORI   6'b001101
`define XORI  6'b001110
`define LUI   6'b001111

`define LB  6'b100000
`define LH  6'b100001
`define LW  6'b100011
`define LBU 6'b100100
`define LHU 6'b100101

`define SB  6'b101000
`define SH  6'b101001
`define SW  6'b101011

module CTRL(
    input [31:0] instr,
    output ALUSrc1,
	 output ALUSrc2,
    output MemWr,
    output RegWr,
    output [1:0] ExtOp,
    output [4:0] ALUOp,
    output [1:0] NPCsel,
    output [1:0] RegDst,
    output [1:0] MemtoReg,
	 output [2:0] BrType,
	 output [2:0] LoadType,
	 output [2:0] StoreType,
	 output cali,
	 output calr,
	 output br,
	 output load,
	 output store,
	 output jal,
	 output jr,
	 output jalr,
	 input BrTrue
    );
	wire [5:0] op,fc;
	wire [4:0] rt;
	assign op = instr[31:26];
	assign fc = instr[5:0];
	assign rt = instr[20:16];
	
	wire sll,srl,sra,sllv,srlv,srav,jr_ins,jalr_ins;
	wire mult,multu,div,divu,mfhi,mflo,mthi,mtlo;
	wire add,addu,sub,subu,and_ins,or_ins,xor_ins,nor_ins,slt,sltu;
	wire j_ins,jal_ins;
	wire bgez,bltz,bgezal,beq,bne,blez,bgtz;
	wire addi,addiu,slti,sltiu,andi,ori,xori,lui;
	wire lb,lh,lw,lbu,lhu,sb,sh,sw;
	
	assign sll  = (op==`R_OP)&(fc==`SLL_FC);
	assign srl  = (op==`R_OP)&(fc==`SRL_FC);
	assign sra  = (op==`R_OP)&(fc==`SRA_FC);
	assign sllv = (op==`R_OP)&(fc==`SLLV_FC);
	assign srlv = (op==`R_OP)&(fc==`SRLV_FC);
	assign srav = (op==`R_OP)&(fc==`SRAV_FC);
	assign jr_ins   = (op==`R_OP)&(fc==`JR_FC);
	assign jalr_ins = (op==`R_OP)&(fc==`JALR_FC);
	assign mult  = (op==`R_OP)&(fc==`MULT_FC);
	assign multu = (op==`R_OP)&(fc==`MULTU_FC);
	assign div   = (op==`R_OP)&(fc==`DIV_FC);
	assign divu  = (op==`R_OP)&(fc==`DIVU_FC);
	assign mfhi  = (op==`R_OP)&(fc==`MFHI_FC);
	assign mflo  = (op==`R_OP)&(fc==`MFLO_FC);
	assign mthi  = (op==`R_OP)&(fc==`MTHI_FC);
	assign mtlo  = (op==`R_OP)&(fc==`MTLO_FC);
	assign add  = (op==`R_OP)&(fc==`ADD_FC);
	assign addu = (op==`R_OP)&(fc==`ADDU_FC);
	assign sub  = (op==`R_OP)&(fc==`SUB_FC);
	assign subu = (op==`R_OP)&(fc==`SUBU_FC);
	assign and_ins  = (op==`R_OP)&(fc==`AND_FC);
	assign or_ins   = (op==`R_OP)&(fc==`OR_FC);
	assign xor_ins  = (op==`R_OP)&(fc==`XOR_FC);
	assign nor_ins  = (op==`R_OP)&(fc==`NOR_FC);
	assign slt  = (op==`R_OP)&(fc==`SLT_FC);
	assign sltu = (op==`R_OP)&(fc==`SLTU_FC);
	
	assign j_ins = (op==`J);
	assign jal_ins = (op==`JAL);
	
	assign bgez   = (op==`BGEZ)&(rt==`BGEZ_RT);
	assign bltz   = (op==`BLTZ)&(rt==`BLTZ_RT);
	assign bgezal = (op==`BGEZAL)&(rt==`BGEZAL_RT);
	assign beq    = (op==`BEQ);
	assign bne    = (op==`BNE);
	assign blez   = (op==`BLEZ);
	assign bgtz   = (op==`BGTZ);
	assign addi   = (op==`ADDI);
	assign addiu  = (op==`ADDIU);
	assign slti   = (op==`SLTI);
	assign sltiu  = (op==`SLTIU);
	assign andi   = (op==`ANDI);
	assign ori    = (op==`ORI);
	assign xori   = (op==`XORI);
	assign lui    = (op==`LUI);
	assign lb  = (op==`LB);
	assign lh  = (op==`LH);
	assign lw  = (op==`LW);
	assign lbu = (op==`LBU);
	assign lhu = (op==`LHU);
	assign sb  = (op==`SB);
	assign sh  = (op==`SH);
	assign sw  = (op==`SW);

	assign cali = addi|addiu|slti|sltiu|andi|ori|xori|lui;
	assign calr = sll|srl|sra|sllv|srlv|srav|add|addu|sub|subu|
	              and_ins|or_ins|xor_ins|nor_ins|slt|sltu;
	assign jr = jr_ins;
	assign jalr = jalr_ins;				  
	assign jal = jal_ins|(bgezal&BrTrue);				  
	assign br = bgez|bltz|beq|bne|blez|bgtz|bgezal;
	assign load = lb|lh|lw|lbu|lhu;
	assign store = sb|sh|sw;
	
	
	assign RegWr = sll|srl|sra|sllv|srlv|srav|add|addu|sub|subu|
	               and_ins|or_ins|xor_ins|nor_ins|slt|sltu|       //calr
					   addi|addiu|slti|sltiu|andi|ori|xori|lui|       //cali
						lb|lh|lw|lbu|lhu| //load
						jalr_ins|jal_ins|
						(bgezal&BrTrue);
	assign MemWr = sb|sh|sw; //store
	assign ALUSrc1 = sll|srl|sra;
	assign ALUSrc2 = addi|addiu|slti|sltiu|andi|ori|xori|lui| //cali
	                 lb|lh|lw|lbu|lhu| //load
						  sb|sh|sw; //store
	assign ExtOp = {lui,
	               lb|lh|lw|lbu|lhu|sb|sh|sw|addi|addiu}; //load|store
	assign RegDst = {jal_ins|bgezal,
	                sll|srl|sra|sllv|srlv|srav|add|addu|sub|subu|
	                and_ins|or_ins|xor_ins|nor_ins|slt|sltu|jalr_ins};//calr
	assign MemtoReg = {jal_ins|jalr_ins|bgezal,
	                  lb|lh|lw|lbu|lhu}; //load
	assign NPCsel = {jal_ins|jr_ins|j_ins|jalr_ins,
	                bgez|bltz|beq|bne|blez|bgtz|bgezal|jr_ins|jalr_ins|bgezal};//br
	assign BrType = {bltz|bne,
	                blez|bgtz,bgez|bne|blez|bgezal};
	assign ALUOp = {0,
	               and_ins|xor_ins|nor_ins|slt|sltu|slti|sltiu|andi|xori,
	               srl|sra|srlv|srav|slt|sltu|slti|sltiu,
	               sll|sllv|or_ins|xor_ins|nor_ins|ori|xori,
	               sll|sra|sllv|srav|sub|subu|and_ins|nor_ins|sltu|sltiu|andi};
	assign LoadType = {lbu|lhu,lw,lh|lw|lhu};
	assign StoreType = {0,sw,sh|sw};
	
endmodule
