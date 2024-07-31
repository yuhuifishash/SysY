#ifndef RISCV64_INSTSELECT_H
#define RISCV64_INSTSELECT_H
#include "../../common/machine_passes/machine_selector.h"
#include "../riscv64.h"
class RiscV64Selector : public MachineSelector {
private:
    std::map<int, Register> llvm_rv_regtable;
    std::map<int, int> llvm_rv_allocas;
    int cur_offset;
    Register GetllvmReg(int, MachineDataType);
    Register GetNewReg(MachineDataType, bool save_across_call = false);
    Register ExtractOp2Reg(BasicOperand*, MachineDataType);
    int ExtractOp2ImmI32(BasicOperand*);
    int ExtractOp2ImmF32(BasicOperand*);

    // struct LastCmpInfo{
    //     Register cmp_result,cmp_op1,cmp_op2;
    //     int cmp_cond;
    //     int cmp_type;
    //     enum{NONE,ICMP,FCMP};
    //     LastCmpInfo():cmp_type(NONE){}
    // };

    std::map<Register, Instruction> cmp_context;

public:
    RiscV64Selector(MachineUnit *dest, LLVMIR *IR) : MachineSelector(dest, IR) {}
    void SelectInstructionAndBuildCFG();
    void ClearFunctionSelectState();
    template <class INSPTR> void ConvertAndAppend(INSPTR);
};
#endif