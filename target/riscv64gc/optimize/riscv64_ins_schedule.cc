#include "riscv64_ins_schedule.h"
#include "../instruction_print/riscv64_printer.h"
void RiscV64InstructionSchedule::Execute() {
    for (auto func : unit->functions) {
        current_func = func;
        for (auto block : func->blocks) {
            cur_block = block;
            ExecuteInBlock();
        }
    }
}

int MemOp[] = {
    RISCV_LB, RISCV_LBU, RISCV_LH, RISCV_LHU, RISCV_LW, RISCV_LWU, RISCV_LD, RISCV_FLW, RISCV_FLD,
    RISCV_SB, RISCV_SH, RISCV_SW, RISCV_SD, RISCV_FSW, RISCV_FSD
};

int BranchOp[] = {
    RISCV_BEQ, RISCV_BNE, RISCV_BLT, RISCV_BGE, RISCV_BLTU, RISCV_BGEU, RISCV_BGT, RISCV_BLE, RISCV_BGTU, RISCV_BLEU
};

int FaluOp[] = {
    RISCV_FMV_W_X, RISCV_FMV_X_W, RISCV_FCVT_S_W, RISCV_FCVT_D_W, RISCV_FCVT_S_WU, RISCV_FCVT_D_WU, RISCV_FCVT_W_S, RISCV_FCVT_W_D, RISCV_FCVT_WU_S, RISCV_FCVT_WU_D,
    RISCV_FADD_S, RISCV_FADD_D, RISCV_FSUB_S, RISCV_FSUB_D, RISCV_FMUL_S, RISCV_FMUL_D, RISCV_FDIV_S, RISCV_FDIV_D, RISCV_FSQRT_S, RISCV_FSQRT_D, 
    RISCV_FMADD_S, RISCV_FMADD_D, RISCV_FMSUB_S, RISCV_FMSUB_D, RISCV_FNMSUB_S, RISCV_FNMSUB_D, RISCV_FNMADD_S, RISCV_FNMADD_D, 
    RISCV_FSGNJ_S, RISCV_FSGNJ_D, RISCV_FSGNJX_S, RISCV_FSGNJX_D, RISCV_FMIN_S, RISCV_FMIN_D, RISCV_FMAX_S, RISCV_FMAX_D, 
    RISCV_FEQ_S, RISCV_FEQ_D, RISCV_FLT_S, RISCV_FLT_D, RISCV_FLE_S, RISCV_FLE_D, RISCV_FCLASS_S, RISCV_FCLASS_D, RISCV_FMV_D_X, RISCV_FMV_X_D, 
    RISCV_FCVT_S_L, RISCV_FCVT_D_L, RISCV_FCVT_S_LU, RISCV_FCVT_D_LU, RISCV_FCVT_L_S, RISCV_FCVT_L_D, RISCV_FCVT_LU_S, RISCV_FCVT_LU_D,
};

int MulDivOp[] = {
    RISCV_MUL, RISCV_MULH, RISCV_MULHSU, RISCV_MULHU, RISCV_DIV, RISCV_DIVU,
    RISCV_REM, RISCV_REMU, RISCV_MULW, RISCV_DIVW, RISCV_REMW, RISCV_REMUW,
};

struct ExecState {
    bool mem_unit_idle;
    bool branch_unit_idle;
    bool falu_unit_idle;
    bool muldiv_unit_idle;
    std::map<MachineBaseInstruction*, int> inflight;
    std::vector<MachineBaseInstruction*> nextCycle () {
        std::vector<MachineBaseInstruction*> ret;
        for (auto [ins, latency] : inflight) {
            if (latency == 0) {
                ret.push_back(ins);
            } else {
                inflight[ins] = latency - 1;
            }
        }
        return ret;
    }
    bool empty () {
        return inflight.empty();
    }
    ExecState(): mem_unit_idle(true), branch_unit_idle(true), falu_unit_idle(true), muldiv_unit_idle(true) {}
    bool Occupy (RiscV64Instruction* ins, int ops[], bool& flag, int range) {
        for (int i = 0;i < range;i++) {
            int op = ops[i];
            if (ins->getOpcode() == op) {
                if (flag) {
                    flag = false;
                    return true;
                } else {
                    return false;
                }
            }
        }
        return true;
    }
    bool Release (RiscV64Instruction* ins, int ops[], bool& flag, int range) {
        for (int i = 0;i < range;i++) {
            int op = ops[i];
            if (ins->getOpcode() == op) {
                flag = true;
                return true;
            }
        }
        return true;
    }
    bool Issue (MachineBaseInstruction* ins) {
        if (ins->arch != MachineBaseInstruction::RiscV) { return true; }
        auto riscv_ins = (RiscV64Instruction*)(ins);
        if (Occupy(riscv_ins, MemOp, mem_unit_idle, sizeof(MemOp)/4) && 
        Occupy(riscv_ins, BranchOp, branch_unit_idle, sizeof(BranchOp)/4) && 
        Occupy(riscv_ins, FaluOp, falu_unit_idle, sizeof(FaluOp)/4) && 
        Occupy(riscv_ins, MulDivOp, muldiv_unit_idle, sizeof(MulDivOp)/4)) {
            inflight[ins] = ins->GetLatency();
            return true;
        }
        return false;
    }
    bool Retire (MachineBaseInstruction* ins) {
        if (ins->arch != MachineBaseInstruction::RiscV) { return true; }
        auto riscv_ins = (RiscV64Instruction*)(ins);
        Assert(inflight[ins] == 0);
        inflight.erase(ins);
        return Release(riscv_ins, MemOp, mem_unit_idle, sizeof(MemOp)/4) && 
        Release(riscv_ins, BranchOp, branch_unit_idle, sizeof(BranchOp)/4) && 
        Release(riscv_ins, FaluOp, falu_unit_idle, sizeof(FaluOp)/4) && 
        Release(riscv_ins, MulDivOp, muldiv_unit_idle, sizeof(MulDivOp));
    }
};

void RiscV64InstructionSchedule::ExecuteInBlock() {
    // Construct Data Dependency Graph
    // Assume no phi
    std::map<MachineBaseInstruction*, std::vector<MachineBaseInstruction*>> data_pre_graph;
    std::map<MachineBaseInstruction*, int> in_degree;
    std::map<MachineBaseInstruction*, std::vector<MachineBaseInstruction*>> data_dep_graph;
    std::map<Register, MachineBaseInstruction*> last_def_ins;
    MachineBaseInstruction* last_store = nullptr;
    std::vector<MachineBaseInstruction* > last_loads;

    std::vector<MachineBaseInstruction*> ready;
    for (auto ins : *cur_block) {
        if (ins->arch == MachineBaseInstruction::COMMENT) { continue; }
        if (ins->arch == MachineBaseInstruction::RiscV) {
            auto riscv_ins = (RiscV64Instruction*)(ins);
            if (riscv_ins->getOpcode() == RISCV_LB || riscv_ins->getOpcode() == RISCV_LBU || riscv_ins->getOpcode() == RISCV_LH || riscv_ins->getOpcode() == RISCV_LHU || riscv_ins->getOpcode() == RISCV_LW || riscv_ins->getOpcode() == RISCV_LWU || riscv_ins->getOpcode() == RISCV_LD || riscv_ins->getOpcode() == RISCV_FLW || riscv_ins->getOpcode() == RISCV_FLD) {
                if (last_store != nullptr) {
                    data_pre_graph[last_store].push_back(ins);
                    in_degree[ins] = in_degree[ins] + 1;
                    data_dep_graph[ins].push_back(last_store);
                }
                last_loads.push_back(ins);
            }
            if (riscv_ins->getOpcode() == RISCV_SB || riscv_ins->getOpcode() == RISCV_SH || riscv_ins->getOpcode() == RISCV_SW || riscv_ins->getOpcode() == RISCV_SD || riscv_ins->getOpcode() == RISCV_FSW || riscv_ins->getOpcode() == RISCV_FSD) {
                if (!last_loads.empty()) {
                    for (auto load : last_loads) {
                        data_pre_graph[load].push_back(ins);
                        in_degree[ins] = in_degree[ins] + 1;
                        data_dep_graph[ins].push_back(load);
                    }
                    last_loads.clear();
                } else if (last_store != nullptr) {
                    data_pre_graph[last_store].push_back(ins);
                        in_degree[ins] = in_degree[ins] + 1;
                    data_dep_graph[ins].push_back(last_store);
                }
                last_store = ins;
            }
        }
        for (auto reg : ins->GetReadReg()) {
            if (last_def_ins.find(*reg) != last_def_ins.end()) {
                data_pre_graph[last_def_ins[*reg]].push_back(ins);
                in_degree[ins] = in_degree[ins] + 1;
                data_dep_graph[ins].push_back(last_def_ins[*reg]);
            }
        }
        for (auto reg : ins->GetWriteReg()) {
            last_def_ins[*reg] = ins;
        }
        if (in_degree[ins] == 0) {
            ready.push_back(ins);
        }
    }

    RiscV64Printer printer(std::cerr, unit);
    printer.SyncFunction(current_func);
    printer.SyncBlock(cur_block);
    for (auto ready_ins : ready) {
        std::cerr<<"Ready ins:\n";
        printer.printAsm(ready_ins);
        std::cerr<<"\n";
    }
    std::cerr<<"\n";
    for (auto [begin, ends] : data_pre_graph) {
        std::cerr<<"Begin ins:\n";
        printer.printAsm(begin);
        std::cerr<<"->\n";
        for (auto end : ends) {
            std::cerr<<"\t";
            printer.printAsm(end);
        }
        std::cerr<<"\n";
    }

    // Schedule Instructions
    std::map<int, MachineBaseInstruction*> result;
    std::vector<MachineBaseInstruction*> res;

    int cycle = 0;

    ExecState state;

    while (!ready.empty() || !state.empty()) {
        for (auto it = ready.begin(); it != ready.end();++it) {
            auto ins = *it;
            if (state.Issue(ins)) { // if an FU exists to start at the cycle
                ready.erase(it);
                res.push_back(ins);
                break;
            }
        }
        auto retirelist = state.nextCycle();
        for (auto ins : retirelist) {
            state.Retire(ins);
            for (auto succ : data_pre_graph[ins]) {
                in_degree[succ] = in_degree[succ] - 1;
                Assert(in_degree[succ] >= 0);
                if (in_degree[succ] == 0) {
                    ready.push_back(succ);
                }
            }
        }
    }
    auto& inslist = cur_block->GetInsList();
    inslist.clear();
    for (auto ins : res) {
        inslist.push_back(ins);
    }
}