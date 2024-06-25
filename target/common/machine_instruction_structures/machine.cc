#include "machine.h"
#include "assert.h"

MachineDataType INT32(MachineDataType::INT, MachineDataType::B32);
MachineDataType INT64(MachineDataType::INT, MachineDataType::B64);
MachineDataType INT128(MachineDataType::INT, MachineDataType::B128);

MachineDataType FLOAT_32(MachineDataType::FLOAT, MachineDataType::B32);
MachineDataType FLOAT64(MachineDataType::FLOAT, MachineDataType::B64);
MachineDataType FLOAT128(MachineDataType::FLOAT, MachineDataType::B128);

void MachineCFG::AssignEmptyNode(int id, MachineBlock *Mblk) {
    MachineCFGNode *node = new MachineCFGNode;
    node->Mblock = Mblk;
    block_map[id] = node;
    while (G.size() < id + 1) {
        G.push_back({});
        // G.resize(id + 1);
    }
    while (invG.size() < id + 1) {
        invG.push_back({});
        // invG.resize(id + 1);
    }
}

// Just modify CFG edge, no change on branch instructions
void MachineCFG::MakeEdge(int edg_begin, int edg_end) {
    Assert(block_map.find(edg_begin) != block_map.end());
    Assert(block_map.find(edg_end) != block_map.end());
    Assert(block_map[edg_begin] != nullptr);
    Assert(block_map[edg_end] != nullptr);
    G[edg_begin].push_back(block_map[edg_end]);
    invG[edg_end].push_back(block_map[edg_begin]);
}

// Just modify CFG edge, no change on branch instructions
void MachineCFG::RemoveEdge(int edg_begin, int edg_end) {
    assert(block_map.find(edg_begin) != block_map.end());
    assert(block_map.find(edg_end) != block_map.end());
    auto it = G[edg_begin].begin();
    for (; it != G[edg_begin].end(); ++it) {
        if ((*it)->Mblock->getLabelId() == edg_end) {
            break;
        }
    }
    G[edg_begin].erase(it);

    auto jt = invG[edg_end].begin();
    for (; jt != invG[edg_end].end(); ++jt) {
        if ((*jt)->Mblock->getLabelId() == edg_begin) {
            break;
        }
    }
    invG[edg_end].erase(jt);
}

Register MachineFunction::GetNewRegister(int regtype, int reglength, bool save_across_call) {
    static int new_regno = 0;
    Register new_reg;
    new_reg.is_virtual = true;
    new_reg.reg_no = new_regno++;
    new_reg.type.data_type = regtype;
    new_reg.type.data_length = reglength;
    new_reg.save_across_call = save_across_call;
    // InitializeNewVirtualRegister(new_regno);
    return new_reg;
}

Register MachineFunction::GetNewReg(MachineDataType type) { return GetNewRegister(type.data_type, type.data_length); }

MachineBlock *MachineFunction::CreateNewEmptyBlock(std::vector<int> pre, std::vector<int> succ) {
    TODO("Implement CreateNewEmptyBlock(Not sure if it's used)");
    return nullptr;
}
MachineBlock *MachineFunction::InsertNewBranchOnlyBlockBetweenEdge(int begin, int end) {
    // TODO("Implement InsertNewBranchOnlyBlockBetweenEdge");
    // New Block
    auto new_block = InitNewBlock();
    auto mid = new_block->getLabelId();
    // Change Edge
    mcfg->RemoveEdge(begin, end);
    mcfg->MakeEdge(begin, mid);
    mcfg->MakeEdge(mid, end);
    // Redirect Branch
    MoveOnePredecessorBranchTargetToNewBlock(begin, end, mid);
    // Insert Branch in new block
    AppendUncondBranchInstructionToNewBlock(mid, end);
    // Redirect Phi
    RedirectPhiNodePredecessor(end, begin, mid);
    return new_block;
}
MachineBlock *MachineFunction::InsertNewBranchOnlyPreheaderBetweenThisAndAllPredecessors(int id) {
    TODO("Implement InsertNewBranchOnlyPreheaderBetweenThisAndAllPredecessors(Not sure if it's used)");
    return nullptr;
}
MachineBlock *MachineFunction::InsertNewBranchOnlySuccessorBetweenThisAndAllSuccessors(int id) {
    TODO("Implement InsertNewBranchOnlySuccessorBetweenThisAndAllSuccessors(Not sure if it's used)");
    return nullptr;
}
void MachineFunction::RedirectPhiNodePredecessor(int phi_block, int old_predecessor, int new_predecessor) {
    // in phi_block, find all phi_instructions containing <label old_predecessor> in phi instruction
    // then replace <label old_predecessor> to <label new_predecessor>
    // TODO("Implement RedirectPhiNodePredecessor");
    auto block = mcfg->GetNodeByBlockId(phi_block)->Mblock;
    for (auto ins : *block) {
        if (ins->arch == MachineBaseInstruction::COMMENT)
            continue;
        if (ins->arch != MachineBaseInstruction::PHI)
            break;
        auto mphi = (MachinePhiInstruction *)ins;
        for (auto &phi_pair : mphi->GetPhiList()) {
            if (phi_pair.first == old_predecessor) {
                phi_pair.first = new_predecessor;
            }
        }
    }
}
MachineBlock *MachineFunction::InitNewBlock() {
    int new_id = ++max_exist_label;
    MachineBlock *new_block = block_factory->CreateBlock(new_id);
    new_block->setParent(this);
    blocks.push_back(new_block);
    mcfg->AssignEmptyNode(new_id, new_block);
    return new_block;
}
