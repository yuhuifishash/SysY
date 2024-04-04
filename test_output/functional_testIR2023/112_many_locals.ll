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
define i32 @foo()
{
L0:  ;
    %r81 = alloca i32
    %r65 = alloca i32
    %r63 = alloca i32
    %r61 = alloca i32
    %r59 = alloca i32
    %r57 = alloca i32
    %r55 = alloca i32
    %r53 = alloca i32
    %r51 = alloca i32
    %r49 = alloca i32
    %r47 = alloca i32
    %r45 = alloca i32
    %r43 = alloca i32
    %r41 = alloca i32
    %r39 = alloca i32
    %r37 = alloca i32
    %r35 = alloca i32
    %r33 = alloca i32
    %r0 = alloca [16 x i32]
    br label %L1
L1:  ;
    call void @llvm.memset.p0.i32(ptr %r0,i8 0,i32 64,i1 0)
    %r1 = add i32 0,0
    %r2 = getelementptr [16 x i32], ptr %r0, i32 0, i32 0
    store i32 %r1, ptr %r2
    %r3 = add i32 1,0
    %r4 = getelementptr [16 x i32], ptr %r0, i32 0, i32 1
    store i32 %r3, ptr %r4
    %r5 = add i32 2,0
    %r6 = getelementptr [16 x i32], ptr %r0, i32 0, i32 2
    store i32 %r5, ptr %r6
    %r7 = add i32 3,0
    %r8 = getelementptr [16 x i32], ptr %r0, i32 0, i32 3
    store i32 %r7, ptr %r8
    %r9 = add i32 0,0
    %r10 = getelementptr [16 x i32], ptr %r0, i32 0, i32 4
    store i32 %r9, ptr %r10
    %r11 = add i32 1,0
    %r12 = getelementptr [16 x i32], ptr %r0, i32 0, i32 5
    store i32 %r11, ptr %r12
    %r13 = add i32 2,0
    %r14 = getelementptr [16 x i32], ptr %r0, i32 0, i32 6
    store i32 %r13, ptr %r14
    %r15 = add i32 3,0
    %r16 = getelementptr [16 x i32], ptr %r0, i32 0, i32 7
    store i32 %r15, ptr %r16
    %r17 = add i32 0,0
    %r18 = getelementptr [16 x i32], ptr %r0, i32 0, i32 8
    store i32 %r17, ptr %r18
    %r19 = add i32 1,0
    %r20 = getelementptr [16 x i32], ptr %r0, i32 0, i32 9
    store i32 %r19, ptr %r20
    %r21 = add i32 2,0
    %r22 = getelementptr [16 x i32], ptr %r0, i32 0, i32 10
    store i32 %r21, ptr %r22
    %r23 = add i32 3,0
    %r24 = getelementptr [16 x i32], ptr %r0, i32 0, i32 11
    store i32 %r23, ptr %r24
    %r25 = add i32 0,0
    %r26 = getelementptr [16 x i32], ptr %r0, i32 0, i32 12
    store i32 %r25, ptr %r26
    %r27 = add i32 1,0
    %r28 = getelementptr [16 x i32], ptr %r0, i32 0, i32 13
    store i32 %r27, ptr %r28
    %r29 = add i32 2,0
    %r30 = getelementptr [16 x i32], ptr %r0, i32 0, i32 14
    store i32 %r29, ptr %r30
    %r31 = add i32 3,0
    %r32 = getelementptr [16 x i32], ptr %r0, i32 0, i32 15
    store i32 %r31, ptr %r32
    %r34 = add i32 3,0
    store i32 %r34, ptr %r33
    %r36 = add i32 7,0
    store i32 %r36, ptr %r35
    %r38 = add i32 5,0
    store i32 %r38, ptr %r37
    %r40 = add i32 6,0
    store i32 %r40, ptr %r39
    %r42 = add i32 1,0
    store i32 %r42, ptr %r41
    %r44 = add i32 0,0
    store i32 %r44, ptr %r43
    %r46 = add i32 3,0
    store i32 %r46, ptr %r45
    %r48 = add i32 5,0
    store i32 %r48, ptr %r47
    %r50 = add i32 4,0
    store i32 %r50, ptr %r49
    %r52 = add i32 2,0
    store i32 %r52, ptr %r51
    %r54 = add i32 7,0
    store i32 %r54, ptr %r53
    %r56 = add i32 9,0
    store i32 %r56, ptr %r55
    %r58 = add i32 8,0
    store i32 %r58, ptr %r57
    %r60 = add i32 1,0
    store i32 %r60, ptr %r59
    %r62 = add i32 4,0
    store i32 %r62, ptr %r61
    %r64 = add i32 6,0
    store i32 %r64, ptr %r63
    %r66 = load i32, ptr %r33
    %r67 = load i32, ptr %r35
    %r68 = add i32 %r66,%r67
    %r69 = load i32, ptr %r37
    %r70 = add i32 %r68,%r69
    %r71 = load i32, ptr %r39
    %r72 = add i32 %r70,%r71
    %r73 = load i32, ptr %r41
    %r74 = add i32 %r72,%r73
    %r75 = load i32, ptr %r43
    %r76 = add i32 %r74,%r75
    %r77 = load i32, ptr %r45
    %r78 = add i32 %r76,%r77
    %r79 = load i32, ptr %r47
    %r80 = add i32 %r78,%r79
    store i32 %r80, ptr %r65
    %r82 = load i32, ptr %r49
    %r83 = load i32, ptr %r51
    %r84 = add i32 %r82,%r83
    %r85 = load i32, ptr %r53
    %r86 = add i32 %r84,%r85
    %r87 = load i32, ptr %r55
    %r88 = add i32 %r86,%r87
    %r89 = load i32, ptr %r57
    %r90 = add i32 %r88,%r89
    %r91 = load i32, ptr %r59
    %r92 = add i32 %r90,%r91
    %r93 = load i32, ptr %r61
    %r94 = add i32 %r92,%r93
    %r95 = load i32, ptr %r63
    %r96 = add i32 %r94,%r95
    store i32 %r96, ptr %r81
    %r97 = load i32, ptr %r65
    %r98 = load i32, ptr %r81
    %r99 = add i32 %r97,%r98
    %r100 = load i32, ptr %r33
    %r101 = getelementptr [16 x i32], ptr %r0, i32 0, i32 %r100
    %r102 = load i32, ptr %r101
    %r103 = add i32 %r99,%r102
    ret i32 %r103
}
define i32 @main()
{
L0:  ;
    %r110 = alloca i32
    %r94 = alloca i32
    %r81 = alloca i32
    %r79 = alloca i32
    %r77 = alloca i32
    %r75 = alloca i32
    %r73 = alloca i32
    %r71 = alloca i32
    %r69 = alloca i32
    %r67 = alloca i32
    %r48 = alloca i32
    %r32 = alloca i32
    %r30 = alloca i32
    %r28 = alloca i32
    %r26 = alloca i32
    %r24 = alloca i32
    %r22 = alloca i32
    %r20 = alloca i32
    %r18 = alloca i32
    %r16 = alloca i32
    %r14 = alloca i32
    %r12 = alloca i32
    %r10 = alloca i32
    %r8 = alloca i32
    %r6 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:  ;
    %r1 = add i32 3,0
    store i32 %r1, ptr %r0
    %r3 = add i32 7,0
    store i32 %r3, ptr %r2
    %r5 = add i32 5,0
    store i32 %r5, ptr %r4
    %r7 = add i32 6,0
    store i32 %r7, ptr %r6
    %r9 = add i32 1,0
    store i32 %r9, ptr %r8
    %r11 = add i32 0,0
    store i32 %r11, ptr %r10
    %r13 = add i32 3,0
    store i32 %r13, ptr %r12
    %r15 = add i32 5,0
    store i32 %r15, ptr %r14
    %r17 = add i32 4,0
    store i32 %r17, ptr %r16
    %r19 = add i32 2,0
    store i32 %r19, ptr %r18
    %r21 = add i32 7,0
    store i32 %r21, ptr %r20
    %r23 = add i32 9,0
    store i32 %r23, ptr %r22
    %r25 = add i32 8,0
    store i32 %r25, ptr %r24
    %r27 = add i32 1,0
    store i32 %r27, ptr %r26
    %r29 = add i32 4,0
    store i32 %r29, ptr %r28
    %r31 = add i32 6,0
    store i32 %r31, ptr %r30
    %r33 = load i32, ptr %r0
    %r34 = load i32, ptr %r2
    %r35 = add i32 %r33,%r34
    %r36 = load i32, ptr %r4
    %r37 = add i32 %r35,%r36
    %r38 = load i32, ptr %r6
    %r39 = add i32 %r37,%r38
    %r40 = load i32, ptr %r8
    %r41 = add i32 %r39,%r40
    %r42 = load i32, ptr %r10
    %r43 = add i32 %r41,%r42
    %r44 = load i32, ptr %r12
    %r45 = add i32 %r43,%r44
    %r46 = load i32, ptr %r14
    %r47 = add i32 %r45,%r46
    store i32 %r47, ptr %r32
    %r49 = load i32, ptr %r16
    %r50 = load i32, ptr %r18
    %r51 = add i32 %r49,%r50
    %r52 = load i32, ptr %r20
    %r53 = add i32 %r51,%r52
    %r54 = load i32, ptr %r22
    %r55 = add i32 %r53,%r54
    %r56 = load i32, ptr %r24
    %r57 = add i32 %r55,%r56
    %r58 = load i32, ptr %r26
    %r59 = add i32 %r57,%r58
    %r60 = load i32, ptr %r28
    %r61 = add i32 %r59,%r60
    %r62 = load i32, ptr %r30
    %r63 = add i32 %r61,%r62
    store i32 %r63, ptr %r48
    %r64 = load i32, ptr %r32
    %r65 = call i32 @foo()
    %r66 = add i32 %r64,%r65
    store i32 %r66, ptr %r32
    %r68 = add i32 4,0
    store i32 %r68, ptr %r67
    %r70 = add i32 7,0
    store i32 %r70, ptr %r69
    %r72 = add i32 2,0
    store i32 %r72, ptr %r71
    %r74 = add i32 5,0
    store i32 %r74, ptr %r73
    %r76 = add i32 8,0
    store i32 %r76, ptr %r75
    %r78 = add i32 0,0
    store i32 %r78, ptr %r77
    %r80 = add i32 6,0
    store i32 %r80, ptr %r79
    %r82 = add i32 3,0
    store i32 %r82, ptr %r81
    %r83 = load i32, ptr %r48
    %r84 = call i32 @foo()
    %r85 = add i32 %r83,%r84
    store i32 %r85, ptr %r48
    %r86 = load i32, ptr %r16
    store i32 %r86, ptr %r0
    %r87 = load i32, ptr %r18
    store i32 %r87, ptr %r2
    %r88 = load i32, ptr %r20
    store i32 %r88, ptr %r4
    %r89 = load i32, ptr %r22
    store i32 %r89, ptr %r6
    %r90 = load i32, ptr %r24
    store i32 %r90, ptr %r8
    %r91 = load i32, ptr %r26
    store i32 %r91, ptr %r10
    %r92 = load i32, ptr %r28
    store i32 %r92, ptr %r12
    %r93 = load i32, ptr %r30
    store i32 %r93, ptr %r14
    %r95 = load i32, ptr %r67
    %r96 = load i32, ptr %r69
    %r97 = add i32 %r95,%r96
    %r98 = load i32, ptr %r71
    %r99 = add i32 %r97,%r98
    %r100 = load i32, ptr %r73
    %r101 = add i32 %r99,%r100
    %r102 = load i32, ptr %r75
    %r103 = add i32 %r101,%r102
    %r104 = load i32, ptr %r77
    %r105 = add i32 %r103,%r104
    %r106 = load i32, ptr %r79
    %r107 = add i32 %r105,%r106
    %r108 = load i32, ptr %r81
    %r109 = add i32 %r107,%r108
    store i32 %r109, ptr %r94
    %r111 = load i32, ptr %r32
    %r112 = load i32, ptr %r48
    %r113 = add i32 %r111,%r112
    %r114 = load i32, ptr %r94
    %r115 = add i32 %r113,%r114
    store i32 %r115, ptr %r110
    %r116 = load i32, ptr %r110
    call void @putint(i32 %r116)
    %r117 = add i32 10,0
    call void @putch(i32 %r117)
    %r118 = add i32 0,0
    ret i32 %r118
}
