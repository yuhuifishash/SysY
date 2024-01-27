#ifndef LLVM_CFG_H
#define LLVM_CFG_H

#include <vector>
#include <queue>
#include <iostream>
#include <set>
#include <map>
#include <bitset>
#include "basic_block.h"
#include "SysY_tree.h"
#include "arm_cgen.h"

class CFG;

class NaturalLoop
{
public:
    std::set<llvm_block> loop_nodes;
    std::set<llvm_block> exit_nodes;
    std::vector<Instruction> InvariantInsList;
    llvm_block header;
    llvm_block preheader;
    int loop_id;
    NaturalLoop* loop_fa;
    void find_exit_nodes(CFG* cfg);
    void add_preheader(CFG* cfg);
};

class NaturalLoopForest
{
public:
    std::set<NaturalLoop*> loops;
    std::vector<std::vector<NaturalLoop*> > loopG;
    std::map<llvm_block,NaturalLoop*> header_loop_map;
    void combine_loops();
    void build_loopforest();
};

class FunctionBasicInfo
{
public:
    int Ins_num = 0;
    int rec_call_tag;//recursion call tag
    int call_tag;//call Instruction
    int alloca_tag;//if use alloca Instruction
    int array_formal_tag;
    int Formal_num = 0;
    int store_global_tag;
    int is_independent_tag;
};

class CFG
{   
public:
    int max_label = 0;
    int max_reg = 0;
    std::map<int, llvm_block>* block;
    Func_Def_Instruction func_ins;
    
    std::vector<std::vector<llvm_block> > G{}; //control flow graph
    std::vector<std::vector<llvm_block> > invG{}; // inv control flow graph

    std::vector<std::vector<llvm_block> > dominator_tree{};
    std::vector<llvm_block> idom{};

    std::bitset<65536>* DF;
    std::bitset<65536>* atdom;


    std::map<int,std::set<int> > defs{}; //set of basic blocks that contain definitions of {name} 
    std::map<int,int> def_num; //def number
    std::map<int,std::set<int> > uses{};
    std::map<int,int> mem2reg_map{};//<old regno, new regno>
    std::set<int> allocas;
    std::map<phi_instruction*,int> new_phi_map{};
    
    FunctionBasicInfo func_info;

    void build_CFG();
    void build_dominator_tree();

    void calc_defs_uses();
    std::set<int> calc_DF(std::set<int> S);
    std::set<int> calc_DF(int BB_id);
    bool if_dominate(int id1,int id2);//judge if blockid1 dominate blockid2

    void mem2reg_no_use_alloca(std::set<int>& no_use_vset);
    void mem2reg_in_sameblock(int regno,int block_id);
    void mem2reg_onedef_dom_alluses(int regno);
    void insert_phi();
    void var_rename();

    std::map<Instruction,std::vector<Instruction> > SSA_G{};
    std::map<int,Instruction> regresult_ins_map{};
    void build_SSA_Graph();
    void global_const_replace();
    void SCCP();
    void set_ins_block_ID();
    void replace_reg_to_const();
    void dead_block_elimate_sccp(std::map<std::pair<int,int>,int>& CFGedgeExec);
    void ConstIns_elimate();

    int BB_CSEFunctionCall();//cse in basic block
    int BB_CSEAlg();//cse in basic block
    
    void SimpleDCE();

    void simple_inst_strength_reduce();
    void simple_instcombine();
    std::map<int,int>reg_reference_count;

    NaturalLoopForest loopforest;
    void loop_find();
    std::vector<Instruction> CalculateInvariant(NaturalLoop* L);
    void LICM();

    void FunctionInline();
    void GetFunctionBasicInfo();
    int GetRecursionInfo();
    void TailCall2Loop();

    void phi_destruction();
    void cgen_prework();
    void calculate_liveness();
    void register_alloc();
    void code(std::ostream& s);

    int get_min_active_mem_offset(int insno);
    int get_reusable_size(int insno);

    int have_mem_i32;
    int have_mem_f32;
    std::vector<int> get_used_physical_i32_reg();
    std::vector<int> get_used_physical_f32_reg();

    std::map<int,RegSegment> intervals;

    std::map<int,PhysicalAllocDiscriptor> reg_V2P;

    int next_fp_offset_to_allocate;

    // r0-r3 only
    std::vector<int> get_phsical_i32_regs_across_ins(int Ins_no);// in: Ins No
    std::vector<int> get_phsical_i32_regs_across_ins_noresult(int Ins_no,int result_regno);
    int* ins_across_r[4];
    // ins_across_r[0] [ins]

    // s0-s15 only
    std::vector<int> get_phsical_f32_regs_across_ins(int Ins_no);// in: Ins No
    int* ins_across_s[16];

    int total_ins_count;
};


#endif