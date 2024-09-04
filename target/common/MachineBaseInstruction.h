#ifndef MachineBaseIns_H
#define MachineBaseIns_H
#include <assert.h>
#include <cstring>
#include <iostream>
#include <map>
#include <set>
#include <vector>

// #define ENABLE_PRINT
#ifdef ENABLE_PRINT
#ifndef PRINT
#define PRINT(...)                                                                                                     \
    do {                                                                                                               \
        char message[256];                                                                                             \
        sprintf(message, __VA_ARGS__);                                                                                 \
        std::cerr << message << "\n";                                                                                  \
    } while (0)
#endif
#else
#ifndef PRINT
#define PRINT(...)
#endif
#endif

#ifndef ERROR
#define ERROR(...)                                                                                                     \
    do {                                                                                                               \
        char message[256];                                                                                             \
        sprintf(message, __VA_ARGS__);                                                                                 \
        std::cerr << "\033[;31;1m";                                                                                    \
        std::cerr << "ERROR: ";                                                                                        \
        std::cerr << "\033[0;37;1m";                                                                                   \
        std::cerr << message << "\n";                                                                                  \
        std::cerr << "\033[0;33;1m";                                                                                   \
        std::cerr << "File: \033[4;37;1m" << __FILE__ << ":" << __LINE__ << "\n";                                      \
        std::cerr << "\033[0m";                                                                                        \
        assert(false);                                                                                                 \
    } while (0)
#endif

#ifndef TODO
#define TODO(...)                                                                                                      \
    do {                                                                                                               \
        char message[256];                                                                                             \
        sprintf(message, __VA_ARGS__);                                                                                 \
        std::cerr << "\033[;34;1m";                                                                                    \
        std::cerr << "TODO: ";                                                                                         \
        std::cerr << "\033[0;37;1m";                                                                                   \
        std::cerr << message << "\n";                                                                                  \
        std::cerr << "\033[0;33;1m";                                                                                   \
        std::cerr << "File: \033[4;37;1m" << __FILE__ << ":" << __LINE__ << "\n";                                      \
        std::cerr << "\033[0m";                                                                                        \
        assert(false);                                                                                                 \
    } while (0)
#endif

#define ENABLE_LOG
#ifdef ENABLE_LOG
#ifndef Log
#define Log(...)                                                                                                       \
    do {                                                                                                               \
        char message[256];                                                                                             \
        sprintf(message, __VA_ARGS__);                                                                                 \
        std::cerr << "\033[;35;1m[\033[4;33;1m" << __FILE__ << ":" << __LINE__ << "\033[;35;1m "                       \
                  << __PRETTY_FUNCTION__ << "]";                                                                       \
        std::cerr << "\033[0;37;1m ";                                                                                  \
        std::cerr << message << "\n";                                                                                  \
        std::cerr << "\033[0m";                                                                                        \
    } while (0)
#endif
#else
#ifndef Log
#define Log(...)
#endif
#endif

#define ENABLE_LOG
#ifdef ENABLE_LOG
#ifndef Lazy
#define Lazy(str)                                                                                                      \
    do {                                                                                                               \
        Log("\033[;31;1m%s\033[0m", str);                                                                              \
    } while (0)
#endif
#else
#ifndef Lazy
#define Lazy(str)
#endif
#endif

#ifndef Assert
#define Assert(EXP)                                                                                                    \
    do {                                                                                                               \
        if (!(EXP)) {                                                                                                  \
            ERROR("Assertion failed: %s", #EXP);                                                                       \
        }                                                                                                              \
    } while (0)
#endif

typedef unsigned __int128 Uint128;
typedef unsigned long long Uint64;
typedef unsigned int Uint32;

struct MachineDataType {
    enum { INT, FLOAT };
    enum { B32, B64, B128 };
    unsigned data_type;
    unsigned data_length;
    MachineDataType() {}
    MachineDataType(const MachineDataType &other) {
        this->data_type = other.data_type;
        this->data_length = other.data_length;
    }
    MachineDataType operator=(const MachineDataType &other) {
        this->data_type = other.data_type;
        this->data_length = other.data_length;
        return *this;
    }
    MachineDataType(unsigned data_type, unsigned data_length) : data_type(data_type), data_length(data_length) {}
    bool operator==(const MachineDataType &other) const {
        return this->data_type == other.data_type && this->data_length == other.data_length;
    }
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
    std::string toString() {
        std::string ret;
        if (data_type == INT)
            ret += 'i';
        if (data_type == FLOAT)
            ret += 'f';
        if (data_length == B32)
            ret += "32";
        if (data_length == B64)
            ret += "64";
        if (data_length == B128)
            ret += "128";
        return ret;
    }
};

extern MachineDataType INT32, INT64, INT128, FLOAT_32, FLOAT64, FLOAT128;

struct Register {
public:
    int reg_no;
    bool is_virtual;
    bool save_across_call;
    MachineDataType type;
    Register() {}
    Register(bool is_virtual, int reg_no, MachineDataType type, bool save = false)
        : is_virtual(is_virtual), reg_no(reg_no), type(type), save_across_call(save) {}
    int getDataWidth() { return type.getDataWidth(); }
    Register(const Register &other) {
        this->is_virtual = other.is_virtual;
        this->reg_no = other.reg_no;
        this->type = other.type;
        this->save_across_call = other.save_across_call;
    }
    Register operator=(const Register &other) {
        this->is_virtual = other.is_virtual;
        this->reg_no = other.reg_no;
        this->type = other.type;
        this->save_across_call = other.save_across_call;
        return *this;
    }
    bool operator<(Register other) const {
        if (is_virtual != other.is_virtual)
            return is_virtual < other.is_virtual;
        if (reg_no != other.reg_no)
            return reg_no < other.reg_no;
        if (type.data_type != other.type.data_type)
            return type.data_type < other.type.data_type;
        if (type.data_length != other.type.data_length)
            return type.data_length < other.type.data_length;
        if (save_across_call != other.save_across_call) {
            return save_across_call < other.save_across_call;
        }
        return false;
    }
    bool operator==(Register other) const {
        return reg_no == other.reg_no && is_virtual == other.is_virtual && type.data_type == other.type.data_type &&
               type.data_length == other.type.data_length && save_across_call == other.save_across_call;
    }
};

struct MachineBaseOperand {
    MachineDataType type;
    enum { REG, IMMI, IMMF, IMMD };
    int op_type;
    MachineBaseOperand(int op_type) : op_type(op_type) {}
    virtual std::string toString() = 0;
};

struct MachineRegister : public MachineBaseOperand {
    Register reg;
    MachineRegister(Register reg) : MachineBaseOperand(MachineBaseOperand::REG), reg(reg) {}
    std::string toString() {
        if (reg.is_virtual)
            return "%" + std::to_string(reg.reg_no);
        else
            return "phy_" + std::to_string(reg.reg_no);
    }
};

struct MachineImmediateInt : public MachineBaseOperand {
    int imm32;
    MachineImmediateInt(int imm32) : MachineBaseOperand(MachineBaseOperand::IMMI), imm32(imm32) {}
    std::string toString() { return std::to_string(imm32); }
};
struct MachineImmediateFloat : public MachineBaseOperand {
    float fimm32;
    MachineImmediateFloat(float fimm32) : MachineBaseOperand(MachineBaseOperand::IMMF), fimm32(fimm32) {}
    std::string toString() { return std::to_string(fimm32); }
};
struct MachineImmediateDouble : public MachineBaseOperand {
    double dimm64;
    MachineImmediateDouble(double dimm64) : MachineBaseOperand(MachineBaseOperand::IMMD), dimm64(dimm64) {}
    std::string toString() { return std::to_string(dimm64); }
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
        this->is_data_address = false;
    }
    Label(int jmp, bool is_data_address = false) {
        this->is_data_address = is_data_address;
        this->seq_label_id = 0;
        this->mem_label_id = jmp;
    }
};

class MachineBaseInstruction {
public:
    enum { ARM = 0, RiscV, PHI, COPY, COMMENT, SELECT, NOP };
    const int arch;

private:
    int ins_number;
    bool no_schedule;

public:
    void SetNoSchedule(bool no_schedule) { this->no_schedule = no_schedule; }
    bool CanSchedule() { return !no_schedule; }
    void setNumber(int ins_number) { this->ins_number = ins_number; }
    int getNumber() { return ins_number; }
    MachineBaseInstruction(int arch) : arch(arch), no_schedule(false) {}
    virtual std::vector<Register *> GetReadReg() = 0;
    virtual std::vector<Register *> GetWriteReg() = 0;
    virtual int GetLatency() = 0;
    bool ExistPhysicalReg() {
        for (auto preg : this->GetReadReg()) {
            if (!preg->is_virtual) {
                return true;
            }
        }
        for (auto preg : this->GetWriteReg()) {
            if (!preg->is_virtual) {
                return true;
            }
        }
        return false;
    }
    void ReplaceByMap(std::map<int, int> vreg_replacemap) {
        for (auto preg : this->GetReadReg()) {
            if (preg->is_virtual) {
                if (vreg_replacemap.find(preg->reg_no) != vreg_replacemap.end()) {
                    preg->reg_no = vreg_replacemap[preg->reg_no];
                }
            }
        }
    }
};

class MachineComment : public MachineBaseInstruction {
private:
    std::string comment;

#ifdef ENABLE_COMMENT
public:
#endif
    MachineComment(std::string comment) : MachineBaseInstruction(MachineBaseInstruction::COMMENT), comment(comment) {}

public:
    virtual std::vector<Register *> GetReadReg() { return std::vector<Register *>(); }
    virtual std::vector<Register *> GetWriteReg() { return std::vector<Register *>(); }
    std::string GetComment() { return comment; }
    int GetLatency() { return 0; }
};

class MachinePhiInstruction : public MachineBaseInstruction {
private:
    Register result;
    std::vector<std::pair<int, MachineBaseOperand *>> phi_list;

public:
    std::vector<Register *> GetReadReg();
    std::vector<Register *> GetWriteReg();

    MachinePhiInstruction(Register result) : result(result), MachineBaseInstruction(MachineBaseInstruction::PHI) {}
    Register GetResult() { return result; }
    void SetResult(Register result) { this->result = result; }
    std::vector<std::pair<int, MachineBaseOperand *>> &GetPhiList() { return phi_list; }
    MachineBaseOperand *removePhiList(int label) {
        for (auto it = phi_list.begin(); it != phi_list.end(); ++it) {
            if (it->first == label) {
                auto ret = it->second;
                phi_list.erase(it);
                return ret;
            }
        }
        return nullptr;
    }
    void pushPhiList(int label, Register reg) { phi_list.push_back(std::make_pair(label, new MachineRegister(reg))); }
    void pushPhiList(int label, int imm32) {
        phi_list.push_back(std::make_pair(label, new MachineImmediateInt(imm32)));
    }
    void pushPhiList(int label, float immf32) {
        phi_list.push_back(std::make_pair(label, new MachineImmediateFloat(immf32)));
    }
    void pushPhiList(int label, MachineBaseOperand *op) { phi_list.push_back(std::make_pair(label, op)); }
    int GetLatency() { return 0; }
};
// %x: type = COPY type %y: type
class MachineCopyInstruction : public MachineBaseInstruction {
private:
    MachineDataType copy_type;
    MachineBaseOperand *src;
    MachineBaseOperand *dst;

public:
    std::vector<Register *> GetReadReg() {
        if (src->op_type == MachineBaseOperand::REG)
            return std::vector<Register *>({&(((MachineRegister *)src)->reg)});
        return std::vector<Register *>();
    }
    std::vector<Register *> GetWriteReg() {
        assert(dst->op_type == MachineBaseOperand::REG);
        return std::vector<Register *>({&(((MachineRegister *)dst)->reg)});
    }

    MachineCopyInstruction(MachineBaseOperand *src, MachineBaseOperand *dst, MachineDataType copy_type)
        : copy_type(copy_type), src(src), dst(dst), MachineBaseInstruction(MachineBaseInstruction::COPY) {}
    void output(std::ostream &s) {
        s << dst->toString() << " = " << copy_type.toString() << " COPY " << src->toString() << "\n";
    }
    MachineBaseOperand *GetSrc() { return src; }
    MachineBaseOperand *GetDst() { return dst; }
    MachineDataType GetCopyType() { return copy_type; }
    int GetLatency() { return 1; }
};

class MachineNop : public MachineBaseInstruction {
private:
    std::vector<Register *> reads, writes;

public:
    MachineNop() : MachineBaseInstruction(MachineBaseInstruction::NOP) {}
    std::vector<Register *> GetReadReg() { return reads; }
    std::vector<Register *> GetWriteReg() { return writes; }
    void SetReadReg(std::vector<Register *> reads) { this->reads = reads; }
    void SetWriteReg(std::vector<Register *> writes) { this->writes = writes; }
    int GetLatency() { return 0; }
};

class MachineSelectInstruction : public MachineBaseInstruction {
private:
    MachineBaseInstruction *cond;
    MachineBaseOperand *dst;
    MachineBaseOperand *srctrue;
    MachineBaseOperand *srcfalse;

public:
    std::vector<Register *> GetReadReg() {
        std::vector<Register *> ret;
        if (srctrue->op_type == MachineBaseOperand::REG)
            ret.push_back(&(((MachineRegister *)srctrue)->reg));
        if (srcfalse->op_type == MachineBaseOperand::REG)
            ret.push_back(&(((MachineRegister *)srcfalse)->reg));
        for (auto reg : cond->GetReadReg()) {
            ret.push_back(reg);
        }
        return ret;
    }
    std::vector<Register *> GetReadRegnext() {
        std::vector<Register *> ret;
        for (auto reg : cond->GetReadReg()) {
            ret.push_back(reg);
        }
        if (srcfalse->op_type == MachineBaseOperand::REG)
            ret.push_back(&(((MachineRegister *)srcfalse)->reg));
        return ret;
    }
    std::vector<Register *> GetWriteReg() {
        Assert(dst->op_type == MachineBaseOperand::REG);
        std::vector<Register *> ret = {&(((MachineRegister *)dst)->reg)};
        return ret;
    }
    std::vector<Register *> GetWriteRegnext() {
        Assert(dst->op_type == MachineBaseOperand::REG);
        std::vector<Register *> ret = {&(((MachineRegister *)dst)->reg)};
        return ret;
    }

    MachineSelectInstruction(MachineBaseInstruction *cond, MachineBaseOperand *dst, MachineBaseOperand *srctrue,
                             MachineBaseOperand *srcfalse)
        : cond(cond), dst(dst), srctrue(srctrue), srcfalse(srcfalse),
          MachineBaseInstruction(MachineBaseInstruction::SELECT) {}
    MachineBaseInstruction *GetCond() { return cond; }
    MachineBaseOperand *GetDst() { return dst; }
    MachineBaseOperand *GetSrcTrue() { return srctrue; }
    MachineBaseOperand *GetSrcFalse() { return srcfalse; }
    int GetLatency() { return 2; }
};
#endif