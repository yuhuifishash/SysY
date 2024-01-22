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
declare void @starttime()
declare void @stoptime()
declare void @llvm.memset.p0.i32(ptr,i8,i32,i1)
@maxn = global i32 18
@mod = global i32 1000000007
@dp = global [18x [18x [18x [18x [18x [7x i32]]]]]] zeroinitializer
@list = global [200x i32] zeroinitializer
@cns = global [20x i32] zeroinitializer
define i32 @dfs(i32 %r0,i32 %r1,i32 %r2,i32 %r3,i32 %r4,i32 %r5)
{
L0:
    %r47 = alloca i32
    %r6 = alloca i32
    store i32 %r0, ptr %r6
    %r7 = alloca i32
    store i32 %r1, ptr %r7
    %r8 = alloca i32
    store i32 %r2, ptr %r8
    %r9 = alloca i32
    store i32 %r3, ptr %r9
    %r10 = alloca i32
    store i32 %r4, ptr %r10
    %r11 = alloca i32
    store i32 %r5, ptr %r11
    %r12 = load i32, ptr %r6
    %r13 = load i32, ptr %r7
    %r14 = load i32, ptr %r8
    %r15 = load i32, ptr %r9
    %r16 = load i32, ptr %r10
    %r17 = load i32, ptr %r11
    %r18 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], ptr @dp, i32 0, i32 %r12, i32 %r13, i32 %r14, i32 %r15, i32 %r16, i32 %r17
    %r19 = load i32, ptr %r18
    %r20 = add i32 0,1
    %r21 = sub i32 0,%r20
    %r22 = icmp ne i32 %r19,%r21
    br i1 %r22, label %L1, label %L2
L1:
    %r25 = load i32, ptr %r6
    %r26 = load i32, ptr %r7
    %r27 = load i32, ptr %r8
    %r28 = load i32, ptr %r9
    %r29 = load i32, ptr %r10
    %r30 = load i32, ptr %r11
    %r31 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], ptr @dp, i32 0, i32 %r25, i32 %r26, i32 %r27, i32 %r28, i32 %r29, i32 %r30
    %r32 = load i32, ptr %r31
    ret i32 %r32
L2:
    %r33 = load i32, ptr %r6
    %r34 = load i32, ptr %r7
    %r35 = add i32 %r33,%r34
    %r36 = load i32, ptr %r8
    %r37 = add i32 %r35,%r36
    %r38 = load i32, ptr %r9
    %r39 = add i32 %r37,%r38
    %r40 = load i32, ptr %r10
    %r41 = add i32 %r39,%r40
    %r42 = add i32 0,0
    %r43 = icmp eq i32 %r41,%r42
    br i1 %r43, label %L3, label %L4
L3:
    %r46 = add i32 0,1
    ret i32 %r46
L4:
    %r48 = add i32 0,0
    store i32 %r48, ptr %r47
    %r49 = load i32, ptr %r6
    %r50 = icmp ne i32 %r49,0
    br i1 %r50, label %L5, label %L6
L5:
    %r51 = load i32, ptr %r47
    %r52 = load i32, ptr %r6
    %r53 = load i32, ptr %r11
    %r54 = add i32 0,2
    %r55 = call i32 @equal(i32 %r53,i32 %r54)
    %r56 = sub i32 %r52,%r55
    %r57 = load i32, ptr %r6
    %r58 = add i32 0,1
    %r59 = sub i32 %r57,%r58
    %r60 = load i32, ptr %r7
    %r61 = load i32, ptr %r8
    %r62 = load i32, ptr %r9
    %r63 = load i32, ptr %r10
    %r64 = add i32 0,1
    %r65 = call i32 @dfs(i32 %r59,i32 %r60,i32 %r61,i32 %r62,i32 %r63,i32 %r64)
    %r66 = mul i32 %r56,%r65
    %r67 = add i32 %r51,%r66
    %r68 = load i32, ptr @mod
    %r69 = srem i32 %r67,%r68
    store i32 %r69, ptr %r47
    br label %L6
L6:
    %r70 = load i32, ptr %r7
    %r71 = icmp ne i32 %r70,0
    br i1 %r71, label %L7, label %L8
L7:
    %r72 = load i32, ptr %r47
    %r73 = load i32, ptr %r7
    %r74 = load i32, ptr %r11
    %r75 = add i32 0,3
    %r76 = call i32 @equal(i32 %r74,i32 %r75)
    %r77 = sub i32 %r73,%r76
    %r78 = load i32, ptr %r6
    %r79 = add i32 0,1
    %r80 = add i32 %r78,%r79
    %r81 = load i32, ptr %r7
    %r82 = add i32 0,1
    %r83 = sub i32 %r81,%r82
    %r84 = load i32, ptr %r8
    %r85 = load i32, ptr %r9
    %r86 = load i32, ptr %r10
    %r87 = add i32 0,2
    %r88 = call i32 @dfs(i32 %r80,i32 %r83,i32 %r84,i32 %r85,i32 %r86,i32 %r87)
    %r89 = mul i32 %r77,%r88
    %r90 = add i32 %r72,%r89
    %r91 = load i32, ptr @mod
    %r92 = srem i32 %r90,%r91
    store i32 %r92, ptr %r47
    br label %L8
L8:
    %r93 = load i32, ptr %r8
    %r94 = icmp ne i32 %r93,0
    br i1 %r94, label %L9, label %L10
L9:
    %r95 = load i32, ptr %r47
    %r96 = load i32, ptr %r8
    %r97 = load i32, ptr %r11
    %r98 = add i32 0,4
    %r99 = call i32 @equal(i32 %r97,i32 %r98)
    %r100 = sub i32 %r96,%r99
    %r101 = load i32, ptr %r6
    %r102 = load i32, ptr %r7
    %r103 = add i32 0,1
    %r104 = add i32 %r102,%r103
    %r105 = load i32, ptr %r8
    %r106 = add i32 0,1
    %r107 = sub i32 %r105,%r106
    %r108 = load i32, ptr %r9
    %r109 = load i32, ptr %r10
    %r110 = add i32 0,3
    %r111 = call i32 @dfs(i32 %r101,i32 %r104,i32 %r107,i32 %r108,i32 %r109,i32 %r110)
    %r112 = mul i32 %r100,%r111
    %r113 = add i32 %r95,%r112
    %r114 = load i32, ptr @mod
    %r115 = srem i32 %r113,%r114
    store i32 %r115, ptr %r47
    br label %L10
L10:
    %r116 = load i32, ptr %r9
    %r117 = icmp ne i32 %r116,0
    br i1 %r117, label %L11, label %L12
L11:
    %r118 = load i32, ptr %r47
    %r119 = load i32, ptr %r9
    %r120 = load i32, ptr %r11
    %r121 = add i32 0,5
    %r122 = call i32 @equal(i32 %r120,i32 %r121)
    %r123 = sub i32 %r119,%r122
    %r124 = load i32, ptr %r6
    %r125 = load i32, ptr %r7
    %r126 = load i32, ptr %r8
    %r127 = add i32 0,1
    %r128 = add i32 %r126,%r127
    %r129 = load i32, ptr %r9
    %r130 = add i32 0,1
    %r131 = sub i32 %r129,%r130
    %r132 = load i32, ptr %r10
    %r133 = add i32 0,4
    %r134 = call i32 @dfs(i32 %r124,i32 %r125,i32 %r128,i32 %r131,i32 %r132,i32 %r133)
    %r135 = mul i32 %r123,%r134
    %r136 = add i32 %r118,%r135
    %r137 = load i32, ptr @mod
    %r138 = srem i32 %r136,%r137
    store i32 %r138, ptr %r47
    br label %L12
L12:
    %r139 = load i32, ptr %r10
    %r140 = icmp ne i32 %r139,0
    br i1 %r140, label %L13, label %L14
L13:
    %r141 = load i32, ptr %r47
    %r142 = load i32, ptr %r10
    %r143 = load i32, ptr %r6
    %r144 = load i32, ptr %r7
    %r145 = load i32, ptr %r8
    %r146 = load i32, ptr %r9
    %r147 = add i32 0,1
    %r148 = add i32 %r146,%r147
    %r149 = load i32, ptr %r10
    %r150 = add i32 0,1
    %r151 = sub i32 %r149,%r150
    %r152 = add i32 0,5
    %r153 = call i32 @dfs(i32 %r143,i32 %r144,i32 %r145,i32 %r148,i32 %r151,i32 %r152)
    %r154 = mul i32 %r142,%r153
    %r155 = add i32 %r141,%r154
    %r156 = load i32, ptr @mod
    %r157 = srem i32 %r155,%r156
    store i32 %r157, ptr %r47
    br label %L14
L14:
    %r158 = load i32, ptr %r47
    %r159 = load i32, ptr @mod
    %r160 = srem i32 %r158,%r159
    %r161 = load i32, ptr %r6
    %r162 = load i32, ptr %r7
    %r163 = load i32, ptr %r8
    %r164 = load i32, ptr %r9
    %r165 = load i32, ptr %r10
    %r166 = load i32, ptr %r11
    %r167 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], ptr @dp, i32 0, i32 %r161, i32 %r162, i32 %r163, i32 %r164, i32 %r165, i32 %r166
    store i32 %r160, ptr %r167
    %r168 = load i32, ptr %r6
    %r169 = load i32, ptr %r7
    %r170 = load i32, ptr %r8
    %r171 = load i32, ptr %r9
    %r172 = load i32, ptr %r10
    %r173 = load i32, ptr %r11
    %r174 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], ptr @dp, i32 0, i32 %r168, i32 %r169, i32 %r170, i32 %r171, i32 %r172, i32 %r173
    %r175 = load i32, ptr %r174
    ret i32 %r175
}
define i32 @main()
{
L0:
    %r94 = alloca i32
    %r37 = alloca i32
    %r30 = alloca i32
    %r23 = alloca i32
    %r16 = alloca i32
    %r9 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    %r1 = call i32 @getint()
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    br label %L1
L1:
    %r4 = load i32, ptr %r2
    %r5 = load i32, ptr @maxn
    %r6 = icmp slt i32 %r4,%r5
    br i1 %r6, label %L2, label %L3
L2:
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    br label %L4
L3:
    %r71 = add i32 0,0
    store i32 %r71, ptr %r2
    br label %L19
L4:
    %r11 = load i32, ptr %r9
    %r12 = load i32, ptr @maxn
    %r13 = icmp slt i32 %r11,%r12
    br i1 %r13, label %L5, label %L6
L5:
    %r17 = add i32 0,0
    store i32 %r17, ptr %r16
    br label %L7
L6:
    %r68 = load i32, ptr %r2
    %r69 = add i32 0,1
    %r70 = add i32 %r68,%r69
    store i32 %r70, ptr %r2
    br label %L1
L7:
    %r18 = load i32, ptr %r16
    %r19 = load i32, ptr @maxn
    %r20 = icmp slt i32 %r18,%r19
    br i1 %r20, label %L8, label %L9
L8:
    %r24 = add i32 0,0
    store i32 %r24, ptr %r23
    br label %L10
L9:
    %r65 = load i32, ptr %r9
    %r66 = add i32 0,1
    %r67 = add i32 %r65,%r66
    store i32 %r67, ptr %r9
    br label %L4
L10:
    %r25 = load i32, ptr %r23
    %r26 = load i32, ptr @maxn
    %r27 = icmp slt i32 %r25,%r26
    br i1 %r27, label %L11, label %L12
L11:
    %r31 = add i32 0,0
    store i32 %r31, ptr %r30
    br label %L13
L12:
    %r62 = load i32, ptr %r16
    %r63 = add i32 0,1
    %r64 = add i32 %r62,%r63
    store i32 %r64, ptr %r16
    br label %L7
L13:
    %r32 = load i32, ptr %r30
    %r33 = load i32, ptr @maxn
    %r34 = icmp slt i32 %r32,%r33
    br i1 %r34, label %L14, label %L15
L14:
    %r38 = add i32 0,0
    store i32 %r38, ptr %r37
    br label %L16
L15:
    %r59 = load i32, ptr %r23
    %r60 = add i32 0,1
    %r61 = add i32 %r59,%r60
    store i32 %r61, ptr %r23
    br label %L10
L16:
    %r39 = load i32, ptr %r37
    %r40 = add i32 0,7
    %r41 = icmp slt i32 %r39,%r40
    br i1 %r41, label %L17, label %L18
L17:
    %r44 = add i32 0,1
    %r45 = sub i32 0,%r44
    %r46 = load i32, ptr %r2
    %r47 = load i32, ptr %r9
    %r48 = load i32, ptr %r16
    %r49 = load i32, ptr %r23
    %r50 = load i32, ptr %r30
    %r51 = load i32, ptr %r37
    %r52 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], ptr @dp, i32 0, i32 %r46, i32 %r47, i32 %r48, i32 %r49, i32 %r50, i32 %r51
    store i32 %r45, ptr %r52
    %r53 = load i32, ptr %r37
    %r54 = add i32 0,1
    %r55 = add i32 %r53,%r54
    store i32 %r55, ptr %r37
    br label %L16
L18:
    %r56 = load i32, ptr %r30
    %r57 = add i32 0,1
    %r58 = add i32 %r56,%r57
    store i32 %r58, ptr %r30
    br label %L13
L19:
    %r72 = load i32, ptr %r2
    %r73 = load i32, ptr %r0
    %r74 = icmp slt i32 %r72,%r73
    br i1 %r74, label %L20, label %L21
L20:
    %r77 = call i32 @getint()
    %r78 = load i32, ptr %r2
    %r79 = getelementptr [200 x i32], ptr @list, i32 0, i32 %r78
    store i32 %r77, ptr %r79
    %r80 = load i32, ptr %r2
    %r81 = getelementptr [200 x i32], ptr @list, i32 0, i32 %r80
    %r82 = load i32, ptr %r81
    %r83 = getelementptr [20 x i32], ptr @cns, i32 0, i32 %r82
    %r84 = load i32, ptr %r83
    %r85 = add i32 0,1
    %r86 = add i32 %r84,%r85
    %r87 = load i32, ptr %r2
    %r88 = getelementptr [200 x i32], ptr @list, i32 0, i32 %r87
    %r89 = load i32, ptr %r88
    %r90 = getelementptr [20 x i32], ptr @cns, i32 0, i32 %r89
    store i32 %r86, ptr %r90
    %r91 = load i32, ptr %r2
    %r92 = add i32 0,1
    %r93 = add i32 %r91,%r92
    store i32 %r93, ptr %r2
    br label %L19
L21:
    %r95 = add i32 0,1
    %r96 = getelementptr [20 x i32], ptr @cns, i32 0, i32 %r95
    %r97 = load i32, ptr %r96
    %r98 = add i32 0,2
    %r99 = getelementptr [20 x i32], ptr @cns, i32 0, i32 %r98
    %r100 = load i32, ptr %r99
    %r101 = add i32 0,3
    %r102 = getelementptr [20 x i32], ptr @cns, i32 0, i32 %r101
    %r103 = load i32, ptr %r102
    %r104 = add i32 0,4
    %r105 = getelementptr [20 x i32], ptr @cns, i32 0, i32 %r104
    %r106 = load i32, ptr %r105
    %r107 = add i32 0,5
    %r108 = getelementptr [20 x i32], ptr @cns, i32 0, i32 %r107
    %r109 = load i32, ptr %r108
    %r110 = add i32 0,0
    %r111 = call i32 @dfs(i32 %r97,i32 %r100,i32 %r103,i32 %r106,i32 %r109,i32 %r110)
    store i32 %r111, ptr %r94
    %r112 = load i32, ptr %r94
    call void @putint(i32 %r112)
    %r113 = load i32, ptr %r94
    ret i32 %r113
}
define i32 @equal(i32 %r0,i32 %r1)
{
L0:
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    %r4 = load i32, ptr %r2
    %r5 = load i32, ptr %r3
    %r6 = icmp eq i32 %r4,%r5
    br i1 %r6, label %L1, label %L2
L1:
    %r9 = add i32 0,1
    ret i32 %r9
L2:
    %r10 = add i32 0,0
    ret i32 %r10
}
