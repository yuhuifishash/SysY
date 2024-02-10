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
define i32 @main()
{
L0:
    %r526 = alloca i32
    %r444 = alloca float
    %r186 = alloca float
    %r24 = alloca float
    %r2 = alloca i32
    %r1 = alloca [24 x [3 x i32]]
    %r0 = alloca [40 x [3 x float]]
    br label %L1
L1:
    store i32 0, ptr %r2
    %r3 = call i32 @getint()
    store i32 %r3, ptr @k
    %r4 = add i32 0,0
    store i32 %r4, ptr %r2
    br label %L2
L2:
    %r5 = load i32, ptr %r2
    %r6 = add i32 40,0
    %r7 = icmp slt i32 %r5,%r6
    br i1 %r7, label %L3, label %L4
L3:
    %r8 = load i32, ptr %r2
    %r9 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r8
    %r10 = call i32 @getfarray(ptr %r9)
    %r11 = load i32, ptr %r2
    %r12 = add i32 1,0
    %r13 = add i32 %r11,%r12
    store i32 %r13, ptr %r2
    br label %L2
L4:
    %r14 = add i32 0,0
    store i32 %r14, ptr %r2
    br label %L5
L5:
    %r15 = load i32, ptr %r2
    %r16 = add i32 24,0
    %r17 = icmp slt i32 %r15,%r16
    br i1 %r17, label %L6, label %L7
L6:
    %r18 = load i32, ptr %r2
    %r19 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r18
    %r20 = call i32 @getarray(ptr %r19)
    %r21 = load i32, ptr %r2
    %r22 = add i32 1,0
    %r23 = add i32 %r21,%r22
    store i32 %r23, ptr %r2
    br label %L5
L7:
    %r25 = add i32 0,0
    %r26 = load i32, ptr @k
    %r27 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r25, i32 %r26
    %r28 = load float, ptr %r27
    %r29 = add i32 1,0
    %r30 = load i32, ptr @k
    %r31 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r29, i32 %r30
    %r32 = load float, ptr %r31
    %r33 = add i32 2,0
    %r34 = load i32, ptr @k
    %r35 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r33, i32 %r34
    %r36 = load float, ptr %r35
    %r37 = add i32 3,0
    %r38 = load i32, ptr @k
    %r39 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r37, i32 %r38
    %r40 = load float, ptr %r39
    %r41 = add i32 4,0
    %r42 = load i32, ptr @k
    %r43 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r41, i32 %r42
    %r44 = load float, ptr %r43
    %r45 = add i32 5,0
    %r46 = load i32, ptr @k
    %r47 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r45, i32 %r46
    %r48 = load float, ptr %r47
    %r49 = add i32 6,0
    %r50 = load i32, ptr @k
    %r51 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r49, i32 %r50
    %r52 = load float, ptr %r51
    %r53 = add i32 7,0
    %r54 = load i32, ptr @k
    %r55 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r53, i32 %r54
    %r56 = load float, ptr %r55
    %r57 = add i32 8,0
    %r58 = load i32, ptr @k
    %r59 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r57, i32 %r58
    %r60 = load float, ptr %r59
    %r61 = add i32 9,0
    %r62 = load i32, ptr @k
    %r63 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r61, i32 %r62
    %r64 = load float, ptr %r63
    %r65 = add i32 10,0
    %r66 = load i32, ptr @k
    %r67 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r65, i32 %r66
    %r68 = load float, ptr %r67
    %r69 = add i32 11,0
    %r70 = load i32, ptr @k
    %r71 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r69, i32 %r70
    %r72 = load float, ptr %r71
    %r73 = add i32 12,0
    %r74 = load i32, ptr @k
    %r75 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r73, i32 %r74
    %r76 = load float, ptr %r75
    %r77 = add i32 13,0
    %r78 = load i32, ptr @k
    %r79 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r77, i32 %r78
    %r80 = load float, ptr %r79
    %r81 = add i32 14,0
    %r82 = load i32, ptr @k
    %r83 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r81, i32 %r82
    %r84 = load float, ptr %r83
    %r85 = add i32 15,0
    %r86 = load i32, ptr @k
    %r87 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r85, i32 %r86
    %r88 = load float, ptr %r87
    %r89 = add i32 16,0
    %r90 = load i32, ptr @k
    %r91 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r89, i32 %r90
    %r92 = load float, ptr %r91
    %r93 = add i32 17,0
    %r94 = load i32, ptr @k
    %r95 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r93, i32 %r94
    %r96 = load float, ptr %r95
    %r97 = add i32 18,0
    %r98 = load i32, ptr @k
    %r99 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r97, i32 %r98
    %r100 = load float, ptr %r99
    %r101 = add i32 19,0
    %r102 = load i32, ptr @k
    %r103 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r101, i32 %r102
    %r104 = load float, ptr %r103
    %r105 = add i32 20,0
    %r106 = load i32, ptr @k
    %r107 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r105, i32 %r106
    %r108 = load float, ptr %r107
    %r109 = add i32 21,0
    %r110 = load i32, ptr @k
    %r111 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r109, i32 %r110
    %r112 = load float, ptr %r111
    %r113 = add i32 22,0
    %r114 = load i32, ptr @k
    %r115 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r113, i32 %r114
    %r116 = load float, ptr %r115
    %r117 = add i32 23,0
    %r118 = load i32, ptr @k
    %r119 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r117, i32 %r118
    %r120 = load float, ptr %r119
    %r121 = add i32 24,0
    %r122 = load i32, ptr @k
    %r123 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r121, i32 %r122
    %r124 = load float, ptr %r123
    %r125 = add i32 25,0
    %r126 = load i32, ptr @k
    %r127 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r125, i32 %r126
    %r128 = load float, ptr %r127
    %r129 = add i32 26,0
    %r130 = load i32, ptr @k
    %r131 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r129, i32 %r130
    %r132 = load float, ptr %r131
    %r133 = add i32 27,0
    %r134 = load i32, ptr @k
    %r135 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r133, i32 %r134
    %r136 = load float, ptr %r135
    %r137 = add i32 28,0
    %r138 = load i32, ptr @k
    %r139 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r137, i32 %r138
    %r140 = load float, ptr %r139
    %r141 = add i32 29,0
    %r142 = load i32, ptr @k
    %r143 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r141, i32 %r142
    %r144 = load float, ptr %r143
    %r145 = add i32 30,0
    %r146 = load i32, ptr @k
    %r147 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r145, i32 %r146
    %r148 = load float, ptr %r147
    %r149 = add i32 31,0
    %r150 = load i32, ptr @k
    %r151 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r149, i32 %r150
    %r152 = load float, ptr %r151
    %r153 = add i32 32,0
    %r154 = load i32, ptr @k
    %r155 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r153, i32 %r154
    %r156 = load float, ptr %r155
    %r157 = add i32 33,0
    %r158 = load i32, ptr @k
    %r159 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r157, i32 %r158
    %r160 = load float, ptr %r159
    %r161 = add i32 34,0
    %r162 = load i32, ptr @k
    %r163 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r161, i32 %r162
    %r164 = load float, ptr %r163
    %r165 = add i32 35,0
    %r166 = load i32, ptr @k
    %r167 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r165, i32 %r166
    %r168 = load float, ptr %r167
    %r169 = add i32 36,0
    %r170 = load i32, ptr @k
    %r171 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r169, i32 %r170
    %r172 = load float, ptr %r171
    %r173 = add i32 37,0
    %r174 = load i32, ptr @k
    %r175 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r173, i32 %r174
    %r176 = load float, ptr %r175
    %r177 = add i32 38,0
    %r178 = load i32, ptr @k
    %r179 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r177, i32 %r178
    %r180 = load float, ptr %r179
    %r181 = add i32 39,0
    %r182 = load i32, ptr @k
    %r183 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r181, i32 %r182
    %r184 = load float, ptr %r183
    %r185 = call float @params_f40(float %r28,float %r32,float %r36,float %r40,float %r44,float %r48,float %r52,float %r56,float %r60,float %r64,float %r68,float %r72,float %r76,float %r80,float %r84,float %r88,float %r92,float %r96,float %r100,float %r104,float %r108,float %r112,float %r116,float %r120,float %r124,float %r128,float %r132,float %r136,float %r140,float %r144,float %r148,float %r152,float %r156,float %r160,float %r164,float %r168,float %r172,float %r176,float %r180,float %r184)
    store float %r185, ptr %r24
    %r187 = add i32 23,0
    %r188 = load i32, ptr @k
    %r189 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r187, i32 %r188
    %r190 = load i32, ptr %r189
    %r191 = add i32 2,0
    %r192 = load i32, ptr @k
    %r193 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r191, i32 %r192
    %r194 = load i32, ptr %r193
    %r195 = add i32 6,0
    %r196 = load i32, ptr @k
    %r197 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r195, i32 %r196
    %r198 = load i32, ptr %r197
    %r199 = add i32 4,0
    %r200 = load i32, ptr @k
    %r201 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r199, i32 %r200
    %r202 = load float, ptr %r201
    %r203 = add i32 1,0
    %r204 = load i32, ptr @k
    %r205 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r203, i32 %r204
    %r206 = load i32, ptr %r205
    %r207 = add i32 4,0
    %r208 = load i32, ptr @k
    %r209 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r207, i32 %r208
    %r210 = load i32, ptr %r209
    %r211 = add i32 5,0
    %r212 = load i32, ptr @k
    %r213 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r211, i32 %r212
    %r214 = load i32, ptr %r213
    %r215 = add i32 8,0
    %r216 = load i32, ptr @k
    %r217 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r215, i32 %r216
    %r218 = load float, ptr %r217
    %r219 = add i32 15,0
    %r220 = load i32, ptr @k
    %r221 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r219, i32 %r220
    %r222 = load float, ptr %r221
    %r223 = add i32 7,0
    %r224 = load i32, ptr @k
    %r225 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r223, i32 %r224
    %r226 = load float, ptr %r225
    %r227 = add i32 22,0
    %r228 = load i32, ptr @k
    %r229 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r227, i32 %r228
    %r230 = load i32, ptr %r229
    %r231 = add i32 3,0
    %r232 = load i32, ptr @k
    %r233 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r231, i32 %r232
    %r234 = load float, ptr %r233
    %r235 = add i32 28,0
    %r236 = load i32, ptr @k
    %r237 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r235, i32 %r236
    %r238 = load float, ptr %r237
    %r239 = add i32 0,0
    %r240 = load i32, ptr @k
    %r241 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r239, i32 %r240
    %r242 = load i32, ptr %r241
    %r243 = add i32 37,0
    %r244 = load i32, ptr @k
    %r245 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r243, i32 %r244
    %r246 = load float, ptr %r245
    %r247 = add i32 19,0
    %r248 = load i32, ptr @k
    %r249 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r247, i32 %r248
    %r250 = load i32, ptr %r249
    %r251 = add i32 30,0
    %r252 = load i32, ptr @k
    %r253 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r251, i32 %r252
    %r254 = load float, ptr %r253
    %r255 = add i32 12,0
    %r256 = load i32, ptr @k
    %r257 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r255, i32 %r256
    %r258 = load float, ptr %r257
    %r259 = add i32 1,0
    %r260 = load i32, ptr @k
    %r261 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r259, i32 %r260
    %r262 = load float, ptr %r261
    %r263 = add i32 11,0
    %r264 = load i32, ptr @k
    %r265 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r263, i32 %r264
    %r266 = load float, ptr %r265
    %r267 = add i32 38,0
    %r268 = load i32, ptr @k
    %r269 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r267, i32 %r268
    %r270 = load float, ptr %r269
    %r271 = add i32 6,0
    %r272 = load i32, ptr @k
    %r273 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r271, i32 %r272
    %r274 = load float, ptr %r273
    %r275 = add i32 7,0
    %r276 = load i32, ptr @k
    %r277 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r275, i32 %r276
    %r278 = load i32, ptr %r277
    %r279 = add i32 32,0
    %r280 = load i32, ptr @k
    %r281 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r279, i32 %r280
    %r282 = load float, ptr %r281
    %r283 = add i32 10,0
    %r284 = load i32, ptr @k
    %r285 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r283, i32 %r284
    %r286 = load i32, ptr %r285
    %r287 = add i32 13,0
    %r288 = load i32, ptr @k
    %r289 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r287, i32 %r288
    %r290 = load i32, ptr %r289
    %r291 = add i32 20,0
    %r292 = load i32, ptr @k
    %r293 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r291, i32 %r292
    %r294 = load float, ptr %r293
    %r295 = add i32 33,0
    %r296 = load i32, ptr @k
    %r297 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r295, i32 %r296
    %r298 = load float, ptr %r297
    %r299 = add i32 23,0
    %r300 = load i32, ptr @k
    %r301 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r299, i32 %r300
    %r302 = load float, ptr %r301
    %r303 = add i32 9,0
    %r304 = load i32, ptr @k
    %r305 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r303, i32 %r304
    %r306 = load float, ptr %r305
    %r307 = add i32 25,0
    %r308 = load i32, ptr @k
    %r309 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r307, i32 %r308
    %r310 = load float, ptr %r309
    %r311 = add i32 8,0
    %r312 = load i32, ptr @k
    %r313 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r311, i32 %r312
    %r314 = load i32, ptr %r313
    %r315 = add i32 39,0
    %r316 = load i32, ptr @k
    %r317 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r315, i32 %r316
    %r318 = load float, ptr %r317
    %r319 = add i32 17,0
    %r320 = load i32, ptr @k
    %r321 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r319, i32 %r320
    %r322 = load i32, ptr %r321
    %r323 = add i32 21,0
    %r324 = load i32, ptr @k
    %r325 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r323, i32 %r324
    %r326 = load float, ptr %r325
    %r327 = add i32 16,0
    %r328 = load i32, ptr @k
    %r329 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r327, i32 %r328
    %r330 = load float, ptr %r329
    %r331 = add i32 5,0
    %r332 = load i32, ptr @k
    %r333 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r331, i32 %r332
    %r334 = load float, ptr %r333
    %r335 = add i32 34,0
    %r336 = load i32, ptr @k
    %r337 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r335, i32 %r336
    %r338 = load float, ptr %r337
    %r339 = add i32 18,0
    %r340 = load i32, ptr @k
    %r341 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r339, i32 %r340
    %r342 = load i32, ptr %r341
    %r343 = add i32 9,0
    %r344 = load i32, ptr @k
    %r345 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r343, i32 %r344
    %r346 = load i32, ptr %r345
    %r347 = add i32 14,0
    %r348 = load i32, ptr @k
    %r349 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r347, i32 %r348
    %r350 = load float, ptr %r349
    %r351 = add i32 10,0
    %r352 = load i32, ptr @k
    %r353 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r351, i32 %r352
    %r354 = load float, ptr %r353
    %r355 = add i32 0,0
    %r356 = load i32, ptr @k
    %r357 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r355, i32 %r356
    %r358 = load float, ptr %r357
    %r359 = add i32 12,0
    %r360 = load i32, ptr @k
    %r361 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r359, i32 %r360
    %r362 = load i32, ptr %r361
    %r363 = add i32 31,0
    %r364 = load i32, ptr @k
    %r365 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r363, i32 %r364
    %r366 = load float, ptr %r365
    %r367 = add i32 11,0
    %r368 = load i32, ptr @k
    %r369 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r367, i32 %r368
    %r370 = load i32, ptr %r369
    %r371 = add i32 16,0
    %r372 = load i32, ptr @k
    %r373 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r371, i32 %r372
    %r374 = load i32, ptr %r373
    %r375 = add i32 27,0
    %r376 = load i32, ptr @k
    %r377 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r375, i32 %r376
    %r378 = load float, ptr %r377
    %r379 = add i32 24,0
    %r380 = load i32, ptr @k
    %r381 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r379, i32 %r380
    %r382 = load float, ptr %r381
    %r383 = add i32 13,0
    %r384 = load i32, ptr @k
    %r385 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r383, i32 %r384
    %r386 = load float, ptr %r385
    %r387 = add i32 29,0
    %r388 = load i32, ptr @k
    %r389 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r387, i32 %r388
    %r390 = load float, ptr %r389
    %r391 = add i32 3,0
    %r392 = load i32, ptr @k
    %r393 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r391, i32 %r392
    %r394 = load i32, ptr %r393
    %r395 = add i32 21,0
    %r396 = load i32, ptr @k
    %r397 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r395, i32 %r396
    %r398 = load i32, ptr %r397
    %r399 = add i32 20,0
    %r400 = load i32, ptr @k
    %r401 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r399, i32 %r400
    %r402 = load i32, ptr %r401
    %r403 = add i32 18,0
    %r404 = load i32, ptr @k
    %r405 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r403, i32 %r404
    %r406 = load float, ptr %r405
    %r407 = add i32 19,0
    %r408 = load i32, ptr @k
    %r409 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r407, i32 %r408
    %r410 = load float, ptr %r409
    %r411 = add i32 22,0
    %r412 = load i32, ptr @k
    %r413 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r411, i32 %r412
    %r414 = load float, ptr %r413
    %r415 = add i32 26,0
    %r416 = load i32, ptr @k
    %r417 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r415, i32 %r416
    %r418 = load float, ptr %r417
    %r419 = add i32 36,0
    %r420 = load i32, ptr @k
    %r421 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r419, i32 %r420
    %r422 = load float, ptr %r421
    %r423 = add i32 17,0
    %r424 = load i32, ptr @k
    %r425 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r423, i32 %r424
    %r426 = load float, ptr %r425
    %r427 = add i32 15,0
    %r428 = load i32, ptr @k
    %r429 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r427, i32 %r428
    %r430 = load i32, ptr %r429
    %r431 = add i32 2,0
    %r432 = load i32, ptr @k
    %r433 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r431, i32 %r432
    %r434 = load float, ptr %r433
    %r435 = add i32 14,0
    %r436 = load i32, ptr @k
    %r437 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r435, i32 %r436
    %r438 = load i32, ptr %r437
    %r439 = add i32 35,0
    %r440 = load i32, ptr @k
    %r441 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r439, i32 %r440
    %r442 = load float, ptr %r441
    %r443 = call float @params_f40_i24(i32 %r190,i32 %r194,i32 %r198,float %r202,i32 %r206,i32 %r210,i32 %r214,float %r218,float %r222,float %r226,i32 %r230,float %r234,float %r238,i32 %r242,float %r246,i32 %r250,float %r254,float %r258,float %r262,float %r266,float %r270,float %r274,i32 %r278,float %r282,i32 %r286,i32 %r290,float %r294,float %r298,float %r302,float %r306,float %r310,i32 %r314,float %r318,i32 %r322,float %r326,float %r330,float %r334,float %r338,i32 %r342,i32 %r346,float %r350,float %r354,float %r358,i32 %r362,float %r366,i32 %r370,i32 %r374,float %r378,float %r382,float %r386,float %r390,i32 %r394,i32 %r398,i32 %r402,float %r406,float %r410,float %r414,float %r418,float %r422,float %r426,i32 %r430,float %r434,i32 %r438,float %r442)
    store float %r443, ptr %r186
    %r445 = add i32 0,0
    %r446 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r445
    %r447 = add i32 1,0
    %r448 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r447
    %r449 = add i32 2,0
    %r450 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r449
    %r451 = add i32 3,0
    %r452 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r451
    %r453 = add i32 4,0
    %r454 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r453
    %r455 = add i32 5,0
    %r456 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r455
    %r457 = add i32 6,0
    %r458 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r457
    %r459 = add i32 7,0
    %r460 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r459
    %r461 = add i32 8,0
    %r462 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r461
    %r463 = add i32 9,0
    %r464 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r463
    %r465 = add i32 10,0
    %r466 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r465
    %r467 = add i32 11,0
    %r468 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r467
    %r469 = add i32 12,0
    %r470 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r469
    %r471 = add i32 13,0
    %r472 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r471
    %r473 = add i32 14,0
    %r474 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r473
    %r475 = add i32 15,0
    %r476 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r475
    %r477 = add i32 16,0
    %r478 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r477
    %r479 = add i32 17,0
    %r480 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r479
    %r481 = add i32 18,0
    %r482 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r481
    %r483 = add i32 19,0
    %r484 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r483
    %r485 = add i32 20,0
    %r486 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r485
    %r487 = add i32 21,0
    %r488 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r487
    %r489 = add i32 22,0
    %r490 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r489
    %r491 = add i32 23,0
    %r492 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r491
    %r493 = add i32 24,0
    %r494 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r493
    %r495 = add i32 25,0
    %r496 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r495
    %r497 = add i32 26,0
    %r498 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r497
    %r499 = add i32 27,0
    %r500 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r499
    %r501 = add i32 28,0
    %r502 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r501
    %r503 = add i32 29,0
    %r504 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r503
    %r505 = add i32 30,0
    %r506 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r505
    %r507 = add i32 31,0
    %r508 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r507
    %r509 = add i32 32,0
    %r510 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r509
    %r511 = add i32 33,0
    %r512 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r511
    %r513 = add i32 34,0
    %r514 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r513
    %r515 = add i32 35,0
    %r516 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r515
    %r517 = add i32 36,0
    %r518 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r517
    %r519 = add i32 37,0
    %r520 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r519
    %r521 = add i32 38,0
    %r522 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r521
    %r523 = add i32 39,0
    %r524 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r523
    %r525 = call float @params_fa40(ptr %r446,ptr %r448,ptr %r450,ptr %r452,ptr %r454,ptr %r456,ptr %r458,ptr %r460,ptr %r462,ptr %r464,ptr %r466,ptr %r468,ptr %r470,ptr %r472,ptr %r474,ptr %r476,ptr %r478,ptr %r480,ptr %r482,ptr %r484,ptr %r486,ptr %r488,ptr %r490,ptr %r492,ptr %r494,ptr %r496,ptr %r498,ptr %r500,ptr %r502,ptr %r504,ptr %r506,ptr %r508,ptr %r510,ptr %r512,ptr %r514,ptr %r516,ptr %r518,ptr %r520,ptr %r522,ptr %r524)
    store float %r525, ptr %r444
    %r527 = add i32 0,0
    %r528 = load i32, ptr @k
    %r529 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r527, i32 %r528
    %r530 = load float, ptr %r529
    %r531 = add i32 0,0
    %r532 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r531
    %r533 = add i32 1,0
    %r534 = load i32, ptr @k
    %r535 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r533, i32 %r534
    %r536 = load i32, ptr %r535
    %r537 = add i32 1,0
    %r538 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r537
    %r539 = add i32 2,0
    %r540 = load i32, ptr @k
    %r541 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r539, i32 %r540
    %r542 = load float, ptr %r541
    %r543 = add i32 2,0
    %r544 = load i32, ptr @k
    %r545 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r543, i32 %r544
    %r546 = load i32, ptr %r545
    %r547 = add i32 3,0
    %r548 = load i32, ptr @k
    %r549 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r547, i32 %r548
    %r550 = load float, ptr %r549
    %r551 = add i32 4,0
    %r552 = load i32, ptr @k
    %r553 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r551, i32 %r552
    %r554 = load float, ptr %r553
    %r555 = add i32 5,0
    %r556 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r555
    %r557 = add i32 3,0
    %r558 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r557
    %r559 = add i32 4,0
    %r560 = load i32, ptr @k
    %r561 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r559, i32 %r560
    %r562 = load i32, ptr %r561
    %r563 = add i32 5,0
    %r564 = load i32, ptr @k
    %r565 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r563, i32 %r564
    %r566 = load i32, ptr %r565
    %r567 = add i32 6,0
    %r568 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r567
    %r569 = add i32 6,0
    %r570 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r569
    %r571 = add i32 7,0
    %r572 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r571
    %r573 = add i32 8,0
    %r574 = load i32, ptr @k
    %r575 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r573, i32 %r574
    %r576 = load i32, ptr %r575
    %r577 = add i32 7,0
    %r578 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r577
    %r579 = add i32 8,0
    %r580 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r579
    %r581 = add i32 9,0
    %r582 = load i32, ptr @k
    %r583 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r581, i32 %r582
    %r584 = load float, ptr %r583
    %r585 = add i32 10,0
    %r586 = load i32, ptr @k
    %r587 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r585, i32 %r586
    %r588 = load float, ptr %r587
    %r589 = add i32 11,0
    %r590 = load i32, ptr @k
    %r591 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r589, i32 %r590
    %r592 = load float, ptr %r591
    %r593 = add i32 12,0
    %r594 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r593
    %r595 = add i32 9,0
    %r596 = load i32, ptr @k
    %r597 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r595, i32 %r596
    %r598 = load i32, ptr %r597
    %r599 = add i32 13,0
    %r600 = load i32, ptr @k
    %r601 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r599, i32 %r600
    %r602 = load float, ptr %r601
    %r603 = add i32 14,0
    %r604 = load i32, ptr @k
    %r605 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r603, i32 %r604
    %r606 = load float, ptr %r605
    %r607 = add i32 15,0
    %r608 = load i32, ptr @k
    %r609 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r607, i32 %r608
    %r610 = load float, ptr %r609
    %r611 = add i32 10,0
    %r612 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r611
    %r613 = add i32 16,0
    %r614 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r613
    %r615 = add i32 11,0
    %r616 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r615
    %r617 = add i32 12,0
    %r618 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r617
    %r619 = add i32 17,0
    %r620 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r619
    %r621 = add i32 18,0
    %r622 = load i32, ptr @k
    %r623 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r621, i32 %r622
    %r624 = load float, ptr %r623
    %r625 = add i32 19,0
    %r626 = load i32, ptr @k
    %r627 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r625, i32 %r626
    %r628 = load float, ptr %r627
    %r629 = add i32 13,0
    %r630 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r629
    %r631 = add i32 14,0
    %r632 = load i32, ptr @k
    %r633 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r631, i32 %r632
    %r634 = load i32, ptr %r633
    %r635 = add i32 20,0
    %r636 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r635
    %r637 = add i32 21,0
    %r638 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r637
    %r639 = add i32 22,0
    %r640 = load i32, ptr @k
    %r641 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r639, i32 %r640
    %r642 = load float, ptr %r641
    %r643 = add i32 23,0
    %r644 = load i32, ptr @k
    %r645 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r643, i32 %r644
    %r646 = load float, ptr %r645
    %r647 = add i32 15,0
    %r648 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r647
    %r649 = add i32 16,0
    %r650 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r649
    %r651 = add i32 17,0
    %r652 = load i32, ptr @k
    %r653 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r651, i32 %r652
    %r654 = load i32, ptr %r653
    %r655 = add i32 18,0
    %r656 = load i32, ptr @k
    %r657 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r655, i32 %r656
    %r658 = load i32, ptr %r657
    %r659 = add i32 24,0
    %r660 = load i32, ptr @k
    %r661 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r659, i32 %r660
    %r662 = load float, ptr %r661
    %r663 = add i32 25,0
    %r664 = load i32, ptr @k
    %r665 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r663, i32 %r664
    %r666 = load float, ptr %r665
    %r667 = add i32 19,0
    %r668 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r667
    %r669 = add i32 20,0
    %r670 = load i32, ptr @k
    %r671 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r669, i32 %r670
    %r672 = load i32, ptr %r671
    %r673 = add i32 26,0
    %r674 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r673
    %r675 = add i32 21,0
    %r676 = load i32, ptr @k
    %r677 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r675, i32 %r676
    %r678 = load i32, ptr %r677
    %r679 = add i32 22,0
    %r680 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r679
    %r681 = add i32 23,0
    %r682 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r681
    %r683 = add i32 27,0
    %r684 = load i32, ptr @k
    %r685 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r683, i32 %r684
    %r686 = load float, ptr %r685
    %r687 = add i32 28,0
    %r688 = load i32, ptr @k
    %r689 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r687, i32 %r688
    %r690 = load float, ptr %r689
    %r691 = add i32 29,0
    %r692 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r691
    %r693 = add i32 0,0
    %r694 = load i32, ptr @k
    %r695 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r693, i32 %r694
    %r696 = load i32, ptr %r695
    %r697 = add i32 1,0
    %r698 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r697
    %r699 = add i32 30,0
    %r700 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r699
    %r701 = add i32 31,0
    %r702 = load i32, ptr @k
    %r703 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r701, i32 %r702
    %r704 = load float, ptr %r703
    %r705 = add i32 2,0
    %r706 = load i32, ptr @k
    %r707 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r705, i32 %r706
    %r708 = load i32, ptr %r707
    %r709 = add i32 32,0
    %r710 = load i32, ptr @k
    %r711 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r709, i32 %r710
    %r712 = load float, ptr %r711
    %r713 = add i32 33,0
    %r714 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r713
    %r715 = add i32 34,0
    %r716 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r715
    %r717 = add i32 35,0
    %r718 = load i32, ptr @k
    %r719 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r717, i32 %r718
    %r720 = load float, ptr %r719
    %r721 = add i32 3,0
    %r722 = load i32, ptr @k
    %r723 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r721, i32 %r722
    %r724 = load i32, ptr %r723
    %r725 = call i32 @params_mix(float %r530,ptr %r532,i32 %r536,ptr %r538,float %r542,i32 %r546,float %r550,float %r554,ptr %r556,ptr %r558,i32 %r562,i32 %r566,ptr %r568,ptr %r570,ptr %r572,i32 %r576,ptr %r578,ptr %r580,float %r584,float %r588,float %r592,ptr %r594,i32 %r598,float %r602,float %r606,float %r610,ptr %r612,ptr %r614,ptr %r616,ptr %r618,ptr %r620,float %r624,float %r628,ptr %r630,i32 %r634,ptr %r636,ptr %r638,float %r642,float %r646,ptr %r648,ptr %r650,i32 %r654,i32 %r658,float %r662,float %r666,ptr %r668,i32 %r672,ptr %r674,i32 %r678,ptr %r680,ptr %r682,float %r686,float %r690,ptr %r692,i32 %r696,ptr %r698,ptr %r700,float %r704,i32 %r708,float %r712,ptr %r714,ptr %r716,float %r720,i32 %r724)
    store i32 %r725, ptr %r526
    %r726 = load float, ptr %r24
    call void @putfloat(float %r726)
    %r727 = add i32 10,0
    call void @putch(i32 %r727)
    %r728 = load float, ptr %r186
    call void @putfloat(float %r728)
    %r729 = add i32 10,0
    call void @putch(i32 %r729)
    %r730 = load float, ptr %r444
    call void @putfloat(float %r730)
    %r731 = add i32 10,0
    call void @putch(i32 %r731)
    %r732 = load i32, ptr %r526
    call void @putint(i32 %r732)
    %r733 = add i32 10,0
    call void @putch(i32 %r733)
    %r734 = add i32 0,0
    ret i32 %r734
}
