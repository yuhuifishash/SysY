#include "../../include/ir.h"
#include "function_basicinfo.h"
#include <iostream>

void SparseConditionalConstantPropagation(CFG *C);
// void InstSimplify(CFG *C);
// void InstCombine(CFG *C);
void SimplifyCFG(CFG *C);

extern std::map<std::string, CFG *> CFGMap;
extern FunctionCallGraph fcallgraph;
// extern std::unordered_map<CFG *, std::unordered_map<CFG *,std::vector<Instruction>>> fcallgraph.CGCallI;
// extern std::unordered_map<CFG *,size_t> fcallgraph.CGINum;
static std::unordered_map<CFG *, bool> CFGvis;

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

Operand InlineCFG(CFG *uCFG, CFG *vCFG, LLVMBlock StartBB, LLVMBlock EndBB, std::map<int, int> &reg_replace_map,
                  std::map<int, int> &label_replace_map) {
    label_replace_map[0] = StartBB->block_id;
    for (auto [id, bb] : *vCFG->block_map) {
        if (id == 0) {
            continue;
        }
        auto newbb = uCFG->NewBlock();
        label_replace_map[bb->block_id] = newbb->block_id;
    }
    // auto nowBlockMap=uCFG->block_map;

    for (auto [id, bb] : *vCFG->block_map) {
        auto nowbb_id = label_replace_map[id];
        auto nowbb = (*uCFG->block_map)[nowbb_id];
        // bb->printIR(std::cerr);
        // puts("----------");
        for (auto I : bb->Instruction_list) {
            if (I->GetOpcode() == RET) {
                auto newI = new BrUncondInstruction(GetNewLabelOperand(EndBB->block_id));
                nowbb->InsertInstruction(1, newI);
                continue;
            }
            // if(I->GetOpcode()==ALLOCA){
            //     continue;
            // }

            auto nowI = I->CopyInstruction();
            nowI->ReplaceLabelByMap(label_replace_map);

            if (nowI->GetOpcode() == CALL) {
                fcallgraph.CallIuidMap[nowI] = fcallgraph.CallIuidMap[I];
            }
            auto use_ops = nowI->GetNonResultOperands();
            for (auto &op : use_ops) {
                if (op->GetOperandType() != BasicOperand::REG) {
                    continue;
                }
                auto RegOp = (RegOperand *)op;
                auto RegNo = RegOp->GetRegNo();
                // if(RegOp->GetFullName())
                if (reg_replace_map.find(RegNo) == reg_replace_map.end()) {
                    auto newNo = ++uCFG->max_reg;
                    op = GetNewRegOperand(newNo);
                    reg_replace_map[RegNo] = newNo;
                }
            }

            auto ResultReg = (RegOperand *)nowI->GetResultReg();
            // if(I->GetOpcode()==PHI){
            //     I->PrintIR(std::cerr);
            //     nowI->PrintIR(std::cerr);
            // }
            if (ResultReg != NULL && reg_replace_map.find(ResultReg->GetRegNo()) == reg_replace_map.end()) {
                auto ResultRegNo = ResultReg->GetRegNo();
                int newNo = ++uCFG->max_reg;
                auto newReg = GetNewRegOperand(newNo);
                reg_replace_map[ResultRegNo] = newNo;
            }
            nowI->ReplaceRegByMap(reg_replace_map);
            nowbb->InsertInstruction(1, nowI);
            // nowI->PrintIR(std::cerr);
            // std::cerr<<"::::::::::::";
            // nowbb->printIR(std::cerr);
        }
    }
    auto retBB = (BasicBlock *)vCFG->ret_block;
    auto RetI = (RetInstruction *)retBB->Instruction_list.back();
    auto RetResult = RetI->GetRetVal();
    // std::cerr<<RetResult->GetFullName()<<'\n';
    // RetI->PrintIR(std::cerr);
    if (RetResult != NULL) {
        if (RetResult->GetOperandType() == BasicOperand::REG) {
            auto oldRegNo = ((RegOperand *)RetResult)->GetRegNo();
            // std::cerr<<oldRegNo<<" "<<reg_replace_map[oldRegNo]<<'\n';
            // auto op=GetNewRegOperand(reg_replace_map[oldRegNo]);
            // std::cerr<<"HERE:"<<op.GetFullName()<<'\n';
            // *NewResultOperand=op;
            return GetNewRegOperand(reg_replace_map[oldRegNo]);
        }
        return RetResult;
    }
    return nullptr;
}
void InlineCFG(CFG *uCFG, CFG *vCFG, uint32_t CallINo) {
    std::map<int, int> reg_replace_map;
    std::map<int, int> label_replace_map;
    std::set<Instruction> EraseSet;
    auto StartBB = uCFG->NewBlock();
    auto EndBB = uCFG->NewBlock();
    auto StartBB_id = StartBB->block_id;
    auto EndBB_id = EndBB->block_id;
    int formal_regno = -1;
    auto CallI = (CallInstruction *)fcallgraph.CGCallI[uCFG][vCFG][CallINo];
    auto BlockMap = *uCFG->block_map;
    // std::cerr<<"HRE   "<<CallI<<" "<<CallI->GetBlockID()<<'\n';
    // CallI->PrintIR(std::cerr);
    // puts("ASD");
    auto uCFG_BBid = CallI->GetBlockID();
    auto oldbb = BlockMap[uCFG_BBid];
    // CallI->PrintIR(std::cerr);
    // oldbb->printIR(std::cerr);
    for (auto formal : CallI->GetParameterList()) {
        ++formal_regno;
        if (formal.second->GetOperandType() == BasicOperand::IMMI32) {
            std::stack<Instruction> PhiISta;
            while (oldbb->Instruction_list.front()->GetOpcode() == PHI) {
                PhiISta.push(oldbb->Instruction_list.front());
                oldbb->Instruction_list.pop_front();
            }
            auto newAddReg = GetNewRegOperand(++uCFG->max_reg);
            oldbb->InsertInstruction(
            0, new ArithmeticInstruction(ADD, I32, new ImmI32Operand(0), formal.second, newAddReg));
            while (!PhiISta.empty()) {
                oldbb->InsertInstruction(0, PhiISta.top());
                PhiISta.pop();
            }
            reg_replace_map[formal_regno] = newAddReg->GetRegNo();
            fcallgraph.CGINum[uCFG]++;
        } else if (formal.second->GetOperandType() == BasicOperand::IMMF32) {
            std::stack<Instruction> PhiISta;
            while (oldbb->Instruction_list.front()->GetOpcode() == PHI) {
                PhiISta.push(oldbb->Instruction_list.front());
                oldbb->Instruction_list.pop_front();
            }
            auto newAddReg = GetNewRegOperand(++uCFG->max_reg);
            oldbb->InsertInstruction(
            0, new ArithmeticInstruction(FADD, FLOAT32, new ImmF32Operand(0), formal.second, newAddReg));
            while (!PhiISta.empty()) {
                oldbb->InsertInstruction(0, PhiISta.top());
                PhiISta.pop();
            }
            reg_replace_map[formal_regno] = newAddReg->GetRegNo();
            fcallgraph.CGINum[uCFG]++;
        } else {
            reg_replace_map[formal_regno] = ((RegOperand *)formal.second)->GetRegNo();
        }
    }
    // puts("AAAAAAAAAa");
    Operand NewResultOperand = InlineCFG(uCFG, vCFG, StartBB, EndBB, reg_replace_map, label_replace_map);
    // puts("DDDDDDDDD");
    // StartBB->printIR(std::cerr);

    auto vfirstlabelno = label_replace_map[0];
    auto uAllocaBB = (BasicBlock *)BlockMap[vfirstlabelno];
    for (auto I : uAllocaBB->Instruction_list) {
        // I->PrintIR(std::cerr);
        if (I->GetOpcode() != ALLOCA) {
            continue;
        }
        // I->PrintIR(std::cerr);
        BlockMap[0]->InsertInstruction(0, I);
        EraseSet.insert(I);
    }

    auto tmp_Instruction_list = uAllocaBB->Instruction_list;
    uAllocaBB->Instruction_list.clear();
    for (auto I : tmp_Instruction_list) {
        if (EraseSet.find(I) != EraseSet.end()) {
            continue;
        }
        uAllocaBB->InsertInstruction(1, I);
    }
    EraseSet.clear();
    if (CallI->GetRetType() != VOID) {
        if (CallI->GetResultType() == I32) {
            EndBB->InsertInstruction(1, new ArithmeticInstruction(ADD, I32, new ImmI32Operand(0),
                                                                  (ImmI32Operand *)NewResultOperand,
                                                                  CallI->GetResultReg()));
        } else {
            EndBB->InsertInstruction(1, new ArithmeticInstruction(FADD, FLOAT32, new ImmF32Operand(0),
                                                                  (ImmF32Operand *)NewResultOperand,
                                                                  CallI->GetResultReg()));
        }
        fcallgraph.CGINum[uCFG]++;
    }

    auto StartBB_label = GetNewLabelOperand(StartBB_id);
    BrUncondInstruction *newBrI;
    auto oldbb_it = oldbb->Instruction_list.begin();
    bool EndbbBegin = false;
    for (auto it = oldbb->Instruction_list.begin(); it != oldbb->Instruction_list.end(); ++it) {
        auto I = *it;
        // if(I->GetOpcode()==CALL&&fcallgraph.CallIuidMap.find(I)!=fcallgraph.CallIuidMap.end()&&fcallgraph.CallIuidMap[I]==fcallgraph.CallIuidMap[fcallgraph.CGCallI[uCFG][vCFG][CallINo]]){
        if (!EndbbBegin && I == CallI) {
            // I->PrintIR(std::cerr);
            // std::cerr<<I<<" "<<fcallgraph.CGCallI[uCFG][vCFG][CallINo]<<" "<<CallI<<'\n';
            EndbbBegin = true;
            newBrI = new BrUncondInstruction(StartBB_label);
            newBrI->SetBlockID(oldbb->block_id);
            oldbb_it = it;
        } else if (EndbbBegin) {
            I->SetBlockID(EndBB_id);
            EndBB->InsertInstruction(1, I);
        }
    }
    // puts("----------------------------");
    // EndBB->printIR(std::cerr);
    // puts("----------------------------");
    while (oldbb_it != oldbb->Instruction_list.end()) {
        oldbb->Instruction_list.pop_back();
    }
    // oldbb->printIR(std::cerr);
    oldbb->InsertInstruction(1, newBrI);
    // oldbb->printIR(std::cerr);
    label_replace_map.clear();
    label_replace_map[oldbb->block_id] = EndBB->block_id;
    for (auto nextBB : uCFG->G[uCFG_BBid]) {
        for (auto I : nextBB->Instruction_list) {
            if (I->GetOpcode() != PHI) {
                continue;
            }
            auto PhiI = (PhiInstruction *)I;
            PhiI->ReplaceLabelByMap(label_replace_map);
        }
    }
    // puts("HRERE");
    // uCFG->function_def->PrintIR(std::cerr);
    // vCFG->function_def->PrintIR(std::cerr);
    // oldbb->printIR(std::cerr);
    // puts("::::::::::::::::::");
    // StartBB->printIR(std::cerr);
    // puts("::::::::::::::::::");
    // EndBB->printIR(std::cerr);
    // puts("::::::::::::::::::;;;;");
    // uCFG->function_def->PrintIR(std::cerr);
    // for(auto [xid,xbb]:*uCFG->block_map){
    //     xbb->printIR(std::cerr);
    //     puts("----------------------");
    // }
    // puts("<<<<<<<<<<<<<-------------------------->>>>>>>>>>>>>");
}
#define LeftInlineInstructionNum 50
#define RightInlineInstructionNum
bool IsInlineBetter(CFG *uCFG, CFG *vCFG) {
    bool flag3 = false;
    auto vFuncdef = vCFG->function_def->formals;
    for (auto type : vFuncdef) {
        if (type == PTR) {
            flag3 = true;
            break;
        }
    }
    bool flag1 = fcallgraph.CGINum[vCFG] <= 30;
    bool flag2 = fcallgraph.CGINum[uCFG] + fcallgraph.CGINum[vCFG] <= 200;
    return flag1 || flag2 || flag3;
}
void InlineDFS(CFG *uCFG) {
    if (CFGvis.find(uCFG) != CFGvis.end()) {
        return;
    }
    CFGvis[uCFG] = true;
    for (auto vCFG : fcallgraph.CG[uCFG]) {
        if (uCFG == vCFG) {
            continue;
        }
        InlineDFS(vCFG);
        if (fcallgraph.CG.find(vCFG) == fcallgraph.CG.end() ||
            fcallgraph.CGNum[vCFG].find(vCFG) != fcallgraph.CGNum[vCFG].end()) {
            continue;
        }
        auto map_size = fcallgraph.CGNum[uCFG][vCFG];
        for (uint32_t i = 0; i < map_size; ++i) {
            if (!IsInlineBetter(uCFG, vCFG)) {
                break;
            }
            InlineCFG(uCFG, vCFG, i);
            fcallgraph.CGINum[uCFG] += fcallgraph.CGINum[vCFG];
            uCFG->BuildCFG();    // optimize here
        }
    }
    // std::cerr<<"-->";
    // if(fcallgraph.CG.find(uCFG)!=fcallgraph.CG.end()&&fcallgraph.CGNum[uCFG].find(uCFG)!=fcallgraph.CGNum[uCFG].end()){
    //     // std::cerr<<"-->"<<fcallgraph.CG[uCFG].size();
    //     while(IsInlineBetter(uCFG,uCFG)){
    //         auto map_size=fcallgraph.CGNum[uCFG][uCFG];
    //         for(uint32_t i=0;i<map_size;++i){
    //             if(!IsInlineBetter(uCFG,uCFG)){
    //                 break;
    //             }

    //             InlineCFG(uCFG,uCFG,i);
    //             fcallgraph.CGINum[uCFG]+=fcallgraph.CGINum[uCFG];
    //             uCFG->BuildCFG();//optimize here
    //         }
    //     }
    // }

    // uCFG->function_def->PrintIR(std::cerr);
    // for(auto [xid,xbb]:*uCFG->block_map){
    //     xbb->printIR(std::cerr);
    //     puts("----------------------");
    // }
    // puts("<<<<<<<<<<<<<-------------------------->>>>>>>>>>>>>");
    uCFG->BuildCFG();
    uCFG->BuildDominatorTree();
    SparseConditionalConstantPropagation(uCFG);
    SimplifyCFG(uCFG);
    for (auto [id, bb] : *uCFG->block_map) {
        for (auto I : bb->Instruction_list) {
            I->SetBlockID(id);
        }
    }    // optimize here
}
void FunctionInline(LLVMIR *IR) {
    // puts("Start");
    // puts("::::::::::::::::::;;;;");
    // fcallgraph.MainCFG->function_def->PrintIR(std::cerr);
    // for(auto [xid,xbb]:*fcallgraph.MainCFG->block_map){
    //     xbb->printIR(std::cerr);
    //     puts("----------------------");
    // }
    // puts("<<<<<<<<<<<<<-------------------------->>>>>>>>>>>>>");
    InlineDFS(fcallgraph.MainCFG);
    // std::cerr<<"FINISH\n";
    // BuildCG();
}
