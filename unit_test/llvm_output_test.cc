#include "llvm_output_test.h"
Instruction get_fptosi_Ins(Operand from_fp,Operand to_si);
Instruction get_sitofp_Ins(Operand from_si,Operand to_fp);
Instruction get_alg_Ins_i32_1(int,int,int,int,int);
void SimpleTests()
{
    (new LoadInstruction(LLVMType::I32,new RegOperand(),new RegOperand()))->PrintIR(std::cout);
    (new ArithmeticInstruction(LLVMIROpcode::ADD,LLVMType::FLOAT32,new ImmF32Operand(32),new RegOperand(),new RegOperand()))->PrintIR(std::cout);


    LLVMBlock b0 = new BasicBlock(0);
    LLVMBlock b1 = new BasicBlock(1);
    LLVMBlock b2 = new BasicBlock(2);
    LLVMBlock b3 = new BasicBlock(3);
    LLVMBlock b4 = new BasicBlock(4);


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
    Operand result=new RegOperand();

    Operand val1=new RegOperand();
    Operand label1=new LabelOperand();

    Operand val2=new ImmI32Operand(114514);
    Operand label2=new LabelOperand();

    Operand val3=new global_operand("TiamaT");
    Operand label3=new LabelOperand();

    Instruction phi_ins=new PhiInstruction(LLVMType::I32,result);

    phi_ins->PrintIR(std::cout);
    ((PhiInstruction*)phi_ins)->Insert_phi(val1,label1);
    phi_ins->PrintIR(std::cout);
    ((PhiInstruction*)phi_ins)->Insert_phi(val2,label2);
    phi_ins->PrintIR(std::cout);
    ((PhiInstruction*)phi_ins)->Insert_phi(val3,label3);
    phi_ins->PrintIR(std::cout);
}
void CallInstructionTest()
{
    std::cout<<"Case 1:\n";
    Instruction ins=new CallInstruction(VOID,nullptr,"BakaFunction");
    ins->PrintIR(std::cout);

    Operand reg0=new RegOperand();
    std::cout<<"\nCase 2:\n";

    ins=new CallInstruction(I32,reg0,"CHUNITHM");
    ins->PrintIR(std::cout);

    Operand reg1=new RegOperand();
    Operand i32_imm114514=new ImmI32Operand(114514);
    Operand reg2=new RegOperand();
    Operand glob=new global_operand("Nice_Boat");

    std::cout<<"\nCase 3:\n";

    ins=new CallInstruction(FLOAT32,reg1,"GENSHIN_CONFIDENCE");
    ((CallInstruction*)(ins))->push_back_Parameter(I32,i32_imm114514);
    ((CallInstruction*)(ins))->push_back_Parameter(FLOAT32,reg2);
    ((CallInstruction*)(ins))->push_back_Parameter(PTR,glob);
    ins->PrintIR(std::cout);
}
void RetInstructionTest()
{
    Instruction ins=new RetInstruction(VOID,nullptr);
    ins->PrintIR(std::cout);

    Operand reg0=new RegOperand();
    ins=new RetInstruction(I32,reg0);
    ins->PrintIR(std::cout);

    Operand imm=new ImmI32Operand(721);
    ins=new RetInstruction(I32,imm);
    ins->PrintIR(std::cout);

    Operand glo=new global_operand("OttoNanaMi");
    ins=new RetInstruction(FLOAT32,glo);
    ins->PrintIR(std::cout);
}
void GEPInstructionPrintTest()
{
    Operand reg0=new RegOperand();
    Operand reg1=new RegOperand();
    std::vector<int>dims={4,7,3,6,2,5,1};
    std::vector<int>idx={0,6,2,5,1};
    GetElementprtInstruction* ins=new GetElementprtInstruction(I32,reg1,reg0,dims);
    ins->push_idx_reg(idx[0]);
    ins->push_idx_reg(idx[1]);
    ins->push_idx_imm32(idx[2]);
    ins->push_idx_reg(idx[3]);
    ins->push_idx_imm32(idx[4]);
    //std::cout<<"printIR\n";
    ins->PrintIR(std::cout);
}
void OneBlockTest()
{
    LLVMBlock block=new BasicBlock(0);
    std::cout<<"Test 1:Null Block\n";
    block->printIR(std::cout);//Null Block
    std::cout<<"\n";

    Operand reg0,reg1,immf32;
    reg0=new RegOperand;
    reg1=new RegOperand;
    immf32=new ImmF32Operand(114.514);

    Instruction ins1,ins2,ins3;
    ins1=new AllocaInstruction(LLVMType::FLOAT32,reg0);
    ins2=new StoreInstruction(LLVMType::FLOAT32,reg0,immf32);
    ins3=new LoadInstruction(LLVMType::FLOAT32,reg0,reg1);

    block->Instruction_list.push_back(ins1);
    block->Instruction_list.push_back(ins2);
    block->Instruction_list.push_back(ins3);
    std::cout<<"Test 2:Block With Multiple Instructions\n";
    block->printIR(std::cout);
}
void OneFunctionTest()
{
    LLVMBlock block = new BasicBlock(0);
    std::cout<<"Test:Function output"<<"\n";
    Func_Def_Instruction f = new FunctionDefineInstruction(LLVMType::I32,std::string("test_func1"));
    f->insert_formal(LLVMType::FLOAT32);
    f->insert_formal(LLVMType::I32);
    f->insert_formal(LLVMType::PTR);
    f->PrintIR(std::cout);
}
void SimplePhiInsertTestPrepare(std::ostream& out=std::cout)
{
    Func_Def_Instruction f = new FunctionDefineInstruction(LLVMType::I32,std::string("main"));
    std::map<int, LLVMBlock>blocks;

    Operand r1=new RegOperand(1);
    Operand r2=new RegOperand(2);
    Operand r3=new RegOperand(3);
    Operand r4=new RegOperand(4);
    Operand r7=new RegOperand(7);
    Operand r9=new RegOperand(9);

    Operand l0=new LabelOperand(0);
    Operand l5=new LabelOperand(1);
    Operand l6=new LabelOperand(2);
    Operand l8=new LabelOperand(3);

    Operand imm1=new ImmI32Operand(1);
    Operand imm0=new ImmI32Operand(0);

    LLVMBlock b0 = new BasicBlock(0);
    Instruction ins2=new AllocaInstruction(I32,r1);
    Instruction ins3=new AllocaInstruction(I32,r2);
    Instruction ins4=new StoreInstruction(I32,r1,imm1);
    Instruction ins5=new LoadInstruction(I32,r1,r3);
    Instruction ins6=new IcmpInstruction(I32,r3,imm0,sgt,r4);
    Instruction ins7=new BrCondInstruction(r4,l5,l8);
    b0->Instruction_list.push_back(ins2);
    b0->Instruction_list.push_back(ins3);
    b0->Instruction_list.push_back(ins4);
    b0->Instruction_list.push_back(ins5);
    b0->Instruction_list.push_back(ins6);
    b0->Instruction_list.push_back(ins7);

    LLVMBlock b5 = new BasicBlock(5);
    Instruction ins10=new StoreInstruction(I32,r2,imm1);
    Instruction ins11=new BrUncondInstruction(l6);
    b5->Instruction_list.push_back(ins10);
    b5->Instruction_list.push_back(ins11);

    LLVMBlock b6 = new BasicBlock(6);
    Instruction ins14=new LoadInstruction(I32,r2,r7);
    Instruction ins15=new RetInstruction(I32,r7);
    b6->Instruction_list.push_back(ins14);
    b6->Instruction_list.push_back(ins15);

    LLVMBlock b8 = new BasicBlock(8);
    Instruction ins18=new ArithmeticInstruction(SUB,I32,imm0,imm1,r9);
    Instruction ins19=new StoreInstruction(I32,r2,r9);
    Instruction ins20=new BrUncondInstruction(l6);
    b8->Instruction_list.push_back(ins18);
    b8->Instruction_list.push_back(ins19);
    b8->Instruction_list.push_back(ins20);

    blocks[0]=b0;
    blocks[5]=b5;
    blocks[6]=b6;
    blocks[8]=b8;

    LLVMIR*lir=new LLVMIR();
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
    Func_Def_Instruction f1=new FunctionDefineInstruction(LLVMType::I32,std::string("LIU_ZHELI"));
    std::map<int, LLVMBlock>f1Blocks;
    //Block 1.1
    f1Blocks[0]=new BasicBlock(0);

    //Block 1.2
    f1Blocks[1]=new BasicBlock(1);

    //Block 1.3
    f1Blocks[2]=new BasicBlock(2);

    //Func2
    Func_Def_Instruction f2=new FunctionDefineInstruction(LLVMType::FLOAT32,std::string("ZHONG_ZHIREN"));
    std::map<int, LLVMBlock>f2Blocks;
    //Block 2.1
    f2Blocks[0]=new BasicBlock(0);

    //Block 2.2
    f2Blocks[1]=new BasicBlock(1);

    //Block 2.3
    f2Blocks[2]=new BasicBlock(2);

    //Func3
    Func_Def_Instruction f3=new FunctionDefineInstruction(LLVMType::VOID,std::string("WANG_GANG"));
    std::map<int, LLVMBlock>f3Blocks;
    //Block 3.1
    f3Blocks[0]=new BasicBlock(0);
    
    //Block 3.2
    f3Blocks[1]=new BasicBlock(1);

    //Block 3.3
    f3Blocks[2]=new BasicBlock(2);

    LLVMIR*lir=new LLVMIR();
    lir->llvm_Function_BlockArr_map[f1]=f1Blocks;
    lir->llvm_Function_BlockArr_map[f2]=f2Blocks;
    lir->llvm_Function_BlockArr_map[f3]=f3Blocks;

    lir->printIR(std::cout);
}
void Full_llvm_Test(){}

class reg_container
{
private:
    std::vector<Operand>reg_list;
public:
    reg_container()
    {
        for(int i=0;i<32;i++)
        {
            reg_list.push_back(new RegOperand(i));
        }
    }
    ~reg_container()
    {
        for(auto reg:reg_list)
        {
            delete reg;
        }
    }
    Operand get_reg(int i)
    {
        return reg_list[i];
    }
};

void AdvancedPhiInsertTestPrepare(std::ostream& out=std::cout)
{
    reg_container regs;
    Func_Def_Instruction f = new FunctionDefineInstruction(LLVMType::I32,std::string("main"));
    std::map<int, LLVMBlock>blocks;

    LLVMIR ir;
    ir.llvm_Function_BlockArr_map[f]=blocks;
    CFG cfg;
    ir.llvm_cfg[f]=&cfg;
    delete f;
}
void SolveIntInitVal(InitVal,VarAttribute&);
void SolveFloatInitVal(InitVal,VarAttribute&);
void GlobalArrayTest(){
    std::cout<<"Test:Global Array\n";
    VarAttribute array_val;
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
    ival->TypeCheck();
    array_val.dims={3,4,2};
    SolveFloatInitVal(ival,array_val);
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
    Instruction ins=new GlobalVarDefineInstruction("TiamaT",FLOAT32,array_val);
    ins->PrintIR(std::cout);
}
void fptosi_test(){
    get_fptosi_Ins(new ImmF32Operand(114.514),new RegOperand(3))->PrintIR(std::cout);
    get_fptosi_Ins(new RegOperand(1),new RegOperand(2))->PrintIR(std::cout);
}
void sitofp_test(){
    get_sitofp_Ins(new ImmI32Operand(114514),new RegOperand(3))->PrintIR(std::cout);
    get_sitofp_Ins(new RegOperand(1),new RegOperand(2))->PrintIR(std::cout);
}
void zext_test(){
    (new ZextInstruction(I32,new RegOperand(),I1,new ImmI32Operand(1)))->PrintIR(std::cout);
    (new ZextInstruction(I32,new RegOperand(),I1,new RegOperand()))->PrintIR(std::cout);
    (new ZextInstruction(I32,new global_operand("Yash"),I1,new ImmI32Operand(0)))->PrintIR(std::cout);
}
void xor_test(){
    get_alg_Ins_i32_1(I32,XOR,1,2,3)->PrintIR(std::cout);
}