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
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:
    %r2 = load i32, ptr %r1
    %r3 = add i32 0,48
    %r4 = icmp sge i32 %r2,%r3
    br i1 %r4, label %L4, label %L3
L2:
    %r15 = add i32 0,1
    ret i32 %r15
L3:
    %r16 = add i32 0,0
    ret i32 %r16
L4:
    %r7 = load i32, ptr %r1
    %r8 = add i32 0,57
    %r9 = icmp sle i32 %r7,%r8
    br i1 %r9, label %L2, label %L3
}
define void @intpush(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:
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
    br label %L1
L1:
    %r2 = call i32 @getch()
    store i32 %r2, ptr %r1
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r5 = load i32, ptr %r1
    %r6 = add i32 0,13
    %r7 = icmp ne i32 %r5,%r6
    br i1 %r7, label %L6, label %L5
L3:
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
    br label %L4
L4:
    %r25 = load i32, ptr %r1
    %r26 = add i32 0,13
    %r27 = icmp ne i32 %r25,%r26
    br i1 %r27, label %L8, label %L5
L5:
    %r38 = load i32, ptr %r3
    ret i32 %r38
L6:
    %r10 = load i32, ptr %r1
    %r11 = add i32 0,10
    %r12 = icmp ne i32 %r10,%r11
    br i1 %r12, label %L3, label %L5
L8:
    %r30 = load i32, ptr %r1
    %r31 = add i32 0,10
    %r32 = icmp ne i32 %r30,%r31
    br i1 %r32, label %L3, label %L5
}
define i32 @power(i32 %r0,i32 %r1)
{
L0:
    %r4 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r5 = add i32 0,1
    store i32 %r5, ptr %r4
    %r6 = load i32, ptr %r3
    %r7 = add i32 0,0
    %r8 = icmp ne i32 %r6,%r7
    br i1 %r8, label %L3, label %L5
L3:
    %r11 = load i32, ptr %r4
    %r12 = load i32, ptr %r2
    %r13 = mul i32 %r11,%r12
    store i32 %r13, ptr %r4
    %r14 = load i32, ptr %r3
    %r15 = add i32 0,1
    %r16 = sub i32 %r14,%r15
    store i32 %r16, ptr %r3
    br label %L4
L4:
    %r17 = load i32, ptr %r3
    %r18 = add i32 0,0
    %r19 = icmp ne i32 %r17,%r18
    br i1 %r19, label %L3, label %L5
L5:
    %r22 = load i32, ptr %r4
    ret i32 %r22
}
define void @chapush(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:
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
    br label %L1
L1:
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
    br label %L1
L1:
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
    br label %L1
L1:
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
    br label %L1
L1:
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
    br i1 %r14, label %L2, label %L3
L2:
    %r17 = add i32 0,0
    ret i32 %r17
L3:
    %r18 = add i32 0,1
    ret i32 %r18
}
define i32 @main()
{
L0:
    %r696 = alloca i32
    %r694 = alloca i32
    %r692 = alloca i32
    %r606 = alloca i32
    %r2 = alloca i32
    br label %L1
L1:
    %r0 = add i32 0,0
    store i32 %r0, ptr @intt
    %r1 = add i32 0,0
    store i32 %r1, ptr @chat
    %r3 = getelementptr i32, ptr @get, i32 0
    %r4 = call i32 @getstr(ptr %r3)
    store i32 %r4, ptr %r2
    %r5 = load i32, ptr @i
    %r6 = load i32, ptr %r2
    %r7 = icmp slt i32 %r5,%r6
    br i1 %r7, label %L3, label %L5
L3:
    %r10 = load i32, ptr @i
    %r11 = getelementptr [10000 x i32], ptr @get, i32 0, i32 %r10
    %r12 = load i32, ptr %r11
    %r13 = call i32 @isdigit(i32 %r12)
    %r14 = add i32 0,1
    %r15 = icmp eq i32 %r13,%r14
    br i1 %r15, label %L6, label %L7
L4:
    %r596 = load i32, ptr @i
    %r597 = load i32, ptr %r2
    %r598 = icmp slt i32 %r596,%r597
    br i1 %r598, label %L3, label %L5
L5:
    %r601 = load i32, ptr @chat
    %r602 = add i32 0,0
    %r603 = icmp sgt i32 %r601,%r602
    br i1 %r603, label %L141, label %L143
L6:
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
    br label %L8
L7:
    %r26 = load i32, ptr @i
    %r27 = getelementptr [10000 x i32], ptr @get, i32 0, i32 %r26
    %r28 = load i32, ptr %r27
    %r29 = add i32 0,40
    %r30 = icmp eq i32 %r28,%r29
    br i1 %r30, label %L9, label %L10
L8:
    %r593 = load i32, ptr @i
    %r594 = add i32 0,1
    %r595 = add i32 %r593,%r594
    store i32 %r595, ptr @i
    br label %L4
L9:
    %r33 = add i32 0,40
    call void @chapush(i32 %r33)
    br label %L10
L10:
    %r34 = load i32, ptr @i
    %r35 = getelementptr [10000 x i32], ptr @get, i32 0, i32 %r34
    %r36 = load i32, ptr %r35
    %r37 = add i32 0,94
    %r38 = icmp eq i32 %r36,%r37
    br i1 %r38, label %L11, label %L12
L11:
    %r41 = add i32 0,94
    call void @chapush(i32 %r41)
    br label %L12
L12:
    %r42 = load i32, ptr @i
    %r43 = getelementptr [10000 x i32], ptr @get, i32 0, i32 %r42
    %r44 = load i32, ptr %r43
    %r45 = add i32 0,41
    %r46 = icmp eq i32 %r44,%r45
    br i1 %r46, label %L13, label %L14
L13:
    %r49 = call i32 @chapop()
    store i32 %r49, ptr @c
    %r50 = load i32, ptr @c
    %r51 = add i32 0,40
    %r52 = icmp ne i32 %r50,%r51
    br i1 %r52, label %L16, label %L18
L14:
    %r72 = load i32, ptr @i
    %r73 = getelementptr [10000 x i32], ptr @get, i32 0, i32 %r72
    %r74 = load i32, ptr %r73
    %r75 = add i32 0,43
    %r76 = icmp eq i32 %r74,%r75
    br i1 %r76, label %L19, label %L20
L16:
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
    br label %L17
L17:
    %r67 = load i32, ptr @c
    %r68 = add i32 0,40
    %r69 = icmp ne i32 %r67,%r68
    br i1 %r69, label %L16, label %L18
L18:
    br label %L14
L19:
    %r79 = load i32, ptr @chat
    %r80 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r79
    %r81 = load i32, ptr %r80
    %r82 = add i32 0,43
    %r83 = icmp eq i32 %r81,%r82
    br i1 %r83, label %L22, label %L33
L20:
    %r199 = load i32, ptr @i
    %r200 = getelementptr [10000 x i32], ptr @get, i32 0, i32 %r199
    %r201 = load i32, ptr %r200
    %r202 = add i32 0,45
    %r203 = icmp eq i32 %r201,%r202
    br i1 %r203, label %L48, label %L49
L22:
    %r136 = call i32 @find()
    %r137 = add i32 0,0
    %r138 = icmp eq i32 %r136,%r137
    br i1 %r138, label %L35, label %L36
L23:
    %r141 = load i32, ptr @chat
    %r142 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r141
    %r143 = load i32, ptr %r142
    %r144 = add i32 0,43
    %r145 = icmp eq i32 %r143,%r144
    br i1 %r145, label %L22, label %L46
L24:
    %r198 = add i32 0,43
    call void @chapush(i32 %r198)
    br label %L20
L25:
    %r126 = load i32, ptr @chat
    %r127 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r126
    %r128 = load i32, ptr %r127
    %r129 = add i32 0,94
    %r130 = icmp eq i32 %r128,%r129
    br i1 %r130, label %L22, label %L24
L27:
    %r116 = load i32, ptr @chat
    %r117 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r116
    %r118 = load i32, ptr %r117
    %r119 = add i32 0,37
    %r120 = icmp eq i32 %r118,%r119
    br i1 %r120, label %L22, label %L25
L29:
    %r106 = load i32, ptr @chat
    %r107 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r106
    %r108 = load i32, ptr %r107
    %r109 = add i32 0,47
    %r110 = icmp eq i32 %r108,%r109
    br i1 %r110, label %L22, label %L27
L31:
    %r96 = load i32, ptr @chat
    %r97 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r96
    %r98 = load i32, ptr %r97
    %r99 = add i32 0,42
    %r100 = icmp eq i32 %r98,%r99
    br i1 %r100, label %L22, label %L29
L33:
    %r86 = load i32, ptr @chat
    %r87 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r86
    %r88 = load i32, ptr %r87
    %r89 = add i32 0,45
    %r90 = icmp eq i32 %r88,%r89
    br i1 %r90, label %L22, label %L31
L35:
    br label %L24
L36:
    br label %L23
L38:
    %r188 = load i32, ptr @chat
    %r189 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r188
    %r190 = load i32, ptr %r189
    %r191 = add i32 0,94
    %r192 = icmp eq i32 %r190,%r191
    br i1 %r192, label %L22, label %L24
L40:
    %r178 = load i32, ptr @chat
    %r179 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r178
    %r180 = load i32, ptr %r179
    %r181 = add i32 0,37
    %r182 = icmp eq i32 %r180,%r181
    br i1 %r182, label %L22, label %L38
L42:
    %r168 = load i32, ptr @chat
    %r169 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r168
    %r170 = load i32, ptr %r169
    %r171 = add i32 0,47
    %r172 = icmp eq i32 %r170,%r171
    br i1 %r172, label %L22, label %L40
L44:
    %r158 = load i32, ptr @chat
    %r159 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r158
    %r160 = load i32, ptr %r159
    %r161 = add i32 0,42
    %r162 = icmp eq i32 %r160,%r161
    br i1 %r162, label %L22, label %L42
L46:
    %r148 = load i32, ptr @chat
    %r149 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r148
    %r150 = load i32, ptr %r149
    %r151 = add i32 0,45
    %r152 = icmp eq i32 %r150,%r151
    br i1 %r152, label %L22, label %L44
L48:
    %r206 = load i32, ptr @chat
    %r207 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r206
    %r208 = load i32, ptr %r207
    %r209 = add i32 0,43
    %r210 = icmp eq i32 %r208,%r209
    br i1 %r210, label %L51, label %L62
L49:
    %r326 = load i32, ptr @i
    %r327 = getelementptr [10000 x i32], ptr @get, i32 0, i32 %r326
    %r328 = load i32, ptr %r327
    %r329 = add i32 0,42
    %r330 = icmp eq i32 %r328,%r329
    br i1 %r330, label %L77, label %L78
L51:
    %r263 = call i32 @find()
    %r264 = add i32 0,0
    %r265 = icmp eq i32 %r263,%r264
    br i1 %r265, label %L64, label %L65
L52:
    %r268 = load i32, ptr @chat
    %r269 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r268
    %r270 = load i32, ptr %r269
    %r271 = add i32 0,43
    %r272 = icmp eq i32 %r270,%r271
    br i1 %r272, label %L51, label %L75
L53:
    %r325 = add i32 0,45
    call void @chapush(i32 %r325)
    br label %L49
L54:
    %r253 = load i32, ptr @chat
    %r254 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r253
    %r255 = load i32, ptr %r254
    %r256 = add i32 0,94
    %r257 = icmp eq i32 %r255,%r256
    br i1 %r257, label %L51, label %L53
L56:
    %r243 = load i32, ptr @chat
    %r244 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r243
    %r245 = load i32, ptr %r244
    %r246 = add i32 0,37
    %r247 = icmp eq i32 %r245,%r246
    br i1 %r247, label %L51, label %L54
L58:
    %r233 = load i32, ptr @chat
    %r234 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r233
    %r235 = load i32, ptr %r234
    %r236 = add i32 0,47
    %r237 = icmp eq i32 %r235,%r236
    br i1 %r237, label %L51, label %L56
L60:
    %r223 = load i32, ptr @chat
    %r224 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r223
    %r225 = load i32, ptr %r224
    %r226 = add i32 0,42
    %r227 = icmp eq i32 %r225,%r226
    br i1 %r227, label %L51, label %L58
L62:
    %r213 = load i32, ptr @chat
    %r214 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r213
    %r215 = load i32, ptr %r214
    %r216 = add i32 0,45
    %r217 = icmp eq i32 %r215,%r216
    br i1 %r217, label %L51, label %L60
L64:
    br label %L53
L65:
    br label %L52
L67:
    %r315 = load i32, ptr @chat
    %r316 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r315
    %r317 = load i32, ptr %r316
    %r318 = add i32 0,94
    %r319 = icmp eq i32 %r317,%r318
    br i1 %r319, label %L51, label %L53
L69:
    %r305 = load i32, ptr @chat
    %r306 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r305
    %r307 = load i32, ptr %r306
    %r308 = add i32 0,37
    %r309 = icmp eq i32 %r307,%r308
    br i1 %r309, label %L51, label %L67
L71:
    %r295 = load i32, ptr @chat
    %r296 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r295
    %r297 = load i32, ptr %r296
    %r298 = add i32 0,47
    %r299 = icmp eq i32 %r297,%r298
    br i1 %r299, label %L51, label %L69
L73:
    %r285 = load i32, ptr @chat
    %r286 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r285
    %r287 = load i32, ptr %r286
    %r288 = add i32 0,42
    %r289 = icmp eq i32 %r287,%r288
    br i1 %r289, label %L51, label %L71
L75:
    %r275 = load i32, ptr @chat
    %r276 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r275
    %r277 = load i32, ptr %r276
    %r278 = add i32 0,45
    %r279 = icmp eq i32 %r277,%r278
    br i1 %r279, label %L51, label %L73
L77:
    %r333 = load i32, ptr @chat
    %r334 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r333
    %r335 = load i32, ptr %r334
    %r336 = add i32 0,42
    %r337 = icmp eq i32 %r335,%r336
    br i1 %r337, label %L80, label %L87
L78:
    %r413 = load i32, ptr @i
    %r414 = getelementptr [10000 x i32], ptr @get, i32 0, i32 %r413
    %r415 = load i32, ptr %r414
    %r416 = add i32 0,47
    %r417 = icmp eq i32 %r415,%r416
    br i1 %r417, label %L98, label %L99
L80:
    %r370 = call i32 @find()
    %r371 = add i32 0,0
    %r372 = icmp eq i32 %r370,%r371
    br i1 %r372, label %L89, label %L90
L81:
    %r375 = load i32, ptr @chat
    %r376 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r375
    %r377 = load i32, ptr %r376
    %r378 = add i32 0,42
    %r379 = icmp eq i32 %r377,%r378
    br i1 %r379, label %L80, label %L96
L82:
    %r412 = add i32 0,42
    call void @chapush(i32 %r412)
    br label %L78
L83:
    %r360 = load i32, ptr @chat
    %r361 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r360
    %r362 = load i32, ptr %r361
    %r363 = add i32 0,94
    %r364 = icmp eq i32 %r362,%r363
    br i1 %r364, label %L80, label %L82
L85:
    %r350 = load i32, ptr @chat
    %r351 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r350
    %r352 = load i32, ptr %r351
    %r353 = add i32 0,37
    %r354 = icmp eq i32 %r352,%r353
    br i1 %r354, label %L80, label %L83
L87:
    %r340 = load i32, ptr @chat
    %r341 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r340
    %r342 = load i32, ptr %r341
    %r343 = add i32 0,47
    %r344 = icmp eq i32 %r342,%r343
    br i1 %r344, label %L80, label %L85
L89:
    br label %L82
L90:
    br label %L81
L92:
    %r402 = load i32, ptr @chat
    %r403 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r402
    %r404 = load i32, ptr %r403
    %r405 = add i32 0,94
    %r406 = icmp eq i32 %r404,%r405
    br i1 %r406, label %L80, label %L82
L94:
    %r392 = load i32, ptr @chat
    %r393 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r392
    %r394 = load i32, ptr %r393
    %r395 = add i32 0,37
    %r396 = icmp eq i32 %r394,%r395
    br i1 %r396, label %L80, label %L92
L96:
    %r382 = load i32, ptr @chat
    %r383 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r382
    %r384 = load i32, ptr %r383
    %r385 = add i32 0,47
    %r386 = icmp eq i32 %r384,%r385
    br i1 %r386, label %L80, label %L94
L98:
    %r420 = load i32, ptr @chat
    %r421 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r420
    %r422 = load i32, ptr %r421
    %r423 = add i32 0,42
    %r424 = icmp eq i32 %r422,%r423
    br i1 %r424, label %L101, label %L108
L99:
    %r500 = load i32, ptr @i
    %r501 = getelementptr [10000 x i32], ptr @get, i32 0, i32 %r500
    %r502 = load i32, ptr %r501
    %r503 = add i32 0,37
    %r504 = icmp eq i32 %r502,%r503
    br i1 %r504, label %L119, label %L120
L101:
    %r457 = call i32 @find()
    %r458 = add i32 0,0
    %r459 = icmp eq i32 %r457,%r458
    br i1 %r459, label %L110, label %L111
L102:
    %r462 = load i32, ptr @chat
    %r463 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r462
    %r464 = load i32, ptr %r463
    %r465 = add i32 0,42
    %r466 = icmp eq i32 %r464,%r465
    br i1 %r466, label %L101, label %L117
L103:
    %r499 = add i32 0,47
    call void @chapush(i32 %r499)
    br label %L99
L104:
    %r447 = load i32, ptr @chat
    %r448 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r447
    %r449 = load i32, ptr %r448
    %r450 = add i32 0,94
    %r451 = icmp eq i32 %r449,%r450
    br i1 %r451, label %L101, label %L103
L106:
    %r437 = load i32, ptr @chat
    %r438 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r437
    %r439 = load i32, ptr %r438
    %r440 = add i32 0,37
    %r441 = icmp eq i32 %r439,%r440
    br i1 %r441, label %L101, label %L104
L108:
    %r427 = load i32, ptr @chat
    %r428 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r427
    %r429 = load i32, ptr %r428
    %r430 = add i32 0,47
    %r431 = icmp eq i32 %r429,%r430
    br i1 %r431, label %L101, label %L106
L110:
    br label %L103
L111:
    br label %L102
L113:
    %r489 = load i32, ptr @chat
    %r490 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r489
    %r491 = load i32, ptr %r490
    %r492 = add i32 0,94
    %r493 = icmp eq i32 %r491,%r492
    br i1 %r493, label %L101, label %L103
L115:
    %r479 = load i32, ptr @chat
    %r480 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r479
    %r481 = load i32, ptr %r480
    %r482 = add i32 0,37
    %r483 = icmp eq i32 %r481,%r482
    br i1 %r483, label %L101, label %L113
L117:
    %r469 = load i32, ptr @chat
    %r470 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r469
    %r471 = load i32, ptr %r470
    %r472 = add i32 0,47
    %r473 = icmp eq i32 %r471,%r472
    br i1 %r473, label %L101, label %L115
L119:
    %r507 = load i32, ptr @chat
    %r508 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r507
    %r509 = load i32, ptr %r508
    %r510 = add i32 0,42
    %r511 = icmp eq i32 %r509,%r510
    br i1 %r511, label %L122, label %L129
L120:
    %r587 = add i32 0,32
    %r588 = load i32, ptr @ii
    %r589 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r588
    store i32 %r587, ptr %r589
    %r590 = load i32, ptr @ii
    %r591 = add i32 0,1
    %r592 = add i32 %r590,%r591
    store i32 %r592, ptr @ii
    br label %L8
L122:
    %r544 = call i32 @find()
    %r545 = add i32 0,0
    %r546 = icmp eq i32 %r544,%r545
    br i1 %r546, label %L131, label %L132
L123:
    %r549 = load i32, ptr @chat
    %r550 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r549
    %r551 = load i32, ptr %r550
    %r552 = add i32 0,42
    %r553 = icmp eq i32 %r551,%r552
    br i1 %r553, label %L122, label %L138
L124:
    %r586 = add i32 0,37
    call void @chapush(i32 %r586)
    br label %L120
L125:
    %r534 = load i32, ptr @chat
    %r535 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r534
    %r536 = load i32, ptr %r535
    %r537 = add i32 0,94
    %r538 = icmp eq i32 %r536,%r537
    br i1 %r538, label %L122, label %L124
L127:
    %r524 = load i32, ptr @chat
    %r525 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r524
    %r526 = load i32, ptr %r525
    %r527 = add i32 0,37
    %r528 = icmp eq i32 %r526,%r527
    br i1 %r528, label %L122, label %L125
L129:
    %r514 = load i32, ptr @chat
    %r515 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r514
    %r516 = load i32, ptr %r515
    %r517 = add i32 0,47
    %r518 = icmp eq i32 %r516,%r517
    br i1 %r518, label %L122, label %L127
L131:
    br label %L124
L132:
    br label %L123
L134:
    %r576 = load i32, ptr @chat
    %r577 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r576
    %r578 = load i32, ptr %r577
    %r579 = add i32 0,94
    %r580 = icmp eq i32 %r578,%r579
    br i1 %r580, label %L122, label %L124
L136:
    %r566 = load i32, ptr @chat
    %r567 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r566
    %r568 = load i32, ptr %r567
    %r569 = add i32 0,37
    %r570 = icmp eq i32 %r568,%r569
    br i1 %r570, label %L122, label %L134
L138:
    %r556 = load i32, ptr @chat
    %r557 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r556
    %r558 = load i32, ptr %r557
    %r559 = add i32 0,47
    %r560 = icmp eq i32 %r558,%r559
    br i1 %r560, label %L122, label %L136
L141:
    %r607 = call i32 @chapop()
    store i32 %r607, ptr %r606
    %r608 = add i32 0,32
    %r609 = load i32, ptr @ii
    %r610 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r609
    store i32 %r608, ptr %r610
    %r611 = load i32, ptr %r606
    %r612 = load i32, ptr @ii
    %r613 = add i32 0,1
    %r614 = add i32 %r612,%r613
    %r615 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r614
    store i32 %r611, ptr %r615
    %r616 = load i32, ptr @ii
    %r617 = add i32 0,2
    %r618 = add i32 %r616,%r617
    store i32 %r618, ptr @ii
    br label %L142
L142:
    %r619 = load i32, ptr @chat
    %r620 = add i32 0,0
    %r621 = icmp sgt i32 %r619,%r620
    br i1 %r621, label %L141, label %L143
L143:
    %r624 = add i32 0,64
    %r625 = load i32, ptr @ii
    %r626 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r625
    store i32 %r624, ptr %r626
    %r627 = add i32 0,1
    store i32 %r627, ptr @i
    %r628 = load i32, ptr @i
    %r629 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r628
    %r630 = load i32, ptr %r629
    %r631 = add i32 0,64
    %r632 = icmp ne i32 %r630,%r631
    br i1 %r632, label %L145, label %L147
L145:
    %r635 = load i32, ptr @i
    %r636 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r635
    %r637 = load i32, ptr %r636
    %r638 = add i32 0,43
    %r639 = icmp eq i32 %r637,%r638
    br i1 %r639, label %L148, label %L159
L146:
    %r808 = load i32, ptr @i
    %r809 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r808
    %r810 = load i32, ptr %r809
    %r811 = add i32 0,64
    %r812 = icmp ne i32 %r810,%r811
    br i1 %r812, label %L145, label %L147
L147:
    %r815 = add i32 0,1
    %r816 = getelementptr [10000 x i32], ptr @ints, i32 0, i32 %r815
    %r817 = load i32, ptr %r816
    call void @putint(i32 %r817)
    %r818 = add i32 0,0
    ret i32 %r818
L148:
    %r693 = call i32 @intpop()
    store i32 %r693, ptr %r692
    %r695 = call i32 @intpop()
    store i32 %r695, ptr %r694
    %r697 = add i32 0,0
    store i32 %r697, ptr %r696
    %r698 = load i32, ptr @i
    %r699 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r698
    %r700 = load i32, ptr %r699
    %r701 = add i32 0,43
    %r702 = icmp eq i32 %r700,%r701
    br i1 %r702, label %L161, label %L162
L149:
    %r759 = load i32, ptr @i
    %r760 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r759
    %r761 = load i32, ptr %r760
    %r762 = add i32 0,32
    %r763 = icmp ne i32 %r761,%r762
    br i1 %r763, label %L173, label %L174
L150:
    %r805 = load i32, ptr @i
    %r806 = add i32 0,1
    %r807 = add i32 %r805,%r806
    store i32 %r807, ptr @i
    br label %L146
L151:
    %r682 = load i32, ptr @i
    %r683 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r682
    %r684 = load i32, ptr %r683
    %r685 = add i32 0,94
    %r686 = icmp eq i32 %r684,%r685
    br i1 %r686, label %L148, label %L149
L153:
    %r672 = load i32, ptr @i
    %r673 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r672
    %r674 = load i32, ptr %r673
    %r675 = add i32 0,37
    %r676 = icmp eq i32 %r674,%r675
    br i1 %r676, label %L148, label %L151
L155:
    %r662 = load i32, ptr @i
    %r663 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r662
    %r664 = load i32, ptr %r663
    %r665 = add i32 0,47
    %r666 = icmp eq i32 %r664,%r665
    br i1 %r666, label %L148, label %L153
L157:
    %r652 = load i32, ptr @i
    %r653 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r652
    %r654 = load i32, ptr %r653
    %r655 = add i32 0,42
    %r656 = icmp eq i32 %r654,%r655
    br i1 %r656, label %L148, label %L155
L159:
    %r642 = load i32, ptr @i
    %r643 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r642
    %r644 = load i32, ptr %r643
    %r645 = add i32 0,45
    %r646 = icmp eq i32 %r644,%r645
    br i1 %r646, label %L148, label %L157
L161:
    %r705 = load i32, ptr %r692
    %r706 = load i32, ptr %r694
    %r707 = add i32 %r705,%r706
    store i32 %r707, ptr %r696
    br label %L162
L162:
    %r708 = load i32, ptr @i
    %r709 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r708
    %r710 = load i32, ptr %r709
    %r711 = add i32 0,45
    %r712 = icmp eq i32 %r710,%r711
    br i1 %r712, label %L163, label %L164
L163:
    %r715 = load i32, ptr %r694
    %r716 = load i32, ptr %r692
    %r717 = sub i32 %r715,%r716
    store i32 %r717, ptr %r696
    br label %L164
L164:
    %r718 = load i32, ptr @i
    %r719 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r718
    %r720 = load i32, ptr %r719
    %r721 = add i32 0,42
    %r722 = icmp eq i32 %r720,%r721
    br i1 %r722, label %L165, label %L166
L165:
    %r725 = load i32, ptr %r692
    %r726 = load i32, ptr %r694
    %r727 = mul i32 %r725,%r726
    store i32 %r727, ptr %r696
    br label %L166
L166:
    %r728 = load i32, ptr @i
    %r729 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r728
    %r730 = load i32, ptr %r729
    %r731 = add i32 0,47
    %r732 = icmp eq i32 %r730,%r731
    br i1 %r732, label %L167, label %L168
L167:
    %r735 = load i32, ptr %r694
    %r736 = load i32, ptr %r692
    %r737 = sdiv i32 %r735,%r736
    store i32 %r737, ptr %r696
    br label %L168
L168:
    %r738 = load i32, ptr @i
    %r739 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r738
    %r740 = load i32, ptr %r739
    %r741 = add i32 0,37
    %r742 = icmp eq i32 %r740,%r741
    br i1 %r742, label %L169, label %L170
L169:
    %r745 = load i32, ptr %r694
    %r746 = load i32, ptr %r692
    %r747 = srem i32 %r745,%r746
    store i32 %r747, ptr %r696
    br label %L170
L170:
    %r748 = load i32, ptr @i
    %r749 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r748
    %r750 = load i32, ptr %r749
    %r751 = add i32 0,94
    %r752 = icmp eq i32 %r750,%r751
    br i1 %r752, label %L171, label %L172
L171:
    %r755 = load i32, ptr %r694
    %r756 = load i32, ptr %r692
    %r757 = call i32 @power(i32 %r755,i32 %r756)
    store i32 %r757, ptr %r696
    br label %L172
L172:
    %r758 = load i32, ptr %r696
    call void @intpush(i32 %r758)
    br label %L150
L173:
    %r766 = load i32, ptr @i
    %r767 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r766
    %r768 = load i32, ptr %r767
    %r769 = add i32 0,48
    %r770 = sub i32 %r768,%r769
    call void @intpush(i32 %r770)
    %r771 = add i32 0,1
    store i32 %r771, ptr @ii
    %r772 = load i32, ptr @i
    %r773 = load i32, ptr @ii
    %r774 = add i32 %r772,%r773
    %r775 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r774
    %r776 = load i32, ptr %r775
    %r777 = add i32 0,32
    %r778 = icmp ne i32 %r776,%r777
    br i1 %r778, label %L176, label %L178
L174:
    br label %L150
L176:
    %r781 = load i32, ptr @i
    %r782 = load i32, ptr @ii
    %r783 = add i32 %r781,%r782
    %r784 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r783
    %r785 = load i32, ptr %r784
    %r786 = add i32 0,48
    %r787 = sub i32 %r785,%r786
    call void @intadd(i32 %r787)
    %r788 = load i32, ptr @ii
    %r789 = add i32 0,1
    %r790 = add i32 %r788,%r789
    store i32 %r790, ptr @ii
    br label %L177
L177:
    %r791 = load i32, ptr @i
    %r792 = load i32, ptr @ii
    %r793 = add i32 %r791,%r792
    %r794 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r793
    %r795 = load i32, ptr %r794
    %r796 = add i32 0,32
    %r797 = icmp ne i32 %r795,%r796
    br i1 %r797, label %L176, label %L178
L178:
    %r800 = load i32, ptr @i
    %r801 = load i32, ptr @ii
    %r802 = add i32 %r800,%r801
    %r803 = add i32 0,1
    %r804 = sub i32 %r802,%r803
    store i32 %r804, ptr @i
    br label %L174
}
