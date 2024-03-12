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
define void @sort(ptr %r0,i32 %r1)
{
L0:  ;
    br label %L1
L1:  ;  preheader0
    br label %L2
L2:  ;  exiting0  header0
    %r44 = phi i32 [0,%L1],[%r13,%L7]
    %r8 = sub i32 %r1,1
    %r9 = icmp slt i32 %r44,%r8
    br i1 %r9, label %L3, label %L4
L3:  ;  preheader1
    %r13 = add i32 %r44,1
    br label %L5
L4:  ;
    ret void
L5:  ;  exiting1  header1
    %r43 = phi i32 [%r13,%L3],[%r38,%L9]
    %r16 = icmp slt i32 %r43,%r1
    br i1 %r16, label %L6, label %L7
L6:  ;
    %r18 = getelementptr i32, ptr %r0, i32 %r44
    %r19 = load i32, ptr %r18
    %r21 = getelementptr i32, ptr %r0, i32 %r43
    %r22 = load i32, ptr %r21
    %r23 = icmp slt i32 %r19,%r22
    br i1 %r23, label %L8, label %L9
L7:  ;  latch0
    br label %L2
L8:  ;
    %r27 = load i32, ptr %r18
    %r32 = load i32, ptr %r21
    store i32 %r32, ptr %r18
    store i32 %r27, ptr %r21
    br label %L9
L9:  ;  latch1
    %r38 = add i32 %r43,1
    br label %L5
}
define i32 @param32_rec(i32 %r0,i32 %r1,i32 %r2,i32 %r3,i32 %r4,i32 %r5,i32 %r6,i32 %r7,i32 %r8,i32 %r9,i32 %r10,i32 %r11,i32 %r12,i32 %r13,i32 %r14,i32 %r15,i32 %r16,i32 %r17,i32 %r18,i32 %r19,i32 %r20,i32 %r21,i32 %r22,i32 %r23,i32 %r24,i32 %r25,i32 %r26,i32 %r27,i32 %r28,i32 %r29,i32 %r30,i32 %r31)
{
L0:  ;
    br label %L1
L1:  ;
    %r66 = icmp eq i32 %r0,0
    br i1 %r66, label %L2, label %L3
L2:  ;
    br label %L5
L3:  ;
    %r70 = sub i32 %r0,1
    %r73 = add i32 %r1,%r2
    %r75 = srem i32 %r73,998244353
    %r106 = call i32 @param32_rec(i32 %r70,i32 %r75,i32 %r3,i32 %r4,i32 %r5,i32 %r6,i32 %r7,i32 %r8,i32 %r9,i32 %r10,i32 %r11,i32 %r12,i32 %r13,i32 %r14,i32 %r15,i32 %r16,i32 %r17,i32 %r18,i32 %r19,i32 %r20,i32 %r21,i32 %r22,i32 %r23,i32 %r24,i32 %r25,i32 %r26,i32 %r27,i32 %r28,i32 %r29,i32 %r30,i32 %r31,i32 0)
    br label %L5
L5:  ;
    %r109 = phi i32 [%r1,%L2],[%r106,%L3]
    ret i32 %r109
}
define i32 @param32_arr(ptr %r0,ptr %r1,ptr %r2,ptr %r3,ptr %r4,ptr %r5,ptr %r6,ptr %r7,ptr %r8,ptr %r9,ptr %r10,ptr %r11,ptr %r12,ptr %r13,ptr %r14,ptr %r15,ptr %r16,ptr %r17,ptr %r18,ptr %r19,ptr %r20,ptr %r21,ptr %r22,ptr %r23,ptr %r24,ptr %r25,ptr %r26,ptr %r27,ptr %r28,ptr %r29,ptr %r30,ptr %r31)
{
L0:  ;
    br label %L1
L1:  ;
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
define i32 @param16(i32 %r0,i32 %r1,i32 %r2,i32 %r3,i32 %r4,i32 %r5,i32 %r6,i32 %r7,i32 %r8,i32 %r9,i32 %r10,i32 %r11,i32 %r12,i32 %r13,i32 %r14,i32 %r15)
{
L0:  ;
    %r32 = alloca [16 x i32]
    br label %L1
L1:  ;
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
    %r65 = getelementptr [16 x i32], ptr %r32, i32 0
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
define i32 @main()
{
L0:  ;
    %r0 = alloca [32 x [2 x i32]]
    br label %L1
L1:  ;  preheader0
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
    br label %L2
L2:  ;  exiting0  header0
    %r118 = phi i32 [1,%L1],[%r50,%L3]
    %r25 = icmp slt i32 %r118,32
    br i1 %r25, label %L3, label %L4
L3:  ;  latch0
    %r28 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r118, i32 0
    %r31 = sub i32 %r118,1
    %r33 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r31, i32 1
    %r34 = load i32, ptr %r33
    %r36 = sub i32 %r34,1
    store i32 %r36, ptr %r28
    %r39 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r118, i32 1
    %r44 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 %r31, i32 0
    %r45 = load i32, ptr %r44
    %r47 = sub i32 %r45,2
    store i32 %r47, ptr %r39
    %r50 = add i32 %r118,1
    br label %L2
L4:  ;
    %r52 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 0
    %r54 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 1
    %r56 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 2
    %r58 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 3
    %r60 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 4
    %r62 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 5
    %r64 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 6
    %r66 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 7
    %r68 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 8
    %r70 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 9
    %r72 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 10
    %r74 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 11
    %r76 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 12
    %r78 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 13
    %r80 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 14
    %r82 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 15
    %r84 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 16
    %r86 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 17
    %r88 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 18
    %r90 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 19
    %r92 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 20
    %r94 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 21
    %r96 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 22
    %r98 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 23
    %r100 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 24
    %r102 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 25
    %r104 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 26
    %r106 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 27
    %r108 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 28
    %r110 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 29
    %r112 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 30
    %r114 = getelementptr [32 x [2 x i32]], ptr %r0, i32 0, i32 31
    %r115 = call i32 @param32_arr(ptr %r52,ptr %r54,ptr %r56,ptr %r58,ptr %r60,ptr %r62,ptr %r64,ptr %r66,ptr %r68,ptr %r70,ptr %r72,ptr %r74,ptr %r76,ptr %r78,ptr %r80,ptr %r82,ptr %r84,ptr %r86,ptr %r88,ptr %r90,ptr %r92,ptr %r94,ptr %r96,ptr %r98,ptr %r100,ptr %r102,ptr %r104,ptr %r106,ptr %r108,ptr %r110,ptr %r112,ptr %r114)
    call void @putint(i32 %r115)
    call void @putch(i32 10)
    ret i32 0
}
