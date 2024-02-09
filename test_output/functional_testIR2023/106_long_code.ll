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
L0:
    %r26 = alloca i32
    %r2 = alloca i32
    %r1 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r1
    store i32 0, ptr %r2
    %r3 = add i32 0,0
    store i32 %r3, ptr %r1
    br label %L2
L2:
    %r4 = load i32, ptr %r1
    %r5 = load i32, ptr @n
    %r6 = add i32 1,0
    %r7 = sub i32 %r5,%r6
    %r8 = icmp slt i32 %r4,%r7
    br i1 %r8, label %L3, label %L4
L3:
    %r9 = add i32 0,0
    store i32 %r9, ptr %r2
    br label %L5
L4:
    %r48 = add i32 0,0
    ret i32 %r48
L5:
    %r10 = load i32, ptr %r2
    %r11 = load i32, ptr @n
    %r12 = load i32, ptr %r1
    %r13 = sub i32 %r11,%r12
    %r14 = add i32 1,0
    %r15 = sub i32 %r13,%r14
    %r16 = icmp slt i32 %r10,%r15
    br i1 %r16, label %L6, label %L7
L6:
    %r17 = load i32, ptr %r2
    %r18 = getelementptr i32, ptr %r0, i32 %r17
    %r19 = load i32, ptr %r18
    %r20 = load i32, ptr %r2
    %r21 = add i32 1,0
    %r22 = add i32 %r20,%r21
    %r23 = getelementptr i32, ptr %r0, i32 %r22
    %r24 = load i32, ptr %r23
    %r25 = icmp sgt i32 %r19,%r24
    br i1 %r25, label %L8, label %L9
L7:
    %r45 = load i32, ptr %r1
    %r46 = add i32 1,0
    %r47 = add i32 %r45,%r46
    store i32 %r47, ptr %r1
    br label %L2
L8:
    store i32 0, ptr %r26
    %r27 = load i32, ptr %r2
    %r28 = add i32 1,0
    %r29 = add i32 %r27,%r28
    %r30 = getelementptr i32, ptr %r0, i32 %r29
    %r31 = load i32, ptr %r30
    store i32 %r31, ptr %r26
    %r32 = load i32, ptr %r2
    %r33 = add i32 1,0
    %r34 = add i32 %r32,%r33
    %r35 = getelementptr i32, ptr %r0, i32 %r34
    %r36 = load i32, ptr %r2
    %r37 = getelementptr i32, ptr %r0, i32 %r36
    %r38 = load i32, ptr %r37
    store i32 %r38, ptr %r35
    %r39 = load i32, ptr %r2
    %r40 = getelementptr i32, ptr %r0, i32 %r39
    %r41 = load i32, ptr %r26
    store i32 %r41, ptr %r40
    br label %L9
L9:
    %r42 = load i32, ptr %r2
    %r43 = add i32 1,0
    %r44 = add i32 %r42,%r43
    store i32 %r44, ptr %r2
    br label %L5
}
define i32 @getMost(ptr %r0)
{
L0:
    %r20 = alloca i32
    %r15 = alloca i32
    %r14 = alloca i32
    %r2 = alloca i32
    %r1 = alloca [1000 x i32]
    br label %L1
L1:
    store i32 0, ptr %r2
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    br label %L2
L2:
    %r4 = load i32, ptr %r2
    %r5 = add i32 1000,0
    %r6 = icmp slt i32 %r4,%r5
    br i1 %r6, label %L3, label %L4
L3:
    %r7 = load i32, ptr %r2
    %r8 = getelementptr [1000 x i32], ptr %r1, i32 0, i32 %r7
    %r9 = add i32 0,0
    store i32 %r9, ptr %r8
    %r10 = load i32, ptr %r2
    %r11 = add i32 1,0
    %r12 = add i32 %r10,%r11
    store i32 %r12, ptr %r2
    br label %L2
L4:
    %r13 = add i32 0,0
    store i32 %r13, ptr %r2
    store i32 0, ptr %r14
    store i32 0, ptr %r15
    %r16 = add i32 0,0
    store i32 %r16, ptr %r14
    br label %L5
L5:
    %r17 = load i32, ptr %r2
    %r18 = load i32, ptr @n
    %r19 = icmp slt i32 %r17,%r18
    br i1 %r19, label %L6, label %L7
L6:
    store i32 0, ptr %r20
    %r21 = load i32, ptr %r2
    %r22 = getelementptr i32, ptr %r0, i32 %r21
    %r23 = load i32, ptr %r22
    store i32 %r23, ptr %r20
    %r24 = load i32, ptr %r20
    %r25 = getelementptr [1000 x i32], ptr %r1, i32 0, i32 %r24
    %r26 = load i32, ptr %r20
    %r27 = getelementptr [1000 x i32], ptr %r1, i32 0, i32 %r26
    %r28 = load i32, ptr %r27
    %r29 = add i32 1,0
    %r30 = add i32 %r28,%r29
    store i32 %r30, ptr %r25
    %r31 = load i32, ptr %r20
    %r32 = getelementptr [1000 x i32], ptr %r1, i32 0, i32 %r31
    %r33 = load i32, ptr %r32
    %r34 = load i32, ptr %r14
    %r35 = icmp sgt i32 %r33,%r34
    br i1 %r35, label %L8, label %L9
L7:
    %r43 = load i32, ptr %r15
    ret i32 %r43
L8:
    %r36 = load i32, ptr %r20
    %r37 = getelementptr [1000 x i32], ptr %r1, i32 0, i32 %r36
    %r38 = load i32, ptr %r37
    store i32 %r38, ptr %r14
    %r39 = load i32, ptr %r20
    store i32 %r39, ptr %r15
    br label %L9
L9:
    %r40 = load i32, ptr %r2
    %r41 = add i32 1,0
    %r42 = add i32 %r40,%r41
    store i32 %r42, ptr %r2
    br label %L5
}
define i32 @QuickSort(ptr %r0,i32 %r1,i32 %r2)
{
L0:
    %r68 = alloca i32
    %r12 = alloca i32
    %r10 = alloca i32
    %r8 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    store i32 %r2, ptr %r4
    br label %L1
L1:
    %r5 = load i32, ptr %r3
    %r6 = load i32, ptr %r4
    %r7 = icmp slt i32 %r5,%r6
    br i1 %r7, label %L2, label %L3
L2:
    store i32 0, ptr %r8
    %r9 = load i32, ptr %r3
    store i32 %r9, ptr %r8
    store i32 0, ptr %r10
    %r11 = load i32, ptr %r4
    store i32 %r11, ptr %r10
    store i32 0, ptr %r12
    %r13 = load i32, ptr %r3
    %r14 = getelementptr i32, ptr %r0, i32 %r13
    %r15 = load i32, ptr %r14
    store i32 %r15, ptr %r12
    br label %L4
L3:
    %r83 = add i32 0,0
    ret i32 %r83
L4:
    %r16 = load i32, ptr %r8
    %r17 = load i32, ptr %r10
    %r18 = icmp slt i32 %r16,%r17
    br i1 %r18, label %L5, label %L6
L5:
    br label %L7
L6:
    %r65 = load i32, ptr %r8
    %r66 = getelementptr i32, ptr %r0, i32 %r65
    %r67 = load i32, ptr %r12
    store i32 %r67, ptr %r66
    store i32 0, ptr %r68
    %r69 = load i32, ptr %r8
    %r70 = add i32 1,0
    %r71 = sub i32 %r69,%r70
    store i32 %r71, ptr %r68
    %r72 = getelementptr i32, ptr %r0
    %r73 = load i32, ptr %r3
    %r74 = load i32, ptr %r68
    %r75 = call i32 @QuickSort(ptr %r72,i32 %r73,i32 %r74)
    store i32 %r75, ptr %r68
    %r76 = load i32, ptr %r8
    %r77 = add i32 1,0
    %r78 = add i32 %r76,%r77
    store i32 %r78, ptr %r68
    %r79 = getelementptr i32, ptr %r0
    %r80 = load i32, ptr %r68
    %r81 = load i32, ptr %r4
    %r82 = call i32 @QuickSort(ptr %r79,i32 %r80,i32 %r81)
    store i32 %r82, ptr %r68
    br label %L3
L7:
    %r19 = load i32, ptr %r8
    %r20 = load i32, ptr %r10
    %r21 = icmp slt i32 %r19,%r20
    br i1 %r21, label %L10, label %L9
L8:
    %r29 = load i32, ptr %r10
    %r30 = add i32 1,0
    %r31 = sub i32 %r29,%r30
    store i32 %r31, ptr %r10
    br label %L7
L9:
    %r32 = load i32, ptr %r8
    %r33 = load i32, ptr %r10
    %r34 = icmp slt i32 %r32,%r33
    br i1 %r34, label %L11, label %L12
L10:
    %r22 = load i32, ptr %r10
    %r23 = getelementptr i32, ptr %r0, i32 %r22
    %r24 = load i32, ptr %r23
    %r25 = load i32, ptr %r12
    %r26 = add i32 1,0
    %r27 = sub i32 %r25,%r26
    %r28 = icmp sgt i32 %r24,%r27
    br i1 %r28, label %L8, label %L9
L11:
    %r35 = load i32, ptr %r8
    %r36 = getelementptr i32, ptr %r0, i32 %r35
    %r37 = load i32, ptr %r10
    %r38 = getelementptr i32, ptr %r0, i32 %r37
    %r39 = load i32, ptr %r38
    store i32 %r39, ptr %r36
    %r40 = load i32, ptr %r8
    %r41 = add i32 1,0
    %r42 = add i32 %r40,%r41
    store i32 %r42, ptr %r8
    br label %L12
L12:
    br label %L13
L13:
    %r43 = load i32, ptr %r8
    %r44 = load i32, ptr %r10
    %r45 = icmp slt i32 %r43,%r44
    br i1 %r45, label %L16, label %L15
L14:
    %r51 = load i32, ptr %r8
    %r52 = add i32 1,0
    %r53 = add i32 %r51,%r52
    store i32 %r53, ptr %r8
    br label %L13
L15:
    %r54 = load i32, ptr %r8
    %r55 = load i32, ptr %r10
    %r56 = icmp slt i32 %r54,%r55
    br i1 %r56, label %L17, label %L18
L16:
    %r46 = load i32, ptr %r8
    %r47 = getelementptr i32, ptr %r0, i32 %r46
    %r48 = load i32, ptr %r47
    %r49 = load i32, ptr %r12
    %r50 = icmp slt i32 %r48,%r49
    br i1 %r50, label %L14, label %L15
L17:
    %r57 = load i32, ptr %r10
    %r58 = getelementptr i32, ptr %r0, i32 %r57
    %r59 = load i32, ptr %r8
    %r60 = getelementptr i32, ptr %r0, i32 %r59
    %r61 = load i32, ptr %r60
    store i32 %r61, ptr %r58
    %r62 = load i32, ptr %r10
    %r63 = add i32 1,0
    %r64 = sub i32 %r62,%r63
    store i32 %r64, ptr %r10
    br label %L18
L18:
    br label %L4
}
define i32 @insertsort(ptr %r0)
{
L0:
    %r10 = alloca i32
    %r6 = alloca i32
    %r1 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r1
    %r2 = add i32 1,0
    store i32 %r2, ptr %r1
    br label %L2
L2:
    %r3 = load i32, ptr %r1
    %r4 = load i32, ptr @n
    %r5 = icmp slt i32 %r3,%r4
    br i1 %r5, label %L3, label %L4
L3:
    store i32 0, ptr %r6
    %r7 = load i32, ptr %r1
    %r8 = getelementptr i32, ptr %r0, i32 %r7
    %r9 = load i32, ptr %r8
    store i32 %r9, ptr %r6
    store i32 0, ptr %r10
    %r11 = load i32, ptr %r1
    %r12 = add i32 1,0
    %r13 = sub i32 %r11,%r12
    store i32 %r13, ptr %r10
    br label %L5
L4:
    %r41 = add i32 0,0
    ret i32 %r41
L5:
    %r14 = load i32, ptr %r10
    %r15 = add i32 1,0
    %r16 = sub i32 0,%r15
    %r17 = icmp sgt i32 %r14,%r16
    br i1 %r17, label %L8, label %L7
L6:
    %r23 = load i32, ptr %r10
    %r24 = add i32 1,0
    %r25 = add i32 %r23,%r24
    %r26 = getelementptr i32, ptr %r0, i32 %r25
    %r27 = load i32, ptr %r10
    %r28 = getelementptr i32, ptr %r0, i32 %r27
    %r29 = load i32, ptr %r28
    store i32 %r29, ptr %r26
    %r30 = load i32, ptr %r10
    %r31 = add i32 1,0
    %r32 = sub i32 %r30,%r31
    store i32 %r32, ptr %r10
    br label %L5
L7:
    %r33 = load i32, ptr %r10
    %r34 = add i32 1,0
    %r35 = add i32 %r33,%r34
    %r36 = getelementptr i32, ptr %r0, i32 %r35
    %r37 = load i32, ptr %r6
    store i32 %r37, ptr %r36
    %r38 = load i32, ptr %r1
    %r39 = add i32 1,0
    %r40 = add i32 %r38,%r39
    store i32 %r40, ptr %r1
    br label %L2
L8:
    %r18 = load i32, ptr %r6
    %r19 = load i32, ptr %r10
    %r20 = getelementptr i32, ptr %r0, i32 %r19
    %r21 = load i32, ptr %r20
    %r22 = icmp slt i32 %r18,%r21
    br i1 %r22, label %L6, label %L7
}
define i32 @calSum(ptr %r0,i32 %r1)
{
L0:
    %r5 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r1, ptr %r2
    br label %L1
L1:
    store i32 0, ptr %r3
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    store i32 0, ptr %r5
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    br label %L2
L2:
    %r7 = load i32, ptr %r5
    %r8 = load i32, ptr @n
    %r9 = icmp slt i32 %r7,%r8
    br i1 %r9, label %L3, label %L4
L3:
    %r10 = load i32, ptr %r3
    %r11 = load i32, ptr %r5
    %r12 = getelementptr i32, ptr %r0, i32 %r11
    %r13 = load i32, ptr %r12
    %r14 = add i32 %r10,%r13
    store i32 %r14, ptr %r3
    %r15 = load i32, ptr %r5
    %r16 = load i32, ptr %r2
    %r17 = srem i32 %r15,%r16
    %r18 = load i32, ptr %r2
    %r19 = add i32 1,0
    %r20 = sub i32 %r18,%r19
    %r21 = icmp ne i32 %r17,%r20
    br i1 %r21, label %L5, label %L6
L4:
    %r32 = add i32 0,0
    ret i32 %r32
L5:
    %r22 = load i32, ptr %r5
    %r23 = getelementptr i32, ptr %r0, i32 %r22
    %r24 = add i32 0,0
    store i32 %r24, ptr %r23
    br label %L7
L6:
    %r25 = load i32, ptr %r5
    %r26 = getelementptr i32, ptr %r0, i32 %r25
    %r27 = load i32, ptr %r3
    store i32 %r27, ptr %r26
    %r28 = add i32 0,0
    store i32 %r28, ptr %r3
    br label %L7
L7:
    %r29 = load i32, ptr %r5
    %r30 = add i32 1,0
    %r31 = add i32 %r29,%r30
    store i32 %r31, ptr %r5
    br label %L2
}
define i32 @arrCopy(ptr %r0,ptr %r1)
{
L0:
    %r2 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r2
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    br label %L2
L2:
    %r4 = load i32, ptr %r2
    %r5 = load i32, ptr @n
    %r6 = icmp slt i32 %r4,%r5
    br i1 %r6, label %L3, label %L4
L3:
    %r7 = load i32, ptr %r2
    %r8 = getelementptr i32, ptr %r1, i32 %r7
    %r9 = load i32, ptr %r2
    %r10 = getelementptr i32, ptr %r0, i32 %r9
    %r11 = load i32, ptr %r10
    store i32 %r11, ptr %r8
    %r12 = load i32, ptr %r2
    %r13 = add i32 1,0
    %r14 = add i32 %r12,%r13
    store i32 %r14, ptr %r2
    br label %L2
L4:
    %r15 = add i32 0,0
    ret i32 %r15
}
define i32 @getMid(ptr %r0)
{
L0:
    %r1 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r1
    %r2 = load i32, ptr @n
    %r3 = add i32 2,0
    %r4 = srem i32 %r2,%r3
    %r5 = add i32 0,0
    %r6 = icmp eq i32 %r4,%r5
    br i1 %r6, label %L2, label %L3
L2:
    %r7 = load i32, ptr @n
    %r8 = add i32 2,0
    %r9 = sdiv i32 %r7,%r8
    store i32 %r9, ptr %r1
    %r10 = load i32, ptr %r1
    %r11 = getelementptr i32, ptr %r0, i32 %r10
    %r12 = load i32, ptr %r11
    %r13 = load i32, ptr %r1
    %r14 = add i32 1,0
    %r15 = sub i32 %r13,%r14
    %r16 = getelementptr i32, ptr %r0, i32 %r15
    %r17 = load i32, ptr %r16
    %r18 = add i32 %r12,%r17
    %r19 = add i32 2,0
    %r20 = sdiv i32 %r18,%r19
    ret i32 %r20
    br label %L4
L3:
    %r21 = load i32, ptr @n
    %r22 = add i32 2,0
    %r23 = sdiv i32 %r21,%r22
    store i32 %r23, ptr %r1
    %r24 = load i32, ptr %r1
    %r25 = getelementptr i32, ptr %r0, i32 %r24
    %r26 = load i32, ptr %r25
    ret i32 %r26
    br label %L4
L4:
    ret i32 0
}
define i32 @revert(ptr %r0)
{
L0:
    %r3 = alloca i32
    %r2 = alloca i32
    %r1 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r1
    store i32 0, ptr %r2
    store i32 0, ptr %r3
    %r4 = add i32 0,0
    store i32 %r4, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r3
    br label %L2
L2:
    %r6 = load i32, ptr %r2
    %r7 = load i32, ptr %r3
    %r8 = icmp slt i32 %r6,%r7
    br i1 %r8, label %L3, label %L4
L3:
    %r9 = load i32, ptr %r2
    %r10 = getelementptr i32, ptr %r0, i32 %r9
    %r11 = load i32, ptr %r10
    store i32 %r11, ptr %r1
    %r12 = load i32, ptr %r2
    %r13 = getelementptr i32, ptr %r0, i32 %r12
    %r14 = load i32, ptr %r3
    %r15 = getelementptr i32, ptr %r0, i32 %r14
    %r16 = load i32, ptr %r15
    store i32 %r16, ptr %r13
    %r17 = load i32, ptr %r3
    %r18 = getelementptr i32, ptr %r0, i32 %r17
    %r19 = load i32, ptr %r1
    store i32 %r19, ptr %r18
    %r20 = load i32, ptr %r2
    %r21 = add i32 1,0
    %r22 = add i32 %r20,%r21
    store i32 %r22, ptr %r2
    %r23 = load i32, ptr %r3
    %r24 = add i32 1,0
    %r25 = sub i32 %r23,%r24
    store i32 %r25, ptr %r3
    br label %L2
L4:
    %r26 = add i32 0,0
    ret i32 %r26
}
define i32 @avgPooling(ptr %r0,i32 %r1)
{
L0:
    %r7 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r1, ptr %r2
    br label %L1
L1:
    store i32 0, ptr %r3
    store i32 0, ptr %r4
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    %r6 = add i32 0,0
    store i32 %r6, ptr %r3
    store i32 0, ptr %r7
    br label %L2
L2:
    %r8 = load i32, ptr %r4
    %r9 = load i32, ptr @n
    %r10 = icmp slt i32 %r8,%r9
    br i1 %r10, label %L3, label %L4
L3:
    %r11 = load i32, ptr %r4
    %r12 = load i32, ptr %r2
    %r13 = add i32 1,0
    %r14 = sub i32 %r12,%r13
    %r15 = icmp slt i32 %r11,%r14
    br i1 %r15, label %L5, label %L6
L4:
    %r60 = load i32, ptr @n
    %r61 = load i32, ptr %r2
    %r62 = sub i32 %r60,%r61
    %r63 = add i32 1,0
    %r64 = add i32 %r62,%r63
    store i32 %r64, ptr %r4
    br label %L11
L5:
    %r16 = load i32, ptr %r3
    %r17 = load i32, ptr %r4
    %r18 = getelementptr i32, ptr %r0, i32 %r17
    %r19 = load i32, ptr %r18
    %r20 = add i32 %r16,%r19
    store i32 %r20, ptr %r3
    br label %L7
L6:
    %r21 = load i32, ptr %r4
    %r22 = load i32, ptr %r2
    %r23 = add i32 1,0
    %r24 = sub i32 %r22,%r23
    %r25 = icmp eq i32 %r21,%r24
    br i1 %r25, label %L8, label %L9
L7:
    %r57 = load i32, ptr %r4
    %r58 = add i32 1,0
    %r59 = add i32 %r57,%r58
    store i32 %r59, ptr %r4
    br label %L2
L8:
    %r26 = add i32 0,0
    %r27 = getelementptr i32, ptr %r0, i32 %r26
    %r28 = load i32, ptr %r27
    store i32 %r28, ptr %r7
    %r29 = add i32 0,0
    %r30 = getelementptr i32, ptr %r0, i32 %r29
    %r31 = load i32, ptr %r3
    %r32 = load i32, ptr %r2
    %r33 = sdiv i32 %r31,%r32
    store i32 %r33, ptr %r30
    br label %L10
L9:
    %r34 = load i32, ptr %r3
    %r35 = load i32, ptr %r4
    %r36 = getelementptr i32, ptr %r0, i32 %r35
    %r37 = load i32, ptr %r36
    %r38 = add i32 %r34,%r37
    %r39 = load i32, ptr %r7
    %r40 = sub i32 %r38,%r39
    store i32 %r40, ptr %r3
    %r41 = load i32, ptr %r4
    %r42 = load i32, ptr %r2
    %r43 = sub i32 %r41,%r42
    %r44 = add i32 1,0
    %r45 = add i32 %r43,%r44
    %r46 = getelementptr i32, ptr %r0, i32 %r45
    %r47 = load i32, ptr %r46
    store i32 %r47, ptr %r7
    %r48 = load i32, ptr %r4
    %r49 = load i32, ptr %r2
    %r50 = sub i32 %r48,%r49
    %r51 = add i32 1,0
    %r52 = add i32 %r50,%r51
    %r53 = getelementptr i32, ptr %r0, i32 %r52
    %r54 = load i32, ptr %r3
    %r55 = load i32, ptr %r2
    %r56 = sdiv i32 %r54,%r55
    store i32 %r56, ptr %r53
    br label %L10
L10:
    br label %L7
L11:
    %r65 = load i32, ptr %r4
    %r66 = load i32, ptr @n
    %r67 = icmp slt i32 %r65,%r66
    br i1 %r67, label %L12, label %L13
L12:
    %r68 = load i32, ptr %r4
    %r69 = getelementptr i32, ptr %r0, i32 %r68
    %r70 = add i32 0,0
    store i32 %r70, ptr %r69
    %r71 = load i32, ptr %r4
    %r72 = add i32 1,0
    %r73 = add i32 %r71,%r72
    store i32 %r73, ptr %r4
    br label %L11
L13:
    %r74 = add i32 0,0
    ret i32 %r74
}
define i32 @main()
{
L0:
    %r105 = alloca i32
    %r99 = alloca i32
    %r2 = alloca [32 x i32]
    %r1 = alloca [32 x i32]
    br label %L1
L1:
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
    store i32 0, ptr %r99
    %r100 = getelementptr [32 x i32], ptr %r1, i32 0
    %r101 = getelementptr [32 x i32], ptr %r2, i32 0
    %r102 = call i32 @arrCopy(ptr %r100,ptr %r101)
    store i32 %r102, ptr %r99
    %r103 = getelementptr [32 x i32], ptr %r2, i32 0
    %r104 = call i32 @revert(ptr %r103)
    store i32 %r104, ptr %r99
    store i32 0, ptr %r105
    %r106 = add i32 0,0
    store i32 %r106, ptr %r105
    br label %L2
L2:
    %r107 = load i32, ptr %r105
    %r108 = add i32 32,0
    %r109 = icmp slt i32 %r107,%r108
    br i1 %r109, label %L3, label %L4
L3:
    %r110 = load i32, ptr %r105
    %r111 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r110
    %r112 = load i32, ptr %r111
    store i32 %r112, ptr %r99
    %r113 = load i32, ptr %r99
    call void @putint(i32 %r113)
    %r114 = load i32, ptr %r105
    %r115 = add i32 1,0
    %r116 = add i32 %r114,%r115
    store i32 %r116, ptr %r105
    br label %L2
L4:
    %r117 = getelementptr [32 x i32], ptr %r2, i32 0
    %r118 = call i32 @bubblesort(ptr %r117)
    store i32 %r118, ptr %r99
    %r119 = add i32 0,0
    store i32 %r119, ptr %r105
    br label %L5
L5:
    %r120 = load i32, ptr %r105
    %r121 = add i32 32,0
    %r122 = icmp slt i32 %r120,%r121
    br i1 %r122, label %L6, label %L7
L6:
    %r123 = load i32, ptr %r105
    %r124 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r123
    %r125 = load i32, ptr %r124
    store i32 %r125, ptr %r99
    %r126 = load i32, ptr %r99
    call void @putint(i32 %r126)
    %r127 = load i32, ptr %r105
    %r128 = add i32 1,0
    %r129 = add i32 %r127,%r128
    store i32 %r129, ptr %r105
    br label %L5
L7:
    %r130 = getelementptr [32 x i32], ptr %r2, i32 0
    %r131 = call i32 @getMid(ptr %r130)
    store i32 %r131, ptr %r99
    %r132 = load i32, ptr %r99
    call void @putint(i32 %r132)
    %r133 = getelementptr [32 x i32], ptr %r2, i32 0
    %r134 = call i32 @getMost(ptr %r133)
    store i32 %r134, ptr %r99
    %r135 = load i32, ptr %r99
    call void @putint(i32 %r135)
    %r136 = getelementptr [32 x i32], ptr %r1, i32 0
    %r137 = getelementptr [32 x i32], ptr %r2, i32 0
    %r138 = call i32 @arrCopy(ptr %r136,ptr %r137)
    store i32 %r138, ptr %r99
    %r139 = getelementptr [32 x i32], ptr %r2, i32 0
    %r140 = call i32 @bubblesort(ptr %r139)
    store i32 %r140, ptr %r99
    %r141 = add i32 0,0
    store i32 %r141, ptr %r105
    br label %L8
L8:
    %r142 = load i32, ptr %r105
    %r143 = add i32 32,0
    %r144 = icmp slt i32 %r142,%r143
    br i1 %r144, label %L9, label %L10
L9:
    %r145 = load i32, ptr %r105
    %r146 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r145
    %r147 = load i32, ptr %r146
    store i32 %r147, ptr %r99
    %r148 = load i32, ptr %r99
    call void @putint(i32 %r148)
    %r149 = load i32, ptr %r105
    %r150 = add i32 1,0
    %r151 = add i32 %r149,%r150
    store i32 %r151, ptr %r105
    br label %L8
L10:
    %r152 = getelementptr [32 x i32], ptr %r1, i32 0
    %r153 = getelementptr [32 x i32], ptr %r2, i32 0
    %r154 = call i32 @arrCopy(ptr %r152,ptr %r153)
    store i32 %r154, ptr %r99
    %r155 = getelementptr [32 x i32], ptr %r2, i32 0
    %r156 = call i32 @insertsort(ptr %r155)
    store i32 %r156, ptr %r99
    %r157 = add i32 0,0
    store i32 %r157, ptr %r105
    br label %L11
L11:
    %r158 = load i32, ptr %r105
    %r159 = add i32 32,0
    %r160 = icmp slt i32 %r158,%r159
    br i1 %r160, label %L12, label %L13
L12:
    %r161 = load i32, ptr %r105
    %r162 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r161
    %r163 = load i32, ptr %r162
    store i32 %r163, ptr %r99
    %r164 = load i32, ptr %r99
    call void @putint(i32 %r164)
    %r165 = load i32, ptr %r105
    %r166 = add i32 1,0
    %r167 = add i32 %r165,%r166
    store i32 %r167, ptr %r105
    br label %L11
L13:
    %r168 = getelementptr [32 x i32], ptr %r1, i32 0
    %r169 = getelementptr [32 x i32], ptr %r2, i32 0
    %r170 = call i32 @arrCopy(ptr %r168,ptr %r169)
    store i32 %r170, ptr %r99
    %r171 = add i32 0,0
    store i32 %r171, ptr %r105
    %r172 = add i32 31,0
    store i32 %r172, ptr %r99
    %r173 = getelementptr [32 x i32], ptr %r2, i32 0
    %r174 = load i32, ptr %r105
    %r175 = load i32, ptr %r99
    %r176 = call i32 @QuickSort(ptr %r173,i32 %r174,i32 %r175)
    store i32 %r176, ptr %r99
    br label %L14
L14:
    %r177 = load i32, ptr %r105
    %r178 = add i32 32,0
    %r179 = icmp slt i32 %r177,%r178
    br i1 %r179, label %L15, label %L16
L15:
    %r180 = load i32, ptr %r105
    %r181 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r180
    %r182 = load i32, ptr %r181
    store i32 %r182, ptr %r99
    %r183 = load i32, ptr %r99
    call void @putint(i32 %r183)
    %r184 = load i32, ptr %r105
    %r185 = add i32 1,0
    %r186 = add i32 %r184,%r185
    store i32 %r186, ptr %r105
    br label %L14
L16:
    %r187 = getelementptr [32 x i32], ptr %r1, i32 0
    %r188 = getelementptr [32 x i32], ptr %r2, i32 0
    %r189 = call i32 @arrCopy(ptr %r187,ptr %r188)
    store i32 %r189, ptr %r99
    %r190 = getelementptr [32 x i32], ptr %r2, i32 0
    %r191 = add i32 4,0
    %r192 = call i32 @calSum(ptr %r190,i32 %r191)
    store i32 %r192, ptr %r99
    %r193 = add i32 0,0
    store i32 %r193, ptr %r105
    br label %L17
L17:
    %r194 = load i32, ptr %r105
    %r195 = add i32 32,0
    %r196 = icmp slt i32 %r194,%r195
    br i1 %r196, label %L18, label %L19
L18:
    %r197 = load i32, ptr %r105
    %r198 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r197
    %r199 = load i32, ptr %r198
    store i32 %r199, ptr %r99
    %r200 = load i32, ptr %r99
    call void @putint(i32 %r200)
    %r201 = load i32, ptr %r105
    %r202 = add i32 1,0
    %r203 = add i32 %r201,%r202
    store i32 %r203, ptr %r105
    br label %L17
L19:
    %r204 = getelementptr [32 x i32], ptr %r1, i32 0
    %r205 = getelementptr [32 x i32], ptr %r2, i32 0
    %r206 = call i32 @arrCopy(ptr %r204,ptr %r205)
    store i32 %r206, ptr %r99
    %r207 = getelementptr [32 x i32], ptr %r2, i32 0
    %r208 = add i32 3,0
    %r209 = call i32 @avgPooling(ptr %r207,i32 %r208)
    store i32 %r209, ptr %r99
    %r210 = add i32 0,0
    store i32 %r210, ptr %r105
    br label %L20
L20:
    %r211 = load i32, ptr %r105
    %r212 = add i32 32,0
    %r213 = icmp slt i32 %r211,%r212
    br i1 %r213, label %L21, label %L22
L21:
    %r214 = load i32, ptr %r105
    %r215 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r214
    %r216 = load i32, ptr %r215
    store i32 %r216, ptr %r99
    %r217 = load i32, ptr %r99
    call void @putint(i32 %r217)
    %r218 = load i32, ptr %r105
    %r219 = add i32 1,0
    %r220 = add i32 %r218,%r219
    store i32 %r220, ptr %r105
    br label %L20
L22:
    %r221 = add i32 0,0
    ret i32 %r221
}
