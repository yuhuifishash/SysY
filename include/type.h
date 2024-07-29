#ifndef TYPE_H
#define TYPE_H

#include <iostream>
#include <string>
#include <vector>

class Type {
public:
    enum ty { VOID = 0, INT = 1, FLOAT = 2, BOOL = 3, PTR = 4, DOUBLE = 5 } type;
    std::string GetTypeInfo();
    Type() { type = VOID; }
};

class ConstValue {
public:
    // all the globals are considered const in semant
    // used for arraydims and global var initval
    bool ConstTag;
    union ConstVal {
        bool BoolVal;
        int IntVal;
        float FloatVal;
        double DoubleVal;
    } val;
    std::string GetConstValueInfo(Type ty);
    ConstValue() {
        val.IntVal = 0;
        ConstTag = false;
    }
};

class VarAttribute {
public:
    Type::ty type;
    bool ConstTag = 0;
    std::vector<int> dims{};
    std::vector<int> IntInitVals{};    // used for array
    std::vector<float> FloatInitVals{};
    VarAttribute() {
        type = Type::VOID;
        ConstTag = false;
    }
};

class NodeAttribute {
public:
    enum opcode {
        ADD = 0,     // +
        SUB = 1,     // -
        MUL = 2,     // *
        DIV = 3,     // /
        MOD = 4,     // %
        GEQ = 5,     // >=
        GT = 6,      // >
        LEQ = 7,     // <=
        LT = 8,      // <
        EQ = 9,      // ==
        NE = 10,     // !=
        OR = 11,     // ||
        AND = 12,    // &&
        NOT = 13,    // !
    };
    int line_number = -1;
    Type T;
    ConstValue V;
    std::string GetAttributeInfo();
};

#endif