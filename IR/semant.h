#ifndef SEMANT_H
#define SEMANT_H

#include <map>
#include <vector>
#include <set>
#include "symtab.h"
#include "SysY_tree.h"
#include "type.h"
extern IdTable id_table;
/*
semant need to do:

1.Function:
build func_table
Function call has its definition?
Function call FuncRParams number is same as FuncFParams number?
return type and return stmt is valid?
does main exists?
multiple definitions?
FuncRParam multiple definitions?

2.var:
build global_table
var used has its definition?
multiple definitions in the same scope?

3.type
check and set all the expression's type
ConstExp can be calculted?
void op(+,-,%,...) int/float?
WHILE cond has type void?
array var dim is equal or less than definition arraydim?

4.break and continue
break and continue only appear in the WHILE? 

*/

class SemantTable
{
public:
    std::map<Symbol,FuncDef> func_table;
    
    std::map<Symbol,ArrayVal> global_table;

    SemantTable(){
        Symbol getint = id_table.add_id("getint");
        func_table[getint] = new __FuncDef(
            1,getint,new std::vector<FuncFParam>{},nullptr
        );
        Symbol getch = id_table.add_id("getch");
        func_table[getch] = new __FuncDef(
            1,getch,new std::vector<FuncFParam>{},nullptr
        );
        Symbol getfloat = id_table.add_id("getfloat");
        func_table[getfloat] = new __FuncDef(
            2,getfloat,new std::vector<FuncFParam>{},nullptr
        );
        Symbol getarray = id_table.add_id("getarray");
        func_table[getarray] = new __FuncDef(
            1,getarray,new std::vector<FuncFParam>{new __FuncFParam(3)},nullptr
        );
        Symbol getfarray = id_table.add_id("getfarray");
        func_table[getfarray] = new __FuncDef(
            1,getfarray,new std::vector<FuncFParam>{new __FuncFParam(3)},nullptr
        );
        Symbol putint = id_table.add_id("putint");
        func_table[putint] = new __FuncDef(
            0,putint,new std::vector<FuncFParam>{new __FuncFParam(1)}
            ,nullptr
        );
        Symbol putch = id_table.add_id("putch");
        func_table[putch] = new __FuncDef(
            0,putch,new std::vector<FuncFParam>{new __FuncFParam(1)}
            ,nullptr
        );
        Symbol putfloat = id_table.add_id("putfloat");
        func_table[putfloat] = new __FuncDef(
            0,putfloat,new std::vector<FuncFParam>{new __FuncFParam(2)},nullptr
        );
        Symbol putarray = id_table.add_id("putarray");
        func_table[putarray] = new __FuncDef(
            0,putarray,new std::vector<FuncFParam>{new __FuncFParam(1),new __FuncFParam(3)},nullptr
        );
        Symbol putfarray = id_table.add_id("putfarray");
        func_table[putfarray] = new __FuncDef(
            0,putfarray,new std::vector<FuncFParam>{new __FuncFParam(1),new __FuncFParam(4)},nullptr
        );
        Symbol putf = id_table.add_id("putf");
        func_table[putf] = new __FuncDef(
            0,putf,new std::vector<FuncFParam>{},nullptr
        );
        Symbol starttime = id_table.add_id("_sysy_starttime");
        func_table[starttime] = new __FuncDef(
            0,starttime,new std::vector<FuncFParam>{new __FuncFParam(1)},nullptr
        );
        Symbol stoptime = id_table.add_id("_sysy_stoptime");
        func_table[stoptime] = new __FuncDef(
            0,stoptime,new std::vector<FuncFParam>{new __FuncFParam(1)},nullptr
        );
    }
};

#endif