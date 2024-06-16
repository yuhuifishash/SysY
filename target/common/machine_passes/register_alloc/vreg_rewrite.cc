#include "basic_register_allocation.h"

void VirtualRegisterRewrite::Execute() {
    for (auto func : unit->functions) {
        current_func = func;
        ExecuteInFunc();
    }
}

void VirtualRegisterRewrite::ExecuteInFunc() {
    auto func = current_func;
    auto block_it = func->getMachineCFG()->getSeqScanIterator();
    block_it->open();
    while (block_it->hasNext()) {
        auto block = block_it->next()->Mblock;
        for (auto it = block->begin(); it != block->end(); ++it) {
            auto ins = *it;
            // Log("%d",ins->getNumber());
            for (auto reg : ins->GetReadReg()) {
                if (reg->is_virtual == false) {
                    Assert(alloc_result.find(func) == alloc_result.end() ||
                           alloc_result.find(func)->second.find(*reg) == alloc_result.find(func)->second.end());
                    continue;
                }
                auto result = alloc_result.find(func)->second.find(*reg)->second;
                if (result.in_mem == true) {
                    ERROR("Shouldn't reach here");
                } else {
                    reg->is_virtual = false;
                    reg->reg_no = result.phy_reg_no;
                }
            }
            for (auto reg : ins->GetWriteReg()) {
                // Log("Write %d %d",reg->is_virtual,reg->reg_no);
                if (reg->is_virtual == false) {
                    Assert(alloc_result.find(func) == alloc_result.end() ||
                           alloc_result.find(func)->second.find(*reg) == alloc_result.find(func)->second.end());
                    continue;
                }
                auto result = alloc_result.find(func)->second.find(*reg)->second;
                if (result.in_mem == true) {
                    ERROR("Shouldn't reach here");
                } else {
                    reg->is_virtual = false;
                    reg->reg_no = result.phy_reg_no;
                }
            }
        }
    }
}

void SpillCodeGen::ExecuteInFunc(MachineFunction* function,std::map<Register, AllocResult> *alloc_result){
    this->function = function;
    this->alloc_result = alloc_result;
    auto block_it = function->getMachineCFG()->getSeqScanIterator();
    block_it->open();
    while(block_it->hasNext()){
        cur_block = block_it->next()->Mblock;
        for(auto it = cur_block->begin(); it != cur_block->end(); ++it){
            auto ins = *it;
            if(ins->arch == MachineBaseInstruction::COPY){
                auto copy_ins = (MachineCopyInstruction*)ins;
                if(!copy_ins->GetReadReg().empty() && !copy_ins->GetWriteReg().empty()){
                    auto src = copy_ins->GetReadReg()[0];
                    auto dst = copy_ins->GetWriteReg()[0];
                    AllocResult src_p,dst_p;
                    if(src->is_virtual == true){
                        src_p = alloc_result->find(*src)->second;
                    }
                    if(dst->is_virtual == true){
                        dst_p = alloc_result->find(*dst)->second;
                    }
                    if(src_p.in_mem == true && dst_p.in_mem == true){
                        it = cur_block->erase(it);
                        auto mid_reg = function->GetNewRegister(src->type.data_type,src->type.data_length);
                        GenerateCopyFromStackCode(it,src_p.stack_offset*4,mid_reg,src->type);
                        GenerateCopyToStackCode(it,dst_p.stack_offset*4,mid_reg,src->type);
                        --it;
                    }else if(src_p.in_mem == true){
                        it = cur_block->erase(it);
                        GenerateCopyFromStackCode(it,src_p.stack_offset*4,*dst,src->type);
                        --it;
                    }else if(dst_p.in_mem == true){
                        it = cur_block->erase(it);
                        GenerateCopyToStackCode(it,dst_p.stack_offset*4,*src,src->type);
                        --it;
                    }
                    continue;
                }
            }
            for(auto reg : ins->GetReadReg()){
                if(reg->is_virtual == false) continue;
                auto result = alloc_result->find(*reg)->second;
                if(result.in_mem == true){
                    // Spill Code Gen
                    *reg = GenerateReadCode(it,result.stack_offset*4,reg->type);
                }
            }
            for(auto reg : ins->GetWriteReg()){
                if(reg->is_virtual == false)continue;
                auto result = alloc_result->find(*reg)->second;
                if(result.in_mem == true){
                    // Spill Code Gen
                    *reg = GenerateWriteCode(it,result.stack_offset*4,reg->type);
                }
            }
        }
    }
}