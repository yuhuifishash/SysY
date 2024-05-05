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
    std::vector<std::vector<LLVMBlock>> &G=C->G;
    std::vector<std::vector<LLVMBlock>> &invG=C->invG;
    std::unordered_map<int,int> vsd;
    std::unordered_map<int,int> PhiMap;
    std::stack<LLVMBlock> bbstack;
    bbstack.push(C->block_map->begin()->second);
    // auto FuncdefI = C->function_def;
    // FuncdefI->PrintIR(std::cout);
    for(int i=0;i<=C->block_map->size();++i){
        vsd[i]=0;
    }
    while(!bbstack.empty()){
        auto bbu=bbstack.top();
        auto uid=bbu->block_id;
        bbstack.pop();
        vsd[uid] = 1;
        for (auto bbv : G[uid]) {
            int vid=bbv->block_id;
            // std::cout<<vid<<'\n';
            if (vsd[vid] == 1) {
                continue;
            }
            if(G[uid].size()==1&&invG[vid].size()==1){
                // std::cout<<uid<<" "<<vid<<'\n';
                // bbu->printIR(std::cout);
                // bbv->printIR(std::cout);
                PhiMap[vid]=uid;
                //update edge from inv u
                G[uid].clear();
                for(int j=0;j<G[vid].size();++j){
                    auto inv=G[vid][j];
                    auto invid=inv->block_id;
                    G[uid].push_back(inv);
                    for(int i=0;i<G[invid].size();++i){
                        if(invG[invid][i]==bbv){
                            invG[invid][i]=bbu;
                            break;
                        }
                    }
                }
                //merge u to v
                bbu->Instruction_list.pop_back();
                for(auto I : bbv->Instruction_list){
                    bbu->InsertInstruction(1,I);
                }
                G[vid].clear();
                invG[vid].clear();
                bbv->Instruction_list.clear();
                C->block_map->erase(vid);
                bbstack.push(bbu);
            }else{
                bbstack.push(bbv);
            }
        }
    }
    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            if(I->GetOpcode()!=PHI){
                continue;
            }
            auto PhiI=(PhiInstruction*)I;
            auto ResultOperands = PhiI->GetPhiList();
            for(u_int32_t i=0;i<ResultOperands.size();++i){
                auto Labelop=(LabelOperand*)ResultOperands[i].first;
                auto Labelopno=Labelop->GetLabelNo();
                // if(FuncdefI->GetFunctionName()=="main"){
                //     std::cout<<(LabelOperand*)ResultOperands[i].first<<" "<<Labelop->GetFullName()<<" "<<Labelopno<<" "<<PhiMap[Labelopno]<<'\n';
                // }
                if(PhiMap.find(Labelopno)==PhiMap.end()){
                    continue;
                }
                Labelop->SetLabelNo(PhiMap[Labelopno]);
            }
        }
    }
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
    std::unordered_map<int,Operand> UnionFindMap;
    std::set<Instruction> EraseSet;
    bool changed=true;
    auto FuncdefI = C->function_def;
    std::function<Operand(Operand)> UnionFind = [&](Operand RegToFind) -> Operand {
        auto RegToFindNo=((RegOperand*)RegToFind)->GetRegNo();
        // std::cout<<FuncdefI->GetFunctionName()<<" "<<RegToFind->GetFullName()<<'\n';
        if(UnionFindMap[RegToFindNo]==RegToFind)return RegToFind;
	    return UnionFindMap[RegToFindNo]=UnionFind(UnionFindMap[RegToFindNo]);
    };
    // init UnionFind
    // std::cout<<FuncdefI->GetFunctionName()<<'\n';
    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            if(I->GetOpcode()!=PHI){
                continue;
            }
            auto PhiI=(PhiInstruction*)I;
            // if(FuncdefI->GetFunctionName()=="f"){
            //     PhiI->PrintIR(std::cout);
            // }
            auto NonResultOperands = PhiI->GetNonResultOperands();
            auto ResultReg = PhiI->GetResultReg();
            auto ResultRegNo=((RegOperand*)ResultReg)->GetRegNo();
            UnionFindMap[ResultRegNo]=ResultReg;
            for(u_int32_t i=0;i<NonResultOperands.size();++i){
                auto NonResultReg=NonResultOperands[i];
                if(NonResultReg->GetOperandType()!=BasicOperand::REG){
                    continue;
                }
                // std::cout<<NonResultReg->GetFullName()<<" "<<NonResultReg->GetFullName()<<'\n';
                auto NonResultRegNo=((RegOperand *)NonResultOperands[i])->GetRegNo();
                UnionFindMap[NonResultRegNo]=NonResultReg;
            }
        }
    }
    
    while(changed){
        changed=false;
        // FuncdefI->PrintIR(std::cout);
        // if(FuncdefI->GetFunctionName()=="main"){
        //     std::cout<<"asdads\n";
        // }
        for (auto [id, bb] : *C->block_map) {
            for (auto &I : bb->Instruction_list) {
                if(I->GetOpcode()!=PHI){
                    continue;
                }
                auto PhiI=(PhiInstruction*)I;
                auto ResultOperands = PhiI->GetNonResultOperands();
                auto ResultReg = PhiI->GetResultReg();
                auto ResultRegNo = ((RegOperand *)ResultReg)->GetRegNo();
                bool NeedtoReleace=1;
                for(u_int32_t i=1;i<ResultOperands.size();++i){
                    if(ResultOperands[i]->GetFullName()!=ResultOperands[i-1]->GetFullName()){
                        NeedtoReleace=0;
                        // if(FuncdefI->GetFunctionName()=="func1"&&id==2){
                        //     I->PrintIR(std::cout);
                        //     std::cout<<ResultOperands[0]->GetFullName()<<" "<<ResultOperands[1]->GetFullName()<<'\n';
                        // }
                        break;
                    }
                }
                
                if(NeedtoReleace){
                    changed|=true;
                    if(ResultOperands.size()==1&&ResultOperands[0]->GetOperandType()!=BasicOperand::REG){
                        //example2
                        // std::cout<<"example2:";
                        // I->PrintIR(std::cout);
                        if (ResultOperands[0]->GetOperandType() == BasicOperand::IMMI32) {
                            I = new ArithmeticInstruction(ADD, I32, new ImmI32Operand(0), new ImmI32Operand(((ImmI32Operand *)ResultOperands[0])->GetIntImmVal()),
                                                        PhiI->GetResultReg());
                        } else {
                            I = new ArithmeticInstruction(FADD, FLOAT32, new ImmF32Operand(0),
                                                        new ImmF32Operand(((ImmF32Operand *)ResultOperands[0])->GetFloatVal()), PhiI->GetResultReg());
                        }
                        // I->PrintIR(std::cout);
                    }else{
                        //example1
                        EraseSet.insert(I);
                        auto Findfa=UnionFind(ResultOperands[0]);
                        auto Findson=UnionFind(ResultReg);
                        auto FindsonNo = ((RegOperand *)Findson)->GetRegNo();
                        // std::cout<<Findfa<<" "<<Findson<<'\n';
                        UnionFindMap[FindsonNo]=Findfa;
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
                bool Change=0;
                for (u_int32_t i = 0; i < NonResultOperands.size(); ++i) {
                    if(NonResultOperands[i]->GetOperandType()!=BasicOperand::REG){
                        continue;
                    }
                    auto NonResultOperandsno=((RegOperand *)NonResultOperands[i])->GetRegNo();
                    if (UnionFindMap.find(NonResultOperandsno) == UnionFindMap.end() || UnionFindMap[NonResultOperandsno] == NonResultOperands[i]) {
                        continue;
                    }
                    Change=1;
                    auto Findfa=UnionFind(UnionFindMap[NonResultOperandsno]);
                    auto FindfaNo=((RegOperand *)Findfa)->GetRegNo();
                    // std::cout<<FindfaNo<<" "<<Findfa->GetFullName()<<'\n';
                    // if(FindfaNo==0){
                    //     std::cout<<Findfa->GetFullName()<<'\n';
                    // }
                    NonResultOperands[i]=new RegOperand(FindfaNo);
                    // NonResultOperands[i]=Findfa;
                    // std::cout<<NonResultOperandsno<<" "<<Findfa->GetFullName()<<" "<<NonResultOperands[i]->GetFullName()<<'\n';
                }
                if(Change){
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