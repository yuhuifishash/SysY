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

    RISCV_LI,
    // RISCV_GLOBAL_LOAD,
    // RISCV_GLOBAL_STORE,
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
        // GLOBAL_LOAD_type,
        // GLOBAL_STORE_type,
    };
    int ins_formattype;
    char *name;
};
extern RvOpInfo OpTable[];
enum {
    RISCV_x0,
    RISCV_x1,
    RISCV_x2,
    RISCV_x3,
    RISCV_x4,
    RISCV_x5,
    RISCV_x6,
    RISCV_x7,
    RISCV_x8,
    RISCV_x9,
    RISCV_x10,
    RISCV_x11,
    RISCV_x12,
    RISCV_x13,
    RISCV_x14,
    RISCV_x15,
    RISCV_x16,
    RISCV_x17,
    RISCV_x18,
    RISCV_x19,
    RISCV_x20,
    RISCV_x21,
    RISCV_x22,
    RISCV_x23,
    RISCV_x24,
    RISCV_x25,
    RISCV_x26,
    RISCV_x27,
    RISCV_x28,
    RISCV_x29,
    RISCV_x30,
    RISCV_x31,
    RISCV_f0,
    RISCV_f1,
    RISCV_f2,
    RISCV_f3,
    RISCV_f4,
    RISCV_f5,
    RISCV_f6,
    RISCV_f7,
    RISCV_f8,
    RISCV_f9,
    RISCV_f10,
    RISCV_f11,
    RISCV_f12,
    RISCV_f13,
    RISCV_f14,
    RISCV_f15,
    RISCV_f16,
    RISCV_f17,
    RISCV_f18,
    RISCV_f19,
    RISCV_f20,
    RISCV_f21,
    RISCV_f22,
    RISCV_f23,
    RISCV_f24,
    RISCV_f25,
    RISCV_f26,
    RISCV_f27,
    RISCV_f28,
    RISCV_f29,
    RISCV_f30,
    RISCV_f31,
    RISCV_INVALID,
    RISCV_spilled_in_memory,
};

static inline MachineDataType getRVRegType(int reg_no){
    if(reg_no >= RISCV_x0 && reg_no <= RISCV_x31){
        return MachineDataType(MachineDataType::INT,MachineDataType::B64);
    }
    if(reg_no >= RISCV_f0 && reg_no <= RISCV_f31){
        return MachineDataType(MachineDataType::FLOAT,MachineDataType::B64);
    }
    ERROR("Unknown reg_no %d",reg_no);
}

struct RiscV64RegisterInfo {
    char *name;
};
extern RiscV64RegisterInfo RiscV64Registers[];

struct RiscVLabel : public Label{
    std::string name;
    bool is_hi;
    RiscVLabel(int jmp,int seq):Label(jmp,seq),name(){}
    RiscVLabel(int jmp):Label(jmp,false),name(){}
    RiscVLabel(std::string name,bool is_hi):Label(0,0),name(name),is_hi(is_hi){
        this->is_data_address = true;
    }
    RiscVLabel(const RiscVLabel& other):Label(0,0){
        if(other.is_data_address){
            this->is_data_address = other.is_data_address;
            this->name = other.name;
            this->is_hi = other.is_hi;
        }else{
            this->is_data_address = other.is_data_address;
            this->print_label_id = other.print_label_id;
            this->seq_label_id = other.seq_label_id;
        } 
    }
    RiscVLabel operator=(const RiscVLabel& other){
        if(other.is_data_address){
            this->is_data_address = other.is_data_address;
            this->name = other.name;
            this->is_hi = other.is_hi;
        }else{
            this->is_data_address = other.is_data_address;
            this->print_label_id = other.print_label_id;
            this->seq_label_id = other.seq_label_id;
        }
        return *this;
    }
};

class RiscV64Instruction : public MachineBaseInstruction {
private:
    int op;
    Register rd, rs1, rs2, rs3;
    bool use_label;
    union {
        int imm;
        RiscVLabel label;
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
    void setLabel(RiscVLabel label) { this->label = label; }
    Register getRd() { return rd; }
    Register getRs1() { return rs1; }
    Register getRs2() { return rs2; }
    Register getRs3() { return rs3; }
    void setUseLabel(bool use_label) { this->use_label = use_label; }
    bool getUseLabel() { return use_label; }
    int getImm() { return imm; }
    RiscVLabel getLabel() { return label; }
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