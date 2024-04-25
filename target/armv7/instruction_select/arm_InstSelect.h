#ifndef ARM_INSTSELECT_H
#define ARM_INSTSELECT_H
#include "../arm_structures.h"
#include "../../common/machine_passes/machine_selector.h"
class ArmSelector : public MachineSelector {
private:
    std::map<int, int> ir_arm_vreg_map;          // needs to be cleared in new function
    std::map<int, int> ir_negativeoffset_map;    // needs to be cleared in new function
    struct tagLastCond {
        enum condType { ICMP = 0, FCMP = 1 } cond_type;
        union condContent {
            enum IcmpCond cond_icmp;
            enum FcmpCond comd_fcmp;
        } cond_content;
    } last_cond;

public:
    ArmSelector(ArmUnit *dest, LLVMIR *IR) : MachineSelector(dest, IR) {}
    void SelectInstructionAndBuildCFG();
    void ClearFunctionSelectState();

    template <class INSPTR> void ConvertAndAppend(INSPTR);
};
#endif