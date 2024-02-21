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
define i32 @func(i32 %r0,i32 %r1)
{
L0:  ;
    %r79 = alloca i32
    %r77 = alloca i32
    %r75 = alloca i32
    %r73 = alloca i32
    %r71 = alloca i32
    %r69 = alloca i32
    %r67 = alloca i32
    %r65 = alloca i32
    %r63 = alloca i32
    %r61 = alloca i32
    %r59 = alloca i32
    %r57 = alloca i32
    %r55 = alloca i32
    %r53 = alloca i32
    %r51 = alloca i32
    %r49 = alloca i32
    %r47 = alloca i32
    %r45 = alloca i32
    %r43 = alloca i32
    %r41 = alloca i32
    %r39 = alloca i32
    %r37 = alloca i32
    %r35 = alloca i32
    %r33 = alloca i32
    %r31 = alloca i32
    %r29 = alloca i32
    %r27 = alloca i32
    %r25 = alloca i32
    %r23 = alloca i32
    %r21 = alloca i32
    %r19 = alloca i32
    %r17 = alloca i32
    %r15 = alloca i32
    %r13 = alloca i32
    %r11 = alloca i32
    %r9 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:  ;
<<<<<<< HEAD
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    %r6 = load i32, ptr %r2
    %r7 = load i32, ptr %r3
    %r8 = add i32 %r6,%r7
    store i32 %r8, ptr %r4
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r12 = add i32 0,0
    store i32 %r12, ptr %r11
    %r14 = add i32 0,0
    store i32 %r14, ptr %r13
    %r16 = add i32 0,0
    store i32 %r16, ptr %r15
    %r18 = add i32 0,0
    store i32 %r18, ptr %r17
    %r20 = add i32 0,0
    store i32 %r20, ptr %r19
    %r22 = add i32 0,0
    store i32 %r22, ptr %r21
    %r24 = add i32 0,0
    store i32 %r24, ptr %r23
    %r26 = add i32 0,0
    store i32 %r26, ptr %r25
    %r28 = add i32 0,0
    store i32 %r28, ptr %r27
    %r30 = add i32 0,0
    store i32 %r30, ptr %r29
    %r32 = add i32 0,0
    store i32 %r32, ptr %r31
    %r34 = add i32 0,0
    store i32 %r34, ptr %r33
    %r36 = add i32 0,0
    store i32 %r36, ptr %r35
    %r38 = add i32 0,0
    store i32 %r38, ptr %r37
    %r40 = add i32 0,0
    store i32 %r40, ptr %r39
    %r42 = add i32 0,0
    store i32 %r42, ptr %r41
    %r44 = add i32 0,0
    store i32 %r44, ptr %r43
    %r46 = add i32 0,0
    store i32 %r46, ptr %r45
    %r48 = add i32 0,0
    store i32 %r48, ptr %r47
    %r50 = add i32 0,0
    store i32 %r50, ptr %r49
    %r52 = add i32 0,0
    store i32 %r52, ptr %r51
    %r54 = add i32 0,0
    store i32 %r54, ptr %r53
    %r56 = add i32 0,0
    store i32 %r56, ptr %r55
    %r58 = add i32 0,0
    store i32 %r58, ptr %r57
    %r60 = add i32 0,0
    store i32 %r60, ptr %r59
    %r62 = add i32 0,0
    store i32 %r62, ptr %r61
    %r64 = add i32 0,0
    store i32 %r64, ptr %r63
    %r66 = add i32 0,0
    store i32 %r66, ptr %r65
    %r68 = add i32 0,0
    store i32 %r68, ptr %r67
    %r70 = add i32 0,0
    store i32 %r70, ptr %r69
    %r72 = add i32 0,0
    store i32 %r72, ptr %r71
    %r74 = add i32 0,0
    store i32 %r74, ptr %r73
    %r76 = add i32 0,0
    store i32 %r76, ptr %r75
    %r78 = add i32 0,0
    store i32 %r78, ptr %r77
    %r80 = add i32 0,0
    store i32 %r80, ptr %r79
    %r81 = add i32 1,0
    store i32 %r81, ptr %r9
    %r82 = add i32 2,0
    store i32 %r82, ptr %r11
    %r83 = add i32 3,0
    store i32 %r83, ptr %r13
    %r84 = add i32 4,0
    store i32 %r84, ptr %r15
    %r85 = add i32 1,0
    %r86 = load i32, ptr %r9
    %r87 = add i32 %r85,%r86
    store i32 %r87, ptr %r17
    %r88 = add i32 2,0
    %r89 = load i32, ptr %r11
    %r90 = add i32 %r88,%r89
    store i32 %r90, ptr %r19
    %r91 = add i32 3,0
    %r92 = load i32, ptr %r13
    %r93 = add i32 %r91,%r92
    store i32 %r93, ptr %r21
    %r94 = add i32 4,0
    %r95 = load i32, ptr %r15
    %r96 = add i32 %r94,%r95
    store i32 %r96, ptr %r23
    %r97 = add i32 1,0
    %r98 = load i32, ptr %r17
    %r99 = add i32 %r97,%r98
    store i32 %r99, ptr %r25
    %r100 = add i32 2,0
    %r101 = load i32, ptr %r19
    %r102 = add i32 %r100,%r101
    store i32 %r102, ptr %r27
    %r103 = add i32 3,0
    %r104 = load i32, ptr %r21
    %r105 = add i32 %r103,%r104
    store i32 %r105, ptr %r29
    %r106 = add i32 4,0
    %r107 = load i32, ptr %r23
    %r108 = add i32 %r106,%r107
    store i32 %r108, ptr %r31
    %r109 = add i32 1,0
    %r110 = load i32, ptr %r25
    %r111 = add i32 %r109,%r110
    store i32 %r111, ptr %r33
    %r112 = add i32 2,0
    %r113 = load i32, ptr %r27
    %r114 = add i32 %r112,%r113
    store i32 %r114, ptr %r35
    %r115 = add i32 3,0
    %r116 = load i32, ptr %r29
    %r117 = add i32 %r115,%r116
    store i32 %r117, ptr %r37
    %r118 = add i32 4,0
    %r119 = load i32, ptr %r31
    %r120 = add i32 %r118,%r119
    store i32 %r120, ptr %r39
    %r121 = add i32 1,0
    %r122 = load i32, ptr %r33
    %r123 = add i32 %r121,%r122
    store i32 %r123, ptr %r41
    %r124 = add i32 2,0
    %r125 = load i32, ptr %r35
    %r126 = add i32 %r124,%r125
    store i32 %r126, ptr %r43
    %r127 = add i32 3,0
    %r128 = load i32, ptr %r37
    %r129 = add i32 %r127,%r128
    store i32 %r129, ptr %r45
    %r130 = add i32 4,0
    %r131 = load i32, ptr %r39
    %r132 = add i32 %r130,%r131
    store i32 %r132, ptr %r47
    %r133 = add i32 1,0
    %r134 = load i32, ptr %r41
    %r135 = add i32 %r133,%r134
    store i32 %r135, ptr %r49
    %r136 = add i32 2,0
    %r137 = load i32, ptr %r43
    %r138 = add i32 %r136,%r137
    store i32 %r138, ptr %r51
    %r139 = add i32 3,0
    %r140 = load i32, ptr %r45
    %r141 = add i32 %r139,%r140
    store i32 %r141, ptr %r53
    %r142 = add i32 4,0
    %r143 = load i32, ptr %r47
    %r144 = add i32 %r142,%r143
    store i32 %r144, ptr %r55
    %r145 = add i32 1,0
    %r146 = load i32, ptr %r49
    %r147 = add i32 %r145,%r146
    store i32 %r147, ptr %r57
    %r148 = add i32 2,0
    %r149 = load i32, ptr %r51
    %r150 = add i32 %r148,%r149
    store i32 %r150, ptr %r59
    %r151 = add i32 3,0
    %r152 = load i32, ptr %r53
    %r153 = add i32 %r151,%r152
    store i32 %r153, ptr %r61
    %r154 = add i32 4,0
    %r155 = load i32, ptr %r55
    %r156 = add i32 %r154,%r155
    store i32 %r156, ptr %r63
    %r157 = add i32 1,0
    %r158 = load i32, ptr %r57
    %r159 = add i32 %r157,%r158
    store i32 %r159, ptr %r65
    %r160 = add i32 2,0
    %r161 = load i32, ptr %r59
    %r162 = add i32 %r160,%r161
    store i32 %r162, ptr %r67
    %r163 = add i32 3,0
    %r164 = load i32, ptr %r61
    %r165 = add i32 %r163,%r164
    store i32 %r165, ptr %r69
    %r166 = add i32 4,0
    %r167 = load i32, ptr %r63
    %r168 = add i32 %r166,%r167
    store i32 %r168, ptr %r71
    %r169 = add i32 1,0
    %r170 = load i32, ptr %r65
    %r171 = add i32 %r169,%r170
    store i32 %r171, ptr %r73
    %r172 = add i32 2,0
    %r173 = load i32, ptr %r67
    %r174 = add i32 %r172,%r173
    store i32 %r174, ptr %r75
    %r175 = add i32 3,0
    %r176 = load i32, ptr %r69
    %r177 = add i32 %r175,%r176
    store i32 %r177, ptr %r77
    %r178 = add i32 4,0
    %r179 = load i32, ptr %r71
    %r180 = add i32 %r178,%r179
    store i32 %r180, ptr %r79
    %r181 = load i32, ptr %r2
    %r182 = load i32, ptr %r3
    %r183 = sub i32 %r181,%r182
    %r184 = add i32 10,0
    %r185 = add i32 %r183,%r184
    store i32 %r185, ptr %r4
    %r186 = add i32 1,0
    %r187 = load i32, ptr %r65
    %r188 = add i32 %r186,%r187
    store i32 %r188, ptr %r73
    %r189 = add i32 2,0
    %r190 = load i32, ptr %r67
    %r191 = add i32 %r189,%r190
    store i32 %r191, ptr %r75
    %r192 = add i32 3,0
    %r193 = load i32, ptr %r69
    %r194 = add i32 %r192,%r193
    store i32 %r194, ptr %r77
    %r195 = add i32 4,0
    %r196 = load i32, ptr %r71
    %r197 = add i32 %r195,%r196
    store i32 %r197, ptr %r79
    %r198 = add i32 1,0
    %r199 = load i32, ptr %r57
    %r200 = add i32 %r198,%r199
    store i32 %r200, ptr %r65
    %r201 = add i32 2,0
    %r202 = load i32, ptr %r59
    %r203 = add i32 %r201,%r202
    store i32 %r203, ptr %r67
    %r204 = add i32 3,0
    %r205 = load i32, ptr %r61
    %r206 = add i32 %r204,%r205
    store i32 %r206, ptr %r69
    %r207 = add i32 4,0
    %r208 = load i32, ptr %r63
    %r209 = add i32 %r207,%r208
    store i32 %r209, ptr %r71
    %r210 = add i32 1,0
    %r211 = load i32, ptr %r49
    %r212 = add i32 %r210,%r211
    store i32 %r212, ptr %r57
    %r213 = add i32 2,0
    %r214 = load i32, ptr %r51
    %r215 = add i32 %r213,%r214
    store i32 %r215, ptr %r59
    %r216 = add i32 3,0
    %r217 = load i32, ptr %r53
    %r218 = add i32 %r216,%r217
    store i32 %r218, ptr %r61
    %r219 = add i32 4,0
    %r220 = load i32, ptr %r55
    %r221 = add i32 %r219,%r220
    store i32 %r221, ptr %r63
    %r222 = add i32 1,0
    %r223 = load i32, ptr %r41
    %r224 = add i32 %r222,%r223
    store i32 %r224, ptr %r49
    %r225 = add i32 2,0
    %r226 = load i32, ptr %r43
    %r227 = add i32 %r225,%r226
    store i32 %r227, ptr %r51
    %r228 = add i32 3,0
    %r229 = load i32, ptr %r45
    %r230 = add i32 %r228,%r229
    store i32 %r230, ptr %r53
    %r231 = add i32 4,0
    %r232 = load i32, ptr %r47
    %r233 = add i32 %r231,%r232
    store i32 %r233, ptr %r55
    %r234 = add i32 1,0
    %r235 = load i32, ptr %r33
    %r236 = add i32 %r234,%r235
    store i32 %r236, ptr %r41
    %r237 = add i32 2,0
    %r238 = load i32, ptr %r35
    %r239 = add i32 %r237,%r238
    store i32 %r239, ptr %r43
    %r240 = add i32 3,0
    %r241 = load i32, ptr %r37
    %r242 = add i32 %r240,%r241
    store i32 %r242, ptr %r45
    %r243 = add i32 4,0
    %r244 = load i32, ptr %r39
    %r245 = add i32 %r243,%r244
    store i32 %r245, ptr %r47
    %r246 = add i32 1,0
    %r247 = load i32, ptr %r25
    %r248 = add i32 %r246,%r247
    store i32 %r248, ptr %r33
    %r249 = add i32 2,0
    %r250 = load i32, ptr %r27
    %r251 = add i32 %r249,%r250
    store i32 %r251, ptr %r35
    %r252 = add i32 3,0
    %r253 = load i32, ptr %r29
    %r254 = add i32 %r252,%r253
    store i32 %r254, ptr %r37
    %r255 = add i32 4,0
    %r256 = load i32, ptr %r31
    %r257 = add i32 %r255,%r256
    store i32 %r257, ptr %r39
    %r258 = add i32 1,0
    %r259 = load i32, ptr %r17
    %r260 = add i32 %r258,%r259
    store i32 %r260, ptr %r25
    %r261 = add i32 2,0
    %r262 = load i32, ptr %r19
    %r263 = add i32 %r261,%r262
    store i32 %r263, ptr %r27
    %r264 = add i32 3,0
    %r265 = load i32, ptr %r21
    %r266 = add i32 %r264,%r265
    store i32 %r266, ptr %r29
    %r267 = add i32 4,0
    %r268 = load i32, ptr %r23
    %r269 = add i32 %r267,%r268
    store i32 %r269, ptr %r31
    %r270 = add i32 1,0
    %r271 = load i32, ptr %r9
    %r272 = add i32 %r270,%r271
    store i32 %r272, ptr %r17
    %r273 = add i32 2,0
    %r274 = load i32, ptr %r11
    %r275 = add i32 %r273,%r274
    store i32 %r275, ptr %r19
    %r276 = add i32 3,0
    %r277 = load i32, ptr %r13
    %r278 = add i32 %r276,%r277
    store i32 %r278, ptr %r21
    %r279 = add i32 4,0
    %r280 = load i32, ptr %r15
    %r281 = add i32 %r279,%r280
    store i32 %r281, ptr %r23
    %r282 = add i32 1,0
    %r283 = load i32, ptr %r73
    %r284 = add i32 %r282,%r283
    store i32 %r284, ptr %r9
    %r285 = add i32 2,0
    %r286 = load i32, ptr %r75
    %r287 = add i32 %r285,%r286
    store i32 %r287, ptr %r11
    %r288 = add i32 3,0
    %r289 = load i32, ptr %r77
    %r290 = add i32 %r288,%r289
    store i32 %r290, ptr %r13
    %r291 = add i32 4,0
    %r292 = load i32, ptr %r79
    %r293 = add i32 %r291,%r292
    store i32 %r293, ptr %r15
    %r294 = load i32, ptr %r4
    %r295 = load i32, ptr %r9
    %r296 = add i32 %r294,%r295
    %r297 = load i32, ptr %r11
    %r298 = add i32 %r296,%r297
    %r299 = load i32, ptr %r13
    %r300 = add i32 %r298,%r299
    %r301 = load i32, ptr %r15
    %r302 = add i32 %r300,%r301
    %r303 = load i32, ptr %r17
    %r304 = sub i32 %r302,%r303
    %r305 = load i32, ptr %r19
    %r306 = sub i32 %r304,%r305
    %r307 = load i32, ptr %r21
    %r308 = sub i32 %r306,%r307
    %r309 = load i32, ptr %r23
    %r310 = sub i32 %r308,%r309
    %r311 = load i32, ptr %r25
    %r312 = add i32 %r310,%r311
    %r313 = load i32, ptr %r27
    %r314 = add i32 %r312,%r313
    %r315 = load i32, ptr %r29
    %r316 = add i32 %r314,%r315
    %r317 = load i32, ptr %r31
    %r318 = add i32 %r316,%r317
    %r319 = load i32, ptr %r33
    %r320 = sub i32 %r318,%r319
    %r321 = load i32, ptr %r35
    %r322 = sub i32 %r320,%r321
    %r323 = load i32, ptr %r37
    %r324 = sub i32 %r322,%r323
    %r325 = load i32, ptr %r39
    %r326 = sub i32 %r324,%r325
    %r327 = load i32, ptr %r41
    %r328 = add i32 %r326,%r327
    %r329 = load i32, ptr %r43
    %r330 = add i32 %r328,%r329
    %r331 = load i32, ptr %r45
    %r332 = add i32 %r330,%r331
    %r333 = load i32, ptr %r47
    %r334 = add i32 %r332,%r333
    %r335 = load i32, ptr %r49
    %r336 = sub i32 %r334,%r335
    %r337 = load i32, ptr %r51
    %r338 = sub i32 %r336,%r337
    %r339 = load i32, ptr %r53
    %r340 = sub i32 %r338,%r339
    %r341 = load i32, ptr %r55
    %r342 = sub i32 %r340,%r341
    %r343 = load i32, ptr %r57
    %r344 = add i32 %r342,%r343
    %r345 = load i32, ptr %r59
    %r346 = add i32 %r344,%r345
    %r347 = load i32, ptr %r61
    %r348 = add i32 %r346,%r347
    %r349 = load i32, ptr %r63
    %r350 = add i32 %r348,%r349
    %r351 = load i32, ptr %r65
    %r352 = sub i32 %r350,%r351
    %r353 = load i32, ptr %r67
    %r354 = sub i32 %r352,%r353
    %r355 = load i32, ptr %r69
    %r356 = sub i32 %r354,%r355
    %r357 = load i32, ptr %r71
    %r358 = sub i32 %r356,%r357
    %r359 = load i32, ptr %r73
    %r360 = add i32 %r358,%r359
    %r361 = load i32, ptr %r75
    %r362 = add i32 %r360,%r361
    %r363 = load i32, ptr %r77
    %r364 = add i32 %r362,%r363
    %r365 = load i32, ptr %r79
    %r366 = add i32 %r364,%r365
=======
    %r183 = sub i32 %r0,%r1
    %r302 = add i32 %r183,110
    %r304 = sub i32 %r302,2
    %r306 = sub i32 %r304,4
    %r308 = sub i32 %r306,6
    %r310 = sub i32 %r308,8
    %r318 = add i32 %r310,30
    %r320 = sub i32 %r318,4
    %r322 = sub i32 %r320,8
    %r324 = sub i32 %r322,12
    %r326 = sub i32 %r324,16
    %r334 = add i32 %r326,50
    %r336 = sub i32 %r334,6
    %r338 = sub i32 %r336,12
    %r340 = sub i32 %r338,18
    %r342 = sub i32 %r340,24
    %r350 = add i32 %r342,70
    %r352 = sub i32 %r350,8
    %r354 = sub i32 %r352,16
    %r356 = sub i32 %r354,24
    %r358 = sub i32 %r356,32
    %r366 = add i32 %r358,90
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    ret i32 %r366
}
define i32 @main()
{
L0:  ;
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:  ;
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r4 = add i32 1,0
    store i32 %r4, ptr %r0
    %r5 = load i32, ptr %r0
    %r6 = add i32 2,0
    %r7 = add i32 9,0
    %r8 = mul i32 %r6,%r7
    %r9 = add i32 %r5,%r8
    store i32 %r9, ptr %r2
    %r10 = load i32, ptr %r0
    %r11 = load i32, ptr %r2
    %r12 = call i32 @func(i32 %r10,i32 %r11)
    ret i32 %r12
}
