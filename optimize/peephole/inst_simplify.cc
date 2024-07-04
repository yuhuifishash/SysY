#include "../../include/cfg.h"
#include <functional>

extern std::map<std::string, VarAttribute> ConstGlobalMap;
extern std::map<std::string, VarAttribute> StaticGlobalMap;

// TODO():FindNoWriteStaticGlobal
// if find, erase the var from StaticGlobalMap, and add it to ConstGlobalMap
void FindNoWriteStaticGlobal(LLVMIR *IR) { TODO("FindNoWriteStaticGlobal"); }

void GlobalConstReplace(CFG *C) {
    for (auto [id, bb] : *C->block_map) {
        for (auto &I : bb->Instruction_list) {
            if (I->GetOpcode() != LOAD) {
                continue;
            }
            auto LoadI = (LoadInstruction *)I;
            if (LoadI->GetPointer()->GetOperandType() != BasicOperand::GLOBAL) {
                continue;
            }

            auto pointer = (GlobalOperand *)LoadI->GetPointer();
            if (ConstGlobalMap.find(pointer->GetName()) != ConstGlobalMap.end()) {
                VarAttribute val = ConstGlobalMap[pointer->GetName()];
                if (val.type == Type::INT) {
                    I = new ArithmeticInstruction(ADD, I32, new ImmI32Operand(0), new ImmI32Operand(val.IntInitVals[0]),
                                                  LoadI->GetResultReg());
                } else if (val.type == Type::FLOAT) {
                    I = new ArithmeticInstruction(FADD, FLOAT32, new ImmF32Operand(0),
                                                  new ImmF32Operand(val.FloatInitVals[0]), LoadI->GetResultReg());
                }
            }
        }
    }
}

// TODO():EliminateSimpleConstArrayValue
// GEPindex is const and ArrayDefine is const, we need not to load.
void EliminateSimpleConstArrayValue(CFG *C) { TODO("EliminateSimpleConstArrayValue"); }

/**
 * this function will eliminate getelementptr instruction with empty index
 * the instruction you will elimate will be %rx = getelementptr type, ptr %ry
 * you need to replace all the use of %rx to %ry and delete the instruction
 */
void EliminateEmptyIndexGEP(CFG *C) {
    std::map<int, int> reg_replace_map;
    std::set<Instruction> EraseSet;
    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            if (I->GetOpcode() != GETELEMENTPTR) {
                continue;
            }
            auto GetptrI = (GetElementptrInstruction *)I;
            if (!GetptrI->GetDims().empty() || !GetptrI->GetIndexes().empty()) {
                continue;
            }
            // auto rx = GetptrI->GetResultRegNo();
            auto rx = ((RegOperand *)GetptrI->GetResult())->GetRegNo();
            auto ry = ((RegOperand *)GetptrI->GetPtrVal())->GetRegNo();
            reg_replace_map[rx] = ry;
            EraseSet.insert(I);
        }
    }
    for (auto [id, bb] : *C->block_map) {
        auto tmp_Instruction_list = bb->Instruction_list;
        bb->Instruction_list.clear();
        for (auto I : tmp_Instruction_list) {
            if (EraseSet.find(I) != EraseSet.end()) {
                continue;
            }
            bb->InsertInstruction(1, I);
        }
    }
    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            I->ReplaceRegByMap(reg_replace_map);
        }
    }
    reg_replace_map.clear();
    EraseSet.clear();
    // std::cerr<<"EliminateEmptyIndexGEP is not implemented now\n";
}

// TODO():SrcEqResultInstEliminate
/*eliminate the instructions like
%rx = %ry + 0(replace all the use of %rx with %ry) %ry can be i32 or float
%rx = %ry - 0(replace all the use of %rx with %ry) %ry can be i32 or float
%rx = %ry * 1(replace all the use of %rx with %ry) %ry can be i32 or float
%rx = %ry / 1(replace all the use of %rx with %ry) %ry can be i32 or float

I->ReplaceRegByMap(), I->GetNonResultOperands(), I->SetNonResultOperands() is Useful
*/
void SrcEqResultInstEliminate(CFG *C) { 
    // TODO("SrcEqResultInstEliminate");
    std::map<int,int> UnionFindMap;
    std::set<Instruction> EraseSet;
    std::function<int(int)> UnionFind = [&](int RegToFindNo) -> int {
        if (UnionFindMap[RegToFindNo] == RegToFindNo)
            return RegToFindNo;
        return UnionFindMap[RegToFindNo] = UnionFind(UnionFindMap[RegToFindNo]);
    };
    auto Connect = [&](Operand resultOp,Operand replaceOp) -> void{
        auto Reg1 = (RegOperand*)resultOp;
        auto Reg1no = Reg1->GetRegNo();
        auto Reg0 = (RegOperand*)replaceOp;
        auto Reg0no = Reg0->GetRegNo();
        UnionFindMap[UnionFind(Reg1no)]=UnionFind(Reg0no);
    };

    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            // I->PrintIR(std::cerr);
            if(I->GetNonResultOperands()[0]->GetOperandType()!=BasicOperand::REG)continue;
            if(I->GetNonResultOperands()[1]->GetOperandType()==BasicOperand::REG)continue;
            if(I->GetOpcode() == ADD){
                auto AddI = (ArithmeticInstruction*)I;
                if(AddI->GetOperand2()->GetFullName()=="0"){
                    Connect(AddI->GetResultReg(),AddI->GetOperand1());
                    EraseSet.insert(I);
                }
            }
            if(I->GetOpcode() == SUB){
                auto SubI = (ArithmeticInstruction*)I;
                if(SubI->GetOperand2()->GetFullName()=="0"){
                    Connect(SubI->GetResultReg(),SubI->GetOperand1());
                    EraseSet.insert(I);
                }
            }
            if(I->GetOpcode() == MUL){
                auto SubI = (ArithmeticInstruction*)I;
                if(SubI->GetOperand2()->GetFullName()=="1"){
                    Connect(SubI->GetResultReg(),SubI->GetOperand1());
                    EraseSet.insert(I);
                }
            }
            if(I->GetOpcode() == DIV){
                auto SubI = (ArithmeticInstruction*)I;
                if(SubI->GetOperand2()->GetFullName()=="1"){
                    Connect(SubI->GetResultReg(),SubI->GetOperand1());
                    EraseSet.insert(I);
                }
            }
        }
    }
    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            auto resultopno=I->GetResultRegNo();
            if(UnionFindMap.find(resultopno)!=UnionFindMap.end()){
                UnionFindMap[resultopno]=UnionFind(resultopno);
            }
            for(auto op : I->GetNonResultOperands()){
                if(op->GetOperandType()==BasicOperand::REG){
                    auto regno=((RegOperand*)op)->GetRegNo();
                    if(UnionFindMap.find(regno)!=UnionFindMap.end()){
                        UnionFindMap[regno]=UnionFind(regno);
                    }
                }
            }
        }
    }
    for (auto [id, bb] : *C->block_map) {
        auto tmp_Instruction_list = bb->Instruction_list;
        bb->Instruction_list.clear();
        for (auto I : tmp_Instruction_list) {
            if (EraseSet.find(I) != EraseSet.end()) {
                continue;
            }
            I->ReplaceRegByMap(UnionFindMap);
            bb->InsertInstruction(1, I);
        }
    }
    UnionFindMap.clear();
    EraseSet.clear();
}

/*
%r1 = add i32 4,%r0 will be transformed to %r1 = add i32 %r0,4
*/
void I32ConstantSimplify(Instruction I) {
    if (I->GetOpcode() == ADD || I->GetOpcode() == MUL) {
        auto ArithI = (ArithmeticInstruction *)I;
        if (ArithI->GetOperand1()->GetOperandType() == BasicOperand::IMMI32) {
            ArithI->SwapOperand();
        }
    }
}

/*
%r1 = sub i32 %r0,4 will be transformed to %r1 = add i32 %r0,-4
*/
void I32ConstantSub2AddSimplify(Instruction I) {
    if(I->GetOpcode() == SUB){
        auto ArithI = (ArithmeticInstruction *)I;
        if (ArithI->GetOperand2()->GetOperandType() == BasicOperand::IMMI32) {
            auto imm = ((ImmI32Operand*)ArithI->GetOperand2())->GetIntImmVal();
            if(imm == -2147483648){//can not overflow
                return;
            }
            ArithI->SetOperand2(new ImmI32Operand(-imm));
            ArithI->Setopcode(ADD);
        }
    }
}

// TODO():ZeroResultSimplify
//  {sub X, X},{Mul 0, X} is represented as 0 + 0
void ZeroResultSimplify(Instruction I) { 
    // TODO("ZeroResultSimplify"); 

}

void InstSimplify(CFG *C) {
    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            // I->PrintIR(std::cerr);
            I32ConstantSimplify(I);
            I32ConstantSub2AddSimplify(I);
        }
    }
    // SrcEqResultInstEliminate(C);
}

// TODO():GEPStrengthReduce
/*
example:
%ry1 = gep [100x[100xi32]], ptr @x, i32 0, i32 %r1, i32 %r2
%r3 = add %r1, 2
%ry2 = gep [100x[100xi32]], ptr @x, i32 0, i32 %r3, i32 %r2

---------------------------------------------------------will be

%ry1 = gep [100x[100xi32]] , ptr @x, i32 0, i32 %r1, i32 %r2
%r3 = add %r1, 2 (dead code)
%ry2 = gep i32, ptr %ry1, i32 200

the implementation is very trivial, only dfs the DomTree
*/
void GEPStrengthReduce(CFG *C) { 
    TODO("GEPStrengthReduce");        
}