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
define i32 @ififElse()
{
L0:
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r0
    %r1 = add i32 5,0
    store i32 %r1, ptr %r0
    store i32 0, ptr %r2
    %r3 = add i32 10,0
    store i32 %r3, ptr %r2
    %r4 = load i32, ptr %r0
    %r5 = add i32 5,0
    %r6 = icmp eq i32 %r4,%r5
    br i1 %r6, label %L2, label %L3
L2:
    %r7 = load i32, ptr %r2
    %r8 = add i32 10,0
    %r9 = icmp eq i32 %r7,%r8
    br i1 %r9, label %L4, label %L5
L3:
    %r14 = load i32, ptr %r0
    ret i32 %r14
L4:
    %r10 = add i32 25,0
    store i32 %r10, ptr %r0
    br label %L6
L5:
    %r11 = load i32, ptr %r0
    %r12 = add i32 15,0
    %r13 = add i32 %r11,%r12
    store i32 %r13, ptr %r0
    br label %L6
L6:
    br label %L3
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r0 = call i32 @ififElse()
    ret i32 %r0
}
