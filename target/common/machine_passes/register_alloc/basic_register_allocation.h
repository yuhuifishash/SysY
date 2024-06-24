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
    AllocResult() : in_mem(false) { phy_reg_no = 0; }
    AllocResult(const struct AllocResult &other) {
        in_mem = other.in_mem;
        phy_reg_no = other.phy_reg_no;
    }
};

class SpillCodeGen;

class RegisterAllocation : public MachinePass {
private:
    void UpdateIntervalsInCurrentFunc();
    virtual void CoalesceInCurrentFunc() = 0;
    std::queue<MachineFunction *> not_allocated_funcs;
    SpillCodeGen *spiller;

protected:
    void AllocPhyReg(MachineFunction *mfun, Register vreg, int phyreg) {
        Assert(vreg.is_virtual);
        alloc_result[mfun][vreg].in_mem = false;
        alloc_result[mfun][vreg].phy_reg_no = phyreg;
    }
    void AllocStack(MachineFunction *mfun, Register vreg, int offset) {
        Assert(vreg.is_virtual);
        alloc_result[mfun][vreg].in_mem = true;
        alloc_result[mfun][vreg].stack_offset = offset;
    }
    void swapAllocResult(MachineFunction *mfun, Register v1, Register v2) {
        Assert(v1.is_virtual && v2.is_virtual);
        AllocResult tmp = alloc_result[mfun][v1];
        alloc_result[mfun][v1] = alloc_result[mfun][v2];
        alloc_result[mfun][v2] = tmp;
    }
    int getAllocResultInReg(MachineFunction *mfun, Register vreg) {
        Assert(alloc_result[mfun][vreg].in_mem == false);
        Assert(vreg.is_virtual);
        return alloc_result[mfun][vreg].phy_reg_no;
    }
    int getAllocResultInMem(MachineFunction *mfun, Register vreg) {
        Assert(alloc_result[mfun][vreg].in_mem == true);
        Assert(vreg.is_virtual);
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
    RegisterAllocation(MachineUnit *unit, PhysicalRegisters *phy, SpillCodeGen *spiller)
        : MachinePass(unit), phy_regs(phy), spiller(spiller) {}
    void Execute();
};

class InstructionNumber : public MachinePass {
public:
    InstructionNumber(MachineUnit *unit) : MachinePass(unit) {}
    void Execute();
    void ExecuteInFunc(MachineFunction *func);
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

class SpillCodeGen {
private:
    std::map<Register, AllocResult> *alloc_result;
    virtual Register GenerateReadCode(std::list<MachineBaseInstruction *>::iterator &it, int raw_stk_offset,
                                      MachineDataType type) = 0;
    virtual Register GenerateWriteCode(std::list<MachineBaseInstruction *>::iterator &it, int raw_stk_offset,
                                       MachineDataType type) = 0;
    virtual void GenerateCopyToStackCode(std::list<MachineBaseInstruction *>::iterator &it, int raw_stk_offset,
                                         Register reg, MachineDataType type) = 0;
    virtual void GenerateCopyFromStackCode(std::list<MachineBaseInstruction *>::iterator &it, int raw_stk_offset,
                                           Register reg, MachineDataType type) = 0;

protected:
    MachineFunction *function;
    MachineBlock *cur_block;

public:
    // SpillCodeGen(MachineFunction* function,std::map<Register, AllocResult> *alloc_result) :
    // alloc_result(alloc_result), function(function) {}
    void ExecuteInFunc(MachineFunction *function, std::map<Register, AllocResult> *alloc_result);
};

#endif