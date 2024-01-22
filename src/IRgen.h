#ifndef IRGEN_H
#define IRGEN_H

#include <map>
#include <vector>
#include "llvm_cfg.h"
#include "symtab.h"
#include "SysY_tree.h"

class IRgenTable
{
public:
    //reg  <arraydim,type>
    //eg. %r0 = alloca [3 x [3 x float]] -> reg_map[0] = {{3,3},2};
    std::map<int,std::pair<std::vector<int>,int> > reg_table ;
    std::map<int,int> is_array_table;
    std::map<int,int> formal_array_table;
    SymbolRegTable symbol_table;
    IRgenTable(){}
};

#endif