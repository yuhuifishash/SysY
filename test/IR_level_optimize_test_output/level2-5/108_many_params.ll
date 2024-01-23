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
    br label %L1
L1:
    %r66 = icmp eq i32 %r0,0
    br i1 %r66, label %L2, label %L3
L2:
    ret i32 %r1
L3:
    %r72 = sub i32 %r0,1
    %r75 = add i32 %r1,%r2
    %r77 = srem i32 %r75,998244353
    %r108 = call i32 @param32_rec(i32 %r72,i32 %r77,i32 %r3,i32 %r4,i32 %r5,i32 %r6,i32 %r7,i32 %r8,i32 %r9,i32 %r10,i32 %r11,i32 %r12,i32 %r13,i32 %r14,i32 %r15,i32 %r16,i32 %r17,i32 %r18,i32 %r19,i32 %r20,i32 %r21,i32 %r22,i32 %r23,i32 %r24,i32 %r25,i32 %r26,i32 %r27,i32 %r28,i32 %r29,i32 %r30,i32 %r31,i32 0)
    ret i32 %r108
}
define i32 @param32_arr(ptr %r0,ptr %r1,ptr %r2,ptr %r3,ptr %r4,ptr %r5,ptr %r6,ptr %r7,ptr %r8,ptr %r9,ptr %r10,ptr %r11,ptr %r12,ptr %r13,ptr %r14,ptr %r15,ptr %r16,ptr %r17,ptr %r18,ptr %r19,ptr %r20,ptr %r21,ptr %r22,ptr %r23,ptr %r24,ptr %r25,ptr %r26,ptr %r27,ptr %r28,ptr %r29,ptr %r30,ptr %r31)
{
L0:
    br label %L1
L1:
    %r34 = getelementptr i32, ptr %r0, i32 0
    %r35 = load i32, ptr %r34
    %r37 = getelementptr i32, ptr %r0, i32 1
    %r38 = load i32, ptr %r37
    %r39 = add i32 %r35,%r38
    %r42 = getelementptr i32, ptr %r1, i32 0
    %r43 = load i32, ptr %r42
    %r44 = add i32 %r39,%r43
    %r46 = getelementptr i32, ptr %r1, i32 1
    %r47 = load i32, ptr %r46
    %r48 = add i32 %r44,%r47
    %r51 = getelementptr i32, ptr %r2, i32 0
    %r52 = load i32, ptr %r51
    %r53 = add i32 %r48,%r52
    %r55 = getelementptr i32, ptr %r2, i32 1
    %r56 = load i32, ptr %r55
    %r57 = add i32 %r53,%r56
    %r60 = getelementptr i32, ptr %r3, i32 0
    %r61 = load i32, ptr %r60
    %r62 = add i32 %r57,%r61
    %r64 = getelementptr i32, ptr %r3, i32 1
    %r65 = load i32, ptr %r64
    %r66 = add i32 %r62,%r65
    %r69 = getelementptr i32, ptr %r4, i32 0
    %r70 = load i32, ptr %r69
    %r71 = add i32 %r66,%r70
    %r73 = getelementptr i32, ptr %r4, i32 1
    %r74 = load i32, ptr %r73
    %r75 = add i32 %r71,%r74
    %r78 = getelementptr i32, ptr %r5, i32 0
    %r79 = load i32, ptr %r78
    %r80 = add i32 %r75,%r79
    %r82 = getelementptr i32, ptr %r5, i32 1
    %r83 = load i32, ptr %r82
    %r84 = add i32 %r80,%r83
    %r87 = getelementptr i32, ptr %r6, i32 0
    %r88 = load i32, ptr %r87
    %r89 = add i32 %r84,%r88
    %r91 = getelementptr i32, ptr %r6, i32 1
    %r92 = load i32, ptr %r91
    %r93 = add i32 %r89,%r92
    %r96 = getelementptr i32, ptr %r7, i32 0
    %r97 = load i32, ptr %r96
    %r98 = add i32 %r93,%r97
    %r100 = getelementptr i32, ptr %r7, i32 1
    %r101 = load i32, ptr %r100
    %r102 = add i32 %r98,%r101
    %r105 = getelementptr i32, ptr %r8, i32 0
    %r106 = load i32, ptr %r105
    %r107 = add i32 %r102,%r106
    %r109 = getelementptr i32, ptr %r8, i32 1
    %r110 = load i32, ptr %r109
    %r111 = add i32 %r107,%r110
    %r114 = getelementptr i32, ptr %r9, i32 0
    %r115 = load i32, ptr %r114
    %r116 = add i32 %r111,%r115
    %r118 = getelementptr i32, ptr %r9, i32 1
    %r119 = load i32, ptr %r118
    %r120 = add i32 %r116,%r119
    %r123 = getelementptr i32, ptr %r10, i32 0
    %r124 = load i32, ptr %r123
    %r125 = add i32 %r120,%r124
    %r127 = getelementptr i32, ptr %r10, i32 1
    %r128 = load i32, ptr %r127
    %r129 = add i32 %r125,%r128
    %r132 = getelementptr i32, ptr %r11, i32 0
    %r133 = load i32, ptr %r132
    %r134 = add i32 %r129,%r133
    %r136 = getelementptr i32, ptr %r11, i32 1
    %r137 = load i32, ptr %r136
    %r138 = add i32 %r134,%r137
    %r141 = getelementptr i32, ptr %r12, i32 0
    %r142 = load i32, ptr %r141
    %r143 = add i32 %r138,%r142
    %r145 = getelementptr i32, ptr %r12, i32 1
    %r146 = load i32, ptr %r145
    %r147 = add i32 %r143,%r146
    %r150 = getelementptr i32, ptr %r13, i32 0
    %r151 = load i32, ptr %r150
    %r152 = add i32 %r147,%r151
    %r154 = getelementptr i32, ptr %r13, i32 1
    %r155 = load i32, ptr %r154
    %r156 = add i32 %r152,%r155
    %r159 = getelementptr i32, ptr %r14, i32 0
    %r160 = load i32, ptr %r159
    %r161 = add i32 %r156,%r160
    %r163 = getelementptr i32, ptr %r14, i32 1
    %r164 = load i32, ptr %r163
    %r165 = add i32 %r161,%r164
    %r168 = getelementptr i32, ptr %r15, i32 0
    %r169 = load i32, ptr %r168
    %r170 = add i32 %r165,%r169
    %r172 = getelementptr i32, ptr %r15, i32 1
    %r173 = load i32, ptr %r172
    %r174 = add i32 %r170,%r173
    %r177 = getelementptr i32, ptr %r16, i32 0
    %r178 = load i32, ptr %r177
    %r179 = add i32 %r174,%r178
    %r181 = getelementptr i32, ptr %r16, i32 1
    %r182 = load i32, ptr %r181
    %r183 = add i32 %r179,%r182
    %r186 = getelementptr i32, ptr %r17, i32 0
    %r187 = load i32, ptr %r186
    %r188 = add i32 %r183,%r187
    %r190 = getelementptr i32, ptr %r17, i32 1
    %r191 = load i32, ptr %r190
    %r192 = add i32 %r188,%r191
    %r195 = getelementptr i32, ptr %r18, i32 0
    %r196 = load i32, ptr %r195
    %r197 = add i32 %r192,%r196
    %r199 = getelementptr i32, ptr %r18, i32 1
    %r200 = load i32, ptr %r199
    %r201 = add i32 %r197,%r200
    %r204 = getelementptr i32, ptr %r19, i32 0
    %r205 = load i32, ptr %r204
    %r206 = add i32 %r201,%r205
    %r208 = getelementptr i32, ptr %r19, i32 1
    %r209 = load i32, ptr %r208
    %r210 = add i32 %r206,%r209
    %r213 = getelementptr i32, ptr %r20, i32 0
    %r214 = load i32, ptr %r213
    %r215 = add i32 %r210,%r214
    %r217 = getelementptr i32, ptr %r20, i32 1
    %r218 = load i32, ptr %r217
    %r219 = add i32 %r215,%r218
    %r222 = getelementptr i32, ptr %r21, i32 0
    %r223 = load i32, ptr %r222
    %r224 = add i32 %r219,%r223
    %r226 = getelementptr i32, ptr %r21, i32 1
    %r227 = load i32, ptr %r226
    %r228 = add i32 %r224,%r227
    %r231 = getelementptr i32, ptr %r22, i32 0
    %r232 = load i32, ptr %r231
    %r233 = add i32 %r228,%r232
    %r235 = getelementptr i32, ptr %r22, i32 1
    %r236 = load i32, ptr %r235
    %r237 = add i32 %r233,%r236
    %r240 = getelementptr i32, ptr %r23, i32 0
    %r241 = load i32, ptr %r240
    %r242 = add i32 %r237,%r241
    %r244 = getelementptr i32, ptr %r23, i32 1
    %r245 = load i32, ptr %r244
    %r246 = add i32 %r242,%r245
    %r249 = getelementptr i32, ptr %r24, i32 0
    %r250 = load i32, ptr %r249
    %r251 = add i32 %r246,%r250
    %r253 = getelementptr i32, ptr %r24, i32 1
    %r254 = load i32, ptr %r253
    %r255 = add i32 %r251,%r254
    %r258 = getelementptr i32, ptr %r25, i32 0
    %r259 = load i32, ptr %r258
    %r260 = add i32 %r255,%r259
    %r262 = getelementptr i32, ptr %r25, i32 1
    %r263 = load i32, ptr %r262
    %r264 = add i32 %r260,%r263
    %r267 = getelementptr i32, ptr %r26, i32 0
    %r268 = load i32, ptr %r267
    %r269 = add i32 %r264,%r268
    %r271 = getelementptr i32, ptr %r26, i32 1
    %r272 = load i32, ptr %r271
    %r273 = add i32 %r269,%r272
    %r276 = getelementptr i32, ptr %r27, i32 0
    %r277 = load i32, ptr %r276
    %r278 = add i32 %r273,%r277
    %r280 = getelementptr i32, ptr %r27, i32 1
    %r281 = load i32, ptr %r280
    %r282 = add i32 %r278,%r281
    %r285 = getelementptr i32, ptr %r28, i32 0
    %r286 = load i32, ptr %r285
    %r287 = add i32 %r282,%r286
    %r289 = getelementptr i32, ptr %r28, i32 1
    %r290 = load i32, ptr %r289
    %r291 = add i32 %r287,%r290
    %r294 = getelementptr i32, ptr %r29, i32 0
    %r295 = load i32, ptr %r294
    %r296 = add i32 %r291,%r295
    %r298 = getelementptr i32, ptr %r29, i32 1
    %r299 = load i32, ptr %r298
    %r300 = add i32 %r296,%r299
    %r303 = getelementptr i32, ptr %r30, i32 0
    %r304 = load i32, ptr %r303
    %r305 = add i32 %r300,%r304
    %r307 = getelementptr i32, ptr %r30, i32 1
    %r308 = load i32, ptr %r307
    %r309 = add i32 %r305,%r308
    %r312 = getelementptr i32, ptr %r31, i32 0
    %r313 = load i32, ptr %r312
    %r314 = add i32 %r309,%r313
    %r316 = getelementptr i32, ptr %r31, i32 1
    %r317 = load i32, ptr %r316
    %r318 = add i32 %r314,%r317
    ret i32 %r318
}
define i32 @main()
{
L0:
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
    %r20 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 0, i32 1
    store i32 8848, ptr %r20
    br label %L6
L3:
    %r125 = phi i32 [%r52,%L4],[1,%L6]
    %r30 = sub i32 %r125,1
    %r127 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r30
    %r32 = getelementptr i32, ptr %r127, i32 1
    %r33 = load i32, ptr %r32
    %r35 = sub i32 %r33,1
    %r128 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r125
    %r38 = getelementptr i32, ptr %r128, i32 0
    store i32 %r35, ptr %r38
    %r43 = getelementptr i32, ptr %r127, i32 0
    %r44 = load i32, ptr %r43
    %r46 = sub i32 %r44,2
    %r49 = getelementptr i32, ptr %r128, i32 1
    store i32 %r46, ptr %r49
    %r52 = add i32 %r125,1
    br label %L4
L4:
    %r55 = icmp slt i32 %r52,32
    br i1 %r55, label %L3, label %L5
L5:
    %r59 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 0
    %r61 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 1
    %r63 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 2
    %r65 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 3
    %r67 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 4
    %r69 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 5
    %r71 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 6
    %r73 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 7
    %r75 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 8
    %r77 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 9
    %r79 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 10
    %r81 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 11
    %r83 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 12
    %r85 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 13
    %r87 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 14
    %r89 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 15
    %r91 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 16
    %r93 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 17
    %r95 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 18
    %r97 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 19
    %r99 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 20
    %r101 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 21
    %r103 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 22
    %r105 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 23
    %r107 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 24
    %r109 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 25
    %r111 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 26
    %r113 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 27
    %r115 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 28
    %r117 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 29
    %r119 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 30
    %r121 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 31
    %r122 = call i32 @param32_arr(ptr %r59,ptr %r61,ptr %r63,ptr %r65,ptr %r67,ptr %r69,ptr %r71,ptr %r73,ptr %r75,ptr %r77,ptr %r79,ptr %r81,ptr %r83,ptr %r85,ptr %r87,ptr %r89,ptr %r91,ptr %r93,ptr %r95,ptr %r97,ptr %r99,ptr %r101,ptr %r103,ptr %r105,ptr %r107,ptr %r109,ptr %r111,ptr %r113,ptr %r115,ptr %r117,ptr %r119,ptr %r121)
    call void @putint(i32 %r122)
    call void @putch(i32 10)
    ret i32 0
L6:
    br label %L3
}
define i32 @param16(i32 %r0,i32 %r1,i32 %r2,i32 %r3,i32 %r4,i32 %r5,i32 %r6,i32 %r7,i32 %r8,i32 %r9,i32 %r10,i32 %r11,i32 %r12,i32 %r13,i32 %r14,i32 %r15)
{
L0:
    %r32 = alloca [16 x i32]
    br label %L1
L1:
    call void @llvm.memset.p0.i32(ptr %r32,i8 0,i32 64,i1 0)
    %r34 = getelementptr [16 x i32], ptr %r32, i32 0, i32 0
    store i32 %r0, ptr %r34
    %r36 = getelementptr [16 x i32], ptr %r32, i32 0, i32 1
    store i32 %r1, ptr %r36
    %r38 = getelementptr [16 x i32], ptr %r32, i32 0, i32 2
    store i32 %r2, ptr %r38
    %r40 = getelementptr [16 x i32], ptr %r32, i32 0, i32 3
    store i32 %r3, ptr %r40
    %r42 = getelementptr [16 x i32], ptr %r32, i32 0, i32 4
    store i32 %r4, ptr %r42
    %r44 = getelementptr [16 x i32], ptr %r32, i32 0, i32 5
    store i32 %r5, ptr %r44
    %r46 = getelementptr [16 x i32], ptr %r32, i32 0, i32 6
    store i32 %r6, ptr %r46
    %r48 = getelementptr [16 x i32], ptr %r32, i32 0, i32 7
    store i32 %r7, ptr %r48
    %r50 = getelementptr [16 x i32], ptr %r32, i32 0, i32 8
    store i32 %r8, ptr %r50
    %r52 = getelementptr [16 x i32], ptr %r32, i32 0, i32 9
    store i32 %r9, ptr %r52
    %r54 = getelementptr [16 x i32], ptr %r32, i32 0, i32 10
    store i32 %r10, ptr %r54
    %r56 = getelementptr [16 x i32], ptr %r32, i32 0, i32 11
    store i32 %r11, ptr %r56
    %r58 = getelementptr [16 x i32], ptr %r32, i32 0, i32 12
    store i32 %r12, ptr %r58
    %r60 = getelementptr [16 x i32], ptr %r32, i32 0, i32 13
    store i32 %r13, ptr %r60
    %r62 = getelementptr [16 x i32], ptr %r32, i32 0, i32 14
    store i32 %r14, ptr %r62
    %r64 = getelementptr [16 x i32], ptr %r32, i32 0, i32 15
    store i32 %r15, ptr %r64
    %r65 = getelementptr i32, ptr %r32, i32 0
    call void @sort(ptr %r65,i32 16)
    %r69 = load i32, ptr %r34
    %r72 = load i32, ptr %r36
    %r75 = load i32, ptr %r38
    %r78 = load i32, ptr %r40
    %r81 = load i32, ptr %r42
    %r84 = load i32, ptr %r44
    %r87 = load i32, ptr %r46
    %r90 = load i32, ptr %r48
    %r93 = load i32, ptr %r50
    %r96 = load i32, ptr %r52
    %r99 = load i32, ptr %r54
    %r102 = load i32, ptr %r56
    %r105 = load i32, ptr %r58
    %r108 = load i32, ptr %r60
    %r111 = load i32, ptr %r62
    %r114 = load i32, ptr %r64
    %r131 = call i32 @param32_rec(i32 %r69,i32 %r72,i32 %r75,i32 %r78,i32 %r81,i32 %r84,i32 %r87,i32 %r90,i32 %r93,i32 %r96,i32 %r99,i32 %r102,i32 %r105,i32 %r108,i32 %r111,i32 %r114,i32 %r0,i32 %r1,i32 %r2,i32 %r3,i32 %r4,i32 %r5,i32 %r6,i32 %r7,i32 %r8,i32 %r9,i32 %r10,i32 %r11,i32 %r12,i32 %r13,i32 %r14,i32 %r15)
    ret i32 %r131
}
define void @sort(ptr %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r8 = sub i32 %r1,1
    %r9 = icmp slt i32 0,%r8
    br i1 %r9, label %L12, label %L5
L3:
    %r64 = phi i32 [%r52,%L4],[0,%L12]
    %r15 = add i32 %r64,1
    %r18 = icmp slt i32 %r15,%r1
    br i1 %r18, label %L13, label %L9
L4:
    %r57 = icmp slt i32 %r52,%r56
    br i1 %r57, label %L3, label %L5
L5:
    ret void
L7:
    %r62 = phi i32 [%r15,%L13],[%r44,%L8]
    %r23 = load i32, ptr %r22
    %r25 = getelementptr i32, ptr %r0, i32 %r62
    %r26 = load i32, ptr %r25
    %r27 = icmp slt i32 %r23,%r26
    br i1 %r27, label %L10, label %L11
L8:
    %r47 = icmp slt i32 %r44,%r1
    br i1 %r47, label %L7, label %L9
L9:
    %r52 = add i32 %r64,1
    br label %L4
L10:
    %r32 = getelementptr i32, ptr %r0, i32 %r64
    %r33 = load i32, ptr %r32
    %r35 = getelementptr i32, ptr %r0, i32 %r62
    %r36 = load i32, ptr %r35
    store i32 %r36, ptr %r32
    store i32 %r33, ptr %r35
    br label %L11
L11:
    %r44 = add i32 %r62,1
    br label %L8
L12:
    %r56 = sub i32 %r1,1
    br label %L3
L13:
    %r22 = getelementptr i32, ptr %r0, i32 %r64
    br label %L7
}
