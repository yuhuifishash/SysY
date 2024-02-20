#ifndef IRGEN_H
#define IRGEN_H

#include <map>
#include <vector>
#include <assert.h>
#include "cfg.h"
#include "symtab.h"
#include "SysY_tree.h"
#include "type.h"

class IRgenTable
{
public:
    //reg  <arraydim,type>
    //eg. %r0 = alloca [3 x [3 x float]] -> reg_map[0] = {{3,3},FLOAT32};
    std::map<int,VarAttribute> RegTable;
    std::map<int,int> FormalArrayTable;
    SymbolRegTable symbol_table;
    IRgenTable(){}
};

#endif