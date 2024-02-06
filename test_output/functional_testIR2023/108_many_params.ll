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
define i32 @param32_rec(i32 %r0,i32 %r1,i32 %r2,i32 %r3,i32 %r4,i32 %r5,i32 %r6,i32 %r7,i32 %r8,i32 %r9,i32 %r10,i32 %r11,i32 %r12,i32 %r13,i32 %r14,i32 %r15,i32 %r16,i32 %r17,i32 %r18,i32 %r19,i32 %r20,i32 %r21,i32 %r22,i32 %r23,i32 %r24,i32 %r25,i32 %r26,i32 %r27,i32 %r28,i32 %r29,i32 %r30,i32 %r31)
{
L0:
    %r32 = alloca i32
    store i32 %r0, ptr %r32
    %r33 = alloca i32
    store i32 %r1, ptr %r33
    %r34 = alloca i32
    store i32 %r2, ptr %r34
    %r35 = alloca i32
    store i32 %r3, ptr %r35
    %r36 = alloca i32
    store i32 %r4, ptr %r36
    %r37 = alloca i32
    store i32 %r5, ptr %r37
    %r38 = alloca i32
    store i32 %r6, ptr %r38
    %r39 = alloca i32
    store i32 %r7, ptr %r39
    %r40 = alloca i32
    store i32 %r8, ptr %r40
    %r41 = alloca i32
    store i32 %r9, ptr %r41
    %r42 = alloca i32
    store i32 %r10, ptr %r42
    %r43 = alloca i32
    store i32 %r11, ptr %r43
    %r44 = alloca i32
    store i32 %r12, ptr %r44
    %r45 = alloca i32
    store i32 %r13, ptr %r45
    %r46 = alloca i32
    store i32 %r14, ptr %r46
    %r47 = alloca i32
    store i32 %r15, ptr %r47
    %r48 = alloca i32
    store i32 %r16, ptr %r48
    %r49 = alloca i32
    store i32 %r17, ptr %r49
    %r50 = alloca i32
    store i32 %r18, ptr %r50
    %r51 = alloca i32
    store i32 %r19, ptr %r51
    %r52 = alloca i32
    store i32 %r20, ptr %r52
    %r53 = alloca i32
    store i32 %r21, ptr %r53
    %r54 = alloca i32
    store i32 %r22, ptr %r54
    %r55 = alloca i32
    store i32 %r23, ptr %r55
    %r56 = alloca i32
    store i32 %r24, ptr %r56
    %r57 = alloca i32
    store i32 %r25, ptr %r57
    %r58 = alloca i32
    store i32 %r26, ptr %r58
    %r59 = alloca i32
    store i32 %r27, ptr %r59
    %r60 = alloca i32
    store i32 %r28, ptr %r60
    %r61 = alloca i32
    store i32 %r29, ptr %r61
    %r62 = alloca i32
    store i32 %r30, ptr %r62
    %r63 = alloca i32
    store i32 %r31, ptr %r63
    br label %L1
L1:
    %r64 = load i32, ptr %r32
    %r65 = add i32 0,0
    %r66 = icmp eq i32 %r64,%r65
    br i1 %r66, label %L2, label %L3
L2:
    %r69 = load i32, ptr %r33
    ret i32 %r69
L3:
    %r70 = load i32, ptr %r32
    %r71 = add i32 0,1
    %r72 = sub i32 %r70,%r71
    %r73 = load i32, ptr %r33
    %r74 = load i32, ptr %r34
    %r75 = add i32 %r73,%r74
    %r76 = add i32 0,998244353
    %r77 = srem i32 %r75,%r76
    %r78 = load i32, ptr %r35
    %r79 = load i32, ptr %r36
    %r80 = load i32, ptr %r37
    %r81 = load i32, ptr %r38
    %r82 = load i32, ptr %r39
    %r83 = load i32, ptr %r40
    %r84 = load i32, ptr %r41
    %r85 = load i32, ptr %r42
    %r86 = load i32, ptr %r43
    %r87 = load i32, ptr %r44
    %r88 = load i32, ptr %r45
    %r89 = load i32, ptr %r46
    %r90 = load i32, ptr %r47
    %r91 = load i32, ptr %r48
    %r92 = load i32, ptr %r49
    %r93 = load i32, ptr %r50
    %r94 = load i32, ptr %r51
    %r95 = load i32, ptr %r52
    %r96 = load i32, ptr %r53
    %r97 = load i32, ptr %r54
    %r98 = load i32, ptr %r55
    %r99 = load i32, ptr %r56
    %r100 = load i32, ptr %r57
    %r101 = load i32, ptr %r58
    %r102 = load i32, ptr %r59
    %r103 = load i32, ptr %r60
    %r104 = load i32, ptr %r61
    %r105 = load i32, ptr %r62
    %r106 = load i32, ptr %r63
    %r107 = add i32 0,0
    %r108 = call i32 @param32_rec(i32 %r72,i32 %r77,i32 %r78,i32 %r79,i32 %r80,i32 %r81,i32 %r82,i32 %r83,i32 %r84,i32 %r85,i32 %r86,i32 %r87,i32 %r88,i32 %r89,i32 %r90,i32 %r91,i32 %r92,i32 %r93,i32 %r94,i32 %r95,i32 %r96,i32 %r97,i32 %r98,i32 %r99,i32 %r100,i32 %r101,i32 %r102,i32 %r103,i32 %r104,i32 %r105,i32 %r106,i32 %r107)
    ret i32 %r108
}
define i32 @param32_arr(ptr %r0,ptr %r1,ptr %r2,ptr %r3,ptr %r4,ptr %r5,ptr %r6,ptr %r7,ptr %r8,ptr %r9,ptr %r10,ptr %r11,ptr %r12,ptr %r13,ptr %r14,ptr %r15,ptr %r16,ptr %r17,ptr %r18,ptr %r19,ptr %r20,ptr %r21,ptr %r22,ptr %r23,ptr %r24,ptr %r25,ptr %r26,ptr %r27,ptr %r28,ptr %r29,ptr %r30,ptr %r31)
{
L0:
    %r32 = alloca i32
    br label %L1
L1:
    %r33 = add i32 0,0
    %r34 = getelementptr i32, ptr %r0, i32 %r33
    %r35 = load i32, ptr %r34
    %r36 = add i32 0,1
    %r37 = getelementptr i32, ptr %r0, i32 %r36
    %r38 = load i32, ptr %r37
    %r39 = add i32 %r35,%r38
    store i32 %r39, ptr %r32
    %r40 = load i32, ptr %r32
    %r41 = add i32 0,0
    %r42 = getelementptr i32, ptr %r1, i32 %r41
    %r43 = load i32, ptr %r42
    %r44 = add i32 %r40,%r43
    %r45 = add i32 0,1
    %r46 = getelementptr i32, ptr %r1, i32 %r45
    %r47 = load i32, ptr %r46
    %r48 = add i32 %r44,%r47
    store i32 %r48, ptr %r32
    %r49 = load i32, ptr %r32
    %r50 = add i32 0,0
    %r51 = getelementptr i32, ptr %r2, i32 %r50
    %r52 = load i32, ptr %r51
    %r53 = add i32 %r49,%r52
    %r54 = add i32 0,1
    %r55 = getelementptr i32, ptr %r2, i32 %r54
    %r56 = load i32, ptr %r55
    %r57 = add i32 %r53,%r56
    store i32 %r57, ptr %r32
    %r58 = load i32, ptr %r32
    %r59 = add i32 0,0
    %r60 = getelementptr i32, ptr %r3, i32 %r59
    %r61 = load i32, ptr %r60
    %r62 = add i32 %r58,%r61
    %r63 = add i32 0,1
    %r64 = getelementptr i32, ptr %r3, i32 %r63
    %r65 = load i32, ptr %r64
    %r66 = add i32 %r62,%r65
    store i32 %r66, ptr %r32
    %r67 = load i32, ptr %r32
    %r68 = add i32 0,0
    %r69 = getelementptr i32, ptr %r4, i32 %r68
    %r70 = load i32, ptr %r69
    %r71 = add i32 %r67,%r70
    %r72 = add i32 0,1
    %r73 = getelementptr i32, ptr %r4, i32 %r72
    %r74 = load i32, ptr %r73
    %r75 = add i32 %r71,%r74
    store i32 %r75, ptr %r32
    %r76 = load i32, ptr %r32
    %r77 = add i32 0,0
    %r78 = getelementptr i32, ptr %r5, i32 %r77
    %r79 = load i32, ptr %r78
    %r80 = add i32 %r76,%r79
    %r81 = add i32 0,1
    %r82 = getelementptr i32, ptr %r5, i32 %r81
    %r83 = load i32, ptr %r82
    %r84 = add i32 %r80,%r83
    store i32 %r84, ptr %r32
    %r85 = load i32, ptr %r32
    %r86 = add i32 0,0
    %r87 = getelementptr i32, ptr %r6, i32 %r86
    %r88 = load i32, ptr %r87
    %r89 = add i32 %r85,%r88
    %r90 = add i32 0,1
    %r91 = getelementptr i32, ptr %r6, i32 %r90
    %r92 = load i32, ptr %r91
    %r93 = add i32 %r89,%r92
    store i32 %r93, ptr %r32
    %r94 = load i32, ptr %r32
    %r95 = add i32 0,0
    %r96 = getelementptr i32, ptr %r7, i32 %r95
    %r97 = load i32, ptr %r96
    %r98 = add i32 %r94,%r97
    %r99 = add i32 0,1
    %r100 = getelementptr i32, ptr %r7, i32 %r99
    %r101 = load i32, ptr %r100
    %r102 = add i32 %r98,%r101
    store i32 %r102, ptr %r32
    %r103 = load i32, ptr %r32
    %r104 = add i32 0,0
    %r105 = getelementptr i32, ptr %r8, i32 %r104
    %r106 = load i32, ptr %r105
    %r107 = add i32 %r103,%r106
    %r108 = add i32 0,1
    %r109 = getelementptr i32, ptr %r8, i32 %r108
    %r110 = load i32, ptr %r109
    %r111 = add i32 %r107,%r110
    store i32 %r111, ptr %r32
    %r112 = load i32, ptr %r32
    %r113 = add i32 0,0
    %r114 = getelementptr i32, ptr %r9, i32 %r113
    %r115 = load i32, ptr %r114
    %r116 = add i32 %r112,%r115
    %r117 = add i32 0,1
    %r118 = getelementptr i32, ptr %r9, i32 %r117
    %r119 = load i32, ptr %r118
    %r120 = add i32 %r116,%r119
    store i32 %r120, ptr %r32
    %r121 = load i32, ptr %r32
    %r122 = add i32 0,0
    %r123 = getelementptr i32, ptr %r10, i32 %r122
    %r124 = load i32, ptr %r123
    %r125 = add i32 %r121,%r124
    %r126 = add i32 0,1
    %r127 = getelementptr i32, ptr %r10, i32 %r126
    %r128 = load i32, ptr %r127
    %r129 = add i32 %r125,%r128
    store i32 %r129, ptr %r32
    %r130 = load i32, ptr %r32
    %r131 = add i32 0,0
    %r132 = getelementptr i32, ptr %r11, i32 %r131
    %r133 = load i32, ptr %r132
    %r134 = add i32 %r130,%r133
    %r135 = add i32 0,1
    %r136 = getelementptr i32, ptr %r11, i32 %r135
    %r137 = load i32, ptr %r136
    %r138 = add i32 %r134,%r137
    store i32 %r138, ptr %r32
    %r139 = load i32, ptr %r32
    %r140 = add i32 0,0
    %r141 = getelementptr i32, ptr %r12, i32 %r140
    %r142 = load i32, ptr %r141
    %r143 = add i32 %r139,%r142
    %r144 = add i32 0,1
    %r145 = getelementptr i32, ptr %r12, i32 %r144
    %r146 = load i32, ptr %r145
    %r147 = add i32 %r143,%r146
    store i32 %r147, ptr %r32
    %r148 = load i32, ptr %r32
    %r149 = add i32 0,0
    %r150 = getelementptr i32, ptr %r13, i32 %r149
    %r151 = load i32, ptr %r150
    %r152 = add i32 %r148,%r151
    %r153 = add i32 0,1
    %r154 = getelementptr i32, ptr %r13, i32 %r153
    %r155 = load i32, ptr %r154
    %r156 = add i32 %r152,%r155
    store i32 %r156, ptr %r32
    %r157 = load i32, ptr %r32
    %r158 = add i32 0,0
    %r159 = getelementptr i32, ptr %r14, i32 %r158
    %r160 = load i32, ptr %r159
    %r161 = add i32 %r157,%r160
    %r162 = add i32 0,1
    %r163 = getelementptr i32, ptr %r14, i32 %r162
    %r164 = load i32, ptr %r163
    %r165 = add i32 %r161,%r164
    store i32 %r165, ptr %r32
    %r166 = load i32, ptr %r32
    %r167 = add i32 0,0
    %r168 = getelementptr i32, ptr %r15, i32 %r167
    %r169 = load i32, ptr %r168
    %r170 = add i32 %r166,%r169
    %r171 = add i32 0,1
    %r172 = getelementptr i32, ptr %r15, i32 %r171
    %r173 = load i32, ptr %r172
    %r174 = add i32 %r170,%r173
    store i32 %r174, ptr %r32
    %r175 = load i32, ptr %r32
    %r176 = add i32 0,0
    %r177 = getelementptr i32, ptr %r16, i32 %r176
    %r178 = load i32, ptr %r177
    %r179 = add i32 %r175,%r178
    %r180 = add i32 0,1
    %r181 = getelementptr i32, ptr %r16, i32 %r180
    %r182 = load i32, ptr %r181
    %r183 = add i32 %r179,%r182
    store i32 %r183, ptr %r32
    %r184 = load i32, ptr %r32
    %r185 = add i32 0,0
    %r186 = getelementptr i32, ptr %r17, i32 %r185
    %r187 = load i32, ptr %r186
    %r188 = add i32 %r184,%r187
    %r189 = add i32 0,1
    %r190 = getelementptr i32, ptr %r17, i32 %r189
    %r191 = load i32, ptr %r190
    %r192 = add i32 %r188,%r191
    store i32 %r192, ptr %r32
    %r193 = load i32, ptr %r32
    %r194 = add i32 0,0
    %r195 = getelementptr i32, ptr %r18, i32 %r194
    %r196 = load i32, ptr %r195
    %r197 = add i32 %r193,%r196
    %r198 = add i32 0,1
    %r199 = getelementptr i32, ptr %r18, i32 %r198
    %r200 = load i32, ptr %r199
    %r201 = add i32 %r197,%r200
    store i32 %r201, ptr %r32
    %r202 = load i32, ptr %r32
    %r203 = add i32 0,0
    %r204 = getelementptr i32, ptr %r19, i32 %r203
    %r205 = load i32, ptr %r204
    %r206 = add i32 %r202,%r205
    %r207 = add i32 0,1
    %r208 = getelementptr i32, ptr %r19, i32 %r207
    %r209 = load i32, ptr %r208
    %r210 = add i32 %r206,%r209
    store i32 %r210, ptr %r32
    %r211 = load i32, ptr %r32
    %r212 = add i32 0,0
    %r213 = getelementptr i32, ptr %r20, i32 %r212
    %r214 = load i32, ptr %r213
    %r215 = add i32 %r211,%r214
    %r216 = add i32 0,1
    %r217 = getelementptr i32, ptr %r20, i32 %r216
    %r218 = load i32, ptr %r217
    %r219 = add i32 %r215,%r218
    store i32 %r219, ptr %r32
    %r220 = load i32, ptr %r32
    %r221 = add i32 0,0
    %r222 = getelementptr i32, ptr %r21, i32 %r221
    %r223 = load i32, ptr %r222
    %r224 = add i32 %r220,%r223
    %r225 = add i32 0,1
    %r226 = getelementptr i32, ptr %r21, i32 %r225
    %r227 = load i32, ptr %r226
    %r228 = add i32 %r224,%r227
    store i32 %r228, ptr %r32
    %r229 = load i32, ptr %r32
    %r230 = add i32 0,0
    %r231 = getelementptr i32, ptr %r22, i32 %r230
    %r232 = load i32, ptr %r231
    %r233 = add i32 %r229,%r232
    %r234 = add i32 0,1
    %r235 = getelementptr i32, ptr %r22, i32 %r234
    %r236 = load i32, ptr %r235
    %r237 = add i32 %r233,%r236
    store i32 %r237, ptr %r32
    %r238 = load i32, ptr %r32
    %r239 = add i32 0,0
    %r240 = getelementptr i32, ptr %r23, i32 %r239
    %r241 = load i32, ptr %r240
    %r242 = add i32 %r238,%r241
    %r243 = add i32 0,1
    %r244 = getelementptr i32, ptr %r23, i32 %r243
    %r245 = load i32, ptr %r244
    %r246 = add i32 %r242,%r245
    store i32 %r246, ptr %r32
    %r247 = load i32, ptr %r32
    %r248 = add i32 0,0
    %r249 = getelementptr i32, ptr %r24, i32 %r248
    %r250 = load i32, ptr %r249
    %r251 = add i32 %r247,%r250
    %r252 = add i32 0,1
    %r253 = getelementptr i32, ptr %r24, i32 %r252
    %r254 = load i32, ptr %r253
    %r255 = add i32 %r251,%r254
    store i32 %r255, ptr %r32
    %r256 = load i32, ptr %r32
    %r257 = add i32 0,0
    %r258 = getelementptr i32, ptr %r25, i32 %r257
    %r259 = load i32, ptr %r258
    %r260 = add i32 %r256,%r259
    %r261 = add i32 0,1
    %r262 = getelementptr i32, ptr %r25, i32 %r261
    %r263 = load i32, ptr %r262
    %r264 = add i32 %r260,%r263
    store i32 %r264, ptr %r32
    %r265 = load i32, ptr %r32
    %r266 = add i32 0,0
    %r267 = getelementptr i32, ptr %r26, i32 %r266
    %r268 = load i32, ptr %r267
    %r269 = add i32 %r265,%r268
    %r270 = add i32 0,1
    %r271 = getelementptr i32, ptr %r26, i32 %r270
    %r272 = load i32, ptr %r271
    %r273 = add i32 %r269,%r272
    store i32 %r273, ptr %r32
    %r274 = load i32, ptr %r32
    %r275 = add i32 0,0
    %r276 = getelementptr i32, ptr %r27, i32 %r275
    %r277 = load i32, ptr %r276
    %r278 = add i32 %r274,%r277
    %r279 = add i32 0,1
    %r280 = getelementptr i32, ptr %r27, i32 %r279
    %r281 = load i32, ptr %r280
    %r282 = add i32 %r278,%r281
    store i32 %r282, ptr %r32
    %r283 = load i32, ptr %r32
    %r284 = add i32 0,0
    %r285 = getelementptr i32, ptr %r28, i32 %r284
    %r286 = load i32, ptr %r285
    %r287 = add i32 %r283,%r286
    %r288 = add i32 0,1
    %r289 = getelementptr i32, ptr %r28, i32 %r288
    %r290 = load i32, ptr %r289
    %r291 = add i32 %r287,%r290
    store i32 %r291, ptr %r32
    %r292 = load i32, ptr %r32
    %r293 = add i32 0,0
    %r294 = getelementptr i32, ptr %r29, i32 %r293
    %r295 = load i32, ptr %r294
    %r296 = add i32 %r292,%r295
    %r297 = add i32 0,1
    %r298 = getelementptr i32, ptr %r29, i32 %r297
    %r299 = load i32, ptr %r298
    %r300 = add i32 %r296,%r299
    store i32 %r300, ptr %r32
    %r301 = load i32, ptr %r32
    %r302 = add i32 0,0
    %r303 = getelementptr i32, ptr %r30, i32 %r302
    %r304 = load i32, ptr %r303
    %r305 = add i32 %r301,%r304
    %r306 = add i32 0,1
    %r307 = getelementptr i32, ptr %r30, i32 %r306
    %r308 = load i32, ptr %r307
    %r309 = add i32 %r305,%r308
    store i32 %r309, ptr %r32
    %r310 = load i32, ptr %r32
    %r311 = add i32 0,0
    %r312 = getelementptr i32, ptr %r31, i32 %r311
    %r313 = load i32, ptr %r312
    %r314 = add i32 %r310,%r313
    %r315 = add i32 0,1
    %r316 = getelementptr i32, ptr %r31, i32 %r315
    %r317 = load i32, ptr %r316
    %r318 = add i32 %r314,%r317
    store i32 %r318, ptr %r32
    %r319 = load i32, ptr %r32
    ret i32 %r319
}
define i32 @main()
{
L0:
    %r21 = alloca i32
    %r0 = alloca [32 x [2 x i32]]
    br label %L1
L1:
    call void @llvm.memset.p0.i32(ptr %r0,i8 0,i32 256,i1 0)
    %r1 = call i32 @getint()
    %r2 = call i32 @getint()
    %r3 = call i32 @getint()
    %r4 = call i32 @getint()
    %r5 = call i32 @getint()
    %r6 = call i32 @getint()
    %r7 = call i32 @getint()
    %r8 = call i32 @getint()
    %r9 = call i32 @getint()
    %r10 = call i32 @getint()
    %r11 = call i32 @getint()
    %r12 = call i32 @getint()
    %r13 = call i32 @getint()
    %r14 = call i32 @getint()
    %r15 = call i32 @getint()
    %r16 = call i32 @getint()
    %r17 = call i32 @param16(i32 %r1,i32 %r2,i32 %r3,i32 %r4,i32 %r5,i32 %r6,i32 %r7,i32 %r8,i32 %r9,i32 %r10,i32 %r11,i32 %r12,i32 %r13,i32 %r14,i32 %r15,i32 %r16)
    %r18 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 0, i32 0
    store i32 %r17, ptr %r18
    %r19 = add i32 0,8848
    %r20 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 0, i32 1
    store i32 %r19, ptr %r20
    %r22 = add i32 0,1
    store i32 %r22, ptr %r21
    %r23 = load i32, ptr %r21
    %r24 = add i32 0,32
    %r25 = icmp slt i32 %r23,%r24
    br i1 %r25, label %L3, label %L5
L3:
    %r28 = load i32, ptr %r21
    %r29 = add i32 0,1
    %r30 = sub i32 %r28,%r29
    %r31 = add i32 0,1
    %r32 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r30, i32 %r31
    %r33 = load i32, ptr %r32
    %r34 = add i32 0,1
    %r35 = sub i32 %r33,%r34
    %r36 = load i32, ptr %r21
    %r37 = add i32 0,0
    %r38 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r36, i32 %r37
    store i32 %r35, ptr %r38
    %r39 = load i32, ptr %r21
    %r40 = add i32 0,1
    %r41 = sub i32 %r39,%r40
    %r42 = add i32 0,0
    %r43 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r41, i32 %r42
    %r44 = load i32, ptr %r43
    %r45 = add i32 0,2
    %r46 = sub i32 %r44,%r45
    %r47 = load i32, ptr %r21
    %r48 = add i32 0,1
    %r49 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r47, i32 %r48
    store i32 %r46, ptr %r49
    %r50 = load i32, ptr %r21
    %r51 = add i32 0,1
    %r52 = add i32 %r50,%r51
    store i32 %r52, ptr %r21
    br label %L4
L4:
    %r53 = load i32, ptr %r21
    %r54 = add i32 0,32
    %r55 = icmp slt i32 %r53,%r54
    br i1 %r55, label %L3, label %L5
L5:
    %r58 = add i32 0,0
    %r59 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r58
    %r60 = add i32 0,1
    %r61 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r60
    %r62 = add i32 0,2
    %r63 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r62
    %r64 = add i32 0,3
    %r65 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r64
    %r66 = add i32 0,4
    %r67 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r66
    %r68 = add i32 0,5
    %r69 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r68
    %r70 = add i32 0,6
    %r71 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r70
    %r72 = add i32 0,7
    %r73 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r72
    %r74 = add i32 0,8
    %r75 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r74
    %r76 = add i32 0,9
    %r77 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r76
    %r78 = add i32 0,10
    %r79 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r78
    %r80 = add i32 0,11
    %r81 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r80
    %r82 = add i32 0,12
    %r83 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r82
    %r84 = add i32 0,13
    %r85 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r84
    %r86 = add i32 0,14
    %r87 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r86
    %r88 = add i32 0,15
    %r89 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r88
    %r90 = add i32 0,16
    %r91 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r90
    %r92 = add i32 0,17
    %r93 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r92
    %r94 = add i32 0,18
    %r95 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r94
    %r96 = add i32 0,19
    %r97 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r96
    %r98 = add i32 0,20
    %r99 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r98
    %r100 = add i32 0,21
    %r101 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r100
    %r102 = add i32 0,22
    %r103 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r102
    %r104 = add i32 0,23
    %r105 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r104
    %r106 = add i32 0,24
    %r107 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r106
    %r108 = add i32 0,25
    %r109 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r108
    %r110 = add i32 0,26
    %r111 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r110
    %r112 = add i32 0,27
    %r113 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r112
    %r114 = add i32 0,28
    %r115 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r114
    %r116 = add i32 0,29
    %r117 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r116
    %r118 = add i32 0,30
    %r119 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r118
    %r120 = add i32 0,31
    %r121 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r120
    %r122 = call i32 @param32_arr(ptr %r59,ptr %r61,ptr %r63,ptr %r65,ptr %r67,ptr %r69,ptr %r71,ptr %r73,ptr %r75,ptr %r77,ptr %r79,ptr %r81,ptr %r83,ptr %r85,ptr %r87,ptr %r89,ptr %r91,ptr %r93,ptr %r95,ptr %r97,ptr %r99,ptr %r101,ptr %r103,ptr %r105,ptr %r107,ptr %r109,ptr %r111,ptr %r113,ptr %r115,ptr %r117,ptr %r119,ptr %r121)
    call void @putint(i32 %r122)
    %r123 = add i32 0,10
    call void @putch(i32 %r123)
    %r124 = add i32 0,0
    ret i32 %r124
}
define i32 @param16(i32 %r0,i32 %r1,i32 %r2,i32 %r3,i32 %r4,i32 %r5,i32 %r6,i32 %r7,i32 %r8,i32 %r9,i32 %r10,i32 %r11,i32 %r12,i32 %r13,i32 %r14,i32 %r15)
{
L0:
    %r32 = alloca [16 x i32]
    %r16 = alloca i32
    store i32 %r0, ptr %r16
    %r17 = alloca i32
    store i32 %r1, ptr %r17
    %r18 = alloca i32
    store i32 %r2, ptr %r18
    %r19 = alloca i32
    store i32 %r3, ptr %r19
    %r20 = alloca i32
    store i32 %r4, ptr %r20
    %r21 = alloca i32
    store i32 %r5, ptr %r21
    %r22 = alloca i32
    store i32 %r6, ptr %r22
    %r23 = alloca i32
    store i32 %r7, ptr %r23
    %r24 = alloca i32
    store i32 %r8, ptr %r24
    %r25 = alloca i32
    store i32 %r9, ptr %r25
    %r26 = alloca i32
    store i32 %r10, ptr %r26
    %r27 = alloca i32
    store i32 %r11, ptr %r27
    %r28 = alloca i32
    store i32 %r12, ptr %r28
    %r29 = alloca i32
    store i32 %r13, ptr %r29
    %r30 = alloca i32
    store i32 %r14, ptr %r30
    %r31 = alloca i32
    store i32 %r15, ptr %r31
    br label %L1
L1:
    call void @llvm.memset.p0.i32(ptr %r32,i8 0,i32 64,i1 0)
    %r33 = load i32, ptr %r16
    %r34 = getelementptr [16 x i32], ptr %r32, i32 0, i32 0
    store i32 %r33, ptr %r34
    %r35 = load i32, ptr %r17
    %r36 = getelementptr [16 x i32], ptr %r32, i32 0, i32 1
    store i32 %r35, ptr %r36
    %r37 = load i32, ptr %r18
    %r38 = getelementptr [16 x i32], ptr %r32, i32 0, i32 2
    store i32 %r37, ptr %r38
    %r39 = load i32, ptr %r19
    %r40 = getelementptr [16 x i32], ptr %r32, i32 0, i32 3
    store i32 %r39, ptr %r40
    %r41 = load i32, ptr %r20
    %r42 = getelementptr [16 x i32], ptr %r32, i32 0, i32 4
    store i32 %r41, ptr %r42
    %r43 = load i32, ptr %r21
    %r44 = getelementptr [16 x i32], ptr %r32, i32 0, i32 5
    store i32 %r43, ptr %r44
    %r45 = load i32, ptr %r22
    %r46 = getelementptr [16 x i32], ptr %r32, i32 0, i32 6
    store i32 %r45, ptr %r46
    %r47 = load i32, ptr %r23
    %r48 = getelementptr [16 x i32], ptr %r32, i32 0, i32 7
    store i32 %r47, ptr %r48
    %r49 = load i32, ptr %r24
    %r50 = getelementptr [16 x i32], ptr %r32, i32 0, i32 8
    store i32 %r49, ptr %r50
    %r51 = load i32, ptr %r25
    %r52 = getelementptr [16 x i32], ptr %r32, i32 0, i32 9
    store i32 %r51, ptr %r52
    %r53 = load i32, ptr %r26
    %r54 = getelementptr [16 x i32], ptr %r32, i32 0, i32 10
    store i32 %r53, ptr %r54
    %r55 = load i32, ptr %r27
    %r56 = getelementptr [16 x i32], ptr %r32, i32 0, i32 11
    store i32 %r55, ptr %r56
    %r57 = load i32, ptr %r28
    %r58 = getelementptr [16 x i32], ptr %r32, i32 0, i32 12
    store i32 %r57, ptr %r58
    %r59 = load i32, ptr %r29
    %r60 = getelementptr [16 x i32], ptr %r32, i32 0, i32 13
    store i32 %r59, ptr %r60
    %r61 = load i32, ptr %r30
    %r62 = getelementptr [16 x i32], ptr %r32, i32 0, i32 14
    store i32 %r61, ptr %r62
    %r63 = load i32, ptr %r31
    %r64 = getelementptr [16 x i32], ptr %r32, i32 0, i32 15
    store i32 %r63, ptr %r64
    %r65 = getelementptr i32, ptr %r32, i32 0
    %r66 = add i32 0,16
    call void @sort(ptr %r65,i32 %r66)
    %r67 = add i32 0,0
    %r68 = getelementptr [16 x i32], ptr %r32, i32 0, i32 %r67
    %r69 = load i32, ptr %r68
    %r70 = add i32 0,1
    %r71 = getelementptr [16 x i32], ptr %r32, i32 0, i32 %r70
    %r72 = load i32, ptr %r71
    %r73 = add i32 0,2
    %r74 = getelementptr [16 x i32], ptr %r32, i32 0, i32 %r73
    %r75 = load i32, ptr %r74
    %r76 = add i32 0,3
    %r77 = getelementptr [16 x i32], ptr %r32, i32 0, i32 %r76
    %r78 = load i32, ptr %r77
    %r79 = add i32 0,4
    %r80 = getelementptr [16 x i32], ptr %r32, i32 0, i32 %r79
    %r81 = load i32, ptr %r80
    %r82 = add i32 0,5
    %r83 = getelementptr [16 x i32], ptr %r32, i32 0, i32 %r82
    %r84 = load i32, ptr %r83
    %r85 = add i32 0,6
    %r86 = getelementptr [16 x i32], ptr %r32, i32 0, i32 %r85
    %r87 = load i32, ptr %r86
    %r88 = add i32 0,7
    %r89 = getelementptr [16 x i32], ptr %r32, i32 0, i32 %r88
    %r90 = load i32, ptr %r89
    %r91 = add i32 0,8
    %r92 = getelementptr [16 x i32], ptr %r32, i32 0, i32 %r91
    %r93 = load i32, ptr %r92
    %r94 = add i32 0,9
    %r95 = getelementptr [16 x i32], ptr %r32, i32 0, i32 %r94
    %r96 = load i32, ptr %r95
    %r97 = add i32 0,10
    %r98 = getelementptr [16 x i32], ptr %r32, i32 0, i32 %r97
    %r99 = load i32, ptr %r98
    %r100 = add i32 0,11
    %r101 = getelementptr [16 x i32], ptr %r32, i32 0, i32 %r100
    %r102 = load i32, ptr %r101
    %r103 = add i32 0,12
    %r104 = getelementptr [16 x i32], ptr %r32, i32 0, i32 %r103
    %r105 = load i32, ptr %r104
    %r106 = add i32 0,13
    %r107 = getelementptr [16 x i32], ptr %r32, i32 0, i32 %r106
    %r108 = load i32, ptr %r107
    %r109 = add i32 0,14
    %r110 = getelementptr [16 x i32], ptr %r32, i32 0, i32 %r109
    %r111 = load i32, ptr %r110
    %r112 = add i32 0,15
    %r113 = getelementptr [16 x i32], ptr %r32, i32 0, i32 %r112
    %r114 = load i32, ptr %r113
    %r115 = load i32, ptr %r16
    %r116 = load i32, ptr %r17
    %r117 = load i32, ptr %r18
    %r118 = load i32, ptr %r19
    %r119 = load i32, ptr %r20
    %r120 = load i32, ptr %r21
    %r121 = load i32, ptr %r22
    %r122 = load i32, ptr %r23
    %r123 = load i32, ptr %r24
    %r124 = load i32, ptr %r25
    %r125 = load i32, ptr %r26
    %r126 = load i32, ptr %r27
    %r127 = load i32, ptr %r28
    %r128 = load i32, ptr %r29
    %r129 = load i32, ptr %r30
    %r130 = load i32, ptr %r31
    %r131 = call i32 @param32_rec(i32 %r69,i32 %r72,i32 %r75,i32 %r78,i32 %r81,i32 %r84,i32 %r87,i32 %r90,i32 %r93,i32 %r96,i32 %r99,i32 %r102,i32 %r105,i32 %r108,i32 %r111,i32 %r114,i32 %r115,i32 %r116,i32 %r117,i32 %r118,i32 %r119,i32 %r120,i32 %r121,i32 %r122,i32 %r123,i32 %r124,i32 %r125,i32 %r126,i32 %r127,i32 %r128,i32 %r129,i32 %r130)
    ret i32 %r131
}
define void @sort(ptr %r0,i32 %r1)
{
L0:
    %r30 = alloca i32
    %r12 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r1, ptr %r2
    br label %L1
L1:
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r5 = load i32, ptr %r3
    %r6 = load i32, ptr %r2
    %r7 = add i32 0,1
    %r8 = sub i32 %r6,%r7
    %r9 = icmp slt i32 %r5,%r8
    br i1 %r9, label %L3, label %L5
L3:
    %r13 = load i32, ptr %r3
    %r14 = add i32 0,1
    %r15 = add i32 %r13,%r14
    store i32 %r15, ptr %r12
    %r16 = load i32, ptr %r12
    %r17 = load i32, ptr %r2
    %r18 = icmp slt i32 %r16,%r17
    br i1 %r18, label %L7, label %L9
L4:
    %r53 = load i32, ptr %r3
    %r54 = load i32, ptr %r2
    %r55 = add i32 0,1
    %r56 = sub i32 %r54,%r55
    %r57 = icmp slt i32 %r53,%r56
    br i1 %r57, label %L3, label %L5
L5:
    ret void
L7:
    %r21 = load i32, ptr %r3
    %r22 = getelementptr i32, ptr %r0, i32 %r21
    %r23 = load i32, ptr %r22
    %r24 = load i32, ptr %r12
    %r25 = getelementptr i32, ptr %r0, i32 %r24
    %r26 = load i32, ptr %r25
    %r27 = icmp slt i32 %r23,%r26
    br i1 %r27, label %L10, label %L11
L8:
    %r45 = load i32, ptr %r12
    %r46 = load i32, ptr %r2
    %r47 = icmp slt i32 %r45,%r46
    br i1 %r47, label %L7, label %L9
L9:
    %r50 = load i32, ptr %r3
    %r51 = add i32 0,1
    %r52 = add i32 %r50,%r51
    store i32 %r52, ptr %r3
    br label %L4
L10:
    %r31 = load i32, ptr %r3
    %r32 = getelementptr i32, ptr %r0, i32 %r31
    %r33 = load i32, ptr %r32
    store i32 %r33, ptr %r30
    %r34 = load i32, ptr %r12
    %r35 = getelementptr i32, ptr %r0, i32 %r34
    %r36 = load i32, ptr %r35
    %r37 = load i32, ptr %r3
    %r38 = getelementptr i32, ptr %r0, i32 %r37
    store i32 %r36, ptr %r38
    %r39 = load i32, ptr %r30
    %r40 = load i32, ptr %r12
    %r41 = getelementptr i32, ptr %r0, i32 %r40
    store i32 %r39, ptr %r41
    br label %L11
L11:
    %r42 = load i32, ptr %r12
    %r43 = add i32 0,1
    %r44 = add i32 %r42,%r43
    store i32 %r44, ptr %r12
    br label %L8
}
