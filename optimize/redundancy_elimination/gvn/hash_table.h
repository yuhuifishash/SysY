#ifndef HASH_TABLE_H
#define HASH_TABLE_H

// N_H

#include "../../../include/Instruction.h"
#include <c++/11/bits/std_thread.h>
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

class HashTable{
public:
    int expr_number = 0;
    std::map<std::string,int> valuemap;
    std::map<int,std::string> stringmap;
    //key = original num, value = value num
    int lookupOrAdd(std::string ExprStr){
        if(valuemap.find(ExprStr) == valuemap.end()){
            valuemap[ExprStr] = expr_number;
            // valuemap[expr_number++] = e;
        }
        return valuemap[ExprStr];
    }
    int lookupOrAdd(Instruction I);
    int lookupOrAddReg(Operand op);
    int lookupOrAddLoad(Instruction I);
    int lookupOrAddStore(Instruction I);
    int lookupOrAddArithmetic(Instruction I);
    int lookupOrAddIcmp(Instruction I);
    int lookupOrAddFcmp(Instruction I);
    int lookupOrAddCall(Instruction I);
    int lookupOrAddGep(Instruction I);
    int lookupOrAddPhi(Instruction I);
};

#endif