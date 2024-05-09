#include "riscv64.h"
#include <assert.h>
RiscV64InstructionConstructor RiscV64InstructionConstructor::instance;
RiscV64InstructionConstructor* rvconstructor = RiscV64InstructionConstructor::GetConstructor();

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
[RISCV_SLL] = RvOpInfo{RvOpInfo::R_type, "sll"},
[RISCV_SLLI] = RvOpInfo{RvOpInfo::I_type, "slli"},
[RISCV_SRL] = RvOpInfo{RvOpInfo::R_type, "srl"},
[RISCV_SRLI] = RvOpInfo{RvOpInfo::I_type, "srli"},
[RISCV_SRA] = RvOpInfo{RvOpInfo::R_type, "sra"},
[RISCV_SRAI] = RvOpInfo{RvOpInfo::I_type, "srai"},
[RISCV_ADD] = RvOpInfo{RvOpInfo::R_type, "add"},
[RISCV_ADDI] = RvOpInfo{RvOpInfo::I_type, "addi"},
[RISCV_SUB] = RvOpInfo{RvOpInfo::R_type, "sub"},
[RISCV_LUI] = RvOpInfo{RvOpInfo::U_type, "lui"},
[RISCV_AUIPC] = RvOpInfo{RvOpInfo::U_type, "auipc"},
[RISCV_XOR] = RvOpInfo{RvOpInfo::R_type, "xor"},
[RISCV_XORI] = RvOpInfo{RvOpInfo::I_type, "xori"},
[RISCV_OR] = RvOpInfo{RvOpInfo::R_type, "or"},
[RISCV_ORI] = RvOpInfo{RvOpInfo::I_type, "ori"},
[RISCV_AND] = RvOpInfo{RvOpInfo::R_type, "and"},
[RISCV_ANDI] = RvOpInfo{RvOpInfo::I_type, "andi"},
[RISCV_SLT] = RvOpInfo{RvOpInfo::R_type, "slt"},
[RISCV_SLTI] = RvOpInfo{RvOpInfo::I_type, "slti"},
[RISCV_SLTU] = RvOpInfo{RvOpInfo::R_type, "sltu"},
[RISCV_SLTIU] = RvOpInfo{RvOpInfo::I_type, "sltiu"},
[RISCV_BEQ] = RvOpInfo{RvOpInfo::B_type, "beq"},
[RISCV_BNE] = RvOpInfo{RvOpInfo::B_type, "bne"},
[RISCV_BLT] = RvOpInfo{RvOpInfo::B_type, "blt"},
[RISCV_BGE] = RvOpInfo{RvOpInfo::B_type, "bge"},
[RISCV_BLTU] = RvOpInfo{RvOpInfo::B_type, "bltu"},
[RISCV_BGEU] = RvOpInfo{RvOpInfo::B_type, "bgeu"},
[RISCV_JAL] = RvOpInfo{RvOpInfo::J_type, "jal"},
[RISCV_JALR] = RvOpInfo{RvOpInfo::I_type, "jalr"},
[RISCV_LB] = RvOpInfo{RvOpInfo::I_type, "lb"},
[RISCV_LH] = RvOpInfo{RvOpInfo::I_type, "lh"},
[RISCV_LBU] = RvOpInfo{RvOpInfo::I_type, "lbu"},
[RISCV_LHU] = RvOpInfo{RvOpInfo::I_type, "lhu"},
[RISCV_LW] = RvOpInfo{RvOpInfo::I_type, "lw"},
[RISCV_SB] = RvOpInfo{RvOpInfo::S_type, "sb"},
[RISCV_SH] = RvOpInfo{RvOpInfo::S_type, "sh"},
[RISCV_SW] = RvOpInfo{RvOpInfo::S_type, "sw"},
[RISCV_SLLW] = RvOpInfo{RvOpInfo::R_type, "sllw"},
[RISCV_SLLIW] = RvOpInfo{RvOpInfo::I_type, "slliw"},
[RISCV_SRLW] = RvOpInfo{RvOpInfo::R_type, "srlw"},
[RISCV_SRLIW] = RvOpInfo{RvOpInfo::I_type, "srliw"},
[RISCV_SRAW] = RvOpInfo{RvOpInfo::R_type, "sraw"},
[RISCV_SRAIW] = RvOpInfo{RvOpInfo::I_type, "sraiw"},
[RISCV_ADDW] = RvOpInfo{RvOpInfo::R_type, "addw"},
[RISCV_ADDIW] = RvOpInfo{RvOpInfo::I_type, "addiw"},
[RISCV_SUBW] = RvOpInfo{RvOpInfo::R_type, "subw"},
[RISCV_LWU] = RvOpInfo{RvOpInfo::I_type, "lwu"},
[RISCV_LD] = RvOpInfo{RvOpInfo::I_type, "ld"},
[RISCV_SD] = RvOpInfo{RvOpInfo::S_type, "sd"},

[RISCV_MUL] = RvOpInfo{RvOpInfo::R_type, "mul"},
[RISCV_MULH] = RvOpInfo{RvOpInfo::R_type, "mulh"},
[RISCV_MULHSU] = RvOpInfo{RvOpInfo::R_type, "mulhsu"},
[RISCV_MULHU] = RvOpInfo{RvOpInfo::R_type, "mulhu"},
[RISCV_DIV] = RvOpInfo{RvOpInfo::R_type, "div"},
[RISCV_DIVU] = RvOpInfo{RvOpInfo::R_type, "divu"},
[RISCV_REM] = RvOpInfo{RvOpInfo::R_type, "rem"},
[RISCV_REMU] = RvOpInfo{RvOpInfo::R_type, "remu"},
[RISCV_MULW] = RvOpInfo{RvOpInfo::R_type, "mulw"},
[RISCV_DIVW] = RvOpInfo{RvOpInfo::R_type, "divw"},
[RISCV_REMW] = RvOpInfo{RvOpInfo::R_type, "remw"},
[RISCV_REMUW] = RvOpInfo{RvOpInfo::R_type, "remuw"},

[RISCV_FMV_W_X] = RvOpInfo{RvOpInfo::R2_type, "fmv.w.x"},
[RISCV_FMV_X_W] = RvOpInfo{RvOpInfo::R2_type, "fmv.x.w"},
[RISCV_FCVT_S_W] = RvOpInfo{RvOpInfo::R2_type, "fcvt.s.w"},
[RISCV_FCVT_D_W] = RvOpInfo{RvOpInfo::R2_type, "fcvt.d.w"},
[RISCV_FCVT_S_WU] = RvOpInfo{RvOpInfo::R2_type, "fcvt.s.wu"},
[RISCV_FCVT_D_WU] = RvOpInfo{RvOpInfo::R2_type, "fcvt.d.wu"},
[RISCV_FCVT_W_S] = RvOpInfo{RvOpInfo::R2_type, "fcvt.w.s"},
[RISCV_FCVT_W_D] = RvOpInfo{RvOpInfo::R2_type, "fcvt.w.d"},
[RISCV_FCVT_WU_S] = RvOpInfo{RvOpInfo::R2_type, "fcvt.wu.s"},
[RISCV_FCVT_WU_D] = RvOpInfo{RvOpInfo::R2_type, "fcvt.wu.d"},
[RISCV_FLW] = RvOpInfo{RvOpInfo::I_type, "flw"},
[RISCV_FLD] = RvOpInfo{RvOpInfo::I_type, "fld"},
[RISCV_FSW] = RvOpInfo{RvOpInfo::S_type, "fsw"},
[RISCV_FSD] = RvOpInfo{RvOpInfo::S_type, "fsd"},
[RISCV_FADD_S] = RvOpInfo{RvOpInfo::R_type, "fadd.s"},
[RISCV_FADD_D] = RvOpInfo{RvOpInfo::R_type, "fadd.d"},
[RISCV_FSUB_S] = RvOpInfo{RvOpInfo::R_type, "fsub.s"},
[RISCV_FSUB_D] = RvOpInfo{RvOpInfo::R_type, "fsub.d"},
[RISCV_FMUL_S] = RvOpInfo{RvOpInfo::R_type, "fmul.s"},
[RISCV_FMUL_D] = RvOpInfo{RvOpInfo::R_type, "fmul.d"},
[RISCV_FDIV_S] = RvOpInfo{RvOpInfo::R_type, "fdiv.s"},
[RISCV_FDIV_D] = RvOpInfo{RvOpInfo::R_type, "fdiv.d"},
[RISCV_FSQRT_S] = RvOpInfo{RvOpInfo::R2_type, "fsqrt.s"},
[RISCV_FSQRT_D] = RvOpInfo{RvOpInfo::R2_type, "fsqrt.d"},
[RISCV_FMADD_S] = RvOpInfo{RvOpInfo::R4_type, "fmadd.s"},
[RISCV_FMADD_D] = RvOpInfo{RvOpInfo::R4_type, "fmadd.d"},
[RISCV_FMSUB_S] = RvOpInfo{RvOpInfo::R4_type, "fmsub.s"},
[RISCV_FMSUB_D] = RvOpInfo{RvOpInfo::R4_type, "fmsub.d"},
[RISCV_FNMSUB_S] = RvOpInfo{RvOpInfo::R4_type, "fnmsub.s"},
[RISCV_FNMSUB_D] = RvOpInfo{RvOpInfo::R4_type, "fnmsub.d"},
[RISCV_FNMADD_S] = RvOpInfo{RvOpInfo::R4_type, "fnmadd.s"},
[RISCV_FNMADD_D] = RvOpInfo{RvOpInfo::R4_type, "fnmadd.d"},
[RISCV_FSGNJ_S] = RvOpInfo{RvOpInfo::R_type, "fsgnj.s"},
[RISCV_FSGNJ_D] = RvOpInfo{RvOpInfo::R_type, "fsgnj.d"},
[RISCV_FSGNJN_S] = RvOpInfo{RvOpInfo::R_type, "fsgnjn.s"},
[RISCV_FSGNJN_D] = RvOpInfo{RvOpInfo::R_type, "fsgnjn.d"},
[RISCV_FSGNJX_S] = RvOpInfo{RvOpInfo::R_type, "fsgnjx.s"},
[RISCV_FSGNJX_D] = RvOpInfo{RvOpInfo::R_type, "fsgnjx.d"},
[RISCV_FMIN_S] = RvOpInfo{RvOpInfo::R_type, "fmin.s"},
[RISCV_FMIN_D] = RvOpInfo{RvOpInfo::R_type, "fmin.d"},
[RISCV_FMAX_S] = RvOpInfo{RvOpInfo::R_type, "fmax.s"},
[RISCV_FMAX_D] = RvOpInfo{RvOpInfo::R_type, "fmax.d"},
[RISCV_FEQ_S] = RvOpInfo{RvOpInfo::R_type, "feq.s"},
[RISCV_FEQ_D] = RvOpInfo{RvOpInfo::R_type, "feq.d"},
[RISCV_FLT_S] = RvOpInfo{RvOpInfo::R_type, "flt.s"},
[RISCV_FLT_D] = RvOpInfo{RvOpInfo::R_type, "flt.d"},
[RISCV_FLE_S] = RvOpInfo{RvOpInfo::R_type, "fle.s"},
[RISCV_FLE_D] = RvOpInfo{RvOpInfo::R_type, "fle.d"},
[RISCV_FCLASS_S] = RvOpInfo{RvOpInfo::R2_type, "fclass.s"},
[RISCV_FCLASS_D] = RvOpInfo{RvOpInfo::R2_type, "fclass.d"},
[RISCV_FMV_D_X] = RvOpInfo{RvOpInfo::R2_type, "fmv.d.x"},
[RISCV_FMV_X_D] = RvOpInfo{RvOpInfo::R2_type, "fmv.x.d"},
[RISCV_FCVT_S_L] = RvOpInfo{RvOpInfo::R2_type, "fcvt.s.l"},
[RISCV_FCVT_D_L] = RvOpInfo{RvOpInfo::R2_type, "fcvt.d.l"},
[RISCV_FCVT_S_LU] = RvOpInfo{RvOpInfo::R2_type, "fcvt.s.lu"},
[RISCV_FCVT_D_LU] = RvOpInfo{RvOpInfo::R2_type, "fcvt.d.lu"},
[RISCV_FCVT_L_S] = RvOpInfo{RvOpInfo::R2_type, "fcvt.l.s"},
[RISCV_FCVT_L_D] = RvOpInfo{RvOpInfo::R2_type, "fcvt.l.d"},
[RISCV_FCVT_LU_S] = RvOpInfo{RvOpInfo::R2_type, "fcvt.lu.s"},
[RISCV_FCVT_LU_D] = RvOpInfo{RvOpInfo::R2_type, "fcvt.lu.d"},

[RISCV_LI] = RvOpInfo{RvOpInfo::U_type, "li"},
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
    } else {
        ERROR("Unsupported Reg data type");
        return std::vector<int>();
    }
}