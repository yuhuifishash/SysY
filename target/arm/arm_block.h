#ifndef ARM_BLOCK_H
#define ARM_BLOCK_H
#include "machine_block.h"
#include "arm.h"
#include "llvm_ir.h"
#include <deque>
#include <string>
#include <iostream>
class ArmBlock : public MachineBlock<Arm_baseins*,ArmBlock*>{
public:
    void emit(std::ostream& s);
    ArmBlock(int id):MachineBlock(id){}
    template<class T>
    void ConvertAndAppend(T ins);

    // void GetDef();
    // void GetUse();

    // void ArmSchedule();
    // void IfConversion();
    // void CopyPropagation();
    // void LoopUnroll();
    // void SIMD();
    // void RegisterAlloc();
    // void PeeholeOptimize();
};
class ArmFunc : public MachineFunc<ArmBlock*,ArmFunc*>{
public:
    void emit(std::ostream& s);
    ArmFunc(std::string name):MachineFunc(name){}

    // void ArmSchedule();
    // void IfConversion();
    // void CopyPropagation();
    // void LoopUnroll();
    // void SIMD();
    // void RegisterAlloc();
    // void PeeholeOptimize();
};
class ArmUnit : public MachineUnit<ArmFunc*>{
public:
    void emit(std::ostream& s);
    ArmUnit(LLVM_IR& IR);

    // void ArmSchedule();
    // void IfConversion();
    // void CopyPropagation();
    // void LoopUnroll();
    // void SIMD();
    // void RegisterAlloc();
    // void PeeholeOptimize();
};
class ArmSelector{
private:
    LLVM_IR* IR;
public:
    ArmSelector(LLVM_IR* IR):IR(IR){}
    ArmUnit* GetArmUnit();
};
#endif