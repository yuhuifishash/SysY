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
@i = global [1x i32] zeroinitializer
@k = global [1x i32] zeroinitializer
define void @inc_impl(ptr %r0,i32 %r1)
{
L0:
    %r2 = alloca i32
    store i32 %r1, ptr %r2
    br label %L1
L1:
    %r3 = load i32, ptr %r2
    %r4 = add i32 0,0
    %r5 = icmp eq i32 %r3,%r4
    br i1 %r5, label %L2, label %L3
L2:
    %r6 = add i32 0,0
    %r7 = getelementptr i32, ptr %r0, i32 %r6
    %r8 = add i32 0,0
    %r9 = getelementptr i32, ptr %r0, i32 %r8
    %r10 = load i32, ptr %r9
    %r11 = add i32 1,0
    %r12 = add i32 %r10,%r11
    store i32 %r12, ptr %r7
    br label %L4
L3:
    %r13 = add i32 0,0
    %r14 = getelementptr i32, ptr %r0, i32 %r13
    %r15 = add i32 0,0
    %r16 = getelementptr i32, ptr %r0, i32 %r15
    %r17 = load i32, ptr %r16
    %r18 = add i32 2,0
    %r19 = mul i32 %r17,%r18
    store i32 %r19, ptr %r14
    %r20 = getelementptr i32, ptr %r0
    %r21 = load i32, ptr %r2
    %r22 = add i32 1,0
    %r23 = sub i32 %r21,%r22
    call void @inc_impl(ptr %r20,i32 %r23)
    br label %L4
L4:
    ret void
}
define void @add_impl(ptr %r0,ptr %r1,i32 %r2)
{
L0:
    %r3 = alloca i32
    store i32 %r2, ptr %r3
    br label %L1
L1:
    %r4 = load i32, ptr %r3
    %r5 = add i32 0,0
    %r6 = icmp eq i32 %r4,%r5
    br i1 %r6, label %L2, label %L3
L2:
    %r7 = add i32 0,0
    %r8 = getelementptr i32, ptr %r0, i32 %r7
    %r9 = add i32 0,0
    %r10 = getelementptr i32, ptr %r0, i32 %r9
    %r11 = load i32, ptr %r10
    %r12 = add i32 0,0
    %r13 = getelementptr i32, ptr %r1, i32 %r12
    %r14 = load i32, ptr %r13
    %r15 = add i32 %r11,%r14
    store i32 %r15, ptr %r8
    br label %L4
L3:
    %r16 = add i32 0,0
    %r17 = getelementptr i32, ptr %r0, i32 %r16
    %r18 = add i32 0,0
    %r19 = getelementptr i32, ptr %r0, i32 %r18
    %r20 = load i32, ptr %r19
    %r21 = add i32 2,0
    %r22 = mul i32 %r20,%r21
    store i32 %r22, ptr %r17
    %r23 = getelementptr i32, ptr %r0
    %r24 = getelementptr i32, ptr %r1
    %r25 = load i32, ptr %r3
    %r26 = add i32 1,0
    %r27 = sub i32 %r25,%r26
    call void @add_impl(ptr %r23,ptr %r24,i32 %r27)
    br label %L4
L4:
    ret void
}
define void @inc(ptr %r0)
{
L0:
    br label %L1
L1:
    %r1 = getelementptr i32, ptr %r0
    %r2 = add i32 0,0
    %r3 = getelementptr [1 x i32], ptr @k, i32 0, i32 %r2
    %r4 = load i32, ptr %r3
    call void @inc_impl(ptr %r1,i32 %r4)
    ret void
}
define void @sub_impl(ptr %r0,ptr %r1,i32 %r2)
{
L0:
    %r3 = alloca i32
    store i32 %r2, ptr %r3
    br label %L1
L1:
    %r4 = load i32, ptr %r3
    %r5 = add i32 0,0
    %r6 = icmp eq i32 %r4,%r5
    br i1 %r6, label %L2, label %L3
L2:
    %r7 = add i32 0,0
    %r8 = getelementptr i32, ptr %r0, i32 %r7
    %r9 = add i32 0,0
    %r10 = getelementptr i32, ptr %r0, i32 %r9
    %r11 = load i32, ptr %r10
    %r12 = add i32 0,0
    %r13 = getelementptr i32, ptr %r1, i32 %r12
    %r14 = load i32, ptr %r13
    %r15 = sub i32 %r11,%r14
    store i32 %r15, ptr %r8
    br label %L4
L3:
    %r16 = add i32 0,0
    %r17 = getelementptr i32, ptr %r0, i32 %r16
    %r18 = add i32 0,0
    %r19 = getelementptr i32, ptr %r0, i32 %r18
    %r20 = load i32, ptr %r19
    %r21 = add i32 2,0
    %r22 = mul i32 %r20,%r21
    store i32 %r22, ptr %r17
    %r23 = getelementptr i32, ptr %r0
    %r24 = getelementptr i32, ptr %r1
    %r25 = load i32, ptr %r3
    %r26 = add i32 1,0
    %r27 = sub i32 %r25,%r26
    call void @sub_impl(ptr %r23,ptr %r24,i32 %r27)
    br label %L4
L4:
    ret void
}
define void @add(ptr %r0,ptr %r1)
{
L0:
    br label %L1
L1:
    %r2 = getelementptr i32, ptr %r0
    %r3 = getelementptr i32, ptr %r1
    %r4 = add i32 0,0
    %r5 = getelementptr [1 x i32], ptr @k, i32 0, i32 %r4
    %r6 = load i32, ptr %r5
    call void @add_impl(ptr %r2,ptr %r3,i32 %r6)
    ret void
}
define i32 @main()
{
L0:
    %r2 = alloca [1 x [2 x i32]]
    %r1 = alloca [1 x i32]
    %r0 = alloca [1 x i32]
    br label %L1
L1:
    call void @llvm.memset.p0.i32(ptr %r2,i8 0,i32 8,i1 0)
    %r3 = add i32 1,0
    %r4 = sub i32 0,%r3
    %r5 = getelementptr [1 x [2 x i32]], ptr %r2, i32 0, i32 0, i32 0
    store i32 %r4, ptr %r5
    %r6 = add i32 0,0
    %r7 = getelementptr [1 x i32], ptr @k, i32 0, i32 %r6
    %r8 = call i32 @getint()
    store i32 %r8, ptr %r7
    %r9 = add i32 0,0
    %r10 = getelementptr [1 x i32], ptr %r1, i32 0, i32 %r9
    %r11 = call i32 @getint()
    store i32 %r11, ptr %r10
    %r12 = add i32 0,0
    %r13 = getelementptr [1 x [2 x i32]], ptr %r2, i32 0, i32 %r12
    %r14 = call i32 @getarray(ptr %r13)
    br label %L2
L2:
    %r15 = add i32 0,0
    %r16 = getelementptr [1 x i32], ptr %r1, i32 0, i32 %r15
    %r17 = load i32, ptr %r16
    %r18 = icmp ne i32 %r17,0
    br i1 %r18, label %L3, label %L4
L3:
    %r19 = add i32 0,0
    %r20 = getelementptr [1 x i32], ptr %r0, i32 0, i32 %r19
    %r21 = add i32 0,0
    %r22 = add i32 0,0
    %r23 = getelementptr [1 x [2 x i32]], ptr %r2, i32 0, i32 %r21, i32 %r22
    %r24 = load i32, ptr %r23
    store i32 %r24, ptr %r20
    br label %L5
L4:
    %r63 = add i32 10,0
    call void @putch(i32 %r63)
    %r64 = add i32 0,0
    ret i32 %r64
L5:
    %r25 = add i32 0,0
    %r26 = getelementptr [1 x i32], ptr %r0, i32 0, i32 %r25
    %r27 = load i32, ptr %r26
    %r28 = add i32 5,0
    %r29 = icmp slt i32 %r27,%r28
    br i1 %r29, label %L6, label %L7
L6:
    %r30 = add i32 0,0
    %r31 = getelementptr [1 x i32], ptr @i, i32 0, i32 %r30
    %r32 = load i32, ptr %r31
    call void @putint(i32 %r32)
    %r33 = add i32 0,0
    %r34 = getelementptr [1 x i32], ptr %r0, i32 0, i32 %r33
    %r35 = load i32, ptr %r34
    call void @putint(i32 %r35)
    %r36 = add i32 0,0
    %r37 = getelementptr [1 x i32], ptr %r1, i32 0, i32 %r36
    %r38 = load i32, ptr %r37
    call void @putint(i32 %r38)
    %r39 = add i32 0,0
    %r40 = add i32 0,0
    %r41 = getelementptr [1 x [2 x i32]], ptr %r2, i32 0, i32 %r39, i32 %r40
    %r42 = load i32, ptr %r41
    call void @putint(i32 %r42)
    %r43 = add i32 0,0
    %r44 = getelementptr [1 x [2 x i32]], ptr %r2, i32 0, i32 %r43
    %r45 = getelementptr [1 x i32], ptr %r1, i32 0
    call void @add(ptr %r44,ptr %r45)
    %r46 = getelementptr [1 x i32], ptr %r0, i32 0
    %r47 = getelementptr [1 x i32], ptr %r1, i32 0
    call void @add(ptr %r46,ptr %r47)
    %r48 = add i32 0,0
    %r49 = getelementptr [1 x [2 x i32]], ptr %r2, i32 0, i32 %r48
    %r50 = getelementptr [1 x i32], ptr %r1, i32 0
    call void @sub(ptr %r49,ptr %r50)
    br label %L5
L7:
    %r51 = getelementptr [1 x i32], ptr @i, i32 0
    call void @inc(ptr %r51)
    %r52 = getelementptr [1 x i32], ptr @i, i32 0
    %r53 = add i32 0,0
    %r54 = getelementptr [1 x [2 x i32]], ptr %r2, i32 0, i32 %r53
    call void @add(ptr %r52,ptr %r54)
    %r55 = add i32 0,0
    %r56 = getelementptr [1 x i32], ptr @i, i32 0, i32 %r55
    %r57 = load i32, ptr %r56
    %r58 = add i32 0,0
    %r59 = add i32 1,0
    %r60 = getelementptr [1 x [2 x i32]], ptr %r2, i32 0, i32 %r58, i32 %r59
    %r61 = load i32, ptr %r60
    %r62 = icmp eq i32 %r57,%r61
    br i1 %r62, label %L8, label %L9
L8:
    br label %L4
L9:
    br label %L2
}
define void @sub(ptr %r0,ptr %r1)
{
L0:
    br label %L1
L1:
    %r2 = getelementptr i32, ptr %r0
    %r3 = getelementptr i32, ptr %r1
    %r4 = add i32 0,0
    %r5 = getelementptr [1 x i32], ptr @k, i32 0, i32 %r4
    %r6 = load i32, ptr %r5
    call void @sub_impl(ptr %r2,ptr %r3,i32 %r6)
    ret void
}
