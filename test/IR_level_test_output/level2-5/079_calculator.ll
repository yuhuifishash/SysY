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
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    %r2 = load i32, ptr %r1
    %r3 = add i32 0,48
    %r4 = icmp sge i32 %r2,%r3
    br i1 %r4, label %L3, label %L2
L1:
    %r15 = add i32 0,1
    ret i32 %r15
L2:
    %r16 = add i32 0,0
    ret i32 %r16
L3:
    %r7 = load i32, ptr %r1
    %r8 = add i32 0,57
    %r9 = icmp sle i32 %r7,%r8
    br i1 %r9, label %L1, label %L2
}
define void @intpush(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    %r2 = load i32, ptr @intt
    %r3 = add i32 0,1
    %r4 = add i32 %r2,%r3
    store i32 %r4, ptr @intt
    %r5 = load i32, ptr %r1
    %r6 = load i32, ptr @intt
    %r7 = getelementptr [10000 x i32], ptr @ints, i32 0, i32 %r6
    store i32 %r5, ptr %r7
    ret void
}
define i32 @getstr(ptr %r0)
{
L0:
    %r3 = alloca i32
    %r1 = alloca i32
    %r2 = call i32 @getch()
    store i32 %r2, ptr %r1
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    br label %L1
L1:
    %r5 = load i32, ptr %r1
    %r6 = add i32 0,13
    %r7 = icmp ne i32 %r5,%r6
    br i1 %r7, label %L4, label %L3
L2:
    %r18 = load i32, ptr %r1
    %r19 = load i32, ptr %r3
    %r20 = getelementptr i32, ptr %r0, i32 %r19
    store i32 %r18, ptr %r20
    %r21 = load i32, ptr %r3
    %r22 = add i32 0,1
    %r23 = add i32 %r21,%r22
    store i32 %r23, ptr %r3
    %r24 = call i32 @getch()
    store i32 %r24, ptr %r1
    br label %L1
L3:
    %r25 = load i32, ptr %r3
    ret i32 %r25
L4:
    %r10 = load i32, ptr %r1
    %r11 = add i32 0,10
    %r12 = icmp ne i32 %r10,%r11
    br i1 %r12, label %L2, label %L3
}
define i32 @power(i32 %r0,i32 %r1)
{
L0:
    %r4 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    %r5 = add i32 0,1
    store i32 %r5, ptr %r4
    br label %L1
L1:
    %r6 = load i32, ptr %r3
    %r7 = add i32 0,0
    %r8 = icmp ne i32 %r6,%r7
    br i1 %r8, label %L2, label %L3
L2:
    %r11 = load i32, ptr %r4
    %r12 = load i32, ptr %r2
    %r13 = mul i32 %r11,%r12
    store i32 %r13, ptr %r4
    %r14 = load i32, ptr %r3
    %r15 = add i32 0,1
    %r16 = sub i32 %r14,%r15
    store i32 %r16, ptr %r3
    br label %L1
L3:
    %r17 = load i32, ptr %r4
    ret i32 %r17
}
define void @chapush(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    %r2 = load i32, ptr @chat
    %r3 = add i32 0,1
    %r4 = add i32 %r2,%r3
    store i32 %r4, ptr @chat
    %r5 = load i32, ptr %r1
    %r6 = load i32, ptr @chat
    %r7 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r6
    store i32 %r5, ptr %r7
    ret void
}
define i32 @intpop()
{
L0:
    %r0 = load i32, ptr @intt
    %r1 = add i32 0,1
    %r2 = sub i32 %r0,%r1
    store i32 %r2, ptr @intt
    %r3 = load i32, ptr @intt
    %r4 = add i32 0,1
    %r5 = add i32 %r3,%r4
    %r6 = getelementptr [10000 x i32], ptr @ints, i32 0, i32 %r5
    %r7 = load i32, ptr %r6
    ret i32 %r7
}
define i32 @chapop()
{
L0:
    %r0 = load i32, ptr @chat
    %r1 = add i32 0,1
    %r2 = sub i32 %r0,%r1
    store i32 %r2, ptr @chat
    %r3 = load i32, ptr @chat
    %r4 = add i32 0,1
    %r5 = add i32 %r3,%r4
    %r6 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r5
    %r7 = load i32, ptr %r6
    ret i32 %r7
}
define void @intadd(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    %r2 = load i32, ptr @intt
    %r3 = getelementptr [10000 x i32], ptr @ints, i32 0, i32 %r2
    %r4 = load i32, ptr %r3
    %r5 = add i32 0,10
    %r6 = mul i32 %r4,%r5
    %r7 = load i32, ptr @intt
    %r8 = getelementptr [10000 x i32], ptr @ints, i32 0, i32 %r7
    store i32 %r6, ptr %r8
    %r9 = load i32, ptr @intt
    %r10 = getelementptr [10000 x i32], ptr @ints, i32 0, i32 %r9
    %r11 = load i32, ptr %r10
    %r12 = load i32, ptr %r1
    %r13 = add i32 %r11,%r12
    %r14 = load i32, ptr @intt
    %r15 = getelementptr [10000 x i32], ptr @ints, i32 0, i32 %r14
    store i32 %r13, ptr %r15
    ret void
}
define i32 @find()
{
L0:
    %r0 = call i32 @chapop()
    store i32 %r0, ptr @c
    %r1 = add i32 0,32
    %r2 = load i32, ptr @ii
    %r3 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r2
    store i32 %r1, ptr %r3
    %r4 = load i32, ptr @c
    %r5 = load i32, ptr @ii
    %r6 = add i32 0,1
    %r7 = add i32 %r5,%r6
    %r8 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r7
    store i32 %r4, ptr %r8
    %r9 = load i32, ptr @ii
    %r10 = add i32 0,2
    %r11 = add i32 %r9,%r10
    store i32 %r11, ptr @ii
    %r12 = load i32, ptr @chat
    %r13 = add i32 0,0
    %r14 = icmp eq i32 %r12,%r13
    br i1 %r14, label %L1, label %L2
L1:
    %r17 = add i32 0,0
    ret i32 %r17
L2:
    %r18 = add i32 0,1
    ret i32 %r18
}
define i32 @main()
{
L0:
    %r456 = alloca i32
    %r454 = alloca i32
    %r452 = alloca i32
    %r371 = alloca i32
    %r2 = alloca i32
    %r0 = add i32 0,0
    store i32 %r0, ptr @intt
    %r1 = add i32 0,0
    store i32 %r1, ptr @chat
    %r3 = getelementptr i32, ptr @get, i32 0
    %r4 = call i32 @getstr(ptr %r3)
    store i32 %r4, ptr %r2
    br label %L1
L1:
    %r5 = load i32, ptr @i
    %r6 = load i32, ptr %r2
    %r7 = icmp slt i32 %r5,%r6
    br i1 %r7, label %L2, label %L3
L2:
    %r10 = load i32, ptr @i
    %r11 = getelementptr [10000 x i32], ptr @get, i32 0, i32 %r10
    %r12 = load i32, ptr %r11
    %r13 = call i32 @isdigit(i32 %r12)
    %r14 = add i32 0,1
    %r15 = icmp eq i32 %r13,%r14
    br i1 %r15, label %L4, label %L5
L3:
    br label %L94
L4:
    %r18 = load i32, ptr @i
    %r19 = getelementptr [10000 x i32], ptr @get, i32 0, i32 %r18
    %r20 = load i32, ptr %r19
    %r21 = load i32, ptr @ii
    %r22 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r21
    store i32 %r20, ptr %r22
    %r23 = load i32, ptr @ii
    %r24 = add i32 0,1
    %r25 = add i32 %r23,%r24
    store i32 %r25, ptr @ii
    br label %L6
L5:
    %r26 = load i32, ptr @i
    %r27 = getelementptr [10000 x i32], ptr @get, i32 0, i32 %r26
    %r28 = load i32, ptr %r27
    %r29 = add i32 0,40
    %r30 = icmp eq i32 %r28,%r29
    br i1 %r30, label %L7, label %L8
L6:
    %r363 = load i32, ptr @i
    %r364 = add i32 0,1
    %r365 = add i32 %r363,%r364
    store i32 %r365, ptr @i
    br label %L1
L7:
    %r33 = add i32 0,40
    call void @chapush(i32 %r33)
    br label %L8
L8:
    %r34 = load i32, ptr @i
    %r35 = getelementptr [10000 x i32], ptr @get, i32 0, i32 %r34
    %r36 = load i32, ptr %r35
    %r37 = add i32 0,94
    %r38 = icmp eq i32 %r36,%r37
    br i1 %r38, label %L9, label %L10
L9:
    %r41 = add i32 0,94
    call void @chapush(i32 %r41)
    br label %L10
L10:
    %r42 = load i32, ptr @i
    %r43 = getelementptr [10000 x i32], ptr @get, i32 0, i32 %r42
    %r44 = load i32, ptr %r43
    %r45 = add i32 0,41
    %r46 = icmp eq i32 %r44,%r45
    br i1 %r46, label %L11, label %L12
L11:
    %r49 = call i32 @chapop()
    store i32 %r49, ptr @c
    br label %L13
L12:
    %r67 = load i32, ptr @i
    %r68 = getelementptr [10000 x i32], ptr @get, i32 0, i32 %r67
    %r69 = load i32, ptr %r68
    %r70 = add i32 0,43
    %r71 = icmp eq i32 %r69,%r70
    br i1 %r71, label %L16, label %L17
L13:
    %r50 = load i32, ptr @c
    %r51 = add i32 0,40
    %r52 = icmp ne i32 %r50,%r51
    br i1 %r52, label %L14, label %L15
L14:
    %r55 = add i32 0,32
    %r56 = load i32, ptr @ii
    %r57 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r56
    store i32 %r55, ptr %r57
    %r58 = load i32, ptr @c
    %r59 = load i32, ptr @ii
    %r60 = add i32 0,1
    %r61 = add i32 %r59,%r60
    %r62 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r61
    store i32 %r58, ptr %r62
    %r63 = load i32, ptr @ii
    %r64 = add i32 0,2
    %r65 = add i32 %r63,%r64
    store i32 %r65, ptr @ii
    %r66 = call i32 @chapop()
    store i32 %r66, ptr @c
    br label %L13
L15:
    br label %L12
L16:
    br label %L18
L17:
    %r137 = load i32, ptr @i
    %r138 = getelementptr [10000 x i32], ptr @get, i32 0, i32 %r137
    %r139 = load i32, ptr %r138
    %r140 = add i32 0,45
    %r141 = icmp eq i32 %r139,%r140
    br i1 %r141, label %L34, label %L35
L18:
    %r74 = load i32, ptr @chat
    %r75 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r74
    %r76 = load i32, ptr %r75
    %r77 = add i32 0,43
    %r78 = icmp eq i32 %r76,%r77
    br i1 %r78, label %L19, label %L29
L19:
    %r131 = call i32 @find()
    %r132 = add i32 0,0
    %r133 = icmp eq i32 %r131,%r132
    br i1 %r133, label %L31, label %L32
L20:
    %r136 = add i32 0,43
    call void @chapush(i32 %r136)
    br label %L17
L21:
    %r121 = load i32, ptr @chat
    %r122 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r121
    %r123 = load i32, ptr %r122
    %r124 = add i32 0,94
    %r125 = icmp eq i32 %r123,%r124
    br i1 %r125, label %L19, label %L20
L23:
    %r111 = load i32, ptr @chat
    %r112 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r111
    %r113 = load i32, ptr %r112
    %r114 = add i32 0,37
    %r115 = icmp eq i32 %r113,%r114
    br i1 %r115, label %L19, label %L21
L25:
    %r101 = load i32, ptr @chat
    %r102 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r101
    %r103 = load i32, ptr %r102
    %r104 = add i32 0,47
    %r105 = icmp eq i32 %r103,%r104
    br i1 %r105, label %L19, label %L23
L27:
    %r91 = load i32, ptr @chat
    %r92 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r91
    %r93 = load i32, ptr %r92
    %r94 = add i32 0,42
    %r95 = icmp eq i32 %r93,%r94
    br i1 %r95, label %L19, label %L25
L29:
    %r81 = load i32, ptr @chat
    %r82 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r81
    %r83 = load i32, ptr %r82
    %r84 = add i32 0,45
    %r85 = icmp eq i32 %r83,%r84
    br i1 %r85, label %L19, label %L27
L31:
    br label %L20
L32:
    br label %L18
L34:
    br label %L36
L35:
    %r207 = load i32, ptr @i
    %r208 = getelementptr [10000 x i32], ptr @get, i32 0, i32 %r207
    %r209 = load i32, ptr %r208
    %r210 = add i32 0,42
    %r211 = icmp eq i32 %r209,%r210
    br i1 %r211, label %L52, label %L53
L36:
    %r144 = load i32, ptr @chat
    %r145 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r144
    %r146 = load i32, ptr %r145
    %r147 = add i32 0,43
    %r148 = icmp eq i32 %r146,%r147
    br i1 %r148, label %L37, label %L47
L37:
    %r201 = call i32 @find()
    %r202 = add i32 0,0
    %r203 = icmp eq i32 %r201,%r202
    br i1 %r203, label %L49, label %L50
L38:
    %r206 = add i32 0,45
    call void @chapush(i32 %r206)
    br label %L35
L39:
    %r191 = load i32, ptr @chat
    %r192 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r191
    %r193 = load i32, ptr %r192
    %r194 = add i32 0,94
    %r195 = icmp eq i32 %r193,%r194
    br i1 %r195, label %L37, label %L38
L41:
    %r181 = load i32, ptr @chat
    %r182 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r181
    %r183 = load i32, ptr %r182
    %r184 = add i32 0,37
    %r185 = icmp eq i32 %r183,%r184
    br i1 %r185, label %L37, label %L39
L43:
    %r171 = load i32, ptr @chat
    %r172 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r171
    %r173 = load i32, ptr %r172
    %r174 = add i32 0,47
    %r175 = icmp eq i32 %r173,%r174
    br i1 %r175, label %L37, label %L41
L45:
    %r161 = load i32, ptr @chat
    %r162 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r161
    %r163 = load i32, ptr %r162
    %r164 = add i32 0,42
    %r165 = icmp eq i32 %r163,%r164
    br i1 %r165, label %L37, label %L43
L47:
    %r151 = load i32, ptr @chat
    %r152 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r151
    %r153 = load i32, ptr %r152
    %r154 = add i32 0,45
    %r155 = icmp eq i32 %r153,%r154
    br i1 %r155, label %L37, label %L45
L49:
    br label %L38
L50:
    br label %L36
L52:
    br label %L54
L53:
    %r257 = load i32, ptr @i
    %r258 = getelementptr [10000 x i32], ptr @get, i32 0, i32 %r257
    %r259 = load i32, ptr %r258
    %r260 = add i32 0,47
    %r261 = icmp eq i32 %r259,%r260
    br i1 %r261, label %L66, label %L67
L54:
    %r214 = load i32, ptr @chat
    %r215 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r214
    %r216 = load i32, ptr %r215
    %r217 = add i32 0,42
    %r218 = icmp eq i32 %r216,%r217
    br i1 %r218, label %L55, label %L61
L55:
    %r251 = call i32 @find()
    %r252 = add i32 0,0
    %r253 = icmp eq i32 %r251,%r252
    br i1 %r253, label %L63, label %L64
L56:
    %r256 = add i32 0,42
    call void @chapush(i32 %r256)
    br label %L53
L57:
    %r241 = load i32, ptr @chat
    %r242 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r241
    %r243 = load i32, ptr %r242
    %r244 = add i32 0,94
    %r245 = icmp eq i32 %r243,%r244
    br i1 %r245, label %L55, label %L56
L59:
    %r231 = load i32, ptr @chat
    %r232 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r231
    %r233 = load i32, ptr %r232
    %r234 = add i32 0,37
    %r235 = icmp eq i32 %r233,%r234
    br i1 %r235, label %L55, label %L57
L61:
    %r221 = load i32, ptr @chat
    %r222 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r221
    %r223 = load i32, ptr %r222
    %r224 = add i32 0,47
    %r225 = icmp eq i32 %r223,%r224
    br i1 %r225, label %L55, label %L59
L63:
    br label %L56
L64:
    br label %L54
L66:
    br label %L68
L67:
    %r307 = load i32, ptr @i
    %r308 = getelementptr [10000 x i32], ptr @get, i32 0, i32 %r307
    %r309 = load i32, ptr %r308
    %r310 = add i32 0,37
    %r311 = icmp eq i32 %r309,%r310
    br i1 %r311, label %L80, label %L81
L68:
    %r264 = load i32, ptr @chat
    %r265 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r264
    %r266 = load i32, ptr %r265
    %r267 = add i32 0,42
    %r268 = icmp eq i32 %r266,%r267
    br i1 %r268, label %L69, label %L75
L69:
    %r301 = call i32 @find()
    %r302 = add i32 0,0
    %r303 = icmp eq i32 %r301,%r302
    br i1 %r303, label %L77, label %L78
L70:
    %r306 = add i32 0,47
    call void @chapush(i32 %r306)
    br label %L67
L71:
    %r291 = load i32, ptr @chat
    %r292 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r291
    %r293 = load i32, ptr %r292
    %r294 = add i32 0,94
    %r295 = icmp eq i32 %r293,%r294
    br i1 %r295, label %L69, label %L70
L73:
    %r281 = load i32, ptr @chat
    %r282 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r281
    %r283 = load i32, ptr %r282
    %r284 = add i32 0,37
    %r285 = icmp eq i32 %r283,%r284
    br i1 %r285, label %L69, label %L71
L75:
    %r271 = load i32, ptr @chat
    %r272 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r271
    %r273 = load i32, ptr %r272
    %r274 = add i32 0,47
    %r275 = icmp eq i32 %r273,%r274
    br i1 %r275, label %L69, label %L73
L77:
    br label %L70
L78:
    br label %L68
L80:
    br label %L82
L81:
    %r357 = add i32 0,32
    %r358 = load i32, ptr @ii
    %r359 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r358
    store i32 %r357, ptr %r359
    %r360 = load i32, ptr @ii
    %r361 = add i32 0,1
    %r362 = add i32 %r360,%r361
    store i32 %r362, ptr @ii
    br label %L6
L82:
    %r314 = load i32, ptr @chat
    %r315 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r314
    %r316 = load i32, ptr %r315
    %r317 = add i32 0,42
    %r318 = icmp eq i32 %r316,%r317
    br i1 %r318, label %L83, label %L89
L83:
    %r351 = call i32 @find()
    %r352 = add i32 0,0
    %r353 = icmp eq i32 %r351,%r352
    br i1 %r353, label %L91, label %L92
L84:
    %r356 = add i32 0,37
    call void @chapush(i32 %r356)
    br label %L81
L85:
    %r341 = load i32, ptr @chat
    %r342 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r341
    %r343 = load i32, ptr %r342
    %r344 = add i32 0,94
    %r345 = icmp eq i32 %r343,%r344
    br i1 %r345, label %L83, label %L84
L87:
    %r331 = load i32, ptr @chat
    %r332 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r331
    %r333 = load i32, ptr %r332
    %r334 = add i32 0,37
    %r335 = icmp eq i32 %r333,%r334
    br i1 %r335, label %L83, label %L85
L89:
    %r321 = load i32, ptr @chat
    %r322 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r321
    %r323 = load i32, ptr %r322
    %r324 = add i32 0,47
    %r325 = icmp eq i32 %r323,%r324
    br i1 %r325, label %L83, label %L87
L91:
    br label %L84
L92:
    br label %L82
L94:
    %r366 = load i32, ptr @chat
    %r367 = add i32 0,0
    %r368 = icmp sgt i32 %r366,%r367
    br i1 %r368, label %L95, label %L96
L95:
    %r372 = call i32 @chapop()
    store i32 %r372, ptr %r371
    %r373 = add i32 0,32
    %r374 = load i32, ptr @ii
    %r375 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r374
    store i32 %r373, ptr %r375
    %r376 = load i32, ptr %r371
    %r377 = load i32, ptr @ii
    %r378 = add i32 0,1
    %r379 = add i32 %r377,%r378
    %r380 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r379
    store i32 %r376, ptr %r380
    %r381 = load i32, ptr @ii
    %r382 = add i32 0,2
    %r383 = add i32 %r381,%r382
    store i32 %r383, ptr @ii
    br label %L94
L96:
    %r384 = add i32 0,64
    %r385 = load i32, ptr @ii
    %r386 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r385
    store i32 %r384, ptr %r386
    %r387 = add i32 0,1
    store i32 %r387, ptr @i
    br label %L97
L97:
    %r388 = load i32, ptr @i
    %r389 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r388
    %r390 = load i32, ptr %r389
    %r391 = add i32 0,64
    %r392 = icmp ne i32 %r390,%r391
    br i1 %r392, label %L98, label %L99
L98:
    %r395 = load i32, ptr @i
    %r396 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r395
    %r397 = load i32, ptr %r396
    %r398 = add i32 0,43
    %r399 = icmp eq i32 %r397,%r398
    br i1 %r399, label %L100, label %L111
L99:
    %r559 = add i32 0,1
    %r560 = getelementptr [10000 x i32], ptr @ints, i32 0, i32 %r559
    %r561 = load i32, ptr %r560
    call void @putint(i32 %r561)
    %r562 = add i32 0,0
    ret i32 %r562
L100:
    %r453 = call i32 @intpop()
    store i32 %r453, ptr %r452
    %r455 = call i32 @intpop()
    store i32 %r455, ptr %r454
    %r457 = add i32 0,0
    store i32 %r457, ptr %r456
    %r458 = load i32, ptr @i
    %r459 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r458
    %r460 = load i32, ptr %r459
    %r461 = add i32 0,43
    %r462 = icmp eq i32 %r460,%r461
    br i1 %r462, label %L113, label %L114
L101:
    %r519 = load i32, ptr @i
    %r520 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r519
    %r521 = load i32, ptr %r520
    %r522 = add i32 0,32
    %r523 = icmp ne i32 %r521,%r522
    br i1 %r523, label %L125, label %L126
L102:
    %r556 = load i32, ptr @i
    %r557 = add i32 0,1
    %r558 = add i32 %r556,%r557
    store i32 %r558, ptr @i
    br label %L97
L103:
    %r442 = load i32, ptr @i
    %r443 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r442
    %r444 = load i32, ptr %r443
    %r445 = add i32 0,94
    %r446 = icmp eq i32 %r444,%r445
    br i1 %r446, label %L100, label %L101
L105:
    %r432 = load i32, ptr @i
    %r433 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r432
    %r434 = load i32, ptr %r433
    %r435 = add i32 0,37
    %r436 = icmp eq i32 %r434,%r435
    br i1 %r436, label %L100, label %L103
L107:
    %r422 = load i32, ptr @i
    %r423 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r422
    %r424 = load i32, ptr %r423
    %r425 = add i32 0,47
    %r426 = icmp eq i32 %r424,%r425
    br i1 %r426, label %L100, label %L105
L109:
    %r412 = load i32, ptr @i
    %r413 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r412
    %r414 = load i32, ptr %r413
    %r415 = add i32 0,42
    %r416 = icmp eq i32 %r414,%r415
    br i1 %r416, label %L100, label %L107
L111:
    %r402 = load i32, ptr @i
    %r403 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r402
    %r404 = load i32, ptr %r403
    %r405 = add i32 0,45
    %r406 = icmp eq i32 %r404,%r405
    br i1 %r406, label %L100, label %L109
L113:
    %r465 = load i32, ptr %r452
    %r466 = load i32, ptr %r454
    %r467 = add i32 %r465,%r466
    store i32 %r467, ptr %r456
    br label %L114
L114:
    %r468 = load i32, ptr @i
    %r469 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r468
    %r470 = load i32, ptr %r469
    %r471 = add i32 0,45
    %r472 = icmp eq i32 %r470,%r471
    br i1 %r472, label %L115, label %L116
L115:
    %r475 = load i32, ptr %r454
    %r476 = load i32, ptr %r452
    %r477 = sub i32 %r475,%r476
    store i32 %r477, ptr %r456
    br label %L116
L116:
    %r478 = load i32, ptr @i
    %r479 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r478
    %r480 = load i32, ptr %r479
    %r481 = add i32 0,42
    %r482 = icmp eq i32 %r480,%r481
    br i1 %r482, label %L117, label %L118
L117:
    %r485 = load i32, ptr %r452
    %r486 = load i32, ptr %r454
    %r487 = mul i32 %r485,%r486
    store i32 %r487, ptr %r456
    br label %L118
L118:
    %r488 = load i32, ptr @i
    %r489 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r488
    %r490 = load i32, ptr %r489
    %r491 = add i32 0,47
    %r492 = icmp eq i32 %r490,%r491
    br i1 %r492, label %L119, label %L120
L119:
    %r495 = load i32, ptr %r454
    %r496 = load i32, ptr %r452
    %r497 = sdiv i32 %r495,%r496
    store i32 %r497, ptr %r456
    br label %L120
L120:
    %r498 = load i32, ptr @i
    %r499 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r498
    %r500 = load i32, ptr %r499
    %r501 = add i32 0,37
    %r502 = icmp eq i32 %r500,%r501
    br i1 %r502, label %L121, label %L122
L121:
    %r505 = load i32, ptr %r454
    %r506 = load i32, ptr %r452
    %r507 = srem i32 %r505,%r506
    store i32 %r507, ptr %r456
    br label %L122
L122:
    %r508 = load i32, ptr @i
    %r509 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r508
    %r510 = load i32, ptr %r509
    %r511 = add i32 0,94
    %r512 = icmp eq i32 %r510,%r511
    br i1 %r512, label %L123, label %L124
L123:
    %r515 = load i32, ptr %r454
    %r516 = load i32, ptr %r452
    %r517 = call i32 @power(i32 %r515,i32 %r516)
    store i32 %r517, ptr %r456
    br label %L124
L124:
    %r518 = load i32, ptr %r456
    call void @intpush(i32 %r518)
    br label %L102
L125:
    %r526 = load i32, ptr @i
    %r527 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r526
    %r528 = load i32, ptr %r527
    %r529 = add i32 0,48
    %r530 = sub i32 %r528,%r529
    call void @intpush(i32 %r530)
    %r531 = add i32 0,1
    store i32 %r531, ptr @ii
    br label %L127
L126:
    br label %L102
L127:
    %r532 = load i32, ptr @i
    %r533 = load i32, ptr @ii
    %r534 = add i32 %r532,%r533
    %r535 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r534
    %r536 = load i32, ptr %r535
    %r537 = add i32 0,32
    %r538 = icmp ne i32 %r536,%r537
    br i1 %r538, label %L128, label %L129
L128:
    %r541 = load i32, ptr @i
    %r542 = load i32, ptr @ii
    %r543 = add i32 %r541,%r542
    %r544 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r543
    %r545 = load i32, ptr %r544
    %r546 = add i32 0,48
    %r547 = sub i32 %r545,%r546
    call void @intadd(i32 %r547)
    %r548 = load i32, ptr @ii
    %r549 = add i32 0,1
    %r550 = add i32 %r548,%r549
    store i32 %r550, ptr @ii
    br label %L127
L129:
    %r551 = load i32, ptr @i
    %r552 = load i32, ptr @ii
    %r553 = add i32 %r551,%r552
    %r554 = add i32 0,1
    %r555 = sub i32 %r553,%r554
    store i32 %r555, ptr @i
    br label %L126
}
