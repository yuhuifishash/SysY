#ifndef MachineBaseIns_H
#define MachineBaseIns_H
#include <set>
class MachineBaseInstruction{
private:
public:
    virtual std::set<int> GetReadReg() = 0;
    virtual std::set<int> GetWriteReg() = 0;
};
#endif