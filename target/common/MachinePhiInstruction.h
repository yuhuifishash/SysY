#ifndef MachinePhiInstruction_H
#define MachinePhiInstruction_H
#include "MachineBaseInstruction.h"
#include <vector>
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
#endif