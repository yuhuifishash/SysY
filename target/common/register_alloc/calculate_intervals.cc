#include "basic_register_allocation.h"
void RegisterAlloc::UpdateIntervals(){
    mcfg->UpdateLiveness();

    // intervals[i] --> interval for am_reg (i.e. virtual reg) i
    // intervals.resize();

    // Actually should be:
    // auto it = mcfg->getReverseIterator(mcfg->getBFSIterator());
    // But ReverseIterator is not implemented by now
    auto it = mcfg->getBFSIterator();

    for(;it->hasNext();){
        auto mcfg_node = it->next();
        // For pseudo code see https://www.cnblogs.com/AANA/p/16311477.html
        for(auto reg : mcfg_node->OUT){
            // Extend or add new Range
            // do sth for intervals[reg]
        }
        for(auto ins : mcfg_node->Mblock->instructions){
            for(auto reg : ins->GetWriteReg()){
                // Cut intervals[reg]
                // do sth for intervals[reg]
            }
            for(auto reg : ins->GetReadReg()){
                // Extend or add new range
                // do sth for intervals[reg]
            }

            // Not sure if WriteRegs also need to be Extended/Added new range
            /*
            for(auto reg : ins->GetReadReg()){
                // Extend or add new range
                // do sth for intervals[reg]
            }
            */

        }
    }
}