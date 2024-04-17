#ifndef PHYSICAL_REGISTER_INFO
#define PHYSICAL_REGISTER_INFO
// An abstract class here

// Giving virtual methods, providing Register types, numbers (? maybe it's not necessary) (? Spill descriptor
// index is relevant to arch) Every virtual registers has already been set its accessible_physical_registers
// in InsSelect stage, regarding type, width, forced allocation.

// Define an abstract conflict rule in this class for physical space for normal cases also the following
// special case union{s0,s1,struct{d0}}

// Not sure how conflict information, or interface about conflict will be organized and used by now

// Maybe the filename should be physical_conflict_rule.h (? not sure)
#include "liveinterval.h"
#include <vector>

class PhysicalRegisters {
private:
protected:
    std::vector<std::vector<int>> mem_occupied;
    std::vector<std::vector<int>> phy_occupied;
    // [phy_no][ins_no] -> am_number

public:
    virtual bool OccupyReg(int phy_id, LiveInterval interval);
    virtual bool ReleaseReg(int phy_id, LiveInterval interval);

    virtual bool OccupyMem(int offset, int size, LiveInterval interval);
    virtual bool ReleaseMem(int offset, int size, LiveInterval interval);

    virtual int getIdleReg(const std::vector<int> &range, LiveInterval interval);
    virtual int getIdleMem(int width, LiveInterval interval);

    virtual int swapPhysicalReg(int phy_id1, LiveInterval interval1, int phy_id2, LiveInterval interval2);
    virtual std::vector<int> getAllConflictAmRegs(LiveInterval interval);
};

#endif