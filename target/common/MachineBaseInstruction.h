#ifndef MachineBaseIns_H
#define MachineBaseIns_H
#include <set>
#include <vector>
class MachineBaseInstruction{
public:
    enum {ARM = 0,RiscV,PHI,COPY};
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
class MachinePhiInstruction : public MachineBaseInstruction {
public:
    struct RegisterOrImm{
    public:
        bool isimm32:1;
        union{
            Register reg;
            int imm32;
        };
    };
public:
    std::set<int> GetReadReg();
    std::set<int> GetWriteReg();

    Register result;
    std::vector<std::pair<int,RegisterOrImm> >phi_list;
    MachinePhiInstruction(Register result):result(result),MachineBaseInstruction(MachineBaseInstruction::PHI){}
    void pushPhiList(int label,Register reg){
        RegisterOrImm re;
        re.isimm32 = 0;
        re.reg = reg;
        phi_list.push_back(std::make_pair(label,re));
    }
    void pushPhiList(int label,int imm32){
        RegisterOrImm im;
        im.isimm32 = 1;
        im.imm32 = imm32;
        phi_list.push_back(std::make_pair(label,im));
    }
};
// %x: type = COPY type %y: type
class MachineCopyInstruction : public MachineBaseInstruction {
public:
    int src_regno;
    int dst_regno;

    enum{INT,FLOAT};
    enum{B32,B64,B128};

    union{
        int src_type;
        struct{
            int src_datatype:1;
            int src_width:2;
            bool src_isimm:1;
        };
    };

    union{
        int dst_type;
        struct{
            int dst_datatype:1;
            int dst_width:2;
            bool dst_isimm:1;
        };
    };

    union{
        int copy_type;
        struct{
            int copy_datatype:1;
            int copy_width:2;
        };
    };
public:
    MachineCopyInstruction(int src_regno,int dst_regno):src_regno(src_regno),dst_regno(dst_regno),MachineBaseInstruction(MachineBaseInstruction::COPY){}
};
#endif