#include "../../include/cfg.h"
#include <algorithm>
#include <functional>
#include <iostream>

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
    // std::cerr<<C->function_def->GetFunctionName()<<" "<<C->max_reg<<'\n';
    if(C->max_reg<=0){return;}
    for (int i=0;i<=C->max_reg;++i) {
        // puts("ASDAD");
       UnionFindMap[i]=i;
    }
    
    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            // I->PrintIR(std::cerr);
            if(I->GetNonResultOperands().size()<=1){continue;}
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
                    if(UnionFindMap[regno]!=regno){
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
            // if(I->GetOpcode())
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
    SrcEqResultInstEliminate(C);
}

// TODO():GEPStrengthReduce
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
    std::map<std::string,std::vector<Instruction>> GepMap;
    std::map<int,Instruction> AddDefMap;
    std::map<int,std::map<int,Instruction>> SubDefMap;

    std::set<Instruction> AddInstConstantSet;
    std::function<int(Instruction,Instruction)> existpass = [&](Instruction GepI,Instruction BefI) {
        // check the two Instruction whether to be optimize
        // return the difference value between two Instruction if to be optimize, otherwise -1.
        auto GepIvec = GepI->GetNonResultOperands();
        auto BefIvec = BefI->GetNonResultOperands();
        int aimOperand = 0;
        if(GepIvec.size()!=BefIvec.size()){
            aimOperand = -1;
            return aimOperand;
        }
        std::stack<int> siz1;
        std::vector<int> siz;
        int siz_now = 1;
        siz1.push(siz_now);
        auto GepDim = ((GetElementptrInstruction*)GepI)->GetDims();
        for(int i = GepDim.size() - 1;i >= 0 ;--i){
            siz_now *= GepDim[i];
            siz1.push(siz_now);
        }
        while(!siz1.empty()){
            siz.push_back(siz1.top());
            siz1.pop();
        }
        // GepI   : %ry1 = gep [100x[10xi32]], ptr @x, i32 0, i32 %r1, i32 %r2
        // OpdefI : %r1 = add %r3, 2
        // BefI   : %ry2 = gep [100x[10xi32]], ptr @x, i32 0, i32 %r3, i32 %r2
        // GepIReg:0, %r1, %r2
        // BefIReg:0, %r3, %r2 
        auto ResultOp = ((GetElementptrInstruction*)GepI)->GetResultReg();
        for(int i = 0;i < GepIvec.size(); ++i){
            auto GepOp = GepIvec[i];
            auto BefOp = BefIvec[i];
            if(GepOp->GetFullName() != BefOp->GetFullName()){
                if(GepOp->GetOperandType() == BasicOperand::REG && BefOp->GetOperandType() == BasicOperand::REG){
                    auto GepIReg = (RegOperand*)GepOp;
                    auto GepIRegNo = GepIReg->GetRegNo();
                    auto BefIReg = (RegOperand*)BefOp;
                    auto BefIRegNo = BefIReg->GetRegNo();
                    
                    if(AddDefMap.find(GepIRegNo)==AddDefMap.end() && SubDefMap.find(GepIRegNo) == SubDefMap.end()){
                        aimOperand = -1;
                        return aimOperand;
                    }
                    ArithmeticInstruction *OpDefI;
                    if(AddDefMap.find(GepIRegNo)!=AddDefMap.end()){
                        OpDefI = (ArithmeticInstruction*)AddDefMap[GepIRegNo];
                    }else if(SubDefMap[GepIRegNo].find(BefIRegNo)!=SubDefMap[GepIRegNo].end()){
                        OpDefI = (ArithmeticInstruction*)SubDefMap[GepIRegNo][BefIRegNo];
                    }else{
                        aimOperand = -1;
                        return aimOperand;
                    }
                    if(OpDefI->GetOperand1()->GetFullName()!=BefOp->GetFullName()){
                        aimOperand = -1;
                        return aimOperand;
                    }
                    auto NumOp = (ImmI32Operand*)OpDefI->GetOperand2();
                    auto Num = NumOp->GetIntImmVal();
                    auto GepDims = ((GetElementptrInstruction*)GepI)->GetDims();
                    auto GepIndexes = ((GetElementptrInstruction*)GepI)->GetIndexes();
                    aimOperand += Num*siz[i];
                }else if(GepOp->GetOperandType() == BasicOperand::IMMI32 && BefOp->GetOperandType() == BasicOperand::IMMI32){
                    auto GepDims = ((GetElementptrInstruction*)GepI)->GetDims();
                    auto Num = ((ImmI32Operand*)GepOp)->GetIntImmVal() - ((ImmI32Operand*)BefOp)->GetIntImmVal();
                    aimOperand += Num*siz[i];
                }else{
                    aimOperand = -1;
                    return aimOperand;
                }
            }
        }
        return aimOperand;
    };
    std::function<void(int)> Gepdfs = [&](int bbid) {
        // DFS domtree
        LLVMBlock now = (*C->block_map)[bbid];
        
        for (auto I:now->Instruction_list){
            if(I->GetOpcode() == GETELEMENTPTR){
                auto GepI = (GetElementptrInstruction*)I;
                auto ResultOp = GepI->GetResultReg();
                auto ptrOp = GepI->GetPtrVal();
                GepMap[ptrOp->GetFullName()].push_back(I);
                Instructionset.insert(I);
            }
            if(I->GetOpcode() == ADD){
                auto ArthiI=(ArithmeticInstruction*)I;
                auto ResultOp = ArthiI->GetResultOperand();
                auto NoResultOpVec = ArthiI->GetNonResultOperands();
                if(NoResultOpVec.size()<=1 || NoResultOpVec[1]->GetOperandType()!=BasicOperand::IMMI32 
                || NoResultOpVec[0]->GetOperandType()!=BasicOperand::REG){continue;}
                AddDefMap[((RegOperand*)ResultOp)->GetRegNo()]=ArthiI;
                Instructionset.insert(I);
                // transform AddDef(reg0 = reg1 + imm32) to SubDef(reg1 = reg0 + (-imm32)), one reg can only have one AddDef,but multiple SubDef
                auto NewNum = -((ImmI32Operand*)NoResultOpVec[1])->GetIntImmVal();
                auto NewI = new ArithmeticInstruction(ADD, I32, ResultOp, new ImmI32Operand(NewNum), NoResultOpVec[0]);
                //Exist Memory Link
                SubDefMap[((RegOperand*)NoResultOpVec[0])->GetRegNo()][((RegOperand*)ResultOp)->GetRegNo()]=NewI;
                // NewI
                Instructionset.insert(NewI);
            }
        }
        for (auto v : C->DomTree.dom_tree[bbid]) {
            Gepdfs(v->block_id);
        }
        
        auto Instruction_it = now->Instruction_list.end();
        do{
            // optimize GEP at post order to pursue max optimize number, 
            // or it may only optimize GEPs in the front but not GEPs whose
            // BefI is optimized GEP 
            Instruction_it--;
            auto I = *Instruction_it;
            if(Instructionset.find(I) == Instructionset.end()){continue;}
            // I->PrintIR(std::cerr);
            if(I->GetOpcode()!=GETELEMENTPTR){
                auto ArthiI=(ArithmeticInstruction*)I;
                auto ResultOp = ArthiI->GetResultOperand();
                
                if(AddDefMap.find(((RegOperand*)ResultOp)->GetRegNo())!=AddDefMap.end()){
                    AddDefMap.erase(((RegOperand*)ResultOp)->GetRegNo());
                }

                if(SubDefMap.find(((RegOperand*)ResultOp)->GetRegNo())!=SubDefMap.end()){
                    auto NoResultOpVec = ArthiI->GetNonResultOperands();
                    if(NoResultOpVec[0]->GetOperandType() == BasicOperand::REG){
                        auto NoResultOp = (RegOperand*)NoResultOpVec[0];
                        SubDefMap[((RegOperand*)ResultOp)->GetRegNo()].erase(NoResultOp->GetRegNo());
                    }
                }
            }else{
                auto GepI = (GetElementptrInstruction*)I;
                auto GepIvec = GepI->GetNonResultOperands();
                auto ResultOp = GepI->GetResultReg();
                auto ptrOp = GepI->GetPtrVal();
                auto ptrOpStr = ptrOp->GetFullName();
                GepMap[ptrOp->GetFullName()].pop_back();
                for(auto BefI : GepMap[ptrOpStr]){
                    auto aimOp = existpass(GepI,BefI);
                    
                    if(aimOp != -1){
                        auto GepDims = GepI->GetDims();
                        auto GepIndexes = GepI->GetIndexes();
                        // puts("----------");
                        // I->PrintIR(std::cerr);
                        // BefI->PrintIR(std::cerr);
                        // OpDefI->PrintIR(std::cerr);
                        GepDims.clear();
                        auto ptrVal=BefI->GetResultReg();
                        // std::cerr<<ptrVal->GetFullName()<<'\n';
                        GepIndexes.clear();
                        GepIndexes.push_back(new ImmI32Operand(aimOp));
                        GepIndexes.push_back(ptrVal);
                        GepI->SetNonResultOperands(GepIndexes);
                        GepI->SetDims(GepDims);
                        // GepI->PrintIR(std::cerr);
                        // GepI = new GetElementptrInstruction(GepI->GetType(),GepI->GetResult(),);
                        break;
                    }
                }
                // std::cerr<<GepMap[ptrOp].size()<<'\n';
                
            }
            // (*now->Instruction_list.begin())->PrintIR(std::cerr);
            Instructionset.erase(I);
        }while(Instruction_it!=now->Instruction_list.begin());
    };
    
    C->BuildCFG();
    C->BuildDominatorTree();
    Gepdfs(0);
    GepMap.clear();
    AddDefMap.clear();
    SubDefMap.clear();
}