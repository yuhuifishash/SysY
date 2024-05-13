#include "fast_linear_scan.h"
bool IntervalsPrioCmp(LiveInterval a, LiveInterval b) { return a.begin()->begin > b.begin()->begin; }
FastLinearScan::FastLinearScan(MachineUnit *unit, PhysicalRegisters *phy)
    : RegisterAllocation(unit, phy), unalloc_queue(IntervalsPrioCmp) {}
bool FastLinearScan::DoAllocInCurrentFunc() {
    bool spilled = false;
    auto mfun = current_func;
    // Log("FastLinearScan: %s",mfun->getFunctionName().c_str());
    for (auto interval : intervals) {
        Assert(interval.first == interval.second.getReg());
        if (interval.first.is_virtual) {
            unalloc_queue.push(interval.second);
        } else {
            // Log("Pre Occupy Physical Reg %d",interval.first.reg_no);
            phy_regs->OccupyReg(interval.first.reg_no, interval.second);
        }
    }
    while (!unalloc_queue.empty()) {
        auto interval = unalloc_queue.top();
        auto cur_vreg = interval.getReg();
        int phy_reg_id = phy_regs->getIdleReg(interval);
        if (phy_reg_id >= 0) {
            phy_regs->OccupyReg(phy_reg_id, interval);
            AllocPhyReg(mfun, cur_vreg, phy_reg_id);
        } else {
            spilled = true;

            int mem = phy_regs->getIdleMem(interval);
            phy_regs->OccupyMem(mem, cur_vreg.getDataWidth(), interval);
            AllocStack(mfun, cur_vreg, mem);

            double spill_weight = CalculateSpillWeight(interval);
            auto spill_interval = interval;
            for (auto other : phy_regs->getConflictIntervals(interval)) {
                double other_weight = CalculateSpillWeight(other);
                if (spill_weight > other_weight && other.getReg().is_virtual) {
                    spill_weight = other_weight;
                    spill_interval = other;
                }
            }

            if (!(interval == spill_interval)) {
                phy_regs->swapRegspill(getAllocResultInReg(mfun, spill_interval.getReg()), spill_interval, mem,
                                       cur_vreg.getDataWidth(), interval);
                swapAllocResult(mfun, interval.getReg(), spill_interval.getReg());
            }
        }
        unalloc_queue.pop();
    }
    return spilled;
}
double FastLinearScan::CalculateSpillWeight(LiveInterval interval) {
    return (double)interval.getReferenceCount() / interval.getIntervalLen();
}