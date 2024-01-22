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
@k = global i32 zeroinitializer
define i32 @main()
{
L0:
    %r531 = alloca i32
    %r449 = alloca float
    %r191 = alloca float
    %r29 = alloca float
    %r2 = alloca i32
    %r1 = alloca [24 x [3 x i32]]
    %r0 = alloca [40 x [3 x float]]
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r4 = call i32 @getint()
    store i32 %r4, ptr @k
    %r5 = add i32 0,0
    store i32 %r5, ptr %r2
    br label %L1
L1:
    %r6 = load i32, ptr %r2
    %r7 = add i32 0,40
    %r8 = icmp slt i32 %r6,%r7
    br i1 %r8, label %L2, label %L3
L2:
    %r11 = load i32, ptr %r2
    %r12 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r11
    %r13 = call i32 @getfarray(ptr %r12)
    %r14 = load i32, ptr %r2
    %r15 = add i32 0,1
    %r16 = add i32 %r14,%r15
    store i32 %r16, ptr %r2
    br label %L1
L3:
    %r17 = add i32 0,0
    store i32 %r17, ptr %r2
    br label %L4
L4:
    %r18 = load i32, ptr %r2
    %r19 = add i32 0,24
    %r20 = icmp slt i32 %r18,%r19
    br i1 %r20, label %L5, label %L6
L5:
    %r23 = load i32, ptr %r2
    %r24 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r23
    %r25 = call i32 @getarray(ptr %r24)
    %r26 = load i32, ptr %r2
    %r27 = add i32 0,1
    %r28 = add i32 %r26,%r27
    store i32 %r28, ptr %r2
    br label %L4
L6:
    %r30 = add i32 0,0
    %r31 = load i32, ptr @k
    %r32 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r30, i32 %r31
    %r33 = load float, ptr %r32
    %r34 = add i32 0,1
    %r35 = load i32, ptr @k
    %r36 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r34, i32 %r35
    %r37 = load float, ptr %r36
    %r38 = add i32 0,2
    %r39 = load i32, ptr @k
    %r40 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r38, i32 %r39
    %r41 = load float, ptr %r40
    %r42 = add i32 0,3
    %r43 = load i32, ptr @k
    %r44 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r42, i32 %r43
    %r45 = load float, ptr %r44
    %r46 = add i32 0,4
    %r47 = load i32, ptr @k
    %r48 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r46, i32 %r47
    %r49 = load float, ptr %r48
    %r50 = add i32 0,5
    %r51 = load i32, ptr @k
    %r52 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r50, i32 %r51
    %r53 = load float, ptr %r52
    %r54 = add i32 0,6
    %r55 = load i32, ptr @k
    %r56 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r54, i32 %r55
    %r57 = load float, ptr %r56
    %r58 = add i32 0,7
    %r59 = load i32, ptr @k
    %r60 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r58, i32 %r59
    %r61 = load float, ptr %r60
    %r62 = add i32 0,8
    %r63 = load i32, ptr @k
    %r64 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r62, i32 %r63
    %r65 = load float, ptr %r64
    %r66 = add i32 0,9
    %r67 = load i32, ptr @k
    %r68 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r66, i32 %r67
    %r69 = load float, ptr %r68
    %r70 = add i32 0,10
    %r71 = load i32, ptr @k
    %r72 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r70, i32 %r71
    %r73 = load float, ptr %r72
    %r74 = add i32 0,11
    %r75 = load i32, ptr @k
    %r76 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r74, i32 %r75
    %r77 = load float, ptr %r76
    %r78 = add i32 0,12
    %r79 = load i32, ptr @k
    %r80 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r78, i32 %r79
    %r81 = load float, ptr %r80
    %r82 = add i32 0,13
    %r83 = load i32, ptr @k
    %r84 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r82, i32 %r83
    %r85 = load float, ptr %r84
    %r86 = add i32 0,14
    %r87 = load i32, ptr @k
    %r88 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r86, i32 %r87
    %r89 = load float, ptr %r88
    %r90 = add i32 0,15
    %r91 = load i32, ptr @k
    %r92 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r90, i32 %r91
    %r93 = load float, ptr %r92
    %r94 = add i32 0,16
    %r95 = load i32, ptr @k
    %r96 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r94, i32 %r95
    %r97 = load float, ptr %r96
    %r98 = add i32 0,17
    %r99 = load i32, ptr @k
    %r100 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r98, i32 %r99
    %r101 = load float, ptr %r100
    %r102 = add i32 0,18
    %r103 = load i32, ptr @k
    %r104 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r102, i32 %r103
    %r105 = load float, ptr %r104
    %r106 = add i32 0,19
    %r107 = load i32, ptr @k
    %r108 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r106, i32 %r107
    %r109 = load float, ptr %r108
    %r110 = add i32 0,20
    %r111 = load i32, ptr @k
    %r112 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r110, i32 %r111
    %r113 = load float, ptr %r112
    %r114 = add i32 0,21
    %r115 = load i32, ptr @k
    %r116 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r114, i32 %r115
    %r117 = load float, ptr %r116
    %r118 = add i32 0,22
    %r119 = load i32, ptr @k
    %r120 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r118, i32 %r119
    %r121 = load float, ptr %r120
    %r122 = add i32 0,23
    %r123 = load i32, ptr @k
    %r124 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r122, i32 %r123
    %r125 = load float, ptr %r124
    %r126 = add i32 0,24
    %r127 = load i32, ptr @k
    %r128 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r126, i32 %r127
    %r129 = load float, ptr %r128
    %r130 = add i32 0,25
    %r131 = load i32, ptr @k
    %r132 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r130, i32 %r131
    %r133 = load float, ptr %r132
    %r134 = add i32 0,26
    %r135 = load i32, ptr @k
    %r136 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r134, i32 %r135
    %r137 = load float, ptr %r136
    %r138 = add i32 0,27
    %r139 = load i32, ptr @k
    %r140 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r138, i32 %r139
    %r141 = load float, ptr %r140
    %r142 = add i32 0,28
    %r143 = load i32, ptr @k
    %r144 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r142, i32 %r143
    %r145 = load float, ptr %r144
    %r146 = add i32 0,29
    %r147 = load i32, ptr @k
    %r148 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r146, i32 %r147
    %r149 = load float, ptr %r148
    %r150 = add i32 0,30
    %r151 = load i32, ptr @k
    %r152 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r150, i32 %r151
    %r153 = load float, ptr %r152
    %r154 = add i32 0,31
    %r155 = load i32, ptr @k
    %r156 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r154, i32 %r155
    %r157 = load float, ptr %r156
    %r158 = add i32 0,32
    %r159 = load i32, ptr @k
    %r160 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r158, i32 %r159
    %r161 = load float, ptr %r160
    %r162 = add i32 0,33
    %r163 = load i32, ptr @k
    %r164 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r162, i32 %r163
    %r165 = load float, ptr %r164
    %r166 = add i32 0,34
    %r167 = load i32, ptr @k
    %r168 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r166, i32 %r167
    %r169 = load float, ptr %r168
    %r170 = add i32 0,35
    %r171 = load i32, ptr @k
    %r172 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r170, i32 %r171
    %r173 = load float, ptr %r172
    %r174 = add i32 0,36
    %r175 = load i32, ptr @k
    %r176 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r174, i32 %r175
    %r177 = load float, ptr %r176
    %r178 = add i32 0,37
    %r179 = load i32, ptr @k
    %r180 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r178, i32 %r179
    %r181 = load float, ptr %r180
    %r182 = add i32 0,38
    %r183 = load i32, ptr @k
    %r184 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r182, i32 %r183
    %r185 = load float, ptr %r184
    %r186 = add i32 0,39
    %r187 = load i32, ptr @k
    %r188 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r186, i32 %r187
    %r189 = load float, ptr %r188
    %r190 = call float @params_f40(float %r33,float %r37,float %r41,float %r45,float %r49,float %r53,float %r57,float %r61,float %r65,float %r69,float %r73,float %r77,float %r81,float %r85,float %r89,float %r93,float %r97,float %r101,float %r105,float %r109,float %r113,float %r117,float %r121,float %r125,float %r129,float %r133,float %r137,float %r141,float %r145,float %r149,float %r153,float %r157,float %r161,float %r165,float %r169,float %r173,float %r177,float %r181,float %r185,float %r189)
    store float %r190, ptr %r29
    %r192 = add i32 0,23
    %r193 = load i32, ptr @k
    %r194 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r192, i32 %r193
    %r195 = load i32, ptr %r194
    %r196 = add i32 0,2
    %r197 = load i32, ptr @k
    %r198 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r196, i32 %r197
    %r199 = load i32, ptr %r198
    %r200 = add i32 0,6
    %r201 = load i32, ptr @k
    %r202 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r200, i32 %r201
    %r203 = load i32, ptr %r202
    %r204 = add i32 0,4
    %r205 = load i32, ptr @k
    %r206 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r204, i32 %r205
    %r207 = load float, ptr %r206
    %r208 = add i32 0,1
    %r209 = load i32, ptr @k
    %r210 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r208, i32 %r209
    %r211 = load i32, ptr %r210
    %r212 = add i32 0,4
    %r213 = load i32, ptr @k
    %r214 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r212, i32 %r213
    %r215 = load i32, ptr %r214
    %r216 = add i32 0,5
    %r217 = load i32, ptr @k
    %r218 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r216, i32 %r217
    %r219 = load i32, ptr %r218
    %r220 = add i32 0,8
    %r221 = load i32, ptr @k
    %r222 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r220, i32 %r221
    %r223 = load float, ptr %r222
    %r224 = add i32 0,15
    %r225 = load i32, ptr @k
    %r226 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r224, i32 %r225
    %r227 = load float, ptr %r226
    %r228 = add i32 0,7
    %r229 = load i32, ptr @k
    %r230 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r228, i32 %r229
    %r231 = load float, ptr %r230
    %r232 = add i32 0,22
    %r233 = load i32, ptr @k
    %r234 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r232, i32 %r233
    %r235 = load i32, ptr %r234
    %r236 = add i32 0,3
    %r237 = load i32, ptr @k
    %r238 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r236, i32 %r237
    %r239 = load float, ptr %r238
    %r240 = add i32 0,28
    %r241 = load i32, ptr @k
    %r242 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r240, i32 %r241
    %r243 = load float, ptr %r242
    %r244 = add i32 0,0
    %r245 = load i32, ptr @k
    %r246 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r244, i32 %r245
    %r247 = load i32, ptr %r246
    %r248 = add i32 0,37
    %r249 = load i32, ptr @k
    %r250 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r248, i32 %r249
    %r251 = load float, ptr %r250
    %r252 = add i32 0,19
    %r253 = load i32, ptr @k
    %r254 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r252, i32 %r253
    %r255 = load i32, ptr %r254
    %r256 = add i32 0,30
    %r257 = load i32, ptr @k
    %r258 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r256, i32 %r257
    %r259 = load float, ptr %r258
    %r260 = add i32 0,12
    %r261 = load i32, ptr @k
    %r262 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r260, i32 %r261
    %r263 = load float, ptr %r262
    %r264 = add i32 0,1
    %r265 = load i32, ptr @k
    %r266 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r264, i32 %r265
    %r267 = load float, ptr %r266
    %r268 = add i32 0,11
    %r269 = load i32, ptr @k
    %r270 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r268, i32 %r269
    %r271 = load float, ptr %r270
    %r272 = add i32 0,38
    %r273 = load i32, ptr @k
    %r274 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r272, i32 %r273
    %r275 = load float, ptr %r274
    %r276 = add i32 0,6
    %r277 = load i32, ptr @k
    %r278 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r276, i32 %r277
    %r279 = load float, ptr %r278
    %r280 = add i32 0,7
    %r281 = load i32, ptr @k
    %r282 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r280, i32 %r281
    %r283 = load i32, ptr %r282
    %r284 = add i32 0,32
    %r285 = load i32, ptr @k
    %r286 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r284, i32 %r285
    %r287 = load float, ptr %r286
    %r288 = add i32 0,10
    %r289 = load i32, ptr @k
    %r290 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r288, i32 %r289
    %r291 = load i32, ptr %r290
    %r292 = add i32 0,13
    %r293 = load i32, ptr @k
    %r294 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r292, i32 %r293
    %r295 = load i32, ptr %r294
    %r296 = add i32 0,20
    %r297 = load i32, ptr @k
    %r298 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r296, i32 %r297
    %r299 = load float, ptr %r298
    %r300 = add i32 0,33
    %r301 = load i32, ptr @k
    %r302 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r300, i32 %r301
    %r303 = load float, ptr %r302
    %r304 = add i32 0,23
    %r305 = load i32, ptr @k
    %r306 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r304, i32 %r305
    %r307 = load float, ptr %r306
    %r308 = add i32 0,9
    %r309 = load i32, ptr @k
    %r310 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r308, i32 %r309
    %r311 = load float, ptr %r310
    %r312 = add i32 0,25
    %r313 = load i32, ptr @k
    %r314 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r312, i32 %r313
    %r315 = load float, ptr %r314
    %r316 = add i32 0,8
    %r317 = load i32, ptr @k
    %r318 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r316, i32 %r317
    %r319 = load i32, ptr %r318
    %r320 = add i32 0,39
    %r321 = load i32, ptr @k
    %r322 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r320, i32 %r321
    %r323 = load float, ptr %r322
    %r324 = add i32 0,17
    %r325 = load i32, ptr @k
    %r326 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r324, i32 %r325
    %r327 = load i32, ptr %r326
    %r328 = add i32 0,21
    %r329 = load i32, ptr @k
    %r330 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r328, i32 %r329
    %r331 = load float, ptr %r330
    %r332 = add i32 0,16
    %r333 = load i32, ptr @k
    %r334 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r332, i32 %r333
    %r335 = load float, ptr %r334
    %r336 = add i32 0,5
    %r337 = load i32, ptr @k
    %r338 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r336, i32 %r337
    %r339 = load float, ptr %r338
    %r340 = add i32 0,34
    %r341 = load i32, ptr @k
    %r342 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r340, i32 %r341
    %r343 = load float, ptr %r342
    %r344 = add i32 0,18
    %r345 = load i32, ptr @k
    %r346 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r344, i32 %r345
    %r347 = load i32, ptr %r346
    %r348 = add i32 0,9
    %r349 = load i32, ptr @k
    %r350 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r348, i32 %r349
    %r351 = load i32, ptr %r350
    %r352 = add i32 0,14
    %r353 = load i32, ptr @k
    %r354 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r352, i32 %r353
    %r355 = load float, ptr %r354
    %r356 = add i32 0,10
    %r357 = load i32, ptr @k
    %r358 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r356, i32 %r357
    %r359 = load float, ptr %r358
    %r360 = add i32 0,0
    %r361 = load i32, ptr @k
    %r362 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r360, i32 %r361
    %r363 = load float, ptr %r362
    %r364 = add i32 0,12
    %r365 = load i32, ptr @k
    %r366 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r364, i32 %r365
    %r367 = load i32, ptr %r366
    %r368 = add i32 0,31
    %r369 = load i32, ptr @k
    %r370 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r368, i32 %r369
    %r371 = load float, ptr %r370
    %r372 = add i32 0,11
    %r373 = load i32, ptr @k
    %r374 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r372, i32 %r373
    %r375 = load i32, ptr %r374
    %r376 = add i32 0,16
    %r377 = load i32, ptr @k
    %r378 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r376, i32 %r377
    %r379 = load i32, ptr %r378
    %r380 = add i32 0,27
    %r381 = load i32, ptr @k
    %r382 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r380, i32 %r381
    %r383 = load float, ptr %r382
    %r384 = add i32 0,24
    %r385 = load i32, ptr @k
    %r386 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r384, i32 %r385
    %r387 = load float, ptr %r386
    %r388 = add i32 0,13
    %r389 = load i32, ptr @k
    %r390 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r388, i32 %r389
    %r391 = load float, ptr %r390
    %r392 = add i32 0,29
    %r393 = load i32, ptr @k
    %r394 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r392, i32 %r393
    %r395 = load float, ptr %r394
    %r396 = add i32 0,3
    %r397 = load i32, ptr @k
    %r398 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r396, i32 %r397
    %r399 = load i32, ptr %r398
    %r400 = add i32 0,21
    %r401 = load i32, ptr @k
    %r402 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r400, i32 %r401
    %r403 = load i32, ptr %r402
    %r404 = add i32 0,20
    %r405 = load i32, ptr @k
    %r406 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r404, i32 %r405
    %r407 = load i32, ptr %r406
    %r408 = add i32 0,18
    %r409 = load i32, ptr @k
    %r410 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r408, i32 %r409
    %r411 = load float, ptr %r410
    %r412 = add i32 0,19
    %r413 = load i32, ptr @k
    %r414 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r412, i32 %r413
    %r415 = load float, ptr %r414
    %r416 = add i32 0,22
    %r417 = load i32, ptr @k
    %r418 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r416, i32 %r417
    %r419 = load float, ptr %r418
    %r420 = add i32 0,26
    %r421 = load i32, ptr @k
    %r422 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r420, i32 %r421
    %r423 = load float, ptr %r422
    %r424 = add i32 0,36
    %r425 = load i32, ptr @k
    %r426 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r424, i32 %r425
    %r427 = load float, ptr %r426
    %r428 = add i32 0,17
    %r429 = load i32, ptr @k
    %r430 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r428, i32 %r429
    %r431 = load float, ptr %r430
    %r432 = add i32 0,15
    %r433 = load i32, ptr @k
    %r434 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r432, i32 %r433
    %r435 = load i32, ptr %r434
    %r436 = add i32 0,2
    %r437 = load i32, ptr @k
    %r438 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r436, i32 %r437
    %r439 = load float, ptr %r438
    %r440 = add i32 0,14
    %r441 = load i32, ptr @k
    %r442 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r440, i32 %r441
    %r443 = load i32, ptr %r442
    %r444 = add i32 0,35
    %r445 = load i32, ptr @k
    %r446 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r444, i32 %r445
    %r447 = load float, ptr %r446
    %r448 = call float @params_f40_i24(i32 %r195,i32 %r199,i32 %r203,float %r207,i32 %r211,i32 %r215,i32 %r219,float %r223,float %r227,float %r231,i32 %r235,float %r239,float %r243,i32 %r247,float %r251,i32 %r255,float %r259,float %r263,float %r267,float %r271,float %r275,float %r279,i32 %r283,float %r287,i32 %r291,i32 %r295,float %r299,float %r303,float %r307,float %r311,float %r315,i32 %r319,float %r323,i32 %r327,float %r331,float %r335,float %r339,float %r343,i32 %r347,i32 %r351,float %r355,float %r359,float %r363,i32 %r367,float %r371,i32 %r375,i32 %r379,float %r383,float %r387,float %r391,float %r395,i32 %r399,i32 %r403,i32 %r407,float %r411,float %r415,float %r419,float %r423,float %r427,float %r431,i32 %r435,float %r439,i32 %r443,float %r447)
    store float %r448, ptr %r191
    %r450 = add i32 0,0
    %r451 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r450
    %r452 = add i32 0,1
    %r453 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r452
    %r454 = add i32 0,2
    %r455 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r454
    %r456 = add i32 0,3
    %r457 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r456
    %r458 = add i32 0,4
    %r459 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r458
    %r460 = add i32 0,5
    %r461 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r460
    %r462 = add i32 0,6
    %r463 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r462
    %r464 = add i32 0,7
    %r465 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r464
    %r466 = add i32 0,8
    %r467 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r466
    %r468 = add i32 0,9
    %r469 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r468
    %r470 = add i32 0,10
    %r471 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r470
    %r472 = add i32 0,11
    %r473 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r472
    %r474 = add i32 0,12
    %r475 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r474
    %r476 = add i32 0,13
    %r477 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r476
    %r478 = add i32 0,14
    %r479 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r478
    %r480 = add i32 0,15
    %r481 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r480
    %r482 = add i32 0,16
    %r483 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r482
    %r484 = add i32 0,17
    %r485 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r484
    %r486 = add i32 0,18
    %r487 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r486
    %r488 = add i32 0,19
    %r489 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r488
    %r490 = add i32 0,20
    %r491 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r490
    %r492 = add i32 0,21
    %r493 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r492
    %r494 = add i32 0,22
    %r495 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r494
    %r496 = add i32 0,23
    %r497 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r496
    %r498 = add i32 0,24
    %r499 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r498
    %r500 = add i32 0,25
    %r501 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r500
    %r502 = add i32 0,26
    %r503 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r502
    %r504 = add i32 0,27
    %r505 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r504
    %r506 = add i32 0,28
    %r507 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r506
    %r508 = add i32 0,29
    %r509 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r508
    %r510 = add i32 0,30
    %r511 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r510
    %r512 = add i32 0,31
    %r513 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r512
    %r514 = add i32 0,32
    %r515 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r514
    %r516 = add i32 0,33
    %r517 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r516
    %r518 = add i32 0,34
    %r519 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r518
    %r520 = add i32 0,35
    %r521 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r520
    %r522 = add i32 0,36
    %r523 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r522
    %r524 = add i32 0,37
    %r525 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r524
    %r526 = add i32 0,38
    %r527 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r526
    %r528 = add i32 0,39
    %r529 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r528
    %r530 = call float @params_fa40(ptr %r451,ptr %r453,ptr %r455,ptr %r457,ptr %r459,ptr %r461,ptr %r463,ptr %r465,ptr %r467,ptr %r469,ptr %r471,ptr %r473,ptr %r475,ptr %r477,ptr %r479,ptr %r481,ptr %r483,ptr %r485,ptr %r487,ptr %r489,ptr %r491,ptr %r493,ptr %r495,ptr %r497,ptr %r499,ptr %r501,ptr %r503,ptr %r505,ptr %r507,ptr %r509,ptr %r511,ptr %r513,ptr %r515,ptr %r517,ptr %r519,ptr %r521,ptr %r523,ptr %r525,ptr %r527,ptr %r529)
    store float %r530, ptr %r449
    %r532 = add i32 0,0
    %r533 = load i32, ptr @k
    %r534 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r532, i32 %r533
    %r535 = load float, ptr %r534
    %r536 = add i32 0,0
    %r537 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r536
    %r538 = add i32 0,1
    %r539 = load i32, ptr @k
    %r540 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r538, i32 %r539
    %r541 = load i32, ptr %r540
    %r542 = add i32 0,1
    %r543 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r542
    %r544 = add i32 0,2
    %r545 = load i32, ptr @k
    %r546 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r544, i32 %r545
    %r547 = load float, ptr %r546
    %r548 = add i32 0,2
    %r549 = load i32, ptr @k
    %r550 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r548, i32 %r549
    %r551 = load i32, ptr %r550
    %r552 = add i32 0,3
    %r553 = load i32, ptr @k
    %r554 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r552, i32 %r553
    %r555 = load float, ptr %r554
    %r556 = add i32 0,4
    %r557 = load i32, ptr @k
    %r558 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r556, i32 %r557
    %r559 = load float, ptr %r558
    %r560 = add i32 0,5
    %r561 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r560
    %r562 = add i32 0,3
    %r563 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r562
    %r564 = add i32 0,4
    %r565 = load i32, ptr @k
    %r566 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r564, i32 %r565
    %r567 = load i32, ptr %r566
    %r568 = add i32 0,5
    %r569 = load i32, ptr @k
    %r570 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r568, i32 %r569
    %r571 = load i32, ptr %r570
    %r572 = add i32 0,6
    %r573 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r572
    %r574 = add i32 0,6
    %r575 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r574
    %r576 = add i32 0,7
    %r577 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r576
    %r578 = add i32 0,8
    %r579 = load i32, ptr @k
    %r580 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r578, i32 %r579
    %r581 = load i32, ptr %r580
    %r582 = add i32 0,7
    %r583 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r582
    %r584 = add i32 0,8
    %r585 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r584
    %r586 = add i32 0,9
    %r587 = load i32, ptr @k
    %r588 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r586, i32 %r587
    %r589 = load float, ptr %r588
    %r590 = add i32 0,10
    %r591 = load i32, ptr @k
    %r592 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r590, i32 %r591
    %r593 = load float, ptr %r592
    %r594 = add i32 0,11
    %r595 = load i32, ptr @k
    %r596 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r594, i32 %r595
    %r597 = load float, ptr %r596
    %r598 = add i32 0,12
    %r599 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r598
    %r600 = add i32 0,9
    %r601 = load i32, ptr @k
    %r602 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r600, i32 %r601
    %r603 = load i32, ptr %r602
    %r604 = add i32 0,13
    %r605 = load i32, ptr @k
    %r606 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r604, i32 %r605
    %r607 = load float, ptr %r606
    %r608 = add i32 0,14
    %r609 = load i32, ptr @k
    %r610 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r608, i32 %r609
    %r611 = load float, ptr %r610
    %r612 = add i32 0,15
    %r613 = load i32, ptr @k
    %r614 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r612, i32 %r613
    %r615 = load float, ptr %r614
    %r616 = add i32 0,10
    %r617 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r616
    %r618 = add i32 0,16
    %r619 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r618
    %r620 = add i32 0,11
    %r621 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r620
    %r622 = add i32 0,12
    %r623 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r622
    %r624 = add i32 0,17
    %r625 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r624
    %r626 = add i32 0,18
    %r627 = load i32, ptr @k
    %r628 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r626, i32 %r627
    %r629 = load float, ptr %r628
    %r630 = add i32 0,19
    %r631 = load i32, ptr @k
    %r632 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r630, i32 %r631
    %r633 = load float, ptr %r632
    %r634 = add i32 0,13
    %r635 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r634
    %r636 = add i32 0,14
    %r637 = load i32, ptr @k
    %r638 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r636, i32 %r637
    %r639 = load i32, ptr %r638
    %r640 = add i32 0,20
    %r641 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r640
    %r642 = add i32 0,21
    %r643 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r642
    %r644 = add i32 0,22
    %r645 = load i32, ptr @k
    %r646 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r644, i32 %r645
    %r647 = load float, ptr %r646
    %r648 = add i32 0,23
    %r649 = load i32, ptr @k
    %r650 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r648, i32 %r649
    %r651 = load float, ptr %r650
    %r652 = add i32 0,15
    %r653 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r652
    %r654 = add i32 0,16
    %r655 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r654
    %r656 = add i32 0,17
    %r657 = load i32, ptr @k
    %r658 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r656, i32 %r657
    %r659 = load i32, ptr %r658
    %r660 = add i32 0,18
    %r661 = load i32, ptr @k
    %r662 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r660, i32 %r661
    %r663 = load i32, ptr %r662
    %r664 = add i32 0,24
    %r665 = load i32, ptr @k
    %r666 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r664, i32 %r665
    %r667 = load float, ptr %r666
    %r668 = add i32 0,25
    %r669 = load i32, ptr @k
    %r670 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r668, i32 %r669
    %r671 = load float, ptr %r670
    %r672 = add i32 0,19
    %r673 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r672
    %r674 = add i32 0,20
    %r675 = load i32, ptr @k
    %r676 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r674, i32 %r675
    %r677 = load i32, ptr %r676
    %r678 = add i32 0,26
    %r679 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r678
    %r680 = add i32 0,21
    %r681 = load i32, ptr @k
    %r682 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r680, i32 %r681
    %r683 = load i32, ptr %r682
    %r684 = add i32 0,22
    %r685 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r684
    %r686 = add i32 0,23
    %r687 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r686
    %r688 = add i32 0,27
    %r689 = load i32, ptr @k
    %r690 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r688, i32 %r689
    %r691 = load float, ptr %r690
    %r692 = add i32 0,28
    %r693 = load i32, ptr @k
    %r694 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r692, i32 %r693
    %r695 = load float, ptr %r694
    %r696 = add i32 0,29
    %r697 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r696
    %r698 = add i32 0,0
    %r699 = load i32, ptr @k
    %r700 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r698, i32 %r699
    %r701 = load i32, ptr %r700
    %r702 = add i32 0,1
    %r703 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r702
    %r704 = add i32 0,30
    %r705 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r704
    %r706 = add i32 0,31
    %r707 = load i32, ptr @k
    %r708 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r706, i32 %r707
    %r709 = load float, ptr %r708
    %r710 = add i32 0,2
    %r711 = load i32, ptr @k
    %r712 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r710, i32 %r711
    %r713 = load i32, ptr %r712
    %r714 = add i32 0,32
    %r715 = load i32, ptr @k
    %r716 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r714, i32 %r715
    %r717 = load float, ptr %r716
    %r718 = add i32 0,33
    %r719 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r718
    %r720 = add i32 0,34
    %r721 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r720
    %r722 = add i32 0,35
    %r723 = load i32, ptr @k
    %r724 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r722, i32 %r723
    %r725 = load float, ptr %r724
    %r726 = add i32 0,3
    %r727 = load i32, ptr @k
    %r728 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r726, i32 %r727
    %r729 = load i32, ptr %r728
    %r730 = call i32 @params_mix(float %r535,ptr %r537,i32 %r541,ptr %r543,float %r547,i32 %r551,float %r555,float %r559,ptr %r561,ptr %r563,i32 %r567,i32 %r571,ptr %r573,ptr %r575,ptr %r577,i32 %r581,ptr %r583,ptr %r585,float %r589,float %r593,float %r597,ptr %r599,i32 %r603,float %r607,float %r611,float %r615,ptr %r617,ptr %r619,ptr %r621,ptr %r623,ptr %r625,float %r629,float %r633,ptr %r635,i32 %r639,ptr %r641,ptr %r643,float %r647,float %r651,ptr %r653,ptr %r655,i32 %r659,i32 %r663,float %r667,float %r671,ptr %r673,i32 %r677,ptr %r679,i32 %r683,ptr %r685,ptr %r687,float %r691,float %r695,ptr %r697,i32 %r701,ptr %r703,ptr %r705,float %r709,i32 %r713,float %r717,ptr %r719,ptr %r721,float %r725,i32 %r729)
    store i32 %r730, ptr %r531
    %r731 = load float, ptr %r29
    call void @putfloat(float %r731)
    %r732 = add i32 0,10
    call void @putch(i32 %r732)
    %r733 = load float, ptr %r191
    call void @putfloat(float %r733)
    %r734 = add i32 0,10
    call void @putch(i32 %r734)
    %r735 = load float, ptr %r449
    call void @putfloat(float %r735)
    %r736 = add i32 0,10
    call void @putch(i32 %r736)
    %r737 = load i32, ptr %r531
    call void @putint(i32 %r737)
    %r738 = add i32 0,10
    call void @putch(i32 %r738)
    %r739 = add i32 0,0
    ret i32 %r739
}
define float @params_fa40(ptr %r0,ptr %r1,ptr %r2,ptr %r3,ptr %r4,ptr %r5,ptr %r6,ptr %r7,ptr %r8,ptr %r9,ptr %r10,ptr %r11,ptr %r12,ptr %r13,ptr %r14,ptr %r15,ptr %r16,ptr %r17,ptr %r18,ptr %r19,ptr %r20,ptr %r21,ptr %r22,ptr %r23,ptr %r24,ptr %r25,ptr %r26,ptr %r27,ptr %r28,ptr %r29,ptr %r30,ptr %r31,ptr %r32,ptr %r33,ptr %r34,ptr %r35,ptr %r36,ptr %r37,ptr %r38,ptr %r39)
{
L0:
    %r40 = alloca [10 x float]
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
    %r207 = zext i1 %r206 to i32
    %r208 = add i32 0,0
    %r209 = icmp ne i32 %r207,%r208
    %r210 = zext i1 %r209 to i32
    %r211 = fadd float 0x0,0x0
    %r212 = sitofp i32 %r210 to float
    %r213 = fcmp one float %r212,%r211
    %r214 = zext i1 %r213 to i32
    %r215 = fadd float 0x0,0x0
    %r216 = sitofp i32 %r214 to float
    %r217 = fcmp one float %r216,%r215
    br i1 %r217, label %L1, label %L2
L1:
    %r220 = add i32 0,10
    %r221 = getelementptr float, ptr %r40, i32 0
    call void @putfarray(i32 %r220,ptr %r221)
    %r222 = load i32, ptr @k
    %r223 = getelementptr [10 x float], ptr %r40, i32 0, i32 %r222
    %r224 = load float, ptr %r223
    ret float %r224
L2:
    %r225 = getelementptr float, ptr %r1
    %r226 = getelementptr float, ptr %r2
    %r227 = getelementptr float, ptr %r3
    %r228 = getelementptr float, ptr %r4
    %r229 = getelementptr float, ptr %r5
    %r230 = getelementptr float, ptr %r6
    %r231 = getelementptr float, ptr %r7
    %r232 = getelementptr float, ptr %r8
    %r233 = getelementptr float, ptr %r9
    %r234 = getelementptr float, ptr %r10
    %r235 = getelementptr float, ptr %r11
    %r236 = getelementptr float, ptr %r12
    %r237 = getelementptr float, ptr %r13
    %r238 = getelementptr float, ptr %r14
    %r239 = getelementptr float, ptr %r15
    %r240 = getelementptr float, ptr %r16
    %r241 = getelementptr float, ptr %r17
    %r242 = getelementptr float, ptr %r18
    %r243 = getelementptr float, ptr %r19
    %r244 = getelementptr float, ptr %r20
    %r245 = getelementptr float, ptr %r21
    %r246 = getelementptr float, ptr %r22
    %r247 = getelementptr float, ptr %r23
    %r248 = getelementptr float, ptr %r24
    %r249 = getelementptr float, ptr %r25
    %r250 = getelementptr float, ptr %r26
    %r251 = getelementptr float, ptr %r27
    %r252 = getelementptr float, ptr %r28
    %r253 = getelementptr float, ptr %r29
    %r254 = getelementptr float, ptr %r30
    %r255 = getelementptr float, ptr %r31
    %r256 = getelementptr float, ptr %r32
    %r257 = getelementptr float, ptr %r33
    %r258 = getelementptr float, ptr %r34
    %r259 = getelementptr float, ptr %r35
    %r260 = getelementptr float, ptr %r36
    %r261 = getelementptr float, ptr %r37
    %r262 = getelementptr float, ptr %r38
    %r263 = getelementptr float, ptr %r39
    %r264 = getelementptr float, ptr %r40, i32 0
    %r265 = call float @params_fa40(ptr %r225,ptr %r226,ptr %r227,ptr %r228,ptr %r229,ptr %r230,ptr %r231,ptr %r232,ptr %r233,ptr %r234,ptr %r235,ptr %r236,ptr %r237,ptr %r238,ptr %r239,ptr %r240,ptr %r241,ptr %r242,ptr %r243,ptr %r244,ptr %r245,ptr %r246,ptr %r247,ptr %r248,ptr %r249,ptr %r250,ptr %r251,ptr %r252,ptr %r253,ptr %r254,ptr %r255,ptr %r256,ptr %r257,ptr %r258,ptr %r259,ptr %r260,ptr %r261,ptr %r262,ptr %r263,ptr %r264)
    ret float %r265
}
define i32 @params_mix(float %r0,ptr %r1,i32 %r2,ptr %r3,float %r4,i32 %r5,float %r6,float %r7,ptr %r8,ptr %r9,i32 %r10,i32 %r11,ptr %r12,ptr %r13,ptr %r14,i32 %r15,ptr %r16,ptr %r17,float %r18,float %r19,float %r20,ptr %r21,i32 %r22,float %r23,float %r24,float %r25,ptr %r26,ptr %r27,ptr %r28,ptr %r29,ptr %r30,float %r31,float %r32,ptr %r33,i32 %r34,ptr %r35,ptr %r36,float %r37,float %r38,ptr %r39,ptr %r40,i32 %r41,i32 %r42,float %r43,float %r44,ptr %r45,i32 %r46,ptr %r47,i32 %r48,ptr %r49,ptr %r50,float %r51,float %r52,ptr %r53,i32 %r54,ptr %r55,ptr %r56,float %r57,i32 %r58,float %r59,ptr %r60,ptr %r61,float %r62,i32 %r63)
{
L0:
    %r296 = alloca i32
    %r202 = alloca [10 x i32]
    %r99 = alloca [10 x float]
    %r64 = alloca float
    store float %r0, ptr %r64
    %r65 = alloca i32
    store i32 %r2, ptr %r65
    %r66 = alloca float
    store float %r4, ptr %r66
    %r67 = alloca i32
    store i32 %r5, ptr %r67
    %r68 = alloca float
    store float %r6, ptr %r68
    %r69 = alloca float
    store float %r7, ptr %r69
    %r70 = alloca i32
    store i32 %r10, ptr %r70
    %r71 = alloca i32
    store i32 %r11, ptr %r71
    %r72 = alloca i32
    store i32 %r15, ptr %r72
    %r73 = alloca float
    store float %r18, ptr %r73
    %r74 = alloca float
    store float %r19, ptr %r74
    %r75 = alloca float
    store float %r20, ptr %r75
    %r76 = alloca i32
    store i32 %r22, ptr %r76
    %r77 = alloca float
    store float %r23, ptr %r77
    %r78 = alloca float
    store float %r24, ptr %r78
    %r79 = alloca float
    store float %r25, ptr %r79
    %r80 = alloca float
    store float %r31, ptr %r80
    %r81 = alloca float
    store float %r32, ptr %r81
    %r82 = alloca i32
    store i32 %r34, ptr %r82
    %r83 = alloca float
    store float %r37, ptr %r83
    %r84 = alloca float
    store float %r38, ptr %r84
    %r85 = alloca i32
    store i32 %r41, ptr %r85
    %r86 = alloca i32
    store i32 %r42, ptr %r86
    %r87 = alloca float
    store float %r43, ptr %r87
    %r88 = alloca float
    store float %r44, ptr %r88
    %r89 = alloca i32
    store i32 %r46, ptr %r89
    %r90 = alloca i32
    store i32 %r48, ptr %r90
    %r91 = alloca float
    store float %r51, ptr %r91
    %r92 = alloca float
    store float %r52, ptr %r92
    %r93 = alloca i32
    store i32 %r54, ptr %r93
    %r94 = alloca float
    store float %r57, ptr %r94
    %r95 = alloca i32
    store i32 %r58, ptr %r95
    %r96 = alloca float
    store float %r59, ptr %r96
    %r97 = alloca float
    store float %r62, ptr %r97
    %r98 = alloca i32
    store i32 %r63, ptr %r98
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
    br i1 %r289, label %L1, label %L2
L1:
    %r292 = add i32 0,10
    %r293 = getelementptr float, ptr %r99, i32 0
    call void @putfarray(i32 %r292,ptr %r293)
    %r294 = add i32 0,10
    %r295 = getelementptr i32, ptr %r202, i32 0
    call void @putarray(i32 %r294,ptr %r295)
    %r297 = add i32 0,0
    store i32 %r297, ptr %r296
    br label %L4
L2:
    %r326 = load float, ptr %r64
    %r327 = getelementptr i32, ptr %r202, i32 0
    %r328 = load i32, ptr %r65
    %r329 = getelementptr float, ptr %r99, i32 0
    %r330 = load float, ptr %r66
    %r331 = load i32, ptr %r67
    %r332 = load float, ptr %r68
    %r333 = load float, ptr %r69
    %r334 = getelementptr float, ptr %r8
    %r335 = getelementptr i32, ptr %r9
    %r336 = load i32, ptr %r70
    %r337 = load i32, ptr %r71
    %r338 = getelementptr float, ptr %r12
    %r339 = getelementptr i32, ptr %r13
    %r340 = getelementptr i32, ptr %r14
    %r341 = load i32, ptr %r72
    %r342 = getelementptr float, ptr %r16
    %r343 = getelementptr float, ptr %r17
    %r344 = load float, ptr %r73
    %r345 = load float, ptr %r74
    %r346 = load float, ptr %r75
    %r347 = getelementptr float, ptr %r21
    %r348 = load i32, ptr %r76
    %r349 = load float, ptr %r77
    %r350 = load float, ptr %r78
    %r351 = load float, ptr %r79
    %r352 = getelementptr i32, ptr %r26
    %r353 = getelementptr float, ptr %r27
    %r354 = getelementptr i32, ptr %r28
    %r355 = getelementptr i32, ptr %r29
    %r356 = getelementptr float, ptr %r30
    %r357 = load float, ptr %r80
    %r358 = load float, ptr %r81
    %r359 = getelementptr i32, ptr %r33
    %r360 = load i32, ptr %r82
    %r361 = getelementptr float, ptr %r35
    %r362 = getelementptr float, ptr %r36
    %r363 = load float, ptr %r83
    %r364 = load float, ptr %r84
    %r365 = getelementptr i32, ptr %r39
    %r366 = getelementptr i32, ptr %r40
    %r367 = load i32, ptr %r85
    %r368 = load i32, ptr %r86
    %r369 = load float, ptr %r87
    %r370 = load float, ptr %r88
    %r371 = getelementptr i32, ptr %r45
    %r372 = load i32, ptr %r89
    %r373 = getelementptr float, ptr %r47
    %r374 = load i32, ptr %r90
    %r375 = getelementptr i32, ptr %r49
    %r376 = getelementptr i32, ptr %r50
    %r377 = load float, ptr %r91
    %r378 = load float, ptr %r92
    %r379 = getelementptr float, ptr %r53
    %r380 = load i32, ptr %r93
    %r381 = getelementptr i32, ptr %r55
    %r382 = getelementptr float, ptr %r56
    %r383 = load float, ptr %r94
    %r384 = load i32, ptr %r95
    %r385 = load float, ptr %r96
    %r386 = getelementptr float, ptr %r60
    %r387 = getelementptr float, ptr %r61
    %r388 = load i32, ptr %r98
    %r389 = sitofp i32 %r388 to float
    %r390 = load float, ptr %r97
    %r391 = fptosi float %r390 to i32
    %r392 = call i32 @params_mix(float %r326,ptr %r327,i32 %r328,ptr %r329,float %r330,i32 %r331,float %r332,float %r333,ptr %r334,ptr %r335,i32 %r336,i32 %r337,ptr %r338,ptr %r339,ptr %r340,i32 %r341,ptr %r342,ptr %r343,float %r344,float %r345,float %r346,ptr %r347,i32 %r348,float %r349,float %r350,float %r351,ptr %r352,ptr %r353,ptr %r354,ptr %r355,ptr %r356,float %r357,float %r358,ptr %r359,i32 %r360,ptr %r361,ptr %r362,float %r363,float %r364,ptr %r365,ptr %r366,i32 %r367,i32 %r368,float %r369,float %r370,ptr %r371,i32 %r372,ptr %r373,i32 %r374,ptr %r375,ptr %r376,float %r377,float %r378,ptr %r379,i32 %r380,ptr %r381,ptr %r382,float %r383,i32 %r384,float %r385,ptr %r386,ptr %r387,float %r389,i32 %r391)
    ret i32 %r392
L4:
    %r298 = load i32, ptr %r296
    %r299 = add i32 0,10
    %r300 = icmp slt i32 %r298,%r299
    br i1 %r300, label %L5, label %L6
L5:
    %r303 = load i32, ptr %r296
    %r304 = getelementptr [10 x i32], ptr %r202, i32 0, i32 %r303
    %r305 = load i32, ptr %r304
    %r306 = load i32, ptr %r296
    %r307 = getelementptr [10 x float], ptr %r99, i32 0, i32 %r306
    %r308 = load float, ptr %r307
    %r309 = sitofp i32 %r305 to float
    %r310 = fsub float %r309,%r308
    %r311 = load i32, ptr %r296
    %r312 = getelementptr [10 x i32], ptr %r202, i32 0, i32 %r311
    %r313 = fptosi float %r310 to i32
    store i32 %r313, ptr %r312
    %r314 = load i32, ptr %r296
    %r315 = add i32 0,1
    %r316 = add i32 %r314,%r315
    store i32 %r316, ptr %r296
    br label %L4
L6:
    %r317 = load i32, ptr @k
    %r318 = getelementptr [10 x i32], ptr %r202, i32 0, i32 %r317
    %r319 = load i32, ptr %r318
    %r320 = add i32 0,8
    %r321 = getelementptr [10 x float], ptr %r99, i32 0, i32 %r320
    %r322 = load float, ptr %r321
    %r323 = sitofp i32 %r319 to float
    %r324 = fmul float %r323,%r322
    %r325 = fptosi float %r324 to i32
    ret i32 %r325
}
define float @params_f40_i24(i32 %r0,i32 %r1,i32 %r2,float %r3,i32 %r4,i32 %r5,i32 %r6,float %r7,float %r8,float %r9,i32 %r10,float %r11,float %r12,i32 %r13,float %r14,i32 %r15,float %r16,float %r17,float %r18,float %r19,float %r20,float %r21,i32 %r22,float %r23,i32 %r24,i32 %r25,float %r26,float %r27,float %r28,float %r29,float %r30,i32 %r31,float %r32,i32 %r33,float %r34,float %r35,float %r36,float %r37,i32 %r38,i32 %r39,float %r40,float %r41,float %r42,i32 %r43,float %r44,i32 %r45,i32 %r46,float %r47,float %r48,float %r49,float %r50,i32 %r51,i32 %r52,i32 %r53,float %r54,float %r55,float %r56,float %r57,float %r58,float %r59,i32 %r60,float %r61,i32 %r62,float %r63)
{
L0:
    %r267 = alloca i32
    %r214 = alloca [8 x i32]
    %r133 = alloca [10 x float]
    %r64 = alloca i32
    store i32 %r0, ptr %r64
    %r65 = alloca i32
    store i32 %r1, ptr %r65
    %r66 = alloca i32
    store i32 %r2, ptr %r66
    %r67 = alloca float
    store float %r3, ptr %r67
    %r68 = alloca i32
    store i32 %r4, ptr %r68
    %r69 = alloca i32
    store i32 %r5, ptr %r69
    %r70 = alloca i32
    store i32 %r6, ptr %r70
    %r71 = alloca float
    store float %r7, ptr %r71
    %r72 = alloca float
    store float %r8, ptr %r72
    %r73 = alloca float
    store float %r9, ptr %r73
    %r74 = alloca i32
    store i32 %r10, ptr %r74
    %r75 = alloca float
    store float %r11, ptr %r75
    %r76 = alloca float
    store float %r12, ptr %r76
    %r77 = alloca i32
    store i32 %r13, ptr %r77
    %r78 = alloca float
    store float %r14, ptr %r78
    %r79 = alloca i32
    store i32 %r15, ptr %r79
    %r80 = alloca float
    store float %r16, ptr %r80
    %r81 = alloca float
    store float %r17, ptr %r81
    %r82 = alloca float
    store float %r18, ptr %r82
    %r83 = alloca float
    store float %r19, ptr %r83
    %r84 = alloca float
    store float %r20, ptr %r84
    %r85 = alloca float
    store float %r21, ptr %r85
    %r86 = alloca i32
    store i32 %r22, ptr %r86
    %r87 = alloca float
    store float %r23, ptr %r87
    %r88 = alloca i32
    store i32 %r24, ptr %r88
    %r89 = alloca i32
    store i32 %r25, ptr %r89
    %r90 = alloca float
    store float %r26, ptr %r90
    %r91 = alloca float
    store float %r27, ptr %r91
    %r92 = alloca float
    store float %r28, ptr %r92
    %r93 = alloca float
    store float %r29, ptr %r93
    %r94 = alloca float
    store float %r30, ptr %r94
    %r95 = alloca i32
    store i32 %r31, ptr %r95
    %r96 = alloca float
    store float %r32, ptr %r96
    %r97 = alloca i32
    store i32 %r33, ptr %r97
    %r98 = alloca float
    store float %r34, ptr %r98
    %r99 = alloca float
    store float %r35, ptr %r99
    %r100 = alloca float
    store float %r36, ptr %r100
    %r101 = alloca float
    store float %r37, ptr %r101
    %r102 = alloca i32
    store i32 %r38, ptr %r102
    %r103 = alloca i32
    store i32 %r39, ptr %r103
    %r104 = alloca float
    store float %r40, ptr %r104
    %r105 = alloca float
    store float %r41, ptr %r105
    %r106 = alloca float
    store float %r42, ptr %r106
    %r107 = alloca i32
    store i32 %r43, ptr %r107
    %r108 = alloca float
    store float %r44, ptr %r108
    %r109 = alloca i32
    store i32 %r45, ptr %r109
    %r110 = alloca i32
    store i32 %r46, ptr %r110
    %r111 = alloca float
    store float %r47, ptr %r111
    %r112 = alloca float
    store float %r48, ptr %r112
    %r113 = alloca float
    store float %r49, ptr %r113
    %r114 = alloca float
    store float %r50, ptr %r114
    %r115 = alloca i32
    store i32 %r51, ptr %r115
    %r116 = alloca i32
    store i32 %r52, ptr %r116
    %r117 = alloca i32
    store i32 %r53, ptr %r117
    %r118 = alloca float
    store float %r54, ptr %r118
    %r119 = alloca float
    store float %r55, ptr %r119
    %r120 = alloca float
    store float %r56, ptr %r120
    %r121 = alloca float
    store float %r57, ptr %r121
    %r122 = alloca float
    store float %r58, ptr %r122
    %r123 = alloca float
    store float %r59, ptr %r123
    %r124 = alloca i32
    store i32 %r60, ptr %r124
    %r125 = alloca float
    store float %r61, ptr %r125
    %r126 = alloca i32
    store i32 %r62, ptr %r126
    %r127 = alloca float
    store float %r63, ptr %r127
    %r128 = load i32, ptr %r64
    %r129 = add i32 0,0
    %r130 = icmp ne i32 %r128,%r129
    br i1 %r130, label %L1, label %L2
L1:
    call void @llvm.memset.p0.i32(ptr %r133,i8 0,i32 40,i1 0)
    %r134 = load float, ptr %r106
    %r135 = load float, ptr %r82
    %r136 = fadd float %r134,%r135
    %r137 = load float, ptr %r125
    %r138 = fadd float %r136,%r137
    %r139 = load float, ptr %r75
    %r140 = fadd float %r138,%r139
    %r141 = getelementptr [10 x float], ptr %r133, i32 0, i32 0
    store float %r140, ptr %r141
    %r142 = load float, ptr %r67
    %r143 = load float, ptr %r100
    %r144 = fadd float %r142,%r143
    %r145 = load float, ptr %r85
    %r146 = fadd float %r144,%r145
    %r147 = load float, ptr %r73
    %r148 = fadd float %r146,%r147
    %r149 = getelementptr [10 x float], ptr %r133, i32 0, i32 1
    store float %r148, ptr %r149
    %r150 = load float, ptr %r71
    %r151 = load float, ptr %r93
    %r152 = fadd float %r150,%r151
    %r153 = load float, ptr %r105
    %r154 = fadd float %r152,%r153
    %r155 = load float, ptr %r83
    %r156 = fadd float %r154,%r155
    %r157 = getelementptr [10 x float], ptr %r133, i32 0, i32 2
    store float %r156, ptr %r157
    %r158 = load float, ptr %r81
    %r159 = load float, ptr %r113
    %r160 = fadd float %r158,%r159
    %r161 = load float, ptr %r104
    %r162 = fadd float %r160,%r161
    %r163 = load float, ptr %r72
    %r164 = fadd float %r162,%r163
    %r165 = getelementptr [10 x float], ptr %r133, i32 0, i32 3
    store float %r164, ptr %r165
    %r166 = load float, ptr %r99
    %r167 = load float, ptr %r123
    %r168 = fadd float %r166,%r167
    %r169 = load float, ptr %r118
    %r170 = fadd float %r168,%r169
    %r171 = load float, ptr %r119
    %r172 = fadd float %r170,%r171
    %r173 = getelementptr [10 x float], ptr %r133, i32 0, i32 4
    store float %r172, ptr %r173
    %r174 = load float, ptr %r90
    %r175 = load float, ptr %r98
    %r176 = fadd float %r174,%r175
    %r177 = load float, ptr %r120
    %r178 = fadd float %r176,%r177
    %r179 = load float, ptr %r92
    %r180 = fadd float %r178,%r179
    %r181 = getelementptr [10 x float], ptr %r133, i32 0, i32 5
    store float %r180, ptr %r181
    %r182 = load float, ptr %r112
    %r183 = load float, ptr %r94
    %r184 = fadd float %r182,%r183
    %r185 = load float, ptr %r121
    %r186 = fadd float %r184,%r185
    %r187 = load float, ptr %r111
    %r188 = fadd float %r186,%r187
    %r189 = getelementptr [10 x float], ptr %r133, i32 0, i32 6
    store float %r188, ptr %r189
    %r190 = load float, ptr %r76
    %r191 = load float, ptr %r114
    %r192 = fadd float %r190,%r191
    %r193 = load float, ptr %r80
    %r194 = fadd float %r192,%r193
    %r195 = load float, ptr %r108
    %r196 = fadd float %r194,%r195
    %r197 = getelementptr [10 x float], ptr %r133, i32 0, i32 7
    store float %r196, ptr %r197
    %r198 = load float, ptr %r87
    %r199 = load float, ptr %r91
    %r200 = fadd float %r198,%r199
    %r201 = load float, ptr %r101
    %r202 = fadd float %r200,%r201
    %r203 = load float, ptr %r127
    %r204 = fadd float %r202,%r203
    %r205 = getelementptr [10 x float], ptr %r133, i32 0, i32 8
    store float %r204, ptr %r205
    %r206 = load float, ptr %r122
    %r207 = load float, ptr %r78
    %r208 = fadd float %r206,%r207
    %r209 = load float, ptr %r84
    %r210 = fadd float %r208,%r209
    %r211 = load float, ptr %r96
    %r212 = fadd float %r210,%r211
    %r213 = getelementptr [10 x float], ptr %r133, i32 0, i32 9
    store float %r212, ptr %r213
    call void @llvm.memset.p0.i32(ptr %r214,i8 0,i32 32,i1 0)
    %r215 = load i32, ptr %r77
    %r216 = load i32, ptr %r68
    %r217 = add i32 %r215,%r216
    %r218 = load i32, ptr %r65
    %r219 = add i32 %r217,%r218
    %r220 = getelementptr [8 x i32], ptr %r214, i32 0, i32 0
    store i32 %r219, ptr %r220
    %r221 = load i32, ptr %r115
    %r222 = load i32, ptr %r69
    %r223 = add i32 %r221,%r222
    %r224 = load i32, ptr %r70
    %r225 = add i32 %r223,%r224
    %r226 = getelementptr [8 x i32], ptr %r214, i32 0, i32 1
    store i32 %r225, ptr %r226
    %r227 = load i32, ptr %r66
    %r228 = load i32, ptr %r86
    %r229 = add i32 %r227,%r228
    %r230 = load i32, ptr %r95
    %r231 = add i32 %r229,%r230
    %r232 = getelementptr [8 x i32], ptr %r214, i32 0, i32 2
    store i32 %r231, ptr %r232
    %r233 = load i32, ptr %r103
    %r234 = load i32, ptr %r88
    %r235 = add i32 %r233,%r234
    %r236 = load i32, ptr %r109
    %r237 = add i32 %r235,%r236
    %r238 = getelementptr [8 x i32], ptr %r214, i32 0, i32 3
    store i32 %r237, ptr %r238
    %r239 = load i32, ptr %r107
    %r240 = load i32, ptr %r89
    %r241 = add i32 %r239,%r240
    %r242 = load i32, ptr %r126
    %r243 = add i32 %r241,%r242
    %r244 = getelementptr [8 x i32], ptr %r214, i32 0, i32 4
    store i32 %r243, ptr %r244
    %r245 = load i32, ptr %r124
    %r246 = load i32, ptr %r110
    %r247 = add i32 %r245,%r246
    %r248 = load i32, ptr %r97
    %r249 = add i32 %r247,%r248
    %r250 = getelementptr [8 x i32], ptr %r214, i32 0, i32 5
    store i32 %r249, ptr %r250
    %r251 = load i32, ptr %r102
    %r252 = load i32, ptr %r79
    %r253 = add i32 %r251,%r252
    %r254 = load i32, ptr %r117
    %r255 = add i32 %r253,%r254
    %r256 = getelementptr [8 x i32], ptr %r214, i32 0, i32 6
    store i32 %r255, ptr %r256
    %r257 = load i32, ptr %r116
    %r258 = load i32, ptr %r74
    %r259 = add i32 %r257,%r258
    %r260 = load i32, ptr %r64
    %r261 = add i32 %r259,%r260
    %r262 = getelementptr [8 x i32], ptr %r214, i32 0, i32 7
    store i32 %r261, ptr %r262
    %r263 = add i32 0,10
    %r264 = getelementptr float, ptr %r133, i32 0
    call void @putfarray(i32 %r263,ptr %r264)
    %r265 = add i32 0,8
    %r266 = getelementptr i32, ptr %r214, i32 0
    call void @putarray(i32 %r265,ptr %r266)
    %r268 = add i32 0,0
    store i32 %r268, ptr %r267
    br label %L4
L2:
    %r292 = load i32, ptr %r68
    %r293 = load i32, ptr %r65
    %r294 = load i32, ptr %r66
    %r295 = load float, ptr %r67
    %r296 = load i32, ptr %r68
    %r297 = load i32, ptr %r69
    %r298 = load i32, ptr %r70
    %r299 = load float, ptr %r71
    %r300 = load float, ptr %r72
    %r301 = load float, ptr %r73
    %r302 = load i32, ptr %r74
    %r303 = load float, ptr %r75
    %r304 = load float, ptr %r76
    %r305 = load i32, ptr %r77
    %r306 = load float, ptr %r78
    %r307 = load i32, ptr %r79
    %r308 = load float, ptr %r80
    %r309 = load float, ptr %r81
    %r310 = load float, ptr %r82
    %r311 = load float, ptr %r83
    %r312 = load float, ptr %r84
    %r313 = load float, ptr %r85
    %r314 = load i32, ptr %r86
    %r315 = load float, ptr %r87
    %r316 = load i32, ptr %r88
    %r317 = load i32, ptr %r89
    %r318 = load float, ptr %r90
    %r319 = load float, ptr %r91
    %r320 = load float, ptr %r92
    %r321 = load float, ptr %r93
    %r322 = load float, ptr %r94
    %r323 = load i32, ptr %r95
    %r324 = load float, ptr %r96
    %r325 = load i32, ptr %r97
    %r326 = load float, ptr %r98
    %r327 = load float, ptr %r99
    %r328 = load float, ptr %r100
    %r329 = load float, ptr %r101
    %r330 = load i32, ptr %r102
    %r331 = load i32, ptr %r103
    %r332 = load float, ptr %r104
    %r333 = load float, ptr %r105
    %r334 = load float, ptr %r106
    %r335 = load i32, ptr %r107
    %r336 = load float, ptr %r108
    %r337 = load i32, ptr %r109
    %r338 = load i32, ptr %r110
    %r339 = load float, ptr %r111
    %r340 = load float, ptr %r112
    %r341 = load float, ptr %r113
    %r342 = load float, ptr %r114
    %r343 = load i32, ptr %r115
    %r344 = load i32, ptr %r116
    %r345 = load i32, ptr %r117
    %r346 = load float, ptr %r118
    %r347 = load float, ptr %r119
    %r348 = load float, ptr %r120
    %r349 = load float, ptr %r121
    %r350 = load float, ptr %r122
    %r351 = load float, ptr %r123
    %r352 = load i32, ptr %r124
    %r353 = load float, ptr %r125
    %r354 = load i32, ptr %r126
    %r355 = load float, ptr %r127
    %r356 = call float @params_f40_i24(i32 %r292,i32 %r293,i32 %r294,float %r295,i32 %r296,i32 %r297,i32 %r298,float %r299,float %r300,float %r301,i32 %r302,float %r303,float %r304,i32 %r305,float %r306,i32 %r307,float %r308,float %r309,float %r310,float %r311,float %r312,float %r313,i32 %r314,float %r315,i32 %r316,i32 %r317,float %r318,float %r319,float %r320,float %r321,float %r322,i32 %r323,float %r324,i32 %r325,float %r326,float %r327,float %r328,float %r329,i32 %r330,i32 %r331,float %r332,float %r333,float %r334,i32 %r335,float %r336,i32 %r337,i32 %r338,float %r339,float %r340,float %r341,float %r342,i32 %r343,i32 %r344,i32 %r345,float %r346,float %r347,float %r348,float %r349,float %r350,float %r351,i32 %r352,float %r353,i32 %r354,float %r355)
    ret float %r356
L4:
    %r269 = load i32, ptr %r267
    %r270 = add i32 0,8
    %r271 = icmp slt i32 %r269,%r270
    br i1 %r271, label %L5, label %L6
L5:
    %r274 = load i32, ptr %r267
    %r275 = getelementptr [8 x i32], ptr %r214, i32 0, i32 %r274
    %r276 = load i32, ptr %r275
    %r277 = load i32, ptr %r267
    %r278 = getelementptr [10 x float], ptr %r133, i32 0, i32 %r277
    %r279 = load float, ptr %r278
    %r280 = sitofp i32 %r276 to float
    %r281 = fsub float %r280,%r279
    %r282 = load i32, ptr %r267
    %r283 = getelementptr [8 x i32], ptr %r214, i32 0, i32 %r282
    %r284 = fptosi float %r281 to i32
    store i32 %r284, ptr %r283
    %r285 = load i32, ptr %r267
    %r286 = add i32 0,1
    %r287 = add i32 %r285,%r286
    store i32 %r287, ptr %r267
    br label %L4
L6:
    %r288 = load i32, ptr @k
    %r289 = getelementptr [8 x i32], ptr %r214, i32 0, i32 %r288
    %r290 = load i32, ptr %r289
    %r291 = sitofp i32 %r290 to float
    ret float %r291
}
define float @params_f40(float %r0,float %r1,float %r2,float %r3,float %r4,float %r5,float %r6,float %r7,float %r8,float %r9,float %r10,float %r11,float %r12,float %r13,float %r14,float %r15,float %r16,float %r17,float %r18,float %r19,float %r20,float %r21,float %r22,float %r23,float %r24,float %r25,float %r26,float %r27,float %r28,float %r29,float %r30,float %r31,float %r32,float %r33,float %r34,float %r35,float %r36,float %r37,float %r38,float %r39)
{
L0:
    %r86 = alloca [10 x float]
    %r40 = alloca float
    store float %r0, ptr %r40
    %r41 = alloca float
    store float %r1, ptr %r41
    %r42 = alloca float
    store float %r2, ptr %r42
    %r43 = alloca float
    store float %r3, ptr %r43
    %r44 = alloca float
    store float %r4, ptr %r44
    %r45 = alloca float
    store float %r5, ptr %r45
    %r46 = alloca float
    store float %r6, ptr %r46
    %r47 = alloca float
    store float %r7, ptr %r47
    %r48 = alloca float
    store float %r8, ptr %r48
    %r49 = alloca float
    store float %r9, ptr %r49
    %r50 = alloca float
    store float %r10, ptr %r50
    %r51 = alloca float
    store float %r11, ptr %r51
    %r52 = alloca float
    store float %r12, ptr %r52
    %r53 = alloca float
    store float %r13, ptr %r53
    %r54 = alloca float
    store float %r14, ptr %r54
    %r55 = alloca float
    store float %r15, ptr %r55
    %r56 = alloca float
    store float %r16, ptr %r56
    %r57 = alloca float
    store float %r17, ptr %r57
    %r58 = alloca float
    store float %r18, ptr %r58
    %r59 = alloca float
    store float %r19, ptr %r59
    %r60 = alloca float
    store float %r20, ptr %r60
    %r61 = alloca float
    store float %r21, ptr %r61
    %r62 = alloca float
    store float %r22, ptr %r62
    %r63 = alloca float
    store float %r23, ptr %r63
    %r64 = alloca float
    store float %r24, ptr %r64
    %r65 = alloca float
    store float %r25, ptr %r65
    %r66 = alloca float
    store float %r26, ptr %r66
    %r67 = alloca float
    store float %r27, ptr %r67
    %r68 = alloca float
    store float %r28, ptr %r68
    %r69 = alloca float
    store float %r29, ptr %r69
    %r70 = alloca float
    store float %r30, ptr %r70
    %r71 = alloca float
    store float %r31, ptr %r71
    %r72 = alloca float
    store float %r32, ptr %r72
    %r73 = alloca float
    store float %r33, ptr %r73
    %r74 = alloca float
    store float %r34, ptr %r74
    %r75 = alloca float
    store float %r35, ptr %r75
    %r76 = alloca float
    store float %r36, ptr %r76
    %r77 = alloca float
    store float %r37, ptr %r77
    %r78 = alloca float
    store float %r38, ptr %r78
    %r79 = alloca float
    store float %r39, ptr %r79
    %r80 = load float, ptr %r79
    %r81 = add i32 0,0
    %r82 = sitofp i32 %r81 to float
    %r83 = fcmp one float %r80,%r82
    br i1 %r83, label %L1, label %L2
L1:
    call void @llvm.memset.p0.i32(ptr %r86,i8 0,i32 40,i1 0)
    %r87 = load float, ptr %r40
    %r88 = load float, ptr %r41
    %r89 = fadd float %r87,%r88
    %r90 = load float, ptr %r42
    %r91 = fadd float %r89,%r90
    %r92 = load float, ptr %r43
    %r93 = fadd float %r91,%r92
    %r94 = getelementptr [10 x float], ptr %r86, i32 0, i32 0
    store float %r93, ptr %r94
    %r95 = load float, ptr %r44
    %r96 = load float, ptr %r45
    %r97 = fadd float %r95,%r96
    %r98 = load float, ptr %r46
    %r99 = fadd float %r97,%r98
    %r100 = load float, ptr %r47
    %r101 = fadd float %r99,%r100
    %r102 = getelementptr [10 x float], ptr %r86, i32 0, i32 1
    store float %r101, ptr %r102
    %r103 = load float, ptr %r48
    %r104 = load float, ptr %r49
    %r105 = fadd float %r103,%r104
    %r106 = load float, ptr %r50
    %r107 = fadd float %r105,%r106
    %r108 = load float, ptr %r51
    %r109 = fadd float %r107,%r108
    %r110 = getelementptr [10 x float], ptr %r86, i32 0, i32 2
    store float %r109, ptr %r110
    %r111 = load float, ptr %r52
    %r112 = load float, ptr %r53
    %r113 = fadd float %r111,%r112
    %r114 = load float, ptr %r54
    %r115 = fadd float %r113,%r114
    %r116 = load float, ptr %r55
    %r117 = fadd float %r115,%r116
    %r118 = getelementptr [10 x float], ptr %r86, i32 0, i32 3
    store float %r117, ptr %r118
    %r119 = load float, ptr %r56
    %r120 = load float, ptr %r57
    %r121 = fadd float %r119,%r120
    %r122 = load float, ptr %r58
    %r123 = fadd float %r121,%r122
    %r124 = load float, ptr %r59
    %r125 = fadd float %r123,%r124
    %r126 = getelementptr [10 x float], ptr %r86, i32 0, i32 4
    store float %r125, ptr %r126
    %r127 = load float, ptr %r60
    %r128 = load float, ptr %r61
    %r129 = fadd float %r127,%r128
    %r130 = load float, ptr %r62
    %r131 = fadd float %r129,%r130
    %r132 = load float, ptr %r63
    %r133 = fadd float %r131,%r132
    %r134 = getelementptr [10 x float], ptr %r86, i32 0, i32 5
    store float %r133, ptr %r134
    %r135 = load float, ptr %r64
    %r136 = load float, ptr %r65
    %r137 = fadd float %r135,%r136
    %r138 = load float, ptr %r66
    %r139 = fadd float %r137,%r138
    %r140 = load float, ptr %r67
    %r141 = fadd float %r139,%r140
    %r142 = getelementptr [10 x float], ptr %r86, i32 0, i32 6
    store float %r141, ptr %r142
    %r143 = load float, ptr %r68
    %r144 = load float, ptr %r69
    %r145 = fadd float %r143,%r144
    %r146 = load float, ptr %r70
    %r147 = fadd float %r145,%r146
    %r148 = load float, ptr %r71
    %r149 = fadd float %r147,%r148
    %r150 = getelementptr [10 x float], ptr %r86, i32 0, i32 7
    store float %r149, ptr %r150
    %r151 = load float, ptr %r72
    %r152 = load float, ptr %r73
    %r153 = fadd float %r151,%r152
    %r154 = load float, ptr %r74
    %r155 = fadd float %r153,%r154
    %r156 = load float, ptr %r75
    %r157 = fadd float %r155,%r156
    %r158 = getelementptr [10 x float], ptr %r86, i32 0, i32 8
    store float %r157, ptr %r158
    %r159 = load float, ptr %r76
    %r160 = load float, ptr %r77
    %r161 = fadd float %r159,%r160
    %r162 = load float, ptr %r78
    %r163 = fadd float %r161,%r162
    %r164 = load float, ptr %r79
    %r165 = fadd float %r163,%r164
    %r166 = getelementptr [10 x float], ptr %r86, i32 0, i32 9
    store float %r165, ptr %r166
    %r167 = add i32 0,10
    %r168 = getelementptr float, ptr %r86, i32 0
    call void @putfarray(i32 %r167,ptr %r168)
    %r169 = load i32, ptr @k
    %r170 = getelementptr [10 x float], ptr %r86, i32 0, i32 %r169
    %r171 = load float, ptr %r170
    ret float %r171
L2:
    %r172 = load float, ptr %r41
    %r173 = load float, ptr %r42
    %r174 = load float, ptr %r43
    %r175 = load float, ptr %r44
    %r176 = load float, ptr %r45
    %r177 = load float, ptr %r46
    %r178 = load float, ptr %r47
    %r179 = load float, ptr %r48
    %r180 = load float, ptr %r49
    %r181 = load float, ptr %r50
    %r182 = load float, ptr %r51
    %r183 = load float, ptr %r52
    %r184 = load float, ptr %r53
    %r185 = load float, ptr %r54
    %r186 = load float, ptr %r55
    %r187 = load float, ptr %r56
    %r188 = load float, ptr %r57
    %r189 = load float, ptr %r58
    %r190 = load float, ptr %r59
    %r191 = load float, ptr %r60
    %r192 = load float, ptr %r61
    %r193 = load float, ptr %r62
    %r194 = load float, ptr %r63
    %r195 = load float, ptr %r64
    %r196 = load float, ptr %r65
    %r197 = load float, ptr %r66
    %r198 = load float, ptr %r67
    %r199 = load float, ptr %r68
    %r200 = load float, ptr %r69
    %r201 = load float, ptr %r70
    %r202 = load float, ptr %r71
    %r203 = load float, ptr %r72
    %r204 = load float, ptr %r73
    %r205 = load float, ptr %r74
    %r206 = load float, ptr %r75
    %r207 = load float, ptr %r76
    %r208 = load float, ptr %r77
    %r209 = load float, ptr %r78
    %r210 = load float, ptr %r79
    %r211 = load float, ptr %r40
    %r212 = load float, ptr %r41
    %r213 = fadd float %r211,%r212
    %r214 = load float, ptr %r42
    %r215 = fadd float %r213,%r214
    %r216 = call float @params_f40(float %r172,float %r173,float %r174,float %r175,float %r176,float %r177,float %r178,float %r179,float %r180,float %r181,float %r182,float %r183,float %r184,float %r185,float %r186,float %r187,float %r188,float %r189,float %r190,float %r191,float %r192,float %r193,float %r194,float %r195,float %r196,float %r197,float %r198,float %r199,float %r200,float %r201,float %r202,float %r203,float %r204,float %r205,float %r206,float %r207,float %r208,float %r209,float %r210,float %r215)
    ret float %r216
}
