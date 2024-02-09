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
    %r12 = getelementptr float, ptr %r6, i32 %r11
    %r13 = add i32 0,0
    %r14 = getelementptr float, ptr %r0, i32 %r13
    %r15 = load float, ptr %r14
    %r16 = add i32 0,0
    %r17 = getelementptr float, ptr %r3, i32 %r16
    %r18 = load float, ptr %r17
    %r19 = fmul float %r15,%r18
    %r20 = add i32 1,0
    %r21 = getelementptr float, ptr %r0, i32 %r20
    %r22 = load float, ptr %r21
    %r23 = add i32 0,0
    %r24 = getelementptr float, ptr %r4, i32 %r23
    %r25 = load float, ptr %r24
    %r26 = fmul float %r22,%r25
    %r27 = fadd float %r19,%r26
    %r28 = add i32 2,0
    %r29 = getelementptr float, ptr %r0, i32 %r28
    %r30 = load float, ptr %r29
    %r31 = add i32 0,0
    %r32 = getelementptr float, ptr %r5, i32 %r31
    %r33 = load float, ptr %r32
    %r34 = fmul float %r30,%r33
    %r35 = fadd float %r27,%r34
    store float %r35, ptr %r12
    %r36 = add i32 1,0
    %r37 = getelementptr float, ptr %r6, i32 %r36
    %r38 = add i32 0,0
    %r39 = getelementptr float, ptr %r0, i32 %r38
    %r40 = load float, ptr %r39
    %r41 = add i32 1,0
    %r42 = getelementptr float, ptr %r3, i32 %r41
    %r43 = load float, ptr %r42
    %r44 = fmul float %r40,%r43
    %r45 = add i32 1,0
    %r46 = getelementptr float, ptr %r0, i32 %r45
    %r47 = load float, ptr %r46
    %r48 = add i32 1,0
    %r49 = getelementptr float, ptr %r4, i32 %r48
    %r50 = load float, ptr %r49
    %r51 = fmul float %r47,%r50
    %r52 = fadd float %r44,%r51
    %r53 = add i32 2,0
    %r54 = getelementptr float, ptr %r0, i32 %r53
    %r55 = load float, ptr %r54
    %r56 = add i32 1,0
    %r57 = getelementptr float, ptr %r5, i32 %r56
    %r58 = load float, ptr %r57
    %r59 = fmul float %r55,%r58
    %r60 = fadd float %r52,%r59
    store float %r60, ptr %r37
    %r61 = add i32 2,0
    %r62 = getelementptr float, ptr %r6, i32 %r61
    %r63 = add i32 0,0
    %r64 = getelementptr float, ptr %r0, i32 %r63
    %r65 = load float, ptr %r64
    %r66 = add i32 2,0
    %r67 = getelementptr float, ptr %r3, i32 %r66
    %r68 = load float, ptr %r67
    %r69 = fmul float %r65,%r68
    %r70 = add i32 1,0
    %r71 = getelementptr float, ptr %r0, i32 %r70
    %r72 = load float, ptr %r71
    %r73 = add i32 2,0
    %r74 = getelementptr float, ptr %r4, i32 %r73
    %r75 = load float, ptr %r74
    %r76 = fmul float %r72,%r75
    %r77 = fadd float %r69,%r76
    %r78 = add i32 2,0
    %r79 = getelementptr float, ptr %r0, i32 %r78
    %r80 = load float, ptr %r79
    %r81 = add i32 2,0
    %r82 = getelementptr float, ptr %r5, i32 %r81
    %r83 = load float, ptr %r82
    %r84 = fmul float %r80,%r83
    %r85 = fadd float %r77,%r84
    store float %r85, ptr %r62
    %r86 = add i32 0,0
    %r87 = getelementptr float, ptr %r7, i32 %r86
    %r88 = add i32 0,0
    %r89 = getelementptr float, ptr %r1, i32 %r88
    %r90 = load float, ptr %r89
    %r91 = add i32 0,0
    %r92 = getelementptr float, ptr %r3, i32 %r91
    %r93 = load float, ptr %r92
    %r94 = fmul float %r90,%r93
    %r95 = add i32 1,0
    %r96 = getelementptr float, ptr %r1, i32 %r95
    %r97 = load float, ptr %r96
    %r98 = add i32 0,0
    %r99 = getelementptr float, ptr %r4, i32 %r98
    %r100 = load float, ptr %r99
    %r101 = fmul float %r97,%r100
    %r102 = fadd float %r94,%r101
    %r103 = add i32 2,0
    %r104 = getelementptr float, ptr %r1, i32 %r103
    %r105 = load float, ptr %r104
    %r106 = add i32 0,0
    %r107 = getelementptr float, ptr %r5, i32 %r106
    %r108 = load float, ptr %r107
    %r109 = fmul float %r105,%r108
    %r110 = fadd float %r102,%r109
    store float %r110, ptr %r87
    %r111 = add i32 1,0
    %r112 = getelementptr float, ptr %r7, i32 %r111
    %r113 = add i32 0,0
    %r114 = getelementptr float, ptr %r1, i32 %r113
    %r115 = load float, ptr %r114
    %r116 = add i32 1,0
    %r117 = getelementptr float, ptr %r3, i32 %r116
    %r118 = load float, ptr %r117
    %r119 = fmul float %r115,%r118
    %r120 = add i32 1,0
    %r121 = getelementptr float, ptr %r1, i32 %r120
    %r122 = load float, ptr %r121
    %r123 = add i32 1,0
    %r124 = getelementptr float, ptr %r4, i32 %r123
    %r125 = load float, ptr %r124
    %r126 = fmul float %r122,%r125
    %r127 = fadd float %r119,%r126
    %r128 = add i32 2,0
    %r129 = getelementptr float, ptr %r1, i32 %r128
    %r130 = load float, ptr %r129
    %r131 = add i32 1,0
    %r132 = getelementptr float, ptr %r5, i32 %r131
    %r133 = load float, ptr %r132
    %r134 = fmul float %r130,%r133
    %r135 = fadd float %r127,%r134
    store float %r135, ptr %r112
    %r136 = add i32 2,0
    %r137 = getelementptr float, ptr %r7, i32 %r136
    %r138 = add i32 0,0
    %r139 = getelementptr float, ptr %r1, i32 %r138
    %r140 = load float, ptr %r139
    %r141 = add i32 2,0
    %r142 = getelementptr float, ptr %r3, i32 %r141
    %r143 = load float, ptr %r142
    %r144 = fmul float %r140,%r143
    %r145 = add i32 1,0
    %r146 = getelementptr float, ptr %r1, i32 %r145
    %r147 = load float, ptr %r146
    %r148 = add i32 2,0
    %r149 = getelementptr float, ptr %r4, i32 %r148
    %r150 = load float, ptr %r149
    %r151 = fmul float %r147,%r150
    %r152 = fadd float %r144,%r151
    %r153 = add i32 2,0
    %r154 = getelementptr float, ptr %r1, i32 %r153
    %r155 = load float, ptr %r154
    %r156 = add i32 2,0
    %r157 = getelementptr float, ptr %r5, i32 %r156
    %r158 = load float, ptr %r157
    %r159 = fmul float %r155,%r158
    %r160 = fadd float %r152,%r159
    store float %r160, ptr %r137
    %r161 = add i32 0,0
    %r162 = getelementptr float, ptr %r8, i32 %r161
    %r163 = add i32 0,0
    %r164 = getelementptr float, ptr %r2, i32 %r163
    %r165 = load float, ptr %r164
    %r166 = add i32 0,0
    %r167 = getelementptr float, ptr %r3, i32 %r166
    %r168 = load float, ptr %r167
    %r169 = fmul float %r165,%r168
    %r170 = add i32 1,0
    %r171 = getelementptr float, ptr %r2, i32 %r170
    %r172 = load float, ptr %r171
    %r173 = add i32 0,0
    %r174 = getelementptr float, ptr %r4, i32 %r173
    %r175 = load float, ptr %r174
    %r176 = fmul float %r172,%r175
    %r177 = fadd float %r169,%r176
    %r178 = add i32 2,0
    %r179 = getelementptr float, ptr %r2, i32 %r178
    %r180 = load float, ptr %r179
    %r181 = add i32 0,0
    %r182 = getelementptr float, ptr %r5, i32 %r181
    %r183 = load float, ptr %r182
    %r184 = fmul float %r180,%r183
    %r185 = fadd float %r177,%r184
    store float %r185, ptr %r162
    %r186 = add i32 1,0
    %r187 = getelementptr float, ptr %r8, i32 %r186
    %r188 = add i32 0,0
    %r189 = getelementptr float, ptr %r2, i32 %r188
    %r190 = load float, ptr %r189
    %r191 = add i32 1,0
    %r192 = getelementptr float, ptr %r3, i32 %r191
    %r193 = load float, ptr %r192
    %r194 = fmul float %r190,%r193
    %r195 = add i32 1,0
    %r196 = getelementptr float, ptr %r2, i32 %r195
    %r197 = load float, ptr %r196
    %r198 = add i32 1,0
    %r199 = getelementptr float, ptr %r4, i32 %r198
    %r200 = load float, ptr %r199
    %r201 = fmul float %r197,%r200
    %r202 = fadd float %r194,%r201
    %r203 = add i32 2,0
    %r204 = getelementptr float, ptr %r2, i32 %r203
    %r205 = load float, ptr %r204
    %r206 = add i32 1,0
    %r207 = getelementptr float, ptr %r5, i32 %r206
    %r208 = load float, ptr %r207
    %r209 = fmul float %r205,%r208
    %r210 = fadd float %r202,%r209
    store float %r210, ptr %r187
    %r211 = add i32 2,0
    %r212 = getelementptr float, ptr %r8, i32 %r211
    %r213 = add i32 0,0
    %r214 = getelementptr float, ptr %r2, i32 %r213
    %r215 = load float, ptr %r214
    %r216 = add i32 2,0
    %r217 = getelementptr float, ptr %r3, i32 %r216
    %r218 = load float, ptr %r217
    %r219 = fmul float %r215,%r218
    %r220 = add i32 1,0
    %r221 = getelementptr float, ptr %r2, i32 %r220
    %r222 = load float, ptr %r221
    %r223 = add i32 2,0
    %r224 = getelementptr float, ptr %r4, i32 %r223
    %r225 = load float, ptr %r224
    %r226 = fmul float %r222,%r225
    %r227 = fadd float %r219,%r226
    %r228 = add i32 2,0
    %r229 = getelementptr float, ptr %r2, i32 %r228
    %r230 = load float, ptr %r229
    %r231 = add i32 2,0
    %r232 = getelementptr float, ptr %r5, i32 %r231
    %r233 = load float, ptr %r232
    %r234 = fmul float %r230,%r233
    %r235 = fadd float %r227,%r234
    store float %r235, ptr %r212
    %r236 = add i32 0,0
    ret i32 %r236
}
define i32 @main()
{
L0:
    %r54 = alloca i32
    %r12 = alloca i32
    %r11 = alloca [3 x float]
    %r10 = alloca [3 x float]
    %r9 = alloca [6 x float]
    %r8 = alloca [3 x float]
    %r7 = alloca [3 x float]
    %r6 = alloca [3 x float]
    %r5 = alloca [3 x float]
    %r4 = alloca [3 x float]
    %r3 = alloca [3 x float]
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
    %r18 = getelementptr [3 x float], ptr %r3, i32 0, i32 %r17
    %r19 = load i32, ptr %r12
    %r20 = sitofp i32 %r19 to float
    store float %r20, ptr %r18
    %r21 = load i32, ptr %r12
    %r22 = getelementptr [3 x float], ptr %r4, i32 0, i32 %r21
    %r23 = load i32, ptr %r12
    %r24 = sitofp i32 %r23 to float
    store float %r24, ptr %r22
    %r25 = load i32, ptr %r12
    %r26 = getelementptr [3 x float], ptr %r5, i32 0, i32 %r25
    %r27 = load i32, ptr %r12
    %r28 = sitofp i32 %r27 to float
    store float %r28, ptr %r26
    %r29 = load i32, ptr %r12
    %r30 = getelementptr [3 x float], ptr %r6, i32 0, i32 %r29
    %r31 = load i32, ptr %r12
    %r32 = sitofp i32 %r31 to float
    store float %r32, ptr %r30
    %r33 = load i32, ptr %r12
    %r34 = getelementptr [3 x float], ptr %r7, i32 0, i32 %r33
    %r35 = load i32, ptr %r12
    %r36 = sitofp i32 %r35 to float
    store float %r36, ptr %r34
    %r37 = load i32, ptr %r12
    %r38 = getelementptr [3 x float], ptr %r8, i32 0, i32 %r37
    %r39 = load i32, ptr %r12
    %r40 = sitofp i32 %r39 to float
    store float %r40, ptr %r38
    %r41 = load i32, ptr %r12
    %r42 = add i32 1,0
    %r43 = add i32 %r41,%r42
    store i32 %r43, ptr %r12
    br label %L2
L4:
    %r44 = getelementptr [3 x float], ptr %r3, i32 0
    %r45 = getelementptr [3 x float], ptr %r4, i32 0
    %r46 = getelementptr [3 x float], ptr %r5, i32 0
    %r47 = getelementptr [3 x float], ptr %r6, i32 0
    %r48 = getelementptr [3 x float], ptr %r7, i32 0
    %r49 = getelementptr [3 x float], ptr %r8, i32 0
    %r50 = getelementptr [6 x float], ptr %r9, i32 0
    %r51 = getelementptr [3 x float], ptr %r10, i32 0
    %r52 = getelementptr [3 x float], ptr %r11, i32 0
    %r53 = call i32 @mul(ptr %r44,ptr %r45,ptr %r46,ptr %r47,ptr %r48,ptr %r49,ptr %r50,ptr %r51,ptr %r52)
    store i32 %r53, ptr %r12
    store i32 0, ptr %r54
    br label %L5
L5:
    %r55 = load i32, ptr %r12
    %r56 = load i32, ptr @N
    %r57 = icmp slt i32 %r55,%r56
    br i1 %r57, label %L6, label %L7
L6:
    %r58 = load i32, ptr %r12
    %r59 = getelementptr [6 x float], ptr %r9, i32 0, i32 %r58
    %r60 = load float, ptr %r59
    %r61 = fptosi float %r60 to i32
    store i32 %r61, ptr %r54
    %r62 = load i32, ptr %r54
    call void @putint(i32 %r62)
    %r63 = load i32, ptr %r12
    %r64 = add i32 1,0
    %r65 = add i32 %r63,%r64
    store i32 %r65, ptr %r12
    br label %L5
L7:
    %r66 = add i32 10,0
    store i32 %r66, ptr %r54
    %r67 = add i32 0,0
    store i32 %r67, ptr %r12
    %r68 = load i32, ptr %r54
    call void @putch(i32 %r68)
    br label %L8
L8:
    %r69 = load i32, ptr %r12
    %r70 = load i32, ptr @N
    %r71 = icmp slt i32 %r69,%r70
    br i1 %r71, label %L9, label %L10
L9:
    %r72 = load i32, ptr %r12
    %r73 = getelementptr [3 x float], ptr %r10, i32 0, i32 %r72
    %r74 = load float, ptr %r73
    %r75 = fptosi float %r74 to i32
    store i32 %r75, ptr %r54
    %r76 = load i32, ptr %r54
    call void @putint(i32 %r76)
    %r77 = load i32, ptr %r12
    %r78 = add i32 1,0
    %r79 = add i32 %r77,%r78
    store i32 %r79, ptr %r12
    br label %L8
L10:
    %r80 = add i32 10,0
    store i32 %r80, ptr %r54
    %r81 = add i32 0,0
    store i32 %r81, ptr %r12
    %r82 = load i32, ptr %r54
    call void @putch(i32 %r82)
    br label %L11
L11:
    %r83 = load i32, ptr %r12
    %r84 = load i32, ptr @N
    %r85 = icmp slt i32 %r83,%r84
    br i1 %r85, label %L12, label %L13
L12:
    %r86 = load i32, ptr %r12
    %r87 = getelementptr [3 x float], ptr %r11, i32 0, i32 %r86
    %r88 = load float, ptr %r87
    %r89 = fptosi float %r88 to i32
    store i32 %r89, ptr %r54
    %r90 = load i32, ptr %r54
    call void @putint(i32 %r90)
    %r91 = load i32, ptr %r12
    %r92 = add i32 1,0
    %r93 = add i32 %r91,%r92
    store i32 %r93, ptr %r12
    br label %L11
L13:
    %r94 = add i32 10,0
    store i32 %r94, ptr %r54
    %r95 = load i32, ptr %r54
    call void @putch(i32 %r95)
    %r96 = add i32 0,0
    ret i32 %r96
}
