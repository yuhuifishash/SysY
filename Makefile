SRCDIR += ./target
SRCDIR += ./target/armv7
SRCDIR += ./target/common
SRCDIR += ./target/common/register_alloc
SRCDIR += ./target/armv7/instruction_select
SRCDIR += ./target/riscv64gc
SRCDIR += ./parser
SRCDIR += ./lexer
SRCDIR += ./ir_gen
SRCDIR += ./include
SRCDIR += ./optimize/ssa
SRCDIR += ./optimize/peephole
SRCDIR += ./optimize/propagating
SRCDIR += ./optimize/redundancy_elimination
SRCDIR += ./optimize/cfg
SRCDIR += ./optimize/loop
SRCDIR += ./optimize/function
SRCDIR += ./utils


OBJDIR := ./obj

INCS := $(foreach dir,${SRCDIR},-I${dir})
SRCS := $(foreach dir,$(SRCDIR),$(wildcard $(dir)/*.cc))
OBJS := $(patsubst %.cc,$(OBJDIR)/%.o,$(SRCS))

SysYc : ${OBJS}
	clang++ $(OBJS) -o bin/SysYc -O2 -std=c++17

$(OBJDIR)/%.o : %.cc
	mkdir -p $(dir $@)
	clang++ -c $(INCS) $< -o $@ -O2 -std=c++17

.PHONY : clean,clean-all,lexer,parser,clean_example_test_output
lexer:lexer/SysY_lexer.l
	flex -o lexer/SysY_lexer.cc lexer/SysY_lexer.l

parser:parser/SysY_parser.y
	bison -dv parser/SysY_parser.y
	rm -r SysY_parser.output
	mv SysY_parser.tab.c parser/SysY_parser.tab.cc
	mv SysY_parser.tab.h parser/SysY_parser.tab.h
	sed -i '1s/^/#include \"SysY_tree.h\"/' parser/SysY_parser.tab.h

clean-obj:
	rm -r ${OBJDIR}/*

clean-all:
	rm -r ${OBJDIR}/*
	rm -r bin/*