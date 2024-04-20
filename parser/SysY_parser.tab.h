#include "SysY_tree.h" /* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_SYSY_PARSER_TAB_H_INCLUDED
#define YY_YY_SYSY_PARSER_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
#define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
#define YYTOKENTYPE
enum yytokentype {
    YYEMPTY = -2,
    YYEOF = 0,         /* "end of file"  */
    YYerror = 256,     /* error  */
    YYUNDEF = 257,     /* "invalid token"  */
    STR_CONST = 258,   /* STR_CONST  */
    IDENT = 259,       /* IDENT  */
    FLOAT_CONST = 260, /* FLOAT_CONST  */
    INT_CONST = 261,   /* INT_CONST  */
    LEQ = 262,         /* LEQ  */
    GEQ = 263,         /* GEQ  */
    EQ = 264,          /* EQ  */
    NE = 265,          /* NE  */
    AND = 266,         /* AND  */
    OR = 267,          /* OR  */
    CONST = 268,       /* CONST  */
    IF = 269,          /* IF  */
    ELSE = 270,        /* ELSE  */
    WHILE = 271,       /* WHILE  */
    NONE_TYPE = 272,   /* NONE_TYPE  */
    INT = 273,         /* INT  */
    FLOAT = 274,       /* FLOAT  */
    RETURN = 275,      /* RETURN  */
    BREAK = 276,       /* BREAK  */
    CONTINUE = 277,    /* CONTINUE  */
    ERROR = 278,       /* ERROR  */
    THEN = 279         /* THEN  */
};
typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if !defined YYSTYPE && !defined YYSTYPE_IS_DECLARED
union YYSTYPE {
#line 14 "parser/SysY_parser.y"

    char *error_msg;
    Symbol symbol_token;
    double float_token;
    int int_token;
    Program program;
    CompUnit comp_unit;
    std::vector<CompUnit> *comps;
    Decl decl;
    Def def;
    std::vector<Def> *defs;
    FuncDef func_def;
    Expression expression;
    std::vector<Expression> *expressions;    // added *
    Stmt stmt;
    Block block;
    InitVal initval;
    std::vector<InitVal> *initvals;    // added *
    FuncFParam formal;
    std::vector<FuncFParam> *formals;    // added *
    BlockItem block_item;
    std::vector<BlockItem> *block_items;    // added *

#line 106 "SysY_parser.tab.h"
};
typedef union YYSTYPE YYSTYPE;
#define YYSTYPE_IS_TRIVIAL 1
#define YYSTYPE_IS_DECLARED 1
#endif

/* Location type.  */
#if !defined YYLTYPE && !defined YYLTYPE_IS_DECLARED
typedef struct YYLTYPE YYLTYPE;
struct YYLTYPE {
    int first_line;
    int first_column;
    int last_line;
    int last_column;
};
#define YYLTYPE_IS_DECLARED 1
#define YYLTYPE_IS_TRIVIAL 1
#endif

extern YYSTYPE yylval;
extern YYLTYPE yylloc;

int yyparse(void);

#endif /* !YY_YY_SYSY_PARSER_TAB_H_INCLUDED  */
