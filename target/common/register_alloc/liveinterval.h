#ifndef LivEInterval_H
#define LivEInterval_H
#include <vector>
#include <assert.h>
class LiveInterval{
private:
    int amreg_id;
    int segment_count;
    struct LiveSegment{
        int begin;
        int end;
    };
    std::vector<LiveSegment> segments{};
    int reference_count;
public:
    int getReferenceCount(){return reference_count;}
    int getIntervalLen(){assert(0);return 0;}
    int getAmRegId(){return amreg_id;}
    LiveInterval(int id):amreg_id(id),segment_count(0){}
    
    // Needs to be implemented (?)
    void AddNewInterval(int,int){}
 
    // There should be more operations for convenience in calculating live interval
    decltype(segments.begin()) begin(){return segments.begin();}
    decltype(segments.end  ())   end(){  return segments.end();}
};

#endif