#include "../machine.h"
#include "assert.h"
void MachineCFG::BFSIterator::open(){
    visited.clear();
    while(!que.empty())que.pop();
    que.push(0);
}
MachineCFG::MachineCFGNode* MachineCFG::BFSIterator::next(){
    auto return_idx = que.front();
    visited[return_idx] = 1;
    que.pop();
    for(auto succ : mcfg->G[return_idx]){
        if(visited[succ->Mblock->label_id] == 0){
            visited[succ->Mblock->label_id] = 1;
            que.push(succ->Mblock->label_id);
        }
    }
    return mcfg->block_map[return_idx];
}
bool MachineCFG::BFSIterator::hasNext(){
    return !que.empty();
}
void MachineCFG::BFSIterator::rewind(){
    open();
}
void MachineCFG::BFSIterator::close(){
    visited.clear();
    while(!que.empty())que.pop();
}