#include "semant.h"
#include "SysY_tree.h"
#include "llvm_ir.h"
#include "type.h" 

extern SymbolTable symbol_table;
extern LLVMIR llvm_IR;
extern StringTable str_table;

static int global_var_cnt = 0;
std::map<std::string,ArrayVal> global_const_map;
std::map<std::string,int> global_map;

SemantTable semant_table;
std::vector<std::string> error_msgs{};

static int main_flag = 0;
static int in_while_flag = 0;
static int func_returntype = 0;
static int return_stmt_flag = 0;

/*
Find Max Alignable Size
For example, int a[3][4][5]
If relative pos can be divided by 4*5, them 20 is the max alignable size, so min_dim_step = 1, initialize 4*5 size
If relative pos can be divided by 5, can't divided by 4*5, them 5 is the max alignable size, so min_dim_step = 2, initialize 5 size
If relative pos can't be divided by 5, them 1 is the max alignable size, so min_dim_step = 3, initialize 1 size
But For a pair of { }, pos = 0, although it can be divided by 3*4*5, but the dim_step should be at least 1, so min_dim_step = 1

Another Example, int a[][2][2] = {{0},1,2,3,4,5,6,7}, 0 for the block 2*2, dim step = 1
int a[][2][2] = {0,{1},2,3,4,5,6,7}, pos 0 at [0][0][0], pos 1 can't be aligned, so block size = 1, dim step = 3

Suppose We are initializing array, dims are: [val.dims[dimsIdx],val.dims[dimsIdx+1],... val.dims[end]]
And now We need to find a minimal dim_step, s.t.
    the block : [val.dims[dimsIdx+dim_step],...,val.dims[end]]
    relative pos should at a alignable pos, 
        i.e. relative pos % (val.dims[dimsIdx]*val.dims[dimsIdx+1]*...*val.dims[dimsIdx+dim_step-1]) == 0
        (the relative pos begin from 0)

@const ArrayVal& val: just used for get dims
@int relativePos: relative pos in the block
@int dimsIdx: current dim index
@int& max_subBlock_sz: parameter for output,return max alignable size
@return: min dim step
*/
int find_min_dim_step(const ArrayVal& val,int relativePos,int dimsIdx, int& max_subBlock_sz)
{
    int min_dim_step = 1;
    int blockSz = 1;
    for(int i=dimsIdx+1;i<val.dims.size();i++){
        blockSz *= val.dims[i];
    }
    while(relativePos % blockSz != 0){
        min_dim_step++;
        blockSz /= val.dims[dimsIdx+min_dim_step-1];
    }
    max_subBlock_sz = blockSz;
    return min_dim_step;
}

void recursive_Array_Init(InitVal init,ArrayVal& val,int begPos,int endPos,int dimsIdx)
{
    //dimsIdx from 0
    int pos=begPos;

    //Old Policy: One { } for one dim
    // int subBlockSz = 1;
    // for(int i=dimsIdx+1;i<val.dims.size();i++){
    //     subBlockSz *= val.dims[i];
    // }

    //For Debug
    //std::cout<<std::string(dimsIdx*2,' ')<<"From:"<<begPos<<" To:"<<endPos<<"\n";
    //std::cout<<std::string(dimsIdx*2,' ')<<"subBlockNum:"<<(init->get_List())->size()<<"\n";
    for(InitVal iv:*(init->get_List())){
        //std::cout<<std::string(dimsIdx*2,' ')<<"pos:"<<pos<<"\n";
        if(iv->is_exp()){
            if(iv->get_type() == 0){
                error_msgs.push_back("exp can not be void in initval in line " + std::to_string(init->get_line_number()) + "\n");
            }
            if(val.type == 1){
                if(iv->get_type() == 1){
                    val.IntInitVals[pos] = iv->get_Intval();
                }
                if(iv->get_type() == 2){
                    val.IntInitVals[pos] = iv->get_Floatval();
                }
            }
            if(val.type == 2){
                if(iv->get_type() == 1){
                    val.FloatInitVals[pos] = iv->get_Intval();
                }
                if(iv->get_type() == 2){
                    val.FloatInitVals[pos] = iv->get_Floatval();
                }
                //std::cout<<std::string(dimsIdx*2,' ')<<"  val:"<<val.FloatInitVals[pos]<<"\n";
            }
            pos++;
        }else{
            // New Policy: One { } for the max align-able dim
            // More informations see comments above find_min_dim_step
            int max_subBlock_sz = 0;
            int min_dim_step = find_min_dim_step(val,pos-begPos,dimsIdx,max_subBlock_sz);
            recursive_Array_Init(iv,val,pos,pos+max_subBlock_sz-1,dimsIdx+min_dim_step);
            pos += max_subBlock_sz;
       }
    }
}

void solve_Int_InitVal(InitVal init,ArrayVal& val)//used for global or const
{
    val.type = 1;
    int arraySz = 1;
    for(auto d:val.dims){
        arraySz *= d;
    }
    val.IntInitVals.resize(arraySz,0);
    if(init == NULL){
        return;
    }
    if(val.dims.empty()){
        if(init->get_exp()!=nullptr){
            if(init->get_exp()->get_type() == 0){
                error_msgs.push_back("exp can not be void in initval in line " + std::to_string(init->get_line_number()) + "\n");
            }
            if(init->get_exp()->get_type() == 1){
                val.IntInitVals[0] = init->get_exp()->get_Intval();
            }
            if(init->get_exp()->get_type() == 2){
                val.IntInitVals[0] = init->get_exp()->get_Floatval();
            }
            //std::cout<<val.IntInitVals[0]<<"\n";
        }
        return;
    }
    else{
        if(init->is_exp()){
            if((init)->get_exp()!=nullptr){
                error_msgs.push_back("InitVal can not be exp in line " + std::to_string(init->get_line_number()) + "\n");
            }
            return;
        }else{
            //InitVal Vals = init->get_List();
            recursive_Array_Init(init,val,0,arraySz-1,0);
        }
    }
}

void solve_Float_InitVal(InitVal init,ArrayVal& val)//used for global or const
{
    val.type = 2;
    int arraySz = 1;
    for(auto d:val.dims){
        arraySz *= d;
    }
    val.FloatInitVals.resize(arraySz,0);
    if(init == NULL){
        return;
    }
    if(val.dims.empty()){
        if(init->get_exp()!=nullptr){
            if(init->get_exp()->get_type() == 0){
                error_msgs.push_back("exp can not be void in initval in line " + std::to_string(init->get_line_number()) + "\n");
            }
            if(init->get_exp()->get_type() == 2){
                val.FloatInitVals[0] = init->get_exp()->get_Floatval();
            }
            if(init->get_exp()->get_type() == 1){
                val.FloatInitVals[0] = init->get_exp()->get_Intval();
            }
            //std::cout<<val.FloatInitVals[0]<<"\n";
        }
        return;
    }
    else{
        if(init->is_exp()){
            if((init)->get_exp()!=nullptr){
                error_msgs.push_back("InitVal can not be exp in line " + std::to_string(init->get_line_number()) + "\n");
            }
            return;
        }else{
            //InitVal Vals = init->get_List();
            recursive_Array_Init(init,val,0,arraySz-1,0);
        }
    }
}

// int b = a[3][4]
int get_ArrayIntVal(ArrayVal val,std::vector<int> indexs)
{
    //[i] + i
    //[i][j] + i*dim[1] + j
    //[i][j][k] + i*dim[1]*dim[2] + j*dim[2] + k
    //[i][j][k][w] + i*dim[1]*dim[2]*dim[3] + j*dim[2]*dim[3] + k*dim[3] + w
    int idx = 0;
    for(int curIndex=0;curIndex<indexs.size();curIndex++){
        // std::cout<<indexs[curIndex]<<" ";
        idx *= val.dims[curIndex];
        idx += indexs[curIndex];
    }
    return val.IntInitVals[idx];
}

float get_ArrayFloatVal(ArrayVal val,std::vector<int> indexs)
{
    int idx = 0;
    for(int curIndex=0;curIndex<indexs.size();curIndex++){
        // std::cout<<indexs[curIndex]<<" ";
        idx *= val.dims[curIndex];
        idx += indexs[curIndex];
    }
    return val.FloatInitVals[idx];
}

void __Program::type_check()
{
    symbol_table.enter_scope();
    auto comp_vector = *comp_list;
    for(auto comp:comp_vector){
        comp->type_check();
    }
    if(!main_flag){
        error_msgs.push_back("main function does not exist.\n");
    }
}

void Exp::type_check()
{
    addexp->type_check();

    cal_flag = addexp->get_cal_flag();
    type = addexp->get_type();
    if(cal_flag){
        if(type == 1){
            IntVal = addexp->get_Intval();
        }
        if(type == 2){
            FloatVal = addexp->get_Floatval();
        }
    }
}

void AddExp_plus::type_check()
{
    addexp->type_check();
    mulexp->type_check();

    if(addexp->get_type() == 0 || mulexp->get_type() == 0){
        error_msgs.push_back("plus on void type in line " + std::to_string(line_number) + "\n");
        type = 0;
        cal_flag = 0;
    }
    else if(addexp->get_type() == 1 && mulexp->get_type() == 1){
        type = 1;
        cal_flag = addexp->get_cal_flag() & mulexp->get_cal_flag();
        if(cal_flag){
            IntVal = addexp->get_Intval() + mulexp->get_Intval();
        }
    }
    else if(addexp->get_type() == 2 && mulexp->get_type() == 2){
        type = 2;
        cal_flag = addexp->get_cal_flag() & mulexp->get_cal_flag();
        if(cal_flag){
            FloatVal = addexp->get_Floatval() + mulexp->get_Floatval();
        }
    }
    else if(addexp->get_type() == 1 && mulexp->get_type() == 2){
        type = 2;
        cal_flag = addexp->get_cal_flag() & mulexp->get_cal_flag();
        if(cal_flag){
            FloatVal = addexp->get_Intval() + mulexp->get_Floatval();
        }
    }
    else if(addexp->get_type() == 2 && mulexp->get_type() == 1){
        type = 2;
        cal_flag = addexp->get_cal_flag() & mulexp->get_cal_flag();
        if(cal_flag){
            FloatVal = addexp->get_Floatval() + mulexp->get_Intval();
        }
    }
}

void AddExp_sub::type_check()
{
    addexp->type_check();
    mulexp->type_check();
    
    if(addexp->get_type() == 0 || mulexp->get_type() == 0){
        error_msgs.push_back("sub on void type in line " + std::to_string(line_number) + "\n");
        type = 0;
        cal_flag = 0;
    }
    else if(addexp->get_type() == 1 && mulexp->get_type() == 1){
        type = 1;
        cal_flag = addexp->get_cal_flag() & mulexp->get_cal_flag();
        if(cal_flag){
            IntVal = addexp->get_Intval() - mulexp->get_Intval();
        }
    }
    else if(addexp->get_type() == 2 && mulexp->get_type() == 2){
        type = 2;
        cal_flag = addexp->get_cal_flag() & mulexp->get_cal_flag();
        if(cal_flag){
            FloatVal = addexp->get_Floatval() - mulexp->get_Floatval();
        }
    }
    else if(addexp->get_type() == 1 && mulexp->get_type() == 2){
        type = 2;
        cal_flag = addexp->get_cal_flag() & mulexp->get_cal_flag();
        if(cal_flag){
            FloatVal = addexp->get_Intval() - mulexp->get_Floatval();
        }
    }
    else if(addexp->get_type() == 2 && mulexp->get_type() == 1){
        type = 2;
        cal_flag = addexp->get_cal_flag() & mulexp->get_cal_flag();
        if(cal_flag){
            FloatVal = addexp->get_Floatval() - mulexp->get_Intval();
        }
    }
}

void MulExp_mul::type_check()
{
    mulexp->type_check();
    unary_exp->type_check();
    
    if(mulexp->get_type() == 0 || unary_exp->get_type() == 0){
        error_msgs.push_back("mul on void type in line " + std::to_string(line_number) + "\n");
        type = 0;
        cal_flag = 0;
    }
    else if(mulexp->get_type() == 1 && unary_exp->get_type() == 1){
        type = 1;
        cal_flag = mulexp->get_cal_flag() & unary_exp->get_cal_flag();
        if(cal_flag){
            IntVal = mulexp->get_Intval() * unary_exp->get_Intval();
        }
    }
    else if(mulexp->get_type() == 2 && unary_exp->get_type() == 2){
        type = 2;
        cal_flag = mulexp->get_cal_flag() & unary_exp->get_cal_flag();
        if(cal_flag){
            FloatVal = mulexp->get_Floatval() * unary_exp->get_Floatval();
        }
    }
    else if(mulexp->get_type() == 1 && unary_exp->get_type() == 2){
        type = 2;
        cal_flag = mulexp->get_cal_flag() & unary_exp->get_cal_flag();
        if(cal_flag){
            FloatVal = mulexp->get_Intval() * unary_exp->get_Floatval();
        }
    }
    else if(mulexp->get_type() == 2 && unary_exp->get_type() == 1){
        type = 2;
        cal_flag = mulexp->get_cal_flag() & unary_exp->get_cal_flag();
        if(cal_flag){
            FloatVal = mulexp->get_Floatval() * unary_exp->get_Intval();
        }
    }
}

void MulExp_div::type_check()
{
    mulexp->type_check();
    unary_exp->type_check();
    
    if(mulexp->get_type() == 0 || unary_exp->get_type() == 0){
        error_msgs.push_back("div on void type in line " + std::to_string(line_number) + "\n");
        type = 0;
        cal_flag = 0;
    }
    else if(mulexp->get_type() == 1 && unary_exp->get_type() == 1){
        type = 1;
        cal_flag = mulexp->get_cal_flag() & unary_exp->get_cal_flag();
        if(cal_flag && unary_exp->get_Intval() != 0){
            IntVal = mulexp->get_Intval() / unary_exp->get_Intval();
        }
    }
    else if(mulexp->get_type() == 2 && unary_exp->get_type() == 2){
        type = 2;
        cal_flag = mulexp->get_cal_flag() & unary_exp->get_cal_flag();
        if(cal_flag && unary_exp->get_Floatval() != 0){
            FloatVal = mulexp->get_Floatval() / unary_exp->get_Floatval();
        }
    }
    else if(mulexp->get_type() == 1 && unary_exp->get_type() == 2){
        type = 2;
        cal_flag = mulexp->get_cal_flag() & unary_exp->get_cal_flag();
        if(cal_flag && unary_exp->get_Floatval() != 0){
            FloatVal = mulexp->get_Intval() / unary_exp->get_Floatval();
        }
    }
    else if(mulexp->get_type() == 2 && unary_exp->get_type() == 1){
        type = 2;
        cal_flag = mulexp->get_cal_flag() & unary_exp->get_cal_flag();
        if(cal_flag && unary_exp->get_Intval() != 0){
            FloatVal = mulexp->get_Floatval() / unary_exp->get_Intval();
        }
    }
}

void MulExp_mod::type_check()
{
    mulexp->type_check();
    unary_exp->type_check();
    
    if(mulexp->get_type() == 0 || unary_exp->get_type() == 0){
        error_msgs.push_back("mod on void type in line " + std::to_string(line_number) + "\n");
        type = 0;
        cal_flag = 0;
    }
    else if(mulexp->get_type() == 1 && unary_exp->get_type() == 1){
        type = 1;
        cal_flag = mulexp->get_cal_flag() & unary_exp->get_cal_flag();
        if(cal_flag && unary_exp->get_Intval() != 0){
            IntVal = mulexp->get_Intval() % unary_exp->get_Intval();
        }
    }
    else if(mulexp->get_type() == 2 || unary_exp->get_type() == 2){
        error_msgs.push_back("mod on float type in line " + std::to_string(line_number) + "\n");
        type = 0;
        cal_flag = 0;
    }
    
}

void RelExp_leq::type_check()
{
    relexp->type_check();
    addexp->type_check();
    
    if(relexp->get_type() == 0 || addexp->get_type() == 0){
        error_msgs.push_back("leq on void type in line " + std::to_string(line_number) + "\n");
        type = 0;
        cal_flag = 0;
    }
    else if(relexp->get_type() == 1 && addexp->get_type() == 1){
        type = 1;
        cal_flag = relexp->get_cal_flag() & addexp->get_cal_flag();
        if(cal_flag){
            IntVal = relexp->get_Intval() <= addexp->get_Intval();
        }
    }
    else if(relexp->get_type() == 2 && addexp->get_type() == 2){
        type = 1;
        cal_flag = relexp->get_cal_flag() & addexp->get_cal_flag();
        if(cal_flag){
            IntVal = relexp->get_Floatval() <= addexp->get_Floatval();
        }
    }
    else if(relexp->get_type() == 1 && addexp->get_type() == 2){
        type = 1;
        cal_flag = relexp->get_cal_flag() & addexp->get_cal_flag();
        if(cal_flag){
            IntVal = relexp->get_Intval() <= addexp->get_Floatval();
        }
    }
    else if(relexp->get_type() == 2 && addexp->get_type() == 1){
        type = 1;
        cal_flag = relexp->get_cal_flag() & addexp->get_cal_flag();
        if(cal_flag){
            IntVal = relexp->get_Floatval() <= addexp->get_Intval();
        }
    }
}

void RelExp_lt::type_check()
{
    relexp->type_check();
    addexp->type_check();
    
    if(relexp->get_type() == 0 || addexp->get_type() == 0){
        error_msgs.push_back("lt on void type in line " + std::to_string(line_number) + "\n");
        type = 0;
        cal_flag = 0;
    }
    else if(relexp->get_type() == 1 && addexp->get_type() == 1){
        type = 1;
        cal_flag = relexp->get_cal_flag() & addexp->get_cal_flag();
        if(cal_flag){
            IntVal = relexp->get_Intval() < addexp->get_Intval();
        }
    }
    else if(relexp->get_type() == 2 && addexp->get_type() == 2){
        type = 1;
        cal_flag = relexp->get_cal_flag() & addexp->get_cal_flag();
        if(cal_flag){
            IntVal = relexp->get_Floatval() < addexp->get_Floatval();
        }
    }
    else if(relexp->get_type() == 1 && addexp->get_type() == 2){
        type = 1;
        cal_flag = relexp->get_cal_flag() & addexp->get_cal_flag();
        if(cal_flag){
            IntVal = relexp->get_Intval() < addexp->get_Floatval();
        }
    }
    else if(relexp->get_type() == 2 && addexp->get_type() == 1){
        type = 1;
        cal_flag = relexp->get_cal_flag() & addexp->get_cal_flag();
        if(cal_flag){
            IntVal = relexp->get_Floatval() < addexp->get_Intval();
        }
    }


}

void RelExp_geq::type_check()
{
    relexp->type_check();
    addexp->type_check();
    
    if(relexp->get_type() == 0 || addexp->get_type() == 0){
        error_msgs.push_back("geq on void type in line " + std::to_string(line_number) + "\n");
        type = 0;
        cal_flag = 0;
    }
    else if(relexp->get_type() == 1 && addexp->get_type() == 1){
        type = 1;
        cal_flag = relexp->get_cal_flag() & addexp->get_cal_flag();
        if(cal_flag){
            IntVal = relexp->get_Intval() >= addexp->get_Intval();
        }
    }
    else if(relexp->get_type() == 2 && addexp->get_type() == 2){
        type = 1;
        cal_flag = relexp->get_cal_flag() & addexp->get_cal_flag();
        if(cal_flag){
            IntVal = relexp->get_Floatval() >= addexp->get_Floatval();
        }
    }
    else if(relexp->get_type() == 1 && addexp->get_type() == 2){
        type = 1;
        cal_flag = relexp->get_cal_flag() & addexp->get_cal_flag();
        if(cal_flag){
            IntVal = relexp->get_Intval() >= addexp->get_Floatval();
        }
    }
    else if(relexp->get_type() == 2 && addexp->get_type() == 1){
        type = 1;
        cal_flag = relexp->get_cal_flag() & addexp->get_cal_flag();
        if(cal_flag){
            IntVal = relexp->get_Floatval() >= addexp->get_Intval();
        }
    }
}

void RelExp_gt::type_check()
{
    relexp->type_check();
    addexp->type_check();
    
    if(relexp->get_type() == 0 || addexp->get_type() == 0){
        error_msgs.push_back("gt on void type in line " + std::to_string(line_number) + "\n");
        type = 0;
        cal_flag = 0;
    }
    else if(relexp->get_type() == 1 && addexp->get_type() == 1){
        type = 1;
        cal_flag = relexp->get_cal_flag() & addexp->get_cal_flag();
        if(cal_flag){
            IntVal = relexp->get_Intval() > addexp->get_Intval();
        }
    }
    else if(relexp->get_type() == 2 && addexp->get_type() == 2){
        type = 1;
        cal_flag = relexp->get_cal_flag() & addexp->get_cal_flag();
        if(cal_flag){
            IntVal = relexp->get_Floatval() > addexp->get_Floatval();
        }
    }
    else if(relexp->get_type() == 1 && addexp->get_type() == 2){
        type = 1;
        cal_flag = relexp->get_cal_flag() & addexp->get_cal_flag();
        if(cal_flag){
            IntVal = relexp->get_Intval() > addexp->get_Floatval();
        }
    }
    else if(relexp->get_type() == 2 && addexp->get_type() == 1){
        type = 1;
        cal_flag = relexp->get_cal_flag() & addexp->get_cal_flag();
        if(cal_flag){
            IntVal = relexp->get_Floatval() > addexp->get_Intval();
        }
    }
}

void EqExp_eq::type_check()
{
    eqexp->type_check();
    relexp->type_check();
    
    if(eqexp->get_type() == 0 || relexp->get_type() == 0){
        error_msgs.push_back("eq on void type in line " + std::to_string(line_number) + "\n");
        type = 0;
        cal_flag = 0;
    }
    else if(eqexp->get_type() == 1 && relexp->get_type() == 1){
        type = 1;
        cal_flag = eqexp->get_cal_flag() & relexp->get_cal_flag();
        if(cal_flag){
            IntVal = eqexp->get_Intval() == relexp->get_Intval();
        }
    }
    else if(eqexp->get_type() == 2 && relexp->get_type() == 2){
        type = 1;
        cal_flag = eqexp->get_cal_flag() & relexp->get_cal_flag();
        if(cal_flag){
            IntVal = eqexp->get_Floatval() == relexp->get_Floatval();
        }
    }
    else if(eqexp->get_type() == 1 && relexp->get_type() == 2){
        type = 1;
        cal_flag = eqexp->get_cal_flag() & relexp->get_cal_flag();
        if(cal_flag){
            IntVal = eqexp->get_Intval() == relexp->get_Floatval();
        }
    }
    else if(eqexp->get_type() == 2 && relexp->get_type() == 1){
        type = 1;
        cal_flag = eqexp->get_cal_flag() & relexp->get_cal_flag();
        if(cal_flag){
            IntVal = eqexp->get_Floatval() == relexp->get_Intval();
        }
    }
}

void EqExp_neq::type_check()
{
    eqexp->type_check();
    relexp->type_check();
    
    if(eqexp->get_type() == 0 || relexp->get_type() == 0){
        error_msgs.push_back("neq on void type in line " + std::to_string(line_number) + "\n");
        type = 0;
        cal_flag = 0;
    }
    else if(eqexp->get_type() == 1 && relexp->get_type() == 1){
        type = 1;
        cal_flag = eqexp->get_cal_flag() & relexp->get_cal_flag();
        if(cal_flag){
            IntVal = eqexp->get_Intval() != relexp->get_Intval();
        }
    }
    else if(eqexp->get_type() == 2 && relexp->get_type() == 2){
        type = 1;
        cal_flag = eqexp->get_cal_flag() & relexp->get_cal_flag();
        if(cal_flag){
            IntVal = eqexp->get_Floatval() != relexp->get_Floatval();
        }
    }
    else if(eqexp->get_type() == 1 && relexp->get_type() == 2){
        type = 1;
        cal_flag = eqexp->get_cal_flag() & relexp->get_cal_flag();
        if(cal_flag){
            IntVal = eqexp->get_Intval() != relexp->get_Floatval();
        }
    }
    else if(eqexp->get_type() == 2 && relexp->get_type() == 1){
        type = 1;
        cal_flag = eqexp->get_cal_flag() & relexp->get_cal_flag();
        if(cal_flag){
            IntVal = eqexp->get_Floatval() != relexp->get_Intval();
        }
    }
}

void LAndExp_and::type_check()
{
    landexp->type_check();
    eqexp->type_check();
    
    if(landexp->get_type() == 0 || eqexp->get_type() == 0){
        error_msgs.push_back("gt on void type in line " + std::to_string(line_number) + "\n");
        type = 0;
        cal_flag = 0;
    }
    else if(landexp->get_type() == 1 && eqexp->get_type() == 1){
        type = 1;
        cal_flag = landexp->get_cal_flag() & eqexp->get_cal_flag();
        if(cal_flag){
            IntVal = landexp->get_Intval() && eqexp->get_Intval();
        }
    }
    else if(landexp->get_type() == 2 && eqexp->get_type() == 2){
        type = 1;
        cal_flag = landexp->get_cal_flag() & eqexp->get_cal_flag();
        if(cal_flag){
            IntVal = landexp->get_Floatval() && eqexp->get_Floatval();
        }
    }
    else if(landexp->get_type() == 1 && eqexp->get_type() == 2){
        type = 1;
        cal_flag = landexp->get_cal_flag() & eqexp->get_cal_flag();
        if(cal_flag){
            IntVal = landexp->get_Intval() && eqexp->get_Floatval();
        }
    }
    else if(landexp->get_type() == 2 && eqexp->get_type() == 1){
        type = 1;
        cal_flag = landexp->get_cal_flag() & eqexp->get_cal_flag();
        if(cal_flag){
            IntVal = landexp->get_Floatval() && eqexp->get_Intval();
        }
    }
}

void LOrExp_or::type_check()
{
    lorexp->type_check();
    landexp->type_check();
    
    if(lorexp->get_type() == 0 || landexp->get_type() == 0){
        error_msgs.push_back("neq on void type in line " + std::to_string(line_number) + "\n");
        type = 0;
        cal_flag = 0;
    }
    else if(lorexp->get_type() == 1 && landexp->get_type() == 1){
        type = 1;
        cal_flag = lorexp->get_cal_flag() & landexp->get_cal_flag();
        if(cal_flag){
            IntVal = lorexp->get_Intval() || landexp->get_Intval();
        }
    }
    else if(lorexp->get_type() == 2 && landexp->get_type() == 2){
        type = 1;
        cal_flag = lorexp->get_cal_flag() & landexp->get_cal_flag();
        if(cal_flag){
            IntVal = lorexp->get_Floatval() || landexp->get_Floatval();
        }
    }
    else if(lorexp->get_type() == 1 && landexp->get_type() == 2){
        type = 1;
        cal_flag = lorexp->get_cal_flag() & landexp->get_cal_flag();
        if(cal_flag){
            IntVal = lorexp->get_Intval() || landexp->get_Floatval();
        }
    }
    else if(lorexp->get_type() == 2 && landexp->get_type() == 1){
        type = 1;
        cal_flag = lorexp->get_cal_flag() & landexp->get_cal_flag();
        if(cal_flag){
            IntVal = lorexp->get_Floatval() || landexp->get_Intval();
        }
    }
}

void ConstExp::type_check()
{
    addexp->type_check();
    cal_flag = addexp->get_cal_flag();
    type = addexp->get_type();
    if(cal_flag){
        if(type == 1){
            IntVal = addexp->get_Intval();
        }
        else if(type == 2){
            FloatVal = addexp->get_Floatval();
        }
    }
}

void Lval::type_check()
{
    std::vector<int> arrayindexs;
    if(dims != nullptr){
        for(auto d:*dims){
            d->type_check();
            if(d->get_type() == 0){
                error_msgs.push_back("Array Dim can not be void in line " + std::to_string(line_number) + "\n");
            }
            if(d->get_type() == 2){
                error_msgs.push_back("Array Dim can not be float in line " + std::to_string(line_number) + "\n");
            }
            arrayindexs.push_back(d->get_Intval());
        }
    }
    if(symbol_table.lookup_type(name) == 1){
        scope = symbol_table.lookup_scope(name);
        ArrayVal val = symbol_table.lookup_val(name);
        if(val.const_flag){
            IntVal = get_ArrayIntVal(val,arrayindexs);
            cal_flag = 1;
        }
        type = 1;
    }
    else if(symbol_table.lookup_type(name) == 2){
        scope = symbol_table.lookup_scope(name);
        ArrayVal val = symbol_table.lookup_val(name);
        if(val.const_flag){
            FloatVal = get_ArrayFloatVal(val,arrayindexs);
            cal_flag = 1;
        }
        type = 2;
    }

    else if(semant_table.global_table.find(name) != semant_table.global_table.end()){
        ArrayVal val = semant_table.global_table[name];
        //the val is only used for global initval
        //if the lval is local, the code below is useless
        scope = 0;
        type = val.type;
        cal_flag = 1;
        if(type == 1){
            IntVal = get_ArrayIntVal(val,arrayindexs);
        }
        if(type == 2){
            FloatVal = get_ArrayFloatVal(val,arrayindexs);
        }
    }
    else{
        error_msgs.push_back("undefined var in line " + std::to_string(line_number) + "\n");
    }
}

void FuncRParams::type_check(){}

void Func_call::type_check()
{
    int funcr_params_len = 0;
    if(funcr_params != nullptr){
        auto params = ((FuncRParams*)funcr_params)->params;
        funcr_params_len = params->size();
        for(auto param:*params){
            param->type_check();
            if(param->get_type() == 0){
                error_msgs.push_back("FuncRParam is void in line " + std::to_string(line_number) + "\n");
            }
        }
    }
    //check name exist
    //set type
    auto it = semant_table.func_table.find(name);
    if(it == semant_table.func_table.end()){
        error_msgs.push_back("Function name is undefined in line " + std::to_string(line_number) + "\n");
        return;
    }
    FuncDef funcdef = it->second;
    if((funcdef->formals)->size() != funcr_params_len && funcdef->name->get_string() != "putf"){
        error_msgs.push_back("Function FuncFParams and FuncRParams are not matched in line " + std::to_string(line_number) + "\n");
    }


    type = semant_table.func_table[name]->return_type;
    //std::cerr<<name->get_string()<<" "<<type<<"\n";
}

void UnaryExp_plus::type_check()
{
    unary_exp->type_check();

    if(unary_exp->get_type() == 0){
        error_msgs.push_back("unaryplus on void type in line " + std::to_string(line_number) + "\n");
    }
    //type,Int/Float,cal_flag
    type = unary_exp->get_type();
    cal_flag = unary_exp->get_cal_flag();
    if(cal_flag){
        if(type == 1){
            IntVal = unary_exp->get_Intval();
        }
        if(type == 2){
            FloatVal = unary_exp->get_Floatval();
        }
    }
}

void UnaryExp_neg::type_check()
{
    unary_exp->type_check();
    if(unary_exp->get_type() == 0){
        error_msgs.push_back("neg on void type in line " + std::to_string(line_number) + "\n");
    }
    //type,Int/Float,cal_flag
    type = unary_exp->get_type();
    cal_flag = unary_exp->get_cal_flag();
    if(cal_flag){
        if(type == 1){
            IntVal = -unary_exp->get_Intval();
        }
        if(type == 2){
            FloatVal = -unary_exp->get_Floatval();
        }
    }
}

void UnaryExp_not::type_check()
{
    unary_exp->type_check();
    if(unary_exp->get_type() == 0){
        error_msgs.push_back("not on void type in line " + std::to_string(line_number) + "\n");
    }
    //type,Int/Float,cal_flag
    type = 1;
    cal_flag = unary_exp->get_cal_flag();
    if(cal_flag){
        if(unary_exp->get_type() == 1){
            IntVal = !unary_exp->get_Intval();
        }
        if(unary_exp->get_type() == 2){
            IntVal = !unary_exp->get_Floatval();
        }
    }
}

void IntConst::type_check()
{
    IntVal = val;
    type = 1;
    cal_flag = 1;
}

void FloatConst::type_check()
{
    FloatVal = val;
    type = 2;
    cal_flag = 1;
}

void StringConst::type_check()
{
    // Value, Name
    // Name: str%d, %d : index in map
    llvm_IR.global_def.push_back(new GlobalStringConstInstruction(str->get_string(),std::string(".str")+std::to_string(str_table.string_no[str->get_string()])));
    type = 3;
}

void PrimaryExp_branch::type_check()
{
    exp->type_check();

    cal_flag = exp->get_cal_flag();
    type = exp->get_type();
    if(cal_flag){
        if(type == 1){
            IntVal = exp->get_Intval();
        }
        if(type == 2){
            FloatVal = exp->get_Floatval();
        }
    }
}

void assign_stmt::type_check()
{
    lval->type_check();
    exp->type_check();
    if(exp->get_type() == 0){
        error_msgs.push_back("void type can not be assign_stmt's expression " + std::to_string(line_number) + "\n");
    }
}

void expr_stmt::type_check()
{
    exp->type_check();
    cal_flag = exp->get_cal_flag();
    type = exp->get_type();
    if(cal_flag){
        if(type == 1){
            IntVal = exp->get_Intval();
        }
        if(type == 2){
            FloatVal = exp->get_Floatval();
        }
    }
}

void block_stmt::type_check()
{
    b->type_check();
}

void ifelse_stmt::type_check()
{
    Cond->type_check();
    if(Cond->get_type() == 0){
        error_msgs.push_back("if cond type is invalid " + std::to_string(line_number) + "\n");
    }
    if_stmt->type_check();
    else_stmt->type_check();
}

void if_stmt::type_check()
{
    Cond->type_check();
    if(Cond->get_type() == 0){
        error_msgs.push_back("if cond type is invalid " + std::to_string(line_number) + "\n");
    }
    ifstmt->type_check();
}

void while_stmt::type_check()
{
    Cond->type_check();

    if(Cond->get_type() == 0){
        error_msgs.push_back("while cond type is invalid " + std::to_string(line_number) + "\n");
    }

    in_while_flag ++;
    body->type_check();
    in_while_flag --;
}

void continue_stmt::type_check()
{
    if(!in_while_flag){
        error_msgs.push_back("continue is not in while stmt in line " + std::to_string(line_number) + "\n");
    }
}

void break_stmt::type_check()
{
    if(!in_while_flag){
        error_msgs.push_back("break is not in while stmt in line " + std::to_string(line_number) + "\n");
    }
}

void return_stmt::type_check()
{   
    return_exp->type_check();

    // Old if condition:
    // if(return_exp->get_type() != func_returntype)
    // New if condition, considering implicit type conversion
    if(return_exp->get_type() == 0 || func_returntype == 0){
        error_msgs.push_back("return type is invalid in line " + std::to_string(line_number) + "\n");
    }
    ++return_stmt_flag;
}

void return_stmt_void::type_check()
{
    if(func_returntype != 0){
        error_msgs.push_back("return type is not void in line " + std::to_string(line_number) + "\n");
    }
}

void ConstInitVal::type_check()
{
    for(auto init:*initval){
        init->type_check();
    }
}

void ConstInitVal_exp::type_check()
{
    if(exp == nullptr){
        return;
    }
    exp->type_check();

    cal_flag = exp->get_cal_flag();
    type = exp->get_type();

    if(type == 0){
        error_msgs.push_back("initval exp can not be void in line " + std::to_string(line_number) + "\n");
    }
    if(cal_flag){
        if(type == 1){
            IntVal = exp->get_Intval();
        }
        if(type == 2){
            FloatVal = exp->get_Floatval();
        }
    }
}

void VarInitVal::type_check()
{
    for(auto init:*initval){
        init->type_check();
    }
}

void VarInitVal_exp::type_check()
{
    if(exp == nullptr){
        return;
    }
    exp->type_check();

    cal_flag = exp->get_cal_flag();
    type = exp->get_type();

    if(type == 0){
        error_msgs.push_back("initval exp can not be void in line " + std::to_string(line_number) + "\n");
    }
    if(cal_flag){
        if(type == 1){
            IntVal = exp->get_Intval();
        }
        if(type == 2){
            FloatVal = exp->get_Floatval();
        }
    }
}

void VarDef_no_init::type_check(){}

void VarDef::type_check(){}

void ConstDef::type_check(){}

void VarDecl::type_check()
{
    auto def_vector = *var_def_list;
    for(auto def:def_vector){
        //multiple def check
        if(symbol_table.lookup_scope(def->get_name()) == symbol_table.get_current_scope()){
            error_msgs.push_back("multiple definition of "+ def->get_name()->get_string() + " exists in line " + std::to_string(line_number) + "\n");
        }

        ArrayVal val;
        val.const_flag = 0;

        def->scope = symbol_table.get_current_scope();

        if(def->get_dims() != nullptr){
            auto dim_vector = *def->get_dims();
            for(auto d:dim_vector){
                d->type_check();
                if(d->get_type() == 2){
                    error_msgs.push_back("Array Dim can not be float in line " + std::to_string(line_number) + "\n");
                }
                if(d->get_cal_flag() == 0){
                    error_msgs.push_back("Array Dim must be const expression in line " + std::to_string(line_number) + "\n");
                }
            }
            for(auto d:dim_vector){
                val.dims.push_back(d->get_Intval());
            }
        }
        InitVal init = def->get_init();
        if(init != NULL){
            init->type_check();
        }
        
        val.type = type_decl;

        symbol_table.add_Symbol(def->get_name(),val);
    }
}

void ConstDecl::type_check()
{
    auto def_vector = *var_def_list;
    for(auto def:def_vector){
        //multiple def check
        if(symbol_table.lookup_scope(def->get_name()) == symbol_table.get_current_scope()){
            error_msgs.push_back("multiple definition of "+ def->get_name()->get_string() + " exists in line " + std::to_string(line_number) + "\n");
        }

        ArrayVal val;
        val.const_flag = 1;

        def->scope = symbol_table.get_current_scope();

        if(def->get_dims() != nullptr){
            auto dim_vector = *def->get_dims();
            for(auto d:dim_vector){
                d->type_check();
                if(d->get_type() == 2){
                    error_msgs.push_back("Array Dim can not be float in line " + std::to_string(line_number) + "\n");
                }
                if(d->get_cal_flag() == 0){
                    error_msgs.push_back("Array Dim must be const expression in line " + std::to_string(line_number) + "\n");
                }
            }
            for(auto d:dim_vector){
                val.dims.push_back(d->get_Intval());
            }
        }
        InitVal init = def->get_init();
        if(init != NULL){
            init->type_check();
        }

        val.type = type_decl;
        
        if(type_decl == 1){
            solve_Int_InitVal(init,val);
        }
        else{
            solve_Float_InitVal(init,val);
        }
        symbol_table.add_Symbol(def->get_name(),val);
    }
}

void BlockItem_Decl::type_check()
{
    decl->type_check();
}

void BlockItem_Stmt::type_check()
{
    stmt->type_check();
}

void __Block::type_check()
{
    symbol_table.enter_scope();
    auto item_vector = *item_list;
    for(auto item:item_vector){
        item->type_check();
    }
    symbol_table.exit_scope();
}

void __FuncFParam::type_check()
{
    
    ArrayVal val;
    val.const_flag  = 0;
    val.type = type_decl;
    type = type_decl;
    scope = 1;
    if(dims != nullptr){
        auto dim_vector = *dims;
        if(dim_vector.size() > 1){
            val.dims.push_back(-1);
        }
        for(int i = 1;i < dim_vector.size();++i){
            auto d = dim_vector[i];
            d->type_check();
            if(d->get_type() == 2){
                error_msgs.push_back("Array Dim can not be float in line " + std::to_string(line_number) + "\n");
            }
            if(d->get_cal_flag() == 0){
                error_msgs.push_back("Array Dim must be const expression in line " + std::to_string(line_number) + "\n");
            }
            val.dims.push_back(d->get_Intval());
        }
    }
    if(symbol_table.lookup_scope(name) != -1){
        error_msgs.push_back("multiple difinitions of formals in function " + name->get_string() + " in line " + std::to_string(line_number) + "\n");
    }
    symbol_table.add_Symbol(name,val);
}

void __FuncDef::type_check()
{
    symbol_table.enter_scope();
    func_returntype = return_type;
    return_stmt_flag = 0;
    
    if(semant_table.func_table.find(name) != semant_table.func_table.end()){
        error_msgs.push_back("multilpe difinitions of functions " + name->get_string() + " in line " + std::to_string(line_number) + "\n");
    }
    if(name -> get_string() == "main"){
        main_flag = 1;
    }
    semant_table.func_table[name] = this;
    auto formal_vector = *formals;
    for(auto formal:formal_vector){
        formal->type_check();
    }
    
    //block type check
    auto item_vector = *(block->item_list);
    for(auto item:item_vector){
        item->type_check();
    }

    if(!return_stmt_flag && return_type){
        error_msgs.push_back("functions " + name->get_string() + " of type non-void has no return in line " + std::to_string(line_number) + "\n");
    }
    symbol_table.exit_scope();

}

/*
in this function,solve all the global decl
and in other decl function,we only solve the local
*/
void CompUnit_Decl::type_check()
{
    int typedecl = decl->get_typedecl();
    auto def_vector = *decl->get_defs();
    for(auto def:def_vector){
        
        if(semant_table.global_table.find(def->get_name()) != semant_table.global_table.end()){
            error_msgs.push_back("multilpe difinitions of vars in line " + std::to_string(line_number) + "\n");
        }

        ArrayVal val;
        val.const_flag = 1;

        def->scope = 0;

        if(def->get_dims() != nullptr){
            auto dim_vector = *def->get_dims();
            for(auto d:dim_vector){
                d->type_check();
                if(d->get_type() == 2){
                    error_msgs.push_back("Array Dim can not be float in line " + std::to_string(line_number) + "\n");
                }
                if(d->get_cal_flag() == 0){
                    error_msgs.push_back("Array Dim must be const expression " + std::to_string(line_number) + "\n");
                }
            }
            for(auto d:dim_vector){
                val.dims.push_back(d->get_Intval());
            }
        }
        
        InitVal init = def->get_init();
        if(init != NULL){
            init->type_check();
        }
        
        val.type = typedecl;
        
        if(typedecl == 1){
            solve_Int_InitVal(init,val);
        }
        else if(typedecl == 2){
            solve_Float_InitVal(init,val);
        }
        //for(auto d:val.dims){std::cerr<<d<<" ";}std::cerr<<"\n";

        semant_table.global_table[def->get_name()] = val;

        //for(auto d:val.dims){std::cerr<<d<<" ";}std::cerr<<"\n";
        //add Global Decl llvm ins
        LLVMType lltype;
        if(typedecl == 1){
            lltype = I32;
        }
        else if(typedecl == 2){
            lltype = FLOAT32;
        }
        
        Instruction globalDecl;
        if(def->get_dims()!= nullptr){
            globalDecl = new GlobalVarDefineInstruction(def->get_name()->get_string(),lltype,val);
        }else if(init == nullptr){
            globalDecl = new GlobalVarDefineInstruction(def->get_name()->get_string(),lltype,nullptr);
        }else if(lltype == I32){
            globalDecl = new GlobalVarDefineInstruction(def->get_name()->get_string(),lltype,new ImmI32Operand(val.IntInitVals[0]));
        }else if(lltype == FLOAT32){
            globalDecl = new GlobalVarDefineInstruction(def->get_name()->get_string(),lltype,new ImmF32Operand(val.FloatInitVals[0]));
        }
        llvm_IR.global_def.push_back(globalDecl);

        if(def->is_const() && def->get_dims() == nullptr){
            global_const_map[def->get_name()->get_string()] = val;
        }
        global_map[def->get_name()->get_string()] = ++global_var_cnt; 
    }
}

void CompUnit_FuncDef::type_check()
{
    func_def->type_check();
}