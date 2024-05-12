#ifndef RISCV64_INSTSELECT_H
#define RISCV64_INSTSELECT_H
#include "../../common/machine_passes/machine_selector.h"
#include "../riscv64.h"
class RiscV64Selector : public MachineSelector {
private:
    std::map<int, Register> llvm_rv_regtable;
    Register GetllvmReg(int, MachineDataType);
    Register GetNewReg(MachineDataType, bool save_across_call = false);
    // Register GetPhysicalReg(int);

public:
    RiscV64Selector(MachineUnit *dest, LLVMIR *IR) : MachineSelector(dest, IR) {}
    void SelectInstructionAndBuildCFG();
    void ClearFunctionSelectState();
    template <class INSPTR> void ConvertAndAppend(INSPTR);
};
#endif