#ifndef FAST_LINEAR_SCAN_H
#define FAST_LINEAR_SCAN_H
#include "../basic_register_allocation.h"
class FastLinearScan : RegisterAlloc{
private:
    // All States here, like queue
    std::priority_queue<LiveInterval> unalloc_queue;

    double CalculateSpillWeight(LiveInterval);
public:
    FastLinearScan(MachineFunction* mfun,PhysicalRegisters*phy):RegisterAlloc(mfun,phy){}
    void DoAlloc();
};


#endif