#ifndef RISCV64_OPCODE_H
#define RISCV64_OPCODE_H

#pragma GCC diagnostic ignored "-Wwritable-strings"
#pragma GCC diagnostic ignored "-Wc99-designator"

#define cat2(A,B) A##B
#define cat3(A,B,C) cat2(A,B##C)

#define RiscVOP_NAME(op_name) RISCV_##op_name
#define RiscVOP(type,op_name) [RiscVOP_NAME(op_name)] = RvOpInfo{RvOpInfo:: cat2(type,_type),#op_name}
#define RiscVOP_DECLLIST(...) enum{__VA_ARGS__}
#define RiscVOP_DECL(op_name) RiscVOP_NAME(op_name)

RiscVOP_DECLLIST(
	RiscVOP_DECL(SLL),
	RiscVOP_DECL(SLLI),
	RiscVOP_DECL(SRL),
	RiscVOP_DECL(SRLI),
	RiscVOP_DECL(SRA),
	RiscVOP_DECL(SRAI),
	RiscVOP_DECL(ADD),
	RiscVOP_DECL(ADDI),
	RiscVOP_DECL(SUB),
	RiscVOP_DECL(LUI),
	RiscVOP_DECL(AUIPC),
	RiscVOP_DECL(XOR),
	RiscVOP_DECL(XORI),
	RiscVOP_DECL(OR),
	RiscVOP_DECL(ORI),
	RiscVOP_DECL(AND),
	RiscVOP_DECL(ANDI),
	RiscVOP_DECL(SLT),
	RiscVOP_DECL(SLTI),
	RiscVOP_DECL(SLTU),
	RiscVOP_DECL(SLTIU),
	RiscVOP_DECL(BEQ),
	RiscVOP_DECL(BNE),
	RiscVOP_DECL(BLT),
	RiscVOP_DECL(BGE),
	RiscVOP_DECL(BLTU),
	RiscVOP_DECL(BGEU),
	RiscVOP_DECL(JAL),
	RiscVOP_DECL(JALR),
	RiscVOP_DECL(LB),
	RiscVOP_DECL(LH),
	RiscVOP_DECL(LBU),
	RiscVOP_DECL(LHU),
	RiscVOP_DECL(LW),
	RiscVOP_DECL(SB),
	RiscVOP_DECL(SH),
	RiscVOP_DECL(SW),
	RiscVOP_DECL(SLLW),
	RiscVOP_DECL(SLLIW),
	RiscVOP_DECL(SRLW),
	RiscVOP_DECL(SRLIW),
	RiscVOP_DECL(SRAW),
	RiscVOP_DECL(SRAIW),
	RiscVOP_DECL(ADDW),
	RiscVOP_DECL(ADDIW),
	RiscVOP_DECL(SUBW),
	RiscVOP_DECL(LWU),
	RiscVOP_DECL(LD),
	RiscVOP_DECL(SD),

	RiscVOP_DECL(MUL),
	RiscVOP_DECL(MULH),
	RiscVOP_DECL(MULHSU),
	RiscVOP_DECL(MULHU),
	RiscVOP_DECL(DIV),
	RiscVOP_DECL(DIVU),
	RiscVOP_DECL(REM),
	RiscVOP_DECL(REMU),
	RiscVOP_DECL(MULW),
	RiscVOP_DECL(DIVW),
	RiscVOP_DECL(REMW),
	RiscVOP_DECL(REMUW),
);

struct RvOpInfo{
    enum{R_type,I_type,S_type,B_type,U_type,J_type,};
    int ins_formattype;
    char* name;
};
extern struct RvOpInfo OpTable[];

#endif