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
@maxn = global i32 100005
@cnt = global [400020x i32] zeroinitializer
@x = global [100005x i32] zeroinitializer
@a = global [100005x i32] zeroinitializer
@b = global [100005x i32] zeroinitializer
@c = global [100005x i32] zeroinitializer
define i32 @quick_read()
{
L0:
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = call i32 @getch()
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    br label %L2
L2:
    %r6 = load i32, ptr %r0
    %r7 = add i32 48,0
    %r8 = icmp slt i32 %r6,%r7
    br i1 %r8, label %L3, label %L5
L3:
    %r12 = load i32, ptr %r0
    %r13 = add i32 45,0
    %r14 = icmp eq i32 %r12,%r13
    br i1 %r14, label %L6, label %L7
L4:
    br label %L8
L5:
    %r9 = load i32, ptr %r0
    %r10 = add i32 57,0
    %r11 = icmp sgt i32 %r9,%r10
    br i1 %r11, label %L3, label %L4
L6:
    %r15 = add i32 1,0
    store i32 %r15, ptr %r4
    br label %L7
L7:
    %r16 = call i32 @getch()
    store i32 %r16, ptr %r0
    br label %L2
L8:
    %r17 = load i32, ptr %r0
    %r18 = add i32 48,0
    %r19 = icmp sge i32 %r17,%r18
    br i1 %r19, label %L11, label %L10
L9:
    %r23 = load i32, ptr %r2
    %r24 = add i32 10,0
    %r25 = mul i32 %r23,%r24
    %r26 = load i32, ptr %r0
    %r27 = add i32 %r25,%r26
    %r28 = add i32 48,0
    %r29 = sub i32 %r27,%r28
    store i32 %r29, ptr %r2
    %r30 = call i32 @getch()
    store i32 %r30, ptr %r0
    br label %L8
L10:
    %r31 = load i32, ptr %r4
    %r32 = icmp ne i32 %r31,0
    br i1 %r32, label %L12, label %L13
L11:
    %r20 = load i32, ptr %r0
    %r21 = add i32 57,0
    %r22 = icmp sle i32 %r20,%r21
    br i1 %r22, label %L9, label %L10
L12:
    %r33 = load i32, ptr %r2
    %r34 = sub i32 0,%r33
    ret i32 %r34
    br label %L14
L13:
    %r35 = load i32, ptr %r2
    ret i32 %r35
    br label %L14
L14:
    ret i32 0
}
define void @sortA(ptr %r0)
{
L0:
    %r20 = alloca i32
    %r3 = alloca i32
    %r1 = alloca i32
    br label %L1
L1:
    %r2 = add i32 0,0
    store i32 %r2, ptr %r1
    store i32 0, ptr %r3
    br label %L2
L2:
    %r4 = load i32, ptr %r1
    %r5 = load i32, ptr @n
    %r6 = icmp slt i32 %r4,%r5
    br i1 %r6, label %L3, label %L4
L3:
    %r7 = load i32, ptr %r1
    %r8 = add i32 1,0
    %r9 = add i32 %r7,%r8
    store i32 %r9, ptr %r3
    br label %L5
L4:
    ret void
L5:
    %r10 = load i32, ptr %r3
    %r11 = load i32, ptr @n
    %r12 = icmp slt i32 %r10,%r11
    br i1 %r12, label %L6, label %L7
L6:
    %r13 = load i32, ptr %r1
    %r14 = getelementptr i32, ptr %r0, i32 %r13
    %r15 = load i32, ptr %r14
    %r16 = load i32, ptr %r3
    %r17 = getelementptr i32, ptr %r0, i32 %r16
    %r18 = load i32, ptr %r17
    %r19 = icmp sgt i32 %r15,%r18
    br i1 %r19, label %L8, label %L9
L7:
    %r35 = load i32, ptr %r1
    %r36 = add i32 1,0
    %r37 = add i32 %r35,%r36
    store i32 %r37, ptr %r1
    br label %L2
L8:
    %r21 = load i32, ptr %r1
    %r22 = getelementptr i32, ptr %r0, i32 %r21
    %r23 = load i32, ptr %r22
    store i32 %r23, ptr %r20
    %r24 = load i32, ptr %r1
    %r25 = getelementptr i32, ptr %r0, i32 %r24
    %r26 = load i32, ptr %r3
    %r27 = getelementptr i32, ptr %r0, i32 %r26
    %r28 = load i32, ptr %r27
    store i32 %r28, ptr %r25
    %r29 = load i32, ptr %r3
    %r30 = getelementptr i32, ptr %r0, i32 %r29
    %r31 = load i32, ptr %r20
    store i32 %r31, ptr %r30
    br label %L9
L9:
    %r32 = load i32, ptr %r3
    %r33 = add i32 1,0
    %r34 = add i32 %r32,%r33
    store i32 %r34, ptr %r3
    br label %L5
}
define void @sortB(ptr %r0)
{
L0:
    %r37 = alloca i32
    %r32 = alloca i32
    %r3 = alloca i32
    %r1 = alloca i32
    br label %L1
L1:
    %r2 = add i32 0,0
    store i32 %r2, ptr %r1
    %r4 = add i32 100,0
    %r5 = sub i32 0,%r4
    store i32 %r5, ptr %r3
    br label %L2
L2:
    %r6 = load i32, ptr %r1
    %r7 = load i32, ptr @n
    %r8 = icmp slt i32 %r6,%r7
    br i1 %r8, label %L3, label %L4
L3:
    %r9 = load i32, ptr %r1
    %r10 = getelementptr i32, ptr %r0, i32 %r9
    %r11 = load i32, ptr %r10
    %r12 = getelementptr [400020 x i32], ptr @cnt, i32 0, i32 %r11
    %r13 = load i32, ptr %r1
    %r14 = getelementptr i32, ptr %r0, i32 %r13
    %r15 = load i32, ptr %r14
    %r16 = getelementptr [400020 x i32], ptr @cnt, i32 0, i32 %r15
    %r17 = load i32, ptr %r16
    %r18 = add i32 1,0
    %r19 = add i32 %r17,%r18
    store i32 %r19, ptr %r12
    %r20 = load i32, ptr %r1
    %r21 = getelementptr i32, ptr %r0, i32 %r20
    %r22 = load i32, ptr %r21
    %r23 = load i32, ptr %r3
    %r24 = icmp sgt i32 %r22,%r23
    br i1 %r24, label %L5, label %L6
L4:
    %r31 = add i32 0,0
    store i32 %r31, ptr %r1
    %r33 = add i32 0,0
    store i32 %r33, ptr %r32
    br label %L7
L5:
    %r25 = load i32, ptr %r1
    %r26 = getelementptr i32, ptr %r0, i32 %r25
    %r27 = load i32, ptr %r26
    store i32 %r27, ptr %r3
    br label %L6
L6:
    %r28 = load i32, ptr %r1
    %r29 = add i32 1,0
    %r30 = add i32 %r28,%r29
    store i32 %r30, ptr %r1
    br label %L2
L7:
    %r34 = load i32, ptr %r1
    %r35 = load i32, ptr %r3
    %r36 = icmp sle i32 %r34,%r35
    br i1 %r36, label %L8, label %L9
L8:
    %r38 = load i32, ptr %r1
    %r39 = getelementptr [400020 x i32], ptr @cnt, i32 0, i32 %r38
    %r40 = load i32, ptr %r39
    store i32 %r40, ptr %r37
    br label %L10
L9:
    ret void
L10:
    %r41 = load i32, ptr %r37
    %r42 = icmp ne i32 %r41,0
    br i1 %r42, label %L11, label %L12
L11:
    %r43 = load i32, ptr %r32
    %r44 = getelementptr i32, ptr %r0, i32 %r43
    %r45 = load i32, ptr %r1
    store i32 %r45, ptr %r44
    %r46 = load i32, ptr %r32
    %r47 = add i32 1,0
    %r48 = add i32 %r46,%r47
    store i32 %r48, ptr %r32
    %r49 = load i32, ptr %r37
    %r50 = add i32 1,0
    %r51 = sub i32 %r49,%r50
    store i32 %r51, ptr %r37
    br label %L10
L12:
    %r52 = load i32, ptr %r1
    %r53 = add i32 1,0
    %r54 = add i32 %r52,%r53
    store i32 %r54, ptr %r1
    br label %L7
}
define void @sortC(ptr %r0)
{
L0:
    %r26 = alloca i32
    %r8 = alloca i32
    %r6 = alloca i32
    %r1 = alloca i32
    br label %L1
L1:
    %r2 = add i32 0,0
    store i32 %r2, ptr %r1
    br label %L2
L2:
    %r3 = load i32, ptr %r1
    %r4 = load i32, ptr @n
    %r5 = icmp slt i32 %r3,%r4
    br i1 %r5, label %L3, label %L4
L3:
    %r7 = load i32, ptr %r1
    store i32 %r7, ptr %r6
    %r9 = load i32, ptr %r1
    %r10 = add i32 1,0
    %r11 = add i32 %r9,%r10
    store i32 %r11, ptr %r8
    br label %L5
L4:
    ret void
L5:
    %r12 = load i32, ptr %r8
    %r13 = load i32, ptr @n
    %r14 = icmp slt i32 %r12,%r13
    br i1 %r14, label %L6, label %L7
L6:
    %r15 = load i32, ptr %r8
    %r16 = getelementptr i32, ptr %r0, i32 %r15
    %r17 = load i32, ptr %r16
    %r18 = load i32, ptr %r6
    %r19 = getelementptr i32, ptr %r0, i32 %r18
    %r20 = load i32, ptr %r19
    %r21 = icmp slt i32 %r17,%r20
    br i1 %r21, label %L8, label %L9
L7:
    %r27 = load i32, ptr %r1
    %r28 = getelementptr i32, ptr %r0, i32 %r27
    %r29 = load i32, ptr %r28
    store i32 %r29, ptr %r26
    %r30 = load i32, ptr %r1
    %r31 = getelementptr i32, ptr %r0, i32 %r30
    %r32 = load i32, ptr %r6
    %r33 = getelementptr i32, ptr %r0, i32 %r32
    %r34 = load i32, ptr %r33
    store i32 %r34, ptr %r31
    %r35 = load i32, ptr %r6
    %r36 = getelementptr i32, ptr %r0, i32 %r35
    %r37 = load i32, ptr %r26
    store i32 %r37, ptr %r36
    %r38 = load i32, ptr %r1
    %r39 = add i32 1,0
    %r40 = add i32 %r38,%r39
    store i32 %r40, ptr %r1
    br label %L2
L8:
    %r22 = load i32, ptr %r8
    store i32 %r22, ptr %r6
    br label %L9
L9:
    %r23 = load i32, ptr %r8
    %r24 = add i32 1,0
    %r25 = add i32 %r23,%r24
    store i32 %r25, ptr %r8
    br label %L5
}
define i32 @main()
{
L0:
    %r1 = alloca i32
    br label %L1
L1:
    %r0 = call i32 @quick_read()
    store i32 %r0, ptr @n
    %r2 = add i32 0,0
    store i32 %r2, ptr %r1
    br label %L2
L2:
    %r3 = load i32, ptr %r1
    %r4 = load i32, ptr @n
    %r5 = icmp ne i32 %r3,%r4
    br i1 %r5, label %L3, label %L4
L3:
    %r6 = load i32, ptr %r1
    %r7 = getelementptr [100005 x i32], ptr @a, i32 0, i32 %r6
    %r8 = call i32 @quick_read()
    store i32 %r8, ptr %r7
    %r9 = load i32, ptr %r1
    %r10 = getelementptr [100005 x i32], ptr @b, i32 0, i32 %r9
    %r11 = load i32, ptr %r1
    %r12 = getelementptr [100005 x i32], ptr @a, i32 0, i32 %r11
    %r13 = load i32, ptr %r12
    store i32 %r13, ptr %r10
    %r14 = load i32, ptr %r1
    %r15 = getelementptr [100005 x i32], ptr @c, i32 0, i32 %r14
    %r16 = load i32, ptr %r1
    %r17 = getelementptr [100005 x i32], ptr @b, i32 0, i32 %r16
    %r18 = load i32, ptr %r17
    store i32 %r18, ptr %r15
    %r19 = load i32, ptr %r1
    %r20 = add i32 1,0
    %r21 = add i32 %r19,%r20
    store i32 %r21, ptr %r1
    br label %L2
L4:
    %r22 = getelementptr [100005 x i32], ptr @a, i32 0
    call void @sortA(ptr %r22)
    %r23 = getelementptr [100005 x i32], ptr @b, i32 0
    call void @sortB(ptr %r23)
    %r24 = getelementptr [100005 x i32], ptr @c, i32 0
    call void @sortC(ptr %r24)
    %r25 = add i32 0,0
    store i32 %r25, ptr %r1
    br label %L5
L5:
    %r26 = load i32, ptr @n
    %r27 = load i32, ptr %r1
    %r28 = sub i32 %r26,%r27
    %r29 = icmp ne i32 %r28,0
    br i1 %r29, label %L6, label %L7
L6:
    %r30 = load i32, ptr %r1
    %r31 = getelementptr [100005 x i32], ptr @b, i32 0, i32 %r30
    %r32 = load i32, ptr %r1
    %r33 = getelementptr [100005 x i32], ptr @b, i32 0, i32 %r32
    %r34 = load i32, ptr %r33
    %r35 = load i32, ptr %r1
    %r36 = getelementptr [100005 x i32], ptr @a, i32 0, i32 %r35
    %r37 = load i32, ptr %r36
    %r38 = sub i32 %r34,%r37
    store i32 %r38, ptr %r31
    %r39 = load i32, ptr %r1
    %r40 = getelementptr [100005 x i32], ptr @c, i32 0, i32 %r39
    %r41 = load i32, ptr %r1
    %r42 = getelementptr [100005 x i32], ptr @c, i32 0, i32 %r41
    %r43 = load i32, ptr %r42
    %r44 = load i32, ptr %r1
    %r45 = getelementptr [100005 x i32], ptr @b, i32 0, i32 %r44
    %r46 = load i32, ptr %r45
    %r47 = sub i32 %r43,%r46
    %r48 = load i32, ptr %r1
    %r49 = getelementptr [100005 x i32], ptr @a, i32 0, i32 %r48
    %r50 = load i32, ptr %r49
    %r51 = sub i32 %r47,%r50
    store i32 %r51, ptr %r40
    %r52 = load i32, ptr %r1
    %r53 = add i32 1,0
    %r54 = add i32 %r52,%r53
    store i32 %r54, ptr %r1
    br label %L5
L7:
    %r55 = add i32 0,0
    store i32 %r55, ptr %r1
    br label %L8
L8:
    %r56 = load i32, ptr %r1
    %r57 = load i32, ptr @n
    %r58 = sub i32 %r56,%r57
    %r59 = icmp ne i32 %r58,0
    br i1 %r59, label %L9, label %L10
L9:
    %r60 = load i32, ptr %r1
    %r61 = getelementptr [100005 x i32], ptr @b, i32 0, i32 %r60
    %r62 = load i32, ptr %r61
    %r63 = icmp ne i32 %r62,0
    br i1 %r63, label %L11, label %L12
L10:
    %r73 = add i32 123,0
    %r74 = sub i32 0,%r73
    ret i32 %r74
L11:
    %r64 = add i32 1,0
    ret i32 %r64
    br label %L12
L12:
    %r65 = load i32, ptr %r1
    %r66 = getelementptr [100005 x i32], ptr @c, i32 0, i32 %r65
    %r67 = load i32, ptr %r66
    %r68 = icmp ne i32 %r67,0
    br i1 %r68, label %L13, label %L14
L13:
    %r69 = add i32 2,0
    ret i32 %r69
    br label %L14
L14:
    %r70 = load i32, ptr %r1
    %r71 = add i32 1,0
    %r72 = add i32 %r70,%r71
    store i32 %r72, ptr %r1
    br label %L8
}
