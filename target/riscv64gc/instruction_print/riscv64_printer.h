#ifndef RISCV64_PRINT_H
#define RISCV64_PRINT_H
#include "riscv64.h"
#include "../common/machine_passes/machine_printer.h"
class RiscV64Printer : public MachinePrinter{
private:
public:
    void emit();
    void printMachineIR();
    RiscV64Printer(std::ostream& s,RiscV64Unit* printee):MachinePrinter(s,printee){}

    void printAsm(RiscV64Instruction* ins);
    void printMachineIR(RiscV64Instruction* ins);

    template<class FIELDORPTR>void printRVfield(FIELDORPTR);
};
#endif