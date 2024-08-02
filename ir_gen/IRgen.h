#ifndef IRGEN_H
#define IRGEN_H

#include "../include/SysY_tree.h"
#include "../include/cfg.h"
#include "../include/symtab.h"
#include "../include/type.h"
#include <assert.h>
#include <map>
#include <vector>

class IRgenTable {
public:
    // reg  <arraydim,type>
    // eg. %r0 = alloca [3 x [3 x float]] -> reg_map[0] = {{3,3},FLOAT32};

    //used for putf
    Operand current_strptr = nullptr;

    std::map<int, VarAttribute> RegTable;
    std::map<int, int> FormalArrayTable;
    SymbolRegTable symbol_table;
    IRgenTable() {}
};

#endif