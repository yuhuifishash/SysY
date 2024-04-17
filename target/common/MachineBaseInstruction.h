#ifndef MachineBaseIns_H
#define MachineBaseIns_H
#include <set>
#include <vector>
class MachineBaseInstruction {
public:
    enum { ARM = 0, RiscV, PHI, COPY };
    const int arch;

public:
    MachineBaseInstruction(int arch) : arch(arch) {}
    virtual std::set<int> GetReadReg() = 0;
    virtual std::set<int> GetWriteReg() = 0;
};

struct MachineDataType {
    enum { INT, FLOAT };
    enum { B32, B64, B128 };
    unsigned data_type;
    unsigned data_length;
    int getDataWidth() {
        switch (data_length) {
        case B32:
            return 4;
        case B64:
            return 8;
        case B128:
            return 16;
        }
        return 0;
    }
};

struct VirtualRegisterInfo {
    MachineDataType type;
    int getDataWidth() { return type.getDataWidth(); }
    // int reg_no;
    // VRegister number is implied in MachineFunction::virtual_registers

    int physical_register_descriptor_index;
    // RegisterAllocation result

    int mem_offset;
    // Only valid when spilled

    std::vector<int> accessible_physical_registers;
};

struct Register {
public:
    int virtual_reg_no;
};

struct MachineBaseOperand {
    MachineDataType type;
    enum { REG, IMMI, IMMF };
    int op_type;
    MachineBaseOperand(int op_type) : op_type(op_type) {}
};

struct MachineRegister : public MachineBaseOperand {
    Register reg;
    MachineRegister(int reg_no) : MachineBaseOperand(MachineBaseOperand::REG) { reg.virtual_reg_no = reg_no; }
};

struct MachineImmediateInt : public MachineBaseOperand {
    int imm32;
    MachineImmediateInt(int imm32) : MachineBaseOperand(MachineBaseOperand::IMMI), imm32(imm32) {}
};
struct MachineImmediateFloat : public MachineBaseOperand {
    float fimm32;
    MachineImmediateFloat(float fimm32) : MachineBaseOperand(MachineBaseOperand::IMMF), fimm32(fimm32) {}
};

struct Label {
public:
    union {
        int jmp_label_id;
        int mem_label_id;
        int print_label_id;
    };
    int seq_label_id;
    bool is_data_address;
    Label(int jmp, int seq) {
        this->jmp_label_id = jmp;
        this->seq_label_id = seq;
    }
    Label(int jmp, bool is_data_address = false) {
        this->is_data_address = is_data_address;
        this->jmp_label_id = jmp;
    }
};
class MachinePhiInstruction : public MachineBaseInstruction {
public:
    std::set<int> GetReadReg();
    std::set<int> GetWriteReg();

    Register result;
    std::vector<std::pair<int, MachineBaseOperand *>> phi_list;
    MachinePhiInstruction(Register result)
        : result(result), MachineBaseInstruction(MachineBaseInstruction::PHI) {}
    void pushPhiList(int label, Register reg) {
        phi_list.push_back(std::make_pair(label, new MachineRegister(reg.virtual_reg_no)));
    }
    void pushPhiList(int label, int imm32) {
        phi_list.push_back(std::make_pair(label, new MachineImmediateInt(imm32)));
    }
};
// %x: type = COPY type %y: type
class MachineCopyInstruction : public MachineBaseInstruction {
public:
    MachineDataType copy_type;
    MachineBaseOperand *src;
    MachineBaseOperand *dst;
    std::set<int> GetReadReg() { return std::set<int>(); }
    std::set<int> GetWriteReg() { return std::set<int>(); }

public:
    MachineCopyInstruction(MachineBaseOperand *src, MachineBaseOperand *dst, MachineDataType copy_type)
        : copy_type(copy_type), src(src), dst(dst), MachineBaseInstruction(MachineBaseInstruction::COPY) {}
};
#endif