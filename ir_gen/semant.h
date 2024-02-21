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
    std::map<Symbol,FuncDef> FunctionTable;

    SymbolTable symbol_table;
    std::map<Symbol,VarAttribute> GlobalTable;

    SemantTable(){
        Symbol getint = id_table.add_id("getint");
        FunctionTable[getint] = new __FuncDef(
            Type::INT,getint,new std::vector<FuncFParam>{},nullptr
        );

        Symbol getch = id_table.add_id("getch");
        FunctionTable[getch] = new __FuncDef(
            Type::INT,getch,new std::vector<FuncFParam>{},nullptr
        );

        Symbol getfloat = id_table.add_id("getfloat");
        FunctionTable[getfloat] = new __FuncDef(
            Type::FLOAT,getfloat,new std::vector<FuncFParam>{},nullptr
        );

        Symbol getarray = id_table.add_id("getarray");
        FunctionTable[getarray] = new __FuncDef(
            Type::INT,getarray,
            new std::vector<FuncFParam>{new __FuncFParam(Type::INT,new std::vector<Expression>(1,nullptr))},
            nullptr
        );

        Symbol getfarray = id_table.add_id("getfarray");
        FunctionTable[getfarray] = new __FuncDef(
            Type::INT,getfarray,
            new std::vector<FuncFParam>{new __FuncFParam(Type::FLOAT,new std::vector<Expression>(1,nullptr))},
            nullptr
        );

        Symbol putint = id_table.add_id("putint");
        FunctionTable[putint] = new __FuncDef(
            Type::VOID,putint,new std::vector<FuncFParam>{new __FuncFParam(Type::INT)},
            nullptr
        );

        Symbol putch = id_table.add_id("putch");
        FunctionTable[putch] = new __FuncDef(
            Type::VOID,putch,new std::vector<FuncFParam>{new __FuncFParam(Type::INT)},
            nullptr
        );

        Symbol putfloat = id_table.add_id("putfloat");
        FunctionTable[putfloat] = new __FuncDef(
            Type::VOID,putfloat,new std::vector<FuncFParam>{new __FuncFParam(Type::FLOAT)},nullptr
        );

        Symbol putarray = id_table.add_id("putarray");
        FunctionTable[putarray] = new __FuncDef(
            Type::VOID,putarray,
            new std::vector<FuncFParam>{
                new __FuncFParam(Type::INT),new __FuncFParam(Type::INT,new std::vector<Expression>(1,nullptr))},
            nullptr
        );

        Symbol putfarray = id_table.add_id("putfarray");
        FunctionTable[putfarray] = new __FuncDef(
            Type::VOID,putfarray,
            new std::vector<FuncFParam>{
                new __FuncFParam(Type::INT),new __FuncFParam(Type::FLOAT,new std::vector<Expression>(1,nullptr))},
            nullptr
        );

        Symbol starttime = id_table.add_id("_sysy_starttime");
        FunctionTable[starttime] = new __FuncDef(
            Type::VOID,starttime,new std::vector<FuncFParam>{new __FuncFParam(Type::INT)},nullptr
        );

        Symbol stoptime = id_table.add_id("_sysy_stoptime");
        FunctionTable[stoptime] = new __FuncDef(
            Type::VOID,stoptime,new std::vector<FuncFParam>{new __FuncFParam(Type::INT)},nullptr
        );
        for(auto F:FunctionTable){
            F.second->TypeCheck();
        }
    }
};

#endif