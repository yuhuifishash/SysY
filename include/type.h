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
    Type T;
    ConstValue V;
};

NodeAttr synthesis_attr(NodeAttr a);
NodeAttr synthesis_attr(NodeAttr a,NodeAttr b);


#endif