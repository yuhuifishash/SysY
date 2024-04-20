#include "riscv64.h"
#include <assert.h>
std::vector<Register *> RiscV64Instruction::GetReadReg() {
    switch (OpTable[op].ins_formattype) {
    case RvOpInfo::R_type:
        return GetR_typeReadreg();
    case RvOpInfo::I_type:
        return GetI_typeReadreg();
    case RvOpInfo::S_type:
        return GetS_typeReadreg();
    case RvOpInfo::B_type:
        return GetB_typeReadreg();
    case RvOpInfo::U_type:
        return GetU_typeReadreg();
    case RvOpInfo::J_type:
        return GetJ_typeReadreg();
    }
    assert(false);
}

std::vector<Register *> RiscV64Instruction::GetWriteReg() {
    switch (OpTable[op].ins_formattype) {
    case RvOpInfo::R_type:
        return GetR_typeWritereg();
    case RvOpInfo::I_type:
        return GetI_typeWritereg();
    case RvOpInfo::S_type:
        return GetS_typeWritereg();
    case RvOpInfo::B_type:
        return GetB_typeWritereg();
    case RvOpInfo::U_type:
        return GetU_typeWritereg();
    case RvOpInfo::J_type:
        return GetJ_typeWritereg();
    }
    assert(false);
}

void RiscV64Function::MoveAllPredecessorsBranchTargetToNewBlock(int original_target, int new_target) {}
void RiscV64Function::MoveOnePredecessorBranchTargetToNewBlock(int pre, int original_target, int new_target) {

}
void RiscV64Function::YankBranchInstructionToNewBlock(int original_block_id, int new_block) {}
void RiscV64Function::AppendUncondBranchInstructionToNewBlock(int new_block, int br_target) {}

struct RvOpInfo OpTable[] = {
[RISCV_SLL] = RvOpInfo{RvOpInfo::R_type, "SLL"},       [RISCV_SLLI] = RvOpInfo{RvOpInfo::I_type, "SLLI"},
[RISCV_SRL] = RvOpInfo{RvOpInfo::R_type, "SRL"},       [RISCV_SRLI] = RvOpInfo{RvOpInfo::I_type, "SRLI"},
[RISCV_SRA] = RvOpInfo{RvOpInfo::R_type, "SRA"},       [RISCV_SRAI] = RvOpInfo{RvOpInfo::I_type, "SRAI"},
[RISCV_ADD] = RvOpInfo{RvOpInfo::R_type, "ADD"},       [RISCV_ADDI] = RvOpInfo{RvOpInfo::I_type, "ADDI"},
[RISCV_SUB] = RvOpInfo{RvOpInfo::R_type, "SUB"},       [RISCV_LUI] = RvOpInfo{RvOpInfo::U_type, "LUI"},
[RISCV_AUIPC] = RvOpInfo{RvOpInfo::U_type, "AUIPC"},   [RISCV_XOR] = RvOpInfo{RvOpInfo::R_type, "XOR"},
[RISCV_XORI] = RvOpInfo{RvOpInfo::I_type, "XORI"},     [RISCV_OR] = RvOpInfo{RvOpInfo::R_type, "OR"},
[RISCV_ORI] = RvOpInfo{RvOpInfo::I_type, "ORI"},       [RISCV_AND] = RvOpInfo{RvOpInfo::R_type, "AND"},
[RISCV_ANDI] = RvOpInfo{RvOpInfo::I_type, "ANDI"},     [RISCV_SLT] = RvOpInfo{RvOpInfo::R_type, "SLT"},
[RISCV_SLTI] = RvOpInfo{RvOpInfo::I_type, "SLTI"},     [RISCV_SLTU] = RvOpInfo{RvOpInfo::R_type, "SLTU"},
[RISCV_SLTIU] = RvOpInfo{RvOpInfo::I_type, "SLTIU"},   [RISCV_BEQ] = RvOpInfo{RvOpInfo::B_type, "BEQ"},
[RISCV_BNE] = RvOpInfo{RvOpInfo::B_type, "BNE"},       [RISCV_BLT] = RvOpInfo{RvOpInfo::B_type, "BLT"},
[RISCV_BGE] = RvOpInfo{RvOpInfo::B_type, "BGE"},       [RISCV_BLTU] = RvOpInfo{RvOpInfo::B_type, "BLTU"},
[RISCV_BGEU] = RvOpInfo{RvOpInfo::B_type, "BGEU"},     [RISCV_JAL] = RvOpInfo{RvOpInfo::J_type, "JAL"},
[RISCV_JALR] = RvOpInfo{RvOpInfo::I_type, "JALR"},     [RISCV_LB] = RvOpInfo{RvOpInfo::I_type, "LB"},
[RISCV_LH] = RvOpInfo{RvOpInfo::I_type, "LH"},         [RISCV_LBU] = RvOpInfo{RvOpInfo::I_type, "LBU"},
[RISCV_LHU] = RvOpInfo{RvOpInfo::I_type, "LHU"},       [RISCV_LW] = RvOpInfo{RvOpInfo::I_type, "LW"},
[RISCV_SB] = RvOpInfo{RvOpInfo::S_type, "SB"},         [RISCV_SH] = RvOpInfo{RvOpInfo::S_type, "SH"},
[RISCV_SW] = RvOpInfo{RvOpInfo::S_type, "SW"},         [RISCV_SLLW] = RvOpInfo{RvOpInfo::R_type, "SLLW"},
[RISCV_SLLIW] = RvOpInfo{RvOpInfo::I_type, "SLLIW"},   [RISCV_SRLW] = RvOpInfo{RvOpInfo::R_type, "SRLW"},
[RISCV_SRLIW] = RvOpInfo{RvOpInfo::I_type, "SRLIW"},   [RISCV_SRAW] = RvOpInfo{RvOpInfo::R_type, "SRAW"},
[RISCV_SRAIW] = RvOpInfo{RvOpInfo::I_type, "SRAIW"},   [RISCV_ADDW] = RvOpInfo{RvOpInfo::R_type, "ADDW"},
[RISCV_ADDIW] = RvOpInfo{RvOpInfo::I_type, "ADDIW"},   [RISCV_SUBW] = RvOpInfo{RvOpInfo::R_type, "SUBW"},
[RISCV_LWU] = RvOpInfo{RvOpInfo::I_type, "LWU"},       [RISCV_LD] = RvOpInfo{RvOpInfo::I_type, "LD"},
[RISCV_SD] = RvOpInfo{RvOpInfo::S_type, "SD"},

[RISCV_MUL] = RvOpInfo{RvOpInfo::R_type, "MUL"},       [RISCV_MULH] = RvOpInfo{RvOpInfo::R_type, "MULH"},
[RISCV_MULHSU] = RvOpInfo{RvOpInfo::R_type, "MULHSU"}, [RISCV_MULHU] = RvOpInfo{RvOpInfo::R_type, "MULHU"},
[RISCV_DIV] = RvOpInfo{RvOpInfo::R_type, "DIV"},       [RISCV_DIVU] = RvOpInfo{RvOpInfo::R_type, "DIVU"},
[RISCV_REM] = RvOpInfo{RvOpInfo::R_type, "REM"},       [RISCV_REMU] = RvOpInfo{RvOpInfo::R_type, "REMU"},
[RISCV_MULW] = RvOpInfo{RvOpInfo::R_type, "MULW"},     [RISCV_DIVW] = RvOpInfo{RvOpInfo::R_type, "DIVW"},
[RISCV_REMW] = RvOpInfo{RvOpInfo::R_type, "REMW"},     [RISCV_REMUW] = RvOpInfo{RvOpInfo::R_type, "REMUW"},
};

#pragma GCC diagnostic ignored "-Wwritable-strings"
#pragma GCC diagnostic ignored "-Wc99-designator"
struct RiscV64PhysicalRegisterDescriptor RiscV64RegDescriptor[] = {
[RiscV64PhysicalRegisterDescriptor::x0] = {"x0"},
[RiscV64PhysicalRegisterDescriptor::x1] = {"x1"},
[RiscV64PhysicalRegisterDescriptor::x2] = {"x2"},
[RiscV64PhysicalRegisterDescriptor::x3] = {"x3"},
[RiscV64PhysicalRegisterDescriptor::x4] = {"x4"},
[RiscV64PhysicalRegisterDescriptor::x5] = {"x5"},
[RiscV64PhysicalRegisterDescriptor::x6] = {"x6"},
[RiscV64PhysicalRegisterDescriptor::x7] = {"x7"},
[RiscV64PhysicalRegisterDescriptor::x8] = {"x8"},
[RiscV64PhysicalRegisterDescriptor::x9] = {"x9"},
[RiscV64PhysicalRegisterDescriptor::x10] = {"x10"},
[RiscV64PhysicalRegisterDescriptor::x11] = {"x11"},
[RiscV64PhysicalRegisterDescriptor::x12] = {"x12"},
[RiscV64PhysicalRegisterDescriptor::x13] = {"x13"},
[RiscV64PhysicalRegisterDescriptor::x14] = {"x14"},
[RiscV64PhysicalRegisterDescriptor::x15] = {"x15"},
[RiscV64PhysicalRegisterDescriptor::x16] = {"x16"},
[RiscV64PhysicalRegisterDescriptor::x17] = {"x17"},
[RiscV64PhysicalRegisterDescriptor::x18] = {"x18"},
[RiscV64PhysicalRegisterDescriptor::x19] = {"x19"},
[RiscV64PhysicalRegisterDescriptor::x20] = {"x20"},
[RiscV64PhysicalRegisterDescriptor::x21] = {"x21"},
[RiscV64PhysicalRegisterDescriptor::x22] = {"x22"},
[RiscV64PhysicalRegisterDescriptor::x23] = {"x23"},
[RiscV64PhysicalRegisterDescriptor::x24] = {"x24"},
[RiscV64PhysicalRegisterDescriptor::x25] = {"x25"},
[RiscV64PhysicalRegisterDescriptor::x26] = {"x26"},
[RiscV64PhysicalRegisterDescriptor::x27] = {"x27"},
[RiscV64PhysicalRegisterDescriptor::x28] = {"x28"},
[RiscV64PhysicalRegisterDescriptor::x29] = {"x29"},
[RiscV64PhysicalRegisterDescriptor::x30] = {"x30"},
[RiscV64PhysicalRegisterDescriptor::x31] = {"x31"},
[RiscV64PhysicalRegisterDescriptor::INVALID] = {"INVALID"},
[RiscV64PhysicalRegisterDescriptor::spilled_in_memory] = {"spilled_in_memory"},
};

std::vector<int> PhysicalRegisters::getValidRegs(LiveInterval interval) {
    if (interval.getReg().type.data_type == MachineDataType::INT) {
        return std::vector<int>({
        RiscV64PhysicalRegisterDescriptor::x0,  RiscV64PhysicalRegisterDescriptor::x1,
        RiscV64PhysicalRegisterDescriptor::x2,  RiscV64PhysicalRegisterDescriptor::x3,
        RiscV64PhysicalRegisterDescriptor::x4,  RiscV64PhysicalRegisterDescriptor::x5,
        RiscV64PhysicalRegisterDescriptor::x6,  RiscV64PhysicalRegisterDescriptor::x7,
        RiscV64PhysicalRegisterDescriptor::x8,  RiscV64PhysicalRegisterDescriptor::x9,
        RiscV64PhysicalRegisterDescriptor::x10, RiscV64PhysicalRegisterDescriptor::x11,
        RiscV64PhysicalRegisterDescriptor::x12, RiscV64PhysicalRegisterDescriptor::x13,
        RiscV64PhysicalRegisterDescriptor::x14, RiscV64PhysicalRegisterDescriptor::x15,
        RiscV64PhysicalRegisterDescriptor::x16, RiscV64PhysicalRegisterDescriptor::x17,
        RiscV64PhysicalRegisterDescriptor::x18, RiscV64PhysicalRegisterDescriptor::x19,
        RiscV64PhysicalRegisterDescriptor::x20, RiscV64PhysicalRegisterDescriptor::x21,
        RiscV64PhysicalRegisterDescriptor::x22, RiscV64PhysicalRegisterDescriptor::x23,
        RiscV64PhysicalRegisterDescriptor::x24, RiscV64PhysicalRegisterDescriptor::x25,
        RiscV64PhysicalRegisterDescriptor::x26, RiscV64PhysicalRegisterDescriptor::x27,
        RiscV64PhysicalRegisterDescriptor::x28, RiscV64PhysicalRegisterDescriptor::x29,
        RiscV64PhysicalRegisterDescriptor::x30, RiscV64PhysicalRegisterDescriptor::x31,
        });
    } else {
        assert(false);
    }
}