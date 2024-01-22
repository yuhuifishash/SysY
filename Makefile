SRCDIR := ./src
SRCDIR += ./src2
SRCDIR += ./src_optimize
SRCDIR += ./include
SRCDIR += ./tester
SRCDIR += ./src_optimize/peephole

OBJDIR := ./obj

INCS := $(foreach dir,${SRCDIR},-I${dir})
SRCS := $(foreach dir,$(SRCDIR),$(wildcard $(dir)/*.cc))
OBJS := $(patsubst %.cc,$(OBJDIR)/%.o,$(SRCS))

SysYc : ${OBJS}
	clang++ $(OBJS) -o bin/SysYc -O2 -std=c++11

$(OBJDIR)/%.o : %.cc
	mkdir -p $(dir $@)
	clang++ -c $(INCS) $< -o $@ -O2 -std=c++11

.PHONY : clean,clean-all,lexer,parser,clean_example_test_output
lexer:
	flex -o src/SysY_lexer.cc src/SysY_lexer.l
parser:
	bison -dv src/SysY_parser.y
	rm -r SysY_parser.output
	mv SysY_parser.tab.c src/SysY_parser.tab.cc
	mv SysY_parser.tab.h src/SysY_parser.tab.h
	sed -i '1s/^/#include \"SysY_tree.h\"/' src/SysY_parser.tab.h
clean-obj:
	rm -r ${OBJDIR}/*
clean-all:
	rm -r ${OBJDIR}/*
	rm -r bin/*
clean_example_test_output:
	rm -r test/cgen_test_output/*
	rm -r test/cgenalloc_test_output/*
	rm -r test/cgenpre_test_output/*
	rm -r test/IR_optimize_test_output/*
	rm -r test/IR_test_output/*
	rm -r test/lexer_test_output/*
	rm -r test/parser_test_output/*
	rm -r test/cgen_optimize_test_output/*
