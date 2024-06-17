#include "fast_linear_scan.h"
bool IntervalsPrioCmp(LiveInterval a, LiveInterval b) { return a.begin()->begin > b.begin()->begin; }
FastLinearScan::FastLinearScan(MachineUnit *unit, PhysicalRegisters *phy, SpillCodeGen* spiller)
    : RegisterAllocation(unit, phy, spiller), unalloc_queue(IntervalsPrioCmp) {}
bool FastLinearScan::DoAllocInCurrentFunc() {
    bool spilled = false;
    auto mfun = current_func;
    PRINT("FastLinearScan: %s", mfun->getFunctionName().c_str());
    // std::cerr<<"FastLinearScan: "<<mfun->getFunctionName()<<"\n";
    phy_regs->clear();
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
        unalloc_queue.pop();
        auto cur_vreg = interval.getReg();
        std::vector<int> prefered_regs;
        for(auto reg : copy_sources[cur_vreg]){
            if(reg.is_virtual){
                if(alloc_result[mfun].find(reg) != alloc_result[mfun].end()){
                    if(alloc_result[mfun][reg].in_mem == false){
                        prefered_regs.push_back(alloc_result[mfun][reg].phy_reg_no);
                    }
                }
            }else{
                prefered_regs.push_back(reg.reg_no);
            }
        }
        int phy_reg_id = phy_regs->getIdleReg(interval,prefered_regs);
        if (phy_reg_id >= 0) {
            phy_regs->OccupyReg(phy_reg_id, interval);
            AllocPhyReg(mfun, cur_vreg, phy_reg_id);
        } else {
            spilled = true;

            int mem = phy_regs->getIdleMem(interval);
            phy_regs->OccupyMem(mem, cur_vreg.getDataWidth(), interval);
            // volatile int mem_ = mem;
            // volatile int mem__ = mem_+current_func->GetStackOffset();
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
                // alloc_result[mfun].erase(spill_interval.getReg());
                // unalloc_queue.push(spill_interval);
                int spill_mem = phy_regs->getIdleMem(spill_interval);
                phy_regs->OccupyMem(spill_mem, spill_interval.getReg().getDataWidth(), spill_interval);
                AllocStack(mfun,spill_interval.getReg(),spill_mem);
            }
        }
    }
    return spilled;
}
double FastLinearScan::CalculateSpillWeight(LiveInterval interval) {
    return (double)interval.getReferenceCount() / interval.getIntervalLen();
}