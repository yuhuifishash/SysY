#ifndef CGEN_H
#define CGEN_H
#include <string>
#include <map>
#include <queue>
#include <iostream>
class RegSegment{
public:
    int firstRefInsNo;
    int lastRefInsNo;

    int virtualRegNo;
public:
    bool invalid(){
        return firstRefInsNo < 0 || lastRefInsNo < 0;
    }
    bool operator == (RegSegment b){
        return
            firstRefInsNo == b.firstRefInsNo &&
            lastRefInsNo == b.lastRefInsNo &&
            virtualRegNo == b.virtualRegNo;
    }
    struct{
        int reference_count;
        int prefer_regtype;// 0-None, 1-int, 2-float
        int prefer_regno;
        int no_compromise;
    }options;
    double getRefDensity(){
        if(lastRefInsNo-firstRefInsNo + 1 > 0)
            return 1.0*options.reference_count/(lastRefInsNo-firstRefInsNo+1);
        else return 1.0*options.reference_count;
    }
    static bool UnallocatedIntervals_cmp(RegSegment a,RegSegment b){
        // Note: UnallocatedIntervals firstRegInsNo Ascending
        if(a.firstRefInsNo != b.firstRefInsNo){
            return a.firstRefInsNo>b.firstRefInsNo;
        }
        if(a.options.no_compromise != b.options.no_compromise){
            return a.options.no_compromise < b.options.no_compromise;
        }
        // if(a.getRefDensity() != b.getRefDensity()){
        //     return a.getRefDensity() < b.getRefDensity();
        // }
        int alen = a.lastRefInsNo - a.firstRefInsNo + 1;
        int blen = b.lastRefInsNo - b.firstRefInsNo + 1;
        return alen > blen;
        // int aVirtualNo_Seq = a.virtualRegNo;
        // aVirtualNo_Seq = aVirtualNo_Seq >= 0 ? aVirtualNo_Seq : -aVirtualNo_Seq-1;
        // int bVirtualNo_Seq = b.virtualRegNo;
        // bVirtualNo_Seq = bVirtualNo_Seq >= 0 ? bVirtualNo_Seq : -bVirtualNo_Seq-1;
        // return aVirtualNo_Seq > bVirtualNo_Seq;
    }
    static bool ActiveIntervals_cmp(RegSegment a,RegSegment b){
        // Note: UnallocatedIntervals firstRegInsNo Ascending
        return a.lastRefInsNo>b.lastRefInsNo;
    }
    static bool SpillIntervals_cmp(RegSegment a,RegSegment b){
        return a.getRefDensity()>b.getRefDensity();
    }
    RegSegment(int first,int last,int no):
    firstRefInsNo(first),
    lastRefInsNo(last),
    virtualRegNo(no){
        options.reference_count = 0;
        options.prefer_regtype = 0;
        options.prefer_regno = -1;
        options.no_compromise = 0;
    }

    RegSegment(){
        firstRefInsNo = 0;
        lastRefInsNo = 0;
        virtualRegNo = 0;
        options.reference_count = 0;
        options.prefer_regtype = 0;
        options.prefer_regno = -1;
        options.no_compromise = 0;
    }

    void setLastRefInsNo(int set){lastRefInsNo = set;}
    int getVirtualRegNo(){return virtualRegNo;}
    int isIntVirtualReg(){return virtualRegNo >= 0;}
    int isFloatVirtualReg(){return virtualRegNo < 0;}
    int getfirstRefInsNo(){return firstRefInsNo;}
    int getlastRefInsNo(){return lastRefInsNo;}
};

class ActiveIntervalManager{
private:
    std::priority_queue<
        RegSegment,
        std::vector<RegSegment>,
        decltype(RegSegment::ActiveIntervals_cmp)*
    > ActiveIntervals;
    std::priority_queue<
        RegSegment,
        std::vector<RegSegment>,
        decltype(RegSegment::ActiveIntervals_cmp)*
    > CandidateSpillIntervals;
public:
    ActiveIntervalManager():
    ActiveIntervals(RegSegment::ActiveIntervals_cmp),
    CandidateSpillIntervals(RegSegment::SpillIntervals_cmp){
    }
    void add_seg(RegSegment s){
        ActiveIntervals.push(s);
        CandidateSpillIntervals.push(s);
    }
    std::vector<RegSegment> pop_dead(RegSegment newSeg){
        std::vector<RegSegment> ret;
        while(!ActiveIntervals.empty()){
            auto top = ActiveIntervals.top();
            if(top.lastRefInsNo < newSeg.firstRefInsNo){
                ActiveIntervals.pop();
                ret.push_back(top);
            }else break;
        }
        while(!CandidateSpillIntervals.empty()){
            auto top = CandidateSpillIntervals.top();
            if(top.lastRefInsNo < newSeg.firstRefInsNo){
                CandidateSpillIntervals.pop();
            }else break;
        }
        return ret;
    }
    RegSegment earlist_end(){
        if(!ActiveIntervals.empty()){
            return ActiveIntervals.top();
        }else return RegSegment(-1,-1,0);
    }
    void erase(RegSegment victim){
        std::vector<RegSegment> buffer;
        while(!ActiveIntervals.empty()){
            auto top = ActiveIntervals.top();
            ActiveIntervals.pop();
            if(top == victim){
                break;
            }
            buffer.push_back(top);
        }
        for(auto x:buffer){
            ActiveIntervals.push(x);
        }
        buffer.clear();
        while(!CandidateSpillIntervals.empty()){
            auto top = CandidateSpillIntervals.top();
            CandidateSpillIntervals.pop();
            if(top == victim){
                break;
            }
            buffer.push_back(top);
        }
        for(auto x:buffer){
            CandidateSpillIntervals.push(x);
        }
    }
    RegSegment get_spill_victim(RegSegment cur){
        while(!CandidateSpillIntervals.empty()){
            auto candidate = CandidateSpillIntervals.top();
            if( /* candidate.options.no_compromise || */ cur.getfirstRefInsNo() > candidate.getlastRefInsNo()){
                CandidateSpillIntervals.pop();
                continue;
            }
            if(candidate.getRefDensity() < cur.getRefDensity()){
                return candidate;
            }else{
                return cur;
            }
        }
        return cur;
    }
};

class PhysicalAllocDiscriptor{
public:
    enum PHY_Alloc_Type{
        PHY_NOT_SPECIFIED = 0,
        PHY_REG_I32 = 1,
        PHY_REG_F32 = 2,
        PHY_MEM_I32 = 3,
        PHY_MEM_F32 = 4
    }alloc_type;
    PhysicalAllocDiscriptor(PHY_Alloc_Type type_in,int Property){
        alloc_type = type_in;
        if(alloc_type == PHY_REG_I32)
            address.physicalRegNo_i32 = Property;
        if(alloc_type == PHY_REG_F32)
            address.physicalRegNo_f32 = Property;
        if(alloc_type == PHY_MEM_I32 || alloc_type == PHY_MEM_F32)
            address.mem_fp_offset = Property;
    }
    PhysicalAllocDiscriptor(){
        alloc_type = PHY_NOT_SPECIFIED;
        address.physicalRegNo_i32 = 0;
    }
    std::string getPhysicalName(){
        if(alloc_type == PHY_REG_I32)
            return "r"+std::to_string(address.physicalRegNo_i32);
        if(alloc_type == PHY_REG_F32)
            return "s"+std::to_string(address.physicalRegNo_f32);
        if(alloc_type == PHY_MEM_I32 || alloc_type == PHY_MEM_F32)
            return "[fp,#"+std::to_string(address.mem_fp_offset)+"]";
        return std::string("PHY_NOT_SPECIFIED");
    }
public:
    union{
        int physicalRegNo_i32;
        int physicalRegNo_f32;
        int mem_fp_offset;
    }address;
    PHY_Alloc_Type allocType;
};

class Register_Use_Tracker{
private:
// r0-r8
    int Using_r[9];
// s0-s29
    int Using_s[30];
public:
    Register_Use_Tracker(){
        for(int i=0;i<=8;i++){Using_r[i] = 0;}
        for(int i=0;i<=29;i++){Using_s[i] = 0;}
    }
    void activate_physical_reg(int reg_type,int reg_no){
        if(reg_type == 1){
            Using_r[reg_no] = 1;
        }
        if(reg_type == 2){
            Using_s[reg_no] = 1;
        }
    }
    void deactivate_physical_reg(int reg_type,int reg_no){
        if(reg_type == 1){
            Using_r[reg_no] = 0;
        }
        if(reg_type == 2){
            Using_s[reg_no] = 0;
        }
    }
    // If no idle register exists, return -1
    int find_next_idle_physical_reg_no(int reg_type,int prefer_phyreg,int no_compromise){
        if(reg_type == 1){
            if(prefer_phyreg >= 0){
                if(Using_r[prefer_phyreg] == 0){
                    return prefer_phyreg;
                }
            }
            for(int i=8;i>=0;i--){
                if(Using_r[i] == 0)
                    return i;
            }
        }
        if(reg_type == 2){
            if(prefer_phyreg >= 0){
                if(Using_s[prefer_phyreg] == 0){
                    return prefer_phyreg;
                }
            }
            for(int i=29;i>=0;i--){
                if(Using_s[i] == 0)
                    return i;
            }
        }
        return -1;
    }
};

class Memory_free_list{
private:
    std::queue<int> freelist;
    std::map<int,int> occupyed;
    int min_alloc_offset;
public:
    Memory_free_list(int begin_alloc):min_alloc_offset(begin_alloc){}
    int get_and_occupy_next_offset(){
        if(freelist.empty()){
            min_alloc_offset -= 4;
            int ret = min_alloc_offset;
            occupyed[ret] = 1;
            return ret;
        }else{
            int ret = freelist.front();
            freelist.pop();
            occupyed[ret] = 1;
            return ret;
        }
    }
    void release_offset(int offset){
        if(occupyed.find(offset) == occupyed.end()){
            std::cerr<<"Releasing unoccupyed mem offset\n";
            std::cerr<<"This is unexcepted. See Memory_free_list::release_offset()\n";
            return;
        }
        occupyed.erase(offset);
        freelist.push(offset);
    }
    int get_cur_offset_border(){return min_alloc_offset;}
};

#endif