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
define i32 @func(i32 %r0,ptr %r1,i32 %r2,ptr %r3,i32 %r4,i32 %r5,ptr %r6,i32 %r7,i32 %r8)
{
L0:  ;
    %r15 = alloca i32
    %r14 = alloca i32
    %r13 = alloca i32
    %r12 = alloca i32
    %r11 = alloca i32
    %r10 = alloca i32
    %r9 = alloca i32
    store i32 %r0, ptr %r9
    store i32 %r2, ptr %r10
    store i32 %r4, ptr %r11
    store i32 %r5, ptr %r12
    store i32 %r7, ptr %r13
    store i32 %r8, ptr %r14
    br label %L1
L1:  ;
    %r16 = add i32 0,0
    store i32 %r16, ptr %r15
    br label %L2
L2:  ;
    %r17 = load i32, ptr %r15
    %r18 = add i32 10,0
    %r19 = icmp slt i32 %r17,%r18
    br i1 %r19, label %L3, label %L4
L3:  ;
    %r20 = load i32, ptr %r9
    %r21 = load i32, ptr %r15
    %r22 = getelementptr [59 x i32], ptr %r1, i32 %r20, i32 %r21
    %r23 = load i32, ptr %r22
    call void @putint(i32 %r23)
    %r24 = load i32, ptr %r15
    %r25 = add i32 1,0
    %r26 = add i32 %r24,%r25
    store i32 %r26, ptr %r15
    br label %L2
L4:  ;
    %r27 = add i32 10,0
    call void @putch(i32 %r27)
    %r28 = load i32, ptr %r10
    %r29 = getelementptr i32, ptr %r3, i32 %r28
    %r30 = load i32, ptr %r29
    call void @putint(i32 %r30)
    %r31 = add i32 10,0
    call void @putch(i32 %r31)
    br label %L5
L5:  ;
    %r32 = load i32, ptr %r14
    %r33 = add i32 10,0
    %r34 = icmp slt i32 %r32,%r33
    br i1 %r34, label %L6, label %L7
L6:  ;
    %r35 = load i32, ptr %r14
    %r36 = getelementptr i32, ptr %r6, i32 %r35
    %r37 = load i32, ptr %r13
    %r38 = add i32 128875,0
    %r39 = mul i32 %r37,%r38
    %r40 = add i32 3724,0
    %r41 = srem i32 %r39,%r40
    store i32 %r41, ptr %r36
    %r42 = load i32, ptr %r14
    %r43 = add i32 1,0
    %r44 = add i32 %r42,%r43
    store i32 %r44, ptr %r14
    %r45 = load i32, ptr %r13
    %r46 = add i32 7,0
    %r47 = add i32 %r45,%r46
    store i32 %r47, ptr %r13
    br label %L5
L7:  ;
    %r48 = load i32, ptr %r11
    %r49 = load i32, ptr %r12
    %r50 = add i32 %r48,%r49
    ret i32 %r50
}
define i32 @main()
{
L0:  ;
    %r38 = alloca i32
    %r1 = alloca [53 x [59 x i32]]
    %r0 = alloca [61 x [67 x i32]]
    br label %L1
L1:  ;
    call void @llvm.memset.p0.i32(ptr %r0,i8 0,i32 16348,i1 0)
    call void @llvm.memset.p0.i32(ptr %r1,i8 0,i32 12508,i1 0)
    %r2 = add i32 17,0
    %r3 = add i32 1,0
    %r4 = getelementptr [61 x [67 x i32]], ptr %r0, i32 0, i32 %r2, i32 %r3
    %r5 = add i32 6,0
    store i32 %r5, ptr %r4
    %r6 = add i32 17,0
    %r7 = add i32 3,0
    %r8 = getelementptr [61 x [67 x i32]], ptr %r0, i32 0, i32 %r6, i32 %r7
    %r9 = add i32 7,0
    store i32 %r9, ptr %r8
    %r10 = add i32 17,0
    %r11 = add i32 4,0
    %r12 = getelementptr [61 x [67 x i32]], ptr %r0, i32 0, i32 %r10, i32 %r11
    %r13 = add i32 4,0
    store i32 %r13, ptr %r12
    %r14 = add i32 17,0
    %r15 = add i32 7,0
    %r16 = getelementptr [61 x [67 x i32]], ptr %r0, i32 0, i32 %r14, i32 %r15
    %r17 = add i32 9,0
    store i32 %r17, ptr %r16
    %r18 = add i32 17,0
    %r19 = add i32 11,0
    %r20 = getelementptr [61 x [67 x i32]], ptr %r0, i32 0, i32 %r18, i32 %r19
    %r21 = add i32 11,0
    store i32 %r21, ptr %r20
    %r22 = add i32 6,0
    %r23 = add i32 1,0
    %r24 = getelementptr [53 x [59 x i32]], ptr %r1, i32 0, i32 %r22, i32 %r23
    %r25 = add i32 1,0
    store i32 %r25, ptr %r24
    %r26 = add i32 6,0
    %r27 = add i32 2,0
    %r28 = getelementptr [53 x [59 x i32]], ptr %r1, i32 0, i32 %r26, i32 %r27
    %r29 = add i32 2,0
    store i32 %r29, ptr %r28
    %r30 = add i32 6,0
    %r31 = add i32 3,0
    %r32 = getelementptr [53 x [59 x i32]], ptr %r1, i32 0, i32 %r30, i32 %r31
    %r33 = add i32 3,0
    store i32 %r33, ptr %r32
    %r34 = add i32 6,0
    %r35 = add i32 9,0
    %r36 = getelementptr [53 x [59 x i32]], ptr %r1, i32 0, i32 %r34, i32 %r35
    %r37 = add i32 9,0
    store i32 %r37, ptr %r36
    %r39 = add i32 0,0
    store i32 %r39, ptr %r38
    %r40 = add i32 17,0
    %r41 = add i32 1,0
    %r42 = getelementptr [61 x [67 x i32]], ptr %r0, i32 0, i32 %r40, i32 %r41
    %r43 = load i32, ptr %r42
    %r44 = getelementptr [53 x [59 x i32]], ptr %r1, i32 0
    %r45 = add i32 17,0
    %r46 = add i32 3,0
    %r47 = getelementptr [61 x [67 x i32]], ptr %r0, i32 0, i32 %r45, i32 %r46
    %r48 = load i32, ptr %r47
    %r49 = add i32 17,0
    %r50 = getelementptr [61 x [67 x i32]], ptr %r0, i32 0, i32 %r49
    %r51 = add i32 6,0
    %r52 = add i32 3,0
    %r53 = getelementptr [53 x [59 x i32]], ptr %r1, i32 0, i32 %r51, i32 %r52
    %r54 = load i32, ptr %r53
    %r55 = add i32 6,0
    %r56 = add i32 0,0
    %r57 = getelementptr [53 x [59 x i32]], ptr %r1, i32 0, i32 %r55, i32 %r56
    %r58 = load i32, ptr %r57
    %r59 = add i32 6,0
    %r60 = getelementptr [53 x [59 x i32]], ptr %r1, i32 0, i32 %r59
    %r61 = add i32 34,0
    %r62 = add i32 4,0
    %r63 = getelementptr [53 x [59 x i32]], ptr %r1, i32 0, i32 %r61, i32 %r62
    %r64 = load i32, ptr %r63
    %r65 = add i32 51,0
    %r66 = add i32 18,0
    %r67 = getelementptr [53 x [59 x i32]], ptr %r1, i32 0, i32 %r65, i32 %r66
    %r68 = load i32, ptr %r67
    %r69 = call i32 @func(i32 %r43,ptr %r44,i32 %r48,ptr %r50,i32 %r54,i32 %r58,ptr %r60,i32 %r64,i32 %r68)
    %r70 = add i32 3,0
    %r71 = mul i32 %r69,%r70
    store i32 %r71, ptr %r38
    br label %L2
L2:  ;
    %r72 = load i32, ptr %r38
    %r73 = add i32 0,0
    %r74 = icmp sge i32 %r72,%r73
    br i1 %r74, label %L3, label %L4
L3:  ;
    %r75 = add i32 6,0
    %r76 = load i32, ptr %r38
    %r77 = getelementptr [53 x [59 x i32]], ptr %r1, i32 0, i32 %r75, i32 %r76
    %r78 = load i32, ptr %r77
    call void @putint(i32 %r78)
    %r79 = add i32 32,0
    call void @putch(i32 %r79)
    %r80 = load i32, ptr %r38
    %r81 = add i32 1,0
    %r82 = sub i32 %r80,%r81
    store i32 %r82, ptr %r38
    br label %L2
L4:  ;
    %r83 = add i32 10,0
    call void @putch(i32 %r83)
    %r84 = add i32 0,0
    ret i32 %r84
}
