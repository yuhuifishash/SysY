#ifndef RISCV64_PRINT_H
#define RISCV64_PRINT_H
#include "../../common/machine_passes/machine_printer.h"
#include "../riscv64.h"
class RiscV64Printer : public MachinePrinter {
private:
public:
    void emit();
    void printMachineIR();
    void SyncFunction(MachineFunction *func);
    void SyncBlock(MachineBlock *block);
    RiscV64Printer(std::ostream &s, MachineUnit *printee) : MachinePrinter(s, printee) {}

    template <class INSPTR> void printAsm(INSPTR ins);
    template <class INSPTR> void printMachineIR(INSPTR ins);

    template <class FIELDORPTR> void printRVfield(FIELDORPTR);
};
#endif