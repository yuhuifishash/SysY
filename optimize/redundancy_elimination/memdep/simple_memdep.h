#include "memdep.h"
#include <set>

class SimpleMemDepAnalyser : public MemoryDependenceAnalyser {
private:
    // Instruction I maybe store or load
    /* Given a load or a store, what preceding load or store does the state of the referenced
    memory location depend on?

    Reference: Compiler Optimizations for a Time-constrained Environment  Owen C. Anderson*/
    std::set<Instruction> GetLoadClobbers(Instruction I, CFG *C);

    // I must be store, return all the load instructions that may load the memory that I stores to.
    std::set<Instruction> GetStorePostClobbers(Instruction I, CFG *C);

public:
    /*
    Instruction a,b may be load or store (each store will generate a new load)

    we assume all the instructions that have side_effect will write all the memory
    */
    virtual bool isLoadSameMemory(Instruction a, Instruction b, CFG *C);

    // a and b must be store instructions
    // if a, then b is dead, return true,   else return false.
    virtual bool isStoreDead(Instruction a, Instruction b);
    virtual void MemoryDependenceAnalysis() {}    // simple memdep analyser does not need to preprocess
    virtual void MemDepTest();
};