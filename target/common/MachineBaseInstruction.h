#ifndef MachineBaseIns_H
#define MachineBaseIns_H
#include <assert.h>
#include <set>
#include <vector>
#include <iostream>
#include <cstring>

#define ERROR(...) do{\
    char message[256];\
    sprintf(message,__VA_ARGS__);\
    std::cerr<<"\033[;31;1m";\
    std::cerr<<"ERROR: ";\
    std::cerr<<"\033[0;37;1m";\
    std::cerr<<message<<"\n";\
    std::cerr<<"\033[0;33;1m";\
    std::cerr<<"File: \033[4;37;1m"<<__FILE__<<":"<<__LINE__<<"\n";\
    std::cerr<<"\033[0m";\
    assert(false);\
}while(0)

#define TODO(...) do{\
    char message[256];\
    sprintf(message,__VA_ARGS__);\
    std::cerr<<"\033[;34;1m";\
    std::cerr<<"TODO: ";\
    std::cerr<<"\033[0;37;1m";\
    std::cerr<<message<<"\n";\
    std::cerr<<"\033[0;33;1m";\
    std::cerr<<"File: \033[4;37;1m"<<__FILE__<<":"<<__LINE__<<"\n";\
    std::cerr<<"\033[0m";\
    assert(false);\
}while(0)

#define ENABLE_LOG
#ifdef  ENABLE_LOG
#define Log(...) do{\
    char message[256];\
    sprintf(message,__VA_ARGS__);\
    std::cerr<<"\033[;35;1m[\033[4;33;1m"<<__FILE__<<":"<<__LINE__<<"\033[;35;1m "<<__PRETTY_FUNCTION__<<"]";\
    std::cerr<<"\033[0;37;1m ";\
    std::cerr<<message<<"\n";\
    std::cerr<<"\033[0m";\
}while(0)
#else
#define Log(...)
#endif

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

struct Register {
public:
    int reg_no;
    bool is_virtual;
    MachineDataType type;
    int getDataWidth() { return type.getDataWidth(); }
    bool operator<(Register other) const {
        if (is_virtual != other.is_virtual)
            return is_virtual < other.is_virtual;
        if (reg_no != other.reg_no)
            return reg_no < other.reg_no;
        if (type.data_type != other.type.data_type)
            return type.data_type < other.type.data_type;
        if (type.data_length != other.type.data_length)
            return type.data_length < other.type.data_length;
        return false;
    }
    bool operator==(Register other) const {
        return reg_no == other.reg_no && is_virtual == other.is_virtual && type.data_type == other.type.data_type &&
               type.data_length == other.type.data_length;
    }
};

struct MachineBaseOperand {
    MachineDataType type;
    enum { REG, IMMI, IMMF };
    int op_type;
    MachineBaseOperand(int op_type) : op_type(op_type) {}
};

struct MachineRegister : public MachineBaseOperand {
    Register reg;
    MachineRegister(int reg_no) : MachineBaseOperand(MachineBaseOperand::REG) { reg.reg_no = reg_no; }
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

class MachineBaseInstruction {
public:
    enum { ARM = 0, RiscV, PHI, COPY };
    const int arch;

private:
    int ins_number;

public:
    void setNumber(int ins_number) { this->ins_number = ins_number; }
    int getNumber() { return ins_number; }
    MachineBaseInstruction(int arch) : arch(arch) {}
    virtual std::vector<Register *> GetReadReg() = 0;
    virtual std::vector<Register *> GetWriteReg() = 0;
};

class MachinePhiInstruction : public MachineBaseInstruction {
public:
    std::vector<Register *> GetReadReg();
    std::vector<Register *> GetWriteReg();

    Register result;
    std::vector<std::pair<int, MachineBaseOperand *>> phi_list;
    MachinePhiInstruction(Register result) : result(result), MachineBaseInstruction(MachineBaseInstruction::PHI) {}
    void pushPhiList(int label, Register reg) {
        phi_list.push_back(std::make_pair(label, new MachineRegister(reg.reg_no)));
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
    std::vector<Register *> GetReadReg() {
        if (src->op_type == MachineBaseOperand::REG)
            return std::vector<Register *>({&(((MachineRegister *)src)->reg)});
        return std::vector<Register *>();
    }
    std::vector<Register *> GetWriteReg() {
        assert(dst->op_type == MachineBaseOperand::REG);
        return std::vector<Register *>({&(((MachineRegister *)src)->reg)});
    }

public:
    MachineCopyInstruction(MachineBaseOperand *src, MachineBaseOperand *dst, MachineDataType copy_type)
        : copy_type(copy_type), src(src), dst(dst), MachineBaseInstruction(MachineBaseInstruction::COPY) {}
};
#endif