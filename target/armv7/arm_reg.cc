#include "arm.h"
#pragma GCC diagnostic ignored "-Wwritable-strings"
#pragma GCC diagnostic ignored "-Wc99-designator"
struct ArmPhysicalRegister ArmRegs[] = {
[ArmPhysicalRegister::r0] = {"r0"},
[ArmPhysicalRegister::r1] = {"r1"},
[ArmPhysicalRegister::r2] = {"r2"},
[ArmPhysicalRegister::r3] = {"r3"},
[ArmPhysicalRegister::r4] = {"r4"},
[ArmPhysicalRegister::r5] = {"r5"},
[ArmPhysicalRegister::r6] = {"r6"},
[ArmPhysicalRegister::r7] = {"r7"},
[ArmPhysicalRegister::r8] = {"r8"},
[ArmPhysicalRegister::r9] = {"r9"},
[ArmPhysicalRegister::r10] = {"r10"},
[ArmPhysicalRegister::r11] = {"r11"},
[ArmPhysicalRegister::s0] = {"s0"},
[ArmPhysicalRegister::s1] = {"s1"},
[ArmPhysicalRegister::s2] = {"s2"},
[ArmPhysicalRegister::s3] = {"s3"},
[ArmPhysicalRegister::s4] = {"s4"},
[ArmPhysicalRegister::s5] = {"s5"},
[ArmPhysicalRegister::s6] = {"s6"},
[ArmPhysicalRegister::s7] = {"s7"},
[ArmPhysicalRegister::s8] = {"s8"},
[ArmPhysicalRegister::s9] = {"s9"},
[ArmPhysicalRegister::s10] = {"s10"},
[ArmPhysicalRegister::s11] = {"s11"},
[ArmPhysicalRegister::s12] = {"s12"},
[ArmPhysicalRegister::s13] = {"s13"},
[ArmPhysicalRegister::s14] = {"s14"},
[ArmPhysicalRegister::s15] = {"s15"},
[ArmPhysicalRegister::s16] = {"s16"},
[ArmPhysicalRegister::s17] = {"s17"},
[ArmPhysicalRegister::s18] = {"s18"},
[ArmPhysicalRegister::s19] = {"s19"},
[ArmPhysicalRegister::s20] = {"s20"},
[ArmPhysicalRegister::s21] = {"s21"},
[ArmPhysicalRegister::s22] = {"s22"},
[ArmPhysicalRegister::s23] = {"s23"},
[ArmPhysicalRegister::s24] = {"s24"},
[ArmPhysicalRegister::s25] = {"s25"},
[ArmPhysicalRegister::s26] = {"s26"},
[ArmPhysicalRegister::s27] = {"s27"},
[ArmPhysicalRegister::s28] = {"s28"},
[ArmPhysicalRegister::s29] = {"s29"},
[ArmPhysicalRegister::s30] = {"s30"},
[ArmPhysicalRegister::s31] = {"s31"},
[ArmPhysicalRegister::d0] = {"d0"},
[ArmPhysicalRegister::d1] = {"d1"},
[ArmPhysicalRegister::d2] = {"d2"},
[ArmPhysicalRegister::d3] = {"d3"},
[ArmPhysicalRegister::d4] = {"d4"},
[ArmPhysicalRegister::d5] = {"d5"},
[ArmPhysicalRegister::d6] = {"d6"},
[ArmPhysicalRegister::d7] = {"d7"},
[ArmPhysicalRegister::d8] = {"d8"},
[ArmPhysicalRegister::d9] = {"d9"},
[ArmPhysicalRegister::d10] = {"d10"},
[ArmPhysicalRegister::d11] = {"d11"},
[ArmPhysicalRegister::d12] = {"d12"},
[ArmPhysicalRegister::d13] = {"d13"},
[ArmPhysicalRegister::d14] = {"d14"},
[ArmPhysicalRegister::d15] = {"d15"},
[ArmPhysicalRegister::d16] = {"d16"},
[ArmPhysicalRegister::d17] = {"d17"},
[ArmPhysicalRegister::d18] = {"d18"},
[ArmPhysicalRegister::d19] = {"d19"},
[ArmPhysicalRegister::d20] = {"d20"},
[ArmPhysicalRegister::d21] = {"d21"},
[ArmPhysicalRegister::d22] = {"d22"},
[ArmPhysicalRegister::d23] = {"d23"},
[ArmPhysicalRegister::d24] = {"d24"},
[ArmPhysicalRegister::d25] = {"d25"},
[ArmPhysicalRegister::d26] = {"d26"},
[ArmPhysicalRegister::d27] = {"d27"},
[ArmPhysicalRegister::d28] = {"d28"},
[ArmPhysicalRegister::d29] = {"d29"},
[ArmPhysicalRegister::d30] = {"d30"},
[ArmPhysicalRegister::d31] = {"d31"},
[ArmPhysicalRegister::q0] = {"q0"},
[ArmPhysicalRegister::q1] = {"q1"},
[ArmPhysicalRegister::q2] = {"q2"},
[ArmPhysicalRegister::q3] = {"q3"},
[ArmPhysicalRegister::q4] = {"q4"},
[ArmPhysicalRegister::q5] = {"q5"},
[ArmPhysicalRegister::q6] = {"q6"},
[ArmPhysicalRegister::q7] = {"q7"},
[ArmPhysicalRegister::q8] = {"q8"},
[ArmPhysicalRegister::q9] = {"q9"},
[ArmPhysicalRegister::q10] = {"q10"},
[ArmPhysicalRegister::q11] = {"q11"},
[ArmPhysicalRegister::q12] = {"q12"},
[ArmPhysicalRegister::q13] = {"q13"},
[ArmPhysicalRegister::q14] = {"q14"},
[ArmPhysicalRegister::q15] = {"q15"},
[ArmPhysicalRegister::cpsr] = {"cpsr"},
[ArmPhysicalRegister::INVALID] = {"INVALID"},
[ArmPhysicalRegister::spilled_in_memory] = {"spilled_in_memory"},
};
std::vector<int> getValidRegs(LiveInterval interval) {
    if (interval.getReg().type.data_type == MachineDataType::INT) {
        assert(interval.getReg().type.data_length == MachineDataType::B32);
        return std::vector<int>({
        ArmPhysicalRegister::r0,
        ArmPhysicalRegister::r1,
        ArmPhysicalRegister::r2,
        ArmPhysicalRegister::r3,
        ArmPhysicalRegister::r4,
        ArmPhysicalRegister::r5,
        ArmPhysicalRegister::r6,
        ArmPhysicalRegister::r7,
        ArmPhysicalRegister::r8,
        ArmPhysicalRegister::r9,
        ArmPhysicalRegister::r10,
        ArmPhysicalRegister::r11,
        });
    } else if (interval.getReg().type.data_type == MachineDataType::FLOAT) {
        if (interval.getReg().type.data_length == MachineDataType::B32) {
            return std::vector<int>({
            ArmPhysicalRegister::s0,  ArmPhysicalRegister::s1,  ArmPhysicalRegister::s2,  ArmPhysicalRegister::s3,
            ArmPhysicalRegister::s4,  ArmPhysicalRegister::s5,  ArmPhysicalRegister::s6,  ArmPhysicalRegister::s7,
            ArmPhysicalRegister::s8,  ArmPhysicalRegister::s9,  ArmPhysicalRegister::s10, ArmPhysicalRegister::s11,
            ArmPhysicalRegister::s12, ArmPhysicalRegister::s13, ArmPhysicalRegister::s14, ArmPhysicalRegister::s15,
            ArmPhysicalRegister::s16, ArmPhysicalRegister::s17, ArmPhysicalRegister::s18, ArmPhysicalRegister::s19,
            ArmPhysicalRegister::s20, ArmPhysicalRegister::s21, ArmPhysicalRegister::s22, ArmPhysicalRegister::s23,
            ArmPhysicalRegister::s24, ArmPhysicalRegister::s25, ArmPhysicalRegister::s26, ArmPhysicalRegister::s27,
            ArmPhysicalRegister::s28, ArmPhysicalRegister::s29, ArmPhysicalRegister::s30, ArmPhysicalRegister::s31,
            });
        } else if (interval.getReg().type.data_length == MachineDataType::B64) {
            return std::vector<int>({
            ArmPhysicalRegister::d0,  ArmPhysicalRegister::d1,  ArmPhysicalRegister::d2,  ArmPhysicalRegister::d3,
            ArmPhysicalRegister::d4,  ArmPhysicalRegister::d5,  ArmPhysicalRegister::d6,  ArmPhysicalRegister::d7,
            ArmPhysicalRegister::d8,  ArmPhysicalRegister::d9,  ArmPhysicalRegister::d10, ArmPhysicalRegister::d11,
            ArmPhysicalRegister::d12, ArmPhysicalRegister::d13, ArmPhysicalRegister::d14, ArmPhysicalRegister::d15,
            ArmPhysicalRegister::d16, ArmPhysicalRegister::d17, ArmPhysicalRegister::d18, ArmPhysicalRegister::d19,
            ArmPhysicalRegister::d20, ArmPhysicalRegister::d21, ArmPhysicalRegister::d22, ArmPhysicalRegister::d23,
            ArmPhysicalRegister::d24, ArmPhysicalRegister::d25, ArmPhysicalRegister::d26, ArmPhysicalRegister::d27,
            ArmPhysicalRegister::d28, ArmPhysicalRegister::d29, ArmPhysicalRegister::d30, ArmPhysicalRegister::d31,
            });
        } else if (interval.getReg().type.data_length == MachineDataType::B128) {
            return std::vector<int>({
            ArmPhysicalRegister::q0,
            ArmPhysicalRegister::q1,
            ArmPhysicalRegister::q2,
            ArmPhysicalRegister::q3,
            ArmPhysicalRegister::q4,
            ArmPhysicalRegister::q5,
            ArmPhysicalRegister::q6,
            ArmPhysicalRegister::q7,
            ArmPhysicalRegister::q8,
            ArmPhysicalRegister::q9,
            ArmPhysicalRegister::q10,
            ArmPhysicalRegister::q11,
            ArmPhysicalRegister::q12,
            ArmPhysicalRegister::q13,
            ArmPhysicalRegister::q14,
            ArmPhysicalRegister::q15,
            });
        }
    }
    assert(false);
}
std::vector<int> getAliasRegs(int phy_id) {
    std::vector<int> ret({phy_id});
    if (phy_id >= ArmPhysicalRegister::q0 && phy_id <= ArmPhysicalRegister::q15) {
        int q_id = phy_id - ArmPhysicalRegister::q0;
        if (q_id * 2 <= 31) {
            ret.push_back(ArmPhysicalRegister::d0 + q_id * 2);
            ret.push_back(ArmPhysicalRegister::d1 + q_id * 2);
        }
        if (q_id * 4 <= 31) {
            ret.push_back(ArmPhysicalRegister::s0 + q_id * 4);
            ret.push_back(ArmPhysicalRegister::s1 + q_id * 4);
            ret.push_back(ArmPhysicalRegister::s2 + q_id * 4);
            ret.push_back(ArmPhysicalRegister::s3 + q_id * 4);
        }
    } else if (phy_id >= ArmPhysicalRegister::d0 && phy_id <= ArmPhysicalRegister::d31) {
        int d_id = phy_id - ArmPhysicalRegister::d0;
        if (d_id * 2 <= 31) {
            ret.push_back(ArmPhysicalRegister::s0 + d_id * 2);
            ret.push_back(ArmPhysicalRegister::s1 + d_id * 2);
        }
        ret.push_back(ArmPhysicalRegister::q0 + d_id / 2);
    } else if (phy_id >= ArmPhysicalRegister::s0 && phy_id <= ArmPhysicalRegister::s31) {
        int s_id = phy_id - ArmPhysicalRegister::s0;
        ret.push_back(ArmPhysicalRegister::d0 + s_id / 2);
        ret.push_back(ArmPhysicalRegister::q0 + s_id / 4);
    }
    return ret;
}