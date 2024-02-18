#ifndef ARM_BLOCK_H
#define ARM_BLOCK_H
#include "machine_block.h"
#include "arm.h"
#include "ir.h"
#include <deque>
#include <string>
#include <iostream>
// ArmSchedule();
// IfConversion();
// CopyPropagation();
// LoopUnroll();
// SIMD();
// RegisterAlloc();
// PeeholeOptimize();
class ArmBlock : public MachineBlock<Arm_baseins*,ArmFunc*>{
public:
    void emit(std::ostream& s);
    ArmBlock(int id):MachineBlock(id){}
};

class ArmFunc : public MachineFunc<ArmBlock*,ArmUnit*>{
public:
    void emit(std::ostream& s);
    ArmFunc(std::string name):MachineFunc(name){}
};

class ArmUnit : public MachineUnit<ArmFunc*>{
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

    template<class INSPTR>
    void ConvertAndAppend(INSPTR,ArmBlock*);
};
#endif