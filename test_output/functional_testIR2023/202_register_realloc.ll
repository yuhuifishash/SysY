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
    %r44 = add i32 1,0
    store i32 %r44, ptr %r8
    %r45 = add i32 2,0
    store i32 %r45, ptr %r9
    %r46 = add i32 3,0
    store i32 %r46, ptr %r10
    %r47 = add i32 4,0
    store i32 %r47, ptr %r11
    %r48 = add i32 1,0
    %r49 = load i32, ptr %r8
    %r50 = add i32 %r48,%r49
    store i32 %r50, ptr %r12
    %r51 = add i32 2,0
    %r52 = load i32, ptr %r9
    %r53 = add i32 %r51,%r52
    store i32 %r53, ptr %r13
    %r54 = add i32 3,0
    %r55 = load i32, ptr %r10
    %r56 = add i32 %r54,%r55
    store i32 %r56, ptr %r14
    %r57 = add i32 4,0
    %r58 = load i32, ptr %r11
    %r59 = add i32 %r57,%r58
    store i32 %r59, ptr %r15
    %r60 = add i32 1,0
    %r61 = load i32, ptr %r12
    %r62 = add i32 %r60,%r61
    store i32 %r62, ptr %r16
    %r63 = add i32 2,0
    %r64 = load i32, ptr %r13
    %r65 = add i32 %r63,%r64
    store i32 %r65, ptr %r17
    %r66 = add i32 3,0
    %r67 = load i32, ptr %r14
    %r68 = add i32 %r66,%r67
    store i32 %r68, ptr %r18
    %r69 = add i32 4,0
    %r70 = load i32, ptr %r15
    %r71 = add i32 %r69,%r70
    store i32 %r71, ptr %r19
    %r72 = add i32 1,0
    %r73 = load i32, ptr %r16
    %r74 = add i32 %r72,%r73
    store i32 %r74, ptr %r20
    %r75 = add i32 2,0
    %r76 = load i32, ptr %r17
    %r77 = add i32 %r75,%r76
    store i32 %r77, ptr %r21
    %r78 = add i32 3,0
    %r79 = load i32, ptr %r18
    %r80 = add i32 %r78,%r79
    store i32 %r80, ptr %r22
    %r81 = add i32 4,0
    %r82 = load i32, ptr %r19
    %r83 = add i32 %r81,%r82
    store i32 %r83, ptr %r23
    %r84 = add i32 1,0
    %r85 = load i32, ptr %r20
    %r86 = add i32 %r84,%r85
    store i32 %r86, ptr %r24
    %r87 = add i32 2,0
    %r88 = load i32, ptr %r21
    %r89 = add i32 %r87,%r88
    store i32 %r89, ptr %r25
    %r90 = add i32 3,0
    %r91 = load i32, ptr %r22
    %r92 = add i32 %r90,%r91
    store i32 %r92, ptr %r26
    %r93 = add i32 4,0
    %r94 = load i32, ptr %r23
    %r95 = add i32 %r93,%r94
    store i32 %r95, ptr %r27
    %r96 = add i32 1,0
    %r97 = load i32, ptr %r24
    %r98 = add i32 %r96,%r97
    store i32 %r98, ptr %r28
    %r99 = add i32 2,0
    %r100 = load i32, ptr %r25
    %r101 = add i32 %r99,%r100
    store i32 %r101, ptr %r29
    %r102 = add i32 3,0
    %r103 = load i32, ptr %r26
    %r104 = add i32 %r102,%r103
    store i32 %r104, ptr %r30
    %r105 = add i32 4,0
    %r106 = load i32, ptr %r27
    %r107 = add i32 %r105,%r106
    store i32 %r107, ptr %r31
    %r108 = add i32 1,0
    %r109 = load i32, ptr %r28
    %r110 = add i32 %r108,%r109
    store i32 %r110, ptr %r32
    %r111 = add i32 2,0
    %r112 = load i32, ptr %r29
    %r113 = add i32 %r111,%r112
    store i32 %r113, ptr %r33
    %r114 = add i32 3,0
    %r115 = load i32, ptr %r30
    %r116 = add i32 %r114,%r115
    store i32 %r116, ptr %r34
    %r117 = add i32 4,0
    %r118 = load i32, ptr %r31
    %r119 = add i32 %r117,%r118
    store i32 %r119, ptr %r35
    %r120 = add i32 1,0
    %r121 = load i32, ptr %r32
    %r122 = add i32 %r120,%r121
    store i32 %r122, ptr %r36
    %r123 = add i32 2,0
    %r124 = load i32, ptr %r33
    %r125 = add i32 %r123,%r124
    store i32 %r125, ptr %r37
    %r126 = add i32 3,0
    %r127 = load i32, ptr %r34
    %r128 = add i32 %r126,%r127
    store i32 %r128, ptr %r38
    %r129 = add i32 4,0
    %r130 = load i32, ptr %r35
    %r131 = add i32 %r129,%r130
    store i32 %r131, ptr %r39
    %r132 = add i32 1,0
    %r133 = load i32, ptr %r36
    %r134 = add i32 %r132,%r133
    store i32 %r134, ptr %r40
    %r135 = add i32 2,0
    %r136 = load i32, ptr %r37
    %r137 = add i32 %r135,%r136
    store i32 %r137, ptr %r41
    %r138 = add i32 3,0
    %r139 = load i32, ptr %r38
    %r140 = add i32 %r138,%r139
    store i32 %r140, ptr %r42
    %r141 = add i32 4,0
    %r142 = load i32, ptr %r39
    %r143 = add i32 %r141,%r142
    store i32 %r143, ptr %r43
    %r144 = load i32, ptr %r2
    %r145 = load i32, ptr %r3
    %r146 = sub i32 %r144,%r145
    %r147 = add i32 10,0
    %r148 = add i32 %r146,%r147
    store i32 %r148, ptr %r4
    %r149 = add i32 1,0
    %r150 = load i32, ptr %r36
    %r151 = add i32 %r149,%r150
    store i32 %r151, ptr %r40
    %r152 = add i32 2,0
    %r153 = load i32, ptr %r37
    %r154 = add i32 %r152,%r153
    store i32 %r154, ptr %r41
    %r155 = add i32 3,0
    %r156 = load i32, ptr %r38
    %r157 = add i32 %r155,%r156
    store i32 %r157, ptr %r42
    %r158 = add i32 4,0
    %r159 = load i32, ptr %r39
    %r160 = add i32 %r158,%r159
    store i32 %r160, ptr %r43
    %r161 = add i32 1,0
    %r162 = load i32, ptr %r32
    %r163 = add i32 %r161,%r162
    store i32 %r163, ptr %r36
    %r164 = add i32 2,0
    %r165 = load i32, ptr %r33
    %r166 = add i32 %r164,%r165
    store i32 %r166, ptr %r37
    %r167 = add i32 3,0
    %r168 = load i32, ptr %r34
    %r169 = add i32 %r167,%r168
    store i32 %r169, ptr %r38
    %r170 = add i32 4,0
    %r171 = load i32, ptr %r35
    %r172 = add i32 %r170,%r171
    store i32 %r172, ptr %r39
    %r173 = add i32 1,0
    %r174 = load i32, ptr %r28
    %r175 = add i32 %r173,%r174
    store i32 %r175, ptr %r32
    %r176 = add i32 2,0
    %r177 = load i32, ptr %r29
    %r178 = add i32 %r176,%r177
    store i32 %r178, ptr %r33
    %r179 = add i32 3,0
    %r180 = load i32, ptr %r30
    %r181 = add i32 %r179,%r180
    store i32 %r181, ptr %r34
    %r182 = add i32 4,0
    %r183 = load i32, ptr %r31
    %r184 = add i32 %r182,%r183
    store i32 %r184, ptr %r35
    %r185 = add i32 1,0
    %r186 = load i32, ptr %r24
    %r187 = add i32 %r185,%r186
    store i32 %r187, ptr %r28
    %r188 = add i32 2,0
    %r189 = load i32, ptr %r25
    %r190 = add i32 %r188,%r189
    store i32 %r190, ptr %r29
    %r191 = add i32 3,0
    %r192 = load i32, ptr %r26
    %r193 = add i32 %r191,%r192
    store i32 %r193, ptr %r30
    %r194 = add i32 4,0
    %r195 = load i32, ptr %r27
    %r196 = add i32 %r194,%r195
    store i32 %r196, ptr %r31
    %r197 = add i32 1,0
    %r198 = load i32, ptr %r20
    %r199 = add i32 %r197,%r198
    store i32 %r199, ptr %r24
    %r200 = add i32 2,0
    %r201 = load i32, ptr %r21
    %r202 = add i32 %r200,%r201
    store i32 %r202, ptr %r25
    %r203 = add i32 3,0
    %r204 = load i32, ptr %r22
    %r205 = add i32 %r203,%r204
    store i32 %r205, ptr %r26
    %r206 = add i32 4,0
    %r207 = load i32, ptr %r23
    %r208 = add i32 %r206,%r207
    store i32 %r208, ptr %r27
    %r209 = add i32 1,0
    %r210 = load i32, ptr %r16
    %r211 = add i32 %r209,%r210
    store i32 %r211, ptr %r20
    %r212 = add i32 2,0
    %r213 = load i32, ptr %r17
    %r214 = add i32 %r212,%r213
    store i32 %r214, ptr %r21
    %r215 = add i32 3,0
    %r216 = load i32, ptr %r18
    %r217 = add i32 %r215,%r216
    store i32 %r217, ptr %r22
    %r218 = add i32 4,0
    %r219 = load i32, ptr %r19
    %r220 = add i32 %r218,%r219
    store i32 %r220, ptr %r23
    %r221 = add i32 1,0
    %r222 = load i32, ptr %r12
    %r223 = add i32 %r221,%r222
    store i32 %r223, ptr %r16
    %r224 = add i32 2,0
    %r225 = load i32, ptr %r13
    %r226 = add i32 %r224,%r225
    store i32 %r226, ptr %r17
    %r227 = add i32 3,0
    %r228 = load i32, ptr %r14
    %r229 = add i32 %r227,%r228
    store i32 %r229, ptr %r18
    %r230 = add i32 4,0
    %r231 = load i32, ptr %r15
    %r232 = add i32 %r230,%r231
    store i32 %r232, ptr %r19
    %r233 = add i32 1,0
    %r234 = load i32, ptr %r8
    %r235 = add i32 %r233,%r234
    store i32 %r235, ptr %r12
    %r236 = add i32 2,0
    %r237 = load i32, ptr %r9
    %r238 = add i32 %r236,%r237
    store i32 %r238, ptr %r13
    %r239 = add i32 3,0
    %r240 = load i32, ptr %r10
    %r241 = add i32 %r239,%r240
    store i32 %r241, ptr %r14
    %r242 = add i32 4,0
    %r243 = load i32, ptr %r11
    %r244 = add i32 %r242,%r243
    store i32 %r244, ptr %r15
    %r245 = add i32 1,0
    %r246 = load i32, ptr %r40
    %r247 = add i32 %r245,%r246
    store i32 %r247, ptr %r8
    %r248 = add i32 2,0
    %r249 = load i32, ptr %r41
    %r250 = add i32 %r248,%r249
    store i32 %r250, ptr %r9
    %r251 = add i32 3,0
    %r252 = load i32, ptr %r42
    %r253 = add i32 %r251,%r252
    store i32 %r253, ptr %r10
    %r254 = add i32 4,0
    %r255 = load i32, ptr %r43
    %r256 = add i32 %r254,%r255
    store i32 %r256, ptr %r11
    %r257 = load i32, ptr %r4
    %r258 = load i32, ptr %r8
    %r259 = add i32 %r257,%r258
    %r260 = load i32, ptr %r9
    %r261 = add i32 %r259,%r260
    %r262 = load i32, ptr %r10
    %r263 = add i32 %r261,%r262
    %r264 = load i32, ptr %r11
    %r265 = add i32 %r263,%r264
    %r266 = load i32, ptr %r12
    %r267 = sub i32 %r265,%r266
    %r268 = load i32, ptr %r13
    %r269 = sub i32 %r267,%r268
    %r270 = load i32, ptr %r14
    %r271 = sub i32 %r269,%r270
    %r272 = load i32, ptr %r15
    %r273 = sub i32 %r271,%r272
    %r274 = load i32, ptr %r16
    %r275 = add i32 %r273,%r274
    %r276 = load i32, ptr %r17
    %r277 = add i32 %r275,%r276
    %r278 = load i32, ptr %r18
    %r279 = add i32 %r277,%r278
    %r280 = load i32, ptr %r19
    %r281 = add i32 %r279,%r280
    %r282 = load i32, ptr %r20
    %r283 = sub i32 %r281,%r282
    %r284 = load i32, ptr %r21
    %r285 = sub i32 %r283,%r284
    %r286 = load i32, ptr %r22
    %r287 = sub i32 %r285,%r286
    %r288 = load i32, ptr %r23
    %r289 = sub i32 %r287,%r288
    %r290 = load i32, ptr %r24
    %r291 = add i32 %r289,%r290
    %r292 = load i32, ptr %r25
    %r293 = add i32 %r291,%r292
    %r294 = load i32, ptr %r26
    %r295 = add i32 %r293,%r294
    %r296 = load i32, ptr %r27
    %r297 = add i32 %r295,%r296
    %r298 = load i32, ptr %r28
    %r299 = sub i32 %r297,%r298
    %r300 = load i32, ptr %r29
    %r301 = sub i32 %r299,%r300
    %r302 = load i32, ptr %r30
    %r303 = sub i32 %r301,%r302
    %r304 = load i32, ptr %r31
    %r305 = sub i32 %r303,%r304
    %r306 = load i32, ptr %r32
    %r307 = add i32 %r305,%r306
    %r308 = load i32, ptr %r33
    %r309 = add i32 %r307,%r308
    %r310 = load i32, ptr %r34
    %r311 = add i32 %r309,%r310
    %r312 = load i32, ptr %r35
    %r313 = add i32 %r311,%r312
    %r314 = load i32, ptr %r36
    %r315 = sub i32 %r313,%r314
    %r316 = load i32, ptr %r37
    %r317 = sub i32 %r315,%r316
    %r318 = load i32, ptr %r38
    %r319 = sub i32 %r317,%r318
    %r320 = load i32, ptr %r39
    %r321 = sub i32 %r319,%r320
    %r322 = load i32, ptr %r40
    %r323 = add i32 %r321,%r322
    %r324 = load i32, ptr %r41
    %r325 = add i32 %r323,%r324
    %r326 = load i32, ptr %r42
    %r327 = add i32 %r325,%r326
    %r328 = load i32, ptr %r43
    %r329 = add i32 %r327,%r328
    ret i32 %r329
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
    %r2 = add i32 1,0
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
    ret i32 %r10
}
