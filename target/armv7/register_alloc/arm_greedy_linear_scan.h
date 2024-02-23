#ifndef LINEAR_SCAN_H
#define LINEAR_SCAN_H

#include<vector>
class ActiveInterval{
    class Segment{
        int begin,end;
    };
    std::vector<Segment> interval;
    // void Split() ==> return ActiveInterval1,ActiveInterval2;
        // WHO Insert COPY ?

    // void Spill() ==> return ActiveInterval1,ActiveInterval2;
        // WHO Insert LOAD/STORE ?
};

// void ScanAllIntervals(){}

#endif