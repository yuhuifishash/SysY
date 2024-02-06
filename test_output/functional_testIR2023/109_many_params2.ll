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
define i32 @main()
{
L0:
    %r38 = alloca i32
    %r1 = alloca [53 x [59 x i32]]
    %r0 = alloca [61 x [67 x i32]]
    br label %L1
L1:
    call void @llvm.memset.p0.i32(ptr %r0,i8 0,i32 16348,i1 0)
    call void @llvm.memset.p0.i32(ptr %r1,i8 0,i32 12508,i1 0)
    %r2 = add i32 0,6
    %r3 = add i32 0,17
    %r4 = add i32 0,1
    %r5 = getelementptr [61 x [67 x i32]], ptr %r0, i32 0, i32 %r3, i32 %r4
    store i32 %r2, ptr %r5
    %r6 = add i32 0,7
    %r7 = add i32 0,17
    %r8 = add i32 0,3
    %r9 = getelementptr [61 x [67 x i32]], ptr %r0, i32 0, i32 %r7, i32 %r8
    store i32 %r6, ptr %r9
    %r10 = add i32 0,4
    %r11 = add i32 0,17
    %r12 = add i32 0,4
    %r13 = getelementptr [61 x [67 x i32]], ptr %r0, i32 0, i32 %r11, i32 %r12
    store i32 %r10, ptr %r13
    %r14 = add i32 0,9
    %r15 = add i32 0,17
    %r16 = add i32 0,7
    %r17 = getelementptr [61 x [67 x i32]], ptr %r0, i32 0, i32 %r15, i32 %r16
    store i32 %r14, ptr %r17
    %r18 = add i32 0,11
    %r19 = add i32 0,17
    %r20 = add i32 0,11
    %r21 = getelementptr [61 x [67 x i32]], ptr %r0, i32 0, i32 %r19, i32 %r20
    store i32 %r18, ptr %r21
    %r22 = add i32 0,1
    %r23 = add i32 0,6
    %r24 = add i32 0,1
    %r25 = getelementptr [53 x [59 x i32]], ptr %r1, i32 0, i32 %r23, i32 %r24
    store i32 %r22, ptr %r25
    %r26 = add i32 0,2
    %r27 = add i32 0,6
    %r28 = add i32 0,2
    %r29 = getelementptr [53 x [59 x i32]], ptr %r1, i32 0, i32 %r27, i32 %r28
    store i32 %r26, ptr %r29
    %r30 = add i32 0,3
    %r31 = add i32 0,6
    %r32 = add i32 0,3
    %r33 = getelementptr [53 x [59 x i32]], ptr %r1, i32 0, i32 %r31, i32 %r32
    store i32 %r30, ptr %r33
    %r34 = add i32 0,9
    %r35 = add i32 0,6
    %r36 = add i32 0,9
    %r37 = getelementptr [53 x [59 x i32]], ptr %r1, i32 0, i32 %r35, i32 %r36
    store i32 %r34, ptr %r37
    %r39 = add i32 0,0
    store i32 %r39, ptr %r38
    %r40 = add i32 0,17
    %r41 = add i32 0,1
    %r42 = getelementptr [61 x [67 x i32]], ptr %r0, i32 0, i32 %r40, i32 %r41
    %r43 = load i32, ptr %r42
    %r44 = getelementptr i32, ptr %r1, i32 0
    %r45 = add i32 0,17
    %r46 = add i32 0,3
    %r47 = getelementptr [61 x [67 x i32]], ptr %r0, i32 0, i32 %r45, i32 %r46
    %r48 = load i32, ptr %r47
    %r49 = add i32 0,17
    %r50 = getelementptr [61 x [67 x i32]], ptr %r0, i32 0, i32 %r49
    %r51 = add i32 0,6
    %r52 = add i32 0,3
    %r53 = getelementptr [53 x [59 x i32]], ptr %r1, i32 0, i32 %r51, i32 %r52
    %r54 = load i32, ptr %r53
    %r55 = add i32 0,6
    %r56 = add i32 0,0
    %r57 = getelementptr [53 x [59 x i32]], ptr %r1, i32 0, i32 %r55, i32 %r56
    %r58 = load i32, ptr %r57
    %r59 = add i32 0,6
    %r60 = getelementptr [53 x [59 x i32]], ptr %r1, i32 0, i32 %r59
    %r61 = add i32 0,34
    %r62 = add i32 0,4
    %r63 = getelementptr [53 x [59 x i32]], ptr %r1, i32 0, i32 %r61, i32 %r62
    %r64 = load i32, ptr %r63
    %r65 = add i32 0,51
    %r66 = add i32 0,18
    %r67 = getelementptr [53 x [59 x i32]], ptr %r1, i32 0, i32 %r65, i32 %r66
    %r68 = load i32, ptr %r67
    %r69 = call i32 @func(i32 %r43,ptr %r44,i32 %r48,ptr %r50,i32 %r54,i32 %r58,ptr %r60,i32 %r64,i32 %r68)
    %r70 = add i32 0,3
    %r71 = mul i32 %r69,%r70
    store i32 %r71, ptr %r38
    %r72 = load i32, ptr %r38
    %r73 = add i32 0,0
    %r74 = icmp sge i32 %r72,%r73
    br i1 %r74, label %L3, label %L5
L3:
    %r77 = add i32 0,6
    %r78 = load i32, ptr %r38
    %r79 = getelementptr [53 x [59 x i32]], ptr %r1, i32 0, i32 %r77, i32 %r78
    %r80 = load i32, ptr %r79
    call void @putint(i32 %r80)
    %r81 = add i32 0,32
    call void @putch(i32 %r81)
    %r82 = load i32, ptr %r38
    %r83 = add i32 0,1
    %r84 = sub i32 %r82,%r83
    store i32 %r84, ptr %r38
    br label %L4
L4:
    %r85 = load i32, ptr %r38
    %r86 = add i32 0,0
    %r87 = icmp sge i32 %r85,%r86
    br i1 %r87, label %L3, label %L5
L5:
    %r90 = add i32 0,10
    call void @putch(i32 %r90)
    %r91 = add i32 0,0
    ret i32 %r91
}
define i32 @func(i32 %r0,ptr %r1,i32 %r2,ptr %r3,i32 %r4,i32 %r5,ptr %r6,i32 %r7,i32 %r8)
{
L0:
    %r15 = alloca i32
    %r9 = alloca i32
    store i32 %r0, ptr %r9
    %r10 = alloca i32
    store i32 %r2, ptr %r10
    %r11 = alloca i32
    store i32 %r4, ptr %r11
    %r12 = alloca i32
    store i32 %r5, ptr %r12
    %r13 = alloca i32
    store i32 %r7, ptr %r13
    %r14 = alloca i32
    store i32 %r8, ptr %r14
    br label %L1
L1:
    %r16 = add i32 0,0
    store i32 %r16, ptr %r15
    %r17 = load i32, ptr %r15
    %r18 = add i32 0,10
    %r19 = icmp slt i32 %r17,%r18
    br i1 %r19, label %L3, label %L5
L3:
    %r22 = load i32, ptr %r9
    %r23 = load i32, ptr %r15
    %r24 = getelementptr [59 x i32], ptr %r1, i32 %r22, i32 %r23
    %r25 = load i32, ptr %r24
    call void @putint(i32 %r25)
    %r26 = load i32, ptr %r15
    %r27 = add i32 0,1
    %r28 = add i32 %r26,%r27
    store i32 %r28, ptr %r15
    br label %L4
L4:
    %r29 = load i32, ptr %r15
    %r30 = add i32 0,10
    %r31 = icmp slt i32 %r29,%r30
    br i1 %r31, label %L3, label %L5
L5:
    %r34 = add i32 0,10
    call void @putch(i32 %r34)
    %r35 = load i32, ptr %r10
    %r36 = getelementptr i32, ptr %r3, i32 %r35
    %r37 = load i32, ptr %r36
    call void @putint(i32 %r37)
    %r38 = add i32 0,10
    call void @putch(i32 %r38)
    %r39 = load i32, ptr %r14
    %r40 = add i32 0,10
    %r41 = icmp slt i32 %r39,%r40
    br i1 %r41, label %L7, label %L9
L7:
    %r44 = load i32, ptr %r13
    %r45 = add i32 0,128875
    %r46 = mul i32 %r44,%r45
    %r47 = add i32 0,3724
    %r48 = srem i32 %r46,%r47
    %r49 = load i32, ptr %r14
    %r50 = getelementptr i32, ptr %r6, i32 %r49
    store i32 %r48, ptr %r50
    %r51 = load i32, ptr %r14
    %r52 = add i32 0,1
    %r53 = add i32 %r51,%r52
    store i32 %r53, ptr %r14
    %r54 = load i32, ptr %r13
    %r55 = add i32 0,7
    %r56 = add i32 %r54,%r55
    store i32 %r56, ptr %r13
    br label %L8
L8:
    %r57 = load i32, ptr %r14
    %r58 = add i32 0,10
    %r59 = icmp slt i32 %r57,%r58
    br i1 %r59, label %L7, label %L9
L9:
    %r62 = load i32, ptr %r11
    %r63 = load i32, ptr %r12
    %r64 = add i32 %r62,%r63
    ret i32 %r64
}
