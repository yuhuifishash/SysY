#include "cfg.h"
#include "Instruction.h"

extern std::map<std::string,CFG*> CFGMap;

static std::map<int,bool> InvariantMap;
static std::map<int,Instruction> ResultMap;

bool IsDomExitBB(CFG* cfg,LLVMBlock BB,NaturalLoop* L)
{
    for(auto ExitBB:L->exit_nodes){
        if(!cfg->IfDominate(BB->block_id,ExitBB->block_id)){
            return false;
        }
    }
    return true;
}

bool isInvariant(CFG* C,Instruction I,NaturalLoop* L)
{
    if(I->GetOpcode() == STORE){return false;}
    if(I->GetOpcode() == LOAD){return false;}
    if(I->GetOpcode() == PHI){return false;}
    if(I->GetOpcode() == CALL){
        auto tI = (CallInstruction*)I;
        if(CFGMap.find(tI->GetFunctionName()) == CFGMap.end()){return false;}
        auto target_cfg = CFGMap[tI->GetFunctionName()];
        if(!target_cfg->FunctionInfo.is_pure_function){
            return false;//not pure function, can not move
        }
        //I->printIR(std::cerr);
    }
    if(I->GetOpcode() == ICMP){return false;}
    if(I->GetOpcode() == FCMP){return false;}
    if(I->GetOpcode() == BR_COND || I->GetOpcode() == BR_UNCOND){return false;}

    for(auto op:I->GetNonResultOperands()){
        if(op->GetOperandType() == op->IMMI32 || op->GetOperandType() == op->IMMF32){
            continue;    
        }
        if(op->GetOperandType() == op->GLOBAL){
            continue;
        }
        if(op->GetOperandType() == op->REG){
            int op_reg = ((RegOperand*)op)->GetRegNo();
            if(InvariantMap[op_reg] == 1){continue;}//reg operand is invariant
            Instruction resultI = ResultMap[op_reg];
            int I_BB_id = resultI->GetBlockID();
            auto I_BB = (*(C->block_map))[I_BB_id];

            //the reg operand is def in the loop, the reg operand is not invariant
            if(L->loop_nodes.find(I_BB) != L->loop_nodes.end()){
                return false;
            }else{//def instruction is out of loop, the reg operand is invariant
                InvariantMap[op_reg] = 1;
                continue;
            }
            continue;
        }
        return false;
    }
    //I->printIR(std::cerr);
    if(I->GetResultRegNo() != -1){//mark the reg operand to be invariant
        InvariantMap[I->GetResultRegNo()] = 1;
    }
    return true;
}

std::vector<Instruction> CalculateInvariant(CFG* C, NaturalLoop* L)
{
    //std::cerr<<"loop ";for(auto lx:L->loop_nodes){std::cerr<<lx->block_id<<" ";}std::cerr<<"\n";
    //std::cerr<<"exit nodes ";for(auto lx:L->exit_nodes){std::cerr<<lx->block_id<<" ";}std::cerr<<"\n";

    InvariantMap.clear();

    std::vector<Instruction> InvariantInsList;
    std::set<Instruction> InsVisited;

    int change_flag = 1;
    while(change_flag){
        change_flag = 0;

        for(auto LBB:L->loop_nodes){
            for(auto I:LBB->Instruction_list){
                if(InsVisited.find(I) == InsVisited.end() && isInvariant(C,I,L)){
                    change_flag = true;
                    InsVisited.insert(I);
                    InvariantInsList.push_back(I);
                }
            }
        }
    }
    return InvariantInsList;
}

void CalculateLoopRegisterPressure(CFG* C,NaturalLoop* L)
{
    
}


void DFSLoopForest(CFG* C, NaturalLoopForest& loop_forest,NaturalLoop* L)
{
    auto InvariantInsList = CalculateInvariant(C,L);
    //for(auto I:InvariantInsList){I->PrintIR(std::cerr);}
    std::set<Instruction> EraseSet;

    //remove end instructions temporarily to accelerate instruction inserting
    auto endI = *(L->preheader->Instruction_list.end() - 1);
    L->preheader->Instruction_list.pop_back();

    for(auto it = InvariantInsList.begin();it != InvariantInsList.end();){
        auto I = *it;
        //the def instruction should dominate all the exitingBB
        if(IsDomExitBB(C,(*(C->block_map))[I->GetBlockID()],L)){
            //TODO: calculate the loop register pressure

            //move to preheader
            EraseSet.insert(I);
            I->SetBlockID(L->preheader->block_id);
            L->preheader->InsertInstruction(1,I);
            it = InvariantInsList.erase(it);//erase this Instruction
            std::cerr<<"code motion ";I->PrintIR(std::cerr);
        }else{
            ++it;
        }
    }
    if(!EraseSet.empty()){
        for(auto bb:L->loop_nodes){
            auto tmp_Instruction_list = bb->Instruction_list;
            bb->Instruction_list.clear();
            for(auto I:tmp_Instruction_list){
                if(EraseSet.find(I) != EraseSet.end()){continue;}
                bb->InsertInstruction(1,I);
            }
        }
    }


    L->preheader->InsertInstruction(1,endI);

    for(auto lv:loop_forest.loopG[L->loop_id]){
        DFSLoopForest(C,loop_forest,lv);
    }
}


void LoopInvariantCodeMotion(CFG* C)
{
    ResultMap.clear();
    InvariantMap.clear();
    for(auto formal_reg:C->function_def->formals_reg){
        ResultMap[((RegOperand*)formal_reg)->GetRegNo()] = C->function_def;
    }

    for(auto [id,bb]:*C->block_map){
        for(auto I:bb->Instruction_list){
            int v = I->GetResultRegNo();
            if(v != -1){//result exists
                ResultMap[v] = I;
            }
        }
    }
    for(auto l:C->LoopForest.loop_set){
        if(l->fa_loop == nullptr){
            DFSLoopForest(C,C->LoopForest,l);
        }
    }
}