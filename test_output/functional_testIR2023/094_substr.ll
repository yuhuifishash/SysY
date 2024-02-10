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
define i32 @max_sum_nonadjacent(ptr %r0,i32 %r1)
{
L0:
    %r18 = alloca i32
    %r3 = alloca [16 x i32]
    %r2 = alloca i32
    store i32 %r1, ptr %r2
    br label %L1
L1:
    call void @llvm.memset.p0.i32(ptr %r3,i8 0,i32 64,i1 0)
    %r4 = add i32 0,0
    %r5 = getelementptr [16 x i32], ptr %r3, i32 0, i32 %r4
    %r6 = add i32 0,0
    %r7 = getelementptr i32, ptr %r0, i32 %r6
    %r8 = load i32, ptr %r7
    store i32 %r8, ptr %r5
    %r9 = add i32 1,0
    %r10 = getelementptr [16 x i32], ptr %r3, i32 0, i32 %r9
    %r11 = add i32 0,0
    %r12 = getelementptr i32, ptr %r0, i32 %r11
    %r13 = load i32, ptr %r12
    %r14 = add i32 1,0
    %r15 = getelementptr i32, ptr %r0, i32 %r14
    %r16 = load i32, ptr %r15
    %r17 = call i32 @MAX(i32 %r13,i32 %r16)
    store i32 %r17, ptr %r10
    %r19 = add i32 2,0
    store i32 %r19, ptr %r18
    br label %L2
L2:
    %r20 = load i32, ptr %r18
    %r21 = load i32, ptr %r2
    %r22 = icmp slt i32 %r20,%r21
    br i1 %r22, label %L3, label %L4
L3:
    %r23 = load i32, ptr %r18
    %r24 = getelementptr [16 x i32], ptr %r3, i32 0, i32 %r23
    %r25 = load i32, ptr %r18
    %r26 = add i32 2,0
    %r27 = sub i32 %r25,%r26
    %r28 = getelementptr [16 x i32], ptr %r3, i32 0, i32 %r27
    %r29 = load i32, ptr %r28
    %r30 = load i32, ptr %r18
    %r31 = getelementptr i32, ptr %r0, i32 %r30
    %r32 = load i32, ptr %r31
    %r33 = add i32 %r29,%r32
    %r34 = load i32, ptr %r18
    %r35 = add i32 1,0
    %r36 = sub i32 %r34,%r35
    %r37 = getelementptr [16 x i32], ptr %r3, i32 0, i32 %r36
    %r38 = load i32, ptr %r37
    %r39 = call i32 @MAX(i32 %r33,i32 %r38)
    store i32 %r39, ptr %r24
    %r40 = load i32, ptr %r18
    %r41 = add i32 1,0
    %r42 = add i32 %r40,%r41
    store i32 %r42, ptr %r18
    br label %L2
L4:
    %r43 = load i32, ptr %r2
    %r44 = add i32 1,0
    %r45 = sub i32 %r43,%r44
    %r46 = getelementptr [16 x i32], ptr %r3, i32 0, i32 %r45
    %r47 = load i32, ptr %r46
    ret i32 %r47
}
define i32 @MAX(i32 %r0,i32 %r1)
{
L0:
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r4 = load i32, ptr %r2
    %r5 = load i32, ptr %r3
    %r6 = icmp eq i32 %r4,%r5
    br i1 %r6, label %L2, label %L3
L2:
    %r7 = load i32, ptr %r2
    ret i32 %r7
L3:
    %r8 = load i32, ptr %r2
    %r9 = load i32, ptr %r3
    %r10 = icmp sgt i32 %r8,%r9
    br i1 %r10, label %L5, label %L6
L5:
    %r11 = load i32, ptr %r2
    ret i32 %r11
L6:
    %r12 = load i32, ptr %r3
    ret i32 %r12
}
define i32 @longest_common_subseq(ptr %r0,i32 %r1,ptr %r2,i32 %r3)
{
L0:
    %r8 = alloca i32
    %r7 = alloca i32
    %r6 = alloca [16 x [16 x i32]]
    %r5 = alloca i32
    %r4 = alloca i32
    store i32 %r1, ptr %r4
    store i32 %r3, ptr %r5
    br label %L1
L1:
    call void @llvm.memset.p0.i32(ptr %r6,i8 0,i32 1024,i1 0)
    store i32 0, ptr %r7
    store i32 0, ptr %r8
    %r9 = add i32 1,0
    store i32 %r9, ptr %r7
    br label %L2
L2:
    %r10 = load i32, ptr %r7
    %r11 = load i32, ptr %r4
    %r12 = icmp sle i32 %r10,%r11
    br i1 %r12, label %L3, label %L4
L3:
    %r13 = add i32 1,0
    store i32 %r13, ptr %r8
    br label %L5
L4:
    %r63 = load i32, ptr %r4
    %r64 = load i32, ptr %r5
    %r65 = getelementptr [16 x [16 x i32]], ptr %r6, i32 0, i32 %r63, i32 %r64
    %r66 = load i32, ptr %r65
    ret i32 %r66
L5:
    %r14 = load i32, ptr %r8
    %r15 = load i32, ptr %r5
    %r16 = icmp sle i32 %r14,%r15
    br i1 %r16, label %L6, label %L7
L6:
    %r17 = load i32, ptr %r7
    %r18 = add i32 1,0
    %r19 = sub i32 %r17,%r18
    %r20 = getelementptr i32, ptr %r0, i32 %r19
    %r21 = load i32, ptr %r20
    %r22 = load i32, ptr %r8
    %r23 = add i32 1,0
    %r24 = sub i32 %r22,%r23
    %r25 = getelementptr i32, ptr %r2, i32 %r24
    %r26 = load i32, ptr %r25
    %r27 = icmp eq i32 %r21,%r26
    br i1 %r27, label %L8, label %L9
L7:
    %r60 = load i32, ptr %r7
    %r61 = add i32 1,0
    %r62 = add i32 %r60,%r61
    store i32 %r62, ptr %r7
    br label %L2
L8:
    %r28 = load i32, ptr %r7
    %r29 = load i32, ptr %r8
    %r30 = getelementptr [16 x [16 x i32]], ptr %r6, i32 0, i32 %r28, i32 %r29
    %r31 = load i32, ptr %r7
    %r32 = add i32 1,0
    %r33 = sub i32 %r31,%r32
    %r34 = load i32, ptr %r8
    %r35 = add i32 1,0
    %r36 = sub i32 %r34,%r35
    %r37 = getelementptr [16 x [16 x i32]], ptr %r6, i32 0, i32 %r33, i32 %r36
    %r38 = load i32, ptr %r37
    %r39 = add i32 1,0
    %r40 = add i32 %r38,%r39
    store i32 %r40, ptr %r30
    br label %L10
L9:
    %r41 = load i32, ptr %r7
    %r42 = load i32, ptr %r8
    %r43 = getelementptr [16 x [16 x i32]], ptr %r6, i32 0, i32 %r41, i32 %r42
    %r44 = load i32, ptr %r7
    %r45 = add i32 1,0
    %r46 = sub i32 %r44,%r45
    %r47 = load i32, ptr %r8
    %r48 = getelementptr [16 x [16 x i32]], ptr %r6, i32 0, i32 %r46, i32 %r47
    %r49 = load i32, ptr %r48
    %r50 = load i32, ptr %r7
    %r51 = load i32, ptr %r8
    %r52 = add i32 1,0
    %r53 = sub i32 %r51,%r52
    %r54 = getelementptr [16 x [16 x i32]], ptr %r6, i32 0, i32 %r50, i32 %r53
    %r55 = load i32, ptr %r54
    %r56 = call i32 @MAX(i32 %r49,i32 %r55)
    store i32 %r56, ptr %r43
    br label %L10
L10:
    %r57 = load i32, ptr %r8
    %r58 = add i32 1,0
    %r59 = add i32 %r57,%r58
    store i32 %r59, ptr %r8
    br label %L5
}
define i32 @main()
{
L0:
    %r59 = alloca i32
    %r58 = alloca i32
    %r31 = alloca [13 x i32]
    %r0 = alloca [15 x i32]
    br label %L1
L1:
    call void @llvm.memset.p0.i32(ptr %r0,i8 0,i32 60,i1 0)
    %r1 = add i32 8,0
    %r2 = getelementptr [15 x i32], ptr %r0, i32 0, i32 0
    store i32 %r1, ptr %r2
    %r3 = add i32 7,0
    %r4 = getelementptr [15 x i32], ptr %r0, i32 0, i32 1
    store i32 %r3, ptr %r4
    %r5 = add i32 4,0
    %r6 = getelementptr [15 x i32], ptr %r0, i32 0, i32 2
    store i32 %r5, ptr %r6
    %r7 = add i32 1,0
    %r8 = getelementptr [15 x i32], ptr %r0, i32 0, i32 3
    store i32 %r7, ptr %r8
    %r9 = add i32 2,0
    %r10 = getelementptr [15 x i32], ptr %r0, i32 0, i32 4
    store i32 %r9, ptr %r10
    %r11 = add i32 7,0
    %r12 = getelementptr [15 x i32], ptr %r0, i32 0, i32 5
    store i32 %r11, ptr %r12
    %r13 = add i32 0,0
    %r14 = getelementptr [15 x i32], ptr %r0, i32 0, i32 6
    store i32 %r13, ptr %r14
    %r15 = add i32 1,0
    %r16 = getelementptr [15 x i32], ptr %r0, i32 0, i32 7
    store i32 %r15, ptr %r16
    %r17 = add i32 9,0
    %r18 = getelementptr [15 x i32], ptr %r0, i32 0, i32 8
    store i32 %r17, ptr %r18
    %r19 = add i32 3,0
    %r20 = getelementptr [15 x i32], ptr %r0, i32 0, i32 9
    store i32 %r19, ptr %r20
    %r21 = add i32 4,0
    %r22 = getelementptr [15 x i32], ptr %r0, i32 0, i32 10
    store i32 %r21, ptr %r22
    %r23 = add i32 8,0
    %r24 = getelementptr [15 x i32], ptr %r0, i32 0, i32 11
    store i32 %r23, ptr %r24
    %r25 = add i32 3,0
    %r26 = getelementptr [15 x i32], ptr %r0, i32 0, i32 12
    store i32 %r25, ptr %r26
    %r27 = add i32 7,0
    %r28 = getelementptr [15 x i32], ptr %r0, i32 0, i32 13
    store i32 %r27, ptr %r28
    %r29 = add i32 0,0
    %r30 = getelementptr [15 x i32], ptr %r0, i32 0, i32 14
    store i32 %r29, ptr %r30
    call void @llvm.memset.p0.i32(ptr %r31,i8 0,i32 52,i1 0)
    %r32 = add i32 3,0
    %r33 = getelementptr [13 x i32], ptr %r31, i32 0, i32 0
    store i32 %r32, ptr %r33
    %r34 = add i32 9,0
    %r35 = getelementptr [13 x i32], ptr %r31, i32 0, i32 1
    store i32 %r34, ptr %r35
    %r36 = add i32 7,0
    %r37 = getelementptr [13 x i32], ptr %r31, i32 0, i32 2
    store i32 %r36, ptr %r37
    %r38 = add i32 1,0
    %r39 = getelementptr [13 x i32], ptr %r31, i32 0, i32 3
    store i32 %r38, ptr %r39
    %r40 = add i32 4,0
    %r41 = getelementptr [13 x i32], ptr %r31, i32 0, i32 4
    store i32 %r40, ptr %r41
    %r42 = add i32 2,0
    %r43 = getelementptr [13 x i32], ptr %r31, i32 0, i32 5
    store i32 %r42, ptr %r43
    %r44 = add i32 4,0
    %r45 = getelementptr [13 x i32], ptr %r31, i32 0, i32 6
    store i32 %r44, ptr %r45
    %r46 = add i32 3,0
    %r47 = getelementptr [13 x i32], ptr %r31, i32 0, i32 7
    store i32 %r46, ptr %r47
    %r48 = add i32 6,0
    %r49 = getelementptr [13 x i32], ptr %r31, i32 0, i32 8
    store i32 %r48, ptr %r49
    %r50 = add i32 8,0
    %r51 = getelementptr [13 x i32], ptr %r31, i32 0, i32 9
    store i32 %r50, ptr %r51
    %r52 = add i32 0,0
    %r53 = getelementptr [13 x i32], ptr %r31, i32 0, i32 10
    store i32 %r52, ptr %r53
    %r54 = add i32 1,0
    %r55 = getelementptr [13 x i32], ptr %r31, i32 0, i32 11
    store i32 %r54, ptr %r55
    %r56 = add i32 5,0
    %r57 = getelementptr [13 x i32], ptr %r31, i32 0, i32 12
    store i32 %r56, ptr %r57
    store i32 0, ptr %r58
    store i32 0, ptr %r59
    %r60 = getelementptr [15 x i32], ptr %r0, i32 0
    %r61 = add i32 15,0
    %r62 = call i32 @max_sum_nonadjacent(ptr %r60,i32 %r61)
    call void @putint(i32 %r62)
    %r63 = add i32 10,0
    call void @putch(i32 %r63)
    %r64 = getelementptr [15 x i32], ptr %r0, i32 0
    %r65 = add i32 15,0
    %r66 = getelementptr [13 x i32], ptr %r31, i32 0
    %r67 = add i32 13,0
    %r68 = call i32 @longest_common_subseq(ptr %r64,i32 %r65,ptr %r66,i32 %r67)
    call void @putint(i32 %r68)
    %r69 = add i32 10,0
    call void @putch(i32 %r69)
    %r70 = add i32 0,0
    ret i32 %r70
}
