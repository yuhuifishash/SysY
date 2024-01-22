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
define i32 @gcd(i32 %r0,i32 %r1)
{
L0:
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r4 = load i32, ptr %r2
    %r5 = add i32 0,0
    %r6 = icmp eq i32 %r4,%r5
    br i1 %r6, label %L2, label %L3
L2:
    %r9 = load i32, ptr %r3
    ret i32 %r9
L3:
    %r10 = load i32, ptr %r3
    %r11 = load i32, ptr %r2
    %r12 = load i32, ptr %r3
    %r13 = srem i32 %r11,%r12
    %r14 = call i32 @gcd(i32 %r10,i32 %r13)
    ret i32 %r14
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r0 = add i32 0,4
    %r1 = add i32 0,64
    %r2 = call i32 @gcd(i32 %r0,i32 %r1)
    ret i32 %r2
}
