`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:47:51 12/03/2018 
// Design Name: 
// Module Name:    mips 
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
module mips(
    input clk,
    input reset
    );
	wire stall;
	//-------------------F------------------------
	wire [31:0] NPC,PC,PC4,brPC,jPC,jrPC;
	wire [31:0] instr;

	PC pc(
		.reset(reset),
		.clk(clk),
		.NPC(NPC),
		.PC(PC),
		.stall(stall)
	);
	ADD4 add4(
		.PC(PC),
		.PC4(PC4)
	);
	IM im(
		.PC(PC),
      .reset(reset),
		.clk(clk),
		.instr(instr)
	);
	//-------------------D_pipereg---------------------
	wire [31:0] IR_D,PC4_D,PC8_D;
	D_pipereg d_pipereg(
		.instr(instr),
		.PC(PC),
		.clk(clk),
		.reset(reset),
		.IR_D(IR_D),
		.PC4_D(PC4_D),
		.PC8_D(PC8_D),
		.stall(stall)
	);
	//-------------------D------------------------
	wire RegWr_W,BrTrue_D;
	wire [1:0] ExtOp_D,NPCsel_D;
	wire [2:0] BrType_D;
	wire [31:0] PC4_W;
	wire calr_d,cali_d,br_d,load_d,store_d,jal_d,jr_d,jalr_d;
	CTRL ctrl_D(
		.instr(IR_D),
		.ExtOp(ExtOp_D),
		.NPCsel(NPCsel_D),
		.BrType(BrType_D),
		.calr(calr_d),
		.cali(cali_d),
		.br(br_d),
		.load(load_d),
		.store(store_d),
		.jal(jal_d),
		.jr(jr_d),
		.jalr(jalr_d),
		.BrTrue(BrTrue_D)
	);
	wire [31:0] RFIn,RFOut1,RFOut2,EXTOut;
	wire [4:0] R3;
	RF rf(
		.IR_D(IR_D),
		.R3(R3),
		.RFIn(RFIn),
		.clk(clk),
		.reset(reset),
		.RegWr(RegWr_W),
		.PC4(PC4_W),
		.RFOut1(RFOut1),
		.RFOut2(RFOut2)
	);
	EXT ext(
		.IR_D(IR_D),
		.ExtOp(ExtOp_D),
		.EXTOut(EXTOut)
	);
	CMP cmp(
		.CMPIn1(MFRSDOut),//转发!!!!!!!!!!!!!!!!!!!
		.CMPIn2(MFRTDOut),//转发!!!!!!!!!!!!!!!!!!!
		.BrType(BrType_D),
		.BrTrue(BrTrue_D)
	);
	NPC npc(
		.PC4(PC4_D),
		.IR_D(IR_D),
		.BrTrue(BrTrue_D),
		.brPC(brPC),
		.jPC(jPC)
	);
		//MUX_PC
	assign jrPC = MFRSDOut;//转发!!!!!!!!!!!!!!!!!!!
	assign NPC = (NPCsel_D==2'b00)? PC4:     //+4
					 (NPCsel_D==2'b01)? brPC:   //branch
					 (NPCsel_D==2'b10)? jPC:     //j/jal
					 (NPCsel_D==2'b11)? jrPC:    //jr
											  32'h19990413;
	//-------------------E_pipereg---------------------	
	wire [31:0] IR_E,PC4_E,PC8_E,RS_E,RT_E,EXT_E;
	wire BrTrue_E;
	E_pipereg e_pipereg(
		.IR_D(IR_D),
		.PC4_D(PC4_D),
		.PC8_D(PC8_D),
		.RFOut1(RFOut1),
		.RFOut2(RFOut2),
		.EXTOut(EXTOut),
		.clk(clk),
		.reset(reset),
		.IR_E(IR_E),
		.PC4_E(PC4_E),
		.PC8_E(PC8_E),
		.RS_E(RS_E),
		.RT_E(RT_E),
		.EXT_E(EXT_E),
		.stall(stall),
		.BrTrue_D(BrTrue_D),
		.BrTrue_E(BrTrue_E)
	);
	//-------------------E------------------------
	wire ALUSrc1_E,ALUSrc2_E;
	wire [4:0] ALUOp_E;
	wire calr_e,cali_e,br_e,load_e,store_e,jal_e,jr_e,jalr_e;
	CTRL ctrl_E(
		.instr(IR_E),
		.ALUSrc1(ALUSrc1_E),
		.ALUSrc2(ALUSrc2_E),
		.ALUOp(ALUOp_E),
		.calr(calr_e),
		.cali(cali_e),
		.br(br_e),
		.load(load_e),
		.store(store_e),
		.jal(jal_e),
		.jr(jr_e),
		.jalr(jalr_e),
		.BrTrue(BrTrue_E)
	);
	wire [31:0] ALUIn1,ALUIn2,ALUOut;
		//MUX_ALU_A  MUX_ALU_B
	assign ALUIn1 = (ALUSrc1_E==0)? MFRSEOut://转发!!!!!!!!!!!!!!!!!!!
	                (ALUSrc1_E==1)? {{27{1'b0}},IR_E[10:6]}://shamt
						                 32'h19990413;
	assign ALUIn2 = (ALUSrc2_E==0)? MFRTEOut://转发!!!!!!!!!!!!!!!!!!!
	                (ALUSrc2_E==1)? EXT_E:
						                 32'h19990413;
	ALU alu(
		.ALUIn1(ALUIn1),
		.ALUIn2(ALUIn2),
		.ALUOp(ALUOp_E),
		.ALUOut(ALUOut)
	);	
	//-------------------M_pipereg---------------------
	wire [31:0] IR_M,PC4_M,PC8_M,AO_M,RT_M,RS_M;
	wire BrTrue_M;
	M_pipereg m_pipereg(
		.IR_E(IR_E),
		.ALUOut(ALUOut),
		.PC4_E(PC4_E),
		.PC8_E(PC8_E),
		.RS_E(MFRSEOut),//转发!!!!!!!!!!!!!!!!!!!
		.RT_E(MFRTEOut),//转发!!!!!!!!!!!!!!!!!!!
		.clk(clk),
		.reset(reset),
		.IR_M(IR_M),
		.PC4_M(PC4_M),
		.PC8_M(PC8_M),
		.AO_M(AO_M),
		.RS_M(RS_M),
		.RT_M(RT_M),
		.BrTrue_E(BrTrue_E),
		.BrTrue_M(BrTrue_M)
	);
	//-------------------M------------------------
	wire MemWr_M;
	wire [1:0] RegDst_M,MemtoReg_M;
	wire [2:0] StoreType_M;
	wire calr_m,cali_m,br_m,load_m,store_m,jal_m,jr_m,jalr_m;
	CTRL ctrl_M(
		.instr(IR_M),
		.MemWr(MemWr_M),
		.RegDst(RegDst_M),
		.MemtoReg(MemtoReg_M),
		.StoreType(StoreType_M),
		.calr(calr_m),
		.cali(cali_m),
		.br(br_m),
		.load(load_m),
		.store(store_m),
		.jal(jal_m),
		.jr(jr_m),
		.jalr(jalr_m),
		.BrTrue(BrTrue_M)
	);
	wire [31:0] DMOut;
	DM dm(
		.DMAddr(AO_M),
		.DMIn(MFRTMOut),//转发!!!!!!!!!!!!!!!!!!!
		.MemWr(MemWr_M),
		.clk(clk),
		.reset(reset),
		.PC4(PC4_M),
		.DMOut(DMOut),
		.StoreType(StoreType_M)
	);
	//-------------------W_pipereg---------------------
	wire [31:0] IR_W,PC8_W,AO_W,DO_W;
	wire BrTrue_W;
	W_pipereg w_pipereg(
		.IR_M(IR_M),
		.DMOut(DMOut),
		.PC4_M(PC4_M),
		.PC8_M(PC8_M),
		.AO_M(AO_M),
		.clk(clk),
		.reset(reset),
		.IR_W(IR_W),
		.PC4_W(PC4_W),
		.PC8_W(PC8_W),
		.AO_W(AO_W),
		.DO_W(DO_W),
		.BrTrue_M(BrTrue_M),
		.BrTrue_W(BrTrue_W)
	);
	//-------------------W------------------------
	wire [1:0] RegDst_W,MemtoReg_W;
	wire [2:0] LoadType_W;
	wire calr_w,cali_w,br_w,load_w,store_w,jal_w,jr_w,jalr_w;
	CTRL ctrl_W(
		.instr(IR_W),
		.RegDst(RegDst_W),
		.MemtoReg(MemtoReg_W),
		.RegWr(RegWr_W),
		.LoadType(LoadType_W),
		.calr(calr_w),
		.cali(cali_w),
		.br(br_w),
		.load(load_w),
		.store(store_w),
		.jal(jal_w),
		.jr(jr_w),
		.jalr(jalr_w),
		.BrTrue(BrTrue_W)
	);
	wire [31:0] LDOut;
	LOAD load(
		.DMOut(DO_W),
		.LoadType(LoadType_W),
		.AO_W(AO_W),
		.LDOut(LDOut)
	);
		//MUX_RF_R3  MUX_RF_WD
	assign R3 = (RegDst_W==2'b00)? IR_W[20:16]://rt
	            (RegDst_W==2'b01)? IR_W[15:11]://rd
					(RegDst_W==2'b10)? 31:
					                   5'bzzzzz;
	assign RFIn = (MemtoReg_W==2'b00)? AO_W:
	              (MemtoReg_W==2'b01)? LDOut:
					  (MemtoReg_W==2'b10)? PC8_W:
					                       32'h19990413;
	//-------------------Stall---------------------
	`define rs 25:21
	`define rt 20:16
	`define rd 15:11
	wire stall_br_calr,stall_br_cali,stall_br_load2,stall_br_load1;
	assign stall_br_calr = br_d & calr_e & ( (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rd]) |
	                                         (IR_D[`rt]!=0&IR_D[`rt]==IR_E[`rd]) );
	assign stall_br_cali = br_d & cali_e & ( (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rt]) |
	                                         (IR_D[`rt]!=0&IR_D[`rt]==IR_E[`rt]) );
	assign stall_br_load2 = br_d & load_e & ( (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rt]) |
	                                          (IR_D[`rt]!=0&IR_D[`rt]==IR_E[`rt]) );
	assign stall_br_load1 = br_d & load_m & ( (IR_D[`rs]!=0&IR_D[`rs]==IR_M[`rt]) |
	                                          (IR_D[`rt]!=0&IR_D[`rt]==IR_M[`rt]) );
	wire stall_calr_load;
	assign stall_calr_load = calr_d & load_e & ( (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rt]) |
	                                             (IR_D[`rt]!=0&IR_D[`rt]==IR_E[`rt]) );
	wire stall_cali_load;
	assign stall_cali_load = cali_d & load_e & (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rt]);
	wire stall_load_load;
	assign stall_load_load = load_d & load_e & (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rt]);
	wire stall_store_load;
	assign stall_store_load = store_d & load_e & (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rt]);
	wire stall_jr_calr,stall_jr_cali,stall_jr_load2,stall_jr_load1;
	assign stall_jr_calr = jr_d & calr_e & (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rd]);
	assign stall_jr_cali = jr_d & cali_e & (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rt]);
	assign stall_jr_load2 = jr_d & load_e & (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rt]);
	assign stall_jr_load1 = jr_d & load_m & (IR_D[`rs]!=0&IR_D[`rs]==IR_M[`rt]);
	wire stall_jalr_calr,stall_jalr_cali,stall_jalr_load2,stall_jalr_load1;
	assign stall_jalr_calr = jalr_d & calr_e & (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rd]);
	assign stall_jalr_cali = jalr_d & cali_e & (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rt]);
	assign stall_jalr_load2 = jalr_d & load_e & (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rt]);
	assign stall_jalr_load1 = jalr_d & load_m & (IR_D[`rs]!=0&IR_D[`rs]==IR_M[`rt]);
	assign stall = stall_br_calr | stall_br_cali | stall_br_load2 | stall_br_load1 |
	               stall_calr_load |
						stall_cali_load |
						stall_load_load |
						stall_store_load |
						stall_jr_calr | stall_jr_cali | stall_jr_load2 | stall_jr_load1 |
						stall_jalr_calr | stall_jalr_cali | stall_jalr_load2 | stall_jalr_load1;
	
	//-------------------Forwarding---------------------
	wire [10:0] MFRSDsel,MFRTDsel,MFRSEsel,MFRTEsel,MFRTMsel;
	assign MFRSDsel = calr_m & (IR_D[`rs]!=0&IR_D[`rs]==IR_M[`rd]) ? 1:
	                  cali_m & (IR_D[`rs]!=0&IR_D[`rs]==IR_M[`rt]) ? 1:
							jal_m & (IR_D[`rs]!=0&IR_D[`rs]==31) ? 2:
							jalr_m & (IR_D[`rs]!=0&IR_D[`rs]==IR_M[`rd]) ? 2:
							calr_w & (IR_D[`rs]!=0&IR_D[`rs]==IR_W[`rd]) ? 3:
							cali_w & (IR_D[`rs]!=0&IR_D[`rs]==IR_W[`rt]) ? 3:
							load_w & (IR_D[`rs]!=0&IR_D[`rs]==IR_W[`rt]) ? 3:
							jal_w & (IR_D[`rs]!=0&IR_D[`rs]==31) ? 3:
							jalr_w & (IR_D[`rs]!=0&IR_D[`rs]==IR_W[`rd]) ? 3:
							                                                 0;
	assign MFRTDsel = calr_m & (IR_D[`rt]!=0&IR_D[`rt]==IR_M[`rd]) ? 1:
	                  cali_m & (IR_D[`rt]!=0&IR_D[`rt]==IR_M[`rt]) ? 1:
							jal_m & (IR_D[`rt]!=0&IR_D[`rt]==31) ? 2:
							jalr_m & (IR_D[`rt]!=0&IR_D[`rt]==IR_M[`rd]) ? 2:
							calr_w & (IR_D[`rt]!=0&IR_D[`rt]==IR_W[`rd]) ? 3:
							cali_w & (IR_D[`rt]!=0&IR_D[`rt]==IR_W[`rt]) ? 3:
							load_w & (IR_D[`rt]!=0&IR_D[`rt]==IR_W[`rt]) ? 3:
							jal_w & (IR_D[`rt]!=0&IR_D[`rt]==31) ? 3:
							jalr_w & (IR_D[`rt]!=0&IR_D[`rt]==IR_W[`rd]) ? 3:
							                                                 0;	
	assign MFRSEsel = calr_m & (IR_E[`rs]!=0&IR_E[`rs]==IR_M[`rd]) ? 1:
	                  cali_m & (IR_E[`rs]!=0&IR_E[`rs]==IR_M[`rt]) ? 1:
							jal_m & (IR_E[`rs]!=0&IR_E[`rs]==31) ? 2:
							jalr_m & (IR_E[`rs]!=0&IR_E[`rs]==IR_M[`rd]) ? 2:
							calr_w & (IR_E[`rs]!=0&IR_E[`rs]==IR_W[`rd]) ? 3:
							cali_w & (IR_E[`rs]!=0&IR_E[`rs]==IR_W[`rt]) ? 3:
							load_w & (IR_E[`rs]!=0&IR_E[`rs]==IR_W[`rt]) ? 3:
							jal_w & (IR_E[`rs]!=0&IR_E[`rs]==31) ? 3:
							jalr_w & (IR_E[`rs]!=0&IR_E[`rs]==IR_W[`rd]) ? 3:
							                                                 0;
	assign MFRTEsel = calr_m & (IR_E[`rt]!=0&IR_E[`rt]==IR_M[`rd]) ? 1:
	                  cali_m & (IR_E[`rt]!=0&IR_E[`rt]==IR_M[`rt]) ? 1:
							jal_m & (IR_E[`rt]!=0&IR_E[`rt]==31) ? 2:
							jalr_m & (IR_E[`rt]!=0&IR_E[`rt]==IR_M[`rd]) ? 2:
							calr_w & (IR_E[`rt]!=0&IR_E[`rt]==IR_W[`rd]) ? 3:
							cali_w & (IR_E[`rt]!=0&IR_E[`rt]==IR_W[`rt]) ? 3:
							load_w & (IR_E[`rt]!=0&IR_E[`rt]==IR_W[`rt]) ? 3:
							jal_w & (IR_E[`rt]!=0&IR_E[`rt]==31) ? 3:
							jalr_w & (IR_E[`rt]!=0&IR_E[`rt]==IR_W[`rd]) ? 3:
							                                                 0;
	assign MFRTMsel = calr_w & (IR_M[`rt]!=0&IR_M[`rt]==IR_W[`rd]) ? 1:
							cali_w & (IR_M[`rt]!=0&IR_M[`rt]==IR_W[`rt]) ? 1:
							load_w & (IR_M[`rt]!=0&IR_M[`rt]==IR_W[`rt]) ? 1:
							jal_w & (IR_M[`rt]!=0&IR_M[`rt]==31) ? 1:
							jalr_w & (IR_M[`rt]!=0&IR_M[`rt]==IR_W[`rd]) ? 1:
							                                                 0;
   wire [31:0] MFRSDOut,MFRTDOut,MFRSEOut,MFRTEOut,MFRTMOut;
	assign MFRSDOut = (MFRSDsel==0)? RFOut1:
                     (MFRSDsel==1)? AO_M:
							(MFRSDsel==2)? PC8_M:
							(MFRSDsel==3)? RFIn:
							               32'h19990413;
	assign MFRTDOut = (MFRTDsel==0)? RFOut2:
                     (MFRTDsel==1)? AO_M:
							(MFRTDsel==2)? PC8_M:
							(MFRTDsel==3)? RFIn:
                                    32'h19990413;							
	assign MFRSEOut = (MFRSEsel==0)? RS_E:
                     (MFRSEsel==1)? AO_M:
							(MFRSEsel==2)? PC8_M:
							(MFRSEsel==3)? RFIn:
							               32'h19990413;
   assign MFRTEOut = (MFRTEsel==0)? RT_E:
                     (MFRTEsel==1)? AO_M:
							(MFRTEsel==2)? PC8_M:
							(MFRTEsel==3)? RFIn:
							               32'h19990413;
   assign MFRTMOut = (MFRTMsel==0)? RT_M:
                     (MFRTMsel==1)? RFIn:
                                    32'h19990413;							

endmodule
