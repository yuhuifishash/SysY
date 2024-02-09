#ifndef LLVM_IR_H
#define LLVM_IR_H

#include "llvm_cfg.h"

class LLVMIR
{
public:
    std::vector<Instruction> global_def{};
    std::vector<Instruction> func_declare{};
    std::map<FuncDefInstruction, CFG*> llvm_cfg{}; //<function,cfg>
    std::map<FuncDefInstruction, std::map<int, LLVMBlock> > function_block_map; //<function,<id,block> >
    std::map<FuncDefInstruction, int> max_label_map{};
    std::map<FuncDefInstruction, int> max_reg_map{}; 

    void NewFunction(FuncDefInstruction I){
        function_block_map[I] = {};
    }
    LLVMBlock GetBlock(FuncDefInstruction I,int now_label){
        return function_block_map[I][now_label];
    }
    LLVMBlock NewBlock(FuncDefInstruction I,int& max_label){
        ++max_label;
        function_block_map[I][max_label] = new BasicBlock(max_label);
        return GetBlock(I,max_label);
    }


    std::map<FuncDefInstruction, int> sp_offset_map{};
    void mem2reg();
    void SCCP();
    void peephole_optimize();
    void loop_find();
    void LICM();
    void GetFunctionBasicInfo();
    void FunctionInline();
    void TailCall2Loop();
    void SimpleCSE();
    void SimpleDCE();

    void printIR(std::ostream& s);
    void optimize();
    void build_CFG();
    void cgen_define(std::ostream& s);
    void optimize_zext_br();//icmp zext icmp br || fcmp zext icmp br
    void optimize_shortcircult_br();
    void elimate_dead_ins_and_blocks();

    void decompose_getelementptr();

    void build_dominator_tree();
    void insert_phi();
    void var_rename();
};

#endif