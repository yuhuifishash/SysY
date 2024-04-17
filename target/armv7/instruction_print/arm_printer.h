#ifndef ARM_PRINTER_H
#define ARM_PRINTER_H
#include "arm_fields.h"
#include "arm_structures.h"
#include "machine_printer.h"
#include <iostream>
class ArmPrinter;

// operator<< for fields
ArmPrinter &operator<<(ArmPrinter &, Register);
ArmPrinter &operator<<(ArmPrinter &, RmOpsh);
ArmPrinter &operator<<(ArmPrinter &, Operand2);
ArmPrinter &operator<<(ArmPrinter &, Label);

ArmPrinter &operator<<(ArmPrinter &, Register *);
ArmPrinter &operator<<(ArmPrinter &, RmOpsh *);
ArmPrinter &operator<<(ArmPrinter &, Operand2 *);
ArmPrinter &operator<<(ArmPrinter &, Label *);

ArmPrinter &operator<<(ArmPrinter &, char);
ArmPrinter &operator<<(ArmPrinter &, const char *);
ArmPrinter &operator<<(ArmPrinter &, std::string);
ArmPrinter &operator<<(ArmPrinter &, int);

ArmPrinter &operator<<(ArmPrinter &, std::vector<Register>);
ArmPrinter &operator<<(ArmPrinter &, enum ShiftType);

class ArmPrinter : public MachinePrinter {
private:
    int ins_offset;

public:
    void emit();
    void printMachineIR();
    ArmPrinter(std::ostream &s, ArmUnit *printee) : MachinePrinter(s, printee) {}

    template <class INSORFLDPTR> void printArm(INSORFLDPTR);
    template <class INSORFLDPTR> void printMachineIR(INSORFLDPTR);
};
void printCond(std::ostream &s, int cond);

#endif