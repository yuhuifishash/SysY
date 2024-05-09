SRCDIR += ./target
SRCDIR += ./target/armv7
SRCDIR += ./target/common
SRCDIR += ./target/common/machine_passes/register_alloc
SRCDIR += ./target/common/machine_passes/register_alloc/fast_linear_scan
SRCDIR += ./target/common/machine_passes/register_alloc/graph_color
SRCDIR += ./target/common/machine_instruction_structures
SRCDIR += ./target/common/machine_instruction_structures/cfg_iterators
SRCDIR += ./target/common/machine_passes
SRCDIR += ./target/armv7/instruction_select
SRCDIR += ./target/armv7/instruction_print
SRCDIR += ./target/riscv64gc
SRCDIR += ./target/riscv64gc/instruction_print
SRCDIR += ./target/riscv64gc/instruction_select
SRCDIR += ./parser
SRCDIR += ./lexer
SRCDIR += ./ir_gen
SRCDIR += ./include
SRCDIR += ./optimize/ssa
SRCDIR += ./optimize/peephole
SRCDIR += ./optimize/propagating
SRCDIR += ./optimize/redundancy_elimination
SRCDIR += ./optimize/redundancy_elimination/memdep
SRCDIR += ./optimize/cfg
SRCDIR += ./optimize/loop
SRCDIR += ./optimize/loop/scev
SRCDIR += ./optimize/function
SRCDIR += ./optimize/alias_analysis
SRCDIR += ./utils


OBJDIR := ./obj

INCS := $(foreach dir,${SRCDIR},-I${dir})
SRCS := $(foreach dir,$(SRCDIR),$(wildcard $(dir)/*.cc))
OBJS := $(patsubst %.cc,$(OBJDIR)/%.o,$(SRCS))

SysYc : ${OBJS}
	clang++ $(OBJS) -o bin/SysYc -O2 -std=c++17

$(OBJDIR)/%.o : %.cc
	mkdir -p $(dir $@)
	clang++ -c $< -o $@ -O2 -std=c++17

.PHONY : clean-obj,clean-all,lexer,parser,format
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

format:
	clang-format -style=file -i ${SRCS}
	clang-format -style=file -i $(foreach dir,$(SRCDIR),$(wildcard $(dir)/*.h))