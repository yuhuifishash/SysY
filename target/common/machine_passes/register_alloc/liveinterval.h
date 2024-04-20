#ifndef LivEInterval_H
#define LivEInterval_H
#include "../machine_pass.h"
#include <assert.h>
#include <queue>
class LiveInterval {
private:
    Register reg;
    struct LiveSegment {
        int begin;
        int end;
        bool inside(int pos) const { return begin <= pos && pos < end; }
        bool operator&(const struct LiveSegment &that) const {
            return this->inside(that.begin) || this->inside(that.end);
        }
        bool operator==(const struct LiveSegment &that) const {
            return this->begin == that.begin && this->end == that.end;
        }
    };
    std::deque<LiveSegment> segments{};
    int reference_count;

public:
    bool operator==(const LiveInterval &that) const {
        // TODO : Judge if *this and that are equal
        return reg == that.reg && segments == that.segments;
    }
    bool operator&(const LiveInterval &that) const {
        // TODO : Judge if *this and that overlapped
        // Assume Segments are sorted
        auto it = segments.begin();
        auto jt = that.segments.begin();
        while (1) {
            if (*it & *jt) {
                return true;
            }
            if (it->end >= jt->begin) {
                ++it;
                if (it == segments.end()) {
                    return false;
                }
            } else if (jt->end >= it->begin) {
                ++jt;
                if (jt == that.segments.end()) {
                    return false;
                }
            } else {
                assert(false);
            }
        }
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
    LiveInterval(Register reg) : reg(reg) {}

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