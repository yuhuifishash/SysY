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
L0:  ;
    br label %L1
L1:  ;
    %r4 = icmp sge i32 %r0,48
    br i1 %r4, label %L4, label %L3
L2:  ;
    ret i32 1
L3:  ;
    ret i32 0
L4:  ;
    %r7 = icmp sle i32 %r0,57
    br i1 %r7, label %L2, label %L3
}
define i32 @getstr(ptr %r0)
{
L0:  ;
    br label %L1
L1:  ;
    %r2 = call i32 @getch()
    br label %L2
L2:  ;
    %r20 = phi i32 [%r2,%L1],[%r17,%L3]
    %r19 = phi i32 [0,%L1],[%r16,%L3]
    %r7 = icmp ne i32 %r20,13
    br i1 %r7, label %L5, label %L4
L3:  ;
    %r12 = getelementptr i32, ptr %r0, i32 %r19
    store i32 %r20, ptr %r12
    %r16 = add i32 %r19,1
    %r17 = call i32 @getch()
    br label %L2
L4:  ;
    ret i32 %r19
L5:  ;
    %r10 = icmp ne i32 %r20,10
    br i1 %r10, label %L3, label %L4
}
define i32 @power(i32 %r0,i32 %r1)
{
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r17 = phi i32 [%r1,%L1],[%r14,%L3]
    %r16 = phi i32 [1,%L1],[%r11,%L3]
    %r8 = icmp ne i32 %r17,0
    br i1 %r8, label %L3, label %L4
L3:  ;
    %r11 = mul i32 %r16,%r0
    %r14 = sub i32 %r17,1
    br label %L2
L4:  ;
    ret i32 %r16
}
define void @intpush(i32 %r0)
{
L0:  ;
    br label %L1
L1:  ;
    %r2 = load i32, ptr @intt
    %r4 = add i32 %r2,1
    store i32 %r4, ptr @intt
    %r5 = load i32, ptr @intt
    %r6 = getelementptr [10000 x i32], ptr @ints, i32 0, i32 %r5
    store i32 %r0, ptr %r6
    ret void
}
define void @chapush(i32 %r0)
{
L0:  ;
    br label %L1
L1:  ;
    %r2 = load i32, ptr @chat
    %r4 = add i32 %r2,1
    store i32 %r4, ptr @chat
    %r5 = load i32, ptr @chat
    %r6 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r5
    store i32 %r0, ptr %r6
    ret void
}
define i32 @intpop()
{
L0:  ;
    br label %L1
L1:  ;
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
L0:  ;
    br label %L1
L1:  ;
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
L0:  ;
    br label %L1
L1:  ;
    %r2 = load i32, ptr @intt
    %r3 = getelementptr [10000 x i32], ptr @ints, i32 0, i32 %r2
    %r6 = load i32, ptr %r3
    %r8 = mul i32 %r6,10
    store i32 %r8, ptr %r3
    %r13 = load i32, ptr %r3
    %r15 = add i32 %r13,%r0
    store i32 %r15, ptr %r3
    ret void
}
define i32 @find()
{
L0:  ;
    br label %L1
L1:  ;
    %r0 = call i32 @chapop()
    store i32 %r0, ptr @c
    %r1 = load i32, ptr @ii
    %r2 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r1
    store i32 32, ptr %r2
    %r6 = add i32 %r1,1
    %r7 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r6
    %r8 = load i32, ptr @c
    store i32 %r8, ptr %r7
    %r11 = add i32 %r1,2
    store i32 %r11, ptr @ii
    %r12 = load i32, ptr @chat
    %r14 = icmp eq i32 %r12,0
    br i1 %r14, label %L2, label %L3
L2:  ;
    ret i32 0
L3:  ;
    ret i32 1
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    store i32 0, ptr @intt
    store i32 0, ptr @chat
    %r3 = getelementptr [10000 x i32], ptr @get, i32 0
    %r4 = call i32 @getstr(ptr %r3)
    br label %L2
L2:  ;
    %r5 = load i32, ptr @i
    %r7 = icmp slt i32 %r5,%r4
    br i1 %r7, label %L3, label %L4
L3:  ;
    %r8 = load i32, ptr @i
    %r9 = getelementptr [10000 x i32], ptr @get, i32 0, i32 %r8
    %r10 = load i32, ptr %r9
    %r11 = call i32 @isdigit(i32 %r10)
    %r13 = icmp eq i32 %r11,1
    br i1 %r13, label %L5, label %L6
L4:  ;
    br label %L76
L5:  ;
    %r14 = load i32, ptr @ii
    %r15 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r14
    %r16 = load i32, ptr @i
    %r17 = getelementptr [10000 x i32], ptr @get, i32 0, i32 %r16
    %r18 = load i32, ptr %r17
    store i32 %r18, ptr %r15
    %r21 = add i32 %r14,1
    store i32 %r21, ptr @ii
    br label %L7
L6:  ;
    %r22 = load i32, ptr @i
    %r23 = getelementptr [10000 x i32], ptr @get, i32 0, i32 %r22
    %r24 = load i32, ptr %r23
    %r26 = icmp eq i32 %r24,40
    br i1 %r26, label %L8, label %L9
L7:  ;
    %r226 = load i32, ptr @i
    %r228 = add i32 %r226,1
    store i32 %r228, ptr @i
    br label %L2
L8:  ;
    call void @chapush(i32 40)
    br label %L9
L9:  ;
    %r28 = load i32, ptr @i
    %r29 = getelementptr [10000 x i32], ptr @get, i32 0, i32 %r28
    %r30 = load i32, ptr %r29
    %r32 = icmp eq i32 %r30,94
    br i1 %r32, label %L10, label %L11
L10:  ;
    call void @chapush(i32 94)
    br label %L11
L11:  ;
    %r34 = load i32, ptr @i
    %r35 = getelementptr [10000 x i32], ptr @get, i32 0, i32 %r34
    %r36 = load i32, ptr %r35
    %r38 = icmp eq i32 %r36,41
    br i1 %r38, label %L12, label %L13
L12:  ;
    %r39 = call i32 @chapop()
    store i32 %r39, ptr @c
    br label %L14
L13:  ;
    %r55 = load i32, ptr @i
    %r56 = getelementptr [10000 x i32], ptr @get, i32 0, i32 %r55
    %r57 = load i32, ptr %r56
    %r59 = icmp eq i32 %r57,43
    br i1 %r59, label %L17, label %L18
L14:  ;
    %r40 = load i32, ptr @c
    %r42 = icmp ne i32 %r40,40
    br i1 %r42, label %L15, label %L16
L15:  ;
    %r43 = load i32, ptr @ii
    %r44 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r43
    store i32 32, ptr %r44
    %r48 = add i32 %r43,1
    %r49 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r48
    %r50 = load i32, ptr @c
    store i32 %r50, ptr %r49
    %r53 = add i32 %r43,2
    store i32 %r53, ptr @ii
    %r54 = call i32 @chapop()
    store i32 %r54, ptr @c
    br label %L14
L16:  ;
    br label %L13
L17:  ;
    br label %L19
L18:  ;
    %r94 = load i32, ptr @i
    %r95 = getelementptr [10000 x i32], ptr @get, i32 0, i32 %r94
    %r96 = load i32, ptr %r95
    %r98 = icmp eq i32 %r96,45
    br i1 %r98, label %L30, label %L31
L19:  ;
    %r60 = load i32, ptr @chat
    %r61 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r60
    %r62 = load i32, ptr %r61
    %r64 = icmp eq i32 %r62,43
    br i1 %r64, label %L20, label %L26
L20:  ;
    %r90 = call i32 @find()
    %r92 = icmp eq i32 %r90,0
    br i1 %r92, label %L27, label %L28
L21:  ;
    call void @chapush(i32 43)
    br label %L18
L22:  ;
    %r85 = load i32, ptr @chat
    %r86 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r85
    %r87 = load i32, ptr %r86
    %r89 = icmp eq i32 %r87,94
    br i1 %r89, label %L20, label %L21
L23:  ;
    %r80 = load i32, ptr @chat
    %r81 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r80
    %r82 = load i32, ptr %r81
    %r84 = icmp eq i32 %r82,37
    br i1 %r84, label %L20, label %L22
L24:  ;
    %r75 = load i32, ptr @chat
    %r76 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r75
    %r77 = load i32, ptr %r76
    %r79 = icmp eq i32 %r77,47
    br i1 %r79, label %L20, label %L23
L25:  ;
    %r70 = load i32, ptr @chat
    %r71 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r70
    %r72 = load i32, ptr %r71
    %r74 = icmp eq i32 %r72,42
    br i1 %r74, label %L20, label %L24
L26:  ;
    %r65 = load i32, ptr @chat
    %r66 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r65
    %r67 = load i32, ptr %r66
    %r69 = icmp eq i32 %r67,45
    br i1 %r69, label %L20, label %L25
L27:  ;
    br label %L21
L28:  ;
    br label %L19
L30:  ;
    br label %L32
L31:  ;
    %r133 = load i32, ptr @i
    %r134 = getelementptr [10000 x i32], ptr @get, i32 0, i32 %r133
    %r135 = load i32, ptr %r134
    %r137 = icmp eq i32 %r135,42
    br i1 %r137, label %L43, label %L44
L32:  ;
    %r99 = load i32, ptr @chat
    %r100 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r99
    %r101 = load i32, ptr %r100
    %r103 = icmp eq i32 %r101,43
    br i1 %r103, label %L33, label %L39
L33:  ;
    %r129 = call i32 @find()
    %r131 = icmp eq i32 %r129,0
    br i1 %r131, label %L40, label %L41
L34:  ;
    call void @chapush(i32 45)
    br label %L31
L35:  ;
    %r124 = load i32, ptr @chat
    %r125 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r124
    %r126 = load i32, ptr %r125
    %r128 = icmp eq i32 %r126,94
    br i1 %r128, label %L33, label %L34
L36:  ;
    %r119 = load i32, ptr @chat
    %r120 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r119
    %r121 = load i32, ptr %r120
    %r123 = icmp eq i32 %r121,37
    br i1 %r123, label %L33, label %L35
L37:  ;
    %r114 = load i32, ptr @chat
    %r115 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r114
    %r116 = load i32, ptr %r115
    %r118 = icmp eq i32 %r116,47
    br i1 %r118, label %L33, label %L36
L38:  ;
    %r109 = load i32, ptr @chat
    %r110 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r109
    %r111 = load i32, ptr %r110
    %r113 = icmp eq i32 %r111,42
    br i1 %r113, label %L33, label %L37
L39:  ;
    %r104 = load i32, ptr @chat
    %r105 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r104
    %r106 = load i32, ptr %r105
    %r108 = icmp eq i32 %r106,45
    br i1 %r108, label %L33, label %L38
L40:  ;
    br label %L34
L41:  ;
    br label %L32
L43:  ;
    br label %L45
L44:  ;
    %r162 = load i32, ptr @i
    %r163 = getelementptr [10000 x i32], ptr @get, i32 0, i32 %r162
    %r164 = load i32, ptr %r163
    %r166 = icmp eq i32 %r164,47
    br i1 %r166, label %L54, label %L55
L45:  ;
    %r138 = load i32, ptr @chat
    %r139 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r138
    %r140 = load i32, ptr %r139
    %r142 = icmp eq i32 %r140,42
    br i1 %r142, label %L46, label %L50
L46:  ;
    %r158 = call i32 @find()
    %r160 = icmp eq i32 %r158,0
    br i1 %r160, label %L51, label %L52
L47:  ;
    call void @chapush(i32 42)
    br label %L44
L48:  ;
    %r153 = load i32, ptr @chat
    %r154 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r153
    %r155 = load i32, ptr %r154
    %r157 = icmp eq i32 %r155,94
    br i1 %r157, label %L46, label %L47
L49:  ;
    %r148 = load i32, ptr @chat
    %r149 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r148
    %r150 = load i32, ptr %r149
    %r152 = icmp eq i32 %r150,37
    br i1 %r152, label %L46, label %L48
L50:  ;
    %r143 = load i32, ptr @chat
    %r144 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r143
    %r145 = load i32, ptr %r144
    %r147 = icmp eq i32 %r145,47
    br i1 %r147, label %L46, label %L49
L51:  ;
    br label %L47
L52:  ;
    br label %L45
L54:  ;
    br label %L56
L55:  ;
    %r191 = load i32, ptr @i
    %r192 = getelementptr [10000 x i32], ptr @get, i32 0, i32 %r191
    %r193 = load i32, ptr %r192
    %r195 = icmp eq i32 %r193,37
    br i1 %r195, label %L65, label %L66
L56:  ;
    %r167 = load i32, ptr @chat
    %r168 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r167
    %r169 = load i32, ptr %r168
    %r171 = icmp eq i32 %r169,42
    br i1 %r171, label %L57, label %L61
L57:  ;
    %r187 = call i32 @find()
    %r189 = icmp eq i32 %r187,0
    br i1 %r189, label %L62, label %L63
L58:  ;
    call void @chapush(i32 47)
    br label %L55
L59:  ;
    %r182 = load i32, ptr @chat
    %r183 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r182
    %r184 = load i32, ptr %r183
    %r186 = icmp eq i32 %r184,94
    br i1 %r186, label %L57, label %L58
L60:  ;
    %r177 = load i32, ptr @chat
    %r178 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r177
    %r179 = load i32, ptr %r178
    %r181 = icmp eq i32 %r179,37
    br i1 %r181, label %L57, label %L59
L61:  ;
    %r172 = load i32, ptr @chat
    %r173 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r172
    %r174 = load i32, ptr %r173
    %r176 = icmp eq i32 %r174,47
    br i1 %r176, label %L57, label %L60
L62:  ;
    br label %L58
L63:  ;
    br label %L56
L65:  ;
    br label %L67
L66:  ;
    %r220 = load i32, ptr @ii
    %r221 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r220
    store i32 32, ptr %r221
    %r225 = add i32 %r220,1
    store i32 %r225, ptr @ii
    br label %L7
L67:  ;
    %r196 = load i32, ptr @chat
    %r197 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r196
    %r198 = load i32, ptr %r197
    %r200 = icmp eq i32 %r198,42
    br i1 %r200, label %L68, label %L72
L68:  ;
    %r216 = call i32 @find()
    %r218 = icmp eq i32 %r216,0
    br i1 %r218, label %L73, label %L74
L69:  ;
    call void @chapush(i32 37)
    br label %L66
L70:  ;
    %r211 = load i32, ptr @chat
    %r212 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r211
    %r213 = load i32, ptr %r212
    %r215 = icmp eq i32 %r213,94
    br i1 %r215, label %L68, label %L69
L71:  ;
    %r206 = load i32, ptr @chat
    %r207 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r206
    %r208 = load i32, ptr %r207
    %r210 = icmp eq i32 %r208,37
    br i1 %r210, label %L68, label %L70
L72:  ;
    %r201 = load i32, ptr @chat
    %r202 = getelementptr [10000 x i32], ptr @chas, i32 0, i32 %r201
    %r203 = load i32, ptr %r202
    %r205 = icmp eq i32 %r203,47
    br i1 %r205, label %L68, label %L71
L73:  ;
    br label %L69
L74:  ;
    br label %L67
L76:  ;
    %r229 = load i32, ptr @chat
    %r231 = icmp sgt i32 %r229,0
    br i1 %r231, label %L77, label %L78
L77:  ;
    %r233 = call i32 @chapop()
    %r234 = load i32, ptr @ii
    %r235 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r234
    store i32 32, ptr %r235
    %r239 = add i32 %r234,1
    %r240 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r239
    store i32 %r233, ptr %r240
    %r244 = add i32 %r234,2
    store i32 %r244, ptr @ii
    br label %L76
L78:  ;
    %r245 = load i32, ptr @ii
    %r246 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r245
    store i32 64, ptr %r246
    store i32 1, ptr @i
    br label %L79
L79:  ;
    %r249 = load i32, ptr @i
    %r250 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r249
    %r251 = load i32, ptr %r250
    %r253 = icmp ne i32 %r251,64
    br i1 %r253, label %L80, label %L81
L80:  ;
    %r254 = load i32, ptr @i
    %r255 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r254
    %r256 = load i32, ptr %r255
    %r258 = icmp eq i32 %r256,43
    br i1 %r258, label %L82, label %L89
L81:  ;
    %r376 = getelementptr [10000 x i32], ptr @ints, i32 0, i32 1
    %r377 = load i32, ptr %r376
    call void @putint(i32 %r377)
    ret i32 0
L82:  ;
    %r285 = call i32 @intpop()
    %r287 = call i32 @intpop()
    %r290 = load i32, ptr @i
    %r291 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r290
    %r292 = load i32, ptr %r291
    %r294 = icmp eq i32 %r292,43
    br i1 %r294, label %L90, label %L91
L83:  ;
    %r339 = load i32, ptr @i
    %r340 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r339
    %r341 = load i32, ptr %r340
    %r343 = icmp ne i32 %r341,32
    br i1 %r343, label %L102, label %L103
L84:  ;
    %r372 = load i32, ptr @i
    %r374 = add i32 %r372,1
    store i32 %r374, ptr @i
    br label %L79
L85:  ;
    %r279 = load i32, ptr @i
    %r280 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r279
    %r281 = load i32, ptr %r280
    %r283 = icmp eq i32 %r281,94
    br i1 %r283, label %L82, label %L83
L86:  ;
    %r274 = load i32, ptr @i
    %r275 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r274
    %r276 = load i32, ptr %r275
    %r278 = icmp eq i32 %r276,37
    br i1 %r278, label %L82, label %L85
L87:  ;
    %r269 = load i32, ptr @i
    %r270 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r269
    %r271 = load i32, ptr %r270
    %r273 = icmp eq i32 %r271,47
    br i1 %r273, label %L82, label %L86
L88:  ;
    %r264 = load i32, ptr @i
    %r265 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r264
    %r266 = load i32, ptr %r265
    %r268 = icmp eq i32 %r266,42
    br i1 %r268, label %L82, label %L87
L89:  ;
    %r259 = load i32, ptr @i
    %r260 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r259
    %r261 = load i32, ptr %r260
    %r263 = icmp eq i32 %r261,45
    br i1 %r263, label %L82, label %L88
L90:  ;
    %r297 = add i32 %r285,%r287
    br label %L91
L91:  ;
    %r381 = phi i32 [0,%L82],[%r297,%L90]
    %r298 = load i32, ptr @i
    %r299 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r298
    %r300 = load i32, ptr %r299
    %r302 = icmp eq i32 %r300,45
    br i1 %r302, label %L92, label %L93
L92:  ;
    %r305 = sub i32 %r287,%r285
    br label %L93
L93:  ;
    %r382 = phi i32 [%r381,%L91],[%r305,%L92]
    %r306 = load i32, ptr @i
    %r307 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r306
    %r308 = load i32, ptr %r307
    %r310 = icmp eq i32 %r308,42
    br i1 %r310, label %L94, label %L95
L94:  ;
    %r313 = mul i32 %r285,%r287
    br label %L95
L95:  ;
    %r383 = phi i32 [%r382,%L93],[%r313,%L94]
    %r314 = load i32, ptr @i
    %r315 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r314
    %r316 = load i32, ptr %r315
    %r318 = icmp eq i32 %r316,47
    br i1 %r318, label %L96, label %L97
L96:  ;
    %r321 = sdiv i32 %r287,%r285
    br label %L97
L97:  ;
    %r384 = phi i32 [%r383,%L95],[%r321,%L96]
    %r322 = load i32, ptr @i
    %r323 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r322
    %r324 = load i32, ptr %r323
    %r326 = icmp eq i32 %r324,37
    br i1 %r326, label %L98, label %L99
L98:  ;
    %r329 = srem i32 %r287,%r285
    br label %L99
L99:  ;
    %r385 = phi i32 [%r384,%L97],[%r329,%L98]
    %r330 = load i32, ptr @i
    %r331 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r330
    %r332 = load i32, ptr %r331
    %r334 = icmp eq i32 %r332,94
    br i1 %r334, label %L100, label %L101
L100:  ;
    %r337 = call i32 @power(i32 %r287,i32 %r285)
    br label %L101
L101:  ;
    %r386 = phi i32 [%r385,%L99],[%r337,%L100]
    call void @intpush(i32 %r386)
    br label %L84
L102:  ;
    %r344 = load i32, ptr @i
    %r345 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r344
    %r346 = load i32, ptr %r345
    %r348 = sub i32 %r346,48
    call void @intpush(i32 %r348)
    store i32 1, ptr @ii
    br label %L104
L103:  ;
    br label %L84
L104:  ;
    %r350 = load i32, ptr @i
    %r351 = load i32, ptr @ii
    %r352 = add i32 %r350,%r351
    %r353 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r352
    %r354 = load i32, ptr %r353
    %r356 = icmp ne i32 %r354,32
    br i1 %r356, label %L105, label %L106
L105:  ;
    %r357 = load i32, ptr @i
    %r358 = load i32, ptr @ii
    %r359 = add i32 %r357,%r358
    %r360 = getelementptr [10000 x i32], ptr @get2, i32 0, i32 %r359
    %r361 = load i32, ptr %r360
    %r363 = sub i32 %r361,48
    call void @intadd(i32 %r363)
    %r366 = add i32 %r358,1
    store i32 %r366, ptr @ii
    br label %L104
L106:  ;
    %r367 = load i32, ptr @i
    %r368 = load i32, ptr @ii
    %r369 = add i32 %r367,%r368
    %r371 = sub i32 %r369,1
    store i32 %r371, ptr @i
    br label %L103
}
