// DOING(): ValueHashTable
#include "hash_table.h"
#include "../../../include/ir.h"
#include <set>
#include <string>
#include <utility>

extern std::map<std::string, CFG *> CFGMap;

static std::map<LLVMType, std::string> TypeMap = {{I32, "i32"}, {FLOAT32, "float32"}, {PTR, "ptr"}, {VOID, "void"},
                                                  {I8, "i8"},   {I1, "i1"},           {I64, "i64"}, {DOUBLE, "double"}};
// enum LLVMType { I32 = 1, FLOAT32 = 2, PTR = 3, VOID = 4, I8 = 5, I1 = 6, I64 = 7, DOUBLE = 8 };

// add3 sub4 mul8 div9
// fadd12 fsub13 fmul14 fdiv15
// mod17 xor18
// add_mod30 umin31 umax32 smin33 smax34
// 3,4,8,9,12,13,14,15,17,18,30,31,32,33,34
static std::set<int> ArithmeticSet = {3, 4, 8, 9, 12, 13, 14, 15, 17, 18, 30, 31, 32, 33, 34};

int HashTable::lookupOrAdd(Instruction I) {
    auto opcode_ = I->GetOpcode();
    switch (opcode_) {
    // case STORE:
    //     return lookupOrAddStore(I);
    //     break;
    // case CALL:
    //     return lookupOrAddCall(I);
    //     break;
    case GETELEMENTPTR:
        return lookupOrAddGep(I);
        break;
    // case PHI:
    //     return lookupOrAddPhi(I);
    //     break;
    default:
        break;
    }
    if (ArithmeticSet.find(opcode_) != ArithmeticSet.end()) {
        return lookupOrAddArithmetic(I);
    }
    return lookupOrAddOthers(I);
}

void HashTable::defineDFS(CFG *C) {
    C->BuildCFG();
    C->BuildDominatorTree();
    expr_number = 0;
    valuemap.clear();
    resultmap.clear();
    // valuevetor.clear();
    definemap.clear();
    auto DomTree = C->DomTree;
    auto G = DomTree.dom_tree;
    auto blockmap = *C->block_map;
    std::map<Instruction, Instruction> EraseMap;
    std::function<void(int)> DFS = [&](int ubbid) {
        auto ubb = blockmap[ubbid];
        for (auto [id, bb] : *C->block_map) {
            for (auto I : bb->Instruction_list) {
                if (I->GetResultReg() != nullptr) {
                    definemap[I->GetResultRegNo()] = I;
                }
            }
        }
        for (int i = 0; i < G[ubbid].size(); ++i) {
            auto vbb = G[ubbid][i];
            auto vbbid = vbb->block_id;
            DFS(vbbid);
        }
    };
    DFS(0);
    auto FunctiondefI = C->function_def;
    for (auto op : FunctiondefI->formals_reg) {
        valuemap[op->GetFullName()] = ++expr_number;
        if (op->GetOperandType() == BasicOperand::REG) {
            resultmap[((RegOperand *)op)->GetRegNo()] = expr_number;
        }
    }
}
int HashTable::lookupOrAddOthers(Instruction I) {
    if (I->GetResultReg() == nullptr) {
        return -1;
    }
    auto op = I->GetResultReg();
    auto opstr = op->GetFullName();
    auto RegOp = (RegOperand *)op;
    auto RegNo = RegOp->GetRegNo();
    if (valuemap.find(opstr) == valuemap.end() && resultmap.find(RegNo) == resultmap.end()) {
        valuemap[opstr] = ++expr_number;
        return expr_number;
    }
    if (valuemap.find(opstr) != valuemap.end()) {
        return valuemap[opstr];
    }
    return resultmap[RegNo];
}
int HashTable::lookupOrAddReg(Operand op) {
    if (op == nullptr) {
        return -1;
    }
    auto opstr = op->GetFullName();
    if (op->GetOperandType() != BasicOperand::REG) {
        if (valuemap.find(opstr) == valuemap.end()) {
            valuemap[opstr] = ++expr_number;
            return expr_number;
        }
        return valuemap[opstr];
    }
    auto RegOp = (RegOperand *)op;
    auto RegNo = RegOp->GetRegNo();
    if (valuemap.find(opstr) == valuemap.end() && resultmap.find(RegNo) == resultmap.end()) {
        if (definemap[RegNo]->GetOpcode() == PHI) {
            valuemap[opstr] = ++expr_number;
            return expr_number;
        }
        auto now = lookupOrAdd(definemap[RegNo]);
        if (now == -1) {
            valuemap[opstr] = ++expr_number;
            return expr_number;
        }
        return now;
    }
    if (valuemap.find(opstr) != valuemap.end()) {
        return valuemap[opstr];
    }
    return resultmap[RegNo];
}

// store
// Syntax: store <ty> <value>, ptr<pointer>
int HashTable::lookupOrAddStore(Instruction I) {
    auto StoreI = (StoreInstruction *)I;
    auto valueValue = lookupOrAddReg(StoreI->GetValue());
    auto ptrValue = lookupOrAddReg(StoreI->GetPointer());
    std::string str = "store " + TypeMap[StoreI->GetDataType()] + " %v" + std::to_string(valueValue) + ", ptr %v" +
                      std::to_string(ptrValue);
    if (valuemap.find(str) == valuemap.end()) {
        valuemap[str] = ++expr_number;
    }
    return valuemap[str];
}

// add <ty> <op1>,<op2>
// sub <ty> <op1>,<op2>
// mul <ty> <op1>,<op2>
// div <ty> <op1>,<op2>
// add_mod <ty> <op1>,<op2>,<op3>
// add3 sub4 mul8 div9
// fadd12 fsub13 fmul14 fdiv15
// mod17 xor18
// add_mod30 umin31 umax32 smin33 smax34
// 3,4,8,9,12,13,14,15,17,18,30,31,32,33,34
static std::set<int> ArithmeticNeedSort = {3, 8, 12, 14, 18, 30, 31, 32, 33, 34};
int HashTable::lookupOrAddArithmetic(Instruction I) {
    auto ArithmeticI = (ArithmeticInstruction *)I;
    auto type_ = ArithmeticI->GetDataType();
    auto op1Value = lookupOrAddReg(ArithmeticI->GetOperand1());
    auto op2Value = lookupOrAddReg(ArithmeticI->GetOperand2());
    auto opcode_ = ArithmeticI->GetOpcode();
    int op3Value = -1;
    if (ArithmeticI->GetOperand3() != nullptr) {
        op3Value = lookupOrAddReg(ArithmeticI->GetOperand3());
    }
    if (ArithmeticNeedSort.find((LLVMIROpcode)ArithmeticI->GetOpcode()) != ArithmeticNeedSort.end() &&
        op1Value > op2Value) {
        std::swap(op1Value, op2Value);
    }
    std::string str;
    str = "Arithmetic " + std::to_string(opcode_) + " type" + TypeMap[type_] + " %v" + std::to_string(op1Value) +
          ",%v" + std::to_string(op2Value);
    if (op3Value != -1) {
        str += ",%v" + std::to_string(op3Value);
    }

    auto resultstr = ArithmeticI->GetResultRegNo();
    if (valuemap.find(str) == valuemap.end()) {
        valuemap[str] = ++expr_number;
        resultmap[resultstr] = expr_number;
    }
    resultmap[resultstr] = valuemap[str];
    return valuemap[str];
}
// getelementptr <ty>, <N x ptr> <ptrval>, [inrange] <vector index type> <idx>
int HashTable::lookupOrAddGep(Instruction I) {
    auto GepI = (GetElementptrInstruction *)I;
    std::string str = "getelementptr ";
    auto dims_ = GepI->GetDims();
    if (dims_.empty())
        str += TypeMap[GepI->GetType()];
    else {
        for (int dim : dims_) {
            str += "[" + std::to_string(dim) + " x ";
        }
        str += TypeMap[GepI->GetType()] + std::string(dims_.size(), ']');
    }
    auto ptrValue = lookupOrAddReg(GepI->GetPtrVal());
    str += ", ptr %v" + std::to_string(ptrValue);
    for (Operand idx : GepI->GetIndexes())
        str += ", i32 %v" + std::to_string(lookupOrAddReg(idx));
    auto resultstr = GepI->GetResultRegNo();
    if (valuemap.find(str) == valuemap.end()) {
        valuemap[str] = ++expr_number;
        resultmap[resultstr] = expr_number;
    }
    resultmap[resultstr] = valuemap[str];
    return valuemap[str];
}
// phi <ty> [val1,label1],[val2,label2],……
int HashTable::lookupOrAddPhi(Instruction I) {
    auto PhiI = (PhiInstruction *)I;
    std::string str = "phi " + TypeMap[PhiI->GetDataType()] + " ";
    std::set<std::pair<int, Operand>> PairSet;
    auto phi_list = PhiI->GetPhiList();
    for (auto it = phi_list.begin(); it != phi_list.end(); ++it) {
        auto value_ = lookupOrAddReg(it->second);
        PairSet.insert(std::make_pair(value_, it->first));
    }
    for (auto it = PairSet.begin(); it != PairSet.end(); ++it) {
        str += "[%v" + std::to_string(it->first) + "," + it->second->GetFullName() + "]";
        auto jt = it;
        if ((++jt) != PairSet.end())
            str += ",";
    }
    auto resultstr = PhiI->GetResultRegNo();
    if (valuemap.find(str) == valuemap.end()) {
        valuemap[str] = ++expr_number;
        // stringmap[expr_number] = str;
        resultmap[resultstr] = expr_number;
    }
    resultmap[resultstr] = valuemap[str];
    // valuevetor[valuemap[str]].push_back(I->GetResultReg());
    return valuemap[str];
}