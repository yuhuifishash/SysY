#include "machine_block.h"
#include "assert.h"
void MachineCFG::AssignEmptyNode(int id,MachineBlock* Mblk){
    MachineCFGNode* node = new MachineCFGNode;
    node->Mblock = Mblk;
    block_map[id] = node;
}

void MachineCFG::MakeEdge(int edg_begin,int edg_end){
    assert(block_map.find(edg_begin) != block_map.end());
    assert(block_map.find(edg_end) != block_map.end());
    G[edg_begin].push_back(block_map[edg_end]);
    invG[edg_end].push_back(block_map[edg_begin]);
}

void MachineCFG::RemoveEdge(int edg_begin,int edg_end){
    assert(block_map.find(edg_begin) != block_map.end());
    assert(block_map.find(edg_end) != block_map.end());
    auto it = G[edg_begin].begin();
    for(;it!=G[edg_begin].end();++it){
        if((*it)->Mblock->label_id == edg_end){
            break;
        }
    }
    G[edg_begin].erase(it);

    auto jt = invG[edg_end].begin();
    for(;jt!=invG[edg_end].end();++jt){
        if((*jt)->Mblock->label_id == edg_begin){
            break;
        }
    }
    invG[edg_end].erase(jt);
}