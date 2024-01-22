/* A Bison parser, made by GNU Bison 3.5.1.  */

/* Bison implementation for Yacc-like parsers in C

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

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "3.5.1"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* First part of user prologue.  */
#line 1 "src/SysY_parser.y"

#include <fstream>
#include "SysY_tree.h"
Program ast_root;

void yyerror(char *s, ...);
int yylex();
int error_num = 0;
extern int line_number;
extern std::ofstream fout;
extern IdTable id_table;

#line 83 "SysY_parser.tab.c"

# ifndef YY_CAST
#  ifdef __cplusplus
#   define YY_CAST(Type, Val) static_cast<Type> (Val)
#   define YY_REINTERPRET_CAST(Type, Val) reinterpret_cast<Type> (Val)
#  else
#   define YY_CAST(Type, Val) ((Type) (Val))
#   define YY_REINTERPRET_CAST(Type, Val) ((Type) (Val))
#  endif
# endif
# ifndef YY_NULLPTR
#  if defined __cplusplus
#   if 201103L <= __cplusplus
#    define YY_NULLPTR nullptr
#   else
#    define YY_NULLPTR 0
#   endif
#  else
#   define YY_NULLPTR ((void*)0)
#  endif
# endif

/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 0
#endif

/* Use api.header.include to #include this header
   instead of duplicating it here.  */
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

#line 178 "SysY_parser.tab.c"

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



#ifdef short
# undef short
#endif

/* On compilers that do not define __PTRDIFF_MAX__ etc., make sure
   <limits.h> and (if available) <stdint.h> are included
   so that the code can choose integer types of a good width.  */

#ifndef __PTRDIFF_MAX__
# include <limits.h> /* INFRINGES ON USER NAME SPACE */
# if defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stdint.h> /* INFRINGES ON USER NAME SPACE */
#  define YY_STDINT_H
# endif
#endif

/* Narrow types that promote to a signed type and that can represent a
   signed or unsigned integer of at least N bits.  In tables they can
   save space and decrease cache pressure.  Promoting to a signed type
   helps avoid bugs in integer arithmetic.  */

#ifdef __INT_LEAST8_MAX__
typedef __INT_LEAST8_TYPE__ yytype_int8;
#elif defined YY_STDINT_H
typedef int_least8_t yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef __INT_LEAST16_MAX__
typedef __INT_LEAST16_TYPE__ yytype_int16;
#elif defined YY_STDINT_H
typedef int_least16_t yytype_int16;
#else
typedef short yytype_int16;
#endif

#if defined __UINT_LEAST8_MAX__ && __UINT_LEAST8_MAX__ <= __INT_MAX__
typedef __UINT_LEAST8_TYPE__ yytype_uint8;
#elif (!defined __UINT_LEAST8_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST8_MAX <= INT_MAX)
typedef uint_least8_t yytype_uint8;
#elif !defined __UINT_LEAST8_MAX__ && UCHAR_MAX <= INT_MAX
typedef unsigned char yytype_uint8;
#else
typedef short yytype_uint8;
#endif

#if defined __UINT_LEAST16_MAX__ && __UINT_LEAST16_MAX__ <= __INT_MAX__
typedef __UINT_LEAST16_TYPE__ yytype_uint16;
#elif (!defined __UINT_LEAST16_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST16_MAX <= INT_MAX)
typedef uint_least16_t yytype_uint16;
#elif !defined __UINT_LEAST16_MAX__ && USHRT_MAX <= INT_MAX
typedef unsigned short yytype_uint16;
#else
typedef int yytype_uint16;
#endif

#ifndef YYPTRDIFF_T
# if defined __PTRDIFF_TYPE__ && defined __PTRDIFF_MAX__
#  define YYPTRDIFF_T __PTRDIFF_TYPE__
#  define YYPTRDIFF_MAXIMUM __PTRDIFF_MAX__
# elif defined PTRDIFF_MAX
#  ifndef ptrdiff_t
#   include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  endif
#  define YYPTRDIFF_T ptrdiff_t
#  define YYPTRDIFF_MAXIMUM PTRDIFF_MAX
# else
#  define YYPTRDIFF_T long
#  define YYPTRDIFF_MAXIMUM LONG_MAX
# endif
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned
# endif
#endif

#define YYSIZE_MAXIMUM                                  \
  YY_CAST (YYPTRDIFF_T,                                 \
           (YYPTRDIFF_MAXIMUM < YY_CAST (YYSIZE_T, -1)  \
            ? YYPTRDIFF_MAXIMUM                         \
            : YY_CAST (YYSIZE_T, -1)))

#define YYSIZEOF(X) YY_CAST (YYPTRDIFF_T, sizeof (X))

/* Stored state numbers (used for stacks). */
typedef yytype_uint8 yy_state_t;

/* State numbers in computations.  */
typedef int yy_state_fast_t;

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif

#ifndef YY_ATTRIBUTE_PURE
# if defined __GNUC__ && 2 < __GNUC__ + (96 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_PURE __attribute__ ((__pure__))
# else
#  define YY_ATTRIBUTE_PURE
# endif
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# if defined __GNUC__ && 2 < __GNUC__ + (7 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_UNUSED __attribute__ ((__unused__))
# else
#  define YY_ATTRIBUTE_UNUSED
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(E) ((void) (E))
#else
# define YYUSE(E) /* empty */
#endif

#if defined __GNUC__ && ! defined __ICC && 407 <= __GNUC__ * 100 + __GNUC_MINOR__
/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                            \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")              \
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# define YY_IGNORE_MAYBE_UNINITIALIZED_END      \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif

#if defined __cplusplus && defined __GNUC__ && ! defined __ICC && 6 <= __GNUC__
# define YY_IGNORE_USELESS_CAST_BEGIN                          \
    _Pragma ("GCC diagnostic push")                            \
    _Pragma ("GCC diagnostic ignored \"-Wuseless-cast\"")
# define YY_IGNORE_USELESS_CAST_END            \
    _Pragma ("GCC diagnostic pop")
#endif
#ifndef YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_END
#endif


#define YY_ASSERT(E) ((void) (0 && (E)))

#if ! defined yyoverflow || YYERROR_VERBOSE

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* ! defined yyoverflow || YYERROR_VERBOSE */


#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYLTYPE_IS_TRIVIAL && YYLTYPE_IS_TRIVIAL \
             && defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yy_state_t yyss_alloc;
  YYSTYPE yyvs_alloc;
  YYLTYPE yyls_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (YYSIZEOF (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (YYSIZEOF (yy_state_t) + YYSIZEOF (YYSTYPE) \
             + YYSIZEOF (YYLTYPE)) \
      + 2 * YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYPTRDIFF_T yynewbytes;                                         \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * YYSIZEOF (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / YYSIZEOF (*yyptr);                        \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, YY_CAST (YYSIZE_T, (Count)) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYPTRDIFF_T yyi;                      \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  20
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   345

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  42
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  43
/* YYNRULES -- Number of rules.  */
#define YYNRULES  110
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  202

#define YYUNDEFTOK  2
#define YYMAXUTOK   279


/* YYTRANSLATE(TOKEN-NUM) -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, with out-of-bounds checking.  */
#define YYTRANSLATE(YYX)                                                \
  (0 <= (YYX) && (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex.  */
static const yytype_int8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,    36,     2,     2,     2,    39,     2,     2,
      27,    28,    37,    34,    26,    35,     2,    38,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,    25,
      40,    29,    41,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,    32,     2,    33,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,    30,     2,    31,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24
};

#if YYDEBUG
  /* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_int16 yyrline[] =
{
       0,    65,    65,    73,    78,    85,    86,    90,    91,    95,
      96,   100,   101,   105,   110,   118,   123,   131,   133,   135,
     137,   139,   141,   146,   148,   150,   152,   157,   159,   164,
     165,   166,   170,   171,   172,   176,   180,   187,   191,   198,
     202,   210,   214,   218,   223,   228,   234,   243,   247,   254,
     258,   265,   269,   276,   280,   284,   288,   292,   296,   300,
     304,   308,   312,   316,   323,   327,   331,   335,   342,   346,
     347,   348,   349,   353,   360,   367,   374,   375,   379,   399,
     403,   407,   414,   421,   425,   432,   433,   434,   435,   439,
     440,   441,   445,   446,   447,   448,   449,   453,   454,   455,
     459,   460,   464,   465,   469,   473,   477,   482,   490,   494,
     499
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || 0
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "STR_CONST", "IDENT", "FLOAT_CONST",
  "INT_CONST", "LEQ", "GEQ", "EQ", "NE", "AND", "OR", "CONST", "IF",
  "ELSE", "WHILE", "VOID_p", "INT", "FLOAT", "RETURN", "BREAK", "CONTINUE",
  "ERROR", "THEN", "';'", "','", "'('", "')'", "'='", "'{'", "'}'", "'['",
  "']'", "'+'", "'-'", "'!'", "'*'", "'/'", "'%'", "'<'", "'>'", "$accept",
  "Program", "Comp_list", "CompUnit", "Decl", "VarDecl", "ConstDecl",
  "VarDef_list", "ConstDef_list", "FuncDef", "VarDef", "ConstDef",
  "ConstInitVal", "VarInitVal", "ConstInitVal_list", "VarInitVal_list",
  "FuncFParams", "FuncFParam", "Block", "BlockItem_list", "BlockItem",
  "Stmt", "Exp", "Cond", "Lval", "PrimaryExp", "IntConst", "FloatConst",
  "StringConst", "UnaryExp", "FuncRParams", "Exp_list", "MulExp", "AddExp",
  "RelExp", "EqExp", "LAndExp", "LOrExp", "ConstExp", "ArrayDim",
  "ArrayDim_list", "ConstArrayDim", "ConstArrayDim_list", YY_NULLPTR
};
#endif

# ifdef YYPRINT
/* YYTOKNUM[NUM] -- (External) token number corresponding to the
   (internal) symbol number NUM (which must be that of a token).  */
static const yytype_int16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,    59,    44,    40,    41,    61,
     123,   125,    91,    93,    43,    45,    33,    42,    47,    37,
      60,    62
};
# endif

#define YYPACT_NINF (-159)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-1)

#define yytable_value_is_error(Yyn) \
  0

  /* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
     STATE-NUM.  */
static const yytype_int16 yypact[] =
{
      60,     4,    27,    43,    55,    12,    60,  -159,  -159,  -159,
    -159,  -159,    84,    84,    54,    14,    46,  -159,    73,    69,
    -159,  -159,    58,    86,  -159,   108,     6,     8,   261,   309,
    -159,    77,  -159,   121,    10,  -159,   271,   309,  -159,    92,
    -159,    84,  -159,   127,   133,   111,     9,  -159,   111,    29,
    -159,    17,  -159,  -159,   309,    62,   309,   309,   309,  -159,
    -159,  -159,  -159,  -159,  -159,  -159,  -159,    90,   101,   110,
     261,  -159,    94,  -159,   111,   104,   251,  -159,   101,  -159,
     125,   271,  -159,  -159,   129,   132,   149,  -159,   138,   111,
    -159,   111,    80,   134,   147,  -159,  -159,    32,  -159,  -159,
    -159,   309,   309,   309,   309,   309,  -159,  -159,  -159,   111,
    -159,  -159,    49,  -159,  -159,   148,   157,   155,   164,   121,
     121,   305,   167,   168,  -159,  -159,  -159,  -159,   183,  -159,
    -159,   169,   166,  -159,  -159,  -159,  -159,  -159,   170,   174,
    -159,   261,  -159,  -159,  -159,  -159,    90,    90,  -159,   271,
    -159,   134,   134,   309,   309,  -159,   181,  -159,  -159,  -159,
    -159,  -159,   309,  -159,   309,  -159,  -159,   134,   134,   179,
     101,    11,   150,   198,   199,   184,  -159,   190,  -159,   217,
     309,   309,   309,   309,   309,   309,   309,   309,   217,  -159,
     201,   101,   101,   101,   101,    11,    11,   150,   198,  -159,
     217,  -159
};

  /* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
     Performed when YYTABLE does not specify something else to do.  Zero
     means the default is an error.  */
static const yytype_int8 yydefact[] =
{
       0,     0,     0,     0,     0,     0,     2,     3,     5,     7,
       8,     6,     0,     0,     0,    26,     0,    13,    26,     0,
       1,     4,     0,     0,    15,     0,     0,     0,     0,     0,
     106,    24,     9,     0,     0,    10,     0,     0,   109,     0,
      11,     0,    12,     0,     0,     0,     0,    39,     0,     0,
      75,    66,    74,    73,     0,     0,     0,     0,     0,    25,
      32,    69,    76,    70,    71,    72,    85,    89,    64,     0,
       0,   107,    26,    14,     0,     0,     0,    28,   104,    29,
       0,     0,   110,    16,    41,    42,     0,    22,     0,     0,
      18,     0,     0,    67,     0,    34,    37,     0,    79,    80,
      81,     0,     0,     0,     0,     0,   105,    23,    20,     0,
      31,    35,     0,   108,    27,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    55,    48,    51,    56,     0,    49,
      52,     0,    69,    40,    21,    17,    78,    83,     0,    82,
      68,     0,    33,    86,    87,    88,    90,    91,    19,     0,
      30,    45,    46,     0,     0,    63,     0,    60,    61,    47,
      50,    54,     0,    77,     0,    38,    36,    43,    44,     0,
      92,    97,   100,   102,    65,     0,    62,     0,    84,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,    53,
      57,    95,    96,    93,    94,    98,    99,   101,   103,    59,
       0,    58
};

  /* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -159,  -159,  -159,   218,   -75,  -159,  -159,     0,   212,  -159,
     193,   186,   -67,   -50,  -159,  -159,    42,   140,   -35,  -159,
     102,  -158,   -22,    75,   -78,  -159,  -159,  -159,  -159,   -41,
    -159,  -159,    68,   -36,    -7,    48,    45,  -159,   203,   -29,
     -48,   196,  -159
};

  /* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
      -1,     5,     6,     7,     8,     9,    10,    16,    23,    11,
      17,    24,    77,    59,   112,    97,    46,    47,   127,   128,
     129,   130,   131,   169,    61,    62,    63,    64,    65,    66,
     138,   139,    67,    68,   171,   172,   173,   174,    79,    30,
      31,    38,    39
};

  /* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
     positive, shift that token.  If negative, reduce the rule whose
     number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_uint8 yytable[] =
{
      78,    78,    71,    93,    19,    96,    60,    69,   132,   111,
      87,   126,    20,    90,   114,    98,    99,   100,   180,   181,
     107,   190,    12,    13,    43,    44,    43,    44,    43,    44,
     199,    14,    94,    60,    45,    88,    48,    89,    74,   108,
      78,    27,   201,    28,    92,    78,    29,    15,    60,    29,
     132,   182,   183,   126,   134,    88,   135,    91,   141,    18,
     143,   144,   145,   142,    71,    50,    51,    52,    53,    49,
     137,    32,    33,     1,   148,   149,    75,     2,     3,     4,
     150,    26,   166,    50,    51,    52,    53,    36,    22,    54,
      37,   165,    55,    95,    35,    33,    56,    57,    58,   156,
      34,   132,    28,   167,   168,    29,    70,    54,   136,    29,
     132,    40,    41,    78,    56,    57,    58,   170,   170,    60,
      19,    81,   132,    28,    37,    72,    29,   101,   102,   103,
      88,    84,   109,    42,    41,   104,   105,    85,    71,    71,
     177,    86,   178,   106,   191,   192,   193,   194,   170,   170,
     170,   170,    50,    51,    52,    53,    43,    44,   113,   184,
     185,   115,     1,   117,   116,   118,    29,   119,   120,   121,
     122,   123,   146,   147,   124,   140,    54,   195,   196,    86,
     125,   151,   153,    56,    57,    58,    50,    51,    52,    53,
     152,   154,   157,   158,   161,   162,     1,   117,   163,   118,
     164,   119,   120,   121,   122,   123,   176,   179,   124,   186,
      54,   187,   188,    86,   159,   189,   200,    56,    57,    58,
      50,    51,    52,    53,    21,    25,    73,    83,   133,   175,
     160,   117,   198,   118,   197,    82,     0,   121,   122,   123,
      80,     0,   124,     0,    54,     0,     0,    86,     0,     0,
       0,    56,    57,    58,    50,    51,    52,    53,     0,     0,
       0,     0,     0,     0,    50,    51,    52,    53,     0,     0,
       0,     0,     0,     0,    50,    51,    52,    53,    54,     0,
       0,    76,   110,     0,     0,    56,    57,    58,    54,     0,
       0,    55,     0,     0,     0,    56,    57,    58,    54,     0,
       0,    76,     0,     0,     0,    56,    57,    58,    50,    51,
      52,    53,    50,    51,    52,    53,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     155,     0,    54,     0,     0,     0,    54,     0,     0,    56,
      57,    58,     0,    56,    57,    58
};

static const yytype_int16 yycheck[] =
{
      36,    37,    31,    51,     4,    55,    28,    29,    86,    76,
      45,    86,     0,    48,    81,    56,    57,    58,     7,     8,
      70,   179,    18,    19,    18,    19,    18,    19,    18,    19,
     188,     4,    54,    55,    28,    26,    28,    28,    28,    74,
      76,    27,   200,    29,    27,    81,    32,     4,    70,    32,
     128,    40,    41,   128,    89,    26,    91,    28,    26,     4,
     101,   102,   103,    31,    93,     3,     4,     5,     6,    27,
      92,    25,    26,    13,   109,    26,    34,    17,    18,    19,
      31,    27,   149,     3,     4,     5,     6,    29,     4,    27,
      32,   141,    30,    31,    25,    26,    34,    35,    36,   121,
      27,   179,    29,   151,   152,    32,    29,    27,    28,    32,
     188,    25,    26,   149,    34,    35,    36,   153,   154,   141,
     120,    29,   200,    29,    32,     4,    32,    37,    38,    39,
      26,     4,    28,    25,    26,    34,    35,     4,   167,   168,
     162,    30,   164,    33,   180,   181,   182,   183,   184,   185,
     186,   187,     3,     4,     5,     6,    18,    19,    33,     9,
      10,    32,    13,    14,    32,    16,    32,    18,    19,    20,
      21,    22,   104,   105,    25,    28,    27,   184,   185,    30,
      31,    33,    27,    34,    35,    36,     3,     4,     5,     6,
      33,    27,    25,    25,    25,    29,    13,    14,    28,    16,
      26,    18,    19,    20,    21,    22,    25,    28,    25,    11,
      27,    12,    28,    30,    31,    25,    15,    34,    35,    36,
       3,     4,     5,     6,     6,    13,    33,    41,    88,   154,
     128,    14,   187,    16,   186,    39,    -1,    20,    21,    22,
      37,    -1,    25,    -1,    27,    -1,    -1,    30,    -1,    -1,
      -1,    34,    35,    36,     3,     4,     5,     6,    -1,    -1,
      -1,    -1,    -1,    -1,     3,     4,     5,     6,    -1,    -1,
      -1,    -1,    -1,    -1,     3,     4,     5,     6,    27,    -1,
      -1,    30,    31,    -1,    -1,    34,    35,    36,    27,    -1,
      -1,    30,    -1,    -1,    -1,    34,    35,    36,    27,    -1,
      -1,    30,    -1,    -1,    -1,    34,    35,    36,     3,     4,
       5,     6,     3,     4,     5,     6,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      25,    -1,    27,    -1,    -1,    -1,    27,    -1,    -1,    34,
      35,    36,    -1,    34,    35,    36
};

  /* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
     symbol of state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,    13,    17,    18,    19,    43,    44,    45,    46,    47,
      48,    51,    18,    19,     4,     4,    49,    52,     4,    49,
       0,    45,     4,    50,    53,    50,    27,    27,    29,    32,
      81,    82,    25,    26,    27,    25,    29,    32,    83,    84,
      25,    26,    25,    18,    19,    28,    58,    59,    28,    58,
       3,     4,     5,     6,    27,    30,    34,    35,    36,    55,
      64,    66,    67,    68,    69,    70,    71,    74,    75,    64,
      29,    81,     4,    52,    28,    58,    30,    54,    75,    80,
      80,    29,    83,    53,     4,     4,    30,    60,    26,    28,
      60,    28,    27,    82,    64,    31,    55,    57,    71,    71,
      71,    37,    38,    39,    34,    35,    33,    55,    60,    28,
      31,    54,    56,    33,    54,    32,    32,    14,    16,    18,
      19,    20,    21,    22,    25,    31,    46,    60,    61,    62,
      63,    64,    66,    59,    60,    60,    28,    64,    72,    73,
      28,    26,    31,    71,    71,    71,    74,    74,    60,    26,
      31,    33,    33,    27,    27,    25,    64,    25,    25,    31,
      62,    25,    29,    28,    26,    55,    54,    82,    82,    65,
      75,    76,    77,    78,    79,    65,    25,    64,    64,    28,
       7,     8,    40,    41,     9,    10,    11,    12,    28,    25,
      63,    75,    75,    75,    75,    76,    76,    77,    78,    63,
      15,    63
};

  /* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_int8 yyr1[] =
{
       0,    42,    43,    44,    44,    45,    45,    46,    46,    47,
      47,    48,    48,    49,    49,    50,    50,    51,    51,    51,
      51,    51,    51,    52,    52,    52,    52,    53,    53,    54,
      54,    54,    55,    55,    55,    56,    56,    57,    57,    58,
      58,    59,    59,    59,    59,    59,    59,    60,    60,    61,
      61,    62,    62,    63,    63,    63,    63,    63,    63,    63,
      63,    63,    63,    63,    64,    65,    66,    66,    67,    67,
      67,    67,    67,    68,    69,    70,    71,    71,    71,    71,
      71,    71,    72,    73,    73,    74,    74,    74,    74,    75,
      75,    75,    76,    76,    76,    76,    76,    77,    77,    77,
      78,    78,    79,    79,    80,    81,    82,    82,    83,    84,
      84
};

  /* YYR2[YYN] -- Number of symbols on the right hand side of rule YYN.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     1,     1,     2,     1,     1,     1,     1,     3,
       3,     4,     4,     1,     3,     1,     3,     6,     5,     6,
       5,     6,     5,     4,     2,     3,     1,     4,     3,     1,
       3,     2,     1,     3,     2,     1,     3,     1,     3,     1,
       3,     2,     2,     5,     5,     4,     4,     3,     2,     1,
       2,     1,     1,     4,     2,     1,     1,     5,     7,     5,
       2,     2,     3,     2,     1,     1,     1,     2,     3,     1,
       1,     1,     1,     1,     1,     1,     1,     4,     3,     2,
       2,     2,     1,     1,     3,     1,     3,     3,     3,     1,
       3,     3,     1,     3,     3,     3,     3,     1,     3,     3,
       1,     3,     1,     3,     1,     3,     1,     2,     3,     1,
       2
};


#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)
#define YYEMPTY         (-2)
#define YYEOF           0

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                    \
  do                                                              \
    if (yychar == YYEMPTY)                                        \
      {                                                           \
        yychar = (Token);                                         \
        yylval = (Value);                                         \
        YYPOPSTACK (yylen);                                       \
        yystate = *yyssp;                                         \
        goto yybackup;                                            \
      }                                                           \
    else                                                          \
      {                                                           \
        yyerror (YY_("syntax error: cannot back up")); \
        YYERROR;                                                  \
      }                                                           \
  while (0)

/* Error token number */
#define YYTERROR        1
#define YYERRCODE       256


/* YYLLOC_DEFAULT -- Set CURRENT to span from RHS[1] to RHS[N].
   If N is 0, then set CURRENT to the empty location which ends
   the previous symbol: RHS[0] (always defined).  */

#ifndef YYLLOC_DEFAULT
# define YYLLOC_DEFAULT(Current, Rhs, N)                                \
    do                                                                  \
      if (N)                                                            \
        {                                                               \
          (Current).first_line   = YYRHSLOC (Rhs, 1).first_line;        \
          (Current).first_column = YYRHSLOC (Rhs, 1).first_column;      \
          (Current).last_line    = YYRHSLOC (Rhs, N).last_line;         \
          (Current).last_column  = YYRHSLOC (Rhs, N).last_column;       \
        }                                                               \
      else                                                              \
        {                                                               \
          (Current).first_line   = (Current).last_line   =              \
            YYRHSLOC (Rhs, 0).last_line;                                \
          (Current).first_column = (Current).last_column =              \
            YYRHSLOC (Rhs, 0).last_column;                              \
        }                                                               \
    while (0)
#endif

#define YYRHSLOC(Rhs, K) ((Rhs)[K])


/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)


/* YY_LOCATION_PRINT -- Print the location on the stream.
   This macro was not mandated originally: define only if we know
   we won't break user code: when these are the locations we know.  */

#ifndef YY_LOCATION_PRINT
# if defined YYLTYPE_IS_TRIVIAL && YYLTYPE_IS_TRIVIAL

/* Print *YYLOCP on YYO.  Private, do not rely on its existence. */

YY_ATTRIBUTE_UNUSED
static int
yy_location_print_ (FILE *yyo, YYLTYPE const * const yylocp)
{
  int res = 0;
  int end_col = 0 != yylocp->last_column ? yylocp->last_column - 1 : 0;
  if (0 <= yylocp->first_line)
    {
      res += YYFPRINTF (yyo, "%d", yylocp->first_line);
      if (0 <= yylocp->first_column)
        res += YYFPRINTF (yyo, ".%d", yylocp->first_column);
    }
  if (0 <= yylocp->last_line)
    {
      if (yylocp->first_line < yylocp->last_line)
        {
          res += YYFPRINTF (yyo, "-%d", yylocp->last_line);
          if (0 <= end_col)
            res += YYFPRINTF (yyo, ".%d", end_col);
        }
      else if (0 <= end_col && yylocp->first_column < end_col)
        res += YYFPRINTF (yyo, "-%d", end_col);
    }
  return res;
 }

#  define YY_LOCATION_PRINT(File, Loc)          \
  yy_location_print_ (File, &(Loc))

# else
#  define YY_LOCATION_PRINT(File, Loc) ((void) 0)
# endif
#endif


# define YY_SYMBOL_PRINT(Title, Type, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Type, Value, Location); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*-----------------------------------.
| Print this symbol's value on YYO.  |
`-----------------------------------*/

static void
yy_symbol_value_print (FILE *yyo, int yytype, YYSTYPE const * const yyvaluep, YYLTYPE const * const yylocationp)
{
  FILE *yyoutput = yyo;
  YYUSE (yyoutput);
  YYUSE (yylocationp);
  if (!yyvaluep)
    return;
# ifdef YYPRINT
  if (yytype < YYNTOKENS)
    YYPRINT (yyo, yytoknum[yytype], *yyvaluep);
# endif
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YYUSE (yytype);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/*---------------------------.
| Print this symbol on YYO.  |
`---------------------------*/

static void
yy_symbol_print (FILE *yyo, int yytype, YYSTYPE const * const yyvaluep, YYLTYPE const * const yylocationp)
{
  YYFPRINTF (yyo, "%s %s (",
             yytype < YYNTOKENS ? "token" : "nterm", yytname[yytype]);

  YY_LOCATION_PRINT (yyo, *yylocationp);
  YYFPRINTF (yyo, ": ");
  yy_symbol_value_print (yyo, yytype, yyvaluep, yylocationp);
  YYFPRINTF (yyo, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yy_state_t *yybottom, yy_state_t *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yy_state_t *yyssp, YYSTYPE *yyvsp, YYLTYPE *yylsp, int yyrule)
{
  int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %d):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       yystos[+yyssp[yyi + 1 - yynrhs]],
                       &yyvsp[(yyi + 1) - (yynrhs)]
                       , &(yylsp[(yyi + 1) - (yynrhs)])                       );
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, yylsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif


#if YYERROR_VERBOSE

# ifndef yystrlen
#  if defined __GLIBC__ && defined _STRING_H
#   define yystrlen(S) (YY_CAST (YYPTRDIFF_T, strlen (S)))
#  else
/* Return the length of YYSTR.  */
static YYPTRDIFF_T
yystrlen (const char *yystr)
{
  YYPTRDIFF_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
#  endif
# endif

# ifndef yystpcpy
#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#   define yystpcpy stpcpy
#  else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
static char *
yystpcpy (char *yydest, const char *yysrc)
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
#  endif
# endif

# ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYPTRDIFF_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYPTRDIFF_T yyn = 0;
      char const *yyp = yystr;

      for (;;)
        switch (*++yyp)
          {
          case '\'':
          case ',':
            goto do_not_strip_quotes;

          case '\\':
            if (*++yyp != '\\')
              goto do_not_strip_quotes;
            else
              goto append;

          append:
          default:
            if (yyres)
              yyres[yyn] = *yyp;
            yyn++;
            break;

          case '"':
            if (yyres)
              yyres[yyn] = '\0';
            return yyn;
          }
    do_not_strip_quotes: ;
    }

  if (yyres)
    return yystpcpy (yyres, yystr) - yyres;
  else
    return yystrlen (yystr);
}
# endif

/* Copy into *YYMSG, which is of size *YYMSG_ALLOC, an error message
   about the unexpected token YYTOKEN for the state stack whose top is
   YYSSP.

   Return 0 if *YYMSG was successfully written.  Return 1 if *YYMSG is
   not large enough to hold the message.  In that case, also set
   *YYMSG_ALLOC to the required number of bytes.  Return 2 if the
   required number of bytes is too large to store.  */
static int
yysyntax_error (YYPTRDIFF_T *yymsg_alloc, char **yymsg,
                yy_state_t *yyssp, int yytoken)
{
  enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
  /* Internationalized format string. */
  const char *yyformat = YY_NULLPTR;
  /* Arguments of yyformat: reported tokens (one for the "unexpected",
     one per "expected"). */
  char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
  /* Actual size of YYARG. */
  int yycount = 0;
  /* Cumulated lengths of YYARG.  */
  YYPTRDIFF_T yysize = 0;

  /* There are many possibilities here to consider:
     - If this state is a consistent state with a default action, then
       the only way this function was invoked is if the default action
       is an error action.  In that case, don't check for expected
       tokens because there are none.
     - The only way there can be no lookahead present (in yychar) is if
       this state is a consistent state with a default action.  Thus,
       detecting the absence of a lookahead is sufficient to determine
       that there is no unexpected or expected token to report.  In that
       case, just report a simple "syntax error".
     - Don't assume there isn't a lookahead just because this state is a
       consistent state with a default action.  There might have been a
       previous inconsistent state, consistent state with a non-default
       action, or user semantic action that manipulated yychar.
     - Of course, the expected token list depends on states to have
       correct lookahead information, and it depends on the parser not
       to perform extra reductions after fetching a lookahead from the
       scanner and before detecting a syntax error.  Thus, state merging
       (from LALR or IELR) and default reductions corrupt the expected
       token list.  However, the list is correct for canonical LR with
       one exception: it will still contain any token that will not be
       accepted due to an error action in a later state.
  */
  if (yytoken != YYEMPTY)
    {
      int yyn = yypact[+*yyssp];
      YYPTRDIFF_T yysize0 = yytnamerr (YY_NULLPTR, yytname[yytoken]);
      yysize = yysize0;
      yyarg[yycount++] = yytname[yytoken];
      if (!yypact_value_is_default (yyn))
        {
          /* Start YYX at -YYN if negative to avoid negative indexes in
             YYCHECK.  In other words, skip the first -YYN actions for
             this state because they are default actions.  */
          int yyxbegin = yyn < 0 ? -yyn : 0;
          /* Stay within bounds of both yycheck and yytname.  */
          int yychecklim = YYLAST - yyn + 1;
          int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
          int yyx;

          for (yyx = yyxbegin; yyx < yyxend; ++yyx)
            if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR
                && !yytable_value_is_error (yytable[yyx + yyn]))
              {
                if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
                  {
                    yycount = 1;
                    yysize = yysize0;
                    break;
                  }
                yyarg[yycount++] = yytname[yyx];
                {
                  YYPTRDIFF_T yysize1
                    = yysize + yytnamerr (YY_NULLPTR, yytname[yyx]);
                  if (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM)
                    yysize = yysize1;
                  else
                    return 2;
                }
              }
        }
    }

  switch (yycount)
    {
# define YYCASE_(N, S)                      \
      case N:                               \
        yyformat = S;                       \
      break
    default: /* Avoid compiler warnings. */
      YYCASE_(0, YY_("syntax error"));
      YYCASE_(1, YY_("syntax error, unexpected %s"));
      YYCASE_(2, YY_("syntax error, unexpected %s, expecting %s"));
      YYCASE_(3, YY_("syntax error, unexpected %s, expecting %s or %s"));
      YYCASE_(4, YY_("syntax error, unexpected %s, expecting %s or %s or %s"));
      YYCASE_(5, YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"));
# undef YYCASE_
    }

  {
    /* Don't count the "%s"s in the final size, but reserve room for
       the terminator.  */
    YYPTRDIFF_T yysize1 = yysize + (yystrlen (yyformat) - 2 * yycount) + 1;
    if (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM)
      yysize = yysize1;
    else
      return 2;
  }

  if (*yymsg_alloc < yysize)
    {
      *yymsg_alloc = 2 * yysize;
      if (! (yysize <= *yymsg_alloc
             && *yymsg_alloc <= YYSTACK_ALLOC_MAXIMUM))
        *yymsg_alloc = YYSTACK_ALLOC_MAXIMUM;
      return 1;
    }

  /* Avoid sprintf, as that infringes on the user's name space.
     Don't have undefined behavior even if the translation
     produced a string with the wrong number of "%s"s.  */
  {
    char *yyp = *yymsg;
    int yyi = 0;
    while ((*yyp = *yyformat) != '\0')
      if (*yyp == '%' && yyformat[1] == 's' && yyi < yycount)
        {
          yyp += yytnamerr (yyp, yyarg[yyi++]);
          yyformat += 2;
        }
      else
        {
          ++yyp;
          ++yyformat;
        }
  }
  return 0;
}
#endif /* YYERROR_VERBOSE */

/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep, YYLTYPE *yylocationp)
{
  YYUSE (yyvaluep);
  YYUSE (yylocationp);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YYUSE (yytype);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}




/* The lookahead symbol.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Location data for the lookahead symbol.  */
YYLTYPE yylloc
# if defined YYLTYPE_IS_TRIVIAL && YYLTYPE_IS_TRIVIAL
  = { 1, 1, 1, 1 }
# endif
;
/* Number of syntax errors so far.  */
int yynerrs;


/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    yy_state_fast_t yystate;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus;

    /* The stacks and their tools:
       'yyss': related to states.
       'yyvs': related to semantic values.
       'yyls': related to locations.

       Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* The state stack.  */
    yy_state_t yyssa[YYINITDEPTH];
    yy_state_t *yyss;
    yy_state_t *yyssp;

    /* The semantic value stack.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs;
    YYSTYPE *yyvsp;

    /* The location stack.  */
    YYLTYPE yylsa[YYINITDEPTH];
    YYLTYPE *yyls;
    YYLTYPE *yylsp;

    /* The locations where the error started and ended.  */
    YYLTYPE yyerror_range[3];

    YYPTRDIFF_T yystacksize;

  int yyn;
  int yyresult;
  /* Lookahead token as an internal (translated) token number.  */
  int yytoken = 0;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;
  YYLTYPE yyloc;

#if YYERROR_VERBOSE
  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYPTRDIFF_T yymsg_alloc = sizeof yymsgbuf;
#endif

#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N), yylsp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  yyssp = yyss = yyssa;
  yyvsp = yyvs = yyvsa;
  yylsp = yyls = yylsa;
  yystacksize = YYINITDEPTH;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yystate = 0;
  yyerrstatus = 0;
  yynerrs = 0;
  yychar = YYEMPTY; /* Cause a token to be read.  */
  yylsp[0] = yylloc;
  goto yysetstate;


/*------------------------------------------------------------.
| yynewstate -- push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;


/*--------------------------------------------------------------------.
| yysetstate -- set current state (the top of the stack) to yystate.  |
`--------------------------------------------------------------------*/
yysetstate:
  YYDPRINTF ((stderr, "Entering state %d\n", yystate));
  YY_ASSERT (0 <= yystate && yystate < YYNSTATES);
  YY_IGNORE_USELESS_CAST_BEGIN
  *yyssp = YY_CAST (yy_state_t, yystate);
  YY_IGNORE_USELESS_CAST_END

  if (yyss + yystacksize - 1 <= yyssp)
#if !defined yyoverflow && !defined YYSTACK_RELOCATE
    goto yyexhaustedlab;
#else
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYPTRDIFF_T yysize = yyssp - yyss + 1;

# if defined yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        yy_state_t *yyss1 = yyss;
        YYSTYPE *yyvs1 = yyvs;
        YYLTYPE *yyls1 = yyls;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * YYSIZEOF (*yyssp),
                    &yyvs1, yysize * YYSIZEOF (*yyvsp),
                    &yyls1, yysize * YYSIZEOF (*yylsp),
                    &yystacksize);
        yyss = yyss1;
        yyvs = yyvs1;
        yyls = yyls1;
      }
# else /* defined YYSTACK_RELOCATE */
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yy_state_t *yyss1 = yyss;
        union yyalloc *yyptr =
          YY_CAST (union yyalloc *,
                   YYSTACK_ALLOC (YY_CAST (YYSIZE_T, YYSTACK_BYTES (yystacksize))));
        if (! yyptr)
          goto yyexhaustedlab;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
        YYSTACK_RELOCATE (yyls_alloc, yyls);
# undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;
      yylsp = yyls + yysize - 1;

      YY_IGNORE_USELESS_CAST_BEGIN
      YYDPRINTF ((stderr, "Stack size increased to %ld\n",
                  YY_CAST (long, yystacksize)));
      YY_IGNORE_USELESS_CAST_END

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }
#endif /* !defined yyoverflow && !defined YYSTACK_RELOCATE */

  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;


/*-----------.
| yybackup.  |
`-----------*/
yybackup:
  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either YYEMPTY or YYEOF or a valid lookahead symbol.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token: "));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = yytoken = YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);
  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END
  *++yylsp = yylloc;

  /* Discard the shifted token.  */
  yychar = YYEMPTY;
  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];

  /* Default location. */
  YYLLOC_DEFAULT (yyloc, (yylsp - yylen), yylen);
  yyerror_range[1] = yyloc;
  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
  case 2:
#line 66 "src/SysY_parser.y"
{
    (yyloc) = (yylsp[0]);
    ast_root = new __Program((yyvsp[0].comps));
    ast_root->set_line_number(line_number);
}
#line 1642 "SysY_parser.tab.c"
    break;

  case 3:
#line 74 "src/SysY_parser.y"
{
    (yyval.comps) = new std::vector<CompUnit>;
    ((yyval.comps))->push_back((yyvsp[0].comp_unit));
}
#line 1651 "SysY_parser.tab.c"
    break;

  case 4:
#line 79 "src/SysY_parser.y"
{
    ((yyvsp[-1].comps))->push_back((yyvsp[0].comp_unit));
    (yyval.comps) = (yyvsp[-1].comps);
}
#line 1660 "SysY_parser.tab.c"
    break;

  case 5:
#line 85 "src/SysY_parser.y"
     {(yyval.comp_unit) = new CompUnit_Decl((yyvsp[0].decl));(yyval.comp_unit)->set_line_number(line_number);}
#line 1666 "SysY_parser.tab.c"
    break;

  case 6:
#line 86 "src/SysY_parser.y"
        {(yyval.comp_unit) = new CompUnit_FuncDef((yyvsp[0].func_def));(yyval.comp_unit)->set_line_number(line_number);}
#line 1672 "SysY_parser.tab.c"
    break;

  case 7:
#line 90 "src/SysY_parser.y"
        {(yyval.decl) = (yyvsp[0].decl);(yyval.decl)->set_line_number(line_number);}
#line 1678 "SysY_parser.tab.c"
    break;

  case 8:
#line 91 "src/SysY_parser.y"
          {(yyval.decl) = (yyvsp[0].decl);(yyval.decl)->set_line_number(line_number);}
#line 1684 "SysY_parser.tab.c"
    break;

  case 9:
#line 95 "src/SysY_parser.y"
                    {(yyval.decl) = new VarDecl(1,(yyvsp[-1].defs));(yyval.decl)->set_line_number(line_number);}
#line 1690 "SysY_parser.tab.c"
    break;

  case 10:
#line 96 "src/SysY_parser.y"
                      {(yyval.decl) = new VarDecl(2,(yyvsp[-1].defs));(yyval.decl)->set_line_number(line_number);}
#line 1696 "SysY_parser.tab.c"
    break;

  case 11:
#line 100 "src/SysY_parser.y"
                            {(yyval.decl) = new ConstDecl(1,(yyvsp[-1].defs));(yyval.decl)->set_line_number(line_number);}
#line 1702 "SysY_parser.tab.c"
    break;

  case 12:
#line 101 "src/SysY_parser.y"
                              {(yyval.decl) = new ConstDecl(2,(yyvsp[-1].defs));(yyval.decl)->set_line_number(line_number);}
#line 1708 "SysY_parser.tab.c"
    break;

  case 13:
#line 106 "src/SysY_parser.y"
{
    (yyval.defs) = new std::vector<Def>;
    ((yyval.defs))->push_back((yyvsp[0].def));
}
#line 1717 "SysY_parser.tab.c"
    break;

  case 14:
#line 111 "src/SysY_parser.y"
{
    ((yyvsp[-2].defs))->push_back((yyvsp[0].def));
    (yyval.defs) = (yyvsp[-2].defs);
}
#line 1726 "SysY_parser.tab.c"
    break;

  case 15:
#line 119 "src/SysY_parser.y"
{
    (yyval.defs) = new std::vector<Def>;
    ((yyval.defs))->push_back((yyvsp[0].def));
}
#line 1735 "SysY_parser.tab.c"
    break;

  case 16:
#line 124 "src/SysY_parser.y"
{
    ((yyvsp[-2].defs))->push_back((yyvsp[0].def));
    (yyval.defs) = (yyvsp[-2].defs);
}
#line 1744 "SysY_parser.tab.c"
    break;

  case 17:
#line 132 "src/SysY_parser.y"
{(yyval.func_def) = new __FuncDef(1,(yyvsp[-4].symbol_token),(yyvsp[-2].formals),(yyvsp[0].block));(yyval.func_def)->set_line_number(line_number);}
#line 1750 "SysY_parser.tab.c"
    break;

  case 18:
#line 134 "src/SysY_parser.y"
{(yyval.func_def) = new __FuncDef(1,(yyvsp[-3].symbol_token),new std::vector<FuncFParam>(),(yyvsp[0].block));(yyval.func_def)->set_line_number(line_number);}
#line 1756 "SysY_parser.tab.c"
    break;

  case 19:
#line 136 "src/SysY_parser.y"
{(yyval.func_def) = new __FuncDef(2,(yyvsp[-4].symbol_token),(yyvsp[-2].formals),(yyvsp[0].block));(yyval.func_def)->set_line_number(line_number);}
#line 1762 "SysY_parser.tab.c"
    break;

  case 20:
#line 138 "src/SysY_parser.y"
{(yyval.func_def) = new __FuncDef(2,(yyvsp[-3].symbol_token),new std::vector<FuncFParam>(),(yyvsp[0].block));(yyval.func_def)->set_line_number(line_number);}
#line 1768 "SysY_parser.tab.c"
    break;

  case 21:
#line 140 "src/SysY_parser.y"
{(yyval.func_def) = new __FuncDef(0,(yyvsp[-4].symbol_token),(yyvsp[-2].formals),(yyvsp[0].block));(yyval.func_def)->set_line_number(line_number);}
#line 1774 "SysY_parser.tab.c"
    break;

  case 22:
#line 142 "src/SysY_parser.y"
{(yyval.func_def) = new __FuncDef(0,(yyvsp[-3].symbol_token),new std::vector<FuncFParam>(),(yyvsp[0].block));(yyval.func_def)->set_line_number(line_number);}
#line 1780 "SysY_parser.tab.c"
    break;

  case 23:
#line 147 "src/SysY_parser.y"
{(yyval.def) = new VarDef((yyvsp[-3].symbol_token),(yyvsp[-2].expressions),(yyvsp[0].initval));(yyval.def)->set_line_number(line_number);}
#line 1786 "SysY_parser.tab.c"
    break;

  case 24:
#line 149 "src/SysY_parser.y"
{(yyval.def) = new VarDef_no_init((yyvsp[-1].symbol_token),(yyvsp[0].expressions));(yyval.def)->set_line_number(line_number);}
#line 1792 "SysY_parser.tab.c"
    break;

  case 25:
#line 151 "src/SysY_parser.y"
{(yyval.def) = new VarDef((yyvsp[-2].symbol_token),nullptr,(yyvsp[0].initval));(yyval.def)->set_line_number(line_number);}
#line 1798 "SysY_parser.tab.c"
    break;

  case 26:
#line 153 "src/SysY_parser.y"
{(yyval.def) = new VarDef_no_init((yyvsp[0].symbol_token),nullptr);(yyval.def)->set_line_number(line_number);}
#line 1804 "SysY_parser.tab.c"
    break;

  case 27:
#line 158 "src/SysY_parser.y"
{(yyval.def) = new ConstDef((yyvsp[-3].symbol_token),(yyvsp[-2].expressions),(yyvsp[0].initval));(yyval.def)->set_line_number(line_number);}
#line 1810 "SysY_parser.tab.c"
    break;

  case 28:
#line 160 "src/SysY_parser.y"
{(yyval.def) = new ConstDef((yyvsp[-2].symbol_token),nullptr,(yyvsp[0].initval));(yyval.def)->set_line_number(line_number);}
#line 1816 "SysY_parser.tab.c"
    break;

  case 29:
#line 164 "src/SysY_parser.y"
         {(yyval.initval) = new ConstInitVal_exp((yyvsp[0].expression));(yyval.initval)->set_line_number(line_number);}
#line 1822 "SysY_parser.tab.c"
    break;

  case 30:
#line 165 "src/SysY_parser.y"
                          {(yyval.initval) = new ConstInitVal((yyvsp[-1].initvals));(yyval.initval)->set_line_number(line_number);}
#line 1828 "SysY_parser.tab.c"
    break;

  case 31:
#line 166 "src/SysY_parser.y"
        {(yyval.initval) = new ConstInitVal(new std::vector<InitVal>());(yyval.initval)->set_line_number(line_number);}
#line 1834 "SysY_parser.tab.c"
    break;

  case 32:
#line 170 "src/SysY_parser.y"
    {(yyval.initval) = new VarInitVal_exp((yyvsp[0].expression));(yyval.initval)->set_line_number(line_number);}
#line 1840 "SysY_parser.tab.c"
    break;

  case 33:
#line 171 "src/SysY_parser.y"
                        {(yyval.initval) = new VarInitVal((yyvsp[-1].initvals));(yyval.initval)->set_line_number(line_number);}
#line 1846 "SysY_parser.tab.c"
    break;

  case 34:
#line 172 "src/SysY_parser.y"
        {(yyval.initval) = new VarInitVal(new std::vector<InitVal>());(yyval.initval)->set_line_number(line_number);}
#line 1852 "SysY_parser.tab.c"
    break;

  case 35:
#line 176 "src/SysY_parser.y"
             {
    (yyval.initvals) = new std::vector<InitVal>;
    ((yyval.initvals))->push_back((yyvsp[0].initval));
}
#line 1861 "SysY_parser.tab.c"
    break;

  case 36:
#line 180 "src/SysY_parser.y"
                                   {
    ((yyvsp[-2].initvals))->push_back((yyvsp[0].initval));
    (yyval.initvals) = (yyvsp[-2].initvals);
}
#line 1870 "SysY_parser.tab.c"
    break;

  case 37:
#line 187 "src/SysY_parser.y"
           {
    (yyval.initvals) = new std::vector<InitVal>;
    ((yyval.initvals))->push_back((yyvsp[0].initval));
}
#line 1879 "SysY_parser.tab.c"
    break;

  case 38:
#line 191 "src/SysY_parser.y"
                               {
    ((yyvsp[-2].initvals))->push_back((yyvsp[0].initval));
    (yyval.initvals) = (yyvsp[-2].initvals);
}
#line 1888 "SysY_parser.tab.c"
    break;

  case 39:
#line 198 "src/SysY_parser.y"
           {
    (yyval.formals) = new std::vector<FuncFParam>;
    ((yyval.formals))->push_back((yyvsp[0].formal));
}
#line 1897 "SysY_parser.tab.c"
    break;

  case 40:
#line 202 "src/SysY_parser.y"
                           {
    ((yyvsp[-2].formals))->push_back((yyvsp[0].formal));
    (yyval.formals) = (yyvsp[-2].formals);
}
#line 1906 "SysY_parser.tab.c"
    break;

  case 41:
#line 210 "src/SysY_parser.y"
          {
    (yyval.formal) = new __FuncFParam(1,(yyvsp[0].symbol_token),nullptr);
    (yyval.formal)->set_line_number(line_number);
}
#line 1915 "SysY_parser.tab.c"
    break;

  case 42:
#line 214 "src/SysY_parser.y"
            {
    (yyval.formal) = new __FuncFParam(2,(yyvsp[0].symbol_token),nullptr);
    (yyval.formal)->set_line_number(line_number);
}
#line 1924 "SysY_parser.tab.c"
    break;

  case 43:
#line 218 "src/SysY_parser.y"
                                {
    (yyvsp[0].expressions)->insert((yyvsp[0].expressions)->begin(),nullptr);
    (yyval.formal) = new __FuncFParam(1,(yyvsp[-3].symbol_token),(yyvsp[0].expressions));
    (yyval.formal)->set_line_number(line_number);
}
#line 1934 "SysY_parser.tab.c"
    break;

  case 44:
#line 223 "src/SysY_parser.y"
                                  {
    (yyvsp[0].expressions)->insert((yyvsp[0].expressions)->begin(),nullptr);
    (yyval.formal) = new __FuncFParam(2,(yyvsp[-3].symbol_token),(yyvsp[0].expressions));
    (yyval.formal)->set_line_number(line_number);
}
#line 1944 "SysY_parser.tab.c"
    break;

  case 45:
#line 228 "src/SysY_parser.y"
                    {
    std::vector<Expression>* temp = new std::vector<Expression>;
    temp->push_back(nullptr);
    (yyval.formal) = new __FuncFParam(1,(yyvsp[-2].symbol_token),temp);
    (yyval.formal)->set_line_number(line_number);
}
#line 1955 "SysY_parser.tab.c"
    break;

  case 46:
#line 234 "src/SysY_parser.y"
                      {
    std::vector<Expression>* temp = new std::vector<Expression>;
    temp->push_back(nullptr);
    (yyval.formal) = new __FuncFParam(2,(yyvsp[-2].symbol_token),temp);
    (yyval.formal)->set_line_number(line_number);
}
#line 1966 "SysY_parser.tab.c"
    break;

  case 47:
#line 243 "src/SysY_parser.y"
                       {
    (yyval.block) = new __Block((yyvsp[-1].block_items));
    (yyval.block)->set_line_number(line_number);
}
#line 1975 "SysY_parser.tab.c"
    break;

  case 48:
#line 247 "src/SysY_parser.y"
        {
    (yyval.block) = new __Block(new std::vector<BlockItem>);
    (yyval.block)->set_line_number(line_number);
}
#line 1984 "SysY_parser.tab.c"
    break;

  case 49:
#line 254 "src/SysY_parser.y"
          {
    (yyval.block_items) = new std::vector<BlockItem>;
    ((yyval.block_items))->push_back((yyvsp[0].block_item));
}
#line 1993 "SysY_parser.tab.c"
    break;

  case 50:
#line 258 "src/SysY_parser.y"
                         {
    ((yyvsp[-1].block_items))->push_back((yyvsp[0].block_item));
    (yyval.block_items) = (yyvsp[-1].block_items);
}
#line 2002 "SysY_parser.tab.c"
    break;

  case 51:
#line 265 "src/SysY_parser.y"
     {
    (yyval.block_item) = new BlockItem_Decl((yyvsp[0].decl));
    (yyval.block_item)->set_line_number(line_number);
}
#line 2011 "SysY_parser.tab.c"
    break;

  case 52:
#line 269 "src/SysY_parser.y"
     {
    (yyval.block_item) = new BlockItem_Stmt((yyvsp[0].stmt));
    (yyval.block_item)->set_line_number(line_number);
}
#line 2020 "SysY_parser.tab.c"
    break;

  case 53:
#line 276 "src/SysY_parser.y"
                 {
    (yyval.stmt) = new assign_stmt((yyvsp[-3].expression),(yyvsp[-1].expression));
    (yyval.stmt)->set_line_number(line_number);
}
#line 2029 "SysY_parser.tab.c"
    break;

  case 54:
#line 280 "src/SysY_parser.y"
        {
    (yyval.stmt) = new expr_stmt((yyvsp[-1].expression));
    (yyval.stmt)->set_line_number(line_number);
}
#line 2038 "SysY_parser.tab.c"
    break;

  case 55:
#line 284 "src/SysY_parser.y"
    {
    (yyval.stmt) = new null_stmt();
    (yyval.stmt)->set_line_number(line_number);
}
#line 2047 "SysY_parser.tab.c"
    break;

  case 56:
#line 288 "src/SysY_parser.y"
      {
    (yyval.stmt) = new block_stmt((yyvsp[0].block));
    (yyval.stmt)->set_line_number(line_number);
}
#line 2056 "SysY_parser.tab.c"
    break;

  case 57:
#line 292 "src/SysY_parser.y"
                                {
    (yyval.stmt) = new if_stmt((yyvsp[-2].expression),(yyvsp[0].stmt));
    (yyval.stmt)->set_line_number(line_number);
}
#line 2065 "SysY_parser.tab.c"
    break;

  case 58:
#line 296 "src/SysY_parser.y"
                               {
    (yyval.stmt) = new ifelse_stmt((yyvsp[-4].expression),(yyvsp[-2].stmt),(yyvsp[0].stmt));
    (yyval.stmt)->set_line_number(line_number);
}
#line 2074 "SysY_parser.tab.c"
    break;

  case 59:
#line 300 "src/SysY_parser.y"
                        {
    (yyval.stmt) = new while_stmt((yyvsp[-2].expression),(yyvsp[0].stmt));
    (yyval.stmt)->set_line_number(line_number);
}
#line 2083 "SysY_parser.tab.c"
    break;

  case 60:
#line 304 "src/SysY_parser.y"
          {
    (yyval.stmt) = new break_stmt();
    (yyval.stmt)->set_line_number(line_number);
}
#line 2092 "SysY_parser.tab.c"
    break;

  case 61:
#line 308 "src/SysY_parser.y"
             {
    (yyval.stmt) = new continue_stmt();
    (yyval.stmt)->set_line_number(line_number);
}
#line 2101 "SysY_parser.tab.c"
    break;

  case 62:
#line 312 "src/SysY_parser.y"
               {
    (yyval.stmt) = new return_stmt((yyvsp[-1].expression));
    (yyval.stmt)->set_line_number(line_number);
}
#line 2110 "SysY_parser.tab.c"
    break;

  case 63:
#line 316 "src/SysY_parser.y"
           {
    (yyval.stmt) = new return_stmt_void();
    (yyval.stmt)->set_line_number(line_number);
}
#line 2119 "SysY_parser.tab.c"
    break;

  case 64:
#line 323 "src/SysY_parser.y"
       {(yyval.expression) = (yyvsp[0].expression);(yyval.expression)->set_line_number(line_number);}
#line 2125 "SysY_parser.tab.c"
    break;

  case 65:
#line 327 "src/SysY_parser.y"
       {(yyval.expression) = (yyvsp[0].expression);(yyval.expression)->set_line_number(line_number);}
#line 2131 "SysY_parser.tab.c"
    break;

  case 66:
#line 331 "src/SysY_parser.y"
      {
    (yyval.expression) = new Lval((yyvsp[0].symbol_token),nullptr);
    (yyval.expression)->set_line_number(line_number);
}
#line 2140 "SysY_parser.tab.c"
    break;

  case 67:
#line 335 "src/SysY_parser.y"
                    {
    (yyval.expression) = new Lval((yyvsp[-1].symbol_token),(yyvsp[0].expressions));
    (yyval.expression)->set_line_number(line_number);
}
#line 2149 "SysY_parser.tab.c"
    break;

  case 68:
#line 342 "src/SysY_parser.y"
            {
    (yyval.expression) = new PrimaryExp_branch((yyvsp[-1].expression));
    (yyval.expression)->set_line_number(line_number);
}
#line 2158 "SysY_parser.tab.c"
    break;

  case 69:
#line 346 "src/SysY_parser.y"
      {(yyval.expression) = (yyvsp[0].expression);(yyval.expression)->set_line_number(line_number);}
#line 2164 "SysY_parser.tab.c"
    break;

  case 70:
#line 347 "src/SysY_parser.y"
         {(yyval.expression) = (yyvsp[0].expression);(yyval.expression)->set_line_number(line_number);}
#line 2170 "SysY_parser.tab.c"
    break;

  case 71:
#line 348 "src/SysY_parser.y"
           {(yyval.expression) = (yyvsp[0].expression);(yyval.expression)->set_line_number(line_number);}
#line 2176 "SysY_parser.tab.c"
    break;

  case 72:
#line 349 "src/SysY_parser.y"
            {(yyval.expression) = (yyvsp[0].expression);(yyval.expression)->set_line_number(line_number);}
#line 2182 "SysY_parser.tab.c"
    break;

  case 73:
#line 353 "src/SysY_parser.y"
          {
    (yyval.expression) = new IntConst((yyvsp[0].int_token));
    (yyval.expression)->set_line_number(line_number);
}
#line 2191 "SysY_parser.tab.c"
    break;

  case 74:
#line 360 "src/SysY_parser.y"
            {
    (yyval.expression) = new FloatConst((yyvsp[0].float_token));
    (yyval.expression)->set_line_number(line_number);
}
#line 2200 "SysY_parser.tab.c"
    break;

  case 75:
#line 367 "src/SysY_parser.y"
          {
    (yyval.expression) = new StringConst((yyvsp[0].symbol_token));
    (yyval.expression)->set_line_number(line_number);
}
#line 2209 "SysY_parser.tab.c"
    break;

  case 76:
#line 374 "src/SysY_parser.y"
           {(yyval.expression) = (yyvsp[0].expression);}
#line 2215 "SysY_parser.tab.c"
    break;

  case 77:
#line 375 "src/SysY_parser.y"
                          {
    (yyval.expression) = new Func_call((yyvsp[-3].symbol_token),(yyvsp[-1].expression));
    (yyval.expression)->set_line_number(line_number);
}
#line 2224 "SysY_parser.tab.c"
    break;

  case 78:
#line 379 "src/SysY_parser.y"
              {
    if((yyvsp[-2].symbol_token)->get_string() == "starttime"){
        auto params = new std::vector<Expression>;
        params->push_back(new IntConst(line_number));
        Expression temp = new FuncRParams(params);
        (yyval.expression) = new Func_call(id_table.add_id("_sysy_starttime"),temp);
        (yyval.expression)->set_line_number(line_number);
    }
    else if((yyvsp[-2].symbol_token)->get_string() == "stoptime"){
        auto params = new std::vector<Expression>;
        params->push_back(new IntConst(line_number));
        Expression temp = new FuncRParams(params);
        (yyval.expression) = new Func_call(id_table.add_id("_sysy_stoptime"),temp);
        (yyval.expression)->set_line_number(line_number);
    }
    else{
        (yyval.expression) = new Func_call((yyvsp[-2].symbol_token),nullptr);
        (yyval.expression)->set_line_number(line_number);
    }
}
#line 2249 "SysY_parser.tab.c"
    break;

  case 79:
#line 399 "src/SysY_parser.y"
             {
    (yyval.expression) = new UnaryExp_plus((yyvsp[0].expression));
    (yyval.expression)->set_line_number(line_number);
}
#line 2258 "SysY_parser.tab.c"
    break;

  case 80:
#line 403 "src/SysY_parser.y"
             {
    (yyval.expression) = new UnaryExp_neg((yyvsp[0].expression));
    (yyval.expression)->set_line_number(line_number);
}
#line 2267 "SysY_parser.tab.c"
    break;

  case 81:
#line 407 "src/SysY_parser.y"
             {
    (yyval.expression) = new UnaryExp_not((yyvsp[0].expression));
    (yyval.expression)->set_line_number(line_number);
}
#line 2276 "SysY_parser.tab.c"
    break;

  case 82:
#line 414 "src/SysY_parser.y"
         {
    (yyval.expression) = new FuncRParams((yyvsp[0].expressions));
    (yyval.expression)->set_line_number(line_number);
}
#line 2285 "SysY_parser.tab.c"
    break;

  case 83:
#line 421 "src/SysY_parser.y"
    {
    (yyval.expressions) = new std::vector<Expression>;
    ((yyval.expressions))->push_back((yyvsp[0].expression));
}
#line 2294 "SysY_parser.tab.c"
    break;

  case 84:
#line 425 "src/SysY_parser.y"
                 {
    ((yyvsp[-2].expressions))->push_back((yyvsp[0].expression));
    (yyval.expressions) = (yyvsp[-2].expressions);
}
#line 2303 "SysY_parser.tab.c"
    break;

  case 85:
#line 432 "src/SysY_parser.y"
         {(yyval.expression) = (yyvsp[0].expression);(yyval.expression)->set_line_number(line_number);}
#line 2309 "SysY_parser.tab.c"
    break;

  case 86:
#line 433 "src/SysY_parser.y"
                    {(yyval.expression) = new MulExp_mul((yyvsp[-2].expression),(yyvsp[0].expression));(yyval.expression)->set_line_number(line_number);}
#line 2315 "SysY_parser.tab.c"
    break;

  case 87:
#line 434 "src/SysY_parser.y"
                    {(yyval.expression) = new MulExp_div((yyvsp[-2].expression),(yyvsp[0].expression));(yyval.expression)->set_line_number(line_number);}
#line 2321 "SysY_parser.tab.c"
    break;

  case 88:
#line 435 "src/SysY_parser.y"
                    {(yyval.expression) = new MulExp_mod((yyvsp[-2].expression),(yyvsp[0].expression));(yyval.expression)->set_line_number(line_number);}
#line 2327 "SysY_parser.tab.c"
    break;

  case 89:
#line 439 "src/SysY_parser.y"
       {(yyval.expression) = (yyvsp[0].expression);(yyval.expression)->set_line_number(line_number);}
#line 2333 "SysY_parser.tab.c"
    break;

  case 90:
#line 440 "src/SysY_parser.y"
                  {(yyval.expression) = new AddExp_plus((yyvsp[-2].expression),(yyvsp[0].expression));(yyval.expression)->set_line_number(line_number);}
#line 2339 "SysY_parser.tab.c"
    break;

  case 91:
#line 441 "src/SysY_parser.y"
                  {(yyval.expression) = new AddExp_sub((yyvsp[-2].expression),(yyvsp[0].expression));(yyval.expression)->set_line_number(line_number);}
#line 2345 "SysY_parser.tab.c"
    break;

  case 92:
#line 445 "src/SysY_parser.y"
       {(yyval.expression) = (yyvsp[0].expression);(yyval.expression)->set_line_number(line_number);}
#line 2351 "SysY_parser.tab.c"
    break;

  case 93:
#line 446 "src/SysY_parser.y"
                  {(yyval.expression) = new RelExp_lt((yyvsp[-2].expression),(yyvsp[0].expression));(yyval.expression)->set_line_number(line_number);}
#line 2357 "SysY_parser.tab.c"
    break;

  case 94:
#line 447 "src/SysY_parser.y"
                  {(yyval.expression) = new RelExp_gt((yyvsp[-2].expression),(yyvsp[0].expression));(yyval.expression)->set_line_number(line_number);}
#line 2363 "SysY_parser.tab.c"
    break;

  case 95:
#line 448 "src/SysY_parser.y"
                  {(yyval.expression) = new RelExp_leq((yyvsp[-2].expression),(yyvsp[0].expression));(yyval.expression)->set_line_number(line_number);}
#line 2369 "SysY_parser.tab.c"
    break;

  case 96:
#line 449 "src/SysY_parser.y"
                  {(yyval.expression) = new RelExp_geq((yyvsp[-2].expression),(yyvsp[0].expression));(yyval.expression)->set_line_number(line_number);}
#line 2375 "SysY_parser.tab.c"
    break;

  case 97:
#line 453 "src/SysY_parser.y"
       {(yyval.expression) = (yyvsp[0].expression);(yyval.expression)->set_line_number(line_number);}
#line 2381 "SysY_parser.tab.c"
    break;

  case 98:
#line 454 "src/SysY_parser.y"
                {(yyval.expression) = new EqExp_eq((yyvsp[-2].expression),(yyvsp[0].expression));(yyval.expression)->set_line_number(line_number);}
#line 2387 "SysY_parser.tab.c"
    break;

  case 99:
#line 455 "src/SysY_parser.y"
                {(yyval.expression) = new EqExp_neq((yyvsp[-2].expression),(yyvsp[0].expression));(yyval.expression)->set_line_number(line_number);}
#line 2393 "SysY_parser.tab.c"
    break;

  case 100:
#line 459 "src/SysY_parser.y"
      {(yyval.expression) = (yyvsp[0].expression);(yyval.expression)->set_line_number(line_number);}
#line 2399 "SysY_parser.tab.c"
    break;

  case 101:
#line 460 "src/SysY_parser.y"
                  {(yyval.expression) = new LAndExp_and((yyvsp[-2].expression),(yyvsp[0].expression));(yyval.expression)->set_line_number(line_number);}
#line 2405 "SysY_parser.tab.c"
    break;

  case 102:
#line 464 "src/SysY_parser.y"
        {(yyval.expression) = (yyvsp[0].expression);(yyval.expression)->set_line_number(line_number);}
#line 2411 "SysY_parser.tab.c"
    break;

  case 103:
#line 465 "src/SysY_parser.y"
                  {(yyval.expression) = new LOrExp_or((yyvsp[-2].expression),(yyvsp[0].expression));(yyval.expression)->set_line_number(line_number);}
#line 2417 "SysY_parser.tab.c"
    break;

  case 104:
#line 469 "src/SysY_parser.y"
       {(yyval.expression) = (yyvsp[0].expression);(yyval.expression)->set_line_number(line_number);}
#line 2423 "SysY_parser.tab.c"
    break;

  case 105:
#line 473 "src/SysY_parser.y"
            {(yyval.expression) = (yyvsp[-1].expression);(yyval.expression)->set_line_number(line_number);}
#line 2429 "SysY_parser.tab.c"
    break;

  case 106:
#line 478 "src/SysY_parser.y"
{
    (yyval.expressions) = new std::vector<Expression>;
    ((yyval.expressions))->push_back((yyvsp[0].expression));
}
#line 2438 "SysY_parser.tab.c"
    break;

  case 107:
#line 483 "src/SysY_parser.y"
{
    ((yyvsp[-1].expressions))->push_back((yyvsp[0].expression));
    (yyval.expressions) = (yyvsp[-1].expressions);
}
#line 2447 "SysY_parser.tab.c"
    break;

  case 108:
#line 490 "src/SysY_parser.y"
                 {(yyval.expression) = (yyvsp[-1].expression);(yyval.expression)->set_line_number(line_number);}
#line 2453 "SysY_parser.tab.c"
    break;

  case 109:
#line 495 "src/SysY_parser.y"
{
    (yyval.expressions) = new std::vector<Expression>;
    ((yyval.expressions))->push_back((yyvsp[0].expression));
}
#line 2462 "SysY_parser.tab.c"
    break;

  case 110:
#line 500 "src/SysY_parser.y"
{
    ((yyvsp[-1].expressions))->push_back((yyvsp[0].expression));
    (yyval.expressions) = (yyvsp[-1].expressions);
}
#line 2471 "SysY_parser.tab.c"
    break;


#line 2475 "SysY_parser.tab.c"

      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);

  *++yyvsp = yyval;
  *++yylsp = yyloc;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */
  {
    const int yylhs = yyr1[yyn] - YYNTOKENS;
    const int yyi = yypgoto[yylhs] + *yyssp;
    yystate = (0 <= yyi && yyi <= YYLAST && yycheck[yyi] == *yyssp
               ? yytable[yyi]
               : yydefgoto[yylhs]);
  }

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYEMPTY : YYTRANSLATE (yychar);

  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
#if ! YYERROR_VERBOSE
      yyerror (YY_("syntax error"));
#else
# define YYSYNTAX_ERROR yysyntax_error (&yymsg_alloc, &yymsg, \
                                        yyssp, yytoken)
      {
        char const *yymsgp = YY_("syntax error");
        int yysyntax_error_status;
        yysyntax_error_status = YYSYNTAX_ERROR;
        if (yysyntax_error_status == 0)
          yymsgp = yymsg;
        else if (yysyntax_error_status == 1)
          {
            if (yymsg != yymsgbuf)
              YYSTACK_FREE (yymsg);
            yymsg = YY_CAST (char *, YYSTACK_ALLOC (YY_CAST (YYSIZE_T, yymsg_alloc)));
            if (!yymsg)
              {
                yymsg = yymsgbuf;
                yymsg_alloc = sizeof yymsgbuf;
                yysyntax_error_status = 2;
              }
            else
              {
                yysyntax_error_status = YYSYNTAX_ERROR;
                yymsgp = yymsg;
              }
          }
        yyerror (yymsgp);
        if (yysyntax_error_status == 2)
          goto yyexhaustedlab;
      }
# undef YYSYNTAX_ERROR
#endif
    }

  yyerror_range[1] = yylloc;

  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval, &yylloc);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:
  /* Pacify compilers when the user code never invokes YYERROR and the
     label yyerrorlab therefore never appears in user code.  */
  if (0)
    YYERROR;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYTERROR;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;

      yyerror_range[1] = *yylsp;
      yydestruct ("Error: popping",
                  yystos[yystate], yyvsp, yylsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  yyerror_range[2] = yylloc;
  /* Using YYLLOC is tempting, but would change the location of
     the lookahead.  YYLOC is available though.  */
  YYLLOC_DEFAULT (yyloc, yyerror_range, 2);
  *++yylsp = yyloc;

  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;


/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;


#if !defined yyoverflow || YYERROR_VERBOSE
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  /* Fall through.  */
#endif


/*-----------------------------------------------------.
| yyreturn -- parsing is finished, return the result.  |
`-----------------------------------------------------*/
yyreturn:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval, &yylloc);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  yystos[+*yyssp], yyvsp, yylsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
#if YYERROR_VERBOSE
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
#endif
  return yyresult;
}
#line 506 "src/SysY_parser.y"
 

void yyerror(char* s, ...)
{
    ++error_num;
    fout<<"parser error in line "<<line_number<<"\n";
}
