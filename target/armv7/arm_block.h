#ifndef ARM_BLOCK_H
#define ARM_BLOCK_H
#include "arm.h"
#include "ir.h"
#include <deque>
#include <string>
#include <iostream>
#include "machine.h"

class ArmFunction;
class ArmUnit;
class ArmBlock : public MachineBlock{
public:
    ArmBlock(int id):MachineBlock(id){}
};

class ArmFunction : public MachineFunction{
public:
    ArmFunction(std::string name):MachineFunction(name){}
protected:
    void InitializeNewVirtualRegister(int vregno);
};

class ArmUnit : public MachineUnit{
public:
};

class ArmSelector : public MachineSelector{
private:
    std::map<int,int> ir_arm_vreg_map;// needs to be cleared in new function
    std::map<int,int> ir_negativeoffset_map;// needs to be cleared in new function
    struct tagLastCond{
        enum condType{ICMP = 0,FCMP = 1}cond_type;
        union condContent{
            enum IcmpCond cond_icmp;
            enum FcmpCond comd_fcmp;
        }cond_content;
    }last_cond;

public:
    ArmSelector(ArmUnit* dest,LLVMIR* IR):MachineSelector(dest,IR){}
    void SelectInstructionAndBuildCFG();
    void ClearFunctionSelectState();

    template<class INSPTR>
    void ConvertAndAppend(INSPTR);
};

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