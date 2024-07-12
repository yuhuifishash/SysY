#include "basic_register_allocation.h"

// #define PRINT_ALLOC_RESULT
// #define PRINT_INTERVALS

void RegisterAllocation::Execute() {
    for (auto func : unit->functions) {
        not_allocated_funcs.push(func);
    }
    int iterations = 0;
    while (!not_allocated_funcs.empty()) {
        // std::cerr<<"Func: "<<current_func->getFunctionName()<<std::endl;
        current_func = not_allocated_funcs.front();
        numbertoins.clear();
        InstructionNumber(unit,numbertoins).ExecuteInFunc(current_func);
        alloc_result[current_func].clear();
        not_allocated_funcs.pop();
        UpdateIntervalsInCurrentFunc();
        CoalesceInCurrentFunc();
        // std::cerr<<"Doing Alloc:"<<std::endl;
        if (DoAllocInCurrentFunc()) {
            spiller->ExecuteInFunc(current_func, &alloc_result[current_func]);
            current_func->AddStackSize(phy_regs->getSpillSize());
            not_allocated_funcs.push(current_func);
            iterations++;
        }
    }
#ifdef PRINT_ALLOC_RESULT
    Log("Alloc Result:");
    for(auto pair : alloc_result){
        auto func = pair.first;
        auto map = pair.second;
        Log("Func: %s",func->getFunctionName().c_str());
        for(auto alloc_pair: map){
            auto reg = alloc_pair.first;
            auto result = alloc_pair.second;
            std::cerr<<"Reg: "<<reg.is_virtual<<" "<<reg.reg_no<<", Result: "<<result.in_mem<<" "<<result.phy_reg_no<<" "<<result.stack_offset<<"\n";
        }
    }
#endif
    VirtualRegisterRewrite(unit, alloc_result).Execute();
}

void InstructionNumber::Execute() {
    for (auto func : unit->functions) {
        ExecuteInFunc(func);
    }
}
void InstructionNumber::ExecuteInFunc(MachineFunction *func) {
    int count_begin = 0;
    current_func = func;
    // Note: If Change to DFS Iterator, RegisterAllocation::UpdateIntervalsInCurrentFunc() Also need to be
    // changed
    auto it = func->getMachineCFG()->getBFSIterator();
    it->open();
    while (it->hasNext()) {
        auto mcfg_node = it->next();
        auto mblock = mcfg_node->Mblock;
        // Update instruction number
        this->numbertoins[count_begin] = InstructionNumberEntry(nullptr,true);
        count_begin++;
        for (auto ins : *mblock) {
            if (ins->arch != MachineBaseInstruction::COMMENT) {
                this->numbertoins[count_begin] = InstructionNumberEntry(ins,false);
                ins->setNumber(count_begin++);
            }
        }
    }
}

void RegisterAllocation::UpdateIntervalsInCurrentFunc() {
    intervals.clear();
    copy_sources.clear();
    auto mfun = current_func;
    auto mcfg = mfun->getMachineCFG();

    Liveness liveness(mfun);

    // Note: If Change to DFS Iterator, InstructionNumber::Execute() Also need to be changed
    auto it = mcfg->getReverseIterator(mcfg->getBFSIterator());
    it->open();

    std::map<Register, int> last_def, last_use;

    while (it->hasNext()) {
        auto mcfg_node = it->next();
        auto mblock = mcfg_node->Mblock;
        auto cur_id = mcfg_node->Mblock->getLabelId();
        // For pseudo code see https://www.cnblogs.com/AANA/p/16311477.html
        // std::cerr<<"Func:"<<mfun->getFunctionName()<<" Block: "<<cur_id<<" "<<mblock->getBlockInNumber()<<" "<<mblock->getBlockOutNumber()<<"\n";
        // On Use(Out)
        for (auto reg : liveness.GetOUT(cur_id)) {
            if (intervals.find(reg) == intervals.end()) {
                intervals[reg] = LiveInterval(reg);
                // std::cerr<<("OUT")<<reg.is_virtual<<" "<<reg.reg_no<<"\n";
            }
            // Extend or add new Range
            if (last_use.find(reg) == last_use.end()) {
                // No previous Use, New Range
                intervals[reg].PushFront(mblock->getBlockInNumber(), mblock->getBlockOutNumber());
            } else {
                // Have previous Use, No Extend Range
                // intervals[reg].SetMostBegin(mblock->getBlockInNumber());
                intervals[reg].PushFront(mblock->getBlockInNumber(), mblock->getBlockOutNumber());
            }
            last_use[reg] = mblock->getBlockOutNumber();
        }
        for (auto reverse_it = mcfg_node->Mblock->ReverseBegin(); reverse_it != mcfg_node->Mblock->ReverseEnd();
             ++reverse_it) {
            auto ins = *reverse_it;
            if (ins->arch == MachineBaseInstruction::COPY) {
                // Update copy_sources
                // Log("COPY");
                for (auto reg_w : ins->GetWriteReg()) {
                    for (auto reg_r : ins->GetReadReg()) {
                        copy_sources[*reg_w].push_back(*reg_r);
                        copy_sources[*reg_r].push_back(*reg_w);
                    }
                }
            } else if (ins->arch == MachineBaseInstruction::RiscV) {
                // Log("RV");
            }
            for (auto reg : ins->GetWriteReg()) {
                // Update last_def of reg
                last_def[*reg] = ins->getNumber();
                // Log("WRITE %d %d",reg->is_virtual,reg->reg_no);

                if (intervals.find(*reg) == intervals.end()) {
                    intervals[*reg] = LiveInterval(*reg);
                }

                // Have Last Use, Cut Range
                if (last_use.find(*reg) != last_use.end()) {
                    last_use.erase(*reg);
                    intervals[*reg].SetMostBegin(ins->getNumber());
                } else {
                    // No Last Use, New Range
                    intervals[*reg].PushFront(ins->getNumber(), ins->getNumber());
                }
                intervals[*reg].IncreaseReferenceCount(mblock->loop_depth + 1);
            }
            for (auto reg : ins->GetReadReg()) {
                // Update last_use of reg
                // Log("READ %d %d",reg->is_virtual,reg->reg_no);
                if (intervals.find(*reg) == intervals.end()) {
                    intervals[*reg] = LiveInterval(*reg);
                }

                if (last_use.find(*reg) != last_use.end() /*|| (last_def[*reg] == last_use[*reg])*/) {
                    // Have Last Use, Extend Range
                    // intervals[*reg].SetMostBegin(mblock->getBlockInNumber());
                } else {
                    // No Last Use, New Range
                    intervals[*reg].PushFront(mblock->getBlockInNumber(), ins->getNumber());
                }
                last_use[*reg] = ins->getNumber();

                intervals[*reg].IncreaseReferenceCount(mblock->loop_depth + 1);
            }
        }
        last_use.clear();
        last_def.clear();
    }
#ifdef PRINT_INTERVALS
    std::cerr<<"Check Intervals "<<mfun->getFunctionName().c_str()<<" Before Coalesce"<<std::endl;
    for(auto interval_pair : intervals){
        auto reg = interval_pair.first;
        auto interval = interval_pair.second;
        std::cerr<<reg.is_virtual<<" "<<reg.reg_no<<" ";
        for(auto seg : interval){
            std::cerr<<"["<<seg.begin<<","<<seg.end<<") ";
        }
        std::cerr<<"Ref: "<<interval.getReferenceCount();
        std::cerr<<"\n";
    }
    std::cerr<<"\n";
#endif
}