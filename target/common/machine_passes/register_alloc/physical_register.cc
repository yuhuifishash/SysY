#include "physical_register.h"
bool PhysicalRegisters::OccupyReg(int phy_id, LiveInterval interval) { return false; }
bool PhysicalRegisters::ReleaseReg(int phy_id, LiveInterval interval) { return false; }

bool PhysicalRegisters::OccupyMem(int offset, int size, LiveInterval interval) { return false; }
bool PhysicalRegisters::ReleaseMem(int offset, int size, LiveInterval interval) { return false; }

int PhysicalRegisters::getIdleReg(LiveInterval interval) { return -1; }
int PhysicalRegisters::getIdleMem(LiveInterval interval) { return 0; }

int PhysicalRegisters::swapPhysicalReg(LiveInterval interval1, LiveInterval interval2) { return 0; }

std::vector<LiveInterval> PhysicalRegisters::getConflictIntervals(LiveInterval interval) {
    return std::vector<LiveInterval>();
}