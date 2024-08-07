#include "../../include/ir.h"
#include <algorithm>
#include <functional>
#include <iostream>
#include <utility>

extern std::map<std::string, VarAttribute> ConstGlobalMap;
extern std::map<std::string, VarAttribute> StaticGlobalMap;

// if find, erase the var from StaticGlobalMap, and add it to ConstGlobalMap
void FindNoWriteStaticGlobal(LLVMIR *IR) { 
    std::set<std::string> GlobalUsedSet;
    std::map<int,std::string> GEPMap;
    for (auto [defI, cfg] : IR->llvm_cfg) {
        for (auto [id, bb] : *cfg->block_map) {
            for (auto I : bb->Instruction_list) {
                if(I->GetOpcode() == GETELEMENTPTR){
                    auto gepI = (GetElementptrInstruction*)I;
                    auto ptr = gepI->GetPtrVal();
                    if(ptr->GetOperandType() != BasicOperand::GLOBAL){
                        continue;
                    }
                    auto gptr = (GlobalOperand*)ptr;
                    auto name = gptr->GetName();
                    GEPMap[gepI->GetResultRegNo()] = name;
                }
            }
        }
    }
    for (auto [defI, cfg] : IR->llvm_cfg) {
        for (auto [id, bb] : *cfg->block_map) {
            for (auto I : bb->Instruction_list) {
                if(I->GetOpcode() == STORE){
                    auto storeI = (StoreInstruction*)I;
                    auto op = storeI->GetPointer();
                    if (op->GetOperandType() == BasicOperand::GLOBAL) {
                        auto gop = (GlobalOperand *)op;
                        auto name = gop->GetName();
                        if(StaticGlobalMap.find(name) != StaticGlobalMap.end()){
                            GlobalUsedSet.insert(name);
                        }
                    }else if(op->GetOperandType() == BasicOperand::REG){
                        auto regop = (RegOperand*)op;
                        auto regopno = regop->GetRegNo();
                        if(GEPMap.find(regopno) == GEPMap.end() || StaticGlobalMap.find(GEPMap[regopno]) == StaticGlobalMap.end()){
                            continue;
                        }
                        GlobalUsedSet.insert(GEPMap[regopno]);
                    }
                }else if(I->GetOpcode() == CALL){
                    auto callI = (CallInstruction*)I;
                    for(auto [type,op]:callI->GetParameterList()){
                        if (op->GetOperandType() == BasicOperand::GLOBAL) {
                            auto gop = (GlobalOperand *)op;
                            auto name = gop->GetName();
                            if(StaticGlobalMap.find(name) != StaticGlobalMap.end()){
                                GlobalUsedSet.insert(name);
                            }
                        }else if(op->GetOperandType() == BasicOperand::REG){
                            auto regop = (RegOperand*)op;
                            auto regopno = regop->GetRegNo();
                            if(GEPMap.find(regopno) == GEPMap.end() || StaticGlobalMap.find(GEPMap[regopno]) == StaticGlobalMap.end()){
                                continue;
                            }
                            GlobalUsedSet.insert(GEPMap[regopno]);
                        }
                    }
                }
            }
        }
    }
    for(auto [str,var]:StaticGlobalMap){
        if(GlobalUsedSet.find(str) == GlobalUsedSet.end() && ConstGlobalMap.find(str) == ConstGlobalMap.end()){
            ConstGlobalMap.insert(std::make_pair(str,var));
            // std::cerr<<str<<'\n';
        }
    }
    for(auto [str,var]:ConstGlobalMap){
        if(StaticGlobalMap.find(str) != StaticGlobalMap.end()){
            StaticGlobalMap.erase(str);
            // std::cerr<<str<<'\n';
        }
    }
}

void EraseNoUseGlobal(LLVMIR *IR) {
    std::set<std::string> GlobalUsedSet;
    for (auto [defI, cfg] : IR->llvm_cfg) {
        for (auto [id, bb] : *cfg->block_map) {
            for (auto I : bb->Instruction_list) {
                auto ops = I->GetNonResultOperands();
                for (auto op : ops) {
                    if (op->GetOperandType() == BasicOperand::GLOBAL) {
                        auto gop = (GlobalOperand *)op;
                        GlobalUsedSet.insert(gop->GetName());
                    }
                }
            }
        }
    }

    for (auto it = IR->global_def.begin(); it != IR->global_def.end();) {
        auto I = *it;
        if (I->GetOpcode() != GLOBAL_VAR) {
            ++it;
            continue;
        }
        auto gI = (GlobalVarDefineInstruction *)I;
        if (GlobalUsedSet.find(gI->name) == GlobalUsedSet.end()) {
            it = IR->global_def.erase(it);
            // gI->PrintIR(std::cerr);
        } else {
            ++it;
        }
    }
}

void GlobalConstReplace(CFG *C) {
    for (auto [id, bb] : *C->block_map) {
        for (auto &I : bb->Instruction_list) {
            // I->PrintIR(std::cerr);
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
                // I->PrintIR(std::cerr);   
            }
        }
    }
}

// GEPindex is const and ArrayDefine is const, we need not to load.
void EliminateSimpleConstArrayValue(CFG *C) { 
    std::map<int,Operand> GEPMap;
    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            if(I->GetOpcode() != GETELEMENTPTR){
                continue;
            }
            auto gepI = (GetElementptrInstruction*)I;
            auto ptrop = gepI->GetPtrVal();
            if(ptrop->GetOperandType()!=BasicOperand::GLOBAL){
                continue;
            }
            auto gop = (GlobalOperand*)ptrop;
            if(ConstGlobalMap.find(gop->GetName())==ConstGlobalMap.end()){
                continue;
            }
            auto [num,siz] = gepI->GetConstIndexes();
            if(siz != 1){
                continue;
            }
            auto constvar = ConstGlobalMap[gop->GetName()];
            if(constvar.type == Type::INT){
                auto constnum = constvar.IntInitVals.at(num);
                GEPMap[gepI->GetResultRegNo()]=new ImmI32Operand(constnum);
            }else if(constvar.type == Type::FLOAT){
                auto constnum = constvar.FloatInitVals.at(num);
                GEPMap[gepI->GetResultRegNo()]=new ImmF32Operand(constnum);
            }
            
            // std::cerr<<num<<' '<<siz<<" "<<constnum<<'\n';
        }
    }
    for (auto [id, bb] : *C->block_map) {
        for (auto &I : bb->Instruction_list) {
            if(I->GetOpcode() != LOAD){
                continue;
            }
            auto loadI = (LoadInstruction*)I;
            auto ptrop = loadI->GetPointer();
            if(ptrop->GetOperandType()!=BasicOperand::REG){
                continue;
            }
            auto ptrreg = (RegOperand*)ptrop;
            auto ptrno = ptrreg->GetRegNo();
            if(GEPMap.find(ptrno) == GEPMap.end()){
                continue;
            }
            auto op = GEPMap[ptrno];
            if(op->GetOperandType() == BasicOperand::IMMI32){
                I = new ArithmeticInstruction(ADD, I32, new ImmI32Operand(0), op,
                                                  loadI->GetResultReg());
            }else if(op->GetOperandType() == BasicOperand::IMMF32){
                I = new ArithmeticInstruction(FADD, FLOAT32, new ImmF32Operand(0),
                                                  op, loadI->GetResultReg());
            }
                  
        }
    }
}

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

/*eliminate the instructions like
%rx = %ry + 0(replace all the use of %rx with %ry) %ry can be i32 or float
%rx = %ry - 0(replace all the use of %rx with %ry) %ry can be i32 or float
%rx = %ry * 1(replace all the use of %rx with %ry) %ry can be i32 or float
%rx = %ry / 1(replace all the use of %rx with %ry) %ry can be i32 or float

I->ReplaceRegByMap(), I->GetNonResultOperands(), I->SetNonResultOperands() is Useful
*/
void SrcEqResultInstEliminate(CFG *C) {
    std::map<int, int> UnionFindMap;
    std::set<Instruction> EraseSet;
    std::function<int(int)> UnionFind = [&](int RegToFindNo) -> int {
        if (UnionFindMap[RegToFindNo] == RegToFindNo)
            return RegToFindNo;
        return UnionFindMap[RegToFindNo] = UnionFind(UnionFindMap[RegToFindNo]);
    };
    auto Connect = [&](Operand resultOp, Operand replaceOp) -> void {
        auto Reg1 = (RegOperand *)resultOp;
        auto Reg1no = Reg1->GetRegNo();
        auto Reg0 = (RegOperand *)replaceOp;
        auto Reg0no = Reg0->GetRegNo();
        UnionFindMap[UnionFind(Reg1no)] = UnionFind(Reg0no);
    };
    // std::cerr<<C->function_def->GetFunctionName()<<" "<<C->max_reg<<'\n';
    if (C->max_reg <= 0) {
        return;
    }
    for (int i = 0; i <= C->max_reg; ++i) {
        UnionFindMap[i] = i;
    }

    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {

            if (I->GetNonResultOperands().size() <= 1) {
                continue;
            }
            if (I->GetNonResultOperands()[0]->GetOperandType() != BasicOperand::REG)
                continue;
            if (I->GetNonResultOperands()[1]->GetOperandType() == BasicOperand::REG)
                continue;
            if (I->GetOpcode() == ADD || I->GetOpcode() == SUB) {
                auto AddI = (ArithmeticInstruction *)I;
                auto op = AddI->GetOperand2();
                if (op->GetOperandType() != BasicOperand::IMMI32) {
                    continue;
                }
                auto num = ((ImmI32Operand *)op)->GetIntImmVal();
                if (num != 0) {
                    continue;
                }
                Connect(AddI->GetResultReg(), AddI->GetOperand1());
                EraseSet.insert(I);
            }
            if (I->GetOpcode() == MUL || I->GetOpcode() == DIV) {
                auto SubI = (ArithmeticInstruction *)I;
                auto op = SubI->GetOperand2();
                if (op->GetOperandType() != BasicOperand::IMMI32) {
                    continue;
                }
                auto num = ((ImmI32Operand *)op)->GetIntImmVal();
                if (num != 1) {
                    continue;
                }
                Connect(SubI->GetResultReg(), SubI->GetOperand1());
                EraseSet.insert(I);
            }
            if (I->GetOpcode() == FADD || I->GetOpcode() == FSUB) {
                auto AddI = (ArithmeticInstruction *)I;

                auto op = AddI->GetOperand2();
                if (op->GetOperandType() != BasicOperand::IMMF32) {
                    continue;
                }
                auto num = ((ImmF32Operand *)op)->GetFloatVal();
                if (num != 0.0) {
                    continue;
                }
                // AddI->PrintIR(std::cerr);
                Connect(AddI->GetResultReg(), AddI->GetOperand1());
                EraseSet.insert(I);
            }
            if (I->GetOpcode() == FMUL || I->GetOpcode() == FDIV) {

                auto SubI = (ArithmeticInstruction *)I;
                auto op = SubI->GetOperand2();
                if (op->GetOperandType() != BasicOperand::IMMF32) {
                    continue;
                }
                auto num = ((ImmF32Operand *)op)->GetFloatVal();
                if (num != 1.0) {
                    continue;
                }
                // std::cerr<<num-1<<'\n';
                Connect(SubI->GetResultReg(), SubI->GetOperand1());
                EraseSet.insert(I);
            }
        }
    }

    for (auto [id, bb] : *C->block_map) {
        for (auto &I : bb->Instruction_list) {
            auto resultopno = I->GetResultRegNo();
            if (UnionFindMap.find(resultopno) != UnionFindMap.end()) {
                UnionFindMap[resultopno] = UnionFind(resultopno);
            }
            for (auto op : I->GetNonResultOperands()) {
                if (op->GetOperandType() == BasicOperand::REG) {
                    auto regno = ((RegOperand *)op)->GetRegNo();
                    if (UnionFindMap[regno] != regno) {
                        UnionFindMap[regno] = UnionFind(regno);
                    }
                }
            }
        }
    }

    for (auto [id, bb] : *C->block_map) {
        auto tmp_Instruction_list = bb->Instruction_list;
        bb->Instruction_list.clear();
        for (auto &I : tmp_Instruction_list) {
            if (EraseSet.find(I) != EraseSet.end()) {
                continue;
            }
            I->ReplaceRegByMap(UnionFindMap);
            bb->InsertInstruction(1, I);
        }
        // bb->printIR(std::cerr);
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
    if (I->GetOpcode() == ICMP) {
        auto IcmpI = (IcmpInstruction*)I;
        if(IcmpI->GetCompareCondition() == eq || IcmpI->GetCompareCondition() == ne){
            if(IcmpI->GetOp1()->GetOperandType() == BasicOperand::IMMI32) {
                auto op1 = IcmpI->GetOp1();
                auto op2 = IcmpI->GetOp2();
                IcmpI->SetOp1(op2);
                IcmpI->SetOp2(op1);
            }
        }
    }
}

/*
%r1 = sub i32 %r0,4 will be transformed to %r1 = add i32 %r0,-4
*/
void I32ConstantSub2AddSimplify(Instruction I) {
    if (I->GetOpcode() == SUB) {
        auto ArithI = (ArithmeticInstruction *)I;
        if (ArithI->GetOperand2()->GetOperandType() == BasicOperand::IMMI32) {
            auto imm = ((ImmI32Operand *)ArithI->GetOperand2())->GetIntImmVal();
            if (imm == -2147483648) {    // can not overflow
                return;
            }
            ArithI->SetOperand2(new ImmI32Operand(-imm));
            ArithI->Setopcode(ADD);
        }
    }
}

//  {sub X, X},{Mul 0, X} is represented as 0 + 0
void ZeroResultSimplify(Instruction &I) {
    if(I->GetOpcode()==SUB){
        
        auto subI = (ArithmeticInstruction*)I;
        if(subI->GetOperand1()->GetFullName() == subI->GetOperand2()->GetFullName()){
            // I->PrintIR(std::cerr);
            I = new ArithmeticInstruction(ADD,I32,new ImmI32Operand(0),new ImmI32Operand(0),subI->GetResultOperand());
            // I->PrintIR(std::cerr);
        }
    }
    if(I->GetOpcode()==MUL){
        auto mulI = (ArithmeticInstruction*)I;
        auto op1 = mulI->GetOperand1();
        auto op2 = mulI->GetOperand2();
        if(op1->GetOperandType() == BasicOperand::IMMI32){
            auto num1 = ((ImmI32Operand*)op1)->GetIntImmVal();
            if(num1 == 0){
                // I->PrintIR(std::cerr);
                I = new ArithmeticInstruction(ADD,I32,new ImmI32Operand(0),new ImmI32Operand(0),mulI->GetResultOperand());
                // I->PrintIR(std::cerr);
            }
        }else if(op2->GetOperandType() == BasicOperand::IMMI32){
            auto num2 = ((ImmI32Operand*)op2)->GetIntImmVal();
            if(num2== 0){
                // I->PrintIR(std::cerr);
                I = new ArithmeticInstruction(ADD,I32,new ImmI32Operand(0),new ImmI32Operand(0),mulI->GetResultOperand());
                // I->PrintIR(std::cerr);
            }
        }
    }
}

// TODO():DoubleAddInstSimplify
// {%r = X + X} => {%r = X*2(the right operand is const)}
void DoubleAddInstSimplify(Instruction &I) {

}

void InstSimplify(CFG *C) {
    for (auto [id, bb] : *C->block_map) {
        for (auto &I : bb->Instruction_list) {
            // I->PrintIR(std::cerr);
            I32ConstantSimplify(I);
            I32ConstantSub2AddSimplify(I);
            ZeroResultSimplify(I);
        }
    }
    SrcEqResultInstEliminate(C);
}

/*
the implementation is very trivial, only dfs the DomTree

Need to be optimize:
1.only one reg is changed
    %ry1 = gep [100x[10xi32]], ptr @x, i32 0, i32 %r1, i32 %r2
    %r3 = add %r1, 2
    %ry2 = gep [100x[10xi32]], ptr @x, i32 0, i32 %r3, i32 %r2
---------------------------------------------------------will be
    %ry1 = gep [100x[10xi32]] , ptr @x, i32 0, i32 %r1, i32 %r2
    %r3 = add %r1, 2 (dead code but do not delete at this pass)
    %ry2 = gep i32, ptr %ry1, i32 20

2.exists multiple regs and immediate ops are changed
    %ry1 = gep [1000x[100x[10xi32]]], ptr @x, i32 0, i32 %r1, i32 %r2, i32 2
    %r3 = add %r1, -2
    %r4 = add %r2, 3
    %ry2 = gep [1000x[100x[10xi32]]], ptr @x, i32 0, i32 %r3, i32 %r4, i32 3
---------------------------------------------------------will be
    %ry1 = gep [1000x[100x[10xi32]]], ptr @x, i32 0, i32 %r1, i32 %r2, i32 2
    %r3 = add %r1, 2 (dead code but do not delete at this pass)
    %r4 = add %r2, 3 (dead code but do not delete at this pass)
    %ry2 = gep i32, ptr %ry1, i32 -1969 (100 * 10 * (r3 - r1) + 10 * (r4 - r2) + 3 - 2)
3.reg0 = reg1 + imm32 can be transformed to reg1 = reg0 + (-imm32)
    %ry1 = gep [100x[10xi32]], ptr @x, i32 0, i32 %r1, i32 %r2
    %r1 = add %r3, 2
    %ry2 = gep [100x[10xi32]], ptr @x, i32 0, i32 %r3, i32 %r2
---------------------------------------------------------will be
    %ry1 = gep [100x[10xi32]] , ptr @x, i32 0, i32 %r1, i32 %r2
    %r1 = add %r3, 2 (dead code but do not delete at this pass)
    %ry2 = gep i32, ptr %ry1, i32 -20

the transformed instruction is %r3 = add %r1, 2 , we named it SubDef.
*/
void GEPStrengthReduce(CFG *C) {
    // DOING("GEPStrengthReduce");

    std::set<Instruction> Instructionset;
    std::map<std::string, std::vector<Instruction>> GepPtrMap;
    std::map<int, Instruction> AddDefMap;
    std::map<int, std::map<int, Instruction>> SubDefMap;

    std::set<Instruction> AddInstConstantSet;
    std::map<int, std::vector<std::pair<int, int>>> G;
    std::map<int, Instruction> GepResultMap;
    std::vector<int> rd(C->max_reg, 0);
    std::function<int(Instruction, Instruction)> existpass = [&](Instruction GepI, Instruction BefI) {
        // check the two Instruction whether to be optimize
        // return the difference value between two Instruction if to be optimize, otherwise -1.
        auto GepIvec = GepI->GetNonResultOperands();
        auto BefIvec = BefI->GetNonResultOperands();
        int aimOperand = 0;
        if (GepIvec.size() != BefIvec.size()) {
            aimOperand = -1;
            return aimOperand;
        }
        std::stack<int> siz1;
        std::vector<int> siz;
        int siz_now = 1;
        siz1.push(siz_now);
        auto GepDim = ((GetElementptrInstruction *)GepI)->GetDims();
        for (int i = GepDim.size() - 1; i >= 0; --i) {
            siz_now *= GepDim[i];
            siz1.push(siz_now);
        }
        while (!siz1.empty()) {
            siz.push_back(siz1.top());
            siz1.pop();
        }
        // GepI   : %ry1 = gep [100x[10xi32]], ptr @x, i32 0, i32 %r1, i32 %r2
        // OpdefI : %r1 = add %r3, 2
        // BefI   : %ry2 = gep [100x[10xi32]], ptr @x, i32 0, i32 %r3, i32 %r2
        // GepIReg:0, %r1, %r2
        // BefIReg:0, %r3, %r2
        auto ResultOp = ((GetElementptrInstruction *)GepI)->GetResultReg();
        for (int i = 0; i < GepIvec.size(); ++i) {
            auto GepOp = GepIvec[i];
            auto BefOp = BefIvec[i];
            if (GepOp->GetFullName() != BefOp->GetFullName()) {
                if (GepOp->GetOperandType() == BasicOperand::REG && BefOp->GetOperandType() == BasicOperand::REG) {
                    auto GepIReg = (RegOperand *)GepOp;
                    auto GepIRegNo = GepIReg->GetRegNo();
                    auto BefIReg = (RegOperand *)BefOp;
                    auto BefIRegNo = BefIReg->GetRegNo();

                    if (AddDefMap.find(GepIRegNo) == AddDefMap.end() && SubDefMap.find(GepIRegNo) == SubDefMap.end()) {
                        aimOperand = -1;
                        return aimOperand;
                    }
                    ArithmeticInstruction *OpDefI;
                    if (AddDefMap.find(GepIRegNo) != AddDefMap.end()) {
                        OpDefI = (ArithmeticInstruction *)AddDefMap[GepIRegNo];
                    } else if (SubDefMap[GepIRegNo].find(BefIRegNo) != SubDefMap[GepIRegNo].end()) {
                        OpDefI = (ArithmeticInstruction *)SubDefMap[GepIRegNo][BefIRegNo];
                    } else {
                        aimOperand = -1;
                        return aimOperand;
                    }
                    if (OpDefI->GetOperand1()->GetFullName() != BefOp->GetFullName()) {
                        aimOperand = -1;
                        return aimOperand;
                    }
                    auto NumOp = (ImmI32Operand *)OpDefI->GetOperand2();
                    auto Num = NumOp->GetIntImmVal();
                    auto GepDims = ((GetElementptrInstruction *)GepI)->GetDims();
                    auto GepIndexes = ((GetElementptrInstruction *)GepI)->GetIndexes();
                    aimOperand += Num * siz[i];
                } else if (GepOp->GetOperandType() == BasicOperand::IMMI32 &&
                           BefOp->GetOperandType() == BasicOperand::IMMI32) {
                    auto GepDims = ((GetElementptrInstruction *)GepI)->GetDims();
                    auto Num = ((ImmI32Operand *)GepOp)->GetIntImmVal() - ((ImmI32Operand *)BefOp)->GetIntImmVal();
                    aimOperand += Num * siz[i];
                } else {
                    aimOperand = -1;
                    return aimOperand;
                }
            }
        }
        return aimOperand;
    };
    std::function<void(int, int, int, Operand)> DFS2 = [&](int bbid, int rtbbid, int disnow, Operand rtptr) {
        // std::cerr<<bbid<<'\n';
        for (int i = 0; i < G[bbid].size(); ++i) {
            auto vpair = G[bbid][i];
            auto vbbid = vpair.first;
            auto dis = vpair.second;

            auto I = GepResultMap[vbbid];
            auto GepI = (GetElementptrInstruction *)I;
            auto GepDims = GepI->GetDims();
            auto GepIndexes = GepI->GetIndexes();
            // I->PrintIR(std::cerr);
            // BefI->PrintIR(std::cerr);
            // OpDefI->PrintIR(std::cerr);
            GepDims.clear();
            // std::cerr<<ptrVal->GetFullName()<<'\n';
            GepIndexes.clear();
            GepIndexes.push_back(new ImmI32Operand(dis + disnow));
            GepIndexes.push_back(rtptr);
            GepI->SetNonResultOperands(GepIndexes);
            GepI->SetDims(GepDims);
            // GepI->PrintIR(std::cerr);
            DFS2(vbbid, rtbbid, disnow + dis, rtptr);
        }
    };
    std::function<void(int)> Gepdfs = [&](int bbid) {
        // DFS domtree
        LLVMBlock now = (*C->block_map)[bbid];
        for (auto I : now->Instruction_list) {
            if (I->GetOpcode() == GETELEMENTPTR) {
                auto GepI = (GetElementptrInstruction *)I;
                auto ResultOp = GepI->GetResultReg();
                auto ptrOp = GepI->GetPtrVal();
                GepPtrMap[ptrOp->GetFullName()].push_back(I);
                GepResultMap[((RegOperand *)ResultOp)->GetRegNo()] = I;
                Instructionset.insert(I);
            }
            if (I->GetOpcode() == ADD) {
                auto ArthiI = (ArithmeticInstruction *)I;
                auto ResultOp = ArthiI->GetResultOperand();
                auto NoResultOpVec = ArthiI->GetNonResultOperands();
                if (NoResultOpVec.size() <= 1 || NoResultOpVec[1]->GetOperandType() != BasicOperand::IMMI32 ||
                    NoResultOpVec[0]->GetOperandType() != BasicOperand::REG) {
                    continue;
                }
                AddDefMap[((RegOperand *)ResultOp)->GetRegNo()] = ArthiI;
                Instructionset.insert(I);
                // transform AddDef(reg0 = reg1 + imm32) to SubDef(reg1 = reg0 + (-imm32)), one reg can only have one
                // AddDef,but multiple SubDef
                auto NewNum = -((ImmI32Operand *)NoResultOpVec[1])->GetIntImmVal();
                auto NewI = new ArithmeticInstruction(ADD, I32, ResultOp, new ImmI32Operand(NewNum), NoResultOpVec[0]);
                // Exist Memory Link
                SubDefMap[((RegOperand *)NoResultOpVec[0])->GetRegNo()][((RegOperand *)ResultOp)->GetRegNo()] = NewI;
                // NewI
                Instructionset.insert(NewI);
            }
        }
        for (auto v : C->DomTree.dom_tree[bbid]) {
            Gepdfs(v->block_id);
        }

        auto Instruction_it = now->Instruction_list.end();
        do {
            // optimize GEP at post order to pursue max optimize number,
            // or it may only optimize GEPs in the front but not GEPs whose
            // BefI is optimized GEP
            Instruction_it--;
            auto I = *Instruction_it;
            if (Instructionset.find(I) == Instructionset.end()) {
                continue;
            }
            // I->PrintIR(std::cerr);
            if (I->GetOpcode() != GETELEMENTPTR) {
                auto ArthiI = (ArithmeticInstruction *)I;
                auto ResultOp = ArthiI->GetResultOperand();

                if (AddDefMap.find(((RegOperand *)ResultOp)->GetRegNo()) != AddDefMap.end()) {
                    AddDefMap.erase(((RegOperand *)ResultOp)->GetRegNo());
                }

                if (SubDefMap.find(((RegOperand *)ResultOp)->GetRegNo()) != SubDefMap.end()) {
                    auto NoResultOpVec = ArthiI->GetNonResultOperands();
                    if (NoResultOpVec[0]->GetOperandType() == BasicOperand::REG) {
                        auto NoResultOp = (RegOperand *)NoResultOpVec[0];
                        SubDefMap[((RegOperand *)ResultOp)->GetRegNo()].erase(NoResultOp->GetRegNo());
                    }
                }
            } else {
                auto GepI = (GetElementptrInstruction *)I;
                auto GepIvec = GepI->GetNonResultOperands();
                auto ResultOp = GepI->GetResultReg();
                auto GepIopNo = ((RegOperand *)ResultOp)->GetRegNo();
                auto ptrOp = GepI->GetPtrVal();
                auto ptrOpStr = ptrOp->GetFullName();
                GepPtrMap[ptrOp->GetFullName()].pop_back();
                for (auto BefI : GepPtrMap[ptrOpStr]) {
                    auto aimOp = existpass(GepI, BefI);
                    if (aimOp != -1) {
                        // auto GepDims = GepI->GetDims();
                        // auto GepIndexes = GepI->GetIndexes();
                        // // I->PrintIR(std::cerr);
                        // // BefI->PrintIR(std::cerr);
                        // // OpDefI->PrintIR(std::cerr);
                        // GepDims.clear();
                        auto ptrVal = BefI->GetResultReg();

                        // // std::cerr<<ptrVal->GetFullName()<<'\n';
                        // GepIndexes.clear();
                        // GepIndexes.push_back(new ImmI32Operand(aimOp));
                        // GepIndexes.push_back(ptrVal);
                        // GepI->SetNonResultOperands(GepIndexes);
                        // GepI->SetDims(GepDims);

                        auto BefIopNo = ((RegOperand *)ptrVal)->GetRegNo();
                        // UnionFindMap[GepIopNo] = BefIopNo;
                        G[BefIopNo].push_back(std::make_pair(GepIopNo, aimOp));
                        rd[GepIopNo]++;
                        // GepI->PrintIR(std::cerr);
                        // BefI->PrintIR(std::cerr);
                        break;
                    }
                }
                // std::cerr<<GepPtrMap[ptrOp].size()<<'\n';
            }
            // (*now->Instruction_list.begin())->PrintIR(std::cerr);
            Instructionset.erase(I);
        } while (Instruction_it != now->Instruction_list.begin());
        for (int i = 0; i <= C->max_reg; ++i) {
            if (G[i].size() > 0 && rd[i] == 0) {
                auto rtI = GepResultMap[i];
                auto rtBefI = (GetElementptrInstruction *)rtI;
                DFS2(i, i, 0, rtI->GetResultReg());
            }
        }
    };

    C->BuildCFG();
    C->BuildDominatorTree();
    Gepdfs(0);
    GepPtrMap.clear();
    AddDefMap.clear();
    SubDefMap.clear();
    GepResultMap.clear();
    // when |imm32_1| >= 2^9 and |imm32_2| >= 2^9 and |imm32_1 - imm32_2| < 2^9
    //     %ry1 = gep i32, ptr @x, i32 imm32_1
    //     %ry2 = gep i32, ptr @x, i32 imm32_2
    // ---------------------------------------------------------will be
    //     %ry1 = gep i32, ptr @x, i32 imm32_1
    //     %ry2 = gep i32, ptr ry1, i32 imm32_2 - imm32_1

    const int max_imm32 = 1 << 9;

    std::function<std::pair<bool, int>(Instruction)> checkGepimmI = [&](Instruction I) {
        std::pair<bool, int> ans = std::make_pair(false, 0);
        auto GepI = (GetElementptrInstruction *)I;
        if (!GepI->GetDims().empty()) {
            return ans;
        }
        auto op = GepI->GetNonResultOperands()[0];
        if (op->GetOperandType() != BasicOperand::IMMI32) {
            return ans;
        }
        // I->PrintIR(std::cerr);
        auto Imm = ((ImmI32Operand *)op)->GetIntImmVal();
        if (Imm < max_imm32 && Imm > -max_imm32) {
            return ans;
        }
        ans.first = true;
        ans.second = Imm;
        return ans;
    };
    std::function<void(int)> Gepimm32 = [&](int bbid) {
        LLVMBlock now = (*C->block_map)[bbid];

        for (auto I : now->Instruction_list) {
            if (I->GetOpcode() == GETELEMENTPTR) {
                auto GepI = (GetElementptrInstruction *)I;
                auto ans_pair = checkGepimmI(I);
                if (ans_pair.first) {
                    auto imm = ans_pair.second;
                    auto ResultOp = GepI->GetResultReg();
                    auto ptrOp = GepI->GetPtrVal();
                    GepPtrMap[ptrOp->GetFullName()].push_back(I);
                    Instructionset.insert(I);
                }
            }
        }
        for (auto v : C->DomTree.dom_tree[bbid]) {
            Gepimm32(v->block_id);
        }

        auto Instruction_it = now->Instruction_list.end();
        do {
            Instruction_it--;
            auto I = *Instruction_it;
            if (Instructionset.find(I) == Instructionset.end()) {
                continue;
            }

            auto GepI = (GetElementptrInstruction *)I;
            auto GepIvec = GepI->GetNonResultOperands();
            auto GepIop = GepIvec[0];
            auto GepIImm = ((ImmI32Operand *)GepIop)->GetIntImmVal();
            auto ptrOp = GepI->GetPtrVal();
            auto ptrOpStr = ptrOp->GetFullName();
            // I->PrintIR(std::cerr);
            // if(ptrOpStr == "%r71"){
            //     I->PrintIR(std::cerr);
            // }
            GepPtrMap[ptrOp->GetFullName()].pop_back();
            for (auto BefInstruction : GepPtrMap[ptrOpStr]) {
                auto BefI = (GetElementptrInstruction *)BefInstruction;
                auto BefIptrOp = BefI->GetPtrVal();
                auto BefIptrOpStr = ptrOp->GetFullName();
                if (ptrOpStr == BefIptrOpStr) {
                    auto BefIvec = BefI->GetNonResultOperands();
                    auto BefIop = BefIvec[0];
                    auto BefIImm = ((ImmI32Operand *)BefIop)->GetIntImmVal();
                    auto newImm = GepIImm - BefIImm;
                    if (newImm < max_imm32 && newImm > -max_imm32) {
                        auto GepIndexes = GepI->GetIndexes();
                        // I->PrintIR(std::cerr);
                        // BefI->PrintIR(std::cerr);
                        // OpDefI->PrintIR(std::cerr);
                        auto ptrVal = BefI->GetResultReg();
                        // std::cerr<<ptrVal->GetFullName()<<'\n';
                        GepIndexes.clear();
                        GepIndexes.push_back(new ImmI32Operand(newImm));
                        GepIndexes.push_back(ptrVal);
                        GepI->SetNonResultOperands(GepIndexes);
                        // GepI->PrintIR(std::cerr);
                        break;
                    }
                }
            }
            // std::cerr<<GepPtrMap[ptrOp].size()<<'\n';

            // (*now->Instruction_list.begin())->PrintIR(std::cerr);
            Instructionset.erase(I);
        } while (Instruction_it != now->Instruction_list.begin());
    };
    GepPtrMap.clear();
    Gepimm32(0);
}