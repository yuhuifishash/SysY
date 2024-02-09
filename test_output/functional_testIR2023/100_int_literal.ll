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
@s = global i32 0
define i32 @get_ans_se(i32 %r0,i32 %r1,i32 %r2)
{
L0:
    %r6 = alloca i32
    %r5 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    store i32 %r0, ptr %r3
    store i32 %r1, ptr %r4
    store i32 %r2, ptr %r5
    br label %L1
L1:
    %r7 = add i32 0,0
    store i32 %r7, ptr %r6
    %r8 = load i32, ptr %r4
    %r9 = load i32, ptr %r5
    %r10 = icmp eq i32 %r8,%r9
    br i1 %r10, label %L2, label %L3
L2:
    %r11 = add i32 1,0
    store i32 %r11, ptr %r6
    br label %L3
L3:
    %r12 = load i32, ptr %r3
    %r13 = add i32 2,0
    %r14 = mul i32 %r12,%r13
    store i32 %r14, ptr %r3
    %r15 = load i32, ptr %r3
    %r16 = load i32, ptr %r6
    %r17 = add i32 %r15,%r16
    store i32 %r17, ptr %r3
    %r18 = load i32, ptr @s
    %r19 = load i32, ptr %r3
    %r20 = add i32 %r18,%r19
    store i32 %r20, ptr @s
    %r21 = load i32, ptr %r3
    ret i32 %r21
}
define i32 @get_ans(i32 %r0,i32 %r1,i32 %r2)
{
L0:
    %r6 = alloca i32
    %r5 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    store i32 %r0, ptr %r3
    store i32 %r1, ptr %r4
    store i32 %r2, ptr %r5
    br label %L1
L1:
    %r7 = add i32 0,0
    store i32 %r7, ptr %r6
    %r8 = load i32, ptr %r4
    %r9 = load i32, ptr %r5
    %r10 = icmp eq i32 %r8,%r9
    br i1 %r10, label %L2, label %L3
L2:
    %r11 = add i32 1,0
    store i32 %r11, ptr %r6
    br label %L3
L3:
    %r12 = load i32, ptr %r3
    %r13 = add i32 2,0
    %r14 = mul i32 %r12,%r13
    store i32 %r14, ptr %r3
    %r15 = load i32, ptr %r3
    %r16 = load i32, ptr %r6
    %r17 = add i32 %r15,%r16
    store i32 %r17, ptr %r3
    %r18 = load i32, ptr %r3
    ret i32 %r18
}
define i32 @main()
{
L0:
    %r18 = alloca i32
    %r17 = alloca i32
    %r16 = alloca i32
    %r15 = alloca i32
    %r11 = alloca i32
    %r9 = alloca i32
    %r5 = alloca i32
    %r3 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 -2147483648,0
    %r2 = sub i32 0,%r1
    store i32 %r2, ptr %r0
    %r4 = add i32 -2147483648,0
    store i32 %r4, ptr %r3
    %r6 = add i32 -2147483648,0
    %r7 = add i32 1,0
    %r8 = add i32 %r6,%r7
    store i32 %r8, ptr %r5
    %r10 = add i32 2147483647,0
    store i32 %r10, ptr %r9
    %r12 = add i32 2147483647,0
    %r13 = add i32 1,0
    %r14 = sub i32 %r12,%r13
    store i32 %r14, ptr %r11
    store i32 0, ptr %r15
    store i32 0, ptr %r16
    store i32 0, ptr %r17
    store i32 0, ptr %r18
    %r19 = add i32 0,0
    %r20 = load i32, ptr %r0
    %r21 = load i32, ptr %r3
    %r22 = call i32 @get_ans(i32 %r19,i32 %r20,i32 %r21)
    store i32 %r22, ptr %r15
    %r23 = load i32, ptr %r15
    %r24 = load i32, ptr %r0
    %r25 = add i32 1,0
    %r26 = add i32 %r24,%r25
    %r27 = load i32, ptr %r5
    %r28 = call i32 @get_ans(i32 %r23,i32 %r26,i32 %r27)
    store i32 %r28, ptr %r15
    %r29 = load i32, ptr %r15
    %r30 = load i32, ptr %r0
    %r31 = load i32, ptr %r9
    %r32 = sub i32 0,%r31
    %r33 = add i32 1,0
    %r34 = sub i32 %r32,%r33
    %r35 = call i32 @get_ans(i32 %r29,i32 %r30,i32 %r34)
    store i32 %r35, ptr %r15
    %r36 = load i32, ptr %r15
    %r37 = load i32, ptr %r0
    %r38 = load i32, ptr %r11
    %r39 = add i32 1,0
    %r40 = add i32 %r38,%r39
    %r41 = call i32 @get_ans(i32 %r36,i32 %r37,i32 %r40)
    store i32 %r41, ptr %r15
    %r42 = load i32, ptr %r15
    %r43 = load i32, ptr %r3
    %r44 = add i32 2,0
    %r45 = sdiv i32 %r43,%r44
    %r46 = load i32, ptr %r5
    %r47 = add i32 2,0
    %r48 = sdiv i32 %r46,%r47
    %r49 = call i32 @get_ans(i32 %r42,i32 %r45,i32 %r48)
    store i32 %r49, ptr %r15
    %r50 = load i32, ptr %r15
    %r51 = load i32, ptr %r3
    %r52 = load i32, ptr %r9
    %r53 = sub i32 0,%r52
    %r54 = add i32 1,0
    %r55 = sub i32 %r53,%r54
    %r56 = call i32 @get_ans(i32 %r50,i32 %r51,i32 %r55)
    store i32 %r56, ptr %r15
    %r57 = load i32, ptr %r15
    %r58 = load i32, ptr %r3
    %r59 = load i32, ptr %r11
    %r60 = add i32 1,0
    %r61 = add i32 %r59,%r60
    %r62 = call i32 @get_ans(i32 %r57,i32 %r58,i32 %r61)
    store i32 %r62, ptr %r15
    %r63 = add i32 0,0
    %r64 = load i32, ptr %r5
    %r65 = load i32, ptr %r9
    %r66 = call i32 @get_ans(i32 %r63,i32 %r64,i32 %r65)
    store i32 %r66, ptr %r16
    %r67 = load i32, ptr %r16
    %r68 = load i32, ptr %r5
    %r69 = load i32, ptr %r11
    %r70 = call i32 @get_ans(i32 %r67,i32 %r68,i32 %r69)
    store i32 %r70, ptr %r16
    %r71 = load i32, ptr %r16
    %r72 = load i32, ptr %r9
    %r73 = load i32, ptr %r11
    %r74 = call i32 @get_ans(i32 %r71,i32 %r72,i32 %r73)
    store i32 %r74, ptr %r16
    %r75 = load i32, ptr %r16
    %r76 = load i32, ptr %r0
    %r77 = add i32 2,0
    %r78 = sdiv i32 %r76,%r77
    %r79 = load i32, ptr %r3
    %r80 = add i32 2,0
    %r81 = sdiv i32 %r79,%r80
    %r82 = call i32 @get_ans(i32 %r75,i32 %r78,i32 %r81)
    store i32 %r82, ptr %r16
    %r83 = add i32 0,0
    %r84 = load i32, ptr %r0
    %r85 = load i32, ptr %r3
    %r86 = call i32 @get_ans_se(i32 %r83,i32 %r84,i32 %r85)
    store i32 %r86, ptr %r17
    %r87 = load i32, ptr %r17
    %r88 = load i32, ptr %r0
    %r89 = add i32 1,0
    %r90 = add i32 %r88,%r89
    %r91 = load i32, ptr %r5
    %r92 = call i32 @get_ans_se(i32 %r87,i32 %r90,i32 %r91)
    store i32 %r92, ptr %r17
    %r93 = load i32, ptr %r17
    %r94 = load i32, ptr %r0
    %r95 = load i32, ptr %r9
    %r96 = sub i32 0,%r95
    %r97 = add i32 1,0
    %r98 = sub i32 %r96,%r97
    %r99 = call i32 @get_ans_se(i32 %r93,i32 %r94,i32 %r98)
    store i32 %r99, ptr %r17
    %r100 = load i32, ptr %r17
    %r101 = load i32, ptr %r0
    %r102 = load i32, ptr %r11
    %r103 = add i32 1,0
    %r104 = add i32 %r102,%r103
    %r105 = call i32 @get_ans_se(i32 %r100,i32 %r101,i32 %r104)
    store i32 %r105, ptr %r17
    %r106 = load i32, ptr %r17
    %r107 = load i32, ptr %r3
    %r108 = add i32 2,0
    %r109 = sdiv i32 %r107,%r108
    %r110 = load i32, ptr %r5
    %r111 = add i32 2,0
    %r112 = sdiv i32 %r110,%r111
    %r113 = call i32 @get_ans_se(i32 %r106,i32 %r109,i32 %r112)
    store i32 %r113, ptr %r17
    %r114 = load i32, ptr %r17
    %r115 = load i32, ptr %r3
    %r116 = load i32, ptr %r9
    %r117 = sub i32 0,%r116
    %r118 = add i32 1,0
    %r119 = sub i32 %r117,%r118
    %r120 = call i32 @get_ans_se(i32 %r114,i32 %r115,i32 %r119)
    store i32 %r120, ptr %r17
    %r121 = load i32, ptr %r17
    %r122 = load i32, ptr %r3
    %r123 = load i32, ptr %r11
    %r124 = add i32 1,0
    %r125 = add i32 %r123,%r124
    %r126 = call i32 @get_ans_se(i32 %r121,i32 %r122,i32 %r125)
    store i32 %r126, ptr %r17
    %r127 = add i32 0,0
    %r128 = load i32, ptr %r5
    %r129 = load i32, ptr %r9
    %r130 = call i32 @get_ans_se(i32 %r127,i32 %r128,i32 %r129)
    store i32 %r130, ptr %r18
    %r131 = load i32, ptr %r18
    %r132 = load i32, ptr %r5
    %r133 = load i32, ptr %r11
    %r134 = call i32 @get_ans_se(i32 %r131,i32 %r132,i32 %r133)
    store i32 %r134, ptr %r18
    %r135 = load i32, ptr %r18
    %r136 = load i32, ptr %r9
    %r137 = load i32, ptr %r11
    %r138 = call i32 @get_ans_se(i32 %r135,i32 %r136,i32 %r137)
    store i32 %r138, ptr %r18
    %r139 = load i32, ptr %r18
    %r140 = load i32, ptr %r0
    %r141 = add i32 2,0
    %r142 = sdiv i32 %r140,%r141
    %r143 = load i32, ptr %r3
    %r144 = add i32 2,0
    %r145 = sdiv i32 %r143,%r144
    %r146 = call i32 @get_ans_se(i32 %r139,i32 %r142,i32 %r145)
    store i32 %r146, ptr %r18
    %r147 = load i32, ptr %r15
    %r148 = load i32, ptr %r16
    %r149 = add i32 %r147,%r148
    %r150 = load i32, ptr %r17
    %r151 = add i32 %r149,%r150
    %r152 = load i32, ptr %r18
    %r153 = add i32 %r151,%r152
    ret i32 %r153
}
