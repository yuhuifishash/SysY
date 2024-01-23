#ifndef TYPE_H
#define TYPE_H


class Type
{
public:
    enum{
        VOID = 1,
        INT = 2,
        FLOAT = 3,
        BOOL = 4,
        PTR = 5
    }type;
    int arraydims = 0;
};


class ConstValue
{
public:
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
    Type T;
    ConstValue V;
};


NodeAttr synthesis_attr_plus(NodeAttr a);
NodeAttr synthesis_attr_minus(NodeAttr b);
NodeAttr synthesis_attr_not(NodeAttr b);
NodeAttr synthesis_attr(NodeAttr a,NodeAttr b);


#endif