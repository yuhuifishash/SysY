#include "fast_linear_scan.h"
bool IntervalsPrioCmp(LiveInterval a, LiveInterval b) { return a.begin()->begin > b.begin()->begin; }
FastLinearScan::FastLinearScan(MachineUnit *unit, PhysicalRegisters *phy, SpillCodeGen *spiller)
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
        for (auto reg : copy_sources[cur_vreg]) {
            if (reg.is_virtual) {
                if (alloc_result[mfun].find(reg) != alloc_result[mfun].end()) {
                    if (alloc_result[mfun][reg].in_mem == false) {
                        prefered_regs.push_back(alloc_result[mfun][reg].phy_reg_no);
                    }
                }
            } else {
                prefered_regs.push_back(reg.reg_no);
            }
        }
        int phy_reg_id = phy_regs->getIdleReg(interval, prefered_regs);
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
                AllocStack(mfun, spill_interval.getReg(), spill_mem);
            }
        }
    }
    return spilled;
}
double FastLinearScan::CalculateSpillWeight(LiveInterval interval) {
    return (double)interval.getReferenceCount() / interval.getIntervalLen();
}

static Register findroot(std::map<Register,Register>&coal_result,Register vreg) {
    Register ret = vreg;
    while(!(ret == coal_result[ret])) {
        ret = coal_result[ret];
    }
    return coal_result[vreg] = ret;
}

void FastLinearScan::CoalesceInCurrentFunc() {
    std::map<Register,Register> coal_result;
    for (auto [reg,interval] : intervals) {
        if(reg.is_virtual == false)continue;
        coal_result[reg] = reg;
    }
    for (auto [reg,interval] : intervals) {
        if(reg.is_virtual == false)continue;
        for(auto other : copy_sources[reg]){
            if(other.is_virtual == false)continue;
            Assert(coal_result.find(reg) != coal_result.end());
            Assert(coal_result.find(other) != coal_result.end());
            auto root_reg = ::findroot(coal_result,reg);
            auto other_root_reg = ::findroot(coal_result,other);
            if(root_reg == other_root_reg)continue;
            if(intervals[root_reg] & intervals[other_root_reg])continue;
            // double spillweight_ratio = CalculateSpillWeight(root_reg) / CalculateSpillWeight(other_root_reg);
            // if (spillweight_ratio >= 2.0 || spillweight_ratio <= 0.5)continue;
            intervals[root_reg] = intervals[root_reg] | intervals[other_root_reg];
            coal_result[other_root_reg] = root_reg;
            intervals.erase(other_root_reg);
        }
    }
    for (auto block : current_func->blocks) {
        for (auto ins : *block) {
            for (auto reg : ins->GetReadReg()) {
                if (reg->is_virtual == false) continue; 
                *reg = ::findroot(coal_result,*reg);
            }
            for (auto reg : ins->GetWriteReg()) {
                if (reg->is_virtual == false) continue; 
                *reg = ::findroot(coal_result,*reg);
            }
        }
    }
    // std::cerr<<"Check Intervals "<<current_func->getFunctionName().c_str()<<" After Coalesce"<<std::endl;
    // for(auto interval_pair : intervals){
    //     auto reg = interval_pair.first;
    //     auto interval = interval_pair.second;
    //     std::cerr<<reg.is_virtual<<" "<<reg.reg_no<<" ";
    //     for(auto seg : interval){
    //         std::cerr<<"["<<seg.begin<<","<<seg.end<<") ";
    //     }
    //     std::cerr<<"Ref: "<<interval.getReferenceCount();
    //     std::cerr<<"\n";
    // }
    // std::cerr<<"\n";
}