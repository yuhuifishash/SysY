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
define i32 @exgcd(i32 %r0,i32 %r1,ptr %r2,ptr %r3)
{
L0:
    %r26 = alloca i32
    %r18 = alloca i32
    %r4 = alloca i32
    store i32 %r0, ptr %r4
    %r5 = alloca i32
    store i32 %r1, ptr %r5
    %r6 = load i32, ptr %r5
    %r7 = add i32 0,0
    %r8 = icmp eq i32 %r6,%r7
    br i1 %r8, label %L1, label %L2
L1:
    %r11 = add i32 0,1
    %r12 = add i32 0,0
    %r13 = getelementptr i32, ptr %r2, i32 %r12
    store i32 %r11, ptr %r13
    %r14 = add i32 0,0
    %r15 = add i32 0,0
    %r16 = getelementptr i32, ptr %r3, i32 %r15
    store i32 %r14, ptr %r16
    %r17 = load i32, ptr %r4
    ret i32 %r17
L2:
    %r19 = load i32, ptr %r5
    %r20 = load i32, ptr %r4
    %r21 = load i32, ptr %r5
    %r22 = srem i32 %r20,%r21
    %r23 = getelementptr i32, ptr %r2
    %r24 = getelementptr i32, ptr %r3
    %r25 = call i32 @exgcd(i32 %r19,i32 %r22,ptr %r23,ptr %r24)
    store i32 %r25, ptr %r18
    %r27 = add i32 0,0
    %r28 = getelementptr i32, ptr %r2, i32 %r27
    %r29 = load i32, ptr %r28
    store i32 %r29, ptr %r26
    %r30 = add i32 0,0
    %r31 = getelementptr i32, ptr %r3, i32 %r30
    %r32 = load i32, ptr %r31
    %r33 = add i32 0,0
    %r34 = getelementptr i32, ptr %r2, i32 %r33
    store i32 %r32, ptr %r34
    %r35 = load i32, ptr %r26
    %r36 = load i32, ptr %r4
    %r37 = load i32, ptr %r5
    %r38 = sdiv i32 %r36,%r37
    %r39 = add i32 0,0
    %r40 = getelementptr i32, ptr %r3, i32 %r39
    %r41 = load i32, ptr %r40
    %r42 = mul i32 %r38,%r41
    %r43 = sub i32 %r35,%r42
    %r44 = add i32 0,0
    %r45 = getelementptr i32, ptr %r3, i32 %r44
    store i32 %r43, ptr %r45
    %r46 = load i32, ptr %r18
    ret i32 %r46
}
define i32 @main()
{
L0:
    %r7 = alloca [1 x i32]
    %r4 = alloca [1 x i32]
    %r2 = alloca i32
    %r0 = alloca i32
    %r1 = add i32 0,7
    store i32 %r1, ptr %r0
    %r3 = add i32 0,15
    store i32 %r3, ptr %r2
    call void @llvm.memset.p0.i32(ptr %r4,i8 0,i32 4,i1 0)
    %r5 = add i32 0,1
    %r6 = getelementptr [1 x i32], ptr %r4, i32 0, i32 0
    store i32 %r5, ptr %r6
    call void @llvm.memset.p0.i32(ptr %r7,i8 0,i32 4,i1 0)
    %r8 = add i32 0,1
    %r9 = getelementptr [1 x i32], ptr %r7, i32 0, i32 0
    store i32 %r8, ptr %r9
    %r10 = load i32, ptr %r0
    %r11 = load i32, ptr %r2
    %r12 = getelementptr i32, ptr %r4, i32 0
    %r13 = getelementptr i32, ptr %r7, i32 0
    %r14 = call i32 @exgcd(i32 %r10,i32 %r11,ptr %r12,ptr %r13)
    %r15 = add i32 0,0
    %r16 = getelementptr [1 x i32], ptr %r4, i32 0, i32 %r15
    %r17 = load i32, ptr %r16
    %r18 = load i32, ptr %r2
    %r19 = srem i32 %r17,%r18
    %r20 = load i32, ptr %r2
    %r21 = add i32 %r19,%r20
    %r22 = load i32, ptr %r2
    %r23 = srem i32 %r21,%r22
    %r24 = add i32 0,0
    %r25 = getelementptr [1 x i32], ptr %r4, i32 0, i32 %r24
    store i32 %r23, ptr %r25
    %r26 = add i32 0,0
    %r27 = getelementptr [1 x i32], ptr %r4, i32 0, i32 %r26
    %r28 = load i32, ptr %r27
    call void @putint(i32 %r28)
    %r29 = add i32 0,0
    ret i32 %r29
}
