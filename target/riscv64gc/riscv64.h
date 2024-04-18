#ifndef RISCV64_H
#define RISCV64_H
#include "MachineBaseInstruction.h"

#pragma GCC diagnostic ignored "-Wwritable-strings"
#pragma GCC diagnostic ignored "-Wc99-designator"

enum {
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

struct RvOpInfo {
    enum { R_type, I_type, S_type, B_type, U_type, J_type, /*R2_type,R4_type,*/ };
    int ins_formattype;
    char *name;
};
extern RvOpInfo OpTable[];
struct RiscV64PhysicalRegisterDescriptor {
    char *name;
    enum {
        x0,
        x1,
        x2,
        x3,
        x4,
        x5,
        x6,
        x7,
        x8,
        x9,
        x10,
        x11,
        x12,
        x13,
        x14,
        x15,
        x16,
        x17,
        x18,
        x19,
        x20,
        x21,
        x22,
        x23,
        x24,
        x25,
        x26,
        x27,
        x28,
        x29,
        x30,
        x31,
        INVALID,
        spilled_in_memory,
    };
};
extern RiscV64PhysicalRegisterDescriptor RiscV64RegDescriptor[];

class RiscV64Instruction : MachineBaseInstruction {
private:
    int op;
    Register rd, rs1, rs2;
    union {
        int imm;
        Label label;
    };

    std::set<Register*> GetR_typeReadreg() { return {&rs1, &rs2}; }
    std::set<Register*> GetI_typeReadreg() { return {&rs1}; }
    std::set<Register*> GetS_typeReadreg() { return {&rs1, &rs2}; }
    std::set<Register*> GetB_typeReadreg() { return {&rs1, &rs2}; }
    std::set<Register*> GetU_typeReadreg() { return {}; }
    std::set<Register*> GetJ_typeReadreg() { return {}; }

    std::set<Register*> GetR_typeWritereg() { return {&rd}; }
    std::set<Register*> GetI_typeWritereg() { return {&rd}; }
    std::set<Register*> GetS_typeWritereg() { return {}; }
    std::set<Register*> GetB_typeWritereg() { return {}; }
    std::set<Register*> GetU_typeWritereg() { return {&rd}; }
    std::set<Register*> GetJ_typeWritereg() { return {&rd}; }

public:
    int getOpcode() { return op; }
    std::set<Register*> GetReadReg();
    std::set<Register*> GetWriteReg();
};
#include "../common/machine_instruction_structures/machine.h"
class RiscV64Function;
class RiscV64Unit;

class RiscV64Block : public MachineBlock {
public:
    RiscV64Block(int id) : MachineBlock(id) {}
};
class RiscV64Function : public MachineFunction {
public:
    RiscV64Function(std::string name) : MachineFunction(name) {}

protected:
    void InitializeNewVirtualRegister(int vregno);
    void MoveAllPredecessorsBranchTargetToNewBlock(int original_target, int new_target);
    void MoveOnePredecessorBranchTargetToNewBlock(int pre, int original_target, int new_target);
    void YankBranchInstructionToNewBlock(int original_block_id, int new_block);
    void AppendUncondBranchInstructionToNewBlock(int new_block, int br_target);
};
class RiscV64Unit : public MachineUnit {};
#endif