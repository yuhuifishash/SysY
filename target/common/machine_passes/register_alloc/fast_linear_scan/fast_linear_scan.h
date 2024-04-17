#ifndef FAST_LINEAR_SCAN_H
#define FAST_LINEAR_SCAN_H
#include "../basic_register_allocation.h"
class FastLinearScan : RegisterAllocation {
private:
    // All States here, like queue
    std::priority_queue<LiveInterval> unalloc_queue;
    double CalculateSpillWeight(LiveInterval);

protected:
    void DoAllocInCurrentFunc();

public:
    FastLinearScan(MachineUnit *unit, PhysicalRegisters *phy) : RegisterAllocation(unit, phy) {}
};

#endif