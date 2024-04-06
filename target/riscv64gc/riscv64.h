#ifndef RISCV64_H
#define RISCV64_H
#include "MachineBaseInstruction.h"
#include "riscv64_opcode.h"

struct RiscV64PhysicalRegisterDescriptor{
    char* name;
    enum{
        x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,
        INVALID,
        spilled_in_memory,
    };
};
extern struct RiscV64PhysicalRegisterDescriptor RiscV64RegDescriptor[];

class RiscV64Instruction : MachineBaseInstruction{
private:
    int op;
    Register rd,rs1,rs2;
    union{
        int imm;
        Label label;
    };

    std::set<int> GetR_typeReadreg(){return {rs1.am_reg_no,rs2.am_reg_no};}
    std::set<int> GetI_typeReadreg(){return {rs1.am_reg_no};}
    std::set<int> GetS_typeReadreg(){return {rs1.am_reg_no,rs2.am_reg_no};}
    std::set<int> GetB_typeReadreg(){return {rs1.am_reg_no,rs2.am_reg_no};}
    std::set<int> GetU_typeReadreg(){return {};}
    std::set<int> GetJ_typeReadreg(){return {};}

    std::set<int> GetR_typeWritereg(){return {rd.am_reg_no};}
    std::set<int> GetI_typeWritereg(){return {rd.am_reg_no};}
    std::set<int> GetS_typeWritereg(){return {};}
    std::set<int> GetB_typeWritereg(){return {};}
    std::set<int> GetU_typeWritereg(){return {rd.am_reg_no};}
    std::set<int> GetJ_typeWritereg(){return {rd.am_reg_no};}
public:
    int getOpcode(){return op;}
    std::set<int> GetReadReg();
    std::set<int> GetWriteReg();
};
#include "../common/machine_instruction_structures/machine.h"
class RiscV64Function;
class RiscV64Unit;

class RiscV64Block : public MachineBlock{
public:
    RiscV64Block(int id):MachineBlock(id){}
};
class RiscV64Function : public MachineFunction{
public:
    RiscV64Function(std::string name):MachineFunction(name){}
protected:
    void InitializeNewVirtualRegister(int vregno);
    void MoveAllPredecessorsBranchTargetToNewBlock(int original_target,int new_target);
    void MoveOnePredecessorBranchTargetToNewBlock(int pre,int original_target,int new_target);
    void YankBranchInstructionToNewBlock(int original_block_id,int new_block);
    void AppendUncondBranchInstructionToNewBlock(int new_block,int br_target);
};
class RiscV64Unit : public MachineUnit{};
#endif