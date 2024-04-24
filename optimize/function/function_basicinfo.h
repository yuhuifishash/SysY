#ifndef FUNCTION_BASICINFO_H
#define FUNCTION_BASICINFO_H
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
};

class CFGSCC {
public:
    std::set<CFG *> CFGSet;
};

// class for FunctionCallGraph
class FunctionCallGraph {
public:
    CFG *MainCFG;    // entry of the program
    std::unordered_map<CFG *, std::vector<CFG *>> CG;
    std::unordered_map<CFGSCC *, std::vector<CFGSCC *>> CGSCC;

    void BuildCG(LLVMIR *IR);
    void BuildCGSCC();
};

#endif