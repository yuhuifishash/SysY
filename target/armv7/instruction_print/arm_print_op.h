#ifndef ARM_PRINTOP_H
#define ARM_PRINTOP_H
#include "arm_fields.h"
#include "arm_block.h"

// operator<< for fields
ArmPrinter& operator<< (ArmPrinter&,Register);
ArmPrinter& operator<< (ArmPrinter&,RmOpsh);
ArmPrinter& operator<< (ArmPrinter&,Operand2);
ArmPrinter& operator<< (ArmPrinter&,Label);

ArmPrinter& operator<< (ArmPrinter&,Register*);
ArmPrinter& operator<< (ArmPrinter&,RmOpsh*);
ArmPrinter& operator<< (ArmPrinter&,Operand2*);
ArmPrinter& operator<< (ArmPrinter&,Label*);

ArmPrinter& operator<< (ArmPrinter&,char);
ArmPrinter& operator<< (ArmPrinter&,const char*);
ArmPrinter& operator<< (ArmPrinter&,std::string);
ArmPrinter& operator<< (ArmPrinter&,int);

ArmPrinter& operator<< (ArmPrinter&,std::vector<Register>);
ArmPrinter& operator<< (ArmPrinter&,enum ShiftType);

#endif