#include "fast_linear_scan.h"
void FastLinearScan::DoAlloc(){
    bool spilled = false;
    do{
        UpdateIntervals();
        for(auto interval : intervals){
            unalloc_queue.push(interval.second);
        }
        while(!unalloc_queue.empty()){
            auto interval = unalloc_queue.top();
            auto& cur_am_register = mfun->am_registers[interval.getAmRegId()];
            int phy_reg_id = phy_regs->getIdleReg(cur_am_register.accessible_physical_registers,interval);
            if(phy_reg_id >= 0){
                phy_regs->OccupyReg(phy_reg_id,interval);
                cur_am_register.physical_register_descriptor_index = phy_reg_id;
            }else{
                int mem = phy_regs->getIdleMem(cur_am_register.getDataWidth(),interval);
                phy_regs->OccupyMem(mem,cur_am_register.getDataWidth(),interval);

                cur_am_register.physical_register_descriptor_index = -1;
                cur_am_register.mem_offset = mem;

                double spill_weight = CalculateSpillWeight(interval);
                auto& candidate_spill = cur_am_register;
                auto candidate_vreg = interval.getAmRegId();
                for(auto v_reg : phy_regs->getAllConflictAmRegs(interval)){
                    auto other_am_register = mfun->am_registers[v_reg];
                    double other_am_spill_weight = CalculateSpillWeight(intervals[v_reg]);
                    if(spill_weight > other_am_spill_weight){
                        spill_weight = other_am_spill_weight;
                        candidate_spill = other_am_register;
                        candidate_vreg = v_reg;
                    }
                }

                phy_regs->swapPhysicalReg(cur_am_register.physical_register_descriptor_index,interval,candidate_spill.physical_register_descriptor_index,intervals[candidate_vreg]);

                int t = cur_am_register.physical_register_descriptor_index;
                cur_am_register.physical_register_descriptor_index = candidate_spill.physical_register_descriptor_index;
                candidate_spill.physical_register_descriptor_index = t;

                t = cur_am_register.mem_offset;
                cur_am_register.mem_offset = candidate_spill.mem_offset;
                candidate_spill.mem_offset = t;

                spilled = true;
            }
            unalloc_queue.pop();
        }
        InsertLoadStore(mfun).ExecuteInFunc();
    }while(spilled);
}
double FastLinearScan::CalculateSpillWeight(LiveInterval interval){
    return (double)interval.getReferenceCount()/interval.getIntervalLen();
}