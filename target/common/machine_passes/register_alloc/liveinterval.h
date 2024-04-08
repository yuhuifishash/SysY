#ifndef LivEInterval_H
#define LivEInterval_H
#include <vector>
#include <assert.h>
#include "../machine_pass.h"
class LiveInterval{
private:
    int vreg_id;
    int segment_count;
    struct LiveSegment{
        int begin;
        int end;
    };
    std::vector<LiveSegment> segments{};
    int reference_count;
public:
    bool operator&(const LiveInterval &&that){
        // TODO : Judge if *this and that overlapped
        assert(0);
        return false;
    }

    int getReferenceCount(){return reference_count;}
    int getIntervalLen(){assert(0);return 0;}
    int getVirtualRegId(){return vreg_id;}
    LiveInterval(int id):vreg_id(id),segment_count(0){}
    
    // Needs to be implemented (?)
    void AddNewInterval(int,int){}
 
    // There should be more operations for convenience in calculating live interval
    decltype(segments.begin()) begin(){return segments.begin();}
    decltype(segments.end  ())   end(){  return segments.end();}
};
class Liveness {
private:
    MachineFunction* current_func;
    void UpdateDefUse();
    std::map<int,std::set<int> >IN{},OUT{},DEF{},USE{};
public:
    void Execute();
    Liveness(MachineFunction* mfun,bool calculate = true):current_func(mfun){
        if(calculate){
            Execute();
        }
    }
    std::set<int> GetIN(int bid){return IN[bid];}
    std::set<int> GetOUT(int bid){return OUT[bid];}
    std::set<int> GetDef(int bid){return DEF[bid];}
    std::set<int> GetUse(int bid){return USE[bid];}
};
#endif