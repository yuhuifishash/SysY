#include "../include/ir.h"
#include "../ir_gen/semant.h"
#include "../parser/SysY_parser.tab.h"

#include "./common/machine_passes/register_alloc/fast_linear_scan/fast_linear_scan.h"
#include "./riscv64gc/instruction_print/riscv64_printer.h"
#include "./riscv64gc/instruction_select/riscv64_instSelect.h"
#include "./riscv64gc/instruction_select/riscv64_lowercopy.h"
#include "./riscv64gc/instruction_select/riscv64_lowerframe.h"
#include "./riscv64gc/instruction_select/riscv64_lowerimm.h"
#include "./riscv64gc/optimize/riscv64_peehole.h"
#include "./riscv64gc/optimize/riscv64_cse.h"
#include "./riscv64gc/optimize/riscv64_licm.h"
#include "./riscv64gc/riscv64.h"
#include "./riscv64gc/optimize/riscv64_branch_predict.h"
#include "./riscv64gc/optimize/riscv64_ins_schedule.h"

#include <assert.h>
#include <cstdio>
#include <cstring>
#include <fstream>
#include <iomanip>
#include <iostream>

#define AggressiveOptimize

#define ALIGNED_FORMAT_OUTPUT_HEAD(STR, CISU, PROP, STR3, STR4)                                                        \
    fout << std::fixed << std::setprecision(12) << std::setw(15) << std::left << STR << " " << std::setw(20)           \
         << std::left << CISU << " " << std::setw(32) << std::left << PROP << std::setw(15) << std::left << STR3       \
         << std::setw(15) << std::left << STR4 << "\n"

extern LLVMIR llvmIR;
extern Program ast_root;
extern FILE *yyin;
extern int error_num;
int line_number = 0;
int col_number = 0;
int cur_col_number = 0;
std::ofstream fout;
StringTable str_table;
IdTable id_table;
extern int yylex();
extern YYSTYPE yylval;
extern char *yytext;
extern std::vector<std::string> error_msgs;
void PrintLexerResult(std::ostream &s, char *yytext, YYSTYPE yylval, int token, int line_number);

#define step_tag 2
#define o_tag 3
#define file_out 4
#define file_in 1
#define optimize_tag 5
/*
-lexer
-parser
-llvm
-S
SysYc *.sy -S -o *.s (-O1)
*/

void GlobalConstReplace(CFG *C);
void MakeFunctionOneExit(CFG *C);
void Mem2Reg(CFG *);
void SparseConditionalConstantPropagation(CFG *C);
void SimpleDCE(CFG *C);
void EliminateEmptyIndexGEP(CFG *C);
void TailRecursiveEliminate(CFG *C);
void SimpleCSE(CFG *C);
void InstSimplify(CFG *C);
void InstCombine(CFG *C);
void SimplifyCFG(CFG *C);
void LoopSimplify(CFG *C);
void LoopRotate(CFG *C);
void LoopInvariantCodeMotion(CFG *C);
void LoopClosedSSA(CFG *C);
void ScalarEvolution(CFG *C);
void ConstantLoopFullyUnroll(CFG *C);
void SimpleDSE(CFG *C);
void EliminateSimpleConstArrayValue(CFG *C);
void GEPStrengthReduce(CFG *C);
void AggressiveDeadCodeElimination(CFG *C);
void LoopIdomRecognize(CFG *C);
void LoopGepStrengthReduce(CFG *C);
void OnlyBasicBlockCSE(CFG *C);
void LoopFusion(CFG *C);
void BranchCSE(CFG *C);
void SimpleForLoopUnroll(CFG *C);
void ElimateGVNPhi(CFG *C);
void MinMaxRecognize(CFG *C);
void LatchPhiCombine(CFG* C);
void LoopIndVarSimplify(CFG* C);

void SimpleAliasAnalysis(LLVMIR *IR);
void FunctionInline(LLVMIR *IR);
void SimpleMemoryDependenceAnalysis(LLVMIR *IR);
void FindNoWriteStaticGlobal(LLVMIR *IR);
void AddParallelLib(LLVMIR *IR);
void EliminateUselessFunction(LLVMIR* IR);
void EraseNoUseGlobal(LLVMIR *IR);

void LoopParallel(CFG *C, LLVMIR* IR);



enum Target { ARMV7 = 1, RV64GC = 2 } target;

int main(int argc, char **argv) {
    // target = ARMV7;
    target = RV64GC;

    FILE *fin = fopen(argv[file_in], "r");
    if (fin == NULL) {
        std::cerr << "Could not open input file " << argv[file_in] << std::endl;
        exit(1);
    }
    yyin = fin;
    fout.open(argv[file_out]);
    line_number = 1;

    if (strcmp(argv[step_tag], "-lexer") == 0) {
        int token;
        ALIGNED_FORMAT_OUTPUT_HEAD("Token", "Lexeme", "Property", "Line", "Column");
        while ((token = yylex()) != 0) {
            PrintLexerResult(fout, yytext, yylval, token, line_number);
        }
        fout.close();
        return 0;
    }
    yyparse();

    if (error_num > 0) {
        fout << "Parser error" << std::endl;
        fout.close();
        return 0;
    }

    if (strcmp(argv[step_tag], "-parser") == 0) {
        ast_root->printAST(fout, 0);
        fout.close();
        return 0;
    }

    ast_root->TypeCheck();
    if (error_msgs.size() > 0) {
        for (auto msg : error_msgs) {
            fout << msg << std::endl;
        }
        fout.close();
        return 0;
    }

    if (strcmp(argv[step_tag], "-semant") == 0) {
        ast_root->printAST(fout, 0);
        return 0;
    }

    ast_root->codeIR();

    llvmIR.CFGInit();
    llvmIR.BuildCFG();

    bool optimize_flag =
    (argc == 6 && (strcmp(argv[optimize_tag], "-O1") == 0 || strcmp(argv[optimize_tag], "-O2") == 0));
    if (optimize_flag) {
        // llvmIR.PassExecutor(FindNoWriteStaticGlobal); //TODO()
        llvmIR.PassExecutor(GlobalConstReplace);
        llvmIR.PassExecutor(EliminateEmptyIndexGEP);
        llvmIR.PassExecutor(TailRecursiveEliminate);
        llvmIR.PassExecutor(MakeFunctionOneExit);

        llvmIR.PassExecutor(Mem2Reg);
        llvmIR.PassExecutor(SparseConditionalConstantPropagation);
        // llvmIR.PassExecutor(EliminateSimpleConstArrayValue); //TODO()

        llvmIR.PassExecutor(SimplifyCFG);
        llvmIR.PassExecutor(InstSimplify);
        llvmIR.PassExecutor(InstCombine);
        llvmIR.PassExecutor(MinMaxRecognize);

        llvmIR.PassExecutor(SimpleAliasAnalysis);
        llvmIR.BuildFunctionInfo();
        llvmIR.PassExecutor(SimpleDCE);

        llvmIR.PassExecutor(AggressiveDeadCodeElimination);
        llvmIR.ElimateUnreachedInstructionAndBlocks();
        llvmIR.BuildCFG();
        llvmIR.BuildDominatorTree();

        llvmIR.PassExecutor(SimpleMemoryDependenceAnalysis);
        llvmIR.PassExecutor(OnlyBasicBlockCSE);
        llvmIR.PassExecutor(SimpleDSE);

        llvmIR.BuildLoopInfo();
        llvmIR.PassExecutor(LoopSimplify);
        llvmIR.PassExecutor(LatchPhiCombine);
        llvmIR.PassExecutor(SparseConditionalConstantPropagation);
        llvmIR.PassExecutor(LoopClosedSSA);
        llvmIR.PassExecutor(LoopRotate);
        llvmIR.PassExecutor(SparseConditionalConstantPropagation);
        llvmIR.PassExecutor(SimplifyCFG);

        llvmIR.BuildLoopInfo();
        llvmIR.PassExecutor(LoopSimplify);
        llvmIR.PassExecutor(SparseConditionalConstantPropagation);
        llvmIR.PassExecutor(SimpleAliasAnalysis);
        llvmIR.PassExecutor(LoopInvariantCodeMotion);

        llvmIR.PassExecutor(SimplifyCFG);
        llvmIR.PassExecutor(SimpleDCE);
        llvmIR.PassExecutor(SimpleCSE);
        llvmIR.PassExecutor(BranchCSE);
        llvmIR.ElimateUnreachedInstructionAndBlocks();
        llvmIR.BuildCFG();
        llvmIR.BuildDominatorTree();

        llvmIR.PassExecutor(SparseConditionalConstantPropagation);

        llvmIR.PassExecutor(SimplifyCFG);
        llvmIR.PassExecutor(InstCombine);
        llvmIR.PassExecutor(MinMaxRecognize);
        llvmIR.PassExecutor(SimpleDCE);

        llvmIR.BuildFunctionInfo();
        llvmIR.PassExecutor(FunctionInline);
        llvmIR.PassExecutor(EliminateUselessFunction);

        // repeat 5 times
        for (int i = 0; i < 5; ++i) {
            llvmIR.BuildLoopInfo();
            llvmIR.PassExecutor(LoopSimplify);
            llvmIR.PassExecutor(SparseConditionalConstantPropagation);
            llvmIR.PassExecutor(LoopClosedSSA);
            llvmIR.PassExecutor(ScalarEvolution);
            llvmIR.PassExecutor(ConstantLoopFullyUnroll);

            llvmIR.PassExecutor(SparseConditionalConstantPropagation);
            llvmIR.PassExecutor(SimplifyCFG);

            llvmIR.PassExecutor(SimpleAliasAnalysis);
            llvmIR.PassExecutor(SimpleCSE);
            llvmIR.PassExecutor(SparseConditionalConstantPropagation);

            llvmIR.BuildLoopInfo();
            llvmIR.PassExecutor(LoopSimplify);
            llvmIR.PassExecutor(LoopInvariantCodeMotion);

            llvmIR.PassExecutor(SparseConditionalConstantPropagation);
            llvmIR.PassExecutor(SimplifyCFG);
            llvmIR.PassExecutor(InstCombine);
            llvmIR.PassExecutor(SimpleDCE);
        }
        llvmIR.PassExecutor(BranchCSE);
        llvmIR.PassExecutor(SparseConditionalConstantPropagation);
        llvmIR.PassExecutor(SimpleDSE);
        llvmIR.PassExecutor(SimpleDCE);

        // TODO():GVN/GCM
        
        for(int i = 0;i < 5;++i){
            llvmIR.BuildLoopInfo();
            llvmIR.PassExecutor(LoopSimplify);
            llvmIR.PassExecutor(SparseConditionalConstantPropagation);
            llvmIR.PassExecutor(LoopClosedSSA);
            llvmIR.PassExecutor(ScalarEvolution);
            llvmIR.PassExecutor(LoopIdomRecognize);
            llvmIR.PassExecutor(SimplifyCFG);
        }

        llvmIR.BuildFunctionInfo();
        llvmIR.PassExecutor(FunctionInline);
        llvmIR.PassExecutor(SimplifyCFG);
        llvmIR.PassExecutor(MinMaxRecognize);

        llvmIR.PassExecutor(AggressiveDeadCodeElimination);
        llvmIR.ElimateUnreachedInstructionAndBlocks(); 
        llvmIR.BuildCFG();
        llvmIR.BuildDominatorTree();

        #ifdef AggressiveOptimize
            for(int i = 0;i < 4; ++i){
                llvmIR.BuildLoopInfo();
                llvmIR.PassExecutor(LoopSimplify);
                llvmIR.PassExecutor(SparseConditionalConstantPropagation);
                llvmIR.PassExecutor(LoopClosedSSA);
                llvmIR.PassExecutor(ScalarEvolution);
                llvmIR.PassExecutor(SimpleAliasAnalysis);
                llvmIR.PassExecutor(LoopFusion);
                llvmIR.PassExecutor(SimplifyCFG);
            }
            llvmIR.PassExecutor(SimpleDCE);
            llvmIR.PassExecutor(SimpleAliasAnalysis);
            llvmIR.PassExecutor(SimpleCSE);
            llvmIR.PassExecutor(SimpleDSE);
            llvmIR.PassExecutor(SparseConditionalConstantPropagation);
        #endif

        #ifdef AggressiveOptimize
            llvmIR.PassExecutor(AddParallelLib);

            llvmIR.BuildLoopInfo();
            llvmIR.PassExecutor(LoopSimplify);
            llvmIR.PassExecutor(SparseConditionalConstantPropagation);
            llvmIR.PassExecutor(LoopClosedSSA);
            llvmIR.PassExecutor(ScalarEvolution);
            llvmIR.PassExecutor(SimpleAliasAnalysis);
            llvmIR.PassExecutor(LoopParallel);
            llvmIR.PassExecutor(SparseConditionalConstantPropagation);
            llvmIR.PassExecutor(SimplifyCFG);
        #endif


        #ifdef AggressiveOptimize
            llvmIR.BuildLoopInfo();
            llvmIR.PassExecutor(LoopSimplify);
            llvmIR.PassExecutor(SparseConditionalConstantPropagation);
            llvmIR.PassExecutor(LoopClosedSSA);
            llvmIR.PassExecutor(ScalarEvolution);
            llvmIR.PassExecutor(SimpleForLoopUnroll);
            llvmIR.PassExecutor(SparseConditionalConstantPropagation);
            llvmIR.PassExecutor(SimplifyCFG);
            llvmIR.PassExecutor(SimpleDCE);
            llvmIR.PassExecutor(InstSimplify);
            llvmIR.PassExecutor(InstCombine);
            llvmIR.PassExecutor(InstSimplify);
            llvmIR.PassExecutor(SimpleAliasAnalysis);
            llvmIR.PassExecutor(SimpleCSE);
            llvmIR.PassExecutor(SimpleDCE);
        #endif
        
        llvmIR.PassExecutor(SparseConditionalConstantPropagation);
        llvmIR.PassExecutor(GEPStrengthReduce);
        llvmIR.BuildLoopInfo();
        llvmIR.PassExecutor(LoopSimplify);
        llvmIR.PassExecutor(SparseConditionalConstantPropagation);
        llvmIR.PassExecutor(ScalarEvolution);
        llvmIR.PassExecutor(LoopGepStrengthReduce);
        llvmIR.PassExecutor(SimpleAliasAnalysis);
        llvmIR.PassExecutor(SimpleCSE);
        llvmIR.PassExecutor(SparseConditionalConstantPropagation);

        llvmIR.PassExecutor(LoopIndVarSimplify);
        llvmIR.PassExecutor(InstCombine);
        llvmIR.PassExecutor(SimpleAliasAnalysis);
        llvmIR.PassExecutor(SimpleCSE);
        llvmIR.PassExecutor(SparseConditionalConstantPropagation);
        llvmIR.PassExecutor(InstCombine);
        llvmIR.PassExecutor(SimpleDCE);
        llvmIR.PassExecutor(SimplifyCFG);
        llvmIR.PassExecutor(EraseNoUseGlobal);
    } else {
        llvmIR.PassExecutor(GlobalConstReplace);
        llvmIR.PassExecutor(MakeFunctionOneExit);
    }

    if (strcmp(argv[step_tag], "-llvm") == 0) {
        llvmIR.printIR(fout);
        fout.close();
        return 0;
    }
    if (strcmp(argv[step_tag], "-S") == 0) {
        MachineUnit *m_unit = new RiscV64Unit();
        RiscV64Register regs;
        RiscV64Spiller spiller;

        // std::cerr<<"Select\n";
        RiscV64Selector(m_unit, &llvmIR).SelectInstructionAndBuildCFG();
        // std::cerr<<"LowerFrame\n";
        RiscV64LowerFrame(m_unit).Execute();
        // std::cerr<<"LowerImm\n";
        RiscV64AlgStrenghReduce(m_unit).Execute();
        RiscV64LowerImm(m_unit).Execute();
        // std::cerr<<"PhiDestruction\n";

        if(optimize_flag){
            RiscV64SSAPeehole(m_unit).Execute();
            RiscV64SSADeadDefElimate(m_unit).Execute();
            RiscV64CSE(m_unit).Execute();
            RiscV64LICM(m_unit).Execute();
            RiscV64CSE(m_unit).Execute();
        }

        MachinePhiDestruction(m_unit).Execute();
        RiscV64LowerFImmCopy(m_unit).Execute();
        RiscV64LowerIImmCopy(m_unit).Execute();
        // std::cerr<<"Alloc\n";
        if(optimize_flag){
            RiscV64InstructionSchedule(m_unit).Execute();
        }
        FastLinearScan(m_unit, &regs, &spiller).Execute();
        // std::cerr<<"LowerCopy\n";
        RiscV64LowerCopy(m_unit).Execute();
        // std::cerr<<"LowerStack\n";
        RiscV64LowerStack(m_unit).Execute();
        // std::cerr<<"End\n";
        
        RiscV64BranchPredict(m_unit).Execute();

        RiscV64Printer(fout, m_unit).emit();
        // RiscV64Printer(std::cout, m_unit).emit();
    }
    if (strcmp(argv[step_tag], "-select") == 0) {
        MachineUnit *m_unit = new RiscV64Unit();
        RiscV64Register regs;
        RiscV64Spiller spiller;

        // std::cerr<<"Select\n";
        RiscV64Selector(m_unit, &llvmIR).SelectInstructionAndBuildCFG();
        // std::cerr<<"LowerFrame\n";
        RiscV64LowerFrame(m_unit).Execute();
        // std::cerr<<"LowerImm\n";
        RiscV64AlgStrenghReduce(m_unit).Execute();
        RiscV64LowerImm(m_unit).Execute();
        // std::cerr<<"PhiDestruction\n";
        if(optimize_flag){
            RiscV64SSAPeehole(m_unit).Execute();
            RiscV64SSADeadDefElimate(m_unit).Execute();
            RiscV64CSE(m_unit).Execute();
            RiscV64LICM(m_unit).Execute();
            RiscV64CSE(m_unit).Execute();
        }
        MachinePhiDestruction(m_unit).Execute();
        RiscV64LowerFImmCopy(m_unit).Execute();
        RiscV64LowerIImmCopy(m_unit).Execute();
        // RiscV64InstructionSchedule(m_unit).Execute();
        
        // MachinePhiDestruction(m_unit).Execute();
        // RiscV64LowerFImmCopy(m_unit).Execute();
        // RiscV64LowerIImmCopy(m_unit).Execute();
        if(optimize_flag){
            RiscV64InstructionSchedule(m_unit).Execute();
        }

        MachinePrinter *printer = new RiscV64Printer(fout, m_unit);
        printer->emit();
    }
    fout.close();
    return 0;
}

#define ALIGNED_FORMAT_OUTPUT(STR, CISU, PROP)                                                                         \
    s << std::fixed << std::setprecision(12) << std::setw(15) << std::left << STR << " " << std::setw(20) << std::left \
      << CISU << " " << std::setw(32) << std::left << PROP << " " << std::setw(15) << std::left << line_number         \
      << std::setw(15) << std::left << cur_col_number << "\n"

void PrintLexerResult(std::ostream &s, char *yytext, YYSTYPE yylval, int token, int line_number) {
    std::setfill(' ');
    switch (token) {
    case INT:
        ALIGNED_FORMAT_OUTPUT("INT", yytext, "");
        break;
    case INT_CONST:
        ALIGNED_FORMAT_OUTPUT("INT_CONST", yytext, yylval.int_token);
        break;
    case FLOAT:
        ALIGNED_FORMAT_OUTPUT("FLOAT", yytext, "");
        break;
    // case YYerror:
    //     ALIGNED_FORMAT_OUTPUT("ERROR",yylval.error_msg,line_number);
    //     break;
    // case YYEOF:
    //     ALIGNED_FORMAT_OUTPUT("EOF",yytext,line_number);
    //     break;
    // case YYUNDEF:
    //     ALIGNED_FORMAT_OUTPUT("UNDEF",yytext,line_number);
    //     break;
    case STR_CONST:
        ALIGNED_FORMAT_OUTPUT("STR_CONST", yytext, yylval.symbol_token->get_string());
        break;
    case IDENT:
        ALIGNED_FORMAT_OUTPUT("IDENT", yytext, yylval.symbol_token->get_string());
        break;
    case FLOAT_CONST:
        ALIGNED_FORMAT_OUTPUT("FLOAT_CONST", yytext, yylval.float_token);
        break;
    case LEQ:
        ALIGNED_FORMAT_OUTPUT("LEQ", yytext, "");
        break;
    case GEQ:
        ALIGNED_FORMAT_OUTPUT("GEQ", yytext, "");
        break;
    case EQ:
        ALIGNED_FORMAT_OUTPUT("EQ", yytext, "");
        break;
    case NE:
        ALIGNED_FORMAT_OUTPUT("NE", yytext, "");
        break;
    case AND:
        ALIGNED_FORMAT_OUTPUT("AND", yytext, "");
        break;
    case OR:
        ALIGNED_FORMAT_OUTPUT("OR", yytext, "");
        break;
    case CONST:
        ALIGNED_FORMAT_OUTPUT("CONST", yytext, "");
        break;
    case IF:
        ALIGNED_FORMAT_OUTPUT("IF", yytext, "");
        break;
    case ELSE:
        ALIGNED_FORMAT_OUTPUT("ELSE", yytext, "");
        break;
    case WHILE:
        ALIGNED_FORMAT_OUTPUT("WHILE", yytext, "");
        break;
    case NONE_TYPE:
        ALIGNED_FORMAT_OUTPUT("VOID", yytext, "");
        break;
    case RETURN:
        ALIGNED_FORMAT_OUTPUT("RETURN", yytext, "");
        break;
    case BREAK:
        ALIGNED_FORMAT_OUTPUT("BREAK", yytext, "");
        break;
    case CONTINUE:
        ALIGNED_FORMAT_OUTPUT("CONTINUE", yytext, "");
        break;
    case ERROR:
        ALIGNED_FORMAT_OUTPUT("ERROR", yytext, yylval.error_msg);
        break;
    case '[':
        ALIGNED_FORMAT_OUTPUT("LSQUARE", yytext, "");
        break;
    case ']':
        ALIGNED_FORMAT_OUTPUT("RSQUARE", yytext, "");
        break;
    case '(':
        ALIGNED_FORMAT_OUTPUT("LPAREN", yytext, "");
        break;
    case ')':
        ALIGNED_FORMAT_OUTPUT("RPAREN", yytext, "");
        break;
    case '{':
        ALIGNED_FORMAT_OUTPUT("LBRACE", yytext, "");
        break;
    case '}':
        ALIGNED_FORMAT_OUTPUT("RBRACE", yytext, "");
        break;
    case '+':
        ALIGNED_FORMAT_OUTPUT("ADD", yytext, "");
        break;
    case '-':
        ALIGNED_FORMAT_OUTPUT("SUB", yytext, "");
        break;
    case '*':
        ALIGNED_FORMAT_OUTPUT("MUL", yytext, "");
        break;
    case '/':
        ALIGNED_FORMAT_OUTPUT("DIV", yytext, "");
        break;
    case '%':
        ALIGNED_FORMAT_OUTPUT("MOD", yytext, "");
        break;
    case '=':
        ALIGNED_FORMAT_OUTPUT("ASSIGN", yytext, "");
        break;
    case '!':
        ALIGNED_FORMAT_OUTPUT("NOT", yytext, "");
        break;
    case ',':
        ALIGNED_FORMAT_OUTPUT("COMMA", yytext, "");
        break;
    case ';':
        ALIGNED_FORMAT_OUTPUT("SEMICOLON", yytext, "");
        break;
    case '>':
        ALIGNED_FORMAT_OUTPUT("LESS", yytext, "");
        break;
    case '<':
        ALIGNED_FORMAT_OUTPUT("GREATER", yytext, "");
        break;
    default:
        ALIGNED_FORMAT_OUTPUT((char)token, yytext, "");
    }
}
