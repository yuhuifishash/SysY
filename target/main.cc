#include <iostream>
#include <iomanip>
#include <fstream>
#include <stdio.h>
#include <string.h>
#include <fstream>
#include "semant.h"
#include "IRgen.h"
#include "ir.h"
#include "SysY_parser.tab.h"

#define ALIGNED_FORMAT_OUTPUT_HEAD(STR,CISU,PROP,STR3,STR4)\
fout <<std::fixed<<std::setprecision(12)<<std::setw(15)<<std::left<<STR<<" "<<std::setw(20)<<std::left<<CISU<<" "<<std::setw(32)<<std::left<<PROP<<std::setw(15)<<std::left<<STR3<<std::setw(15)<<std::left<<STR4<<"\n"

extern LLVMIR llvmIR;
extern Program ast_root;
extern FILE* yyin;
extern int error_num;
int line_number = 0;
int col_number = 0;
int cur_col_number = 0;
std::ofstream fout;
StringTable str_table;
IdTable id_table;
extern int yylex();
extern YYSTYPE yylval;
extern char* yytext;
extern std::vector<std::string> error_msgs;
void PrintLexerResult(std::ostream& s,char* yytext,YYSTYPE yylval,int token,int line_number);

#define step_tag 2
#define o_tag 3
#define file_out 4
#define file_in 1
#define optimize_tag 5
/*
-lexer
-parser
-llvm
-cgenpre
-S
SysYc *.sy -S -o *.s (-O1) 
*/

//compiler -S -o testcase.s testcase.sy

void MakeFunctionOneExit(CFG* C);
void Mem2Reg(CFG*);
void SparseConditionalConstantPropagation(CFG* C);
void SimplifyCFG(CFG* C);
void SimpleDCE(CFG* C);
void ElimateEmptyIndexGEP(CFG* C);
void TailRecursiveElimate(CFG* C);

int main(int argc,char** argv)
{
    FILE* fin = fopen(argv[file_in],"r");
    if(fin == NULL){
        std::cerr << "Could not open input file " << argv[file_in] << std::endl;
        exit(1);
    }
    yyin = fin;
    fout.open(argv[file_out]);
    line_number = 1;
    
    if(strcmp(argv[step_tag],"-lexer") == 0){
        int token;
        ALIGNED_FORMAT_OUTPUT_HEAD("Token","Lexeme","Property","Line","Column");
        while((token = yylex()) != 0){
            PrintLexerResult(fout,yytext,yylval,token,line_number);
        }
        fout.close();
        return 0;
    }
    yyparse();

    if(error_num > 0){
        fout << "Parser error" << std::endl;
        fout.close();
        return 0;
    }

    if(strcmp(argv[step_tag],"-parser") == 0){
        ast_root->printAST(fout,0);
        fout.close();
        return 0;
    }


    ast_root->TypeCheck();
    if(error_msgs.size() > 0){
        for(auto msg:error_msgs){
            fout << msg << std::endl;
        }
        fout.close();
        return 0;
    }

    if(strcmp(argv[step_tag],"-semant") == 0){
        ast_root->printAST(fout,0);
        return 0;
    }

    ast_root->codeIR();

    llvmIR.CFGInit();
    llvmIR.BuildCFG();

    bool optimize_flag = (argc == 6 && (strcmp(argv[optimize_tag],"-O1") == 0 || strcmp(argv[optimize_tag],"-O2") == 0));
    if(optimize_flag){
        llvmIR.PassExecutor( ElimateEmptyIndexGEP ); //to do
        llvmIR.PassExecutor( TailRecursiveElimate ); //to do
        llvmIR.PassExecutor( MakeFunctionOneExit ); //to do
        llvmIR.BuildDominatorTree();
        llvmIR.PassExecutor( Mem2Reg );
        llvmIR.PassExecutor( SparseConditionalConstantPropagation );
        llvmIR.PassExecutor( SimplifyCFG ); // to do
        llvmIR.BuildFunctionInfo();
        llvmIR.PassExecutor( SimpleDCE );
    }
    
    if(strcmp(argv[step_tag],"-llvm") == 0){
        llvmIR.printIR(fout);
        fout.close();
        return 0;
    }
    if(strcmp(argv[step_tag],"-S") == 0){
        std::cerr<<"-S is not implemented now\n";
        assert(false);
    }
    fout.close();
    return 0;
}






#define ALIGNED_FORMAT_OUTPUT(STR,CISU,PROP)\
s <<std::fixed<<std::setprecision(12)<<std::setw(15)<<std::left<<STR<<" "<<std::setw(20)<<std::left<<CISU<<" "<<std::setw(32)<<std::left<<PROP<<" "<<std::setw(15)<<std::left<<line_number<<std::setw(15)<<std::left<<cur_col_number<<"\n"

void PrintLexerResult(std::ostream& s,char* yytext,YYSTYPE yylval,int token,int line_number)
{
    std::setfill(' ');
    switch(token){
    case INT:
        ALIGNED_FORMAT_OUTPUT("INT",yytext,"");
        break;
    case INT_CONST:
        ALIGNED_FORMAT_OUTPUT("INT_CONST",yytext,yylval.int_token);
        break;
    case FLOAT:
        ALIGNED_FORMAT_OUTPUT("FLOAT",yytext,"");
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
        ALIGNED_FORMAT_OUTPUT("STR_CONST",yytext,yylval.symbol_token->get_string());
        break;
    case IDENT:
        ALIGNED_FORMAT_OUTPUT("IDENT",yytext,yylval.symbol_token->get_string());
        break;
    case FLOAT_CONST:
        ALIGNED_FORMAT_OUTPUT("FLOAT_CONST",yytext,yylval.float_token);
        break;
    case LEQ:
        ALIGNED_FORMAT_OUTPUT("LEQ",yytext,"");
        break;
    case GEQ:
        ALIGNED_FORMAT_OUTPUT("GEQ",yytext,"");
        break;
    case EQ:
        ALIGNED_FORMAT_OUTPUT("EQ",yytext,"");
        break;
    case NE:
        ALIGNED_FORMAT_OUTPUT("NE",yytext,"");
        break;
    case AND:
        ALIGNED_FORMAT_OUTPUT("AND",yytext,"");
        break;
    case OR:
        ALIGNED_FORMAT_OUTPUT("OR",yytext,"");
        break;
    case CONST:
        ALIGNED_FORMAT_OUTPUT("CONST",yytext,"");
        break;
    case IF:
        ALIGNED_FORMAT_OUTPUT("IF",yytext,"");
        break;
    case ELSE:
        ALIGNED_FORMAT_OUTPUT("ELSE",yytext,"");
        break;
    case WHILE:
        ALIGNED_FORMAT_OUTPUT("WHILE",yytext,"");
        break;
    case NONE_TYPE:
        ALIGNED_FORMAT_OUTPUT("VOID",yytext,"");
        break;
    case RETURN:
        ALIGNED_FORMAT_OUTPUT("RETURN",yytext,"");
        break;
    case BREAK:
        ALIGNED_FORMAT_OUTPUT("BREAK",yytext,"");
        break;
    case CONTINUE:
        ALIGNED_FORMAT_OUTPUT("CONTINUE",yytext,"");
        break;
    case ERROR:
        ALIGNED_FORMAT_OUTPUT("ERROR",yytext,yylval.error_msg);
        break;
    case '[':
        ALIGNED_FORMAT_OUTPUT("LSQUARE",yytext,"");
        break;
    case ']':
        ALIGNED_FORMAT_OUTPUT("RSQUARE",yytext,"");
        break;
    case '(':
        ALIGNED_FORMAT_OUTPUT("LPAREN",yytext,"");
        break;
    case ')':
        ALIGNED_FORMAT_OUTPUT("RPAREN",yytext,"");
        break;
    case '{':
        ALIGNED_FORMAT_OUTPUT("LBRACE",yytext,"");
        break;
    case '}':
        ALIGNED_FORMAT_OUTPUT("RBRACE",yytext,"");
        break;
    case '+':
        ALIGNED_FORMAT_OUTPUT("ADD",yytext,"");
        break;
    case '-':
        ALIGNED_FORMAT_OUTPUT("SUB",yytext,"");
        break;
    case '*':
        ALIGNED_FORMAT_OUTPUT("MUL",yytext,"");
        break;
    case '/':
        ALIGNED_FORMAT_OUTPUT("DIV",yytext,"");
        break;
    case '%':
        ALIGNED_FORMAT_OUTPUT("MOD",yytext,"");
        break;
    case '=':
        ALIGNED_FORMAT_OUTPUT("ASSIGN",yytext,"");
        break;
    case '!':
        ALIGNED_FORMAT_OUTPUT("NOT",yytext,"");
        break;
    case ',':
        ALIGNED_FORMAT_OUTPUT("COMMA",yytext,"");
        break;
    case ';':
        ALIGNED_FORMAT_OUTPUT("SEMICOLON",yytext,"");
        break;
    case '>':
        ALIGNED_FORMAT_OUTPUT("LESS",yytext,"");
        break;
    case '<':
        ALIGNED_FORMAT_OUTPUT("GREATER",yytext,"");
        break;
    default:
        ALIGNED_FORMAT_OUTPUT((char)token,yytext,"");
    }
}
