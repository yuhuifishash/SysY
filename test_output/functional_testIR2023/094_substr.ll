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
    %r5 = getelementptr i32, ptr %r0, i32 %r4
    %r6 = load i32, ptr %r5
    %r7 = add i32 0,0
    %r8 = getelementptr [16 x i32], ptr %r3, i32 0, i32 %r7
    store i32 %r6, ptr %r8
    %r9 = add i32 0,0
    %r10 = getelementptr i32, ptr %r0, i32 %r9
    %r11 = load i32, ptr %r10
    %r12 = add i32 0,1
    %r13 = getelementptr i32, ptr %r0, i32 %r12
    %r14 = load i32, ptr %r13
    %r15 = call i32 @MAX(i32 %r11,i32 %r14)
    %r16 = add i32 0,1
    %r17 = getelementptr [16 x i32], ptr %r3, i32 0, i32 %r16
    store i32 %r15, ptr %r17
    %r19 = add i32 0,2
    store i32 %r19, ptr %r18
    %r20 = load i32, ptr %r18
    %r21 = load i32, ptr %r2
    %r22 = icmp slt i32 %r20,%r21
    br i1 %r22, label %L3, label %L5
L3:
    %r25 = load i32, ptr %r18
    %r26 = add i32 0,2
    %r27 = sub i32 %r25,%r26
    %r28 = getelementptr [16 x i32], ptr %r3, i32 0, i32 %r27
    %r29 = load i32, ptr %r28
    %r30 = load i32, ptr %r18
    %r31 = getelementptr i32, ptr %r0, i32 %r30
    %r32 = load i32, ptr %r31
    %r33 = add i32 %r29,%r32
    %r34 = load i32, ptr %r18
    %r35 = add i32 0,1
    %r36 = sub i32 %r34,%r35
    %r37 = getelementptr [16 x i32], ptr %r3, i32 0, i32 %r36
    %r38 = load i32, ptr %r37
    %r39 = call i32 @MAX(i32 %r33,i32 %r38)
    %r40 = load i32, ptr %r18
    %r41 = getelementptr [16 x i32], ptr %r3, i32 0, i32 %r40
    store i32 %r39, ptr %r41
    %r42 = load i32, ptr %r18
    %r43 = add i32 0,1
    %r44 = add i32 %r42,%r43
    store i32 %r44, ptr %r18
    br label %L4
L4:
    %r45 = load i32, ptr %r18
    %r46 = load i32, ptr %r2
    %r47 = icmp slt i32 %r45,%r46
    br i1 %r47, label %L3, label %L5
L5:
    %r50 = load i32, ptr %r2
    %r51 = add i32 0,1
    %r52 = sub i32 %r50,%r51
    %r53 = getelementptr [16 x i32], ptr %r3, i32 0, i32 %r52
    %r54 = load i32, ptr %r53
    ret i32 %r54
}
define i32 @longest_common_subseq(ptr %r0,i32 %r1,ptr %r2,i32 %r3)
{
L0:
    %r9 = alloca i32
    %r7 = alloca i32
    %r6 = alloca [16 x [16 x i32]]
    %r4 = alloca i32
    store i32 %r1, ptr %r4
    %r5 = alloca i32
    store i32 %r3, ptr %r5
    br label %L1
L1:
    call void @llvm.memset.p0.i32(ptr %r6,i8 0,i32 1024,i1 0)
    %r8 = add i32 0,0
    store i32 %r8, ptr %r7
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r11 = add i32 0,1
    store i32 %r11, ptr %r7
    %r12 = load i32, ptr %r7
    %r13 = load i32, ptr %r4
    %r14 = icmp sle i32 %r12,%r13
    br i1 %r14, label %L3, label %L5
L3:
    %r17 = add i32 0,1
    store i32 %r17, ptr %r9
    %r18 = load i32, ptr %r9
    %r19 = load i32, ptr %r5
    %r20 = icmp sle i32 %r18,%r19
    br i1 %r20, label %L7, label %L9
L4:
    %r76 = load i32, ptr %r7
    %r77 = load i32, ptr %r4
    %r78 = icmp sle i32 %r76,%r77
    br i1 %r78, label %L3, label %L5
L5:
    %r81 = load i32, ptr %r4
    %r82 = load i32, ptr %r5
    %r83 = getelementptr [16 x [16 x i32]], ptr %r6, i32 0, i32 %r81, i32 %r82
    %r84 = load i32, ptr %r83
    ret i32 %r84
L7:
    %r23 = load i32, ptr %r7
    %r24 = add i32 0,1
    %r25 = sub i32 %r23,%r24
    %r26 = getelementptr i32, ptr %r0, i32 %r25
    %r27 = load i32, ptr %r26
    %r28 = load i32, ptr %r9
    %r29 = add i32 0,1
    %r30 = sub i32 %r28,%r29
    %r31 = getelementptr i32, ptr %r2, i32 %r30
    %r32 = load i32, ptr %r31
    %r33 = icmp eq i32 %r27,%r32
    br i1 %r33, label %L10, label %L11
L8:
    %r68 = load i32, ptr %r9
    %r69 = load i32, ptr %r5
    %r70 = icmp sle i32 %r68,%r69
    br i1 %r70, label %L7, label %L9
L9:
    %r73 = load i32, ptr %r7
    %r74 = add i32 0,1
    %r75 = add i32 %r73,%r74
    store i32 %r75, ptr %r7
    br label %L4
L10:
    %r36 = load i32, ptr %r7
    %r37 = add i32 0,1
    %r38 = sub i32 %r36,%r37
    %r39 = load i32, ptr %r9
    %r40 = add i32 0,1
    %r41 = sub i32 %r39,%r40
    %r42 = getelementptr [16 x [16 x i32]], ptr %r6, i32 0, i32 %r38, i32 %r41
    %r43 = load i32, ptr %r42
    %r44 = add i32 0,1
    %r45 = add i32 %r43,%r44
    %r46 = load i32, ptr %r7
    %r47 = load i32, ptr %r9
    %r48 = getelementptr [16 x [16 x i32]], ptr %r6, i32 0, i32 %r46, i32 %r47
    store i32 %r45, ptr %r48
    br label %L12
L11:
    %r49 = load i32, ptr %r7
    %r50 = add i32 0,1
    %r51 = sub i32 %r49,%r50
    %r52 = load i32, ptr %r9
    %r53 = getelementptr [16 x [16 x i32]], ptr %r6, i32 0, i32 %r51, i32 %r52
    %r54 = load i32, ptr %r53
    %r55 = load i32, ptr %r7
    %r56 = load i32, ptr %r9
    %r57 = add i32 0,1
    %r58 = sub i32 %r56,%r57
    %r59 = getelementptr [16 x [16 x i32]], ptr %r6, i32 0, i32 %r55, i32 %r58
    %r60 = load i32, ptr %r59
    %r61 = call i32 @MAX(i32 %r54,i32 %r60)
    %r62 = load i32, ptr %r7
    %r63 = load i32, ptr %r9
    %r64 = getelementptr [16 x [16 x i32]], ptr %r6, i32 0, i32 %r62, i32 %r63
    store i32 %r61, ptr %r64
    br label %L12
L12:
    %r65 = load i32, ptr %r9
    %r66 = add i32 0,1
    %r67 = add i32 %r65,%r66
    store i32 %r67, ptr %r9
    br label %L8
}
define i32 @main()
{
L0:
    %r60 = alloca i32
    %r58 = alloca i32
    %r31 = alloca [13 x i32]
    %r0 = alloca [15 x i32]
    br label %L1
L1:
    call void @llvm.memset.p0.i32(ptr %r0,i8 0,i32 60,i1 0)
    %r1 = add i32 0,8
    %r2 = getelementptr [15 x i32], ptr %r0, i32 0, i32 0
    store i32 %r1, ptr %r2
    %r3 = add i32 0,7
    %r4 = getelementptr [15 x i32], ptr %r0, i32 0, i32 1
    store i32 %r3, ptr %r4
    %r5 = add i32 0,4
    %r6 = getelementptr [15 x i32], ptr %r0, i32 0, i32 2
    store i32 %r5, ptr %r6
    %r7 = add i32 0,1
    %r8 = getelementptr [15 x i32], ptr %r0, i32 0, i32 3
    store i32 %r7, ptr %r8
    %r9 = add i32 0,2
    %r10 = getelementptr [15 x i32], ptr %r0, i32 0, i32 4
    store i32 %r9, ptr %r10
    %r11 = add i32 0,7
    %r12 = getelementptr [15 x i32], ptr %r0, i32 0, i32 5
    store i32 %r11, ptr %r12
    %r13 = add i32 0,0
    %r14 = getelementptr [15 x i32], ptr %r0, i32 0, i32 6
    store i32 %r13, ptr %r14
    %r15 = add i32 0,1
    %r16 = getelementptr [15 x i32], ptr %r0, i32 0, i32 7
    store i32 %r15, ptr %r16
    %r17 = add i32 0,9
    %r18 = getelementptr [15 x i32], ptr %r0, i32 0, i32 8
    store i32 %r17, ptr %r18
    %r19 = add i32 0,3
    %r20 = getelementptr [15 x i32], ptr %r0, i32 0, i32 9
    store i32 %r19, ptr %r20
    %r21 = add i32 0,4
    %r22 = getelementptr [15 x i32], ptr %r0, i32 0, i32 10
    store i32 %r21, ptr %r22
    %r23 = add i32 0,8
    %r24 = getelementptr [15 x i32], ptr %r0, i32 0, i32 11
    store i32 %r23, ptr %r24
    %r25 = add i32 0,3
    %r26 = getelementptr [15 x i32], ptr %r0, i32 0, i32 12
    store i32 %r25, ptr %r26
    %r27 = add i32 0,7
    %r28 = getelementptr [15 x i32], ptr %r0, i32 0, i32 13
    store i32 %r27, ptr %r28
    %r29 = add i32 0,0
    %r30 = getelementptr [15 x i32], ptr %r0, i32 0, i32 14
    store i32 %r29, ptr %r30
    call void @llvm.memset.p0.i32(ptr %r31,i8 0,i32 52,i1 0)
    %r32 = add i32 0,3
    %r33 = getelementptr [13 x i32], ptr %r31, i32 0, i32 0
    store i32 %r32, ptr %r33
    %r34 = add i32 0,9
    %r35 = getelementptr [13 x i32], ptr %r31, i32 0, i32 1
    store i32 %r34, ptr %r35
    %r36 = add i32 0,7
    %r37 = getelementptr [13 x i32], ptr %r31, i32 0, i32 2
    store i32 %r36, ptr %r37
    %r38 = add i32 0,1
    %r39 = getelementptr [13 x i32], ptr %r31, i32 0, i32 3
    store i32 %r38, ptr %r39
    %r40 = add i32 0,4
    %r41 = getelementptr [13 x i32], ptr %r31, i32 0, i32 4
    store i32 %r40, ptr %r41
    %r42 = add i32 0,2
    %r43 = getelementptr [13 x i32], ptr %r31, i32 0, i32 5
    store i32 %r42, ptr %r43
    %r44 = add i32 0,4
    %r45 = getelementptr [13 x i32], ptr %r31, i32 0, i32 6
    store i32 %r44, ptr %r45
    %r46 = add i32 0,3
    %r47 = getelementptr [13 x i32], ptr %r31, i32 0, i32 7
    store i32 %r46, ptr %r47
    %r48 = add i32 0,6
    %r49 = getelementptr [13 x i32], ptr %r31, i32 0, i32 8
    store i32 %r48, ptr %r49
    %r50 = add i32 0,8
    %r51 = getelementptr [13 x i32], ptr %r31, i32 0, i32 9
    store i32 %r50, ptr %r51
    %r52 = add i32 0,0
    %r53 = getelementptr [13 x i32], ptr %r31, i32 0, i32 10
    store i32 %r52, ptr %r53
    %r54 = add i32 0,1
    %r55 = getelementptr [13 x i32], ptr %r31, i32 0, i32 11
    store i32 %r54, ptr %r55
    %r56 = add i32 0,5
    %r57 = getelementptr [13 x i32], ptr %r31, i32 0, i32 12
    store i32 %r56, ptr %r57
    %r59 = add i32 0,0
    store i32 %r59, ptr %r58
    %r61 = add i32 0,0
    store i32 %r61, ptr %r60
    %r62 = getelementptr i32, ptr %r0, i32 0
    %r63 = add i32 0,15
    %r64 = call i32 @max_sum_nonadjacent(ptr %r62,i32 %r63)
    call void @putint(i32 %r64)
    %r65 = add i32 0,10
    call void @putch(i32 %r65)
    %r66 = getelementptr i32, ptr %r0, i32 0
    %r67 = add i32 0,15
    %r68 = getelementptr i32, ptr %r31, i32 0
    %r69 = add i32 0,13
    %r70 = call i32 @longest_common_subseq(ptr %r66,i32 %r67,ptr %r68,i32 %r69)
    call void @putint(i32 %r70)
    %r71 = add i32 0,10
    call void @putch(i32 %r71)
    %r72 = add i32 0,0
    ret i32 %r72
}
define i32 @MAX(i32 %r0,i32 %r1)
{
L0:
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r4 = load i32, ptr %r2
    %r5 = load i32, ptr %r3
    %r6 = icmp eq i32 %r4,%r5
    br i1 %r6, label %L2, label %L3
L2:
    %r9 = load i32, ptr %r2
    ret i32 %r9
L3:
    %r10 = load i32, ptr %r2
    %r11 = load i32, ptr %r3
    %r12 = icmp sgt i32 %r10,%r11
    br i1 %r12, label %L5, label %L6
L5:
    %r15 = load i32, ptr %r2
    ret i32 %r15
L6:
    %r16 = load i32, ptr %r3
    ret i32 %r16
}
