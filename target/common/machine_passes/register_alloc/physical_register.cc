#include "physical_register.h"
bool PhysicalRegisters::OccupyReg(int phy_id, LiveInterval interval) {
    if (interval.begin() != interval.end()) {
        // Log("\nOccupyReg Phy=%d, interval 1st seg=%d, %d",phy_id,interval.begin()->begin,interval.begin()->end);
    } else {
        // Log("\nOccupyReg Phy=%d, empty",phy_id);
    }
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
        while (i >= mem_occupied.size()) {
            mem_occupied.push_back({});
        }
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

int PhysicalRegisters::getIdleReg(LiveInterval interval, std::vector<int> preferd_regs,
                                  std::vector<int> noprefer_regs) {
    PRINT("\nVreg: ");
    interval.Print();
    for (auto i : preferd_regs) {
        int ok = true;
        for (auto conflict_j : getAliasRegs(i)) {
            for (auto other_interval : phy_occupied[conflict_j]) {
                PRINT("\nTry Phy %d", i);
                // std::cerr<<"\nTry Phy "<<i<<"\n";
                PRINT("Othe: ");
                other_interval.Print();
                if (interval & other_interval) {
                    PRINT("\n->Fail\n");
                    ok = false;
                    break;
                } else {
                    PRINT("\n->Success\n");
                }
            }
        }
        if (ok) {
            return i;
        }
    }
    std::map<int, int> reg_tried, reg_valid;
    for (auto i : preferd_regs) {
        reg_tried[i] = 1;
    }
    for (auto i : noprefer_regs) {
        reg_tried[i] = 1;
    }
    for (auto i : getValidRegs(interval)) {
        reg_valid[i] = 1;
        if (reg_tried[i])
            continue;
        int ok = true;
        for (auto conflict_j : getAliasRegs(i)) {
            for (auto other_interval : phy_occupied[conflict_j]) {
                PRINT("\nTry Phy %d", i);
                // std::cerr<<"\nTry Phy "<<i<<"\n";
                PRINT("Othe: ");
                other_interval.Print();
                if (interval & other_interval) {
                    PRINT("\n->Fail\n");
                    ok = false;
                    break;
                } else {
                    PRINT("\n->Success\n");
                }
            }
        }
        if (ok) {
            return i;
        }
    }
    for (auto i : noprefer_regs) {
        if (!reg_valid[i])
            continue;
        int ok = true;
        for (auto conflict_j : getAliasRegs(i)) {
            for (auto other_interval : phy_occupied[conflict_j]) {
                PRINT("\nTry Phy %d", i);
                // std::cerr<<"\nTry Phy "<<i<<"\n";
                PRINT("Othe: ");
                other_interval.Print();
                if (interval & other_interval) {
                    PRINT("\n->Fail\n");
                    ok = false;
                    break;
                } else {
                    PRINT("\n->Success\n");
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
    ok.resize(mem_occupied.size(), true);
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
    // OccupyMem(getIdleMem(interval1), size, interval1);
    return 0;
}

std::vector<LiveInterval> PhysicalRegisters::getConflictIntervals(LiveInterval interval) {
    std::vector<LiveInterval> result;
    for (auto phy_intervals : phy_occupied) {
        for (auto other_interval : phy_intervals) {
            if (interval.getReg().type == other_interval.getReg().type && (interval & other_interval)) {
                result.push_back(other_interval);
            }
        }
    }
    return result;
}
std::vector<int> PhysicalRegisters::getAliasRegs(int phy_id) { return std::vector<int>({phy_id}); }
