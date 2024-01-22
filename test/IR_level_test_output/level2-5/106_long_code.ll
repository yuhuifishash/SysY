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
define i32 @QuickSort(ptr %r0,i32 %r1,i32 %r2)
{
L0:
    %r93 = alloca i32
    %r16 = alloca i32
    %r13 = alloca i32
    %r10 = alloca i32
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    %r4 = alloca i32
    store i32 %r2, ptr %r4
    %r5 = load i32, ptr %r3
    %r6 = load i32, ptr %r4
    %r7 = icmp slt i32 %r5,%r6
    br i1 %r7, label %L1, label %L2
L1:
    %r11 = add i32 0,0
    store i32 %r11, ptr %r10
    %r12 = load i32, ptr %r3
    store i32 %r12, ptr %r10
    %r14 = add i32 0,0
    store i32 %r14, ptr %r13
    %r15 = load i32, ptr %r4
    store i32 %r15, ptr %r13
    %r17 = add i32 0,0
    store i32 %r17, ptr %r16
    %r18 = load i32, ptr %r3
    %r19 = getelementptr i32, ptr %r0, i32 %r18
    %r20 = load i32, ptr %r19
    store i32 %r20, ptr %r16
    br label %L3
L2:
    %r109 = add i32 0,0
    ret i32 %r109
L3:
    %r21 = load i32, ptr %r10
    %r22 = load i32, ptr %r13
    %r23 = icmp slt i32 %r21,%r22
    br i1 %r23, label %L4, label %L5
L4:
    br label %L6
L5:
    %r90 = load i32, ptr %r16
    %r91 = load i32, ptr %r10
    %r92 = getelementptr i32, ptr %r0, i32 %r91
    store i32 %r90, ptr %r92
    %r94 = add i32 0,0
    store i32 %r94, ptr %r93
    %r95 = load i32, ptr %r10
    %r96 = add i32 0,1
    %r97 = sub i32 %r95,%r96
    store i32 %r97, ptr %r93
    %r98 = getelementptr i32, ptr %r0
    %r99 = load i32, ptr %r3
    %r100 = load i32, ptr %r93
    %r101 = call i32 @QuickSort(ptr %r98,i32 %r99,i32 %r100)
    store i32 %r101, ptr %r93
    %r102 = load i32, ptr %r10
    %r103 = add i32 0,1
    %r104 = add i32 %r102,%r103
    store i32 %r104, ptr %r93
    %r105 = getelementptr i32, ptr %r0
    %r106 = load i32, ptr %r93
    %r107 = load i32, ptr %r4
    %r108 = call i32 @QuickSort(ptr %r105,i32 %r106,i32 %r107)
    store i32 %r108, ptr %r93
    br label %L2
L6:
    %r26 = load i32, ptr %r10
    %r27 = load i32, ptr %r13
    %r28 = icmp slt i32 %r26,%r27
    br i1 %r28, label %L9, label %L8
L7:
    %r43 = load i32, ptr %r13
    %r44 = add i32 0,1
    %r45 = sub i32 %r43,%r44
    store i32 %r45, ptr %r13
    br label %L6
L8:
    %r46 = load i32, ptr %r10
    %r47 = load i32, ptr %r13
    %r48 = icmp slt i32 %r46,%r47
    br i1 %r48, label %L11, label %L12
L9:
    %r31 = load i32, ptr %r13
    %r32 = getelementptr i32, ptr %r0, i32 %r31
    %r33 = load i32, ptr %r32
    %r34 = load i32, ptr %r16
    %r35 = add i32 0,1
    %r36 = sub i32 %r34,%r35
    %r37 = icmp sgt i32 %r33,%r36
    br i1 %r37, label %L7, label %L8
L11:
    %r51 = load i32, ptr %r13
    %r52 = getelementptr i32, ptr %r0, i32 %r51
    %r53 = load i32, ptr %r52
    %r54 = load i32, ptr %r10
    %r55 = getelementptr i32, ptr %r0, i32 %r54
    store i32 %r53, ptr %r55
    %r56 = load i32, ptr %r10
    %r57 = add i32 0,1
    %r58 = add i32 %r56,%r57
    store i32 %r58, ptr %r10
    br label %L12
L12:
    br label %L13
L13:
    %r59 = load i32, ptr %r10
    %r60 = load i32, ptr %r13
    %r61 = icmp slt i32 %r59,%r60
    br i1 %r61, label %L16, label %L15
L14:
    %r74 = load i32, ptr %r10
    %r75 = add i32 0,1
    %r76 = add i32 %r74,%r75
    store i32 %r76, ptr %r10
    br label %L13
L15:
    %r77 = load i32, ptr %r10
    %r78 = load i32, ptr %r13
    %r79 = icmp slt i32 %r77,%r78
    br i1 %r79, label %L18, label %L19
L16:
    %r64 = load i32, ptr %r10
    %r65 = getelementptr i32, ptr %r0, i32 %r64
    %r66 = load i32, ptr %r65
    %r67 = load i32, ptr %r16
    %r68 = icmp slt i32 %r66,%r67
    br i1 %r68, label %L14, label %L15
L18:
    %r82 = load i32, ptr %r10
    %r83 = getelementptr i32, ptr %r0, i32 %r82
    %r84 = load i32, ptr %r83
    %r85 = load i32, ptr %r13
    %r86 = getelementptr i32, ptr %r0, i32 %r85
    store i32 %r84, ptr %r86
    %r87 = load i32, ptr %r13
    %r88 = add i32 0,1
    %r89 = sub i32 %r87,%r88
    store i32 %r89, ptr %r13
    br label %L19
L19:
    br label %L3
}
define i32 @insertsort(ptr %r0)
{
L0:
    %r14 = alloca i32
    %r9 = alloca i32
    %r1 = alloca i32
    %r2 = add i32 0,0
    store i32 %r2, ptr %r1
    %r3 = add i32 0,1
    store i32 %r3, ptr %r1
    br label %L1
L1:
    %r4 = load i32, ptr %r1
    %r5 = load i32, ptr @n
    %r6 = icmp slt i32 %r4,%r5
    br i1 %r6, label %L2, label %L3
L2:
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r11 = load i32, ptr %r1
    %r12 = getelementptr i32, ptr %r0, i32 %r11
    %r13 = load i32, ptr %r12
    store i32 %r13, ptr %r9
    %r15 = add i32 0,0
    store i32 %r15, ptr %r14
    %r16 = load i32, ptr %r1
    %r17 = add i32 0,1
    %r18 = sub i32 %r16,%r17
    store i32 %r18, ptr %r14
    br label %L4
L3:
    %r53 = add i32 0,0
    ret i32 %r53
L4:
    %r19 = load i32, ptr %r14
    %r20 = add i32 0,1
    %r21 = sub i32 0,%r20
    %r22 = icmp sgt i32 %r19,%r21
    br i1 %r22, label %L7, label %L6
L5:
    %r35 = load i32, ptr %r14
    %r36 = getelementptr i32, ptr %r0, i32 %r35
    %r37 = load i32, ptr %r36
    %r38 = load i32, ptr %r14
    %r39 = add i32 0,1
    %r40 = add i32 %r38,%r39
    %r41 = getelementptr i32, ptr %r0, i32 %r40
    store i32 %r37, ptr %r41
    %r42 = load i32, ptr %r14
    %r43 = add i32 0,1
    %r44 = sub i32 %r42,%r43
    store i32 %r44, ptr %r14
    br label %L4
L6:
    %r45 = load i32, ptr %r9
    %r46 = load i32, ptr %r14
    %r47 = add i32 0,1
    %r48 = add i32 %r46,%r47
    %r49 = getelementptr i32, ptr %r0, i32 %r48
    store i32 %r45, ptr %r49
    %r50 = load i32, ptr %r1
    %r51 = add i32 0,1
    %r52 = add i32 %r50,%r51
    store i32 %r52, ptr %r1
    br label %L1
L7:
    %r25 = load i32, ptr %r9
    %r26 = load i32, ptr %r14
    %r27 = getelementptr i32, ptr %r0, i32 %r26
    %r28 = load i32, ptr %r27
    %r29 = icmp slt i32 %r25,%r28
    br i1 %r29, label %L5, label %L6
}
define i32 @bubblesort(ptr %r0)
{
L0:
    %r34 = alloca i32
    %r3 = alloca i32
    %r1 = alloca i32
    %r2 = add i32 0,0
    store i32 %r2, ptr %r1
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r5 = add i32 0,0
    store i32 %r5, ptr %r1
    br label %L1
L1:
    %r6 = load i32, ptr %r1
    %r7 = load i32, ptr @n
    %r8 = add i32 0,1
    %r9 = sub i32 %r7,%r8
    %r10 = icmp slt i32 %r6,%r9
    br i1 %r10, label %L2, label %L3
L2:
    %r13 = add i32 0,0
    store i32 %r13, ptr %r3
    br label %L4
L3:
    %r57 = add i32 0,0
    ret i32 %r57
L4:
    %r14 = load i32, ptr %r3
    %r15 = load i32, ptr @n
    %r16 = load i32, ptr %r1
    %r17 = sub i32 %r15,%r16
    %r18 = add i32 0,1
    %r19 = sub i32 %r17,%r18
    %r20 = icmp slt i32 %r14,%r19
    br i1 %r20, label %L5, label %L6
L5:
    %r23 = load i32, ptr %r3
    %r24 = getelementptr i32, ptr %r0, i32 %r23
    %r25 = load i32, ptr %r24
    %r26 = load i32, ptr %r3
    %r27 = add i32 0,1
    %r28 = add i32 %r26,%r27
    %r29 = getelementptr i32, ptr %r0, i32 %r28
    %r30 = load i32, ptr %r29
    %r31 = icmp sgt i32 %r25,%r30
    br i1 %r31, label %L7, label %L8
L6:
    %r54 = load i32, ptr %r1
    %r55 = add i32 0,1
    %r56 = add i32 %r54,%r55
    store i32 %r56, ptr %r1
    br label %L1
L7:
    %r35 = add i32 0,0
    store i32 %r35, ptr %r34
    %r36 = load i32, ptr %r3
    %r37 = add i32 0,1
    %r38 = add i32 %r36,%r37
    %r39 = getelementptr i32, ptr %r0, i32 %r38
    %r40 = load i32, ptr %r39
    store i32 %r40, ptr %r34
    %r41 = load i32, ptr %r3
    %r42 = getelementptr i32, ptr %r0, i32 %r41
    %r43 = load i32, ptr %r42
    %r44 = load i32, ptr %r3
    %r45 = add i32 0,1
    %r46 = add i32 %r44,%r45
    %r47 = getelementptr i32, ptr %r0, i32 %r46
    store i32 %r43, ptr %r47
    %r48 = load i32, ptr %r34
    %r49 = load i32, ptr %r3
    %r50 = getelementptr i32, ptr %r0, i32 %r49
    store i32 %r48, ptr %r50
    br label %L8
L8:
    %r51 = load i32, ptr %r3
    %r52 = add i32 0,1
    %r53 = add i32 %r51,%r52
    store i32 %r53, ptr %r3
    br label %L4
}
define i32 @getMid(ptr %r0)
{
L0:
    %r1 = alloca i32
    %r2 = add i32 0,0
    store i32 %r2, ptr %r1
    %r3 = load i32, ptr @n
    %r4 = add i32 0,2
    %r5 = srem i32 %r3,%r4
    %r6 = add i32 0,0
    %r7 = icmp eq i32 %r5,%r6
    br i1 %r7, label %L1, label %L2
L1:
    %r10 = load i32, ptr @n
    %r11 = add i32 0,2
    %r12 = sdiv i32 %r10,%r11
    store i32 %r12, ptr %r1
    %r13 = load i32, ptr %r1
    %r14 = getelementptr i32, ptr %r0, i32 %r13
    %r15 = load i32, ptr %r14
    %r16 = load i32, ptr %r1
    %r17 = add i32 0,1
    %r18 = sub i32 %r16,%r17
    %r19 = getelementptr i32, ptr %r0, i32 %r18
    %r20 = load i32, ptr %r19
    %r21 = add i32 %r15,%r20
    %r22 = add i32 0,2
    %r23 = sdiv i32 %r21,%r22
    ret i32 %r23
L2:
    %r24 = load i32, ptr @n
    %r25 = add i32 0,2
    %r26 = sdiv i32 %r24,%r25
    store i32 %r26, ptr %r1
    %r27 = load i32, ptr %r1
    %r28 = getelementptr i32, ptr %r0, i32 %r27
    %r29 = load i32, ptr %r28
    ret i32 %r29
}
define i32 @getMost(ptr %r0)
{
L0:
    %r27 = alloca i32
    %r19 = alloca i32
    %r17 = alloca i32
    %r2 = alloca i32
    %r1 = alloca [1000 x i32]
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r4 = add i32 0,0
    store i32 %r4, ptr %r2
    br label %L1
L1:
    %r5 = load i32, ptr %r2
    %r6 = add i32 0,1000
    %r7 = icmp slt i32 %r5,%r6
    br i1 %r7, label %L2, label %L3
L2:
    %r10 = add i32 0,0
    %r11 = load i32, ptr %r2
    %r12 = getelementptr [1000 x i32], ptr %r1, i32 0, i32 %r11
    store i32 %r10, ptr %r12
    %r13 = load i32, ptr %r2
    %r14 = add i32 0,1
    %r15 = add i32 %r13,%r14
    store i32 %r15, ptr %r2
    br label %L1
L3:
    %r16 = add i32 0,0
    store i32 %r16, ptr %r2
    %r18 = add i32 0,0
    store i32 %r18, ptr %r17
    %r20 = add i32 0,0
    store i32 %r20, ptr %r19
    %r21 = add i32 0,0
    store i32 %r21, ptr %r17
    br label %L4
L4:
    %r22 = load i32, ptr %r2
    %r23 = load i32, ptr @n
    %r24 = icmp slt i32 %r22,%r23
    br i1 %r24, label %L5, label %L6
L5:
    %r28 = add i32 0,0
    store i32 %r28, ptr %r27
    %r29 = load i32, ptr %r2
    %r30 = getelementptr i32, ptr %r0, i32 %r29
    %r31 = load i32, ptr %r30
    store i32 %r31, ptr %r27
    %r32 = load i32, ptr %r27
    %r33 = getelementptr [1000 x i32], ptr %r1, i32 0, i32 %r32
    %r34 = load i32, ptr %r33
    %r35 = add i32 0,1
    %r36 = add i32 %r34,%r35
    %r37 = load i32, ptr %r27
    %r38 = getelementptr [1000 x i32], ptr %r1, i32 0, i32 %r37
    store i32 %r36, ptr %r38
    %r39 = load i32, ptr %r27
    %r40 = getelementptr [1000 x i32], ptr %r1, i32 0, i32 %r39
    %r41 = load i32, ptr %r40
    %r42 = load i32, ptr %r17
    %r43 = icmp sgt i32 %r41,%r42
    br i1 %r43, label %L7, label %L8
L6:
    %r53 = load i32, ptr %r19
    ret i32 %r53
L7:
    %r46 = load i32, ptr %r27
    %r47 = getelementptr [1000 x i32], ptr %r1, i32 0, i32 %r46
    %r48 = load i32, ptr %r47
    store i32 %r48, ptr %r17
    %r49 = load i32, ptr %r27
    store i32 %r49, ptr %r19
    br label %L8
L8:
    %r50 = load i32, ptr %r2
    %r51 = add i32 0,1
    %r52 = add i32 %r50,%r51
    store i32 %r52, ptr %r2
    br label %L4
}
define i32 @arrCopy(ptr %r0,ptr %r1)
{
L0:
    %r2 = alloca i32
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r4 = add i32 0,0
    store i32 %r4, ptr %r2
    br label %L1
L1:
    %r5 = load i32, ptr %r2
    %r6 = load i32, ptr @n
    %r7 = icmp slt i32 %r5,%r6
    br i1 %r7, label %L2, label %L3
L2:
    %r10 = load i32, ptr %r2
    %r11 = getelementptr i32, ptr %r0, i32 %r10
    %r12 = load i32, ptr %r11
    %r13 = load i32, ptr %r2
    %r14 = getelementptr i32, ptr %r1, i32 %r13
    store i32 %r12, ptr %r14
    %r15 = load i32, ptr %r2
    %r16 = add i32 0,1
    %r17 = add i32 %r15,%r16
    store i32 %r17, ptr %r2
    br label %L1
L3:
    %r18 = add i32 0,0
    ret i32 %r18
}
define i32 @revert(ptr %r0)
{
L0:
    %r5 = alloca i32
    %r3 = alloca i32
    %r1 = alloca i32
    %r2 = add i32 0,0
    store i32 %r2, ptr %r1
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    %r7 = add i32 0,0
    store i32 %r7, ptr %r3
    %r8 = add i32 0,0
    store i32 %r8, ptr %r5
    br label %L1
L1:
    %r9 = load i32, ptr %r3
    %r10 = load i32, ptr %r5
    %r11 = icmp slt i32 %r9,%r10
    br i1 %r11, label %L2, label %L3
L2:
    %r14 = load i32, ptr %r3
    %r15 = getelementptr i32, ptr %r0, i32 %r14
    %r16 = load i32, ptr %r15
    store i32 %r16, ptr %r1
    %r17 = load i32, ptr %r5
    %r18 = getelementptr i32, ptr %r0, i32 %r17
    %r19 = load i32, ptr %r18
    %r20 = load i32, ptr %r3
    %r21 = getelementptr i32, ptr %r0, i32 %r20
    store i32 %r19, ptr %r21
    %r22 = load i32, ptr %r1
    %r23 = load i32, ptr %r5
    %r24 = getelementptr i32, ptr %r0, i32 %r23
    store i32 %r22, ptr %r24
    %r25 = load i32, ptr %r3
    %r26 = add i32 0,1
    %r27 = add i32 %r25,%r26
    store i32 %r27, ptr %r3
    %r28 = load i32, ptr %r5
    %r29 = add i32 0,1
    %r30 = sub i32 %r28,%r29
    store i32 %r30, ptr %r5
    br label %L1
L3:
    %r31 = add i32 0,0
    ret i32 %r31
}
define i32 @calSum(ptr %r0,i32 %r1)
{
L0:
    %r6 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r1, ptr %r2
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r5 = add i32 0,0
    store i32 %r5, ptr %r3
    %r7 = add i32 0,0
    store i32 %r7, ptr %r6
    %r8 = add i32 0,0
    store i32 %r8, ptr %r6
    br label %L1
L1:
    %r9 = load i32, ptr %r6
    %r10 = load i32, ptr @n
    %r11 = icmp slt i32 %r9,%r10
    br i1 %r11, label %L2, label %L3
L2:
    %r14 = load i32, ptr %r3
    %r15 = load i32, ptr %r6
    %r16 = getelementptr i32, ptr %r0, i32 %r15
    %r17 = load i32, ptr %r16
    %r18 = add i32 %r14,%r17
    store i32 %r18, ptr %r3
    %r19 = load i32, ptr %r6
    %r20 = load i32, ptr %r2
    %r21 = srem i32 %r19,%r20
    %r22 = load i32, ptr %r2
    %r23 = add i32 0,1
    %r24 = sub i32 %r22,%r23
    %r25 = icmp ne i32 %r21,%r24
    br i1 %r25, label %L4, label %L5
L3:
    %r38 = add i32 0,0
    ret i32 %r38
L4:
    %r28 = add i32 0,0
    %r29 = load i32, ptr %r6
    %r30 = getelementptr i32, ptr %r0, i32 %r29
    store i32 %r28, ptr %r30
    br label %L6
L5:
    %r31 = load i32, ptr %r3
    %r32 = load i32, ptr %r6
    %r33 = getelementptr i32, ptr %r0, i32 %r32
    store i32 %r31, ptr %r33
    %r34 = add i32 0,0
    store i32 %r34, ptr %r3
    br label %L6
L6:
    %r35 = load i32, ptr %r6
    %r36 = add i32 0,1
    %r37 = add i32 %r35,%r36
    store i32 %r37, ptr %r6
    br label %L1
}
define i32 @avgPooling(ptr %r0,i32 %r1)
{
L0:
    %r9 = alloca i32
    %r5 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r1, ptr %r2
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    %r7 = add i32 0,0
    store i32 %r7, ptr %r5
    %r8 = add i32 0,0
    store i32 %r8, ptr %r3
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    br label %L1
L1:
    %r11 = load i32, ptr %r5
    %r12 = load i32, ptr @n
    %r13 = icmp slt i32 %r11,%r12
    br i1 %r13, label %L2, label %L3
L2:
    %r16 = load i32, ptr %r5
    %r17 = load i32, ptr %r2
    %r18 = add i32 0,1
    %r19 = sub i32 %r17,%r18
    %r20 = icmp slt i32 %r16,%r19
    br i1 %r20, label %L4, label %L5
L3:
    %r69 = load i32, ptr @n
    %r70 = load i32, ptr %r2
    %r71 = sub i32 %r69,%r70
    %r72 = add i32 0,1
    %r73 = add i32 %r71,%r72
    store i32 %r73, ptr %r5
    br label %L10
L4:
    %r23 = load i32, ptr %r3
    %r24 = load i32, ptr %r5
    %r25 = getelementptr i32, ptr %r0, i32 %r24
    %r26 = load i32, ptr %r25
    %r27 = add i32 %r23,%r26
    store i32 %r27, ptr %r3
    br label %L6
L5:
    %r28 = load i32, ptr %r5
    %r29 = load i32, ptr %r2
    %r30 = add i32 0,1
    %r31 = sub i32 %r29,%r30
    %r32 = icmp eq i32 %r28,%r31
    br i1 %r32, label %L7, label %L8
L6:
    %r66 = load i32, ptr %r5
    %r67 = add i32 0,1
    %r68 = add i32 %r66,%r67
    store i32 %r68, ptr %r5
    br label %L1
L7:
    %r35 = add i32 0,0
    %r36 = getelementptr i32, ptr %r0, i32 %r35
    %r37 = load i32, ptr %r36
    store i32 %r37, ptr %r9
    %r38 = load i32, ptr %r3
    %r39 = load i32, ptr %r2
    %r40 = sdiv i32 %r38,%r39
    %r41 = add i32 0,0
    %r42 = getelementptr i32, ptr %r0, i32 %r41
    store i32 %r40, ptr %r42
    br label %L9
L8:
    %r43 = load i32, ptr %r3
    %r44 = load i32, ptr %r5
    %r45 = getelementptr i32, ptr %r0, i32 %r44
    %r46 = load i32, ptr %r45
    %r47 = add i32 %r43,%r46
    %r48 = load i32, ptr %r9
    %r49 = sub i32 %r47,%r48
    store i32 %r49, ptr %r3
    %r50 = load i32, ptr %r5
    %r51 = load i32, ptr %r2
    %r52 = sub i32 %r50,%r51
    %r53 = add i32 0,1
    %r54 = add i32 %r52,%r53
    %r55 = getelementptr i32, ptr %r0, i32 %r54
    %r56 = load i32, ptr %r55
    store i32 %r56, ptr %r9
    %r57 = load i32, ptr %r3
    %r58 = load i32, ptr %r2
    %r59 = sdiv i32 %r57,%r58
    %r60 = load i32, ptr %r5
    %r61 = load i32, ptr %r2
    %r62 = sub i32 %r60,%r61
    %r63 = add i32 0,1
    %r64 = add i32 %r62,%r63
    %r65 = getelementptr i32, ptr %r0, i32 %r64
    store i32 %r59, ptr %r65
    br label %L9
L9:
    br label %L6
L10:
    %r74 = load i32, ptr %r5
    %r75 = load i32, ptr @n
    %r76 = icmp slt i32 %r74,%r75
    br i1 %r76, label %L11, label %L12
L11:
    %r79 = add i32 0,0
    %r80 = load i32, ptr %r5
    %r81 = getelementptr i32, ptr %r0, i32 %r80
    store i32 %r79, ptr %r81
    %r82 = load i32, ptr %r5
    %r83 = add i32 0,1
    %r84 = add i32 %r82,%r83
    store i32 %r84, ptr %r5
    br label %L10
L12:
    %r85 = add i32 0,0
    ret i32 %r85
}
define i32 @main()
{
L0:
    %r106 = alloca i32
    %r99 = alloca i32
    %r2 = alloca [32 x i32]
    %r1 = alloca [32 x i32]
    %r0 = add i32 0,32
    store i32 %r0, ptr @n
    %r3 = add i32 0,7
    %r4 = add i32 0,0
    %r5 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r4
    store i32 %r3, ptr %r5
    %r6 = add i32 0,23
    %r7 = add i32 0,1
    %r8 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r7
    store i32 %r6, ptr %r8
    %r9 = add i32 0,89
    %r10 = add i32 0,2
    %r11 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r10
    store i32 %r9, ptr %r11
    %r12 = add i32 0,26
    %r13 = add i32 0,3
    %r14 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r13
    store i32 %r12, ptr %r14
    %r15 = add i32 0,282
    %r16 = add i32 0,4
    %r17 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r16
    store i32 %r15, ptr %r17
    %r18 = add i32 0,254
    %r19 = add i32 0,5
    %r20 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r19
    store i32 %r18, ptr %r20
    %r21 = add i32 0,27
    %r22 = add i32 0,6
    %r23 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r22
    store i32 %r21, ptr %r23
    %r24 = add i32 0,5
    %r25 = add i32 0,7
    %r26 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r25
    store i32 %r24, ptr %r26
    %r27 = add i32 0,83
    %r28 = add i32 0,8
    %r29 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r28
    store i32 %r27, ptr %r29
    %r30 = add i32 0,273
    %r31 = add i32 0,9
    %r32 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r31
    store i32 %r30, ptr %r32
    %r33 = add i32 0,574
    %r34 = add i32 0,10
    %r35 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r34
    store i32 %r33, ptr %r35
    %r36 = add i32 0,905
    %r37 = add i32 0,11
    %r38 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r37
    store i32 %r36, ptr %r38
    %r39 = add i32 0,354
    %r40 = add i32 0,12
    %r41 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r40
    store i32 %r39, ptr %r41
    %r42 = add i32 0,657
    %r43 = add i32 0,13
    %r44 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r43
    store i32 %r42, ptr %r44
    %r45 = add i32 0,935
    %r46 = add i32 0,14
    %r47 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r46
    store i32 %r45, ptr %r47
    %r48 = add i32 0,264
    %r49 = add i32 0,15
    %r50 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r49
    store i32 %r48, ptr %r50
    %r51 = add i32 0,639
    %r52 = add i32 0,16
    %r53 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r52
    store i32 %r51, ptr %r53
    %r54 = add i32 0,459
    %r55 = add i32 0,17
    %r56 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r55
    store i32 %r54, ptr %r56
    %r57 = add i32 0,29
    %r58 = add i32 0,18
    %r59 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r58
    store i32 %r57, ptr %r59
    %r60 = add i32 0,68
    %r61 = add i32 0,19
    %r62 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r61
    store i32 %r60, ptr %r62
    %r63 = add i32 0,929
    %r64 = add i32 0,20
    %r65 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r64
    store i32 %r63, ptr %r65
    %r66 = add i32 0,756
    %r67 = add i32 0,21
    %r68 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r67
    store i32 %r66, ptr %r68
    %r69 = add i32 0,452
    %r70 = add i32 0,22
    %r71 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r70
    store i32 %r69, ptr %r71
    %r72 = add i32 0,279
    %r73 = add i32 0,23
    %r74 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r73
    store i32 %r72, ptr %r74
    %r75 = add i32 0,58
    %r76 = add i32 0,24
    %r77 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r76
    store i32 %r75, ptr %r77
    %r78 = add i32 0,87
    %r79 = add i32 0,25
    %r80 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r79
    store i32 %r78, ptr %r80
    %r81 = add i32 0,96
    %r82 = add i32 0,26
    %r83 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r82
    store i32 %r81, ptr %r83
    %r84 = add i32 0,36
    %r85 = add i32 0,27
    %r86 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r85
    store i32 %r84, ptr %r86
    %r87 = add i32 0,39
    %r88 = add i32 0,28
    %r89 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r88
    store i32 %r87, ptr %r89
    %r90 = add i32 0,28
    %r91 = add i32 0,29
    %r92 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r91
    store i32 %r90, ptr %r92
    %r93 = add i32 0,1
    %r94 = add i32 0,30
    %r95 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r94
    store i32 %r93, ptr %r95
    %r96 = add i32 0,290
    %r97 = add i32 0,31
    %r98 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r97
    store i32 %r96, ptr %r98
    %r100 = add i32 0,0
    store i32 %r100, ptr %r99
    %r101 = getelementptr i32, ptr %r1, i32 0
    %r102 = getelementptr i32, ptr %r2, i32 0
    %r103 = call i32 @arrCopy(ptr %r101,ptr %r102)
    store i32 %r103, ptr %r99
    %r104 = getelementptr i32, ptr %r2, i32 0
    %r105 = call i32 @revert(ptr %r104)
    store i32 %r105, ptr %r99
    %r107 = add i32 0,0
    store i32 %r107, ptr %r106
    %r108 = add i32 0,0
    store i32 %r108, ptr %r106
    br label %L1
L1:
    %r109 = load i32, ptr %r106
    %r110 = add i32 0,32
    %r111 = icmp slt i32 %r109,%r110
    br i1 %r111, label %L2, label %L3
L2:
    %r114 = load i32, ptr %r106
    %r115 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r114
    %r116 = load i32, ptr %r115
    store i32 %r116, ptr %r99
    %r117 = load i32, ptr %r99
    call void @putint(i32 %r117)
    %r118 = load i32, ptr %r106
    %r119 = add i32 0,1
    %r120 = add i32 %r118,%r119
    store i32 %r120, ptr %r106
    br label %L1
L3:
    %r121 = getelementptr i32, ptr %r2, i32 0
    %r122 = call i32 @bubblesort(ptr %r121)
    store i32 %r122, ptr %r99
    %r123 = add i32 0,0
    store i32 %r123, ptr %r106
    br label %L4
L4:
    %r124 = load i32, ptr %r106
    %r125 = add i32 0,32
    %r126 = icmp slt i32 %r124,%r125
    br i1 %r126, label %L5, label %L6
L5:
    %r129 = load i32, ptr %r106
    %r130 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r129
    %r131 = load i32, ptr %r130
    store i32 %r131, ptr %r99
    %r132 = load i32, ptr %r99
    call void @putint(i32 %r132)
    %r133 = load i32, ptr %r106
    %r134 = add i32 0,1
    %r135 = add i32 %r133,%r134
    store i32 %r135, ptr %r106
    br label %L4
L6:
    %r136 = getelementptr i32, ptr %r2, i32 0
    %r137 = call i32 @getMid(ptr %r136)
    store i32 %r137, ptr %r99
    %r138 = load i32, ptr %r99
    call void @putint(i32 %r138)
    %r139 = getelementptr i32, ptr %r2, i32 0
    %r140 = call i32 @getMost(ptr %r139)
    store i32 %r140, ptr %r99
    %r141 = load i32, ptr %r99
    call void @putint(i32 %r141)
    %r142 = getelementptr i32, ptr %r1, i32 0
    %r143 = getelementptr i32, ptr %r2, i32 0
    %r144 = call i32 @arrCopy(ptr %r142,ptr %r143)
    store i32 %r144, ptr %r99
    %r145 = getelementptr i32, ptr %r2, i32 0
    %r146 = call i32 @bubblesort(ptr %r145)
    store i32 %r146, ptr %r99
    %r147 = add i32 0,0
    store i32 %r147, ptr %r106
    br label %L7
L7:
    %r148 = load i32, ptr %r106
    %r149 = add i32 0,32
    %r150 = icmp slt i32 %r148,%r149
    br i1 %r150, label %L8, label %L9
L8:
    %r153 = load i32, ptr %r106
    %r154 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r153
    %r155 = load i32, ptr %r154
    store i32 %r155, ptr %r99
    %r156 = load i32, ptr %r99
    call void @putint(i32 %r156)
    %r157 = load i32, ptr %r106
    %r158 = add i32 0,1
    %r159 = add i32 %r157,%r158
    store i32 %r159, ptr %r106
    br label %L7
L9:
    %r160 = getelementptr i32, ptr %r1, i32 0
    %r161 = getelementptr i32, ptr %r2, i32 0
    %r162 = call i32 @arrCopy(ptr %r160,ptr %r161)
    store i32 %r162, ptr %r99
    %r163 = getelementptr i32, ptr %r2, i32 0
    %r164 = call i32 @insertsort(ptr %r163)
    store i32 %r164, ptr %r99
    %r165 = add i32 0,0
    store i32 %r165, ptr %r106
    br label %L10
L10:
    %r166 = load i32, ptr %r106
    %r167 = add i32 0,32
    %r168 = icmp slt i32 %r166,%r167
    br i1 %r168, label %L11, label %L12
L11:
    %r171 = load i32, ptr %r106
    %r172 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r171
    %r173 = load i32, ptr %r172
    store i32 %r173, ptr %r99
    %r174 = load i32, ptr %r99
    call void @putint(i32 %r174)
    %r175 = load i32, ptr %r106
    %r176 = add i32 0,1
    %r177 = add i32 %r175,%r176
    store i32 %r177, ptr %r106
    br label %L10
L12:
    %r178 = getelementptr i32, ptr %r1, i32 0
    %r179 = getelementptr i32, ptr %r2, i32 0
    %r180 = call i32 @arrCopy(ptr %r178,ptr %r179)
    store i32 %r180, ptr %r99
    %r181 = add i32 0,0
    store i32 %r181, ptr %r106
    %r182 = add i32 0,31
    store i32 %r182, ptr %r99
    %r183 = getelementptr i32, ptr %r2, i32 0
    %r184 = load i32, ptr %r106
    %r185 = load i32, ptr %r99
    %r186 = call i32 @QuickSort(ptr %r183,i32 %r184,i32 %r185)
    store i32 %r186, ptr %r99
    br label %L13
L13:
    %r187 = load i32, ptr %r106
    %r188 = add i32 0,32
    %r189 = icmp slt i32 %r187,%r188
    br i1 %r189, label %L14, label %L15
L14:
    %r192 = load i32, ptr %r106
    %r193 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r192
    %r194 = load i32, ptr %r193
    store i32 %r194, ptr %r99
    %r195 = load i32, ptr %r99
    call void @putint(i32 %r195)
    %r196 = load i32, ptr %r106
    %r197 = add i32 0,1
    %r198 = add i32 %r196,%r197
    store i32 %r198, ptr %r106
    br label %L13
L15:
    %r199 = getelementptr i32, ptr %r1, i32 0
    %r200 = getelementptr i32, ptr %r2, i32 0
    %r201 = call i32 @arrCopy(ptr %r199,ptr %r200)
    store i32 %r201, ptr %r99
    %r202 = getelementptr i32, ptr %r2, i32 0
    %r203 = add i32 0,4
    %r204 = call i32 @calSum(ptr %r202,i32 %r203)
    store i32 %r204, ptr %r99
    %r205 = add i32 0,0
    store i32 %r205, ptr %r106
    br label %L16
L16:
    %r206 = load i32, ptr %r106
    %r207 = add i32 0,32
    %r208 = icmp slt i32 %r206,%r207
    br i1 %r208, label %L17, label %L18
L17:
    %r211 = load i32, ptr %r106
    %r212 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r211
    %r213 = load i32, ptr %r212
    store i32 %r213, ptr %r99
    %r214 = load i32, ptr %r99
    call void @putint(i32 %r214)
    %r215 = load i32, ptr %r106
    %r216 = add i32 0,1
    %r217 = add i32 %r215,%r216
    store i32 %r217, ptr %r106
    br label %L16
L18:
    %r218 = getelementptr i32, ptr %r1, i32 0
    %r219 = getelementptr i32, ptr %r2, i32 0
    %r220 = call i32 @arrCopy(ptr %r218,ptr %r219)
    store i32 %r220, ptr %r99
    %r221 = getelementptr i32, ptr %r2, i32 0
    %r222 = add i32 0,3
    %r223 = call i32 @avgPooling(ptr %r221,i32 %r222)
    store i32 %r223, ptr %r99
    %r224 = add i32 0,0
    store i32 %r224, ptr %r106
    br label %L19
L19:
    %r225 = load i32, ptr %r106
    %r226 = add i32 0,32
    %r227 = icmp slt i32 %r225,%r226
    br i1 %r227, label %L20, label %L21
L20:
    %r230 = load i32, ptr %r106
    %r231 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r230
    %r232 = load i32, ptr %r231
    store i32 %r232, ptr %r99
    %r233 = load i32, ptr %r99
    call void @putint(i32 %r233)
    %r234 = load i32, ptr %r106
    %r235 = add i32 0,1
    %r236 = add i32 %r234,%r235
    store i32 %r236, ptr %r106
    br label %L19
L21:
    %r237 = add i32 0,0
    ret i32 %r237
}
