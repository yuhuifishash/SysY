#include "arm_printer.h"
#include "arm_print_op.h"
#include "arm_printhelper.h"

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
	if(ins->shift_type == RRX){
        (*this)<<ins->Rm<<", RRX";
    }else{
        (*this)<<ins->Rm<<", "<<ins->shift_type<<" #"<<ins->shift;
    }
}

template<>
void ArmPrinter::printArm<Operand2*>(Operand2* ins){
    switch (ins->type)
    {
    case Operand2::IMM8M:
        (*this)<<"#"<<ins->imm8m;
        break;
    case Operand2::RSHIFTR:
        (*this)<<ins->Rm<<", "<<ins->shift_type<<" "<<ins->Rs;
        break;
    case Operand2::RSHIFTI:
        (*this)<<ins->Rm<<", "<<ins->shift_type<<" #"<<ins->shift;
        break;
    }
}

template<>
void ArmPrinter::printArm<Label*>(Label* ins){
	if(ins->is_data_address){
        // Just an example
        // May change in future
        (*this)<<".LPIC"<<ins->mem_label_id;
    }else{
        (*this)<<current_func->func_name<<ins->jmp_label_id;
    }
}

// Printing fields
// ^-----------------------------------
// v-----------------------------------
// operator<< for fields

ArmPrinter& operator<< (ArmPrinter& printer,Register printee){
	printer.printArm(&printee);
	return printer;
}
ArmPrinter& operator<< (ArmPrinter& printer,RmOpsh printee){
	printer.printArm(&printee);
	return printer;
}
ArmPrinter& operator<< (ArmPrinter& printer,Operand2 printee){
	printer.printArm(&printee);
	return printer;
}
ArmPrinter& operator<< (ArmPrinter& printer,Label printee){
	printer.printArm(&printee);
	return printer;
}

ArmPrinter& operator<< (ArmPrinter& printer,Register* printee){
	printer.printArm(printee);
	return printer;
}
ArmPrinter& operator<< (ArmPrinter& printer,RmOpsh* printee){
	printer.printArm(printee);
	return printer;
}
ArmPrinter& operator<< (ArmPrinter& printer,Operand2* printee){
	printer.printArm(printee);
	return printer;
}
ArmPrinter& operator<< (ArmPrinter& printer,Label* printee){
	printer.printArm(printee);
	return printer;
}

ArmPrinter& operator<< (ArmPrinter& printer,char printee){
    printer.GetPrintStream()<<printee;
	return printer;
}
ArmPrinter& operator<< (ArmPrinter& printer,const char* printee){
    printer.GetPrintStream()<<printee;
	return printer;
}
ArmPrinter& operator<< (ArmPrinter& printer,std::string printee){
    printer.GetPrintStream()<<printee;
    return printer;
}
ArmPrinter& operator<< (ArmPrinter& printer,int printee){
    printer.GetPrintStream()<<printee;
    return printer;
}

ArmPrinter& operator<< (ArmPrinter& printer,std::vector<Register> reglist){
    // printRegList(printer.GetPrintStream(),printee);
    printer<<"{";
    for(auto it = reglist.begin();it!=reglist.end();++it){
        printer<<*it;
        if(it+1 != reglist.end()){
            printer<<",";
        }
    }
    printer<<"}";
    return printer;
}

ArmPrinter& operator<< (ArmPrinter& printer,enum ShiftType printee){
    switch(printee){
        case LSL:
		printer.GetPrintStream()<<"lsl";
		break;
        case LSR:
		printer.GetPrintStream()<<"lsr";
		break;
        case ASR:
		printer.GetPrintStream()<<"asr";
		break;
        case ROR:
		printer.GetPrintStream()<<"ror";
		break;
        case RRX:
		printer.GetPrintStream()<<"rrx";
		break;
    }
    return printer;
}