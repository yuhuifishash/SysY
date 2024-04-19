#ifndef BASIC_REGISTER_ALLOCATION_H
#define BASIC_REGISTER_ALLOCATION_H
#include "../../machine_instruction_structures/machine.h"
#include "../machine_pass.h"
#include "liveinterval.h"
#include "physical_register.h"
#include <vector>

struct AllocResult {
    bool in_mem;
    union {
        int phy_reg_no;
        int stack_offset;
    };
};

class RegisterAllocation : public MachinePass {
private:
    void UpdateIntervalsInCurrentFunc();

protected:
    void AllocPhyReg(MachineFunction *mfun, Register vreg, int phyreg) {
        alloc_result[mfun][vreg].in_mem = false;
        alloc_result[mfun][vreg].phy_reg_no = phyreg;
    }
    void AllocStack(MachineFunction *mfun, Register vreg, int offset) {
        alloc_result[mfun][vreg].in_mem = true;
        alloc_result[mfun][vreg].stack_offset = offset;
    }
    void swapAllocResult(MachineFunction *mfun, Register v1, Register v2) {
        AllocResult tmp = alloc_result[mfun][v1];
        alloc_result[mfun][v1] = alloc_result[mfun][v2];
        alloc_result[mfun][v2] = tmp;
    }
    int getAllocResultInReg(MachineFunction *mfun, Register vreg) {
        assert(alloc_result[mfun][vreg].in_mem == false);
        return alloc_result[mfun][vreg].phy_reg_no;
    }
    int getAllocResultInMem(MachineFunction *mfun, Register vreg) {
        assert(alloc_result[mfun][vreg].in_mem == true);
        return alloc_result[mfun][vreg].stack_offset;
    }

protected:
    std::map<Register, LiveInterval> intervals;

    // a = COPY b ==> copy_sources[a].push_back[b]
    std::map<Register, std::vector<Register>> copy_sources;    // For coalescing

    PhysicalRegisters *phy_regs;
    virtual bool DoAllocInCurrentFunc() = 0;
    std::map<MachineFunction *, std::map<Register, AllocResult>> alloc_result;

public:
    RegisterAllocation(MachineUnit *unit, PhysicalRegisters *phy) : MachinePass(unit), phy_regs(phy) {}
    void Execute();
};

class InstructionNumber : public MachinePass {
public:
    InstructionNumber(MachineUnit *unit) : MachinePass(unit) {}
    void Execute();
};

class VirtualRegisterRewrite : public MachinePass {
private:
    const std::map<MachineFunction *, std::map<Register, AllocResult>> &alloc_result;

public:
    VirtualRegisterRewrite(MachineUnit *unit,
                           const std::map<MachineFunction *, std::map<Register, AllocResult>> &alloc_result)
        : MachinePass(unit), alloc_result(alloc_result) {}
    void Execute();
    void ExecuteInFunc();
};

#endif