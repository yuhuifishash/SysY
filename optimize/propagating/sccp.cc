#include "../../include/cfg.h"
#include "lattice.h"
#include <assert.h>

static std::map<Instruction, ConstLattice> ConstLatticeMap;
static std::map<Instruction, std::vector<Instruction>> SSAG{};    // SSA-Graph
static std::map<int, Instruction> ResultMap;                      //<regno,the instruction that define regno>

void BuildSSAGraph(CFG *C) {
    ResultMap.clear();
    SSAG.clear();

    for (auto formal_reg : C->function_def->formals_reg) {
        ResultMap[((RegOperand *)formal_reg)->GetRegNo()] = C->function_def;
    }

    std::stack<int> unscanedBlockID;
    std::map<int, int> block_visited;
    unscanedBlockID.push(0);
    while (!unscanedBlockID.empty()) {
        int cur_BlockID = unscanedBlockID.top();
        block_visited[cur_BlockID] = 1;
        unscanedBlockID.pop();
        for (auto instruction : (*C->block_map)[cur_BlockID]->Instruction_list) {
            if (instruction->GetResultRegNo() != -1) {
                ResultMap[instruction->GetResultRegNo()] = instruction;
            }
            if (instruction->GetOpcode() == BR_UNCOND) {
                int destLabelNo =
                ((LabelOperand *)(((BrUncondInstruction *)instruction)->GetDestLabel()))->GetLabelNo();

                if (block_visited.find(destLabelNo) == block_visited.end()) {
                    unscanedBlockID.push(destLabelNo);
                }
            } else if (instruction->GetOpcode() == BR_COND) {
                int trueDestLabelNo =
                ((LabelOperand *)(((BrCondInstruction *)instruction)->GetTrueLabel()))->GetLabelNo();
                int falseDestLabelNo =
                ((LabelOperand *)(((BrCondInstruction *)instruction)->GetFalseLabel()))->GetLabelNo();
                if (block_visited.find(trueDestLabelNo) == block_visited.end()) {
                    unscanedBlockID.push(trueDestLabelNo);
                }
                if (block_visited.find(falseDestLabelNo) == block_visited.end()) {
                    unscanedBlockID.push(falseDestLabelNo);
                }
            }
        }
    }
    block_visited.clear();
    unscanedBlockID.push(0);
    std::map<Instruction, int> used_formal;
    while (!unscanedBlockID.empty()) {
        int cur_BlockID = unscanedBlockID.top();
        block_visited[cur_BlockID] = 1;
        unscanedBlockID.pop();
        for (auto instruction : (*C->block_map)[cur_BlockID]->Instruction_list) {
            for (auto op : instruction->GetNonResultOperands()) {
                if (op->GetOperandType() == BasicOperand::REG) {
                    auto reg_op = (RegOperand *)op;
                    auto reg_no = reg_op->GetRegNo();
                    auto reg_ins = ResultMap[reg_no];
                    if (reg_ins != C->function_def) {
                        SSAG[reg_ins].push_back(instruction);
                    } else {
                        if (used_formal[instruction] == 0) {
                            used_formal[instruction] = 1;
                            SSAG[reg_ins].push_back(instruction);
                        }
                    }
                }
            }
            if (instruction->GetOpcode() == BR_UNCOND) {
                int destLabelNo =
                ((LabelOperand *)(((BrUncondInstruction *)instruction)->GetDestLabel()))->GetLabelNo();

                if (block_visited.find(destLabelNo) == block_visited.end()) {
                    unscanedBlockID.push(destLabelNo);
                }
            } else if (instruction->GetOpcode() == BR_COND) {
                int trueDestLabelNo =
                ((LabelOperand *)(((BrCondInstruction *)instruction)->GetTrueLabel()))->GetLabelNo();
                int falseDestLabelNo =
                ((LabelOperand *)(((BrCondInstruction *)instruction)->GetFalseLabel()))->GetLabelNo();
                if (block_visited.find(trueDestLabelNo) == block_visited.end()) {
                    unscanedBlockID.push(trueDestLabelNo);
                }
                if (block_visited.find(falseDestLabelNo) == block_visited.end()) {
                    unscanedBlockID.push(falseDestLabelNo);
                }
            }
        }
    }
}

void SetInstructionBlockID(CFG *C) {
    C->function_def->SetBlockID(0);
    std::stack<int> unscanedBlockID;
    std::map<int, int> block_visited;
    unscanedBlockID.push(0);
    while (!unscanedBlockID.empty()) {
        int cur_BlockID = unscanedBlockID.top();
        block_visited[cur_BlockID] = 1;
        unscanedBlockID.pop();
        for (auto instruction : (*C->block_map)[cur_BlockID]->Instruction_list) {
            instruction->SetBlockID(cur_BlockID);
            if (instruction->GetOpcode() == BR_UNCOND) {
                int destLabelNo =
                ((LabelOperand *)(((BrUncondInstruction *)instruction)->GetDestLabel()))->GetLabelNo();

                if (block_visited.find(destLabelNo) == block_visited.end()) {
                    unscanedBlockID.push(destLabelNo);
                }
            } else if (instruction->GetOpcode() == BR_COND) {
                int trueDestLabelNo =
                ((LabelOperand *)(((BrCondInstruction *)instruction)->GetTrueLabel()))->GetLabelNo();
                int falseDestLabelNo =
                ((LabelOperand *)(((BrCondInstruction *)instruction)->GetFalseLabel()))->GetLabelNo();
                if (block_visited.find(trueDestLabelNo) == block_visited.end()) {
                    unscanedBlockID.push(trueDestLabelNo);
                }
                if (block_visited.find(falseDestLabelNo) == block_visited.end()) {
                    unscanedBlockID.push(falseDestLabelNo);
                }
            }
        }
    }
}

ConstLattice GetOperandLattice(Operand val, std::map<int, Instruction> &regresult_map) {
    if (val->GetOperandType() == val->IMMI32) {
        return ConstLattice(ConstLattice::CONST, ConstLattice::I32, ((ImmI32Operand *)val)->GetIntImmVal());
    }
    if (val->GetOperandType() == val->IMMF32) {
        return ConstLattice(ConstLattice::CONST, ConstLattice::FLOAT, ((ImmF32Operand *)val)->GetFloatVal());
        ;
    }
    if (val->GetOperandType() == val->REG) {
        int regno = ((RegOperand *)val)->GetRegNo();
        auto regno_defIns = regresult_map[regno];
        if (regno_defIns->IsFuncDef()) {
            return ConstLattice(ConstLattice::VAR, ConstLattice::NONE, 0);
        }
        return ConstLatticeMap[regno_defIns];
    }
    return ConstLattice(ConstLattice::UNINIT, ConstLattice::NONE, 0);
}

int LoadInstruction::ConstPropagate(std::map<int, Instruction> &regresult_map) {
    auto &lattice = ConstLatticeMap[this];
    if (lattice.status == lattice.VAR) {
        return 0;
    }
    lattice.status = lattice.VAR;
    return 1;
}

int StoreInstruction::ConstPropagate(std::map<int, Instruction> &regresult_map) { return 0; }

int ArithmeticInstruction::ConstPropagate(std::map<int, Instruction> &regresult_map) {
    auto &lattice = ConstLatticeMap[this];

    auto op1_lattice = GetOperandLattice(op1, regresult_map);
    auto op2_lattice = GetOperandLattice(op2, regresult_map);

    auto op1_lattice_status = op1_lattice.status;
    auto op2_lattice_status = op2_lattice.status;

    if (lattice.status == ConstLattice::VAR) {
        return 0;
    }

    if (op1_lattice_status == ConstLattice::VAR || op2_lattice_status == ConstLattice::VAR || op3 != nullptr) {
        lattice.status = ConstLattice::VAR;
        return 1;
    }

    if (lattice.status == ConstLattice::CONST) {
        return 0;
    }
    if (this->GetDataType() == I32) {
        int op1_lattice_i32val = op1_lattice.vals.I32Val;
        int op2_lattice_i32val = op2_lattice.vals.I32Val;
        lattice.status = ConstLattice::CONST;
        lattice.val_type = ConstLattice::I32;

        if (opcode == ADD) {
            lattice.vals.I32Val = op1_lattice_i32val + op2_lattice_i32val;
        } else if (opcode == SUB) {
            lattice.vals.I32Val = op1_lattice_i32val - op2_lattice_i32val;
        } else if (opcode == MUL) {
            lattice.vals.I32Val = op1_lattice_i32val * op2_lattice_i32val;
        } else if (opcode == DIV) {
            lattice.vals.I32Val = op1_lattice_i32val / op2_lattice_i32val;
        } else if (opcode == MOD) {
            lattice.vals.I32Val = op1_lattice_i32val % op2_lattice_i32val;
        } else if (opcode == UMAX_I32) {
            lattice.vals.I32Val = std::max((uint32_t)op1_lattice_i32val, (uint32_t)op2_lattice_i32val);
        } else if (opcode == UMIN_I32) {
            lattice.vals.I32Val = std::min((uint32_t)op1_lattice_i32val, (uint32_t)op2_lattice_i32val);
        } else if (opcode == SMAX_I32) {
            lattice.vals.I32Val = std::max(op1_lattice_i32val, op2_lattice_i32val);
        } else if (opcode == SMIN_I32) {
            lattice.vals.I32Val = std::min(op1_lattice_i32val, op2_lattice_i32val);
        } else if (opcode == BITXOR) {
            lattice.vals.I32Val = op1_lattice_i32val ^ op2_lattice_i32val;
        } else if (opcode == BITAND) {
            lattice.vals.I32Val = op1_lattice_i32val & op2_lattice_i32val;
        } else {    // should not reach here
            assert(false);
        }
    } else if (this->GetDataType() == FLOAT32) {
        float op1_lattice_floatval = op1_lattice.vals.FloatVal;
        float op2_lattice_floatval = op2_lattice.vals.FloatVal;
        lattice.status = ConstLattice::CONST;
        lattice.val_type = ConstLattice::FLOAT;

        if (opcode == FADD) {
            lattice.vals.FloatVal = op1_lattice_floatval + op2_lattice_floatval;
        } else if (opcode == FSUB) {
            lattice.vals.FloatVal = op1_lattice_floatval - op2_lattice_floatval;
        } else if (opcode == FMUL) {
            lattice.vals.FloatVal = op1_lattice_floatval * op2_lattice_floatval;
        } else if (opcode == FDIV) {
            lattice.vals.FloatVal = op1_lattice_floatval / op2_lattice_floatval;
        } else if (opcode == FMIN_F32) {
            lattice.vals.FloatVal = std::min(op1_lattice_floatval, op2_lattice_floatval);
        } else if (opcode == FMAX_F32) {
            lattice.vals.FloatVal = std::max(op1_lattice_floatval, op2_lattice_floatval);
        } else {    // should not reach here
            assert(false);
        }
    } else {    // should not reach here
        assert(false);
    }

    return 1;
}

int IcmpInstruction::ConstPropagate(std::map<int, Instruction> &regresult_map) {
    auto &lattice = ConstLatticeMap[this];

    auto op1_lattice = GetOperandLattice(op1, regresult_map);
    auto op2_lattice = GetOperandLattice(op2, regresult_map);

    auto op1_lattice_status = op1_lattice.status;
    auto op2_lattice_status = op2_lattice.status;

    if (lattice.status == ConstLattice::VAR) {
        return 0;
    }

    if (op1_lattice_status == 2 || op2_lattice_status == 2) {
        lattice.status = ConstLattice::VAR;
        return 1;
    }

    if (lattice.status == ConstLattice::CONST) {
        return 0;
    }

    int op1_lattice_i32val = op1_lattice.vals.I32Val;
    int op2_lattice_i32val = op2_lattice.vals.I32Val;
    lattice.status = ConstLattice::CONST;
    lattice.val_type = ConstLattice::I32;

    if (cond == eq) {
        lattice.vals.I32Val = op1_lattice_i32val == op2_lattice_i32val;
    } else if (cond == ne) {
        lattice.vals.I32Val = op1_lattice_i32val != op2_lattice_i32val;
    } else if (cond == sgt) {
        lattice.vals.I32Val = op1_lattice_i32val > op2_lattice_i32val;
    } else if (cond == sge) {
        lattice.vals.I32Val = op1_lattice_i32val >= op2_lattice_i32val;
    } else if (cond == slt) {
        lattice.vals.I32Val = op1_lattice_i32val < op2_lattice_i32val;
    } else if (cond == sle) {
        lattice.vals.I32Val = op1_lattice_i32val <= op2_lattice_i32val;
    } else {    // should not reach here
        assert(false);
    }
    return 1;
}

int FcmpInstruction::ConstPropagate(std::map<int, Instruction> &regresult_map) {
    auto &lattice = ConstLatticeMap[this];

    auto op1_lattice = GetOperandLattice(op1, regresult_map);
    auto op2_lattice = GetOperandLattice(op2, regresult_map);

    auto op1_lattice_status = op1_lattice.status;
    auto op2_lattice_status = op2_lattice.status;

    if (lattice.status == ConstLattice::VAR) {
        return 0;
    }

    if (op1_lattice_status == 2 || op2_lattice_status == 2) {
        lattice.status = ConstLattice::VAR;
        return 1;
    }

    if (lattice.status == ConstLattice::CONST) {
        return 0;
    }

    float op1_lattice_floatval = op1_lattice.vals.FloatVal;
    float op2_lattice_floatval = op2_lattice.vals.FloatVal;
    lattice.status = ConstLattice::CONST;
    lattice.val_type = ConstLattice::FLOAT;

    if (this->GetDataType() == FLOAT32) {
        if (cond == OEQ) {
            lattice.vals.I32Val = op1_lattice_floatval == op2_lattice_floatval;
        } else if (cond == ONE) {
            lattice.vals.I32Val = op1_lattice_floatval != op2_lattice_floatval;
        } else if (cond == OGT) {
            lattice.vals.I32Val = op1_lattice_floatval > op2_lattice_floatval;
        } else if (cond == OGE) {
            lattice.vals.I32Val = op1_lattice_floatval >= op2_lattice_floatval;
        } else if (cond == OLT) {
            lattice.vals.I32Val = op1_lattice_floatval < op2_lattice_floatval;
        } else if (cond == OLE) {
            lattice.vals.I32Val = op1_lattice_floatval <= op2_lattice_floatval;
        } else {    // should not reach here
            assert(false);
        }
    } else {    // should not reach here
        assert(false);
    }

    return 1;
}

int SelectInstruction::ConstPropagate(std::map<int, Instruction> &regresult_map) {
    auto &lattice = ConstLatticeMap[this];
    if (lattice.status == ConstLattice::VAR) {
        return 0;
    }
    lattice.status = ConstLattice::VAR;
    return 1;
}

int CallInstruction::ConstPropagate(std::map<int, Instruction> &regresult_map) {
    auto &lattice = ConstLatticeMap[this];
    if (lattice.status == ConstLattice::VAR) {
        return 0;
    }
    lattice.status = ConstLattice::VAR;
    return 1;
}

int GetElementptrInstruction::ConstPropagate(std::map<int, Instruction> &regresult_map) {
    auto &lattice = ConstLatticeMap[this];
    if (lattice.status == ConstLattice::VAR) {
        return 0;
    }
    lattice.status = ConstLattice::VAR;
    return 1;
}

int FptosiInstruction::ConstPropagate(std::map<int, Instruction> &regresult_map) {
    auto &lattice = ConstLatticeMap[this];

    auto op_lattice = GetOperandLattice(value, regresult_map);
    auto op_lattice_status = op_lattice.status;
    float op_lattice_floatval = op_lattice.vals.FloatVal;

    if (lattice.status == ConstLattice::VAR) {
        return 0;
    }

    if (op_lattice_status == ConstLattice::VAR) {
        lattice.status = ConstLattice::VAR;
        return 1;
    }

    if (lattice.status == ConstLattice::CONST) {
        return 0;
    }

    lattice.status = ConstLattice::CONST;
    lattice.val_type = ConstLattice::I32;
    lattice.vals.I32Val = (int)op_lattice_floatval;

    return 1;
}

int FpextInstruction::ConstPropagate(std::map<int, Instruction> &regresult_map) {
    auto &lattice = ConstLatticeMap[this];
    if (lattice.status == ConstLattice::VAR) {
        return 0;
    }
    lattice.status = ConstLattice::VAR;
    return 1;
}

int SitofpInstruction::ConstPropagate(std::map<int, Instruction> &regresult_map) {
    auto &lattice = ConstLatticeMap[this];

    auto op_lattice = GetOperandLattice(value, regresult_map);
    auto op_lattice_status = op_lattice.status;
    int op_lattice_i32val = op_lattice.vals.I32Val;

    if (lattice.status == ConstLattice::VAR) {
        return 0;
    }

    if (op_lattice_status == ConstLattice::VAR) {
        lattice.status = ConstLattice::VAR;
        return 1;
    }

    if (lattice.status == ConstLattice::CONST) {
        return 0;
    }

    lattice.status = ConstLattice::CONST;
    lattice.val_type = ConstLattice::FLOAT;
    lattice.vals.FloatVal = (float)op_lattice_i32val;

    return 1;
}

int ZextInstruction::ConstPropagate(std::map<int, Instruction> &regresult_map) {
    auto &lattice = ConstLatticeMap[this];

    auto op_lattice = GetOperandLattice(value, regresult_map);
    auto op_lattice_status = op_lattice.status;
    int op_lattice_i32val = op_lattice.vals.I32Val;

    if (lattice.status == ConstLattice::VAR) {
        return 0;
    }

    if (op_lattice_status == ConstLattice::VAR) {
        lattice.status = ConstLattice::VAR;
        return 1;
    }

    if (lattice.status == ConstLattice::CONST) {
        return 0;
    }

    lattice.status = ConstLattice::CONST;
    lattice.val_type = ConstLattice::I32;
    lattice.vals.I32Val = op_lattice_i32val;

    return 1;
}

int BitCastInstruction::ConstPropagate(std::map<int, Instruction> &regresult_map) {
    auto &lattice = ConstLatticeMap[this];
    if (lattice.status == ConstLattice::VAR) {
        return 0;
    }
    lattice.status = ConstLattice::VAR;
    return 1;
}

// true if statu changes, false if not
// used for phi instructions
bool UpdateLatticeStatus(Instruction I, ConstLattice pre_lattice) {
    auto &lattice = ConstLatticeMap[I];
    if (lattice.status == ConstLattice::UNINIT) {
        lattice = pre_lattice;
        return 1;
    }
    if (lattice.status == ConstLattice::CONST && pre_lattice.status == ConstLattice::VAR) {
        lattice.status = ConstLattice::VAR;
        return 1;
    }
    if (lattice.status == ConstLattice::CONST && pre_lattice.status == ConstLattice::CONST) {
        if (lattice.val_type == ConstLattice::I32) {
            if (lattice.vals.I32Val != pre_lattice.vals.I32Val) {
                lattice.status = ConstLattice::VAR;
                return 1;
            }
        } else if (lattice.val_type == ConstLattice::FLOAT) {
            if (lattice.vals.FloatVal != pre_lattice.vals.FloatVal) {
                lattice.status = ConstLattice::VAR;
                return 1;
            }
        }
    }

    return 0;
}

void VisitOperation(Instruction I, std::set<Instruction> &SSAWorklist, std::map<std::pair<int, int>, int> &CFGedgeExec,
                    std::set<std::pair<int, int>> &CFGWorklist, std::map<int, Instruction> &regresult_map,
                    std::map<Instruction, std::vector<Instruction>> &SSA_G) {
    // Combine the data-flow information from the node’s operands where the corresponding control-flow edge is
    // executable.
    if (I->GetOpcode() == PHI) {
        auto PhiI = (PhiInstruction *)I;
        bool change = 0;
        for (auto phi_node : PhiI->GetPhiList()) {
            int pre = ((LabelOperand *)phi_node.first)->GetLabelNo();
            Operand val = phi_node.second;
            auto pre_lattice = GetOperandLattice(val, regresult_map);
            if (CFGedgeExec.find({pre, I->GetBlockID()}) !=
                CFGedgeExec.end()) {    // where the corresponding control-flow edge is executable.
                change |= UpdateLatticeStatus(I, pre_lattice);
            }
        }
        // Whenever the data-flow information of an operation changes,
        // append all outgoing SSA graph edges of the operation to the SSAWorkList.
        if (change) {
            for (auto targetIns : SSA_G[I]) {
                SSAWorklist.insert(targetIns);
            }
        }
    }
    // Examine the branch’s condition(s) using the data-flow information of its operands;
    else if (I->GetOpcode() == BR_COND) {
        auto BrCondI = (BrCondInstruction *)I;
        auto op_lattice = GetOperandLattice(BrCondI->GetCond(), regresult_map);
        // Determine all outgoing edges of the branch’s CFG node whose condition is potentially satisfied;
        // Append the CFG edges that were non-executable to the CFGWorkList.
        if (op_lattice.status == ConstLattice::CONST) {
            int target = 0;
            if (op_lattice.vals.I32Val == 0) {
                target = ((LabelOperand *)BrCondI->GetFalseLabel())->GetLabelNo();
            } else {
                target = ((LabelOperand *)BrCondI->GetTrueLabel())->GetLabelNo();
            }

            if (CFGedgeExec.find({I->GetBlockID(), target}) == CFGedgeExec.end()) {
                CFGWorklist.insert({I->GetBlockID(), target});
            }
        }
        if (op_lattice.status == ConstLattice::VAR) {
            int target1 = ((LabelOperand *)BrCondI->GetFalseLabel())->GetLabelNo();
            int target2 = ((LabelOperand *)BrCondI->GetTrueLabel())->GetLabelNo();

            if (CFGedgeExec.find({I->GetBlockID(), target1}) == CFGedgeExec.end()) {
                CFGWorklist.insert({I->GetBlockID(), target1});
            }

            if (CFGedgeExec.find({I->GetBlockID(), target2}) == CFGedgeExec.end()) {
                CFGWorklist.insert({I->GetBlockID(), target2});
            }
        }
    }
    // other Instructions
    // Update the operation’s data-flow information by applying its transfer function.
    else {
        int change = I->ConstPropagate(regresult_map);
        // Whenever the data-flow information of an operation changes,
        // append all outgoing SSA graph edges of the operation to the SSAWorkList.
        if (change) {
            for (auto targetIns : SSA_G[I]) {
                SSAWorklist.insert(targetIns);
            }
        }
    }
}

void ReplaceRegToConst(CFG *C) {
    // func_ins->setBlockID(0);
    std::stack<int> unscanedBlockID;
    std::map<int, int> block_visited;
    unscanedBlockID.push(0);
    while (!unscanedBlockID.empty()) {
        int cur_BlockID = unscanedBlockID.top();
        block_visited[cur_BlockID] = 1;
        unscanedBlockID.pop();
        for (auto instruction : (*C->block_map)[cur_BlockID]->Instruction_list) {
            // instruction->setBlockID(cur_BlockID);
            auto use_regs = instruction->GetNonResultOperands();
            for (auto &op : use_regs) {
                if (op->GetOperandType() == BasicOperand::REG) {
                    auto op_produce_ins = ResultMap[((RegOperand *)op)->GetRegNo()];
                    auto lattice = ConstLatticeMap[op_produce_ins];

                    if (lattice.status == ConstLattice::CONST && lattice.val_type == ConstLattice::I32) {
                        op = new ImmI32Operand(lattice.vals.I32Val);
                    } else if (lattice.status == ConstLattice::CONST && lattice.val_type == ConstLattice::FLOAT) {
                        op = new ImmF32Operand(lattice.vals.FloatVal);
                    }
                }
            }
            instruction->SetNonResultOperands(use_regs);
            if (instruction->GetOpcode() == BR_UNCOND) {
                int destLabelNo =
                ((LabelOperand *)(((BrUncondInstruction *)instruction)->GetDestLabel()))->GetLabelNo();

                if (block_visited.find(destLabelNo) == block_visited.end()) {
                    unscanedBlockID.push(destLabelNo);
                }
            } else if (instruction->GetOpcode() == BR_COND) {
                int trueDestLabelNo =
                ((LabelOperand *)(((BrCondInstruction *)instruction)->GetTrueLabel()))->GetLabelNo();
                int falseDestLabelNo =
                ((LabelOperand *)(((BrCondInstruction *)instruction)->GetFalseLabel()))->GetLabelNo();
                if (block_visited.find(trueDestLabelNo) == block_visited.end()) {
                    unscanedBlockID.push(trueDestLabelNo);
                }
                if (block_visited.find(falseDestLabelNo) == block_visited.end()) {
                    unscanedBlockID.push(falseDestLabelNo);
                }
            }
        }
    }
}

void DeadBlockElimateAfterSCCP(CFG *C, std::map<std::pair<int, int>, int> &CFGedgeExec) {
    std::map<int, int> block_ref_cnt;
    block_ref_cnt[0] = 1;
    for (auto [from_block_id, from_block] : *C->block_map) {
        for (auto dest_block : C->G[from_block_id]) {

            auto dest_block_id = dest_block->block_id;
            auto execute = CFGedgeExec[std::make_pair(from_block_id, dest_block_id)];
            if (execute == 0) {

                auto &from_block = (*C->block_map)[from_block_id];
                auto &dest_block = (*C->block_map)[dest_block_id];
                auto &from_block_instrlist = from_block->Instruction_list;
                auto &last_br = from_block_instrlist[from_block_instrlist.size() - 1];
                // delete br_cond that can not execute
                if (last_br->GetOpcode() == BR_COND) {
                    auto br_cond = (BrCondInstruction *)last_br;
                    auto br_true = (LabelOperand *)br_cond->GetTrueLabel();
                    auto br_false = (LabelOperand *)br_cond->GetFalseLabel();
                    auto br_uncond_label = br_true;

                    if (br_true->GetLabelNo() == dest_block_id) {
                        br_uncond_label = br_false;
                    } else if (br_false->GetLabelNo() == dest_block_id) {
                        br_uncond_label = br_true;
                    }

                    last_br = new BrUncondInstruction(br_uncond_label);
                    last_br->SetBlockID(from_block_id);
                }
                // update the phi instruction of dest_block (delete operand from from_block)
                for (auto &I : dest_block->Instruction_list) {
                    if (I->GetOpcode() != PHI) {
                        break;
                    }

                    auto PhiI = (PhiInstruction *)I;
                    PhiI->ErasePhi(from_block->block_id);
                }
            } else {
                block_ref_cnt[dest_block_id] = block_ref_cnt[dest_block_id] + 1;
            }
        }
    }

    std::queue<int> del_queue;
    for (auto [id, bb] : *C->block_map) {
        if (block_ref_cnt[id] == 0) {
            del_queue.push(id);
        }
    }

    while (!del_queue.empty()) {
        auto del_id = del_queue.front();
        del_queue.pop();
        delete (*C->block_map)[del_id];
        C->block_map->erase(del_id);
    }
}

void ConstInstructionElimate(CFG *C) {
    for (auto [id, bb] : *C->block_map) {
        auto tmp_ins_list = bb->Instruction_list;
        bb->Instruction_list.clear();
        for (auto I : tmp_ins_list) {
            auto lattice = ConstLatticeMap[I];
            if (lattice.status != ConstLattice::CONST) {
                bb->InsertInstruction(1, I);
            }
        }
    }
}

void SCCP(CFG *C) {
    for (auto b : *C->block_map) {
        for (auto I : b.second->Instruction_list) {
            ConstLatticeMap[I] = ConstLattice();
        }
    }
    std::map<std::pair<int, int>, int> CFGedgeExec;
    std::set<std::pair<int, int>> CFGWorklist;
    std::set<Instruction> SSAWorklist;
    std::vector<int> Bvis;
    Bvis.resize(C->max_label + 1);

    CFGWorklist.insert({-1, 0});
    while (!SSAWorklist.empty() || !CFGWorklist.empty()) {
        if (!SSAWorklist.empty()) {    // SSAEdge
            Instruction I = *SSAWorklist.begin();
            SSAWorklist.erase(I);
            // When the target operation is a phi-operation visit that phi-operation
            if (I->GetOpcode() == PHI) {
                VisitOperation(I, SSAWorklist, CFGedgeExec, CFGWorklist, ResultMap, SSAG);
                continue;
            }

            int I_Bid = I->GetBlockID();
            // For other operations, examine the executable flag of the incoming edges of the respective CFG
            // node; Visit the operation if any of the edges is executable.
            if (I_Bid == 0) {
                VisitOperation(I, SSAWorklist, CFGedgeExec, CFGWorklist, ResultMap, SSAG);
            } else {
                for (auto B : C->invG[I_Bid]) {
                    if (CFGedgeExec.find({B->block_id, I_Bid}) != CFGedgeExec.end()) {
                        VisitOperation(I, SSAWorklist, CFGedgeExec, CFGWorklist, ResultMap, SSAG);
                        break;
                    }
                }
            }
        } else {    // CFGEdge
            auto CFGEdge = *CFGWorklist.begin();
            CFGWorklist.erase(CFGEdge);
            CFGedgeExec[CFGEdge] = 1;    // mark the edge as exectuable

            int target = CFGEdge.second;
            auto B = (*C->block_map)[target];

            int firstvis_tag = 0;
            if (!Bvis[target]) {
                firstvis_tag = 1;
                Bvis[target] = 1;
            }

            if (B->Instruction_list.size() == 0) {
                continue;
            }

            for (auto I : B->Instruction_list) {
                // Visit every φ-operation associated with the target node
                if (I->GetOpcode() == PHI) {
                    VisitOperation(I, SSAWorklist, CFGedgeExec, CFGWorklist, ResultMap, SSAG);
                } else {
                    if (!firstvis_tag) {
                        break;
                    }    // If the target node was reached the first time via the CFGWorkList, visit all its
                         // operations
                    else {
                        VisitOperation(I, SSAWorklist, CFGedgeExec, CFGWorklist, ResultMap, SSAG);
                    }
                }
            }
            // If the target node has a single, non-executable outgoing edge, append that edge to the
            // CFGWorkList.
            auto endI = *(B->Instruction_list.end() - 1);
            if (endI->GetOpcode() == BR_UNCOND) {
                auto Ins = (BrUncondInstruction *)endI;
                auto Edge = std::pair<int, int>{target, Ins->GetTarget()};
                if (CFGedgeExec.find(Edge) == CFGedgeExec.end()) {
                    CFGWorklist.insert(Edge);
                }
            }
        }
    }

    ReplaceRegToConst(C);
    ConstInstructionElimate(C);
    DeadBlockElimateAfterSCCP(C, CFGedgeExec);

    ConstLatticeMap.clear();
    ResultMap.clear();
    SSAG.clear();
}

void SparseConditionalConstantPropagation(CFG *C) {
    SetInstructionBlockID(C);
    BuildSSAGraph(C);
    SCCP(C);

    // if no return, this indicates that the function has infinite loop and we will definitely arrive this loop
    // because most programs do not have infinite loop, we make the function only have one ret instructions
    // though it is wrong in some real-world programs.
    // TODO(): fix this problem. (now if the function has no ret_block, the pass after will cause SegmentFault)

    bool ret_tag = false;
    for (auto [id, bb] : *C->block_map) {
        auto I = bb->Instruction_list.back();
        if (I->GetOpcode() == RET) {
            ret_tag = true;
        }
    }
    if (ret_tag == false) {
        C->block_map->clear();
        C->max_label = -1;
        C->max_reg = -1;
        auto bb = C->NewBlock();
        if (C->function_def->GetReturnType() == VOID) {
            bb->InsertInstruction(1, new RetInstruction(VOID, nullptr));
        } else if (C->function_def->GetReturnType() == I32) {
            bb->InsertInstruction(1, new RetInstruction(I32, new ImmI32Operand(0)));
        } else if (C->function_def->GetReturnType() == FLOAT32) {
            bb->InsertInstruction(1, new RetInstruction(FLOAT32, new ImmF32Operand(0)));
        } else {
            ERROR("Unexpected Type");
        }
        C->ret_block = bb;
    }
    C->BuildCFG();
    // we will also eliminate the blocks that return block can not arrive in the reverse cfg.
    // though it is wrong in some real-world programs.
    // TODO(): fix this problem (now this situation will also cause the compiler SegmentFault in later passes)
    std::vector<int> vis;
    vis.resize(C->max_label + 1);
    std::queue<LLVMBlock> q;
    q.push(C->ret_block);
    while (!q.empty()) {
        auto x = q.front();
        q.pop();
        if (vis[x->block_id]) {
            continue;
        }
        vis[x->block_id] = 1;
        for (auto v : C->GetPredecessor(x->block_id)) {
            q.push(v);
        }
    }
    for (auto it = C->block_map->begin(); it != C->block_map->end();) {
        if (!vis[it->second->block_id]) {
            // std::cerr<<it->second->block_id<<"\n";
            it = C->block_map->erase(it);
        } else {
            ++it;
        }
    }
    for (auto [id, bb] : *C->block_map) {
        auto endI = bb->Instruction_list.back();
        if (endI->GetOpcode() == BR_COND) {
            auto brcondI = (BrCondInstruction *)endI;
            if (vis[((LabelOperand *)brcondI->GetFalseLabel())->GetLabelNo()] == 0) {
                bb->Instruction_list.pop_back();
                bb->Instruction_list.push_back(new BrUncondInstruction(brcondI->GetTrueLabel()));
            } else if (vis[((LabelOperand *)brcondI->GetTrueLabel())->GetLabelNo()] == 0) {
                bb->Instruction_list.pop_back();
                bb->Instruction_list.push_back(new BrUncondInstruction(brcondI->GetFalseLabel()));
            }
        }
    }

    C->BuildCFG();
    C->BuildDominatorTree();
}