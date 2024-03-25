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

enum{
	RISCV_SLL,
	RISCV_SLLI,
	RISCV_SRL,
	RISCV_SRLI,
	RISCV_SRA,
	RISCV_SRAI,
	RISCV_ADD,
	RISCV_ADDI,
	RISCV_SUB,
	RISCV_LUI,
	RISCV_AUIPC,
	RISCV_XOR,
	RISCV_XORI,
	RISCV_OR,
	RISCV_ORI,
	RISCV_AND,
	RISCV_ANDI,
	RISCV_SLT,
	RISCV_SLTI,
	RISCV_SLTU,
	RISCV_SLTIU,
	RISCV_BEQ,
	RISCV_BNE,
	RISCV_BLT,
	RISCV_BGE,
	RISCV_BLTU,
	RISCV_BGEU,
	RISCV_JAL,
	RISCV_JALR,
	RISCV_LB,
	RISCV_LH,
	RISCV_LBU,
	RISCV_LHU,
	RISCV_LW,
	RISCV_SB,
	RISCV_SH,
	RISCV_SW,
	RISCV_SLLW,
	RISCV_SLLIW,
	RISCV_SRLW,
	RISCV_SRLIW,
	RISCV_SRAW,
	RISCV_SRAIW,
	RISCV_ADDW,
	RISCV_ADDIW,
	RISCV_SUBW,
	RISCV_LWU,
	RISCV_LD,
	RISCV_SD,

	RISCV_MUL,
	RISCV_MULH,
	RISCV_MULHSU,
	RISCV_MULHU,
	RISCV_DIV,
	RISCV_DIVU,
	RISCV_REM,
	RISCV_REMU,
	RISCV_MULW,
	RISCV_DIVW,
	RISCV_REMW,
	RISCV_REMUW,
};

struct RvOpInfo{
    enum{R_type,I_type,S_type,B_type,U_type,J_type,/*R2_type,R4_type,*/};
    int ins_formattype;
    char* name;
};
extern struct RvOpInfo OpTable[];

#endif