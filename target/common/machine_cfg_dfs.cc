#include "machine_block.h"
#include "assert.h"
void MachineCFG::DFSIterator::open(){
    visited.clear();
    while(!stk.empty())stk.pop();
    stk.push(0);
}
MachineCFG::MachineCFGNode* MachineCFG::DFSIterator::next(){
    auto return_idx = stk.top();
    visited[return_idx] = 1;
    stk.pop();
    for(auto succ : mcfg->G[return_idx]){
        if(visited[succ->Mblock->label_id] == 0){
            visited[succ->Mblock->label_id] = 1;
            stk.push(succ->Mblock->label_id);
        }
    }
    return mcfg->block_map[return_idx];
}
bool MachineCFG::DFSIterator::hasNext(){
    return !stk.empty();
}
void MachineCFG::DFSIterator::rewind(){
    open();
}
void MachineCFG::DFSIterator::close(){
    visited.clear();
    while(!stk.empty())stk.pop();
}
