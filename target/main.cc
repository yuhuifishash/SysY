#include <iostream>
#include <iomanip>
#include <fstream>
#include <stdio.h>
#include <string.h>
#include <fstream>
#include "semant.h"
#include "IRgen.h"
#include "arm_cgen.h"
#include "llvm_ir.h"
#include "SysY_parser.tab.h"
#include "llvm_output_test.h"
#include "mem2reg_test.h"
#include "sccp_test.h"
#include "liveness_test.h"

#define ALIGNED_FORMAT_OUTPUT_HEAD(STR,CISU,PROP,STR3,STR4)\
fout <<std::fixed<<std::setprecision(12)<<std::setw(15)<<std::left<<STR<<" "<<std::setw(20)<<std::left<<CISU<<" "<<std::setw(32)<<std::left<<PROP<<std::setw(15)<<std::left<<STR3<<std::setw(15)<<std::left<<STR4<<"\n"

extern LLVMIR cgenpre_IR;
extern LLVMIR llvm_IR;
extern Program ast_root;
extern FILE* yyin;
extern int error_num;
int line_number = 0;
int col_number = 0;
int cur_col_number = 0;
int O1_flag = 0;
std::ofstream fout;
StringTable str_table;
IdTable id_table;
SymbolTable symbol_table;
extern int yylex();
extern YYSTYPE yylval;
extern char* yytext;
extern std::vector<std::string> error_msgs;
void print_lexer_result(std::ostream& s,char* yytext,YYSTYPE yylval,int token,int line_number);

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

//#define TEMP_OUTPUT_TEST
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
            print_lexer_result(fout,yytext,yylval,token,line_number);
            //print_lexer_result(std::cout,yytext,yylval,token,line_number);
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
        //ast_root->printAST(std::cout,0);
        fout.close();
        return 0;
    }


    ast_root->type_check();
    if(error_msgs.size() > 0){
        for(auto msg:error_msgs){
            fout << msg << std::endl;
        }
        fout.close();
        return 0;
    }
    if(strcmp(argv[step_tag],"-semant") == 0){
        ast_root->printAST(fout,0);
    }

    if(argc == 6 && (strcmp(argv[optimize_tag],"-O1") == 0 || strcmp(argv[optimize_tag],"-O2") == 0)){O1_flag = 1;}
    ast_root->codeIR();
    // llvm_IR.printIR(fout);
    
    llvm_IR.optimize_zext_br();
    llvm_IR.optimize_shortcircult_br();
    llvm_IR.elimate_dead_ins_and_blocks();
    llvm_IR.build_CFG();
    
    if(argc == 6 && (strcmp(argv[optimize_tag],"-O1") == 0 || strcmp(argv[optimize_tag],"-O2") == 0)){
        llvm_IR.optimize();
    }
    
    if(strcmp(argv[step_tag],"-llvm") == 0){
        llvm_IR.printIR(fout);
        // llvm_IR.printIR(std::cout);
        fout.close();
        return 0;
    }
    llvm_IR.phi_destruction();
    llvm_IR.cgen_prework();
    if(strcmp(argv[step_tag],"-cgenpre") == 0){
        //llvm_IR.printIR(fout);
        cgenpre_IR.printIR(fout);
        // UnitTest_CalcLive();
        return 0;
    }
    cgenpre_IR.register_alloc();
    // std::cerr<<"alloc\n";
    if(strcmp(argv[step_tag],"-cgenalloc") == 0){
        cgenpre_IR.printIR(fout);
        return 0;
    }
    if(strcmp(argv[step_tag],"-S") == 0){
        cgenpre_IR.code(fout);
    }
    fout.close();
    return 0;
}






#define ALIGNED_FORMAT_OUTPUT(STR,CISU,PROP)\
s <<std::fixed<<std::setprecision(12)<<std::setw(15)<<std::left<<STR<<" "<<std::setw(20)<<std::left<<CISU<<" "<<std::setw(32)<<std::left<<PROP<<" "<<std::setw(15)<<std::left<<line_number<<std::setw(15)<<std::left<<cur_col_number<<"\n"

void print_lexer_result(std::ostream& s,char* yytext,YYSTYPE yylval,int token,int line_number)
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
