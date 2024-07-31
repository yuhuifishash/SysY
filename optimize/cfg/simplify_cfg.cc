#include "../../include/cfg.h"
#include <functional>
/**
    * this function will eliminate some simple short circult
    * for example, if(a && b) will be transformed as below:
    *   %r1 = icmp ne i32 %a(register of a), 0
        %r2 = icmp ne i32 %b(register of b), 0
        %r3 = and i1 %r1, %r2
        br i1 %r3, label %true, label %false
    *
    * the short circult CFG will be like:
    * B1 ->  B2  ->  B3    this will be transformed to  B1 -> B3
    * |      |--> B4  |                                 |--> B4
    * |_______________|
    * B2 shoule have few instructions and do not have store instruction
*/
void EliminateSimpleShortCircult(CFG *C) {
    std::cerr << "EliminateSimpleShortCircult in SimplifyCFG is not implemented now\n";
}

/*
  /B1\
B0    B3  may be transformed to B0(B1 B2 use select)->B3
  \B2/

B0--->B2  may be transformed to B0(B1 use select)->B2
  \B1/
*/
void SimpleIfConversion(CFG *C) {}



/*
L0(bb1):  
    %r6 = icmp slt i32 %r0,%r1
    br i1 %r6, label %L2, label %L1
L1(bb2):  
    br label %L2
L2(bb):  
    %r11 = phi i32 [%r0,%L0],[%r1,%L1]

will be transformed to

L2:
    %r11 = llvm.smin(%r0,%r1)
*/

/*
    min(%r0,%r1) => 
                    slt %r0,%r1
                    sle %r0,%r1
*/
void MinMaxRecognize(CFG *C) {
    // puts("BEGIN");
    auto blockmap = *C->block_map;
    std::map<int,Instruction> definemap;
    for (auto [id, bb] : blockmap) {
        for(auto I : bb->Instruction_list){
            I->SetBlockID(id);
            definemap[I->GetResultRegNo()] = I;
        }
    }
    for (auto [id, bb] : blockmap) {
        for(auto &I : bb->Instruction_list){
            if(I->GetOpcode() != PHI){
                continue;
            }
            auto PhiI = (PhiInstruction*)I;
            auto PhiList = PhiI->GetPhiList();
            if(PhiList.size() != 2){
                continue;
            }
            auto datatype = PhiI->GetDataType();
            if(datatype != I32 && datatype != FLOAT32){
                continue;
            }
            auto Labelop1 = (LabelOperand*)PhiList[0].first;
            auto Labelop2 = (LabelOperand*)PhiList[1].first;
            auto Regop1 = PhiList[0].second;
            auto Regop2 = PhiList[1].second;
            auto bb1 = blockmap[Labelop1->GetLabelNo()];
            auto bb2 = blockmap[Labelop2->GetLabelNo()];
            
            auto endI1 = bb1->Instruction_list.back();
            auto endI2 = bb2->Instruction_list.back();
            if(endI2->GetOpcode() == BR_COND && endI1->GetOpcode() ==BR_UNCOND){
                std::swap(endI1,endI2);
                std::swap(Labelop1,Labelop2);
                std::swap(Regop1,Regop2);
                std::swap(bb1,bb2);
            }
            if(endI1->GetOpcode() != BR_COND || endI2->GetOpcode() !=BR_UNCOND){
                continue;
            }
            auto BrcondI = (BrCondInstruction*)endI1;
            auto BruncondI = (BrCondInstruction*)endI2;
            auto BrcondReg = (RegOperand*)BrcondI->GetCond();
            auto BrcondRegDefI = definemap[BrcondReg->GetRegNo()];
            if((datatype == I32 && BrcondRegDefI->GetOpcode() != ICMP) && (datatype == FLOAT32 && BrcondRegDefI->GetOpcode() != FCMP)){// can be fcmp
                continue;
            }
            if(datatype == I32){
                auto IcmpI = (IcmpInstruction*)BrcondRegDefI;
                bool ismin = 1;
                bool issigned = 1;
                auto cmpcond = IcmpI->GetCompareCondition();
                if(cmpcond == slt || cmpcond == sle){
                    ismin = 1;
                    issigned = 1;
                }else if(cmpcond == sgt || cmpcond == sge){
                    ismin = 0;
                    issigned = 1;
                }else if(cmpcond == ult || cmpcond == ule){
                    ismin = 1;
                    issigned = 0;
                }else if(cmpcond == sgt || cmpcond == sge){
                    ismin = 0;
                    issigned = 0;
                }else{
                    continue;
                }
                auto IcmpOp1 = IcmpI->GetOp1();
                auto IcmpOp2 = IcmpI->GetOp2();
                auto PhiOp1 = PhiList[0].second;
                auto PhiOp2 = PhiList[1].second;
                auto PhiL1 = ((LabelOperand*)PhiList[0].first);
                auto PhiL2 = ((LabelOperand*)PhiList[1].first);
                if(IcmpOp1->GetFullName() == PhiOp2->GetFullName() && IcmpOp2->GetFullName() == PhiOp1->GetFullName()){
                    std::swap(PhiOp1,PhiOp2);
                    std::swap(PhiL1,PhiL2);
                    ismin^=1;
                }
                
                if(IcmpOp1->GetFullName() != PhiOp1->GetFullName() || IcmpOp2->GetFullName() != PhiOp2->GetFullName()){
                    // std::cerr<<IcmpOp1->GetFullName()<<" "<<PhiOp1->GetFullName()<<'\n';
                    // std::cerr<<IcmpOp2->GetFullName()<<" "<<PhiOp2->GetFullName()<<'\n';
                    continue;
                }
                
                if(bb2->block_id == ((LabelOperand*)BrcondI->GetTrueLabel())->GetLabelNo()
                    && id == ((LabelOperand*)BrcondI->GetFalseLabel())->GetLabelNo()){
                    ismin^=1;
                }else if(id != ((LabelOperand*)BrcondI->GetTrueLabel())->GetLabelNo()
                    || bb2->block_id != ((LabelOperand*)BrcondI->GetFalseLabel())->GetLabelNo()){
                    continue;
                }
                
                if(!((PhiL1->GetLabelNo() == bb1->block_id && PhiL2->GetLabelNo() == bb2->block_id)
                    || PhiL1->GetLabelNo() == bb2->block_id && PhiL2->GetLabelNo() == bb1->block_id)){
                    continue;
                }
                // I->PrintIR(std::cerr);
                if(ismin && issigned){
                    I = new ArithmeticInstruction(SMIN_I32,I32,PhiOp1,PhiOp2,I->GetResultReg());
                }else if(!ismin && issigned){
                    I = new ArithmeticInstruction(SMAX_I32,I32,PhiOp1,PhiOp2,I->GetResultReg());
                }else if(ismin && !issigned){
                    I = new ArithmeticInstruction(UMIN_I32,I32,PhiOp1,PhiOp2,I->GetResultReg());
                }else{
                    I = new ArithmeticInstruction(UMAX_I32,I32,PhiOp1,PhiOp2,I->GetResultReg());
                }
                // I->PrintIR(std::cerr);
            }else{
                // I->PrintIR(std::cerr);
                auto FcmpI = (FcmpInstruction*)BrcondRegDefI;
                bool ismin = 1;
                auto cmpcond = FcmpI->GetCompareCondition();
                if(cmpcond == ULT || cmpcond == ULE || cmpcond == OLT || cmpcond == OLE){
                    ismin = 1;
                }else if(cmpcond == UGT || cmpcond == UGE || cmpcond == OGT || cmpcond == OGE){
                    ismin = 0;
                }else{
                    continue;
                }
                
                auto FcmpOp1 = FcmpI->GetOp1();
                auto FcmpOp2 = FcmpI->GetOp2();
                auto PhiOp1 = PhiList[0].second;
                auto PhiOp2 = PhiList[1].second;
                auto PhiL1 = ((LabelOperand*)PhiList[0].first);
                auto PhiL2 = ((LabelOperand*)PhiList[1].first);
                if(FcmpOp1->GetFullName() == PhiOp2->GetFullName() && FcmpOp2->GetFullName() == PhiOp1->GetFullName()){
                    std::swap(PhiOp1,PhiOp2);
                    std::swap(PhiL1,PhiL2);
                    ismin^=1;
                }
                // I->PrintIR(std::cerr);
                if(FcmpOp1->GetFullName() != PhiOp1->GetFullName() || FcmpOp2->GetFullName() != PhiOp2->GetFullName()){
                    continue;
                }
                // I->PrintIR(std::cerr);
                if(bb2->block_id == ((LabelOperand*)BrcondI->GetTrueLabel())->GetLabelNo()
                    && id == ((LabelOperand*)BrcondI->GetFalseLabel())->GetLabelNo()){
                    ismin^=1;
                }else if(id != ((LabelOperand*)BrcondI->GetTrueLabel())->GetLabelNo()
                    || bb2->block_id != ((LabelOperand*)BrcondI->GetFalseLabel())->GetLabelNo()){
                    // std::cerr<<id<<" "<<((LabelOperand*)BrcondI->GetTrueLabel())->GetLabelNo()<<'\n';
                    continue;
                }
                // I->PrintIR(std::cerr);
                if(!((PhiL1->GetLabelNo() == bb1->block_id && PhiL2->GetLabelNo() == bb2->block_id)
                    || PhiL1->GetLabelNo() == bb2->block_id && PhiL2->GetLabelNo() == bb1->block_id)){
                    continue;
                }
                // I->PrintIR(std::cerr);
                if(ismin){
                    I = new ArithmeticInstruction(FMIN_F32,FLOAT32,PhiOp1,PhiOp2,I->GetResultReg());
                }else{
                    I = new ArithmeticInstruction(FMAX_F32,FLOAT32,PhiOp1,PhiOp2,I->GetResultReg());
                }
                // I->PrintIR(std::cerr);
            }
        }
    }
}

void ArrayMinMaxRecognize(CFG *C) {

}



/**
    * this function will eliminate the double br_uncond
    *
    * example:
    * L1:
        LIST1
        br label %L2
      L2:
        LIST2
        br label %L3
      L3:
        LIST3
        br label %L4

    * the example after this function will be:
    * L1:
        LIST1
        LIST2
        LIST3
        br label %L4

    * this pass will be useful after sccp
    * you can use testcase 29_lone_line.sy to check
    * @param C the control flow graph of the function */
void EliminateDoubleBrUnCond(CFG *C) {
    // C->BuildCFG();
    std::vector<std::vector<LLVMBlock>> &G = C->G;
    std::vector<std::vector<LLVMBlock>> &invG = C->invG;
    std::unordered_map<int, int> vsd;
    std::unordered_map<int, int> PhiMap;
    std::unordered_map<int, int> OtherPhiMap;
    std::stack<LLVMBlock> bbstack;
    bool changed = true;
    // auto FuncdefI = C->function_def;
    // puts("-----------------------");
    // FuncdefI->PrintIR(std::cerr);
    while (changed) {
        changed = false;
        bbstack.push(C->block_map->begin()->second);
        for (auto [id, bb] : *C->block_map) {
            vsd[id] = 0;
        }
        while (!bbstack.empty()) {
            auto bbu = bbstack.top();
            auto uid = bbu->block_id;
            bbstack.pop();
            vsd[uid] = 1;
            // std::cerr<<bbu<<'\n';
            // bbu->printIR(std::cerr);
            // for(auto [id,bb] : *C->block_map){
            //     bb->printIR(std::cerr);
            // }
            // puts("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
            for (auto bbv : G[uid]) {
                // bbv->printIR(std::cerr);
                int vid = bbv->block_id;
                if (vsd[vid] == 1) {
                    continue;
                }
                if (uid == 0) {
                    bbstack.push(bbv);
                }
                bool check1 = (G[uid].size() >= 1 && G[vid].size() >= 1 && G[uid][0] == bbv && G[vid][0] == bbu);
                bool check2 = (G[uid].size() >= 1 && G[vid].size() > 1 && G[uid][0] == bbv && G[vid][1] == bbu);
                bool check3 = (G[uid].size() > 1 && G[vid].size() >= 1 && G[uid][1] == bbv && G[vid][0] == bbu);
                bool check4 = (G[uid].size() > 1 && G[vid].size() > 1);
                // bbu->printIR(std::cerr);
                // bbv->printIR(std::cerr);
                // std::cerr<<G[uid].size()<<" "<<G[vid].size()<<" "<<check1<<'\n';
                // bool check5 = (invG[vid].size() == 1);
                // check5 = 1;
                bool check = ((!check4) && (check1 || check2 || check3));
                if (check) {
                    int x, y;    // x->v,y->u
                    if (check1) {
                        x = 0;
                        y = 0;
                    } else if (check2) {
                        x = 0;
                        y = 1;
                    } else {
                        x = 1;
                        y = 0;
                    }
                    if (G[vid].size() > 1) {
                        changed |= true;
                        G[uid][x] = bbu;
                        auto inv = G[vid][y ^ 1];
                        auto invid = inv->block_id;
                        for (int i = 0; i < invG[invid].size(); ++i) {
                            if (invG[invid][i] == bbv) {
                                invG[invid][i] = bbu;
                                break;
                            }
                        }
                        PhiMap[vid] = uid;
                        // bbv->Instruction_list.pop_back();
                        // auto endI=bbu->Instruction_list.back();
                        bbu->Instruction_list.pop_back();
                        // bbv->printIR(std::cerr);
                        while (!bbv->Instruction_list.empty()) {
                            bbu->InsertInstruction(1, bbv->Instruction_list.front());
                            bbv->Instruction_list.pop_front();
                        }
                        // bbu->Instruction_list.push_back(endI);
                        G[vid].clear();
                        invG[vid].clear();
                        C->block_map->erase(vid);
                    } else if (bbv->Instruction_list.size() == 1 &&  bbv->Instruction_list.back()->GetOpcode() != RET) {
                        
                        if(G[uid].size() == 1){
                            continue;
                        }
                        changed |= true;
                        auto endI = (BrCondInstruction *)bbu->Instruction_list.back();
                        bbu->Instruction_list.pop_back();
                        auto trueop = (LabelOperand *)endI->GetTrueLabel();
                        auto falseop = (LabelOperand *)endI->GetFalseLabel();
                        auto trueopno = trueop->GetLabelNo();
                        auto falseopno = falseop->GetLabelNo();
                        // bbv->printIR(std::cerr);
                        if (trueopno == vid) {
                            endI->SetTrueLabel(GetNewLabelOperand(uid));
                        } else {
                            endI->SetFalseLabel(GetNewLabelOperand(uid));
                        }
                        
                        bbu->Instruction_list.push_back(endI);
                        PhiMap[vid] = uid;
                        G[vid].clear();
                        invG[vid].clear();
                        C->block_map->erase(vid);
                    } else {
                        bbstack.push(bbv);
                    }
                } else if (G[uid].size() == 1 && invG[vid].size() == 1) {
                    changed |= true;
                    PhiMap[vid] = uid;
                    // update edge from inv u
                    G[uid].clear();
                    for (int j = 0; j < G[vid].size(); ++j) {
                        auto inv = G[vid][j];
                        auto invid = inv->block_id;
                        G[uid].push_back(inv);
                        for (int i = 0; i < G[invid].size(); ++i) {
                            if (invG[invid][i] == bbv) {
                                invG[invid][i] = bbu;
                                break;
                            }
                        }
                    }
                    // merge u to v
                    bbu->Instruction_list.pop_back();
                    for (auto I : bbv->Instruction_list) {
                        bbu->InsertInstruction(1, I);
                    }
                    G[vid].clear();
                    invG[vid].clear();
                    bbv->Instruction_list.clear();
                    C->block_map->erase(vid);
                    bbstack.push(bbu);
                } else if (G[uid].size() == 2 && invG[vid].size() == 1 && G[vid].size() == 1 &&
                           bbv->Instruction_list.size() == 1 && bbv->Instruction_list.back()->GetOpcode() != RET) {
                    auto inv = G[vid][0];
                    auto invid = inv->block_id;
                    auto I = bbu->Instruction_list.back();
                    if (I->GetOpcode() == BR_COND &&
                        (((LabelOperand *)((BrCondInstruction *)I)->GetTrueLabel())->GetLabelNo() == invid ||
                         ((LabelOperand *)((BrCondInstruction *)I)->GetFalseLabel())->GetLabelNo() == invid)) {
                        bbstack.push(bbv);
                        continue;
                    }
                    changed |= true;
                    OtherPhiMap[vid] = uid;
                    PhiMap[vid] = invid;
                    if (G[uid][0] == bbv) {
                        G[uid][0] = inv;
                    } else {
                        G[uid][1] = inv;
                    }
                    if (invG[invid][0] == bbv) {
                        invG[invid][0] = bbu;
                    } else {
                        invG[invid][1] = bbu;
                    }
                    auto endI = (BrCondInstruction *)bbu->Instruction_list.back();
                    bbu->Instruction_list.pop_back();
                    auto trueop = (LabelOperand *)endI->GetTrueLabel();
                    auto falseop = (LabelOperand *)endI->GetFalseLabel();
                    auto trueopno = trueop->GetLabelNo();
                    auto falseopno = falseop->GetLabelNo();
                    if (trueopno == vid) {
                        endI->SetTrueLabel(GetNewLabelOperand(invid));
                    } else {
                        endI->SetFalseLabel(GetNewLabelOperand(invid));
                    }
                    bbu->Instruction_list.push_back(endI);
                    G[vid].clear();
                    invG[vid].clear();
                    bbv->Instruction_list.clear();
                    C->block_map->erase(vid);
                    bbstack.push(bbu);
                } else {
                    bbstack.push(bbv);
                }
            }
        }

        for (auto [id, bb] : *C->block_map) {
            for (auto I : bb->Instruction_list) {
                if (I->GetOpcode() == PHI) {
                    auto PhiI = (PhiInstruction *)I;
                    auto ResultOperands = PhiI->GetPhiList();
                    for (u_int32_t i = 0; i < ResultOperands.size(); ++i) {
                        auto Labelop = (LabelOperand *)ResultOperands[i].first;
                        auto oldop = Labelop->GetLabelNo();
                        auto Labelopno = Labelop->GetLabelNo();
                        if (OtherPhiMap.find(Labelopno) != OtherPhiMap.end()) {
                            Labelopno = OtherPhiMap[Labelopno];
                            while (PhiMap.find(Labelopno) != PhiMap.end()) {
                                Labelopno = PhiMap[Labelopno];
                            }
                            PhiI->SetNewFrom(oldop, Labelopno);
                        } else if (PhiMap.find(Labelopno) != PhiMap.end()) {
                            while (PhiMap.find(Labelopno) != PhiMap.end()) {
                                Labelopno = PhiMap[Labelopno];
                            }
                            PhiI->SetNewFrom(oldop, Labelopno);
                        }
                    }
                } else if (I->GetOpcode() == BR_COND) {
                    auto brcondI = (BrCondInstruction *)I;
                    auto trueop = (LabelOperand *)brcondI->GetTrueLabel();
                    auto falseop = (LabelOperand *)brcondI->GetFalseLabel();
                    auto trueopno = trueop->GetLabelNo();
                    auto falseopno = falseop->GetLabelNo();
                    if (PhiMap.find(trueopno) != PhiMap.end()) {
                        while (PhiMap.find(trueopno) != PhiMap.end()) {
                            trueopno = PhiMap[trueopno];
                        }
                        brcondI->SetTrueLabel(GetNewLabelOperand(trueopno));
                    }
                    if (PhiMap.find(falseopno) != PhiMap.end()) {
                        while (PhiMap.find(falseopno) != PhiMap.end()) {
                            falseopno = PhiMap[falseopno];
                        }
                        brcondI->SetFalseLabel(GetNewLabelOperand(falseopno));
                    }
                } else if (I->GetOpcode() == BR_UNCOND) {
                    auto bruncondI = (BrUncondInstruction *)I;
                    auto Labelop = (LabelOperand *)bruncondI->GetDestLabel();
                    auto Labelopno = Labelop->GetLabelNo();
                    if (PhiMap.find(Labelopno) == PhiMap.end()) {
                        continue;
                    }
                    while (PhiMap.find(Labelopno) != PhiMap.end()) {
                        Labelopno = PhiMap[Labelopno];
                    }
                    bruncondI->SetTarget(GetNewLabelOperand(Labelopno));
                }
            }
        }
        OtherPhiMap.clear();
        PhiMap.clear();
    }
    
    int cnt = 0;
    std::unordered_map<int, int> NewMap;
    for (auto [id, bb] : *C->block_map) {
        NewMap[id] = cnt++;
    }
    
    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            if (I->GetOpcode() == PHI) {
                auto PhiI = (PhiInstruction *)I;
                auto ResultOperands = PhiI->GetPhiList();
                std::set<int> ReplaceSet;
                for (u_int32_t i = 0; i < ResultOperands.size(); ++i) {
                    auto Labelop = (LabelOperand *)ResultOperands[i].first;
                    auto Labelopno = Labelop->GetLabelNo();
                    if (NewMap.find(Labelopno) != NewMap.end()) {
                        ReplaceSet.insert(Labelopno);
                    }
                }
                for (auto it = ReplaceSet.begin(); it != ReplaceSet.end(); ++it) {
                    PhiI->SetNewFrom(*it, NewMap[*it]);
                }
                ReplaceSet.clear();
            } else if (I->GetOpcode() == BR_COND) {
                auto brcondI = (BrCondInstruction *)I;
                auto trueop = (LabelOperand *)brcondI->GetTrueLabel();
                auto falseop = (LabelOperand *)brcondI->GetFalseLabel();
                auto trueopno = trueop->GetLabelNo();
                auto falseopno = falseop->GetLabelNo();
                if (NewMap.find(trueopno) != NewMap.end()) {
                    brcondI->SetTrueLabel(GetNewLabelOperand(NewMap[trueopno]));
                }
                if (NewMap.find(falseopno) != NewMap.end()) {
                    brcondI->SetFalseLabel(GetNewLabelOperand(NewMap[falseopno]));
                }
            } else if (I->GetOpcode() == BR_UNCOND) {
                auto bruncondI = (BrUncondInstruction *)I;
                auto Labelop = (LabelOperand *)bruncondI->GetDestLabel();
                auto Labelopno = Labelop->GetLabelNo();
                if (NewMap.find(Labelopno) == NewMap.end()) {
                    continue;
                }
                bruncondI->SetTarget(GetNewLabelOperand(NewMap[Labelopno]));
            }
        }
    }
    // puts("HERE");
    std::map<int, LLVMBlock> new_block_map = *C->block_map;
    C->block_map->clear();
    for (auto [id, bb] : new_block_map) {
        bb->block_id = NewMap[bb->block_id];
        C->block_map->insert(std::make_pair(NewMap[id], bb));
        // bb->printIR(std::cerr);
    }
    C->max_label = cnt;
    C->BuildCFG();
    C->BuildDominatorTree();
}

/*
 * this function will eliminate useless phi
 * such as example1:%rx = phi [%ry, %L1], [%ry, %L3]
 * such as example2:%rx = phi [5, %L5]
 */
// int UnionFind(int RegToFind,std::unordered_map<int,int> UnionFindMap){
//     if(UnionFindMap[RegToFind]==RegToFind)return RegToFind;
// 	return UnionFindMap[RegToFind]=UnionFind(UnionFindMap[RegToFind],UnionFindMap);
// }
void EliminateUselessPhi(CFG *C) {
    std::unordered_map<int, Operand> UnionFindMap;
    std::set<Instruction> EraseSet;
    bool changed = true;
    auto FuncdefI = C->function_def;
    std::function<Operand(Operand)> UnionFind = [&](Operand RegToFind) -> Operand {
        auto RegToFindNo = ((RegOperand *)RegToFind)->GetRegNo();
        if (UnionFindMap[RegToFindNo] == RegToFind)
            return RegToFind;
        return UnionFindMap[RegToFindNo] = UnionFind(UnionFindMap[RegToFindNo]);
    };
    // init UnionFind
    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            if (I->GetOpcode() != PHI) {
                continue;
            }
            auto PhiI = (PhiInstruction *)I;
            auto NonResultOperands = PhiI->GetNonResultOperands();
            auto ResultReg = PhiI->GetResultReg();
            auto ResultRegNo = ((RegOperand *)ResultReg)->GetRegNo();
            UnionFindMap[ResultRegNo] = ResultReg;
            for (u_int32_t i = 0; i < NonResultOperands.size(); ++i) {
                auto NonResultReg = NonResultOperands[i];
                if (NonResultReg->GetOperandType() != BasicOperand::REG) {
                    continue;
                }
                // std::cerr<<NonResultReg->GetFullName()<<" "<<NonResultReg->GetFullName()<<'\n';
                auto NonResultRegNo = ((RegOperand *)NonResultOperands[i])->GetRegNo();
                UnionFindMap[NonResultRegNo] = NonResultReg;
            }
        }
    }

    while (changed) {
        changed = false;
        for (auto [id, bb] : *C->block_map) {
            for (auto &I : bb->Instruction_list) {
                if (I->GetOpcode() != PHI) {
                    continue;
                }
                auto PhiI = (PhiInstruction *)I;
                auto ResultOperands = PhiI->GetNonResultOperands();
                auto ResultReg = PhiI->GetResultReg();
                auto ResultRegNo = ((RegOperand *)ResultReg)->GetRegNo();
                bool NeedtoReleace = 1;
                for (u_int32_t i = 1; i < ResultOperands.size(); ++i) {
                    if (ResultOperands[i]->GetFullName() != ResultOperands[i - 1]->GetFullName()) {
                        NeedtoReleace = 0;
                        break;
                    }
                }

                if (NeedtoReleace) {
                    changed |= true;
                    if (ResultOperands.size() == 1 && ResultOperands[0]->GetOperandType() != BasicOperand::REG) {
                        // example2
                        if (ResultOperands[0]->GetOperandType() == BasicOperand::IMMI32) {
                            I = new ArithmeticInstruction(
                            ADD, I32, new ImmI32Operand(0),
                            new ImmI32Operand(((ImmI32Operand *)ResultOperands[0])->GetIntImmVal()),
                            PhiI->GetResultReg());
                        } else {
                            I = new ArithmeticInstruction(
                            FADD, FLOAT32, new ImmF32Operand(0),
                            new ImmF32Operand(((ImmF32Operand *)ResultOperands[0])->GetFloatVal()),
                            PhiI->GetResultReg());
                        }
                    } else {
                        // example1
                        EraseSet.insert(I);
                        auto Findfa = UnionFind(ResultOperands[0]);
                        auto Findson = UnionFind(ResultReg);
                        auto FindsonNo = ((RegOperand *)Findson)->GetRegNo();
                        UnionFindMap[FindsonNo] = Findfa;
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
                bb->InsertInstruction(1, I);
            }
        }
        for (auto [id, bb] : *C->block_map) {
            for (auto I : bb->Instruction_list) {
                auto NonResultOperands = I->GetNonResultOperands();
                bool Change = 0;
                for (u_int32_t i = 0; i < NonResultOperands.size(); ++i) {
                    if (NonResultOperands[i]->GetOperandType() != BasicOperand::REG) {
                        continue;
                    }
                    auto NonResultOperandsno = ((RegOperand *)NonResultOperands[i])->GetRegNo();
                    if (UnionFindMap.find(NonResultOperandsno) == UnionFindMap.end() ||
                        UnionFindMap[NonResultOperandsno] == NonResultOperands[i]) {
                        continue;
                    }
                    Change = 1;
                    auto Findfa = UnionFind(UnionFindMap[NonResultOperandsno]);
                    auto FindfaNo = ((RegOperand *)Findfa)->GetRegNo();
                    NonResultOperands[i] = GetNewRegOperand(FindfaNo);
                }
                if (Change) {
                    I->SetNonResultOperands(NonResultOperands);
                }
            }
        }
    }
}

void SimplifyCFG(CFG *C) {
    EliminateUselessPhi(C);
    EliminateDoubleBrUnCond(C);
}