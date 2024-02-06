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
@N = global i32 10000
define i32 @long_array(i32 %r0)
{
L0:
    %r139 = alloca i32
    %r107 = alloca i32
    %r81 = alloca i32
    %r5 = alloca i32
    %r4 = alloca [10000 x i32]
    %r3 = alloca [10000 x i32]
    %r2 = alloca [10000 x i32]
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    %r7 = load i32, ptr %r5
    %r8 = load i32, ptr @N
    %r9 = icmp slt i32 %r7,%r8
    br i1 %r9, label %L3, label %L5
L3:
    %r12 = load i32, ptr %r5
    %r13 = load i32, ptr %r5
    %r14 = mul i32 %r12,%r13
    %r15 = add i32 0,10
    %r16 = srem i32 %r14,%r15
    %r17 = load i32, ptr %r5
    %r18 = getelementptr [10000 x i32], ptr %r2, i32 0, i32 %r17
    store i32 %r16, ptr %r18
    %r19 = load i32, ptr %r5
    %r20 = add i32 0,1
    %r21 = add i32 %r19,%r20
    store i32 %r21, ptr %r5
    br label %L4
L4:
    %r22 = load i32, ptr %r5
    %r23 = load i32, ptr @N
    %r24 = icmp slt i32 %r22,%r23
    br i1 %r24, label %L3, label %L5
L5:
    %r27 = add i32 0,0
    store i32 %r27, ptr %r5
    %r28 = load i32, ptr %r5
    %r29 = load i32, ptr @N
    %r30 = icmp slt i32 %r28,%r29
    br i1 %r30, label %L7, label %L9
L7:
    %r33 = load i32, ptr %r5
    %r34 = getelementptr [10000 x i32], ptr %r2, i32 0, i32 %r33
    %r35 = load i32, ptr %r34
    %r36 = load i32, ptr %r5
    %r37 = getelementptr [10000 x i32], ptr %r2, i32 0, i32 %r36
    %r38 = load i32, ptr %r37
    %r39 = mul i32 %r35,%r38
    %r40 = add i32 0,10
    %r41 = srem i32 %r39,%r40
    %r42 = load i32, ptr %r5
    %r43 = getelementptr [10000 x i32], ptr %r3, i32 0, i32 %r42
    store i32 %r41, ptr %r43
    %r44 = load i32, ptr %r5
    %r45 = add i32 0,1
    %r46 = add i32 %r44,%r45
    store i32 %r46, ptr %r5
    br label %L8
L8:
    %r47 = load i32, ptr %r5
    %r48 = load i32, ptr @N
    %r49 = icmp slt i32 %r47,%r48
    br i1 %r49, label %L7, label %L9
L9:
    %r52 = add i32 0,0
    store i32 %r52, ptr %r5
    %r53 = load i32, ptr %r5
    %r54 = load i32, ptr @N
    %r55 = icmp slt i32 %r53,%r54
    br i1 %r55, label %L11, label %L13
L11:
    %r58 = load i32, ptr %r5
    %r59 = getelementptr [10000 x i32], ptr %r3, i32 0, i32 %r58
    %r60 = load i32, ptr %r59
    %r61 = load i32, ptr %r5
    %r62 = getelementptr [10000 x i32], ptr %r3, i32 0, i32 %r61
    %r63 = load i32, ptr %r62
    %r64 = mul i32 %r60,%r63
    %r65 = add i32 0,100
    %r66 = srem i32 %r64,%r65
    %r67 = load i32, ptr %r5
    %r68 = getelementptr [10000 x i32], ptr %r2, i32 0, i32 %r67
    %r69 = load i32, ptr %r68
    %r70 = add i32 %r66,%r69
    %r71 = load i32, ptr %r5
    %r72 = getelementptr [10000 x i32], ptr %r4, i32 0, i32 %r71
    store i32 %r70, ptr %r72
    %r73 = load i32, ptr %r5
    %r74 = add i32 0,1
    %r75 = add i32 %r73,%r74
    store i32 %r75, ptr %r5
    br label %L12
L12:
    %r76 = load i32, ptr %r5
    %r77 = load i32, ptr @N
    %r78 = icmp slt i32 %r76,%r77
    br i1 %r78, label %L11, label %L13
L13:
    %r82 = add i32 0,0
    store i32 %r82, ptr %r81
    %r83 = add i32 0,0
    store i32 %r83, ptr %r5
    %r84 = load i32, ptr %r5
    %r85 = load i32, ptr @N
    %r86 = icmp slt i32 %r84,%r85
    br i1 %r86, label %L15, label %L17
L15:
    %r89 = load i32, ptr %r5
    %r90 = add i32 0,10
    %r91 = icmp slt i32 %r89,%r90
    br i1 %r91, label %L18, label %L19
L16:
    %r197 = load i32, ptr %r5
    %r198 = load i32, ptr @N
    %r199 = icmp slt i32 %r197,%r198
    br i1 %r199, label %L15, label %L17
L17:
    %r202 = load i32, ptr %r81
    ret i32 %r202
L18:
    %r94 = load i32, ptr %r81
    %r95 = load i32, ptr %r5
    %r96 = getelementptr [10000 x i32], ptr %r4, i32 0, i32 %r95
    %r97 = load i32, ptr %r96
    %r98 = add i32 %r94,%r97
    %r99 = add i32 0,1333
    %r100 = srem i32 %r98,%r99
    store i32 %r100, ptr %r81
    %r101 = load i32, ptr %r81
    call void @putint(i32 %r101)
    br label %L20
L19:
    %r102 = load i32, ptr %r5
    %r103 = add i32 0,20
    %r104 = icmp slt i32 %r102,%r103
    br i1 %r104, label %L21, label %L22
L20:
    %r194 = load i32, ptr %r5
    %r195 = add i32 0,1
    %r196 = add i32 %r194,%r195
    store i32 %r196, ptr %r5
    br label %L16
L21:
    %r108 = load i32, ptr @N
    %r109 = add i32 0,2
    %r110 = sdiv i32 %r108,%r109
    store i32 %r110, ptr %r107
    %r111 = load i32, ptr %r107
    %r112 = load i32, ptr @N
    %r113 = icmp slt i32 %r111,%r112
    br i1 %r113, label %L25, label %L27
L22:
    %r134 = load i32, ptr %r5
    %r135 = add i32 0,30
    %r136 = icmp slt i32 %r134,%r135
    br i1 %r136, label %L28, label %L29
L23:
    br label %L20
L25:
    %r116 = load i32, ptr %r81
    %r117 = load i32, ptr %r5
    %r118 = getelementptr [10000 x i32], ptr %r4, i32 0, i32 %r117
    %r119 = load i32, ptr %r118
    %r120 = add i32 %r116,%r119
    %r121 = load i32, ptr %r107
    %r122 = getelementptr [10000 x i32], ptr %r2, i32 0, i32 %r121
    %r123 = load i32, ptr %r122
    %r124 = sub i32 %r120,%r123
    store i32 %r124, ptr %r81
    %r125 = load i32, ptr %r107
    %r126 = add i32 0,1
    %r127 = add i32 %r125,%r126
    store i32 %r127, ptr %r107
    br label %L26
L26:
    %r128 = load i32, ptr %r107
    %r129 = load i32, ptr @N
    %r130 = icmp slt i32 %r128,%r129
    br i1 %r130, label %L25, label %L27
L27:
    %r133 = load i32, ptr %r81
    call void @putint(i32 %r133)
    br label %L23
L28:
    %r140 = load i32, ptr @N
    %r141 = add i32 0,2
    %r142 = sdiv i32 %r140,%r141
    store i32 %r142, ptr %r139
    %r143 = load i32, ptr %r139
    %r144 = load i32, ptr @N
    %r145 = icmp slt i32 %r143,%r144
    br i1 %r145, label %L32, label %L34
L29:
    %r185 = load i32, ptr %r81
    %r186 = load i32, ptr %r5
    %r187 = getelementptr [10000 x i32], ptr %r4, i32 0, i32 %r186
    %r188 = load i32, ptr %r187
    %r189 = load i32, ptr %r1
    %r190 = mul i32 %r188,%r189
    %r191 = add i32 %r185,%r190
    %r192 = add i32 0,99988
    %r193 = srem i32 %r191,%r192
    store i32 %r193, ptr %r81
    br label %L30
L30:
    br label %L23
L32:
    %r148 = load i32, ptr %r139
    %r149 = add i32 0,2233
    %r150 = icmp sgt i32 %r148,%r149
    br i1 %r150, label %L35, label %L36
L33:
    %r179 = load i32, ptr %r139
    %r180 = load i32, ptr @N
    %r181 = icmp slt i32 %r179,%r180
    br i1 %r181, label %L32, label %L34
L34:
    %r184 = load i32, ptr %r81
    call void @putint(i32 %r184)
    br label %L30
L35:
    %r153 = load i32, ptr %r81
    %r154 = load i32, ptr %r5
    %r155 = getelementptr [10000 x i32], ptr %r3, i32 0, i32 %r154
    %r156 = load i32, ptr %r155
    %r157 = add i32 %r153,%r156
    %r158 = load i32, ptr %r139
    %r159 = getelementptr [10000 x i32], ptr %r2, i32 0, i32 %r158
    %r160 = load i32, ptr %r159
    %r161 = sub i32 %r157,%r160
    store i32 %r161, ptr %r81
    %r162 = load i32, ptr %r139
    %r163 = add i32 0,1
    %r164 = add i32 %r162,%r163
    store i32 %r164, ptr %r139
    br label %L37
L36:
    %r165 = load i32, ptr %r81
    %r166 = load i32, ptr %r5
    %r167 = getelementptr [10000 x i32], ptr %r2, i32 0, i32 %r166
    %r168 = load i32, ptr %r167
    %r169 = add i32 %r165,%r168
    %r170 = load i32, ptr %r139
    %r171 = getelementptr [10000 x i32], ptr %r4, i32 0, i32 %r170
    %r172 = load i32, ptr %r171
    %r173 = add i32 %r169,%r172
    %r174 = add i32 0,13333
    %r175 = srem i32 %r173,%r174
    store i32 %r175, ptr %r81
    %r176 = load i32, ptr %r139
    %r177 = add i32 0,2
    %r178 = add i32 %r176,%r177
    store i32 %r178, ptr %r139
    br label %L37
L37:
    br label %L33
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r0 = add i32 0,9
    %r1 = call i32 @long_array(i32 %r0)
    ret i32 %r1
}
