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

[RISCV_LI] = RvOpInfo{RvOpInfo::U_type, "LI"},
};

#pragma GCC diagnostic ignored "-Wwritable-strings"
#pragma GCC diagnostic ignored "-Wc99-designator"
struct RiscV64RegisterInfo RiscV64Registers[] = {
[RISCV_x0] = {"x0"},   [RISCV_x1] = {"x1"},           [RISCV_x2] = {"x2"},
[RISCV_x3] = {"x3"},   [RISCV_x4] = {"x4"},           [RISCV_x5] = {"x5"},
[RISCV_x6] = {"x6"},   [RISCV_x7] = {"x7"},           [RISCV_x8] = {"x8"},
[RISCV_x9] = {"x9"},   [RISCV_x10] = {"x10"},         [RISCV_x11] = {"x11"},
[RISCV_x12] = {"x12"}, [RISCV_x13] = {"x13"},         [RISCV_x14] = {"x14"},
[RISCV_x15] = {"x15"}, [RISCV_x16] = {"x16"},         [RISCV_x17] = {"x17"},
[RISCV_x18] = {"x18"}, [RISCV_x19] = {"x19"},         [RISCV_x20] = {"x20"},
[RISCV_x21] = {"x21"}, [RISCV_x22] = {"x22"},         [RISCV_x23] = {"x23"},
[RISCV_x24] = {"x24"}, [RISCV_x25] = {"x25"},         [RISCV_x26] = {"x26"},
[RISCV_x27] = {"x27"}, [RISCV_x28] = {"x28"},         [RISCV_x29] = {"x29"},
[RISCV_x30] = {"x30"}, [RISCV_x31] = {"x31"},         [RISCV_f0] = {"f0"},
[RISCV_f1] = {"f1"},   [RISCV_f2] = {"f2"},           [RISCV_f3] = {"f3"},
[RISCV_f4] = {"f4"},   [RISCV_f5] = {"f5"},           [RISCV_f6] = {"f6"},
[RISCV_f7] = {"f7"},   [RISCV_f8] = {"f8"},           [RISCV_f9] = {"f9"},
[RISCV_f10] = {"f10"}, [RISCV_f11] = {"f11"},         [RISCV_f12] = {"f12"},
[RISCV_f13] = {"f13"}, [RISCV_f14] = {"f14"},         [RISCV_f15] = {"f15"},
[RISCV_f16] = {"f16"}, [RISCV_f17] = {"f17"},         [RISCV_f18] = {"f18"},
[RISCV_f19] = {"f19"}, [RISCV_f20] = {"f20"},         [RISCV_f21] = {"f21"},
[RISCV_f22] = {"f22"}, [RISCV_f23] = {"f23"},         [RISCV_f24] = {"f24"},
[RISCV_f25] = {"f25"}, [RISCV_f26] = {"f26"},         [RISCV_f27] = {"f27"},
[RISCV_f28] = {"f28"}, [RISCV_f29] = {"f29"},         [RISCV_f30] = {"f30"},
[RISCV_f31] = {"f31"}, [RISCV_INVALID] = {"INVALID"}, [RISCV_spilled_in_memory] = {"spilled_in_memory"},
};

std::vector<int> PhysicalRegisters::getValidRegs(LiveInterval interval) {
    if (interval.getReg().type.data_type == MachineDataType::INT) {
        return std::vector<int>({
        RISCV_x1,  RISCV_x2,  RISCV_x3,  RISCV_x4,  RISCV_x5,  RISCV_x6,  RISCV_x7,  RISCV_x8,
        RISCV_x9,  RISCV_x10, RISCV_x11, RISCV_x12, RISCV_x13, RISCV_x14, RISCV_x15, RISCV_x16,
        RISCV_x17, RISCV_x18, RISCV_x19, RISCV_x20, RISCV_x21, RISCV_x22, RISCV_x23, RISCV_x24,
        RISCV_x25, RISCV_x26, RISCV_x27, RISCV_x28, RISCV_x29, RISCV_x30, RISCV_x31,
        });
    } else if (interval.getReg().type.data_type == MachineDataType::FLOAT) {
        return std::vector<int>({
        RISCV_f0,  RISCV_f1,  RISCV_f2,  RISCV_f3,  RISCV_f4,  RISCV_f5,  RISCV_f6,  RISCV_f7,
        RISCV_f8,  RISCV_f9,  RISCV_f10, RISCV_f11, RISCV_f12, RISCV_f13, RISCV_f14, RISCV_f15,
        RISCV_f16, RISCV_f17, RISCV_f18, RISCV_f19, RISCV_f20, RISCV_f21, RISCV_f22, RISCV_f23,
        RISCV_f24, RISCV_f25, RISCV_f26, RISCV_f27, RISCV_f28, RISCV_f29, RISCV_f30, RISCV_f31,
        });
    }
}