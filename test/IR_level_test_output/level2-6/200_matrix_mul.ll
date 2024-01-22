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
@M = global i32 zeroinitializer
@L = global i32 zeroinitializer
@N = global i32 zeroinitializer
define i32 @mul(ptr %r0,ptr %r1,ptr %r2,ptr %r3,ptr %r4,ptr %r5,ptr %r6,ptr %r7,ptr %r8)
{
L0:
    %r9 = alloca i32
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r11 = add i32 0,0
    store i32 %r11, ptr %r9
    %r12 = add i32 0,0
    %r13 = getelementptr float, ptr %r0, i32 %r12
    %r14 = load float, ptr %r13
    %r15 = add i32 0,0
    %r16 = getelementptr float, ptr %r3, i32 %r15
    %r17 = load float, ptr %r16
    %r18 = fmul float %r14,%r17
    %r19 = add i32 0,1
    %r20 = getelementptr float, ptr %r0, i32 %r19
    %r21 = load float, ptr %r20
    %r22 = add i32 0,0
    %r23 = getelementptr float, ptr %r4, i32 %r22
    %r24 = load float, ptr %r23
    %r25 = fmul float %r21,%r24
    %r26 = fadd float %r18,%r25
    %r27 = add i32 0,2
    %r28 = getelementptr float, ptr %r0, i32 %r27
    %r29 = load float, ptr %r28
    %r30 = add i32 0,0
    %r31 = getelementptr float, ptr %r5, i32 %r30
    %r32 = load float, ptr %r31
    %r33 = fmul float %r29,%r32
    %r34 = fadd float %r26,%r33
    %r35 = add i32 0,0
    %r36 = getelementptr float, ptr %r6, i32 %r35
    store float %r34, ptr %r36
    %r37 = add i32 0,0
    %r38 = getelementptr float, ptr %r0, i32 %r37
    %r39 = load float, ptr %r38
    %r40 = add i32 0,1
    %r41 = getelementptr float, ptr %r3, i32 %r40
    %r42 = load float, ptr %r41
    %r43 = fmul float %r39,%r42
    %r44 = add i32 0,1
    %r45 = getelementptr float, ptr %r0, i32 %r44
    %r46 = load float, ptr %r45
    %r47 = add i32 0,1
    %r48 = getelementptr float, ptr %r4, i32 %r47
    %r49 = load float, ptr %r48
    %r50 = fmul float %r46,%r49
    %r51 = fadd float %r43,%r50
    %r52 = add i32 0,2
    %r53 = getelementptr float, ptr %r0, i32 %r52
    %r54 = load float, ptr %r53
    %r55 = add i32 0,1
    %r56 = getelementptr float, ptr %r5, i32 %r55
    %r57 = load float, ptr %r56
    %r58 = fmul float %r54,%r57
    %r59 = fadd float %r51,%r58
    %r60 = add i32 0,1
    %r61 = getelementptr float, ptr %r6, i32 %r60
    store float %r59, ptr %r61
    %r62 = add i32 0,0
    %r63 = getelementptr float, ptr %r0, i32 %r62
    %r64 = load float, ptr %r63
    %r65 = add i32 0,2
    %r66 = getelementptr float, ptr %r3, i32 %r65
    %r67 = load float, ptr %r66
    %r68 = fmul float %r64,%r67
    %r69 = add i32 0,1
    %r70 = getelementptr float, ptr %r0, i32 %r69
    %r71 = load float, ptr %r70
    %r72 = add i32 0,2
    %r73 = getelementptr float, ptr %r4, i32 %r72
    %r74 = load float, ptr %r73
    %r75 = fmul float %r71,%r74
    %r76 = fadd float %r68,%r75
    %r77 = add i32 0,2
    %r78 = getelementptr float, ptr %r0, i32 %r77
    %r79 = load float, ptr %r78
    %r80 = add i32 0,2
    %r81 = getelementptr float, ptr %r5, i32 %r80
    %r82 = load float, ptr %r81
    %r83 = fmul float %r79,%r82
    %r84 = fadd float %r76,%r83
    %r85 = add i32 0,2
    %r86 = getelementptr float, ptr %r6, i32 %r85
    store float %r84, ptr %r86
    %r87 = add i32 0,0
    %r88 = getelementptr float, ptr %r1, i32 %r87
    %r89 = load float, ptr %r88
    %r90 = add i32 0,0
    %r91 = getelementptr float, ptr %r3, i32 %r90
    %r92 = load float, ptr %r91
    %r93 = fmul float %r89,%r92
    %r94 = add i32 0,1
    %r95 = getelementptr float, ptr %r1, i32 %r94
    %r96 = load float, ptr %r95
    %r97 = add i32 0,0
    %r98 = getelementptr float, ptr %r4, i32 %r97
    %r99 = load float, ptr %r98
    %r100 = fmul float %r96,%r99
    %r101 = fadd float %r93,%r100
    %r102 = add i32 0,2
    %r103 = getelementptr float, ptr %r1, i32 %r102
    %r104 = load float, ptr %r103
    %r105 = add i32 0,0
    %r106 = getelementptr float, ptr %r5, i32 %r105
    %r107 = load float, ptr %r106
    %r108 = fmul float %r104,%r107
    %r109 = fadd float %r101,%r108
    %r110 = add i32 0,0
    %r111 = getelementptr float, ptr %r7, i32 %r110
    store float %r109, ptr %r111
    %r112 = add i32 0,0
    %r113 = getelementptr float, ptr %r1, i32 %r112
    %r114 = load float, ptr %r113
    %r115 = add i32 0,1
    %r116 = getelementptr float, ptr %r3, i32 %r115
    %r117 = load float, ptr %r116
    %r118 = fmul float %r114,%r117
    %r119 = add i32 0,1
    %r120 = getelementptr float, ptr %r1, i32 %r119
    %r121 = load float, ptr %r120
    %r122 = add i32 0,1
    %r123 = getelementptr float, ptr %r4, i32 %r122
    %r124 = load float, ptr %r123
    %r125 = fmul float %r121,%r124
    %r126 = fadd float %r118,%r125
    %r127 = add i32 0,2
    %r128 = getelementptr float, ptr %r1, i32 %r127
    %r129 = load float, ptr %r128
    %r130 = add i32 0,1
    %r131 = getelementptr float, ptr %r5, i32 %r130
    %r132 = load float, ptr %r131
    %r133 = fmul float %r129,%r132
    %r134 = fadd float %r126,%r133
    %r135 = add i32 0,1
    %r136 = getelementptr float, ptr %r7, i32 %r135
    store float %r134, ptr %r136
    %r137 = add i32 0,0
    %r138 = getelementptr float, ptr %r1, i32 %r137
    %r139 = load float, ptr %r138
    %r140 = add i32 0,2
    %r141 = getelementptr float, ptr %r3, i32 %r140
    %r142 = load float, ptr %r141
    %r143 = fmul float %r139,%r142
    %r144 = add i32 0,1
    %r145 = getelementptr float, ptr %r1, i32 %r144
    %r146 = load float, ptr %r145
    %r147 = add i32 0,2
    %r148 = getelementptr float, ptr %r4, i32 %r147
    %r149 = load float, ptr %r148
    %r150 = fmul float %r146,%r149
    %r151 = fadd float %r143,%r150
    %r152 = add i32 0,2
    %r153 = getelementptr float, ptr %r1, i32 %r152
    %r154 = load float, ptr %r153
    %r155 = add i32 0,2
    %r156 = getelementptr float, ptr %r5, i32 %r155
    %r157 = load float, ptr %r156
    %r158 = fmul float %r154,%r157
    %r159 = fadd float %r151,%r158
    %r160 = add i32 0,2
    %r161 = getelementptr float, ptr %r7, i32 %r160
    store float %r159, ptr %r161
    %r162 = add i32 0,0
    %r163 = getelementptr float, ptr %r2, i32 %r162
    %r164 = load float, ptr %r163
    %r165 = add i32 0,0
    %r166 = getelementptr float, ptr %r3, i32 %r165
    %r167 = load float, ptr %r166
    %r168 = fmul float %r164,%r167
    %r169 = add i32 0,1
    %r170 = getelementptr float, ptr %r2, i32 %r169
    %r171 = load float, ptr %r170
    %r172 = add i32 0,0
    %r173 = getelementptr float, ptr %r4, i32 %r172
    %r174 = load float, ptr %r173
    %r175 = fmul float %r171,%r174
    %r176 = fadd float %r168,%r175
    %r177 = add i32 0,2
    %r178 = getelementptr float, ptr %r2, i32 %r177
    %r179 = load float, ptr %r178
    %r180 = add i32 0,0
    %r181 = getelementptr float, ptr %r5, i32 %r180
    %r182 = load float, ptr %r181
    %r183 = fmul float %r179,%r182
    %r184 = fadd float %r176,%r183
    %r185 = add i32 0,0
    %r186 = getelementptr float, ptr %r8, i32 %r185
    store float %r184, ptr %r186
    %r187 = add i32 0,0
    %r188 = getelementptr float, ptr %r2, i32 %r187
    %r189 = load float, ptr %r188
    %r190 = add i32 0,1
    %r191 = getelementptr float, ptr %r3, i32 %r190
    %r192 = load float, ptr %r191
    %r193 = fmul float %r189,%r192
    %r194 = add i32 0,1
    %r195 = getelementptr float, ptr %r2, i32 %r194
    %r196 = load float, ptr %r195
    %r197 = add i32 0,1
    %r198 = getelementptr float, ptr %r4, i32 %r197
    %r199 = load float, ptr %r198
    %r200 = fmul float %r196,%r199
    %r201 = fadd float %r193,%r200
    %r202 = add i32 0,2
    %r203 = getelementptr float, ptr %r2, i32 %r202
    %r204 = load float, ptr %r203
    %r205 = add i32 0,1
    %r206 = getelementptr float, ptr %r5, i32 %r205
    %r207 = load float, ptr %r206
    %r208 = fmul float %r204,%r207
    %r209 = fadd float %r201,%r208
    %r210 = add i32 0,1
    %r211 = getelementptr float, ptr %r8, i32 %r210
    store float %r209, ptr %r211
    %r212 = add i32 0,0
    %r213 = getelementptr float, ptr %r2, i32 %r212
    %r214 = load float, ptr %r213
    %r215 = add i32 0,2
    %r216 = getelementptr float, ptr %r3, i32 %r215
    %r217 = load float, ptr %r216
    %r218 = fmul float %r214,%r217
    %r219 = add i32 0,1
    %r220 = getelementptr float, ptr %r2, i32 %r219
    %r221 = load float, ptr %r220
    %r222 = add i32 0,2
    %r223 = getelementptr float, ptr %r4, i32 %r222
    %r224 = load float, ptr %r223
    %r225 = fmul float %r221,%r224
    %r226 = fadd float %r218,%r225
    %r227 = add i32 0,2
    %r228 = getelementptr float, ptr %r2, i32 %r227
    %r229 = load float, ptr %r228
    %r230 = add i32 0,2
    %r231 = getelementptr float, ptr %r5, i32 %r230
    %r232 = load float, ptr %r231
    %r233 = fmul float %r229,%r232
    %r234 = fadd float %r226,%r233
    %r235 = add i32 0,2
    %r236 = getelementptr float, ptr %r8, i32 %r235
    store float %r234, ptr %r236
    %r237 = add i32 0,0
    ret i32 %r237
}
define i32 @main()
{
L0:
    %r57 = alloca i32
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
    %r0 = add i32 0,3
    store i32 %r0, ptr @N
    %r1 = add i32 0,3
    store i32 %r1, ptr @M
    %r2 = add i32 0,3
    store i32 %r2, ptr @L
    %r13 = add i32 0,0
    store i32 %r13, ptr %r12
    %r14 = add i32 0,0
    store i32 %r14, ptr %r12
    br label %L1
L1:
    %r15 = load i32, ptr %r12
    %r16 = load i32, ptr @M
    %r17 = icmp slt i32 %r15,%r16
    br i1 %r17, label %L2, label %L3
L2:
    %r20 = load i32, ptr %r12
    %r21 = load i32, ptr %r12
    %r22 = getelementptr [3 x float], ptr %r3, i32 0, i32 %r21
    %r23 = sitofp i32 %r20 to float
    store float %r23, ptr %r22
    %r24 = load i32, ptr %r12
    %r25 = load i32, ptr %r12
    %r26 = getelementptr [3 x float], ptr %r4, i32 0, i32 %r25
    %r27 = sitofp i32 %r24 to float
    store float %r27, ptr %r26
    %r28 = load i32, ptr %r12
    %r29 = load i32, ptr %r12
    %r30 = getelementptr [3 x float], ptr %r5, i32 0, i32 %r29
    %r31 = sitofp i32 %r28 to float
    store float %r31, ptr %r30
    %r32 = load i32, ptr %r12
    %r33 = load i32, ptr %r12
    %r34 = getelementptr [3 x float], ptr %r6, i32 0, i32 %r33
    %r35 = sitofp i32 %r32 to float
    store float %r35, ptr %r34
    %r36 = load i32, ptr %r12
    %r37 = load i32, ptr %r12
    %r38 = getelementptr [3 x float], ptr %r7, i32 0, i32 %r37
    %r39 = sitofp i32 %r36 to float
    store float %r39, ptr %r38
    %r40 = load i32, ptr %r12
    %r41 = load i32, ptr %r12
    %r42 = getelementptr [3 x float], ptr %r8, i32 0, i32 %r41
    %r43 = sitofp i32 %r40 to float
    store float %r43, ptr %r42
    %r44 = load i32, ptr %r12
    %r45 = add i32 0,1
    %r46 = add i32 %r44,%r45
    store i32 %r46, ptr %r12
    br label %L1
L3:
    %r47 = getelementptr float, ptr %r3, i32 0
    %r48 = getelementptr float, ptr %r4, i32 0
    %r49 = getelementptr float, ptr %r5, i32 0
    %r50 = getelementptr float, ptr %r6, i32 0
    %r51 = getelementptr float, ptr %r7, i32 0
    %r52 = getelementptr float, ptr %r8, i32 0
    %r53 = getelementptr float, ptr %r9, i32 0
    %r54 = getelementptr float, ptr %r10, i32 0
    %r55 = getelementptr float, ptr %r11, i32 0
    %r56 = call i32 @mul(ptr %r47,ptr %r48,ptr %r49,ptr %r50,ptr %r51,ptr %r52,ptr %r53,ptr %r54,ptr %r55)
    store i32 %r56, ptr %r12
    %r58 = add i32 0,0
    store i32 %r58, ptr %r57
    br label %L4
L4:
    %r59 = load i32, ptr %r12
    %r60 = load i32, ptr @N
    %r61 = icmp slt i32 %r59,%r60
    br i1 %r61, label %L5, label %L6
L5:
    %r64 = load i32, ptr %r12
    %r65 = getelementptr [6 x float], ptr %r9, i32 0, i32 %r64
    %r66 = load float, ptr %r65
    %r67 = fptosi float %r66 to i32
    store i32 %r67, ptr %r57
    %r68 = load i32, ptr %r57
    call void @putint(i32 %r68)
    %r69 = load i32, ptr %r12
    %r70 = add i32 0,1
    %r71 = add i32 %r69,%r70
    store i32 %r71, ptr %r12
    br label %L4
L6:
    %r72 = add i32 0,10
    store i32 %r72, ptr %r57
    %r73 = add i32 0,0
    store i32 %r73, ptr %r12
    %r74 = load i32, ptr %r57
    call void @putch(i32 %r74)
    br label %L7
L7:
    %r75 = load i32, ptr %r12
    %r76 = load i32, ptr @N
    %r77 = icmp slt i32 %r75,%r76
    br i1 %r77, label %L8, label %L9
L8:
    %r80 = load i32, ptr %r12
    %r81 = getelementptr [3 x float], ptr %r10, i32 0, i32 %r80
    %r82 = load float, ptr %r81
    %r83 = fptosi float %r82 to i32
    store i32 %r83, ptr %r57
    %r84 = load i32, ptr %r57
    call void @putint(i32 %r84)
    %r85 = load i32, ptr %r12
    %r86 = add i32 0,1
    %r87 = add i32 %r85,%r86
    store i32 %r87, ptr %r12
    br label %L7
L9:
    %r88 = add i32 0,10
    store i32 %r88, ptr %r57
    %r89 = add i32 0,0
    store i32 %r89, ptr %r12
    %r90 = load i32, ptr %r57
    call void @putch(i32 %r90)
    br label %L10
L10:
    %r91 = load i32, ptr %r12
    %r92 = load i32, ptr @N
    %r93 = icmp slt i32 %r91,%r92
    br i1 %r93, label %L11, label %L12
L11:
    %r96 = load i32, ptr %r12
    %r97 = getelementptr [3 x float], ptr %r11, i32 0, i32 %r96
    %r98 = load float, ptr %r97
    %r99 = fptosi float %r98 to i32
    store i32 %r99, ptr %r57
    %r100 = load i32, ptr %r57
    call void @putint(i32 %r100)
    %r101 = load i32, ptr %r12
    %r102 = add i32 0,1
    %r103 = add i32 %r101,%r102
    store i32 %r103, ptr %r12
    br label %L10
L12:
    %r104 = add i32 0,10
    store i32 %r104, ptr %r57
    %r105 = load i32, ptr %r57
    call void @putch(i32 %r105)
    %r106 = add i32 0,0
    ret i32 %r106
}
