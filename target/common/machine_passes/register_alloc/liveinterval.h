#ifndef LivEInterval_H
#define LivEInterval_H
#include "../machine_pass.h"
#include <assert.h>
#include <queue>
class LiveInterval {
private:
    Register reg;
    int segment_count;
    struct LiveSegment {
        int begin;
        int end;
    };
    std::deque<LiveSegment> segments{};
    int reference_count;

public:
    bool operator&(const LiveInterval &&that) {
        // TODO : Judge if *this and that overlapped
        assert(0);
        return false;
    }
    void IncreaseReferenceCount(int count) { reference_count += count; }
    int getReferenceCount() { return reference_count; }
    int getIntervalLen() {
        int ret = 0;
        for (auto seg : segments) {
            ret += (seg.end - seg.begin + 1);
        }
        return ret;
    }
    Register getReg() { return reg; }
    LiveInterval() {}    // Temp
    LiveInterval(Register reg) : reg(reg), segment_count(0) {}

    // Needs to be implemented (?)
    void PushFront(int begin, int end) { segments.push_front({begin = begin, end = end}); }
    void SetMostBegin(int begin) { segments[0].begin = begin; }

    decltype(segments.begin()) begin() { return segments.begin(); }
    decltype(segments.end()) end() { return segments.end(); }
};

class Liveness {
private:
    MachineFunction *current_func;
    void UpdateDefUse();
    // Key: Block_Number
    std::map<int, std::set<Register>> IN{}, OUT{}, DEF{}, USE{};

public:
    void Execute();
    Liveness(MachineFunction *mfun, bool calculate = true) : current_func(mfun) {
        if (calculate) {
            Execute();
        }
    }
    std::set<Register> GetIN(int bid) { return IN[bid]; }
    std::set<Register> GetOUT(int bid) { return OUT[bid]; }
    std::set<Register> GetDef(int bid) { return DEF[bid]; }
    std::set<Register> GetUse(int bid) { return USE[bid]; }
};
#endif