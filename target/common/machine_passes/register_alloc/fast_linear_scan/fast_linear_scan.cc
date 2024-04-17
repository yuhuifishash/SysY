#include "fast_linear_scan.h"
void FastLinearScan::DoAllocInCurrentFunc() {
    bool spilled = false;
    auto mfun = current_func;
    do {
        UpdateIntervalsInCurrentFunc();
        for (auto interval : intervals) {
            unalloc_queue.push(interval.second);
        }
        while (!unalloc_queue.empty()) {
            auto interval = unalloc_queue.top();
            auto &cur_virtual_register = mfun->virtual_registers[interval.getVirtualRegId()];
            int phy_reg_id = phy_regs->getIdleReg(cur_virtual_register.accessible_physical_registers, interval);
            if (phy_reg_id >= 0) {
                phy_regs->OccupyReg(phy_reg_id, interval);
                cur_virtual_register.physical_register_descriptor_index = phy_reg_id;
            } else {
                int mem = phy_regs->getIdleMem(cur_virtual_register.getDataWidth(), interval);
                phy_regs->OccupyMem(mem, cur_virtual_register.getDataWidth(), interval);

                cur_virtual_register.physical_register_descriptor_index = -1;
                cur_virtual_register.mem_offset = mem;

                double spill_weight = CalculateSpillWeight(interval);
                auto &candidate_spill = cur_virtual_register;
                auto candidate_vreg = interval.getVirtualRegId();
                for (auto v_reg : phy_regs->getAllConflictAmRegs(interval)) {
                    auto other_am_register = mfun->virtual_registers[v_reg];
                    double other_am_spill_weight = CalculateSpillWeight(intervals[v_reg]);
                    if (spill_weight > other_am_spill_weight) {
                        spill_weight = other_am_spill_weight;
                        candidate_spill = other_am_register;
                        candidate_vreg = v_reg;
                    }
                }

                phy_regs->swapPhysicalReg(cur_virtual_register.physical_register_descriptor_index, interval,
                                          candidate_spill.physical_register_descriptor_index,
                                          intervals[candidate_vreg]);

                int t = cur_virtual_register.physical_register_descriptor_index;
                cur_virtual_register.physical_register_descriptor_index =
                candidate_spill.physical_register_descriptor_index;
                candidate_spill.physical_register_descriptor_index = t;

                t = cur_virtual_register.mem_offset;
                cur_virtual_register.mem_offset = candidate_spill.mem_offset;
                candidate_spill.mem_offset = t;

                spilled = true;
            }
            unalloc_queue.pop();
        }
        InsertLoadStore(mfun).ExecuteInFunc();
    } while (spilled);
}
double FastLinearScan::CalculateSpillWeight(LiveInterval interval) {
    return (double)interval.getReferenceCount() / interval.getIntervalLen();
}