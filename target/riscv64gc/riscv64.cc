#include "riscv64.h"
#include <assert.h>
RiscV64InstructionConstructor RiscV64InstructionConstructor::instance;
RiscV64InstructionConstructor *rvconstructor = RiscV64InstructionConstructor::GetConstructor();

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
    case RvOpInfo::CALL_type:
        return GetCall_typeReadreg();
    }
    ERROR("Unexpected insformat");
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
    case RvOpInfo::CALL_type:
        return GetCall_typeWritereg();
    }
    ERROR("Unexpected insformat");
}

void RiscV64Function::MoveAllPredecessorsBranchTargetToNewBlock(int original_target, int new_target) {
    TODO("Branch Target Set");
}
void RiscV64Function::MoveOnePredecessorBranchTargetToNewBlock(int pre, int original_target, int new_target) {
    // Log("%d %d %d",pre,original_target,new_target);
    auto preblock = mcfg->GetNodeByBlockId(pre)->Mblock;
    bool jal_gotcha = false;
    for (auto it = preblock->ReverseBegin(); it != preblock->ReverseEnd(); ++it) {
        auto ins = *it;
        if (ins->arch == MachineBaseInstruction::COMMENT || ins->arch == MachineBaseInstruction::PHI) {
            continue;
        }
        if (ins->arch == MachineBaseInstruction::COPY) {
            if (jal_gotcha) {
                break;
            }
            continue;
        }
        auto rvins = (RiscV64Instruction *)ins;
        if (rvins->getOpcode() == RISCV_JALR) {
            break;
        }
        if (rvins->getOpcode() == RISCV_JAL) {
            // Log("%d %d",preblock->getLabelId(),rvins->getLabel().jmp_label_id);
            if (rvins->getLabel().jmp_label_id == original_target) {
                rvins->setLabel(RiscVLabel(new_target));
            }
            jal_gotcha = true;
            continue;
        }
        if (OpTable[rvins->getOpcode()].ins_formattype == RvOpInfo::B_type) {
            // Log("%d %d",preblock->getLabelId(),rvins->getLabel().jmp_label_id);
            if (rvins->getLabel().jmp_label_id == original_target) {
                rvins->setLabel(RiscVLabel(new_target, rvins->getLabel().seq_label_id));
            } else if (rvins->getLabel().seq_label_id == original_target) {
                rvins->setLabel(RiscVLabel(rvins->getLabel().jmp_label_id, new_target));
            }
            break;
        } else if (jal_gotcha) {
            break;
        }
    }
}
void RiscV64Function::YankBranchInstructionToNewBlock(int original_block_id, int new_block) {
    TODO("Branch Target Set");
}
void RiscV64Function::AppendUncondBranchInstructionToNewBlock(int new_block, int br_target) {
    auto newblock = mcfg->GetNodeByBlockId(new_block)->Mblock;
    rvconstructor->DisableSchedule();
    newblock->push_back(rvconstructor->ConstructJLabel(RISCV_JAL, GetPhysicalReg(RISCV_x0), RiscVLabel(br_target)));
    rvconstructor->EnableSchedule();
}

struct RvOpInfo OpTable[] = {[RISCV_SLL] = RvOpInfo{RvOpInfo::R_type, "sll", 1},
                             [RISCV_SLLI] = RvOpInfo{RvOpInfo::I_type, "slli", 1},
                             [RISCV_SRL] = RvOpInfo{RvOpInfo::R_type, "srl", 1},
                             [RISCV_SRLI] = RvOpInfo{RvOpInfo::I_type, "srli", 1},
                             [RISCV_SRA] = RvOpInfo{RvOpInfo::R_type, "sra", 1},
                             [RISCV_SRAI] = RvOpInfo{RvOpInfo::I_type, "srai", 1},
                             [RISCV_ADD] = RvOpInfo{RvOpInfo::R_type, "add", 1},
                             [RISCV_ADDI] = RvOpInfo{RvOpInfo::I_type, "addi", 1},
                             [RISCV_SUB] = RvOpInfo{RvOpInfo::R_type, "sub", 1},
                             [RISCV_LUI] = RvOpInfo{RvOpInfo::U_type, "lui", 1},
                             [RISCV_AUIPC] = RvOpInfo{RvOpInfo::U_type, "auipc", 1},
                             [RISCV_XOR] = RvOpInfo{RvOpInfo::R_type, "xor", 1},
                             [RISCV_XORI] = RvOpInfo{RvOpInfo::I_type, "xori", 1},
                             [RISCV_OR] = RvOpInfo{RvOpInfo::R_type, "or", 1},
                             [RISCV_ORI] = RvOpInfo{RvOpInfo::I_type, "ori", 1},
                             [RISCV_AND] = RvOpInfo{RvOpInfo::R_type, "and", 1},
                             [RISCV_ANDI] = RvOpInfo{RvOpInfo::I_type, "andi", 1},
                             [RISCV_SLT] = RvOpInfo{RvOpInfo::R_type, "slt", 1},
                             [RISCV_SLTI] = RvOpInfo{RvOpInfo::I_type, "slti", 1},
                             [RISCV_SLTU] = RvOpInfo{RvOpInfo::R_type, "sltu", 1},
                             [RISCV_SLTIU] = RvOpInfo{RvOpInfo::I_type, "sltiu", 1},
                             [RISCV_BEQ] = RvOpInfo{RvOpInfo::B_type, "beq", 1},
                             [RISCV_BNE] = RvOpInfo{RvOpInfo::B_type, "bne", 1},
                             [RISCV_BLT] = RvOpInfo{RvOpInfo::B_type, "blt", 1},
                             [RISCV_BGE] = RvOpInfo{RvOpInfo::B_type, "bge", 1},
                             [RISCV_BLTU] = RvOpInfo{RvOpInfo::B_type, "bltu", 1},
                             [RISCV_BGEU] = RvOpInfo{RvOpInfo::B_type, "bgeu", 1},
                             [RISCV_JAL] = RvOpInfo{RvOpInfo::J_type, "jal", 1},
                             [RISCV_JALR] = RvOpInfo{RvOpInfo::I_type, "jalr", 1},
                             [RISCV_LB] = RvOpInfo{RvOpInfo::I_type, "lb", 3},
                             [RISCV_LH] = RvOpInfo{RvOpInfo::I_type, "lh", 3},
                             [RISCV_LBU] = RvOpInfo{RvOpInfo::I_type, "lbu", 3},
                             [RISCV_LHU] = RvOpInfo{RvOpInfo::I_type, "lhu", 3},
                             [RISCV_LW] = RvOpInfo{RvOpInfo::I_type, "lw", 3},
                             [RISCV_SB] = RvOpInfo{RvOpInfo::S_type, "sb", 1},
                             [RISCV_SH] = RvOpInfo{RvOpInfo::S_type, "sh", 1},
                             [RISCV_SW] = RvOpInfo{RvOpInfo::S_type, "sw", 1},
                             [RISCV_SLLW] = RvOpInfo{RvOpInfo::R_type, "sllw", 1},
                             [RISCV_SLLIW] = RvOpInfo{RvOpInfo::I_type, "slliw", 1},
                             [RISCV_SRLW] = RvOpInfo{RvOpInfo::R_type, "srlw", 1},
                             [RISCV_SRLIW] = RvOpInfo{RvOpInfo::I_type, "srliw", 1},
                             [RISCV_SRAW] = RvOpInfo{RvOpInfo::R_type, "sraw", 1},
                             [RISCV_SRAIW] = RvOpInfo{RvOpInfo::I_type, "sraiw", 1},
                             [RISCV_ADDW] = RvOpInfo{RvOpInfo::R_type, "addw", 1},
                             [RISCV_ADDIW] = RvOpInfo{RvOpInfo::I_type, "addiw", 1},
                             [RISCV_SUBW] = RvOpInfo{RvOpInfo::R_type, "subw", 1},
                             [RISCV_LWU] = RvOpInfo{RvOpInfo::I_type, "lwu", 3},
                             [RISCV_LD] = RvOpInfo{RvOpInfo::I_type, "ld", 3},
                             [RISCV_SD] = RvOpInfo{RvOpInfo::S_type, "sd", 1},

                             [RISCV_MUL] = RvOpInfo{RvOpInfo::R_type, "mul", 3},
                             [RISCV_MULH] = RvOpInfo{RvOpInfo::R_type, "mulh", 3},
                             [RISCV_MULHSU] = RvOpInfo{RvOpInfo::R_type, "mulhsu", 3},
                             [RISCV_MULHU] = RvOpInfo{RvOpInfo::R_type, "mulhu", 3},
                             [RISCV_DIV] = RvOpInfo{RvOpInfo::R_type, "div", 30},
                             [RISCV_DIVU] = RvOpInfo{RvOpInfo::R_type, "divu", 30},
                             [RISCV_REM] = RvOpInfo{RvOpInfo::R_type, "rem", 30},
                             [RISCV_REMU] = RvOpInfo{RvOpInfo::R_type, "remu", 30},
                             [RISCV_MULW] = RvOpInfo{RvOpInfo::R_type, "mulw", 3},
                             [RISCV_DIVW] = RvOpInfo{RvOpInfo::R_type, "divw", 30},
                             [RISCV_REMW] = RvOpInfo{RvOpInfo::R_type, "remw", 30},
                             [RISCV_REMUW] = RvOpInfo{RvOpInfo::R_type, "remuw", 30},

                             [RISCV_FMV_W_X] = RvOpInfo{RvOpInfo::R2_type, "fmv.w.x", 2},
                             [RISCV_FMV_X_W] = RvOpInfo{RvOpInfo::R2_type, "fmv.x.w", 1},
                             [RISCV_FCVT_S_W] = RvOpInfo{RvOpInfo::R2_type, "fcvt.s.w", 2},
                             [RISCV_FCVT_D_W] = RvOpInfo{RvOpInfo::R2_type, "fcvt.d.w", 2},
                             [RISCV_FCVT_S_WU] = RvOpInfo{RvOpInfo::R2_type, "fcvt.s.wu", 2},
                             [RISCV_FCVT_D_WU] = RvOpInfo{RvOpInfo::R2_type, "fcvt.d.wu", 2},
                             [RISCV_FCVT_W_S] = RvOpInfo{RvOpInfo::R2_type, "fcvt.w.s", 4},
                             [RISCV_FCVT_W_D] = RvOpInfo{RvOpInfo::R2_type, "fcvt.w.d", 4},
                             [RISCV_FCVT_WU_S] = RvOpInfo{RvOpInfo::R2_type, "fcvt.wu.s", 4},
                             [RISCV_FCVT_WU_D] = RvOpInfo{RvOpInfo::R2_type, "fcvt.wu.d", 4},
                             [RISCV_FLW] = RvOpInfo{RvOpInfo::I_type, "flw", 2},
                             [RISCV_FLD] = RvOpInfo{RvOpInfo::I_type, "fld", 2},
                             [RISCV_FSW] = RvOpInfo{RvOpInfo::S_type, "fsw", 4},
                             [RISCV_FSD] = RvOpInfo{RvOpInfo::S_type, "fsd", 4},
                             [RISCV_FADD_S] = RvOpInfo{RvOpInfo::R_type, "fadd.s", 5},
                             [RISCV_FADD_D] = RvOpInfo{RvOpInfo::R_type, "fadd.d", 7},
                             [RISCV_FSUB_S] = RvOpInfo{RvOpInfo::R_type, "fsub.s", 5},
                             [RISCV_FSUB_D] = RvOpInfo{RvOpInfo::R_type, "fsub.d", 7},
                             [RISCV_FMUL_S] = RvOpInfo{RvOpInfo::R_type, "fmul.s", 5},
                             [RISCV_FMUL_D] = RvOpInfo{RvOpInfo::R_type, "fmul.d", 7},
                             [RISCV_FDIV_S] = RvOpInfo{RvOpInfo::R_type, "fdiv.s", 30},
                             [RISCV_FDIV_D] = RvOpInfo{RvOpInfo::R_type, "fdiv.d", 30},
                             [RISCV_FSQRT_S] = RvOpInfo{RvOpInfo::R2_type, "fsqrt.s", 15},
                             [RISCV_FSQRT_D] = RvOpInfo{RvOpInfo::R2_type, "fsqrt.d", 30},
                             [RISCV_FMADD_S] = RvOpInfo{RvOpInfo::R4_type, "fmadd.s", 5},
                             [RISCV_FMADD_D] = RvOpInfo{RvOpInfo::R4_type, "fmadd.d", 7},
                             [RISCV_FMSUB_S] = RvOpInfo{RvOpInfo::R4_type, "fmsub.s", 5},
                             [RISCV_FMSUB_D] = RvOpInfo{RvOpInfo::R4_type, "fmsub.d", 7},
                             [RISCV_FNMSUB_S] = RvOpInfo{RvOpInfo::R4_type, "fnmsub.s", 5},
                             [RISCV_FNMSUB_D] = RvOpInfo{RvOpInfo::R4_type, "fnmsub.d", 7},
                             [RISCV_FNMADD_S] = RvOpInfo{RvOpInfo::R4_type, "fnmadd.s", 5},
                             [RISCV_FNMADD_D] = RvOpInfo{RvOpInfo::R4_type, "fnmadd.d", 7},
                             [RISCV_FSGNJ_S] = RvOpInfo{RvOpInfo::R_type, "fsgnj.s", 2},
                             [RISCV_FSGNJ_D] = RvOpInfo{RvOpInfo::R_type, "fsgnj.d", 2},
                             [RISCV_FSGNJN_S] = RvOpInfo{RvOpInfo::R_type, "fsgnjn.s", 2},
                             [RISCV_FSGNJN_D] = RvOpInfo{RvOpInfo::R_type, "fsgnjn.d", 2},
                             [RISCV_FSGNJX_S] = RvOpInfo{RvOpInfo::R_type, "fsgnjx.s", 2},
                             [RISCV_FSGNJX_D] = RvOpInfo{RvOpInfo::R_type, "fsgnjx.d", 2},
                             [RISCV_FMIN_S] = RvOpInfo{RvOpInfo::R_type, "fmin.s", 2},
                             [RISCV_FMIN_D] = RvOpInfo{RvOpInfo::R_type, "fmin.d", 2},
                             [RISCV_FMAX_S] = RvOpInfo{RvOpInfo::R_type, "fmax.s", 2},
                             [RISCV_FMAX_D] = RvOpInfo{RvOpInfo::R_type, "fmax.d", 2},
                             [RISCV_FEQ_S] = RvOpInfo{RvOpInfo::R_type, "feq.s", 4},
                             [RISCV_FEQ_D] = RvOpInfo{RvOpInfo::R_type, "feq.d", 4},
                             [RISCV_FLT_S] = RvOpInfo{RvOpInfo::R_type, "flt.s", 4},
                             [RISCV_FLT_D] = RvOpInfo{RvOpInfo::R_type, "flt.d", 4},
                             [RISCV_FLE_S] = RvOpInfo{RvOpInfo::R_type, "fle.s", 4},
                             [RISCV_FLE_D] = RvOpInfo{RvOpInfo::R_type, "fle.d", 4},
                             [RISCV_FCLASS_S] = RvOpInfo{RvOpInfo::R2_type, "fclass.s", 4},
                             [RISCV_FCLASS_D] = RvOpInfo{RvOpInfo::R2_type, "fclass.d", 4},
                             [RISCV_FMV_D_X] = RvOpInfo{RvOpInfo::R2_type, "fmv.d.x", 6},
                             [RISCV_FMV_X_D] = RvOpInfo{RvOpInfo::R2_type, "fmv.x.d", 1},
                             [RISCV_FCVT_S_L] = RvOpInfo{RvOpInfo::R2_type, "fcvt.s.l", 4},
                             [RISCV_FCVT_D_L] = RvOpInfo{RvOpInfo::R2_type, "fcvt.d.l", 6},
                             [RISCV_FCVT_S_LU] = RvOpInfo{RvOpInfo::R2_type, "fcvt.s.lu", 4},
                             [RISCV_FCVT_D_LU] = RvOpInfo{RvOpInfo::R2_type, "fcvt.d.lu", 6},
                             [RISCV_FCVT_L_S] = RvOpInfo{RvOpInfo::R2_type, "fcvt.l.s", 4},
                             [RISCV_FCVT_L_D] = RvOpInfo{RvOpInfo::R2_type, "fcvt.l.d", 4},
                             [RISCV_FCVT_LU_S] = RvOpInfo{RvOpInfo::R2_type, "fcvt.lu.s", 4},
                             [RISCV_FCVT_LU_D] = RvOpInfo{RvOpInfo::R2_type, "fcvt.lu.d", 4},

                             [RISCV_LI] = RvOpInfo{RvOpInfo::U_type, "li", 1},
                             [RISCV_CALL] = RvOpInfo{RvOpInfo::CALL_type, "call", 1},

                             [RISCV_BGT] = RvOpInfo{RvOpInfo::B_type, "bgt", 1},
                             [RISCV_BLE] = RvOpInfo{RvOpInfo::B_type, "ble", 1},
                             [RISCV_BGTU] = RvOpInfo{RvOpInfo::B_type, "bgtu", 1},
                             [RISCV_BLEU] = RvOpInfo{RvOpInfo::B_type, "bleu", 1},

                             [RISCV_FMV_S] = RvOpInfo{RvOpInfo::R2_type, "fmv.s", 2},
                             [RISCV_FMV_D] = RvOpInfo{RvOpInfo::R2_type, "fmv.d", 2},

                             [RISCV_SH1ADD] = RvOpInfo{RvOpInfo::R_type, "sh1add", 1},
                             [RISCV_SH2ADD] = RvOpInfo{RvOpInfo::R_type, "sh2add", 1},
                             [RISCV_SH3ADD] = RvOpInfo{RvOpInfo::R_type, "sh3add", 1},

                             [RISCV_SH1ADDUW] = RvOpInfo{RvOpInfo::R_type, "sh1add.uw", 1},
                             [RISCV_SH2ADDUW] = RvOpInfo{RvOpInfo::R_type, "sh2add.uw", 1},
                             [RISCV_SH3ADDUW] = RvOpInfo{RvOpInfo::R_type, "sh3add.uw", 1},

                             [RISCV_MIN] = RvOpInfo{RvOpInfo::R_type, "min", 1},
                             [RISCV_MAX] = RvOpInfo{RvOpInfo::R_type, "max", 1},
                             [RISCV_MINU] = RvOpInfo{RvOpInfo::R_type, "minu", 1},
                             [RISCV_MAXU] = RvOpInfo{RvOpInfo::R_type, "maxu", 1},
                             
                             [RISCV_FCVT_D_S] = RvOpInfo{RvOpInfo::R2_type, "fcvt.d.s", 2},
                             [RISCV_ZEXT_W] = RvOpInfo{RvOpInfo::R2_type, "zext.w", 1}};

#pragma GCC diagnostic ignored "-Wwritable-strings"
#pragma GCC diagnostic ignored "-Wc99-designator"
struct RiscV64RegisterInfo RiscV64Registers[] = {
[RISCV_x0] = {"x0"},    [RISCV_x1] = {"ra"},           [RISCV_x2] = {"sp"},
[RISCV_x3] = {"gp"},    [RISCV_x4] = {"tp"},           [RISCV_x5] = {"t0"},
[RISCV_x6] = {"t1"},    [RISCV_x7] = {"t2"},           [RISCV_x8] = {"fp"},
[RISCV_x9] = {"s1"},    [RISCV_x10] = {"a0"},          [RISCV_x11] = {"a1"},
[RISCV_x12] = {"a2"},   [RISCV_x13] = {"a3"},          [RISCV_x14] = {"a4"},
[RISCV_x15] = {"a5"},   [RISCV_x16] = {"a6"},          [RISCV_x17] = {"a7"},
[RISCV_x18] = {"s2"},   [RISCV_x19] = {"s3"},          [RISCV_x20] = {"s4"},
[RISCV_x21] = {"s5"},   [RISCV_x22] = {"s6"},          [RISCV_x23] = {"s7"},
[RISCV_x24] = {"s8"},   [RISCV_x25] = {"s9"},          [RISCV_x26] = {"s10"},
[RISCV_x27] = {"s11"},  [RISCV_x28] = {"t3"},          [RISCV_x29] = {"t4"},
[RISCV_x30] = {"t5"},   [RISCV_x31] = {"t6"},          [RISCV_f0] = {"ft0"},
[RISCV_f1] = {"ft1"},   [RISCV_f2] = {"ft2"},          [RISCV_f3] = {"ft3"},
[RISCV_f4] = {"ft4"},   [RISCV_f5] = {"ft5"},          [RISCV_f6] = {"ft6"},
[RISCV_f7] = {"ft7"},   [RISCV_f8] = {"fs0"},          [RISCV_f9] = {"fs1"},
[RISCV_f10] = {"fa0"},  [RISCV_f11] = {"fa1"},         [RISCV_f12] = {"fa2"},
[RISCV_f13] = {"fa3"},  [RISCV_f14] = {"fa4"},         [RISCV_f15] = {"fa5"},
[RISCV_f16] = {"fa6"},  [RISCV_f17] = {"fa7"},         [RISCV_f18] = {"fs2"},
[RISCV_f19] = {"fs3"},  [RISCV_f20] = {"fs4"},         [RISCV_f21] = {"fs5"},
[RISCV_f22] = {"fs6"},  [RISCV_f23] = {"fs7"},         [RISCV_f24] = {"fs8"},
[RISCV_f25] = {"fs9"},  [RISCV_f26] = {"fs10"},        [RISCV_f27] = {"fs11"},
[RISCV_f28] = {"ft8"},  [RISCV_f29] = {"ft9"},         [RISCV_f30] = {"ft10"},
[RISCV_f31] = {"ft11"}, [RISCV_INVALID] = {"INVALID"}, [RISCV_spilled_in_memory] = {"spilled_in_memory"},
};
Register RISCVregs[] = {
Register(false, RISCV_x0, INT64),    Register(false, RISCV_x1, INT64),    Register(false, RISCV_x2, INT64),
Register(false, RISCV_x3, INT64),    Register(false, RISCV_x4, INT64),    Register(false, RISCV_x5, INT64),
Register(false, RISCV_x6, INT64),    Register(false, RISCV_x7, INT64),    Register(false, RISCV_x8, INT64),
Register(false, RISCV_x9, INT64),    Register(false, RISCV_x10, INT64),   Register(false, RISCV_x11, INT64),
Register(false, RISCV_x12, INT64),   Register(false, RISCV_x13, INT64),   Register(false, RISCV_x14, INT64),
Register(false, RISCV_x15, INT64),   Register(false, RISCV_x16, INT64),   Register(false, RISCV_x17, INT64),
Register(false, RISCV_x18, INT64),   Register(false, RISCV_x19, INT64),   Register(false, RISCV_x20, INT64),
Register(false, RISCV_x21, INT64),   Register(false, RISCV_x22, INT64),   Register(false, RISCV_x23, INT64),
Register(false, RISCV_x24, INT64),   Register(false, RISCV_x25, INT64),   Register(false, RISCV_x26, INT64),
Register(false, RISCV_x27, INT64),   Register(false, RISCV_x28, INT64),   Register(false, RISCV_x29, INT64),
Register(false, RISCV_x30, INT64),   Register(false, RISCV_x31, INT64),   Register(false, RISCV_f0, FLOAT64),
Register(false, RISCV_f1, FLOAT64),  Register(false, RISCV_f2, FLOAT64),  Register(false, RISCV_f3, FLOAT64),
Register(false, RISCV_f4, FLOAT64),  Register(false, RISCV_f5, FLOAT64),  Register(false, RISCV_f6, FLOAT64),
Register(false, RISCV_f7, FLOAT64),  Register(false, RISCV_f8, FLOAT64),  Register(false, RISCV_f9, FLOAT64),
Register(false, RISCV_f10, FLOAT64), Register(false, RISCV_f11, FLOAT64), Register(false, RISCV_f12, FLOAT64),
Register(false, RISCV_f13, FLOAT64), Register(false, RISCV_f14, FLOAT64), Register(false, RISCV_f15, FLOAT64),
Register(false, RISCV_f16, FLOAT64), Register(false, RISCV_f17, FLOAT64), Register(false, RISCV_f18, FLOAT64),
Register(false, RISCV_f19, FLOAT64), Register(false, RISCV_f20, FLOAT64), Register(false, RISCV_f21, FLOAT64),
Register(false, RISCV_f22, FLOAT64), Register(false, RISCV_f23, FLOAT64), Register(false, RISCV_f24, FLOAT64),
Register(false, RISCV_f25, FLOAT64), Register(false, RISCV_f26, FLOAT64), Register(false, RISCV_f27, FLOAT64),
Register(false, RISCV_f28, FLOAT64), Register(false, RISCV_f29, FLOAT64), Register(false, RISCV_f30, FLOAT64),
Register(false, RISCV_f31, FLOAT64),
};
std::vector<int> RiscV64Register::getValidRegs(LiveInterval interval) {
    if (interval.getReg().type.data_type == MachineDataType::INT) {
        if (interval.getReg().save_across_call == false) {
            return std::vector<int>({
            RISCV_t0, RISCV_t1, RISCV_t2, RISCV_t3, RISCV_t4, RISCV_t5,  RISCV_t6,  RISCV_a0, RISCV_a1, RISCV_a2,
            RISCV_a3, RISCV_a4, RISCV_a5, RISCV_a6, RISCV_a7, RISCV_s0,  RISCV_s1,  RISCV_s2, RISCV_s3, RISCV_s4,
            RISCV_s5, RISCV_s6, RISCV_s7, RISCV_s8, RISCV_s9, RISCV_s10, RISCV_s11, RISCV_ra,
            });
        } else {
            return std::vector<int>({
            RISCV_s1,
            RISCV_s2,
            RISCV_s3,
            RISCV_s4,
            RISCV_s5,
            RISCV_s6,
            RISCV_s7,
            RISCV_s8,
            RISCV_s9,
            RISCV_s10,
            RISCV_s11,
            RISCV_s0,
            });
        }
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

Register RiscV64Spiller::GenerateReadCode(std::list<MachineBaseInstruction *>::iterator &it, int raw_stk_offset,
                                          MachineDataType type) {
    auto read_mid_reg = function->GetNewRegister(type.data_type, type.data_length);
    // missing lowerimm
    // missing stack size adjust
    int offset = raw_stk_offset + function->GetStackOffset();
    // cur_block->insert(it, rvconstructor->ConstructComment("Read Spill\n"));
    if (offset <= 2047 && offset >= -2048) {
        if (type == INT64) {
            cur_block->insert(it, rvconstructor->ConstructIImm(RISCV_LD, read_mid_reg, GetPhysicalReg(RISCV_sp),
                                                               offset));    // insert load
        } else if (type == FLOAT64) {
            cur_block->insert(it,
                              rvconstructor->ConstructIImm(RISCV_FLD, read_mid_reg, GetPhysicalReg(RISCV_sp), offset));
        }
    } else {
        auto imm_reg = function->GetNewRegister(INT64.data_type, INT64.data_length);
        auto offset_mid_reg = function->GetNewRegister(INT64.data_type, INT64.data_length);
        cur_block->insert(it, rvconstructor->ConstructUImm(RISCV_LI, imm_reg, offset));
        cur_block->insert(it, rvconstructor->ConstructR(RISCV_ADD, offset_mid_reg, GetPhysicalReg(RISCV_sp), imm_reg));
        if (type == INT64) {
            cur_block->insert(it, rvconstructor->ConstructIImm(RISCV_LD, read_mid_reg, offset_mid_reg, 0));
        } else if (type == FLOAT64) {
            cur_block->insert(it, rvconstructor->ConstructIImm(RISCV_FLD, read_mid_reg, offset_mid_reg, 0));
        }
    }
    return read_mid_reg;
}

Register RiscV64Spiller::GenerateWriteCode(std::list<MachineBaseInstruction *>::iterator &it, int raw_stk_offset,
                                           MachineDataType type) {
    auto write_mid_reg = function->GetNewRegister(type.data_type, type.data_length);
    int offset = raw_stk_offset + function->GetStackOffset();
    ++it;
    // cur_block->insert(it, rvconstructor->ConstructComment("Write Spill\n"));
    if (offset <= 2047 && offset >= -2048) {
        if (type == INT64) {
            cur_block->insert(it, rvconstructor->ConstructSImm(RISCV_SD, write_mid_reg, GetPhysicalReg(RISCV_sp),
                                                               offset));    // insert store
        } else if (type == FLOAT64) {
            cur_block->insert(it, rvconstructor->ConstructSImm(RISCV_FSD, write_mid_reg, GetPhysicalReg(RISCV_sp),
                                                               offset));    // insert store
        }
    } else {
        auto imm_reg = function->GetNewRegister(INT64.data_type, INT64.data_length);
        auto offset_mid_reg = function->GetNewRegister(INT64.data_type, INT64.data_length);
        cur_block->insert(it, rvconstructor->ConstructUImm(RISCV_LI, imm_reg, offset));
        cur_block->insert(it, rvconstructor->ConstructR(RISCV_ADD, offset_mid_reg, GetPhysicalReg(RISCV_sp), imm_reg));
        if (type == INT64) {
            cur_block->insert(it, rvconstructor->ConstructSImm(RISCV_SD, write_mid_reg, offset_mid_reg, 0));
        } else if (type == FLOAT64) {
            cur_block->insert(it, rvconstructor->ConstructSImm(RISCV_FSD, write_mid_reg, offset_mid_reg, 0));
        }
    }
    --it;
    return write_mid_reg;
}

void RiscV64Spiller::GenerateCopyToStackCode(std::list<MachineBaseInstruction *>::iterator &it, int raw_stk_offset,
                                             Register reg, MachineDataType type) {
    int offset = raw_stk_offset + function->GetStackOffset();
    // cur_block->insert(it, rvconstructor->ConstructComment("Write Spill\n"));
    if (offset <= 2047 && offset >= -2048) {
        if (type == INT64) {
            cur_block->insert(
            it, rvconstructor->ConstructSImm(RISCV_SD, reg, GetPhysicalReg(RISCV_sp), offset));    // insert store
        } else if (type == FLOAT64) {
            cur_block->insert(
            it, rvconstructor->ConstructSImm(RISCV_FSD, reg, GetPhysicalReg(RISCV_sp), offset));    // insert store
        }
    } else {
        auto imm_reg = function->GetNewRegister(INT64.data_type, INT64.data_length);
        auto offset_mid_reg = function->GetNewRegister(INT64.data_type, INT64.data_length);
        cur_block->insert(it, rvconstructor->ConstructUImm(RISCV_LI, imm_reg, offset));
        cur_block->insert(it, rvconstructor->ConstructR(RISCV_ADD, offset_mid_reg, GetPhysicalReg(RISCV_sp), imm_reg));
        if (type == INT64) {
            cur_block->insert(it, rvconstructor->ConstructSImm(RISCV_SD, reg, offset_mid_reg, 0));
        } else if (type == FLOAT64) {
            cur_block->insert(it, rvconstructor->ConstructSImm(RISCV_FSD, reg, offset_mid_reg, 0));
        }
    }
}
void RiscV64Spiller::GenerateCopyFromStackCode(std::list<MachineBaseInstruction *>::iterator &it, int raw_stk_offset,
                                               Register reg, MachineDataType type) {
    int offset = raw_stk_offset + function->GetStackOffset();
    // cur_block->insert(it, rvconstructor->ConstructComment("Read Spill\n"));
    if (offset <= 2047 && offset >= -2048) {
        if (type == INT64) {
            cur_block->insert(
            it, rvconstructor->ConstructIImm(RISCV_LD, reg, GetPhysicalReg(RISCV_sp), offset));    // insert load
        } else if (type == FLOAT64) {
            cur_block->insert(
            it, rvconstructor->ConstructIImm(RISCV_FLD, reg, GetPhysicalReg(RISCV_sp), offset));    // insert load
        }
    } else {
        auto imm_reg = function->GetNewRegister(INT64.data_type, INT64.data_length);
        auto offset_mid_reg = function->GetNewRegister(INT64.data_type, INT64.data_length);
        cur_block->insert(it, rvconstructor->ConstructUImm(RISCV_LI, imm_reg, offset));
        cur_block->insert(it, rvconstructor->ConstructR(RISCV_ADD, offset_mid_reg, GetPhysicalReg(RISCV_sp), imm_reg));
        if (type == INT64) {
            cur_block->insert(it, rvconstructor->ConstructIImm(RISCV_LD, reg, offset_mid_reg, 0));
        } else if (type == FLOAT64) {
            cur_block->insert(it, rvconstructor->ConstructIImm(RISCV_FLD, reg, offset_mid_reg, 0));
        }
    }
}

std::list<MachineBaseInstruction *>::iterator RiscV64Block::getInsertBeforeBrIt() {
    auto it = --instructions.end();
    auto jal_pos = it;
    if (instructions.empty()) {
        return instructions.end();
    }
    for (auto it = --instructions.end(); it != --instructions.begin(); --it) {
        if ((*it)->arch == MachineBaseInstruction::COMMENT || (*it)->arch == MachineBaseInstruction::PHI) {
            continue;
        }
        if ((*it)->arch != MachineBaseInstruction::RiscV) {
            return jal_pos;
        }
        // Assert((*it)->arch == MachineBaseInstruction::RiscV);
        auto rvlast = (RiscV64Instruction *)(*it);
        if (rvlast->getOpcode() == RISCV_JALR) {
            return it;
        }
        if (rvlast->getOpcode() == RISCV_JAL) {
            jal_pos = it;
            continue;
        }
        if (OpTable[rvlast->getOpcode()].ins_formattype == RvOpInfo::B_type) {
            return it;
        } else {
            return jal_pos;
        }
    }
    return it;
}

std::vector<int> RiscV64Block::getAllBranch() {
    auto it = --instructions.end();
    // auto jal_pos = it;
    std::vector<int> ret;
    if (instructions.empty()) {
        return ret;
    }
    for (auto it = --instructions.end();it != --instructions.begin(); --it) {
        if ((*it)->arch == MachineBaseInstruction::COMMENT || (*it)->arch == MachineBaseInstruction::PHI) {
            continue;
        }
        if ((*it)->arch != MachineBaseInstruction::RiscV) {
            // return jal_pos;
            return ret;
        }
        // Assert((*it)->arch == MachineBaseInstruction::RiscV);
        auto rvlast = (RiscV64Instruction *)(*it);
        if (rvlast->getOpcode() == RISCV_JALR) {
            return ret;
        }
        if (rvlast->getOpcode() == RISCV_JAL) {
            // jal_pos = it;
            ret.push_back(rvlast->getLabel().jmp_label_id);
            continue;
        }
        if (OpTable[rvlast->getOpcode()].ins_formattype == RvOpInfo::B_type) {
            // return it;
            ret.push_back(rvlast->getLabel().jmp_label_id);
            return ret;
        } else {
            // return jal_pos;
            return ret;
        }
    }
    return ret;
}

static int GetReverseBranchOp(int op) {
    Assert(OpTable[op].ins_formattype == RvOpInfo::B_type);
    switch (op) {
    case RISCV_BEQ:
        return RISCV_BNE;
    case RISCV_BNE:
        return RISCV_BEQ;

    case RISCV_BLT:
        return RISCV_BGE;
    case RISCV_BGE:
        return RISCV_BLT;

    case RISCV_BLTU:
        return RISCV_BGEU;
    case RISCV_BGEU:
        return RISCV_BLTU;

    case RISCV_BGT:
        return RISCV_BLE;
    case RISCV_BLE:
        return RISCV_BGT;

    case RISCV_BGTU:
        return RISCV_BLEU;
    case RISCV_BLEU:
        return RISCV_BGTU;
    }
    ERROR("Unknown Br Opcode");
    return 0;
}

void RiscV64Block::ReverseBranch() {
    auto it = --instructions.end();
    auto jal_pos = it;
    for (; it != instructions.begin(); --it) {
        if ((*it)->arch == MachineBaseInstruction::COMMENT || (*it)->arch == MachineBaseInstruction::PHI) {
            continue;
        }
        if ((*it)->arch != MachineBaseInstruction::RiscV) {
            return;
        }
        // Assert((*it)->arch == MachineBaseInstruction::RiscV);
        auto rvlast = (RiscV64Instruction *)(*it);
        if (rvlast->getOpcode() == RISCV_JALR) {
            return;
        }
        if (rvlast->getOpcode() == RISCV_JAL) {
            jal_pos = it;
            continue;
        }
        if (OpTable[rvlast->getOpcode()].ins_formattype == RvOpInfo::B_type) {
            auto old_label = rvlast->getLabel();
            rvlast->setLabel(RiscVLabel(old_label.seq_label_id, old_label.jmp_label_id));
            rvlast->setOpcode(GetReverseBranchOp(rvlast->getOpcode()), rvlast->getUseLabel());
            auto jal = (RiscV64Instruction *)(*jal_pos);
            auto old_jallabel = jal->getLabel();
            jal->setLabel(RiscVLabel(old_label.jmp_label_id));
            return;
        } else {
            return;
        }
    }
}