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
    std::unordered_map<int,int> OtherPhiMap;
    std::stack<LLVMBlock> bbstack;
    bool changed=true;
    
    // std::cerr<<G[6].size()<<'\n';
    while(changed){
        auto FuncdefI = C->function_def;
        // FuncdefI->PrintIR(std::cerr);
        changed=false;
        bbstack.push(C->block_map->begin()->second);
        for (auto [id, bb] : *C->block_map) {
            vsd[id]=0;
        }
        while(!bbstack.empty()){
            auto bbu=bbstack.top();
            auto uid=bbu->block_id;
            // std::cout<<uid<<" "<<bbstack.size()<<'\n';
            // bbu->printIR(std::cerr);
            bbstack.pop();
            vsd[uid] = 1;
            // bool needtocontinue=false;
            // for(int i=0;i<G[uid].size();++i){
            //     if(G[uid][i]==bbu){
            //         needtocontinue=true;
            //     }
            // }
            for (auto bbv : G[uid]) {
                int vid=bbv->block_id;
                // std::cerr<<uid<<"->"<<vid<<'\n';
                if (vsd[vid] == 1) {
                    continue;
                }
                if(uid==0){
                    bbstack.push(bbv);
                }
                // bbu->printIR(std::cerr);
                // bbv->printIR(std::cerr);
                // if(needtocontinue){
                //     bbstack.push(bbv);
                //     continue;
                // }
                // bool needtocontinuev=false;
                // for(int i=0;i<G[vid].size();++i){
                //     if(G[vid][i]==bbv){
                //         needtocontinuev=true;
                //     }
                // }
                // if(needtocontinuev){
                //     continue;
                // }
                bool check1=(G[uid].size()>=1&&G[vid].size()>=1&&G[uid][0]==bbv&&G[vid][0]==bbu);
                bool check2=(G[uid].size()>=1&&G[vid].size()>1&&G[uid][0]==bbv&&G[vid][1]==bbu);
                bool check3=(G[uid].size()>1&&G[vid].size()>=1&&G[uid][1]==bbv&&G[vid][0]==bbu);
                bool check4=(G[uid].size()>1&&G[vid].size()>1);
                bool check5=(invG[vid].size()==1);
                check5=1;
                bool check=(check5&&(!check4)&&(check1||check2||check3));
                // check=0;
                // if(uid==5&&vid==6){
                //     std::cerr<<uid<<" "<<vid<<" "<<G[uid].size()<<" "<<G[vid].size()<<'\n';
                //     std::cerr<<check1<<" "<<check2<<" "<<check3<<" "<<check4<<" "<<check<<'\n';
                // }
                if(check){
                    // std::cerr<<uid<<" "<<vid<<'\n';
                    // if(uid==2&&vid==3){
                    //     bbu->printIR(std::cerr);
                    //     bbv->printIR(std::cerr);
                    // }
                    int x,y;//x->v,y->u
                    if(check1){
                        x=0;
                        y=0;
                    }else if(check2){
                        x=0;
                        y=1;
                    }else{
                        x=1;
                        y=0;
                    }
                    if(G[vid].size()>1){
                        // std::cerr<<uid<<" "<<vid<<" "<<G[vid].size()<<" "<<check4<<'\n';
                        changed|=true;
                        G[uid][x]=bbu;
                        auto inv=G[vid][y^1];
                        auto invid=inv->block_id;
                        for(int i=0;i<invG[invid].size();++i){
                            if(invG[invid][i]==bbv){
                                invG[invid][i]=bbu;
                                break;
                            }
                        }
                        PhiMap[vid]=uid;
                        // bbv->Instruction_list.pop_back();
                        // auto endI=bbu->Instruction_list.back();
                        bbu->Instruction_list.pop_back();
                        // bbv->printIR(std::cerr);
                        while(!bbv->Instruction_list.empty()){
                            bbu->InsertInstruction(1,bbv->Instruction_list.front());
                            bbv->Instruction_list.pop_front();
                        }
                        // bbu->Instruction_list.push_back(endI);
                        G[vid].clear();
                        invG[vid].clear();
                        C->block_map->erase(vid);
                    }else if(bbv->Instruction_list.size()==1&&bbv->Instruction_list.back()->GetOpcode()!=RET){
                        // std::cerr<<uid<<" "<<vid<<" "<<invG[vid].size()<<" "<<check4<<'\n';
                        // bbv->printIR(std::cerr);
                        changed|=true;
                        auto endI=(BrCondInstruction*)bbu->Instruction_list.back();
                        // auto BrCondI=
                        bbu->Instruction_list.pop_back();
                        auto trueop=(LabelOperand*)endI->GetTrueLabel();
                        auto falseop=(LabelOperand*)endI->GetFalseLabel();
                        auto trueopno=trueop->GetLabelNo();
                        auto falseopno=falseop->GetLabelNo();
                        if(trueopno==vid){
                            endI->SetTrueLabel(new LabelOperand(uid));
                        }else{
                            endI->SetFalseLabel(new LabelOperand(uid));
                        }
                        bbu->Instruction_list.push_back(endI);
                        PhiMap[vid]=uid;
                        G[vid].clear();
                        invG[vid].clear();
                        C->block_map->erase(vid);
                    }else{
                        bbstack.push(bbv);
                    }
                    // if(uid==2&&vid==3){
                    //     puts("asdas");
                    //     bbu->printIR(std::cerr);
                    //     bbv->printIR(std::cerr);
                    // }
                }else if(G[uid].size()==1&&invG[vid].size()==1){
                    // std::cerr<<uid<<" "<<vid<<'\n';
                    // bbu->printIR(std::cerr);
                    // bbv->printIR(std::cerr);
                    changed|=true;
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
                }else if(G[uid].size()==2&&invG[vid].size()==1&&G[vid].size()==1&&bbv->Instruction_list.size()==1&&bbv->Instruction_list.back()->GetOpcode()!=RET){
                    // if(G[uid][0]==bbu||G[uid][1]==bbu){
                    //     bbstack.push(bbv);
                    //     continue;
                    // }

                    
                    // bbu->printIR(std::cerr);
                    // bbv->printIR(std::cerr);
                    auto inv=G[vid][0];
                    auto invid=inv->block_id;
                    auto I=bbu->Instruction_list.back();
                    if(I->GetOpcode()==BR_COND&&(((LabelOperand*)((BrCondInstruction*)I)->GetTrueLabel())->GetLabelNo()==invid||((LabelOperand*)((BrCondInstruction*)I)->GetFalseLabel())->GetLabelNo()==invid)){
                    // if(inv->Instruction_list.front()->GetOpcode()==PHI){
                        bbstack.push(bbv);
                        continue;
                    }
                    changed|=true;
                    OtherPhiMap[vid]=uid;
                    // std::cerr<<uid<<" "<<vid<<" "<<invid<<'\n';
                    PhiMap[vid]=invid;
                    if(G[uid][0]==bbv){
                        G[uid][0]=inv;
                    }else{
                        G[uid][1]=inv;
                    }
                    if(invG[invid][0]==bbv){
                        invG[invid][0]=bbu;
                    }else{
                        invG[invid][1]=bbu;
                    }
                    auto endI=(BrCondInstruction*)bbu->Instruction_list.back();
                    bbu->Instruction_list.pop_back();
                    auto trueop=(LabelOperand*)endI->GetTrueLabel();
                    auto falseop=(LabelOperand*)endI->GetFalseLabel();
                    auto trueopno=trueop->GetLabelNo();
                    auto falseopno=falseop->GetLabelNo();
                    if(trueopno==vid){
                        endI->SetTrueLabel(new LabelOperand(invid));
                    }else{
                        endI->SetFalseLabel(new LabelOperand(invid));
                    }
                    bbu->Instruction_list.push_back(endI);
                    G[vid].clear();
                    invG[vid].clear();
                    bbv->Instruction_list.clear();
                    C->block_map->erase(vid);
                    // bbstack.push(bbu);
                    // bbu->printIR(std::cerr);
                    // puts("-------------------");
                    // bbu->printIR(std::cerr);
                }else{
                    bbstack.push(bbv);
                }
                // std::cerr<<uid<<" "<<vid<<" "<<G[uid].size()<<" "<<invG[vid].size()<<'\n';
                // bbu->printIR(std::cerr);
                // bbv->printIR(std::cerr);
                // puts("-------------------");
            }
            // bbu->printIR(std::cerr);
            // std::cerr<<uid<<'\n';
            // std::cerr<<uid<<" "<<G[uid].size()<<'\n';
        }
        
        for (auto [id, bb] : *C->block_map) {
            for (auto I : bb->Instruction_list) {
                if(I->GetOpcode()==PHI){
                    auto PhiI=(PhiInstruction*)I;
                    auto ResultOperands = PhiI->GetPhiList();
                    for(u_int32_t i=0;i<ResultOperands.size();++i){
                        auto Labelop=(LabelOperand*)ResultOperands[i].first;
                        auto oldop=Labelop->GetLabelNo();
                        auto Labelopno=Labelop->GetLabelNo();
                        if(OtherPhiMap.find(Labelopno)!=OtherPhiMap.end()){
                            Labelopno=OtherPhiMap[Labelopno];
                            while(PhiMap.find(Labelopno)!=PhiMap.end()){
                                Labelopno=PhiMap[Labelopno];
                            }
                            PhiI->SetNewFrom(oldop,Labelopno);
                        }else if(PhiMap.find(Labelopno)!=PhiMap.end()){
                            while(PhiMap.find(Labelopno)!=PhiMap.end()){
                                Labelopno=PhiMap[Labelopno];
                            }
                            PhiI->SetNewFrom(oldop,Labelopno);
                        }
                        
                    }
                }else if(I->GetOpcode()==BR_COND){
                    auto brcondI=(BrCondInstruction*)I;
                    auto trueop=(LabelOperand*)brcondI->GetTrueLabel();
                    auto falseop=(LabelOperand*)brcondI->GetFalseLabel();
                    auto trueopno=trueop->GetLabelNo();
                    auto falseopno=falseop->GetLabelNo();
                    if(PhiMap.find(trueopno)!=PhiMap.end()){
                        while(PhiMap.find(trueopno)!=PhiMap.end()){
                            trueopno=PhiMap[trueopno];
                        }
                        brcondI->SetTrueLabel(new LabelOperand(trueopno));
                    }
                    if(PhiMap.find(falseopno)!=PhiMap.end()){
                        while(PhiMap.find(falseopno)!=PhiMap.end()){
                            falseopno=PhiMap[falseopno];
                        }
                        brcondI->SetFalseLabel(new LabelOperand(falseopno));
                    }
                }else if(I->GetOpcode()==BR_UNCOND){
                    auto bruncondI=(BrUncondInstruction*)I;
                    auto Labelop=(LabelOperand*)bruncondI->GetDestLabel();
                    auto Labelopno=Labelop->GetLabelNo();
                    if(PhiMap.find(Labelopno)==PhiMap.end()){
                        continue;
                    }
                    while(PhiMap.find(Labelopno)!=PhiMap.end()){
                        Labelopno=PhiMap[Labelopno];
                    }
                    bruncondI->SetTarget(new LabelOperand(Labelopno));
                    // Labelop->SetLabelNo(Labelopno);
                }
                
            }
        }
        OtherPhiMap.clear();
        PhiMap.clear();
        
    }
    // int cnt=0;
    // std::unordered_map<int,int> NewMap;
    // for (auto [id, bb] : *C->block_map) {
    //     NewMap[id] = cnt++;
    // }
    // for (auto [id, bb] : *C->block_map) {
    //     for (auto I : bb->Instruction_list) {
    //         if(I->GetOpcode()==PHI){
    //             auto PhiI=(PhiInstruction*)I;
    //             auto ResultOperands = PhiI->GetPhiList();
    //             for(u_int32_t i=0;i<ResultOperands.size();++i){
    //                 auto Labelop=(LabelOperand*)ResultOperands[i].first;
    //                 auto oldop=Labelop->GetLabelNo();
    //                 auto Labelopno=Labelop->GetLabelNo();
    //                 if(NewMap.find(Labelopno)!=NewMap.end()){
    //                     PhiI->SetNewFrom(oldop,NewMap[Labelopno]);
    //                 }
    //             }
    //         }else if(I->GetOpcode()==BR_COND){
    //             auto brcondI=(BrCondInstruction*)I;
    //             auto trueop=(LabelOperand*)brcondI->GetTrueLabel();
    //             auto falseop=(LabelOperand*)brcondI->GetFalseLabel();
    //             auto trueopno=trueop->GetLabelNo();
    //             auto falseopno=falseop->GetLabelNo();
    //             if(NewMap.find(trueopno)!=NewMap.end()){
    //                 brcondI->SetTrueLabel(new LabelOperand(NewMap[trueopno]));
    //             }
    //             if(NewMap.find(falseopno)!=NewMap.end()){
    //                 brcondI->SetFalseLabel(new LabelOperand(NewMap[falseopno]));
    //             }
    //         }else if(I->GetOpcode()==BR_UNCOND){
    //             auto bruncondI=(BrUncondInstruction*)I;
    //             auto Labelop=(LabelOperand*)bruncondI->GetDestLabel();
    //             auto Labelopno=Labelop->GetLabelNo();
    //             if(NewMap.find(Labelopno)==NewMap.end()){
    //                 continue;
    //             }
    //             bruncondI->SetTarget(new LabelOperand(NewMap[Labelopno]));
    //         }
    //     }
    // }
    // // std::cout<<C->block_map->size()<<'\n';
    // std::map<int, LLVMBlock> new_block_map=*C->block_map;
    // C->block_map->clear();
    // for (auto [id, bb] : new_block_map) {

    //     bb->block_id = NewMap[bb->block_id];
    //     // std::cout<<id<<" "<<NewMap[id]<<'\n';
    //     // C->block_map->erase(id);
    //     C->block_map->insert(std::make_pair(NewMap[id],bb));
    // }
    // // std::cout<<new_block_map->size()<<'\n';
    // // // delete C->block_map;
    // // C->block_map=new_block_map;
    // C->max_label = cnt;
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
        // std::cerr<<FuncdefI->GetFunctionName()<<" "<<RegToFind->GetFullName()<<'\n';
        if(UnionFindMap[RegToFindNo]==RegToFind)return RegToFind;
	    return UnionFindMap[RegToFindNo]=UnionFind(UnionFindMap[RegToFindNo]);
    };
    // init UnionFind
    // std::cerr<<FuncdefI->GetFunctionName()<<'\n';
    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            if(I->GetOpcode()!=PHI){
                continue;
            }
            auto PhiI=(PhiInstruction*)I;
            // if(FuncdefI->GetFunctionName()=="f"){
            //     PhiI->PrintIR(std::cerr);
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
                // std::cerr<<NonResultReg->GetFullName()<<" "<<NonResultReg->GetFullName()<<'\n';
                auto NonResultRegNo=((RegOperand *)NonResultOperands[i])->GetRegNo();
                UnionFindMap[NonResultRegNo]=NonResultReg;
            }
        }
    }
    
    while(changed){
        changed=false;
        // FuncdefI->PrintIR(std::cerr);
        // if(FuncdefI->GetFunctionName()=="main"){
        //     std::cerr<<"asdads\n";
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
                        //     I->PrintIR(std::cerr);
                        //     std::cerr<<ResultOperands[0]->GetFullName()<<" "<<ResultOperands[1]->GetFullName()<<'\n';
                        // }
                        break;
                    }
                }
                
                if(NeedtoReleace){
                    changed|=true;
                    if(ResultOperands.size()==1&&ResultOperands[0]->GetOperandType()!=BasicOperand::REG){
                        //example2
                        // std::cerr<<"example2:";
                        // I->PrintIR(std::cerr);
                        if (ResultOperands[0]->GetOperandType() == BasicOperand::IMMI32) {
                            I = new ArithmeticInstruction(ADD, I32, new ImmI32Operand(0), new ImmI32Operand(((ImmI32Operand *)ResultOperands[0])->GetIntImmVal()),
                                                        PhiI->GetResultReg());
                        } else {
                            I = new ArithmeticInstruction(FADD, FLOAT32, new ImmF32Operand(0),
                                                        new ImmF32Operand(((ImmF32Operand *)ResultOperands[0])->GetFloatVal()), PhiI->GetResultReg());
                        }
                        // I->PrintIR(std::cerr);
                    }else{
                        //example1
                        EraseSet.insert(I);
                        auto Findfa=UnionFind(ResultOperands[0]);
                        auto Findson=UnionFind(ResultReg);
                        auto FindsonNo = ((RegOperand *)Findson)->GetRegNo();
                        // std::cerr<<Findfa<<" "<<Findson<<'\n';
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
                    // std::cerr<<FindfaNo<<" "<<Findfa->GetFullName()<<'\n';
                    // if(FindfaNo==0){
                    //     std::cerr<<Findfa->GetFullName()<<'\n';
                    // }
                    NonResultOperands[i]=new RegOperand(FindfaNo);
                    // NonResultOperands[i]=Findfa;
                    // std::cerr<<NonResultOperandsno<<" "<<Findfa->GetFullName()<<" "<<NonResultOperands[i]->GetFullName()<<'\n';
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