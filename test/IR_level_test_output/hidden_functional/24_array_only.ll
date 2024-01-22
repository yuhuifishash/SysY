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
@i = global [1x i32] zeroinitializer
@k = global [1x i32] zeroinitializer
define void @inc(ptr %r0)
{
L0:
    %r1 = getelementptr i32, ptr %r0
    %r2 = add i32 0,0
    %r3 = getelementptr [1 x i32], ptr @k, i32 0, i32 %r2
    %r4 = load i32, ptr %r3
    call void @inc_impl(ptr %r1,i32 %r4)
    ret void
}
define void @inc_impl(ptr %r0,i32 %r1)
{
L0:
    %r2 = alloca i32
    store i32 %r1, ptr %r2
    %r3 = load i32, ptr %r2
    %r4 = add i32 0,0
    %r5 = icmp eq i32 %r3,%r4
    br i1 %r5, label %L1, label %L2
L1:
    %r8 = add i32 0,0
    %r9 = getelementptr i32, ptr %r0, i32 %r8
    %r10 = load i32, ptr %r9
    %r11 = add i32 0,1
    %r12 = add i32 %r10,%r11
    %r13 = add i32 0,0
    %r14 = getelementptr i32, ptr %r0, i32 %r13
    store i32 %r12, ptr %r14
    br label %L3
L2:
    %r15 = add i32 0,0
    %r16 = getelementptr i32, ptr %r0, i32 %r15
    %r17 = load i32, ptr %r16
    %r18 = add i32 0,2
    %r19 = mul i32 %r17,%r18
    %r20 = add i32 0,0
    %r21 = getelementptr i32, ptr %r0, i32 %r20
    store i32 %r19, ptr %r21
    %r22 = getelementptr i32, ptr %r0
    %r23 = load i32, ptr %r2
    %r24 = add i32 0,1
    %r25 = sub i32 %r23,%r24
    call void @inc_impl(ptr %r22,i32 %r25)
    br label %L3
L3:
    ret void
}
define void @add_impl(ptr %r0,ptr %r1,i32 %r2)
{
L0:
    %r3 = alloca i32
    store i32 %r2, ptr %r3
    %r4 = load i32, ptr %r3
    %r5 = add i32 0,0
    %r6 = icmp eq i32 %r4,%r5
    br i1 %r6, label %L1, label %L2
L1:
    %r9 = add i32 0,0
    %r10 = getelementptr i32, ptr %r0, i32 %r9
    %r11 = load i32, ptr %r10
    %r12 = add i32 0,0
    %r13 = getelementptr i32, ptr %r1, i32 %r12
    %r14 = load i32, ptr %r13
    %r15 = add i32 %r11,%r14
    %r16 = add i32 0,0
    %r17 = getelementptr i32, ptr %r0, i32 %r16
    store i32 %r15, ptr %r17
    br label %L3
L2:
    %r18 = add i32 0,0
    %r19 = getelementptr i32, ptr %r0, i32 %r18
    %r20 = load i32, ptr %r19
    %r21 = add i32 0,2
    %r22 = mul i32 %r20,%r21
    %r23 = add i32 0,0
    %r24 = getelementptr i32, ptr %r0, i32 %r23
    store i32 %r22, ptr %r24
    %r25 = getelementptr i32, ptr %r0
    %r26 = getelementptr i32, ptr %r1
    %r27 = load i32, ptr %r3
    %r28 = add i32 0,1
    %r29 = sub i32 %r27,%r28
    call void @add_impl(ptr %r25,ptr %r26,i32 %r29)
    br label %L3
L3:
    ret void
}
define void @add(ptr %r0,ptr %r1)
{
L0:
    %r2 = getelementptr i32, ptr %r0
    %r3 = getelementptr i32, ptr %r1
    %r4 = add i32 0,0
    %r5 = getelementptr [1 x i32], ptr @k, i32 0, i32 %r4
    %r6 = load i32, ptr %r5
    call void @add_impl(ptr %r2,ptr %r3,i32 %r6)
    ret void
}
define void @sub_impl(ptr %r0,ptr %r1,i32 %r2)
{
L0:
    %r3 = alloca i32
    store i32 %r2, ptr %r3
    %r4 = load i32, ptr %r3
    %r5 = add i32 0,0
    %r6 = icmp eq i32 %r4,%r5
    br i1 %r6, label %L1, label %L2
L1:
    %r9 = add i32 0,0
    %r10 = getelementptr i32, ptr %r0, i32 %r9
    %r11 = load i32, ptr %r10
    %r12 = add i32 0,0
    %r13 = getelementptr i32, ptr %r1, i32 %r12
    %r14 = load i32, ptr %r13
    %r15 = sub i32 %r11,%r14
    %r16 = add i32 0,0
    %r17 = getelementptr i32, ptr %r0, i32 %r16
    store i32 %r15, ptr %r17
    br label %L3
L2:
    %r18 = add i32 0,0
    %r19 = getelementptr i32, ptr %r0, i32 %r18
    %r20 = load i32, ptr %r19
    %r21 = add i32 0,2
    %r22 = mul i32 %r20,%r21
    %r23 = add i32 0,0
    %r24 = getelementptr i32, ptr %r0, i32 %r23
    store i32 %r22, ptr %r24
    %r25 = getelementptr i32, ptr %r0
    %r26 = getelementptr i32, ptr %r1
    %r27 = load i32, ptr %r3
    %r28 = add i32 0,1
    %r29 = sub i32 %r27,%r28
    call void @sub_impl(ptr %r25,ptr %r26,i32 %r29)
    br label %L3
L3:
    ret void
}
define void @sub(ptr %r0,ptr %r1)
{
L0:
    %r2 = getelementptr i32, ptr %r0
    %r3 = getelementptr i32, ptr %r1
    %r4 = add i32 0,0
    %r5 = getelementptr [1 x i32], ptr @k, i32 0, i32 %r4
    %r6 = load i32, ptr %r5
    call void @sub_impl(ptr %r2,ptr %r3,i32 %r6)
    ret void
}
define i32 @main()
{
L0:
    %r2 = alloca [1 x [2 x i32]]
    %r1 = alloca [1 x i32]
    %r0 = alloca [1 x i32]
    call void @llvm.memset.p0.i32(ptr %r2,i8 0,i32 8,i1 0)
    %r3 = add i32 0,1
    %r4 = sub i32 0,%r3
    %r5 = getelementptr [1 x [2 x i32]], ptr %r2, i32 0, i32 0, i32 0
    store i32 %r4, ptr %r5
    %r6 = call i32 @getint()
    %r7 = add i32 0,0
    %r8 = getelementptr [1 x i32], ptr @k, i32 0, i32 %r7
    store i32 %r6, ptr %r8
    %r9 = call i32 @getint()
    %r10 = add i32 0,0
    %r11 = getelementptr [1 x i32], ptr %r1, i32 0, i32 %r10
    store i32 %r9, ptr %r11
    %r12 = add i32 0,0
    %r13 = getelementptr [1 x [2 x i32]], ptr %r2, i32 0, i32 %r12
    %r14 = call i32 @getarray(ptr %r13)
    br label %L1
L1:
    %r15 = add i32 0,0
    %r16 = getelementptr [1 x i32], ptr %r1, i32 0, i32 %r15
    %r17 = load i32, ptr %r16
    %r18 = icmp ne i32 %r17,0
    br i1 %r18, label %L2, label %L3
L2:
    %r19 = add i32 0,0
    %r20 = add i32 0,0
    %r21 = getelementptr [1 x [2 x i32]], ptr %r2, i32 0, i32 %r19, i32 %r20
    %r22 = load i32, ptr %r21
    %r23 = add i32 0,0
    %r24 = getelementptr [1 x i32], ptr %r0, i32 0, i32 %r23
    store i32 %r22, ptr %r24
    br label %L4
L3:
    %r67 = add i32 0,10
    call void @putch(i32 %r67)
    %r68 = add i32 0,0
    ret i32 %r68
L4:
    %r25 = add i32 0,0
    %r26 = getelementptr [1 x i32], ptr %r0, i32 0, i32 %r25
    %r27 = load i32, ptr %r26
    %r28 = add i32 0,5
    %r29 = icmp slt i32 %r27,%r28
    br i1 %r29, label %L5, label %L6
L5:
    %r32 = add i32 0,0
    %r33 = getelementptr [1 x i32], ptr @i, i32 0, i32 %r32
    %r34 = load i32, ptr %r33
    call void @putint(i32 %r34)
    %r35 = add i32 0,0
    %r36 = getelementptr [1 x i32], ptr %r0, i32 0, i32 %r35
    %r37 = load i32, ptr %r36
    call void @putint(i32 %r37)
    %r38 = add i32 0,0
    %r39 = getelementptr [1 x i32], ptr %r1, i32 0, i32 %r38
    %r40 = load i32, ptr %r39
    call void @putint(i32 %r40)
    %r41 = add i32 0,0
    %r42 = add i32 0,0
    %r43 = getelementptr [1 x [2 x i32]], ptr %r2, i32 0, i32 %r41, i32 %r42
    %r44 = load i32, ptr %r43
    call void @putint(i32 %r44)
    %r45 = add i32 0,0
    %r46 = getelementptr [1 x [2 x i32]], ptr %r2, i32 0, i32 %r45
    %r47 = getelementptr i32, ptr %r1, i32 0
    call void @add(ptr %r46,ptr %r47)
    %r48 = getelementptr i32, ptr %r0, i32 0
    %r49 = getelementptr i32, ptr %r1, i32 0
    call void @add(ptr %r48,ptr %r49)
    %r50 = add i32 0,0
    %r51 = getelementptr [1 x [2 x i32]], ptr %r2, i32 0, i32 %r50
    %r52 = getelementptr i32, ptr %r1, i32 0
    call void @sub(ptr %r51,ptr %r52)
    br label %L4
L6:
    %r53 = getelementptr i32, ptr @i, i32 0
    call void @inc(ptr %r53)
    %r54 = getelementptr i32, ptr @i, i32 0
    %r55 = add i32 0,0
    %r56 = getelementptr [1 x [2 x i32]], ptr %r2, i32 0, i32 %r55
    call void @add(ptr %r54,ptr %r56)
    %r57 = add i32 0,0
    %r58 = getelementptr [1 x i32], ptr @i, i32 0, i32 %r57
    %r59 = load i32, ptr %r58
    %r60 = add i32 0,0
    %r61 = add i32 0,1
    %r62 = getelementptr [1 x [2 x i32]], ptr %r2, i32 0, i32 %r60, i32 %r61
    %r63 = load i32, ptr %r62
    %r64 = icmp eq i32 %r59,%r63
    br i1 %r64, label %L7, label %L8
L7:
    br label %L3
L8:
    br label %L1
}
