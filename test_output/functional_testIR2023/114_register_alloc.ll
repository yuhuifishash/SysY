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
@a1 = global i32 1
@a2 = global i32 2
@a3 = global i32 3
@a4 = global i32 4
@a5 = global i32 5
@a6 = global i32 6
@a7 = global i32 7
@a8 = global i32 8
@a9 = global i32 9
@a10 = global i32 10
@a11 = global i32 11
@a12 = global i32 12
@a13 = global i32 13
@a14 = global i32 14
@a15 = global i32 15
@a16 = global i32 16
@a17 = global i32 1
@a18 = global i32 2
@a19 = global i32 3
@a20 = global i32 4
@a21 = global i32 5
@a22 = global i32 6
@a23 = global i32 7
@a24 = global i32 8
@a25 = global i32 9
@a26 = global i32 10
@a27 = global i32 11
@a28 = global i32 12
@a29 = global i32 13
@a30 = global i32 14
@a31 = global i32 15
@a32 = global i32 16
define i32 @func(i32 %r0,i32 %r1)
{
L0:
    %r43 = alloca i32
    %r42 = alloca i32
    %r41 = alloca i32
    %r40 = alloca i32
    %r39 = alloca i32
    %r38 = alloca i32
    %r37 = alloca i32
    %r36 = alloca i32
    %r35 = alloca i32
    %r34 = alloca i32
    %r33 = alloca i32
    %r32 = alloca i32
    %r31 = alloca i32
    %r30 = alloca i32
    %r29 = alloca i32
    %r28 = alloca i32
    %r27 = alloca i32
    %r26 = alloca i32
    %r25 = alloca i32
    %r24 = alloca i32
    %r23 = alloca i32
    %r22 = alloca i32
    %r21 = alloca i32
    %r20 = alloca i32
    %r19 = alloca i32
    %r18 = alloca i32
    %r17 = alloca i32
    %r16 = alloca i32
    %r15 = alloca i32
    %r14 = alloca i32
    %r13 = alloca i32
    %r12 = alloca i32
    %r11 = alloca i32
    %r10 = alloca i32
    %r9 = alloca i32
    %r8 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:
    store i32 0, ptr %r4
    %r5 = load i32, ptr %r2
    %r6 = load i32, ptr %r3
    %r7 = add i32 %r5,%r6
    store i32 %r7, ptr %r4
    store i32 0, ptr %r8
    store i32 0, ptr %r9
    store i32 0, ptr %r10
    store i32 0, ptr %r11
    store i32 0, ptr %r12
    store i32 0, ptr %r13
    store i32 0, ptr %r14
    store i32 0, ptr %r15
    store i32 0, ptr %r16
    store i32 0, ptr %r17
    store i32 0, ptr %r18
    store i32 0, ptr %r19
    store i32 0, ptr %r20
    store i32 0, ptr %r21
    store i32 0, ptr %r22
    store i32 0, ptr %r23
    store i32 0, ptr %r24
    store i32 0, ptr %r25
    store i32 0, ptr %r26
    store i32 0, ptr %r27
    store i32 0, ptr %r28
    store i32 0, ptr %r29
    store i32 0, ptr %r30
    store i32 0, ptr %r31
    store i32 0, ptr %r32
    store i32 0, ptr %r33
    store i32 0, ptr %r34
    store i32 0, ptr %r35
    store i32 0, ptr %r36
    store i32 0, ptr %r37
    store i32 0, ptr %r38
    store i32 0, ptr %r39
    store i32 0, ptr %r40
    store i32 0, ptr %r41
    store i32 0, ptr %r42
    store i32 0, ptr %r43
    %r44 = call i32 @getint()
    store i32 %r44, ptr %r8
    %r45 = call i32 @getint()
    store i32 %r45, ptr %r9
    %r46 = call i32 @getint()
    store i32 %r46, ptr %r10
    %r47 = call i32 @getint()
    store i32 %r47, ptr %r11
    %r48 = add i32 1,0
    %r49 = load i32, ptr %r8
    %r50 = add i32 %r48,%r49
    %r51 = load i32, ptr @a1
    %r52 = add i32 %r50,%r51
    store i32 %r52, ptr %r12
    %r53 = add i32 2,0
    %r54 = load i32, ptr %r9
    %r55 = add i32 %r53,%r54
    %r56 = load i32, ptr @a2
    %r57 = add i32 %r55,%r56
    store i32 %r57, ptr %r13
    %r58 = add i32 3,0
    %r59 = load i32, ptr %r10
    %r60 = add i32 %r58,%r59
    %r61 = load i32, ptr @a3
    %r62 = add i32 %r60,%r61
    store i32 %r62, ptr %r14
    %r63 = add i32 4,0
    %r64 = load i32, ptr %r11
    %r65 = add i32 %r63,%r64
    %r66 = load i32, ptr @a4
    %r67 = add i32 %r65,%r66
    store i32 %r67, ptr %r15
    %r68 = add i32 1,0
    %r69 = load i32, ptr %r12
    %r70 = add i32 %r68,%r69
    %r71 = load i32, ptr @a5
    %r72 = add i32 %r70,%r71
    store i32 %r72, ptr %r16
    %r73 = add i32 2,0
    %r74 = load i32, ptr %r13
    %r75 = add i32 %r73,%r74
    %r76 = load i32, ptr @a6
    %r77 = add i32 %r75,%r76
    store i32 %r77, ptr %r17
    %r78 = add i32 3,0
    %r79 = load i32, ptr %r14
    %r80 = add i32 %r78,%r79
    %r81 = load i32, ptr @a7
    %r82 = add i32 %r80,%r81
    store i32 %r82, ptr %r18
    %r83 = add i32 4,0
    %r84 = load i32, ptr %r15
    %r85 = add i32 %r83,%r84
    %r86 = load i32, ptr @a8
    %r87 = add i32 %r85,%r86
    store i32 %r87, ptr %r19
    %r88 = add i32 1,0
    %r89 = load i32, ptr %r16
    %r90 = add i32 %r88,%r89
    %r91 = load i32, ptr @a9
    %r92 = add i32 %r90,%r91
    store i32 %r92, ptr %r20
    %r93 = add i32 2,0
    %r94 = load i32, ptr %r17
    %r95 = add i32 %r93,%r94
    %r96 = load i32, ptr @a10
    %r97 = add i32 %r95,%r96
    store i32 %r97, ptr %r21
    %r98 = add i32 3,0
    %r99 = load i32, ptr %r18
    %r100 = add i32 %r98,%r99
    %r101 = load i32, ptr @a11
    %r102 = add i32 %r100,%r101
    store i32 %r102, ptr %r22
    %r103 = add i32 4,0
    %r104 = load i32, ptr %r19
    %r105 = add i32 %r103,%r104
    %r106 = load i32, ptr @a12
    %r107 = add i32 %r105,%r106
    store i32 %r107, ptr %r23
    %r108 = add i32 1,0
    %r109 = load i32, ptr %r20
    %r110 = add i32 %r108,%r109
    %r111 = load i32, ptr @a13
    %r112 = add i32 %r110,%r111
    store i32 %r112, ptr %r24
    %r113 = add i32 2,0
    %r114 = load i32, ptr %r21
    %r115 = add i32 %r113,%r114
    %r116 = load i32, ptr @a14
    %r117 = add i32 %r115,%r116
    store i32 %r117, ptr %r25
    %r118 = add i32 3,0
    %r119 = load i32, ptr %r22
    %r120 = add i32 %r118,%r119
    %r121 = load i32, ptr @a15
    %r122 = add i32 %r120,%r121
    store i32 %r122, ptr %r26
    %r123 = add i32 4,0
    %r124 = load i32, ptr %r23
    %r125 = add i32 %r123,%r124
    %r126 = load i32, ptr @a16
    %r127 = add i32 %r125,%r126
    store i32 %r127, ptr %r27
    %r128 = add i32 1,0
    %r129 = load i32, ptr %r24
    %r130 = add i32 %r128,%r129
    %r131 = load i32, ptr @a17
    %r132 = add i32 %r130,%r131
    store i32 %r132, ptr %r28
    %r133 = add i32 2,0
    %r134 = load i32, ptr %r25
    %r135 = add i32 %r133,%r134
    %r136 = load i32, ptr @a18
    %r137 = add i32 %r135,%r136
    store i32 %r137, ptr %r29
    %r138 = add i32 3,0
    %r139 = load i32, ptr %r26
    %r140 = add i32 %r138,%r139
    %r141 = load i32, ptr @a19
    %r142 = add i32 %r140,%r141
    store i32 %r142, ptr %r30
    %r143 = add i32 4,0
    %r144 = load i32, ptr %r27
    %r145 = add i32 %r143,%r144
    %r146 = load i32, ptr @a20
    %r147 = add i32 %r145,%r146
    store i32 %r147, ptr %r31
    %r148 = add i32 1,0
    %r149 = load i32, ptr %r28
    %r150 = add i32 %r148,%r149
    %r151 = load i32, ptr @a21
    %r152 = add i32 %r150,%r151
    store i32 %r152, ptr %r32
    %r153 = add i32 2,0
    %r154 = load i32, ptr %r29
    %r155 = add i32 %r153,%r154
    %r156 = load i32, ptr @a22
    %r157 = add i32 %r155,%r156
    store i32 %r157, ptr %r33
    %r158 = add i32 3,0
    %r159 = load i32, ptr %r30
    %r160 = add i32 %r158,%r159
    %r161 = load i32, ptr @a23
    %r162 = add i32 %r160,%r161
    store i32 %r162, ptr %r34
    %r163 = add i32 4,0
    %r164 = load i32, ptr %r31
    %r165 = add i32 %r163,%r164
    %r166 = load i32, ptr @a24
    %r167 = add i32 %r165,%r166
    store i32 %r167, ptr %r35
    %r168 = add i32 1,0
    %r169 = load i32, ptr %r32
    %r170 = add i32 %r168,%r169
    %r171 = load i32, ptr @a25
    %r172 = add i32 %r170,%r171
    store i32 %r172, ptr %r36
    %r173 = add i32 2,0
    %r174 = load i32, ptr %r33
    %r175 = add i32 %r173,%r174
    %r176 = load i32, ptr @a26
    %r177 = add i32 %r175,%r176
    store i32 %r177, ptr %r37
    %r178 = add i32 3,0
    %r179 = load i32, ptr %r34
    %r180 = add i32 %r178,%r179
    %r181 = load i32, ptr @a27
    %r182 = add i32 %r180,%r181
    store i32 %r182, ptr %r38
    %r183 = add i32 4,0
    %r184 = load i32, ptr %r35
    %r185 = add i32 %r183,%r184
    %r186 = load i32, ptr @a28
    %r187 = add i32 %r185,%r186
    store i32 %r187, ptr %r39
    %r188 = add i32 1,0
    %r189 = load i32, ptr %r36
    %r190 = add i32 %r188,%r189
    %r191 = load i32, ptr @a29
    %r192 = add i32 %r190,%r191
    store i32 %r192, ptr %r40
    %r193 = add i32 2,0
    %r194 = load i32, ptr %r37
    %r195 = add i32 %r193,%r194
    %r196 = load i32, ptr @a30
    %r197 = add i32 %r195,%r196
    store i32 %r197, ptr %r41
    %r198 = add i32 3,0
    %r199 = load i32, ptr %r38
    %r200 = add i32 %r198,%r199
    %r201 = load i32, ptr @a31
    %r202 = add i32 %r200,%r201
    store i32 %r202, ptr %r42
    %r203 = add i32 4,0
    %r204 = load i32, ptr %r39
    %r205 = add i32 %r203,%r204
    %r206 = load i32, ptr @a32
    %r207 = add i32 %r205,%r206
    store i32 %r207, ptr %r43
    %r208 = load i32, ptr %r2
    %r209 = load i32, ptr %r3
    %r210 = sub i32 %r208,%r209
    %r211 = add i32 10,0
    %r212 = add i32 %r210,%r211
    store i32 %r212, ptr %r4
    %r213 = add i32 1,0
    %r214 = load i32, ptr %r36
    %r215 = add i32 %r213,%r214
    %r216 = load i32, ptr @a29
    %r217 = add i32 %r215,%r216
    store i32 %r217, ptr %r40
    %r218 = add i32 2,0
    %r219 = load i32, ptr %r37
    %r220 = add i32 %r218,%r219
    %r221 = load i32, ptr @a30
    %r222 = add i32 %r220,%r221
    store i32 %r222, ptr %r41
    %r223 = add i32 3,0
    %r224 = load i32, ptr %r38
    %r225 = add i32 %r223,%r224
    %r226 = load i32, ptr @a31
    %r227 = add i32 %r225,%r226
    store i32 %r227, ptr %r42
    %r228 = add i32 4,0
    %r229 = load i32, ptr %r39
    %r230 = add i32 %r228,%r229
    %r231 = load i32, ptr @a32
    %r232 = add i32 %r230,%r231
    store i32 %r232, ptr %r43
    %r233 = add i32 1,0
    %r234 = load i32, ptr %r32
    %r235 = add i32 %r233,%r234
    %r236 = load i32, ptr @a25
    %r237 = add i32 %r235,%r236
    store i32 %r237, ptr %r36
    %r238 = add i32 2,0
    %r239 = load i32, ptr %r33
    %r240 = add i32 %r238,%r239
    %r241 = load i32, ptr @a26
    %r242 = add i32 %r240,%r241
    store i32 %r242, ptr %r37
    %r243 = add i32 3,0
    %r244 = load i32, ptr %r34
    %r245 = add i32 %r243,%r244
    %r246 = load i32, ptr @a27
    %r247 = add i32 %r245,%r246
    store i32 %r247, ptr %r38
    %r248 = add i32 4,0
    %r249 = load i32, ptr %r35
    %r250 = add i32 %r248,%r249
    %r251 = load i32, ptr @a28
    %r252 = add i32 %r250,%r251
    store i32 %r252, ptr %r39
    %r253 = add i32 1,0
    %r254 = load i32, ptr %r28
    %r255 = add i32 %r253,%r254
    %r256 = load i32, ptr @a21
    %r257 = add i32 %r255,%r256
    store i32 %r257, ptr %r32
    %r258 = add i32 2,0
    %r259 = load i32, ptr %r29
    %r260 = add i32 %r258,%r259
    %r261 = load i32, ptr @a22
    %r262 = add i32 %r260,%r261
    store i32 %r262, ptr %r33
    %r263 = add i32 3,0
    %r264 = load i32, ptr %r30
    %r265 = add i32 %r263,%r264
    %r266 = load i32, ptr @a23
    %r267 = add i32 %r265,%r266
    store i32 %r267, ptr %r34
    %r268 = add i32 4,0
    %r269 = load i32, ptr %r31
    %r270 = add i32 %r268,%r269
    %r271 = load i32, ptr @a24
    %r272 = add i32 %r270,%r271
    store i32 %r272, ptr %r35
    %r273 = add i32 1,0
    %r274 = load i32, ptr %r24
    %r275 = add i32 %r273,%r274
    %r276 = load i32, ptr @a17
    %r277 = add i32 %r275,%r276
    store i32 %r277, ptr %r28
    %r278 = add i32 2,0
    %r279 = load i32, ptr %r25
    %r280 = add i32 %r278,%r279
    %r281 = load i32, ptr @a18
    %r282 = add i32 %r280,%r281
    store i32 %r282, ptr %r29
    %r283 = add i32 3,0
    %r284 = load i32, ptr %r26
    %r285 = add i32 %r283,%r284
    %r286 = load i32, ptr @a19
    %r287 = add i32 %r285,%r286
    store i32 %r287, ptr %r30
    %r288 = add i32 4,0
    %r289 = load i32, ptr %r27
    %r290 = add i32 %r288,%r289
    %r291 = load i32, ptr @a20
    %r292 = add i32 %r290,%r291
    store i32 %r292, ptr %r31
    %r293 = add i32 1,0
    %r294 = load i32, ptr %r20
    %r295 = add i32 %r293,%r294
    %r296 = load i32, ptr @a13
    %r297 = add i32 %r295,%r296
    store i32 %r297, ptr %r24
    %r298 = add i32 2,0
    %r299 = load i32, ptr %r21
    %r300 = add i32 %r298,%r299
    %r301 = load i32, ptr @a14
    %r302 = add i32 %r300,%r301
    store i32 %r302, ptr %r25
    %r303 = add i32 3,0
    %r304 = load i32, ptr %r22
    %r305 = add i32 %r303,%r304
    %r306 = load i32, ptr @a15
    %r307 = add i32 %r305,%r306
    store i32 %r307, ptr %r26
    %r308 = add i32 4,0
    %r309 = load i32, ptr %r23
    %r310 = add i32 %r308,%r309
    %r311 = load i32, ptr @a16
    %r312 = add i32 %r310,%r311
    store i32 %r312, ptr %r27
    %r313 = add i32 1,0
    %r314 = load i32, ptr %r16
    %r315 = add i32 %r313,%r314
    %r316 = load i32, ptr @a9
    %r317 = add i32 %r315,%r316
    store i32 %r317, ptr %r20
    %r318 = add i32 2,0
    %r319 = load i32, ptr %r17
    %r320 = add i32 %r318,%r319
    %r321 = load i32, ptr @a10
    %r322 = add i32 %r320,%r321
    store i32 %r322, ptr %r21
    %r323 = add i32 3,0
    %r324 = load i32, ptr %r18
    %r325 = add i32 %r323,%r324
    %r326 = load i32, ptr @a11
    %r327 = add i32 %r325,%r326
    store i32 %r327, ptr %r22
    %r328 = add i32 4,0
    %r329 = load i32, ptr %r19
    %r330 = add i32 %r328,%r329
    %r331 = load i32, ptr @a12
    %r332 = add i32 %r330,%r331
    store i32 %r332, ptr %r23
    %r333 = add i32 1,0
    %r334 = load i32, ptr %r12
    %r335 = add i32 %r333,%r334
    %r336 = load i32, ptr @a5
    %r337 = add i32 %r335,%r336
    store i32 %r337, ptr %r16
    %r338 = add i32 2,0
    %r339 = load i32, ptr %r13
    %r340 = add i32 %r338,%r339
    %r341 = load i32, ptr @a6
    %r342 = add i32 %r340,%r341
    store i32 %r342, ptr %r17
    %r343 = add i32 3,0
    %r344 = load i32, ptr %r14
    %r345 = add i32 %r343,%r344
    %r346 = load i32, ptr @a7
    %r347 = add i32 %r345,%r346
    store i32 %r347, ptr %r18
    %r348 = add i32 4,0
    %r349 = load i32, ptr %r15
    %r350 = add i32 %r348,%r349
    %r351 = load i32, ptr @a8
    %r352 = add i32 %r350,%r351
    store i32 %r352, ptr %r19
    %r353 = add i32 1,0
    %r354 = load i32, ptr %r8
    %r355 = add i32 %r353,%r354
    %r356 = load i32, ptr @a1
    %r357 = add i32 %r355,%r356
    store i32 %r357, ptr %r12
    %r358 = add i32 2,0
    %r359 = load i32, ptr %r9
    %r360 = add i32 %r358,%r359
    %r361 = load i32, ptr @a2
    %r362 = add i32 %r360,%r361
    store i32 %r362, ptr %r13
    %r363 = add i32 3,0
    %r364 = load i32, ptr %r10
    %r365 = add i32 %r363,%r364
    %r366 = load i32, ptr @a3
    %r367 = add i32 %r365,%r366
    store i32 %r367, ptr %r14
    %r368 = add i32 4,0
    %r369 = load i32, ptr %r11
    %r370 = add i32 %r368,%r369
    %r371 = load i32, ptr @a4
    %r372 = add i32 %r370,%r371
    store i32 %r372, ptr %r15
    %r373 = add i32 1,0
    %r374 = load i32, ptr %r8
    %r375 = add i32 %r373,%r374
    %r376 = load i32, ptr @a1
    %r377 = add i32 %r375,%r376
    store i32 %r377, ptr %r12
    %r378 = add i32 2,0
    %r379 = load i32, ptr %r9
    %r380 = add i32 %r378,%r379
    %r381 = load i32, ptr @a2
    %r382 = add i32 %r380,%r381
    store i32 %r382, ptr %r13
    %r383 = add i32 3,0
    %r384 = load i32, ptr %r10
    %r385 = add i32 %r383,%r384
    %r386 = load i32, ptr @a3
    %r387 = add i32 %r385,%r386
    store i32 %r387, ptr %r14
    %r388 = add i32 4,0
    %r389 = load i32, ptr %r11
    %r390 = add i32 %r388,%r389
    %r391 = load i32, ptr @a4
    %r392 = add i32 %r390,%r391
    store i32 %r392, ptr %r15
    %r393 = load i32, ptr %r4
    %r394 = load i32, ptr %r8
    %r395 = add i32 %r393,%r394
    %r396 = load i32, ptr %r9
    %r397 = add i32 %r395,%r396
    %r398 = load i32, ptr %r10
    %r399 = add i32 %r397,%r398
    %r400 = load i32, ptr %r11
    %r401 = add i32 %r399,%r400
    %r402 = load i32, ptr %r12
    %r403 = sub i32 %r401,%r402
    %r404 = load i32, ptr %r13
    %r405 = sub i32 %r403,%r404
    %r406 = load i32, ptr %r14
    %r407 = sub i32 %r405,%r406
    %r408 = load i32, ptr %r15
    %r409 = sub i32 %r407,%r408
    %r410 = load i32, ptr %r16
    %r411 = add i32 %r409,%r410
    %r412 = load i32, ptr %r17
    %r413 = add i32 %r411,%r412
    %r414 = load i32, ptr %r18
    %r415 = add i32 %r413,%r414
    %r416 = load i32, ptr %r19
    %r417 = add i32 %r415,%r416
    %r418 = load i32, ptr %r20
    %r419 = sub i32 %r417,%r418
    %r420 = load i32, ptr %r21
    %r421 = sub i32 %r419,%r420
    %r422 = load i32, ptr %r22
    %r423 = sub i32 %r421,%r422
    %r424 = load i32, ptr %r23
    %r425 = sub i32 %r423,%r424
    %r426 = load i32, ptr %r24
    %r427 = add i32 %r425,%r426
    %r428 = load i32, ptr %r25
    %r429 = add i32 %r427,%r428
    %r430 = load i32, ptr %r26
    %r431 = add i32 %r429,%r430
    %r432 = load i32, ptr %r27
    %r433 = add i32 %r431,%r432
    %r434 = load i32, ptr %r28
    %r435 = sub i32 %r433,%r434
    %r436 = load i32, ptr %r29
    %r437 = sub i32 %r435,%r436
    %r438 = load i32, ptr %r30
    %r439 = sub i32 %r437,%r438
    %r440 = load i32, ptr %r31
    %r441 = sub i32 %r439,%r440
    %r442 = load i32, ptr %r32
    %r443 = add i32 %r441,%r442
    %r444 = load i32, ptr %r33
    %r445 = add i32 %r443,%r444
    %r446 = load i32, ptr %r34
    %r447 = add i32 %r445,%r446
    %r448 = load i32, ptr %r35
    %r449 = add i32 %r447,%r448
    %r450 = load i32, ptr %r36
    %r451 = sub i32 %r449,%r450
    %r452 = load i32, ptr %r37
    %r453 = sub i32 %r451,%r452
    %r454 = load i32, ptr %r38
    %r455 = sub i32 %r453,%r454
    %r456 = load i32, ptr %r39
    %r457 = sub i32 %r455,%r456
    %r458 = load i32, ptr %r40
    %r459 = add i32 %r457,%r458
    %r460 = load i32, ptr %r41
    %r461 = add i32 %r459,%r460
    %r462 = load i32, ptr %r42
    %r463 = add i32 %r461,%r462
    %r464 = load i32, ptr %r43
    %r465 = add i32 %r463,%r464
    %r466 = load i32, ptr @a1
    %r467 = add i32 %r465,%r466
    %r468 = load i32, ptr @a2
    %r469 = sub i32 %r467,%r468
    %r470 = load i32, ptr @a3
    %r471 = add i32 %r469,%r470
    %r472 = load i32, ptr @a4
    %r473 = sub i32 %r471,%r472
    %r474 = load i32, ptr @a5
    %r475 = add i32 %r473,%r474
    %r476 = load i32, ptr @a6
    %r477 = sub i32 %r475,%r476
    %r478 = load i32, ptr @a7
    %r479 = add i32 %r477,%r478
    %r480 = load i32, ptr @a8
    %r481 = sub i32 %r479,%r480
    %r482 = load i32, ptr @a9
    %r483 = add i32 %r481,%r482
    %r484 = load i32, ptr @a10
    %r485 = sub i32 %r483,%r484
    %r486 = load i32, ptr @a11
    %r487 = add i32 %r485,%r486
    %r488 = load i32, ptr @a12
    %r489 = sub i32 %r487,%r488
    %r490 = load i32, ptr @a13
    %r491 = add i32 %r489,%r490
    %r492 = load i32, ptr @a14
    %r493 = sub i32 %r491,%r492
    %r494 = load i32, ptr @a15
    %r495 = add i32 %r493,%r494
    %r496 = load i32, ptr @a16
    %r497 = sub i32 %r495,%r496
    %r498 = load i32, ptr @a17
    %r499 = add i32 %r497,%r498
    %r500 = load i32, ptr @a18
    %r501 = sub i32 %r499,%r500
    %r502 = load i32, ptr @a19
    %r503 = add i32 %r501,%r502
    %r504 = load i32, ptr @a20
    %r505 = sub i32 %r503,%r504
    %r506 = load i32, ptr @a21
    %r507 = add i32 %r505,%r506
    %r508 = load i32, ptr @a22
    %r509 = sub i32 %r507,%r508
    %r510 = load i32, ptr @a23
    %r511 = add i32 %r509,%r510
    %r512 = load i32, ptr @a24
    %r513 = sub i32 %r511,%r512
    %r514 = load i32, ptr @a25
    %r515 = add i32 %r513,%r514
    %r516 = load i32, ptr @a26
    %r517 = sub i32 %r515,%r516
    %r518 = load i32, ptr @a27
    %r519 = add i32 %r517,%r518
    %r520 = load i32, ptr @a28
    %r521 = sub i32 %r519,%r520
    %r522 = load i32, ptr @a29
    %r523 = add i32 %r521,%r522
    %r524 = load i32, ptr @a30
    %r525 = sub i32 %r523,%r524
    %r526 = load i32, ptr @a31
    %r527 = add i32 %r525,%r526
    %r528 = load i32, ptr @a32
    %r529 = sub i32 %r527,%r528
    ret i32 %r529
}
define i32 @main()
{
L0:
    %r1 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r0
    store i32 0, ptr %r1
    %r2 = call i32 @getint()
    store i32 %r2, ptr %r0
    %r3 = load i32, ptr %r0
    %r4 = add i32 2,0
    %r5 = add i32 9,0
    %r6 = mul i32 %r4,%r5
    %r7 = add i32 %r3,%r6
    store i32 %r7, ptr %r1
    %r8 = load i32, ptr %r0
    %r9 = load i32, ptr %r1
    %r10 = call i32 @func(i32 %r8,i32 %r9)
    store i32 %r10, ptr %r0
    %r11 = load i32, ptr %r0
    call void @putint(i32 %r11)
    %r12 = load i32, ptr %r0
    ret i32 %r12
}
