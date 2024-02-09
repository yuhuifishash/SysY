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
define i32 @fun(i32 %r0,i32 %r1)
{
L0:
    %r4 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:
    store i32 0, ptr %r4
    br label %L2
L2:
    %r5 = load i32, ptr %r3
    %r6 = add i32 0,0
    %r7 = icmp sgt i32 %r5,%r6
    br i1 %r7, label %L3, label %L4
L3:
    %r8 = load i32, ptr %r2
    %r9 = load i32, ptr %r3
    %r10 = srem i32 %r8,%r9
    store i32 %r10, ptr %r4
    %r11 = load i32, ptr %r3
    store i32 %r11, ptr %r2
    %r12 = load i32, ptr %r4
    store i32 %r12, ptr %r3
    br label %L2
L4:
    %r13 = load i32, ptr %r2
    ret i32 %r13
}
define i32 @main()
{
L0:
    %r2 = alloca i32
    %r1 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r0
    store i32 0, ptr %r1
    store i32 0, ptr %r2
    %r3 = call i32 @getint()
    store i32 %r3, ptr %r1
    %r4 = call i32 @getint()
    store i32 %r4, ptr %r0
    %r5 = load i32, ptr %r1
    %r6 = load i32, ptr %r0
    %r7 = call i32 @fun(i32 %r5,i32 %r6)
    store i32 %r7, ptr %r2
    %r8 = load i32, ptr %r2
    call void @putint(i32 %r8)
    %r9 = add i32 0,0
    ret i32 %r9
}
