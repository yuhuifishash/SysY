#include "memdep.h"
#include <set>

/*TODO(): 
the implement of this pass is very terrible, this pass can only judge instructions' dependency that one dominates another
and O(n) Time-Complexity for each query (n is the number of the instructions)
we also do not sure whether this pass is correct.
we need MemorySSA for better MemDepAnalyser
*/
class SimpleMemDepAnalyser : public MemoryDependenceAnalyser {
private:
    // Instruction I maybe store or load
    /* Given a load or a store, what preceding load or store does the state of the referenced
    memory location depend on?

    Reference: Compiler Optimizations for a Time-constrained Environment  Owen C. Anderson*/
    std::set<Instruction> GetLoadClobbers(Instruction I, CFG *C);

    // I must be store, return all the load instructions that may load the memory that I stores to.
    std::set<Instruction> GetStorePostClobbers(Instruction I, CFG *C);

    // I1 Dom I2
    // if all the path from I1 -> I2 have no store alias the ptr of I1, return true
    bool IsNoStore(Instruction I1, Instruction I2, CFG *C);

    // get all the block in all the path from id1 -> id2
    std::set<int> GetAllBlockInPath(int id1, int id2, CFG *C);

    bool IsExternalCallReadPtr(CallInstruction *I, Operand ptr, CFG *C);

public:
    /*
    Instruction a,b may be load or store (each store will generate a new load)

    we assume all the call instructions that have side_effect will write all the memory
    */
    virtual bool isLoadSameMemory(Instruction a, Instruction b, CFG *C);

    // a and b must be store instructions
    virtual bool isStoreBeUsedSame(Instruction a, Instruction b, CFG *C);

    virtual bool isStoreNotUsed(Instruction a, CFG *C);

    virtual void MemoryDependenceAnalysis() {}    // simple memdep analyser does not need to preprocess
    virtual void MemDepTest();
};