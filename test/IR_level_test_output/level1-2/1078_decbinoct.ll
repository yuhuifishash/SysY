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
define i32 @dec2bin(i32 %r0)
{
L0:
    %r8 = alloca i32
    %r6 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    %r7 = add i32 0,0
    store i32 %r7, ptr %r6
    %r9 = add i32 0,0
    store i32 %r9, ptr %r8
    %r10 = add i32 0,0
    store i32 %r10, ptr %r2
    %r11 = add i32 0,1
    store i32 %r11, ptr %r4
    %r12 = load i32, ptr %r1
    store i32 %r12, ptr %r8
    br label %L1
L1:
    %r13 = load i32, ptr %r8
    %r14 = add i32 0,0
    %r15 = icmp ne i32 %r13,%r14
    br i1 %r15, label %L2, label %L3
L2:
    %r18 = load i32, ptr %r8
    %r19 = add i32 0,2
    %r20 = srem i32 %r18,%r19
    store i32 %r20, ptr %r6
    %r21 = load i32, ptr %r4
    %r22 = load i32, ptr %r6
    %r23 = mul i32 %r21,%r22
    %r24 = load i32, ptr %r2
    %r25 = add i32 %r23,%r24
    store i32 %r25, ptr %r2
    %r26 = load i32, ptr %r4
    %r27 = add i32 0,10
    %r28 = mul i32 %r26,%r27
    store i32 %r28, ptr %r4
    %r29 = load i32, ptr %r8
    %r30 = add i32 0,2
    %r31 = sdiv i32 %r29,%r30
    store i32 %r31, ptr %r8
    br label %L1
L3:
    %r32 = load i32, ptr %r2
    ret i32 %r32
}
define i32 @main()
{
L0:
    %r3 = alloca i32
    %r0 = alloca i32
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r2 = add i32 0,400
    store i32 %r2, ptr %r0
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r5 = load i32, ptr %r0
    %r6 = call i32 @dec2bin(i32 %r5)
    store i32 %r6, ptr %r3
    %r7 = load i32, ptr %r3
    call void @putint(i32 %r7)
    %r8 = add i32 0,10
    store i32 %r8, ptr %r3
    %r9 = load i32, ptr %r3
    call void @putch(i32 %r9)
    %r10 = add i32 0,0
    ret i32 %r10
}
