#ifndef FAST_LINEAR_SCAN_H
#define FAST_LINEAR_SCAN_H
#include "../basic_register_allocation.h"
class FastLinearScan : RegisterAlloc{
private:
    // All States here, like queue
    // May need another class, .h
    // May need new folder
public:
    FastLinearScan(MachineCFG* mcfg):RegisterAlloc(mcfg){}
    void DoAlloc(){}
};


#endif