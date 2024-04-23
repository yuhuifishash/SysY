#ifndef RISCV64_H
#define RISCV64_H
#include "../common/MachineBaseInstruction.h"
#include "../common/machine_passes/register_alloc/physical_register.h"

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

    RISCV_FMV_W_X,
    RISCV_FMV_X_W,
    RISCV_FCVT_S_W,
    RISCV_FCVT_D_W,
    RISCV_FCVT_S_WU,
    RISCV_FCVT_D_WU,
    RISCV_FCVT_W_S,
    RISCV_FCVT_W_D,
    RISCV_FCVT_WU_S,
    RISCV_FCVT_WU_D,
    RISCV_FLW,
    RISCV_FLD,
    RISCV_FSW,
    RISCV_FSD,
    RISCV_FADD_S,
    RISCV_FADD_D,
    RISCV_FSUB_S,
    RISCV_FSUB_D,
    RISCV_FMUL_S,
    RISCV_FMUL_D,
    RISCV_FDIV_S,
    RISCV_FDIV_D,
    RISCV_FSQRT_S,
    RISCV_FSQRT_D,
    RISCV_FMADD_S,
    RISCV_FMADD_D,
    RISCV_FMSUB_S,
    RISCV_FMSUB_D,
    RISCV_FNMSUB_S,
    RISCV_FNMSUB_D,
    RISCV_FNMADD_S,
    RISCV_FNMADD_D,
    RISCV_FSGNJ_S,
    RISCV_FSGNJ_D,
    RISCV_FSGNJN_S,
    RISCV_FSGNJN_D,
    RISCV_FSGNJX_S,
    RISCV_FSGNJX_D,
    RISCV_FMIN_S,
    RISCV_FMIN_D,
    RISCV_FMAX_S,
    RISCV_FMAX_D,
    RISCV_FEQ_S,
    RISCV_FEQ_D,
    RISCV_FLT_S,
    RISCV_FLT_D,
    RISCV_FLE_S,
    RISCV_FLE_D,
    RISCV_FCLASS_S,
    RISCV_FCLASS_D,
    RISCV_FMV_D_X,
    RISCV_FMV_X_D,
    RISCV_FCVT_S_L,
    RISCV_FCVT_D_L,
    RISCV_FCVT_S_LU,
    RISCV_FCVT_D_LU,
    RISCV_FCVT_L_S,
    RISCV_FCVT_L_D,
    RISCV_FCVT_LU_S,
    RISCV_FCVT_LU_D,
};

struct RvOpInfo {
    enum {
        R_type,
        I_type,
        S_type,
        B_type,
        U_type,
        J_type,
        R2_type,
        R4_type,
    };
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
        f0,
        f1,
        f2,
        f3,
        f4,
        f5,
        f6,
        f7,
        f8,
        f9,
        f10,
        f11,
        f12,
        f13,
        f14,
        f15,
        f16,
        f17,
        f18,
        f19,
        f20,
        f21,
        f22,
        f23,
        f24,
        f25,
        f26,
        f27,
        f28,
        f29,
        f30,
        f31,
        INVALID,
        spilled_in_memory,
    };
};
extern RiscV64PhysicalRegisterDescriptor RiscV64RegDescriptor[];

class RiscV64Instruction : public MachineBaseInstruction {
private:
    int op;
    Register rd, rs1, rs2, rs3;
    bool use_label;
    union {
        int imm;
        Label label;
    };

    std::vector<Register *> GetR_typeReadreg() { return {&rs1, &rs2}; }
    std::vector<Register *> GetR2_typeReadreg() { return {&rs1}; }
    std::vector<Register *> GetR4_typeReadreg() { return {&rs1, &rs2, &rs3}; }
    std::vector<Register *> GetI_typeReadreg() { return {&rs1}; }
    std::vector<Register *> GetS_typeReadreg() { return {&rs1, &rs2}; }
    std::vector<Register *> GetB_typeReadreg() { return {&rs1, &rs2}; }
    std::vector<Register *> GetU_typeReadreg() { return {}; }
    std::vector<Register *> GetJ_typeReadreg() { return {}; }

    std::vector<Register *> GetR_typeWritereg() { return {&rd}; }
    std::vector<Register *> GetR2_typeWritereg() { return {&rd}; }
    std::vector<Register *> GetR4_typeWritereg() { return {&rd}; }
    std::vector<Register *> GetI_typeWritereg() { return {&rd}; }
    std::vector<Register *> GetS_typeWritereg() { return {}; }
    std::vector<Register *> GetB_typeWritereg() { return {}; }
    std::vector<Register *> GetU_typeWritereg() { return {&rd}; }
    std::vector<Register *> GetJ_typeWritereg() { return {&rd}; }

public:
    RiscV64Instruction() : MachineBaseInstruction(MachineBaseInstruction::RiscV) {}
    void setOpcode(int op, bool use_label) {
        this->op = op;
        this->use_label = use_label;
    }
    void setRd(Register rd) { this->rd = rd; }
    void setRs1(Register rs1) { this->rs1 = rs1; }
    void setRs2(Register rs2) { this->rs2 = rs2; }
    void setRs3(Register rs3) { this->rs3 = rs3; }
    void setImm(int imm) { this->imm = imm; }
    void setLabel(Label label) { this->label = label; }
    Register getRd() { return rd; }
    Register getRs1() { return rs1; }
    Register getRs2() { return rs2; }
    Register getRs3() { return rs3; }
    void setUseLabel(bool use_label) { this->use_label = use_label; }
    bool getUseLabel() { return use_label; }
    int getImm() { return imm; }
    Label getLabel() { return label; }
    int getOpcode() { return op; }
    std::vector<Register *> GetReadReg();
    std::vector<Register *> GetWriteReg();
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

class RiscV64Register : public PhysicalRegisters {
protected:
    std::vector<int> getValidRegs(LiveInterval interval);
};

#endif