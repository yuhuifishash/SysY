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
@maxn = global i32 10005
@n = global i32 zeroinitializer
@m = global i32 zeroinitializer
@f = global [10005x [20x i32]] zeroinitializer
@dep = global [10005x i32] zeroinitializer
@to = global [10005x i32] zeroinitializer
@next = global [10005x i32] zeroinitializer
@head = global [10005x i32] zeroinitializer
@cnt = global i32 0
define i32 @main()
{
L0:
    %r24 = alloca i32
    %r22 = alloca i32
    %r11 = alloca i32
    %r9 = alloca i32
    %r2 = alloca i32
    %r0 = call i32 @quick_read()
    store i32 %r0, ptr @n
    %r1 = call i32 @quick_read()
    store i32 %r1, ptr @m
    call void @init()
    %r3 = add i32 0,1
    store i32 %r3, ptr %r2
    br label %L1
L1:
    %r4 = load i32, ptr %r2
    %r5 = load i32, ptr @n
    %r6 = icmp ne i32 %r4,%r5
    br i1 %r6, label %L2, label %L3
L2:
    %r10 = call i32 @quick_read()
    store i32 %r10, ptr %r9
    %r12 = call i32 @quick_read()
    store i32 %r12, ptr %r11
    %r13 = load i32, ptr %r9
    %r14 = load i32, ptr %r11
    call void @add_edge(i32 %r13,i32 %r14)
    %r15 = load i32, ptr %r2
    %r16 = add i32 0,1
    %r17 = add i32 %r15,%r16
    store i32 %r17, ptr %r2
    br label %L1
L3:
    %r18 = add i32 0,1
    %r19 = add i32 0,1
    call void @tree(i32 %r18,i32 %r19)
    br label %L4
L4:
    %r20 = load i32, ptr @m
    %r21 = icmp ne i32 %r20,0
    br i1 %r21, label %L5, label %L6
L5:
    %r23 = call i32 @quick_read()
    store i32 %r23, ptr %r22
    %r25 = call i32 @quick_read()
    store i32 %r25, ptr %r24
    %r26 = load i32, ptr %r22
    %r27 = load i32, ptr %r24
    %r28 = call i32 @LCA(i32 %r26,i32 %r27)
    call void @putint(i32 %r28)
    %r29 = add i32 0,10
    call void @putch(i32 %r29)
    %r30 = load i32, ptr @m
    %r31 = add i32 0,1
    %r32 = sub i32 %r30,%r31
    store i32 %r32, ptr @m
    br label %L4
L6:
    %r33 = add i32 0,0
    ret i32 %r33
}
define i32 @quick_read()
{
L0:
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    %r1 = call i32 @getch()
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    br label %L1
L1:
    %r6 = load i32, ptr %r0
    %r7 = add i32 0,48
    %r8 = icmp slt i32 %r6,%r7
    br i1 %r8, label %L2, label %L4
L2:
    %r19 = load i32, ptr %r0
    %r20 = add i32 0,45
    %r21 = icmp eq i32 %r19,%r20
    br i1 %r21, label %L6, label %L7
L3:
    br label %L8
L4:
    %r11 = load i32, ptr %r0
    %r12 = add i32 0,57
    %r13 = icmp sgt i32 %r11,%r12
    br i1 %r13, label %L2, label %L3
L6:
    %r24 = add i32 0,1
    store i32 %r24, ptr %r4
    br label %L7
L7:
    %r25 = call i32 @getch()
    store i32 %r25, ptr %r0
    br label %L1
L8:
    %r26 = load i32, ptr %r0
    %r27 = add i32 0,48
    %r28 = icmp sge i32 %r26,%r27
    br i1 %r28, label %L11, label %L10
L9:
    %r39 = load i32, ptr %r2
    %r40 = add i32 0,10
    %r41 = mul i32 %r39,%r40
    %r42 = load i32, ptr %r0
    %r43 = add i32 %r41,%r42
    %r44 = add i32 0,48
    %r45 = sub i32 %r43,%r44
    store i32 %r45, ptr %r2
    %r46 = call i32 @getch()
    store i32 %r46, ptr %r0
    br label %L8
L10:
    %r47 = load i32, ptr %r4
    %r48 = icmp ne i32 %r47,0
    br i1 %r48, label %L13, label %L14
L11:
    %r31 = load i32, ptr %r0
    %r32 = add i32 0,57
    %r33 = icmp sle i32 %r31,%r32
    br i1 %r33, label %L9, label %L10
L13:
    %r49 = load i32, ptr %r2
    %r50 = sub i32 0,%r49
    ret i32 %r50
L14:
    %r51 = load i32, ptr %r2
    ret i32 %r51
}
define void @add_edge(i32 %r0,i32 %r1)
{
L0:
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    %r4 = load i32, ptr %r3
    %r5 = load i32, ptr @cnt
    %r6 = getelementptr [10005 x i32], ptr @to, i32 0, i32 %r5
    store i32 %r4, ptr %r6
    %r7 = load i32, ptr %r2
    %r8 = getelementptr [10005 x i32], ptr @head, i32 0, i32 %r7
    %r9 = load i32, ptr %r8
    %r10 = load i32, ptr @cnt
    %r11 = getelementptr [10005 x i32], ptr @next, i32 0, i32 %r10
    store i32 %r9, ptr %r11
    %r12 = load i32, ptr @cnt
    %r13 = load i32, ptr %r2
    %r14 = getelementptr [10005 x i32], ptr @head, i32 0, i32 %r13
    store i32 %r12, ptr %r14
    %r15 = load i32, ptr @cnt
    %r16 = add i32 0,1
    %r17 = add i32 %r15,%r16
    store i32 %r17, ptr @cnt
    %r18 = load i32, ptr %r2
    %r19 = load i32, ptr %r3
    %r20 = add i32 0,0
    %r21 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r19, i32 %r20
    store i32 %r18, ptr %r21
    ret void
}
define void @init()
{
L0:
    %r3 = alloca i32
    %r0 = add i32 0,1061109567
    %r1 = add i32 0,0
    %r2 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r1
    store i32 %r0, ptr %r2
    %r4 = add i32 0,1
    store i32 %r4, ptr %r3
    br label %L1
L1:
    %r5 = load i32, ptr %r3
    %r6 = load i32, ptr @n
    %r7 = icmp sle i32 %r5,%r6
    br i1 %r7, label %L2, label %L3
L2:
    %r10 = add i32 0,1
    %r11 = sub i32 0,%r10
    %r12 = load i32, ptr %r3
    %r13 = getelementptr [10005 x i32], ptr @head, i32 0, i32 %r12
    store i32 %r11, ptr %r13
    %r14 = load i32, ptr %r3
    %r15 = add i32 0,1
    %r16 = add i32 %r14,%r15
    store i32 %r16, ptr %r3
    br label %L1
L3:
    ret void
}
define void @tree(i32 %r0,i32 %r1)
{
L0:
    %r38 = alloca i32
    %r7 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    %r4 = load i32, ptr %r3
    %r5 = load i32, ptr %r2
    %r6 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r5
    store i32 %r4, ptr %r6
    %r8 = add i32 0,0
    store i32 %r8, ptr %r7
    br label %L1
L1:
    %r9 = load i32, ptr %r2
    %r10 = load i32, ptr %r7
    %r11 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r9, i32 %r10
    %r12 = load i32, ptr %r11
    %r13 = icmp ne i32 %r12,0
    br i1 %r13, label %L2, label %L3
L2:
    %r14 = load i32, ptr %r2
    %r15 = load i32, ptr %r7
    %r16 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r14, i32 %r15
    %r17 = load i32, ptr %r16
    %r18 = load i32, ptr %r7
    %r19 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r17, i32 %r18
    %r20 = load i32, ptr %r19
    %r21 = load i32, ptr %r2
    %r22 = load i32, ptr %r7
    %r23 = add i32 0,1
    %r24 = add i32 %r22,%r23
    %r25 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r21, i32 %r24
    store i32 %r20, ptr %r25
    %r26 = load i32, ptr %r7
    %r27 = add i32 0,1
    %r28 = add i32 %r26,%r27
    store i32 %r28, ptr %r7
    br label %L1
L3:
    %r29 = load i32, ptr %r2
    %r30 = getelementptr [10005 x i32], ptr @head, i32 0, i32 %r29
    %r31 = load i32, ptr %r30
    store i32 %r31, ptr %r7
    br label %L4
L4:
    %r32 = load i32, ptr %r7
    %r33 = add i32 0,1
    %r34 = sub i32 0,%r33
    %r35 = icmp ne i32 %r32,%r34
    br i1 %r35, label %L5, label %L6
L5:
    %r39 = load i32, ptr %r7
    %r40 = getelementptr [10005 x i32], ptr @to, i32 0, i32 %r39
    %r41 = load i32, ptr %r40
    store i32 %r41, ptr %r38
    %r42 = load i32, ptr %r38
    %r43 = load i32, ptr %r3
    %r44 = add i32 0,1
    %r45 = add i32 %r43,%r44
    call void @tree(i32 %r42,i32 %r45)
    %r46 = load i32, ptr %r7
    %r47 = getelementptr [10005 x i32], ptr @next, i32 0, i32 %r46
    %r48 = load i32, ptr %r47
    store i32 %r48, ptr %r7
    br label %L4
L6:
    ret void
}
define i32 @LCA(i32 %r0,i32 %r1)
{
L0:
    %r17 = alloca i32
    %r13 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    %r4 = load i32, ptr %r2
    %r5 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r4
    %r6 = load i32, ptr %r5
    %r7 = load i32, ptr %r3
    %r8 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r7
    %r9 = load i32, ptr %r8
    %r10 = icmp slt i32 %r6,%r9
    br i1 %r10, label %L1, label %L2
L1:
    %r14 = load i32, ptr %r2
    store i32 %r14, ptr %r13
    %r15 = load i32, ptr %r3
    store i32 %r15, ptr %r2
    %r16 = load i32, ptr %r13
    store i32 %r16, ptr %r3
    br label %L2
L2:
    %r18 = add i32 0,19
    store i32 %r18, ptr %r17
    br label %L3
L3:
    %r19 = load i32, ptr %r2
    %r20 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r19
    %r21 = load i32, ptr %r20
    %r22 = load i32, ptr %r3
    %r23 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r22
    %r24 = load i32, ptr %r23
    %r25 = icmp sgt i32 %r21,%r24
    br i1 %r25, label %L4, label %L5
L4:
    %r28 = load i32, ptr %r2
    %r29 = load i32, ptr %r17
    %r30 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r28, i32 %r29
    %r31 = load i32, ptr %r30
    %r32 = icmp ne i32 %r31,0
    br i1 %r32, label %L8, label %L7
L5:
    %r55 = load i32, ptr %r2
    %r56 = load i32, ptr %r3
    %r57 = icmp eq i32 %r55,%r56
    br i1 %r57, label %L10, label %L11
L6:
    %r48 = load i32, ptr %r2
    %r49 = load i32, ptr %r17
    %r50 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r48, i32 %r49
    %r51 = load i32, ptr %r50
    store i32 %r51, ptr %r2
    br label %L7
L7:
    %r52 = load i32, ptr %r17
    %r53 = add i32 0,1
    %r54 = sub i32 %r52,%r53
    store i32 %r54, ptr %r17
    br label %L3
L8:
    %r33 = load i32, ptr %r2
    %r34 = load i32, ptr %r17
    %r35 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r33, i32 %r34
    %r36 = load i32, ptr %r35
    %r37 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r36
    %r38 = load i32, ptr %r37
    %r39 = load i32, ptr %r3
    %r40 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r39
    %r41 = load i32, ptr %r40
    %r42 = icmp sge i32 %r38,%r41
    br i1 %r42, label %L6, label %L7
L10:
    %r60 = load i32, ptr %r2
    ret i32 %r60
L11:
    %r61 = add i32 0,19
    store i32 %r61, ptr %r17
    br label %L12
L12:
    %r62 = load i32, ptr %r17
    %r63 = add i32 0,0
    %r64 = icmp sge i32 %r62,%r63
    br i1 %r64, label %L13, label %L14
L13:
    %r67 = load i32, ptr %r2
    %r68 = load i32, ptr %r17
    %r69 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r67, i32 %r68
    %r70 = load i32, ptr %r69
    %r71 = load i32, ptr %r3
    %r72 = load i32, ptr %r17
    %r73 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r71, i32 %r72
    %r74 = load i32, ptr %r73
    %r75 = icmp ne i32 %r70,%r74
    br i1 %r75, label %L15, label %L16
L14:
    %r89 = load i32, ptr %r2
    %r90 = add i32 0,0
    %r91 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r89, i32 %r90
    %r92 = load i32, ptr %r91
    ret i32 %r92
L15:
    %r78 = load i32, ptr %r2
    %r79 = load i32, ptr %r17
    %r80 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r78, i32 %r79
    %r81 = load i32, ptr %r80
    store i32 %r81, ptr %r2
    %r82 = load i32, ptr %r3
    %r83 = load i32, ptr %r17
    %r84 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r82, i32 %r83
    %r85 = load i32, ptr %r84
    store i32 %r85, ptr %r3
    br label %L16
L16:
    %r86 = load i32, ptr %r17
    %r87 = add i32 0,1
    %r88 = sub i32 %r86,%r87
    store i32 %r88, ptr %r17
    br label %L12
}
