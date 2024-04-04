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
define i32 @testParam8(i32 %r0,i32 %r1,i32 %r2,i32 %r3,i32 %r4,i32 %r5,i32 %r6,i32 %r7)
{
L0:  ;
    %r15 = alloca i32
    %r14 = alloca i32
    %r13 = alloca i32
    %r12 = alloca i32
    %r11 = alloca i32
    %r10 = alloca i32
    %r9 = alloca i32
    %r8 = alloca i32
    store i32 %r0, ptr %r8
    store i32 %r1, ptr %r9
    store i32 %r2, ptr %r10
    store i32 %r3, ptr %r11
    store i32 %r4, ptr %r12
    store i32 %r5, ptr %r13
    store i32 %r6, ptr %r14
    store i32 %r7, ptr %r15
    br label %L1
L1:  ;
    %r16 = load i32, ptr %r8
    %r17 = load i32, ptr %r9
    %r18 = sub i32 %r16,%r17
    %r19 = load i32, ptr %r10
    %r20 = add i32 %r18,%r19
    %r21 = load i32, ptr %r11
    %r22 = sub i32 %r20,%r21
    %r23 = load i32, ptr %r12
    %r24 = sub i32 %r22,%r23
    %r25 = load i32, ptr %r13
    %r26 = sub i32 %r24,%r25
    %r27 = load i32, ptr %r14
    %r28 = add i32 %r26,%r27
    %r29 = load i32, ptr %r15
    %r30 = add i32 %r28,%r29
    ret i32 %r30
}
define i32 @testParam16(i32 %r0,i32 %r1,i32 %r2,i32 %r3,i32 %r4,i32 %r5,i32 %r6,i32 %r7,i32 %r8,i32 %r9,i32 %r10,i32 %r11,i32 %r12,i32 %r13,i32 %r14,i32 %r15)
{
L0:  ;
    %r31 = alloca i32
    %r30 = alloca i32
    %r29 = alloca i32
    %r28 = alloca i32
    %r27 = alloca i32
    %r26 = alloca i32
    %r25 = alloca i32
    %r24 = alloca i32
    %r23 = alloca i32
    %r22 = alloca i32
    %r21 = alloca i32
    %r20 = alloca i32
    %r19 = alloca i32
    %r18 = alloca i32
    %r17 = alloca i32
    %r16 = alloca i32
    store i32 %r0, ptr %r16
    store i32 %r1, ptr %r17
    store i32 %r2, ptr %r18
    store i32 %r3, ptr %r19
    store i32 %r4, ptr %r20
    store i32 %r5, ptr %r21
    store i32 %r6, ptr %r22
    store i32 %r7, ptr %r23
    store i32 %r8, ptr %r24
    store i32 %r9, ptr %r25
    store i32 %r10, ptr %r26
    store i32 %r11, ptr %r27
    store i32 %r12, ptr %r28
    store i32 %r13, ptr %r29
    store i32 %r14, ptr %r30
    store i32 %r15, ptr %r31
    br label %L1
L1:  ;
    %r32 = load i32, ptr %r16
    %r33 = load i32, ptr %r17
    %r34 = add i32 %r32,%r33
    %r35 = load i32, ptr %r18
    %r36 = add i32 %r34,%r35
    %r37 = load i32, ptr %r19
    %r38 = add i32 %r36,%r37
    %r39 = load i32, ptr %r20
    %r40 = sub i32 %r38,%r39
    %r41 = load i32, ptr %r21
    %r42 = add i32 %r40,%r41
    %r43 = load i32, ptr %r22
    %r44 = add i32 %r42,%r43
    %r45 = load i32, ptr %r23
    %r46 = add i32 %r44,%r45
    %r47 = load i32, ptr %r24
    %r48 = sub i32 %r46,%r47
    %r49 = load i32, ptr %r25
    %r50 = add i32 %r48,%r49
    %r51 = load i32, ptr %r26
    %r52 = sub i32 %r50,%r51
    %r53 = load i32, ptr %r27
    %r54 = add i32 %r52,%r53
    %r55 = load i32, ptr %r28
    %r56 = add i32 %r54,%r55
    %r57 = load i32, ptr %r29
    %r58 = add i32 %r56,%r57
    %r59 = load i32, ptr %r30
    %r60 = add i32 %r58,%r59
    %r61 = load i32, ptr %r31
    %r62 = add i32 %r60,%r61
    ret i32 %r62
}
define i32 @testParam32(i32 %r0,i32 %r1,i32 %r2,i32 %r3,i32 %r4,i32 %r5,i32 %r6,i32 %r7,i32 %r8,i32 %r9,i32 %r10,i32 %r11,i32 %r12,i32 %r13,i32 %r14,i32 %r15,i32 %r16,i32 %r17,i32 %r18,i32 %r19,i32 %r20,i32 %r21,i32 %r22,i32 %r23,i32 %r24,i32 %r25,i32 %r26,i32 %r27,i32 %r28,i32 %r29,i32 %r30,i32 %r31)
{
L0:  ;
    %r63 = alloca i32
    %r62 = alloca i32
    %r61 = alloca i32
    %r60 = alloca i32
    %r59 = alloca i32
    %r58 = alloca i32
    %r57 = alloca i32
    %r56 = alloca i32
    %r55 = alloca i32
    %r54 = alloca i32
    %r53 = alloca i32
    %r52 = alloca i32
    %r51 = alloca i32
    %r50 = alloca i32
    %r49 = alloca i32
    %r48 = alloca i32
    %r47 = alloca i32
    %r46 = alloca i32
    %r45 = alloca i32
    %r44 = alloca i32
    %r43 = alloca i32
    %r42 = alloca i32
    %r41 = alloca i32
    %r40 = alloca i32
    %r39 = alloca i32
    %r38 = alloca i32
    %r37 = alloca i32
    %r36 = alloca i32
    %r35 = alloca i32
    %r34 = alloca i32
    %r33 = alloca i32
    %r32 = alloca i32
    store i32 %r0, ptr %r32
    store i32 %r1, ptr %r33
    store i32 %r2, ptr %r34
    store i32 %r3, ptr %r35
    store i32 %r4, ptr %r36
    store i32 %r5, ptr %r37
    store i32 %r6, ptr %r38
    store i32 %r7, ptr %r39
    store i32 %r8, ptr %r40
    store i32 %r9, ptr %r41
    store i32 %r10, ptr %r42
    store i32 %r11, ptr %r43
    store i32 %r12, ptr %r44
    store i32 %r13, ptr %r45
    store i32 %r14, ptr %r46
    store i32 %r15, ptr %r47
    store i32 %r16, ptr %r48
    store i32 %r17, ptr %r49
    store i32 %r18, ptr %r50
    store i32 %r19, ptr %r51
    store i32 %r20, ptr %r52
    store i32 %r21, ptr %r53
    store i32 %r22, ptr %r54
    store i32 %r23, ptr %r55
    store i32 %r24, ptr %r56
    store i32 %r25, ptr %r57
    store i32 %r26, ptr %r58
    store i32 %r27, ptr %r59
    store i32 %r28, ptr %r60
    store i32 %r29, ptr %r61
    store i32 %r30, ptr %r62
    store i32 %r31, ptr %r63
    br label %L1
L1:  ;
    %r64 = load i32, ptr %r32
    %r65 = load i32, ptr %r33
    %r66 = load i32, ptr %r34
    %r67 = mul i32 %r65,%r66
    %r68 = add i32 %r64,%r67
    %r69 = load i32, ptr %r35
    %r70 = add i32 %r68,%r69
    %r71 = load i32, ptr %r36
    %r72 = add i32 %r70,%r71
    %r73 = load i32, ptr %r37
    %r74 = add i32 %r72,%r73
    %r75 = load i32, ptr %r38
    %r76 = add i32 %r74,%r75
    %r77 = load i32, ptr %r39
    %r78 = add i32 %r76,%r77
    %r79 = load i32, ptr %r40
    %r80 = add i32 %r78,%r79
    %r81 = load i32, ptr %r41
    %r82 = add i32 %r80,%r81
    %r83 = load i32, ptr %r42
    %r84 = add i32 %r82,%r83
    %r85 = load i32, ptr %r43
    %r86 = add i32 %r84,%r85
    %r87 = load i32, ptr %r44
    %r88 = sub i32 %r86,%r87
    %r89 = load i32, ptr %r45
    %r90 = sub i32 %r88,%r89
    %r91 = load i32, ptr %r46
    %r92 = sub i32 %r90,%r91
    %r93 = load i32, ptr %r47
    %r94 = sub i32 %r92,%r93
    %r95 = load i32, ptr %r48
    %r96 = sub i32 %r94,%r95
    %r97 = load i32, ptr %r49
    %r98 = sub i32 %r96,%r97
    %r99 = load i32, ptr %r50
    %r100 = sub i32 %r98,%r99
    %r101 = load i32, ptr %r51
    %r102 = sub i32 %r100,%r101
    %r103 = load i32, ptr %r52
    %r104 = sub i32 %r102,%r103
    %r105 = load i32, ptr %r53
    %r106 = sub i32 %r104,%r105
    %r107 = load i32, ptr %r54
    %r108 = add i32 %r106,%r107
    %r109 = load i32, ptr %r55
    %r110 = add i32 %r108,%r109
    %r111 = load i32, ptr %r56
    %r112 = add i32 %r110,%r111
    %r113 = load i32, ptr %r57
    %r114 = add i32 %r112,%r113
    %r115 = load i32, ptr %r58
    %r116 = add i32 %r114,%r115
    %r117 = load i32, ptr %r59
    %r118 = add i32 %r116,%r117
    %r119 = load i32, ptr %r60
    %r120 = add i32 %r118,%r119
    %r121 = load i32, ptr %r61
    %r122 = add i32 %r120,%r121
    %r123 = load i32, ptr %r62
    %r124 = add i32 %r122,%r123
    %r125 = load i32, ptr %r63
    %r126 = add i32 %r124,%r125
    ret i32 %r126
}
define i32 @main()
{
L0:  ;
    %r62 = alloca i32
    %r60 = alloca i32
    %r58 = alloca i32
    %r56 = alloca i32
    %r54 = alloca i32
    %r52 = alloca i32
    %r50 = alloca i32
    %r48 = alloca i32
    %r46 = alloca i32
    %r44 = alloca i32
    %r42 = alloca i32
    %r40 = alloca i32
    %r38 = alloca i32
    %r36 = alloca i32
    %r34 = alloca i32
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
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    %r7 = add i32 0,0
    store i32 %r7, ptr %r6
    %r9 = add i32 0,0
    store i32 %r9, ptr %r8
    %r11 = add i32 0,0
    store i32 %r11, ptr %r10
    %r13 = add i32 0,0
    store i32 %r13, ptr %r12
    %r15 = add i32 0,0
    store i32 %r15, ptr %r14
    %r17 = add i32 0,0
    store i32 %r17, ptr %r16
    %r19 = add i32 0,0
    store i32 %r19, ptr %r18
    %r21 = add i32 0,0
    store i32 %r21, ptr %r20
    %r23 = add i32 0,0
    store i32 %r23, ptr %r22
    %r25 = add i32 0,0
    store i32 %r25, ptr %r24
    %r27 = add i32 0,0
    store i32 %r27, ptr %r26
    %r29 = add i32 0,0
    store i32 %r29, ptr %r28
    %r31 = add i32 0,0
    store i32 %r31, ptr %r30
    %r33 = add i32 0,0
    store i32 %r33, ptr %r32
    %r35 = add i32 0,0
    store i32 %r35, ptr %r34
    %r37 = add i32 0,0
    store i32 %r37, ptr %r36
    %r39 = add i32 0,0
    store i32 %r39, ptr %r38
    %r41 = add i32 0,0
    store i32 %r41, ptr %r40
    %r43 = add i32 0,0
    store i32 %r43, ptr %r42
    %r45 = add i32 0,0
    store i32 %r45, ptr %r44
    %r47 = add i32 0,0
    store i32 %r47, ptr %r46
    %r49 = add i32 0,0
    store i32 %r49, ptr %r48
    %r51 = add i32 0,0
    store i32 %r51, ptr %r50
    %r53 = add i32 0,0
    store i32 %r53, ptr %r52
    %r55 = add i32 0,0
    store i32 %r55, ptr %r54
    %r57 = add i32 0,0
    store i32 %r57, ptr %r56
    %r59 = add i32 0,0
    store i32 %r59, ptr %r58
    %r61 = add i32 0,0
    store i32 %r61, ptr %r60
    %r63 = add i32 0,0
    store i32 %r63, ptr %r62
    %r64 = add i32 0,0
    store i32 %r64, ptr %r0
    %r65 = add i32 1,0
    store i32 %r65, ptr %r2
    %r66 = add i32 2,0
    store i32 %r66, ptr %r4
    %r67 = add i32 3,0
    store i32 %r67, ptr %r6
    %r68 = add i32 4,0
    store i32 %r68, ptr %r8
    %r69 = add i32 5,0
    store i32 %r69, ptr %r10
    %r70 = add i32 6,0
    store i32 %r70, ptr %r12
    %r71 = add i32 7,0
    store i32 %r71, ptr %r14
    %r72 = add i32 8,0
    store i32 %r72, ptr %r16
    %r73 = add i32 9,0
    store i32 %r73, ptr %r18
    %r74 = add i32 0,0
    store i32 %r74, ptr %r20
    %r75 = add i32 1,0
    store i32 %r75, ptr %r22
    %r76 = add i32 2,0
    store i32 %r76, ptr %r24
    %r77 = add i32 3,0
    store i32 %r77, ptr %r26
    %r78 = add i32 4,0
    store i32 %r78, ptr %r28
    %r79 = add i32 5,0
    store i32 %r79, ptr %r30
    %r80 = add i32 6,0
    store i32 %r80, ptr %r32
    %r81 = add i32 7,0
    store i32 %r81, ptr %r34
    %r82 = add i32 8,0
    store i32 %r82, ptr %r36
    %r83 = add i32 9,0
    store i32 %r83, ptr %r38
    %r84 = add i32 0,0
    store i32 %r84, ptr %r40
    %r85 = add i32 1,0
    store i32 %r85, ptr %r42
    %r86 = add i32 2,0
    store i32 %r86, ptr %r44
    %r87 = add i32 3,0
    store i32 %r87, ptr %r46
    %r88 = add i32 4,0
    store i32 %r88, ptr %r48
    %r89 = add i32 5,0
    store i32 %r89, ptr %r50
    %r90 = add i32 6,0
    store i32 %r90, ptr %r52
    %r91 = add i32 7,0
    store i32 %r91, ptr %r54
    %r92 = add i32 8,0
    store i32 %r92, ptr %r56
    %r93 = add i32 9,0
    store i32 %r93, ptr %r58
    %r94 = add i32 0,0
    store i32 %r94, ptr %r60
    %r95 = add i32 1,0
    store i32 %r95, ptr %r62
    %r96 = load i32, ptr %r0
    %r97 = load i32, ptr %r2
    %r98 = load i32, ptr %r4
    %r99 = load i32, ptr %r6
    %r100 = load i32, ptr %r8
    %r101 = load i32, ptr %r10
    %r102 = load i32, ptr %r12
    %r103 = load i32, ptr %r14
    %r104 = call i32 @testParam8(i32 %r96,i32 %r97,i32 %r98,i32 %r99,i32 %r100,i32 %r101,i32 %r102,i32 %r103)
    %r105 = load i32, ptr %r2
    %r106 = load i32, ptr %r4
    %r107 = load i32, ptr %r6
    %r108 = load i32, ptr %r8
    %r109 = load i32, ptr %r10
    %r110 = load i32, ptr %r12
    %r111 = load i32, ptr %r14
    %r112 = load i32, ptr %r16
    %r113 = load i32, ptr %r18
    %r114 = load i32, ptr %r20
    %r115 = load i32, ptr %r22
    %r116 = load i32, ptr %r24
    %r117 = load i32, ptr %r26
    %r118 = load i32, ptr %r28
    %r119 = load i32, ptr %r30
    %r120 = call i32 @testParam16(i32 %r104,i32 %r105,i32 %r106,i32 %r107,i32 %r108,i32 %r109,i32 %r110,i32 %r111,i32 %r112,i32 %r113,i32 %r114,i32 %r115,i32 %r116,i32 %r117,i32 %r118,i32 %r119)
    %r121 = load i32, ptr %r2
    %r122 = load i32, ptr %r4
    %r123 = load i32, ptr %r6
    %r124 = load i32, ptr %r8
    %r125 = load i32, ptr %r10
    %r126 = load i32, ptr %r12
    %r127 = load i32, ptr %r14
    %r128 = load i32, ptr %r16
    %r129 = load i32, ptr %r18
    %r130 = load i32, ptr %r20
    %r131 = load i32, ptr %r22
    %r132 = load i32, ptr %r24
    %r133 = load i32, ptr %r26
    %r134 = load i32, ptr %r28
    %r135 = load i32, ptr %r30
    %r136 = load i32, ptr %r32
    %r137 = load i32, ptr %r34
    %r138 = load i32, ptr %r36
    %r139 = load i32, ptr %r38
    %r140 = load i32, ptr %r40
    %r141 = load i32, ptr %r42
    %r142 = load i32, ptr %r44
    %r143 = load i32, ptr %r46
    %r144 = load i32, ptr %r48
    %r145 = load i32, ptr %r50
    %r146 = load i32, ptr %r52
    %r147 = load i32, ptr %r54
    %r148 = load i32, ptr %r56
    %r149 = load i32, ptr %r58
    %r150 = load i32, ptr %r60
    %r151 = load i32, ptr %r62
    %r152 = call i32 @testParam32(i32 %r120,i32 %r121,i32 %r122,i32 %r123,i32 %r124,i32 %r125,i32 %r126,i32 %r127,i32 %r128,i32 %r129,i32 %r130,i32 %r131,i32 %r132,i32 %r133,i32 %r134,i32 %r135,i32 %r136,i32 %r137,i32 %r138,i32 %r139,i32 %r140,i32 %r141,i32 %r142,i32 %r143,i32 %r144,i32 %r145,i32 %r146,i32 %r147,i32 %r148,i32 %r149,i32 %r150,i32 %r151)
    store i32 %r152, ptr %r0
    %r153 = load i32, ptr %r0
    call void @putint(i32 %r153)
    %r154 = add i32 0,0
    ret i32 %r154
}
