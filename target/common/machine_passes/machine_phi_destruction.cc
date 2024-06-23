#include "machine_phi_destruction.h"
void MachinePhiDestruction::Execute() {
    for (auto func : unit->functions) {
        current_func = func;
        PhiDestructionInCurrentFunction();
    }
}

void MachinePhiDestruction::PhiDestructionInCurrentFunction() {
    auto block_it = current_func->getMachineCFG()->getSeqScanIterator();
    block_it->open();
    while (block_it->hasNext()) {
        auto block = block_it->next()->Mblock;
        bool has_phi = false;
        for (auto ins : *block) {
            if (ins->arch == MachineBaseInstruction::PHI) {
                has_phi = true;
                break;
            } else if (ins->arch != MachineBaseInstruction::COMMENT) {
                has_phi = false;
                break;
            }
        }
        if (!has_phi)
            continue;
        for (auto predecessor : current_func->getMachineCFG()->GetPredecessorsByBlockId(block->getLabelId())) {
            // for(auto successor : current_func->getMachineCFG()->GetSuccessorsByBlockId(block->getLabelId())){
            //     Assert(successor != nullptr);
            // }
            if (current_func->getMachineCFG()->GetSuccessorsByBlockId(predecessor->Mblock->getLabelId()).size() > 1) {
                auto MidBlock = current_func->InsertNewBranchOnlyBlockBetweenEdge(predecessor->Mblock->getLabelId(),
                                                                                  block->getLabelId());
            }
        }
        for (auto it = block->begin(); it != block->end(); ++it) {
            auto ins = *it;
            if (ins->arch == MachineBaseInstruction::COMMENT) {
                continue;
            }
            if (ins->arch != MachineBaseInstruction::PHI) {
                break;
            }
            auto phi_Ins = (MachinePhiInstruction *)ins;
            it = block->erase(it);
            --it;
            for (auto [phi_labelid, phi_operand] : phi_Ins->GetPhiList()) {
                Assert(phi_operand != nullptr);
                // Insert to Parallel Copy List
                // TODO("Insert to Parallel Copy List");
                auto B = current_func->getMachineCFG()->GetNodeByBlockId(phi_labelid)->Mblock;
                if (phi_operand->op_type == MachineBaseOperand::REG) {
                    if (((MachineRegister *)phi_operand)->reg == phi_Ins->GetResult()) {
                        // ERROR("Phi Self Copy Detected");
                        continue;
                    }
                }
                B->InsertParallelCopyList(phi_Ins->GetResult(), phi_operand);
            }
        }
    }
    // block_it->rewind();
    block_it = current_func->getMachineCFG()->getSeqScanIterator();
    block_it->open();
    while (block_it->hasNext()) {
        auto block = block_it->next()->Mblock;
        auto &copylist = block->GetParallelCopyList();
        if (copylist.empty())
            continue;
        std::map<Register, int> src_ref_count;
        for (auto pair : copylist) {
            src_ref_count[pair.first] = src_ref_count[pair.first];
            if (pair.second->op_type == MachineBaseOperand::REG) {
                auto reg = ((MachineRegister *)(pair.second))->reg;
                Assert(reg.is_virtual);
                src_ref_count[reg] = src_ref_count[reg] + 1;
            }
        }
        std::queue<Register> can_seq;
        for (auto [reg, srcref] : src_ref_count) {
            if (srcref == 0) {
                can_seq.push(reg);
            }
        }
        // Convert Parallel Copy To Instructions
        auto insert_it = block->getInsertBeforeBrIt();
        while (!copylist.empty()) {
            if (!can_seq.empty()) {
                auto dstreg = can_seq.front();
                can_seq.pop();
                if (copylist.find(dstreg) != copylist.end()) {
                    auto srcop = copylist[dstreg];
                    copylist.erase(dstreg);
                    if (srcop->op_type == MachineBaseOperand::REG) {
                        auto srcreg = ((MachineRegister *)srcop)->reg;
                        src_ref_count[srcreg] = src_ref_count[srcreg] - 1;
                        if (src_ref_count[srcreg] == 0) {
                            can_seq.push(srcreg);
                        }
                    }
                    block->insert(insert_it, new MachineComment("Phi Destruction Copy\n"));
                    block->insert(insert_it,
                                  new MachineCopyInstruction(srcop, new MachineRegister(dstreg), dstreg.type));
                }
            } else {
                auto pair = *copylist.begin();
                auto mid_reg = current_func->GetNewRegister(pair.first.type.data_type, pair.first.type.data_length);
                auto dst_reg = pair.first;
                auto src_op = pair.second;
                block->insert(insert_it, new MachineComment("Phi Destruction Copy\n"));
                block->insert(insert_it,
                              new MachineCopyInstruction(src_op, new MachineRegister(mid_reg), dst_reg.type));
                if (src_op->op_type == MachineBaseOperand::REG) {
                    auto src_reg = ((MachineRegister *)src_op)->reg;
                    src_ref_count[src_reg] = src_ref_count[src_reg] - 1;
                    if (src_ref_count[src_reg] == 0) {
                        can_seq.push(src_reg);
                    }
                }
                src_ref_count[mid_reg] = src_ref_count[mid_reg] + 1;
                block->InsertParallelCopyList(dst_reg, new MachineRegister(mid_reg));
            }
        }
    }
}