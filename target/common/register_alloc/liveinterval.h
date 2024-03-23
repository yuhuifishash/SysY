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
    void AddNewInterval(int,int){}
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