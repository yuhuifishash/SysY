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
@ints = global [10000x i32] zeroinitializer
@intt = global i32 zeroinitializer
@chas = global [10000x i32] zeroinitializer
@chat = global i32 zeroinitializer
@i = global i32 0
@ii = global i32 1
@c = global i32 zeroinitializer
@get = global [10000x i32] zeroinitializer
@get2 = global [10000x i32] zeroinitializer
define i32 @isdigit(i32 %r0)
{
L0:
    br label %L1
L1:
    %r4 = icmp sge i32 %r0,48
    br i1 %r4, label %L4, label %L3
L2:
    ret i32 1
L3:
    ret i32 0
L4:
    %r9 = icmp sle i32 %r0,57
    br i1 %r9, label %L2, label %L3
}
define void @intpush(i32 %r0)
{
L0:
    br label %L1
L1:
    %r2 = load i32, ptr @intt
    %r4 = add i32 %r2,1
    store i32 %r4, ptr @intt
    %r6 = load i32, ptr @intt
    %r7 = getelementptr [10000 x i32], ptr @ints, i32 0, i32 %r6
    store i32 %r0, ptr %r7
    ret void
}
define i32 @getstr(ptr %r0)
{
L0:
    br label %L1
L1:
    %r2 = call i32 @getch()
    %r7 = icmp ne i32 %r2,13
    br i1 %r7, label %L6, label %L5
L3:
    %r41 = phi i32 [%r24,%L8],[%r2,%L10]
    %r39 = phi i32 [%r23,%L8],[0,%L10]
    %r20 = getelementptr i32, ptr %r0, i32 %r39
    store i32 %r41, ptr %r20
    %r23 = add i32 %r39,1
    %r24 = call i32 @getch()
    br label %L4
L4:
    %r27 = icmp ne i32 %r24,13
    br i1 %r27, label %L8, label %L5
L5:
    %r40 = phi i32 [0,%L1],[0,%L6],[%r23,%L4],[%r23,%L8]
    ret i32 %r40
L6:
    %r12 = icmp ne i32 %r2,10
    br i1 %r12, label %L10, label %L5
L8:
    %r32 = icmp ne i32 %r24,10
    br i1 %r32, label %L3, label %L5
L10:
    br label %L3
}
define i32 @power(i32 %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r8 = icmp ne i32 %r1,0
    br i1 %r8, label %L6, label %L5
L3:
    %r25 = phi i32 [%r16,%L4],[%r1,%L6]
    %r23 = phi i32 [%r13,%L4],[1,%L6]
    %r13 = mul i32 %r23,%r0
    %r16 = sub i32 %r25,1
    br label %L4
L4:
    %r19 = icmp ne i32 %r16,0
    br i1 %r19, label %L3, label %L5
L5:
    %r24 = phi i32 [1,%L1],[%r13,%L4]
    ret i32 %r24
L6:
    br label %L3
}
define void @chapush(i32 %r0)
{
L0:
    br label %L1
L1:
    %r2 = load i32, ptr @chat
    %r4 = add i32 %r2,1
    store i32 %r4, ptr @chat
    %r6 = load i32, ptr @chat
    %r7 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r6
    store i32 %r0, ptr %r7
    ret void
}
define i32 @intpop()
{
L0:
    br label %L1
L1:
    %r0 = load i32, ptr @intt
    %r2 = sub i32 %r0,1
    store i32 %r2, ptr @intt
    %r3 = load i32, ptr @intt
    %r5 = add i32 %r3,1
    %r6 = getelementptr [10000 x i32], ptr @ints, i32 0, i32 %r5
    %r7 = load i32, ptr %r6
    ret i32 %r7
}
define i32 @chapop()
{
L0:
    br label %L1
L1:
    %r0 = load i32, ptr @chat
    %r2 = sub i32 %r0,1
    store i32 %r2, ptr @chat
    %r3 = load i32, ptr @chat
    %r5 = add i32 %r3,1
    %r6 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r5
    %r7 = load i32, ptr %r6
    ret i32 %r7
}
define void @intadd(i32 %r0)
{
L0:
    br label %L1
L1:
    %r2 = load i32, ptr @intt
    %r3 = getelementptr [10000 x i32], ptr @ints, i32 0, i32 %r2
    %r4 = load i32, ptr %r3
    %r6 = mul i32 %r4,10
    store i32 %r6, ptr %r3
    %r9 = load i32, ptr @intt
    %r10 = getelementptr [10000 x i32], ptr @ints, i32 0, i32 %r9
    %r11 = load i32, ptr %r10
    %r13 = add i32 %r11,%r0
    store i32 %r13, ptr %r10
    ret void
}
define i32 @find()
{
L0:
    br label %L1
L1:
    br label %L4
L2:
    ret i32 0
L3:
    ret i32 1
L4:
    br label %L6
L5:
    store i32 %r24, ptr @c
    %r2 = load i32, ptr @ii
    %r3 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r2
    store i32 32, ptr %r3
    %r4 = load i32, ptr @c
    %r5 = load i32, ptr @ii
    %r7 = add i32 %r5,1
    %r8 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r7
    store i32 %r4, ptr %r8
    %r9 = load i32, ptr @ii
    %r11 = add i32 %r9,2
    store i32 %r11, ptr @ii
    %r12 = load i32, ptr @chat
    %r14 = icmp eq i32 %r12,0
    br i1 %r14, label %L2, label %L3
L6:
    %r19 = load i32, ptr @chat
    %r20 = sub i32 %r19,1
    store i32 %r20, ptr @chat
    %r21 = load i32, ptr @chat
    %r22 = add i32 %r21,1
    %r23 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r22
    %r24 = load i32, ptr %r23
    br label %L5
}
define i32 @main()
{
L0:
    br label %L1
L1:
    store i32 0, ptr @intt
    store i32 0, ptr @chat
    %r3 = getelementptr i32, ptr @get, i32 0
    %r4 = call i32 @getstr(ptr %r3)
    %r5 = load i32, ptr @i
    %r7 = icmp slt i32 %r5,%r4
    br i1 %r7, label %L233, label %L5
L3:
    %r10 = load i32, ptr @i
    %r11 = getelementptr [10000 x i32], ptr @get, i32 0, i32 %r10
    %r12 = load i32, ptr %r11
    br label %L179
L4:
    %r596 = load i32, ptr @i
    %r598 = icmp slt i32 %r596,%r4
    br i1 %r598, label %L3, label %L5
L5:
    %r601 = load i32, ptr @chat
    %r603 = icmp sgt i32 %r601,0
    br i1 %r603, label %L240, label %L143
L6:
    %r18 = load i32, ptr @i
    %r19 = getelementptr [10000 x i32], ptr @get, i32 0, i32 %r18
    %r20 = load i32, ptr %r19
    %r21 = load i32, ptr @ii
    %r22 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r21
    store i32 %r20, ptr %r22
    %r23 = load i32, ptr @ii
    %r25 = add i32 %r23,1
    store i32 %r25, ptr @ii
    br label %L8
L7:
    %r26 = load i32, ptr @i
    %r27 = getelementptr [10000 x i32], ptr @get, i32 0, i32 %r26
    %r28 = load i32, ptr %r27
    %r30 = icmp eq i32 %r28,40
    br i1 %r30, label %L9, label %L10
L8:
    %r593 = load i32, ptr @i
    %r595 = add i32 %r593,1
    store i32 %r595, ptr @i
    br label %L4
L9:
    br label %L185
L10:
    %r34 = load i32, ptr @i
    %r35 = getelementptr [10000 x i32], ptr @get, i32 0, i32 %r34
    %r36 = load i32, ptr %r35
    %r38 = icmp eq i32 %r36,94
    br i1 %r38, label %L11, label %L12
L11:
    br label %L188
L12:
    %r42 = load i32, ptr @i
    %r43 = getelementptr [10000 x i32], ptr @get, i32 0, i32 %r42
    %r44 = load i32, ptr %r43
    %r46 = icmp eq i32 %r44,41
    br i1 %r46, label %L13, label %L14
L13:
    br label %L191
L14:
    %r72 = load i32, ptr @i
    %r73 = getelementptr [10000 x i32], ptr @get, i32 0, i32 %r72
    %r74 = load i32, ptr %r73
    %r76 = icmp eq i32 %r74,43
    br i1 %r76, label %L19, label %L20
L16:
    %r56 = load i32, ptr @ii
    %r57 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r56
    store i32 32, ptr %r57
    %r58 = load i32, ptr @c
    %r59 = load i32, ptr @ii
    %r61 = add i32 %r59,1
    %r62 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r61
    store i32 %r58, ptr %r62
    %r63 = load i32, ptr @ii
    %r65 = add i32 %r63,2
    store i32 %r65, ptr @ii
    br label %L194
L17:
    %r67 = load i32, ptr @c
    %r69 = icmp ne i32 %r67,40
    br i1 %r69, label %L16, label %L18
L18:
    br label %L14
L19:
    %r79 = load i32, ptr @chat
    %r80 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r79
    %r81 = load i32, ptr %r80
    %r83 = icmp eq i32 %r81,43
    br i1 %r83, label %L235, label %L33
L20:
    %r199 = load i32, ptr @i
    %r200 = getelementptr [10000 x i32], ptr @get, i32 0, i32 %r199
    %r201 = load i32, ptr %r200
    %r203 = icmp eq i32 %r201,45
    br i1 %r203, label %L48, label %L49
L22:
    %r136 = call i32 @find()
    %r138 = icmp eq i32 %r136,0
    br i1 %r138, label %L35, label %L36
L23:
    %r141 = load i32, ptr @chat
    %r142 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r141
    %r143 = load i32, ptr %r142
    %r145 = icmp eq i32 %r143,43
    br i1 %r145, label %L22, label %L46
L24:
    br label %L197
L25:
    %r126 = load i32, ptr @chat
    %r127 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r126
    %r128 = load i32, ptr %r127
    %r130 = icmp eq i32 %r128,94
    br i1 %r130, label %L235, label %L24
L27:
    %r116 = load i32, ptr @chat
    %r117 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r116
    %r118 = load i32, ptr %r117
    %r120 = icmp eq i32 %r118,37
    br i1 %r120, label %L235, label %L25
L29:
    %r106 = load i32, ptr @chat
    %r107 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r106
    %r108 = load i32, ptr %r107
    %r110 = icmp eq i32 %r108,47
    br i1 %r110, label %L235, label %L27
L31:
    %r96 = load i32, ptr @chat
    %r97 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r96
    %r98 = load i32, ptr %r97
    %r100 = icmp eq i32 %r98,42
    br i1 %r100, label %L235, label %L29
L33:
    %r86 = load i32, ptr @chat
    %r87 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r86
    %r88 = load i32, ptr %r87
    %r90 = icmp eq i32 %r88,45
    br i1 %r90, label %L235, label %L31
L35:
    br label %L24
L36:
    br label %L23
L38:
    %r188 = load i32, ptr @chat
    %r189 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r188
    %r190 = load i32, ptr %r189
    %r192 = icmp eq i32 %r190,94
    br i1 %r192, label %L22, label %L24
L40:
    %r178 = load i32, ptr @chat
    %r179 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r178
    %r180 = load i32, ptr %r179
    %r182 = icmp eq i32 %r180,37
    br i1 %r182, label %L22, label %L38
L42:
    %r168 = load i32, ptr @chat
    %r169 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r168
    %r170 = load i32, ptr %r169
    %r172 = icmp eq i32 %r170,47
    br i1 %r172, label %L22, label %L40
L44:
    %r158 = load i32, ptr @chat
    %r159 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r158
    %r160 = load i32, ptr %r159
    %r162 = icmp eq i32 %r160,42
    br i1 %r162, label %L22, label %L42
L46:
    %r148 = load i32, ptr @chat
    %r149 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r148
    %r150 = load i32, ptr %r149
    %r152 = icmp eq i32 %r150,45
    br i1 %r152, label %L22, label %L44
L48:
    %r206 = load i32, ptr @chat
    %r207 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r206
    %r208 = load i32, ptr %r207
    %r210 = icmp eq i32 %r208,43
    br i1 %r210, label %L236, label %L62
L49:
    %r326 = load i32, ptr @i
    %r327 = getelementptr [10000 x i32], ptr @get, i32 0, i32 %r326
    %r328 = load i32, ptr %r327
    %r330 = icmp eq i32 %r328,42
    br i1 %r330, label %L77, label %L78
L51:
    %r263 = call i32 @find()
    %r265 = icmp eq i32 %r263,0
    br i1 %r265, label %L64, label %L65
L52:
    %r268 = load i32, ptr @chat
    %r269 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r268
    %r270 = load i32, ptr %r269
    %r272 = icmp eq i32 %r270,43
    br i1 %r272, label %L51, label %L75
L53:
    br label %L200
L54:
    %r253 = load i32, ptr @chat
    %r254 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r253
    %r255 = load i32, ptr %r254
    %r257 = icmp eq i32 %r255,94
    br i1 %r257, label %L236, label %L53
L56:
    %r243 = load i32, ptr @chat
    %r244 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r243
    %r245 = load i32, ptr %r244
    %r247 = icmp eq i32 %r245,37
    br i1 %r247, label %L236, label %L54
L58:
    %r233 = load i32, ptr @chat
    %r234 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r233
    %r235 = load i32, ptr %r234
    %r237 = icmp eq i32 %r235,47
    br i1 %r237, label %L236, label %L56
L60:
    %r223 = load i32, ptr @chat
    %r224 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r223
    %r225 = load i32, ptr %r224
    %r227 = icmp eq i32 %r225,42
    br i1 %r227, label %L236, label %L58
L62:
    %r213 = load i32, ptr @chat
    %r214 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r213
    %r215 = load i32, ptr %r214
    %r217 = icmp eq i32 %r215,45
    br i1 %r217, label %L236, label %L60
L64:
    br label %L53
L65:
    br label %L52
L67:
    %r315 = load i32, ptr @chat
    %r316 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r315
    %r317 = load i32, ptr %r316
    %r319 = icmp eq i32 %r317,94
    br i1 %r319, label %L51, label %L53
L69:
    %r305 = load i32, ptr @chat
    %r306 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r305
    %r307 = load i32, ptr %r306
    %r309 = icmp eq i32 %r307,37
    br i1 %r309, label %L51, label %L67
L71:
    %r295 = load i32, ptr @chat
    %r296 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r295
    %r297 = load i32, ptr %r296
    %r299 = icmp eq i32 %r297,47
    br i1 %r299, label %L51, label %L69
L73:
    %r285 = load i32, ptr @chat
    %r286 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r285
    %r287 = load i32, ptr %r286
    %r289 = icmp eq i32 %r287,42
    br i1 %r289, label %L51, label %L71
L75:
    %r275 = load i32, ptr @chat
    %r276 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r275
    %r277 = load i32, ptr %r276
    %r279 = icmp eq i32 %r277,45
    br i1 %r279, label %L51, label %L73
L77:
    %r333 = load i32, ptr @chat
    %r334 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r333
    %r335 = load i32, ptr %r334
    %r337 = icmp eq i32 %r335,42
    br i1 %r337, label %L237, label %L87
L78:
    %r413 = load i32, ptr @i
    %r414 = getelementptr [10000 x i32], ptr @get, i32 0, i32 %r413
    %r415 = load i32, ptr %r414
    %r417 = icmp eq i32 %r415,47
    br i1 %r417, label %L98, label %L99
L80:
    %r370 = call i32 @find()
    %r372 = icmp eq i32 %r370,0
    br i1 %r372, label %L89, label %L90
L81:
    %r375 = load i32, ptr @chat
    %r376 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r375
    %r377 = load i32, ptr %r376
    %r379 = icmp eq i32 %r377,42
    br i1 %r379, label %L80, label %L96
L82:
    br label %L203
L83:
    %r360 = load i32, ptr @chat
    %r361 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r360
    %r362 = load i32, ptr %r361
    %r364 = icmp eq i32 %r362,94
    br i1 %r364, label %L237, label %L82
L85:
    %r350 = load i32, ptr @chat
    %r351 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r350
    %r352 = load i32, ptr %r351
    %r354 = icmp eq i32 %r352,37
    br i1 %r354, label %L237, label %L83
L87:
    %r340 = load i32, ptr @chat
    %r341 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r340
    %r342 = load i32, ptr %r341
    %r344 = icmp eq i32 %r342,47
    br i1 %r344, label %L237, label %L85
L89:
    br label %L82
L90:
    br label %L81
L92:
    %r402 = load i32, ptr @chat
    %r403 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r402
    %r404 = load i32, ptr %r403
    %r406 = icmp eq i32 %r404,94
    br i1 %r406, label %L80, label %L82
L94:
    %r392 = load i32, ptr @chat
    %r393 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r392
    %r394 = load i32, ptr %r393
    %r396 = icmp eq i32 %r394,37
    br i1 %r396, label %L80, label %L92
L96:
    %r382 = load i32, ptr @chat
    %r383 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r382
    %r384 = load i32, ptr %r383
    %r386 = icmp eq i32 %r384,47
    br i1 %r386, label %L80, label %L94
L98:
    %r420 = load i32, ptr @chat
    %r421 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r420
    %r422 = load i32, ptr %r421
    %r424 = icmp eq i32 %r422,42
    br i1 %r424, label %L238, label %L108
L99:
    %r500 = load i32, ptr @i
    %r501 = getelementptr [10000 x i32], ptr @get, i32 0, i32 %r500
    %r502 = load i32, ptr %r501
    %r504 = icmp eq i32 %r502,37
    br i1 %r504, label %L119, label %L120
L101:
    %r457 = call i32 @find()
    %r459 = icmp eq i32 %r457,0
    br i1 %r459, label %L110, label %L111
L102:
    %r462 = load i32, ptr @chat
    %r463 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r462
    %r464 = load i32, ptr %r463
    %r466 = icmp eq i32 %r464,42
    br i1 %r466, label %L101, label %L117
L103:
    br label %L206
L104:
    %r447 = load i32, ptr @chat
    %r448 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r447
    %r449 = load i32, ptr %r448
    %r451 = icmp eq i32 %r449,94
    br i1 %r451, label %L238, label %L103
L106:
    %r437 = load i32, ptr @chat
    %r438 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r437
    %r439 = load i32, ptr %r438
    %r441 = icmp eq i32 %r439,37
    br i1 %r441, label %L238, label %L104
L108:
    %r427 = load i32, ptr @chat
    %r428 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r427
    %r429 = load i32, ptr %r428
    %r431 = icmp eq i32 %r429,47
    br i1 %r431, label %L238, label %L106
L110:
    br label %L103
L111:
    br label %L102
L113:
    %r489 = load i32, ptr @chat
    %r490 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r489
    %r491 = load i32, ptr %r490
    %r493 = icmp eq i32 %r491,94
    br i1 %r493, label %L101, label %L103
L115:
    %r479 = load i32, ptr @chat
    %r480 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r479
    %r481 = load i32, ptr %r480
    %r483 = icmp eq i32 %r481,37
    br i1 %r483, label %L101, label %L113
L117:
    %r469 = load i32, ptr @chat
    %r470 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r469
    %r471 = load i32, ptr %r470
    %r473 = icmp eq i32 %r471,47
    br i1 %r473, label %L101, label %L115
L119:
    %r507 = load i32, ptr @chat
    %r508 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r507
    %r509 = load i32, ptr %r508
    %r511 = icmp eq i32 %r509,42
    br i1 %r511, label %L239, label %L129
L120:
    %r588 = load i32, ptr @ii
    %r589 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r588
    store i32 32, ptr %r589
    %r590 = load i32, ptr @ii
    %r592 = add i32 %r590,1
    store i32 %r592, ptr @ii
    br label %L8
L122:
    %r544 = call i32 @find()
    %r546 = icmp eq i32 %r544,0
    br i1 %r546, label %L131, label %L132
L123:
    %r549 = load i32, ptr @chat
    %r550 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r549
    %r551 = load i32, ptr %r550
    %r553 = icmp eq i32 %r551,42
    br i1 %r553, label %L122, label %L138
L124:
    br label %L209
L125:
    %r534 = load i32, ptr @chat
    %r535 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r534
    %r536 = load i32, ptr %r535
    %r538 = icmp eq i32 %r536,94
    br i1 %r538, label %L239, label %L124
L127:
    %r524 = load i32, ptr @chat
    %r525 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r524
    %r526 = load i32, ptr %r525
    %r528 = icmp eq i32 %r526,37
    br i1 %r528, label %L239, label %L125
L129:
    %r514 = load i32, ptr @chat
    %r515 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r514
    %r516 = load i32, ptr %r515
    %r518 = icmp eq i32 %r516,47
    br i1 %r518, label %L239, label %L127
L131:
    br label %L124
L132:
    br label %L123
L134:
    %r576 = load i32, ptr @chat
    %r577 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r576
    %r578 = load i32, ptr %r577
    %r580 = icmp eq i32 %r578,94
    br i1 %r580, label %L122, label %L124
L136:
    %r566 = load i32, ptr @chat
    %r567 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r566
    %r568 = load i32, ptr %r567
    %r570 = icmp eq i32 %r568,37
    br i1 %r570, label %L122, label %L134
L138:
    %r556 = load i32, ptr @chat
    %r557 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r556
    %r558 = load i32, ptr %r557
    %r560 = icmp eq i32 %r558,47
    br i1 %r560, label %L122, label %L136
L141:
    br label %L212
L142:
    %r619 = load i32, ptr @chat
    %r621 = icmp sgt i32 %r619,0
    br i1 %r621, label %L141, label %L143
L143:
    %r625 = load i32, ptr @ii
    %r626 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r625
    store i32 64, ptr %r626
    store i32 1, ptr @i
    %r628 = load i32, ptr @i
    %r629 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r628
    %r630 = load i32, ptr %r629
    %r632 = icmp ne i32 %r630,64
    br i1 %r632, label %L241, label %L147
L145:
    %r635 = load i32, ptr @i
    %r636 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r635
    %r637 = load i32, ptr %r636
    %r639 = icmp eq i32 %r637,43
    br i1 %r639, label %L148, label %L159
L146:
    %r808 = load i32, ptr @i
    %r809 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r808
    %r810 = load i32, ptr %r809
    %r812 = icmp ne i32 %r810,64
    br i1 %r812, label %L145, label %L147
L147:
    %r816 = getelementptr [10000 x i32], ptr @ints, i32 0, i32 1
    %r817 = load i32, ptr %r816
    call void @putint(i32 %r817)
    ret i32 0
L148:
    br label %L215
L149:
    %r759 = load i32, ptr @i
    %r760 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r759
    %r761 = load i32, ptr %r760
    %r763 = icmp ne i32 %r761,32
    br i1 %r763, label %L173, label %L174
L150:
    %r805 = load i32, ptr @i
    %r807 = add i32 %r805,1
    store i32 %r807, ptr @i
    br label %L146
L151:
    %r682 = load i32, ptr @i
    %r683 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r682
    %r684 = load i32, ptr %r683
    %r686 = icmp eq i32 %r684,94
    br i1 %r686, label %L148, label %L149
L153:
    %r672 = load i32, ptr @i
    %r673 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r672
    %r674 = load i32, ptr %r673
    %r676 = icmp eq i32 %r674,37
    br i1 %r676, label %L148, label %L151
L155:
    %r662 = load i32, ptr @i
    %r663 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r662
    %r664 = load i32, ptr %r663
    %r666 = icmp eq i32 %r664,47
    br i1 %r666, label %L148, label %L153
L157:
    %r652 = load i32, ptr @i
    %r653 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r652
    %r654 = load i32, ptr %r653
    %r656 = icmp eq i32 %r654,42
    br i1 %r656, label %L148, label %L155
L159:
    %r642 = load i32, ptr @i
    %r643 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r642
    %r644 = load i32, ptr %r643
    %r646 = icmp eq i32 %r644,45
    br i1 %r646, label %L148, label %L157
L161:
    %r707 = add i32 %r881,%r903
    br label %L162
L162:
    %r822 = phi i32 [0,%L231],[%r707,%L161]
    %r708 = load i32, ptr @i
    %r709 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r708
    %r710 = load i32, ptr %r709
    %r712 = icmp eq i32 %r710,45
    br i1 %r712, label %L163, label %L164
L163:
    %r717 = sub i32 %r903,%r881
    br label %L164
L164:
    %r823 = phi i32 [%r822,%L162],[%r717,%L163]
    %r718 = load i32, ptr @i
    %r719 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r718
    %r720 = load i32, ptr %r719
    %r722 = icmp eq i32 %r720,42
    br i1 %r722, label %L165, label %L166
L165:
    %r727 = mul i32 %r881,%r903
    br label %L166
L166:
    %r824 = phi i32 [%r823,%L164],[%r727,%L165]
    %r728 = load i32, ptr @i
    %r729 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r728
    %r730 = load i32, ptr %r729
    %r732 = icmp eq i32 %r730,47
    br i1 %r732, label %L167, label %L168
L167:
    %r737 = sdiv i32 %r903,%r881
    br label %L168
L168:
    %r825 = phi i32 [%r824,%L166],[%r737,%L167]
    %r738 = load i32, ptr @i
    %r739 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r738
    %r740 = load i32, ptr %r739
    %r742 = icmp eq i32 %r740,37
    br i1 %r742, label %L169, label %L170
L169:
    %r747 = srem i32 %r903,%r881
    br label %L170
L170:
    %r826 = phi i32 [%r825,%L168],[%r747,%L169]
    %r748 = load i32, ptr @i
    %r749 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r748
    %r750 = load i32, ptr %r749
    %r752 = icmp eq i32 %r750,94
    br i1 %r752, label %L171, label %L172
L171:
    br label %L218
L172:
    %r827 = phi i32 [%r826,%L170],[%r889,%L219]
    br label %L224
L173:
    %r766 = load i32, ptr @i
    %r767 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r766
    %r768 = load i32, ptr %r767
    %r770 = sub i32 %r768,48
    br label %L227
L174:
    br label %L150
L176:
    %r781 = load i32, ptr @i
    %r782 = load i32, ptr @ii
    %r783 = add i32 %r781,%r782
    %r784 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r783
    %r785 = load i32, ptr %r784
    %r787 = sub i32 %r785,48
    call void @intadd(i32 %r787)
    %r790 = add i32 %r782,1
    store i32 %r790, ptr @ii
    br label %L177
L177:
    %r791 = load i32, ptr @i
    %r792 = load i32, ptr @ii
    %r793 = add i32 %r791,%r792
    %r794 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r793
    %r795 = load i32, ptr %r794
    %r797 = icmp ne i32 %r795,32
    br i1 %r797, label %L176, label %L178
L178:
    %r800 = load i32, ptr @i
    %r801 = load i32, ptr @ii
    %r802 = add i32 %r800,%r801
    %r804 = sub i32 %r802,1
    store i32 %r804, ptr @i
    br label %L174
L179:
    br label %L181
L180:
    %r13 = phi i32 [0,%L183],[1,%L182]
    %r15 = icmp eq i32 %r13,1
    br i1 %r15, label %L6, label %L7
L181:
    %r828 = icmp sge i32 %r12,48
    br i1 %r828, label %L184, label %L183
L182:
    br label %L180
L183:
    br label %L180
L184:
    %r829 = icmp sle i32 %r12,57
    br i1 %r829, label %L182, label %L183
L185:
    br label %L187
L186:
    br label %L10
L187:
    %r830 = load i32, ptr @chat
    %r831 = add i32 %r830,1
    store i32 %r831, ptr @chat
    %r832 = load i32, ptr @chat
    %r833 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r832
    store i32 40, ptr %r833
    br label %L186
L188:
    br label %L190
L189:
    br label %L12
L190:
    %r834 = load i32, ptr @chat
    %r835 = add i32 %r834,1
    store i32 %r835, ptr @chat
    %r836 = load i32, ptr @chat
    %r837 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r836
    store i32 94, ptr %r837
    br label %L189
L191:
    br label %L193
L192:
    store i32 %r843, ptr @c
    %r50 = load i32, ptr @c
    %r52 = icmp ne i32 %r50,40
    br i1 %r52, label %L234, label %L18
L193:
    %r838 = load i32, ptr @chat
    %r839 = sub i32 %r838,1
    store i32 %r839, ptr @chat
    %r840 = load i32, ptr @chat
    %r841 = add i32 %r840,1
    %r842 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r841
    %r843 = load i32, ptr %r842
    br label %L192
L194:
    br label %L196
L195:
    store i32 %r849, ptr @c
    br label %L17
L196:
    %r844 = load i32, ptr @chat
    %r845 = sub i32 %r844,1
    store i32 %r845, ptr @chat
    %r846 = load i32, ptr @chat
    %r847 = add i32 %r846,1
    %r848 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r847
    %r849 = load i32, ptr %r848
    br label %L195
L197:
    br label %L199
L198:
    br label %L20
L199:
    %r850 = load i32, ptr @chat
    %r851 = add i32 %r850,1
    store i32 %r851, ptr @chat
    %r852 = load i32, ptr @chat
    %r853 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r852
    store i32 43, ptr %r853
    br label %L198
L200:
    br label %L202
L201:
    br label %L49
L202:
    %r854 = load i32, ptr @chat
    %r855 = add i32 %r854,1
    store i32 %r855, ptr @chat
    %r856 = load i32, ptr @chat
    %r857 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r856
    store i32 45, ptr %r857
    br label %L201
L203:
    br label %L205
L204:
    br label %L78
L205:
    %r858 = load i32, ptr @chat
    %r859 = add i32 %r858,1
    store i32 %r859, ptr @chat
    %r860 = load i32, ptr @chat
    %r861 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r860
    store i32 42, ptr %r861
    br label %L204
L206:
    br label %L208
L207:
    br label %L99
L208:
    %r862 = load i32, ptr @chat
    %r863 = add i32 %r862,1
    store i32 %r863, ptr @chat
    %r864 = load i32, ptr @chat
    %r865 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r864
    store i32 47, ptr %r865
    br label %L207
L209:
    br label %L211
L210:
    br label %L120
L211:
    %r866 = load i32, ptr @chat
    %r867 = add i32 %r866,1
    store i32 %r867, ptr @chat
    %r868 = load i32, ptr @chat
    %r869 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r868
    store i32 37, ptr %r869
    br label %L210
L212:
    br label %L214
L213:
    %r609 = load i32, ptr @ii
    %r610 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r609
    store i32 32, ptr %r610
    %r612 = load i32, ptr @ii
    %r614 = add i32 %r612,1
    %r615 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r614
    store i32 %r875, ptr %r615
    %r616 = load i32, ptr @ii
    %r618 = add i32 %r616,2
    store i32 %r618, ptr @ii
    br label %L142
L214:
    %r870 = load i32, ptr @chat
    %r871 = sub i32 %r870,1
    store i32 %r871, ptr @chat
    %r872 = load i32, ptr @chat
    %r873 = add i32 %r872,1
    %r874 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r873
    %r875 = load i32, ptr %r874
    br label %L213
L215:
    br label %L217
L216:
    br label %L230
L217:
    %r876 = load i32, ptr @intt
    %r877 = sub i32 %r876,1
    store i32 %r877, ptr @intt
    %r878 = load i32, ptr @intt
    %r879 = add i32 %r878,1
    %r880 = getelementptr [10000 x i32], ptr @ints, i32 0, i32 %r879
    %r881 = load i32, ptr %r880
    br label %L216
L218:
    br label %L220
L219:
    br label %L172
L220:
    %r882 = icmp ne i32 %r881,0
    br i1 %r882, label %L243, label %L223
L221:
    %r884 = phi i32 [%r883,%L222],[%r881,%L243]
    %r886 = phi i32 [%r885,%L222],[1,%L243]
    %r885 = mul i32 %r886,%r903
    %r883 = sub i32 %r884,1
    br label %L222
L222:
    %r887 = icmp ne i32 %r883,0
    br i1 %r887, label %L221, label %L223
L223:
    %r889 = phi i32 [1,%L220],[%r885,%L222]
    br label %L219
L224:
    br label %L226
L225:
    br label %L150
L226:
    %r890 = load i32, ptr @intt
    %r891 = add i32 %r890,1
    store i32 %r891, ptr @intt
    %r892 = load i32, ptr @intt
    %r893 = getelementptr [10000 x i32], ptr @ints, i32 0, i32 %r892
    store i32 %r827, ptr %r893
    br label %L225
L227:
    br label %L229
L228:
    store i32 1, ptr @ii
    %r772 = load i32, ptr @i
    %r773 = load i32, ptr @ii
    %r774 = add i32 %r772,%r773
    %r775 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r774
    %r776 = load i32, ptr %r775
    %r778 = icmp ne i32 %r776,32
    br i1 %r778, label %L242, label %L178
L229:
    %r894 = load i32, ptr @intt
    %r895 = add i32 %r894,1
    store i32 %r895, ptr @intt
    %r896 = load i32, ptr @intt
    %r897 = getelementptr [10000 x i32], ptr @ints, i32 0, i32 %r896
    store i32 %r770, ptr %r897
    br label %L228
L230:
    br label %L232
L231:
    %r698 = load i32, ptr @i
    %r699 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r698
    %r700 = load i32, ptr %r699
    %r702 = icmp eq i32 %r700,43
    br i1 %r702, label %L161, label %L162
L232:
    %r898 = load i32, ptr @intt
    %r899 = sub i32 %r898,1
    store i32 %r899, ptr @intt
    %r900 = load i32, ptr @intt
    %r901 = add i32 %r900,1
    %r902 = getelementptr [10000 x i32], ptr @ints, i32 0, i32 %r901
    %r903 = load i32, ptr %r902
    br label %L231
L233:
    br label %L3
L234:
    br label %L16
L235:
    br label %L22
L236:
    br label %L51
L237:
    br label %L80
L238:
    br label %L101
L239:
    br label %L122
L240:
    br label %L141
L241:
    br label %L145
L242:
    br label %L176
L243:
    br label %L221
}
