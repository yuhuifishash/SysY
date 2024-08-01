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
            return this->inside(that.begin) || this->inside(that.end - 1 > that.begin ? that.end - 1 : that.begin) ||
                   that.inside(this->begin) || that.inside(this->end - 1 > this->begin ? this->end - 1 : this->begin);
        }
        bool operator==(const struct LiveSegment &that) const {
            return this->begin == that.begin && this->end == that.end;
        }
    };
    std::list<LiveSegment> segments{};
    int reference_count;

public:
    bool operator==(const LiveInterval &that) const {
        // TODO : Judge if *this and that are equal
        if (reg == that.reg) {
            Assert(segments == that.segments);
            return true;
        } else {
            return false;
        }
        return reg == that.reg;    // && segments == that.segments;
    }
    LiveInterval operator|(const LiveInterval &that) const {
        LiveInterval ret(this->reg);
        ret.reference_count = this->reference_count + that.reference_count - 2;
        auto it = segments.begin();
        auto jt = that.segments.begin();
        while (1) {
            if (it == segments.end() && jt == that.segments.end()) {
                break;
            }
            if (it == segments.end()) {
                ret.segments.push_back(*jt);
                ++jt;
                continue;
            }
            if (jt == that.segments.end()) {
                ret.segments.push_back(*it);
                ++it;
                continue;
            }
            if (it->begin < jt->begin) {
                ret.segments.push_back(*it);
                ++it;
            } else {
                ret.segments.push_back(*jt);
                ++jt;
            }
        }
        return ret;
    }
    bool operator&(const LiveInterval &that) const {
        // TODO : Judge if *this and that overlapped
        // Assume Segments are sorted

        if (segments.empty() || that.segments.empty())
            return false;
        // Log("\n[%d,%d) & [%d,%d)",segments[0].begin,segments[0].end,that.segments[0].begin,that.segments[0].end);
        // std::cerr<<"\n["<<segments[0].begin<<","<<segments[0].end<<") & ["<<that.segments;
        auto it = segments.begin();
        auto jt = that.segments.begin();
        while (1) {
            if (*it & *jt) {
                return true;
            }
            if (it->end <= jt->begin) {
                ++it;
                if (it == segments.end()) {
                    return false;
                }
            } else if (jt->end <= it->begin) {
                ++jt;
                if (jt == that.segments.end()) {
                    return false;
                }
            } else {
                ERROR("LiveInterval::operator&: Error");
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
    LiveInterval() : reference_count(0) {}    // Temp
    LiveInterval(Register reg) : reg(reg), reference_count(0) {}

    // Needs to be implemented (?)
    void PushFront(int begin, int end) {
        // Log("PushFront %d %d",begin,end);
        segments.push_front({begin = begin, end = end});
    }
    void SetMostBegin(int begin) {
        // Log("SetBegin %d",begin);
        segments.begin()->begin = begin;
        // segments[0].begin = begin;
    }

    void Print() {
        PRINT("%d %d ", reg.is_virtual, reg.reg_no);
        // std::cerr<<reg.is_virtual<<" "<<reg.reg_no<<" ";
        for (auto seg : segments) {
            PRINT("[%d,%d) ", seg.begin, seg.end);
            // std::cerr<<"["<<seg.begin<<","<<seg.end<<") ";
        }
        PRINT("\n");
    }

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