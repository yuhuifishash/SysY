#include "SysY_tree.h"/* A Bison parser, made by GNU Bison 3.5.1.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2020 Free Software Foundation,
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
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

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

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

#ifndef YY_YY_SYSY_PARSER_TAB_H_INCLUDED
# define YY_YY_SYSY_PARSER_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    STR_CONST = 258,
    IDENT = 259,
    FLOAT_CONST = 260,
    INT_CONST = 261,
    LEQ = 262,
    GEQ = 263,
    EQ = 264,
    NE = 265,
    AND = 266,
    OR = 267,
    CONST = 268,
    IF = 269,
    ELSE = 270,
    WHILE = 271,
    VOID_p = 272,
    INT = 273,
    FLOAT = 274,
    RETURN = 275,
    BREAK = 276,
    CONTINUE = 277,
    ERROR = 278,
    THEN = 279
  };
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 13 "src/SysY_parser.y"

    char* error_msg;
    Symbol symbol_token;
    double float_token;
    int int_token;
    Program program;  
    CompUnit comp_unit;  std::vector<CompUnit>* comps; 
    Decl decl;
    Def def;  std::vector<Def>* defs;
    FuncDef func_def;
    Expression expression;  std::vector<Expression>* expressions;//added *
    Stmt stmt;
    Block block;
    InitVal initval;  std::vector<InitVal>* initvals;//added *
    FuncFParam formal;   std::vector<FuncFParam>* formals;//added *
    BlockItem block_item;   std::vector<BlockItem>* block_items;//added *

#line 100 "SysY_parser.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif

/* Location type.  */
#if ! defined YYLTYPE && ! defined YYLTYPE_IS_DECLARED
typedef struct YYLTYPE YYLTYPE;
struct YYLTYPE
{
  int first_line;
  int first_column;
  int last_line;
  int last_column;
};
# define YYLTYPE_IS_DECLARED 1
# define YYLTYPE_IS_TRIVIAL 1
#endif


extern YYSTYPE yylval;
extern YYLTYPE yylloc;
int yyparse (void);

#endif /* !YY_YY_SYSY_PARSER_TAB_H_INCLUDED  */
