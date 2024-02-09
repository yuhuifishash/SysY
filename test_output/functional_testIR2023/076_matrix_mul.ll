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
@M = global i32 zeroinitializer
@L = global i32 zeroinitializer
@N = global i32 zeroinitializer
define i32 @mul(ptr %r0,ptr %r1,ptr %r2,ptr %r3,ptr %r4,ptr %r5,ptr %r6,ptr %r7,ptr %r8)
{
L0:
    %r9 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r9
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r11 = add i32 0,0
    %r12 = getelementptr i32, ptr %r6, i32 %r11
    %r13 = add i32 0,0
    %r14 = getelementptr i32, ptr %r0, i32 %r13
    %r15 = load i32, ptr %r14
    %r16 = add i32 0,0
    %r17 = getelementptr i32, ptr %r3, i32 %r16
    %r18 = load i32, ptr %r17
    %r19 = mul i32 %r15,%r18
    %r20 = add i32 1,0
    %r21 = getelementptr i32, ptr %r0, i32 %r20
    %r22 = load i32, ptr %r21
    %r23 = add i32 0,0
    %r24 = getelementptr i32, ptr %r4, i32 %r23
    %r25 = load i32, ptr %r24
    %r26 = mul i32 %r22,%r25
    %r27 = add i32 %r19,%r26
    %r28 = add i32 2,0
    %r29 = getelementptr i32, ptr %r0, i32 %r28
    %r30 = load i32, ptr %r29
    %r31 = add i32 0,0
    %r32 = getelementptr i32, ptr %r5, i32 %r31
    %r33 = load i32, ptr %r32
    %r34 = mul i32 %r30,%r33
    %r35 = add i32 %r27,%r34
    store i32 %r35, ptr %r12
    %r36 = add i32 1,0
    %r37 = getelementptr i32, ptr %r6, i32 %r36
    %r38 = add i32 0,0
    %r39 = getelementptr i32, ptr %r0, i32 %r38
    %r40 = load i32, ptr %r39
    %r41 = add i32 1,0
    %r42 = getelementptr i32, ptr %r3, i32 %r41
    %r43 = load i32, ptr %r42
    %r44 = mul i32 %r40,%r43
    %r45 = add i32 1,0
    %r46 = getelementptr i32, ptr %r0, i32 %r45
    %r47 = load i32, ptr %r46
    %r48 = add i32 1,0
    %r49 = getelementptr i32, ptr %r4, i32 %r48
    %r50 = load i32, ptr %r49
    %r51 = mul i32 %r47,%r50
    %r52 = add i32 %r44,%r51
    %r53 = add i32 2,0
    %r54 = getelementptr i32, ptr %r0, i32 %r53
    %r55 = load i32, ptr %r54
    %r56 = add i32 1,0
    %r57 = getelementptr i32, ptr %r5, i32 %r56
    %r58 = load i32, ptr %r57
    %r59 = mul i32 %r55,%r58
    %r60 = add i32 %r52,%r59
    store i32 %r60, ptr %r37
    %r61 = add i32 2,0
    %r62 = getelementptr i32, ptr %r6, i32 %r61
    %r63 = add i32 0,0
    %r64 = getelementptr i32, ptr %r0, i32 %r63
    %r65 = load i32, ptr %r64
    %r66 = add i32 2,0
    %r67 = getelementptr i32, ptr %r3, i32 %r66
    %r68 = load i32, ptr %r67
    %r69 = mul i32 %r65,%r68
    %r70 = add i32 1,0
    %r71 = getelementptr i32, ptr %r0, i32 %r70
    %r72 = load i32, ptr %r71
    %r73 = add i32 2,0
    %r74 = getelementptr i32, ptr %r4, i32 %r73
    %r75 = load i32, ptr %r74
    %r76 = mul i32 %r72,%r75
    %r77 = add i32 %r69,%r76
    %r78 = add i32 2,0
    %r79 = getelementptr i32, ptr %r0, i32 %r78
    %r80 = load i32, ptr %r79
    %r81 = add i32 2,0
    %r82 = getelementptr i32, ptr %r5, i32 %r81
    %r83 = load i32, ptr %r82
    %r84 = mul i32 %r80,%r83
    %r85 = add i32 %r77,%r84
    store i32 %r85, ptr %r62
    %r86 = add i32 0,0
    %r87 = getelementptr i32, ptr %r7, i32 %r86
    %r88 = add i32 0,0
    %r89 = getelementptr i32, ptr %r1, i32 %r88
    %r90 = load i32, ptr %r89
    %r91 = add i32 0,0
    %r92 = getelementptr i32, ptr %r3, i32 %r91
    %r93 = load i32, ptr %r92
    %r94 = mul i32 %r90,%r93
    %r95 = add i32 1,0
    %r96 = getelementptr i32, ptr %r1, i32 %r95
    %r97 = load i32, ptr %r96
    %r98 = add i32 0,0
    %r99 = getelementptr i32, ptr %r4, i32 %r98
    %r100 = load i32, ptr %r99
    %r101 = mul i32 %r97,%r100
    %r102 = add i32 %r94,%r101
    %r103 = add i32 2,0
    %r104 = getelementptr i32, ptr %r1, i32 %r103
    %r105 = load i32, ptr %r104
    %r106 = add i32 0,0
    %r107 = getelementptr i32, ptr %r5, i32 %r106
    %r108 = load i32, ptr %r107
    %r109 = mul i32 %r105,%r108
    %r110 = add i32 %r102,%r109
    store i32 %r110, ptr %r87
    %r111 = add i32 1,0
    %r112 = getelementptr i32, ptr %r7, i32 %r111
    %r113 = add i32 0,0
    %r114 = getelementptr i32, ptr %r1, i32 %r113
    %r115 = load i32, ptr %r114
    %r116 = add i32 1,0
    %r117 = getelementptr i32, ptr %r3, i32 %r116
    %r118 = load i32, ptr %r117
    %r119 = mul i32 %r115,%r118
    %r120 = add i32 1,0
    %r121 = getelementptr i32, ptr %r1, i32 %r120
    %r122 = load i32, ptr %r121
    %r123 = add i32 1,0
    %r124 = getelementptr i32, ptr %r4, i32 %r123
    %r125 = load i32, ptr %r124
    %r126 = mul i32 %r122,%r125
    %r127 = add i32 %r119,%r126
    %r128 = add i32 2,0
    %r129 = getelementptr i32, ptr %r1, i32 %r128
    %r130 = load i32, ptr %r129
    %r131 = add i32 1,0
    %r132 = getelementptr i32, ptr %r5, i32 %r131
    %r133 = load i32, ptr %r132
    %r134 = mul i32 %r130,%r133
    %r135 = add i32 %r127,%r134
    store i32 %r135, ptr %r112
    %r136 = add i32 2,0
    %r137 = getelementptr i32, ptr %r7, i32 %r136
    %r138 = add i32 0,0
    %r139 = getelementptr i32, ptr %r1, i32 %r138
    %r140 = load i32, ptr %r139
    %r141 = add i32 2,0
    %r142 = getelementptr i32, ptr %r3, i32 %r141
    %r143 = load i32, ptr %r142
    %r144 = mul i32 %r140,%r143
    %r145 = add i32 1,0
    %r146 = getelementptr i32, ptr %r1, i32 %r145
    %r147 = load i32, ptr %r146
    %r148 = add i32 2,0
    %r149 = getelementptr i32, ptr %r4, i32 %r148
    %r150 = load i32, ptr %r149
    %r151 = mul i32 %r147,%r150
    %r152 = add i32 %r144,%r151
    %r153 = add i32 2,0
    %r154 = getelementptr i32, ptr %r1, i32 %r153
    %r155 = load i32, ptr %r154
    %r156 = add i32 2,0
    %r157 = getelementptr i32, ptr %r5, i32 %r156
    %r158 = load i32, ptr %r157
    %r159 = mul i32 %r155,%r158
    %r160 = add i32 %r152,%r159
    store i32 %r160, ptr %r137
    %r161 = add i32 0,0
    %r162 = getelementptr i32, ptr %r8, i32 %r161
    %r163 = add i32 0,0
    %r164 = getelementptr i32, ptr %r2, i32 %r163
    %r165 = load i32, ptr %r164
    %r166 = add i32 0,0
    %r167 = getelementptr i32, ptr %r3, i32 %r166
    %r168 = load i32, ptr %r167
    %r169 = mul i32 %r165,%r168
    %r170 = add i32 1,0
    %r171 = getelementptr i32, ptr %r2, i32 %r170
    %r172 = load i32, ptr %r171
    %r173 = add i32 0,0
    %r174 = getelementptr i32, ptr %r4, i32 %r173
    %r175 = load i32, ptr %r174
    %r176 = mul i32 %r172,%r175
    %r177 = add i32 %r169,%r176
    %r178 = add i32 2,0
    %r179 = getelementptr i32, ptr %r2, i32 %r178
    %r180 = load i32, ptr %r179
    %r181 = add i32 0,0
    %r182 = getelementptr i32, ptr %r5, i32 %r181
    %r183 = load i32, ptr %r182
    %r184 = mul i32 %r180,%r183
    %r185 = add i32 %r177,%r184
    store i32 %r185, ptr %r162
    %r186 = add i32 1,0
    %r187 = getelementptr i32, ptr %r8, i32 %r186
    %r188 = add i32 0,0
    %r189 = getelementptr i32, ptr %r2, i32 %r188
    %r190 = load i32, ptr %r189
    %r191 = add i32 1,0
    %r192 = getelementptr i32, ptr %r3, i32 %r191
    %r193 = load i32, ptr %r192
    %r194 = mul i32 %r190,%r193
    %r195 = add i32 1,0
    %r196 = getelementptr i32, ptr %r2, i32 %r195
    %r197 = load i32, ptr %r196
    %r198 = add i32 1,0
    %r199 = getelementptr i32, ptr %r4, i32 %r198
    %r200 = load i32, ptr %r199
    %r201 = mul i32 %r197,%r200
    %r202 = add i32 %r194,%r201
    %r203 = add i32 2,0
    %r204 = getelementptr i32, ptr %r2, i32 %r203
    %r205 = load i32, ptr %r204
    %r206 = add i32 1,0
    %r207 = getelementptr i32, ptr %r5, i32 %r206
    %r208 = load i32, ptr %r207
    %r209 = mul i32 %r205,%r208
    %r210 = add i32 %r202,%r209
    store i32 %r210, ptr %r187
    %r211 = add i32 2,0
    %r212 = getelementptr i32, ptr %r8, i32 %r211
    %r213 = add i32 0,0
    %r214 = getelementptr i32, ptr %r2, i32 %r213
    %r215 = load i32, ptr %r214
    %r216 = add i32 2,0
    %r217 = getelementptr i32, ptr %r3, i32 %r216
    %r218 = load i32, ptr %r217
    %r219 = mul i32 %r215,%r218
    %r220 = add i32 1,0
    %r221 = getelementptr i32, ptr %r2, i32 %r220
    %r222 = load i32, ptr %r221
    %r223 = add i32 2,0
    %r224 = getelementptr i32, ptr %r4, i32 %r223
    %r225 = load i32, ptr %r224
    %r226 = mul i32 %r222,%r225
    %r227 = add i32 %r219,%r226
    %r228 = add i32 2,0
    %r229 = getelementptr i32, ptr %r2, i32 %r228
    %r230 = load i32, ptr %r229
    %r231 = add i32 2,0
    %r232 = getelementptr i32, ptr %r5, i32 %r231
    %r233 = load i32, ptr %r232
    %r234 = mul i32 %r230,%r233
    %r235 = add i32 %r227,%r234
    store i32 %r235, ptr %r212
    %r236 = add i32 0,0
    ret i32 %r236
}
define i32 @main()
{
L0:
    %r48 = alloca i32
    %r12 = alloca i32
    %r11 = alloca [3 x i32]
    %r10 = alloca [3 x i32]
    %r9 = alloca [6 x i32]
    %r8 = alloca [3 x i32]
    %r7 = alloca [3 x i32]
    %r6 = alloca [3 x i32]
    %r5 = alloca [3 x i32]
    %r4 = alloca [3 x i32]
    %r3 = alloca [3 x i32]
    br label %L1
L1:
    %r0 = add i32 3,0
    store i32 %r0, ptr @N
    %r1 = add i32 3,0
    store i32 %r1, ptr @M
    %r2 = add i32 3,0
    store i32 %r2, ptr @L
    store i32 0, ptr %r12
    %r13 = add i32 0,0
    store i32 %r13, ptr %r12
    br label %L2
L2:
    %r14 = load i32, ptr %r12
    %r15 = load i32, ptr @M
    %r16 = icmp slt i32 %r14,%r15
    br i1 %r16, label %L3, label %L4
L3:
    %r17 = load i32, ptr %r12
    %r18 = getelementptr [3 x i32], ptr %r3, i32 0, i32 %r17
    %r19 = load i32, ptr %r12
    store i32 %r19, ptr %r18
    %r20 = load i32, ptr %r12
    %r21 = getelementptr [3 x i32], ptr %r4, i32 0, i32 %r20
    %r22 = load i32, ptr %r12
    store i32 %r22, ptr %r21
    %r23 = load i32, ptr %r12
    %r24 = getelementptr [3 x i32], ptr %r5, i32 0, i32 %r23
    %r25 = load i32, ptr %r12
    store i32 %r25, ptr %r24
    %r26 = load i32, ptr %r12
    %r27 = getelementptr [3 x i32], ptr %r6, i32 0, i32 %r26
    %r28 = load i32, ptr %r12
    store i32 %r28, ptr %r27
    %r29 = load i32, ptr %r12
    %r30 = getelementptr [3 x i32], ptr %r7, i32 0, i32 %r29
    %r31 = load i32, ptr %r12
    store i32 %r31, ptr %r30
    %r32 = load i32, ptr %r12
    %r33 = getelementptr [3 x i32], ptr %r8, i32 0, i32 %r32
    %r34 = load i32, ptr %r12
    store i32 %r34, ptr %r33
    %r35 = load i32, ptr %r12
    %r36 = add i32 1,0
    %r37 = add i32 %r35,%r36
    store i32 %r37, ptr %r12
    br label %L2
L4:
    %r38 = getelementptr [3 x i32], ptr %r3, i32 0
    %r39 = getelementptr [3 x i32], ptr %r4, i32 0
    %r40 = getelementptr [3 x i32], ptr %r5, i32 0
    %r41 = getelementptr [3 x i32], ptr %r6, i32 0
    %r42 = getelementptr [3 x i32], ptr %r7, i32 0
    %r43 = getelementptr [3 x i32], ptr %r8, i32 0
    %r44 = getelementptr [6 x i32], ptr %r9, i32 0
    %r45 = getelementptr [3 x i32], ptr %r10, i32 0
    %r46 = getelementptr [3 x i32], ptr %r11, i32 0
    %r47 = call i32 @mul(ptr %r38,ptr %r39,ptr %r40,ptr %r41,ptr %r42,ptr %r43,ptr %r44,ptr %r45,ptr %r46)
    store i32 %r47, ptr %r12
    store i32 0, ptr %r48
    br label %L5
L5:
    %r49 = load i32, ptr %r12
    %r50 = load i32, ptr @N
    %r51 = icmp slt i32 %r49,%r50
    br i1 %r51, label %L6, label %L7
L6:
    %r52 = load i32, ptr %r12
    %r53 = getelementptr [6 x i32], ptr %r9, i32 0, i32 %r52
    %r54 = load i32, ptr %r53
    store i32 %r54, ptr %r48
    %r55 = load i32, ptr %r48
    call void @putint(i32 %r55)
    %r56 = load i32, ptr %r12
    %r57 = add i32 1,0
    %r58 = add i32 %r56,%r57
    store i32 %r58, ptr %r12
    br label %L5
L7:
    %r59 = add i32 10,0
    store i32 %r59, ptr %r48
    %r60 = add i32 0,0
    store i32 %r60, ptr %r12
    %r61 = load i32, ptr %r48
    call void @putch(i32 %r61)
    br label %L8
L8:
    %r62 = load i32, ptr %r12
    %r63 = load i32, ptr @N
    %r64 = icmp slt i32 %r62,%r63
    br i1 %r64, label %L9, label %L10
L9:
    %r65 = load i32, ptr %r12
    %r66 = getelementptr [3 x i32], ptr %r10, i32 0, i32 %r65
    %r67 = load i32, ptr %r66
    store i32 %r67, ptr %r48
    %r68 = load i32, ptr %r48
    call void @putint(i32 %r68)
    %r69 = load i32, ptr %r12
    %r70 = add i32 1,0
    %r71 = add i32 %r69,%r70
    store i32 %r71, ptr %r12
    br label %L8
L10:
    %r72 = add i32 10,0
    store i32 %r72, ptr %r48
    %r73 = add i32 0,0
    store i32 %r73, ptr %r12
    %r74 = load i32, ptr %r48
    call void @putch(i32 %r74)
    br label %L11
L11:
    %r75 = load i32, ptr %r12
    %r76 = load i32, ptr @N
    %r77 = icmp slt i32 %r75,%r76
    br i1 %r77, label %L12, label %L13
L12:
    %r78 = load i32, ptr %r12
    %r79 = getelementptr [3 x i32], ptr %r11, i32 0, i32 %r78
    %r80 = load i32, ptr %r79
    store i32 %r80, ptr %r48
    %r81 = load i32, ptr %r48
    call void @putint(i32 %r81)
    %r82 = load i32, ptr %r12
    %r83 = add i32 1,0
    %r84 = add i32 %r82,%r83
    store i32 %r84, ptr %r12
    br label %L11
L13:
    %r85 = add i32 10,0
    store i32 %r85, ptr %r48
    %r86 = load i32, ptr %r48
    call void @putch(i32 %r86)
    %r87 = add i32 0,0
    ret i32 %r87
}
