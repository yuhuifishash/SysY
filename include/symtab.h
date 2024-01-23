#ifndef SYMTAB_H
#define SYMTAB_H


#include <string>
#include <stack>
#include <map>
#include <vector>

class Entry
{
private:
    std::string name;
public:
    Entry(std::string s){name = s;}
    std::string get_string(){return name;}
};
typedef Entry* Symbol;



//stringconst_table
class StringTable
{
private:
    std::map<std::string,Symbol> string_table{};
public:
    std::map<std::string,int> string_no{};
    Symbol add_string(std::string s);
};


class IdTable
{
private:
    std::map<std::string,Symbol> id_table{};
public:
    Symbol add_id(std::string s);
};

class ArrayVal
{
public:
    int type = 0;//1->int  2->float
    int const_flag = 0;
    std::vector<int> dims{};
    std::vector<int> IntInitVals{};//used for array
    std::vector<float> FloatInitVals{};
    ArrayVal(){}
};
/*
look_up(Symbol t)  return int;
enter_scope()
exit_scope()
*/
class SymbolTable
{
private:
    int current_scope = -1;
    std::vector<std::map<Symbol,ArrayVal> > symbol_table;
public:
    int get_current_scope(){return current_scope;}
    void add_Symbol(Symbol C,ArrayVal val);

    //in semant   return type of C   
    int lookup_type(Symbol C);
    int lookup_scope(Symbol C);
    ArrayVal lookup_val(Symbol C);
    void enter_scope();
    void exit_scope();
};

class SymbolRegTable
{
private:
    int current_scope = -1;
    std::vector<std::map<Symbol,int> > symbol_table;
public:
    void add_Symbol(Symbol C,int reg);
    int lookup(Symbol C);
    void enter_scope();
    void exit_scope();
};


#endif