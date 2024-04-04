#ifndef LivEInterval_H
#define LivEInterval_H
class LiveInterval{
private:
    int segment_count;
    struct LiveSegment{
        int begin;
        int end;
    }*segments;
public:
    LiveInterval():segment_count(0),segments(nullptr){}
    
    // Needs to be implemented (?)
    void AddNewInterval(int,int){}
 
    // There should be more operations for convenience in calculating live interval


    // Unsure if it's useful
    class iterator{
    private:
        struct LiveSegment* current;
    public:
        iterator():current(nullptr){}
        void start(){}
        struct LiveSegment* next(){return nullptr;}
    };
};

#endif