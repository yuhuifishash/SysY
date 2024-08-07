#include "../../include/cfg.h"
#include <functional>

/*this pass will do Aggressive Dead Code Elimination, it will eliminate useless Control Flow Structure
(such as useless loop)
*/

static std::vector<std::vector<LLVMBlock>> BuildCDG(CFG *C) {
    std::vector<std::vector<LLVMBlock>> CDG;
    std::vector<std::vector<LLVMBlock>> CDG_precursor;
    C->BuildCFG();
    C->BuildDominatorTree();
    std::vector<int> rd;
    auto G = C->G;
    auto invG = C->invG;
    auto DomTree = C->DomTree;
    auto PostDomTree = C->PostDomTree;
    auto blockmap = (*C->block_map);
    CDG.resize(C->max_label + 2);
    rd.resize(C->max_label + 1, 0);
    CDG_precursor.resize(C->max_label + 1);
    for (int i = 0; i <= C->max_label; ++i) {
        auto domFrontier = PostDomTree.GetDF(i);
        for (auto vbbid : domFrontier) {
            CDG[vbbid].push_back(blockmap[i]);
            if (vbbid != i) {
                rd[i]++;
            }
            CDG_precursor[blockmap[i]->block_id].push_back(blockmap[vbbid]);
        }
    }
    for (int i = 0; i <= C->max_label; ++i) {
        if (!rd[i]) {
            CDG[C->max_label + 1].push_back(blockmap[i]);
        }
    }
    return CDG_precursor;
}
static Instruction FindTerminal(CFG *C, int bbid) {
    auto blockmap = (*C->block_map);
    auto bb = blockmap[bbid];
    return bb->Instruction_list.back();
}
void AggressiveDeadCodeElimination(CFG *C) {
    std::deque<Instruction> worklist;
    std::map<int, Instruction> defmap;
    std::set<Instruction> liveInstructionset;
    std::set<int> liveBBset;
    auto CDG_precursor = BuildCDG(C);
    auto invG = C->invG;
    auto DomTree = C->DomTree;
    auto DomTreeidom = DomTree.idom;
    auto PostDomTree = C->PostDomTree;
    auto PostDomTreeidom = PostDomTree.idom;
    auto blockmap = *C->block_map;
    for (auto [id, bb] : blockmap) {
        for (auto I : bb->Instruction_list) {
            I->SetBlockID(id);
            if (I->GetOpcode() == STORE || I->GetOpcode() == CALL || I->GetOpcode() == RET) {
                worklist.push_back(I);
            }
            if (I->GetResultReg() != nullptr) {
                defmap[I->GetResultRegNo()] = I;
            }
        }
    }

    while (!worklist.empty()) {
        auto I = worklist.front();
        worklist.pop_front();
        if (liveInstructionset.find(I) != liveInstructionset.end()) {
            continue;
        }
        liveInstructionset.insert(I);
        auto parBBno = I->GetBlockID();
        auto parBB = blockmap[I->GetBlockID()];
        liveBBset.insert(parBBno);
        if (I->GetOpcode() == PHI) {
            auto PhiI = (PhiInstruction *)I;
            for (auto [Labelop, Regop] : PhiI->GetPhiList()) {
                auto Label = (LabelOperand *)Labelop;
                auto Labelno = Label->GetLabelNo();
                auto terminalI = FindTerminal(C, Labelno);
                if (liveInstructionset.find(terminalI) == liveInstructionset.end()) {
                    worklist.push_front(terminalI);
                    liveBBset.insert(Labelno);
                }
            }
        }

        if (parBBno != -1) {
            for (auto CDG_pre : CDG_precursor[parBBno]) {
                auto CDG_preno = CDG_pre->block_id;
                auto terminalI = FindTerminal(C, CDG_preno);
                if (liveInstructionset.find(terminalI) == liveInstructionset.end()) {
                    worklist.push_front(terminalI);
                }
            }
        }

        for (auto op : I->GetNonResultOperands()) {
            if (op->GetOperandType() == BasicOperand::REG) {
                auto Regop = (RegOperand *)op;
                auto Regopno = Regop->GetRegNo();
                if (defmap.find(Regopno) == defmap.end()) {
                    continue;
                }
                auto DefI = defmap[Regopno];
                if (liveInstructionset.find(DefI) == liveInstructionset.end()) {
                    worklist.push_front(DefI);
                }
            }
        }
    }

    for (auto [id, bb] : *C->block_map) {
        auto terminalI = FindTerminal(C, id);
        auto tmp_Instruction_list = bb->Instruction_list;
        bb->Instruction_list.clear();
        for (auto I : tmp_Instruction_list) {
            if (liveInstructionset.find(I) == liveInstructionset.end()) {
                if (terminalI == I) {
                    auto livebbid = PostDomTreeidom[id]->block_id;
                    while (liveBBset.find(livebbid) == liveBBset.end()) {
                        livebbid = PostDomTreeidom[id]->block_id;
                    }
                    I = new BrUncondInstruction(GetNewLabelOperand(livebbid));
                } else {
                    continue;
                }
            }
            bb->InsertInstruction(1, I);
        }
    }
    // DEBUG : search for basicblock to delete
    // not-a-liveBlock only have one bruncond instruction,
    // which is added in the last loop(I = new BrUncondInstruction(GetNewLabelOperand(livebbid));)
    // std::cerr<<C->function_def->GetFunctionName()<<" not-a-liveBlock :\n";
    // for(int i = 0;i < C->max_label;++i){
    //     if(liveBBset.find(i) == liveBBset.end()){
    //         std::cerr<<i<<'\n';
    //     }
    // }
    // std::cerr<<" before instruction cnt : "<<cnt<<" now instruction cnt : "<<liveInstructionset.size()+cnt2<<'\n';
    defmap.clear();
    liveInstructionset.clear();
    liveBBset.clear();
    // std::cerr<<cnt<<" "<<liveInstructionset.size()+cnt2<<'\n';
}