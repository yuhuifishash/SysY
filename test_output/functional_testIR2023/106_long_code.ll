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
define i32 @bubblesort(ptr %r0)
{
L0:  ;
    %r28 = alloca i32
    %r3 = alloca i32
    %r1 = alloca i32
    br label %L1
L1:  ;
    %r2 = add i32 0,0
    store i32 %r2, ptr %r1
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r5 = add i32 0,0
    store i32 %r5, ptr %r1
    br label %L2
L2:  ;
    %r6 = load i32, ptr %r1
    %r7 = load i32, ptr @n
    %r8 = add i32 1,0
    %r9 = sub i32 %r7,%r8
    %r10 = icmp slt i32 %r6,%r9
    br i1 %r10, label %L3, label %L4
L3:  ;
    %r11 = add i32 0,0
    store i32 %r11, ptr %r3
    br label %L5
L4:  ;
    %r51 = add i32 0,0
    ret i32 %r51
L5:  ;
    %r12 = load i32, ptr %r3
    %r13 = load i32, ptr @n
    %r14 = load i32, ptr %r1
    %r15 = sub i32 %r13,%r14
    %r16 = add i32 1,0
    %r17 = sub i32 %r15,%r16
    %r18 = icmp slt i32 %r12,%r17
    br i1 %r18, label %L6, label %L7
L6:  ;
    %r19 = load i32, ptr %r3
    %r20 = getelementptr i32, ptr %r0, i32 %r19
    %r21 = load i32, ptr %r20
    %r22 = load i32, ptr %r3
    %r23 = add i32 1,0
    %r24 = add i32 %r22,%r23
    %r25 = getelementptr i32, ptr %r0, i32 %r24
    %r26 = load i32, ptr %r25
    %r27 = icmp sgt i32 %r21,%r26
    br i1 %r27, label %L8, label %L9
L7:  ;
    %r48 = load i32, ptr %r1
    %r49 = add i32 1,0
    %r50 = add i32 %r48,%r49
    store i32 %r50, ptr %r1
    br label %L2
L8:  ;
    %r29 = add i32 0,0
    store i32 %r29, ptr %r28
    %r30 = load i32, ptr %r3
    %r31 = add i32 1,0
    %r32 = add i32 %r30,%r31
    %r33 = getelementptr i32, ptr %r0, i32 %r32
    %r34 = load i32, ptr %r33
    store i32 %r34, ptr %r28
    %r35 = load i32, ptr %r3
    %r36 = add i32 1,0
    %r37 = add i32 %r35,%r36
    %r38 = getelementptr i32, ptr %r0, i32 %r37
    %r39 = load i32, ptr %r3
    %r40 = getelementptr i32, ptr %r0, i32 %r39
    %r41 = load i32, ptr %r40
    store i32 %r41, ptr %r38
    %r42 = load i32, ptr %r3
    %r43 = getelementptr i32, ptr %r0, i32 %r42
    %r44 = load i32, ptr %r28
    store i32 %r44, ptr %r43
    br label %L9
L9:  ;
    %r45 = load i32, ptr %r3
    %r46 = add i32 1,0
    %r47 = add i32 %r45,%r46
    store i32 %r47, ptr %r3
    br label %L5
}
define i32 @insertsort(ptr %r0)
{
L0:  ;
    %r12 = alloca i32
    %r7 = alloca i32
    %r1 = alloca i32
    br label %L1
L1:  ;
    %r2 = add i32 0,0
    store i32 %r2, ptr %r1
    %r3 = add i32 1,0
    store i32 %r3, ptr %r1
    br label %L2
L2:  ;
    %r4 = load i32, ptr %r1
    %r5 = load i32, ptr @n
    %r6 = icmp slt i32 %r4,%r5
    br i1 %r6, label %L3, label %L4
L3:  ;
    %r8 = add i32 0,0
    store i32 %r8, ptr %r7
    %r9 = load i32, ptr %r1
    %r10 = getelementptr i32, ptr %r0, i32 %r9
    %r11 = load i32, ptr %r10
    store i32 %r11, ptr %r7
    %r13 = add i32 0,0
    store i32 %r13, ptr %r12
    %r14 = load i32, ptr %r1
    %r15 = add i32 1,0
    %r16 = sub i32 %r14,%r15
    store i32 %r16, ptr %r12
    br label %L5
L4:  ;
    %r44 = add i32 0,0
    ret i32 %r44
L5:  ;
    %r17 = load i32, ptr %r12
    %r18 = add i32 1,0
    %r19 = sub i32 0,%r18
    %r20 = icmp sgt i32 %r17,%r19
    br i1 %r20, label %L8, label %L7
L6:  ;
    %r26 = load i32, ptr %r12
    %r27 = add i32 1,0
    %r28 = add i32 %r26,%r27
    %r29 = getelementptr i32, ptr %r0, i32 %r28
    %r30 = load i32, ptr %r12
    %r31 = getelementptr i32, ptr %r0, i32 %r30
    %r32 = load i32, ptr %r31
    store i32 %r32, ptr %r29
    %r33 = load i32, ptr %r12
    %r34 = add i32 1,0
    %r35 = sub i32 %r33,%r34
    store i32 %r35, ptr %r12
    br label %L5
L7:  ;
    %r36 = load i32, ptr %r12
    %r37 = add i32 1,0
    %r38 = add i32 %r36,%r37
    %r39 = getelementptr i32, ptr %r0, i32 %r38
    %r40 = load i32, ptr %r7
    store i32 %r40, ptr %r39
    %r41 = load i32, ptr %r1
    %r42 = add i32 1,0
    %r43 = add i32 %r41,%r42
    store i32 %r43, ptr %r1
    br label %L2
L8:  ;
    %r21 = load i32, ptr %r7
    %r22 = load i32, ptr %r12
    %r23 = getelementptr i32, ptr %r0, i32 %r22
    %r24 = load i32, ptr %r23
    %r25 = icmp slt i32 %r21,%r24
    br i1 %r25, label %L6, label %L7
}
define i32 @QuickSort(ptr %r0,i32 %r1,i32 %r2)
{
L0:  ;
    %r71 = alloca i32
    %r14 = alloca i32
    %r11 = alloca i32
    %r8 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    store i32 %r2, ptr %r4
    br label %L1
L1:  ;
    %r5 = load i32, ptr %r3
    %r6 = load i32, ptr %r4
    %r7 = icmp slt i32 %r5,%r6
    br i1 %r7, label %L2, label %L3
L2:  ;
    %r9 = add i32 0,0
    store i32 %r9, ptr %r8
    %r10 = load i32, ptr %r3
    store i32 %r10, ptr %r8
    %r12 = add i32 0,0
    store i32 %r12, ptr %r11
    %r13 = load i32, ptr %r4
    store i32 %r13, ptr %r11
    %r15 = add i32 0,0
    store i32 %r15, ptr %r14
    %r16 = load i32, ptr %r3
    %r17 = getelementptr i32, ptr %r0, i32 %r16
    %r18 = load i32, ptr %r17
    store i32 %r18, ptr %r14
    br label %L4
L3:  ;
    %r87 = add i32 0,0
    ret i32 %r87
L4:  ;
    %r19 = load i32, ptr %r8
    %r20 = load i32, ptr %r11
    %r21 = icmp slt i32 %r19,%r20
    br i1 %r21, label %L5, label %L6
L5:  ;
    br label %L7
L6:  ;
    %r68 = load i32, ptr %r8
    %r69 = getelementptr i32, ptr %r0, i32 %r68
    %r70 = load i32, ptr %r14
    store i32 %r70, ptr %r69
    %r72 = add i32 0,0
    store i32 %r72, ptr %r71
    %r73 = load i32, ptr %r8
    %r74 = add i32 1,0
    %r75 = sub i32 %r73,%r74
    store i32 %r75, ptr %r71
    %r77 = load i32, ptr %r3
    %r78 = load i32, ptr %r71
    %r79 = call i32 @QuickSort(ptr %r0,i32 %r77,i32 %r78)
    store i32 %r79, ptr %r71
    %r80 = load i32, ptr %r8
    %r81 = add i32 1,0
    %r82 = add i32 %r80,%r81
    store i32 %r82, ptr %r71
    %r84 = load i32, ptr %r71
    %r85 = load i32, ptr %r4
    %r86 = call i32 @QuickSort(ptr %r0,i32 %r84,i32 %r85)
    store i32 %r86, ptr %r71
    br label %L3
L7:  ;
    %r22 = load i32, ptr %r8
    %r23 = load i32, ptr %r11
    %r24 = icmp slt i32 %r22,%r23
    br i1 %r24, label %L10, label %L9
L8:  ;
    %r32 = load i32, ptr %r11
    %r33 = add i32 1,0
    %r34 = sub i32 %r32,%r33
    store i32 %r34, ptr %r11
    br label %L7
L9:  ;
    %r35 = load i32, ptr %r8
    %r36 = load i32, ptr %r11
    %r37 = icmp slt i32 %r35,%r36
    br i1 %r37, label %L11, label %L12
L10:  ;
    %r25 = load i32, ptr %r11
    %r26 = getelementptr i32, ptr %r0, i32 %r25
    %r27 = load i32, ptr %r26
    %r28 = load i32, ptr %r14
    %r29 = add i32 1,0
    %r30 = sub i32 %r28,%r29
    %r31 = icmp sgt i32 %r27,%r30
    br i1 %r31, label %L8, label %L9
L11:  ;
    %r38 = load i32, ptr %r8
    %r39 = getelementptr i32, ptr %r0, i32 %r38
    %r40 = load i32, ptr %r11
    %r41 = getelementptr i32, ptr %r0, i32 %r40
    %r42 = load i32, ptr %r41
    store i32 %r42, ptr %r39
    %r43 = load i32, ptr %r8
    %r44 = add i32 1,0
    %r45 = add i32 %r43,%r44
    store i32 %r45, ptr %r8
    br label %L12
L12:  ;
    br label %L13
L13:  ;
    %r46 = load i32, ptr %r8
    %r47 = load i32, ptr %r11
    %r48 = icmp slt i32 %r46,%r47
    br i1 %r48, label %L16, label %L15
L14:  ;
    %r54 = load i32, ptr %r8
    %r55 = add i32 1,0
    %r56 = add i32 %r54,%r55
    store i32 %r56, ptr %r8
    br label %L13
L15:  ;
    %r57 = load i32, ptr %r8
    %r58 = load i32, ptr %r11
    %r59 = icmp slt i32 %r57,%r58
    br i1 %r59, label %L17, label %L18
L16:  ;
    %r49 = load i32, ptr %r8
    %r50 = getelementptr i32, ptr %r0, i32 %r49
    %r51 = load i32, ptr %r50
    %r52 = load i32, ptr %r14
    %r53 = icmp slt i32 %r51,%r52
    br i1 %r53, label %L14, label %L15
L17:  ;
    %r60 = load i32, ptr %r11
    %r61 = getelementptr i32, ptr %r0, i32 %r60
    %r62 = load i32, ptr %r8
    %r63 = getelementptr i32, ptr %r0, i32 %r62
    %r64 = load i32, ptr %r63
    store i32 %r64, ptr %r61
    %r65 = load i32, ptr %r11
    %r66 = add i32 1,0
    %r67 = sub i32 %r65,%r66
    store i32 %r67, ptr %r11
    br label %L18
L18:  ;
    br label %L4
}
define i32 @getMid(ptr %r0)
{
L0:  ;
    %r1 = alloca i32
    br label %L1
L1:  ;
    %r2 = add i32 0,0
    store i32 %r2, ptr %r1
    %r3 = load i32, ptr @n
    %r4 = add i32 2,0
    %r5 = srem i32 %r3,%r4
    %r6 = add i32 0,0
    %r7 = icmp eq i32 %r5,%r6
    br i1 %r7, label %L2, label %L3
L2:  ;
    %r8 = load i32, ptr @n
    %r9 = add i32 2,0
    %r10 = sdiv i32 %r8,%r9
    store i32 %r10, ptr %r1
    %r11 = load i32, ptr %r1
    %r12 = getelementptr i32, ptr %r0, i32 %r11
    %r13 = load i32, ptr %r12
    %r14 = load i32, ptr %r1
    %r15 = add i32 1,0
    %r16 = sub i32 %r14,%r15
    %r17 = getelementptr i32, ptr %r0, i32 %r16
    %r18 = load i32, ptr %r17
    %r19 = add i32 %r13,%r18
    %r20 = add i32 2,0
    %r21 = sdiv i32 %r19,%r20
    ret i32 %r21
L3:  ;
    %r22 = load i32, ptr @n
    %r23 = add i32 2,0
    %r24 = sdiv i32 %r22,%r23
    store i32 %r24, ptr %r1
    %r25 = load i32, ptr %r1
    %r26 = getelementptr i32, ptr %r0, i32 %r25
    %r27 = load i32, ptr %r26
    ret i32 %r27
}
define i32 @getMost(ptr %r0)
{
L0:  ;
    %r23 = alloca i32
    %r17 = alloca i32
    %r15 = alloca i32
    %r2 = alloca i32
    %r1 = alloca [1000 x i32]
    br label %L1
L1:  ;
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r4 = add i32 0,0
    store i32 %r4, ptr %r2
    br label %L2
L2:  ;
    %r5 = load i32, ptr %r2
    %r6 = add i32 1000,0
    %r7 = icmp slt i32 %r5,%r6
    br i1 %r7, label %L3, label %L4
L3:  ;
    %r8 = load i32, ptr %r2
    %r9 = getelementptr [1000 x i32], ptr %r1, i32 0, i32 %r8
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r11 = load i32, ptr %r2
    %r12 = add i32 1,0
    %r13 = add i32 %r11,%r12
    store i32 %r13, ptr %r2
    br label %L2
L4:  ;
    %r14 = add i32 0,0
    store i32 %r14, ptr %r2
    %r16 = add i32 0,0
    store i32 %r16, ptr %r15
    %r18 = add i32 0,0
    store i32 %r18, ptr %r17
    %r19 = add i32 0,0
    store i32 %r19, ptr %r15
    br label %L5
L5:  ;
    %r20 = load i32, ptr %r2
    %r21 = load i32, ptr @n
    %r22 = icmp slt i32 %r20,%r21
    br i1 %r22, label %L6, label %L7
L6:  ;
    %r24 = add i32 0,0
    store i32 %r24, ptr %r23
    %r25 = load i32, ptr %r2
    %r26 = getelementptr i32, ptr %r0, i32 %r25
    %r27 = load i32, ptr %r26
    store i32 %r27, ptr %r23
    %r28 = load i32, ptr %r23
    %r29 = getelementptr [1000 x i32], ptr %r1, i32 0, i32 %r28
    %r30 = load i32, ptr %r23
    %r31 = getelementptr [1000 x i32], ptr %r1, i32 0, i32 %r30
    %r32 = load i32, ptr %r31
    %r33 = add i32 1,0
    %r34 = add i32 %r32,%r33
    store i32 %r34, ptr %r29
    %r35 = load i32, ptr %r23
    %r36 = getelementptr [1000 x i32], ptr %r1, i32 0, i32 %r35
    %r37 = load i32, ptr %r36
    %r38 = load i32, ptr %r15
    %r39 = icmp sgt i32 %r37,%r38
    br i1 %r39, label %L8, label %L9
L7:  ;
    %r47 = load i32, ptr %r17
    ret i32 %r47
L8:  ;
    %r40 = load i32, ptr %r23
    %r41 = getelementptr [1000 x i32], ptr %r1, i32 0, i32 %r40
    %r42 = load i32, ptr %r41
    store i32 %r42, ptr %r15
    %r43 = load i32, ptr %r23
    store i32 %r43, ptr %r17
    br label %L9
L9:  ;
    %r44 = load i32, ptr %r2
    %r45 = add i32 1,0
    %r46 = add i32 %r44,%r45
    store i32 %r46, ptr %r2
    br label %L5
}
define i32 @revert(ptr %r0)
{
L0:  ;
    %r5 = alloca i32
    %r3 = alloca i32
    %r1 = alloca i32
    br label %L1
L1:  ;
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
    br label %L2
L2:  ;
    %r9 = load i32, ptr %r3
    %r10 = load i32, ptr %r5
    %r11 = icmp slt i32 %r9,%r10
    br i1 %r11, label %L3, label %L4
L3:  ;
    %r12 = load i32, ptr %r3
    %r13 = getelementptr i32, ptr %r0, i32 %r12
    %r14 = load i32, ptr %r13
    store i32 %r14, ptr %r1
    %r15 = load i32, ptr %r3
    %r16 = getelementptr i32, ptr %r0, i32 %r15
    %r17 = load i32, ptr %r5
    %r18 = getelementptr i32, ptr %r0, i32 %r17
    %r19 = load i32, ptr %r18
    store i32 %r19, ptr %r16
    %r20 = load i32, ptr %r5
    %r21 = getelementptr i32, ptr %r0, i32 %r20
    %r22 = load i32, ptr %r1
    store i32 %r22, ptr %r21
    %r23 = load i32, ptr %r3
    %r24 = add i32 1,0
    %r25 = add i32 %r23,%r24
    store i32 %r25, ptr %r3
    %r26 = load i32, ptr %r5
    %r27 = add i32 1,0
    %r28 = sub i32 %r26,%r27
    store i32 %r28, ptr %r5
    br label %L2
L4:  ;
    %r29 = add i32 0,0
    ret i32 %r29
}
define i32 @arrCopy(ptr %r0,ptr %r1)
{
L0:  ;
    %r2 = alloca i32
    br label %L1
L1:  ;
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r4 = add i32 0,0
    store i32 %r4, ptr %r2
    br label %L2
L2:  ;
    %r5 = load i32, ptr %r2
    %r6 = load i32, ptr @n
    %r7 = icmp slt i32 %r5,%r6
    br i1 %r7, label %L3, label %L4
L3:  ;
    %r8 = load i32, ptr %r2
    %r9 = getelementptr i32, ptr %r1, i32 %r8
    %r10 = load i32, ptr %r2
    %r11 = getelementptr i32, ptr %r0, i32 %r10
    %r12 = load i32, ptr %r11
    store i32 %r12, ptr %r9
    %r13 = load i32, ptr %r2
    %r14 = add i32 1,0
    %r15 = add i32 %r13,%r14
    store i32 %r15, ptr %r2
    br label %L2
L4:  ;
    %r16 = add i32 0,0
    ret i32 %r16
}
define i32 @calSum(ptr %r0,i32 %r1)
{
L0:  ;
    %r6 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r1, ptr %r2
    br label %L1
L1:  ;
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r5 = add i32 0,0
    store i32 %r5, ptr %r3
    %r7 = add i32 0,0
    store i32 %r7, ptr %r6
    %r8 = add i32 0,0
    store i32 %r8, ptr %r6
    br label %L2
L2:  ;
    %r9 = load i32, ptr %r6
    %r10 = load i32, ptr @n
    %r11 = icmp slt i32 %r9,%r10
    br i1 %r11, label %L3, label %L4
L3:  ;
    %r12 = load i32, ptr %r3
    %r13 = load i32, ptr %r6
    %r14 = getelementptr i32, ptr %r0, i32 %r13
    %r15 = load i32, ptr %r14
    %r16 = add i32 %r12,%r15
    store i32 %r16, ptr %r3
    %r17 = load i32, ptr %r6
    %r18 = load i32, ptr %r2
    %r19 = srem i32 %r17,%r18
    %r20 = load i32, ptr %r2
    %r21 = add i32 1,0
    %r22 = sub i32 %r20,%r21
    %r23 = icmp ne i32 %r19,%r22
    br i1 %r23, label %L5, label %L6
L4:  ;
    %r34 = add i32 0,0
    ret i32 %r34
L5:  ;
    %r24 = load i32, ptr %r6
    %r25 = getelementptr i32, ptr %r0, i32 %r24
    %r26 = add i32 0,0
    store i32 %r26, ptr %r25
    br label %L7
L6:  ;
    %r27 = load i32, ptr %r6
    %r28 = getelementptr i32, ptr %r0, i32 %r27
    %r29 = load i32, ptr %r3
    store i32 %r29, ptr %r28
    %r30 = add i32 0,0
    store i32 %r30, ptr %r3
    br label %L7
L7:  ;
    %r31 = load i32, ptr %r6
    %r32 = add i32 1,0
    %r33 = add i32 %r31,%r32
    store i32 %r33, ptr %r6
    br label %L2
}
define i32 @avgPooling(ptr %r0,i32 %r1)
{
L0:  ;
    %r9 = alloca i32
    %r5 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r1, ptr %r2
    br label %L1
L1:  ;
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
    br label %L2
L2:  ;
    %r11 = load i32, ptr %r5
    %r12 = load i32, ptr @n
    %r13 = icmp slt i32 %r11,%r12
    br i1 %r13, label %L3, label %L4
L3:  ;
    %r14 = load i32, ptr %r5
    %r15 = load i32, ptr %r2
    %r16 = add i32 1,0
    %r17 = sub i32 %r15,%r16
    %r18 = icmp slt i32 %r14,%r17
    br i1 %r18, label %L5, label %L6
L4:  ;
    %r63 = load i32, ptr @n
    %r64 = load i32, ptr %r2
    %r65 = sub i32 %r63,%r64
    %r66 = add i32 1,0
    %r67 = add i32 %r65,%r66
    store i32 %r67, ptr %r5
    br label %L11
L5:  ;
    %r19 = load i32, ptr %r3
    %r20 = load i32, ptr %r5
    %r21 = getelementptr i32, ptr %r0, i32 %r20
    %r22 = load i32, ptr %r21
    %r23 = add i32 %r19,%r22
    store i32 %r23, ptr %r3
    br label %L7
L6:  ;
    %r24 = load i32, ptr %r5
    %r25 = load i32, ptr %r2
    %r26 = add i32 1,0
    %r27 = sub i32 %r25,%r26
    %r28 = icmp eq i32 %r24,%r27
    br i1 %r28, label %L8, label %L9
L7:  ;
    %r60 = load i32, ptr %r5
    %r61 = add i32 1,0
    %r62 = add i32 %r60,%r61
    store i32 %r62, ptr %r5
    br label %L2
L8:  ;
    %r29 = add i32 0,0
    %r30 = getelementptr i32, ptr %r0, i32 %r29
    %r31 = load i32, ptr %r30
    store i32 %r31, ptr %r9
    %r32 = add i32 0,0
    %r33 = getelementptr i32, ptr %r0, i32 %r32
    %r34 = load i32, ptr %r3
    %r35 = load i32, ptr %r2
    %r36 = sdiv i32 %r34,%r35
    store i32 %r36, ptr %r33
    br label %L10
L9:  ;
    %r37 = load i32, ptr %r3
    %r38 = load i32, ptr %r5
    %r39 = getelementptr i32, ptr %r0, i32 %r38
    %r40 = load i32, ptr %r39
    %r41 = add i32 %r37,%r40
    %r42 = load i32, ptr %r9
    %r43 = sub i32 %r41,%r42
    store i32 %r43, ptr %r3
    %r44 = load i32, ptr %r5
    %r45 = load i32, ptr %r2
    %r46 = sub i32 %r44,%r45
    %r47 = add i32 1,0
    %r48 = add i32 %r46,%r47
    %r49 = getelementptr i32, ptr %r0, i32 %r48
    %r50 = load i32, ptr %r49
    store i32 %r50, ptr %r9
    %r51 = load i32, ptr %r5
    %r52 = load i32, ptr %r2
    %r53 = sub i32 %r51,%r52
    %r54 = add i32 1,0
    %r55 = add i32 %r53,%r54
    %r56 = getelementptr i32, ptr %r0, i32 %r55
    %r57 = load i32, ptr %r3
    %r58 = load i32, ptr %r2
    %r59 = sdiv i32 %r57,%r58
    store i32 %r59, ptr %r56
    br label %L10
L10:  ;
    br label %L7
L11:  ;
    %r68 = load i32, ptr %r5
    %r69 = load i32, ptr @n
    %r70 = icmp slt i32 %r68,%r69
    br i1 %r70, label %L12, label %L13
L12:  ;
    %r71 = load i32, ptr %r5
    %r72 = getelementptr i32, ptr %r0, i32 %r71
    %r73 = add i32 0,0
    store i32 %r73, ptr %r72
    %r74 = load i32, ptr %r5
    %r75 = add i32 1,0
    %r76 = add i32 %r74,%r75
    store i32 %r76, ptr %r5
    br label %L11
L13:  ;
    %r77 = add i32 0,0
    ret i32 %r77
}
define i32 @main()
{
L0:  ;
    %r106 = alloca i32
    %r99 = alloca i32
    %r2 = alloca [32 x i32]
    %r1 = alloca [32 x i32]
    br label %L1
L1:  ;
    %r0 = add i32 32,0
    store i32 %r0, ptr @n
    %r3 = add i32 0,0
    %r4 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r3
    %r5 = add i32 7,0
    store i32 %r5, ptr %r4
    %r6 = add i32 1,0
    %r7 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r6
    %r8 = add i32 23,0
    store i32 %r8, ptr %r7
    %r9 = add i32 2,0
    %r10 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r9
    %r11 = add i32 89,0
    store i32 %r11, ptr %r10
    %r12 = add i32 3,0
    %r13 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r12
    %r14 = add i32 26,0
    store i32 %r14, ptr %r13
    %r15 = add i32 4,0
    %r16 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r15
    %r17 = add i32 282,0
    store i32 %r17, ptr %r16
    %r18 = add i32 5,0
    %r19 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r18
    %r20 = add i32 254,0
    store i32 %r20, ptr %r19
    %r21 = add i32 6,0
    %r22 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r21
    %r23 = add i32 27,0
    store i32 %r23, ptr %r22
    %r24 = add i32 7,0
    %r25 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r24
    %r26 = add i32 5,0
    store i32 %r26, ptr %r25
    %r27 = add i32 8,0
    %r28 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r27
    %r29 = add i32 83,0
    store i32 %r29, ptr %r28
    %r30 = add i32 9,0
    %r31 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r30
    %r32 = add i32 273,0
    store i32 %r32, ptr %r31
    %r33 = add i32 10,0
    %r34 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r33
    %r35 = add i32 574,0
    store i32 %r35, ptr %r34
    %r36 = add i32 11,0
    %r37 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r36
    %r38 = add i32 905,0
    store i32 %r38, ptr %r37
    %r39 = add i32 12,0
    %r40 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r39
    %r41 = add i32 354,0
    store i32 %r41, ptr %r40
    %r42 = add i32 13,0
    %r43 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r42
    %r44 = add i32 657,0
    store i32 %r44, ptr %r43
    %r45 = add i32 14,0
    %r46 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r45
    %r47 = add i32 935,0
    store i32 %r47, ptr %r46
    %r48 = add i32 15,0
    %r49 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r48
    %r50 = add i32 264,0
    store i32 %r50, ptr %r49
    %r51 = add i32 16,0
    %r52 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r51
    %r53 = add i32 639,0
    store i32 %r53, ptr %r52
    %r54 = add i32 17,0
    %r55 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r54
    %r56 = add i32 459,0
    store i32 %r56, ptr %r55
    %r57 = add i32 18,0
    %r58 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r57
    %r59 = add i32 29,0
    store i32 %r59, ptr %r58
    %r60 = add i32 19,0
    %r61 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r60
    %r62 = add i32 68,0
    store i32 %r62, ptr %r61
    %r63 = add i32 20,0
    %r64 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r63
    %r65 = add i32 929,0
    store i32 %r65, ptr %r64
    %r66 = add i32 21,0
    %r67 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r66
    %r68 = add i32 756,0
    store i32 %r68, ptr %r67
    %r69 = add i32 22,0
    %r70 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r69
    %r71 = add i32 452,0
    store i32 %r71, ptr %r70
    %r72 = add i32 23,0
    %r73 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r72
    %r74 = add i32 279,0
    store i32 %r74, ptr %r73
    %r75 = add i32 24,0
    %r76 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r75
    %r77 = add i32 58,0
    store i32 %r77, ptr %r76
    %r78 = add i32 25,0
    %r79 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r78
    %r80 = add i32 87,0
    store i32 %r80, ptr %r79
    %r81 = add i32 26,0
    %r82 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r81
    %r83 = add i32 96,0
    store i32 %r83, ptr %r82
    %r84 = add i32 27,0
    %r85 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r84
    %r86 = add i32 36,0
    store i32 %r86, ptr %r85
    %r87 = add i32 28,0
    %r88 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r87
    %r89 = add i32 39,0
    store i32 %r89, ptr %r88
    %r90 = add i32 29,0
    %r91 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r90
    %r92 = add i32 28,0
    store i32 %r92, ptr %r91
    %r93 = add i32 30,0
    %r94 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r93
    %r95 = add i32 1,0
    store i32 %r95, ptr %r94
    %r96 = add i32 31,0
    %r97 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r96
    %r98 = add i32 290,0
    store i32 %r98, ptr %r97
    %r100 = add i32 0,0
    store i32 %r100, ptr %r99
    %r101 = getelementptr [32 x i32], ptr %r1, i32 0
    %r102 = getelementptr [32 x i32], ptr %r2, i32 0
    %r103 = call i32 @arrCopy(ptr %r101,ptr %r102)
    store i32 %r103, ptr %r99
    %r104 = getelementptr [32 x i32], ptr %r2, i32 0
    %r105 = call i32 @revert(ptr %r104)
    store i32 %r105, ptr %r99
    %r107 = add i32 0,0
    store i32 %r107, ptr %r106
    %r108 = add i32 0,0
    store i32 %r108, ptr %r106
    br label %L2
L2:  ;
    %r109 = load i32, ptr %r106
    %r110 = add i32 32,0
    %r111 = icmp slt i32 %r109,%r110
    br i1 %r111, label %L3, label %L4
L3:  ;
    %r112 = load i32, ptr %r106
    %r113 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r112
    %r114 = load i32, ptr %r113
    store i32 %r114, ptr %r99
    %r115 = load i32, ptr %r99
    call void @putint(i32 %r115)
    %r116 = load i32, ptr %r106
    %r117 = add i32 1,0
    %r118 = add i32 %r116,%r117
    store i32 %r118, ptr %r106
    br label %L2
L4:  ;
    %r119 = getelementptr [32 x i32], ptr %r2, i32 0
    %r120 = call i32 @bubblesort(ptr %r119)
    store i32 %r120, ptr %r99
    %r121 = add i32 0,0
    store i32 %r121, ptr %r106
    br label %L5
L5:  ;
    %r122 = load i32, ptr %r106
    %r123 = add i32 32,0
    %r124 = icmp slt i32 %r122,%r123
    br i1 %r124, label %L6, label %L7
L6:  ;
    %r125 = load i32, ptr %r106
    %r126 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r125
    %r127 = load i32, ptr %r126
    store i32 %r127, ptr %r99
    %r128 = load i32, ptr %r99
    call void @putint(i32 %r128)
    %r129 = load i32, ptr %r106
    %r130 = add i32 1,0
    %r131 = add i32 %r129,%r130
    store i32 %r131, ptr %r106
    br label %L5
L7:  ;
    %r132 = getelementptr [32 x i32], ptr %r2, i32 0
    %r133 = call i32 @getMid(ptr %r132)
    store i32 %r133, ptr %r99
    %r134 = load i32, ptr %r99
    call void @putint(i32 %r134)
    %r135 = getelementptr [32 x i32], ptr %r2, i32 0
    %r136 = call i32 @getMost(ptr %r135)
    store i32 %r136, ptr %r99
    %r137 = load i32, ptr %r99
    call void @putint(i32 %r137)
    %r138 = getelementptr [32 x i32], ptr %r1, i32 0
    %r139 = getelementptr [32 x i32], ptr %r2, i32 0
    %r140 = call i32 @arrCopy(ptr %r138,ptr %r139)
    store i32 %r140, ptr %r99
    %r141 = getelementptr [32 x i32], ptr %r2, i32 0
    %r142 = call i32 @bubblesort(ptr %r141)
    store i32 %r142, ptr %r99
    %r143 = add i32 0,0
    store i32 %r143, ptr %r106
    br label %L8
L8:  ;
    %r144 = load i32, ptr %r106
    %r145 = add i32 32,0
    %r146 = icmp slt i32 %r144,%r145
    br i1 %r146, label %L9, label %L10
L9:  ;
    %r147 = load i32, ptr %r106
    %r148 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r147
    %r149 = load i32, ptr %r148
    store i32 %r149, ptr %r99
    %r150 = load i32, ptr %r99
    call void @putint(i32 %r150)
    %r151 = load i32, ptr %r106
    %r152 = add i32 1,0
    %r153 = add i32 %r151,%r152
    store i32 %r153, ptr %r106
    br label %L8
L10:  ;
    %r154 = getelementptr [32 x i32], ptr %r1, i32 0
    %r155 = getelementptr [32 x i32], ptr %r2, i32 0
    %r156 = call i32 @arrCopy(ptr %r154,ptr %r155)
    store i32 %r156, ptr %r99
    %r157 = getelementptr [32 x i32], ptr %r2, i32 0
    %r158 = call i32 @insertsort(ptr %r157)
    store i32 %r158, ptr %r99
    %r159 = add i32 0,0
    store i32 %r159, ptr %r106
    br label %L11
L11:  ;
    %r160 = load i32, ptr %r106
    %r161 = add i32 32,0
    %r162 = icmp slt i32 %r160,%r161
    br i1 %r162, label %L12, label %L13
L12:  ;
    %r163 = load i32, ptr %r106
    %r164 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r163
    %r165 = load i32, ptr %r164
    store i32 %r165, ptr %r99
    %r166 = load i32, ptr %r99
    call void @putint(i32 %r166)
    %r167 = load i32, ptr %r106
    %r168 = add i32 1,0
    %r169 = add i32 %r167,%r168
    store i32 %r169, ptr %r106
    br label %L11
L13:  ;
    %r170 = getelementptr [32 x i32], ptr %r1, i32 0
    %r171 = getelementptr [32 x i32], ptr %r2, i32 0
    %r172 = call i32 @arrCopy(ptr %r170,ptr %r171)
    store i32 %r172, ptr %r99
    %r173 = add i32 0,0
    store i32 %r173, ptr %r106
    %r174 = add i32 31,0
    store i32 %r174, ptr %r99
    %r175 = getelementptr [32 x i32], ptr %r2, i32 0
    %r176 = load i32, ptr %r106
    %r177 = load i32, ptr %r99
    %r178 = call i32 @QuickSort(ptr %r175,i32 %r176,i32 %r177)
    store i32 %r178, ptr %r99
    br label %L14
L14:  ;
    %r179 = load i32, ptr %r106
    %r180 = add i32 32,0
    %r181 = icmp slt i32 %r179,%r180
    br i1 %r181, label %L15, label %L16
L15:  ;
    %r182 = load i32, ptr %r106
    %r183 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r182
    %r184 = load i32, ptr %r183
    store i32 %r184, ptr %r99
    %r185 = load i32, ptr %r99
    call void @putint(i32 %r185)
    %r186 = load i32, ptr %r106
    %r187 = add i32 1,0
    %r188 = add i32 %r186,%r187
    store i32 %r188, ptr %r106
    br label %L14
L16:  ;
    %r189 = getelementptr [32 x i32], ptr %r1, i32 0
    %r190 = getelementptr [32 x i32], ptr %r2, i32 0
    %r191 = call i32 @arrCopy(ptr %r189,ptr %r190)
    store i32 %r191, ptr %r99
    %r192 = getelementptr [32 x i32], ptr %r2, i32 0
    %r193 = add i32 4,0
    %r194 = call i32 @calSum(ptr %r192,i32 %r193)
    store i32 %r194, ptr %r99
    %r195 = add i32 0,0
    store i32 %r195, ptr %r106
    br label %L17
L17:  ;
    %r196 = load i32, ptr %r106
    %r197 = add i32 32,0
    %r198 = icmp slt i32 %r196,%r197
    br i1 %r198, label %L18, label %L19
L18:  ;
    %r199 = load i32, ptr %r106
    %r200 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r199
    %r201 = load i32, ptr %r200
    store i32 %r201, ptr %r99
    %r202 = load i32, ptr %r99
    call void @putint(i32 %r202)
    %r203 = load i32, ptr %r106
    %r204 = add i32 1,0
    %r205 = add i32 %r203,%r204
    store i32 %r205, ptr %r106
    br label %L17
L19:  ;
    %r206 = getelementptr [32 x i32], ptr %r1, i32 0
    %r207 = getelementptr [32 x i32], ptr %r2, i32 0
    %r208 = call i32 @arrCopy(ptr %r206,ptr %r207)
    store i32 %r208, ptr %r99
    %r209 = getelementptr [32 x i32], ptr %r2, i32 0
    %r210 = add i32 3,0
    %r211 = call i32 @avgPooling(ptr %r209,i32 %r210)
    store i32 %r211, ptr %r99
    %r212 = add i32 0,0
    store i32 %r212, ptr %r106
    br label %L20
L20:  ;
    %r213 = load i32, ptr %r106
    %r214 = add i32 32,0
    %r215 = icmp slt i32 %r213,%r214
    br i1 %r215, label %L21, label %L22
L21:  ;
    %r216 = load i32, ptr %r106
    %r217 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r216
    %r218 = load i32, ptr %r217
    store i32 %r218, ptr %r99
    %r219 = load i32, ptr %r99
    call void @putint(i32 %r219)
    %r220 = load i32, ptr %r106
    %r221 = add i32 1,0
    %r222 = add i32 %r220,%r221
    store i32 %r222, ptr %r106
    br label %L20
L22:  ;
    %r223 = add i32 0,0
    ret i32 %r223
}
