#ifndef MachineBaseIns_H
#define MachineBaseIns_H
#include <set>
class MachineBaseInstruction{
public:
    enum {ARM = 0,RiscV,PHI};
    const int arch;
public:
    MachineBaseInstruction(int arch):arch(arch){}
    virtual std::set<int> GetReadReg() = 0;
    virtual std::set<int> GetWriteReg() = 0;
};

struct Register{
public:
    int am_reg_no;
};

struct Label{
public:
    union{
        int jmp_label_id;
        int mem_label_id;
        int print_label_id;
    };
    int seq_label_id;
    bool is_data_address;
    Label(int jmp,int seq){
        this->jmp_label_id = jmp;
        this->seq_label_id = seq;
    }
    Label(int jmp,bool is_data_address = false){
        this->is_data_address = is_data_address;
        this->jmp_label_id = jmp;
    }
};

#endif