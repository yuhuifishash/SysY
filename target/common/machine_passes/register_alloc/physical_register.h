#ifndef PHYSICAL_REGISTER_INFO
#define PHYSICAL_REGISTER_INFO
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

    virtual int getIdleReg(LiveInterval interval);
    virtual int getIdleMem(LiveInterval interval);

    virtual int swapPhysicalReg(LiveInterval interval1, LiveInterval interval2);
    virtual std::vector<LiveInterval> getConflictIntervals(LiveInterval interval);
};

#endif