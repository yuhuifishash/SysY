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
@k = global i32 zeroinitializer
define float @params_f40(float %r0,float %r1,float %r2,float %r3,float %r4,float %r5,float %r6,float %r7,float %r8,float %r9,float %r10,float %r11,float %r12,float %r13,float %r14,float %r15,float %r16,float %r17,float %r18,float %r19,float %r20,float %r21,float %r22,float %r23,float %r24,float %r25,float %r26,float %r27,float %r28,float %r29,float %r30,float %r31,float %r32,float %r33,float %r34,float %r35,float %r36,float %r37,float %r38,float %r39)
{
L0:
    %r84 = alloca [10 x float]
    %r79 = alloca float
    %r78 = alloca float
    %r77 = alloca float
    %r76 = alloca float
    %r75 = alloca float
    %r74 = alloca float
    %r73 = alloca float
    %r72 = alloca float
    %r71 = alloca float
    %r70 = alloca float
    %r69 = alloca float
    %r68 = alloca float
    %r67 = alloca float
    %r66 = alloca float
    %r65 = alloca float
    %r64 = alloca float
    %r63 = alloca float
    %r62 = alloca float
    %r61 = alloca float
    %r60 = alloca float
    %r59 = alloca float
    %r58 = alloca float
    %r57 = alloca float
    %r56 = alloca float
    %r55 = alloca float
    %r54 = alloca float
    %r53 = alloca float
    %r52 = alloca float
    %r51 = alloca float
    %r50 = alloca float
    %r49 = alloca float
    %r48 = alloca float
    %r47 = alloca float
    %r46 = alloca float
    %r45 = alloca float
    %r44 = alloca float
    %r43 = alloca float
    %r42 = alloca float
    %r41 = alloca float
    %r40 = alloca float
    store float %r0, ptr %r40
    store float %r1, ptr %r41
    store float %r2, ptr %r42
    store float %r3, ptr %r43
    store float %r4, ptr %r44
    store float %r5, ptr %r45
    store float %r6, ptr %r46
    store float %r7, ptr %r47
    store float %r8, ptr %r48
    store float %r9, ptr %r49
    store float %r10, ptr %r50
    store float %r11, ptr %r51
    store float %r12, ptr %r52
    store float %r13, ptr %r53
    store float %r14, ptr %r54
    store float %r15, ptr %r55
    store float %r16, ptr %r56
    store float %r17, ptr %r57
    store float %r18, ptr %r58
    store float %r19, ptr %r59
    store float %r20, ptr %r60
    store float %r21, ptr %r61
    store float %r22, ptr %r62
    store float %r23, ptr %r63
    store float %r24, ptr %r64
    store float %r25, ptr %r65
    store float %r26, ptr %r66
    store float %r27, ptr %r67
    store float %r28, ptr %r68
    store float %r29, ptr %r69
    store float %r30, ptr %r70
    store float %r31, ptr %r71
    store float %r32, ptr %r72
    store float %r33, ptr %r73
    store float %r34, ptr %r74
    store float %r35, ptr %r75
    store float %r36, ptr %r76
    store float %r37, ptr %r77
    store float %r38, ptr %r78
    store float %r39, ptr %r79
    br label %L1
L1:
    %r80 = load float, ptr %r79
    %r81 = add i32 0,0
    %r82 = sitofp i32 %r81 to float
    %r83 = fcmp one float %r80,%r82
    br i1 %r83, label %L2, label %L3
L2:
    call void @llvm.memset.p0.i32(ptr %r84,i8 0,i32 40,i1 0)
    %r85 = load float, ptr %r40
    %r86 = load float, ptr %r41
    %r87 = fadd float %r85,%r86
    %r88 = load float, ptr %r42
    %r89 = fadd float %r87,%r88
    %r90 = load float, ptr %r43
    %r91 = fadd float %r89,%r90
    %r92 = getelementptr [10 x float], ptr %r84, i32 0, i32 0
    store float %r91, ptr %r92
    %r93 = load float, ptr %r44
    %r94 = load float, ptr %r45
    %r95 = fadd float %r93,%r94
    %r96 = load float, ptr %r46
    %r97 = fadd float %r95,%r96
    %r98 = load float, ptr %r47
    %r99 = fadd float %r97,%r98
    %r100 = getelementptr [10 x float], ptr %r84, i32 0, i32 1
    store float %r99, ptr %r100
    %r101 = load float, ptr %r48
    %r102 = load float, ptr %r49
    %r103 = fadd float %r101,%r102
    %r104 = load float, ptr %r50
    %r105 = fadd float %r103,%r104
    %r106 = load float, ptr %r51
    %r107 = fadd float %r105,%r106
    %r108 = getelementptr [10 x float], ptr %r84, i32 0, i32 2
    store float %r107, ptr %r108
    %r109 = load float, ptr %r52
    %r110 = load float, ptr %r53
    %r111 = fadd float %r109,%r110
    %r112 = load float, ptr %r54
    %r113 = fadd float %r111,%r112
    %r114 = load float, ptr %r55
    %r115 = fadd float %r113,%r114
    %r116 = getelementptr [10 x float], ptr %r84, i32 0, i32 3
    store float %r115, ptr %r116
    %r117 = load float, ptr %r56
    %r118 = load float, ptr %r57
    %r119 = fadd float %r117,%r118
    %r120 = load float, ptr %r58
    %r121 = fadd float %r119,%r120
    %r122 = load float, ptr %r59
    %r123 = fadd float %r121,%r122
    %r124 = getelementptr [10 x float], ptr %r84, i32 0, i32 4
    store float %r123, ptr %r124
    %r125 = load float, ptr %r60
    %r126 = load float, ptr %r61
    %r127 = fadd float %r125,%r126
    %r128 = load float, ptr %r62
    %r129 = fadd float %r127,%r128
    %r130 = load float, ptr %r63
    %r131 = fadd float %r129,%r130
    %r132 = getelementptr [10 x float], ptr %r84, i32 0, i32 5
    store float %r131, ptr %r132
    %r133 = load float, ptr %r64
    %r134 = load float, ptr %r65
    %r135 = fadd float %r133,%r134
    %r136 = load float, ptr %r66
    %r137 = fadd float %r135,%r136
    %r138 = load float, ptr %r67
    %r139 = fadd float %r137,%r138
    %r140 = getelementptr [10 x float], ptr %r84, i32 0, i32 6
    store float %r139, ptr %r140
    %r141 = load float, ptr %r68
    %r142 = load float, ptr %r69
    %r143 = fadd float %r141,%r142
    %r144 = load float, ptr %r70
    %r145 = fadd float %r143,%r144
    %r146 = load float, ptr %r71
    %r147 = fadd float %r145,%r146
    %r148 = getelementptr [10 x float], ptr %r84, i32 0, i32 7
    store float %r147, ptr %r148
    %r149 = load float, ptr %r72
    %r150 = load float, ptr %r73
    %r151 = fadd float %r149,%r150
    %r152 = load float, ptr %r74
    %r153 = fadd float %r151,%r152
    %r154 = load float, ptr %r75
    %r155 = fadd float %r153,%r154
    %r156 = getelementptr [10 x float], ptr %r84, i32 0, i32 8
    store float %r155, ptr %r156
    %r157 = load float, ptr %r76
    %r158 = load float, ptr %r77
    %r159 = fadd float %r157,%r158
    %r160 = load float, ptr %r78
    %r161 = fadd float %r159,%r160
    %r162 = load float, ptr %r79
    %r163 = fadd float %r161,%r162
    %r164 = getelementptr [10 x float], ptr %r84, i32 0, i32 9
    store float %r163, ptr %r164
    %r165 = add i32 10,0
    %r166 = getelementptr [10 x float], ptr %r84, i32 0
    call void @putfarray(i32 %r165,ptr %r166)
    %r167 = load i32, ptr @k
    %r168 = getelementptr [10 x float], ptr %r84, i32 0, i32 %r167
    %r169 = load float, ptr %r168
    ret float %r169
L3:
    %r170 = load float, ptr %r41
    %r171 = load float, ptr %r42
    %r172 = load float, ptr %r43
    %r173 = load float, ptr %r44
    %r174 = load float, ptr %r45
    %r175 = load float, ptr %r46
    %r176 = load float, ptr %r47
    %r177 = load float, ptr %r48
    %r178 = load float, ptr %r49
    %r179 = load float, ptr %r50
    %r180 = load float, ptr %r51
    %r181 = load float, ptr %r52
    %r182 = load float, ptr %r53
    %r183 = load float, ptr %r54
    %r184 = load float, ptr %r55
    %r185 = load float, ptr %r56
    %r186 = load float, ptr %r57
    %r187 = load float, ptr %r58
    %r188 = load float, ptr %r59
    %r189 = load float, ptr %r60
    %r190 = load float, ptr %r61
    %r191 = load float, ptr %r62
    %r192 = load float, ptr %r63
    %r193 = load float, ptr %r64
    %r194 = load float, ptr %r65
    %r195 = load float, ptr %r66
    %r196 = load float, ptr %r67
    %r197 = load float, ptr %r68
    %r198 = load float, ptr %r69
    %r199 = load float, ptr %r70
    %r200 = load float, ptr %r71
    %r201 = load float, ptr %r72
    %r202 = load float, ptr %r73
    %r203 = load float, ptr %r74
    %r204 = load float, ptr %r75
    %r205 = load float, ptr %r76
    %r206 = load float, ptr %r77
    %r207 = load float, ptr %r78
    %r208 = load float, ptr %r79
    %r209 = load float, ptr %r40
    %r210 = load float, ptr %r41
    %r211 = fadd float %r209,%r210
    %r212 = load float, ptr %r42
    %r213 = fadd float %r211,%r212
    %r214 = call float @params_f40(float %r170,float %r171,float %r172,float %r173,float %r174,float %r175,float %r176,float %r177,float %r178,float %r179,float %r180,float %r181,float %r182,float %r183,float %r184,float %r185,float %r186,float %r187,float %r188,float %r189,float %r190,float %r191,float %r192,float %r193,float %r194,float %r195,float %r196,float %r197,float %r198,float %r199,float %r200,float %r201,float %r202,float %r203,float %r204,float %r205,float %r206,float %r207,float %r208,float %r213)
    ret float %r214
}
define float @params_f40_i24(i32 %r0,i32 %r1,i32 %r2,float %r3,i32 %r4,i32 %r5,i32 %r6,float %r7,float %r8,float %r9,i32 %r10,float %r11,float %r12,i32 %r13,float %r14,i32 %r15,float %r16,float %r17,float %r18,float %r19,float %r20,float %r21,i32 %r22,float %r23,i32 %r24,i32 %r25,float %r26,float %r27,float %r28,float %r29,float %r30,i32 %r31,float %r32,i32 %r33,float %r34,float %r35,float %r36,float %r37,i32 %r38,i32 %r39,float %r40,float %r41,float %r42,i32 %r43,float %r44,i32 %r45,i32 %r46,float %r47,float %r48,float %r49,float %r50,i32 %r51,i32 %r52,i32 %r53,float %r54,float %r55,float %r56,float %r57,float %r58,float %r59,i32 %r60,float %r61,i32 %r62,float %r63)
{
L0:
    %r265 = alloca i32
    %r212 = alloca [8 x i32]
    %r131 = alloca [10 x float]
    %r127 = alloca float
    %r126 = alloca i32
    %r125 = alloca float
    %r124 = alloca i32
    %r123 = alloca float
    %r122 = alloca float
    %r121 = alloca float
    %r120 = alloca float
    %r119 = alloca float
    %r118 = alloca float
    %r117 = alloca i32
    %r116 = alloca i32
    %r115 = alloca i32
    %r114 = alloca float
    %r113 = alloca float
    %r112 = alloca float
    %r111 = alloca float
    %r110 = alloca i32
    %r109 = alloca i32
    %r108 = alloca float
    %r107 = alloca i32
    %r106 = alloca float
    %r105 = alloca float
    %r104 = alloca float
    %r103 = alloca i32
    %r102 = alloca i32
    %r101 = alloca float
    %r100 = alloca float
    %r99 = alloca float
    %r98 = alloca float
    %r97 = alloca i32
    %r96 = alloca float
    %r95 = alloca i32
    %r94 = alloca float
    %r93 = alloca float
    %r92 = alloca float
    %r91 = alloca float
    %r90 = alloca float
    %r89 = alloca i32
    %r88 = alloca i32
    %r87 = alloca float
    %r86 = alloca i32
    %r85 = alloca float
    %r84 = alloca float
    %r83 = alloca float
    %r82 = alloca float
    %r81 = alloca float
    %r80 = alloca float
    %r79 = alloca i32
    %r78 = alloca float
    %r77 = alloca i32
    %r76 = alloca float
    %r75 = alloca float
    %r74 = alloca i32
    %r73 = alloca float
    %r72 = alloca float
    %r71 = alloca float
    %r70 = alloca i32
    %r69 = alloca i32
    %r68 = alloca i32
    %r67 = alloca float
    %r66 = alloca i32
    %r65 = alloca i32
    %r64 = alloca i32
    store i32 %r0, ptr %r64
    store i32 %r1, ptr %r65
    store i32 %r2, ptr %r66
    store float %r3, ptr %r67
    store i32 %r4, ptr %r68
    store i32 %r5, ptr %r69
    store i32 %r6, ptr %r70
    store float %r7, ptr %r71
    store float %r8, ptr %r72
    store float %r9, ptr %r73
    store i32 %r10, ptr %r74
    store float %r11, ptr %r75
    store float %r12, ptr %r76
    store i32 %r13, ptr %r77
    store float %r14, ptr %r78
    store i32 %r15, ptr %r79
    store float %r16, ptr %r80
    store float %r17, ptr %r81
    store float %r18, ptr %r82
    store float %r19, ptr %r83
    store float %r20, ptr %r84
    store float %r21, ptr %r85
    store i32 %r22, ptr %r86
    store float %r23, ptr %r87
    store i32 %r24, ptr %r88
    store i32 %r25, ptr %r89
    store float %r26, ptr %r90
    store float %r27, ptr %r91
    store float %r28, ptr %r92
    store float %r29, ptr %r93
    store float %r30, ptr %r94
    store i32 %r31, ptr %r95
    store float %r32, ptr %r96
    store i32 %r33, ptr %r97
    store float %r34, ptr %r98
    store float %r35, ptr %r99
    store float %r36, ptr %r100
    store float %r37, ptr %r101
    store i32 %r38, ptr %r102
    store i32 %r39, ptr %r103
    store float %r40, ptr %r104
    store float %r41, ptr %r105
    store float %r42, ptr %r106
    store i32 %r43, ptr %r107
    store float %r44, ptr %r108
    store i32 %r45, ptr %r109
    store i32 %r46, ptr %r110
    store float %r47, ptr %r111
    store float %r48, ptr %r112
    store float %r49, ptr %r113
    store float %r50, ptr %r114
    store i32 %r51, ptr %r115
    store i32 %r52, ptr %r116
    store i32 %r53, ptr %r117
    store float %r54, ptr %r118
    store float %r55, ptr %r119
    store float %r56, ptr %r120
    store float %r57, ptr %r121
    store float %r58, ptr %r122
    store float %r59, ptr %r123
    store i32 %r60, ptr %r124
    store float %r61, ptr %r125
    store i32 %r62, ptr %r126
    store float %r63, ptr %r127
    br label %L1
L1:
    %r128 = load i32, ptr %r64
    %r129 = add i32 0,0
    %r130 = icmp ne i32 %r128,%r129
    br i1 %r130, label %L2, label %L3
L2:
    call void @llvm.memset.p0.i32(ptr %r131,i8 0,i32 40,i1 0)
    %r132 = load float, ptr %r106
    %r133 = load float, ptr %r82
    %r134 = fadd float %r132,%r133
    %r135 = load float, ptr %r125
    %r136 = fadd float %r134,%r135
    %r137 = load float, ptr %r75
    %r138 = fadd float %r136,%r137
    %r139 = getelementptr [10 x float], ptr %r131, i32 0, i32 0
    store float %r138, ptr %r139
    %r140 = load float, ptr %r67
    %r141 = load float, ptr %r100
    %r142 = fadd float %r140,%r141
    %r143 = load float, ptr %r85
    %r144 = fadd float %r142,%r143
    %r145 = load float, ptr %r73
    %r146 = fadd float %r144,%r145
    %r147 = getelementptr [10 x float], ptr %r131, i32 0, i32 1
    store float %r146, ptr %r147
    %r148 = load float, ptr %r71
    %r149 = load float, ptr %r93
    %r150 = fadd float %r148,%r149
    %r151 = load float, ptr %r105
    %r152 = fadd float %r150,%r151
    %r153 = load float, ptr %r83
    %r154 = fadd float %r152,%r153
    %r155 = getelementptr [10 x float], ptr %r131, i32 0, i32 2
    store float %r154, ptr %r155
    %r156 = load float, ptr %r81
    %r157 = load float, ptr %r113
    %r158 = fadd float %r156,%r157
    %r159 = load float, ptr %r104
    %r160 = fadd float %r158,%r159
    %r161 = load float, ptr %r72
    %r162 = fadd float %r160,%r161
    %r163 = getelementptr [10 x float], ptr %r131, i32 0, i32 3
    store float %r162, ptr %r163
    %r164 = load float, ptr %r99
    %r165 = load float, ptr %r123
    %r166 = fadd float %r164,%r165
    %r167 = load float, ptr %r118
    %r168 = fadd float %r166,%r167
    %r169 = load float, ptr %r119
    %r170 = fadd float %r168,%r169
    %r171 = getelementptr [10 x float], ptr %r131, i32 0, i32 4
    store float %r170, ptr %r171
    %r172 = load float, ptr %r90
    %r173 = load float, ptr %r98
    %r174 = fadd float %r172,%r173
    %r175 = load float, ptr %r120
    %r176 = fadd float %r174,%r175
    %r177 = load float, ptr %r92
    %r178 = fadd float %r176,%r177
    %r179 = getelementptr [10 x float], ptr %r131, i32 0, i32 5
    store float %r178, ptr %r179
    %r180 = load float, ptr %r112
    %r181 = load float, ptr %r94
    %r182 = fadd float %r180,%r181
    %r183 = load float, ptr %r121
    %r184 = fadd float %r182,%r183
    %r185 = load float, ptr %r111
    %r186 = fadd float %r184,%r185
    %r187 = getelementptr [10 x float], ptr %r131, i32 0, i32 6
    store float %r186, ptr %r187
    %r188 = load float, ptr %r76
    %r189 = load float, ptr %r114
    %r190 = fadd float %r188,%r189
    %r191 = load float, ptr %r80
    %r192 = fadd float %r190,%r191
    %r193 = load float, ptr %r108
    %r194 = fadd float %r192,%r193
    %r195 = getelementptr [10 x float], ptr %r131, i32 0, i32 7
    store float %r194, ptr %r195
    %r196 = load float, ptr %r87
    %r197 = load float, ptr %r91
    %r198 = fadd float %r196,%r197
    %r199 = load float, ptr %r101
    %r200 = fadd float %r198,%r199
    %r201 = load float, ptr %r127
    %r202 = fadd float %r200,%r201
    %r203 = getelementptr [10 x float], ptr %r131, i32 0, i32 8
    store float %r202, ptr %r203
    %r204 = load float, ptr %r122
    %r205 = load float, ptr %r78
    %r206 = fadd float %r204,%r205
    %r207 = load float, ptr %r84
    %r208 = fadd float %r206,%r207
    %r209 = load float, ptr %r96
    %r210 = fadd float %r208,%r209
    %r211 = getelementptr [10 x float], ptr %r131, i32 0, i32 9
    store float %r210, ptr %r211
    call void @llvm.memset.p0.i32(ptr %r212,i8 0,i32 32,i1 0)
    %r213 = load i32, ptr %r77
    %r214 = load i32, ptr %r68
    %r215 = add i32 %r213,%r214
    %r216 = load i32, ptr %r65
    %r217 = add i32 %r215,%r216
    %r218 = getelementptr [8 x i32], ptr %r212, i32 0, i32 0
    store i32 %r217, ptr %r218
    %r219 = load i32, ptr %r115
    %r220 = load i32, ptr %r69
    %r221 = add i32 %r219,%r220
    %r222 = load i32, ptr %r70
    %r223 = add i32 %r221,%r222
    %r224 = getelementptr [8 x i32], ptr %r212, i32 0, i32 1
    store i32 %r223, ptr %r224
    %r225 = load i32, ptr %r66
    %r226 = load i32, ptr %r86
    %r227 = add i32 %r225,%r226
    %r228 = load i32, ptr %r95
    %r229 = add i32 %r227,%r228
    %r230 = getelementptr [8 x i32], ptr %r212, i32 0, i32 2
    store i32 %r229, ptr %r230
    %r231 = load i32, ptr %r103
    %r232 = load i32, ptr %r88
    %r233 = add i32 %r231,%r232
    %r234 = load i32, ptr %r109
    %r235 = add i32 %r233,%r234
    %r236 = getelementptr [8 x i32], ptr %r212, i32 0, i32 3
    store i32 %r235, ptr %r236
    %r237 = load i32, ptr %r107
    %r238 = load i32, ptr %r89
    %r239 = add i32 %r237,%r238
    %r240 = load i32, ptr %r126
    %r241 = add i32 %r239,%r240
    %r242 = getelementptr [8 x i32], ptr %r212, i32 0, i32 4
    store i32 %r241, ptr %r242
    %r243 = load i32, ptr %r124
    %r244 = load i32, ptr %r110
    %r245 = add i32 %r243,%r244
    %r246 = load i32, ptr %r97
    %r247 = add i32 %r245,%r246
    %r248 = getelementptr [8 x i32], ptr %r212, i32 0, i32 5
    store i32 %r247, ptr %r248
    %r249 = load i32, ptr %r102
    %r250 = load i32, ptr %r79
    %r251 = add i32 %r249,%r250
    %r252 = load i32, ptr %r117
    %r253 = add i32 %r251,%r252
    %r254 = getelementptr [8 x i32], ptr %r212, i32 0, i32 6
    store i32 %r253, ptr %r254
    %r255 = load i32, ptr %r116
    %r256 = load i32, ptr %r74
    %r257 = add i32 %r255,%r256
    %r258 = load i32, ptr %r64
    %r259 = add i32 %r257,%r258
    %r260 = getelementptr [8 x i32], ptr %r212, i32 0, i32 7
    store i32 %r259, ptr %r260
    %r261 = add i32 10,0
    %r262 = getelementptr [10 x float], ptr %r131, i32 0
    call void @putfarray(i32 %r261,ptr %r262)
    %r263 = add i32 8,0
    %r264 = getelementptr [8 x i32], ptr %r212, i32 0
    call void @putarray(i32 %r263,ptr %r264)
    %r266 = add i32 0,0
    store i32 %r266, ptr %r265
    br label %L5
L3:
    %r288 = load i32, ptr %r68
    %r289 = load i32, ptr %r65
    %r290 = load i32, ptr %r66
    %r291 = load float, ptr %r67
    %r292 = load i32, ptr %r68
    %r293 = load i32, ptr %r69
    %r294 = load i32, ptr %r70
    %r295 = load float, ptr %r71
    %r296 = load float, ptr %r72
    %r297 = load float, ptr %r73
    %r298 = load i32, ptr %r74
    %r299 = load float, ptr %r75
    %r300 = load float, ptr %r76
    %r301 = load i32, ptr %r77
    %r302 = load float, ptr %r78
    %r303 = load i32, ptr %r79
    %r304 = load float, ptr %r80
    %r305 = load float, ptr %r81
    %r306 = load float, ptr %r82
    %r307 = load float, ptr %r83
    %r308 = load float, ptr %r84
    %r309 = load float, ptr %r85
    %r310 = load i32, ptr %r86
    %r311 = load float, ptr %r87
    %r312 = load i32, ptr %r88
    %r313 = load i32, ptr %r89
    %r314 = load float, ptr %r90
    %r315 = load float, ptr %r91
    %r316 = load float, ptr %r92
    %r317 = load float, ptr %r93
    %r318 = load float, ptr %r94
    %r319 = load i32, ptr %r95
    %r320 = load float, ptr %r96
    %r321 = load i32, ptr %r97
    %r322 = load float, ptr %r98
    %r323 = load float, ptr %r99
    %r324 = load float, ptr %r100
    %r325 = load float, ptr %r101
    %r326 = load i32, ptr %r102
    %r327 = load i32, ptr %r103
    %r328 = load float, ptr %r104
    %r329 = load float, ptr %r105
    %r330 = load float, ptr %r106
    %r331 = load i32, ptr %r107
    %r332 = load float, ptr %r108
    %r333 = load i32, ptr %r109
    %r334 = load i32, ptr %r110
    %r335 = load float, ptr %r111
    %r336 = load float, ptr %r112
    %r337 = load float, ptr %r113
    %r338 = load float, ptr %r114
    %r339 = load i32, ptr %r115
    %r340 = load i32, ptr %r116
    %r341 = load i32, ptr %r117
    %r342 = load float, ptr %r118
    %r343 = load float, ptr %r119
    %r344 = load float, ptr %r120
    %r345 = load float, ptr %r121
    %r346 = load float, ptr %r122
    %r347 = load float, ptr %r123
    %r348 = load i32, ptr %r124
    %r349 = load float, ptr %r125
    %r350 = load i32, ptr %r126
    %r351 = load float, ptr %r127
    %r352 = call float @params_f40_i24(i32 %r288,i32 %r289,i32 %r290,float %r291,i32 %r292,i32 %r293,i32 %r294,float %r295,float %r296,float %r297,i32 %r298,float %r299,float %r300,i32 %r301,float %r302,i32 %r303,float %r304,float %r305,float %r306,float %r307,float %r308,float %r309,i32 %r310,float %r311,i32 %r312,i32 %r313,float %r314,float %r315,float %r316,float %r317,float %r318,i32 %r319,float %r320,i32 %r321,float %r322,float %r323,float %r324,float %r325,i32 %r326,i32 %r327,float %r328,float %r329,float %r330,i32 %r331,float %r332,i32 %r333,i32 %r334,float %r335,float %r336,float %r337,float %r338,i32 %r339,i32 %r340,i32 %r341,float %r342,float %r343,float %r344,float %r345,float %r346,float %r347,i32 %r348,float %r349,i32 %r350,float %r351)
    ret float %r352
L5:
    %r267 = load i32, ptr %r265
    %r268 = add i32 8,0
    %r269 = icmp slt i32 %r267,%r268
    br i1 %r269, label %L6, label %L7
L6:
    %r270 = load i32, ptr %r265
    %r271 = getelementptr [8 x i32], ptr %r212, i32 0, i32 %r270
    %r272 = load i32, ptr %r265
    %r273 = getelementptr [8 x i32], ptr %r212, i32 0, i32 %r272
    %r274 = load i32, ptr %r273
    %r275 = load i32, ptr %r265
    %r276 = getelementptr [10 x float], ptr %r131, i32 0, i32 %r275
    %r277 = load float, ptr %r276
    %r278 = sitofp i32 %r274 to float
    %r279 = fsub float %r278,%r277
    %r280 = fptosi float %r279 to i32
    store i32 %r280, ptr %r271
    %r281 = load i32, ptr %r265
    %r282 = add i32 1,0
    %r283 = add i32 %r281,%r282
    store i32 %r283, ptr %r265
    br label %L5
L7:
    %r284 = load i32, ptr @k
    %r285 = getelementptr [8 x i32], ptr %r212, i32 0, i32 %r284
    %r286 = load i32, ptr %r285
    %r287 = sitofp i32 %r286 to float
    ret float %r287
}
define float @params_fa40(ptr %r0,ptr %r1,ptr %r2,ptr %r3,ptr %r4,ptr %r5,ptr %r6,ptr %r7,ptr %r8,ptr %r9,ptr %r10,ptr %r11,ptr %r12,ptr %r13,ptr %r14,ptr %r15,ptr %r16,ptr %r17,ptr %r18,ptr %r19,ptr %r20,ptr %r21,ptr %r22,ptr %r23,ptr %r24,ptr %r25,ptr %r26,ptr %r27,ptr %r28,ptr %r29,ptr %r30,ptr %r31,ptr %r32,ptr %r33,ptr %r34,ptr %r35,ptr %r36,ptr %r37,ptr %r38,ptr %r39)
{
L0:
    %r40 = alloca [10 x float]
    br label %L1
L1:
    call void @llvm.memset.p0.i32(ptr %r40,i8 0,i32 40,i1 0)
    %r41 = load i32, ptr @k
    %r42 = getelementptr float, ptr %r0, i32 %r41
    %r43 = load float, ptr %r42
    %r44 = load i32, ptr @k
    %r45 = getelementptr float, ptr %r1, i32 %r44
    %r46 = load float, ptr %r45
    %r47 = fadd float %r43,%r46
    %r48 = load i32, ptr @k
    %r49 = getelementptr float, ptr %r2, i32 %r48
    %r50 = load float, ptr %r49
    %r51 = fadd float %r47,%r50
    %r52 = load i32, ptr @k
    %r53 = getelementptr float, ptr %r3, i32 %r52
    %r54 = load float, ptr %r53
    %r55 = fadd float %r51,%r54
    %r56 = getelementptr [10 x float], ptr %r40, i32 0, i32 0
    store float %r55, ptr %r56
    %r57 = load i32, ptr @k
    %r58 = getelementptr float, ptr %r4, i32 %r57
    %r59 = load float, ptr %r58
    %r60 = load i32, ptr @k
    %r61 = getelementptr float, ptr %r5, i32 %r60
    %r62 = load float, ptr %r61
    %r63 = fadd float %r59,%r62
    %r64 = load i32, ptr @k
    %r65 = getelementptr float, ptr %r6, i32 %r64
    %r66 = load float, ptr %r65
    %r67 = fadd float %r63,%r66
    %r68 = load i32, ptr @k
    %r69 = getelementptr float, ptr %r7, i32 %r68
    %r70 = load float, ptr %r69
    %r71 = fadd float %r67,%r70
    %r72 = getelementptr [10 x float], ptr %r40, i32 0, i32 1
    store float %r71, ptr %r72
    %r73 = load i32, ptr @k
    %r74 = getelementptr float, ptr %r8, i32 %r73
    %r75 = load float, ptr %r74
    %r76 = load i32, ptr @k
    %r77 = getelementptr float, ptr %r9, i32 %r76
    %r78 = load float, ptr %r77
    %r79 = fadd float %r75,%r78
    %r80 = load i32, ptr @k
    %r81 = getelementptr float, ptr %r10, i32 %r80
    %r82 = load float, ptr %r81
    %r83 = fadd float %r79,%r82
    %r84 = load i32, ptr @k
    %r85 = getelementptr float, ptr %r11, i32 %r84
    %r86 = load float, ptr %r85
    %r87 = fadd float %r83,%r86
    %r88 = getelementptr [10 x float], ptr %r40, i32 0, i32 2
    store float %r87, ptr %r88
    %r89 = load i32, ptr @k
    %r90 = getelementptr float, ptr %r12, i32 %r89
    %r91 = load float, ptr %r90
    %r92 = load i32, ptr @k
    %r93 = getelementptr float, ptr %r13, i32 %r92
    %r94 = load float, ptr %r93
    %r95 = fadd float %r91,%r94
    %r96 = load i32, ptr @k
    %r97 = getelementptr float, ptr %r14, i32 %r96
    %r98 = load float, ptr %r97
    %r99 = fadd float %r95,%r98
    %r100 = load i32, ptr @k
    %r101 = getelementptr float, ptr %r15, i32 %r100
    %r102 = load float, ptr %r101
    %r103 = fadd float %r99,%r102
    %r104 = getelementptr [10 x float], ptr %r40, i32 0, i32 3
    store float %r103, ptr %r104
    %r105 = load i32, ptr @k
    %r106 = getelementptr float, ptr %r16, i32 %r105
    %r107 = load float, ptr %r106
    %r108 = load i32, ptr @k
    %r109 = getelementptr float, ptr %r17, i32 %r108
    %r110 = load float, ptr %r109
    %r111 = fadd float %r107,%r110
    %r112 = load i32, ptr @k
    %r113 = getelementptr float, ptr %r18, i32 %r112
    %r114 = load float, ptr %r113
    %r115 = fadd float %r111,%r114
    %r116 = load i32, ptr @k
    %r117 = getelementptr float, ptr %r19, i32 %r116
    %r118 = load float, ptr %r117
    %r119 = fadd float %r115,%r118
    %r120 = getelementptr [10 x float], ptr %r40, i32 0, i32 4
    store float %r119, ptr %r120
    %r121 = load i32, ptr @k
    %r122 = getelementptr float, ptr %r20, i32 %r121
    %r123 = load float, ptr %r122
    %r124 = load i32, ptr @k
    %r125 = getelementptr float, ptr %r21, i32 %r124
    %r126 = load float, ptr %r125
    %r127 = fadd float %r123,%r126
    %r128 = load i32, ptr @k
    %r129 = getelementptr float, ptr %r22, i32 %r128
    %r130 = load float, ptr %r129
    %r131 = fadd float %r127,%r130
    %r132 = load i32, ptr @k
    %r133 = getelementptr float, ptr %r23, i32 %r132
    %r134 = load float, ptr %r133
    %r135 = fadd float %r131,%r134
    %r136 = getelementptr [10 x float], ptr %r40, i32 0, i32 5
    store float %r135, ptr %r136
    %r137 = load i32, ptr @k
    %r138 = getelementptr float, ptr %r24, i32 %r137
    %r139 = load float, ptr %r138
    %r140 = load i32, ptr @k
    %r141 = getelementptr float, ptr %r25, i32 %r140
    %r142 = load float, ptr %r141
    %r143 = fadd float %r139,%r142
    %r144 = load i32, ptr @k
    %r145 = getelementptr float, ptr %r26, i32 %r144
    %r146 = load float, ptr %r145
    %r147 = fadd float %r143,%r146
    %r148 = load i32, ptr @k
    %r149 = getelementptr float, ptr %r27, i32 %r148
    %r150 = load float, ptr %r149
    %r151 = fadd float %r147,%r150
    %r152 = getelementptr [10 x float], ptr %r40, i32 0, i32 6
    store float %r151, ptr %r152
    %r153 = load i32, ptr @k
    %r154 = getelementptr float, ptr %r28, i32 %r153
    %r155 = load float, ptr %r154
    %r156 = load i32, ptr @k
    %r157 = getelementptr float, ptr %r29, i32 %r156
    %r158 = load float, ptr %r157
    %r159 = fadd float %r155,%r158
    %r160 = load i32, ptr @k
    %r161 = getelementptr float, ptr %r30, i32 %r160
    %r162 = load float, ptr %r161
    %r163 = fadd float %r159,%r162
    %r164 = load i32, ptr @k
    %r165 = getelementptr float, ptr %r31, i32 %r164
    %r166 = load float, ptr %r165
    %r167 = fadd float %r163,%r166
    %r168 = getelementptr [10 x float], ptr %r40, i32 0, i32 7
    store float %r167, ptr %r168
    %r169 = load i32, ptr @k
    %r170 = getelementptr float, ptr %r32, i32 %r169
    %r171 = load float, ptr %r170
    %r172 = load i32, ptr @k
    %r173 = getelementptr float, ptr %r33, i32 %r172
    %r174 = load float, ptr %r173
    %r175 = fadd float %r171,%r174
    %r176 = load i32, ptr @k
    %r177 = getelementptr float, ptr %r34, i32 %r176
    %r178 = load float, ptr %r177
    %r179 = fadd float %r175,%r178
    %r180 = load i32, ptr @k
    %r181 = getelementptr float, ptr %r35, i32 %r180
    %r182 = load float, ptr %r181
    %r183 = fadd float %r179,%r182
    %r184 = getelementptr [10 x float], ptr %r40, i32 0, i32 8
    store float %r183, ptr %r184
    %r185 = load i32, ptr @k
    %r186 = getelementptr float, ptr %r36, i32 %r185
    %r187 = load float, ptr %r186
    %r188 = load i32, ptr @k
    %r189 = getelementptr float, ptr %r37, i32 %r188
    %r190 = load float, ptr %r189
    %r191 = fadd float %r187,%r190
    %r192 = load i32, ptr @k
    %r193 = getelementptr float, ptr %r38, i32 %r192
    %r194 = load float, ptr %r193
    %r195 = fadd float %r191,%r194
    %r196 = load i32, ptr @k
    %r197 = getelementptr float, ptr %r39, i32 %r196
    %r198 = load float, ptr %r197
    %r199 = fadd float %r195,%r198
    %r200 = getelementptr [10 x float], ptr %r40, i32 0, i32 9
    store float %r199, ptr %r200
    %r201 = load i32, ptr @k
    %r202 = getelementptr float, ptr %r39, i32 %r201
    %r203 = load float, ptr %r202
    %r204 = add i32 0,0
    %r205 = sitofp i32 %r204 to float
    %r206 = fcmp one float %r203,%r205
    %r207 = add i32 0,0
    %r208 = zext i1 %r206 to i32
    %r209 = icmp ne i32 %r208,%r207
    %r210 = fadd float 0x0,0x0
    %r211 = zext i1 %r209 to i32
    %r212 = sitofp i32 %r211 to float
    %r213 = fcmp one float %r212,%r210
    %r214 = fadd float 0x0,0x0
    %r215 = zext i1 %r213 to i32
    %r216 = sitofp i32 %r215 to float
    %r217 = fcmp one float %r216,%r214
    br i1 %r217, label %L2, label %L3
L2:
    %r218 = add i32 10,0
    %r219 = getelementptr [10 x float], ptr %r40, i32 0
    call void @putfarray(i32 %r218,ptr %r219)
    %r220 = load i32, ptr @k
    %r221 = getelementptr [10 x float], ptr %r40, i32 0, i32 %r220
    %r222 = load float, ptr %r221
    ret float %r222
L3:
    %r223 = getelementptr float, ptr %r1
    %r224 = getelementptr float, ptr %r2
    %r225 = getelementptr float, ptr %r3
    %r226 = getelementptr float, ptr %r4
    %r227 = getelementptr float, ptr %r5
    %r228 = getelementptr float, ptr %r6
    %r229 = getelementptr float, ptr %r7
    %r230 = getelementptr float, ptr %r8
    %r231 = getelementptr float, ptr %r9
    %r232 = getelementptr float, ptr %r10
    %r233 = getelementptr float, ptr %r11
    %r234 = getelementptr float, ptr %r12
    %r235 = getelementptr float, ptr %r13
    %r236 = getelementptr float, ptr %r14
    %r237 = getelementptr float, ptr %r15
    %r238 = getelementptr float, ptr %r16
    %r239 = getelementptr float, ptr %r17
    %r240 = getelementptr float, ptr %r18
    %r241 = getelementptr float, ptr %r19
    %r242 = getelementptr float, ptr %r20
    %r243 = getelementptr float, ptr %r21
    %r244 = getelementptr float, ptr %r22
    %r245 = getelementptr float, ptr %r23
    %r246 = getelementptr float, ptr %r24
    %r247 = getelementptr float, ptr %r25
    %r248 = getelementptr float, ptr %r26
    %r249 = getelementptr float, ptr %r27
    %r250 = getelementptr float, ptr %r28
    %r251 = getelementptr float, ptr %r29
    %r252 = getelementptr float, ptr %r30
    %r253 = getelementptr float, ptr %r31
    %r254 = getelementptr float, ptr %r32
    %r255 = getelementptr float, ptr %r33
    %r256 = getelementptr float, ptr %r34
    %r257 = getelementptr float, ptr %r35
    %r258 = getelementptr float, ptr %r36
    %r259 = getelementptr float, ptr %r37
    %r260 = getelementptr float, ptr %r38
    %r261 = getelementptr float, ptr %r39
    %r262 = getelementptr [10 x float], ptr %r40, i32 0
    %r263 = call float @params_fa40(ptr %r223,ptr %r224,ptr %r225,ptr %r226,ptr %r227,ptr %r228,ptr %r229,ptr %r230,ptr %r231,ptr %r232,ptr %r233,ptr %r234,ptr %r235,ptr %r236,ptr %r237,ptr %r238,ptr %r239,ptr %r240,ptr %r241,ptr %r242,ptr %r243,ptr %r244,ptr %r245,ptr %r246,ptr %r247,ptr %r248,ptr %r249,ptr %r250,ptr %r251,ptr %r252,ptr %r253,ptr %r254,ptr %r255,ptr %r256,ptr %r257,ptr %r258,ptr %r259,ptr %r260,ptr %r261,ptr %r262)
    ret float %r263
}
define i32 @params_mix(float %r0,ptr %r1,i32 %r2,ptr %r3,float %r4,i32 %r5,float %r6,float %r7,ptr %r8,ptr %r9,i32 %r10,i32 %r11,ptr %r12,ptr %r13,ptr %r14,i32 %r15,ptr %r16,ptr %r17,float %r18,float %r19,float %r20,ptr %r21,i32 %r22,float %r23,float %r24,float %r25,ptr %r26,ptr %r27,ptr %r28,ptr %r29,ptr %r30,float %r31,float %r32,ptr %r33,i32 %r34,ptr %r35,ptr %r36,float %r37,float %r38,ptr %r39,ptr %r40,i32 %r41,i32 %r42,float %r43,float %r44,ptr %r45,i32 %r46,ptr %r47,i32 %r48,ptr %r49,ptr %r50,float %r51,float %r52,ptr %r53,i32 %r54,ptr %r55,ptr %r56,float %r57,i32 %r58,float %r59,ptr %r60,ptr %r61,float %r62,i32 %r63)
{
L0:
    %r294 = alloca i32
    %r202 = alloca [10 x i32]
    %r99 = alloca [10 x float]
    %r98 = alloca i32
    %r97 = alloca float
    %r96 = alloca float
    %r95 = alloca i32
    %r94 = alloca float
    %r93 = alloca i32
    %r92 = alloca float
    %r91 = alloca float
    %r90 = alloca i32
    %r89 = alloca i32
    %r88 = alloca float
    %r87 = alloca float
    %r86 = alloca i32
    %r85 = alloca i32
    %r84 = alloca float
    %r83 = alloca float
    %r82 = alloca i32
    %r81 = alloca float
    %r80 = alloca float
    %r79 = alloca float
    %r78 = alloca float
    %r77 = alloca float
    %r76 = alloca i32
    %r75 = alloca float
    %r74 = alloca float
    %r73 = alloca float
    %r72 = alloca i32
    %r71 = alloca i32
    %r70 = alloca i32
    %r69 = alloca float
    %r68 = alloca float
    %r67 = alloca i32
    %r66 = alloca float
    %r65 = alloca i32
    %r64 = alloca float
    store float %r0, ptr %r64
    store i32 %r2, ptr %r65
    store float %r4, ptr %r66
    store i32 %r5, ptr %r67
    store float %r6, ptr %r68
    store float %r7, ptr %r69
    store i32 %r10, ptr %r70
    store i32 %r11, ptr %r71
    store i32 %r15, ptr %r72
    store float %r18, ptr %r73
    store float %r19, ptr %r74
    store float %r20, ptr %r75
    store i32 %r22, ptr %r76
    store float %r23, ptr %r77
    store float %r24, ptr %r78
    store float %r25, ptr %r79
    store float %r31, ptr %r80
    store float %r32, ptr %r81
    store i32 %r34, ptr %r82
    store float %r37, ptr %r83
    store float %r38, ptr %r84
    store i32 %r41, ptr %r85
    store i32 %r42, ptr %r86
    store float %r43, ptr %r87
    store float %r44, ptr %r88
    store i32 %r46, ptr %r89
    store i32 %r48, ptr %r90
    store float %r51, ptr %r91
    store float %r52, ptr %r92
    store i32 %r54, ptr %r93
    store float %r57, ptr %r94
    store i32 %r58, ptr %r95
    store float %r59, ptr %r96
    store float %r62, ptr %r97
    store i32 %r63, ptr %r98
    br label %L1
L1:
    call void @llvm.memset.p0.i32(ptr %r99,i8 0,i32 40,i1 0)
    %r100 = load float, ptr %r64
    %r101 = load i32, ptr @k
    %r102 = getelementptr float, ptr %r3, i32 %r101
    %r103 = load float, ptr %r102
    %r104 = fadd float %r100,%r103
    %r105 = load float, ptr %r66
    %r106 = fadd float %r104,%r105
    %r107 = load float, ptr %r68
    %r108 = fadd float %r106,%r107
    %r109 = getelementptr [10 x float], ptr %r99, i32 0, i32 0
    store float %r108, ptr %r109
    %r110 = load float, ptr %r69
    %r111 = load i32, ptr @k
    %r112 = getelementptr float, ptr %r8, i32 %r111
    %r113 = load float, ptr %r112
    %r114 = fadd float %r110,%r113
    %r115 = load i32, ptr @k
    %r116 = getelementptr float, ptr %r12, i32 %r115
    %r117 = load float, ptr %r116
    %r118 = fadd float %r114,%r117
    %r119 = load i32, ptr @k
    %r120 = getelementptr float, ptr %r16, i32 %r119
    %r121 = load float, ptr %r120
    %r122 = fadd float %r118,%r121
    %r123 = getelementptr [10 x float], ptr %r99, i32 0, i32 1
    store float %r122, ptr %r123
    %r124 = load i32, ptr @k
    %r125 = getelementptr float, ptr %r17, i32 %r124
    %r126 = load float, ptr %r125
    %r127 = load float, ptr %r73
    %r128 = fadd float %r126,%r127
    %r129 = load float, ptr %r74
    %r130 = fadd float %r128,%r129
    %r131 = load float, ptr %r75
    %r132 = fadd float %r130,%r131
    %r133 = getelementptr [10 x float], ptr %r99, i32 0, i32 2
    store float %r132, ptr %r133
    %r134 = load i32, ptr @k
    %r135 = getelementptr float, ptr %r21, i32 %r134
    %r136 = load float, ptr %r135
    %r137 = load float, ptr %r77
    %r138 = fadd float %r136,%r137
    %r139 = load float, ptr %r78
    %r140 = fadd float %r138,%r139
    %r141 = load float, ptr %r79
    %r142 = fadd float %r140,%r141
    %r143 = getelementptr [10 x float], ptr %r99, i32 0, i32 3
    store float %r142, ptr %r143
    %r144 = load i32, ptr @k
    %r145 = getelementptr float, ptr %r27, i32 %r144
    %r146 = load float, ptr %r145
    %r147 = load i32, ptr @k
    %r148 = getelementptr float, ptr %r30, i32 %r147
    %r149 = load float, ptr %r148
    %r150 = fadd float %r146,%r149
    %r151 = load float, ptr %r80
    %r152 = fadd float %r150,%r151
    %r153 = load float, ptr %r81
    %r154 = fadd float %r152,%r153
    %r155 = getelementptr [10 x float], ptr %r99, i32 0, i32 4
    store float %r154, ptr %r155
    %r156 = load i32, ptr @k
    %r157 = getelementptr float, ptr %r35, i32 %r156
    %r158 = load float, ptr %r157
    %r159 = load i32, ptr @k
    %r160 = getelementptr float, ptr %r36, i32 %r159
    %r161 = load float, ptr %r160
    %r162 = fadd float %r158,%r161
    %r163 = load float, ptr %r83
    %r164 = fadd float %r162,%r163
    %r165 = load float, ptr %r84
    %r166 = fadd float %r164,%r165
    %r167 = getelementptr [10 x float], ptr %r99, i32 0, i32 5
    store float %r166, ptr %r167
    %r168 = load float, ptr %r87
    %r169 = load float, ptr %r88
    %r170 = fadd float %r168,%r169
    %r171 = load i32, ptr @k
    %r172 = getelementptr float, ptr %r47, i32 %r171
    %r173 = load float, ptr %r172
    %r174 = fadd float %r170,%r173
    %r175 = load float, ptr %r91
    %r176 = fadd float %r174,%r175
    %r177 = getelementptr [10 x float], ptr %r99, i32 0, i32 6
    store float %r176, ptr %r177
    %r178 = load float, ptr %r92
    %r179 = load i32, ptr @k
    %r180 = getelementptr float, ptr %r53, i32 %r179
    %r181 = load float, ptr %r180
    %r182 = fadd float %r178,%r181
    %r183 = load i32, ptr @k
    %r184 = getelementptr float, ptr %r56, i32 %r183
    %r185 = load float, ptr %r184
    %r186 = fadd float %r182,%r185
    %r187 = load float, ptr %r94
    %r188 = fadd float %r186,%r187
    %r189 = getelementptr [10 x float], ptr %r99, i32 0, i32 7
    store float %r188, ptr %r189
    %r190 = load float, ptr %r96
    %r191 = load i32, ptr @k
    %r192 = getelementptr float, ptr %r60, i32 %r191
    %r193 = load float, ptr %r192
    %r194 = fadd float %r190,%r193
    %r195 = load i32, ptr @k
    %r196 = getelementptr float, ptr %r61, i32 %r195
    %r197 = load float, ptr %r196
    %r198 = fadd float %r194,%r197
    %r199 = load float, ptr %r97
    %r200 = fadd float %r198,%r199
    %r201 = getelementptr [10 x float], ptr %r99, i32 0, i32 8
    store float %r200, ptr %r201
    call void @llvm.memset.p0.i32(ptr %r202,i8 0,i32 40,i1 0)
    %r203 = load i32, ptr @k
    %r204 = getelementptr i32, ptr %r1, i32 %r203
    %r205 = load i32, ptr %r204
    %r206 = load i32, ptr %r65
    %r207 = add i32 %r205,%r206
    %r208 = load i32, ptr %r67
    %r209 = add i32 %r207,%r208
    %r210 = getelementptr [10 x i32], ptr %r202, i32 0, i32 0
    store i32 %r209, ptr %r210
    %r211 = load i32, ptr @k
    %r212 = getelementptr i32, ptr %r9, i32 %r211
    %r213 = load i32, ptr %r212
    %r214 = load i32, ptr %r70
    %r215 = add i32 %r213,%r214
    %r216 = load i32, ptr %r71
    %r217 = add i32 %r215,%r216
    %r218 = getelementptr [10 x i32], ptr %r202, i32 0, i32 1
    store i32 %r217, ptr %r218
    %r219 = load i32, ptr @k
    %r220 = getelementptr i32, ptr %r13, i32 %r219
    %r221 = load i32, ptr %r220
    %r222 = load i32, ptr @k
    %r223 = getelementptr i32, ptr %r14, i32 %r222
    %r224 = load i32, ptr %r223
    %r225 = add i32 %r221,%r224
    %r226 = load i32, ptr %r72
    %r227 = add i32 %r225,%r226
    %r228 = getelementptr [10 x i32], ptr %r202, i32 0, i32 2
    store i32 %r227, ptr %r228
    %r229 = load i32, ptr %r76
    %r230 = load i32, ptr @k
    %r231 = getelementptr i32, ptr %r26, i32 %r230
    %r232 = load i32, ptr %r231
    %r233 = add i32 %r229,%r232
    %r234 = load i32, ptr @k
    %r235 = getelementptr i32, ptr %r28, i32 %r234
    %r236 = load i32, ptr %r235
    %r237 = add i32 %r233,%r236
    %r238 = getelementptr [10 x i32], ptr %r202, i32 0, i32 3
    store i32 %r237, ptr %r238
    %r239 = load i32, ptr @k
    %r240 = getelementptr i32, ptr %r29, i32 %r239
    %r241 = load i32, ptr %r240
    %r242 = load i32, ptr @k
    %r243 = getelementptr i32, ptr %r33, i32 %r242
    %r244 = load i32, ptr %r243
    %r245 = add i32 %r241,%r244
    %r246 = load i32, ptr %r82
    %r247 = add i32 %r245,%r246
    %r248 = getelementptr [10 x i32], ptr %r202, i32 0, i32 4
    store i32 %r247, ptr %r248
    %r249 = load i32, ptr @k
    %r250 = getelementptr i32, ptr %r39, i32 %r249
    %r251 = load i32, ptr %r250
    %r252 = load i32, ptr @k
    %r253 = getelementptr i32, ptr %r40, i32 %r252
    %r254 = load i32, ptr %r253
    %r255 = add i32 %r251,%r254
    %r256 = load i32, ptr %r85
    %r257 = add i32 %r255,%r256
    %r258 = getelementptr [10 x i32], ptr %r202, i32 0, i32 5
    store i32 %r257, ptr %r258
    %r259 = load i32, ptr %r86
    %r260 = load i32, ptr @k
    %r261 = getelementptr i32, ptr %r45, i32 %r260
    %r262 = load i32, ptr %r261
    %r263 = add i32 %r259,%r262
    %r264 = load i32, ptr %r89
    %r265 = add i32 %r263,%r264
    %r266 = getelementptr [10 x i32], ptr %r202, i32 0, i32 6
    store i32 %r265, ptr %r266
    %r267 = load i32, ptr %r90
    %r268 = load i32, ptr @k
    %r269 = getelementptr i32, ptr %r49, i32 %r268
    %r270 = load i32, ptr %r269
    %r271 = add i32 %r267,%r270
    %r272 = load i32, ptr @k
    %r273 = getelementptr i32, ptr %r50, i32 %r272
    %r274 = load i32, ptr %r273
    %r275 = add i32 %r271,%r274
    %r276 = getelementptr [10 x i32], ptr %r202, i32 0, i32 7
    store i32 %r275, ptr %r276
    %r277 = load i32, ptr %r93
    %r278 = load i32, ptr @k
    %r279 = getelementptr i32, ptr %r55, i32 %r278
    %r280 = load i32, ptr %r279
    %r281 = add i32 %r277,%r280
    %r282 = load i32, ptr %r95
    %r283 = add i32 %r281,%r282
    %r284 = load i32, ptr %r98
    %r285 = add i32 %r283,%r284
    %r286 = getelementptr [10 x i32], ptr %r202, i32 0, i32 8
    store i32 %r285, ptr %r286
    %r287 = load i32, ptr %r98
    %r288 = add i32 0,0
    %r289 = icmp ne i32 %r287,%r288
    br i1 %r289, label %L2, label %L3
L2:
    %r290 = add i32 10,0
    %r291 = getelementptr [10 x float], ptr %r99, i32 0
    call void @putfarray(i32 %r290,ptr %r291)
    %r292 = add i32 10,0
    %r293 = getelementptr [10 x i32], ptr %r202, i32 0
    call void @putarray(i32 %r292,ptr %r293)
    %r295 = add i32 0,0
    store i32 %r295, ptr %r294
    br label %L5
L3:
    %r322 = load float, ptr %r64
    %r323 = getelementptr [10 x i32], ptr %r202, i32 0
    %r324 = load i32, ptr %r65
    %r325 = getelementptr [10 x float], ptr %r99, i32 0
    %r326 = load float, ptr %r66
    %r327 = load i32, ptr %r67
    %r328 = load float, ptr %r68
    %r329 = load float, ptr %r69
    %r330 = getelementptr float, ptr %r8
    %r331 = getelementptr i32, ptr %r9
    %r332 = load i32, ptr %r70
    %r333 = load i32, ptr %r71
    %r334 = getelementptr float, ptr %r12
    %r335 = getelementptr i32, ptr %r13
    %r336 = getelementptr i32, ptr %r14
    %r337 = load i32, ptr %r72
    %r338 = getelementptr float, ptr %r16
    %r339 = getelementptr float, ptr %r17
    %r340 = load float, ptr %r73
    %r341 = load float, ptr %r74
    %r342 = load float, ptr %r75
    %r343 = getelementptr float, ptr %r21
    %r344 = load i32, ptr %r76
    %r345 = load float, ptr %r77
    %r346 = load float, ptr %r78
    %r347 = load float, ptr %r79
    %r348 = getelementptr i32, ptr %r26
    %r349 = getelementptr float, ptr %r27
    %r350 = getelementptr i32, ptr %r28
    %r351 = getelementptr i32, ptr %r29
    %r352 = getelementptr float, ptr %r30
    %r353 = load float, ptr %r80
    %r354 = load float, ptr %r81
    %r355 = getelementptr i32, ptr %r33
    %r356 = load i32, ptr %r82
    %r357 = getelementptr float, ptr %r35
    %r358 = getelementptr float, ptr %r36
    %r359 = load float, ptr %r83
    %r360 = load float, ptr %r84
    %r361 = getelementptr i32, ptr %r39
    %r362 = getelementptr i32, ptr %r40
    %r363 = load i32, ptr %r85
    %r364 = load i32, ptr %r86
    %r365 = load float, ptr %r87
    %r366 = load float, ptr %r88
    %r367 = getelementptr i32, ptr %r45
    %r368 = load i32, ptr %r89
    %r369 = getelementptr float, ptr %r47
    %r370 = load i32, ptr %r90
    %r371 = getelementptr i32, ptr %r49
    %r372 = getelementptr i32, ptr %r50
    %r373 = load float, ptr %r91
    %r374 = load float, ptr %r92
    %r375 = getelementptr float, ptr %r53
    %r376 = load i32, ptr %r93
    %r377 = getelementptr i32, ptr %r55
    %r378 = getelementptr float, ptr %r56
    %r379 = load float, ptr %r94
    %r380 = load i32, ptr %r95
    %r381 = load float, ptr %r96
    %r382 = getelementptr float, ptr %r60
    %r383 = getelementptr float, ptr %r61
    %r384 = load i32, ptr %r98
    %r385 = sitofp i32 %r384 to float
    %r386 = load float, ptr %r97
    %r387 = fptosi float %r386 to i32
    %r388 = call i32 @params_mix(float %r322,ptr %r323,i32 %r324,ptr %r325,float %r326,i32 %r327,float %r328,float %r329,ptr %r330,ptr %r331,i32 %r332,i32 %r333,ptr %r334,ptr %r335,ptr %r336,i32 %r337,ptr %r338,ptr %r339,float %r340,float %r341,float %r342,ptr %r343,i32 %r344,float %r345,float %r346,float %r347,ptr %r348,ptr %r349,ptr %r350,ptr %r351,ptr %r352,float %r353,float %r354,ptr %r355,i32 %r356,ptr %r357,ptr %r358,float %r359,float %r360,ptr %r361,ptr %r362,i32 %r363,i32 %r364,float %r365,float %r366,ptr %r367,i32 %r368,ptr %r369,i32 %r370,ptr %r371,ptr %r372,float %r373,float %r374,ptr %r375,i32 %r376,ptr %r377,ptr %r378,float %r379,i32 %r380,float %r381,ptr %r382,ptr %r383,float %r385,i32 %r387)
    ret i32 %r388
L5:
    %r296 = load i32, ptr %r294
    %r297 = add i32 10,0
    %r298 = icmp slt i32 %r296,%r297
    br i1 %r298, label %L6, label %L7
L6:
    %r299 = load i32, ptr %r294
    %r300 = getelementptr [10 x i32], ptr %r202, i32 0, i32 %r299
    %r301 = load i32, ptr %r294
    %r302 = getelementptr [10 x i32], ptr %r202, i32 0, i32 %r301
    %r303 = load i32, ptr %r302
    %r304 = load i32, ptr %r294
    %r305 = getelementptr [10 x float], ptr %r99, i32 0, i32 %r304
    %r306 = load float, ptr %r305
    %r307 = sitofp i32 %r303 to float
    %r308 = fsub float %r307,%r306
    %r309 = fptosi float %r308 to i32
    store i32 %r309, ptr %r300
    %r310 = load i32, ptr %r294
    %r311 = add i32 1,0
    %r312 = add i32 %r310,%r311
    store i32 %r312, ptr %r294
    br label %L5
L7:
    %r313 = load i32, ptr @k
    %r314 = getelementptr [10 x i32], ptr %r202, i32 0, i32 %r313
    %r315 = load i32, ptr %r314
    %r316 = add i32 8,0
    %r317 = getelementptr [10 x float], ptr %r99, i32 0, i32 %r316
    %r318 = load float, ptr %r317
    %r319 = sitofp i32 %r315 to float
    %r320 = fmul float %r319,%r318
    %r321 = fptosi float %r320 to i32
    ret i32 %r321
}
define i32 @main()
{
L0:
    %r527 = alloca i32
    %r445 = alloca float
    %r187 = alloca float
    %r25 = alloca float
    %r2 = alloca i32
    %r1 = alloca [24 x [3 x i32]]
    %r0 = alloca [40 x [3 x float]]
    br label %L1
L1:
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r4 = call i32 @getint()
    store i32 %r4, ptr @k
    %r5 = add i32 0,0
    store i32 %r5, ptr %r2
    br label %L2
L2:
    %r6 = load i32, ptr %r2
    %r7 = add i32 40,0
    %r8 = icmp slt i32 %r6,%r7
    br i1 %r8, label %L3, label %L4
L3:
    %r9 = load i32, ptr %r2
    %r10 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r9
    %r11 = call i32 @getfarray(ptr %r10)
    %r12 = load i32, ptr %r2
    %r13 = add i32 1,0
    %r14 = add i32 %r12,%r13
    store i32 %r14, ptr %r2
    br label %L2
L4:
    %r15 = add i32 0,0
    store i32 %r15, ptr %r2
    br label %L5
L5:
    %r16 = load i32, ptr %r2
    %r17 = add i32 24,0
    %r18 = icmp slt i32 %r16,%r17
    br i1 %r18, label %L6, label %L7
L6:
    %r19 = load i32, ptr %r2
    %r20 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r19
    %r21 = call i32 @getarray(ptr %r20)
    %r22 = load i32, ptr %r2
    %r23 = add i32 1,0
    %r24 = add i32 %r22,%r23
    store i32 %r24, ptr %r2
    br label %L5
L7:
    %r26 = add i32 0,0
    %r27 = load i32, ptr @k
    %r28 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r26, i32 %r27
    %r29 = load float, ptr %r28
    %r30 = add i32 1,0
    %r31 = load i32, ptr @k
    %r32 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r30, i32 %r31
    %r33 = load float, ptr %r32
    %r34 = add i32 2,0
    %r35 = load i32, ptr @k
    %r36 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r34, i32 %r35
    %r37 = load float, ptr %r36
    %r38 = add i32 3,0
    %r39 = load i32, ptr @k
    %r40 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r38, i32 %r39
    %r41 = load float, ptr %r40
    %r42 = add i32 4,0
    %r43 = load i32, ptr @k
    %r44 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r42, i32 %r43
    %r45 = load float, ptr %r44
    %r46 = add i32 5,0
    %r47 = load i32, ptr @k
    %r48 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r46, i32 %r47
    %r49 = load float, ptr %r48
    %r50 = add i32 6,0
    %r51 = load i32, ptr @k
    %r52 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r50, i32 %r51
    %r53 = load float, ptr %r52
    %r54 = add i32 7,0
    %r55 = load i32, ptr @k
    %r56 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r54, i32 %r55
    %r57 = load float, ptr %r56
    %r58 = add i32 8,0
    %r59 = load i32, ptr @k
    %r60 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r58, i32 %r59
    %r61 = load float, ptr %r60
    %r62 = add i32 9,0
    %r63 = load i32, ptr @k
    %r64 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r62, i32 %r63
    %r65 = load float, ptr %r64
    %r66 = add i32 10,0
    %r67 = load i32, ptr @k
    %r68 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r66, i32 %r67
    %r69 = load float, ptr %r68
    %r70 = add i32 11,0
    %r71 = load i32, ptr @k
    %r72 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r70, i32 %r71
    %r73 = load float, ptr %r72
    %r74 = add i32 12,0
    %r75 = load i32, ptr @k
    %r76 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r74, i32 %r75
    %r77 = load float, ptr %r76
    %r78 = add i32 13,0
    %r79 = load i32, ptr @k
    %r80 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r78, i32 %r79
    %r81 = load float, ptr %r80
    %r82 = add i32 14,0
    %r83 = load i32, ptr @k
    %r84 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r82, i32 %r83
    %r85 = load float, ptr %r84
    %r86 = add i32 15,0
    %r87 = load i32, ptr @k
    %r88 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r86, i32 %r87
    %r89 = load float, ptr %r88
    %r90 = add i32 16,0
    %r91 = load i32, ptr @k
    %r92 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r90, i32 %r91
    %r93 = load float, ptr %r92
    %r94 = add i32 17,0
    %r95 = load i32, ptr @k
    %r96 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r94, i32 %r95
    %r97 = load float, ptr %r96
    %r98 = add i32 18,0
    %r99 = load i32, ptr @k
    %r100 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r98, i32 %r99
    %r101 = load float, ptr %r100
    %r102 = add i32 19,0
    %r103 = load i32, ptr @k
    %r104 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r102, i32 %r103
    %r105 = load float, ptr %r104
    %r106 = add i32 20,0
    %r107 = load i32, ptr @k
    %r108 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r106, i32 %r107
    %r109 = load float, ptr %r108
    %r110 = add i32 21,0
    %r111 = load i32, ptr @k
    %r112 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r110, i32 %r111
    %r113 = load float, ptr %r112
    %r114 = add i32 22,0
    %r115 = load i32, ptr @k
    %r116 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r114, i32 %r115
    %r117 = load float, ptr %r116
    %r118 = add i32 23,0
    %r119 = load i32, ptr @k
    %r120 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r118, i32 %r119
    %r121 = load float, ptr %r120
    %r122 = add i32 24,0
    %r123 = load i32, ptr @k
    %r124 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r122, i32 %r123
    %r125 = load float, ptr %r124
    %r126 = add i32 25,0
    %r127 = load i32, ptr @k
    %r128 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r126, i32 %r127
    %r129 = load float, ptr %r128
    %r130 = add i32 26,0
    %r131 = load i32, ptr @k
    %r132 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r130, i32 %r131
    %r133 = load float, ptr %r132
    %r134 = add i32 27,0
    %r135 = load i32, ptr @k
    %r136 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r134, i32 %r135
    %r137 = load float, ptr %r136
    %r138 = add i32 28,0
    %r139 = load i32, ptr @k
    %r140 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r138, i32 %r139
    %r141 = load float, ptr %r140
    %r142 = add i32 29,0
    %r143 = load i32, ptr @k
    %r144 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r142, i32 %r143
    %r145 = load float, ptr %r144
    %r146 = add i32 30,0
    %r147 = load i32, ptr @k
    %r148 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r146, i32 %r147
    %r149 = load float, ptr %r148
    %r150 = add i32 31,0
    %r151 = load i32, ptr @k
    %r152 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r150, i32 %r151
    %r153 = load float, ptr %r152
    %r154 = add i32 32,0
    %r155 = load i32, ptr @k
    %r156 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r154, i32 %r155
    %r157 = load float, ptr %r156
    %r158 = add i32 33,0
    %r159 = load i32, ptr @k
    %r160 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r158, i32 %r159
    %r161 = load float, ptr %r160
    %r162 = add i32 34,0
    %r163 = load i32, ptr @k
    %r164 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r162, i32 %r163
    %r165 = load float, ptr %r164
    %r166 = add i32 35,0
    %r167 = load i32, ptr @k
    %r168 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r166, i32 %r167
    %r169 = load float, ptr %r168
    %r170 = add i32 36,0
    %r171 = load i32, ptr @k
    %r172 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r170, i32 %r171
    %r173 = load float, ptr %r172
    %r174 = add i32 37,0
    %r175 = load i32, ptr @k
    %r176 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r174, i32 %r175
    %r177 = load float, ptr %r176
    %r178 = add i32 38,0
    %r179 = load i32, ptr @k
    %r180 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r178, i32 %r179
    %r181 = load float, ptr %r180
    %r182 = add i32 39,0
    %r183 = load i32, ptr @k
    %r184 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r182, i32 %r183
    %r185 = load float, ptr %r184
    %r186 = call float @params_f40(float %r29,float %r33,float %r37,float %r41,float %r45,float %r49,float %r53,float %r57,float %r61,float %r65,float %r69,float %r73,float %r77,float %r81,float %r85,float %r89,float %r93,float %r97,float %r101,float %r105,float %r109,float %r113,float %r117,float %r121,float %r125,float %r129,float %r133,float %r137,float %r141,float %r145,float %r149,float %r153,float %r157,float %r161,float %r165,float %r169,float %r173,float %r177,float %r181,float %r185)
    store float %r186, ptr %r25
    %r188 = add i32 23,0
    %r189 = load i32, ptr @k
    %r190 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r188, i32 %r189
    %r191 = load i32, ptr %r190
    %r192 = add i32 2,0
    %r193 = load i32, ptr @k
    %r194 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r192, i32 %r193
    %r195 = load i32, ptr %r194
    %r196 = add i32 6,0
    %r197 = load i32, ptr @k
    %r198 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r196, i32 %r197
    %r199 = load i32, ptr %r198
    %r200 = add i32 4,0
    %r201 = load i32, ptr @k
    %r202 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r200, i32 %r201
    %r203 = load float, ptr %r202
    %r204 = add i32 1,0
    %r205 = load i32, ptr @k
    %r206 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r204, i32 %r205
    %r207 = load i32, ptr %r206
    %r208 = add i32 4,0
    %r209 = load i32, ptr @k
    %r210 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r208, i32 %r209
    %r211 = load i32, ptr %r210
    %r212 = add i32 5,0
    %r213 = load i32, ptr @k
    %r214 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r212, i32 %r213
    %r215 = load i32, ptr %r214
    %r216 = add i32 8,0
    %r217 = load i32, ptr @k
    %r218 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r216, i32 %r217
    %r219 = load float, ptr %r218
    %r220 = add i32 15,0
    %r221 = load i32, ptr @k
    %r222 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r220, i32 %r221
    %r223 = load float, ptr %r222
    %r224 = add i32 7,0
    %r225 = load i32, ptr @k
    %r226 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r224, i32 %r225
    %r227 = load float, ptr %r226
    %r228 = add i32 22,0
    %r229 = load i32, ptr @k
    %r230 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r228, i32 %r229
    %r231 = load i32, ptr %r230
    %r232 = add i32 3,0
    %r233 = load i32, ptr @k
    %r234 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r232, i32 %r233
    %r235 = load float, ptr %r234
    %r236 = add i32 28,0
    %r237 = load i32, ptr @k
    %r238 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r236, i32 %r237
    %r239 = load float, ptr %r238
    %r240 = add i32 0,0
    %r241 = load i32, ptr @k
    %r242 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r240, i32 %r241
    %r243 = load i32, ptr %r242
    %r244 = add i32 37,0
    %r245 = load i32, ptr @k
    %r246 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r244, i32 %r245
    %r247 = load float, ptr %r246
    %r248 = add i32 19,0
    %r249 = load i32, ptr @k
    %r250 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r248, i32 %r249
    %r251 = load i32, ptr %r250
    %r252 = add i32 30,0
    %r253 = load i32, ptr @k
    %r254 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r252, i32 %r253
    %r255 = load float, ptr %r254
    %r256 = add i32 12,0
    %r257 = load i32, ptr @k
    %r258 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r256, i32 %r257
    %r259 = load float, ptr %r258
    %r260 = add i32 1,0
    %r261 = load i32, ptr @k
    %r262 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r260, i32 %r261
    %r263 = load float, ptr %r262
    %r264 = add i32 11,0
    %r265 = load i32, ptr @k
    %r266 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r264, i32 %r265
    %r267 = load float, ptr %r266
    %r268 = add i32 38,0
    %r269 = load i32, ptr @k
    %r270 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r268, i32 %r269
    %r271 = load float, ptr %r270
    %r272 = add i32 6,0
    %r273 = load i32, ptr @k
    %r274 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r272, i32 %r273
    %r275 = load float, ptr %r274
    %r276 = add i32 7,0
    %r277 = load i32, ptr @k
    %r278 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r276, i32 %r277
    %r279 = load i32, ptr %r278
    %r280 = add i32 32,0
    %r281 = load i32, ptr @k
    %r282 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r280, i32 %r281
    %r283 = load float, ptr %r282
    %r284 = add i32 10,0
    %r285 = load i32, ptr @k
    %r286 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r284, i32 %r285
    %r287 = load i32, ptr %r286
    %r288 = add i32 13,0
    %r289 = load i32, ptr @k
    %r290 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r288, i32 %r289
    %r291 = load i32, ptr %r290
    %r292 = add i32 20,0
    %r293 = load i32, ptr @k
    %r294 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r292, i32 %r293
    %r295 = load float, ptr %r294
    %r296 = add i32 33,0
    %r297 = load i32, ptr @k
    %r298 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r296, i32 %r297
    %r299 = load float, ptr %r298
    %r300 = add i32 23,0
    %r301 = load i32, ptr @k
    %r302 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r300, i32 %r301
    %r303 = load float, ptr %r302
    %r304 = add i32 9,0
    %r305 = load i32, ptr @k
    %r306 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r304, i32 %r305
    %r307 = load float, ptr %r306
    %r308 = add i32 25,0
    %r309 = load i32, ptr @k
    %r310 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r308, i32 %r309
    %r311 = load float, ptr %r310
    %r312 = add i32 8,0
    %r313 = load i32, ptr @k
    %r314 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r312, i32 %r313
    %r315 = load i32, ptr %r314
    %r316 = add i32 39,0
    %r317 = load i32, ptr @k
    %r318 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r316, i32 %r317
    %r319 = load float, ptr %r318
    %r320 = add i32 17,0
    %r321 = load i32, ptr @k
    %r322 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r320, i32 %r321
    %r323 = load i32, ptr %r322
    %r324 = add i32 21,0
    %r325 = load i32, ptr @k
    %r326 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r324, i32 %r325
    %r327 = load float, ptr %r326
    %r328 = add i32 16,0
    %r329 = load i32, ptr @k
    %r330 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r328, i32 %r329
    %r331 = load float, ptr %r330
    %r332 = add i32 5,0
    %r333 = load i32, ptr @k
    %r334 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r332, i32 %r333
    %r335 = load float, ptr %r334
    %r336 = add i32 34,0
    %r337 = load i32, ptr @k
    %r338 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r336, i32 %r337
    %r339 = load float, ptr %r338
    %r340 = add i32 18,0
    %r341 = load i32, ptr @k
    %r342 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r340, i32 %r341
    %r343 = load i32, ptr %r342
    %r344 = add i32 9,0
    %r345 = load i32, ptr @k
    %r346 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r344, i32 %r345
    %r347 = load i32, ptr %r346
    %r348 = add i32 14,0
    %r349 = load i32, ptr @k
    %r350 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r348, i32 %r349
    %r351 = load float, ptr %r350
    %r352 = add i32 10,0
    %r353 = load i32, ptr @k
    %r354 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r352, i32 %r353
    %r355 = load float, ptr %r354
    %r356 = add i32 0,0
    %r357 = load i32, ptr @k
    %r358 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r356, i32 %r357
    %r359 = load float, ptr %r358
    %r360 = add i32 12,0
    %r361 = load i32, ptr @k
    %r362 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r360, i32 %r361
    %r363 = load i32, ptr %r362
    %r364 = add i32 31,0
    %r365 = load i32, ptr @k
    %r366 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r364, i32 %r365
    %r367 = load float, ptr %r366
    %r368 = add i32 11,0
    %r369 = load i32, ptr @k
    %r370 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r368, i32 %r369
    %r371 = load i32, ptr %r370
    %r372 = add i32 16,0
    %r373 = load i32, ptr @k
    %r374 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r372, i32 %r373
    %r375 = load i32, ptr %r374
    %r376 = add i32 27,0
    %r377 = load i32, ptr @k
    %r378 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r376, i32 %r377
    %r379 = load float, ptr %r378
    %r380 = add i32 24,0
    %r381 = load i32, ptr @k
    %r382 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r380, i32 %r381
    %r383 = load float, ptr %r382
    %r384 = add i32 13,0
    %r385 = load i32, ptr @k
    %r386 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r384, i32 %r385
    %r387 = load float, ptr %r386
    %r388 = add i32 29,0
    %r389 = load i32, ptr @k
    %r390 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r388, i32 %r389
    %r391 = load float, ptr %r390
    %r392 = add i32 3,0
    %r393 = load i32, ptr @k
    %r394 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r392, i32 %r393
    %r395 = load i32, ptr %r394
    %r396 = add i32 21,0
    %r397 = load i32, ptr @k
    %r398 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r396, i32 %r397
    %r399 = load i32, ptr %r398
    %r400 = add i32 20,0
    %r401 = load i32, ptr @k
    %r402 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r400, i32 %r401
    %r403 = load i32, ptr %r402
    %r404 = add i32 18,0
    %r405 = load i32, ptr @k
    %r406 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r404, i32 %r405
    %r407 = load float, ptr %r406
    %r408 = add i32 19,0
    %r409 = load i32, ptr @k
    %r410 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r408, i32 %r409
    %r411 = load float, ptr %r410
    %r412 = add i32 22,0
    %r413 = load i32, ptr @k
    %r414 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r412, i32 %r413
    %r415 = load float, ptr %r414
    %r416 = add i32 26,0
    %r417 = load i32, ptr @k
    %r418 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r416, i32 %r417
    %r419 = load float, ptr %r418
    %r420 = add i32 36,0
    %r421 = load i32, ptr @k
    %r422 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r420, i32 %r421
    %r423 = load float, ptr %r422
    %r424 = add i32 17,0
    %r425 = load i32, ptr @k
    %r426 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r424, i32 %r425
    %r427 = load float, ptr %r426
    %r428 = add i32 15,0
    %r429 = load i32, ptr @k
    %r430 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r428, i32 %r429
    %r431 = load i32, ptr %r430
    %r432 = add i32 2,0
    %r433 = load i32, ptr @k
    %r434 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r432, i32 %r433
    %r435 = load float, ptr %r434
    %r436 = add i32 14,0
    %r437 = load i32, ptr @k
    %r438 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r436, i32 %r437
    %r439 = load i32, ptr %r438
    %r440 = add i32 35,0
    %r441 = load i32, ptr @k
    %r442 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r440, i32 %r441
    %r443 = load float, ptr %r442
    %r444 = call float @params_f40_i24(i32 %r191,i32 %r195,i32 %r199,float %r203,i32 %r207,i32 %r211,i32 %r215,float %r219,float %r223,float %r227,i32 %r231,float %r235,float %r239,i32 %r243,float %r247,i32 %r251,float %r255,float %r259,float %r263,float %r267,float %r271,float %r275,i32 %r279,float %r283,i32 %r287,i32 %r291,float %r295,float %r299,float %r303,float %r307,float %r311,i32 %r315,float %r319,i32 %r323,float %r327,float %r331,float %r335,float %r339,i32 %r343,i32 %r347,float %r351,float %r355,float %r359,i32 %r363,float %r367,i32 %r371,i32 %r375,float %r379,float %r383,float %r387,float %r391,i32 %r395,i32 %r399,i32 %r403,float %r407,float %r411,float %r415,float %r419,float %r423,float %r427,i32 %r431,float %r435,i32 %r439,float %r443)
    store float %r444, ptr %r187
    %r446 = add i32 0,0
    %r447 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r446
    %r448 = add i32 1,0
    %r449 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r448
    %r450 = add i32 2,0
    %r451 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r450
    %r452 = add i32 3,0
    %r453 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r452
    %r454 = add i32 4,0
    %r455 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r454
    %r456 = add i32 5,0
    %r457 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r456
    %r458 = add i32 6,0
    %r459 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r458
    %r460 = add i32 7,0
    %r461 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r460
    %r462 = add i32 8,0
    %r463 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r462
    %r464 = add i32 9,0
    %r465 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r464
    %r466 = add i32 10,0
    %r467 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r466
    %r468 = add i32 11,0
    %r469 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r468
    %r470 = add i32 12,0
    %r471 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r470
    %r472 = add i32 13,0
    %r473 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r472
    %r474 = add i32 14,0
    %r475 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r474
    %r476 = add i32 15,0
    %r477 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r476
    %r478 = add i32 16,0
    %r479 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r478
    %r480 = add i32 17,0
    %r481 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r480
    %r482 = add i32 18,0
    %r483 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r482
    %r484 = add i32 19,0
    %r485 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r484
    %r486 = add i32 20,0
    %r487 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r486
    %r488 = add i32 21,0
    %r489 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r488
    %r490 = add i32 22,0
    %r491 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r490
    %r492 = add i32 23,0
    %r493 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r492
    %r494 = add i32 24,0
    %r495 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r494
    %r496 = add i32 25,0
    %r497 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r496
    %r498 = add i32 26,0
    %r499 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r498
    %r500 = add i32 27,0
    %r501 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r500
    %r502 = add i32 28,0
    %r503 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r502
    %r504 = add i32 29,0
    %r505 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r504
    %r506 = add i32 30,0
    %r507 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r506
    %r508 = add i32 31,0
    %r509 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r508
    %r510 = add i32 32,0
    %r511 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r510
    %r512 = add i32 33,0
    %r513 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r512
    %r514 = add i32 34,0
    %r515 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r514
    %r516 = add i32 35,0
    %r517 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r516
    %r518 = add i32 36,0
    %r519 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r518
    %r520 = add i32 37,0
    %r521 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r520
    %r522 = add i32 38,0
    %r523 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r522
    %r524 = add i32 39,0
    %r525 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r524
    %r526 = call float @params_fa40(ptr %r447,ptr %r449,ptr %r451,ptr %r453,ptr %r455,ptr %r457,ptr %r459,ptr %r461,ptr %r463,ptr %r465,ptr %r467,ptr %r469,ptr %r471,ptr %r473,ptr %r475,ptr %r477,ptr %r479,ptr %r481,ptr %r483,ptr %r485,ptr %r487,ptr %r489,ptr %r491,ptr %r493,ptr %r495,ptr %r497,ptr %r499,ptr %r501,ptr %r503,ptr %r505,ptr %r507,ptr %r509,ptr %r511,ptr %r513,ptr %r515,ptr %r517,ptr %r519,ptr %r521,ptr %r523,ptr %r525)
    store float %r526, ptr %r445
    %r528 = add i32 0,0
    %r529 = load i32, ptr @k
    %r530 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r528, i32 %r529
    %r531 = load float, ptr %r530
    %r532 = add i32 0,0
    %r533 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r532
    %r534 = add i32 1,0
    %r535 = load i32, ptr @k
    %r536 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r534, i32 %r535
    %r537 = load i32, ptr %r536
    %r538 = add i32 1,0
    %r539 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r538
    %r540 = add i32 2,0
    %r541 = load i32, ptr @k
    %r542 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r540, i32 %r541
    %r543 = load float, ptr %r542
    %r544 = add i32 2,0
    %r545 = load i32, ptr @k
    %r546 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r544, i32 %r545
    %r547 = load i32, ptr %r546
    %r548 = add i32 3,0
    %r549 = load i32, ptr @k
    %r550 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r548, i32 %r549
    %r551 = load float, ptr %r550
    %r552 = add i32 4,0
    %r553 = load i32, ptr @k
    %r554 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r552, i32 %r553
    %r555 = load float, ptr %r554
    %r556 = add i32 5,0
    %r557 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r556
    %r558 = add i32 3,0
    %r559 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r558
    %r560 = add i32 4,0
    %r561 = load i32, ptr @k
    %r562 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r560, i32 %r561
    %r563 = load i32, ptr %r562
    %r564 = add i32 5,0
    %r565 = load i32, ptr @k
    %r566 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r564, i32 %r565
    %r567 = load i32, ptr %r566
    %r568 = add i32 6,0
    %r569 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r568
    %r570 = add i32 6,0
    %r571 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r570
    %r572 = add i32 7,0
    %r573 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r572
    %r574 = add i32 8,0
    %r575 = load i32, ptr @k
    %r576 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r574, i32 %r575
    %r577 = load i32, ptr %r576
    %r578 = add i32 7,0
    %r579 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r578
    %r580 = add i32 8,0
    %r581 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r580
    %r582 = add i32 9,0
    %r583 = load i32, ptr @k
    %r584 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r582, i32 %r583
    %r585 = load float, ptr %r584
    %r586 = add i32 10,0
    %r587 = load i32, ptr @k
    %r588 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r586, i32 %r587
    %r589 = load float, ptr %r588
    %r590 = add i32 11,0
    %r591 = load i32, ptr @k
    %r592 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r590, i32 %r591
    %r593 = load float, ptr %r592
    %r594 = add i32 12,0
    %r595 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r594
    %r596 = add i32 9,0
    %r597 = load i32, ptr @k
    %r598 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r596, i32 %r597
    %r599 = load i32, ptr %r598
    %r600 = add i32 13,0
    %r601 = load i32, ptr @k
    %r602 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r600, i32 %r601
    %r603 = load float, ptr %r602
    %r604 = add i32 14,0
    %r605 = load i32, ptr @k
    %r606 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r604, i32 %r605
    %r607 = load float, ptr %r606
    %r608 = add i32 15,0
    %r609 = load i32, ptr @k
    %r610 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r608, i32 %r609
    %r611 = load float, ptr %r610
    %r612 = add i32 10,0
    %r613 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r612
    %r614 = add i32 16,0
    %r615 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r614
    %r616 = add i32 11,0
    %r617 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r616
    %r618 = add i32 12,0
    %r619 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r618
    %r620 = add i32 17,0
    %r621 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r620
    %r622 = add i32 18,0
    %r623 = load i32, ptr @k
    %r624 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r622, i32 %r623
    %r625 = load float, ptr %r624
    %r626 = add i32 19,0
    %r627 = load i32, ptr @k
    %r628 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r626, i32 %r627
    %r629 = load float, ptr %r628
    %r630 = add i32 13,0
    %r631 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r630
    %r632 = add i32 14,0
    %r633 = load i32, ptr @k
    %r634 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r632, i32 %r633
    %r635 = load i32, ptr %r634
    %r636 = add i32 20,0
    %r637 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r636
    %r638 = add i32 21,0
    %r639 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r638
    %r640 = add i32 22,0
    %r641 = load i32, ptr @k
    %r642 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r640, i32 %r641
    %r643 = load float, ptr %r642
    %r644 = add i32 23,0
    %r645 = load i32, ptr @k
    %r646 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r644, i32 %r645
    %r647 = load float, ptr %r646
    %r648 = add i32 15,0
    %r649 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r648
    %r650 = add i32 16,0
    %r651 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r650
    %r652 = add i32 17,0
    %r653 = load i32, ptr @k
    %r654 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r652, i32 %r653
    %r655 = load i32, ptr %r654
    %r656 = add i32 18,0
    %r657 = load i32, ptr @k
    %r658 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r656, i32 %r657
    %r659 = load i32, ptr %r658
    %r660 = add i32 24,0
    %r661 = load i32, ptr @k
    %r662 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r660, i32 %r661
    %r663 = load float, ptr %r662
    %r664 = add i32 25,0
    %r665 = load i32, ptr @k
    %r666 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r664, i32 %r665
    %r667 = load float, ptr %r666
    %r668 = add i32 19,0
    %r669 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r668
    %r670 = add i32 20,0
    %r671 = load i32, ptr @k
    %r672 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r670, i32 %r671
    %r673 = load i32, ptr %r672
    %r674 = add i32 26,0
    %r675 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r674
    %r676 = add i32 21,0
    %r677 = load i32, ptr @k
    %r678 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r676, i32 %r677
    %r679 = load i32, ptr %r678
    %r680 = add i32 22,0
    %r681 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r680
    %r682 = add i32 23,0
    %r683 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r682
    %r684 = add i32 27,0
    %r685 = load i32, ptr @k
    %r686 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r684, i32 %r685
    %r687 = load float, ptr %r686
    %r688 = add i32 28,0
    %r689 = load i32, ptr @k
    %r690 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r688, i32 %r689
    %r691 = load float, ptr %r690
    %r692 = add i32 29,0
    %r693 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r692
    %r694 = add i32 0,0
    %r695 = load i32, ptr @k
    %r696 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r694, i32 %r695
    %r697 = load i32, ptr %r696
    %r698 = add i32 1,0
    %r699 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r698
    %r700 = add i32 30,0
    %r701 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r700
    %r702 = add i32 31,0
    %r703 = load i32, ptr @k
    %r704 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r702, i32 %r703
    %r705 = load float, ptr %r704
    %r706 = add i32 2,0
    %r707 = load i32, ptr @k
    %r708 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r706, i32 %r707
    %r709 = load i32, ptr %r708
    %r710 = add i32 32,0
    %r711 = load i32, ptr @k
    %r712 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r710, i32 %r711
    %r713 = load float, ptr %r712
    %r714 = add i32 33,0
    %r715 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r714
    %r716 = add i32 34,0
    %r717 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r716
    %r718 = add i32 35,0
    %r719 = load i32, ptr @k
    %r720 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r718, i32 %r719
    %r721 = load float, ptr %r720
    %r722 = add i32 3,0
    %r723 = load i32, ptr @k
    %r724 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r722, i32 %r723
    %r725 = load i32, ptr %r724
    %r726 = call i32 @params_mix(float %r531,ptr %r533,i32 %r537,ptr %r539,float %r543,i32 %r547,float %r551,float %r555,ptr %r557,ptr %r559,i32 %r563,i32 %r567,ptr %r569,ptr %r571,ptr %r573,i32 %r577,ptr %r579,ptr %r581,float %r585,float %r589,float %r593,ptr %r595,i32 %r599,float %r603,float %r607,float %r611,ptr %r613,ptr %r615,ptr %r617,ptr %r619,ptr %r621,float %r625,float %r629,ptr %r631,i32 %r635,ptr %r637,ptr %r639,float %r643,float %r647,ptr %r649,ptr %r651,i32 %r655,i32 %r659,float %r663,float %r667,ptr %r669,i32 %r673,ptr %r675,i32 %r679,ptr %r681,ptr %r683,float %r687,float %r691,ptr %r693,i32 %r697,ptr %r699,ptr %r701,float %r705,i32 %r709,float %r713,ptr %r715,ptr %r717,float %r721,i32 %r725)
    store i32 %r726, ptr %r527
    %r727 = load float, ptr %r25
    call void @putfloat(float %r727)
    %r728 = add i32 10,0
    call void @putch(i32 %r728)
    %r729 = load float, ptr %r187
    call void @putfloat(float %r729)
    %r730 = add i32 10,0
    call void @putch(i32 %r730)
    %r731 = load float, ptr %r445
    call void @putfloat(float %r731)
    %r732 = add i32 10,0
    call void @putch(i32 %r732)
    %r733 = load i32, ptr %r527
    call void @putint(i32 %r733)
    %r734 = add i32 10,0
    call void @putch(i32 %r734)
    %r735 = add i32 0,0
    ret i32 %r735
}
