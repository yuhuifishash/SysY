#ifndef LLVM_IR_H
#define LLVM_IR_H

#include "llvm_cfg.h"

class LLVMIR
{
public:
    std::vector<Instruction> global_def{};
    std::vector<Instruction> func_declare{};
    std::map<Func_Def_Instruction, int> sp_offset_map{};
    std::map<Func_Def_Instruction, CFG*> llvm_cfg{}; //<function,cfg>
    std::map<Func_Def_Instruction, std::map<int, LLVMBlock> > llvm_Function_BlockArr_map; //<function,<id,block> >
    std::map<Func_Def_Instruction, int> max_label_map{};
    std::map<Func_Def_Instruction, int> max_reg_map{}; 

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

    void phi_destruction();
    void cgen_prework();

    void register_alloc();
    void code(std::ostream& s);
};

#endif