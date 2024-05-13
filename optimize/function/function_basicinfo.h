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

    // TODO(): if the function may throw exceptions, the tag is true.(such as divided by zero)
    bool may_throwexceptions = false;
};

// class for FunctionCallGraph
class FunctionCallGraph {
public:
    CFG *MainCFG;    // entry of the program
    std::unordered_map<CFG *, std::vector<CFG *>> CG;
    std::unordered_map<CFG *, std::vector<int>> CGNum;
    // std::unordered_map<std::pair<CFG *,CFG *>, int> CGNum;

    void BuildCG(LLVMIR *IR);
};

#endif