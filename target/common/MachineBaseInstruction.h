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


#endif