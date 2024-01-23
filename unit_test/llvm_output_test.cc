#include "llvm_output_test.h"
Instruction get_fptosi_Ins(operand from_fp,operand to_si);
Instruction get_sitofp_Ins(operand from_si,operand to_fp);
Instruction get_alg_Ins_i32_1(int,int,int,int,int);
void SimpleTests()
{
    (new load_Instruction(llvm_type::I32,new reg_operand(),new reg_operand()))->printIR(std::cout);
    (new alg_Instruction(llvm_ir_opcode::ADD,llvm_type::FLOAT32,new imm_f32_operand(32),new reg_operand(),new reg_operand()))->printIR(std::cout);


    llvm_block b0 = new basic_block(0);
    llvm_block b1 = new basic_block(1);
    llvm_block b2 = new basic_block(2);
    llvm_block b3 = new basic_block(3);
    llvm_block b4 = new basic_block(4);


    CFG t;
    t.G.resize(5);
    t.G[0].push_back(b1);
    t.G[0].push_back(b2);
    t.G[2].push_back(b3);
    t.G[2].push_back(b4);
    t.G[3].push_back(b1);

    for(auto B:t.G[0]){
        std::cout<<B->block_id<<"\n";
    }
}
void PhiInstructionTest()
{
    operand result=new reg_operand();

    operand val1=new reg_operand();
    operand label1=new label_operand();

    operand val2=new imm_i32_operand(114514);
    operand label2=new label_operand();

    operand val3=new global_operand("TiamaT");
    operand label3=new label_operand();

    Instruction phi_ins=new phi_instruction(llvm_type::I32,result);

    phi_ins->printIR(std::cout);
    ((phi_instruction*)phi_ins)->Insert_phi(val1,label1);
    phi_ins->printIR(std::cout);
    ((phi_instruction*)phi_ins)->Insert_phi(val2,label2);
    phi_ins->printIR(std::cout);
    ((phi_instruction*)phi_ins)->Insert_phi(val3,label3);
    phi_ins->printIR(std::cout);
}
void CallInstructionTest()
{
    std::cout<<"Case 1:\n";
    Instruction ins=new call_instruction(VOID,nullptr,"BakaFunction");
    ins->printIR(std::cout);

    operand reg0=new reg_operand();
    std::cout<<"\nCase 2:\n";

    ins=new call_instruction(I32,reg0,"CHUNITHM");
    ins->printIR(std::cout);

    operand reg1=new reg_operand();
    operand i32_imm114514=new imm_i32_operand(114514);
    operand reg2=new reg_operand();
    operand glob=new global_operand("Nice_Boat");

    std::cout<<"\nCase 3:\n";

    ins=new call_instruction(FLOAT32,reg1,"GENSHIN_CONFIDENCE");
    ((call_instruction*)(ins))->push_back_Parameter(I32,i32_imm114514);
    ((call_instruction*)(ins))->push_back_Parameter(FLOAT32,reg2);
    ((call_instruction*)(ins))->push_back_Parameter(PTR,glob);
    ins->printIR(std::cout);
}
void RetInstructionTest()
{
    Instruction ins=new ret_instruction(VOID,nullptr);
    ins->printIR(std::cout);

    operand reg0=new reg_operand();
    ins=new ret_instruction(I32,reg0);
    ins->printIR(std::cout);

    operand imm=new imm_i32_operand(721);
    ins=new ret_instruction(I32,imm);
    ins->printIR(std::cout);

    operand glo=new global_operand("OttoNanaMi");
    ins=new ret_instruction(FLOAT32,glo);
    ins->printIR(std::cout);
}
void GEPInstructionPrintTest()
{
    operand reg0=new reg_operand();
    operand reg1=new reg_operand();
    std::vector<int>dims={4,7,3,6,2,5,1};
    std::vector<int>idx={0,6,2,5,1};
    get_elementptr_instruction* ins=new get_elementptr_instruction(I32,reg1,reg0,dims);
    ins->push_idx_reg(idx[0]);
    ins->push_idx_reg(idx[1]);
    ins->push_idx_imm32(idx[2]);
    ins->push_idx_reg(idx[3]);
    ins->push_idx_imm32(idx[4]);
    //std::cout<<"printIR\n";
    ins->printIR(std::cout);
}
void OneBlockTest()
{
    llvm_block block=new basic_block(0);
    std::cout<<"Test 1:Null Block\n";
    block->printIR(std::cout);//Null Block
    std::cout<<"\n";

    operand reg0,reg1,immf32;
    reg0=new reg_operand;
    reg1=new reg_operand;
    immf32=new imm_f32_operand(114.514);

    Instruction ins1,ins2,ins3;
    ins1=new alloca_instruction(llvm_type::FLOAT32,reg0);
    ins2=new store_Instruction(llvm_type::FLOAT32,reg0,immf32);
    ins3=new load_Instruction(llvm_type::FLOAT32,reg0,reg1);

    block->Instruction_list.push_back(ins1);
    block->Instruction_list.push_back(ins2);
    block->Instruction_list.push_back(ins3);
    std::cout<<"Test 2:Block With Multiple Instructions\n";
    block->printIR(std::cout);
}
void OneFunctionTest()
{
    llvm_block block = new basic_block(0);
    std::cout<<"Test:Function output"<<"\n";
    Func_Def_Instruction f = new func_define_instruction(llvm_type::I32,std::string("test_func1"));
    f->insert_formal(llvm_type::FLOAT32);
    f->insert_formal(llvm_type::I32);
    f->insert_formal(llvm_type::PTR);
    f->printIR(std::cout);
}
void SimplePhiInsertTestPrepare(std::ostream& out=std::cout)
{
    Func_Def_Instruction f = new func_define_instruction(llvm_type::I32,std::string("main"));
    std::map<int, llvm_block>blocks;

    operand r1=new reg_operand(1);
    operand r2=new reg_operand(2);
    operand r3=new reg_operand(3);
    operand r4=new reg_operand(4);
    operand r7=new reg_operand(7);
    operand r9=new reg_operand(9);

    operand l0=new label_operand(0);
    operand l5=new label_operand(1);
    operand l6=new label_operand(2);
    operand l8=new label_operand(3);

    operand imm1=new imm_i32_operand(1);
    operand imm0=new imm_i32_operand(0);

    llvm_block b0 = new basic_block(0);
    Instruction ins2=new alloca_instruction(I32,r1);
    Instruction ins3=new alloca_instruction(I32,r2);
    Instruction ins4=new store_Instruction(I32,r1,imm1);
    Instruction ins5=new load_Instruction(I32,r1,r3);
    Instruction ins6=new icmp_Instruction(I32,r3,imm0,sgt,r4);
    Instruction ins7=new br_cond_instruction(r4,l5,l8);
    b0->Instruction_list.push_back(ins2);
    b0->Instruction_list.push_back(ins3);
    b0->Instruction_list.push_back(ins4);
    b0->Instruction_list.push_back(ins5);
    b0->Instruction_list.push_back(ins6);
    b0->Instruction_list.push_back(ins7);

    llvm_block b5 = new basic_block(5);
    Instruction ins10=new store_Instruction(I32,r2,imm1);
    Instruction ins11=new br_uncond_instruction(l6);
    b5->Instruction_list.push_back(ins10);
    b5->Instruction_list.push_back(ins11);

    llvm_block b6 = new basic_block(6);
    Instruction ins14=new load_Instruction(I32,r2,r7);
    Instruction ins15=new ret_instruction(I32,r7);
    b6->Instruction_list.push_back(ins14);
    b6->Instruction_list.push_back(ins15);

    llvm_block b8 = new basic_block(8);
    Instruction ins18=new alg_Instruction(SUB,I32,imm0,imm1,r9);
    Instruction ins19=new store_Instruction(I32,r2,r9);
    Instruction ins20=new br_uncond_instruction(l6);
    b8->Instruction_list.push_back(ins18);
    b8->Instruction_list.push_back(ins19);
    b8->Instruction_list.push_back(ins20);

    blocks[0]=b0;
    blocks[5]=b5;
    blocks[6]=b6;
    blocks[8]=b8;

    LLVM_IR*lir=new LLVM_IR();
    lir->llvm_Function_BlockArr_map[f]=blocks;
    lir->printIR(out);

    CFG cfg;
    cfg.G.resize(4);
    cfg.G[0].push_back(b5);//0 is b0
    cfg.G[0].push_back(b8);//0 is b0
    cfg.G[1].push_back(b6);//1 is b5
    cfg.G[3].push_back(b6);//3 is b8

    cfg.invG.resize(4);
    cfg.invG[1].push_back(b0);//1 is b5
    cfg.invG[3].push_back(b0);//3 is b8
    cfg.invG[2].push_back(b5);//2 is b6
    cfg.invG[2].push_back(b8);//2 is b6

    lir->llvm_cfg[f]=&cfg;
}
void MultipleFunctionTest()
{
    //Func1
    Func_Def_Instruction f1=new func_define_instruction(llvm_type::I32,std::string("LIU_ZHELI"));
    std::map<int, llvm_block>f1Blocks;
    //Block 1.1
    f1Blocks[0]=new basic_block(0);

    //Block 1.2
    f1Blocks[1]=new basic_block(1);

    //Block 1.3
    f1Blocks[2]=new basic_block(2);

    //Func2
    Func_Def_Instruction f2=new func_define_instruction(llvm_type::FLOAT32,std::string("ZHONG_ZHIREN"));
    std::map<int, llvm_block>f2Blocks;
    //Block 2.1
    f2Blocks[0]=new basic_block(0);

    //Block 2.2
    f2Blocks[1]=new basic_block(1);

    //Block 2.3
    f2Blocks[2]=new basic_block(2);

    //Func3
    Func_Def_Instruction f3=new func_define_instruction(llvm_type::VOID,std::string("WANG_GANG"));
    std::map<int, llvm_block>f3Blocks;
    //Block 3.1
    f3Blocks[0]=new basic_block(0);
    
    //Block 3.2
    f3Blocks[1]=new basic_block(1);

    //Block 3.3
    f3Blocks[2]=new basic_block(2);

    LLVM_IR*lir=new LLVM_IR();
    lir->llvm_Function_BlockArr_map[f1]=f1Blocks;
    lir->llvm_Function_BlockArr_map[f2]=f2Blocks;
    lir->llvm_Function_BlockArr_map[f3]=f3Blocks;

    lir->printIR(std::cout);
}
void Full_llvm_Test(){}

class reg_container
{
private:
    std::vector<operand>reg_list;
public:
    reg_container()
    {
        for(int i=0;i<32;i++)
        {
            reg_list.push_back(new reg_operand(i));
        }
    }
    ~reg_container()
    {
        for(auto reg:reg_list)
        {
            delete reg;
        }
    }
    operand get_reg(int i)
    {
        return reg_list[i];
    }
};

void AdvancedPhiInsertTestPrepare(std::ostream& out=std::cout)
{
    reg_container regs;
    Func_Def_Instruction f = new func_define_instruction(llvm_type::I32,std::string("main"));
    std::map<int, llvm_block>blocks;

    LLVM_IR ir;
    ir.llvm_Function_BlockArr_map[f]=blocks;
    CFG cfg;
    ir.llvm_cfg[f]=&cfg;
    delete f;
}
void solve_Int_InitVal(InitVal,ArrayVal&);
void solve_Float_InitVal(InitVal,ArrayVal&);
void GlobalArrayTest(){
    std::cout<<"Test:Global Array\n";
    ArrayVal array_val;
    Expression exp1=new FloatConst(1.1);
    Expression exp2=new FloatConst(2.2);
    Expression exp3=new FloatConst(3.3);
    InitVal ival=new ConstInitVal(new std::vector<InitVal>{
        new ConstInitVal(new std::vector<InitVal>{
            new ConstInitVal_exp(exp1),
            new ConstInitVal_exp(exp2)
        }),
        new ConstInitVal(new std::vector<InitVal>{}),
        new ConstInitVal_exp(exp3)
    });
    ival->type_check();
    array_val.dims={3,4,2};
    solve_Float_InitVal(ival,array_val);
    int pos=0;
    for(int i=0;i<3;i++){
        for(int j=0;j<4;j++){
            for(int k=0;k<2;k++){
                std::cout<<array_val.FloatInitVals[pos]<<" ";
                pos++;
            }
            std::cout<<"\n";
        }
        std::cout<<"\n";
    }
    Instruction ins=new global_id_define_instruction("TiamaT",FLOAT32,array_val);
    ins->printIR(std::cout);
}
void fptosi_test(){
    get_fptosi_Ins(new imm_f32_operand(114.514),new reg_operand(3))->printIR(std::cout);
    get_fptosi_Ins(new reg_operand(1),new reg_operand(2))->printIR(std::cout);
}
void sitofp_test(){
    get_sitofp_Ins(new imm_i32_operand(114514),new reg_operand(3))->printIR(std::cout);
    get_sitofp_Ins(new reg_operand(1),new reg_operand(2))->printIR(std::cout);
}
void zext_test(){
    (new zext_instruction(I32,new reg_operand(),I1,new imm_i32_operand(1)))->printIR(std::cout);
    (new zext_instruction(I32,new reg_operand(),I1,new reg_operand()))->printIR(std::cout);
    (new zext_instruction(I32,new global_operand("Yash"),I1,new imm_i32_operand(0)))->printIR(std::cout);
}
void xor_test(){
    get_alg_Ins_i32_1(I32,XOR,1,2,3)->printIR(std::cout);
}