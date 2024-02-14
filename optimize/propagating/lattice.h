#ifndef LATTICE_H
#define LATTICE_H

class ConstLattice
{
public:
    enum LatticeStatus{
        UNINIT = 0,
        CONST = 1,
        VAR = 2,
    }status;
    enum LatticeType{
        NONE = 0,
        I32 = 1,
        FLOAT = 2,
    }val_type;
    union{
        int I32Val;
        float FloatVal;
    }vals;
    ConstLattice()
    {
        status = UNINIT;
        val_type = NONE;
    }
    ConstLattice(LatticeStatus s,LatticeType type,int val)
    {
        status = s;
        val_type = type;
        vals.I32Val = val;
    }
    ConstLattice(LatticeStatus s,LatticeType type,float val)
    {
        status = s;
        val_type = type;
        vals.FloatVal = val;
    }
};

#endif