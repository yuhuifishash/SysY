#include "physical_register.h"
bool OccupyReg(int phy_id, LiveInterval interval) { return false; }
bool ReleaseReg(int phy_id, LiveInterval interval) { return false; }

bool OccupyMem(int offset, int size, LiveInterval interval) { return false; }
bool ReleaseMem(int offset, int size, LiveInterval interval) { return false; }

int getIdleReg(const std::vector<int> &range, LiveInterval interval) { return -1; }
int getIdleMem(int width, LiveInterval interval) { return 0; }

int swapPhysicalReg(int phy_id1, LiveInterval interval1, int phy_id2, LiveInterval interval2) { return 0; }

std::vector<int> getAllConflictAmRegs(LiveInterval interval) {}