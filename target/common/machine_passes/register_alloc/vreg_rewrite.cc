#include "basic_register_allocation.h"

void VirtualRegisterRewrite::ExecuteInFunc() {
    auto func = current_func;
    auto block_it = func->getMachineCFG()->getSeqScanIterator();
    block_it->open();
    while (block_it->hasNext()) {
        auto block = block_it->next()->Mblock;
        for (auto it = block->begin(); it != block->end(); ++it) {
            auto ins = *it;
            for (auto reg : ins->GetReadReg()) {
                auto result = alloc_result.find(func)->second.find(*reg)->second;
                if (result.in_mem == true) {
                    // new_load_reg = GetNewReg();
                    // insertasmBeforeins("load new_load_reg = [fp,mem_offset]")
                    // for(oldreg& : ins->GetReadReg()) if(oldreg==reg) oldreg=new_load_reg
                } else {
                    reg->is_virtual = false;
                    reg->reg_no = result.phy_reg_no;
                }
            }
            for (auto reg : ins->GetWriteReg()) {
                auto result = alloc_result.find(func)->second.find(*reg)->second;
                if (result.in_mem == true) {
                    // new_store_reg = GetNewReg();
                    // for(oldreg& : ins->GetWriteReg()) if(oldreg==reg) oldreg=new_store_reg
                    // insertasmAfterins("store new_store_reg , [fp,mem_offset]")
                } else {
                    reg->is_virtual = false;
                    reg->reg_no = result.phy_reg_no;
                }
            }
        }
    }
}