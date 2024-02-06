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
    %r3 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r2 = add i32 0,5
    store i32 %r2, ptr %r0
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r5 = add i32 0,10
    store i32 %r5, ptr %r3
    %r6 = load i32, ptr %r0
    %r7 = add i32 0,5
    %r8 = icmp eq i32 %r6,%r7
    br i1 %r8, label %L2, label %L3
L2:
    %r11 = load i32, ptr %r3
    %r12 = add i32 0,10
    %r13 = icmp eq i32 %r11,%r12
    br i1 %r13, label %L4, label %L5
L3:
    %r20 = load i32, ptr %r0
    ret i32 %r20
L4:
    %r16 = add i32 0,25
    store i32 %r16, ptr %r0
    br label %L6
L5:
    %r17 = load i32, ptr %r0
    %r18 = add i32 0,15
    %r19 = add i32 %r17,%r18
    store i32 %r19, ptr %r0
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
