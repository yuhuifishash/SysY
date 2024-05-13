#ifndef CFG_ITERS_H
#define CFG_ITERS_H
#include "../machine.h"
#include <assert.h>
class MachineCFG::SeqScanIterator : public Iterator {
private:
    decltype(block_map.begin()) current;

public:
    SeqScanIterator(MachineCFG *mcfg) : Iterator(mcfg) {}
    void open();
    MachineCFGNode *next();
    bool hasNext();
    void rewind();
    void close();
};

class MachineCFG::ReverseIterator : public Iterator {
private:
    Iterator *child;
    std::vector<MachineCFGNode *> cache;
    decltype(cache.rbegin()) current_pos;

public:
    ReverseIterator(Iterator *child) : Iterator(child->getMachineCFG()), child(child) {}
    void open();
    MachineCFGNode *next();
    bool hasNext();
    void rewind();
    void close();
};
class MachineCFG::DFSIterator : public Iterator {
private:
    std::map<int, int> visited;
    std::stack<int> stk;

public:
    DFSIterator(MachineCFG *mcfg) : Iterator(mcfg) {}
    void open();
    MachineCFGNode *next();
    bool hasNext();
    void rewind();
    void close();
};
class MachineCFG::BFSIterator : public Iterator {
private:
    std::map<int, int> visited;
    std::queue<int> que;

public:
    BFSIterator(MachineCFG *mcfg) : Iterator(mcfg) {}
    void open();
    MachineCFGNode *next();
    bool hasNext();
    void rewind();
    void close();
};

#endif