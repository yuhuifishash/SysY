#ifndef ARM_BLOCK_H
#define ARM_BLOCK_H
#include "arm.h"
#include "ir.h"
#include <deque>
#include <string>
#include <iostream>
#include "machine_block.h"

class ArmFunction;
class ArmUnit;
class ArmBlock : public MachineBlock<ArmBaseInstruction*,ArmFunction*>{
public:
    void emit(std::ostream& s);
    ArmBlock(int id):MachineBlock(id){}
};

class ArmFunction : public MachineFunction<ArmBlock*,ArmUnit*>{
public:
    void emit(std::ostream& s);
    ArmFunction(std::string name):MachineFunction(name){}
};

class ArmUnit : public MachineUnit<ArmFunction*>{
public:
    void emit(std::ostream& s);
};

class ArmSelector : public MachineSelector<ArmUnit,ArmBlock>{
private:
    std::map<FuncDefInstruction,int> alloca_offset_map{};
    std::map<FuncDefInstruction,int> cur_vregi{};
    std::map<FuncDefInstruction,int> cur_vregf{};
    struct tagLastCond{
        enum condType{ICMP = 0,FCMP = 1}cond_type;
        union condContent{
            enum IcmpCond cond_icmp;
            enum FcmpCond comd_fcmp;
        }cond_content;
    }last_cond;
    
public:
    ArmSelector(ArmUnit* Dest,LLVMIR* IR):MachineSelector<ArmUnit,ArmBlock>(Dest,IR){}
    void SelectInstruction();
    MachineCFG<ArmBlock>* SelectInstructionAndBuildCFG();

    template<class INSPTR>
    void ConvertAndAppend(INSPTR,ArmBlock*);
};
#endif