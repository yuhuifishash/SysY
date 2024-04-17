#include "arm_printer.h"
#include <assert.h>

template <> void ArmPrinter::printMachineIR<MachinePhiInstruction *>(MachinePhiInstruction *);
template <> void ArmPrinter::printMachineIR<ArmBaseInstruction *>(ArmBaseInstruction *ins);

void ArmPrinter::printMachineIR() {
    ins_offset = 0;
    for (auto func : printee->functions) {
        current_func = func;
        s << func->func_name << ":\n";
        for (auto block : func->blocks) {
            s << func->func_name << block->label_id << ":\n";
            cur_block = block;
            for (auto ins : *block) {
                s << "\t";
                if (ins->arch == MachineBaseInstruction::ARM) {
                    printMachineIR<ArmBaseInstruction *>((ArmBaseInstruction *)ins);
                } else if (ins->arch == MachineBaseInstruction::PHI) {
                    printMachineIR<MachinePhiInstruction *>((MachinePhiInstruction *)ins);
                }
            }
        }
    }
}

template <> void ArmPrinter::printMachineIR<Register *>(Register *ins) {}

template <> void ArmPrinter::printMachineIR<RmOpsh *>(RmOpsh *ins) {}

template <> void ArmPrinter::printMachineIR<Operand2 *>(Operand2 *ins) {}

template <> void ArmPrinter::printMachineIR<Label *>(Label *ins) {}

template <> void ArmPrinter::printMachineIR<ArmBinary *>(ArmBinary *ins) {}

template <> void ArmPrinter::printMachineIR<ArmAddsubImm *>(ArmAddsubImm *ins) {}

template <> void ArmPrinter::printMachineIR<ArmParallelAddsub *>(ArmParallelAddsub *ins) {}

template <> void ArmPrinter::printMachineIR<ArmMulas *>(ArmMulas *ins) {}

template <> void ArmPrinter::printMachineIR<ArmMove *>(ArmMove *ins) {}

template <> void ArmPrinter::printMachineIR<ArmMovwt *>(ArmMovwt *ins) {}

template <> void ArmPrinter::printMachineIR<ArmShift *>(ArmShift *ins) {}

template <> void ArmPrinter::printMachineIR<ArmCmp *>(ArmCmp *ins) {}

template <> void ArmPrinter::printMachineIR<ArmIt *>(ArmIt *ins) {}

template <> void ArmPrinter::printMachineIR<ArmBranchLabel *>(ArmBranchLabel *ins) {}

template <> void ArmPrinter::printMachineIR<ArmBranchReg *>(ArmBranchReg *ins) {}

template <> void ArmPrinter::printMachineIR<ArmBranchLabelreg *>(ArmBranchLabelreg *ins) {}

template <> void ArmPrinter::printMachineIR<ArmLoadStore *>(ArmLoadStore *ins) {}

template <> void ArmPrinter::printMachineIR<ArmLoadStoreM *>(ArmLoadStoreM *ins) {}

template <> void ArmPrinter::printMachineIR<ArmPushpop *>(ArmPushpop *ins) {}

template <> void ArmPrinter::printMachineIR<VFPVbin *>(VFPVbin *ins) {}

template <> void ArmPrinter::printMachineIR<VFPVcmp *>(VFPVcmp *ins) {}

template <> void ArmPrinter::printMachineIR<VFPVcvt *>(VFPVcvt *ins) {}

template <> void ArmPrinter::printMachineIR<VFPVmov *>(VFPVmov *ins) {}

template <> void ArmPrinter::printMachineIR<VFPVldst *>(VFPVldst *ins) {}

template <> void ArmPrinter::printMachineIR<VFPVpushpop *>(VFPVpushpop *ins) {}

template <> void ArmPrinter::printMachineIR<VFPVstm *>(VFPVstm *ins) {}

template <> void ArmPrinter::printMachineIR<MachinePhiInstruction *>(MachinePhiInstruction *ins) {}

template <> void ArmPrinter::printMachineIR<ArmBaseInstruction *>(ArmBaseInstruction *ins) {
    if (ins->arch == MachineBaseInstruction::PHI) {
        printMachineIR<MachinePhiInstruction *>((MachinePhiInstruction *)ins);
    } else {
        assert(ins->arch == MachineBaseInstruction::ARM);
    }
    switch (ins->ins_type) {
    case ArmBaseInstruction::BINARY:
        printMachineIR<ArmBinary *>((ArmBinary *)ins);
        break;
    case ArmBaseInstruction::ADDSUBIMM:
        printMachineIR<ArmAddsubImm *>((ArmAddsubImm *)ins);
        break;
    case ArmBaseInstruction::PARALLELADDSUB:
        printMachineIR<ArmParallelAddsub *>((ArmParallelAddsub *)ins);
        break;
    case ArmBaseInstruction::MULAS:
        printMachineIR<ArmMulas *>((ArmMulas *)ins);
        break;
    case ArmBaseInstruction::MOVE:
        printMachineIR<ArmMove *>((ArmMove *)ins);
        break;
    case ArmBaseInstruction::MOVWT:
        printMachineIR<ArmMovwt *>((ArmMovwt *)ins);
        break;
    case ArmBaseInstruction::SHIFT:
        printMachineIR<ArmShift *>((ArmShift *)ins);
        break;
    case ArmBaseInstruction::_CMP:
        printMachineIR<ArmCmp *>((ArmCmp *)ins);
        break;
    case ArmBaseInstruction::IT:
        printMachineIR<ArmIt *>((ArmIt *)ins);
        break;
    case ArmBaseInstruction::BRANCH_LABEL:
        printMachineIR<ArmBranchLabel *>((ArmBranchLabel *)ins);
        break;
    case ArmBaseInstruction::BRANCH_REG:
        printMachineIR<ArmBranchReg *>((ArmBranchReg *)ins);
        break;
    case ArmBaseInstruction::BRANCH_LABELREG:
        printMachineIR<ArmBranchLabelreg *>((ArmBranchLabelreg *)ins);
        break;
    case ArmBaseInstruction::LOADSTORE:
        printMachineIR<ArmLoadStore *>((ArmLoadStore *)ins);
        break;
    case ArmBaseInstruction::LOADSTOREM:
        printMachineIR<ArmLoadStoreM *>((ArmLoadStoreM *)ins);
        break;
    case ArmBaseInstruction::PUSHPOP:
        printMachineIR<ArmPushpop *>((ArmPushpop *)ins);
        break;
    case ArmBaseInstruction::VBIN:
        printMachineIR<VFPVbin *>((VFPVbin *)ins);
        break;
    case ArmBaseInstruction::VCMP:
        printMachineIR<VFPVcmp *>((VFPVcmp *)ins);
        break;
    case ArmBaseInstruction::VCVT:
        printMachineIR<VFPVcvt *>((VFPVcvt *)ins);
        break;
    case ArmBaseInstruction::VLDST:
        printMachineIR<VFPVldst *>((VFPVldst *)ins);
        break;
    case ArmBaseInstruction::VMOV:
        printMachineIR<VFPVmov *>((VFPVmov *)ins);
        break;
    case ArmBaseInstruction::VPUSHPOP:
        printMachineIR<VFPVpushpop *>((VFPVpushpop *)ins);
        break;
    case ArmBaseInstruction::_VSTM:
        printMachineIR<VFPVstm *>((VFPVstm *)ins);
        break;
        // case ArmBaseInstruction::PHI:
        //     printMachineIR<ArmPhiInstruction*>((ArmPhiInstruction*)ins);
        //     break;
    }
}