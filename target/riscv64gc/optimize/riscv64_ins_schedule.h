#ifndef RV64_INS_SCHEDULE_H
#define RV64_INS_SCHEDULE_H
#include "riscv64.h"

#define I32_PRESSURE_LIMIT 28
#define F32_PRESSURE_LIMIT 32

struct ActiveRegSet {
    std::set<Register> i32_active;
    std::set<Register> f32_active;
    void remove(Register reg) {
        if (reg.type.data_type == MachineDataType::INT) {
            i32_active.erase(reg);
            Assert(f32_active.find(reg) == f32_active.end());
        } else if (reg.type.data_type == MachineDataType::FLOAT) {
            f32_active.erase(reg);
            Assert(i32_active.find(reg) == i32_active.end());
        } else {
            ERROR("Unknown data type");
        }
    }
    void add(Register reg) {
        if (reg.type.data_type == MachineDataType::INT) {
            i32_active.insert(reg);
        } else if (reg.type.data_type == MachineDataType::FLOAT) {
            f32_active.insert(reg);
        } else {
            ERROR("Unknown data type");
        }
    }
    void addins(MachineBaseInstruction *ins, std::map<Register, int> &kill_countdown) {
        for (auto reg : ins->GetReadReg()) {
            kill_countdown[*reg] = kill_countdown[*reg] - 1;
            Assert(kill_countdown[*reg] >= 0);
            if (kill_countdown[*reg] <= 0) {
                this->remove(*reg);
            }
        }
        for (auto reg : ins->GetWriteReg()) {
            this->add(*reg);
        }
    }
    bool judgeSpill(MachineBaseInstruction *ins, std::map<Register, int> &kill_countdown) {
        int i_pressure = i32_active.size();
        int f_pressure = f32_active.size();
        for (auto reg : ins->GetReadReg()) {
            if (kill_countdown[*reg] == 1) {
                // Pressure--
                // this->remove(*reg);
                if (reg->type.data_type == MachineDataType::INT) {
                    i_pressure--;
                } else if (reg->type.data_type == MachineDataType::FLOAT) {
                    f_pressure--;
                }
            }
        }
        for (auto reg : ins->GetWriteReg()) {
            // Pressure++
            // this->add(*reg);
            if (reg->type.data_type == MachineDataType::INT) {
                i_pressure++;
            } else if (reg->type.data_type == MachineDataType::FLOAT) {
                f_pressure++;
            }
        }
        return i_pressure > I32_PRESSURE_LIMIT || f_pressure > F32_PRESSURE_LIMIT;
    }
};

class RiscV64InstructionSchedule : public MachinePass {
private:
    void ExecuteInBlock();
    void ExecuteInList(std::vector<MachineBaseInstruction *> &, std::vector<MachineBaseInstruction *> &, ActiveRegSet &,
                       std::map<Register, int> &);
    Liveness *liveness;

public:
    RiscV64InstructionSchedule(MachineUnit *unit) : MachinePass(unit) {}
    void Execute();
};
#endif