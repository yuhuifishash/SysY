#include "cfg_iterators.h"
#include <assert.h>
void MachineCFG::BFSIterator::open() {
    visited.clear();
    while (!que.empty())
        que.pop();
    que.push(0);
}
MachineCFG::MachineCFGNode *MachineCFG::BFSIterator::next() {
    auto return_idx = que.front();
    visited[return_idx] = 1;
    que.pop();
    for (auto succ : mcfg->G[return_idx]) {
        if (visited[succ->Mblock->getLabelId()] == 0) {
            visited[succ->Mblock->getLabelId()] = 1;
            que.push(succ->Mblock->getLabelId());
        }
    }
    return mcfg->block_map[return_idx];
}
bool MachineCFG::BFSIterator::hasNext() { return !que.empty(); }
void MachineCFG::BFSIterator::rewind() { open(); }
void MachineCFG::BFSIterator::close() {
    visited.clear();
    while (!que.empty())
        que.pop();
}

void MachineCFG::DFSIterator::open() {
    visited.clear();
    while (!stk.empty())
        stk.pop();
    stk.push(0);
}
MachineCFG::MachineCFGNode *MachineCFG::DFSIterator::next() {
    auto return_idx = stk.top();
    visited[return_idx] = 1;
    stk.pop();
    for (auto succ : mcfg->G[return_idx]) {
        if (visited[succ->Mblock->getLabelId()] == 0) {
            visited[succ->Mblock->getLabelId()] = 1;
            stk.push(succ->Mblock->getLabelId());
        }
    }
    return mcfg->block_map[return_idx];
}
bool MachineCFG::DFSIterator::hasNext() { return !stk.empty(); }
void MachineCFG::DFSIterator::rewind() { open(); }
void MachineCFG::DFSIterator::close() {
    visited.clear();
    while (!stk.empty())
        stk.pop();
}

void MachineCFG::ReverseIterator::open() {
    child->open();
    cache.clear();
    while (child->hasNext()) {
        cache.push_back(child->next());
    }
    current_pos = cache.rbegin();
}
MachineCFG::MachineCFGNode *MachineCFG::ReverseIterator::next() { return *(current_pos++); }
bool MachineCFG::ReverseIterator::hasNext() { return current_pos != cache.rend(); }
void MachineCFG::ReverseIterator::rewind() {
    close();
    open();
}
void MachineCFG::ReverseIterator::close() {
    child->close();
    cache.clear();
    current_pos = cache.rend();
}

void MachineCFG::SeqScanIterator::open() { current = mcfg->block_map.begin(); }
MachineCFG::MachineCFGNode *MachineCFG::SeqScanIterator::next() { return (current++)->second; }
bool MachineCFG::SeqScanIterator::hasNext() { return current != mcfg->block_map.end(); }
void MachineCFG::SeqScanIterator::rewind() {
    close();
    open();
}
void MachineCFG::SeqScanIterator::close() { current = mcfg->block_map.end(); }

MachineCFG::DFSIterator *MachineCFG::getDFSIterator() { return new DFSIterator(this); }
MachineCFG::BFSIterator *MachineCFG::getBFSIterator() { return new BFSIterator(this); }
MachineCFG::SeqScanIterator *MachineCFG::getSeqScanIterator() { return new SeqScanIterator(this); }
MachineCFG::ReverseIterator *MachineCFG::getReverseIterator(Iterator *child) { return new ReverseIterator(child); }
