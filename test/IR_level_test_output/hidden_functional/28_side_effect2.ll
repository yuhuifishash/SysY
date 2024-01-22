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
@sum = global i32 0
@array = global [20x i32] zeroinitializer
define i32 @f(i32 %r0,i32 %r1)
{
L0:
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    %r4 = load i32, ptr @sum
    %r5 = add i32 0,1
    %r6 = add i32 %r4,%r5
    store i32 %r6, ptr @sum
    %r7 = load i32, ptr %r2
    %r8 = load i32, ptr %r3
    %r9 = icmp sge i32 %r7,%r8
    br i1 %r9, label %L1, label %L3
L1:
    %r20 = add i32 0,0
    ret i32 %r20
L2:
    %r21 = add i32 0,1
    %r22 = load i32, ptr %r2
    %r23 = getelementptr [20 x i32], ptr @array, i32 0, i32 %r22
    store i32 %r21, ptr %r23
    %r24 = load i32, ptr %r2
    %r25 = add i32 0,0
    %r26 = icmp eq i32 %r24,%r25
    br i1 %r26, label %L5, label %L6
L3:
    %r12 = load i32, ptr %r2
    %r13 = add i32 0,20
    %r14 = icmp sge i32 %r12,%r13
    br i1 %r14, label %L1, label %L2
L5:
    %r29 = add i32 0,0
    %r30 = getelementptr [20 x i32], ptr @array, i32 0, i32 %r29
    %r31 = load i32, ptr %r30
    ret i32 %r31
L6:
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
    %r4 = load i32, ptr @sum
    %r5 = add i32 0,2
    %r6 = add i32 %r4,%r5
    store i32 %r6, ptr @sum
    %r7 = load i32, ptr %r2
    %r8 = load i32, ptr %r3
    %r9 = icmp sge i32 %r7,%r8
    br i1 %r9, label %L1, label %L3
L1:
    %r20 = add i32 0,1
    ret i32 %r20
L2:
    %r21 = add i32 0,0
    %r22 = load i32, ptr %r2
    %r23 = getelementptr [20 x i32], ptr @array, i32 0, i32 %r22
    store i32 %r21, ptr %r23
    %r24 = load i32, ptr %r2
    %r25 = add i32 0,0
    %r26 = icmp eq i32 %r24,%r25
    br i1 %r26, label %L5, label %L6
L3:
    %r12 = load i32, ptr %r2
    %r13 = add i32 0,20
    %r14 = icmp sge i32 %r12,%r13
    br i1 %r14, label %L1, label %L2
L5:
    %r29 = add i32 0,0
    %r30 = getelementptr [20 x i32], ptr @array, i32 0, i32 %r29
    %r31 = load i32, ptr %r30
    ret i32 %r31
L6:
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
    %r2 = load i32, ptr @sum
    %r3 = add i32 0,3
    %r4 = add i32 %r2,%r3
    store i32 %r4, ptr @sum
    %r5 = load i32, ptr %r1
    %r6 = add i32 0,0
    %r7 = icmp slt i32 %r5,%r6
    br i1 %r7, label %L1, label %L3
L1:
    %r18 = add i32 0,0
    ret i32 %r18
L2:
    %r19 = load i32, ptr %r1
    %r20 = getelementptr [20 x i32], ptr @array, i32 0, i32 %r19
    %r21 = load i32, ptr %r20
    ret i32 %r21
L3:
    %r10 = load i32, ptr %r1
    %r11 = add i32 0,20
    %r12 = icmp sge i32 %r10,%r11
    br i1 %r12, label %L1, label %L2
}
define i32 @main()
{
L0:
    %r311 = alloca i32
    %r0 = alloca i32
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    br label %L1
L1:
    %r2 = load i32, ptr %r0
    %r3 = add i32 0,20
    %r4 = icmp slt i32 %r2,%r3
    br i1 %r4, label %L2, label %L3
L2:
    %r7 = add i32 0,0
    %r8 = load i32, ptr %r0
    %r9 = call i32 @f(i32 %r7,i32 %r8)
    %r10 = icmp ne i32 %r9,0
    br i1 %r10, label %L42, label %L5
L3:
    %r147 = add i32 0,0
    store i32 %r147, ptr %r0
    br label %L44
L4:
    br label %L5
L5:
    %r144 = load i32, ptr %r0
    %r145 = add i32 0,1
    %r146 = add i32 %r144,%r145
    store i32 %r146, ptr %r0
    br label %L1
L6:
    %r137 = add i32 0,19
    %r138 = load i32, ptr %r0
    %r139 = call i32 @f(i32 %r137,i32 %r138)
    %r140 = icmp ne i32 %r139,0
    br i1 %r140, label %L4, label %L5
L8:
    %r130 = add i32 0,18
    %r131 = load i32, ptr %r0
    %r132 = call i32 @f(i32 %r130,i32 %r131)
    %r133 = icmp ne i32 %r132,0
    br i1 %r133, label %L6, label %L5
L10:
    %r123 = add i32 0,17
    %r124 = load i32, ptr %r0
    %r125 = call i32 @f(i32 %r123,i32 %r124)
    %r126 = icmp ne i32 %r125,0
    br i1 %r126, label %L8, label %L5
L12:
    %r116 = add i32 0,16
    %r117 = load i32, ptr %r0
    %r118 = call i32 @f(i32 %r116,i32 %r117)
    %r119 = icmp ne i32 %r118,0
    br i1 %r119, label %L10, label %L5
L14:
    %r109 = add i32 0,15
    %r110 = load i32, ptr %r0
    %r111 = call i32 @f(i32 %r109,i32 %r110)
    %r112 = icmp ne i32 %r111,0
    br i1 %r112, label %L12, label %L5
L16:
    %r102 = add i32 0,14
    %r103 = load i32, ptr %r0
    %r104 = call i32 @f(i32 %r102,i32 %r103)
    %r105 = icmp ne i32 %r104,0
    br i1 %r105, label %L14, label %L5
L18:
    %r95 = add i32 0,13
    %r96 = load i32, ptr %r0
    %r97 = call i32 @f(i32 %r95,i32 %r96)
    %r98 = icmp ne i32 %r97,0
    br i1 %r98, label %L16, label %L5
L20:
    %r88 = add i32 0,12
    %r89 = load i32, ptr %r0
    %r90 = call i32 @f(i32 %r88,i32 %r89)
    %r91 = icmp ne i32 %r90,0
    br i1 %r91, label %L18, label %L5
L22:
    %r81 = add i32 0,11
    %r82 = load i32, ptr %r0
    %r83 = call i32 @f(i32 %r81,i32 %r82)
    %r84 = icmp ne i32 %r83,0
    br i1 %r84, label %L20, label %L5
L24:
    %r74 = add i32 0,10
    %r75 = load i32, ptr %r0
    %r76 = call i32 @f(i32 %r74,i32 %r75)
    %r77 = icmp ne i32 %r76,0
    br i1 %r77, label %L22, label %L5
L26:
    %r67 = add i32 0,9
    %r68 = load i32, ptr %r0
    %r69 = call i32 @f(i32 %r67,i32 %r68)
    %r70 = icmp ne i32 %r69,0
    br i1 %r70, label %L24, label %L5
L28:
    %r60 = add i32 0,8
    %r61 = load i32, ptr %r0
    %r62 = call i32 @f(i32 %r60,i32 %r61)
    %r63 = icmp ne i32 %r62,0
    br i1 %r63, label %L26, label %L5
L30:
    %r53 = add i32 0,7
    %r54 = load i32, ptr %r0
    %r55 = call i32 @f(i32 %r53,i32 %r54)
    %r56 = icmp ne i32 %r55,0
    br i1 %r56, label %L28, label %L5
L32:
    %r46 = add i32 0,6
    %r47 = load i32, ptr %r0
    %r48 = call i32 @f(i32 %r46,i32 %r47)
    %r49 = icmp ne i32 %r48,0
    br i1 %r49, label %L30, label %L5
L34:
    %r39 = add i32 0,5
    %r40 = load i32, ptr %r0
    %r41 = call i32 @f(i32 %r39,i32 %r40)
    %r42 = icmp ne i32 %r41,0
    br i1 %r42, label %L32, label %L5
L36:
    %r32 = add i32 0,4
    %r33 = load i32, ptr %r0
    %r34 = call i32 @f(i32 %r32,i32 %r33)
    %r35 = icmp ne i32 %r34,0
    br i1 %r35, label %L34, label %L5
L38:
    %r25 = add i32 0,3
    %r26 = load i32, ptr %r0
    %r27 = call i32 @f(i32 %r25,i32 %r26)
    %r28 = icmp ne i32 %r27,0
    br i1 %r28, label %L36, label %L5
L40:
    %r18 = add i32 0,2
    %r19 = load i32, ptr %r0
    %r20 = call i32 @f(i32 %r18,i32 %r19)
    %r21 = icmp ne i32 %r20,0
    br i1 %r21, label %L38, label %L5
L42:
    %r11 = add i32 0,1
    %r12 = load i32, ptr %r0
    %r13 = call i32 @f(i32 %r11,i32 %r12)
    %r14 = icmp ne i32 %r13,0
    br i1 %r14, label %L40, label %L5
L44:
    %r148 = load i32, ptr %r0
    %r149 = add i32 0,20
    %r150 = icmp slt i32 %r148,%r149
    br i1 %r150, label %L45, label %L46
L45:
    %r153 = add i32 0,0
    %r154 = load i32, ptr %r0
    %r155 = call i32 @g(i32 %r153,i32 %r154)
    %r156 = icmp eq i32 %r155,0
    br i1 %r156, label %L85, label %L47
L46:
    %r293 = add i32 0,1
    store i32 %r293, ptr %r0
    br label %L87
L47:
    br label %L48
L48:
    %r290 = load i32, ptr %r0
    %r291 = add i32 0,1
    %r292 = add i32 %r290,%r291
    store i32 %r292, ptr %r0
    br label %L44
L49:
    %r283 = add i32 0,19
    %r284 = load i32, ptr %r0
    %r285 = call i32 @g(i32 %r283,i32 %r284)
    %r286 = icmp ne i32 %r285,0
    br i1 %r286, label %L47, label %L48
L51:
    %r276 = add i32 0,18
    %r277 = load i32, ptr %r0
    %r278 = call i32 @g(i32 %r276,i32 %r277)
    %r279 = icmp ne i32 %r278,0
    br i1 %r279, label %L47, label %L49
L53:
    %r269 = add i32 0,17
    %r270 = load i32, ptr %r0
    %r271 = call i32 @g(i32 %r269,i32 %r270)
    %r272 = icmp ne i32 %r271,0
    br i1 %r272, label %L47, label %L51
L55:
    %r262 = add i32 0,16
    %r263 = load i32, ptr %r0
    %r264 = call i32 @g(i32 %r262,i32 %r263)
    %r265 = icmp ne i32 %r264,0
    br i1 %r265, label %L47, label %L53
L57:
    %r255 = add i32 0,15
    %r256 = load i32, ptr %r0
    %r257 = call i32 @g(i32 %r255,i32 %r256)
    %r258 = icmp ne i32 %r257,0
    br i1 %r258, label %L47, label %L55
L59:
    %r248 = add i32 0,14
    %r249 = load i32, ptr %r0
    %r250 = call i32 @g(i32 %r248,i32 %r249)
    %r251 = icmp ne i32 %r250,0
    br i1 %r251, label %L47, label %L57
L61:
    %r241 = add i32 0,13
    %r242 = load i32, ptr %r0
    %r243 = call i32 @g(i32 %r241,i32 %r242)
    %r244 = icmp ne i32 %r243,0
    br i1 %r244, label %L47, label %L59
L63:
    %r234 = add i32 0,12
    %r235 = load i32, ptr %r0
    %r236 = call i32 @g(i32 %r234,i32 %r235)
    %r237 = icmp ne i32 %r236,0
    br i1 %r237, label %L47, label %L61
L65:
    %r227 = add i32 0,11
    %r228 = load i32, ptr %r0
    %r229 = call i32 @g(i32 %r227,i32 %r228)
    %r230 = icmp ne i32 %r229,0
    br i1 %r230, label %L47, label %L63
L67:
    %r220 = add i32 0,10
    %r221 = load i32, ptr %r0
    %r222 = call i32 @g(i32 %r220,i32 %r221)
    %r223 = icmp ne i32 %r222,0
    br i1 %r223, label %L47, label %L65
L69:
    %r213 = add i32 0,9
    %r214 = load i32, ptr %r0
    %r215 = call i32 @g(i32 %r213,i32 %r214)
    %r216 = icmp ne i32 %r215,0
    br i1 %r216, label %L47, label %L67
L71:
    %r206 = add i32 0,8
    %r207 = load i32, ptr %r0
    %r208 = call i32 @g(i32 %r206,i32 %r207)
    %r209 = icmp ne i32 %r208,0
    br i1 %r209, label %L47, label %L69
L73:
    %r199 = add i32 0,7
    %r200 = load i32, ptr %r0
    %r201 = call i32 @g(i32 %r199,i32 %r200)
    %r202 = icmp ne i32 %r201,0
    br i1 %r202, label %L47, label %L71
L75:
    %r192 = add i32 0,6
    %r193 = load i32, ptr %r0
    %r194 = call i32 @g(i32 %r192,i32 %r193)
    %r195 = icmp ne i32 %r194,0
    br i1 %r195, label %L47, label %L73
L77:
    %r185 = add i32 0,5
    %r186 = load i32, ptr %r0
    %r187 = call i32 @g(i32 %r185,i32 %r186)
    %r188 = icmp ne i32 %r187,0
    br i1 %r188, label %L47, label %L75
L79:
    %r178 = add i32 0,4
    %r179 = load i32, ptr %r0
    %r180 = call i32 @g(i32 %r178,i32 %r179)
    %r181 = icmp ne i32 %r180,0
    br i1 %r181, label %L47, label %L77
L81:
    %r171 = add i32 0,3
    %r172 = load i32, ptr %r0
    %r173 = call i32 @g(i32 %r171,i32 %r172)
    %r174 = icmp ne i32 %r173,0
    br i1 %r174, label %L47, label %L79
L83:
    %r164 = add i32 0,2
    %r165 = load i32, ptr %r0
    %r166 = call i32 @g(i32 %r164,i32 %r165)
    %r167 = icmp ne i32 %r166,0
    br i1 %r167, label %L47, label %L81
L85:
    %r157 = add i32 0,1
    %r158 = load i32, ptr %r0
    %r159 = call i32 @g(i32 %r157,i32 %r158)
    %r160 = icmp ne i32 %r159,0
    br i1 %r160, label %L47, label %L83
L87:
    %r294 = load i32, ptr %r0
    %r295 = add i32 0,20
    %r296 = icmp slt i32 %r294,%r295
    br i1 %r296, label %L90, label %L89
L88:
    %r308 = load i32, ptr %r0
    %r309 = add i32 0,1
    %r310 = add i32 %r308,%r309
    store i32 %r310, ptr %r0
    br label %L87
L89:
    %r312 = add i32 0,0
    store i32 %r312, ptr %r311
    %r313 = add i32 0,0
    store i32 %r313, ptr %r311
    %r314 = add i32 0,0
    %r315 = call i32 @h(i32 %r314)
    %r316 = icmp ne i32 %r315,0
    br i1 %r316, label %L98, label %L96
L90:
    %r299 = load i32, ptr %r0
    %r300 = add i32 0,1
    %r301 = sub i32 %r299,%r300
    %r302 = load i32, ptr %r0
    %r303 = call i32 @f(i32 %r301,i32 %r302)
    %r304 = icmp ne i32 %r303,0
    br i1 %r304, label %L88, label %L89
L92:
    %r337 = add i32 0,1
    store i32 %r337, ptr %r311
    br label %L93
L93:
    %r338 = load i32, ptr @sum
    %r339 = load i32, ptr %r311
    %r340 = add i32 %r338,%r339
    %r341 = add i32 0,0
    store i32 %r341, ptr %r311
    %r342 = add i32 0,4
    %r343 = call i32 @h(i32 %r342)
    %r344 = icmp eq i32 %r343,0
    br i1 %r344, label %L100, label %L104
L94:
    %r331 = add i32 0,3
    %r332 = call i32 @h(i32 %r331)
    %r333 = icmp ne i32 %r332,0
    br i1 %r333, label %L92, label %L93
L96:
    %r323 = add i32 0,2
    %r324 = call i32 @h(i32 %r323)
    %r325 = icmp eq i32 %r324,0
    br i1 %r325, label %L92, label %L94
L98:
    %r317 = add i32 0,1
    %r318 = call i32 @h(i32 %r317)
    %r319 = icmp ne i32 %r318,0
    br i1 %r319, label %L92, label %L96
L100:
    %r375 = add i32 0,1
    store i32 %r375, ptr %r311
    br label %L101
L101:
    %r376 = load i32, ptr @sum
    %r377 = load i32, ptr %r311
    %r378 = mul i32 %r376,%r377
    %r379 = add i32 0,0
    store i32 %r379, ptr %r311
    %r380 = add i32 0,9
    %r381 = call i32 @h(i32 %r380)
    %r382 = icmp ne i32 %r381,0
    br i1 %r382, label %L120, label %L118
L102:
    %r367 = add i32 0,8
    %r368 = call i32 @h(i32 %r367)
    %r369 = icmp eq i32 %r368,0
    br i1 %r369, label %L100, label %L101
L104:
    %r347 = add i32 0,5
    %r348 = call i32 @h(i32 %r347)
    %r349 = icmp ne i32 %r348,0
    br i1 %r349, label %L108, label %L102
L106:
    %r358 = add i32 0,7
    %r359 = call i32 @h(i32 %r358)
    %r360 = icmp ne i32 %r359,0
    br i1 %r360, label %L100, label %L102
L108:
    %r350 = add i32 0,6
    %r351 = call i32 @h(i32 %r350)
    %r352 = icmp eq i32 %r351,0
    br i1 %r352, label %L106, label %L102
L110:
    %r427 = add i32 0,1
    store i32 %r427, ptr %r311
    br label %L111
L111:
    %r428 = load i32, ptr @sum
    %r429 = load i32, ptr %r311
    %r430 = sub i32 %r428,%r429
    %r431 = add i32 0,0
    store i32 %r431, ptr %r311
    %r432 = add i32 0,0
    %r433 = call i32 @h(i32 %r432)
    %r434 = icmp ne i32 %r433,0
    br i1 %r434, label %L136, label %L130
L112:
    %r415 = add i32 0,14
    %r416 = call i32 @h(i32 %r415)
    %r417 = icmp ne i32 %r416,0
    br i1 %r417, label %L122, label %L111
L114:
    %r407 = add i32 0,13
    %r408 = call i32 @h(i32 %r407)
    %r409 = icmp eq i32 %r408,0
    br i1 %r409, label %L110, label %L112
L116:
    %r399 = add i32 0,12
    %r400 = call i32 @h(i32 %r399)
    %r401 = icmp eq i32 %r400,0
    br i1 %r401, label %L110, label %L114
L118:
    %r391 = add i32 0,11
    %r392 = call i32 @h(i32 %r391)
    %r393 = icmp eq i32 %r392,0
    br i1 %r393, label %L110, label %L116
L120:
    %r383 = add i32 0,10
    %r384 = call i32 @h(i32 %r383)
    %r385 = icmp eq i32 %r384,0
    br i1 %r385, label %L110, label %L118
L122:
    %r418 = add i32 0,15
    %r419 = call i32 @h(i32 %r418)
    %r420 = icmp ne i32 %r419,0
    br i1 %r420, label %L110, label %L111
L124:
    %r483 = add i32 0,1
    store i32 %r483, ptr %r311
    br label %L125
L125:
    %r484 = load i32, ptr @sum
    %r485 = load i32, ptr %r311
    %r486 = add i32 %r484,%r485
    call void @putint(i32 %r486)
    %r487 = add i32 0,0
    ret i32 %r487
L126:
    %r477 = add i32 0,8
    %r478 = call i32 @h(i32 %r477)
    %r479 = icmp ne i32 %r478,0
    br i1 %r479, label %L124, label %L125
L128:
    %r463 = add i32 0,6
    %r464 = call i32 @h(i32 %r463)
    %r465 = icmp ne i32 %r464,0
    br i1 %r465, label %L138, label %L126
L130:
    %r457 = add i32 0,5
    %r458 = call i32 @h(i32 %r457)
    %r459 = icmp ne i32 %r458,0
    br i1 %r459, label %L124, label %L128
L132:
    %r449 = add i32 0,4
    %r450 = call i32 @h(i32 %r449)
    %r451 = icmp eq i32 %r450,0
    br i1 %r451, label %L124, label %L130
L134:
    %r441 = add i32 0,3
    %r442 = call i32 @h(i32 %r441)
    %r443 = icmp eq i32 %r442,0
    br i1 %r443, label %L132, label %L130
L136:
    %r435 = add i32 0,2
    %r436 = call i32 @h(i32 %r435)
    %r437 = icmp ne i32 %r436,0
    br i1 %r437, label %L134, label %L130
L138:
    %r466 = add i32 0,7
    %r467 = call i32 @h(i32 %r466)
    %r468 = icmp eq i32 %r467,0
    br i1 %r468, label %L124, label %L126
}
