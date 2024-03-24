#include "arm_printhelper.h"
#include "arm_instructions.h"
void printCond(std::ostream& s,int cond){
    switch(cond){
	case ArmBaseInstruction::EQ:
		s<<"eq";
		break;
	case ArmBaseInstruction::NE:
		s<<"ne";
		break;
	case ArmBaseInstruction::CS_HS:
		// s<<"CS_HS";
        s<<"cs";
		break;
	case ArmBaseInstruction::CC_LO:
		// s<<"CC_LO";
        s<<"cc";
		break;
	case ArmBaseInstruction::MI:
		s<<"mi";
		break;
	case ArmBaseInstruction::PL:
		s<<"pl";
		break;
	case ArmBaseInstruction::VS:
		s<<"vs";
		break;
	case ArmBaseInstruction::VC:
		s<<"vc";
		break;
	case ArmBaseInstruction::HI:
		s<<"hi";
		break;
	case ArmBaseInstruction::LS:
		s<<"ls";
		break;
	case ArmBaseInstruction::GE:
		s<<"ge";
		break;
	case ArmBaseInstruction::LT:
		s<<"lt";
		break;
	case ArmBaseInstruction::GT:
		s<<"gt";
		break;
	case ArmBaseInstruction::LE:
		s<<"le";
		break;
	case ArmBaseInstruction::AL:
		s<<"al";
		break;
    }
}
// void printRegList(std::ostream& s,const std::vector<Register>& reglist){}
