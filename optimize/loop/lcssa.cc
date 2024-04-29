#include "../../include/cfg.h"
#include <assert.h>

void LoopClosedSSA(CFG *C) {
    for (auto loop : C->LoopForest.loop_set) {
        loop->LCSSA(C);
    }
}

// return vector of RegNo
auto GetUsedOperandOutOfLoop(CFG *C, NaturalLoop *L) {
    std::set<int> VarList;
    std::map<int, LLVMType> TypeMap;

    for (auto bb : L->loop_nodes) {
        for (auto I : bb->Instruction_list) {
            if (I->GetResultRegNo() != -1) {
                VarList.insert(I->GetResultRegNo());
                TypeMap.insert({I->GetResultRegNo(), I->GetResultType()});
            }
        }
    }
    std::set<int> RegUsedSet;    // the RegNo that def in the loop but used out of loop
    std::map<int, LLVMType> RegUsedTypeMap;

    for (auto [id, bb] : *C->block_map) {
        if (L->loop_nodes.find(bb) != L->loop_nodes.end()) {
            continue;    // in the loop
        }
        for (auto I : bb->Instruction_list) {    // assert(L->exit_nodes.size() == 1)
            if (I->GetOpcode() == PHI && bb == *L->exit_nodes.begin()) {
                continue;    // the phi in exit_nodes, we assume the var is used in the loop
            }
            for (auto op : I->GetNonResultOperands()) {
                if (op->GetOperandType() != BasicOperand::REG) {
                    continue;
                }
                int regno = ((RegOperand *)op)->GetRegNo();
                if (VarList.find(regno) != VarList.end()) {
                    RegUsedSet.insert(regno);
                    RegUsedTypeMap.insert({regno, TypeMap[regno]});
                }
            }
        }
    }
    return std::tuple(RegUsedSet, RegUsedTypeMap);
}

void NaturalLoop::LCSSA(CFG *C) {
    // now ignore the loop with multiple exits
    if (exit_nodes.size() > 1) {
        return;
    }
    auto [vset, type_map] = GetUsedOperandOutOfLoop(C, this);
    std::map<int, int> ReplaceMap;

    auto exit_bb = *exit_nodes.begin();
    for (auto v : vset) {
        auto PhiI = new PhiInstruction(type_map[v], new RegOperand(++C->max_reg));
        for (auto bb : C->GetPredecessor(*exit_nodes.begin())) {
            PhiI->InsertPhi(new RegOperand(v), new LabelOperand(bb->block_id));
        }
        // PhiI->PrintIR(std::cerr);
        exit_bb->InsertInstruction(0, PhiI);
        ReplaceMap.insert({v, C->max_reg});
    }

    for (auto [id, bb] : *C->block_map) {
        if (this->loop_nodes.find(bb) != this->loop_nodes.end()) {
            continue;    // in the loop
        }
        for (auto I : bb->Instruction_list) {    // assert(L->exit_nodes.size() == 1)
            if (I->GetOpcode() == PHI && bb == *this->exit_nodes.begin()) {
                continue;    // the phi in exit_nodes, we assume the var is used in the loop
            }
            I->ReplaceByMap(ReplaceMap);
        }
    }
}