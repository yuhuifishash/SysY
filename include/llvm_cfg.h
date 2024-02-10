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
#include "function_basicinfo.h"
#include "loop.h"
#include "dominator_tree.h"

class CFG
{   
public:
    int max_label = 0;
    int max_reg = 0;
    /*this is the pointer to the value of LLVMIR.function_block_map
      you can see it in the LLVMIR::CFGInit()*/
    std::map<int, LLVMBlock>* block_map;
    FuncDefInstruction function_def;
    
    std::vector<std::vector<LLVMBlock> > G{}; //control flow graph
    std::vector<std::vector<LLVMBlock> > invG{}; // inv control flow graph
    DominatorTree DomTree;

    void BuildCFG();
    void BuildDominatorTree();

    std::vector<std::vector<LLVMBlock> > dominator_tree{};
    std::vector<LLVMBlock> idom{};

    std::bitset<65536>* DF;
    std::bitset<65536>* atdom;


    std::map<int,std::set<int> > defs{}; //set of basic blocks that contain definitions of {name} 
    std::map<int,int> def_num; //def number
    std::map<int,std::set<int> > uses{};
    std::map<int,int> mem2reg_map{};//<old regno, new regno>
    std::set<int> allocas;
    std::map<PhiInstruction*,int> new_phi_map{};
    
    FunctionBasicInfo func_info;

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
};


#endif