#ifndef TYPE_H
#define TYPE_H

#include <iostream>
#include <vector>
#include <string>

class Type
{
public:
    enum ty{
        VOID = 0,
        INT = 1,
        FLOAT = 2,
        BOOL = 3,
        PTR = 4
    }type;
    int arraydims = 0;
};


class ConstValue
{
public:
    //all the globals are considered const in semant
    //used for arraydims and global var initval
    bool ConstTag;
    union ConstVal{
        bool BoolVal;
        int IntVal;
        float FloatVal;
    }val;
};


class NodeAttr
{
public:
    enum opcode{
        ADD = 0, // +
        SUB = 1, // -
        MUL = 2, // *
        DIV = 3, // /
        MOD = 4, // %
        GEQ = 5, // >=
        GT = 6,  // >
        LEQ = 7, // <=
        LT = 8,  // <
        EQ = 9,  // ==
        NE = 10, // !=
        OR = 11, // ||
        AND = 12,// && 
        NOT = 13,// !
    };
    int line_number;
    Type T;
    ConstValue V;
};



#endif