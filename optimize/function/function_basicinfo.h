#ifndef FUNCTION_BASICINFO_H
#define FUNCTION_BASICINFO_H
#include "../../include/Instruction.h"
#include <set>
#include <unordered_map>
#include <vector>

class CFG;
class LLVMIR;

class FunctionBasicInfo {
public:
    int arg_number = 0;
    int inst_number = 0;
    int bb_number = 0;

    // TODO(): if the function may throw exceptions, the tag is true.(such as divided by zero)
    bool may_throwexceptions = false;
};

// class for FunctionCallGraph
class FunctionCallGraph {
public:
    CFG *MainCFG;                                                                              // entry of the program
    std::unordered_map<CFG *, std::vector<CFG *>> CG;                                          // CG graph
    std::unordered_map<CFG *, std::unordered_map<CFG *, int>> CGNum;                           // CallNum
    std::unordered_map<CFG *, std::unordered_map<CFG *, std::vector<Instruction>>> CGCallI;    // CallI
    std::unordered_map<CFG *, size_t> CGINum;    // the Intruction num of CFG
    // std::unordered_map<Instruction, int> CallIuidMap;

    void BuildCG(LLVMIR *IR);
};

#endif