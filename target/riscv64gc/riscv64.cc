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
    auto preblock = mcfg->GetNodeByBlockId(pre)->Mblock;
    bool jal_gotcha = false;
    for (auto it = preblock->ReverseBegin();it != preblock->ReverseEnd();++it) {
        auto ins = *it;
        if(ins->arch == MachineBaseInstruction::COMMENT || ins->arch == MachineBaseInstruction::PHI){
            continue;
        }
        if(ins->arch == MachineBaseInstruction::COPY){
            if(jal_gotcha){
                break;
            }
            continue;
        }
        auto rvins = (RiscV64Instruction*)ins;
        if (rvins->getOpcode() == RISCV_JALR){
            break;
        }
        if (rvins->getOpcode() == RISCV_JAL){
            if(rvins->getLabel().jmp_label_id == original_target){
                rvins->setLabel(RiscVLabel(new_target));
            }
            jal_gotcha = true;
        }
        if(OpTable[rvins->getOpcode()].ins_formattype == RvOpInfo::B_type){
            if(rvins->getLabel().jmp_label_id == original_target){
                rvins->setLabel(RiscVLabel(new_target,rvins->getLabel().seq_label_id));
            }else if(rvins->getLabel().seq_label_id == original_target){
                rvins->setLabel(RiscVLabel(rvins->getLabel().jmp_label_id,new_target));
            }
            break;
        }else if(jal_gotcha){
            break;
        }
    }
}
void RiscV64Function::YankBranchInstructionToNewBlock(int original_block_id, int new_block) {
    TODO("Branch Target Set");
}
void RiscV64Function::AppendUncondBranchInstructionToNewBlock(int new_block, int br_target) {
    auto newblock = mcfg->GetNodeByBlockId(new_block)->Mblock;
    newblock->push_back(rvconstructor->ConstructJLabel(RISCV_JAL, GetPhysicalReg(RISCV_x0),RiscVLabel(br_target)));
}

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
[RISCV_CALL] = RvOpInfo{RvOpInfo::CALL_type, "call"},

[RISCV_BGT] = RvOpInfo{RvOpInfo::B_type, "bgt"},
[RISCV_BLE] = RvOpInfo{RvOpInfo::B_type, "ble"},
[RISCV_BGTU] = RvOpInfo{RvOpInfo::B_type, "bgtu"},
[RISCV_BLEU] = RvOpInfo{RvOpInfo::B_type, "bleu"},
};

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
Register(false, RISCV_x0, INT64),     Register(false, RISCV_x1, INT64),     Register(false, RISCV_x2, INT64),
Register(false, RISCV_x3, INT64),     Register(false, RISCV_x4, INT64),     Register(false, RISCV_x5, INT64),
Register(false, RISCV_x6, INT64),     Register(false, RISCV_x7, INT64),     Register(false, RISCV_x8, INT64),
Register(false, RISCV_x9, INT64),     Register(false, RISCV_x10, INT64),    Register(false, RISCV_x11, INT64),
Register(false, RISCV_x12, INT64),    Register(false, RISCV_x13, INT64),    Register(false, RISCV_x14, INT64),
Register(false, RISCV_x15, INT64),    Register(false, RISCV_x16, INT64),    Register(false, RISCV_x17, INT64),
Register(false, RISCV_x18, INT64),    Register(false, RISCV_x19, INT64),    Register(false, RISCV_x20, INT64),
Register(false, RISCV_x21, INT64),    Register(false, RISCV_x22, INT64),    Register(false, RISCV_x23, INT64),
Register(false, RISCV_x24, INT64),    Register(false, RISCV_x25, INT64),    Register(false, RISCV_x26, INT64),
Register(false, RISCV_x27, INT64),    Register(false, RISCV_x28, INT64),    Register(false, RISCV_x29, INT64),
Register(false, RISCV_x30, INT64),    Register(false, RISCV_x31, INT64),    Register(false, RISCV_f0, FLOAT_32),
Register(false, RISCV_f1, FLOAT_32),  Register(false, RISCV_f2, FLOAT_32),  Register(false, RISCV_f3, FLOAT_32),
Register(false, RISCV_f4, FLOAT_32),  Register(false, RISCV_f5, FLOAT_32),  Register(false, RISCV_f6, FLOAT_32),
Register(false, RISCV_f7, FLOAT_32),  Register(false, RISCV_f8, FLOAT_32),  Register(false, RISCV_f9, FLOAT_32),
Register(false, RISCV_f10, FLOAT_32), Register(false, RISCV_f11, FLOAT_32), Register(false, RISCV_f12, FLOAT_32),
Register(false, RISCV_f13, FLOAT_32), Register(false, RISCV_f14, FLOAT_32), Register(false, RISCV_f15, FLOAT_32),
Register(false, RISCV_f16, FLOAT_32), Register(false, RISCV_f17, FLOAT_32), Register(false, RISCV_f18, FLOAT_32),
Register(false, RISCV_f19, FLOAT_32), Register(false, RISCV_f20, FLOAT_32), Register(false, RISCV_f21, FLOAT_32),
Register(false, RISCV_f22, FLOAT_32), Register(false, RISCV_f23, FLOAT_32), Register(false, RISCV_f24, FLOAT_32),
Register(false, RISCV_f25, FLOAT_32), Register(false, RISCV_f26, FLOAT_32), Register(false, RISCV_f27, FLOAT_32),
Register(false, RISCV_f28, FLOAT_32), Register(false, RISCV_f29, FLOAT_32), Register(false, RISCV_f30, FLOAT_32),
Register(false, RISCV_f31, FLOAT_32),
};
std::vector<int> RiscV64Register::getValidRegs(LiveInterval interval) {
    if (interval.getReg().type.data_type == MachineDataType::INT) {
        if (interval.getReg().save_across_call == false) {
            return std::vector<int>({
            RISCV_t0, RISCV_t1, RISCV_t2, RISCV_t3, RISCV_t4, RISCV_t5, RISCV_t6, RISCV_a0,  RISCV_a1,
            RISCV_a2, RISCV_a3, RISCV_a4, RISCV_a5, RISCV_a6, RISCV_a7, RISCV_s0, RISCV_s1,  RISCV_s2,
            RISCV_s3, RISCV_s4, RISCV_s5, RISCV_s6, RISCV_s7, RISCV_s8, RISCV_s9, RISCV_s10, RISCV_s11,
            RISCV_ra,
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

Register RiscV64Spiller::GenerateReadCode(std::list<MachineBaseInstruction *>::iterator&it,int raw_stk_offset,MachineDataType type){
    auto read_mid_reg = function->GetNewRegister(type.data_type,type.data_length);
    // missing lowerimm
    // missing stack size adjust
    int offset = raw_stk_offset + function->GetStackOffset();
    cur_block->insert(it,rvconstructor->ConstructComment("Read Spill\n"));
    if(offset <= 2047 && offset >= -2048){
        if(type == INT64){
            cur_block->insert(it,rvconstructor->ConstructIImm(RISCV_LD,read_mid_reg,GetPhysicalReg(RISCV_sp),offset));// insert load
        } else if(type == FLOAT_32){
            cur_block->insert(it,rvconstructor->ConstructIImm(RISCV_FLW,read_mid_reg,GetPhysicalReg(RISCV_sp),offset));
        }
    }else{
        auto imm_reg = function->GetNewRegister(INT64.data_type,INT64.data_length);
        auto offset_mid_reg = function->GetNewRegister(INT64.data_type,INT64.data_length);
        cur_block->insert(it,rvconstructor->ConstructUImm(RISCV_LI,imm_reg,offset));
        cur_block->insert(it,rvconstructor->ConstructR(RISCV_ADD,offset_mid_reg,GetPhysicalReg(RISCV_sp),imm_reg));
        if(type == INT64){
            cur_block->insert(it,rvconstructor->ConstructIImm(RISCV_LD,read_mid_reg,offset_mid_reg,0));
        }else if(type == FLOAT_32){
            cur_block->insert(it,rvconstructor->ConstructIImm(RISCV_FLW,read_mid_reg,offset_mid_reg,0));
        }
    }
    return read_mid_reg;
}

Register RiscV64Spiller::GenerateWriteCode(std::list<MachineBaseInstruction *>::iterator&it,int raw_stk_offset,MachineDataType type){
    auto write_mid_reg = function->GetNewRegister(type.data_type,type.data_length);
    int offset = raw_stk_offset + function->GetStackOffset();
    ++it;
    cur_block->insert(it,rvconstructor->ConstructComment("Write Spill\n"));
    if(offset <= 2047 && offset >= -2048){
        if(type == INT64){
            cur_block->insert(it,rvconstructor->ConstructSImm(RISCV_SD,write_mid_reg,GetPhysicalReg(RISCV_sp),offset));// insert store
        } else if(type == FLOAT_32){
            cur_block->insert(it,rvconstructor->ConstructSImm(RISCV_FSW,write_mid_reg,GetPhysicalReg(RISCV_sp),offset));// insert store
        }
    }else{
        auto imm_reg = function->GetNewRegister(INT64.data_type,INT64.data_length);
        auto offset_mid_reg = function->GetNewRegister(INT64.data_type,INT64.data_length);
        cur_block->insert(it,rvconstructor->ConstructUImm(RISCV_LI,imm_reg,offset));
        cur_block->insert(it,rvconstructor->ConstructR(RISCV_ADD,offset_mid_reg,GetPhysicalReg(RISCV_sp),imm_reg));
        if(type == INT64){
            cur_block->insert(it,rvconstructor->ConstructSImm(RISCV_SD,write_mid_reg,offset_mid_reg,0));
        }else if(type == FLOAT_32){
            cur_block->insert(it,rvconstructor->ConstructSImm(RISCV_FSW,write_mid_reg,offset_mid_reg,0));
        }
    }
    --it;
    return write_mid_reg;
}

void RiscV64Spiller::GenerateCopyToStackCode(std::list<MachineBaseInstruction *>::iterator&it,int raw_stk_offset,Register reg,MachineDataType type){
    int offset = raw_stk_offset + function->GetStackOffset();
    cur_block->insert(it,rvconstructor->ConstructComment("Write Spill\n"));
    if(offset <= 2047 && offset >= -2048){
        if(type == INT64){
            cur_block->insert(it,rvconstructor->ConstructSImm(RISCV_SD,reg,GetPhysicalReg(RISCV_sp),offset));// insert store
        }else if(type == FLOAT_32){
            cur_block->insert(it,rvconstructor->ConstructSImm(RISCV_FSW,reg,GetPhysicalReg(RISCV_sp),offset));// insert store
        }
    }else{
        auto imm_reg = function->GetNewRegister(INT64.data_type,INT64.data_length);
        auto offset_mid_reg = function->GetNewRegister(INT64.data_type,INT64.data_length);
        cur_block->insert(it,rvconstructor->ConstructUImm(RISCV_LI,imm_reg,offset));
        cur_block->insert(it,rvconstructor->ConstructR(RISCV_ADD,offset_mid_reg,GetPhysicalReg(RISCV_sp),imm_reg));
        if(type == INT64){
            cur_block->insert(it,rvconstructor->ConstructSImm(RISCV_SD,reg,offset_mid_reg,0));
        }else if(type == FLOAT_32){
            cur_block->insert(it,rvconstructor->ConstructSImm(RISCV_FSW,reg,offset_mid_reg,0));
        }
    }
}
void RiscV64Spiller::GenerateCopyFromStackCode(std::list<MachineBaseInstruction *>::iterator&it,int raw_stk_offset,Register reg,MachineDataType type){
    int offset = raw_stk_offset + function->GetStackOffset();
    cur_block->insert(it,rvconstructor->ConstructComment("Read Spill\n"));
    if(offset <= 2047 && offset >= -2048){
        if(type == INT64){
            cur_block->insert(it,rvconstructor->ConstructIImm(RISCV_LD,reg,GetPhysicalReg(RISCV_sp),offset));// insert load
        }else if(type == FLOAT_32){
            cur_block->insert(it,rvconstructor->ConstructIImm(RISCV_FLW,reg,GetPhysicalReg(RISCV_sp),offset));// insert load
        }
    }else{
        auto imm_reg = function->GetNewRegister(INT64.data_type,INT64.data_length);
        auto offset_mid_reg = function->GetNewRegister(INT64.data_type,INT64.data_length);
        cur_block->insert(it,rvconstructor->ConstructUImm(RISCV_LI,imm_reg,offset));
        cur_block->insert(it,rvconstructor->ConstructR(RISCV_ADD,offset_mid_reg,GetPhysicalReg(RISCV_sp),imm_reg));
        if(type == INT64){
            cur_block->insert(it,rvconstructor->ConstructIImm(RISCV_LD,reg,offset_mid_reg,0));
        }else if(type == FLOAT_32){
            cur_block->insert(it,rvconstructor->ConstructIImm(RISCV_FLW,reg,offset_mid_reg,0));
        }
    }
}

std::list<MachineBaseInstruction*>::iterator RiscV64Block::getInsertBeforeBrIt(){
    auto it = --instructions.end();
    auto jal_pos = it;
    for(auto it = --instructions.end();it != instructions.begin();--it){
        if((*it)->arch == MachineBaseInstruction::COMMENT || (*it)->arch == MachineBaseInstruction::PHI){
            continue;
        }
        if((*it)->arch != MachineBaseInstruction::RiscV){
            return jal_pos;
        }
        // Assert((*it)->arch == MachineBaseInstruction::RiscV);
        auto rvlast = (RiscV64Instruction*)(*it);
        if(rvlast->getOpcode() == RISCV_JALR){
            return it;
        }
        if(rvlast->getOpcode() == RISCV_JAL){
            jal_pos = it;
            continue;
        }
        if(OpTable[rvlast->getOpcode()].ins_formattype == RvOpInfo::B_type){
            return it;
        }else{
            return jal_pos;
        }
    }
    return it;
}
