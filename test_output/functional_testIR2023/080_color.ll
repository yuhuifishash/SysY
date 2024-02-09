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
@maxn = global i32 18
@mod = global i32 1000000007
@dp = global [18x [18x [18x [18x [18x [7x i32]]]]]] zeroinitializer
@list = global [200x i32] zeroinitializer
@cns = global [20x i32] zeroinitializer
define i32 @dfs(i32 %r0,i32 %r1,i32 %r2,i32 %r3,i32 %r4,i32 %r5)
{
L0:
    %r43 = alloca i32
    %r11 = alloca i32
    %r10 = alloca i32
    %r9 = alloca i32
    %r8 = alloca i32
    %r7 = alloca i32
    %r6 = alloca i32
    store i32 %r0, ptr %r6
    store i32 %r1, ptr %r7
    store i32 %r2, ptr %r8
    store i32 %r3, ptr %r9
    store i32 %r4, ptr %r10
    store i32 %r5, ptr %r11
    br label %L1
L1:
    %r12 = load i32, ptr %r6
    %r13 = load i32, ptr %r7
    %r14 = load i32, ptr %r8
    %r15 = load i32, ptr %r9
    %r16 = load i32, ptr %r10
    %r17 = load i32, ptr %r11
    %r18 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], ptr @dp, i32 0, i32 %r12, i32 %r13, i32 %r14, i32 %r15, i32 %r16, i32 %r17
    %r19 = load i32, ptr %r18
    %r20 = add i32 1,0
    %r21 = sub i32 0,%r20
    %r22 = icmp ne i32 %r19,%r21
    br i1 %r22, label %L2, label %L3
L2:
    %r23 = load i32, ptr %r6
    %r24 = load i32, ptr %r7
    %r25 = load i32, ptr %r8
    %r26 = load i32, ptr %r9
    %r27 = load i32, ptr %r10
    %r28 = load i32, ptr %r11
    %r29 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], ptr @dp, i32 0, i32 %r23, i32 %r24, i32 %r25, i32 %r26, i32 %r27, i32 %r28
    %r30 = load i32, ptr %r29
    ret i32 %r30
    br label %L3
L3:
    %r31 = load i32, ptr %r6
    %r32 = load i32, ptr %r7
    %r33 = add i32 %r31,%r32
    %r34 = load i32, ptr %r8
    %r35 = add i32 %r33,%r34
    %r36 = load i32, ptr %r9
    %r37 = add i32 %r35,%r36
    %r38 = load i32, ptr %r10
    %r39 = add i32 %r37,%r38
    %r40 = add i32 0,0
    %r41 = icmp eq i32 %r39,%r40
    br i1 %r41, label %L4, label %L5
L4:
    %r42 = add i32 1,0
    ret i32 %r42
    br label %L5
L5:
    %r44 = add i32 0,0
    store i32 %r44, ptr %r43
    %r45 = load i32, ptr %r6
    %r46 = icmp ne i32 %r45,0
    br i1 %r46, label %L6, label %L7
L6:
    %r47 = load i32, ptr %r43
    %r48 = load i32, ptr %r6
    %r49 = load i32, ptr %r11
    %r50 = add i32 2,0
    %r51 = call i32 @equal(i32 %r49,i32 %r50)
    %r52 = sub i32 %r48,%r51
    %r53 = load i32, ptr %r6
    %r54 = add i32 1,0
    %r55 = sub i32 %r53,%r54
    %r56 = load i32, ptr %r7
    %r57 = load i32, ptr %r8
    %r58 = load i32, ptr %r9
    %r59 = load i32, ptr %r10
    %r60 = add i32 1,0
    %r61 = call i32 @dfs(i32 %r55,i32 %r56,i32 %r57,i32 %r58,i32 %r59,i32 %r60)
    %r62 = mul i32 %r52,%r61
    %r63 = add i32 %r47,%r62
    %r64 = load i32, ptr @mod
    %r65 = srem i32 %r63,%r64
    store i32 %r65, ptr %r43
    br label %L7
L7:
    %r66 = load i32, ptr %r7
    %r67 = icmp ne i32 %r66,0
    br i1 %r67, label %L8, label %L9
L8:
    %r68 = load i32, ptr %r43
    %r69 = load i32, ptr %r7
    %r70 = load i32, ptr %r11
    %r71 = add i32 3,0
    %r72 = call i32 @equal(i32 %r70,i32 %r71)
    %r73 = sub i32 %r69,%r72
    %r74 = load i32, ptr %r6
    %r75 = add i32 1,0
    %r76 = add i32 %r74,%r75
    %r77 = load i32, ptr %r7
    %r78 = add i32 1,0
    %r79 = sub i32 %r77,%r78
    %r80 = load i32, ptr %r8
    %r81 = load i32, ptr %r9
    %r82 = load i32, ptr %r10
    %r83 = add i32 2,0
    %r84 = call i32 @dfs(i32 %r76,i32 %r79,i32 %r80,i32 %r81,i32 %r82,i32 %r83)
    %r85 = mul i32 %r73,%r84
    %r86 = add i32 %r68,%r85
    %r87 = load i32, ptr @mod
    %r88 = srem i32 %r86,%r87
    store i32 %r88, ptr %r43
    br label %L9
L9:
    %r89 = load i32, ptr %r8
    %r90 = icmp ne i32 %r89,0
    br i1 %r90, label %L10, label %L11
L10:
    %r91 = load i32, ptr %r43
    %r92 = load i32, ptr %r8
    %r93 = load i32, ptr %r11
    %r94 = add i32 4,0
    %r95 = call i32 @equal(i32 %r93,i32 %r94)
    %r96 = sub i32 %r92,%r95
    %r97 = load i32, ptr %r6
    %r98 = load i32, ptr %r7
    %r99 = add i32 1,0
    %r100 = add i32 %r98,%r99
    %r101 = load i32, ptr %r8
    %r102 = add i32 1,0
    %r103 = sub i32 %r101,%r102
    %r104 = load i32, ptr %r9
    %r105 = load i32, ptr %r10
    %r106 = add i32 3,0
    %r107 = call i32 @dfs(i32 %r97,i32 %r100,i32 %r103,i32 %r104,i32 %r105,i32 %r106)
    %r108 = mul i32 %r96,%r107
    %r109 = add i32 %r91,%r108
    %r110 = load i32, ptr @mod
    %r111 = srem i32 %r109,%r110
    store i32 %r111, ptr %r43
    br label %L11
L11:
    %r112 = load i32, ptr %r9
    %r113 = icmp ne i32 %r112,0
    br i1 %r113, label %L12, label %L13
L12:
    %r114 = load i32, ptr %r43
    %r115 = load i32, ptr %r9
    %r116 = load i32, ptr %r11
    %r117 = add i32 5,0
    %r118 = call i32 @equal(i32 %r116,i32 %r117)
    %r119 = sub i32 %r115,%r118
    %r120 = load i32, ptr %r6
    %r121 = load i32, ptr %r7
    %r122 = load i32, ptr %r8
    %r123 = add i32 1,0
    %r124 = add i32 %r122,%r123
    %r125 = load i32, ptr %r9
    %r126 = add i32 1,0
    %r127 = sub i32 %r125,%r126
    %r128 = load i32, ptr %r10
    %r129 = add i32 4,0
    %r130 = call i32 @dfs(i32 %r120,i32 %r121,i32 %r124,i32 %r127,i32 %r128,i32 %r129)
    %r131 = mul i32 %r119,%r130
    %r132 = add i32 %r114,%r131
    %r133 = load i32, ptr @mod
    %r134 = srem i32 %r132,%r133
    store i32 %r134, ptr %r43
    br label %L13
L13:
    %r135 = load i32, ptr %r10
    %r136 = icmp ne i32 %r135,0
    br i1 %r136, label %L14, label %L15
L14:
    %r137 = load i32, ptr %r43
    %r138 = load i32, ptr %r10
    %r139 = load i32, ptr %r6
    %r140 = load i32, ptr %r7
    %r141 = load i32, ptr %r8
    %r142 = load i32, ptr %r9
    %r143 = add i32 1,0
    %r144 = add i32 %r142,%r143
    %r145 = load i32, ptr %r10
    %r146 = add i32 1,0
    %r147 = sub i32 %r145,%r146
    %r148 = add i32 5,0
    %r149 = call i32 @dfs(i32 %r139,i32 %r140,i32 %r141,i32 %r144,i32 %r147,i32 %r148)
    %r150 = mul i32 %r138,%r149
    %r151 = add i32 %r137,%r150
    %r152 = load i32, ptr @mod
    %r153 = srem i32 %r151,%r152
    store i32 %r153, ptr %r43
    br label %L15
L15:
    %r154 = load i32, ptr %r6
    %r155 = load i32, ptr %r7
    %r156 = load i32, ptr %r8
    %r157 = load i32, ptr %r9
    %r158 = load i32, ptr %r10
    %r159 = load i32, ptr %r11
    %r160 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], ptr @dp, i32 0, i32 %r154, i32 %r155, i32 %r156, i32 %r157, i32 %r158, i32 %r159
    %r161 = load i32, ptr %r43
    %r162 = load i32, ptr @mod
    %r163 = srem i32 %r161,%r162
    store i32 %r163, ptr %r160
    %r164 = load i32, ptr %r6
    %r165 = load i32, ptr %r7
    %r166 = load i32, ptr %r8
    %r167 = load i32, ptr %r9
    %r168 = load i32, ptr %r10
    %r169 = load i32, ptr %r11
    %r170 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], ptr @dp, i32 0, i32 %r164, i32 %r165, i32 %r166, i32 %r167, i32 %r168, i32 %r169
    %r171 = load i32, ptr %r170
    ret i32 %r171
}
define i32 @equal(i32 %r0,i32 %r1)
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
    %r7 = add i32 1,0
    ret i32 %r7
    br label %L3
L3:
    %r8 = add i32 0,0
    ret i32 %r8
}
define i32 @main()
{
L0:
    %r80 = alloca i32
    %r27 = alloca i32
    %r22 = alloca i32
    %r17 = alloca i32
    %r12 = alloca i32
    %r7 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = call i32 @getint()
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    br label %L2
L2:
    %r4 = load i32, ptr %r2
    %r5 = load i32, ptr @maxn
    %r6 = icmp slt i32 %r4,%r5
    br i1 %r6, label %L3, label %L4
L3:
    %r8 = add i32 0,0
    store i32 %r8, ptr %r7
    br label %L5
L4:
    %r59 = add i32 0,0
    store i32 %r59, ptr %r2
    br label %L20
L5:
    %r9 = load i32, ptr %r7
    %r10 = load i32, ptr @maxn
    %r11 = icmp slt i32 %r9,%r10
    br i1 %r11, label %L6, label %L7
L6:
    %r13 = add i32 0,0
    store i32 %r13, ptr %r12
    br label %L8
L7:
    %r56 = load i32, ptr %r2
    %r57 = add i32 1,0
    %r58 = add i32 %r56,%r57
    store i32 %r58, ptr %r2
    br label %L2
L8:
    %r14 = load i32, ptr %r12
    %r15 = load i32, ptr @maxn
    %r16 = icmp slt i32 %r14,%r15
    br i1 %r16, label %L9, label %L10
L9:
    %r18 = add i32 0,0
    store i32 %r18, ptr %r17
    br label %L11
L10:
    %r53 = load i32, ptr %r7
    %r54 = add i32 1,0
    %r55 = add i32 %r53,%r54
    store i32 %r55, ptr %r7
    br label %L5
L11:
    %r19 = load i32, ptr %r17
    %r20 = load i32, ptr @maxn
    %r21 = icmp slt i32 %r19,%r20
    br i1 %r21, label %L12, label %L13
L12:
    %r23 = add i32 0,0
    store i32 %r23, ptr %r22
    br label %L14
L13:
    %r50 = load i32, ptr %r12
    %r51 = add i32 1,0
    %r52 = add i32 %r50,%r51
    store i32 %r52, ptr %r12
    br label %L8
L14:
    %r24 = load i32, ptr %r22
    %r25 = load i32, ptr @maxn
    %r26 = icmp slt i32 %r24,%r25
    br i1 %r26, label %L15, label %L16
L15:
    %r28 = add i32 0,0
    store i32 %r28, ptr %r27
    br label %L17
L16:
    %r47 = load i32, ptr %r17
    %r48 = add i32 1,0
    %r49 = add i32 %r47,%r48
    store i32 %r49, ptr %r17
    br label %L11
L17:
    %r29 = load i32, ptr %r27
    %r30 = add i32 7,0
    %r31 = icmp slt i32 %r29,%r30
    br i1 %r31, label %L18, label %L19
L18:
    %r32 = load i32, ptr %r2
    %r33 = load i32, ptr %r7
    %r34 = load i32, ptr %r12
    %r35 = load i32, ptr %r17
    %r36 = load i32, ptr %r22
    %r37 = load i32, ptr %r27
    %r38 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], ptr @dp, i32 0, i32 %r32, i32 %r33, i32 %r34, i32 %r35, i32 %r36, i32 %r37
    %r39 = add i32 1,0
    %r40 = sub i32 0,%r39
    store i32 %r40, ptr %r38
    %r41 = load i32, ptr %r27
    %r42 = add i32 1,0
    %r43 = add i32 %r41,%r42
    store i32 %r43, ptr %r27
    br label %L17
L19:
    %r44 = load i32, ptr %r22
    %r45 = add i32 1,0
    %r46 = add i32 %r44,%r45
    store i32 %r46, ptr %r22
    br label %L14
L20:
    %r60 = load i32, ptr %r2
    %r61 = load i32, ptr %r0
    %r62 = icmp slt i32 %r60,%r61
    br i1 %r62, label %L21, label %L22
L21:
    %r63 = load i32, ptr %r2
    %r64 = getelementptr [200 x i32], ptr @list, i32 0, i32 %r63
    %r65 = call i32 @getint()
    store i32 %r65, ptr %r64
    %r66 = load i32, ptr %r2
    %r67 = getelementptr [200 x i32], ptr @list, i32 0, i32 %r66
    %r68 = load i32, ptr %r67
    %r69 = getelementptr [20 x i32], ptr @cns, i32 0, i32 %r68
    %r70 = load i32, ptr %r2
    %r71 = getelementptr [200 x i32], ptr @list, i32 0, i32 %r70
    %r72 = load i32, ptr %r71
    %r73 = getelementptr [20 x i32], ptr @cns, i32 0, i32 %r72
    %r74 = load i32, ptr %r73
    %r75 = add i32 1,0
    %r76 = add i32 %r74,%r75
    store i32 %r76, ptr %r69
    %r77 = load i32, ptr %r2
    %r78 = add i32 1,0
    %r79 = add i32 %r77,%r78
    store i32 %r79, ptr %r2
    br label %L20
L22:
    %r81 = add i32 1,0
    %r82 = getelementptr [20 x i32], ptr @cns, i32 0, i32 %r81
    %r83 = load i32, ptr %r82
    %r84 = add i32 2,0
    %r85 = getelementptr [20 x i32], ptr @cns, i32 0, i32 %r84
    %r86 = load i32, ptr %r85
    %r87 = add i32 3,0
    %r88 = getelementptr [20 x i32], ptr @cns, i32 0, i32 %r87
    %r89 = load i32, ptr %r88
    %r90 = add i32 4,0
    %r91 = getelementptr [20 x i32], ptr @cns, i32 0, i32 %r90
    %r92 = load i32, ptr %r91
    %r93 = add i32 5,0
    %r94 = getelementptr [20 x i32], ptr @cns, i32 0, i32 %r93
    %r95 = load i32, ptr %r94
    %r96 = add i32 0,0
    %r97 = call i32 @dfs(i32 %r83,i32 %r86,i32 %r89,i32 %r92,i32 %r95,i32 %r96)
    store i32 %r97, ptr %r80
    %r98 = load i32, ptr %r80
    call void @putint(i32 %r98)
    %r99 = load i32, ptr %r80
    ret i32 %r99
}
