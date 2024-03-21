#include "arm_block.h"

template<>
void ArmPrinter::printArm<Register*>(Register* ins){
	if(output_physical_reg){
        s<<ArmRegDescriptor[current_func->am_registers[ins->am_reg_no].physical_register_descriptor_index].name;
    }else{
        s<<"%"<<ins->am_reg_no;
    }
}

template<>
void ArmPrinter::printArm<RmOpsh*>(RmOpsh* ins){
	
}

template<>
void ArmPrinter::printArm<Operand2*>(Operand2* ins){
	
}

template<>
void ArmPrinter::printArm<Rssh*>(Rssh* ins){
	
}

template<>
void ArmPrinter::printArm<Label*>(Label* ins){
	
}

// template<>
// void ArmPrinter::printArm<RegisterOrImm*>(RegisterOrImm* ins){
	
// }

// Printing fields
// ^-----------------------------------
// v-----------------------------------
// operator<< for fields

template<>
const ArmPrinter& ArmPrinter::operator<< <Register>(Register reg){
    printArm(&reg);
    return *this;
}

template<>
const ArmPrinter& ArmPrinter::operator<< <RmOpsh>(RmOpsh reg){
    printArm(&reg);
    return *this;
}

template<>
const ArmPrinter& ArmPrinter::operator<< <Operand2>(Operand2 reg){
    printArm(&reg);
    return *this;
}

template<>
const ArmPrinter& ArmPrinter::operator<< <Rssh>(Rssh reg){
    printArm(&reg);
    return *this;
}

template<>
const ArmPrinter& ArmPrinter::operator<< <Label>(Label reg){
    printArm(&reg);
    return *this;
}

// template<>
// const ArmPrinter& ArmPrinter::operator<< <RegisterOrImm>(RegisterOrImm reg){
//     printArm(&reg);
//     return *this;
// }

// operator for object
// ^------------------
// v------------------
// operator for object pointer

template<>
const ArmPrinter& ArmPrinter::operator<< <Register*>(Register* reg){
    printArm(reg);
    return *this;
}

template<>
const ArmPrinter& ArmPrinter::operator<< <RmOpsh*>(RmOpsh* reg){
    printArm(reg);
    return *this;
}

template<>
const ArmPrinter& ArmPrinter::operator<< <Operand2*>(Operand2* reg){
    printArm(reg);
    return *this;
}

template<>
const ArmPrinter& ArmPrinter::operator<< <Rssh*>(Rssh* reg){
    printArm(reg);
    return *this;
}

template<>
const ArmPrinter& ArmPrinter::operator<< <Label*>(Label* reg){
    printArm(reg);
    return *this;
}

// template<>
// const ArmPrinter& ArmPrinter::operator<< <RegisterOrImm*>(RegisterOrImm* reg){
//     printArm(reg);
//     return *this;
// }