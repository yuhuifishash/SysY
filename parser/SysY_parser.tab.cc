/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison implementation for Yacc-like parsers in C

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

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output, and Bison version.  */
#define YYBISON 30802

/* Bison version string.  */
#define YYBISON_VERSION "3.8.2"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* First part of user prologue.  */
#line 1 "parser/SysY_parser.y"

#include <fstream>
#include "SysY_tree.h"
#include "type.h"
Program ast_root;

void yyerror(char *s, ...);
int yylex();
int error_num = 0;
extern int line_number;
extern std::ofstream fout;
extern IdTable id_table;

#line 85 "SysY_parser.tab.c"

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

#include "SysY_parser.tab.h"
/* Symbol kind.  */
enum yysymbol_kind_t
{
  YYSYMBOL_YYEMPTY = -2,
  YYSYMBOL_YYEOF = 0,                      /* "end of file"  */
  YYSYMBOL_YYerror = 1,                    /* error  */
  YYSYMBOL_YYUNDEF = 2,                    /* "invalid token"  */
  YYSYMBOL_STR_CONST = 3,                  /* STR_CONST  */
  YYSYMBOL_IDENT = 4,                      /* IDENT  */
  YYSYMBOL_FLOAT_CONST = 5,                /* FLOAT_CONST  */
  YYSYMBOL_INT_CONST = 6,                  /* INT_CONST  */
  YYSYMBOL_LEQ = 7,                        /* LEQ  */
  YYSYMBOL_GEQ = 8,                        /* GEQ  */
  YYSYMBOL_EQ = 9,                         /* EQ  */
  YYSYMBOL_NE = 10,                        /* NE  */
  YYSYMBOL_AND = 11,                       /* AND  */
  YYSYMBOL_OR = 12,                        /* OR  */
  YYSYMBOL_ADDASSIGN = 13,                 /* ADDASSIGN  */
  YYSYMBOL_MULASSIGN = 14,                 /* MULASSIGN  */
  YYSYMBOL_SUBASSIGN = 15,                 /* SUBASSIGN  */
  YYSYMBOL_DIVASSIGN = 16,                 /* DIVASSIGN  */
  YYSYMBOL_MODASSIGN = 17,                 /* MODASSIGN  */
  YYSYMBOL_CONST = 18,                     /* CONST  */
  YYSYMBOL_IF = 19,                        /* IF  */
  YYSYMBOL_ELSE = 20,                      /* ELSE  */
  YYSYMBOL_WHILE = 21,                     /* WHILE  */
  YYSYMBOL_NONE_TYPE = 22,                 /* NONE_TYPE  */
  YYSYMBOL_INT = 23,                       /* INT  */
  YYSYMBOL_FLOAT = 24,                     /* FLOAT  */
  YYSYMBOL_FOR = 25,                       /* FOR  */
  YYSYMBOL_RETURN = 26,                    /* RETURN  */
  YYSYMBOL_BREAK = 27,                     /* BREAK  */
  YYSYMBOL_CONTINUE = 28,                  /* CONTINUE  */
  YYSYMBOL_ERROR = 29,                     /* ERROR  */
  YYSYMBOL_THEN = 30,                      /* THEN  */
  YYSYMBOL_31_ = 31,                       /* ';'  */
  YYSYMBOL_32_ = 32,                       /* ','  */
  YYSYMBOL_33_ = 33,                       /* '('  */
  YYSYMBOL_34_ = 34,                       /* ')'  */
  YYSYMBOL_35_ = 35,                       /* '='  */
  YYSYMBOL_36_ = 36,                       /* '{'  */
  YYSYMBOL_37_ = 37,                       /* '}'  */
  YYSYMBOL_38_ = 38,                       /* '['  */
  YYSYMBOL_39_ = 39,                       /* ']'  */
  YYSYMBOL_40_ = 40,                       /* '+'  */
  YYSYMBOL_41_ = 41,                       /* '-'  */
  YYSYMBOL_42_ = 42,                       /* '!'  */
  YYSYMBOL_43_ = 43,                       /* '*'  */
  YYSYMBOL_44_ = 44,                       /* '/'  */
  YYSYMBOL_45_ = 45,                       /* '%'  */
  YYSYMBOL_46_ = 46,                       /* '<'  */
  YYSYMBOL_47_ = 47,                       /* '>'  */
  YYSYMBOL_YYACCEPT = 48,                  /* $accept  */
  YYSYMBOL_Program = 49,                   /* Program  */
  YYSYMBOL_Comp_list = 50,                 /* Comp_list  */
  YYSYMBOL_CompUnit = 51,                  /* CompUnit  */
  YYSYMBOL_Decl = 52,                      /* Decl  */
  YYSYMBOL_VarDecl = 53,                   /* VarDecl  */
  YYSYMBOL_ConstDecl = 54,                 /* ConstDecl  */
  YYSYMBOL_VarDef_list = 55,               /* VarDef_list  */
  YYSYMBOL_ConstDef_list = 56,             /* ConstDef_list  */
  YYSYMBOL_FuncDef = 57,                   /* FuncDef  */
  YYSYMBOL_VarDef = 58,                    /* VarDef  */
  YYSYMBOL_ConstDef = 59,                  /* ConstDef  */
  YYSYMBOL_ConstInitVal = 60,              /* ConstInitVal  */
  YYSYMBOL_VarInitVal = 61,                /* VarInitVal  */
  YYSYMBOL_ConstInitVal_list = 62,         /* ConstInitVal_list  */
  YYSYMBOL_VarInitVal_list = 63,           /* VarInitVal_list  */
  YYSYMBOL_FuncFParams = 64,               /* FuncFParams  */
  YYSYMBOL_FuncFParam = 65,                /* FuncFParam  */
  YYSYMBOL_Block = 66,                     /* Block  */
  YYSYMBOL_BlockItem_list = 67,            /* BlockItem_list  */
  YYSYMBOL_BlockItem = 68,                 /* BlockItem  */
  YYSYMBOL_Stmt = 69,                      /* Stmt  */
  YYSYMBOL_Exp = 70,                       /* Exp  */
  YYSYMBOL_Cond = 71,                      /* Cond  */
  YYSYMBOL_Lval = 72,                      /* Lval  */
  YYSYMBOL_PrimaryExp = 73,                /* PrimaryExp  */
  YYSYMBOL_IntConst = 74,                  /* IntConst  */
  YYSYMBOL_FloatConst = 75,                /* FloatConst  */
  YYSYMBOL_StringConst = 76,               /* StringConst  */
  YYSYMBOL_UnaryExp = 77,                  /* UnaryExp  */
  YYSYMBOL_FuncRParams = 78,               /* FuncRParams  */
  YYSYMBOL_Exp_list = 79,                  /* Exp_list  */
  YYSYMBOL_MulExp = 80,                    /* MulExp  */
  YYSYMBOL_AddExp = 81,                    /* AddExp  */
  YYSYMBOL_RelExp = 82,                    /* RelExp  */
  YYSYMBOL_EqExp = 83,                     /* EqExp  */
  YYSYMBOL_LAndExp = 84,                   /* LAndExp  */
  YYSYMBOL_LOrExp = 85,                    /* LOrExp  */
  YYSYMBOL_ConstExp = 86,                  /* ConstExp  */
  YYSYMBOL_ArrayDim = 87,                  /* ArrayDim  */
  YYSYMBOL_ArrayDim_list = 88,             /* ArrayDim_list  */
  YYSYMBOL_ConstArrayDim = 89,             /* ConstArrayDim  */
  YYSYMBOL_ConstArrayDim_list = 90         /* ConstArrayDim_list  */
};
typedef enum yysymbol_kind_t yysymbol_kind_t;




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

/* Work around bug in HP-UX 11.23, which defines these macros
   incorrectly for preprocessor constants.  This workaround can likely
   be removed in 2023, as HPE has promised support for HP-UX 11.23
   (aka HP-UX 11i v2) only through the end of 2022; see Table 2 of
   <https://h20195.www2.hpe.com/V2/getpdf.aspx/4AA4-7673ENW.pdf>.  */
#ifdef __hpux
# undef UINT_LEAST8_MAX
# undef UINT_LEAST16_MAX
# define UINT_LEAST8_MAX 255
# define UINT_LEAST16_MAX 65535
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
# define YY_USE(E) ((void) (E))
#else
# define YY_USE(E) /* empty */
#endif

/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
#if defined __GNUC__ && ! defined __ICC && 406 <= __GNUC__ * 100 + __GNUC_MINOR__
# if __GNUC__ * 100 + __GNUC_MINOR__ < 407
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")
# else
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")              \
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# endif
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

#if !defined yyoverflow

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
#endif /* !defined yyoverflow */

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
#define YYLAST   354

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  48
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  43
/* YYNRULES -- Number of rules.  */
#define YYNRULES  116
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  228

/* YYMAXUTOK -- Last valid token kind.  */
#define YYMAXUTOK   285


/* YYTRANSLATE(TOKEN-NUM) -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, with out-of-bounds checking.  */
#define YYTRANSLATE(YYX)                                \
  (0 <= (YYX) && (YYX) <= YYMAXUTOK                     \
   ? YY_CAST (yysymbol_kind_t, yytranslate[YYX])        \
   : YYSYMBOL_YYUNDEF)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex.  */
static const yytype_int8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,    42,     2,     2,     2,    45,     2,     2,
      33,    34,    43,    40,    32,    41,     2,    44,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,    31,
      46,    35,    47,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,    38,     2,    39,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,    36,     2,    37,     2,     2,     2,     2,
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
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30
};

#if YYDEBUG
/* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_int16 yyrline[] =
{
       0,    67,    67,    75,    80,    87,    88,    92,    93,    97,
      98,   102,   103,   107,   112,   120,   125,   133,   135,   137,
     139,   141,   143,   148,   150,   152,   154,   159,   161,   166,
     167,   168,   172,   173,   174,   178,   182,   189,   193,   200,
     204,   212,   216,   220,   225,   230,   236,   245,   249,   256,
     260,   267,   271,   278,   282,   295,   308,   321,   334,   347,
     351,   355,   359,   363,   367,   371,   375,   379,   383,   387,
     394,   398,   402,   406,   413,   417,   418,   419,   420,   424,
     431,   438,   445,   446,   450,   470,   474,   478,   485,   492,
     496,   503,   504,   505,   506,   510,   511,   512,   516,   517,
     518,   519,   520,   524,   525,   526,   530,   531,   535,   536,
     540,   544,   548,   553,   561,   565,   570
};
#endif

/** Accessing symbol of state STATE.  */
#define YY_ACCESSING_SYMBOL(State) YY_CAST (yysymbol_kind_t, yystos[State])

#if YYDEBUG || 0
/* The user-facing name of the symbol whose (internal) number is
   YYSYMBOL.  No bounds checking.  */
static const char *yysymbol_name (yysymbol_kind_t yysymbol) YY_ATTRIBUTE_UNUSED;

/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "\"end of file\"", "error", "\"invalid token\"", "STR_CONST", "IDENT",
  "FLOAT_CONST", "INT_CONST", "LEQ", "GEQ", "EQ", "NE", "AND", "OR",
  "ADDASSIGN", "MULASSIGN", "SUBASSIGN", "DIVASSIGN", "MODASSIGN", "CONST",
  "IF", "ELSE", "WHILE", "NONE_TYPE", "INT", "FLOAT", "FOR", "RETURN",
  "BREAK", "CONTINUE", "ERROR", "THEN", "';'", "','", "'('", "')'", "'='",
  "'{'", "'}'", "'['", "']'", "'+'", "'-'", "'!'", "'*'", "'/'", "'%'",
  "'<'", "'>'", "$accept", "Program", "Comp_list", "CompUnit", "Decl",
  "VarDecl", "ConstDecl", "VarDef_list", "ConstDef_list", "FuncDef",
  "VarDef", "ConstDef", "ConstInitVal", "VarInitVal", "ConstInitVal_list",
  "VarInitVal_list", "FuncFParams", "FuncFParam", "Block",
  "BlockItem_list", "BlockItem", "Stmt", "Exp", "Cond", "Lval",
  "PrimaryExp", "IntConst", "FloatConst", "StringConst", "UnaryExp",
  "FuncRParams", "Exp_list", "MulExp", "AddExp", "RelExp", "EqExp",
  "LAndExp", "LOrExp", "ConstExp", "ArrayDim", "ArrayDim_list",
  "ConstArrayDim", "ConstArrayDim_list", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#define YYPACT_NINF (-155)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-1)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int16 yypact[] =
{
      55,    13,    45,    59,    71,    85,    55,  -155,  -155,  -155,
    -155,  -155,    95,    95,    82,    75,    88,  -155,    91,   103,
    -155,  -155,    27,   126,  -155,   148,     1,    10,   254,   312,
    -155,    62,  -155,   143,    17,  -155,   264,   312,  -155,    74,
    -155,    95,  -155,   147,   155,   134,    98,  -155,   134,    99,
    -155,    43,  -155,  -155,   312,   204,   312,   312,   312,  -155,
    -155,  -155,  -155,  -155,  -155,  -155,  -155,   -23,   144,   156,
     254,  -155,    90,  -155,   134,   110,   244,  -155,   144,  -155,
     164,   264,  -155,  -155,   168,   176,    65,  -155,   165,   134,
    -155,   134,   268,   178,   183,  -155,  -155,    50,  -155,  -155,
    -155,   312,   312,   312,   312,   312,  -155,  -155,  -155,   134,
    -155,  -155,    79,  -155,  -155,   179,   184,   149,   191,   143,
     143,   193,   308,   197,   198,  -155,  -155,  -155,  -155,   150,
    -155,  -155,   200,    15,  -155,  -155,  -155,  -155,  -155,   199,
     206,  -155,   254,  -155,  -155,  -155,  -155,   -23,   -23,  -155,
     264,  -155,   178,   178,   312,   312,   170,  -155,   201,  -155,
    -155,  -155,  -155,  -155,   312,   312,   312,   312,   312,   312,
    -155,   312,  -155,  -155,   178,   178,   205,   144,    11,   192,
     231,   239,   209,   312,  -155,   221,   222,   223,   224,   225,
     230,  -155,   194,   312,   312,   312,   312,   312,   312,   312,
     312,   194,   232,  -155,  -155,  -155,  -155,  -155,  -155,   242,
     144,   144,   144,   144,    11,    11,   192,   231,  -155,   260,
     194,   178,   240,  -155,   312,   245,   194,  -155
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_int8 yydefact[] =
{
       0,     0,     0,     0,     0,     0,     2,     3,     5,     7,
       8,     6,     0,     0,     0,    26,     0,    13,    26,     0,
       1,     4,     0,     0,    15,     0,     0,     0,     0,     0,
     112,    24,     9,     0,     0,    10,     0,     0,   115,     0,
      11,     0,    12,     0,     0,     0,     0,    39,     0,     0,
      81,    72,    80,    79,     0,     0,     0,     0,     0,    25,
      32,    75,    82,    76,    77,    78,    91,    95,    70,     0,
       0,   113,    26,    14,     0,     0,     0,    28,   110,    29,
       0,     0,   116,    16,    41,    42,     0,    22,     0,     0,
      18,     0,     0,    73,     0,    34,    37,     0,    85,    86,
      87,     0,     0,     0,     0,     0,   111,    23,    20,     0,
      31,    35,     0,   114,    27,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,    60,    48,    51,    61,     0,
      49,    52,     0,    75,    40,    21,    17,    84,    89,     0,
      88,    74,     0,    33,    92,    93,    94,    96,    97,    19,
       0,    30,    45,    46,     0,     0,     0,    68,     0,    65,
      66,    47,    50,    59,     0,     0,     0,     0,     0,     0,
      83,     0,    38,    36,    43,    44,     0,    98,   103,   106,
     108,    71,     0,     0,    67,     0,     0,     0,     0,     0,
       0,    90,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    54,    56,    55,    57,    58,    53,    62,
     101,   102,    99,   100,   104,   105,   107,   109,    64,     0,
       0,    72,     0,    63,     0,     0,     0,    69
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -155,  -155,  -155,   259,   -77,   120,  -155,     3,   253,  -155,
     249,   237,   -70,   -47,  -155,  -155,    19,   195,   -35,  -155,
     159,  -154,   -28,  -138,   -74,  -155,  -155,  -155,  -155,   -42,
    -155,  -155,   100,   -33,    14,    92,    89,  -155,   255,   -26,
     -49,   280,  -155
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_uint8 yydefgoto[] =
{
       0,     5,     6,     7,     8,     9,    10,    16,    23,    11,
      17,    24,    77,    59,   112,    97,    46,    47,   128,   129,
     130,   131,   132,   176,    61,    62,    63,    64,    65,    66,
     139,   140,    67,    68,   178,   179,   180,   181,    79,    30,
      31,    38,    39
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_uint8 yytable[] =
{
      60,    69,    93,    78,    78,    71,   111,    19,    96,   127,
      87,   114,   133,    90,    98,    99,   100,   182,   193,   194,
     101,   102,   103,   107,    43,    44,    94,    60,   164,   165,
     166,   167,   168,    43,    44,    45,    12,    13,   209,   108,
      43,    44,    60,    78,    48,   202,    49,   218,    78,    14,
     169,    74,   127,    75,   135,   133,   136,   195,   196,   144,
     145,   146,    36,    15,   138,    37,   223,    71,    50,    51,
      52,    53,   227,     1,   149,    18,    92,     2,     3,     4,
     173,    29,   142,     1,   117,    20,   118,   143,   119,   120,
     121,   122,   123,   124,   158,   172,   125,    70,    54,    22,
      29,    86,   126,   174,   175,    56,    57,    58,    27,    81,
      28,   150,    37,    29,    60,    26,   151,    78,   133,    32,
      33,   177,   177,    19,    34,    28,    28,   133,    29,    29,
      88,    88,    89,    91,    35,    33,   185,   186,   187,   188,
     189,   190,    88,   191,   109,   222,   133,    72,    71,    71,
     177,    84,   133,    50,    51,    52,    53,    40,    41,    85,
     210,   211,   212,   213,   177,   177,   177,   177,     1,   117,
      86,   118,    93,   119,   120,   121,   122,   123,   124,    42,
      41,   125,   154,    54,   104,   105,    86,   161,    43,    44,
      56,    57,    58,   119,   120,   106,   225,    50,    51,    52,
      53,   197,   198,   113,   147,   148,   115,    50,    51,    52,
      53,   214,   215,   117,   116,   118,    29,   141,   152,   121,
     122,   123,   124,   153,   155,   125,   156,    54,   159,   160,
      86,   163,   184,   170,    56,    57,    58,    54,   171,   192,
      55,    95,   199,   201,    56,    57,    58,    50,    51,    52,
      53,   200,   203,   204,   205,   206,   207,    50,    51,    52,
      53,   208,   220,   219,   221,    21,    25,    50,    51,    52,
      53,    50,    51,    52,    53,   224,   183,    54,    83,   226,
      76,   110,    73,   134,    56,    57,    58,    54,   162,   217,
      55,   216,    80,     0,    56,    57,    58,    54,     0,     0,
      76,    54,   137,     0,    56,    57,    58,     0,    56,    57,
      58,    50,    51,    52,    53,    50,    51,    52,    53,    82,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   157,
       0,    54,     0,     0,     0,    54,     0,     0,    56,    57,
      58,     0,    56,    57,    58
};

static const yytype_int16 yycheck[] =
{
      28,    29,    51,    36,    37,    31,    76,     4,    55,    86,
      45,    81,    86,    48,    56,    57,    58,   155,     7,     8,
      43,    44,    45,    70,    23,    24,    54,    55,    13,    14,
      15,    16,    17,    23,    24,    34,    23,    24,   192,    74,
      23,    24,    70,    76,    34,   183,    27,   201,    81,     4,
      35,    34,   129,    34,    89,   129,    91,    46,    47,   101,
     102,   103,    35,     4,    92,    38,   220,    93,     3,     4,
       5,     6,   226,    18,   109,     4,    33,    22,    23,    24,
     150,    38,    32,    18,    19,     0,    21,    37,    23,    24,
      25,    26,    27,    28,   122,   142,    31,    35,    33,     4,
      38,    36,    37,   152,   153,    40,    41,    42,    33,    35,
      35,    32,    38,    38,   142,    33,    37,   150,   192,    31,
      32,   154,   155,   120,    33,    35,    35,   201,    38,    38,
      32,    32,    34,    34,    31,    32,   164,   165,   166,   167,
     168,   169,    32,   171,    34,   219,   220,     4,   174,   175,
     183,     4,   226,     3,     4,     5,     6,    31,    32,     4,
     193,   194,   195,   196,   197,   198,   199,   200,    18,    19,
      36,    21,   221,    23,    24,    25,    26,    27,    28,    31,
      32,    31,    33,    33,    40,    41,    36,    37,    23,    24,
      40,    41,    42,    23,    24,    39,   224,     3,     4,     5,
       6,     9,    10,    39,   104,   105,    38,     3,     4,     5,
       6,   197,   198,    19,    38,    21,    38,    34,    39,    25,
      26,    27,    28,    39,    33,    31,    33,    33,    31,    31,
      36,    31,    31,    34,    40,    41,    42,    33,    32,    34,
      36,    37,    11,    34,    40,    41,    42,     3,     4,     5,
       6,    12,    31,    31,    31,    31,    31,     3,     4,     5,
       6,    31,    20,    31,     4,     6,    13,     3,     4,     5,
       6,     3,     4,     5,     6,    35,   156,    33,    41,    34,
      36,    37,    33,    88,    40,    41,    42,    33,   129,   200,
      36,   199,    37,    -1,    40,    41,    42,    33,    -1,    -1,
      36,    33,    34,    -1,    40,    41,    42,    -1,    40,    41,
      42,     3,     4,     5,     6,     3,     4,     5,     6,    39,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    31,
      -1,    33,    -1,    -1,    -1,    33,    -1,    -1,    40,    41,
      42,    -1,    40,    41,    42
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,    18,    22,    23,    24,    49,    50,    51,    52,    53,
      54,    57,    23,    24,     4,     4,    55,    58,     4,    55,
       0,    51,     4,    56,    59,    56,    33,    33,    35,    38,
      87,    88,    31,    32,    33,    31,    35,    38,    89,    90,
      31,    32,    31,    23,    24,    34,    64,    65,    34,    64,
       3,     4,     5,     6,    33,    36,    40,    41,    42,    61,
      70,    72,    73,    74,    75,    76,    77,    80,    81,    70,
      35,    87,     4,    58,    34,    64,    36,    60,    81,    86,
      86,    35,    89,    59,     4,     4,    36,    66,    32,    34,
      66,    34,    33,    88,    70,    37,    61,    63,    77,    77,
      77,    43,    44,    45,    40,    41,    39,    61,    66,    34,
      37,    60,    62,    39,    60,    38,    38,    19,    21,    23,
      24,    25,    26,    27,    28,    31,    37,    52,    66,    67,
      68,    69,    70,    72,    65,    66,    66,    34,    70,    78,
      79,    34,    32,    37,    77,    77,    77,    80,    80,    66,
      32,    37,    39,    39,    33,    33,    33,    31,    70,    31,
      31,    37,    68,    31,    13,    14,    15,    16,    17,    35,
      34,    32,    61,    60,    88,    88,    71,    81,    82,    83,
      84,    85,    71,    53,    31,    70,    70,    70,    70,    70,
      70,    70,    34,     7,     8,    46,    47,     9,    10,    11,
      12,    34,    71,    31,    31,    31,    31,    31,    31,    69,
      81,    81,    81,    81,    82,    82,    83,    84,    69,    31,
      20,     4,    72,    69,    35,    70,    34,    69
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr1[] =
{
       0,    48,    49,    50,    50,    51,    51,    52,    52,    53,
      53,    54,    54,    55,    55,    56,    56,    57,    57,    57,
      57,    57,    57,    58,    58,    58,    58,    59,    59,    60,
      60,    60,    61,    61,    61,    62,    62,    63,    63,    64,
      64,    65,    65,    65,    65,    65,    65,    66,    66,    67,
      67,    68,    68,    69,    69,    69,    69,    69,    69,    69,
      69,    69,    69,    69,    69,    69,    69,    69,    69,    69,
      70,    71,    72,    72,    73,    73,    73,    73,    73,    74,
      75,    76,    77,    77,    77,    77,    77,    77,    78,    79,
      79,    80,    80,    80,    80,    81,    81,    81,    82,    82,
      82,    82,    82,    83,    83,    83,    84,    84,    85,    85,
      86,    87,    88,    88,    89,    90,    90
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     1,     1,     2,     1,     1,     1,     1,     3,
       3,     4,     4,     1,     3,     1,     3,     6,     5,     6,
       5,     6,     5,     4,     2,     3,     1,     4,     3,     1,
       3,     2,     1,     3,     2,     1,     3,     1,     3,     1,
       3,     2,     2,     5,     5,     4,     4,     3,     2,     1,
       2,     1,     1,     4,     4,     4,     4,     4,     4,     2,
       1,     1,     5,     7,     5,     2,     2,     3,     2,    10,
       1,     1,     1,     2,     3,     1,     1,     1,     1,     1,
       1,     1,     1,     4,     3,     2,     2,     2,     1,     1,
       3,     1,     3,     3,     3,     1,     3,     3,     1,     3,
       3,     3,     3,     1,     3,     3,     1,     3,     1,     3,
       1,     3,     1,     2,     3,     1,     2
};


enum { YYENOMEM = -2 };

#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab
#define YYNOMEM         goto yyexhaustedlab


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

/* Backward compatibility with an undocumented macro.
   Use YYerror or YYUNDEF. */
#define YYERRCODE YYUNDEF

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


/* YYLOCATION_PRINT -- Print the location on the stream.
   This macro was not mandated originally: define only if we know
   we won't break user code: when these are the locations we know.  */

# ifndef YYLOCATION_PRINT

#  if defined YY_LOCATION_PRINT

   /* Temporary convenience wrapper in case some people defined the
      undocumented and private YY_LOCATION_PRINT macros.  */
#   define YYLOCATION_PRINT(File, Loc)  YY_LOCATION_PRINT(File, *(Loc))

#  elif defined YYLTYPE_IS_TRIVIAL && YYLTYPE_IS_TRIVIAL

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

#   define YYLOCATION_PRINT  yy_location_print_

    /* Temporary convenience wrapper in case some people defined the
       undocumented and private YY_LOCATION_PRINT macros.  */
#   define YY_LOCATION_PRINT(File, Loc)  YYLOCATION_PRINT(File, &(Loc))

#  else

#   define YYLOCATION_PRINT(File, Loc) ((void) 0)
    /* Temporary convenience wrapper in case some people defined the
       undocumented and private YY_LOCATION_PRINT macros.  */
#   define YY_LOCATION_PRINT  YYLOCATION_PRINT

#  endif
# endif /* !defined YYLOCATION_PRINT */


# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Kind, Value, Location); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*-----------------------------------.
| Print this symbol's value on YYO.  |
`-----------------------------------*/

static void
yy_symbol_value_print (FILE *yyo,
                       yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep, YYLTYPE const * const yylocationp)
{
  FILE *yyoutput = yyo;
  YY_USE (yyoutput);
  YY_USE (yylocationp);
  if (!yyvaluep)
    return;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/*---------------------------.
| Print this symbol on YYO.  |
`---------------------------*/

static void
yy_symbol_print (FILE *yyo,
                 yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep, YYLTYPE const * const yylocationp)
{
  YYFPRINTF (yyo, "%s %s (",
             yykind < YYNTOKENS ? "token" : "nterm", yysymbol_name (yykind));

  YYLOCATION_PRINT (yyo, yylocationp);
  YYFPRINTF (yyo, ": ");
  yy_symbol_value_print (yyo, yykind, yyvaluep, yylocationp);
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
yy_reduce_print (yy_state_t *yyssp, YYSTYPE *yyvsp, YYLTYPE *yylsp,
                 int yyrule)
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
                       YY_ACCESSING_SYMBOL (+yyssp[yyi + 1 - yynrhs]),
                       &yyvsp[(yyi + 1) - (yynrhs)],
                       &(yylsp[(yyi + 1) - (yynrhs)]));
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
# define YYDPRINTF(Args) ((void) 0)
# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)
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






/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg,
            yysymbol_kind_t yykind, YYSTYPE *yyvaluep, YYLTYPE *yylocationp)
{
  YY_USE (yyvaluep);
  YY_USE (yylocationp);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yykind, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/* Lookahead token kind.  */
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
    yy_state_fast_t yystate = 0;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus = 0;

    /* Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* Their size.  */
    YYPTRDIFF_T yystacksize = YYINITDEPTH;

    /* The state stack: array, bottom, top.  */
    yy_state_t yyssa[YYINITDEPTH];
    yy_state_t *yyss = yyssa;
    yy_state_t *yyssp = yyss;

    /* The semantic value stack: array, bottom, top.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs = yyvsa;
    YYSTYPE *yyvsp = yyvs;

    /* The location stack: array, bottom, top.  */
    YYLTYPE yylsa[YYINITDEPTH];
    YYLTYPE *yyls = yylsa;
    YYLTYPE *yylsp = yyls;

  int yyn;
  /* The return value of yyparse.  */
  int yyresult;
  /* Lookahead symbol kind.  */
  yysymbol_kind_t yytoken = YYSYMBOL_YYEMPTY;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;
  YYLTYPE yyloc;

  /* The locations where the error started and ended.  */
  YYLTYPE yyerror_range[3];



#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N), yylsp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  YYDPRINTF ((stderr, "Starting parse\n"));

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
  YY_STACK_PRINT (yyss, yyssp);

  if (yyss + yystacksize - 1 <= yyssp)
#if !defined yyoverflow && !defined YYSTACK_RELOCATE
    YYNOMEM;
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
        YYNOMEM;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yy_state_t *yyss1 = yyss;
        union yyalloc *yyptr =
          YY_CAST (union yyalloc *,
                   YYSTACK_ALLOC (YY_CAST (YYSIZE_T, YYSTACK_BYTES (yystacksize))));
        if (! yyptr)
          YYNOMEM;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
        YYSTACK_RELOCATE (yyls_alloc, yyls);
#  undef YYSTACK_RELOCATE
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

  /* YYCHAR is either empty, or end-of-input, or a valid lookahead.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token\n"));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = YYEOF;
      yytoken = YYSYMBOL_YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else if (yychar == YYerror)
    {
      /* The scanner already issued an error message, process directly
         to error recovery.  But do not keep the error token as
         lookahead, it is too special and may lead us to an endless
         loop in error recovery. */
      yychar = YYUNDEF;
      yytoken = YYSYMBOL_YYerror;
      yyerror_range[1] = yylloc;
      goto yyerrlab1;
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
  case 2: /* Program: Comp_list  */
#line 68 "parser/SysY_parser.y"
{
    (yyloc) = (yylsp[0]);
    ast_root = new __Program((yyvsp[0].comps));
    ast_root->SetLineNumber(line_number);
}
#line 1461 "SysY_parser.tab.c"
    break;

  case 3: /* Comp_list: CompUnit  */
#line 76 "parser/SysY_parser.y"
{
    (yyval.comps) = new std::vector<CompUnit>;
    ((yyval.comps))->push_back((yyvsp[0].comp_unit));
}
#line 1470 "SysY_parser.tab.c"
    break;

  case 4: /* Comp_list: Comp_list CompUnit  */
#line 81 "parser/SysY_parser.y"
{
    ((yyvsp[-1].comps))->push_back((yyvsp[0].comp_unit));
    (yyval.comps) = (yyvsp[-1].comps);
}
#line 1479 "SysY_parser.tab.c"
    break;

  case 5: /* CompUnit: Decl  */
#line 87 "parser/SysY_parser.y"
     {(yyval.comp_unit) = new CompUnit_Decl((yyvsp[0].decl)); (yyval.comp_unit)->SetLineNumber(line_number);}
#line 1485 "SysY_parser.tab.c"
    break;

  case 6: /* CompUnit: FuncDef  */
#line 88 "parser/SysY_parser.y"
        {(yyval.comp_unit) = new CompUnit_FuncDef((yyvsp[0].func_def)); (yyval.comp_unit)->SetLineNumber(line_number);}
#line 1491 "SysY_parser.tab.c"
    break;

  case 7: /* Decl: VarDecl  */
#line 92 "parser/SysY_parser.y"
        {(yyval.decl) = (yyvsp[0].decl); (yyval.decl)->SetLineNumber(line_number);}
#line 1497 "SysY_parser.tab.c"
    break;

  case 8: /* Decl: ConstDecl  */
#line 93 "parser/SysY_parser.y"
          {(yyval.decl) = (yyvsp[0].decl); (yyval.decl)->SetLineNumber(line_number);}
#line 1503 "SysY_parser.tab.c"
    break;

  case 9: /* VarDecl: INT VarDef_list ';'  */
#line 97 "parser/SysY_parser.y"
                    {(yyval.decl) = new VarDecl(Type::INT,(yyvsp[-1].defs)); (yyval.decl)->SetLineNumber(line_number);}
#line 1509 "SysY_parser.tab.c"
    break;

  case 10: /* VarDecl: FLOAT VarDef_list ';'  */
#line 98 "parser/SysY_parser.y"
                      {(yyval.decl) = new VarDecl(Type::FLOAT,(yyvsp[-1].defs)); (yyval.decl)->SetLineNumber(line_number);}
#line 1515 "SysY_parser.tab.c"
    break;

  case 11: /* ConstDecl: CONST INT ConstDef_list ';'  */
#line 102 "parser/SysY_parser.y"
                            {(yyval.decl) = new ConstDecl(Type::INT,(yyvsp[-1].defs)); (yyval.decl)->SetLineNumber(line_number);}
#line 1521 "SysY_parser.tab.c"
    break;

  case 12: /* ConstDecl: CONST FLOAT ConstDef_list ';'  */
#line 103 "parser/SysY_parser.y"
                              {(yyval.decl) = new ConstDecl(Type::FLOAT,(yyvsp[-1].defs)); (yyval.decl)->SetLineNumber(line_number);}
#line 1527 "SysY_parser.tab.c"
    break;

  case 13: /* VarDef_list: VarDef  */
#line 108 "parser/SysY_parser.y"
{
    (yyval.defs) = new std::vector<Def>;
    ((yyval.defs))->push_back((yyvsp[0].def));
}
#line 1536 "SysY_parser.tab.c"
    break;

  case 14: /* VarDef_list: VarDef_list ',' VarDef  */
#line 113 "parser/SysY_parser.y"
{
    ((yyvsp[-2].defs))->push_back((yyvsp[0].def));
    (yyval.defs) = (yyvsp[-2].defs);
}
#line 1545 "SysY_parser.tab.c"
    break;

  case 15: /* ConstDef_list: ConstDef  */
#line 121 "parser/SysY_parser.y"
{
    (yyval.defs) = new std::vector<Def>;
    ((yyval.defs))->push_back((yyvsp[0].def));
}
#line 1554 "SysY_parser.tab.c"
    break;

  case 16: /* ConstDef_list: ConstDef_list ',' ConstDef  */
#line 126 "parser/SysY_parser.y"
{
    ((yyvsp[-2].defs))->push_back((yyvsp[0].def));
    (yyval.defs) = (yyvsp[-2].defs);
}
#line 1563 "SysY_parser.tab.c"
    break;

  case 17: /* FuncDef: INT IDENT '(' FuncFParams ')' Block  */
#line 134 "parser/SysY_parser.y"
{(yyval.func_def) = new __FuncDef(Type::INT,(yyvsp[-4].symbol_token),(yyvsp[-2].formals),(yyvsp[0].block)); (yyval.func_def)->SetLineNumber(line_number);}
#line 1569 "SysY_parser.tab.c"
    break;

  case 18: /* FuncDef: INT IDENT '(' ')' Block  */
#line 136 "parser/SysY_parser.y"
{(yyval.func_def) = new __FuncDef(Type::INT,(yyvsp[-3].symbol_token),new std::vector<FuncFParam>(),(yyvsp[0].block)); (yyval.func_def)->SetLineNumber(line_number);}
#line 1575 "SysY_parser.tab.c"
    break;

  case 19: /* FuncDef: FLOAT IDENT '(' FuncFParams ')' Block  */
#line 138 "parser/SysY_parser.y"
{(yyval.func_def) = new __FuncDef(Type::FLOAT,(yyvsp[-4].symbol_token),(yyvsp[-2].formals),(yyvsp[0].block)); (yyval.func_def)->SetLineNumber(line_number);}
#line 1581 "SysY_parser.tab.c"
    break;

  case 20: /* FuncDef: FLOAT IDENT '(' ')' Block  */
#line 140 "parser/SysY_parser.y"
{(yyval.func_def) = new __FuncDef(Type::FLOAT,(yyvsp[-3].symbol_token),new std::vector<FuncFParam>(),(yyvsp[0].block)); (yyval.func_def)->SetLineNumber(line_number);}
#line 1587 "SysY_parser.tab.c"
    break;

  case 21: /* FuncDef: NONE_TYPE IDENT '(' FuncFParams ')' Block  */
#line 142 "parser/SysY_parser.y"
{(yyval.func_def) = new __FuncDef(Type::VOID,(yyvsp[-4].symbol_token),(yyvsp[-2].formals),(yyvsp[0].block)); (yyval.func_def)->SetLineNumber(line_number);}
#line 1593 "SysY_parser.tab.c"
    break;

  case 22: /* FuncDef: NONE_TYPE IDENT '(' ')' Block  */
#line 144 "parser/SysY_parser.y"
{(yyval.func_def) = new __FuncDef(Type::VOID,(yyvsp[-3].symbol_token),new std::vector<FuncFParam>(),(yyvsp[0].block));(yyval.func_def)->SetLineNumber(line_number);}
#line 1599 "SysY_parser.tab.c"
    break;

  case 23: /* VarDef: IDENT ArrayDim_list '=' VarInitVal  */
#line 149 "parser/SysY_parser.y"
{(yyval.def) = new VarDef((yyvsp[-3].symbol_token),(yyvsp[-2].expressions),(yyvsp[0].initval)); (yyval.def)->SetLineNumber(line_number);}
#line 1605 "SysY_parser.tab.c"
    break;

  case 24: /* VarDef: IDENT ArrayDim_list  */
#line 151 "parser/SysY_parser.y"
{(yyval.def) = new VarDef_no_init((yyvsp[-1].symbol_token),(yyvsp[0].expressions)); (yyval.def)->SetLineNumber(line_number);}
#line 1611 "SysY_parser.tab.c"
    break;

  case 25: /* VarDef: IDENT '=' VarInitVal  */
#line 153 "parser/SysY_parser.y"
{(yyval.def) = new VarDef((yyvsp[-2].symbol_token),nullptr,(yyvsp[0].initval)); (yyval.def)->SetLineNumber(line_number);}
#line 1617 "SysY_parser.tab.c"
    break;

  case 26: /* VarDef: IDENT  */
#line 155 "parser/SysY_parser.y"
{(yyval.def) = new VarDef_no_init((yyvsp[0].symbol_token),nullptr); (yyval.def)->SetLineNumber(line_number);}
#line 1623 "SysY_parser.tab.c"
    break;

  case 27: /* ConstDef: IDENT ConstArrayDim_list '=' ConstInitVal  */
#line 160 "parser/SysY_parser.y"
{(yyval.def) = new ConstDef((yyvsp[-3].symbol_token),(yyvsp[-2].expressions),(yyvsp[0].initval)); (yyval.def)->SetLineNumber(line_number);}
#line 1629 "SysY_parser.tab.c"
    break;

  case 28: /* ConstDef: IDENT '=' ConstInitVal  */
#line 162 "parser/SysY_parser.y"
{(yyval.def) = new ConstDef((yyvsp[-2].symbol_token),nullptr,(yyvsp[0].initval)); (yyval.def)->SetLineNumber(line_number);}
#line 1635 "SysY_parser.tab.c"
    break;

  case 29: /* ConstInitVal: ConstExp  */
#line 166 "parser/SysY_parser.y"
         {(yyval.initval) = new ConstInitVal_exp((yyvsp[0].expression)); (yyval.initval)->SetLineNumber(line_number);}
#line 1641 "SysY_parser.tab.c"
    break;

  case 30: /* ConstInitVal: '{' ConstInitVal_list '}'  */
#line 167 "parser/SysY_parser.y"
                          {(yyval.initval) = new ConstInitVal((yyvsp[-1].initvals)); (yyval.initval)->SetLineNumber(line_number);}
#line 1647 "SysY_parser.tab.c"
    break;

  case 31: /* ConstInitVal: '{' '}'  */
#line 168 "parser/SysY_parser.y"
        {(yyval.initval) = new ConstInitVal(new std::vector<InitVal>()); (yyval.initval)->SetLineNumber(line_number);}
#line 1653 "SysY_parser.tab.c"
    break;

  case 32: /* VarInitVal: Exp  */
#line 172 "parser/SysY_parser.y"
    {(yyval.initval) = new VarInitVal_exp((yyvsp[0].expression)); (yyval.initval)->SetLineNumber(line_number);}
#line 1659 "SysY_parser.tab.c"
    break;

  case 33: /* VarInitVal: '{' VarInitVal_list '}'  */
#line 173 "parser/SysY_parser.y"
                        {(yyval.initval) = new VarInitVal((yyvsp[-1].initvals)); (yyval.initval)->SetLineNumber(line_number);}
#line 1665 "SysY_parser.tab.c"
    break;

  case 34: /* VarInitVal: '{' '}'  */
#line 174 "parser/SysY_parser.y"
        {(yyval.initval) = new VarInitVal(new std::vector<InitVal>()); (yyval.initval)->SetLineNumber(line_number);}
#line 1671 "SysY_parser.tab.c"
    break;

  case 35: /* ConstInitVal_list: ConstInitVal  */
#line 178 "parser/SysY_parser.y"
             {
    (yyval.initvals) = new std::vector<InitVal>;
    ((yyval.initvals))->push_back((yyvsp[0].initval));
}
#line 1680 "SysY_parser.tab.c"
    break;

  case 36: /* ConstInitVal_list: ConstInitVal_list ',' ConstInitVal  */
#line 182 "parser/SysY_parser.y"
                                   {
    ((yyvsp[-2].initvals))->push_back((yyvsp[0].initval));
    (yyval.initvals) = (yyvsp[-2].initvals);
}
#line 1689 "SysY_parser.tab.c"
    break;

  case 37: /* VarInitVal_list: VarInitVal  */
#line 189 "parser/SysY_parser.y"
           {
    (yyval.initvals) = new std::vector<InitVal>;
    ((yyval.initvals))->push_back((yyvsp[0].initval));
}
#line 1698 "SysY_parser.tab.c"
    break;

  case 38: /* VarInitVal_list: VarInitVal_list ',' VarInitVal  */
#line 193 "parser/SysY_parser.y"
                               {
    ((yyvsp[-2].initvals))->push_back((yyvsp[0].initval));
    (yyval.initvals) = (yyvsp[-2].initvals);
}
#line 1707 "SysY_parser.tab.c"
    break;

  case 39: /* FuncFParams: FuncFParam  */
#line 200 "parser/SysY_parser.y"
           {
    (yyval.formals) = new std::vector<FuncFParam>;
    ((yyval.formals))->push_back((yyvsp[0].formal));
}
#line 1716 "SysY_parser.tab.c"
    break;

  case 40: /* FuncFParams: FuncFParams ',' FuncFParam  */
#line 204 "parser/SysY_parser.y"
                           {
    ((yyvsp[-2].formals))->push_back((yyvsp[0].formal));
    (yyval.formals) = (yyvsp[-2].formals);
}
#line 1725 "SysY_parser.tab.c"
    break;

  case 41: /* FuncFParam: INT IDENT  */
#line 212 "parser/SysY_parser.y"
          {
    (yyval.formal) = new __FuncFParam(Type::INT,(yyvsp[0].symbol_token),nullptr);
    (yyval.formal)->SetLineNumber(line_number);
}
#line 1734 "SysY_parser.tab.c"
    break;

  case 42: /* FuncFParam: FLOAT IDENT  */
#line 216 "parser/SysY_parser.y"
            {
    (yyval.formal) = new __FuncFParam(Type::FLOAT,(yyvsp[0].symbol_token),nullptr);
    (yyval.formal)->SetLineNumber(line_number);
}
#line 1743 "SysY_parser.tab.c"
    break;

  case 43: /* FuncFParam: INT IDENT '[' ']' ArrayDim_list  */
#line 220 "parser/SysY_parser.y"
                                {
    (yyvsp[0].expressions)->insert((yyvsp[0].expressions)->begin(),nullptr);
    (yyval.formal) = new __FuncFParam(Type::INT,(yyvsp[-3].symbol_token),(yyvsp[0].expressions));
    (yyval.formal)->SetLineNumber(line_number);
}
#line 1753 "SysY_parser.tab.c"
    break;

  case 44: /* FuncFParam: FLOAT IDENT '[' ']' ArrayDim_list  */
#line 225 "parser/SysY_parser.y"
                                  {
    (yyvsp[0].expressions)->insert((yyvsp[0].expressions)->begin(),nullptr);
    (yyval.formal) = new __FuncFParam(Type::FLOAT,(yyvsp[-3].symbol_token),(yyvsp[0].expressions));
    (yyval.formal)->SetLineNumber(line_number);
}
#line 1763 "SysY_parser.tab.c"
    break;

  case 45: /* FuncFParam: INT IDENT '[' ']'  */
#line 230 "parser/SysY_parser.y"
                    {
    std::vector<Expression>* temp = new std::vector<Expression>;
    temp->push_back(nullptr);
    (yyval.formal) = new __FuncFParam(Type::INT,(yyvsp[-2].symbol_token),temp);
    (yyval.formal)->SetLineNumber(line_number);
}
#line 1774 "SysY_parser.tab.c"
    break;

  case 46: /* FuncFParam: FLOAT IDENT '[' ']'  */
#line 236 "parser/SysY_parser.y"
                      {
    std::vector<Expression>* temp = new std::vector<Expression>;
    temp->push_back(nullptr);
    (yyval.formal) = new __FuncFParam(Type::FLOAT,(yyvsp[-2].symbol_token),temp);
    (yyval.formal)->SetLineNumber(line_number);
}
#line 1785 "SysY_parser.tab.c"
    break;

  case 47: /* Block: '{' BlockItem_list '}'  */
#line 245 "parser/SysY_parser.y"
                       {
    (yyval.block) = new __Block((yyvsp[-1].block_items));
    (yyval.block)->SetLineNumber(line_number);
}
#line 1794 "SysY_parser.tab.c"
    break;

  case 48: /* Block: '{' '}'  */
#line 249 "parser/SysY_parser.y"
        {
    (yyval.block) = new __Block(new std::vector<BlockItem>);
    (yyval.block)->SetLineNumber(line_number);
}
#line 1803 "SysY_parser.tab.c"
    break;

  case 49: /* BlockItem_list: BlockItem  */
#line 256 "parser/SysY_parser.y"
          {
    (yyval.block_items) = new std::vector<BlockItem>;
    ((yyval.block_items))->push_back((yyvsp[0].block_item));
}
#line 1812 "SysY_parser.tab.c"
    break;

  case 50: /* BlockItem_list: BlockItem_list BlockItem  */
#line 260 "parser/SysY_parser.y"
                         {
    ((yyvsp[-1].block_items))->push_back((yyvsp[0].block_item));
    (yyval.block_items) = (yyvsp[-1].block_items);
}
#line 1821 "SysY_parser.tab.c"
    break;

  case 51: /* BlockItem: Decl  */
#line 267 "parser/SysY_parser.y"
     {
    (yyval.block_item) = new BlockItem_Decl((yyvsp[0].decl));
    (yyval.block_item)->SetLineNumber(line_number);
}
#line 1830 "SysY_parser.tab.c"
    break;

  case 52: /* BlockItem: Stmt  */
#line 271 "parser/SysY_parser.y"
     {
    (yyval.block_item) = new BlockItem_Stmt((yyvsp[0].stmt));
    (yyval.block_item)->SetLineNumber(line_number);
}
#line 1839 "SysY_parser.tab.c"
    break;

  case 53: /* Stmt: Lval '=' Exp ';'  */
#line 278 "parser/SysY_parser.y"
                 {
    (yyval.stmt) = new assign_stmt((yyvsp[-3].expression),(yyvsp[-1].expression));
    (yyval.stmt)->SetLineNumber(line_number);
}
#line 1848 "SysY_parser.tab.c"
    break;

  case 54: /* Stmt: Lval ADDASSIGN Exp ';'  */
#line 282 "parser/SysY_parser.y"
                        {
    Lval* l;
    auto pd = ((Lval*)(yyvsp[-3].expression))->dims;
    if(pd != nullptr){
        auto vd = new std::vector<Expression>(*pd);
        l = new Lval(((Lval*)(yyvsp[-3].expression))->name,vd);
    }else{
        l = new Lval(((Lval*)(yyvsp[-3].expression))->name,nullptr);
    }
    auto n = new AddExp_plus(l,(yyvsp[-1].expression));
    (yyval.stmt) = new assign_stmt((yyvsp[-3].expression),n);
    (yyval.stmt)->SetLineNumber(line_number);
}
#line 1866 "SysY_parser.tab.c"
    break;

  case 55: /* Stmt: Lval SUBASSIGN Exp ';'  */
#line 295 "parser/SysY_parser.y"
                        {
    Lval* l;
    auto pd = ((Lval*)(yyvsp[-3].expression))->dims;
    if(pd != nullptr){
        auto vd = new std::vector<Expression>(*pd);
        l = new Lval(((Lval*)(yyvsp[-3].expression))->name,vd);
    }else{
        l = new Lval(((Lval*)(yyvsp[-3].expression))->name,nullptr);
    }
    auto n = new AddExp_sub(l,(yyvsp[-1].expression));
    (yyval.stmt) = new assign_stmt((yyvsp[-3].expression),n);
    (yyval.stmt)->SetLineNumber(line_number);
}
#line 1884 "SysY_parser.tab.c"
    break;

  case 56: /* Stmt: Lval MULASSIGN Exp ';'  */
#line 308 "parser/SysY_parser.y"
                        {
    Lval* l;
    auto pd = ((Lval*)(yyvsp[-3].expression))->dims;
    if(pd != nullptr){
        auto vd = new std::vector<Expression>(*pd);
        l = new Lval(((Lval*)(yyvsp[-3].expression))->name,vd);
    }else{
        l = new Lval(((Lval*)(yyvsp[-3].expression))->name,nullptr);
    }
    auto n = new MulExp_mul(l,(yyvsp[-1].expression));
    (yyval.stmt) = new assign_stmt((yyvsp[-3].expression),n);
    (yyval.stmt)->SetLineNumber(line_number);
}
#line 1902 "SysY_parser.tab.c"
    break;

  case 57: /* Stmt: Lval DIVASSIGN Exp ';'  */
#line 321 "parser/SysY_parser.y"
                        {
    Lval* l;
    auto pd = ((Lval*)(yyvsp[-3].expression))->dims;
    if(pd != nullptr){
        auto vd = new std::vector<Expression>(*pd);
        l = new Lval(((Lval*)(yyvsp[-3].expression))->name,vd);
    }else{
        l = new Lval(((Lval*)(yyvsp[-3].expression))->name,nullptr);
    }
    auto n = new MulExp_div(l,(yyvsp[-1].expression));
    (yyval.stmt) = new assign_stmt((yyvsp[-3].expression),n);
    (yyval.stmt)->SetLineNumber(line_number);
}
#line 1920 "SysY_parser.tab.c"
    break;

  case 58: /* Stmt: Lval MODASSIGN Exp ';'  */
#line 334 "parser/SysY_parser.y"
                        {
    Lval* l;
    auto pd = ((Lval*)(yyvsp[-3].expression))->dims;
    if(pd != nullptr){
        auto vd = new std::vector<Expression>(*pd);
        l = new Lval(((Lval*)(yyvsp[-3].expression))->name,vd);
    }else{
        l = new Lval(((Lval*)(yyvsp[-3].expression))->name,nullptr);
    }
    auto n = new MulExp_mod(l,(yyvsp[-1].expression));
    (yyval.stmt) = new assign_stmt((yyvsp[-3].expression),n);
    (yyval.stmt)->SetLineNumber(line_number);
}
#line 1938 "SysY_parser.tab.c"
    break;

  case 59: /* Stmt: Exp ';'  */
#line 347 "parser/SysY_parser.y"
        {
    (yyval.stmt) = new expr_stmt((yyvsp[-1].expression));
    (yyval.stmt)->SetLineNumber(line_number);
}
#line 1947 "SysY_parser.tab.c"
    break;

  case 60: /* Stmt: ';'  */
#line 351 "parser/SysY_parser.y"
    {
    (yyval.stmt) = new null_stmt();
    (yyval.stmt)->SetLineNumber(line_number);
}
#line 1956 "SysY_parser.tab.c"
    break;

  case 61: /* Stmt: Block  */
#line 355 "parser/SysY_parser.y"
      {
    (yyval.stmt) = new block_stmt((yyvsp[0].block));
    (yyval.stmt)->SetLineNumber(line_number);
}
#line 1965 "SysY_parser.tab.c"
    break;

  case 62: /* Stmt: IF '(' Cond ')' Stmt  */
#line 359 "parser/SysY_parser.y"
                                {
    (yyval.stmt) = new if_stmt((yyvsp[-2].expression),(yyvsp[0].stmt));
    (yyval.stmt)->SetLineNumber(line_number);
}
#line 1974 "SysY_parser.tab.c"
    break;

  case 63: /* Stmt: IF '(' Cond ')' Stmt ELSE Stmt  */
#line 363 "parser/SysY_parser.y"
                               {
    (yyval.stmt) = new ifelse_stmt((yyvsp[-4].expression),(yyvsp[-2].stmt),(yyvsp[0].stmt));
    (yyval.stmt)->SetLineNumber(line_number);
}
#line 1983 "SysY_parser.tab.c"
    break;

  case 64: /* Stmt: WHILE '(' Cond ')' Stmt  */
#line 367 "parser/SysY_parser.y"
                        {
    (yyval.stmt) = new while_stmt((yyvsp[-2].expression),(yyvsp[0].stmt));
    (yyval.stmt)->SetLineNumber(line_number);
}
#line 1992 "SysY_parser.tab.c"
    break;

  case 65: /* Stmt: BREAK ';'  */
#line 371 "parser/SysY_parser.y"
          {
    (yyval.stmt) = new break_stmt();
    (yyval.stmt)->SetLineNumber(line_number);
}
#line 2001 "SysY_parser.tab.c"
    break;

  case 66: /* Stmt: CONTINUE ';'  */
#line 375 "parser/SysY_parser.y"
             {
    (yyval.stmt) = new continue_stmt();
    (yyval.stmt)->SetLineNumber(line_number);
}
#line 2010 "SysY_parser.tab.c"
    break;

  case 67: /* Stmt: RETURN Exp ';'  */
#line 379 "parser/SysY_parser.y"
               {
    (yyval.stmt) = new return_stmt((yyvsp[-1].expression));
    (yyval.stmt)->SetLineNumber(line_number);
}
#line 2019 "SysY_parser.tab.c"
    break;

  case 68: /* Stmt: RETURN ';'  */
#line 383 "parser/SysY_parser.y"
           {
    (yyval.stmt) = new return_stmt_void();
    (yyval.stmt)->SetLineNumber(line_number);
}
#line 2028 "SysY_parser.tab.c"
    break;

  case 69: /* Stmt: FOR '(' VarDecl Cond ';' Lval '=' Exp ')' Stmt  */
#line 387 "parser/SysY_parser.y"
                                                {
    (yyval.stmt) = new for_stmt((yyvsp[-6].expression),(yyvsp[0].stmt),new assign_stmt((yyvsp[-4].expression),(yyvsp[-2].expression)),(yyvsp[-7].decl));
    (yyval.stmt)->SetLineNumber(line_number);
}
#line 2037 "SysY_parser.tab.c"
    break;

  case 70: /* Exp: AddExp  */
#line 394 "parser/SysY_parser.y"
       {(yyval.expression) = (yyvsp[0].expression); (yyval.expression)->SetLineNumber(line_number);}
#line 2043 "SysY_parser.tab.c"
    break;

  case 71: /* Cond: LOrExp  */
#line 398 "parser/SysY_parser.y"
       {(yyval.expression) = (yyvsp[0].expression); (yyval.expression)->SetLineNumber(line_number);}
#line 2049 "SysY_parser.tab.c"
    break;

  case 72: /* Lval: IDENT  */
#line 402 "parser/SysY_parser.y"
      {
    (yyval.expression) = new Lval((yyvsp[0].symbol_token),nullptr);
    (yyval.expression)->SetLineNumber(line_number);
}
#line 2058 "SysY_parser.tab.c"
    break;

  case 73: /* Lval: IDENT ArrayDim_list  */
#line 406 "parser/SysY_parser.y"
                    {
    (yyval.expression) = new Lval((yyvsp[-1].symbol_token),(yyvsp[0].expressions));
    (yyval.expression)->SetLineNumber(line_number);
}
#line 2067 "SysY_parser.tab.c"
    break;

  case 74: /* PrimaryExp: '(' Exp ')'  */
#line 413 "parser/SysY_parser.y"
            {
    (yyval.expression) = new PrimaryExp_branch((yyvsp[-1].expression));
    (yyval.expression)->SetLineNumber(line_number);
}
#line 2076 "SysY_parser.tab.c"
    break;

  case 75: /* PrimaryExp: Lval  */
#line 417 "parser/SysY_parser.y"
     {(yyval.expression) = (yyvsp[0].expression); (yyval.expression)->SetLineNumber(line_number);}
#line 2082 "SysY_parser.tab.c"
    break;

  case 76: /* PrimaryExp: IntConst  */
#line 418 "parser/SysY_parser.y"
         {(yyval.expression) = (yyvsp[0].expression); (yyval.expression)->SetLineNumber(line_number);}
#line 2088 "SysY_parser.tab.c"
    break;

  case 77: /* PrimaryExp: FloatConst  */
#line 419 "parser/SysY_parser.y"
           {(yyval.expression) = (yyvsp[0].expression); (yyval.expression)->SetLineNumber(line_number);}
#line 2094 "SysY_parser.tab.c"
    break;

  case 78: /* PrimaryExp: StringConst  */
#line 420 "parser/SysY_parser.y"
            {(yyval.expression) = (yyvsp[0].expression); (yyval.expression)->SetLineNumber(line_number);}
#line 2100 "SysY_parser.tab.c"
    break;

  case 79: /* IntConst: INT_CONST  */
#line 424 "parser/SysY_parser.y"
          {
    (yyval.expression) = new IntConst((yyvsp[0].int_token));
    (yyval.expression)->SetLineNumber(line_number);
}
#line 2109 "SysY_parser.tab.c"
    break;

  case 80: /* FloatConst: FLOAT_CONST  */
#line 431 "parser/SysY_parser.y"
            {
    (yyval.expression) = new FloatConst((yyvsp[0].float_token));
    (yyval.expression)->SetLineNumber(line_number);
}
#line 2118 "SysY_parser.tab.c"
    break;

  case 81: /* StringConst: STR_CONST  */
#line 438 "parser/SysY_parser.y"
          {
    (yyval.expression) = new StringConst((yyvsp[0].symbol_token));
    (yyval.expression)->SetLineNumber(line_number);
}
#line 2127 "SysY_parser.tab.c"
    break;

  case 82: /* UnaryExp: PrimaryExp  */
#line 445 "parser/SysY_parser.y"
           {(yyval.expression) = (yyvsp[0].expression);}
#line 2133 "SysY_parser.tab.c"
    break;

  case 83: /* UnaryExp: IDENT '(' FuncRParams ')'  */
#line 446 "parser/SysY_parser.y"
                          {
    (yyval.expression) = new Func_call((yyvsp[-3].symbol_token),(yyvsp[-1].expression));
    (yyval.expression)->SetLineNumber(line_number);
}
#line 2142 "SysY_parser.tab.c"
    break;

  case 84: /* UnaryExp: IDENT '(' ')'  */
#line 450 "parser/SysY_parser.y"
              {
    if((yyvsp[-2].symbol_token)->get_string() == "starttime"){
        auto params = new std::vector<Expression>;
        params->push_back(new IntConst(line_number));
        Expression temp = new FuncRParams(params);
        (yyval.expression) = new Func_call(id_table.add_id("_sysy_starttime"),temp);
        (yyval.expression)->SetLineNumber(line_number);
    }
    else if((yyvsp[-2].symbol_token)->get_string() == "stoptime"){
        auto params = new std::vector<Expression>;
        params->push_back(new IntConst(line_number));
        Expression temp = new FuncRParams(params);
        (yyval.expression) = new Func_call(id_table.add_id("_sysy_stoptime"),temp);
        (yyval.expression)->SetLineNumber(line_number);
    }
    else{
        (yyval.expression) = new Func_call((yyvsp[-2].symbol_token),nullptr);
        (yyval.expression)->SetLineNumber(line_number);
    }
}
#line 2167 "SysY_parser.tab.c"
    break;

  case 85: /* UnaryExp: '+' UnaryExp  */
#line 470 "parser/SysY_parser.y"
             {
    (yyval.expression) = new UnaryExp_plus((yyvsp[0].expression));
    (yyval.expression)->SetLineNumber(line_number);
}
#line 2176 "SysY_parser.tab.c"
    break;

  case 86: /* UnaryExp: '-' UnaryExp  */
#line 474 "parser/SysY_parser.y"
             {
    (yyval.expression) = new UnaryExp_neg((yyvsp[0].expression));
    (yyval.expression)->SetLineNumber(line_number);
}
#line 2185 "SysY_parser.tab.c"
    break;

  case 87: /* UnaryExp: '!' UnaryExp  */
#line 478 "parser/SysY_parser.y"
             {
    (yyval.expression) = new UnaryExp_not((yyvsp[0].expression));
    (yyval.expression)->SetLineNumber(line_number);
}
#line 2194 "SysY_parser.tab.c"
    break;

  case 88: /* FuncRParams: Exp_list  */
#line 485 "parser/SysY_parser.y"
         {
    (yyval.expression) = new FuncRParams((yyvsp[0].expressions));
    (yyval.expression)->SetLineNumber(line_number);
}
#line 2203 "SysY_parser.tab.c"
    break;

  case 89: /* Exp_list: Exp  */
#line 492 "parser/SysY_parser.y"
    {
    (yyval.expressions) = new std::vector<Expression>;
    ((yyval.expressions))->push_back((yyvsp[0].expression));
}
#line 2212 "SysY_parser.tab.c"
    break;

  case 90: /* Exp_list: Exp_list ',' Exp  */
#line 496 "parser/SysY_parser.y"
                 {
    ((yyvsp[-2].expressions))->push_back((yyvsp[0].expression));
    (yyval.expressions) = (yyvsp[-2].expressions);
}
#line 2221 "SysY_parser.tab.c"
    break;

  case 91: /* MulExp: UnaryExp  */
#line 503 "parser/SysY_parser.y"
         {(yyval.expression) = (yyvsp[0].expression);(yyval.expression)->SetLineNumber(line_number);}
#line 2227 "SysY_parser.tab.c"
    break;

  case 92: /* MulExp: MulExp '*' UnaryExp  */
#line 504 "parser/SysY_parser.y"
                    {(yyval.expression) = new MulExp_mul((yyvsp[-2].expression),(yyvsp[0].expression)); (yyval.expression)->SetLineNumber(line_number);}
#line 2233 "SysY_parser.tab.c"
    break;

  case 93: /* MulExp: MulExp '/' UnaryExp  */
#line 505 "parser/SysY_parser.y"
                    {(yyval.expression) = new MulExp_div((yyvsp[-2].expression),(yyvsp[0].expression)); (yyval.expression)->SetLineNumber(line_number);}
#line 2239 "SysY_parser.tab.c"
    break;

  case 94: /* MulExp: MulExp '%' UnaryExp  */
#line 506 "parser/SysY_parser.y"
                    {(yyval.expression) = new MulExp_mod((yyvsp[-2].expression),(yyvsp[0].expression)); (yyval.expression)->SetLineNumber(line_number);}
#line 2245 "SysY_parser.tab.c"
    break;

  case 95: /* AddExp: MulExp  */
#line 510 "parser/SysY_parser.y"
       {(yyval.expression) = (yyvsp[0].expression);(yyval.expression)->SetLineNumber(line_number);}
#line 2251 "SysY_parser.tab.c"
    break;

  case 96: /* AddExp: AddExp '+' MulExp  */
#line 511 "parser/SysY_parser.y"
                  {(yyval.expression) = new AddExp_plus((yyvsp[-2].expression),(yyvsp[0].expression)); (yyval.expression)->SetLineNumber(line_number);}
#line 2257 "SysY_parser.tab.c"
    break;

  case 97: /* AddExp: AddExp '-' MulExp  */
#line 512 "parser/SysY_parser.y"
                  {(yyval.expression) = new AddExp_sub((yyvsp[-2].expression),(yyvsp[0].expression)); (yyval.expression)->SetLineNumber(line_number);}
#line 2263 "SysY_parser.tab.c"
    break;

  case 98: /* RelExp: AddExp  */
#line 516 "parser/SysY_parser.y"
       {(yyval.expression) = (yyvsp[0].expression);(yyval.expression)->SetLineNumber(line_number);}
#line 2269 "SysY_parser.tab.c"
    break;

  case 99: /* RelExp: RelExp '<' AddExp  */
#line 517 "parser/SysY_parser.y"
                  {(yyval.expression) = new RelExp_lt((yyvsp[-2].expression),(yyvsp[0].expression)); (yyval.expression)->SetLineNumber(line_number);}
#line 2275 "SysY_parser.tab.c"
    break;

  case 100: /* RelExp: RelExp '>' AddExp  */
#line 518 "parser/SysY_parser.y"
                  {(yyval.expression) = new RelExp_gt((yyvsp[-2].expression),(yyvsp[0].expression)); (yyval.expression)->SetLineNumber(line_number);}
#line 2281 "SysY_parser.tab.c"
    break;

  case 101: /* RelExp: RelExp LEQ AddExp  */
#line 519 "parser/SysY_parser.y"
                  {(yyval.expression) = new RelExp_leq((yyvsp[-2].expression),(yyvsp[0].expression)); (yyval.expression)->SetLineNumber(line_number);}
#line 2287 "SysY_parser.tab.c"
    break;

  case 102: /* RelExp: RelExp GEQ AddExp  */
#line 520 "parser/SysY_parser.y"
                  {(yyval.expression) = new RelExp_geq((yyvsp[-2].expression),(yyvsp[0].expression)); (yyval.expression)->SetLineNumber(line_number);}
#line 2293 "SysY_parser.tab.c"
    break;

  case 103: /* EqExp: RelExp  */
#line 524 "parser/SysY_parser.y"
       {(yyval.expression) = (yyvsp[0].expression);(yyval.expression)->SetLineNumber(line_number);}
#line 2299 "SysY_parser.tab.c"
    break;

  case 104: /* EqExp: EqExp EQ RelExp  */
#line 525 "parser/SysY_parser.y"
                {(yyval.expression) = new EqExp_eq((yyvsp[-2].expression),(yyvsp[0].expression)); (yyval.expression)->SetLineNumber(line_number);}
#line 2305 "SysY_parser.tab.c"
    break;

  case 105: /* EqExp: EqExp NE RelExp  */
#line 526 "parser/SysY_parser.y"
                {(yyval.expression) = new EqExp_neq((yyvsp[-2].expression),(yyvsp[0].expression)); (yyval.expression)->SetLineNumber(line_number);}
#line 2311 "SysY_parser.tab.c"
    break;

  case 106: /* LAndExp: EqExp  */
#line 530 "parser/SysY_parser.y"
      {(yyval.expression) = (yyvsp[0].expression);(yyval.expression)->SetLineNumber(line_number);}
#line 2317 "SysY_parser.tab.c"
    break;

  case 107: /* LAndExp: LAndExp AND EqExp  */
#line 531 "parser/SysY_parser.y"
                  {(yyval.expression) = new LAndExp_and((yyvsp[-2].expression),(yyvsp[0].expression)); (yyval.expression)->SetLineNumber(line_number);}
#line 2323 "SysY_parser.tab.c"
    break;

  case 108: /* LOrExp: LAndExp  */
#line 535 "parser/SysY_parser.y"
        {(yyval.expression) = (yyvsp[0].expression);(yyval.expression)->SetLineNumber(line_number);}
#line 2329 "SysY_parser.tab.c"
    break;

  case 109: /* LOrExp: LOrExp OR LAndExp  */
#line 536 "parser/SysY_parser.y"
                  {(yyval.expression) = new LOrExp_or((yyvsp[-2].expression),(yyvsp[0].expression)); (yyval.expression)->SetLineNumber(line_number);}
#line 2335 "SysY_parser.tab.c"
    break;

  case 110: /* ConstExp: AddExp  */
#line 540 "parser/SysY_parser.y"
       {(yyval.expression) = (yyvsp[0].expression);(yyval.expression)->SetLineNumber(line_number);}
#line 2341 "SysY_parser.tab.c"
    break;

  case 111: /* ArrayDim: '[' Exp ']'  */
#line 544 "parser/SysY_parser.y"
            {(yyval.expression) = (yyvsp[-1].expression);(yyval.expression)->SetLineNumber(line_number);}
#line 2347 "SysY_parser.tab.c"
    break;

  case 112: /* ArrayDim_list: ArrayDim  */
#line 549 "parser/SysY_parser.y"
{
    (yyval.expressions) = new std::vector<Expression>;
    ((yyval.expressions))->push_back((yyvsp[0].expression));
}
#line 2356 "SysY_parser.tab.c"
    break;

  case 113: /* ArrayDim_list: ArrayDim_list ArrayDim  */
#line 554 "parser/SysY_parser.y"
{
    ((yyvsp[-1].expressions))->push_back((yyvsp[0].expression));
    (yyval.expressions) = (yyvsp[-1].expressions);
}
#line 2365 "SysY_parser.tab.c"
    break;

  case 114: /* ConstArrayDim: '[' ConstExp ']'  */
#line 561 "parser/SysY_parser.y"
                 {(yyval.expression) = (yyvsp[-1].expression);(yyval.expression)->SetLineNumber(line_number);}
#line 2371 "SysY_parser.tab.c"
    break;

  case 115: /* ConstArrayDim_list: ConstArrayDim  */
#line 566 "parser/SysY_parser.y"
{
    (yyval.expressions) = new std::vector<Expression>;
    ((yyval.expressions))->push_back((yyvsp[0].expression));
}
#line 2380 "SysY_parser.tab.c"
    break;

  case 116: /* ConstArrayDim_list: ConstArrayDim_list ConstArrayDim  */
#line 571 "parser/SysY_parser.y"
{
    ((yyvsp[-1].expressions))->push_back((yyvsp[0].expression));
    (yyval.expressions) = (yyvsp[-1].expressions);
}
#line 2389 "SysY_parser.tab.c"
    break;


#line 2393 "SysY_parser.tab.c"

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
  YY_SYMBOL_PRINT ("-> $$ =", YY_CAST (yysymbol_kind_t, yyr1[yyn]), &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;

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
  yytoken = yychar == YYEMPTY ? YYSYMBOL_YYEMPTY : YYTRANSLATE (yychar);
  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
      yyerror (YY_("syntax error"));
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
  ++yynerrs;

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

  /* Pop stack until we find a state that shifts the error token.  */
  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYSYMBOL_YYerror;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYSYMBOL_YYerror)
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
                  YY_ACCESSING_SYMBOL (yystate), yyvsp, yylsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  yyerror_range[2] = yylloc;
  ++yylsp;
  YYLLOC_DEFAULT (*yylsp, yyerror_range, 2);

  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", YY_ACCESSING_SYMBOL (yyn), yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturnlab;


/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturnlab;


/*-----------------------------------------------------------.
| yyexhaustedlab -- YYNOMEM (memory exhaustion) comes here.  |
`-----------------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  goto yyreturnlab;


/*----------------------------------------------------------.
| yyreturnlab -- parsing is finished, clean up and return.  |
`----------------------------------------------------------*/
yyreturnlab:
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
                  YY_ACCESSING_SYMBOL (+*yyssp), yyvsp, yylsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif

  return yyresult;
}

#line 577 "parser/SysY_parser.y"
 

void yyerror(char* s, ...)
{
    ++error_num;
    fout<<"parser error in line "<<line_number<<"\n";
}
