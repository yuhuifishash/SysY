#include "ir.h"
#include "cfg.h"

void InsertPhi(CFG* C)
{

}

void VarRename(CFG* C)
{

}

void Mem2Reg(CFG* C)
{
    InsertPhi(C);
    VarRename(C);
}

