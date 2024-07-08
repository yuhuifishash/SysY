#ifndef HASH_TABLE_H
#define HASH_TABLE_H

// N_H

#include "../../../include/Instruction.h"
#include <iostream>
#include <map>
#include <string>
#include <vector>

class BasicExpr;
typedef BasicExpr *Expr;
// @expr
class BasicExpr{
protected:
    LLVMIROpcode opcode;

public:
    int GetOpcode() { return opcode; }

    virtual void PrintIR(std::ostream &s) = 0;
    virtual std::vector<Operand> GetNonResultOperands() = 0;
    virtual Expr InstructiontoExpr(Instruction I) = 0;
}

// load
// Syntax: load <ty>, ptr <pointer>
class LoadInstruction : public BasicInstruction {
    enum LLVMType type;
    Operand pointer

public:
    enum LLVMType GetDataType() { return type; }
    Operand GetPointer() { return pointer; }
    void SetPointer(Operand op) { pointer = op; }

    LoadInstruction(enum LLVMType type, Operand pointer) {
        opcode = LLVMIROpcode::LOAD;
        this->type = type;
        this->pointer = pointer;
    }

    void PrintIR(std::ostream &s);
    int GetUseRegNo() { return ((RegOperand *)pointer)->GetRegNo(); }
    Operand GetResultReg() { return result; }
    void ReplaceRegByMap(const std::map<int, int> &Rule);
    void ReplaceLabelByMap(const std::map<int, int> &Rule) {}
    std::vector<Operand> GetNonResultOperands();
    void SetNonResultOperands(std::vector<Operand> ops);
    virtual Instruction CopyInstruction();
    virtual int ConstPropagate(std::map<int, Instruction> &regresult_map);
};
#endif