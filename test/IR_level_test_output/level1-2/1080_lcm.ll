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
@n = global i32 zeroinitializer
define i32 @gcd(i32 %r0,i32 %r1)
{
L0:
    %r12 = alloca i32
    %r10 = alloca i32
    %r6 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    %r7 = add i32 0,0
    store i32 %r7, ptr %r6
    %r8 = load i32, ptr %r2
    store i32 %r8, ptr %r4
    %r9 = load i32, ptr %r3
    store i32 %r9, ptr %r6
    %r11 = add i32 0,0
    store i32 %r11, ptr %r10
    %r13 = add i32 0,0
    store i32 %r13, ptr %r12
    %r14 = load i32, ptr %r2
    %r15 = load i32, ptr %r3
    %r16 = icmp slt i32 %r14,%r15
    br i1 %r16, label %L1, label %L2
L1:
    %r19 = load i32, ptr %r2
    store i32 %r19, ptr %r10
    %r20 = load i32, ptr %r3
    store i32 %r20, ptr %r2
    %r21 = load i32, ptr %r10
    store i32 %r21, ptr %r3
    br label %L2
L2:
    %r22 = load i32, ptr %r2
    %r23 = load i32, ptr %r3
    %r24 = srem i32 %r22,%r23
    store i32 %r24, ptr %r12
    br label %L3
L3:
    %r25 = load i32, ptr %r12
    %r26 = add i32 0,0
    %r27 = icmp ne i32 %r25,%r26
    br i1 %r27, label %L4, label %L5
L4:
    %r30 = load i32, ptr %r3
    store i32 %r30, ptr %r2
    %r31 = load i32, ptr %r12
    store i32 %r31, ptr %r3
    %r32 = load i32, ptr %r2
    %r33 = load i32, ptr %r3
    %r34 = srem i32 %r32,%r33
    store i32 %r34, ptr %r12
    br label %L3
L5:
    %r35 = load i32, ptr %r4
    %r36 = load i32, ptr %r6
    %r37 = mul i32 %r35,%r36
    %r38 = load i32, ptr %r3
    %r39 = sdiv i32 %r37,%r38
    ret i32 %r39
}
define i32 @main()
{
L0:
    %r2 = alloca i32
    %r0 = alloca i32
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r4 = call i32 @getint()
    store i32 %r4, ptr %r0
    %r5 = call i32 @getint()
    store i32 %r5, ptr %r2
    %r6 = load i32, ptr %r0
    %r7 = load i32, ptr %r2
    %r8 = call i32 @gcd(i32 %r6,i32 %r7)
    ret i32 %r8
}
