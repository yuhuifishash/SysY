#ifndef PHYSICAL_REGISTER_INFO
#define PHYSICAL_REGISTER_INFO
#include "liveinterval.h"
#include <vector>

class PhysicalRegisters {
private:
protected:
    std::vector<std::vector<LiveInterval>> phy_occupied;
    // Iterate phy_occupied[phy_id] to checkout all intervals

    std::vector<std::vector<LiveInterval>> mem_occupied;
    // Iterate mem_occupied[offset] to checkout all intervals
    // Offset: at least 4B
    virtual std::vector<int> getValidRegs(LiveInterval interval) = 0;
    virtual std::vector<int> getAliasRegs(int phy_id);

public:
    virtual void clear() {
        phy_occupied.clear();
        mem_occupied.clear();
    }
    virtual bool OccupyReg(int phy_id, LiveInterval interval);
    virtual bool ReleaseReg(int phy_id, LiveInterval interval);

    virtual bool OccupyMem(int offset, int size, LiveInterval interval);
    virtual bool ReleaseMem(int offset, int size, LiveInterval interval);

    virtual int getIdleReg(LiveInterval interval, std::vector<int> preferd_regs = {},
                           std::vector<int> noprefer_regs = {});
    virtual int getIdleMem(LiveInterval interval);

    virtual int swapRegspill(int p_reg1, LiveInterval interval1, int offset_spill2, int size, LiveInterval interval2);
    virtual std::vector<LiveInterval> getConflictIntervals(LiveInterval interval);

    int getSpillSize() { return mem_occupied.size() * 4; }
};

#endif