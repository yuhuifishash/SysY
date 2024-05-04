#ifndef MACHINE_PRINTER_H
#define MACHINE_PRINTER_H
#include "../machine_instruction_structures/machine.h"
class MachinePrinter {
protected:
    MachineUnit *printee;
    MachineFunction *current_func;
    MachineBlock *cur_block;
    std::ostream &s;
    bool output_physical_reg;

public:
    virtual void emit() = 0;
    virtual void printMachineIR() = 0;
    MachinePrinter(std::ostream &s, MachineUnit *printee) : s(s), printee(printee), output_physical_reg(false) {}
    void SetOutputPhysicalReg(bool outputPhy) { output_physical_reg = outputPhy; }
    std::ostream &GetPrintStream() { return s; }
};
#endif