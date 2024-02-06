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
define i32 @main()
{
L0:
    %r19 = alloca i32
    %r12 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 0,893
    store i32 %r1, ptr %r0
    %r3 = add i32 0,716
    store i32 %r3, ptr %r2
    %r5 = add i32 0,837
    store i32 %r5, ptr %r4
    %r6 = load i32, ptr %r4
    %r7 = add i32 0,128
    %r8 = add i32 %r6,%r7
    store i32 %r8, ptr %r4
    %r9 = load i32, ptr %r2
    %r10 = load i32, ptr %r4
    %r11 = add i32 %r9,%r10
    store i32 %r11, ptr %r2
    %r13 = add i32 0,241
    store i32 %r13, ptr %r12
    %r14 = load i32, ptr %r4
    %r15 = load i32, ptr %r12
    %r16 = add i32 %r14,%r15
    %r17 = add i32 0,412
    %r18 = sub i32 %r16,%r17
    store i32 %r18, ptr %r4
    %r20 = add i32 0,771
    store i32 %r20, ptr %r19
    %r21 = load i32, ptr %r12
    %r22 = load i32, ptr %r19
    %r23 = add i32 %r21,%r22
    %r24 = add i32 0,18
    %r25 = sub i32 %r23,%r24
    store i32 %r25, ptr %r12
    %r26 = load i32, ptr %r12
    %r27 = add i32 0,66
    %r28 = add i32 %r26,%r27
    store i32 %r28, ptr %r19
    %r29 = load i32, ptr %r12
    %r30 = load i32, ptr %r4
    %r31 = add i32 %r29,%r30
    %r32 = add i32 0,33
    %r33 = sub i32 %r31,%r32
    store i32 %r33, ptr %r12
    %r34 = load i32, ptr %r12
    %r35 = add i32 0,55
    %r36 = sub i32 %r34,%r35
    store i32 %r36, ptr %r4
    %r37 = load i32, ptr %r4
    %r38 = load i32, ptr %r12
    %r39 = add i32 %r37,%r38
    %r40 = add i32 0,21
    %r41 = srem i32 %r39,%r40
    ret i32 %r41
}
