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

void InlineCFG(CFG *uCFG,CFG *vCFG,BasicBlock *StartBB,BasicBlock *EndBB,std::map<int,int> &reg_replace_map,std::map<int,int> &label_replace_map,Operand *NewResultOperand){
    label_replace_map[0]=StartBB->block_id;
    for(auto [id, bb]:*vCFG->block_map){
        if(bb->block_id==0){
            continue;
        }
        auto newbb=uCFG->NewBlock();
        label_replace_map[bb->block_id]=newbb->block_id;
    }
    auto nowBlockMap=*uCFG->block_map;
    for(auto [id, bb]:*vCFG->block_map){
        auto nowbb_id=label_replace_map[id];
        auto nowbb=(BasicBlock*)nowBlockMap[nowbb_id];
        for(auto I : bb->Instruction_list){
            if(I->GetOpcode()==RET){
                nowbb->InsertInstruction(1,new BrUncondInstruction(GetNewLabelOperand(EndBB->block_id)));
                continue;
            }
            auto nowI=I->CopyInstruction();
            nowI->ReplaceLabelByMap(label_replace_map);
            auto use_ops=nowI->GetNonResultOperands();
            for(auto &op:use_ops){
                if(op->GetOperandType()!=BasicOperand::REG){
                    continue;
                }
                auto RegOp=(RegOperand*)op;
                auto RegNo=RegOp->GetRegNo();
                if(reg_replace_map.find(RegNo)==reg_replace_map.end()){
                    auto newNo=++uCFG->max_reg;
                    op=GetNewRegOperand(newNo);
                    reg_replace_map[RegNo]=newNo;
                }
            }
            auto ResultReg=(RegOperand*)nowI->GetResultReg();
            auto ResultRegNo=ResultReg->GetRegNo();
            if(ResultRegNo==-1){
                auto newNo=++uCFG->max_reg;
                GetNewRegOperand(newNo);
                reg_replace_map[ResultRegNo]=newNo;
            }
            nowI->ReplaceRegByMap(reg_replace_map);
            nowbb->InsertInstruction(1,nowI);
        }
    }
    auto retBB=(BasicBlock*)vCFG->ret_block;
    auto RetI=retBB->Instruction_list.back();
    auto RetResult=RetI->GetResultReg();
    if(RetResult!=NULL){
        if(RetResult->GetOperandType()==BasicOperand::REG){
            auto oldRegNo=((RegOperand*)RetResult)->GetRegNo();
            *NewResultOperand=GetNewRegOperand(reg_replace_map[oldRegNo]);
        }else{
            *NewResultOperand=RetResult;
        }
    }

}
void InlineCFG(CFG *uCFG,CFG *vCFG){
    std::map<int,int> reg_replace_map;
    std::map<int,int> label_replace_map;
    std::vector<std::pair<Operand,Operand>> Phi_vec;
    std::set<Instruction> EraseSet;
    auto StartBB=(BasicBlock)*uCFG->NewBlock();
    auto EndBB=(BasicBlock)*uCFG->NewBlock();
    auto StartBB_id=uCFG->max_label-1;
    auto EndBB_id=uCFG->max_label;
    int formal_regno = -1;
    auto nowI=CGCallI[uCFG][vCFG];
    auto CallI=(CallInstruction *)nowI;
    Operand *NewResultOperand;
    for(auto formal:CallI->GetParameterList()){
        ++formal_regno;
        reg_replace_map[formal_regno] = ((RegOperand*)formal.second)->GetRegNo();
    }
    InlineCFG(uCFG,vCFG,&StartBB,&EndBB,reg_replace_map,label_replace_map,NewResultOperand);
    if(CallI->GetResultRegNo()!=-1){
        if(CallI->GetResultType()==I32){
            EndBB.InsertInstruction(1,new ArithmeticInstruction(ADD,I32,new ImmI32Operand(0),(ImmI32Operand*)NewResultOperand,CallI->GetResultReg()));
        }else{
            EndBB.InsertInstruction(1,new ArithmeticInstruction(FADD,FLOAT32,new ImmF32Operand(0),(ImmF32Operand*)NewResultOperand,CallI->GetResultReg()));
        }
    }
    auto StartBB_label=GetNewLabelOperand(StartBB_id);
    auto BlockMap=*uCFG->block_map;
    auto uCFG_BBid=nowI->GetBlockID();
    auto bb=*BlockMap[uCFG_BBid];
    bool begin_endBBInstruction=false;
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
    label_replace_map[bb.block_id]=EndBB.block_id;
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
