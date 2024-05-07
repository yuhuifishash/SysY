#include "memdep.h"

class SimpleMemDepAnalyser : public MemoryDependenceAnalyser {
private:
    // Instruction a maybe store or load
    /* Given a load or a store, what preceding load or store does the state of the referenced
    memory location depend on?

    Reference: Compiler Optimizations for a Time-constrained Environment  Owen C. Anderson*/
    std::vector<Instruction> GetLoadClobbers(Instruction I, CFG *C);

public:
    /*
    Instruction a,b may be load or store (each store will generate a new load)

    we assume all the instructions that have side_effect will write all the memory
    */
    virtual bool isLoadRedundant(Instruction a, Instruction b, CFG *C);
    virtual void MemoryDependenceAnalysis() {}    // simple memdep analyser does not need to preprocess
    virtual void MemDepTest();
};