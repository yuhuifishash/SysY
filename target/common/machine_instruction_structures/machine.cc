#include "machine.h"
#include "assert.h"

void MachineCFG::AssignEmptyNode(int id, MachineBlock *Mblk) {
    MachineCFGNode *node = new MachineCFGNode;
    node->Mblock = Mblk;
    block_map[id] = node;
}

// Just modify CFG edge, no change on branch instructions
void MachineCFG::MakeEdge(int edg_begin, int edg_end) {
    assert(block_map.find(edg_begin) != block_map.end());
    assert(block_map.find(edg_end) != block_map.end());
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

Register MachineFunction::GetNewRegister(int regtype, int reglength) {
    static int new_regno = 0;
    Register new_reg;
    new_reg.is_virtual = true;
    new_reg.reg_no = new_regno++;
    new_reg.type.data_type = regtype;
    new_reg.type.data_length = reglength;
    // InitializeNewVirtualRegister(new_regno);
    return new_reg;
}

MachineBlock *MachineFunction::CreateNewEmptyBlock(std::vector<int> pre, std::vector<int> succ) { return nullptr; }
MachineBlock *MachineFunction::InsertNewBranchOnlyBlockBetweenEdge(int begin, int end) { return nullptr; }
MachineBlock *MachineFunction::InsertNewBranchOnlyPreheaderBetweenThisAndAllPredecessors(int id) { return nullptr; }
MachineBlock *MachineFunction::InsertNewBranchOnlySuccessorBetweenThisAndAllSuccessors(int id) { return nullptr; }
void RedirectPhiNodePredecessor(int phi_block, int old_predecessor, int new_predecessor) {
    // in phi_block, find all phi_instructions containing <label old_predecessor> in phi instruction
    // then replace <label old_predecessor> to <label new_predecessor>
}
