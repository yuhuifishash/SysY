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
declare void @starttime()
declare void @stoptime()
declare void @llvm.memset.p0.i32(ptr,i8,i32,i1)
define i32 @main()
{
L0:
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    %r6 = call i32 @getint()
    store i32 %r6, ptr %r2
    %r7 = call i32 @getint()
    store i32 %r7, ptr %r0
    %r8 = load i32, ptr %r2
    %r9 = load i32, ptr %r0
    %r10 = call i32 @fun(i32 %r8,i32 %r9)
    store i32 %r10, ptr %r4
    %r11 = load i32, ptr %r4
    call void @putint(i32 %r11)
    %r12 = add i32 0,0
    ret i32 %r12
}
define i32 @fun(i32 %r0,i32 %r1)
{
L0:
    %r4 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    br label %L1
L1:
    %r6 = load i32, ptr %r3
    %r7 = add i32 0,0
    %r8 = icmp sgt i32 %r6,%r7
    br i1 %r8, label %L2, label %L3
L2:
    %r11 = load i32, ptr %r2
    %r12 = load i32, ptr %r3
    %r13 = srem i32 %r11,%r12
    store i32 %r13, ptr %r4
    %r14 = load i32, ptr %r3
    store i32 %r14, ptr %r2
    %r15 = load i32, ptr %r4
    store i32 %r15, ptr %r3
    br label %L1
L3:
    %r16 = load i32, ptr %r2
    ret i32 %r16
}
