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
@sum = global i32 0
@array = global [20x i32] zeroinitializer
define i32 @f(i32 %r0,i32 %r1)
{
L0:
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r4 = load i32, ptr @sum
    %r5 = add i32 0,1
    %r6 = add i32 %r4,%r5
    store i32 %r6, ptr @sum
    %r7 = load i32, ptr %r2
    %r8 = load i32, ptr %r3
    %r9 = icmp sge i32 %r7,%r8
    br i1 %r9, label %L2, label %L4
L2:
    %r20 = add i32 0,0
    ret i32 %r20
L3:
    %r21 = add i32 0,1
    %r22 = load i32, ptr %r2
    %r23 = getelementptr [20 x i32], ptr @array, i32 0, i32 %r22
    store i32 %r21, ptr %r23
    %r24 = load i32, ptr %r2
    %r25 = add i32 0,0
    %r26 = icmp eq i32 %r24,%r25
    br i1 %r26, label %L6, label %L7
L4:
    %r12 = load i32, ptr %r2
    %r13 = add i32 0,20
    %r14 = icmp sge i32 %r12,%r13
    br i1 %r14, label %L2, label %L3
L6:
    %r29 = add i32 0,0
    %r30 = getelementptr [20 x i32], ptr @array, i32 0, i32 %r29
    %r31 = load i32, ptr %r30
    ret i32 %r31
L7:
    %r32 = load i32, ptr %r2
    %r33 = add i32 0,1
    %r34 = sub i32 %r32,%r33
    %r35 = getelementptr [20 x i32], ptr @array, i32 0, i32 %r34
    %r36 = load i32, ptr %r35
    ret i32 %r36
}
define i32 @g(i32 %r0,i32 %r1)
{
L0:
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r4 = load i32, ptr @sum
    %r5 = add i32 0,2
    %r6 = add i32 %r4,%r5
    store i32 %r6, ptr @sum
    %r7 = load i32, ptr %r2
    %r8 = load i32, ptr %r3
    %r9 = icmp sge i32 %r7,%r8
    br i1 %r9, label %L2, label %L4
L2:
    %r20 = add i32 0,1
    ret i32 %r20
L3:
    %r21 = add i32 0,0
    %r22 = load i32, ptr %r2
    %r23 = getelementptr [20 x i32], ptr @array, i32 0, i32 %r22
    store i32 %r21, ptr %r23
    %r24 = load i32, ptr %r2
    %r25 = add i32 0,0
    %r26 = icmp eq i32 %r24,%r25
    br i1 %r26, label %L6, label %L7
L4:
    %r12 = load i32, ptr %r2
    %r13 = add i32 0,20
    %r14 = icmp sge i32 %r12,%r13
    br i1 %r14, label %L2, label %L3
L6:
    %r29 = add i32 0,0
    %r30 = getelementptr [20 x i32], ptr @array, i32 0, i32 %r29
    %r31 = load i32, ptr %r30
    ret i32 %r31
L7:
    %r32 = load i32, ptr %r2
    %r33 = add i32 0,1
    %r34 = sub i32 %r32,%r33
    %r35 = getelementptr [20 x i32], ptr @array, i32 0, i32 %r34
    %r36 = load i32, ptr %r35
    ret i32 %r36
}
define i32 @h(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:
    %r2 = load i32, ptr @sum
    %r3 = add i32 0,3
    %r4 = add i32 %r2,%r3
    store i32 %r4, ptr @sum
    %r5 = load i32, ptr %r1
    %r6 = add i32 0,0
    %r7 = icmp slt i32 %r5,%r6
    br i1 %r7, label %L2, label %L4
L2:
    %r18 = add i32 0,0
    ret i32 %r18
L3:
    %r19 = load i32, ptr %r1
    %r20 = getelementptr [20 x i32], ptr @array, i32 0, i32 %r19
    %r21 = load i32, ptr %r20
    ret i32 %r21
L4:
    %r10 = load i32, ptr %r1
    %r11 = add i32 0,20
    %r12 = icmp sge i32 %r10,%r11
    br i1 %r12, label %L2, label %L3
}
define i32 @main()
{
L0:
    %r335 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r2 = load i32, ptr %r0
    %r3 = add i32 0,20
    %r4 = icmp slt i32 %r2,%r3
    br i1 %r4, label %L3, label %L5
L3:
    %r7 = add i32 0,0
    %r8 = load i32, ptr %r0
    %r9 = call i32 @f(i32 %r7,i32 %r8)
    %r10 = icmp ne i32 %r9,0
    br i1 %r10, label %L44, label %L7
L4:
    %r147 = load i32, ptr %r0
    %r148 = add i32 0,20
    %r149 = icmp slt i32 %r147,%r148
    br i1 %r149, label %L3, label %L5
L5:
    %r152 = add i32 0,0
    store i32 %r152, ptr %r0
    %r153 = load i32, ptr %r0
    %r154 = add i32 0,20
    %r155 = icmp slt i32 %r153,%r154
    br i1 %r155, label %L47, label %L49
L6:
    br label %L7
L7:
    %r144 = load i32, ptr %r0
    %r145 = add i32 0,1
    %r146 = add i32 %r144,%r145
    store i32 %r146, ptr %r0
    br label %L4
L8:
    %r137 = add i32 0,19
    %r138 = load i32, ptr %r0
    %r139 = call i32 @f(i32 %r137,i32 %r138)
    %r140 = icmp ne i32 %r139,0
    br i1 %r140, label %L6, label %L7
L10:
    %r130 = add i32 0,18
    %r131 = load i32, ptr %r0
    %r132 = call i32 @f(i32 %r130,i32 %r131)
    %r133 = icmp ne i32 %r132,0
    br i1 %r133, label %L8, label %L7
L12:
    %r123 = add i32 0,17
    %r124 = load i32, ptr %r0
    %r125 = call i32 @f(i32 %r123,i32 %r124)
    %r126 = icmp ne i32 %r125,0
    br i1 %r126, label %L10, label %L7
L14:
    %r116 = add i32 0,16
    %r117 = load i32, ptr %r0
    %r118 = call i32 @f(i32 %r116,i32 %r117)
    %r119 = icmp ne i32 %r118,0
    br i1 %r119, label %L12, label %L7
L16:
    %r109 = add i32 0,15
    %r110 = load i32, ptr %r0
    %r111 = call i32 @f(i32 %r109,i32 %r110)
    %r112 = icmp ne i32 %r111,0
    br i1 %r112, label %L14, label %L7
L18:
    %r102 = add i32 0,14
    %r103 = load i32, ptr %r0
    %r104 = call i32 @f(i32 %r102,i32 %r103)
    %r105 = icmp ne i32 %r104,0
    br i1 %r105, label %L16, label %L7
L20:
    %r95 = add i32 0,13
    %r96 = load i32, ptr %r0
    %r97 = call i32 @f(i32 %r95,i32 %r96)
    %r98 = icmp ne i32 %r97,0
    br i1 %r98, label %L18, label %L7
L22:
    %r88 = add i32 0,12
    %r89 = load i32, ptr %r0
    %r90 = call i32 @f(i32 %r88,i32 %r89)
    %r91 = icmp ne i32 %r90,0
    br i1 %r91, label %L20, label %L7
L24:
    %r81 = add i32 0,11
    %r82 = load i32, ptr %r0
    %r83 = call i32 @f(i32 %r81,i32 %r82)
    %r84 = icmp ne i32 %r83,0
    br i1 %r84, label %L22, label %L7
L26:
    %r74 = add i32 0,10
    %r75 = load i32, ptr %r0
    %r76 = call i32 @f(i32 %r74,i32 %r75)
    %r77 = icmp ne i32 %r76,0
    br i1 %r77, label %L24, label %L7
L28:
    %r67 = add i32 0,9
    %r68 = load i32, ptr %r0
    %r69 = call i32 @f(i32 %r67,i32 %r68)
    %r70 = icmp ne i32 %r69,0
    br i1 %r70, label %L26, label %L7
L30:
    %r60 = add i32 0,8
    %r61 = load i32, ptr %r0
    %r62 = call i32 @f(i32 %r60,i32 %r61)
    %r63 = icmp ne i32 %r62,0
    br i1 %r63, label %L28, label %L7
L32:
    %r53 = add i32 0,7
    %r54 = load i32, ptr %r0
    %r55 = call i32 @f(i32 %r53,i32 %r54)
    %r56 = icmp ne i32 %r55,0
    br i1 %r56, label %L30, label %L7
L34:
    %r46 = add i32 0,6
    %r47 = load i32, ptr %r0
    %r48 = call i32 @f(i32 %r46,i32 %r47)
    %r49 = icmp ne i32 %r48,0
    br i1 %r49, label %L32, label %L7
L36:
    %r39 = add i32 0,5
    %r40 = load i32, ptr %r0
    %r41 = call i32 @f(i32 %r39,i32 %r40)
    %r42 = icmp ne i32 %r41,0
    br i1 %r42, label %L34, label %L7
L38:
    %r32 = add i32 0,4
    %r33 = load i32, ptr %r0
    %r34 = call i32 @f(i32 %r32,i32 %r33)
    %r35 = icmp ne i32 %r34,0
    br i1 %r35, label %L36, label %L7
L40:
    %r25 = add i32 0,3
    %r26 = load i32, ptr %r0
    %r27 = call i32 @f(i32 %r25,i32 %r26)
    %r28 = icmp ne i32 %r27,0
    br i1 %r28, label %L38, label %L7
L42:
    %r18 = add i32 0,2
    %r19 = load i32, ptr %r0
    %r20 = call i32 @f(i32 %r18,i32 %r19)
    %r21 = icmp ne i32 %r20,0
    br i1 %r21, label %L40, label %L7
L44:
    %r11 = add i32 0,1
    %r12 = load i32, ptr %r0
    %r13 = call i32 @f(i32 %r11,i32 %r12)
    %r14 = icmp ne i32 %r13,0
    br i1 %r14, label %L42, label %L7
L47:
    %r158 = add i32 0,0
    %r159 = load i32, ptr %r0
    %r160 = call i32 @g(i32 %r158,i32 %r159)
    %r161 = icmp eq i32 %r160,0
    br i1 %r161, label %L88, label %L50
L48:
    %r298 = load i32, ptr %r0
    %r299 = add i32 0,20
    %r300 = icmp slt i32 %r298,%r299
    br i1 %r300, label %L47, label %L49
L49:
    %r303 = add i32 0,1
    store i32 %r303, ptr %r0
    %r304 = load i32, ptr %r0
    %r305 = add i32 0,20
    %r306 = icmp slt i32 %r304,%r305
    br i1 %r306, label %L94, label %L93
L50:
    br label %L51
L51:
    %r295 = load i32, ptr %r0
    %r296 = add i32 0,1
    %r297 = add i32 %r295,%r296
    store i32 %r297, ptr %r0
    br label %L48
L52:
    %r288 = add i32 0,19
    %r289 = load i32, ptr %r0
    %r290 = call i32 @g(i32 %r288,i32 %r289)
    %r291 = icmp ne i32 %r290,0
    br i1 %r291, label %L50, label %L51
L54:
    %r281 = add i32 0,18
    %r282 = load i32, ptr %r0
    %r283 = call i32 @g(i32 %r281,i32 %r282)
    %r284 = icmp ne i32 %r283,0
    br i1 %r284, label %L50, label %L52
L56:
    %r274 = add i32 0,17
    %r275 = load i32, ptr %r0
    %r276 = call i32 @g(i32 %r274,i32 %r275)
    %r277 = icmp ne i32 %r276,0
    br i1 %r277, label %L50, label %L54
L58:
    %r267 = add i32 0,16
    %r268 = load i32, ptr %r0
    %r269 = call i32 @g(i32 %r267,i32 %r268)
    %r270 = icmp ne i32 %r269,0
    br i1 %r270, label %L50, label %L56
L60:
    %r260 = add i32 0,15
    %r261 = load i32, ptr %r0
    %r262 = call i32 @g(i32 %r260,i32 %r261)
    %r263 = icmp ne i32 %r262,0
    br i1 %r263, label %L50, label %L58
L62:
    %r253 = add i32 0,14
    %r254 = load i32, ptr %r0
    %r255 = call i32 @g(i32 %r253,i32 %r254)
    %r256 = icmp ne i32 %r255,0
    br i1 %r256, label %L50, label %L60
L64:
    %r246 = add i32 0,13
    %r247 = load i32, ptr %r0
    %r248 = call i32 @g(i32 %r246,i32 %r247)
    %r249 = icmp ne i32 %r248,0
    br i1 %r249, label %L50, label %L62
L66:
    %r239 = add i32 0,12
    %r240 = load i32, ptr %r0
    %r241 = call i32 @g(i32 %r239,i32 %r240)
    %r242 = icmp ne i32 %r241,0
    br i1 %r242, label %L50, label %L64
L68:
    %r232 = add i32 0,11
    %r233 = load i32, ptr %r0
    %r234 = call i32 @g(i32 %r232,i32 %r233)
    %r235 = icmp ne i32 %r234,0
    br i1 %r235, label %L50, label %L66
L70:
    %r225 = add i32 0,10
    %r226 = load i32, ptr %r0
    %r227 = call i32 @g(i32 %r225,i32 %r226)
    %r228 = icmp ne i32 %r227,0
    br i1 %r228, label %L50, label %L68
L72:
    %r218 = add i32 0,9
    %r219 = load i32, ptr %r0
    %r220 = call i32 @g(i32 %r218,i32 %r219)
    %r221 = icmp ne i32 %r220,0
    br i1 %r221, label %L50, label %L70
L74:
    %r211 = add i32 0,8
    %r212 = load i32, ptr %r0
    %r213 = call i32 @g(i32 %r211,i32 %r212)
    %r214 = icmp ne i32 %r213,0
    br i1 %r214, label %L50, label %L72
L76:
    %r204 = add i32 0,7
    %r205 = load i32, ptr %r0
    %r206 = call i32 @g(i32 %r204,i32 %r205)
    %r207 = icmp ne i32 %r206,0
    br i1 %r207, label %L50, label %L74
L78:
    %r197 = add i32 0,6
    %r198 = load i32, ptr %r0
    %r199 = call i32 @g(i32 %r197,i32 %r198)
    %r200 = icmp ne i32 %r199,0
    br i1 %r200, label %L50, label %L76
L80:
    %r190 = add i32 0,5
    %r191 = load i32, ptr %r0
    %r192 = call i32 @g(i32 %r190,i32 %r191)
    %r193 = icmp ne i32 %r192,0
    br i1 %r193, label %L50, label %L78
L82:
    %r183 = add i32 0,4
    %r184 = load i32, ptr %r0
    %r185 = call i32 @g(i32 %r183,i32 %r184)
    %r186 = icmp ne i32 %r185,0
    br i1 %r186, label %L50, label %L80
L84:
    %r176 = add i32 0,3
    %r177 = load i32, ptr %r0
    %r178 = call i32 @g(i32 %r176,i32 %r177)
    %r179 = icmp ne i32 %r178,0
    br i1 %r179, label %L50, label %L82
L86:
    %r169 = add i32 0,2
    %r170 = load i32, ptr %r0
    %r171 = call i32 @g(i32 %r169,i32 %r170)
    %r172 = icmp ne i32 %r171,0
    br i1 %r172, label %L50, label %L84
L88:
    %r162 = add i32 0,1
    %r163 = load i32, ptr %r0
    %r164 = call i32 @g(i32 %r162,i32 %r163)
    %r165 = icmp ne i32 %r164,0
    br i1 %r165, label %L50, label %L86
L91:
    %r318 = load i32, ptr %r0
    %r319 = add i32 0,1
    %r320 = add i32 %r318,%r319
    store i32 %r320, ptr %r0
    br label %L92
L92:
    %r321 = load i32, ptr %r0
    %r322 = add i32 0,20
    %r323 = icmp slt i32 %r321,%r322
    br i1 %r323, label %L96, label %L93
L93:
    %r336 = add i32 0,0
    store i32 %r336, ptr %r335
    %r337 = add i32 0,0
    store i32 %r337, ptr %r335
    %r338 = add i32 0,0
    %r339 = call i32 @h(i32 %r338)
    %r340 = icmp ne i32 %r339,0
    br i1 %r340, label %L104, label %L102
L94:
    %r309 = load i32, ptr %r0
    %r310 = add i32 0,1
    %r311 = sub i32 %r309,%r310
    %r312 = load i32, ptr %r0
    %r313 = call i32 @f(i32 %r311,i32 %r312)
    %r314 = icmp ne i32 %r313,0
    br i1 %r314, label %L91, label %L93
L96:
    %r326 = load i32, ptr %r0
    %r327 = add i32 0,1
    %r328 = sub i32 %r326,%r327
    %r329 = load i32, ptr %r0
    %r330 = call i32 @f(i32 %r328,i32 %r329)
    %r331 = icmp ne i32 %r330,0
    br i1 %r331, label %L91, label %L93
L98:
    %r361 = add i32 0,1
    store i32 %r361, ptr %r335
    br label %L99
L99:
    %r362 = load i32, ptr @sum
    %r363 = load i32, ptr %r335
    %r364 = add i32 %r362,%r363
    %r365 = add i32 0,0
    store i32 %r365, ptr %r335
    %r366 = add i32 0,4
    %r367 = call i32 @h(i32 %r366)
    %r368 = icmp eq i32 %r367,0
    br i1 %r368, label %L106, label %L110
L100:
    %r355 = add i32 0,3
    %r356 = call i32 @h(i32 %r355)
    %r357 = icmp ne i32 %r356,0
    br i1 %r357, label %L98, label %L99
L102:
    %r347 = add i32 0,2
    %r348 = call i32 @h(i32 %r347)
    %r349 = icmp eq i32 %r348,0
    br i1 %r349, label %L98, label %L100
L104:
    %r341 = add i32 0,1
    %r342 = call i32 @h(i32 %r341)
    %r343 = icmp ne i32 %r342,0
    br i1 %r343, label %L98, label %L102
L106:
    %r399 = add i32 0,1
    store i32 %r399, ptr %r335
    br label %L107
L107:
    %r400 = load i32, ptr @sum
    %r401 = load i32, ptr %r335
    %r402 = mul i32 %r400,%r401
    %r403 = add i32 0,0
    store i32 %r403, ptr %r335
    %r404 = add i32 0,9
    %r405 = call i32 @h(i32 %r404)
    %r406 = icmp ne i32 %r405,0
    br i1 %r406, label %L126, label %L124
L108:
    %r391 = add i32 0,8
    %r392 = call i32 @h(i32 %r391)
    %r393 = icmp eq i32 %r392,0
    br i1 %r393, label %L106, label %L107
L110:
    %r371 = add i32 0,5
    %r372 = call i32 @h(i32 %r371)
    %r373 = icmp ne i32 %r372,0
    br i1 %r373, label %L114, label %L108
L112:
    %r382 = add i32 0,7
    %r383 = call i32 @h(i32 %r382)
    %r384 = icmp ne i32 %r383,0
    br i1 %r384, label %L106, label %L108
L114:
    %r374 = add i32 0,6
    %r375 = call i32 @h(i32 %r374)
    %r376 = icmp eq i32 %r375,0
    br i1 %r376, label %L112, label %L108
L116:
    %r451 = add i32 0,1
    store i32 %r451, ptr %r335
    br label %L117
L117:
    %r452 = load i32, ptr @sum
    %r453 = load i32, ptr %r335
    %r454 = sub i32 %r452,%r453
    %r455 = add i32 0,0
    store i32 %r455, ptr %r335
    %r456 = add i32 0,0
    %r457 = call i32 @h(i32 %r456)
    %r458 = icmp ne i32 %r457,0
    br i1 %r458, label %L142, label %L136
L118:
    %r439 = add i32 0,14
    %r440 = call i32 @h(i32 %r439)
    %r441 = icmp ne i32 %r440,0
    br i1 %r441, label %L128, label %L117
L120:
    %r431 = add i32 0,13
    %r432 = call i32 @h(i32 %r431)
    %r433 = icmp eq i32 %r432,0
    br i1 %r433, label %L116, label %L118
L122:
    %r423 = add i32 0,12
    %r424 = call i32 @h(i32 %r423)
    %r425 = icmp eq i32 %r424,0
    br i1 %r425, label %L116, label %L120
L124:
    %r415 = add i32 0,11
    %r416 = call i32 @h(i32 %r415)
    %r417 = icmp eq i32 %r416,0
    br i1 %r417, label %L116, label %L122
L126:
    %r407 = add i32 0,10
    %r408 = call i32 @h(i32 %r407)
    %r409 = icmp eq i32 %r408,0
    br i1 %r409, label %L116, label %L124
L128:
    %r442 = add i32 0,15
    %r443 = call i32 @h(i32 %r442)
    %r444 = icmp ne i32 %r443,0
    br i1 %r444, label %L116, label %L117
L130:
    %r507 = add i32 0,1
    store i32 %r507, ptr %r335
    br label %L131
L131:
    %r508 = load i32, ptr @sum
    %r509 = load i32, ptr %r335
    %r510 = add i32 %r508,%r509
    call void @putint(i32 %r510)
    %r511 = add i32 0,0
    ret i32 %r511
L132:
    %r501 = add i32 0,8
    %r502 = call i32 @h(i32 %r501)
    %r503 = icmp ne i32 %r502,0
    br i1 %r503, label %L130, label %L131
L134:
    %r487 = add i32 0,6
    %r488 = call i32 @h(i32 %r487)
    %r489 = icmp ne i32 %r488,0
    br i1 %r489, label %L144, label %L132
L136:
    %r481 = add i32 0,5
    %r482 = call i32 @h(i32 %r481)
    %r483 = icmp ne i32 %r482,0
    br i1 %r483, label %L130, label %L134
L138:
    %r473 = add i32 0,4
    %r474 = call i32 @h(i32 %r473)
    %r475 = icmp eq i32 %r474,0
    br i1 %r475, label %L130, label %L136
L140:
    %r465 = add i32 0,3
    %r466 = call i32 @h(i32 %r465)
    %r467 = icmp eq i32 %r466,0
    br i1 %r467, label %L138, label %L136
L142:
    %r459 = add i32 0,2
    %r460 = call i32 @h(i32 %r459)
    %r461 = icmp ne i32 %r460,0
    br i1 %r461, label %L140, label %L136
L144:
    %r490 = add i32 0,7
    %r491 = call i32 @h(i32 %r490)
    %r492 = icmp eq i32 %r491,0
    br i1 %r492, label %L130, label %L132
}
