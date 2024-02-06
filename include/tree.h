#ifndef TREE_H
#define TREE_H

//tree definition (used for AST)
#include <iostream>
#include "type.h"

class tree_node
{
protected:
    int line_number;
    NodeAttribute attribute;
    int type;//void 0  int 1  float 2
    int IntVal;//used for const exp    
    float FloatVal;//used for const exp   
    int cal_flag;//can the exp be calculated?
public:
    int get_line_number(){return line_number;}
    int get_type(){return type;}
    int get_Intval(){return IntVal;}
    float get_Floatval(){return FloatVal;}
    int get_cal_flag(){return cal_flag;}
    void set_line_number(int t){line_number = t;}
    void set_type(int t){type = t;}
    void set_IntVal(int t){IntVal = t;}
    void set_FloatVal(float t){FloatVal = t;}
    void set_cal_flag(int t){cal_flag = t;}
    virtual void codeIR() = 0;
    virtual void printAST(std::ostream& s,int pad) = 0;
    virtual void type_check() = 0;
};

#endif