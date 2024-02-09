#ifndef TREE_H
#define TREE_H

//tree definition (used for AST)
#include <iostream>
#include "type.h"

class tree_node
{
protected:
    int line_number;
public:
    NodeAttribute attribute;
    int GetLineNumber(){return line_number;}
    void SetLineNumber(int t){line_number = t;}

    virtual void codeIR() = 0;
    virtual void printAST(std::ostream& s,int pad) = 0;
    virtual void TypeCheck() = 0;
};

#endif