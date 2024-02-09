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
@n = global i32 zeroinitializer
define i32 @gcd(i32 %r0,i32 %r1)
{
L0:
    %r9 = alloca i32
    %r8 = alloca i32
    %r5 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:
    store i32 0, ptr %r4
    store i32 0, ptr %r5
    %r6 = load i32, ptr %r2
    store i32 %r6, ptr %r4
    %r7 = load i32, ptr %r3
    store i32 %r7, ptr %r5
    store i32 0, ptr %r8
    store i32 0, ptr %r9
    %r10 = load i32, ptr %r2
    %r11 = load i32, ptr %r3
    %r12 = icmp slt i32 %r10,%r11
    br i1 %r12, label %L2, label %L3
L2:
    %r13 = load i32, ptr %r2
    store i32 %r13, ptr %r8
    %r14 = load i32, ptr %r3
    store i32 %r14, ptr %r2
    %r15 = load i32, ptr %r8
    store i32 %r15, ptr %r3
    br label %L3
L3:
    %r16 = load i32, ptr %r2
    %r17 = load i32, ptr %r3
    %r18 = srem i32 %r16,%r17
    store i32 %r18, ptr %r9
    br label %L4
L4:
    %r19 = load i32, ptr %r9
    %r20 = add i32 0,0
    %r21 = icmp ne i32 %r19,%r20
    br i1 %r21, label %L5, label %L6
L5:
    %r22 = load i32, ptr %r3
    store i32 %r22, ptr %r2
    %r23 = load i32, ptr %r9
    store i32 %r23, ptr %r3
    %r24 = load i32, ptr %r2
    %r25 = load i32, ptr %r3
    %r26 = srem i32 %r24,%r25
    store i32 %r26, ptr %r9
    br label %L4
L6:
    %r27 = load i32, ptr %r4
    %r28 = load i32, ptr %r5
    %r29 = mul i32 %r27,%r28
    %r30 = load i32, ptr %r3
    %r31 = sdiv i32 %r29,%r30
    ret i32 %r31
}
define i32 @main()
{
L0:
    %r1 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r0
    store i32 0, ptr %r1
    %r2 = call i32 @getint()
    store i32 %r2, ptr %r0
    %r3 = call i32 @getint()
    store i32 %r3, ptr %r1
    %r4 = load i32, ptr %r0
    %r5 = load i32, ptr %r1
    %r6 = call i32 @gcd(i32 %r4,i32 %r5)
    ret i32 %r6
}
