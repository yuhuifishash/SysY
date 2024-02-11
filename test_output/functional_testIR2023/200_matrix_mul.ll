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
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r11 = add i32 0,0
    store i32 %r11, ptr %r9
    %r12 = add i32 0,0
    %r13 = getelementptr float, ptr %r6, i32 %r12
    %r14 = add i32 0,0
    %r15 = getelementptr float, ptr %r0, i32 %r14
    %r16 = load float, ptr %r15
    %r17 = add i32 0,0
    %r18 = getelementptr float, ptr %r3, i32 %r17
    %r19 = load float, ptr %r18
    %r20 = fmul float %r16,%r19
    %r21 = add i32 1,0
    %r22 = getelementptr float, ptr %r0, i32 %r21
    %r23 = load float, ptr %r22
    %r24 = add i32 0,0
    %r25 = getelementptr float, ptr %r4, i32 %r24
    %r26 = load float, ptr %r25
    %r27 = fmul float %r23,%r26
    %r28 = fadd float %r20,%r27
    %r29 = add i32 2,0
    %r30 = getelementptr float, ptr %r0, i32 %r29
    %r31 = load float, ptr %r30
    %r32 = add i32 0,0
    %r33 = getelementptr float, ptr %r5, i32 %r32
    %r34 = load float, ptr %r33
    %r35 = fmul float %r31,%r34
    %r36 = fadd float %r28,%r35
    store float %r36, ptr %r13
    %r37 = add i32 1,0
    %r38 = getelementptr float, ptr %r6, i32 %r37
    %r39 = add i32 0,0
    %r40 = getelementptr float, ptr %r0, i32 %r39
    %r41 = load float, ptr %r40
    %r42 = add i32 1,0
    %r43 = getelementptr float, ptr %r3, i32 %r42
    %r44 = load float, ptr %r43
    %r45 = fmul float %r41,%r44
    %r46 = add i32 1,0
    %r47 = getelementptr float, ptr %r0, i32 %r46
    %r48 = load float, ptr %r47
    %r49 = add i32 1,0
    %r50 = getelementptr float, ptr %r4, i32 %r49
    %r51 = load float, ptr %r50
    %r52 = fmul float %r48,%r51
    %r53 = fadd float %r45,%r52
    %r54 = add i32 2,0
    %r55 = getelementptr float, ptr %r0, i32 %r54
    %r56 = load float, ptr %r55
    %r57 = add i32 1,0
    %r58 = getelementptr float, ptr %r5, i32 %r57
    %r59 = load float, ptr %r58
    %r60 = fmul float %r56,%r59
    %r61 = fadd float %r53,%r60
    store float %r61, ptr %r38
    %r62 = add i32 2,0
    %r63 = getelementptr float, ptr %r6, i32 %r62
    %r64 = add i32 0,0
    %r65 = getelementptr float, ptr %r0, i32 %r64
    %r66 = load float, ptr %r65
    %r67 = add i32 2,0
    %r68 = getelementptr float, ptr %r3, i32 %r67
    %r69 = load float, ptr %r68
    %r70 = fmul float %r66,%r69
    %r71 = add i32 1,0
    %r72 = getelementptr float, ptr %r0, i32 %r71
    %r73 = load float, ptr %r72
    %r74 = add i32 2,0
    %r75 = getelementptr float, ptr %r4, i32 %r74
    %r76 = load float, ptr %r75
    %r77 = fmul float %r73,%r76
    %r78 = fadd float %r70,%r77
    %r79 = add i32 2,0
    %r80 = getelementptr float, ptr %r0, i32 %r79
    %r81 = load float, ptr %r80
    %r82 = add i32 2,0
    %r83 = getelementptr float, ptr %r5, i32 %r82
    %r84 = load float, ptr %r83
    %r85 = fmul float %r81,%r84
    %r86 = fadd float %r78,%r85
    store float %r86, ptr %r63
    %r87 = add i32 0,0
    %r88 = getelementptr float, ptr %r7, i32 %r87
    %r89 = add i32 0,0
    %r90 = getelementptr float, ptr %r1, i32 %r89
    %r91 = load float, ptr %r90
    %r92 = add i32 0,0
    %r93 = getelementptr float, ptr %r3, i32 %r92
    %r94 = load float, ptr %r93
    %r95 = fmul float %r91,%r94
    %r96 = add i32 1,0
    %r97 = getelementptr float, ptr %r1, i32 %r96
    %r98 = load float, ptr %r97
    %r99 = add i32 0,0
    %r100 = getelementptr float, ptr %r4, i32 %r99
    %r101 = load float, ptr %r100
    %r102 = fmul float %r98,%r101
    %r103 = fadd float %r95,%r102
    %r104 = add i32 2,0
    %r105 = getelementptr float, ptr %r1, i32 %r104
    %r106 = load float, ptr %r105
    %r107 = add i32 0,0
    %r108 = getelementptr float, ptr %r5, i32 %r107
    %r109 = load float, ptr %r108
    %r110 = fmul float %r106,%r109
    %r111 = fadd float %r103,%r110
    store float %r111, ptr %r88
    %r112 = add i32 1,0
    %r113 = getelementptr float, ptr %r7, i32 %r112
    %r114 = add i32 0,0
    %r115 = getelementptr float, ptr %r1, i32 %r114
    %r116 = load float, ptr %r115
    %r117 = add i32 1,0
    %r118 = getelementptr float, ptr %r3, i32 %r117
    %r119 = load float, ptr %r118
    %r120 = fmul float %r116,%r119
    %r121 = add i32 1,0
    %r122 = getelementptr float, ptr %r1, i32 %r121
    %r123 = load float, ptr %r122
    %r124 = add i32 1,0
    %r125 = getelementptr float, ptr %r4, i32 %r124
    %r126 = load float, ptr %r125
    %r127 = fmul float %r123,%r126
    %r128 = fadd float %r120,%r127
    %r129 = add i32 2,0
    %r130 = getelementptr float, ptr %r1, i32 %r129
    %r131 = load float, ptr %r130
    %r132 = add i32 1,0
    %r133 = getelementptr float, ptr %r5, i32 %r132
    %r134 = load float, ptr %r133
    %r135 = fmul float %r131,%r134
    %r136 = fadd float %r128,%r135
    store float %r136, ptr %r113
    %r137 = add i32 2,0
    %r138 = getelementptr float, ptr %r7, i32 %r137
    %r139 = add i32 0,0
    %r140 = getelementptr float, ptr %r1, i32 %r139
    %r141 = load float, ptr %r140
    %r142 = add i32 2,0
    %r143 = getelementptr float, ptr %r3, i32 %r142
    %r144 = load float, ptr %r143
    %r145 = fmul float %r141,%r144
    %r146 = add i32 1,0
    %r147 = getelementptr float, ptr %r1, i32 %r146
    %r148 = load float, ptr %r147
    %r149 = add i32 2,0
    %r150 = getelementptr float, ptr %r4, i32 %r149
    %r151 = load float, ptr %r150
    %r152 = fmul float %r148,%r151
    %r153 = fadd float %r145,%r152
    %r154 = add i32 2,0
    %r155 = getelementptr float, ptr %r1, i32 %r154
    %r156 = load float, ptr %r155
    %r157 = add i32 2,0
    %r158 = getelementptr float, ptr %r5, i32 %r157
    %r159 = load float, ptr %r158
    %r160 = fmul float %r156,%r159
    %r161 = fadd float %r153,%r160
    store float %r161, ptr %r138
    %r162 = add i32 0,0
    %r163 = getelementptr float, ptr %r8, i32 %r162
    %r164 = add i32 0,0
    %r165 = getelementptr float, ptr %r2, i32 %r164
    %r166 = load float, ptr %r165
    %r167 = add i32 0,0
    %r168 = getelementptr float, ptr %r3, i32 %r167
    %r169 = load float, ptr %r168
    %r170 = fmul float %r166,%r169
    %r171 = add i32 1,0
    %r172 = getelementptr float, ptr %r2, i32 %r171
    %r173 = load float, ptr %r172
    %r174 = add i32 0,0
    %r175 = getelementptr float, ptr %r4, i32 %r174
    %r176 = load float, ptr %r175
    %r177 = fmul float %r173,%r176
    %r178 = fadd float %r170,%r177
    %r179 = add i32 2,0
    %r180 = getelementptr float, ptr %r2, i32 %r179
    %r181 = load float, ptr %r180
    %r182 = add i32 0,0
    %r183 = getelementptr float, ptr %r5, i32 %r182
    %r184 = load float, ptr %r183
    %r185 = fmul float %r181,%r184
    %r186 = fadd float %r178,%r185
    store float %r186, ptr %r163
    %r187 = add i32 1,0
    %r188 = getelementptr float, ptr %r8, i32 %r187
    %r189 = add i32 0,0
    %r190 = getelementptr float, ptr %r2, i32 %r189
    %r191 = load float, ptr %r190
    %r192 = add i32 1,0
    %r193 = getelementptr float, ptr %r3, i32 %r192
    %r194 = load float, ptr %r193
    %r195 = fmul float %r191,%r194
    %r196 = add i32 1,0
    %r197 = getelementptr float, ptr %r2, i32 %r196
    %r198 = load float, ptr %r197
    %r199 = add i32 1,0
    %r200 = getelementptr float, ptr %r4, i32 %r199
    %r201 = load float, ptr %r200
    %r202 = fmul float %r198,%r201
    %r203 = fadd float %r195,%r202
    %r204 = add i32 2,0
    %r205 = getelementptr float, ptr %r2, i32 %r204
    %r206 = load float, ptr %r205
    %r207 = add i32 1,0
    %r208 = getelementptr float, ptr %r5, i32 %r207
    %r209 = load float, ptr %r208
    %r210 = fmul float %r206,%r209
    %r211 = fadd float %r203,%r210
    store float %r211, ptr %r188
    %r212 = add i32 2,0
    %r213 = getelementptr float, ptr %r8, i32 %r212
    %r214 = add i32 0,0
    %r215 = getelementptr float, ptr %r2, i32 %r214
    %r216 = load float, ptr %r215
    %r217 = add i32 2,0
    %r218 = getelementptr float, ptr %r3, i32 %r217
    %r219 = load float, ptr %r218
    %r220 = fmul float %r216,%r219
    %r221 = add i32 1,0
    %r222 = getelementptr float, ptr %r2, i32 %r221
    %r223 = load float, ptr %r222
    %r224 = add i32 2,0
    %r225 = getelementptr float, ptr %r4, i32 %r224
    %r226 = load float, ptr %r225
    %r227 = fmul float %r223,%r226
    %r228 = fadd float %r220,%r227
    %r229 = add i32 2,0
    %r230 = getelementptr float, ptr %r2, i32 %r229
    %r231 = load float, ptr %r230
    %r232 = add i32 2,0
    %r233 = getelementptr float, ptr %r5, i32 %r232
    %r234 = load float, ptr %r233
    %r235 = fmul float %r231,%r234
    %r236 = fadd float %r228,%r235
    store float %r236, ptr %r213
    %r237 = add i32 0,0
    ret i32 %r237
}
define i32 @main()
{
L0:
    %r55 = alloca i32
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
    %r13 = add i32 0,0
    store i32 %r13, ptr %r12
    %r14 = add i32 0,0
    store i32 %r14, ptr %r12
    br label %L2
L2:
    %r15 = load i32, ptr %r12
    %r16 = load i32, ptr @M
    %r17 = icmp slt i32 %r15,%r16
    br i1 %r17, label %L3, label %L4
L3:
    %r18 = load i32, ptr %r12
    %r19 = getelementptr [3 x float], ptr %r3, i32 0, i32 %r18
    %r20 = load i32, ptr %r12
    %r21 = sitofp i32 %r20 to float
    store float %r21, ptr %r19
    %r22 = load i32, ptr %r12
    %r23 = getelementptr [3 x float], ptr %r4, i32 0, i32 %r22
    %r24 = load i32, ptr %r12
    %r25 = sitofp i32 %r24 to float
    store float %r25, ptr %r23
    %r26 = load i32, ptr %r12
    %r27 = getelementptr [3 x float], ptr %r5, i32 0, i32 %r26
    %r28 = load i32, ptr %r12
    %r29 = sitofp i32 %r28 to float
    store float %r29, ptr %r27
    %r30 = load i32, ptr %r12
    %r31 = getelementptr [3 x float], ptr %r6, i32 0, i32 %r30
    %r32 = load i32, ptr %r12
    %r33 = sitofp i32 %r32 to float
    store float %r33, ptr %r31
    %r34 = load i32, ptr %r12
    %r35 = getelementptr [3 x float], ptr %r7, i32 0, i32 %r34
    %r36 = load i32, ptr %r12
    %r37 = sitofp i32 %r36 to float
    store float %r37, ptr %r35
    %r38 = load i32, ptr %r12
    %r39 = getelementptr [3 x float], ptr %r8, i32 0, i32 %r38
    %r40 = load i32, ptr %r12
    %r41 = sitofp i32 %r40 to float
    store float %r41, ptr %r39
    %r42 = load i32, ptr %r12
    %r43 = add i32 1,0
    %r44 = add i32 %r42,%r43
    store i32 %r44, ptr %r12
    br label %L2
L4:
    %r45 = getelementptr [3 x float], ptr %r3, i32 0
    %r46 = getelementptr [3 x float], ptr %r4, i32 0
    %r47 = getelementptr [3 x float], ptr %r5, i32 0
    %r48 = getelementptr [3 x float], ptr %r6, i32 0
    %r49 = getelementptr [3 x float], ptr %r7, i32 0
    %r50 = getelementptr [3 x float], ptr %r8, i32 0
    %r51 = getelementptr [6 x float], ptr %r9, i32 0
    %r52 = getelementptr [3 x float], ptr %r10, i32 0
    %r53 = getelementptr [3 x float], ptr %r11, i32 0
    %r54 = call i32 @mul(ptr %r45,ptr %r46,ptr %r47,ptr %r48,ptr %r49,ptr %r50,ptr %r51,ptr %r52,ptr %r53)
    store i32 %r54, ptr %r12
    %r56 = add i32 0,0
    store i32 %r56, ptr %r55
    br label %L5
L5:
    %r57 = load i32, ptr %r12
    %r58 = load i32, ptr @N
    %r59 = icmp slt i32 %r57,%r58
    br i1 %r59, label %L6, label %L7
L6:
    %r60 = load i32, ptr %r12
    %r61 = getelementptr [6 x float], ptr %r9, i32 0, i32 %r60
    %r62 = load float, ptr %r61
    %r63 = fptosi float %r62 to i32
    store i32 %r63, ptr %r55
    %r64 = load i32, ptr %r55
    call void @putint(i32 %r64)
    %r65 = load i32, ptr %r12
    %r66 = add i32 1,0
    %r67 = add i32 %r65,%r66
    store i32 %r67, ptr %r12
    br label %L5
L7:
    %r68 = add i32 10,0
    store i32 %r68, ptr %r55
    %r69 = add i32 0,0
    store i32 %r69, ptr %r12
    %r70 = load i32, ptr %r55
    call void @putch(i32 %r70)
    br label %L8
L8:
    %r71 = load i32, ptr %r12
    %r72 = load i32, ptr @N
    %r73 = icmp slt i32 %r71,%r72
    br i1 %r73, label %L9, label %L10
L9:
    %r74 = load i32, ptr %r12
    %r75 = getelementptr [3 x float], ptr %r10, i32 0, i32 %r74
    %r76 = load float, ptr %r75
    %r77 = fptosi float %r76 to i32
    store i32 %r77, ptr %r55
    %r78 = load i32, ptr %r55
    call void @putint(i32 %r78)
    %r79 = load i32, ptr %r12
    %r80 = add i32 1,0
    %r81 = add i32 %r79,%r80
    store i32 %r81, ptr %r12
    br label %L8
L10:
    %r82 = add i32 10,0
    store i32 %r82, ptr %r55
    %r83 = add i32 0,0
    store i32 %r83, ptr %r12
    %r84 = load i32, ptr %r55
    call void @putch(i32 %r84)
    br label %L11
L11:
    %r85 = load i32, ptr %r12
    %r86 = load i32, ptr @N
    %r87 = icmp slt i32 %r85,%r86
    br i1 %r87, label %L12, label %L13
L12:
    %r88 = load i32, ptr %r12
    %r89 = getelementptr [3 x float], ptr %r11, i32 0, i32 %r88
    %r90 = load float, ptr %r89
    %r91 = fptosi float %r90 to i32
    store i32 %r91, ptr %r55
    %r92 = load i32, ptr %r55
    call void @putint(i32 %r92)
    %r93 = load i32, ptr %r12
    %r94 = add i32 1,0
    %r95 = add i32 %r93,%r94
    store i32 %r95, ptr %r12
    br label %L11
L13:
    %r96 = add i32 10,0
    store i32 %r96, ptr %r55
    %r97 = load i32, ptr %r55
    call void @putch(i32 %r97)
    %r98 = add i32 0,0
    ret i32 %r98
}
