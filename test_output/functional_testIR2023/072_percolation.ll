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
@array = global [110x i32] zeroinitializer
@n = global i32 zeroinitializer
define void @init(i32 %r0)
{
L0:
    %r2 = alloca i32
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:
    %r3 = add i32 0,1
    store i32 %r3, ptr %r2
    %r4 = load i32, ptr %r2
    %r5 = load i32, ptr %r1
    %r6 = load i32, ptr %r1
    %r7 = mul i32 %r5,%r6
    %r8 = add i32 0,1
    %r9 = add i32 %r7,%r8
    %r10 = icmp sle i32 %r4,%r9
    br i1 %r10, label %L3, label %L5
L3:
    %r13 = add i32 0,1
    %r14 = sub i32 0,%r13
    %r15 = load i32, ptr %r2
    %r16 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r15
    store i32 %r14, ptr %r16
    %r17 = load i32, ptr %r2
    %r18 = add i32 0,1
    %r19 = add i32 %r17,%r18
    store i32 %r19, ptr %r2
    br label %L4
L4:
    %r20 = load i32, ptr %r2
    %r21 = load i32, ptr %r1
    %r22 = load i32, ptr %r1
    %r23 = mul i32 %r21,%r22
    %r24 = add i32 0,1
    %r25 = add i32 %r23,%r24
    %r26 = icmp sle i32 %r20,%r25
    br i1 %r26, label %L3, label %L5
L5:
    ret void
}
define i32 @findfa(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:
    %r2 = load i32, ptr %r1
    %r3 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r2
    %r4 = load i32, ptr %r3
    %r5 = load i32, ptr %r1
    %r6 = icmp eq i32 %r4,%r5
    br i1 %r6, label %L2, label %L3
L2:
    %r9 = load i32, ptr %r1
    ret i32 %r9
L3:
    %r10 = load i32, ptr %r1
    %r11 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r10
    %r12 = load i32, ptr %r11
    %r13 = call i32 @findfa(i32 %r12)
    %r14 = load i32, ptr %r1
    %r15 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r14
    store i32 %r13, ptr %r15
    %r16 = load i32, ptr %r1
    %r17 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r16
    %r18 = load i32, ptr %r17
    ret i32 %r18
}
define void @mmerge(i32 %r0,i32 %r1)
{
L0:
    %r7 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r5 = load i32, ptr %r2
    %r6 = call i32 @findfa(i32 %r5)
    store i32 %r6, ptr %r4
    %r8 = load i32, ptr %r3
    %r9 = call i32 @findfa(i32 %r8)
    store i32 %r9, ptr %r7
    %r10 = load i32, ptr %r4
    %r11 = load i32, ptr %r7
    %r12 = icmp ne i32 %r10,%r11
    br i1 %r12, label %L2, label %L3
L2:
    %r15 = load i32, ptr %r7
    %r16 = load i32, ptr %r4
    %r17 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r16
    store i32 %r15, ptr %r17
    br label %L3
L3:
    ret void
}
define i32 @main()
{
L0:
    %r187 = alloca i32
    %r38 = alloca i32
    %r21 = alloca i32
    %r18 = alloca i32
    %r16 = alloca i32
    %r6 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    %r7 = add i32 0,0
    store i32 %r7, ptr %r6
    %r8 = add i32 0,1
    store i32 %r8, ptr %r0
    %r9 = load i32, ptr %r0
    %r10 = icmp ne i32 %r9,0
    br i1 %r10, label %L3, label %L5
L3:
    %r11 = load i32, ptr %r0
    %r12 = add i32 0,1
    %r13 = sub i32 %r11,%r12
    store i32 %r13, ptr %r0
    %r14 = add i32 0,4
    store i32 %r14, ptr @n
    %r15 = add i32 0,10
    store i32 %r15, ptr %r2
    %r17 = add i32 0,0
    store i32 %r17, ptr %r16
    %r19 = add i32 0,0
    store i32 %r19, ptr %r18
    %r20 = load i32, ptr @n
    call void @init(i32 %r20)
    %r22 = load i32, ptr @n
    %r23 = load i32, ptr @n
    %r24 = mul i32 %r22,%r23
    %r25 = add i32 0,1
    %r26 = add i32 %r24,%r25
    store i32 %r26, ptr %r21
    %r27 = load i32, ptr %r16
    %r28 = load i32, ptr %r2
    %r29 = icmp slt i32 %r27,%r28
    br i1 %r29, label %L7, label %L9
L4:
    %r208 = load i32, ptr %r0
    %r209 = icmp ne i32 %r208,0
    br i1 %r209, label %L3, label %L5
L5:
    %r210 = add i32 0,0
    ret i32 %r210
L7:
    %r32 = call i32 @getint()
    store i32 %r32, ptr %r4
    %r33 = call i32 @getint()
    store i32 %r33, ptr %r6
    %r34 = load i32, ptr %r18
    %r35 = icmp eq i32 %r34,0
    br i1 %r35, label %L10, label %L11
L8:
    %r196 = load i32, ptr %r16
    %r197 = load i32, ptr %r2
    %r198 = icmp slt i32 %r196,%r197
    br i1 %r198, label %L7, label %L9
L9:
    %r201 = load i32, ptr %r18
    %r202 = icmp eq i32 %r201,0
    br i1 %r202, label %L38, label %L39
L10:
    %r39 = load i32, ptr @n
    %r40 = load i32, ptr %r4
    %r41 = add i32 0,1
    %r42 = sub i32 %r40,%r41
    %r43 = mul i32 %r39,%r42
    %r44 = load i32, ptr %r6
    %r45 = add i32 %r43,%r44
    store i32 %r45, ptr %r38
    %r46 = load i32, ptr %r38
    %r47 = load i32, ptr %r38
    %r48 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r47
    store i32 %r46, ptr %r48
    %r49 = load i32, ptr %r4
    %r50 = add i32 0,1
    %r51 = icmp eq i32 %r49,%r50
    br i1 %r51, label %L12, label %L13
L11:
    %r193 = load i32, ptr %r16
    %r194 = add i32 0,1
    %r195 = add i32 %r193,%r194
    store i32 %r195, ptr %r16
    br label %L8
L12:
    %r54 = add i32 0,0
    %r55 = add i32 0,0
    %r56 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r55
    store i32 %r54, ptr %r56
    %r57 = load i32, ptr %r38
    %r58 = add i32 0,0
    call void @mmerge(i32 %r57,i32 %r58)
    br label %L13
L13:
    %r59 = load i32, ptr %r4
    %r60 = load i32, ptr @n
    %r61 = icmp eq i32 %r59,%r60
    br i1 %r61, label %L14, label %L15
L14:
    %r64 = load i32, ptr %r21
    %r65 = load i32, ptr %r21
    %r66 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r65
    store i32 %r64, ptr %r66
    %r67 = load i32, ptr %r38
    %r68 = load i32, ptr %r21
    call void @mmerge(i32 %r67,i32 %r68)
    br label %L15
L15:
    %r69 = load i32, ptr %r6
    %r70 = load i32, ptr @n
    %r71 = icmp slt i32 %r69,%r70
    br i1 %r71, label %L18, label %L17
L16:
    %r87 = load i32, ptr %r38
    %r88 = load i32, ptr %r38
    %r89 = add i32 0,1
    %r90 = add i32 %r88,%r89
    call void @mmerge(i32 %r87,i32 %r90)
    br label %L17
L17:
    %r91 = load i32, ptr %r6
    %r92 = add i32 0,1
    %r93 = icmp sgt i32 %r91,%r92
    br i1 %r93, label %L22, label %L21
L18:
    %r74 = load i32, ptr %r38
    %r75 = add i32 0,1
    %r76 = add i32 %r74,%r75
    %r77 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r76
    %r78 = load i32, ptr %r77
    %r79 = add i32 0,1
    %r80 = sub i32 0,%r79
    %r81 = icmp ne i32 %r78,%r80
    br i1 %r81, label %L16, label %L17
L20:
    %r109 = load i32, ptr %r38
    %r110 = load i32, ptr %r38
    %r111 = add i32 0,1
    %r112 = sub i32 %r110,%r111
    call void @mmerge(i32 %r109,i32 %r112)
    br label %L21
L21:
    %r113 = load i32, ptr %r4
    %r114 = load i32, ptr @n
    %r115 = icmp slt i32 %r113,%r114
    br i1 %r115, label %L26, label %L25
L22:
    %r96 = load i32, ptr %r38
    %r97 = add i32 0,1
    %r98 = sub i32 %r96,%r97
    %r99 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r98
    %r100 = load i32, ptr %r99
    %r101 = add i32 0,1
    %r102 = sub i32 0,%r101
    %r103 = icmp ne i32 %r100,%r102
    br i1 %r103, label %L20, label %L21
L24:
    %r131 = load i32, ptr %r38
    %r132 = load i32, ptr %r38
    %r133 = load i32, ptr @n
    %r134 = add i32 %r132,%r133
    call void @mmerge(i32 %r131,i32 %r134)
    br label %L25
L25:
    %r135 = load i32, ptr %r4
    %r136 = add i32 0,1
    %r137 = icmp sgt i32 %r135,%r136
    br i1 %r137, label %L30, label %L29
L26:
    %r118 = load i32, ptr %r38
    %r119 = load i32, ptr @n
    %r120 = add i32 %r118,%r119
    %r121 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r120
    %r122 = load i32, ptr %r121
    %r123 = add i32 0,1
    %r124 = sub i32 0,%r123
    %r125 = icmp ne i32 %r122,%r124
    br i1 %r125, label %L24, label %L25
L28:
    %r153 = load i32, ptr %r38
    %r154 = load i32, ptr %r38
    %r155 = load i32, ptr @n
    %r156 = sub i32 %r154,%r155
    call void @mmerge(i32 %r153,i32 %r156)
    br label %L29
L29:
    %r157 = add i32 0,0
    %r158 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r157
    %r159 = load i32, ptr %r158
    %r160 = add i32 0,1
    %r161 = sub i32 0,%r160
    %r162 = icmp ne i32 %r159,%r161
    br i1 %r162, label %L36, label %L33
L30:
    %r140 = load i32, ptr %r38
    %r141 = load i32, ptr @n
    %r142 = sub i32 %r140,%r141
    %r143 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r142
    %r144 = load i32, ptr %r143
    %r145 = add i32 0,1
    %r146 = sub i32 0,%r145
    %r147 = icmp ne i32 %r144,%r146
    br i1 %r147, label %L28, label %L29
L32:
    %r186 = add i32 0,1
    store i32 %r186, ptr %r18
    %r188 = load i32, ptr %r16
    %r189 = add i32 0,1
    %r190 = add i32 %r188,%r189
    store i32 %r190, ptr %r187
    %r191 = load i32, ptr %r187
    call void @putint(i32 %r191)
    %r192 = add i32 0,10
    call void @putch(i32 %r192)
    br label %L33
L33:
    br label %L11
L34:
    %r176 = add i32 0,0
    %r177 = call i32 @findfa(i32 %r176)
    %r178 = load i32, ptr %r21
    %r179 = call i32 @findfa(i32 %r178)
    %r180 = icmp eq i32 %r177,%r179
    br i1 %r180, label %L32, label %L33
L36:
    %r165 = load i32, ptr %r21
    %r166 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r165
    %r167 = load i32, ptr %r166
    %r168 = add i32 0,1
    %r169 = sub i32 0,%r168
    %r170 = icmp ne i32 %r167,%r169
    br i1 %r170, label %L34, label %L33
L38:
    %r205 = add i32 0,1
    %r206 = sub i32 0,%r205
    call void @putint(i32 %r206)
    %r207 = add i32 0,10
    call void @putch(i32 %r207)
    br label %L39
L39:
    br label %L4
}
