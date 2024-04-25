%option noyywrap
%{
#include <cmath>
#include <vector>
#include <cstring>
#include "../include/symtab.h"
#include "../parser/SysY_parser.tab.h"

extern int line_number;
extern int col_number;
extern int cur_col_number;
extern StringTable str_table;
extern IdTable id_table;
void yyerror(char* s, ...);
std::vector<char> tmp_str;
%}

%x COMMENT
%x STRING

Fractional_const ([0-9]*\.[0-9]+)|([0-9]+\.)
Exponent_const [eE][\+\-]?[0-9]+
Hex_Fractional_const ([0-9a-fA-F]*\.[0-9a-fA-F]+)|([0-9a-fA-F]+\.)
Binary_Exponent_const [pP][\+\-]?[0-9]+

%%
"//".* {cur_col_number = col_number;col_number += strlen(yytext);}
"/*" {
    cur_col_number = col_number;
    col_number += strlen(yytext);
   BEGIN(COMMENT);
}
"*/" {
    cur_col_number = col_number;
    col_number += strlen(yytext);
    yylval.error_msg = "unmatched */";
    return ERROR;
}
<COMMENT>"*/" {
    cur_col_number = col_number;
    col_number += strlen(yytext);
    BEGIN(INITIAL);
}
<COMMENT>\n {++line_number;col_number = 0;}
<COMMENT><<EOF>> {
    BEGIN(INITIAL);
    yylval.error_msg = "EOF in comment";
    return ERROR;
}
<COMMENT>. {cur_col_number = col_number;col_number += strlen(yytext);}

"<=" {cur_col_number = col_number;col_number += strlen(yytext);return LEQ;}         
">=" {cur_col_number = col_number;col_number += strlen(yytext);return GEQ;}         
"==" {cur_col_number = col_number;col_number += strlen(yytext);return EQ;}        
"!=" {cur_col_number = col_number;col_number += strlen(yytext);return NE;}
"&&" {cur_col_number = col_number;col_number += strlen(yytext);return AND;}         
"||" {cur_col_number = col_number;col_number += strlen(yytext);return OR;}         
"const" {cur_col_number = col_number;col_number += strlen(yytext);return CONST;}     
"if" {cur_col_number = col_number;col_number += strlen(yytext);return IF;}       
"else" {cur_col_number = col_number;col_number += strlen(yytext);return ELSE;}  
"while" {cur_col_number = col_number;col_number += strlen(yytext);return WHILE;}   
"void" {cur_col_number = col_number;col_number += strlen(yytext);return NONE_TYPE;}    
"int" {cur_col_number = col_number;col_number += strlen(yytext);return INT;}    
"float" {cur_col_number = col_number;col_number += strlen(yytext);return FLOAT;}      
"return" {cur_col_number = col_number;col_number += strlen(yytext);return RETURN;}    
"break" {cur_col_number = col_number;col_number += strlen(yytext);return BREAK;}     
"continue" {cur_col_number = col_number;col_number += strlen(yytext);return CONTINUE;}

\n {++line_number;col_number = 0;}

[ \t\f\r\v] {col_number += strlen(yytext);}

[\.\+\-\*\/\=\<\!\%\>] {cur_col_number = col_number;col_number += strlen(yytext);return yytext[0];}

[\{\}\;\(\)\,\[\]] {cur_col_number = col_number;col_number += strlen(yytext);return yytext[0];}

[_a-zA-Z][_a-zA-Z0-9]* {
    cur_col_number = col_number;
    col_number += strlen(yytext);
    yylval.symbol_token = id_table.add_id(std::string(yytext));
    return IDENT;
}
{Fractional_const}{Exponent_const}? {
    cur_col_number = col_number;
    col_number += strlen(yytext);
    // yylval.float_token = stof(std::string(yytext));
    yylval.float_token = 0;
    int frac_pre_dot_idx = 0;
    while(yytext[frac_pre_dot_idx] != '.'){
        yylval.float_token *= 10;
        yylval.float_token += yytext[frac_pre_dot_idx] - '0';
        ++frac_pre_dot_idx;
    }
    int dotpos = frac_pre_dot_idx;
    int frac_after_dot_idx = dotpos+1;

    double temp_expo = 1;
    while(yytext[frac_after_dot_idx] != 'e' && yytext[frac_after_dot_idx] != 'E' && yytext[frac_after_dot_idx]){
        temp_expo /= 10;
        yylval.float_token += (yytext[frac_after_dot_idx] - '0') * temp_expo;
        ++frac_after_dot_idx;
    }
    if(yytext[frac_after_dot_idx])
    {
        int eEPos = frac_after_dot_idx;
        int expoCur = eEPos+1;// expo Begin
        int sign = 1;
        if(yytext[expoCur] == '+'){
            sign = 1;
            expoCur++;
        }else if(yytext[expoCur] == '-'){
            sign = -1;
            expoCur++;
        }

        double expo = 0;
        while(yytext[expoCur]){
            expo *= 10;
            expo += yytext[expoCur] - '0';
            expoCur++;
        }
        expo *= sign;

        double expo_result = pow(10.0,expo);

        yylval.float_token *= expo_result;
    }
    return FLOAT_CONST;
}
[0-9]+{Exponent_const} {
    cur_col_number = col_number;
    col_number += strlen(yytext);
    // yylval.float_token = stof(std::string(yytext));
    yylval.float_token = 0;
    int seq_part_idx = 0;
    while(yytext[seq_part_idx] != 'e' && yytext[seq_part_idx] != 'E' && yytext[seq_part_idx]){
        yylval.float_token *= 10;
        yylval.float_token += yytext[seq_part_idx] - '0';
        seq_part_idx++;
    }
    if(yytext[seq_part_idx])
    {
        int eEPos = seq_part_idx;
        int expoCur = eEPos+1;
        int sign = 1;
        if(yytext[expoCur] == '+'){
            sign = 1;
            expoCur++;
        }
        else if(yytext[expoCur] == '-'){
            sign = -1;
            expoCur++;
        }
        double expo = 0;
        while(yytext[expoCur]){
            expo *= 10;
            expo += yytext[expoCur] - '0';
            expoCur++;
        }
        expo *= sign;
        yylval.float_token *= pow(10.0,expo);
    }
    return FLOAT_CONST;
}
"0"[xX]{Hex_Fractional_const}{Binary_Exponent_const}? {
    cur_col_number = col_number;
    col_number += strlen(yytext);
    //yylval.float_token;
    //parse hex float manually, because stof doesn't support hex float
    std::string str = std::string(yytext+2);
    int dotpos = 0;
    while(str[dotpos] != '.'){
        ++dotpos;
    }
    int pPos = dotpos+1;//str[i]='.'
    while(pPos<str.length() && str[pPos] != 'p' && str[pPos] != 'P'){
        ++pPos;
    }//str[j]=='p' or 'P'
    int binExp_begin = pPos+1;
    double exp_raw = 0;
    if(pPos<str.length())
    {
        std::string binExp_part = str.substr(binExp_begin);
        //exp_raw=stoi(str.substr(binExp_begin),nullptr,10);
        int sign = 1;
        int begin_idx = (binExp_part[0] == '+')||(binExp_part[0] == '-') ? 1 : 0;
        if(binExp_part[0] == '+'){
            sign = 1;
        }
        if(binExp_part[0] == '-'){
            sign = -1;
        }
        for(int i = begin_idx;i<binExp_part.length();i++){
            exp_raw *= 10;
            exp_raw += binExp_part[i] - '0';
        }
        exp_raw *= sign;
    }
    std::string signif_part1=str.substr(0,dotpos);
    std::string signif_part2=str.substr(dotpos+1,pPos-dotpos-1);

    if(signif_part1.empty()&&signif_part2.empty()){
        yylval.error_msg="Invalid hex float";
        return ERROR;
    }

    std::string signif_full_int_str = signif_part1+signif_part2;
    //=std::stoi(signif_part1+signif_part2,nullptr,16);
    double signif_full_int = 0;
    for(int i = 0;i<signif_full_int_str.length();i++){
        signif_full_int *= 16;
        if('0'<=signif_full_int_str[i] && signif_full_int_str[i]<='9'){
            signif_full_int += signif_full_int_str[i] - '0';
        }else if('a'<=signif_full_int_str[i] && signif_full_int_str[i]<='f'){
            signif_full_int += signif_full_int_str[i] - 'a' + 10;
        }else if('A'<=signif_full_int_str[i] && signif_full_int_str[i]<='F'){
            signif_full_int += signif_full_int_str[i] - 'A' + 10;
        }
    }
    int part2_len=signif_part2.length();
    double exp=exp_raw-part2_len*4;
    yylval.float_token = signif_full_int*pow(2.0,exp);

    return FLOAT_CONST;
}
"0"[xX][0-9a-fA-F]+{Binary_Exponent_const} {
    cur_col_number = col_number;
    col_number += strlen(yytext);
    std::string str = std::string(yytext+2);
    int pPos = 0;
    while(pPos<str.length() && str[pPos] != 'p' && str[pPos] != 'P'){
        ++pPos;
    }//str[j]=='p' or 'P'
    double exp = 0;

    if(pPos<str.length())
    {
        int binExp_begin = pPos+1;
        std::string binExp_part = str.substr(binExp_begin);
        //exp=stoi(str.substr(binExp_begin),nullptr,10);
        int sign = 1;
        int begin_idx = (binExp_part[0] == '+')||(binExp_part[0] == '-') ? 1 : 0;
        if(binExp_part[0] == '+'){
            sign = 1;
        }
        if(binExp_part[0] == '-'){
            sign = -1;
        }
        for(int i = begin_idx;i<binExp_part.length();i++){
            exp *= 10;
            exp += binExp_part[i] - '0';
        }
        exp *= sign;
    }

    std::string signif=str.substr(0,pPos);
    if(signif.empty()){
        yylval.error_msg="Invalid hex float";
        return ERROR;
    }
    std::string signif_full_int_str = signif;
    double signif_full_int = 0;
    for(int i = 0;i<signif_full_int_str.length();i++){
        signif_full_int *= 16;
        if('0'<=signif_full_int_str[i] && signif_full_int_str[i]<='9'){
            signif_full_int += signif_full_int_str[i] - '0';
        }else if('a'<=signif_full_int_str[i] && signif_full_int_str[i]<='f'){
            signif_full_int += signif_full_int_str[i] - 'a' + 10;
        }else if('A'<=signif_full_int_str[i] && signif_full_int_str[i]<='F'){
            signif_full_int += signif_full_int_str[i] - 'A' + 10;
        }
    }
    //int signif_full_int=std::stoi(signif,nullptr,16);
    yylval.float_token = signif_full_int*pow(2.0,exp);

    return FLOAT_CONST;
}
([1-9][0-9]*)|0 {
    cur_col_number = col_number;
    col_number += strlen(yytext);
    // yylval.int_token = stoi(std::string(yytext));
    yylval.int_token = 0;
    for(int i = 0;yytext[i];i++){
        yylval.int_token *= 10;
        yylval.int_token += yytext[i] - '0';
    }
    return INT_CONST;
}
"0"[xX][0-9a-fA-F]+ {
    cur_col_number = col_number;
    col_number += strlen(yytext);
    // yylval.int_token = stoi(std::string(yytext+2),nullptr,16);
    yylval.int_token = 0;
    for(int i = 0;yytext[i];i++){
        yylval.int_token *= 16;
        if('0'<=yytext[i] && yytext[i]<='9'){
            yylval.int_token += yytext[i] - '0';
        }else if('a'<=yytext[i] && yytext[i]<='f'){
            yylval.int_token += yytext[i] - 'a' + 10;
        }else if('A'<=yytext[i] && yytext[i]<='F'){
            yylval.int_token += yytext[i] - 'A' + 10;
        }
        
    }
    return INT_CONST; 
}
"0"[0-7]* {
    cur_col_number = col_number;
    col_number += strlen(yytext);
    // yylval.int_token = stoi(std::string(yytext+1),nullptr,8);
    yylval.int_token = 0;
    for(int i = 0;yytext[i];i++){
        yylval.int_token *= 8;
        yylval.int_token += yytext[i] - '0';
    }
    return INT_CONST;
}

\" {
    cur_col_number = col_number;
    col_number += strlen(yytext);
    tmp_str.clear();
    BEGIN(STRING);
}
<STRING>\" {
    cur_col_number = col_number;
    col_number += strlen(yytext);
    yylval.symbol_token = str_table.add_string(std::string(tmp_str.begin(),tmp_str.end()));
    //add string
    BEGIN(INITIAL);
    return STR_CONST;
}
<STRING>\n {
    col_number = 0;
    ++line_number;
    yylval.error_msg = "Unterminated string constant";
    BEGIN(INITIAL);
    return ERROR;
}
<STRING>. {
    cur_col_number = col_number;
    col_number += strlen(yytext);
    tmp_str.push_back(yytext[0]);
    BEGIN(STRING);
}
. {
    cur_col_number = col_number;
    col_number += strlen(yytext);
    yylval.error_msg = yytext;
    return ERROR;
}
%%



