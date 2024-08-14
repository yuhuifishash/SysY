#ifndef HASH_TABLE_H
#define HASH_TABLE_H

// N_H

#include "../../../include/Instruction.h"
#include "../../../include/ir.h"
#include <functional>
#include <iostream>
#include <map>
#include <set>
#include <string>
#include <vector>

// class GVN_Value{
// public:
//     int vid;
//     Expr vexpr;
//     bool operator==(GVN_Value Value){
//         return vid == Value.vid;
//     }
// };

class HashTable {
public:
    int expr_number = 0;
    std::map<std::string, int> valuemap;
    std::map<int, int> resultmap;
    // std::map<int, std::vector<Operand>> valuevetor;
    std::map<int, Instruction> definemap;
    void defineDFS(CFG *C);
    int lookupOrAdd(std::string ExprStr) {
        if (valuemap.find(ExprStr) == valuemap.end()) {
            valuemap[ExprStr] = expr_number;
        }
        return valuemap[ExprStr];
    }
    int lookupOrAdd(Instruction I);
    int lookupOrAddOthers(Instruction I);
    int lookupOrAddReg(Operand op);
    int lookupOrAddStore(Instruction I);
    int lookupOrAddArithmetic(Instruction I);
    int lookupOrAddGep(Instruction I);
    int lookupOrAddPhi(Instruction I);
};

#endif