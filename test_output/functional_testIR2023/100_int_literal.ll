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
L0:  ;
    %r6 = alloca i32
    %r5 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    store i32 %r0, ptr %r3
    store i32 %r1, ptr %r4
    store i32 %r2, ptr %r5
    br label %L1
L1:  ;
    %r7 = add i32 0,0
    store i32 %r7, ptr %r6
    %r8 = load i32, ptr %r4
    %r9 = load i32, ptr %r5
    %r10 = icmp eq i32 %r8,%r9
    br i1 %r10, label %L2, label %L3
L2:  ;
    %r11 = add i32 1,0
    store i32 %r11, ptr %r6
    br label %L3
L3:  ;
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
L0:  ;
    %r6 = alloca i32
    %r5 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    store i32 %r0, ptr %r3
    store i32 %r1, ptr %r4
    store i32 %r2, ptr %r5
    br label %L1
L1:  ;
    %r7 = add i32 0,0
    store i32 %r7, ptr %r6
    %r8 = load i32, ptr %r4
    %r9 = load i32, ptr %r5
    %r10 = icmp eq i32 %r8,%r9
    br i1 %r10, label %L2, label %L3
L2:  ;
    %r11 = add i32 1,0
    store i32 %r11, ptr %r6
    br label %L3
L3:  ;
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
L0:  ;
    %r21 = alloca i32
    %r19 = alloca i32
    %r17 = alloca i32
    %r15 = alloca i32
    %r11 = alloca i32
    %r9 = alloca i32
    %r5 = alloca i32
    %r3 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:  ;
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
    %r16 = add i32 0,0
    store i32 %r16, ptr %r15
    %r18 = add i32 0,0
    store i32 %r18, ptr %r17
    %r20 = add i32 0,0
    store i32 %r20, ptr %r19
    %r22 = add i32 0,0
    store i32 %r22, ptr %r21
    %r23 = add i32 0,0
    %r24 = load i32, ptr %r0
    %r25 = load i32, ptr %r3
    %r26 = call i32 @get_ans(i32 %r23,i32 %r24,i32 %r25)
    store i32 %r26, ptr %r15
    %r27 = load i32, ptr %r15
    %r28 = load i32, ptr %r0
    %r29 = add i32 1,0
    %r30 = add i32 %r28,%r29
    %r31 = load i32, ptr %r5
    %r32 = call i32 @get_ans(i32 %r27,i32 %r30,i32 %r31)
    store i32 %r32, ptr %r15
    %r33 = load i32, ptr %r15
    %r34 = load i32, ptr %r0
    %r35 = load i32, ptr %r9
    %r36 = sub i32 0,%r35
    %r37 = add i32 1,0
    %r38 = sub i32 %r36,%r37
    %r39 = call i32 @get_ans(i32 %r33,i32 %r34,i32 %r38)
    store i32 %r39, ptr %r15
    %r40 = load i32, ptr %r15
    %r41 = load i32, ptr %r0
    %r42 = load i32, ptr %r11
    %r43 = add i32 1,0
    %r44 = add i32 %r42,%r43
    %r45 = call i32 @get_ans(i32 %r40,i32 %r41,i32 %r44)
    store i32 %r45, ptr %r15
    %r46 = load i32, ptr %r15
    %r47 = load i32, ptr %r3
    %r48 = add i32 2,0
    %r49 = sdiv i32 %r47,%r48
    %r50 = load i32, ptr %r5
    %r51 = add i32 2,0
    %r52 = sdiv i32 %r50,%r51
    %r53 = call i32 @get_ans(i32 %r46,i32 %r49,i32 %r52)
    store i32 %r53, ptr %r15
    %r54 = load i32, ptr %r15
    %r55 = load i32, ptr %r3
    %r56 = load i32, ptr %r9
    %r57 = sub i32 0,%r56
    %r58 = add i32 1,0
    %r59 = sub i32 %r57,%r58
    %r60 = call i32 @get_ans(i32 %r54,i32 %r55,i32 %r59)
    store i32 %r60, ptr %r15
    %r61 = load i32, ptr %r15
    %r62 = load i32, ptr %r3
    %r63 = load i32, ptr %r11
    %r64 = add i32 1,0
    %r65 = add i32 %r63,%r64
    %r66 = call i32 @get_ans(i32 %r61,i32 %r62,i32 %r65)
    store i32 %r66, ptr %r15
    %r67 = add i32 0,0
    %r68 = load i32, ptr %r5
    %r69 = load i32, ptr %r9
    %r70 = call i32 @get_ans(i32 %r67,i32 %r68,i32 %r69)
    store i32 %r70, ptr %r17
    %r71 = load i32, ptr %r17
    %r72 = load i32, ptr %r5
    %r73 = load i32, ptr %r11
    %r74 = call i32 @get_ans(i32 %r71,i32 %r72,i32 %r73)
    store i32 %r74, ptr %r17
    %r75 = load i32, ptr %r17
    %r76 = load i32, ptr %r9
    %r77 = load i32, ptr %r11
    %r78 = call i32 @get_ans(i32 %r75,i32 %r76,i32 %r77)
    store i32 %r78, ptr %r17
    %r79 = load i32, ptr %r17
    %r80 = load i32, ptr %r0
    %r81 = add i32 2,0
    %r82 = sdiv i32 %r80,%r81
    %r83 = load i32, ptr %r3
    %r84 = add i32 2,0
    %r85 = sdiv i32 %r83,%r84
    %r86 = call i32 @get_ans(i32 %r79,i32 %r82,i32 %r85)
    store i32 %r86, ptr %r17
    %r87 = add i32 0,0
    %r88 = load i32, ptr %r0
    %r89 = load i32, ptr %r3
    %r90 = call i32 @get_ans_se(i32 %r87,i32 %r88,i32 %r89)
    store i32 %r90, ptr %r19
    %r91 = load i32, ptr %r19
    %r92 = load i32, ptr %r0
    %r93 = add i32 1,0
    %r94 = add i32 %r92,%r93
    %r95 = load i32, ptr %r5
    %r96 = call i32 @get_ans_se(i32 %r91,i32 %r94,i32 %r95)
    store i32 %r96, ptr %r19
    %r97 = load i32, ptr %r19
    %r98 = load i32, ptr %r0
    %r99 = load i32, ptr %r9
    %r100 = sub i32 0,%r99
    %r101 = add i32 1,0
    %r102 = sub i32 %r100,%r101
    %r103 = call i32 @get_ans_se(i32 %r97,i32 %r98,i32 %r102)
    store i32 %r103, ptr %r19
    %r104 = load i32, ptr %r19
    %r105 = load i32, ptr %r0
    %r106 = load i32, ptr %r11
    %r107 = add i32 1,0
    %r108 = add i32 %r106,%r107
    %r109 = call i32 @get_ans_se(i32 %r104,i32 %r105,i32 %r108)
    store i32 %r109, ptr %r19
    %r110 = load i32, ptr %r19
    %r111 = load i32, ptr %r3
    %r112 = add i32 2,0
    %r113 = sdiv i32 %r111,%r112
    %r114 = load i32, ptr %r5
    %r115 = add i32 2,0
    %r116 = sdiv i32 %r114,%r115
    %r117 = call i32 @get_ans_se(i32 %r110,i32 %r113,i32 %r116)
    store i32 %r117, ptr %r19
    %r118 = load i32, ptr %r19
    %r119 = load i32, ptr %r3
    %r120 = load i32, ptr %r9
    %r121 = sub i32 0,%r120
    %r122 = add i32 1,0
    %r123 = sub i32 %r121,%r122
    %r124 = call i32 @get_ans_se(i32 %r118,i32 %r119,i32 %r123)
    store i32 %r124, ptr %r19
    %r125 = load i32, ptr %r19
    %r126 = load i32, ptr %r3
    %r127 = load i32, ptr %r11
    %r128 = add i32 1,0
    %r129 = add i32 %r127,%r128
    %r130 = call i32 @get_ans_se(i32 %r125,i32 %r126,i32 %r129)
    store i32 %r130, ptr %r19
    %r131 = add i32 0,0
    %r132 = load i32, ptr %r5
    %r133 = load i32, ptr %r9
    %r134 = call i32 @get_ans_se(i32 %r131,i32 %r132,i32 %r133)
    store i32 %r134, ptr %r21
    %r135 = load i32, ptr %r21
    %r136 = load i32, ptr %r5
    %r137 = load i32, ptr %r11
    %r138 = call i32 @get_ans_se(i32 %r135,i32 %r136,i32 %r137)
    store i32 %r138, ptr %r21
    %r139 = load i32, ptr %r21
    %r140 = load i32, ptr %r9
    %r141 = load i32, ptr %r11
    %r142 = call i32 @get_ans_se(i32 %r139,i32 %r140,i32 %r141)
    store i32 %r142, ptr %r21
    %r143 = load i32, ptr %r21
    %r144 = load i32, ptr %r0
    %r145 = add i32 2,0
    %r146 = sdiv i32 %r144,%r145
    %r147 = load i32, ptr %r3
    %r148 = add i32 2,0
    %r149 = sdiv i32 %r147,%r148
    %r150 = call i32 @get_ans_se(i32 %r143,i32 %r146,i32 %r149)
    store i32 %r150, ptr %r21
    %r151 = load i32, ptr %r15
    %r152 = load i32, ptr %r17
    %r153 = add i32 %r151,%r152
    %r154 = load i32, ptr %r19
    %r155 = add i32 %r153,%r154
    %r156 = load i32, ptr %r21
    %r157 = add i32 %r155,%r156
    ret i32 %r157
}
