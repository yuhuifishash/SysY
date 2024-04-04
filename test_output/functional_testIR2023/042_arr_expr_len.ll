declare i32 @getint()
declare i32 @getch()
declare float @getfloat()
declare i32 @getarray(ptr)
declare i32 @getfarray(ptr)
declare void @putint(i32)
declare void @putch(i32)
declare void @putfloat(float)
declare void @putarray(i32,ptr)
declare void @putfarray(i32,ptr)
declare void @putf(ptr)
declare void @_sysy_starttime(i32)
declare void @_sysy_stoptime(i32)
declare void @llvm.memset.p0.i32(ptr,i8,i32,i1)
@N = global i32 -1
@arr = global [6 x i32] [i32 1,i32 2,i32 33,i32 4,i32 5,i32 6]
define i32 @main()
{
L0:  ;
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:  ;
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    br label %L2
L2:  ;
    %r4 = load i32, ptr %r0
    %r5 = add i32 6,0
    %r6 = icmp slt i32 %r4,%r5
    br i1 %r6, label %L3, label %L4
L3:  ;
    %r7 = load i32, ptr %r2
    %r8 = load i32, ptr %r0
    %r9 = getelementptr [6 x i32], ptr @arr, i32 0, i32 %r8
    %r10 = load i32, ptr %r9
    %r11 = add i32 %r7,%r10
    store i32 %r11, ptr %r2
    %r12 = load i32, ptr %r0
    %r13 = add i32 1,0
    %r14 = add i32 %r12,%r13
    store i32 %r14, ptr %r0
    br label %L2
L4:  ;
    %r15 = load i32, ptr %r2
    ret i32 %r15
}
