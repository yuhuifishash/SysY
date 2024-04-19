#include "basic_register_allocation.h"
void RegisterAllocation::Execute() {
    InstructionNumber(unit).Execute();
    for (auto func : unit->functions) {
        current_func = func;
        UpdateIntervalsInCurrentFunc();
        DoAllocInCurrentFunc();
    }
}

void InstructionNumber::Execute() {
    for (auto func : unit->functions) {
        int count_begin = 1;
        current_func = func;
        // Note: If Change to DFS Iterator, RegisterAllocation::UpdateIntervalsInCurrentFunc() Also need to be
        // changed
        auto it = func->getMachineCFG()->getBFSIterator();
        while (it->hasNext()) {
            auto mcfg_node = it->next();
            auto mblock = mcfg_node->Mblock;
            // Update instruction number
            for (auto ins : *mblock) {
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

        // On Use(Out)
        for (auto reg : liveness.GetOUT(cur_id)) {
            // Extend or add new Range
            if (last_use.find(reg) == last_use.end()) {
                // No previous Use, New Range
                intervals[reg].PushFront(mblock->getBlockInNumber(), mblock->getBlockOutNumber());
            } else {
                // Have previous Use, Extend Range
                intervals[reg].SetMostBegin(mblock->getBlockInNumber());
            }
        }
        for (auto reverse_it = mcfg_node->Mblock->ReverseBegin();
             reverse_it != mcfg_node->Mblock->ReverseEnd(); ++reverse_it) {
            auto ins = *reverse_it;
            if (ins->arch == MachineBaseInstruction::COPY) {
                // Update copy_sources
                for (auto reg_w : ins->GetWriteReg()) {
                    for (auto reg_r : ins->GetReadReg()) {
                        copy_sources[*reg_w].push_back(*reg_r);
                    }
                }
            }
            for (auto reg : ins->GetWriteReg()) {
                // Update last_def of reg
                last_def[*reg] = ins->getNumber();

                // Have Last Use, Cut Range
                if (last_use.find(*reg) != last_use.end()) {
                    last_use.erase(*reg);
                    intervals[*reg].SetMostBegin(ins->getNumber());
                }
                intervals[*reg].IncreaseReferenceCount(1);
            }
            for (auto reg : ins->GetReadReg()) {
                // Update last_use of reg
                last_use[*reg] = ins->getNumber();

                if (last_use.find(*reg) != last_use.end() || last_def[*reg] == last_use[*reg]) {
                    // Have Last Use, Extend Range
                    intervals[*reg].SetMostBegin(mblock->getBlockInNumber());
                } else {
                    // No Last Use, New Range
                    intervals[*reg].PushFront(mblock->getBlockInNumber(), ins->getNumber());
                }
                intervals[*reg].IncreaseReferenceCount(1);
            }
        }
    }
}