#include "basic_register_allocation.h"

void InsertLoadStore::ExecuteInFunc() {
    auto block_it = func->mcfg->getSeqScanIterator();
    block_it->open();
    while (block_it->hasNext()) {
        auto block = block_it->next()->Mblock;
        for (auto it = block->begin(); it != block->end(); ++it) {
            auto ins = *it;
            for (auto reg : ins->GetReadReg()) {
                auto reg_info = func->GetVirtualRegisterInfo(reg);
                if (reg_info.physical_register_descriptor_index == /* ??? */ -1) {
                    // new_load_reg = GetNewReg();
                    // insertasmBeforeins("load new_load_reg = [fp,mem_offset]")
                    // for(oldreg& : ins->GetReadReg()) if(oldreg==reg) oldreg=new_load_reg
                }
            }
            for (auto reg : ins->GetWriteReg()) {
                auto reg_info = func->GetVirtualRegisterInfo(reg);
                if (reg_info.physical_register_descriptor_index == /* ??? */ -1) {
                    // new_store_reg = GetNewReg();
                    // for(oldreg& : ins->GetWriteReg()) if(oldreg==reg) oldreg=new_store_reg
                    // insertasmAfterins("store new_store_reg , [fp,mem_offset]")
                }
            }
        }
    }
}