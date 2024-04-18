#include "arm_printer.h"

template <> void ArmPrinter::printArm<Register *>(Register *ins) {
    if (!ins->is_virtual) {
        s << ArmRegDescriptor[ins->reg_no].name;
    } else {
        s << "%" << ins->reg_no;
    }
}

template <> void ArmPrinter::printArm<RmOpsh *>(RmOpsh *ins) {
    if (ins->shift_type == RRX) {
        (*this) << ins->Rm << ", RRX";
    } else {
        (*this) << ins->Rm << ", " << ins->shift_type << " #" << ins->shift;
    }
}

template <> void ArmPrinter::printArm<Operand2 *>(Operand2 *ins) {
    switch (ins->type) {
    case Operand2::IMM8M:
        (*this) << "#" << ins->imm8m;
        break;
    case Operand2::RSHIFTR:
        (*this) << ins->Rm << ", " << ins->shift_type << " " << ins->Rs;
        break;
    case Operand2::RSHIFTI:
        (*this) << ins->Rm << ", " << ins->shift_type << " #" << ins->shift;
        break;
    }
}

template <> void ArmPrinter::printArm<Label *>(Label *ins) {
    if (ins->is_data_address) {
        // Just an example
        // May change in future
        (*this) << ".LPIC" << ins->mem_label_id;
    } else {
        (*this) << current_func->getFunctionName() << ins->jmp_label_id;
    }
}

// Printing fields
// ^-----------------------------------
// v-----------------------------------
// operator<< for fields

ArmPrinter &operator<<(ArmPrinter &printer, Register printee) {
    printer.printArm(&printee);
    return printer;
}
ArmPrinter &operator<<(ArmPrinter &printer, RmOpsh printee) {
    printer.printArm(&printee);
    return printer;
}
ArmPrinter &operator<<(ArmPrinter &printer, Operand2 printee) {
    printer.printArm(&printee);
    return printer;
}
ArmPrinter &operator<<(ArmPrinter &printer, Label printee) {
    printer.printArm(&printee);
    return printer;
}

ArmPrinter &operator<<(ArmPrinter &printer, Register *printee) {
    printer.printArm(printee);
    return printer;
}
ArmPrinter &operator<<(ArmPrinter &printer, RmOpsh *printee) {
    printer.printArm(printee);
    return printer;
}
ArmPrinter &operator<<(ArmPrinter &printer, Operand2 *printee) {
    printer.printArm(printee);
    return printer;
}
ArmPrinter &operator<<(ArmPrinter &printer, Label *printee) {
    printer.printArm(printee);
    return printer;
}

ArmPrinter &operator<<(ArmPrinter &printer, char printee) {
    printer.GetPrintStream() << printee;
    return printer;
}
ArmPrinter &operator<<(ArmPrinter &printer, const char *printee) {
    printer.GetPrintStream() << printee;
    return printer;
}
ArmPrinter &operator<<(ArmPrinter &printer, std::string printee) {
    printer.GetPrintStream() << printee;
    return printer;
}
ArmPrinter &operator<<(ArmPrinter &printer, int printee) {
    printer.GetPrintStream() << printee;
    return printer;
}

ArmPrinter &operator<<(ArmPrinter &printer, std::vector<Register> reglist) {
    // printRegList(printer.GetPrintStream(),printee);
    printer << "{";
    for (auto it = reglist.begin(); it != reglist.end(); ++it) {
        printer << *it;
        if (it + 1 != reglist.end()) {
            printer << ",";
        }
    }
    printer << "}";
    return printer;
}

ArmPrinter &operator<<(ArmPrinter &printer, enum ShiftType printee) {
    switch (printee) {
    case LSL:
        printer.GetPrintStream() << "lsl";
        break;
    case LSR:
        printer.GetPrintStream() << "lsr";
        break;
    case ASR:
        printer.GetPrintStream() << "asr";
        break;
    case ROR:
        printer.GetPrintStream() << "ror";
        break;
    case RRX:
        printer.GetPrintStream() << "rrx";
        break;
    }
    return printer;
}
void printCond(std::ostream &s, int cond) {
    switch (cond) {
    case ArmBaseInstruction::EQ:
        s << "eq";
        break;
    case ArmBaseInstruction::NE:
        s << "ne";
        break;
    case ArmBaseInstruction::CS_HS:
        // s<<"CS_HS";
        s << "cs";
        break;
    case ArmBaseInstruction::CC_LO:
        // s<<"CC_LO";
        s << "cc";
        break;
    case ArmBaseInstruction::MI:
        s << "mi";
        break;
    case ArmBaseInstruction::PL:
        s << "pl";
        break;
    case ArmBaseInstruction::VS:
        s << "vs";
        break;
    case ArmBaseInstruction::VC:
        s << "vc";
        break;
    case ArmBaseInstruction::HI:
        s << "hi";
        break;
    case ArmBaseInstruction::LS:
        s << "ls";
        break;
    case ArmBaseInstruction::GE:
        s << "ge";
        break;
    case ArmBaseInstruction::LT:
        s << "lt";
        break;
    case ArmBaseInstruction::GT:
        s << "gt";
        break;
    case ArmBaseInstruction::LE:
        s << "le";
        break;
    case ArmBaseInstruction::AL:
        s << "al";
        break;
    }
}