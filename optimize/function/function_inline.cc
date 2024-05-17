#include "../../include/ir.h"
#include "function_basicinfo.h"

void SparseConditionalConstantPropagation(CFG *C);
// void InstSimplify(CFG *C);
// void InstCombine(CFG *C);
void SimplifyCFG(CFG *C);

extern std::map<std::string, CFG *> CFGMap;
extern FunctionCallGraph fcallgraph;
extern std::unordered_map<CFG *, std::unordered_map<CFG *,CallInstruction*>> CGCallI;


// we process function call in bottom-up order(CallGraphSCC)
// in SysY2022, the SCC's size <= 1, so we only need to consider self-recursive
// after each iterations, we need to use SCCP, SimplifyCFG to optimize the cfg
/*
    InlineDFS(CFG* now) {

        for(auto v: CG->GetSuccessor(now)) {

            if(v == now){ // now has self-recursive
                continue;
            }

            InlineDFS(v);

            if(v is self-recursive) { // do not inline
                continue;
            }

            for(auto t : call v in now){ //other situations
                if(inline t is better) {
                    inline t -> now;
                }
            }

        }
        if(exist self-recursive){ // now has self-recursive
            while(inline self is better){
                for(auto t : call self in now){
                    if(inline self is better){
                        inline t -> now
                    }
                }
            }
        }
        
        BuildCFG;
        BuildDomTree;
        SCCP(now);
        SimplifyCFG(now);
    }
*/

void InlineCFG(CFG *uCFG,CFG *vCFG,BasicBlock *FBB,BasicBlock *EndBB){

}

void InlineCFG(CFG *uCFG,CFG *vCFG,BasicBlock *FBB,BasicBlock *EndBB,std::map<int,int> &reg_replace_map,std::map<int,int> &label_replace_map,std::vector<std::pair<Operand,Operand>> Phi_vec){

}
void InlineCFG(CFG *uCFG,CFG *vCFG){
    std::map<int,int> reg_replace_map;
    std::map<int,int> label_replace_map;
    std::vector<std::pair<Operand,Operand>> Phi_vec;
    std::set<Instruction> EraseSet;
    auto FBB=(BasicBlock)*uCFG->NewBlock();
    auto EndBB=(BasicBlock)*uCFG->NewBlock();
    auto FBB_id=uCFG->max_label-1;
    auto EndBB_id=uCFG->max_label;
    int formal_regno = -1;
    auto nowI=CGCallI[uCFG][vCFG];
    auto CallI=(CallInstruction *)nowI;
    for(auto formal:CallI->GetParameterList()){
        ++formal_regno;
        reg_replace_map[formal_regno] = ((RegOperand*)formal.second)->GetRegNo();
    }
    InlineCFG(uCFG,vCFG,&FBB,&EndBB);
    if(CallI->GetResultRegNo()!=-1){
        EndBB.InsertInstruction(1,new PhiInstruction(CallI->GetResultType(),CallI->GetResult(),Phi_vec));
    }
    auto FBB_label=GetNewLabelOperand(FBB_id);
    auto BlockMap=*uCFG->block_map;
    auto uCFG_BBid=nowI->GetBlockID();
    auto bb=*BlockMap[uCFG_BBid];
    bool begin_endBBInstruction=false;
    // I=new BrUncondInstruction();
    for (auto I : bb.Instruction_list) {
        if(!begin_endBBInstruction&&I!=nowI){
            continue;
        }
        if(I==nowI){
            begin_endBBInstruction=true;
            continue;
        }
        EndBB.InsertInstruction(1,I);
        EraseSet.insert(I);
    }
    for(auto nextBB:uCFG->G[uCFG_BBid]){
        for(auto I : nextBB->Instruction_list){
            if(I->GetOpcode()!=PHI){
                continue;
            }
            auto PhiI=(PhiInstruction*)I;
            PhiI->ReplaceLabelByMap(label_replace_map);
        }
    }
    for (auto [id, bb] : *uCFG->block_map) {
        auto tmp_Instruction_list = bb->Instruction_list;
        bb->Instruction_list.clear();
        for (auto I : tmp_Instruction_list) {
            if (EraseSet.find(I) != EraseSet.end()) {
                continue;
            }
            bb->InsertInstruction(1, I);
        }
    }
    EraseSet.clear();
    uCFG->BuildCFG();
    uCFG->BuildDominatorTree();
    SparseConditionalConstantPropagation(uCFG);
    SimplifyCFG(uCFG);    
    // auto 
      
}
#define InlineInstructionNum 10
bool CanInline(CFG *uCFG,CFG *vCFG){
    return uCFG->max_reg+vCFG->max_reg<InlineInstructionNum*vCFG->max_reg;
}
void InlineDFS(CFG *uCFG){
    for(auto vCFG:fcallgraph.CG[uCFG]){
        if(uCFG==vCFG){
            continue;
        }
        InlineDFS(vCFG);
        if(fcallgraph.CGNum[vCFG].find(vCFG)!=fcallgraph.CGNum[vCFG].end()){
            continue;
        }
        auto map_size=fcallgraph.CGNum[uCFG][vCFG];
        while(map_size--){
            if(CanInline(uCFG,vCFG)){
                InlineCFG(uCFG,vCFG);
            }
        }
    }
    if(fcallgraph.CGNum[uCFG].find(uCFG)!=fcallgraph.CGNum[uCFG].end()){

        auto fst_reg=InlineInstructionNum*uCFG->max_reg;
        while(uCFG->max_reg<fst_reg){
            auto map_size=fcallgraph.CGNum[uCFG][uCFG];
            while(map_size--){
                if(CanInline(uCFG,uCFG)){
                    InlineCFG(uCFG,uCFG);
                }
            }
        }
    }
}
void FunctionInline(LLVMIR *IR) {
    InlineDFS(fcallgraph.MainCFG);
    // BuildCG();
}
