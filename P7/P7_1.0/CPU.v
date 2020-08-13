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
module CPU(
    input clk,
    input reset,
	 output [31:0] PrAddr,//
	 output [2:0] StoreType,
	 output [31:0] PrWD,
	 output MemWr,
	 input [31:0] PrRD,
	 input [5:0] DevInt
    );
	wire stall,intexc;
	wire [31:0] MFRSDOut,MFRTDOut,MFRSEOut,MFRTEOut,MFRTMOut;
	//-------------------F------------------------
	wire [31:0] NPC,PC,PC4,brPC,jPC,jrPC,NEPC;
	wire [31:0] instr;
	wire [4:0] EXC_F;
	PC pc(
		.reset(reset),
		.clk(clk),
		.NPC(NPC),
		.PC(PC),
		.stall(stall),
		.EXC_F(EXC_F),
		.intexc(intexc)
	);
	ADD4 add4(
		.PC(PC),
		.PC4(PC4)
	);
	IM im(
		.PC(PC),
		.instr(instr)
	);
	//-------------------D_pipereg---------------------
	wire [31:0] IR_D,PC4_D,PC8_D;
	wire BD,BD_D;
	wire [4:0] EXC_INT,EXC_Dpre;
	assign EXC_INT = 5'b0;//EXC_INT即EXC_Fpre
	wire DClr;
	D_pipereg d_pipereg(
		.instr(instr),
		.PC(PC),
		.clk(clk),
		.reset(reset),
		.IR_D(IR_D),
		.PC4_D(PC4_D),
		.PC8_D(PC8_D),
		.stall(stall),
		.BD(BD),
		.BD_D(BD_D),
		.intexc(intexc),
		.EXCnow(EXC_F),
		.EXCpre(EXC_INT),
		.EXCOut(EXC_Dpre),
		.DClr(DClr)
	);
	//-------------------D------------------------
	wire RegWr_W,BrTrue_D;
	wire [1:0] ExtOp_D;
	wire [2:0] BrType_D,NPCsel_D;
	wire [31:0] PC4_W;
	wire calr_d,cali_d,br_d,load_d,store_d,jal_d,jr_d,jalr_d,md_d,mf_d,mt_d,mfc0_d,mtc0_d,eret_d;
	wire start_D;
	wire [4:0] EXC_D;
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
		.BrTrue(BrTrue_D),
		.md(md_d),
		.mf(mf_d),
		.mt(mt_d),
		.mfc0(mfc0_d),
		.mtc0(mtc0_d),
		.eret(eret_d),
		.start(start_D),
		.EXC_D(EXC_D),
		.BD(BD),
		.DClr(DClr)
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
	assign NPC = (NPCsel_D==3'b000)? PC4:     //+4
					 (NPCsel_D==3'b001)? brPC:   //branch
					 (NPCsel_D==3'b010)? jPC:     //j/jal
					 (NPCsel_D==3'b011)? jrPC:    //jr
					 (NPCsel_D==3'b100)? NEPC:    //jr
											   32'h19990413;
	//-------------------E_pipereg---------------------	
	wire [31:0] IR_E,PC4_E,PC8_E,RS_E,RT_E,EXT_E;
	wire BrTrue_E;
	wire start_E;
	wire BD_E;
	wire [4:0] EXC_Epre;
	E_pipereg e_pipereg(
		.IR_D(IR_D),
		.PC4_D(PC4_D),
		.PC8_D(PC8_D),
		.RFOut1(RFOut1),
		.RFOut2(RFOut2),
		.EXTOut(EXTOut),
		.start_D(start_D),
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
		.BrTrue_E(BrTrue_E),
		.start_E(start_E),
		.BD_D(BD_D),
		.BD_E(BD_E),
		.intexc(intexc),
		.EXCnow(EXC_D),
		.EXCpre(EXC_Dpre),
		.EXCOut(EXC_Epre)
	);
	
	//-------------------E------------------------
	wire ALUSrc1_E,ALUSrc2_E,HLWr_E,AO_Msel_E;
	wire [3:0] XALUOp_E;
	wire [4:0] ALUOp_E;
	wire calr_e,cali_e,br_e,load_e,store_e,jal_e,jr_e,jalr_e,md_e,mf_e,mt_e,mfc0_e,mtc0_e,eret_e;
	wire [31:0] ALUIn1,ALUIn2,ALUOut;
	wire [4:0] EXC_E;
	CTRL ctrl_E(
		.instr(IR_E),
		.ALUSrc1(ALUSrc1_E),
		.ALUSrc2(ALUSrc2_E),
		.ALUOp(ALUOp_E),
		.XALUOp(XALUOp_E),
		.HLWr(HLWr_E),
		.AO_Msel(AO_Msel_E),
		.calr(calr_e),
		.cali(cali_e),
		.br(br_e),
		.load(load_e),
		.store(store_e),
		.jal(jal_e),
		.jr(jr_e),
		.jalr(jalr_e),
		.BrTrue(BrTrue_E),
		.md(md_e),
		.mf(mf_e),
		.mt(mt_e),
		.mfc0(mfc0_e),
		.mtc0(mtc0_e),
		.eret(eret_e),
		.ALUIn1(ALUIn1),
		.ALUIn2(ALUIn2),
		.EXC_E(EXC_E)
	);
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
	wire [31:0] XALUOut;
	wire busy;
	XALU xlau(
		.XALUIn1(MFRSEOut),
		.XALUIn2(MFRTEOut),
		.start(start_E),
		.clk(clk),
		.reset(reset),
		.XALUOp(XALUOp_E),
		.HLWr(HLWr_E),
		.XALUOut(XALUOut),
		.busy(busy),
		.intexc(intexc)
	);
	//-------------------M_pipereg---------------------
	wire [31:0] IR_M,PC4_M,PC8_M,AO_M,RT_M,RS_M;
	wire BrTrue_M;
	wire BD_M;
	wire [4:0] EXC_Mpre;
	M_pipereg m_pipereg(
		.IR_E(IR_E),
		.ALUOut(ALUOut),
		.XALUOut(XALUOut),
		.AO_Msel(AO_Msel_E),
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
		.BrTrue_M(BrTrue_M),
		.BD_E(BD_E),
		.BD_M(BD_M),
		.intexc(intexc),
		.EXCnow(EXC_E),
		.EXCpre(EXC_Epre),
		.EXCOut(EXC_Mpre)
	);
	
	//-------------------M------------------------
	wire MemWr_M;
	wire [1:0] RegDst_M,MemtoReg_M;
	wire [2:0] StoreType_M;
	wire calr_m,cali_m,br_m,load_m,store_m,jal_m,jr_m,jalr_m,md_m,mf_m,mt_m,mfc0_m,mtc0_m,eret_m;
	wire[4:0] EXC_M;
	wire CP0Wr;
	wire EXLClr;
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
		.BrTrue(BrTrue_M),
		.md(md_m),
		.mf(mf_m),
		.mt(mt_m),
		.mfc0(mfc0_m),
		.mtc0(mtc0_m),
		.eret(eret_m),
		.AO_M(AO_M),
		.EXC_M(EXC_M),
		.CP0Wr(CP0Wr),
		.intexc(intexc),
		.EXLClr(EXLClr)
	);
	wire [31:0] DMOut,MemOut;
	wire HitDM;
	DM dm(
		.DMAddr(AO_M),
		.DMIn(MFRTMOut),//转发!!!!!!!!!!!!!!!!!!!
		.MemWr(MemWr_M),
		.clk(clk),
		.reset(reset),
		.PC4(PC4_M),
		.DMOut(DMOut),
		.StoreType(StoreType_M),
		.HitDM(HitDM)
	);
	assign MemOut = (HitDM==1)? DMOut:PrRD;
	wire [31:0] CP0Out,EPC;
	wire [4:0] EXCIn;
	assign EXCIn = (EXC_M!=0)? EXC_M:EXC_Mpre;
	CP0 cp0(
		.A1(IR_M[15:11]),
		.CP0In(MFRTMOut),
		.PC4_M(PC4_M),
		.PC4_E(PC4_E),
		.PC4_D(PC4_D),
		.EXCIn(EXCIn),
		.DevInt(DevInt),//!!!!!!!!!!
		.CP0Wr(CP0Wr),//!!!!!!!!!
		.EXLClr(EXLClr),//!!!!
		.clk(clk),
		.reset(reset),
		.intexc(intexc),
		.EPC(EPC),
		.CP0Out(CP0Out),
		.BD_M(BD_M)
	);
	assign NEPC = (IR_M[15:11]==14 && CP0Wr==1)? RT_M:EPC;
	//-------------------W_pipereg---------------------
	wire [31:0] IR_W,PC8_W,AO_W,DO_W,CO_W;
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
		.BrTrue_W(BrTrue_W),
		.intexc(intexc),
		.CP0Out(CP0Out),
		.CO_W(CO_W)
	);
	//-------------------W------------------------
	wire [1:0] RegDst_W,MemtoReg_W;
	wire [2:0] LoadType_W;
	wire calr_w,cali_w,br_w,load_w,store_w,jal_w,jr_w,jalr_w,md_w,mf_w,mt_w,mfc0_w,mtc0_w,eret_w;
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
		.BrTrue(BrTrue_W),
		.md(md_w),
		.mf(mf_w),
		.mt(mt_w),
		.mfc0(mfc0_w),
		.mtc0(mtc0_w),
		.eret(eret_w)
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
					  (MemtoReg_W==2'b11)? CO_W:
					                       32'h19990413;
	assign PrAddr = AO_M;
	assign StoreType = StoreType_M;
	assign PrWD = MFRTMOut;
	assign MemWr = MemWr_M;

	//-------------------Stall---------------------
	`define rs 25:21
	`define rt 20:16
	`define rd 15:11
	wire stall_br_calr,stall_br_cali,stall_br_load2,stall_br_load1,stall_br_mf,stall_br_mfc02,stall_br_mfc01;
	assign stall_br_calr = br_d & calr_e & ( (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rd]) |
	                                         (IR_D[`rt]!=0&IR_D[`rt]==IR_E[`rd]) );
	assign stall_br_cali = br_d & cali_e & ( (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rt]) |
	                                         (IR_D[`rt]!=0&IR_D[`rt]==IR_E[`rt]) );
	assign stall_br_mf = br_d & mf_e & ( (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rd]) |
	                                     (IR_D[`rt]!=0&IR_D[`rt]==IR_E[`rd]) );
	assign stall_br_load2 = br_d & load_e & ( (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rt]) |
	                                          (IR_D[`rt]!=0&IR_D[`rt]==IR_E[`rt]) );
	assign stall_br_load1 = br_d & load_m & ( (IR_D[`rs]!=0&IR_D[`rs]==IR_M[`rt]) |
	                                          (IR_D[`rt]!=0&IR_D[`rt]==IR_M[`rt]) );
	assign stall_br_mfc02 = br_d & mfc0_e & ( (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rt]) |
	                                          (IR_D[`rt]!=0&IR_D[`rt]==IR_E[`rt]) );
	assign stall_br_mfc01 = br_d & mfc0_m & ( (IR_D[`rs]!=0&IR_D[`rs]==IR_M[`rt]) |
	                                          (IR_D[`rt]!=0&IR_D[`rt]==IR_M[`rt]) );
	
	wire stall_calr_load,stall_calr_mfc0;
	assign stall_calr_load = calr_d & load_e & ( (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rt]) |
	                                             (IR_D[`rt]!=0&IR_D[`rt]==IR_E[`rt]) );
	assign stall_calr_mfc0 = calr_d & mfc0_e & ( (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rt]) |
	                                             (IR_D[`rt]!=0&IR_D[`rt]==IR_E[`rt]) );
	
	wire stall_cali_load,stall_cali_mfc0;
	assign stall_cali_load = cali_d & load_e & (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rt]);
	assign stall_cali_mfc0 = cali_d & mfc0_e & (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rt]);
		
	wire stall_load_load,stall_load_mfc0;
	assign stall_load_load = load_d & load_e & (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rt]);
	assign stall_load_mfc0 = load_d & mfc0_e & (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rt]);

	wire stall_store_load,stall_store_mfc0;
	assign stall_store_load = store_d & load_e & (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rt]);
	assign stall_store_mfc0 = store_d & mfc0_e & (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rt]);
	
	wire stall_jr_calr,stall_jr_cali,stall_jr_load2,stall_jr_load1,stall_jr_mf,stall_jr_mfc02,stall_jr_mfc01;
	assign stall_jr_calr = jr_d & calr_e & (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rd]);
	assign stall_jr_cali = jr_d & cali_e & (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rt]);
	assign stall_jr_mf = jr_d & mf_e & (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rd]);
	assign stall_jr_load2 = jr_d & load_e & (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rt]);
	assign stall_jr_load1 = jr_d & load_m & (IR_D[`rs]!=0&IR_D[`rs]==IR_M[`rt]);
	assign stall_jr_mfc02 = jr_d & mfc0_e & (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rt]);
	assign stall_jr_mfc01 = jr_d & mfc0_m & (IR_D[`rs]!=0&IR_D[`rs]==IR_M[`rt]);
	
	wire stall_jalr_calr,stall_jalr_cali,stall_jalr_load2,stall_jalr_load1,stall_jalr_mf,stall_jalr_mfc02,stall_jalr_mfc01;
	assign stall_jalr_calr = jalr_d & calr_e & (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rd]);
	assign stall_jalr_cali = jalr_d & cali_e & (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rt]);
	assign stall_jalr_mf = jalr_d & mf_e & (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rd]);
	assign stall_jalr_load2 = jalr_d & load_e & (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rt]);
	assign stall_jalr_load1 = jalr_d & load_m & (IR_D[`rs]!=0&IR_D[`rs]==IR_M[`rt]);
	assign stall_jalr_mfc02 = jalr_d & mfc0_e & (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rt]);
	assign stall_jalr_mfc01 = jalr_d & mfc0_m & (IR_D[`rs]!=0&IR_D[`rs]==IR_M[`rt]);
	
	wire stall_md_load,stall_md_mfc0;
	assign stall_md_load = md_d & load_e & ( (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rt]) |
	                                         (IR_D[`rt]!=0&IR_D[`rt]==IR_E[`rt]) );
	assign stall_md_mfc0 = md_d & mfc0_e & ( (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rt]) |
	                                         (IR_D[`rt]!=0&IR_D[`rt]==IR_E[`rt]) );
	
	wire stall_mt_load,stall_mt_mfc0;
	assign stall_mt_load = mt_d & load_e & (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rt]);
	assign stall_mt_mfc0 = mt_d & mfc0_e & (IR_D[`rs]!=0&IR_D[`rs]==IR_E[`rt]);
	
	wire stall_eret_mtc0;
	assign stall_eret_mtc0 = eret_d & mtc0_e & (IR_E[15:11]==14);
	
	wire stall_mdtf_md;//乘除槽
	assign stall_mdtf_md = (md_d|mt_d|mf_d) & (start_E|busy);
	
	assign stall = stall_br_calr | stall_br_cali | stall_br_mf | stall_br_load2 | stall_br_load1 | stall_br_mfc02 | stall_br_mfc01 |
	               stall_calr_load | stall_calr_mfc0 |
						stall_cali_load | stall_cali_mfc0 |
						stall_load_load | stall_load_mfc0 |
						stall_store_load | stall_store_mfc0 |
						stall_jr_calr | stall_jr_cali | stall_jr_mf | stall_jr_load2 | stall_jr_load1 | stall_jr_mfc02 | stall_jr_mfc01 |
						stall_jalr_calr | stall_jalr_cali | stall_jalr_mf | stall_jalr_load2 | stall_jalr_load1 | stall_jalr_mfc02 | stall_jalr_mfc01 |
						stall_md_load | stall_md_mfc0 |
						stall_mt_load | stall_mt_mfc0 |
						stall_eret_mtc0 |
						stall_mdtf_md;
	
	//-------------------Forwarding---------------------
	wire [10:0] MFRSDsel,MFRTDsel,MFRSEsel,MFRTEsel,MFRTMsel;
	assign MFRSDsel = calr_m & (IR_D[`rs]!=0&IR_D[`rs]==IR_M[`rd]) ? 1:
	                  mf_m & (IR_D[`rs]!=0&IR_D[`rs]==IR_M[`rd]) ? 1:
							cali_m & (IR_D[`rs]!=0&IR_D[`rs]==IR_M[`rt]) ? 1:
							jal_m & (IR_D[`rs]!=0&IR_D[`rs]==31) ? 2:
							jalr_m & (IR_D[`rs]!=0&IR_D[`rs]==IR_M[`rd]) ? 2:
							calr_w & (IR_D[`rs]!=0&IR_D[`rs]==IR_W[`rd]) ? 3:
							mf_w & (IR_D[`rs]!=0&IR_D[`rs]==IR_W[`rd]) ? 3:
							cali_w & (IR_D[`rs]!=0&IR_D[`rs]==IR_W[`rt]) ? 3:
							load_w & (IR_D[`rs]!=0&IR_D[`rs]==IR_W[`rt]) ? 3:
							jal_w & (IR_D[`rs]!=0&IR_D[`rs]==31) ? 3:
							jalr_w & (IR_D[`rs]!=0&IR_D[`rs]==IR_W[`rd]) ? 3:
							mfc0_w & (IR_D[`rs]!=0&IR_D[`rs]==IR_W[`rt]) ? 3:
							                                                 0;
	assign MFRTDsel = calr_m & (IR_D[`rt]!=0&IR_D[`rt]==IR_M[`rd]) ? 1:
							mf_m & (IR_D[`rt]!=0&IR_D[`rt]==IR_M[`rd]) ? 1:
	                  cali_m & (IR_D[`rt]!=0&IR_D[`rt]==IR_M[`rt]) ? 1:
							jal_m & (IR_D[`rt]!=0&IR_D[`rt]==31) ? 2:
							jalr_m & (IR_D[`rt]!=0&IR_D[`rt]==IR_M[`rd]) ? 2:
							calr_w & (IR_D[`rt]!=0&IR_D[`rt]==IR_W[`rd]) ? 3:
							mf_w & (IR_D[`rt]!=0&IR_D[`rt]==IR_W[`rd]) ? 3:
							cali_w & (IR_D[`rt]!=0&IR_D[`rt]==IR_W[`rt]) ? 3:
							load_w & (IR_D[`rt]!=0&IR_D[`rt]==IR_W[`rt]) ? 3:
							jal_w & (IR_D[`rt]!=0&IR_D[`rt]==31) ? 3:
							jalr_w & (IR_D[`rt]!=0&IR_D[`rt]==IR_W[`rd]) ? 3:
							mfc0_w & (IR_D[`rt]!=0&IR_D[`rt]==IR_W[`rt]) ? 3:
							                                                 0;	
	assign MFRSEsel = calr_m & (IR_E[`rs]!=0&IR_E[`rs]==IR_M[`rd]) ? 1:
	                  mf_m & (IR_E[`rs]!=0&IR_E[`rs]==IR_M[`rd]) ? 1:
							cali_m & (IR_E[`rs]!=0&IR_E[`rs]==IR_M[`rt]) ? 1:
							jal_m & (IR_E[`rs]!=0&IR_E[`rs]==31) ? 2:
							jalr_m & (IR_E[`rs]!=0&IR_E[`rs]==IR_M[`rd]) ? 2:
							calr_w & (IR_E[`rs]!=0&IR_E[`rs]==IR_W[`rd]) ? 3:
							mf_w & (IR_E[`rs]!=0&IR_E[`rs]==IR_W[`rd]) ? 3:
							cali_w & (IR_E[`rs]!=0&IR_E[`rs]==IR_W[`rt]) ? 3:
							load_w & (IR_E[`rs]!=0&IR_E[`rs]==IR_W[`rt]) ? 3:
							jal_w & (IR_E[`rs]!=0&IR_E[`rs]==31) ? 3:
							jalr_w & (IR_E[`rs]!=0&IR_E[`rs]==IR_W[`rd]) ? 3:
							mfc0_w & (IR_E[`rs]!=0&IR_E[`rs]==IR_W[`rt]) ? 3:
							                                                 0;
	assign MFRTEsel = calr_m & (IR_E[`rt]!=0&IR_E[`rt]==IR_M[`rd]) ? 1:
	                  mf_m & (IR_E[`rt]!=0&IR_E[`rt]==IR_M[`rd]) ? 1:
							cali_m & (IR_E[`rt]!=0&IR_E[`rt]==IR_M[`rt]) ? 1:
							jal_m & (IR_E[`rt]!=0&IR_E[`rt]==31) ? 2:
							jalr_m & (IR_E[`rt]!=0&IR_E[`rt]==IR_M[`rd]) ? 2:
							calr_w & (IR_E[`rt]!=0&IR_E[`rt]==IR_W[`rd]) ? 3:
							mf_w & (IR_E[`rt]!=0&IR_E[`rt]==IR_W[`rd]) ? 3:
							cali_w & (IR_E[`rt]!=0&IR_E[`rt]==IR_W[`rt]) ? 3:
							load_w & (IR_E[`rt]!=0&IR_E[`rt]==IR_W[`rt]) ? 3:
							jal_w & (IR_E[`rt]!=0&IR_E[`rt]==31) ? 3:
							jalr_w & (IR_E[`rt]!=0&IR_E[`rt]==IR_W[`rd]) ? 3:
							mfc0_w & (IR_E[`rt]!=0&IR_E[`rt]==IR_W[`rt]) ? 3:
							                                                 0;
	assign MFRTMsel = calr_w & (IR_M[`rt]!=0&IR_M[`rt]==IR_W[`rd]) ? 1:
							mf_w & (IR_M[`rt]!=0&IR_M[`rt]==IR_W[`rd]) ? 1:
							cali_w & (IR_M[`rt]!=0&IR_M[`rt]==IR_W[`rt]) ? 1:
							load_w & (IR_M[`rt]!=0&IR_M[`rt]==IR_W[`rt]) ? 1:
							jal_w & (IR_M[`rt]!=0&IR_M[`rt]==31) ? 1:
							jalr_w & (IR_M[`rt]!=0&IR_M[`rt]==IR_W[`rd]) ? 1:
							mfc0_w & (IR_M[`rt]!=0&IR_M[`rt]==IR_W[`rt]) ? 1:
							                                                 0;

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
