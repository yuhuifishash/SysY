#include "basic_register_allocation.h"
void RegisterAllocation::Execute(){
    for(auto func : unit->functions){
        current_func = func;
        DoAllocInCurrentFunc();
    }
}

void RegisterAllocation::UpdateIntervalsInCurrentFunc(){
    intervals.clear();
    auto mfun = current_func;
    auto mcfg = mfun->getMachineCFG();

    Liveness liveness(mfun);

    // intervals[i] --> interval for am_reg (i.e. virtual reg) i
    // intervals.resize();

    auto it = mcfg->getReverseIterator(mcfg->getBFSIterator());
    it->open();
    while(it->hasNext()){
        auto mcfg_node = it->next();
        auto cur_id = mcfg_node->Mblock->label_id;
        // For pseudo code see https://www.cnblogs.com/AANA/p/16311477.html
        
        // Also, reference_count should be updated
        for(auto reg : liveness.GetOUT(cur_id)){
            // Extend or add new Range
            // do sth for intervals[reg]
        }
        for(auto ins : *(mcfg_node->Mblock)){
            // Update copy_sources
            for(auto reg : ins->GetWriteReg()){
                // Cut intervals[reg]
                // do sth for intervals[reg]
            }
            for(auto reg : ins->GetReadReg()){
                // Extend or add new range
                // do sth for intervals[reg]
            }
        }
    }
}