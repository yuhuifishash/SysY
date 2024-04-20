#include "riscv64.h"
#include <assert.h>
std::vector<Register *> RiscV64Instruction::GetReadReg() {
    switch (OpTable[op].ins_formattype) {
    case RvOpInfo::R_type:
        return GetR_typeReadreg();
    case RvOpInfo::R2_type:
        return GetR2_typeReadreg();
    case RvOpInfo::R4_type:
        return GetR4_typeReadreg();
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
    case RvOpInfo::R2_type:
        return GetR2_typeWritereg();
    case RvOpInfo::R4_type:
        return GetR4_typeWritereg();
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
void RiscV64Function::MoveOnePredecessorBranchTargetToNewBlock(int pre, int original_target, int new_target) {}
void RiscV64Function::YankBranchInstructionToNewBlock(int original_block_id, int new_block) {}
void RiscV64Function::AppendUncondBranchInstructionToNewBlock(int new_block, int br_target) {}

struct RvOpInfo OpTable[] = {
[RISCV_SLL] = RvOpInfo{RvOpInfo::R_type, "SLL"},
[RISCV_SLLI] = RvOpInfo{RvOpInfo::I_type, "SLLI"},
[RISCV_SRL] = RvOpInfo{RvOpInfo::R_type, "SRL"},
[RISCV_SRLI] = RvOpInfo{RvOpInfo::I_type, "SRLI"},
[RISCV_SRA] = RvOpInfo{RvOpInfo::R_type, "SRA"},
[RISCV_SRAI] = RvOpInfo{RvOpInfo::I_type, "SRAI"},
[RISCV_ADD] = RvOpInfo{RvOpInfo::R_type, "ADD"},
[RISCV_ADDI] = RvOpInfo{RvOpInfo::I_type, "ADDI"},
[RISCV_SUB] = RvOpInfo{RvOpInfo::R_type, "SUB"},
[RISCV_LUI] = RvOpInfo{RvOpInfo::U_type, "LUI"},
[RISCV_AUIPC] = RvOpInfo{RvOpInfo::U_type, "AUIPC"},
[RISCV_XOR] = RvOpInfo{RvOpInfo::R_type, "XOR"},
[RISCV_XORI] = RvOpInfo{RvOpInfo::I_type, "XORI"},
[RISCV_OR] = RvOpInfo{RvOpInfo::R_type, "OR"},
[RISCV_ORI] = RvOpInfo{RvOpInfo::I_type, "ORI"},
[RISCV_AND] = RvOpInfo{RvOpInfo::R_type, "AND"},
[RISCV_ANDI] = RvOpInfo{RvOpInfo::I_type, "ANDI"},
[RISCV_SLT] = RvOpInfo{RvOpInfo::R_type, "SLT"},
[RISCV_SLTI] = RvOpInfo{RvOpInfo::I_type, "SLTI"},
[RISCV_SLTU] = RvOpInfo{RvOpInfo::R_type, "SLTU"},
[RISCV_SLTIU] = RvOpInfo{RvOpInfo::I_type, "SLTIU"},
[RISCV_BEQ] = RvOpInfo{RvOpInfo::B_type, "BEQ"},
[RISCV_BNE] = RvOpInfo{RvOpInfo::B_type, "BNE"},
[RISCV_BLT] = RvOpInfo{RvOpInfo::B_type, "BLT"},
[RISCV_BGE] = RvOpInfo{RvOpInfo::B_type, "BGE"},
[RISCV_BLTU] = RvOpInfo{RvOpInfo::B_type, "BLTU"},
[RISCV_BGEU] = RvOpInfo{RvOpInfo::B_type, "BGEU"},
[RISCV_JAL] = RvOpInfo{RvOpInfo::J_type, "JAL"},
[RISCV_JALR] = RvOpInfo{RvOpInfo::I_type, "JALR"},
[RISCV_LB] = RvOpInfo{RvOpInfo::I_type, "LB"},
[RISCV_LH] = RvOpInfo{RvOpInfo::I_type, "LH"},
[RISCV_LBU] = RvOpInfo{RvOpInfo::I_type, "LBU"},
[RISCV_LHU] = RvOpInfo{RvOpInfo::I_type, "LHU"},
[RISCV_LW] = RvOpInfo{RvOpInfo::I_type, "LW"},
[RISCV_SB] = RvOpInfo{RvOpInfo::S_type, "SB"},
[RISCV_SH] = RvOpInfo{RvOpInfo::S_type, "SH"},
[RISCV_SW] = RvOpInfo{RvOpInfo::S_type, "SW"},
[RISCV_SLLW] = RvOpInfo{RvOpInfo::R_type, "SLLW"},
[RISCV_SLLIW] = RvOpInfo{RvOpInfo::I_type, "SLLIW"},
[RISCV_SRLW] = RvOpInfo{RvOpInfo::R_type, "SRLW"},
[RISCV_SRLIW] = RvOpInfo{RvOpInfo::I_type, "SRLIW"},
[RISCV_SRAW] = RvOpInfo{RvOpInfo::R_type, "SRAW"},
[RISCV_SRAIW] = RvOpInfo{RvOpInfo::I_type, "SRAIW"},
[RISCV_ADDW] = RvOpInfo{RvOpInfo::R_type, "ADDW"},
[RISCV_ADDIW] = RvOpInfo{RvOpInfo::I_type, "ADDIW"},
[RISCV_SUBW] = RvOpInfo{RvOpInfo::R_type, "SUBW"},
[RISCV_LWU] = RvOpInfo{RvOpInfo::I_type, "LWU"},
[RISCV_LD] = RvOpInfo{RvOpInfo::I_type, "LD"},
[RISCV_SD] = RvOpInfo{RvOpInfo::S_type, "SD"},

[RISCV_MUL] = RvOpInfo{RvOpInfo::R_type, "MUL"},
[RISCV_MULH] = RvOpInfo{RvOpInfo::R_type, "MULH"},
[RISCV_MULHSU] = RvOpInfo{RvOpInfo::R_type, "MULHSU"},
[RISCV_MULHU] = RvOpInfo{RvOpInfo::R_type, "MULHU"},
[RISCV_DIV] = RvOpInfo{RvOpInfo::R_type, "DIV"},
[RISCV_DIVU] = RvOpInfo{RvOpInfo::R_type, "DIVU"},
[RISCV_REM] = RvOpInfo{RvOpInfo::R_type, "REM"},
[RISCV_REMU] = RvOpInfo{RvOpInfo::R_type, "REMU"},
[RISCV_MULW] = RvOpInfo{RvOpInfo::R_type, "MULW"},
[RISCV_DIVW] = RvOpInfo{RvOpInfo::R_type, "DIVW"},
[RISCV_REMW] = RvOpInfo{RvOpInfo::R_type, "REMW"},
[RISCV_REMUW] = RvOpInfo{RvOpInfo::R_type, "REMUW"},

[RISCV_FMV_W_X] = RvOpInfo{RvOpInfo::R2_type, "FMV.W.X"},
[RISCV_FMV_X_W] = RvOpInfo{RvOpInfo::R2_type, "FMV.X.W"},
[RISCV_FCVT_S_W] = RvOpInfo{RvOpInfo::R2_type, "FCVT.S.W"},
[RISCV_FCVT_D_W] = RvOpInfo{RvOpInfo::R2_type, "FCVT.D.W"},
[RISCV_FCVT_S_WU] = RvOpInfo{RvOpInfo::R2_type, "FCVT.S.WU"},
[RISCV_FCVT_D_WU] = RvOpInfo{RvOpInfo::R2_type, "FCVT.D.WU"},
[RISCV_FCVT_W_S] = RvOpInfo{RvOpInfo::R2_type, "FCVT.W.S"},
[RISCV_FCVT_W_D] = RvOpInfo{RvOpInfo::R2_type, "FCVT.W.D"},
[RISCV_FCVT_WU_S] = RvOpInfo{RvOpInfo::R2_type, "FCVT.WU.S"},
[RISCV_FCVT_WU_D] = RvOpInfo{RvOpInfo::R2_type, "FCVT.WU.D"},
[RISCV_FLW] = RvOpInfo{RvOpInfo::I_type, "FLW"},
[RISCV_FLD] = RvOpInfo{RvOpInfo::I_type, "FLD"},
[RISCV_FSW] = RvOpInfo{RvOpInfo::S_type, "FSW"},
[RISCV_FSD] = RvOpInfo{RvOpInfo::S_type, "FSD"},
[RISCV_FADD_S] = RvOpInfo{RvOpInfo::R_type, "FADD.S"},
[RISCV_FADD_D] = RvOpInfo{RvOpInfo::R_type, "FADD.D"},
[RISCV_FSUB_S] = RvOpInfo{RvOpInfo::R_type, "FSUB.S"},
[RISCV_FSUB_D] = RvOpInfo{RvOpInfo::R_type, "FSUB.D"},
[RISCV_FMUL_S] = RvOpInfo{RvOpInfo::R_type, "FMUL.S"},
[RISCV_FMUL_D] = RvOpInfo{RvOpInfo::R_type, "FMUL.D"},
[RISCV_FDIV_S] = RvOpInfo{RvOpInfo::R_type, "FDIV.S"},
[RISCV_FDIV_D] = RvOpInfo{RvOpInfo::R_type, "FDIV.D"},
[RISCV_FSQRT_S] = RvOpInfo{RvOpInfo::R2_type, "FSQRT.S"},
[RISCV_FSQRT_D] = RvOpInfo{RvOpInfo::R2_type, "FSQRT.D"},
[RISCV_FMADD_S] = RvOpInfo{RvOpInfo::R4_type, "FMADD.S"},
[RISCV_FMADD_D] = RvOpInfo{RvOpInfo::R4_type, "FMADD.D"},
[RISCV_FMSUB_S] = RvOpInfo{RvOpInfo::R4_type, "FMSUB.S"},
[RISCV_FMSUB_D] = RvOpInfo{RvOpInfo::R4_type, "FMSUB.D"},
[RISCV_FNMSUB_S] = RvOpInfo{RvOpInfo::R4_type, "FNMSUB.S"},
[RISCV_FNMSUB_D] = RvOpInfo{RvOpInfo::R4_type, "FNMSUB.D"},
[RISCV_FNMADD_S] = RvOpInfo{RvOpInfo::R4_type, "FNMADD.S"},
[RISCV_FNMADD_D] = RvOpInfo{RvOpInfo::R4_type, "FNMADD.D"},
[RISCV_FSGNJ_S] = RvOpInfo{RvOpInfo::R_type, "FSGNJ.S"},
[RISCV_FSGNJ_D] = RvOpInfo{RvOpInfo::R_type, "FSGNJ.D"},
[RISCV_FSGNJN_S] = RvOpInfo{RvOpInfo::R_type, "FSGNJN.S"},
[RISCV_FSGNJN_D] = RvOpInfo{RvOpInfo::R_type, "FSGNJN.D"},
[RISCV_FSGNJX_S] = RvOpInfo{RvOpInfo::R_type, "FSGNJX.S"},
[RISCV_FSGNJX_D] = RvOpInfo{RvOpInfo::R_type, "FSGNJX.D"},
[RISCV_FMIN_S] = RvOpInfo{RvOpInfo::R_type, "FMIN.S"},
[RISCV_FMIN_D] = RvOpInfo{RvOpInfo::R_type, "FMIN.D"},
[RISCV_FMAX_S] = RvOpInfo{RvOpInfo::R_type, "FMAX.S"},
[RISCV_FMAX_D] = RvOpInfo{RvOpInfo::R_type, "FMAX.D"},
[RISCV_FEQ_S] = RvOpInfo{RvOpInfo::R_type, "FEQ.S"},
[RISCV_FEQ_D] = RvOpInfo{RvOpInfo::R_type, "FEQ.D"},
[RISCV_FLT_S] = RvOpInfo{RvOpInfo::R_type, "FLT.S"},
[RISCV_FLT_D] = RvOpInfo{RvOpInfo::R_type, "FLT.D"},
[RISCV_FLE_S] = RvOpInfo{RvOpInfo::R_type, "FLE.S"},
[RISCV_FLE_D] = RvOpInfo{RvOpInfo::R_type, "FLE.D"},
[RISCV_FCLASS_S] = RvOpInfo{RvOpInfo::R2_type, "FCLASS.S"},
[RISCV_FCLASS_D] = RvOpInfo{RvOpInfo::R2_type, "FCLASS.D"},
[RISCV_FMV_D_X] = RvOpInfo{RvOpInfo::R2_type, "FMV.D.X"},
[RISCV_FMV_X_D] = RvOpInfo{RvOpInfo::R2_type, "FMV.X.D"},
[RISCV_FCVT_S_L] = RvOpInfo{RvOpInfo::R2_type, "FCVT.S.L"},
[RISCV_FCVT_D_L] = RvOpInfo{RvOpInfo::R2_type, "FCVT.D.L"},
[RISCV_FCVT_S_LU] = RvOpInfo{RvOpInfo::R2_type, "FCVT.S.LU"},
[RISCV_FCVT_D_LU] = RvOpInfo{RvOpInfo::R2_type, "FCVT.D.LU"},
[RISCV_FCVT_L_S] = RvOpInfo{RvOpInfo::R2_type, "FCVT.L.S"},
[RISCV_FCVT_L_D] = RvOpInfo{RvOpInfo::R2_type, "FCVT.L.D"},
[RISCV_FCVT_LU_S] = RvOpInfo{RvOpInfo::R2_type, "FCVT.LU.S"},
[RISCV_FCVT_LU_D] = RvOpInfo{RvOpInfo::R2_type, "FCVT.LU.D"},

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
[RiscV64PhysicalRegisterDescriptor::f0] = {"f0"},
[RiscV64PhysicalRegisterDescriptor::f1] = {"f1"},
[RiscV64PhysicalRegisterDescriptor::f2] = {"f2"},
[RiscV64PhysicalRegisterDescriptor::f3] = {"f3"},
[RiscV64PhysicalRegisterDescriptor::f4] = {"f4"},
[RiscV64PhysicalRegisterDescriptor::f5] = {"f5"},
[RiscV64PhysicalRegisterDescriptor::f6] = {"f6"},
[RiscV64PhysicalRegisterDescriptor::f7] = {"f7"},
[RiscV64PhysicalRegisterDescriptor::f8] = {"f8"},
[RiscV64PhysicalRegisterDescriptor::f9] = {"f9"},
[RiscV64PhysicalRegisterDescriptor::f10] = {"f10"},
[RiscV64PhysicalRegisterDescriptor::f11] = {"f11"},
[RiscV64PhysicalRegisterDescriptor::f12] = {"f12"},
[RiscV64PhysicalRegisterDescriptor::f13] = {"f13"},
[RiscV64PhysicalRegisterDescriptor::f14] = {"f14"},
[RiscV64PhysicalRegisterDescriptor::f15] = {"f15"},
[RiscV64PhysicalRegisterDescriptor::f16] = {"f16"},
[RiscV64PhysicalRegisterDescriptor::f17] = {"f17"},
[RiscV64PhysicalRegisterDescriptor::f18] = {"f18"},
[RiscV64PhysicalRegisterDescriptor::f19] = {"f19"},
[RiscV64PhysicalRegisterDescriptor::f20] = {"f20"},
[RiscV64PhysicalRegisterDescriptor::f21] = {"f21"},
[RiscV64PhysicalRegisterDescriptor::f22] = {"f22"},
[RiscV64PhysicalRegisterDescriptor::f23] = {"f23"},
[RiscV64PhysicalRegisterDescriptor::f24] = {"f24"},
[RiscV64PhysicalRegisterDescriptor::f25] = {"f25"},
[RiscV64PhysicalRegisterDescriptor::f26] = {"f26"},
[RiscV64PhysicalRegisterDescriptor::f27] = {"f27"},
[RiscV64PhysicalRegisterDescriptor::f28] = {"f28"},
[RiscV64PhysicalRegisterDescriptor::f29] = {"f29"},
[RiscV64PhysicalRegisterDescriptor::f30] = {"f30"},
[RiscV64PhysicalRegisterDescriptor::f31] = {"f31"},
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
    } else if (interval.getReg().type.data_type == MachineDataType::FLOAT) {
        return std::vector<int>({
        RiscV64PhysicalRegisterDescriptor::f0,  RiscV64PhysicalRegisterDescriptor::f1,
        RiscV64PhysicalRegisterDescriptor::f2,  RiscV64PhysicalRegisterDescriptor::f3,
        RiscV64PhysicalRegisterDescriptor::f4,  RiscV64PhysicalRegisterDescriptor::f5,
        RiscV64PhysicalRegisterDescriptor::f6,  RiscV64PhysicalRegisterDescriptor::f7,
        RiscV64PhysicalRegisterDescriptor::f8,  RiscV64PhysicalRegisterDescriptor::f9,
        RiscV64PhysicalRegisterDescriptor::f10, RiscV64PhysicalRegisterDescriptor::f11,
        RiscV64PhysicalRegisterDescriptor::f12, RiscV64PhysicalRegisterDescriptor::f13,
        RiscV64PhysicalRegisterDescriptor::f14, RiscV64PhysicalRegisterDescriptor::f15,
        RiscV64PhysicalRegisterDescriptor::f16, RiscV64PhysicalRegisterDescriptor::f17,
        RiscV64PhysicalRegisterDescriptor::f18, RiscV64PhysicalRegisterDescriptor::f19,
        RiscV64PhysicalRegisterDescriptor::f20, RiscV64PhysicalRegisterDescriptor::f21,
        RiscV64PhysicalRegisterDescriptor::f22, RiscV64PhysicalRegisterDescriptor::f23,
        RiscV64PhysicalRegisterDescriptor::f24, RiscV64PhysicalRegisterDescriptor::f25,
        RiscV64PhysicalRegisterDescriptor::f26, RiscV64PhysicalRegisterDescriptor::f27,
        RiscV64PhysicalRegisterDescriptor::f28, RiscV64PhysicalRegisterDescriptor::f29,
        RiscV64PhysicalRegisterDescriptor::f30, RiscV64PhysicalRegisterDescriptor::f31,
        });
    }
}