#include "physical_register.h"
bool PhysicalRegisters::OccupyReg(int phy_id, LiveInterval interval) {
    phy_occupied[phy_id].push_back(interval);
    return true;
}

bool PhysicalRegisters::ReleaseReg(int phy_id, LiveInterval interval) {
    auto it = phy_occupied[phy_id].begin();
    for (; it != phy_occupied[phy_id].end(); ++it) {
        if (*it == interval) {
            phy_occupied[phy_id].erase(it);
            return true;
        }
    }
    return false;
}

bool PhysicalRegisters::OccupyMem(int offset, int size, LiveInterval interval) {
    size /= 4;
    for (int i = offset; i < offset + size; i++) {
        mem_occupied[i].push_back(interval);
    }
    return true;
}
bool PhysicalRegisters::ReleaseMem(int offset, int size, LiveInterval interval) {
    size /= 4;
    for (int i = offset; i < offset + size; i++) {
        auto it = mem_occupied[i].begin();
        for (; it != mem_occupied[i].end(); ++it) {
            if (*it == interval) {
                mem_occupied[i].erase(it);
                break;
            }
        }
    }
    return true;
}

int PhysicalRegisters::getIdleReg(LiveInterval interval) {
    for (auto i : getValidRegs(interval)) {
        int ok = true;
        for (auto conflict_j : getAliasRegs(i)) {
            for (auto other_interval : phy_occupied[conflict_j]) {
                if (interval & other_interval) {
                    ok = false;
                    break;
                }
            }
        }
        if (ok) {
            return i;
        }
    }
    return -1;
}
int PhysicalRegisters::getIdleMem(LiveInterval interval) {
    std::vector<bool> ok;
    for (int i = 0; i < mem_occupied.size(); i++) {
        ok[i] = true;
        for (auto other_interval : mem_occupied[i]) {
            if (interval & other_interval) {
                ok[i] = false;
                break;
            }
        }
    }
    int free_cnt = 0;
    for (int offset = 0; offset < ok.size(); offset++) {
        if (ok[offset]) {
            free_cnt++;
        } else {
            free_cnt = 0;
        }
        if (free_cnt == interval.getReg().getDataWidth() / 4) {
            return offset - free_cnt + 1;
        }
    }
    return mem_occupied.size() - free_cnt;
}

int PhysicalRegisters::swapRegspill(int p_reg1, LiveInterval interval1, int offset_spill2, int size,
                                    LiveInterval interval2) {

    // 1. 释放寄存器p_reg1
    ReleaseReg(p_reg1, interval1);
    // 2. 释放内存offset_spill2
    ReleaseMem(offset_spill2, size, interval2);
    // 3. 分配寄存器p_reg1;
    OccupyReg(p_reg1, interval2);
    // 4. 分配内存offset_spill2
    OccupyMem(getIdleMem(interval1), size, interval1);
    return 0;
}

std::vector<LiveInterval> PhysicalRegisters::getConflictIntervals(LiveInterval interval) {
    std::vector<LiveInterval> result;
    for (auto phy_intervals : phy_occupied) {
        for (auto other_interval : phy_intervals) {
            if (interval & other_interval) {
                result.push_back(other_interval);
            }
        }
    }
    return result;
}
std::vector<int> PhysicalRegisters::getAliasRegs(int phy_id) { return std::vector<int>({phy_id}); }