#ifndef LATTICE_H
#define LATTICE_H

class ConstLattice
{
public:
    enum lattice_status{
        UNINIT = 0,
        CONST = 1,
        VAR = 2,
    }status;
    enum lattice_type{
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
    ConstLattice(lattice_status s,lattice_type type,int val)
    {
        status = s;
        val_type = type;
        vals.I32Val = val;
    }
    ConstLattice(lattice_status s,lattice_type type,float val)
    {
        status = s;
        val_type = type;
        vals.FloatVal = val;
    }
};

#endif