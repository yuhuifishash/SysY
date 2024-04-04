#ifndef ARM_PRINTER_H
#define ARM_PRINTER_H
#include "arm_structures.h"
#include "machine_printer.h"
class ArmPrinter : public MachinePrinter{
private:
    int ins_offset;
public:
    void emit();
    void printMachineIR();
    ArmPrinter(std::ostream& s,ArmUnit* printee):MachinePrinter(s,printee){}

    template<class INSORFLDPTR>void printArm(INSORFLDPTR);
    template<class INSORFLDPTR>void printMachineIR(INSORFLDPTR);
};
#endif