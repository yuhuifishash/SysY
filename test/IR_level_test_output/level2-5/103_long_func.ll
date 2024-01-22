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
@SHIFT_TABLE = global [16 x i32] [i32 1,i32 2,i32 4,i32 8,i32 16,i32 32,i32 64,i32 128,i32 256,i32 512,i32 1024,i32 2048,i32 4096,i32 8192,i32 16384,i32 32768]
define i32 @long_func()
{
L0:
    %r3231 = alloca i32
    %r3229 = alloca i32
    %r3227 = alloca i32
    %r3088 = alloca i32
    %r3086 = alloca i32
    %r3084 = alloca i32
    %r3042 = alloca i32
    %r3040 = alloca i32
    %r3038 = alloca i32
    %r2850 = alloca i32
    %r2848 = alloca i32
    %r2846 = alloca i32
    %r2707 = alloca i32
    %r2705 = alloca i32
    %r2703 = alloca i32
    %r2661 = alloca i32
    %r2659 = alloca i32
    %r2657 = alloca i32
    %r2612 = alloca i32
    %r2610 = alloca i32
    %r2608 = alloca i32
    %r2361 = alloca i32
    %r2359 = alloca i32
    %r2357 = alloca i32
    %r2218 = alloca i32
    %r2216 = alloca i32
    %r2214 = alloca i32
    %r2172 = alloca i32
    %r2170 = alloca i32
    %r2168 = alloca i32
    %r1980 = alloca i32
    %r1978 = alloca i32
    %r1976 = alloca i32
    %r1837 = alloca i32
    %r1835 = alloca i32
    %r1833 = alloca i32
    %r1791 = alloca i32
    %r1789 = alloca i32
    %r1787 = alloca i32
    %r1742 = alloca i32
    %r1740 = alloca i32
    %r1738 = alloca i32
    %r1494 = alloca i32
    %r1492 = alloca i32
    %r1490 = alloca i32
    %r1351 = alloca i32
    %r1349 = alloca i32
    %r1347 = alloca i32
    %r1305 = alloca i32
    %r1303 = alloca i32
    %r1301 = alloca i32
    %r1113 = alloca i32
    %r1111 = alloca i32
    %r1109 = alloca i32
    %r970 = alloca i32
    %r968 = alloca i32
    %r966 = alloca i32
    %r924 = alloca i32
    %r922 = alloca i32
    %r920 = alloca i32
    %r875 = alloca i32
    %r873 = alloca i32
    %r871 = alloca i32
    %r633 = alloca i32
    %r631 = alloca i32
    %r629 = alloca i32
    %r490 = alloca i32
    %r488 = alloca i32
    %r486 = alloca i32
    %r444 = alloca i32
    %r442 = alloca i32
    %r440 = alloca i32
    %r252 = alloca i32
    %r250 = alloca i32
    %r248 = alloca i32
    %r109 = alloca i32
    %r107 = alloca i32
    %r105 = alloca i32
    %r63 = alloca i32
    %r61 = alloca i32
    %r59 = alloca i32
    %r14 = alloca i32
    %r12 = alloca i32
    %r10 = alloca i32
    %r8 = alloca i32
    %r6 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    %r7 = add i32 0,0
    store i32 %r7, ptr %r6
    %r9 = add i32 0,0
    store i32 %r9, ptr %r8
    %r11 = add i32 0,2
    store i32 %r11, ptr %r10
    %r13 = add i32 0,0
    store i32 %r13, ptr %r12
    %r15 = add i32 0,1
    store i32 %r15, ptr %r14
    br label %L1
L1:
    %r16 = load i32, ptr %r12
    %r17 = add i32 0,0
    %r18 = icmp sgt i32 %r16,%r17
    br i1 %r18, label %L2, label %L3
L2:
    %r21 = add i32 0,0
    store i32 %r21, ptr %r0
    %r22 = add i32 0,0
    store i32 %r22, ptr %r2
    %r23 = load i32, ptr %r12
    store i32 %r23, ptr %r4
    %r24 = add i32 0,1
    store i32 %r24, ptr %r6
    br label %L4
L3:
    %r868 = load i32, ptr %r14
    store i32 %r868, ptr %r0
    %r869 = load i32, ptr %r0
    call void @putint(i32 %r869)
    %r870 = add i32 0,10
    call void @putch(i32 %r870)
    %r872 = add i32 0,2
    store i32 %r872, ptr %r871
    %r874 = add i32 0,1
    store i32 %r874, ptr %r873
    %r876 = add i32 0,1
    store i32 %r876, ptr %r875
    br label %L193
L4:
    %r25 = load i32, ptr %r2
    %r26 = add i32 0,16
    %r27 = icmp slt i32 %r25,%r26
    br i1 %r27, label %L5, label %L6
L5:
    %r30 = load i32, ptr %r4
    %r31 = add i32 0,2
    %r32 = srem i32 %r30,%r31
    %r33 = icmp ne i32 %r32,0
    br i1 %r33, label %L9, label %L8
L6:
    %r57 = load i32, ptr %r0
    %r58 = icmp ne i32 %r57,0
    br i1 %r58, label %L11, label %L12
L7:
    %r41 = load i32, ptr %r0
    %r42 = add i32 0,1
    %r43 = load i32, ptr %r2
    %r44 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r43
    %r45 = load i32, ptr %r44
    %r46 = mul i32 %r42,%r45
    %r47 = add i32 %r41,%r46
    store i32 %r47, ptr %r0
    br label %L8
L8:
    %r48 = load i32, ptr %r4
    %r49 = add i32 0,2
    %r50 = sdiv i32 %r48,%r49
    store i32 %r50, ptr %r4
    %r51 = load i32, ptr %r6
    %r52 = add i32 0,2
    %r53 = sdiv i32 %r51,%r52
    store i32 %r53, ptr %r6
    %r54 = load i32, ptr %r2
    %r55 = add i32 0,1
    %r56 = add i32 %r54,%r55
    store i32 %r56, ptr %r2
    br label %L4
L9:
    %r34 = load i32, ptr %r6
    %r35 = add i32 0,2
    %r36 = srem i32 %r34,%r35
    %r37 = icmp ne i32 %r36,0
    br i1 %r37, label %L7, label %L8
L11:
    %r60 = load i32, ptr %r14
    store i32 %r60, ptr %r59
    %r62 = load i32, ptr %r10
    store i32 %r62, ptr %r61
    %r64 = add i32 0,0
    store i32 %r64, ptr %r63
    br label %L13
L12:
    %r441 = load i32, ptr %r10
    store i32 %r441, ptr %r440
    %r443 = load i32, ptr %r10
    store i32 %r443, ptr %r442
    %r445 = add i32 0,0
    store i32 %r445, ptr %r444
    br label %L97
L13:
    %r65 = load i32, ptr %r61
    %r66 = icmp ne i32 %r65,0
    br i1 %r66, label %L14, label %L15
L14:
    %r67 = add i32 0,0
    store i32 %r67, ptr %r0
    %r68 = add i32 0,0
    store i32 %r68, ptr %r2
    %r69 = load i32, ptr %r61
    store i32 %r69, ptr %r4
    %r70 = add i32 0,1
    store i32 %r70, ptr %r6
    br label %L16
L15:
    %r438 = load i32, ptr %r63
    store i32 %r438, ptr %r0
    %r439 = load i32, ptr %r0
    store i32 %r439, ptr %r14
    br label %L12
L16:
    %r71 = load i32, ptr %r2
    %r72 = add i32 0,16
    %r73 = icmp slt i32 %r71,%r72
    br i1 %r73, label %L17, label %L18
L17:
    %r76 = load i32, ptr %r4
    %r77 = add i32 0,2
    %r78 = srem i32 %r76,%r77
    %r79 = icmp ne i32 %r78,0
    br i1 %r79, label %L21, label %L20
L18:
    %r103 = load i32, ptr %r0
    %r104 = icmp ne i32 %r103,0
    br i1 %r104, label %L23, label %L24
L19:
    %r87 = load i32, ptr %r0
    %r88 = add i32 0,1
    %r89 = load i32, ptr %r2
    %r90 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r89
    %r91 = load i32, ptr %r90
    %r92 = mul i32 %r88,%r91
    %r93 = add i32 %r87,%r92
    store i32 %r93, ptr %r0
    br label %L20
L20:
    %r94 = load i32, ptr %r4
    %r95 = add i32 0,2
    %r96 = sdiv i32 %r94,%r95
    store i32 %r96, ptr %r4
    %r97 = load i32, ptr %r6
    %r98 = add i32 0,2
    %r99 = sdiv i32 %r97,%r98
    store i32 %r99, ptr %r6
    %r100 = load i32, ptr %r2
    %r101 = add i32 0,1
    %r102 = add i32 %r100,%r101
    store i32 %r102, ptr %r2
    br label %L16
L21:
    %r80 = load i32, ptr %r6
    %r81 = add i32 0,2
    %r82 = srem i32 %r80,%r81
    %r83 = icmp ne i32 %r82,0
    br i1 %r83, label %L19, label %L20
L23:
    %r106 = load i32, ptr %r63
    store i32 %r106, ptr %r105
    %r108 = load i32, ptr %r59
    store i32 %r108, ptr %r107
    %r110 = add i32 0,0
    store i32 %r110, ptr %r109
    br label %L25
L24:
    %r249 = load i32, ptr %r59
    store i32 %r249, ptr %r248
    %r251 = load i32, ptr %r59
    store i32 %r251, ptr %r250
    %r253 = add i32 0,0
    store i32 %r253, ptr %r252
    br label %L55
L25:
    %r111 = load i32, ptr %r107
    %r112 = icmp ne i32 %r111,0
    br i1 %r112, label %L26, label %L27
L26:
    %r113 = add i32 0,0
    store i32 %r113, ptr %r0
    %r114 = add i32 0,0
    store i32 %r114, ptr %r2
    %r115 = load i32, ptr %r105
    store i32 %r115, ptr %r4
    %r116 = load i32, ptr %r107
    store i32 %r116, ptr %r6
    br label %L28
L27:
    %r246 = load i32, ptr %r105
    store i32 %r246, ptr %r0
    %r247 = load i32, ptr %r0
    store i32 %r247, ptr %r63
    br label %L24
L28:
    %r117 = load i32, ptr %r2
    %r118 = add i32 0,16
    %r119 = icmp slt i32 %r117,%r118
    br i1 %r119, label %L29, label %L30
L29:
    %r122 = load i32, ptr %r4
    %r123 = add i32 0,2
    %r124 = srem i32 %r122,%r123
    %r125 = icmp ne i32 %r124,0
    br i1 %r125, label %L31, label %L32
L30:
    %r160 = load i32, ptr %r0
    store i32 %r160, ptr %r109
    %r161 = add i32 0,0
    store i32 %r161, ptr %r0
    %r162 = add i32 0,0
    store i32 %r162, ptr %r2
    %r163 = load i32, ptr %r105
    store i32 %r163, ptr %r4
    %r164 = load i32, ptr %r107
    store i32 %r164, ptr %r6
    br label %L38
L31:
    %r126 = load i32, ptr %r6
    %r127 = add i32 0,2
    %r128 = srem i32 %r126,%r127
    %r129 = add i32 0,0
    %r130 = icmp eq i32 %r128,%r129
    br i1 %r130, label %L34, label %L35
L32:
    %r140 = load i32, ptr %r6
    %r141 = add i32 0,2
    %r142 = srem i32 %r140,%r141
    %r143 = icmp ne i32 %r142,0
    br i1 %r143, label %L36, label %L37
L33:
    %r151 = load i32, ptr %r4
    %r152 = add i32 0,2
    %r153 = sdiv i32 %r151,%r152
    store i32 %r153, ptr %r4
    %r154 = load i32, ptr %r6
    %r155 = add i32 0,2
    %r156 = sdiv i32 %r154,%r155
    store i32 %r156, ptr %r6
    %r157 = load i32, ptr %r2
    %r158 = add i32 0,1
    %r159 = add i32 %r157,%r158
    store i32 %r159, ptr %r2
    br label %L28
L34:
    %r133 = load i32, ptr %r0
    %r134 = add i32 0,1
    %r135 = load i32, ptr %r2
    %r136 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r135
    %r137 = load i32, ptr %r136
    %r138 = mul i32 %r134,%r137
    %r139 = add i32 %r133,%r138
    store i32 %r139, ptr %r0
    br label %L35
L35:
    br label %L33
L36:
    %r144 = load i32, ptr %r0
    %r145 = add i32 0,1
    %r146 = load i32, ptr %r2
    %r147 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r146
    %r148 = load i32, ptr %r147
    %r149 = mul i32 %r145,%r148
    %r150 = add i32 %r144,%r149
    store i32 %r150, ptr %r0
    br label %L37
L37:
    br label %L33
L38:
    %r165 = load i32, ptr %r2
    %r166 = add i32 0,16
    %r167 = icmp slt i32 %r165,%r166
    br i1 %r167, label %L39, label %L40
L39:
    %r170 = load i32, ptr %r4
    %r171 = add i32 0,2
    %r172 = srem i32 %r170,%r171
    %r173 = icmp ne i32 %r172,0
    br i1 %r173, label %L43, label %L42
L40:
    %r197 = load i32, ptr %r0
    store i32 %r197, ptr %r107
    %r198 = add i32 0,1
    %r199 = add i32 0,15
    %r200 = icmp sgt i32 %r198,%r199
    br i1 %r200, label %L45, label %L46
L41:
    %r181 = load i32, ptr %r0
    %r182 = add i32 0,1
    %r183 = load i32, ptr %r2
    %r184 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r183
    %r185 = load i32, ptr %r184
    %r186 = mul i32 %r182,%r185
    %r187 = add i32 %r181,%r186
    store i32 %r187, ptr %r0
    br label %L42
L42:
    %r188 = load i32, ptr %r4
    %r189 = add i32 0,2
    %r190 = sdiv i32 %r188,%r189
    store i32 %r190, ptr %r4
    %r191 = load i32, ptr %r6
    %r192 = add i32 0,2
    %r193 = sdiv i32 %r191,%r192
    store i32 %r193, ptr %r6
    %r194 = load i32, ptr %r2
    %r195 = add i32 0,1
    %r196 = add i32 %r194,%r195
    store i32 %r196, ptr %r2
    br label %L38
L43:
    %r174 = load i32, ptr %r6
    %r175 = add i32 0,2
    %r176 = srem i32 %r174,%r175
    %r177 = icmp ne i32 %r176,0
    br i1 %r177, label %L41, label %L42
L45:
    %r203 = add i32 0,0
    store i32 %r203, ptr %r0
    br label %L47
L46:
    %r204 = add i32 0,0
    store i32 %r204, ptr %r0
    %r205 = add i32 0,0
    store i32 %r205, ptr %r2
    %r206 = load i32, ptr %r107
    %r207 = add i32 0,1
    %r208 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r207
    %r209 = load i32, ptr %r208
    %r210 = mul i32 %r206,%r209
    store i32 %r210, ptr %r4
    %r211 = add i32 0,65535
    store i32 %r211, ptr %r6
    br label %L48
L47:
    %r244 = load i32, ptr %r0
    store i32 %r244, ptr %r107
    %r245 = load i32, ptr %r109
    store i32 %r245, ptr %r105
    br label %L25
L48:
    %r212 = load i32, ptr %r2
    %r213 = add i32 0,16
    %r214 = icmp slt i32 %r212,%r213
    br i1 %r214, label %L49, label %L50
L49:
    %r217 = load i32, ptr %r4
    %r218 = add i32 0,2
    %r219 = srem i32 %r217,%r218
    %r220 = icmp ne i32 %r219,0
    br i1 %r220, label %L53, label %L52
L50:
    br label %L47
L51:
    %r228 = load i32, ptr %r0
    %r229 = add i32 0,1
    %r230 = load i32, ptr %r2
    %r231 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r230
    %r232 = load i32, ptr %r231
    %r233 = mul i32 %r229,%r232
    %r234 = add i32 %r228,%r233
    store i32 %r234, ptr %r0
    br label %L52
L52:
    %r235 = load i32, ptr %r4
    %r236 = add i32 0,2
    %r237 = sdiv i32 %r235,%r236
    store i32 %r237, ptr %r4
    %r238 = load i32, ptr %r6
    %r239 = add i32 0,2
    %r240 = sdiv i32 %r238,%r239
    store i32 %r240, ptr %r6
    %r241 = load i32, ptr %r2
    %r242 = add i32 0,1
    %r243 = add i32 %r241,%r242
    store i32 %r243, ptr %r2
    br label %L48
L53:
    %r221 = load i32, ptr %r6
    %r222 = add i32 0,2
    %r223 = srem i32 %r221,%r222
    %r224 = icmp ne i32 %r223,0
    br i1 %r224, label %L51, label %L52
L55:
    %r254 = load i32, ptr %r250
    %r255 = icmp ne i32 %r254,0
    br i1 %r255, label %L56, label %L57
L56:
    %r256 = add i32 0,0
    store i32 %r256, ptr %r0
    %r257 = add i32 0,0
    store i32 %r257, ptr %r2
    %r258 = load i32, ptr %r248
    store i32 %r258, ptr %r4
    %r259 = load i32, ptr %r250
    store i32 %r259, ptr %r6
    br label %L58
L57:
    %r389 = load i32, ptr %r248
    store i32 %r389, ptr %r0
    %r390 = load i32, ptr %r0
    store i32 %r390, ptr %r59
    %r391 = load i32, ptr %r61
    store i32 %r391, ptr %r4
    %r392 = add i32 0,1
    store i32 %r392, ptr %r6
    %r393 = load i32, ptr %r6
    %r394 = add i32 0,15
    %r395 = icmp sge i32 %r393,%r394
    br i1 %r395, label %L85, label %L86
L58:
    %r260 = load i32, ptr %r2
    %r261 = add i32 0,16
    %r262 = icmp slt i32 %r260,%r261
    br i1 %r262, label %L59, label %L60
L59:
    %r265 = load i32, ptr %r4
    %r266 = add i32 0,2
    %r267 = srem i32 %r265,%r266
    %r268 = icmp ne i32 %r267,0
    br i1 %r268, label %L61, label %L62
L60:
    %r303 = load i32, ptr %r0
    store i32 %r303, ptr %r252
    %r304 = add i32 0,0
    store i32 %r304, ptr %r0
    %r305 = add i32 0,0
    store i32 %r305, ptr %r2
    %r306 = load i32, ptr %r248
    store i32 %r306, ptr %r4
    %r307 = load i32, ptr %r250
    store i32 %r307, ptr %r6
    br label %L68
L61:
    %r269 = load i32, ptr %r6
    %r270 = add i32 0,2
    %r271 = srem i32 %r269,%r270
    %r272 = add i32 0,0
    %r273 = icmp eq i32 %r271,%r272
    br i1 %r273, label %L64, label %L65
L62:
    %r283 = load i32, ptr %r6
    %r284 = add i32 0,2
    %r285 = srem i32 %r283,%r284
    %r286 = icmp ne i32 %r285,0
    br i1 %r286, label %L66, label %L67
L63:
    %r294 = load i32, ptr %r4
    %r295 = add i32 0,2
    %r296 = sdiv i32 %r294,%r295
    store i32 %r296, ptr %r4
    %r297 = load i32, ptr %r6
    %r298 = add i32 0,2
    %r299 = sdiv i32 %r297,%r298
    store i32 %r299, ptr %r6
    %r300 = load i32, ptr %r2
    %r301 = add i32 0,1
    %r302 = add i32 %r300,%r301
    store i32 %r302, ptr %r2
    br label %L58
L64:
    %r276 = load i32, ptr %r0
    %r277 = add i32 0,1
    %r278 = load i32, ptr %r2
    %r279 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r278
    %r280 = load i32, ptr %r279
    %r281 = mul i32 %r277,%r280
    %r282 = add i32 %r276,%r281
    store i32 %r282, ptr %r0
    br label %L65
L65:
    br label %L63
L66:
    %r287 = load i32, ptr %r0
    %r288 = add i32 0,1
    %r289 = load i32, ptr %r2
    %r290 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r289
    %r291 = load i32, ptr %r290
    %r292 = mul i32 %r288,%r291
    %r293 = add i32 %r287,%r292
    store i32 %r293, ptr %r0
    br label %L67
L67:
    br label %L63
L68:
    %r308 = load i32, ptr %r2
    %r309 = add i32 0,16
    %r310 = icmp slt i32 %r308,%r309
    br i1 %r310, label %L69, label %L70
L69:
    %r313 = load i32, ptr %r4
    %r314 = add i32 0,2
    %r315 = srem i32 %r313,%r314
    %r316 = icmp ne i32 %r315,0
    br i1 %r316, label %L73, label %L72
L70:
    %r340 = load i32, ptr %r0
    store i32 %r340, ptr %r250
    %r341 = add i32 0,1
    %r342 = add i32 0,15
    %r343 = icmp sgt i32 %r341,%r342
    br i1 %r343, label %L75, label %L76
L71:
    %r324 = load i32, ptr %r0
    %r325 = add i32 0,1
    %r326 = load i32, ptr %r2
    %r327 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r326
    %r328 = load i32, ptr %r327
    %r329 = mul i32 %r325,%r328
    %r330 = add i32 %r324,%r329
    store i32 %r330, ptr %r0
    br label %L72
L72:
    %r331 = load i32, ptr %r4
    %r332 = add i32 0,2
    %r333 = sdiv i32 %r331,%r332
    store i32 %r333, ptr %r4
    %r334 = load i32, ptr %r6
    %r335 = add i32 0,2
    %r336 = sdiv i32 %r334,%r335
    store i32 %r336, ptr %r6
    %r337 = load i32, ptr %r2
    %r338 = add i32 0,1
    %r339 = add i32 %r337,%r338
    store i32 %r339, ptr %r2
    br label %L68
L73:
    %r317 = load i32, ptr %r6
    %r318 = add i32 0,2
    %r319 = srem i32 %r317,%r318
    %r320 = icmp ne i32 %r319,0
    br i1 %r320, label %L71, label %L72
L75:
    %r346 = add i32 0,0
    store i32 %r346, ptr %r0
    br label %L77
L76:
    %r347 = add i32 0,0
    store i32 %r347, ptr %r0
    %r348 = add i32 0,0
    store i32 %r348, ptr %r2
    %r349 = load i32, ptr %r250
    %r350 = add i32 0,1
    %r351 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r350
    %r352 = load i32, ptr %r351
    %r353 = mul i32 %r349,%r352
    store i32 %r353, ptr %r4
    %r354 = add i32 0,65535
    store i32 %r354, ptr %r6
    br label %L78
L77:
    %r387 = load i32, ptr %r0
    store i32 %r387, ptr %r250
    %r388 = load i32, ptr %r252
    store i32 %r388, ptr %r248
    br label %L55
L78:
    %r355 = load i32, ptr %r2
    %r356 = add i32 0,16
    %r357 = icmp slt i32 %r355,%r356
    br i1 %r357, label %L79, label %L80
L79:
    %r360 = load i32, ptr %r4
    %r361 = add i32 0,2
    %r362 = srem i32 %r360,%r361
    %r363 = icmp ne i32 %r362,0
    br i1 %r363, label %L83, label %L82
L80:
    br label %L77
L81:
    %r371 = load i32, ptr %r0
    %r372 = add i32 0,1
    %r373 = load i32, ptr %r2
    %r374 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r373
    %r375 = load i32, ptr %r374
    %r376 = mul i32 %r372,%r375
    %r377 = add i32 %r371,%r376
    store i32 %r377, ptr %r0
    br label %L82
L82:
    %r378 = load i32, ptr %r4
    %r379 = add i32 0,2
    %r380 = sdiv i32 %r378,%r379
    store i32 %r380, ptr %r4
    %r381 = load i32, ptr %r6
    %r382 = add i32 0,2
    %r383 = sdiv i32 %r381,%r382
    store i32 %r383, ptr %r6
    %r384 = load i32, ptr %r2
    %r385 = add i32 0,1
    %r386 = add i32 %r384,%r385
    store i32 %r386, ptr %r2
    br label %L78
L83:
    %r364 = load i32, ptr %r6
    %r365 = add i32 0,2
    %r366 = srem i32 %r364,%r365
    %r367 = icmp ne i32 %r366,0
    br i1 %r367, label %L81, label %L82
L85:
    %r398 = load i32, ptr %r4
    %r399 = add i32 0,0
    %r400 = icmp slt i32 %r398,%r399
    br i1 %r400, label %L88, label %L89
L86:
    %r405 = load i32, ptr %r6
    %r406 = add i32 0,0
    %r407 = icmp sgt i32 %r405,%r406
    br i1 %r407, label %L91, label %L92
L87:
    %r437 = load i32, ptr %r0
    store i32 %r437, ptr %r61
    br label %L13
L88:
    %r403 = add i32 0,65535
    store i32 %r403, ptr %r0
    br label %L90
L89:
    %r404 = add i32 0,0
    store i32 %r404, ptr %r0
    br label %L90
L90:
    br label %L87
L91:
    %r410 = load i32, ptr %r4
    %r411 = add i32 0,32767
    %r412 = icmp sgt i32 %r410,%r411
    br i1 %r412, label %L94, label %L95
L92:
    %r436 = load i32, ptr %r4
    store i32 %r436, ptr %r0
    br label %L93
L93:
    br label %L87
L94:
    %r415 = load i32, ptr %r4
    %r416 = load i32, ptr %r6
    %r417 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r416
    %r418 = load i32, ptr %r417
    %r419 = sdiv i32 %r415,%r418
    store i32 %r419, ptr %r4
    %r420 = load i32, ptr %r4
    %r421 = add i32 0,65536
    %r422 = add i32 %r420,%r421
    %r423 = add i32 0,15
    %r424 = load i32, ptr %r6
    %r425 = sub i32 %r423,%r424
    %r426 = add i32 0,1
    %r427 = add i32 %r425,%r426
    %r428 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r427
    %r429 = load i32, ptr %r428
    %r430 = sub i32 %r422,%r429
    store i32 %r430, ptr %r0
    br label %L96
L95:
    %r431 = load i32, ptr %r4
    %r432 = load i32, ptr %r6
    %r433 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r432
    %r434 = load i32, ptr %r433
    %r435 = sdiv i32 %r431,%r434
    store i32 %r435, ptr %r0
    br label %L96
L96:
    br label %L93
L97:
    %r446 = load i32, ptr %r442
    %r447 = icmp ne i32 %r446,0
    br i1 %r447, label %L98, label %L99
L98:
    %r448 = add i32 0,0
    store i32 %r448, ptr %r0
    %r449 = add i32 0,0
    store i32 %r449, ptr %r2
    %r450 = load i32, ptr %r442
    store i32 %r450, ptr %r4
    %r451 = add i32 0,1
    store i32 %r451, ptr %r6
    br label %L100
L99:
    %r819 = load i32, ptr %r444
    store i32 %r819, ptr %r0
    %r820 = load i32, ptr %r0
    store i32 %r820, ptr %r10
    %r821 = load i32, ptr %r12
    store i32 %r821, ptr %r4
    %r822 = add i32 0,1
    store i32 %r822, ptr %r6
    %r823 = load i32, ptr %r6
    %r824 = add i32 0,15
    %r825 = icmp sge i32 %r823,%r824
    br i1 %r825, label %L181, label %L182
L100:
    %r452 = load i32, ptr %r2
    %r453 = add i32 0,16
    %r454 = icmp slt i32 %r452,%r453
    br i1 %r454, label %L101, label %L102
L101:
    %r457 = load i32, ptr %r4
    %r458 = add i32 0,2
    %r459 = srem i32 %r457,%r458
    %r460 = icmp ne i32 %r459,0
    br i1 %r460, label %L105, label %L104
L102:
    %r484 = load i32, ptr %r0
    %r485 = icmp ne i32 %r484,0
    br i1 %r485, label %L107, label %L108
L103:
    %r468 = load i32, ptr %r0
    %r469 = add i32 0,1
    %r470 = load i32, ptr %r2
    %r471 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r470
    %r472 = load i32, ptr %r471
    %r473 = mul i32 %r469,%r472
    %r474 = add i32 %r468,%r473
    store i32 %r474, ptr %r0
    br label %L104
L104:
    %r475 = load i32, ptr %r4
    %r476 = add i32 0,2
    %r477 = sdiv i32 %r475,%r476
    store i32 %r477, ptr %r4
    %r478 = load i32, ptr %r6
    %r479 = add i32 0,2
    %r480 = sdiv i32 %r478,%r479
    store i32 %r480, ptr %r6
    %r481 = load i32, ptr %r2
    %r482 = add i32 0,1
    %r483 = add i32 %r481,%r482
    store i32 %r483, ptr %r2
    br label %L100
L105:
    %r461 = load i32, ptr %r6
    %r462 = add i32 0,2
    %r463 = srem i32 %r461,%r462
    %r464 = icmp ne i32 %r463,0
    br i1 %r464, label %L103, label %L104
L107:
    %r487 = load i32, ptr %r444
    store i32 %r487, ptr %r486
    %r489 = load i32, ptr %r440
    store i32 %r489, ptr %r488
    %r491 = add i32 0,0
    store i32 %r491, ptr %r490
    br label %L109
L108:
    %r630 = load i32, ptr %r440
    store i32 %r630, ptr %r629
    %r632 = load i32, ptr %r440
    store i32 %r632, ptr %r631
    %r634 = add i32 0,0
    store i32 %r634, ptr %r633
    br label %L139
L109:
    %r492 = load i32, ptr %r488
    %r493 = icmp ne i32 %r492,0
    br i1 %r493, label %L110, label %L111
L110:
    %r494 = add i32 0,0
    store i32 %r494, ptr %r0
    %r495 = add i32 0,0
    store i32 %r495, ptr %r2
    %r496 = load i32, ptr %r486
    store i32 %r496, ptr %r4
    %r497 = load i32, ptr %r488
    store i32 %r497, ptr %r6
    br label %L112
L111:
    %r627 = load i32, ptr %r486
    store i32 %r627, ptr %r0
    %r628 = load i32, ptr %r0
    store i32 %r628, ptr %r444
    br label %L108
L112:
    %r498 = load i32, ptr %r2
    %r499 = add i32 0,16
    %r500 = icmp slt i32 %r498,%r499
    br i1 %r500, label %L113, label %L114
L113:
    %r503 = load i32, ptr %r4
    %r504 = add i32 0,2
    %r505 = srem i32 %r503,%r504
    %r506 = icmp ne i32 %r505,0
    br i1 %r506, label %L115, label %L116
L114:
    %r541 = load i32, ptr %r0
    store i32 %r541, ptr %r490
    %r542 = add i32 0,0
    store i32 %r542, ptr %r0
    %r543 = add i32 0,0
    store i32 %r543, ptr %r2
    %r544 = load i32, ptr %r486
    store i32 %r544, ptr %r4
    %r545 = load i32, ptr %r488
    store i32 %r545, ptr %r6
    br label %L122
L115:
    %r507 = load i32, ptr %r6
    %r508 = add i32 0,2
    %r509 = srem i32 %r507,%r508
    %r510 = add i32 0,0
    %r511 = icmp eq i32 %r509,%r510
    br i1 %r511, label %L118, label %L119
L116:
    %r521 = load i32, ptr %r6
    %r522 = add i32 0,2
    %r523 = srem i32 %r521,%r522
    %r524 = icmp ne i32 %r523,0
    br i1 %r524, label %L120, label %L121
L117:
    %r532 = load i32, ptr %r4
    %r533 = add i32 0,2
    %r534 = sdiv i32 %r532,%r533
    store i32 %r534, ptr %r4
    %r535 = load i32, ptr %r6
    %r536 = add i32 0,2
    %r537 = sdiv i32 %r535,%r536
    store i32 %r537, ptr %r6
    %r538 = load i32, ptr %r2
    %r539 = add i32 0,1
    %r540 = add i32 %r538,%r539
    store i32 %r540, ptr %r2
    br label %L112
L118:
    %r514 = load i32, ptr %r0
    %r515 = add i32 0,1
    %r516 = load i32, ptr %r2
    %r517 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r516
    %r518 = load i32, ptr %r517
    %r519 = mul i32 %r515,%r518
    %r520 = add i32 %r514,%r519
    store i32 %r520, ptr %r0
    br label %L119
L119:
    br label %L117
L120:
    %r525 = load i32, ptr %r0
    %r526 = add i32 0,1
    %r527 = load i32, ptr %r2
    %r528 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r527
    %r529 = load i32, ptr %r528
    %r530 = mul i32 %r526,%r529
    %r531 = add i32 %r525,%r530
    store i32 %r531, ptr %r0
    br label %L121
L121:
    br label %L117
L122:
    %r546 = load i32, ptr %r2
    %r547 = add i32 0,16
    %r548 = icmp slt i32 %r546,%r547
    br i1 %r548, label %L123, label %L124
L123:
    %r551 = load i32, ptr %r4
    %r552 = add i32 0,2
    %r553 = srem i32 %r551,%r552
    %r554 = icmp ne i32 %r553,0
    br i1 %r554, label %L127, label %L126
L124:
    %r578 = load i32, ptr %r0
    store i32 %r578, ptr %r488
    %r579 = add i32 0,1
    %r580 = add i32 0,15
    %r581 = icmp sgt i32 %r579,%r580
    br i1 %r581, label %L129, label %L130
L125:
    %r562 = load i32, ptr %r0
    %r563 = add i32 0,1
    %r564 = load i32, ptr %r2
    %r565 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r564
    %r566 = load i32, ptr %r565
    %r567 = mul i32 %r563,%r566
    %r568 = add i32 %r562,%r567
    store i32 %r568, ptr %r0
    br label %L126
L126:
    %r569 = load i32, ptr %r4
    %r570 = add i32 0,2
    %r571 = sdiv i32 %r569,%r570
    store i32 %r571, ptr %r4
    %r572 = load i32, ptr %r6
    %r573 = add i32 0,2
    %r574 = sdiv i32 %r572,%r573
    store i32 %r574, ptr %r6
    %r575 = load i32, ptr %r2
    %r576 = add i32 0,1
    %r577 = add i32 %r575,%r576
    store i32 %r577, ptr %r2
    br label %L122
L127:
    %r555 = load i32, ptr %r6
    %r556 = add i32 0,2
    %r557 = srem i32 %r555,%r556
    %r558 = icmp ne i32 %r557,0
    br i1 %r558, label %L125, label %L126
L129:
    %r584 = add i32 0,0
    store i32 %r584, ptr %r0
    br label %L131
L130:
    %r585 = add i32 0,0
    store i32 %r585, ptr %r0
    %r586 = add i32 0,0
    store i32 %r586, ptr %r2
    %r587 = load i32, ptr %r488
    %r588 = add i32 0,1
    %r589 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r588
    %r590 = load i32, ptr %r589
    %r591 = mul i32 %r587,%r590
    store i32 %r591, ptr %r4
    %r592 = add i32 0,65535
    store i32 %r592, ptr %r6
    br label %L132
L131:
    %r625 = load i32, ptr %r0
    store i32 %r625, ptr %r488
    %r626 = load i32, ptr %r490
    store i32 %r626, ptr %r486
    br label %L109
L132:
    %r593 = load i32, ptr %r2
    %r594 = add i32 0,16
    %r595 = icmp slt i32 %r593,%r594
    br i1 %r595, label %L133, label %L134
L133:
    %r598 = load i32, ptr %r4
    %r599 = add i32 0,2
    %r600 = srem i32 %r598,%r599
    %r601 = icmp ne i32 %r600,0
    br i1 %r601, label %L137, label %L136
L134:
    br label %L131
L135:
    %r609 = load i32, ptr %r0
    %r610 = add i32 0,1
    %r611 = load i32, ptr %r2
    %r612 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r611
    %r613 = load i32, ptr %r612
    %r614 = mul i32 %r610,%r613
    %r615 = add i32 %r609,%r614
    store i32 %r615, ptr %r0
    br label %L136
L136:
    %r616 = load i32, ptr %r4
    %r617 = add i32 0,2
    %r618 = sdiv i32 %r616,%r617
    store i32 %r618, ptr %r4
    %r619 = load i32, ptr %r6
    %r620 = add i32 0,2
    %r621 = sdiv i32 %r619,%r620
    store i32 %r621, ptr %r6
    %r622 = load i32, ptr %r2
    %r623 = add i32 0,1
    %r624 = add i32 %r622,%r623
    store i32 %r624, ptr %r2
    br label %L132
L137:
    %r602 = load i32, ptr %r6
    %r603 = add i32 0,2
    %r604 = srem i32 %r602,%r603
    %r605 = icmp ne i32 %r604,0
    br i1 %r605, label %L135, label %L136
L139:
    %r635 = load i32, ptr %r631
    %r636 = icmp ne i32 %r635,0
    br i1 %r636, label %L140, label %L141
L140:
    %r637 = add i32 0,0
    store i32 %r637, ptr %r0
    %r638 = add i32 0,0
    store i32 %r638, ptr %r2
    %r639 = load i32, ptr %r629
    store i32 %r639, ptr %r4
    %r640 = load i32, ptr %r631
    store i32 %r640, ptr %r6
    br label %L142
L141:
    %r770 = load i32, ptr %r629
    store i32 %r770, ptr %r0
    %r771 = load i32, ptr %r0
    store i32 %r771, ptr %r440
    %r772 = load i32, ptr %r442
    store i32 %r772, ptr %r4
    %r773 = add i32 0,1
    store i32 %r773, ptr %r6
    %r774 = load i32, ptr %r6
    %r775 = add i32 0,15
    %r776 = icmp sge i32 %r774,%r775
    br i1 %r776, label %L169, label %L170
L142:
    %r641 = load i32, ptr %r2
    %r642 = add i32 0,16
    %r643 = icmp slt i32 %r641,%r642
    br i1 %r643, label %L143, label %L144
L143:
    %r646 = load i32, ptr %r4
    %r647 = add i32 0,2
    %r648 = srem i32 %r646,%r647
    %r649 = icmp ne i32 %r648,0
    br i1 %r649, label %L145, label %L146
L144:
    %r684 = load i32, ptr %r0
    store i32 %r684, ptr %r633
    %r685 = add i32 0,0
    store i32 %r685, ptr %r0
    %r686 = add i32 0,0
    store i32 %r686, ptr %r2
    %r687 = load i32, ptr %r629
    store i32 %r687, ptr %r4
    %r688 = load i32, ptr %r631
    store i32 %r688, ptr %r6
    br label %L152
L145:
    %r650 = load i32, ptr %r6
    %r651 = add i32 0,2
    %r652 = srem i32 %r650,%r651
    %r653 = add i32 0,0
    %r654 = icmp eq i32 %r652,%r653
    br i1 %r654, label %L148, label %L149
L146:
    %r664 = load i32, ptr %r6
    %r665 = add i32 0,2
    %r666 = srem i32 %r664,%r665
    %r667 = icmp ne i32 %r666,0
    br i1 %r667, label %L150, label %L151
L147:
    %r675 = load i32, ptr %r4
    %r676 = add i32 0,2
    %r677 = sdiv i32 %r675,%r676
    store i32 %r677, ptr %r4
    %r678 = load i32, ptr %r6
    %r679 = add i32 0,2
    %r680 = sdiv i32 %r678,%r679
    store i32 %r680, ptr %r6
    %r681 = load i32, ptr %r2
    %r682 = add i32 0,1
    %r683 = add i32 %r681,%r682
    store i32 %r683, ptr %r2
    br label %L142
L148:
    %r657 = load i32, ptr %r0
    %r658 = add i32 0,1
    %r659 = load i32, ptr %r2
    %r660 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r659
    %r661 = load i32, ptr %r660
    %r662 = mul i32 %r658,%r661
    %r663 = add i32 %r657,%r662
    store i32 %r663, ptr %r0
    br label %L149
L149:
    br label %L147
L150:
    %r668 = load i32, ptr %r0
    %r669 = add i32 0,1
    %r670 = load i32, ptr %r2
    %r671 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r670
    %r672 = load i32, ptr %r671
    %r673 = mul i32 %r669,%r672
    %r674 = add i32 %r668,%r673
    store i32 %r674, ptr %r0
    br label %L151
L151:
    br label %L147
L152:
    %r689 = load i32, ptr %r2
    %r690 = add i32 0,16
    %r691 = icmp slt i32 %r689,%r690
    br i1 %r691, label %L153, label %L154
L153:
    %r694 = load i32, ptr %r4
    %r695 = add i32 0,2
    %r696 = srem i32 %r694,%r695
    %r697 = icmp ne i32 %r696,0
    br i1 %r697, label %L157, label %L156
L154:
    %r721 = load i32, ptr %r0
    store i32 %r721, ptr %r631
    %r722 = add i32 0,1
    %r723 = add i32 0,15
    %r724 = icmp sgt i32 %r722,%r723
    br i1 %r724, label %L159, label %L160
L155:
    %r705 = load i32, ptr %r0
    %r706 = add i32 0,1
    %r707 = load i32, ptr %r2
    %r708 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r707
    %r709 = load i32, ptr %r708
    %r710 = mul i32 %r706,%r709
    %r711 = add i32 %r705,%r710
    store i32 %r711, ptr %r0
    br label %L156
L156:
    %r712 = load i32, ptr %r4
    %r713 = add i32 0,2
    %r714 = sdiv i32 %r712,%r713
    store i32 %r714, ptr %r4
    %r715 = load i32, ptr %r6
    %r716 = add i32 0,2
    %r717 = sdiv i32 %r715,%r716
    store i32 %r717, ptr %r6
    %r718 = load i32, ptr %r2
    %r719 = add i32 0,1
    %r720 = add i32 %r718,%r719
    store i32 %r720, ptr %r2
    br label %L152
L157:
    %r698 = load i32, ptr %r6
    %r699 = add i32 0,2
    %r700 = srem i32 %r698,%r699
    %r701 = icmp ne i32 %r700,0
    br i1 %r701, label %L155, label %L156
L159:
    %r727 = add i32 0,0
    store i32 %r727, ptr %r0
    br label %L161
L160:
    %r728 = add i32 0,0
    store i32 %r728, ptr %r0
    %r729 = add i32 0,0
    store i32 %r729, ptr %r2
    %r730 = load i32, ptr %r631
    %r731 = add i32 0,1
    %r732 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r731
    %r733 = load i32, ptr %r732
    %r734 = mul i32 %r730,%r733
    store i32 %r734, ptr %r4
    %r735 = add i32 0,65535
    store i32 %r735, ptr %r6
    br label %L162
L161:
    %r768 = load i32, ptr %r0
    store i32 %r768, ptr %r631
    %r769 = load i32, ptr %r633
    store i32 %r769, ptr %r629
    br label %L139
L162:
    %r736 = load i32, ptr %r2
    %r737 = add i32 0,16
    %r738 = icmp slt i32 %r736,%r737
    br i1 %r738, label %L163, label %L164
L163:
    %r741 = load i32, ptr %r4
    %r742 = add i32 0,2
    %r743 = srem i32 %r741,%r742
    %r744 = icmp ne i32 %r743,0
    br i1 %r744, label %L167, label %L166
L164:
    br label %L161
L165:
    %r752 = load i32, ptr %r0
    %r753 = add i32 0,1
    %r754 = load i32, ptr %r2
    %r755 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r754
    %r756 = load i32, ptr %r755
    %r757 = mul i32 %r753,%r756
    %r758 = add i32 %r752,%r757
    store i32 %r758, ptr %r0
    br label %L166
L166:
    %r759 = load i32, ptr %r4
    %r760 = add i32 0,2
    %r761 = sdiv i32 %r759,%r760
    store i32 %r761, ptr %r4
    %r762 = load i32, ptr %r6
    %r763 = add i32 0,2
    %r764 = sdiv i32 %r762,%r763
    store i32 %r764, ptr %r6
    %r765 = load i32, ptr %r2
    %r766 = add i32 0,1
    %r767 = add i32 %r765,%r766
    store i32 %r767, ptr %r2
    br label %L162
L167:
    %r745 = load i32, ptr %r6
    %r746 = add i32 0,2
    %r747 = srem i32 %r745,%r746
    %r748 = icmp ne i32 %r747,0
    br i1 %r748, label %L165, label %L166
L169:
    %r779 = load i32, ptr %r4
    %r780 = add i32 0,0
    %r781 = icmp slt i32 %r779,%r780
    br i1 %r781, label %L172, label %L173
L170:
    %r786 = load i32, ptr %r6
    %r787 = add i32 0,0
    %r788 = icmp sgt i32 %r786,%r787
    br i1 %r788, label %L175, label %L176
L171:
    %r818 = load i32, ptr %r0
    store i32 %r818, ptr %r442
    br label %L97
L172:
    %r784 = add i32 0,65535
    store i32 %r784, ptr %r0
    br label %L174
L173:
    %r785 = add i32 0,0
    store i32 %r785, ptr %r0
    br label %L174
L174:
    br label %L171
L175:
    %r791 = load i32, ptr %r4
    %r792 = add i32 0,32767
    %r793 = icmp sgt i32 %r791,%r792
    br i1 %r793, label %L178, label %L179
L176:
    %r817 = load i32, ptr %r4
    store i32 %r817, ptr %r0
    br label %L177
L177:
    br label %L171
L178:
    %r796 = load i32, ptr %r4
    %r797 = load i32, ptr %r6
    %r798 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r797
    %r799 = load i32, ptr %r798
    %r800 = sdiv i32 %r796,%r799
    store i32 %r800, ptr %r4
    %r801 = load i32, ptr %r4
    %r802 = add i32 0,65536
    %r803 = add i32 %r801,%r802
    %r804 = add i32 0,15
    %r805 = load i32, ptr %r6
    %r806 = sub i32 %r804,%r805
    %r807 = add i32 0,1
    %r808 = add i32 %r806,%r807
    %r809 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r808
    %r810 = load i32, ptr %r809
    %r811 = sub i32 %r803,%r810
    store i32 %r811, ptr %r0
    br label %L180
L179:
    %r812 = load i32, ptr %r4
    %r813 = load i32, ptr %r6
    %r814 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r813
    %r815 = load i32, ptr %r814
    %r816 = sdiv i32 %r812,%r815
    store i32 %r816, ptr %r0
    br label %L180
L180:
    br label %L177
L181:
    %r828 = load i32, ptr %r4
    %r829 = add i32 0,0
    %r830 = icmp slt i32 %r828,%r829
    br i1 %r830, label %L184, label %L185
L182:
    %r835 = load i32, ptr %r6
    %r836 = add i32 0,0
    %r837 = icmp sgt i32 %r835,%r836
    br i1 %r837, label %L187, label %L188
L183:
    %r867 = load i32, ptr %r0
    store i32 %r867, ptr %r12
    br label %L1
L184:
    %r833 = add i32 0,65535
    store i32 %r833, ptr %r0
    br label %L186
L185:
    %r834 = add i32 0,0
    store i32 %r834, ptr %r0
    br label %L186
L186:
    br label %L183
L187:
    %r840 = load i32, ptr %r4
    %r841 = add i32 0,32767
    %r842 = icmp sgt i32 %r840,%r841
    br i1 %r842, label %L190, label %L191
L188:
    %r866 = load i32, ptr %r4
    store i32 %r866, ptr %r0
    br label %L189
L189:
    br label %L183
L190:
    %r845 = load i32, ptr %r4
    %r846 = load i32, ptr %r6
    %r847 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r846
    %r848 = load i32, ptr %r847
    %r849 = sdiv i32 %r845,%r848
    store i32 %r849, ptr %r4
    %r850 = load i32, ptr %r4
    %r851 = add i32 0,65536
    %r852 = add i32 %r850,%r851
    %r853 = add i32 0,15
    %r854 = load i32, ptr %r6
    %r855 = sub i32 %r853,%r854
    %r856 = add i32 0,1
    %r857 = add i32 %r855,%r856
    %r858 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r857
    %r859 = load i32, ptr %r858
    %r860 = sub i32 %r852,%r859
    store i32 %r860, ptr %r0
    br label %L192
L191:
    %r861 = load i32, ptr %r4
    %r862 = load i32, ptr %r6
    %r863 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r862
    %r864 = load i32, ptr %r863
    %r865 = sdiv i32 %r861,%r864
    store i32 %r865, ptr %r0
    br label %L192
L192:
    br label %L189
L193:
    %r877 = load i32, ptr %r873
    %r878 = add i32 0,0
    %r879 = icmp sgt i32 %r877,%r878
    br i1 %r879, label %L194, label %L195
L194:
    %r882 = add i32 0,0
    store i32 %r882, ptr %r0
    %r883 = add i32 0,0
    store i32 %r883, ptr %r2
    %r884 = load i32, ptr %r873
    store i32 %r884, ptr %r4
    %r885 = add i32 0,1
    store i32 %r885, ptr %r6
    br label %L196
L195:
    %r1729 = load i32, ptr %r875
    store i32 %r1729, ptr %r0
    %r1730 = load i32, ptr %r0
    call void @putint(i32 %r1730)
    %r1731 = add i32 0,10
    call void @putch(i32 %r1731)
    %r1732 = add i32 0,2
    store i32 %r1732, ptr %r8
    br label %L385
L196:
    %r886 = load i32, ptr %r2
    %r887 = add i32 0,16
    %r888 = icmp slt i32 %r886,%r887
    br i1 %r888, label %L197, label %L198
L197:
    %r891 = load i32, ptr %r4
    %r892 = add i32 0,2
    %r893 = srem i32 %r891,%r892
    %r894 = icmp ne i32 %r893,0
    br i1 %r894, label %L201, label %L200
L198:
    %r918 = load i32, ptr %r0
    %r919 = icmp ne i32 %r918,0
    br i1 %r919, label %L203, label %L204
L199:
    %r902 = load i32, ptr %r0
    %r903 = add i32 0,1
    %r904 = load i32, ptr %r2
    %r905 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r904
    %r906 = load i32, ptr %r905
    %r907 = mul i32 %r903,%r906
    %r908 = add i32 %r902,%r907
    store i32 %r908, ptr %r0
    br label %L200
L200:
    %r909 = load i32, ptr %r4
    %r910 = add i32 0,2
    %r911 = sdiv i32 %r909,%r910
    store i32 %r911, ptr %r4
    %r912 = load i32, ptr %r6
    %r913 = add i32 0,2
    %r914 = sdiv i32 %r912,%r913
    store i32 %r914, ptr %r6
    %r915 = load i32, ptr %r2
    %r916 = add i32 0,1
    %r917 = add i32 %r915,%r916
    store i32 %r917, ptr %r2
    br label %L196
L201:
    %r895 = load i32, ptr %r6
    %r896 = add i32 0,2
    %r897 = srem i32 %r895,%r896
    %r898 = icmp ne i32 %r897,0
    br i1 %r898, label %L199, label %L200
L203:
    %r921 = load i32, ptr %r875
    store i32 %r921, ptr %r920
    %r923 = load i32, ptr %r871
    store i32 %r923, ptr %r922
    %r925 = add i32 0,0
    store i32 %r925, ptr %r924
    br label %L205
L204:
    %r1302 = load i32, ptr %r871
    store i32 %r1302, ptr %r1301
    %r1304 = load i32, ptr %r871
    store i32 %r1304, ptr %r1303
    %r1306 = add i32 0,0
    store i32 %r1306, ptr %r1305
    br label %L289
L205:
    %r926 = load i32, ptr %r922
    %r927 = icmp ne i32 %r926,0
    br i1 %r927, label %L206, label %L207
L206:
    %r928 = add i32 0,0
    store i32 %r928, ptr %r0
    %r929 = add i32 0,0
    store i32 %r929, ptr %r2
    %r930 = load i32, ptr %r922
    store i32 %r930, ptr %r4
    %r931 = add i32 0,1
    store i32 %r931, ptr %r6
    br label %L208
L207:
    %r1299 = load i32, ptr %r924
    store i32 %r1299, ptr %r0
    %r1300 = load i32, ptr %r0
    store i32 %r1300, ptr %r875
    br label %L204
L208:
    %r932 = load i32, ptr %r2
    %r933 = add i32 0,16
    %r934 = icmp slt i32 %r932,%r933
    br i1 %r934, label %L209, label %L210
L209:
    %r937 = load i32, ptr %r4
    %r938 = add i32 0,2
    %r939 = srem i32 %r937,%r938
    %r940 = icmp ne i32 %r939,0
    br i1 %r940, label %L213, label %L212
L210:
    %r964 = load i32, ptr %r0
    %r965 = icmp ne i32 %r964,0
    br i1 %r965, label %L215, label %L216
L211:
    %r948 = load i32, ptr %r0
    %r949 = add i32 0,1
    %r950 = load i32, ptr %r2
    %r951 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r950
    %r952 = load i32, ptr %r951
    %r953 = mul i32 %r949,%r952
    %r954 = add i32 %r948,%r953
    store i32 %r954, ptr %r0
    br label %L212
L212:
    %r955 = load i32, ptr %r4
    %r956 = add i32 0,2
    %r957 = sdiv i32 %r955,%r956
    store i32 %r957, ptr %r4
    %r958 = load i32, ptr %r6
    %r959 = add i32 0,2
    %r960 = sdiv i32 %r958,%r959
    store i32 %r960, ptr %r6
    %r961 = load i32, ptr %r2
    %r962 = add i32 0,1
    %r963 = add i32 %r961,%r962
    store i32 %r963, ptr %r2
    br label %L208
L213:
    %r941 = load i32, ptr %r6
    %r942 = add i32 0,2
    %r943 = srem i32 %r941,%r942
    %r944 = icmp ne i32 %r943,0
    br i1 %r944, label %L211, label %L212
L215:
    %r967 = load i32, ptr %r924
    store i32 %r967, ptr %r966
    %r969 = load i32, ptr %r920
    store i32 %r969, ptr %r968
    %r971 = add i32 0,0
    store i32 %r971, ptr %r970
    br label %L217
L216:
    %r1110 = load i32, ptr %r920
    store i32 %r1110, ptr %r1109
    %r1112 = load i32, ptr %r920
    store i32 %r1112, ptr %r1111
    %r1114 = add i32 0,0
    store i32 %r1114, ptr %r1113
    br label %L247
L217:
    %r972 = load i32, ptr %r968
    %r973 = icmp ne i32 %r972,0
    br i1 %r973, label %L218, label %L219
L218:
    %r974 = add i32 0,0
    store i32 %r974, ptr %r0
    %r975 = add i32 0,0
    store i32 %r975, ptr %r2
    %r976 = load i32, ptr %r966
    store i32 %r976, ptr %r4
    %r977 = load i32, ptr %r968
    store i32 %r977, ptr %r6
    br label %L220
L219:
    %r1107 = load i32, ptr %r966
    store i32 %r1107, ptr %r0
    %r1108 = load i32, ptr %r0
    store i32 %r1108, ptr %r924
    br label %L216
L220:
    %r978 = load i32, ptr %r2
    %r979 = add i32 0,16
    %r980 = icmp slt i32 %r978,%r979
    br i1 %r980, label %L221, label %L222
L221:
    %r983 = load i32, ptr %r4
    %r984 = add i32 0,2
    %r985 = srem i32 %r983,%r984
    %r986 = icmp ne i32 %r985,0
    br i1 %r986, label %L223, label %L224
L222:
    %r1021 = load i32, ptr %r0
    store i32 %r1021, ptr %r970
    %r1022 = add i32 0,0
    store i32 %r1022, ptr %r0
    %r1023 = add i32 0,0
    store i32 %r1023, ptr %r2
    %r1024 = load i32, ptr %r966
    store i32 %r1024, ptr %r4
    %r1025 = load i32, ptr %r968
    store i32 %r1025, ptr %r6
    br label %L230
L223:
    %r987 = load i32, ptr %r6
    %r988 = add i32 0,2
    %r989 = srem i32 %r987,%r988
    %r990 = add i32 0,0
    %r991 = icmp eq i32 %r989,%r990
    br i1 %r991, label %L226, label %L227
L224:
    %r1001 = load i32, ptr %r6
    %r1002 = add i32 0,2
    %r1003 = srem i32 %r1001,%r1002
    %r1004 = icmp ne i32 %r1003,0
    br i1 %r1004, label %L228, label %L229
L225:
    %r1012 = load i32, ptr %r4
    %r1013 = add i32 0,2
    %r1014 = sdiv i32 %r1012,%r1013
    store i32 %r1014, ptr %r4
    %r1015 = load i32, ptr %r6
    %r1016 = add i32 0,2
    %r1017 = sdiv i32 %r1015,%r1016
    store i32 %r1017, ptr %r6
    %r1018 = load i32, ptr %r2
    %r1019 = add i32 0,1
    %r1020 = add i32 %r1018,%r1019
    store i32 %r1020, ptr %r2
    br label %L220
L226:
    %r994 = load i32, ptr %r0
    %r995 = add i32 0,1
    %r996 = load i32, ptr %r2
    %r997 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r996
    %r998 = load i32, ptr %r997
    %r999 = mul i32 %r995,%r998
    %r1000 = add i32 %r994,%r999
    store i32 %r1000, ptr %r0
    br label %L227
L227:
    br label %L225
L228:
    %r1005 = load i32, ptr %r0
    %r1006 = add i32 0,1
    %r1007 = load i32, ptr %r2
    %r1008 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1007
    %r1009 = load i32, ptr %r1008
    %r1010 = mul i32 %r1006,%r1009
    %r1011 = add i32 %r1005,%r1010
    store i32 %r1011, ptr %r0
    br label %L229
L229:
    br label %L225
L230:
    %r1026 = load i32, ptr %r2
    %r1027 = add i32 0,16
    %r1028 = icmp slt i32 %r1026,%r1027
    br i1 %r1028, label %L231, label %L232
L231:
    %r1031 = load i32, ptr %r4
    %r1032 = add i32 0,2
    %r1033 = srem i32 %r1031,%r1032
    %r1034 = icmp ne i32 %r1033,0
    br i1 %r1034, label %L235, label %L234
L232:
    %r1058 = load i32, ptr %r0
    store i32 %r1058, ptr %r968
    %r1059 = add i32 0,1
    %r1060 = add i32 0,15
    %r1061 = icmp sgt i32 %r1059,%r1060
    br i1 %r1061, label %L237, label %L238
L233:
    %r1042 = load i32, ptr %r0
    %r1043 = add i32 0,1
    %r1044 = load i32, ptr %r2
    %r1045 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1044
    %r1046 = load i32, ptr %r1045
    %r1047 = mul i32 %r1043,%r1046
    %r1048 = add i32 %r1042,%r1047
    store i32 %r1048, ptr %r0
    br label %L234
L234:
    %r1049 = load i32, ptr %r4
    %r1050 = add i32 0,2
    %r1051 = sdiv i32 %r1049,%r1050
    store i32 %r1051, ptr %r4
    %r1052 = load i32, ptr %r6
    %r1053 = add i32 0,2
    %r1054 = sdiv i32 %r1052,%r1053
    store i32 %r1054, ptr %r6
    %r1055 = load i32, ptr %r2
    %r1056 = add i32 0,1
    %r1057 = add i32 %r1055,%r1056
    store i32 %r1057, ptr %r2
    br label %L230
L235:
    %r1035 = load i32, ptr %r6
    %r1036 = add i32 0,2
    %r1037 = srem i32 %r1035,%r1036
    %r1038 = icmp ne i32 %r1037,0
    br i1 %r1038, label %L233, label %L234
L237:
    %r1064 = add i32 0,0
    store i32 %r1064, ptr %r0
    br label %L239
L238:
    %r1065 = add i32 0,0
    store i32 %r1065, ptr %r0
    %r1066 = add i32 0,0
    store i32 %r1066, ptr %r2
    %r1067 = load i32, ptr %r968
    %r1068 = add i32 0,1
    %r1069 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1068
    %r1070 = load i32, ptr %r1069
    %r1071 = mul i32 %r1067,%r1070
    store i32 %r1071, ptr %r4
    %r1072 = add i32 0,65535
    store i32 %r1072, ptr %r6
    br label %L240
L239:
    %r1105 = load i32, ptr %r0
    store i32 %r1105, ptr %r968
    %r1106 = load i32, ptr %r970
    store i32 %r1106, ptr %r966
    br label %L217
L240:
    %r1073 = load i32, ptr %r2
    %r1074 = add i32 0,16
    %r1075 = icmp slt i32 %r1073,%r1074
    br i1 %r1075, label %L241, label %L242
L241:
    %r1078 = load i32, ptr %r4
    %r1079 = add i32 0,2
    %r1080 = srem i32 %r1078,%r1079
    %r1081 = icmp ne i32 %r1080,0
    br i1 %r1081, label %L245, label %L244
L242:
    br label %L239
L243:
    %r1089 = load i32, ptr %r0
    %r1090 = add i32 0,1
    %r1091 = load i32, ptr %r2
    %r1092 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1091
    %r1093 = load i32, ptr %r1092
    %r1094 = mul i32 %r1090,%r1093
    %r1095 = add i32 %r1089,%r1094
    store i32 %r1095, ptr %r0
    br label %L244
L244:
    %r1096 = load i32, ptr %r4
    %r1097 = add i32 0,2
    %r1098 = sdiv i32 %r1096,%r1097
    store i32 %r1098, ptr %r4
    %r1099 = load i32, ptr %r6
    %r1100 = add i32 0,2
    %r1101 = sdiv i32 %r1099,%r1100
    store i32 %r1101, ptr %r6
    %r1102 = load i32, ptr %r2
    %r1103 = add i32 0,1
    %r1104 = add i32 %r1102,%r1103
    store i32 %r1104, ptr %r2
    br label %L240
L245:
    %r1082 = load i32, ptr %r6
    %r1083 = add i32 0,2
    %r1084 = srem i32 %r1082,%r1083
    %r1085 = icmp ne i32 %r1084,0
    br i1 %r1085, label %L243, label %L244
L247:
    %r1115 = load i32, ptr %r1111
    %r1116 = icmp ne i32 %r1115,0
    br i1 %r1116, label %L248, label %L249
L248:
    %r1117 = add i32 0,0
    store i32 %r1117, ptr %r0
    %r1118 = add i32 0,0
    store i32 %r1118, ptr %r2
    %r1119 = load i32, ptr %r1109
    store i32 %r1119, ptr %r4
    %r1120 = load i32, ptr %r1111
    store i32 %r1120, ptr %r6
    br label %L250
L249:
    %r1250 = load i32, ptr %r1109
    store i32 %r1250, ptr %r0
    %r1251 = load i32, ptr %r0
    store i32 %r1251, ptr %r920
    %r1252 = load i32, ptr %r922
    store i32 %r1252, ptr %r4
    %r1253 = add i32 0,1
    store i32 %r1253, ptr %r6
    %r1254 = load i32, ptr %r6
    %r1255 = add i32 0,15
    %r1256 = icmp sge i32 %r1254,%r1255
    br i1 %r1256, label %L277, label %L278
L250:
    %r1121 = load i32, ptr %r2
    %r1122 = add i32 0,16
    %r1123 = icmp slt i32 %r1121,%r1122
    br i1 %r1123, label %L251, label %L252
L251:
    %r1126 = load i32, ptr %r4
    %r1127 = add i32 0,2
    %r1128 = srem i32 %r1126,%r1127
    %r1129 = icmp ne i32 %r1128,0
    br i1 %r1129, label %L253, label %L254
L252:
    %r1164 = load i32, ptr %r0
    store i32 %r1164, ptr %r1113
    %r1165 = add i32 0,0
    store i32 %r1165, ptr %r0
    %r1166 = add i32 0,0
    store i32 %r1166, ptr %r2
    %r1167 = load i32, ptr %r1109
    store i32 %r1167, ptr %r4
    %r1168 = load i32, ptr %r1111
    store i32 %r1168, ptr %r6
    br label %L260
L253:
    %r1130 = load i32, ptr %r6
    %r1131 = add i32 0,2
    %r1132 = srem i32 %r1130,%r1131
    %r1133 = add i32 0,0
    %r1134 = icmp eq i32 %r1132,%r1133
    br i1 %r1134, label %L256, label %L257
L254:
    %r1144 = load i32, ptr %r6
    %r1145 = add i32 0,2
    %r1146 = srem i32 %r1144,%r1145
    %r1147 = icmp ne i32 %r1146,0
    br i1 %r1147, label %L258, label %L259
L255:
    %r1155 = load i32, ptr %r4
    %r1156 = add i32 0,2
    %r1157 = sdiv i32 %r1155,%r1156
    store i32 %r1157, ptr %r4
    %r1158 = load i32, ptr %r6
    %r1159 = add i32 0,2
    %r1160 = sdiv i32 %r1158,%r1159
    store i32 %r1160, ptr %r6
    %r1161 = load i32, ptr %r2
    %r1162 = add i32 0,1
    %r1163 = add i32 %r1161,%r1162
    store i32 %r1163, ptr %r2
    br label %L250
L256:
    %r1137 = load i32, ptr %r0
    %r1138 = add i32 0,1
    %r1139 = load i32, ptr %r2
    %r1140 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1139
    %r1141 = load i32, ptr %r1140
    %r1142 = mul i32 %r1138,%r1141
    %r1143 = add i32 %r1137,%r1142
    store i32 %r1143, ptr %r0
    br label %L257
L257:
    br label %L255
L258:
    %r1148 = load i32, ptr %r0
    %r1149 = add i32 0,1
    %r1150 = load i32, ptr %r2
    %r1151 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1150
    %r1152 = load i32, ptr %r1151
    %r1153 = mul i32 %r1149,%r1152
    %r1154 = add i32 %r1148,%r1153
    store i32 %r1154, ptr %r0
    br label %L259
L259:
    br label %L255
L260:
    %r1169 = load i32, ptr %r2
    %r1170 = add i32 0,16
    %r1171 = icmp slt i32 %r1169,%r1170
    br i1 %r1171, label %L261, label %L262
L261:
    %r1174 = load i32, ptr %r4
    %r1175 = add i32 0,2
    %r1176 = srem i32 %r1174,%r1175
    %r1177 = icmp ne i32 %r1176,0
    br i1 %r1177, label %L265, label %L264
L262:
    %r1201 = load i32, ptr %r0
    store i32 %r1201, ptr %r1111
    %r1202 = add i32 0,1
    %r1203 = add i32 0,15
    %r1204 = icmp sgt i32 %r1202,%r1203
    br i1 %r1204, label %L267, label %L268
L263:
    %r1185 = load i32, ptr %r0
    %r1186 = add i32 0,1
    %r1187 = load i32, ptr %r2
    %r1188 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1187
    %r1189 = load i32, ptr %r1188
    %r1190 = mul i32 %r1186,%r1189
    %r1191 = add i32 %r1185,%r1190
    store i32 %r1191, ptr %r0
    br label %L264
L264:
    %r1192 = load i32, ptr %r4
    %r1193 = add i32 0,2
    %r1194 = sdiv i32 %r1192,%r1193
    store i32 %r1194, ptr %r4
    %r1195 = load i32, ptr %r6
    %r1196 = add i32 0,2
    %r1197 = sdiv i32 %r1195,%r1196
    store i32 %r1197, ptr %r6
    %r1198 = load i32, ptr %r2
    %r1199 = add i32 0,1
    %r1200 = add i32 %r1198,%r1199
    store i32 %r1200, ptr %r2
    br label %L260
L265:
    %r1178 = load i32, ptr %r6
    %r1179 = add i32 0,2
    %r1180 = srem i32 %r1178,%r1179
    %r1181 = icmp ne i32 %r1180,0
    br i1 %r1181, label %L263, label %L264
L267:
    %r1207 = add i32 0,0
    store i32 %r1207, ptr %r0
    br label %L269
L268:
    %r1208 = add i32 0,0
    store i32 %r1208, ptr %r0
    %r1209 = add i32 0,0
    store i32 %r1209, ptr %r2
    %r1210 = load i32, ptr %r1111
    %r1211 = add i32 0,1
    %r1212 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1211
    %r1213 = load i32, ptr %r1212
    %r1214 = mul i32 %r1210,%r1213
    store i32 %r1214, ptr %r4
    %r1215 = add i32 0,65535
    store i32 %r1215, ptr %r6
    br label %L270
L269:
    %r1248 = load i32, ptr %r0
    store i32 %r1248, ptr %r1111
    %r1249 = load i32, ptr %r1113
    store i32 %r1249, ptr %r1109
    br label %L247
L270:
    %r1216 = load i32, ptr %r2
    %r1217 = add i32 0,16
    %r1218 = icmp slt i32 %r1216,%r1217
    br i1 %r1218, label %L271, label %L272
L271:
    %r1221 = load i32, ptr %r4
    %r1222 = add i32 0,2
    %r1223 = srem i32 %r1221,%r1222
    %r1224 = icmp ne i32 %r1223,0
    br i1 %r1224, label %L275, label %L274
L272:
    br label %L269
L273:
    %r1232 = load i32, ptr %r0
    %r1233 = add i32 0,1
    %r1234 = load i32, ptr %r2
    %r1235 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1234
    %r1236 = load i32, ptr %r1235
    %r1237 = mul i32 %r1233,%r1236
    %r1238 = add i32 %r1232,%r1237
    store i32 %r1238, ptr %r0
    br label %L274
L274:
    %r1239 = load i32, ptr %r4
    %r1240 = add i32 0,2
    %r1241 = sdiv i32 %r1239,%r1240
    store i32 %r1241, ptr %r4
    %r1242 = load i32, ptr %r6
    %r1243 = add i32 0,2
    %r1244 = sdiv i32 %r1242,%r1243
    store i32 %r1244, ptr %r6
    %r1245 = load i32, ptr %r2
    %r1246 = add i32 0,1
    %r1247 = add i32 %r1245,%r1246
    store i32 %r1247, ptr %r2
    br label %L270
L275:
    %r1225 = load i32, ptr %r6
    %r1226 = add i32 0,2
    %r1227 = srem i32 %r1225,%r1226
    %r1228 = icmp ne i32 %r1227,0
    br i1 %r1228, label %L273, label %L274
L277:
    %r1259 = load i32, ptr %r4
    %r1260 = add i32 0,0
    %r1261 = icmp slt i32 %r1259,%r1260
    br i1 %r1261, label %L280, label %L281
L278:
    %r1266 = load i32, ptr %r6
    %r1267 = add i32 0,0
    %r1268 = icmp sgt i32 %r1266,%r1267
    br i1 %r1268, label %L283, label %L284
L279:
    %r1298 = load i32, ptr %r0
    store i32 %r1298, ptr %r922
    br label %L205
L280:
    %r1264 = add i32 0,65535
    store i32 %r1264, ptr %r0
    br label %L282
L281:
    %r1265 = add i32 0,0
    store i32 %r1265, ptr %r0
    br label %L282
L282:
    br label %L279
L283:
    %r1271 = load i32, ptr %r4
    %r1272 = add i32 0,32767
    %r1273 = icmp sgt i32 %r1271,%r1272
    br i1 %r1273, label %L286, label %L287
L284:
    %r1297 = load i32, ptr %r4
    store i32 %r1297, ptr %r0
    br label %L285
L285:
    br label %L279
L286:
    %r1276 = load i32, ptr %r4
    %r1277 = load i32, ptr %r6
    %r1278 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1277
    %r1279 = load i32, ptr %r1278
    %r1280 = sdiv i32 %r1276,%r1279
    store i32 %r1280, ptr %r4
    %r1281 = load i32, ptr %r4
    %r1282 = add i32 0,65536
    %r1283 = add i32 %r1281,%r1282
    %r1284 = add i32 0,15
    %r1285 = load i32, ptr %r6
    %r1286 = sub i32 %r1284,%r1285
    %r1287 = add i32 0,1
    %r1288 = add i32 %r1286,%r1287
    %r1289 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1288
    %r1290 = load i32, ptr %r1289
    %r1291 = sub i32 %r1283,%r1290
    store i32 %r1291, ptr %r0
    br label %L288
L287:
    %r1292 = load i32, ptr %r4
    %r1293 = load i32, ptr %r6
    %r1294 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1293
    %r1295 = load i32, ptr %r1294
    %r1296 = sdiv i32 %r1292,%r1295
    store i32 %r1296, ptr %r0
    br label %L288
L288:
    br label %L285
L289:
    %r1307 = load i32, ptr %r1303
    %r1308 = icmp ne i32 %r1307,0
    br i1 %r1308, label %L290, label %L291
L290:
    %r1309 = add i32 0,0
    store i32 %r1309, ptr %r0
    %r1310 = add i32 0,0
    store i32 %r1310, ptr %r2
    %r1311 = load i32, ptr %r1303
    store i32 %r1311, ptr %r4
    %r1312 = add i32 0,1
    store i32 %r1312, ptr %r6
    br label %L292
L291:
    %r1680 = load i32, ptr %r1305
    store i32 %r1680, ptr %r0
    %r1681 = load i32, ptr %r0
    store i32 %r1681, ptr %r871
    %r1682 = load i32, ptr %r873
    store i32 %r1682, ptr %r4
    %r1683 = add i32 0,1
    store i32 %r1683, ptr %r6
    %r1684 = load i32, ptr %r6
    %r1685 = add i32 0,15
    %r1686 = icmp sge i32 %r1684,%r1685
    br i1 %r1686, label %L373, label %L374
L292:
    %r1313 = load i32, ptr %r2
    %r1314 = add i32 0,16
    %r1315 = icmp slt i32 %r1313,%r1314
    br i1 %r1315, label %L293, label %L294
L293:
    %r1318 = load i32, ptr %r4
    %r1319 = add i32 0,2
    %r1320 = srem i32 %r1318,%r1319
    %r1321 = icmp ne i32 %r1320,0
    br i1 %r1321, label %L297, label %L296
L294:
    %r1345 = load i32, ptr %r0
    %r1346 = icmp ne i32 %r1345,0
    br i1 %r1346, label %L299, label %L300
L295:
    %r1329 = load i32, ptr %r0
    %r1330 = add i32 0,1
    %r1331 = load i32, ptr %r2
    %r1332 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1331
    %r1333 = load i32, ptr %r1332
    %r1334 = mul i32 %r1330,%r1333
    %r1335 = add i32 %r1329,%r1334
    store i32 %r1335, ptr %r0
    br label %L296
L296:
    %r1336 = load i32, ptr %r4
    %r1337 = add i32 0,2
    %r1338 = sdiv i32 %r1336,%r1337
    store i32 %r1338, ptr %r4
    %r1339 = load i32, ptr %r6
    %r1340 = add i32 0,2
    %r1341 = sdiv i32 %r1339,%r1340
    store i32 %r1341, ptr %r6
    %r1342 = load i32, ptr %r2
    %r1343 = add i32 0,1
    %r1344 = add i32 %r1342,%r1343
    store i32 %r1344, ptr %r2
    br label %L292
L297:
    %r1322 = load i32, ptr %r6
    %r1323 = add i32 0,2
    %r1324 = srem i32 %r1322,%r1323
    %r1325 = icmp ne i32 %r1324,0
    br i1 %r1325, label %L295, label %L296
L299:
    %r1348 = load i32, ptr %r1305
    store i32 %r1348, ptr %r1347
    %r1350 = load i32, ptr %r1301
    store i32 %r1350, ptr %r1349
    %r1352 = add i32 0,0
    store i32 %r1352, ptr %r1351
    br label %L301
L300:
    %r1491 = load i32, ptr %r1301
    store i32 %r1491, ptr %r1490
    %r1493 = load i32, ptr %r1301
    store i32 %r1493, ptr %r1492
    %r1495 = add i32 0,0
    store i32 %r1495, ptr %r1494
    br label %L331
L301:
    %r1353 = load i32, ptr %r1349
    %r1354 = icmp ne i32 %r1353,0
    br i1 %r1354, label %L302, label %L303
L302:
    %r1355 = add i32 0,0
    store i32 %r1355, ptr %r0
    %r1356 = add i32 0,0
    store i32 %r1356, ptr %r2
    %r1357 = load i32, ptr %r1347
    store i32 %r1357, ptr %r4
    %r1358 = load i32, ptr %r1349
    store i32 %r1358, ptr %r6
    br label %L304
L303:
    %r1488 = load i32, ptr %r1347
    store i32 %r1488, ptr %r0
    %r1489 = load i32, ptr %r0
    store i32 %r1489, ptr %r1305
    br label %L300
L304:
    %r1359 = load i32, ptr %r2
    %r1360 = add i32 0,16
    %r1361 = icmp slt i32 %r1359,%r1360
    br i1 %r1361, label %L305, label %L306
L305:
    %r1364 = load i32, ptr %r4
    %r1365 = add i32 0,2
    %r1366 = srem i32 %r1364,%r1365
    %r1367 = icmp ne i32 %r1366,0
    br i1 %r1367, label %L307, label %L308
L306:
    %r1402 = load i32, ptr %r0
    store i32 %r1402, ptr %r1351
    %r1403 = add i32 0,0
    store i32 %r1403, ptr %r0
    %r1404 = add i32 0,0
    store i32 %r1404, ptr %r2
    %r1405 = load i32, ptr %r1347
    store i32 %r1405, ptr %r4
    %r1406 = load i32, ptr %r1349
    store i32 %r1406, ptr %r6
    br label %L314
L307:
    %r1368 = load i32, ptr %r6
    %r1369 = add i32 0,2
    %r1370 = srem i32 %r1368,%r1369
    %r1371 = add i32 0,0
    %r1372 = icmp eq i32 %r1370,%r1371
    br i1 %r1372, label %L310, label %L311
L308:
    %r1382 = load i32, ptr %r6
    %r1383 = add i32 0,2
    %r1384 = srem i32 %r1382,%r1383
    %r1385 = icmp ne i32 %r1384,0
    br i1 %r1385, label %L312, label %L313
L309:
    %r1393 = load i32, ptr %r4
    %r1394 = add i32 0,2
    %r1395 = sdiv i32 %r1393,%r1394
    store i32 %r1395, ptr %r4
    %r1396 = load i32, ptr %r6
    %r1397 = add i32 0,2
    %r1398 = sdiv i32 %r1396,%r1397
    store i32 %r1398, ptr %r6
    %r1399 = load i32, ptr %r2
    %r1400 = add i32 0,1
    %r1401 = add i32 %r1399,%r1400
    store i32 %r1401, ptr %r2
    br label %L304
L310:
    %r1375 = load i32, ptr %r0
    %r1376 = add i32 0,1
    %r1377 = load i32, ptr %r2
    %r1378 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1377
    %r1379 = load i32, ptr %r1378
    %r1380 = mul i32 %r1376,%r1379
    %r1381 = add i32 %r1375,%r1380
    store i32 %r1381, ptr %r0
    br label %L311
L311:
    br label %L309
L312:
    %r1386 = load i32, ptr %r0
    %r1387 = add i32 0,1
    %r1388 = load i32, ptr %r2
    %r1389 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1388
    %r1390 = load i32, ptr %r1389
    %r1391 = mul i32 %r1387,%r1390
    %r1392 = add i32 %r1386,%r1391
    store i32 %r1392, ptr %r0
    br label %L313
L313:
    br label %L309
L314:
    %r1407 = load i32, ptr %r2
    %r1408 = add i32 0,16
    %r1409 = icmp slt i32 %r1407,%r1408
    br i1 %r1409, label %L315, label %L316
L315:
    %r1412 = load i32, ptr %r4
    %r1413 = add i32 0,2
    %r1414 = srem i32 %r1412,%r1413
    %r1415 = icmp ne i32 %r1414,0
    br i1 %r1415, label %L319, label %L318
L316:
    %r1439 = load i32, ptr %r0
    store i32 %r1439, ptr %r1349
    %r1440 = add i32 0,1
    %r1441 = add i32 0,15
    %r1442 = icmp sgt i32 %r1440,%r1441
    br i1 %r1442, label %L321, label %L322
L317:
    %r1423 = load i32, ptr %r0
    %r1424 = add i32 0,1
    %r1425 = load i32, ptr %r2
    %r1426 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1425
    %r1427 = load i32, ptr %r1426
    %r1428 = mul i32 %r1424,%r1427
    %r1429 = add i32 %r1423,%r1428
    store i32 %r1429, ptr %r0
    br label %L318
L318:
    %r1430 = load i32, ptr %r4
    %r1431 = add i32 0,2
    %r1432 = sdiv i32 %r1430,%r1431
    store i32 %r1432, ptr %r4
    %r1433 = load i32, ptr %r6
    %r1434 = add i32 0,2
    %r1435 = sdiv i32 %r1433,%r1434
    store i32 %r1435, ptr %r6
    %r1436 = load i32, ptr %r2
    %r1437 = add i32 0,1
    %r1438 = add i32 %r1436,%r1437
    store i32 %r1438, ptr %r2
    br label %L314
L319:
    %r1416 = load i32, ptr %r6
    %r1417 = add i32 0,2
    %r1418 = srem i32 %r1416,%r1417
    %r1419 = icmp ne i32 %r1418,0
    br i1 %r1419, label %L317, label %L318
L321:
    %r1445 = add i32 0,0
    store i32 %r1445, ptr %r0
    br label %L323
L322:
    %r1446 = add i32 0,0
    store i32 %r1446, ptr %r0
    %r1447 = add i32 0,0
    store i32 %r1447, ptr %r2
    %r1448 = load i32, ptr %r1349
    %r1449 = add i32 0,1
    %r1450 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1449
    %r1451 = load i32, ptr %r1450
    %r1452 = mul i32 %r1448,%r1451
    store i32 %r1452, ptr %r4
    %r1453 = add i32 0,65535
    store i32 %r1453, ptr %r6
    br label %L324
L323:
    %r1486 = load i32, ptr %r0
    store i32 %r1486, ptr %r1349
    %r1487 = load i32, ptr %r1351
    store i32 %r1487, ptr %r1347
    br label %L301
L324:
    %r1454 = load i32, ptr %r2
    %r1455 = add i32 0,16
    %r1456 = icmp slt i32 %r1454,%r1455
    br i1 %r1456, label %L325, label %L326
L325:
    %r1459 = load i32, ptr %r4
    %r1460 = add i32 0,2
    %r1461 = srem i32 %r1459,%r1460
    %r1462 = icmp ne i32 %r1461,0
    br i1 %r1462, label %L329, label %L328
L326:
    br label %L323
L327:
    %r1470 = load i32, ptr %r0
    %r1471 = add i32 0,1
    %r1472 = load i32, ptr %r2
    %r1473 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1472
    %r1474 = load i32, ptr %r1473
    %r1475 = mul i32 %r1471,%r1474
    %r1476 = add i32 %r1470,%r1475
    store i32 %r1476, ptr %r0
    br label %L328
L328:
    %r1477 = load i32, ptr %r4
    %r1478 = add i32 0,2
    %r1479 = sdiv i32 %r1477,%r1478
    store i32 %r1479, ptr %r4
    %r1480 = load i32, ptr %r6
    %r1481 = add i32 0,2
    %r1482 = sdiv i32 %r1480,%r1481
    store i32 %r1482, ptr %r6
    %r1483 = load i32, ptr %r2
    %r1484 = add i32 0,1
    %r1485 = add i32 %r1483,%r1484
    store i32 %r1485, ptr %r2
    br label %L324
L329:
    %r1463 = load i32, ptr %r6
    %r1464 = add i32 0,2
    %r1465 = srem i32 %r1463,%r1464
    %r1466 = icmp ne i32 %r1465,0
    br i1 %r1466, label %L327, label %L328
L331:
    %r1496 = load i32, ptr %r1492
    %r1497 = icmp ne i32 %r1496,0
    br i1 %r1497, label %L332, label %L333
L332:
    %r1498 = add i32 0,0
    store i32 %r1498, ptr %r0
    %r1499 = add i32 0,0
    store i32 %r1499, ptr %r2
    %r1500 = load i32, ptr %r1490
    store i32 %r1500, ptr %r4
    %r1501 = load i32, ptr %r1492
    store i32 %r1501, ptr %r6
    br label %L334
L333:
    %r1631 = load i32, ptr %r1490
    store i32 %r1631, ptr %r0
    %r1632 = load i32, ptr %r0
    store i32 %r1632, ptr %r1301
    %r1633 = load i32, ptr %r1303
    store i32 %r1633, ptr %r4
    %r1634 = add i32 0,1
    store i32 %r1634, ptr %r6
    %r1635 = load i32, ptr %r6
    %r1636 = add i32 0,15
    %r1637 = icmp sge i32 %r1635,%r1636
    br i1 %r1637, label %L361, label %L362
L334:
    %r1502 = load i32, ptr %r2
    %r1503 = add i32 0,16
    %r1504 = icmp slt i32 %r1502,%r1503
    br i1 %r1504, label %L335, label %L336
L335:
    %r1507 = load i32, ptr %r4
    %r1508 = add i32 0,2
    %r1509 = srem i32 %r1507,%r1508
    %r1510 = icmp ne i32 %r1509,0
    br i1 %r1510, label %L337, label %L338
L336:
    %r1545 = load i32, ptr %r0
    store i32 %r1545, ptr %r1494
    %r1546 = add i32 0,0
    store i32 %r1546, ptr %r0
    %r1547 = add i32 0,0
    store i32 %r1547, ptr %r2
    %r1548 = load i32, ptr %r1490
    store i32 %r1548, ptr %r4
    %r1549 = load i32, ptr %r1492
    store i32 %r1549, ptr %r6
    br label %L344
L337:
    %r1511 = load i32, ptr %r6
    %r1512 = add i32 0,2
    %r1513 = srem i32 %r1511,%r1512
    %r1514 = add i32 0,0
    %r1515 = icmp eq i32 %r1513,%r1514
    br i1 %r1515, label %L340, label %L341
L338:
    %r1525 = load i32, ptr %r6
    %r1526 = add i32 0,2
    %r1527 = srem i32 %r1525,%r1526
    %r1528 = icmp ne i32 %r1527,0
    br i1 %r1528, label %L342, label %L343
L339:
    %r1536 = load i32, ptr %r4
    %r1537 = add i32 0,2
    %r1538 = sdiv i32 %r1536,%r1537
    store i32 %r1538, ptr %r4
    %r1539 = load i32, ptr %r6
    %r1540 = add i32 0,2
    %r1541 = sdiv i32 %r1539,%r1540
    store i32 %r1541, ptr %r6
    %r1542 = load i32, ptr %r2
    %r1543 = add i32 0,1
    %r1544 = add i32 %r1542,%r1543
    store i32 %r1544, ptr %r2
    br label %L334
L340:
    %r1518 = load i32, ptr %r0
    %r1519 = add i32 0,1
    %r1520 = load i32, ptr %r2
    %r1521 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1520
    %r1522 = load i32, ptr %r1521
    %r1523 = mul i32 %r1519,%r1522
    %r1524 = add i32 %r1518,%r1523
    store i32 %r1524, ptr %r0
    br label %L341
L341:
    br label %L339
L342:
    %r1529 = load i32, ptr %r0
    %r1530 = add i32 0,1
    %r1531 = load i32, ptr %r2
    %r1532 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1531
    %r1533 = load i32, ptr %r1532
    %r1534 = mul i32 %r1530,%r1533
    %r1535 = add i32 %r1529,%r1534
    store i32 %r1535, ptr %r0
    br label %L343
L343:
    br label %L339
L344:
    %r1550 = load i32, ptr %r2
    %r1551 = add i32 0,16
    %r1552 = icmp slt i32 %r1550,%r1551
    br i1 %r1552, label %L345, label %L346
L345:
    %r1555 = load i32, ptr %r4
    %r1556 = add i32 0,2
    %r1557 = srem i32 %r1555,%r1556
    %r1558 = icmp ne i32 %r1557,0
    br i1 %r1558, label %L349, label %L348
L346:
    %r1582 = load i32, ptr %r0
    store i32 %r1582, ptr %r1492
    %r1583 = add i32 0,1
    %r1584 = add i32 0,15
    %r1585 = icmp sgt i32 %r1583,%r1584
    br i1 %r1585, label %L351, label %L352
L347:
    %r1566 = load i32, ptr %r0
    %r1567 = add i32 0,1
    %r1568 = load i32, ptr %r2
    %r1569 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1568
    %r1570 = load i32, ptr %r1569
    %r1571 = mul i32 %r1567,%r1570
    %r1572 = add i32 %r1566,%r1571
    store i32 %r1572, ptr %r0
    br label %L348
L348:
    %r1573 = load i32, ptr %r4
    %r1574 = add i32 0,2
    %r1575 = sdiv i32 %r1573,%r1574
    store i32 %r1575, ptr %r4
    %r1576 = load i32, ptr %r6
    %r1577 = add i32 0,2
    %r1578 = sdiv i32 %r1576,%r1577
    store i32 %r1578, ptr %r6
    %r1579 = load i32, ptr %r2
    %r1580 = add i32 0,1
    %r1581 = add i32 %r1579,%r1580
    store i32 %r1581, ptr %r2
    br label %L344
L349:
    %r1559 = load i32, ptr %r6
    %r1560 = add i32 0,2
    %r1561 = srem i32 %r1559,%r1560
    %r1562 = icmp ne i32 %r1561,0
    br i1 %r1562, label %L347, label %L348
L351:
    %r1588 = add i32 0,0
    store i32 %r1588, ptr %r0
    br label %L353
L352:
    %r1589 = add i32 0,0
    store i32 %r1589, ptr %r0
    %r1590 = add i32 0,0
    store i32 %r1590, ptr %r2
    %r1591 = load i32, ptr %r1492
    %r1592 = add i32 0,1
    %r1593 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1592
    %r1594 = load i32, ptr %r1593
    %r1595 = mul i32 %r1591,%r1594
    store i32 %r1595, ptr %r4
    %r1596 = add i32 0,65535
    store i32 %r1596, ptr %r6
    br label %L354
L353:
    %r1629 = load i32, ptr %r0
    store i32 %r1629, ptr %r1492
    %r1630 = load i32, ptr %r1494
    store i32 %r1630, ptr %r1490
    br label %L331
L354:
    %r1597 = load i32, ptr %r2
    %r1598 = add i32 0,16
    %r1599 = icmp slt i32 %r1597,%r1598
    br i1 %r1599, label %L355, label %L356
L355:
    %r1602 = load i32, ptr %r4
    %r1603 = add i32 0,2
    %r1604 = srem i32 %r1602,%r1603
    %r1605 = icmp ne i32 %r1604,0
    br i1 %r1605, label %L359, label %L358
L356:
    br label %L353
L357:
    %r1613 = load i32, ptr %r0
    %r1614 = add i32 0,1
    %r1615 = load i32, ptr %r2
    %r1616 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1615
    %r1617 = load i32, ptr %r1616
    %r1618 = mul i32 %r1614,%r1617
    %r1619 = add i32 %r1613,%r1618
    store i32 %r1619, ptr %r0
    br label %L358
L358:
    %r1620 = load i32, ptr %r4
    %r1621 = add i32 0,2
    %r1622 = sdiv i32 %r1620,%r1621
    store i32 %r1622, ptr %r4
    %r1623 = load i32, ptr %r6
    %r1624 = add i32 0,2
    %r1625 = sdiv i32 %r1623,%r1624
    store i32 %r1625, ptr %r6
    %r1626 = load i32, ptr %r2
    %r1627 = add i32 0,1
    %r1628 = add i32 %r1626,%r1627
    store i32 %r1628, ptr %r2
    br label %L354
L359:
    %r1606 = load i32, ptr %r6
    %r1607 = add i32 0,2
    %r1608 = srem i32 %r1606,%r1607
    %r1609 = icmp ne i32 %r1608,0
    br i1 %r1609, label %L357, label %L358
L361:
    %r1640 = load i32, ptr %r4
    %r1641 = add i32 0,0
    %r1642 = icmp slt i32 %r1640,%r1641
    br i1 %r1642, label %L364, label %L365
L362:
    %r1647 = load i32, ptr %r6
    %r1648 = add i32 0,0
    %r1649 = icmp sgt i32 %r1647,%r1648
    br i1 %r1649, label %L367, label %L368
L363:
    %r1679 = load i32, ptr %r0
    store i32 %r1679, ptr %r1303
    br label %L289
L364:
    %r1645 = add i32 0,65535
    store i32 %r1645, ptr %r0
    br label %L366
L365:
    %r1646 = add i32 0,0
    store i32 %r1646, ptr %r0
    br label %L366
L366:
    br label %L363
L367:
    %r1652 = load i32, ptr %r4
    %r1653 = add i32 0,32767
    %r1654 = icmp sgt i32 %r1652,%r1653
    br i1 %r1654, label %L370, label %L371
L368:
    %r1678 = load i32, ptr %r4
    store i32 %r1678, ptr %r0
    br label %L369
L369:
    br label %L363
L370:
    %r1657 = load i32, ptr %r4
    %r1658 = load i32, ptr %r6
    %r1659 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1658
    %r1660 = load i32, ptr %r1659
    %r1661 = sdiv i32 %r1657,%r1660
    store i32 %r1661, ptr %r4
    %r1662 = load i32, ptr %r4
    %r1663 = add i32 0,65536
    %r1664 = add i32 %r1662,%r1663
    %r1665 = add i32 0,15
    %r1666 = load i32, ptr %r6
    %r1667 = sub i32 %r1665,%r1666
    %r1668 = add i32 0,1
    %r1669 = add i32 %r1667,%r1668
    %r1670 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1669
    %r1671 = load i32, ptr %r1670
    %r1672 = sub i32 %r1664,%r1671
    store i32 %r1672, ptr %r0
    br label %L372
L371:
    %r1673 = load i32, ptr %r4
    %r1674 = load i32, ptr %r6
    %r1675 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1674
    %r1676 = load i32, ptr %r1675
    %r1677 = sdiv i32 %r1673,%r1676
    store i32 %r1677, ptr %r0
    br label %L372
L372:
    br label %L369
L373:
    %r1689 = load i32, ptr %r4
    %r1690 = add i32 0,0
    %r1691 = icmp slt i32 %r1689,%r1690
    br i1 %r1691, label %L376, label %L377
L374:
    %r1696 = load i32, ptr %r6
    %r1697 = add i32 0,0
    %r1698 = icmp sgt i32 %r1696,%r1697
    br i1 %r1698, label %L379, label %L380
L375:
    %r1728 = load i32, ptr %r0
    store i32 %r1728, ptr %r873
    br label %L193
L376:
    %r1694 = add i32 0,65535
    store i32 %r1694, ptr %r0
    br label %L378
L377:
    %r1695 = add i32 0,0
    store i32 %r1695, ptr %r0
    br label %L378
L378:
    br label %L375
L379:
    %r1701 = load i32, ptr %r4
    %r1702 = add i32 0,32767
    %r1703 = icmp sgt i32 %r1701,%r1702
    br i1 %r1703, label %L382, label %L383
L380:
    %r1727 = load i32, ptr %r4
    store i32 %r1727, ptr %r0
    br label %L381
L381:
    br label %L375
L382:
    %r1706 = load i32, ptr %r4
    %r1707 = load i32, ptr %r6
    %r1708 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1707
    %r1709 = load i32, ptr %r1708
    %r1710 = sdiv i32 %r1706,%r1709
    store i32 %r1710, ptr %r4
    %r1711 = load i32, ptr %r4
    %r1712 = add i32 0,65536
    %r1713 = add i32 %r1711,%r1712
    %r1714 = add i32 0,15
    %r1715 = load i32, ptr %r6
    %r1716 = sub i32 %r1714,%r1715
    %r1717 = add i32 0,1
    %r1718 = add i32 %r1716,%r1717
    %r1719 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1718
    %r1720 = load i32, ptr %r1719
    %r1721 = sub i32 %r1713,%r1720
    store i32 %r1721, ptr %r0
    br label %L384
L383:
    %r1722 = load i32, ptr %r4
    %r1723 = load i32, ptr %r6
    %r1724 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1723
    %r1725 = load i32, ptr %r1724
    %r1726 = sdiv i32 %r1722,%r1725
    store i32 %r1726, ptr %r0
    br label %L384
L384:
    br label %L381
L385:
    %r1733 = load i32, ptr %r8
    %r1734 = add i32 0,16
    %r1735 = icmp slt i32 %r1733,%r1734
    br i1 %r1735, label %L386, label %L387
L386:
    %r1739 = add i32 0,2
    store i32 %r1739, ptr %r1738
    %r1741 = load i32, ptr %r8
    store i32 %r1741, ptr %r1740
    %r1743 = add i32 0,1
    store i32 %r1743, ptr %r1742
    br label %L388
L387:
    %r2602 = add i32 0,0
    store i32 %r2602, ptr %r8
    br label %L580
L388:
    %r1744 = load i32, ptr %r1740
    %r1745 = add i32 0,0
    %r1746 = icmp sgt i32 %r1744,%r1745
    br i1 %r1746, label %L389, label %L390
L389:
    %r1749 = add i32 0,0
    store i32 %r1749, ptr %r0
    %r1750 = add i32 0,0
    store i32 %r1750, ptr %r2
    %r1751 = load i32, ptr %r1740
    store i32 %r1751, ptr %r4
    %r1752 = add i32 0,1
    store i32 %r1752, ptr %r6
    br label %L391
L390:
    %r2596 = load i32, ptr %r1742
    store i32 %r2596, ptr %r0
    %r2597 = load i32, ptr %r0
    call void @putint(i32 %r2597)
    %r2598 = add i32 0,10
    call void @putch(i32 %r2598)
    %r2599 = load i32, ptr %r8
    %r2600 = add i32 0,1
    %r2601 = add i32 %r2599,%r2600
    store i32 %r2601, ptr %r8
    br label %L385
L391:
    %r1753 = load i32, ptr %r2
    %r1754 = add i32 0,16
    %r1755 = icmp slt i32 %r1753,%r1754
    br i1 %r1755, label %L392, label %L393
L392:
    %r1758 = load i32, ptr %r4
    %r1759 = add i32 0,2
    %r1760 = srem i32 %r1758,%r1759
    %r1761 = icmp ne i32 %r1760,0
    br i1 %r1761, label %L396, label %L395
L393:
    %r1785 = load i32, ptr %r0
    %r1786 = icmp ne i32 %r1785,0
    br i1 %r1786, label %L398, label %L399
L394:
    %r1769 = load i32, ptr %r0
    %r1770 = add i32 0,1
    %r1771 = load i32, ptr %r2
    %r1772 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1771
    %r1773 = load i32, ptr %r1772
    %r1774 = mul i32 %r1770,%r1773
    %r1775 = add i32 %r1769,%r1774
    store i32 %r1775, ptr %r0
    br label %L395
L395:
    %r1776 = load i32, ptr %r4
    %r1777 = add i32 0,2
    %r1778 = sdiv i32 %r1776,%r1777
    store i32 %r1778, ptr %r4
    %r1779 = load i32, ptr %r6
    %r1780 = add i32 0,2
    %r1781 = sdiv i32 %r1779,%r1780
    store i32 %r1781, ptr %r6
    %r1782 = load i32, ptr %r2
    %r1783 = add i32 0,1
    %r1784 = add i32 %r1782,%r1783
    store i32 %r1784, ptr %r2
    br label %L391
L396:
    %r1762 = load i32, ptr %r6
    %r1763 = add i32 0,2
    %r1764 = srem i32 %r1762,%r1763
    %r1765 = icmp ne i32 %r1764,0
    br i1 %r1765, label %L394, label %L395
L398:
    %r1788 = load i32, ptr %r1742
    store i32 %r1788, ptr %r1787
    %r1790 = load i32, ptr %r1738
    store i32 %r1790, ptr %r1789
    %r1792 = add i32 0,0
    store i32 %r1792, ptr %r1791
    br label %L400
L399:
    %r2169 = load i32, ptr %r1738
    store i32 %r2169, ptr %r2168
    %r2171 = load i32, ptr %r1738
    store i32 %r2171, ptr %r2170
    %r2173 = add i32 0,0
    store i32 %r2173, ptr %r2172
    br label %L484
L400:
    %r1793 = load i32, ptr %r1789
    %r1794 = icmp ne i32 %r1793,0
    br i1 %r1794, label %L401, label %L402
L401:
    %r1795 = add i32 0,0
    store i32 %r1795, ptr %r0
    %r1796 = add i32 0,0
    store i32 %r1796, ptr %r2
    %r1797 = load i32, ptr %r1789
    store i32 %r1797, ptr %r4
    %r1798 = add i32 0,1
    store i32 %r1798, ptr %r6
    br label %L403
L402:
    %r2166 = load i32, ptr %r1791
    store i32 %r2166, ptr %r0
    %r2167 = load i32, ptr %r0
    store i32 %r2167, ptr %r1742
    br label %L399
L403:
    %r1799 = load i32, ptr %r2
    %r1800 = add i32 0,16
    %r1801 = icmp slt i32 %r1799,%r1800
    br i1 %r1801, label %L404, label %L405
L404:
    %r1804 = load i32, ptr %r4
    %r1805 = add i32 0,2
    %r1806 = srem i32 %r1804,%r1805
    %r1807 = icmp ne i32 %r1806,0
    br i1 %r1807, label %L408, label %L407
L405:
    %r1831 = load i32, ptr %r0
    %r1832 = icmp ne i32 %r1831,0
    br i1 %r1832, label %L410, label %L411
L406:
    %r1815 = load i32, ptr %r0
    %r1816 = add i32 0,1
    %r1817 = load i32, ptr %r2
    %r1818 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1817
    %r1819 = load i32, ptr %r1818
    %r1820 = mul i32 %r1816,%r1819
    %r1821 = add i32 %r1815,%r1820
    store i32 %r1821, ptr %r0
    br label %L407
L407:
    %r1822 = load i32, ptr %r4
    %r1823 = add i32 0,2
    %r1824 = sdiv i32 %r1822,%r1823
    store i32 %r1824, ptr %r4
    %r1825 = load i32, ptr %r6
    %r1826 = add i32 0,2
    %r1827 = sdiv i32 %r1825,%r1826
    store i32 %r1827, ptr %r6
    %r1828 = load i32, ptr %r2
    %r1829 = add i32 0,1
    %r1830 = add i32 %r1828,%r1829
    store i32 %r1830, ptr %r2
    br label %L403
L408:
    %r1808 = load i32, ptr %r6
    %r1809 = add i32 0,2
    %r1810 = srem i32 %r1808,%r1809
    %r1811 = icmp ne i32 %r1810,0
    br i1 %r1811, label %L406, label %L407
L410:
    %r1834 = load i32, ptr %r1791
    store i32 %r1834, ptr %r1833
    %r1836 = load i32, ptr %r1787
    store i32 %r1836, ptr %r1835
    %r1838 = add i32 0,0
    store i32 %r1838, ptr %r1837
    br label %L412
L411:
    %r1977 = load i32, ptr %r1787
    store i32 %r1977, ptr %r1976
    %r1979 = load i32, ptr %r1787
    store i32 %r1979, ptr %r1978
    %r1981 = add i32 0,0
    store i32 %r1981, ptr %r1980
    br label %L442
L412:
    %r1839 = load i32, ptr %r1835
    %r1840 = icmp ne i32 %r1839,0
    br i1 %r1840, label %L413, label %L414
L413:
    %r1841 = add i32 0,0
    store i32 %r1841, ptr %r0
    %r1842 = add i32 0,0
    store i32 %r1842, ptr %r2
    %r1843 = load i32, ptr %r1833
    store i32 %r1843, ptr %r4
    %r1844 = load i32, ptr %r1835
    store i32 %r1844, ptr %r6
    br label %L415
L414:
    %r1974 = load i32, ptr %r1833
    store i32 %r1974, ptr %r0
    %r1975 = load i32, ptr %r0
    store i32 %r1975, ptr %r1791
    br label %L411
L415:
    %r1845 = load i32, ptr %r2
    %r1846 = add i32 0,16
    %r1847 = icmp slt i32 %r1845,%r1846
    br i1 %r1847, label %L416, label %L417
L416:
    %r1850 = load i32, ptr %r4
    %r1851 = add i32 0,2
    %r1852 = srem i32 %r1850,%r1851
    %r1853 = icmp ne i32 %r1852,0
    br i1 %r1853, label %L418, label %L419
L417:
    %r1888 = load i32, ptr %r0
    store i32 %r1888, ptr %r1837
    %r1889 = add i32 0,0
    store i32 %r1889, ptr %r0
    %r1890 = add i32 0,0
    store i32 %r1890, ptr %r2
    %r1891 = load i32, ptr %r1833
    store i32 %r1891, ptr %r4
    %r1892 = load i32, ptr %r1835
    store i32 %r1892, ptr %r6
    br label %L425
L418:
    %r1854 = load i32, ptr %r6
    %r1855 = add i32 0,2
    %r1856 = srem i32 %r1854,%r1855
    %r1857 = add i32 0,0
    %r1858 = icmp eq i32 %r1856,%r1857
    br i1 %r1858, label %L421, label %L422
L419:
    %r1868 = load i32, ptr %r6
    %r1869 = add i32 0,2
    %r1870 = srem i32 %r1868,%r1869
    %r1871 = icmp ne i32 %r1870,0
    br i1 %r1871, label %L423, label %L424
L420:
    %r1879 = load i32, ptr %r4
    %r1880 = add i32 0,2
    %r1881 = sdiv i32 %r1879,%r1880
    store i32 %r1881, ptr %r4
    %r1882 = load i32, ptr %r6
    %r1883 = add i32 0,2
    %r1884 = sdiv i32 %r1882,%r1883
    store i32 %r1884, ptr %r6
    %r1885 = load i32, ptr %r2
    %r1886 = add i32 0,1
    %r1887 = add i32 %r1885,%r1886
    store i32 %r1887, ptr %r2
    br label %L415
L421:
    %r1861 = load i32, ptr %r0
    %r1862 = add i32 0,1
    %r1863 = load i32, ptr %r2
    %r1864 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1863
    %r1865 = load i32, ptr %r1864
    %r1866 = mul i32 %r1862,%r1865
    %r1867 = add i32 %r1861,%r1866
    store i32 %r1867, ptr %r0
    br label %L422
L422:
    br label %L420
L423:
    %r1872 = load i32, ptr %r0
    %r1873 = add i32 0,1
    %r1874 = load i32, ptr %r2
    %r1875 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1874
    %r1876 = load i32, ptr %r1875
    %r1877 = mul i32 %r1873,%r1876
    %r1878 = add i32 %r1872,%r1877
    store i32 %r1878, ptr %r0
    br label %L424
L424:
    br label %L420
L425:
    %r1893 = load i32, ptr %r2
    %r1894 = add i32 0,16
    %r1895 = icmp slt i32 %r1893,%r1894
    br i1 %r1895, label %L426, label %L427
L426:
    %r1898 = load i32, ptr %r4
    %r1899 = add i32 0,2
    %r1900 = srem i32 %r1898,%r1899
    %r1901 = icmp ne i32 %r1900,0
    br i1 %r1901, label %L430, label %L429
L427:
    %r1925 = load i32, ptr %r0
    store i32 %r1925, ptr %r1835
    %r1926 = add i32 0,1
    %r1927 = add i32 0,15
    %r1928 = icmp sgt i32 %r1926,%r1927
    br i1 %r1928, label %L432, label %L433
L428:
    %r1909 = load i32, ptr %r0
    %r1910 = add i32 0,1
    %r1911 = load i32, ptr %r2
    %r1912 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1911
    %r1913 = load i32, ptr %r1912
    %r1914 = mul i32 %r1910,%r1913
    %r1915 = add i32 %r1909,%r1914
    store i32 %r1915, ptr %r0
    br label %L429
L429:
    %r1916 = load i32, ptr %r4
    %r1917 = add i32 0,2
    %r1918 = sdiv i32 %r1916,%r1917
    store i32 %r1918, ptr %r4
    %r1919 = load i32, ptr %r6
    %r1920 = add i32 0,2
    %r1921 = sdiv i32 %r1919,%r1920
    store i32 %r1921, ptr %r6
    %r1922 = load i32, ptr %r2
    %r1923 = add i32 0,1
    %r1924 = add i32 %r1922,%r1923
    store i32 %r1924, ptr %r2
    br label %L425
L430:
    %r1902 = load i32, ptr %r6
    %r1903 = add i32 0,2
    %r1904 = srem i32 %r1902,%r1903
    %r1905 = icmp ne i32 %r1904,0
    br i1 %r1905, label %L428, label %L429
L432:
    %r1931 = add i32 0,0
    store i32 %r1931, ptr %r0
    br label %L434
L433:
    %r1932 = add i32 0,0
    store i32 %r1932, ptr %r0
    %r1933 = add i32 0,0
    store i32 %r1933, ptr %r2
    %r1934 = load i32, ptr %r1835
    %r1935 = add i32 0,1
    %r1936 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1935
    %r1937 = load i32, ptr %r1936
    %r1938 = mul i32 %r1934,%r1937
    store i32 %r1938, ptr %r4
    %r1939 = add i32 0,65535
    store i32 %r1939, ptr %r6
    br label %L435
L434:
    %r1972 = load i32, ptr %r0
    store i32 %r1972, ptr %r1835
    %r1973 = load i32, ptr %r1837
    store i32 %r1973, ptr %r1833
    br label %L412
L435:
    %r1940 = load i32, ptr %r2
    %r1941 = add i32 0,16
    %r1942 = icmp slt i32 %r1940,%r1941
    br i1 %r1942, label %L436, label %L437
L436:
    %r1945 = load i32, ptr %r4
    %r1946 = add i32 0,2
    %r1947 = srem i32 %r1945,%r1946
    %r1948 = icmp ne i32 %r1947,0
    br i1 %r1948, label %L440, label %L439
L437:
    br label %L434
L438:
    %r1956 = load i32, ptr %r0
    %r1957 = add i32 0,1
    %r1958 = load i32, ptr %r2
    %r1959 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1958
    %r1960 = load i32, ptr %r1959
    %r1961 = mul i32 %r1957,%r1960
    %r1962 = add i32 %r1956,%r1961
    store i32 %r1962, ptr %r0
    br label %L439
L439:
    %r1963 = load i32, ptr %r4
    %r1964 = add i32 0,2
    %r1965 = sdiv i32 %r1963,%r1964
    store i32 %r1965, ptr %r4
    %r1966 = load i32, ptr %r6
    %r1967 = add i32 0,2
    %r1968 = sdiv i32 %r1966,%r1967
    store i32 %r1968, ptr %r6
    %r1969 = load i32, ptr %r2
    %r1970 = add i32 0,1
    %r1971 = add i32 %r1969,%r1970
    store i32 %r1971, ptr %r2
    br label %L435
L440:
    %r1949 = load i32, ptr %r6
    %r1950 = add i32 0,2
    %r1951 = srem i32 %r1949,%r1950
    %r1952 = icmp ne i32 %r1951,0
    br i1 %r1952, label %L438, label %L439
L442:
    %r1982 = load i32, ptr %r1978
    %r1983 = icmp ne i32 %r1982,0
    br i1 %r1983, label %L443, label %L444
L443:
    %r1984 = add i32 0,0
    store i32 %r1984, ptr %r0
    %r1985 = add i32 0,0
    store i32 %r1985, ptr %r2
    %r1986 = load i32, ptr %r1976
    store i32 %r1986, ptr %r4
    %r1987 = load i32, ptr %r1978
    store i32 %r1987, ptr %r6
    br label %L445
L444:
    %r2117 = load i32, ptr %r1976
    store i32 %r2117, ptr %r0
    %r2118 = load i32, ptr %r0
    store i32 %r2118, ptr %r1787
    %r2119 = load i32, ptr %r1789
    store i32 %r2119, ptr %r4
    %r2120 = add i32 0,1
    store i32 %r2120, ptr %r6
    %r2121 = load i32, ptr %r6
    %r2122 = add i32 0,15
    %r2123 = icmp sge i32 %r2121,%r2122
    br i1 %r2123, label %L472, label %L473
L445:
    %r1988 = load i32, ptr %r2
    %r1989 = add i32 0,16
    %r1990 = icmp slt i32 %r1988,%r1989
    br i1 %r1990, label %L446, label %L447
L446:
    %r1993 = load i32, ptr %r4
    %r1994 = add i32 0,2
    %r1995 = srem i32 %r1993,%r1994
    %r1996 = icmp ne i32 %r1995,0
    br i1 %r1996, label %L448, label %L449
L447:
    %r2031 = load i32, ptr %r0
    store i32 %r2031, ptr %r1980
    %r2032 = add i32 0,0
    store i32 %r2032, ptr %r0
    %r2033 = add i32 0,0
    store i32 %r2033, ptr %r2
    %r2034 = load i32, ptr %r1976
    store i32 %r2034, ptr %r4
    %r2035 = load i32, ptr %r1978
    store i32 %r2035, ptr %r6
    br label %L455
L448:
    %r1997 = load i32, ptr %r6
    %r1998 = add i32 0,2
    %r1999 = srem i32 %r1997,%r1998
    %r2000 = add i32 0,0
    %r2001 = icmp eq i32 %r1999,%r2000
    br i1 %r2001, label %L451, label %L452
L449:
    %r2011 = load i32, ptr %r6
    %r2012 = add i32 0,2
    %r2013 = srem i32 %r2011,%r2012
    %r2014 = icmp ne i32 %r2013,0
    br i1 %r2014, label %L453, label %L454
L450:
    %r2022 = load i32, ptr %r4
    %r2023 = add i32 0,2
    %r2024 = sdiv i32 %r2022,%r2023
    store i32 %r2024, ptr %r4
    %r2025 = load i32, ptr %r6
    %r2026 = add i32 0,2
    %r2027 = sdiv i32 %r2025,%r2026
    store i32 %r2027, ptr %r6
    %r2028 = load i32, ptr %r2
    %r2029 = add i32 0,1
    %r2030 = add i32 %r2028,%r2029
    store i32 %r2030, ptr %r2
    br label %L445
L451:
    %r2004 = load i32, ptr %r0
    %r2005 = add i32 0,1
    %r2006 = load i32, ptr %r2
    %r2007 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2006
    %r2008 = load i32, ptr %r2007
    %r2009 = mul i32 %r2005,%r2008
    %r2010 = add i32 %r2004,%r2009
    store i32 %r2010, ptr %r0
    br label %L452
L452:
    br label %L450
L453:
    %r2015 = load i32, ptr %r0
    %r2016 = add i32 0,1
    %r2017 = load i32, ptr %r2
    %r2018 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2017
    %r2019 = load i32, ptr %r2018
    %r2020 = mul i32 %r2016,%r2019
    %r2021 = add i32 %r2015,%r2020
    store i32 %r2021, ptr %r0
    br label %L454
L454:
    br label %L450
L455:
    %r2036 = load i32, ptr %r2
    %r2037 = add i32 0,16
    %r2038 = icmp slt i32 %r2036,%r2037
    br i1 %r2038, label %L456, label %L457
L456:
    %r2041 = load i32, ptr %r4
    %r2042 = add i32 0,2
    %r2043 = srem i32 %r2041,%r2042
    %r2044 = icmp ne i32 %r2043,0
    br i1 %r2044, label %L460, label %L459
L457:
    %r2068 = load i32, ptr %r0
    store i32 %r2068, ptr %r1978
    %r2069 = add i32 0,1
    %r2070 = add i32 0,15
    %r2071 = icmp sgt i32 %r2069,%r2070
    br i1 %r2071, label %L462, label %L463
L458:
    %r2052 = load i32, ptr %r0
    %r2053 = add i32 0,1
    %r2054 = load i32, ptr %r2
    %r2055 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2054
    %r2056 = load i32, ptr %r2055
    %r2057 = mul i32 %r2053,%r2056
    %r2058 = add i32 %r2052,%r2057
    store i32 %r2058, ptr %r0
    br label %L459
L459:
    %r2059 = load i32, ptr %r4
    %r2060 = add i32 0,2
    %r2061 = sdiv i32 %r2059,%r2060
    store i32 %r2061, ptr %r4
    %r2062 = load i32, ptr %r6
    %r2063 = add i32 0,2
    %r2064 = sdiv i32 %r2062,%r2063
    store i32 %r2064, ptr %r6
    %r2065 = load i32, ptr %r2
    %r2066 = add i32 0,1
    %r2067 = add i32 %r2065,%r2066
    store i32 %r2067, ptr %r2
    br label %L455
L460:
    %r2045 = load i32, ptr %r6
    %r2046 = add i32 0,2
    %r2047 = srem i32 %r2045,%r2046
    %r2048 = icmp ne i32 %r2047,0
    br i1 %r2048, label %L458, label %L459
L462:
    %r2074 = add i32 0,0
    store i32 %r2074, ptr %r0
    br label %L464
L463:
    %r2075 = add i32 0,0
    store i32 %r2075, ptr %r0
    %r2076 = add i32 0,0
    store i32 %r2076, ptr %r2
    %r2077 = load i32, ptr %r1978
    %r2078 = add i32 0,1
    %r2079 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2078
    %r2080 = load i32, ptr %r2079
    %r2081 = mul i32 %r2077,%r2080
    store i32 %r2081, ptr %r4
    %r2082 = add i32 0,65535
    store i32 %r2082, ptr %r6
    br label %L465
L464:
    %r2115 = load i32, ptr %r0
    store i32 %r2115, ptr %r1978
    %r2116 = load i32, ptr %r1980
    store i32 %r2116, ptr %r1976
    br label %L442
L465:
    %r2083 = load i32, ptr %r2
    %r2084 = add i32 0,16
    %r2085 = icmp slt i32 %r2083,%r2084
    br i1 %r2085, label %L466, label %L467
L466:
    %r2088 = load i32, ptr %r4
    %r2089 = add i32 0,2
    %r2090 = srem i32 %r2088,%r2089
    %r2091 = icmp ne i32 %r2090,0
    br i1 %r2091, label %L470, label %L469
L467:
    br label %L464
L468:
    %r2099 = load i32, ptr %r0
    %r2100 = add i32 0,1
    %r2101 = load i32, ptr %r2
    %r2102 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2101
    %r2103 = load i32, ptr %r2102
    %r2104 = mul i32 %r2100,%r2103
    %r2105 = add i32 %r2099,%r2104
    store i32 %r2105, ptr %r0
    br label %L469
L469:
    %r2106 = load i32, ptr %r4
    %r2107 = add i32 0,2
    %r2108 = sdiv i32 %r2106,%r2107
    store i32 %r2108, ptr %r4
    %r2109 = load i32, ptr %r6
    %r2110 = add i32 0,2
    %r2111 = sdiv i32 %r2109,%r2110
    store i32 %r2111, ptr %r6
    %r2112 = load i32, ptr %r2
    %r2113 = add i32 0,1
    %r2114 = add i32 %r2112,%r2113
    store i32 %r2114, ptr %r2
    br label %L465
L470:
    %r2092 = load i32, ptr %r6
    %r2093 = add i32 0,2
    %r2094 = srem i32 %r2092,%r2093
    %r2095 = icmp ne i32 %r2094,0
    br i1 %r2095, label %L468, label %L469
L472:
    %r2126 = load i32, ptr %r4
    %r2127 = add i32 0,0
    %r2128 = icmp slt i32 %r2126,%r2127
    br i1 %r2128, label %L475, label %L476
L473:
    %r2133 = load i32, ptr %r6
    %r2134 = add i32 0,0
    %r2135 = icmp sgt i32 %r2133,%r2134
    br i1 %r2135, label %L478, label %L479
L474:
    %r2165 = load i32, ptr %r0
    store i32 %r2165, ptr %r1789
    br label %L400
L475:
    %r2131 = add i32 0,65535
    store i32 %r2131, ptr %r0
    br label %L477
L476:
    %r2132 = add i32 0,0
    store i32 %r2132, ptr %r0
    br label %L477
L477:
    br label %L474
L478:
    %r2138 = load i32, ptr %r4
    %r2139 = add i32 0,32767
    %r2140 = icmp sgt i32 %r2138,%r2139
    br i1 %r2140, label %L481, label %L482
L479:
    %r2164 = load i32, ptr %r4
    store i32 %r2164, ptr %r0
    br label %L480
L480:
    br label %L474
L481:
    %r2143 = load i32, ptr %r4
    %r2144 = load i32, ptr %r6
    %r2145 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2144
    %r2146 = load i32, ptr %r2145
    %r2147 = sdiv i32 %r2143,%r2146
    store i32 %r2147, ptr %r4
    %r2148 = load i32, ptr %r4
    %r2149 = add i32 0,65536
    %r2150 = add i32 %r2148,%r2149
    %r2151 = add i32 0,15
    %r2152 = load i32, ptr %r6
    %r2153 = sub i32 %r2151,%r2152
    %r2154 = add i32 0,1
    %r2155 = add i32 %r2153,%r2154
    %r2156 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2155
    %r2157 = load i32, ptr %r2156
    %r2158 = sub i32 %r2150,%r2157
    store i32 %r2158, ptr %r0
    br label %L483
L482:
    %r2159 = load i32, ptr %r4
    %r2160 = load i32, ptr %r6
    %r2161 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2160
    %r2162 = load i32, ptr %r2161
    %r2163 = sdiv i32 %r2159,%r2162
    store i32 %r2163, ptr %r0
    br label %L483
L483:
    br label %L480
L484:
    %r2174 = load i32, ptr %r2170
    %r2175 = icmp ne i32 %r2174,0
    br i1 %r2175, label %L485, label %L486
L485:
    %r2176 = add i32 0,0
    store i32 %r2176, ptr %r0
    %r2177 = add i32 0,0
    store i32 %r2177, ptr %r2
    %r2178 = load i32, ptr %r2170
    store i32 %r2178, ptr %r4
    %r2179 = add i32 0,1
    store i32 %r2179, ptr %r6
    br label %L487
L486:
    %r2547 = load i32, ptr %r2172
    store i32 %r2547, ptr %r0
    %r2548 = load i32, ptr %r0
    store i32 %r2548, ptr %r1738
    %r2549 = load i32, ptr %r1740
    store i32 %r2549, ptr %r4
    %r2550 = add i32 0,1
    store i32 %r2550, ptr %r6
    %r2551 = load i32, ptr %r6
    %r2552 = add i32 0,15
    %r2553 = icmp sge i32 %r2551,%r2552
    br i1 %r2553, label %L568, label %L569
L487:
    %r2180 = load i32, ptr %r2
    %r2181 = add i32 0,16
    %r2182 = icmp slt i32 %r2180,%r2181
    br i1 %r2182, label %L488, label %L489
L488:
    %r2185 = load i32, ptr %r4
    %r2186 = add i32 0,2
    %r2187 = srem i32 %r2185,%r2186
    %r2188 = icmp ne i32 %r2187,0
    br i1 %r2188, label %L492, label %L491
L489:
    %r2212 = load i32, ptr %r0
    %r2213 = icmp ne i32 %r2212,0
    br i1 %r2213, label %L494, label %L495
L490:
    %r2196 = load i32, ptr %r0
    %r2197 = add i32 0,1
    %r2198 = load i32, ptr %r2
    %r2199 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2198
    %r2200 = load i32, ptr %r2199
    %r2201 = mul i32 %r2197,%r2200
    %r2202 = add i32 %r2196,%r2201
    store i32 %r2202, ptr %r0
    br label %L491
L491:
    %r2203 = load i32, ptr %r4
    %r2204 = add i32 0,2
    %r2205 = sdiv i32 %r2203,%r2204
    store i32 %r2205, ptr %r4
    %r2206 = load i32, ptr %r6
    %r2207 = add i32 0,2
    %r2208 = sdiv i32 %r2206,%r2207
    store i32 %r2208, ptr %r6
    %r2209 = load i32, ptr %r2
    %r2210 = add i32 0,1
    %r2211 = add i32 %r2209,%r2210
    store i32 %r2211, ptr %r2
    br label %L487
L492:
    %r2189 = load i32, ptr %r6
    %r2190 = add i32 0,2
    %r2191 = srem i32 %r2189,%r2190
    %r2192 = icmp ne i32 %r2191,0
    br i1 %r2192, label %L490, label %L491
L494:
    %r2215 = load i32, ptr %r2172
    store i32 %r2215, ptr %r2214
    %r2217 = load i32, ptr %r2168
    store i32 %r2217, ptr %r2216
    %r2219 = add i32 0,0
    store i32 %r2219, ptr %r2218
    br label %L496
L495:
    %r2358 = load i32, ptr %r2168
    store i32 %r2358, ptr %r2357
    %r2360 = load i32, ptr %r2168
    store i32 %r2360, ptr %r2359
    %r2362 = add i32 0,0
    store i32 %r2362, ptr %r2361
    br label %L526
L496:
    %r2220 = load i32, ptr %r2216
    %r2221 = icmp ne i32 %r2220,0
    br i1 %r2221, label %L497, label %L498
L497:
    %r2222 = add i32 0,0
    store i32 %r2222, ptr %r0
    %r2223 = add i32 0,0
    store i32 %r2223, ptr %r2
    %r2224 = load i32, ptr %r2214
    store i32 %r2224, ptr %r4
    %r2225 = load i32, ptr %r2216
    store i32 %r2225, ptr %r6
    br label %L499
L498:
    %r2355 = load i32, ptr %r2214
    store i32 %r2355, ptr %r0
    %r2356 = load i32, ptr %r0
    store i32 %r2356, ptr %r2172
    br label %L495
L499:
    %r2226 = load i32, ptr %r2
    %r2227 = add i32 0,16
    %r2228 = icmp slt i32 %r2226,%r2227
    br i1 %r2228, label %L500, label %L501
L500:
    %r2231 = load i32, ptr %r4
    %r2232 = add i32 0,2
    %r2233 = srem i32 %r2231,%r2232
    %r2234 = icmp ne i32 %r2233,0
    br i1 %r2234, label %L502, label %L503
L501:
    %r2269 = load i32, ptr %r0
    store i32 %r2269, ptr %r2218
    %r2270 = add i32 0,0
    store i32 %r2270, ptr %r0
    %r2271 = add i32 0,0
    store i32 %r2271, ptr %r2
    %r2272 = load i32, ptr %r2214
    store i32 %r2272, ptr %r4
    %r2273 = load i32, ptr %r2216
    store i32 %r2273, ptr %r6
    br label %L509
L502:
    %r2235 = load i32, ptr %r6
    %r2236 = add i32 0,2
    %r2237 = srem i32 %r2235,%r2236
    %r2238 = add i32 0,0
    %r2239 = icmp eq i32 %r2237,%r2238
    br i1 %r2239, label %L505, label %L506
L503:
    %r2249 = load i32, ptr %r6
    %r2250 = add i32 0,2
    %r2251 = srem i32 %r2249,%r2250
    %r2252 = icmp ne i32 %r2251,0
    br i1 %r2252, label %L507, label %L508
L504:
    %r2260 = load i32, ptr %r4
    %r2261 = add i32 0,2
    %r2262 = sdiv i32 %r2260,%r2261
    store i32 %r2262, ptr %r4
    %r2263 = load i32, ptr %r6
    %r2264 = add i32 0,2
    %r2265 = sdiv i32 %r2263,%r2264
    store i32 %r2265, ptr %r6
    %r2266 = load i32, ptr %r2
    %r2267 = add i32 0,1
    %r2268 = add i32 %r2266,%r2267
    store i32 %r2268, ptr %r2
    br label %L499
L505:
    %r2242 = load i32, ptr %r0
    %r2243 = add i32 0,1
    %r2244 = load i32, ptr %r2
    %r2245 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2244
    %r2246 = load i32, ptr %r2245
    %r2247 = mul i32 %r2243,%r2246
    %r2248 = add i32 %r2242,%r2247
    store i32 %r2248, ptr %r0
    br label %L506
L506:
    br label %L504
L507:
    %r2253 = load i32, ptr %r0
    %r2254 = add i32 0,1
    %r2255 = load i32, ptr %r2
    %r2256 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2255
    %r2257 = load i32, ptr %r2256
    %r2258 = mul i32 %r2254,%r2257
    %r2259 = add i32 %r2253,%r2258
    store i32 %r2259, ptr %r0
    br label %L508
L508:
    br label %L504
L509:
    %r2274 = load i32, ptr %r2
    %r2275 = add i32 0,16
    %r2276 = icmp slt i32 %r2274,%r2275
    br i1 %r2276, label %L510, label %L511
L510:
    %r2279 = load i32, ptr %r4
    %r2280 = add i32 0,2
    %r2281 = srem i32 %r2279,%r2280
    %r2282 = icmp ne i32 %r2281,0
    br i1 %r2282, label %L514, label %L513
L511:
    %r2306 = load i32, ptr %r0
    store i32 %r2306, ptr %r2216
    %r2307 = add i32 0,1
    %r2308 = add i32 0,15
    %r2309 = icmp sgt i32 %r2307,%r2308
    br i1 %r2309, label %L516, label %L517
L512:
    %r2290 = load i32, ptr %r0
    %r2291 = add i32 0,1
    %r2292 = load i32, ptr %r2
    %r2293 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2292
    %r2294 = load i32, ptr %r2293
    %r2295 = mul i32 %r2291,%r2294
    %r2296 = add i32 %r2290,%r2295
    store i32 %r2296, ptr %r0
    br label %L513
L513:
    %r2297 = load i32, ptr %r4
    %r2298 = add i32 0,2
    %r2299 = sdiv i32 %r2297,%r2298
    store i32 %r2299, ptr %r4
    %r2300 = load i32, ptr %r6
    %r2301 = add i32 0,2
    %r2302 = sdiv i32 %r2300,%r2301
    store i32 %r2302, ptr %r6
    %r2303 = load i32, ptr %r2
    %r2304 = add i32 0,1
    %r2305 = add i32 %r2303,%r2304
    store i32 %r2305, ptr %r2
    br label %L509
L514:
    %r2283 = load i32, ptr %r6
    %r2284 = add i32 0,2
    %r2285 = srem i32 %r2283,%r2284
    %r2286 = icmp ne i32 %r2285,0
    br i1 %r2286, label %L512, label %L513
L516:
    %r2312 = add i32 0,0
    store i32 %r2312, ptr %r0
    br label %L518
L517:
    %r2313 = add i32 0,0
    store i32 %r2313, ptr %r0
    %r2314 = add i32 0,0
    store i32 %r2314, ptr %r2
    %r2315 = load i32, ptr %r2216
    %r2316 = add i32 0,1
    %r2317 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2316
    %r2318 = load i32, ptr %r2317
    %r2319 = mul i32 %r2315,%r2318
    store i32 %r2319, ptr %r4
    %r2320 = add i32 0,65535
    store i32 %r2320, ptr %r6
    br label %L519
L518:
    %r2353 = load i32, ptr %r0
    store i32 %r2353, ptr %r2216
    %r2354 = load i32, ptr %r2218
    store i32 %r2354, ptr %r2214
    br label %L496
L519:
    %r2321 = load i32, ptr %r2
    %r2322 = add i32 0,16
    %r2323 = icmp slt i32 %r2321,%r2322
    br i1 %r2323, label %L520, label %L521
L520:
    %r2326 = load i32, ptr %r4
    %r2327 = add i32 0,2
    %r2328 = srem i32 %r2326,%r2327
    %r2329 = icmp ne i32 %r2328,0
    br i1 %r2329, label %L524, label %L523
L521:
    br label %L518
L522:
    %r2337 = load i32, ptr %r0
    %r2338 = add i32 0,1
    %r2339 = load i32, ptr %r2
    %r2340 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2339
    %r2341 = load i32, ptr %r2340
    %r2342 = mul i32 %r2338,%r2341
    %r2343 = add i32 %r2337,%r2342
    store i32 %r2343, ptr %r0
    br label %L523
L523:
    %r2344 = load i32, ptr %r4
    %r2345 = add i32 0,2
    %r2346 = sdiv i32 %r2344,%r2345
    store i32 %r2346, ptr %r4
    %r2347 = load i32, ptr %r6
    %r2348 = add i32 0,2
    %r2349 = sdiv i32 %r2347,%r2348
    store i32 %r2349, ptr %r6
    %r2350 = load i32, ptr %r2
    %r2351 = add i32 0,1
    %r2352 = add i32 %r2350,%r2351
    store i32 %r2352, ptr %r2
    br label %L519
L524:
    %r2330 = load i32, ptr %r6
    %r2331 = add i32 0,2
    %r2332 = srem i32 %r2330,%r2331
    %r2333 = icmp ne i32 %r2332,0
    br i1 %r2333, label %L522, label %L523
L526:
    %r2363 = load i32, ptr %r2359
    %r2364 = icmp ne i32 %r2363,0
    br i1 %r2364, label %L527, label %L528
L527:
    %r2365 = add i32 0,0
    store i32 %r2365, ptr %r0
    %r2366 = add i32 0,0
    store i32 %r2366, ptr %r2
    %r2367 = load i32, ptr %r2357
    store i32 %r2367, ptr %r4
    %r2368 = load i32, ptr %r2359
    store i32 %r2368, ptr %r6
    br label %L529
L528:
    %r2498 = load i32, ptr %r2357
    store i32 %r2498, ptr %r0
    %r2499 = load i32, ptr %r0
    store i32 %r2499, ptr %r2168
    %r2500 = load i32, ptr %r2170
    store i32 %r2500, ptr %r4
    %r2501 = add i32 0,1
    store i32 %r2501, ptr %r6
    %r2502 = load i32, ptr %r6
    %r2503 = add i32 0,15
    %r2504 = icmp sge i32 %r2502,%r2503
    br i1 %r2504, label %L556, label %L557
L529:
    %r2369 = load i32, ptr %r2
    %r2370 = add i32 0,16
    %r2371 = icmp slt i32 %r2369,%r2370
    br i1 %r2371, label %L530, label %L531
L530:
    %r2374 = load i32, ptr %r4
    %r2375 = add i32 0,2
    %r2376 = srem i32 %r2374,%r2375
    %r2377 = icmp ne i32 %r2376,0
    br i1 %r2377, label %L532, label %L533
L531:
    %r2412 = load i32, ptr %r0
    store i32 %r2412, ptr %r2361
    %r2413 = add i32 0,0
    store i32 %r2413, ptr %r0
    %r2414 = add i32 0,0
    store i32 %r2414, ptr %r2
    %r2415 = load i32, ptr %r2357
    store i32 %r2415, ptr %r4
    %r2416 = load i32, ptr %r2359
    store i32 %r2416, ptr %r6
    br label %L539
L532:
    %r2378 = load i32, ptr %r6
    %r2379 = add i32 0,2
    %r2380 = srem i32 %r2378,%r2379
    %r2381 = add i32 0,0
    %r2382 = icmp eq i32 %r2380,%r2381
    br i1 %r2382, label %L535, label %L536
L533:
    %r2392 = load i32, ptr %r6
    %r2393 = add i32 0,2
    %r2394 = srem i32 %r2392,%r2393
    %r2395 = icmp ne i32 %r2394,0
    br i1 %r2395, label %L537, label %L538
L534:
    %r2403 = load i32, ptr %r4
    %r2404 = add i32 0,2
    %r2405 = sdiv i32 %r2403,%r2404
    store i32 %r2405, ptr %r4
    %r2406 = load i32, ptr %r6
    %r2407 = add i32 0,2
    %r2408 = sdiv i32 %r2406,%r2407
    store i32 %r2408, ptr %r6
    %r2409 = load i32, ptr %r2
    %r2410 = add i32 0,1
    %r2411 = add i32 %r2409,%r2410
    store i32 %r2411, ptr %r2
    br label %L529
L535:
    %r2385 = load i32, ptr %r0
    %r2386 = add i32 0,1
    %r2387 = load i32, ptr %r2
    %r2388 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2387
    %r2389 = load i32, ptr %r2388
    %r2390 = mul i32 %r2386,%r2389
    %r2391 = add i32 %r2385,%r2390
    store i32 %r2391, ptr %r0
    br label %L536
L536:
    br label %L534
L537:
    %r2396 = load i32, ptr %r0
    %r2397 = add i32 0,1
    %r2398 = load i32, ptr %r2
    %r2399 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2398
    %r2400 = load i32, ptr %r2399
    %r2401 = mul i32 %r2397,%r2400
    %r2402 = add i32 %r2396,%r2401
    store i32 %r2402, ptr %r0
    br label %L538
L538:
    br label %L534
L539:
    %r2417 = load i32, ptr %r2
    %r2418 = add i32 0,16
    %r2419 = icmp slt i32 %r2417,%r2418
    br i1 %r2419, label %L540, label %L541
L540:
    %r2422 = load i32, ptr %r4
    %r2423 = add i32 0,2
    %r2424 = srem i32 %r2422,%r2423
    %r2425 = icmp ne i32 %r2424,0
    br i1 %r2425, label %L544, label %L543
L541:
    %r2449 = load i32, ptr %r0
    store i32 %r2449, ptr %r2359
    %r2450 = add i32 0,1
    %r2451 = add i32 0,15
    %r2452 = icmp sgt i32 %r2450,%r2451
    br i1 %r2452, label %L546, label %L547
L542:
    %r2433 = load i32, ptr %r0
    %r2434 = add i32 0,1
    %r2435 = load i32, ptr %r2
    %r2436 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2435
    %r2437 = load i32, ptr %r2436
    %r2438 = mul i32 %r2434,%r2437
    %r2439 = add i32 %r2433,%r2438
    store i32 %r2439, ptr %r0
    br label %L543
L543:
    %r2440 = load i32, ptr %r4
    %r2441 = add i32 0,2
    %r2442 = sdiv i32 %r2440,%r2441
    store i32 %r2442, ptr %r4
    %r2443 = load i32, ptr %r6
    %r2444 = add i32 0,2
    %r2445 = sdiv i32 %r2443,%r2444
    store i32 %r2445, ptr %r6
    %r2446 = load i32, ptr %r2
    %r2447 = add i32 0,1
    %r2448 = add i32 %r2446,%r2447
    store i32 %r2448, ptr %r2
    br label %L539
L544:
    %r2426 = load i32, ptr %r6
    %r2427 = add i32 0,2
    %r2428 = srem i32 %r2426,%r2427
    %r2429 = icmp ne i32 %r2428,0
    br i1 %r2429, label %L542, label %L543
L546:
    %r2455 = add i32 0,0
    store i32 %r2455, ptr %r0
    br label %L548
L547:
    %r2456 = add i32 0,0
    store i32 %r2456, ptr %r0
    %r2457 = add i32 0,0
    store i32 %r2457, ptr %r2
    %r2458 = load i32, ptr %r2359
    %r2459 = add i32 0,1
    %r2460 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2459
    %r2461 = load i32, ptr %r2460
    %r2462 = mul i32 %r2458,%r2461
    store i32 %r2462, ptr %r4
    %r2463 = add i32 0,65535
    store i32 %r2463, ptr %r6
    br label %L549
L548:
    %r2496 = load i32, ptr %r0
    store i32 %r2496, ptr %r2359
    %r2497 = load i32, ptr %r2361
    store i32 %r2497, ptr %r2357
    br label %L526
L549:
    %r2464 = load i32, ptr %r2
    %r2465 = add i32 0,16
    %r2466 = icmp slt i32 %r2464,%r2465
    br i1 %r2466, label %L550, label %L551
L550:
    %r2469 = load i32, ptr %r4
    %r2470 = add i32 0,2
    %r2471 = srem i32 %r2469,%r2470
    %r2472 = icmp ne i32 %r2471,0
    br i1 %r2472, label %L554, label %L553
L551:
    br label %L548
L552:
    %r2480 = load i32, ptr %r0
    %r2481 = add i32 0,1
    %r2482 = load i32, ptr %r2
    %r2483 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2482
    %r2484 = load i32, ptr %r2483
    %r2485 = mul i32 %r2481,%r2484
    %r2486 = add i32 %r2480,%r2485
    store i32 %r2486, ptr %r0
    br label %L553
L553:
    %r2487 = load i32, ptr %r4
    %r2488 = add i32 0,2
    %r2489 = sdiv i32 %r2487,%r2488
    store i32 %r2489, ptr %r4
    %r2490 = load i32, ptr %r6
    %r2491 = add i32 0,2
    %r2492 = sdiv i32 %r2490,%r2491
    store i32 %r2492, ptr %r6
    %r2493 = load i32, ptr %r2
    %r2494 = add i32 0,1
    %r2495 = add i32 %r2493,%r2494
    store i32 %r2495, ptr %r2
    br label %L549
L554:
    %r2473 = load i32, ptr %r6
    %r2474 = add i32 0,2
    %r2475 = srem i32 %r2473,%r2474
    %r2476 = icmp ne i32 %r2475,0
    br i1 %r2476, label %L552, label %L553
L556:
    %r2507 = load i32, ptr %r4
    %r2508 = add i32 0,0
    %r2509 = icmp slt i32 %r2507,%r2508
    br i1 %r2509, label %L559, label %L560
L557:
    %r2514 = load i32, ptr %r6
    %r2515 = add i32 0,0
    %r2516 = icmp sgt i32 %r2514,%r2515
    br i1 %r2516, label %L562, label %L563
L558:
    %r2546 = load i32, ptr %r0
    store i32 %r2546, ptr %r2170
    br label %L484
L559:
    %r2512 = add i32 0,65535
    store i32 %r2512, ptr %r0
    br label %L561
L560:
    %r2513 = add i32 0,0
    store i32 %r2513, ptr %r0
    br label %L561
L561:
    br label %L558
L562:
    %r2519 = load i32, ptr %r4
    %r2520 = add i32 0,32767
    %r2521 = icmp sgt i32 %r2519,%r2520
    br i1 %r2521, label %L565, label %L566
L563:
    %r2545 = load i32, ptr %r4
    store i32 %r2545, ptr %r0
    br label %L564
L564:
    br label %L558
L565:
    %r2524 = load i32, ptr %r4
    %r2525 = load i32, ptr %r6
    %r2526 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2525
    %r2527 = load i32, ptr %r2526
    %r2528 = sdiv i32 %r2524,%r2527
    store i32 %r2528, ptr %r4
    %r2529 = load i32, ptr %r4
    %r2530 = add i32 0,65536
    %r2531 = add i32 %r2529,%r2530
    %r2532 = add i32 0,15
    %r2533 = load i32, ptr %r6
    %r2534 = sub i32 %r2532,%r2533
    %r2535 = add i32 0,1
    %r2536 = add i32 %r2534,%r2535
    %r2537 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2536
    %r2538 = load i32, ptr %r2537
    %r2539 = sub i32 %r2531,%r2538
    store i32 %r2539, ptr %r0
    br label %L567
L566:
    %r2540 = load i32, ptr %r4
    %r2541 = load i32, ptr %r6
    %r2542 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2541
    %r2543 = load i32, ptr %r2542
    %r2544 = sdiv i32 %r2540,%r2543
    store i32 %r2544, ptr %r0
    br label %L567
L567:
    br label %L564
L568:
    %r2556 = load i32, ptr %r4
    %r2557 = add i32 0,0
    %r2558 = icmp slt i32 %r2556,%r2557
    br i1 %r2558, label %L571, label %L572
L569:
    %r2563 = load i32, ptr %r6
    %r2564 = add i32 0,0
    %r2565 = icmp sgt i32 %r2563,%r2564
    br i1 %r2565, label %L574, label %L575
L570:
    %r2595 = load i32, ptr %r0
    store i32 %r2595, ptr %r1740
    br label %L388
L571:
    %r2561 = add i32 0,65535
    store i32 %r2561, ptr %r0
    br label %L573
L572:
    %r2562 = add i32 0,0
    store i32 %r2562, ptr %r0
    br label %L573
L573:
    br label %L570
L574:
    %r2568 = load i32, ptr %r4
    %r2569 = add i32 0,32767
    %r2570 = icmp sgt i32 %r2568,%r2569
    br i1 %r2570, label %L577, label %L578
L575:
    %r2594 = load i32, ptr %r4
    store i32 %r2594, ptr %r0
    br label %L576
L576:
    br label %L570
L577:
    %r2573 = load i32, ptr %r4
    %r2574 = load i32, ptr %r6
    %r2575 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2574
    %r2576 = load i32, ptr %r2575
    %r2577 = sdiv i32 %r2573,%r2576
    store i32 %r2577, ptr %r4
    %r2578 = load i32, ptr %r4
    %r2579 = add i32 0,65536
    %r2580 = add i32 %r2578,%r2579
    %r2581 = add i32 0,15
    %r2582 = load i32, ptr %r6
    %r2583 = sub i32 %r2581,%r2582
    %r2584 = add i32 0,1
    %r2585 = add i32 %r2583,%r2584
    %r2586 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2585
    %r2587 = load i32, ptr %r2586
    %r2588 = sub i32 %r2580,%r2587
    store i32 %r2588, ptr %r0
    br label %L579
L578:
    %r2589 = load i32, ptr %r4
    %r2590 = load i32, ptr %r6
    %r2591 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2590
    %r2592 = load i32, ptr %r2591
    %r2593 = sdiv i32 %r2589,%r2592
    store i32 %r2593, ptr %r0
    br label %L579
L579:
    br label %L576
L580:
    %r2603 = load i32, ptr %r8
    %r2604 = add i32 0,16
    %r2605 = icmp slt i32 %r2603,%r2604
    br i1 %r2605, label %L581, label %L582
L581:
    %r2609 = add i32 0,2
    store i32 %r2609, ptr %r2608
    %r2611 = load i32, ptr %r8
    store i32 %r2611, ptr %r2610
    %r2613 = add i32 0,1
    store i32 %r2613, ptr %r2612
    br label %L583
L582:
    %r3478 = add i32 0,0
    ret i32 %r3478
L583:
    %r2614 = load i32, ptr %r2610
    %r2615 = add i32 0,0
    %r2616 = icmp sgt i32 %r2614,%r2615
    br i1 %r2616, label %L584, label %L585
L584:
    %r2619 = add i32 0,0
    store i32 %r2619, ptr %r0
    %r2620 = add i32 0,0
    store i32 %r2620, ptr %r2
    %r2621 = load i32, ptr %r2610
    store i32 %r2621, ptr %r4
    %r2622 = add i32 0,1
    store i32 %r2622, ptr %r6
    br label %L586
L585:
    %r3466 = load i32, ptr %r2612
    store i32 %r3466, ptr %r0
    %r3467 = load i32, ptr %r8
    %r3468 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3467
    %r3469 = load i32, ptr %r3468
    %r3470 = load i32, ptr %r0
    %r3471 = icmp ne i32 %r3469,%r3470
    br i1 %r3471, label %L775, label %L776
L586:
    %r2623 = load i32, ptr %r2
    %r2624 = add i32 0,16
    %r2625 = icmp slt i32 %r2623,%r2624
    br i1 %r2625, label %L587, label %L588
L587:
    %r2628 = load i32, ptr %r4
    %r2629 = add i32 0,2
    %r2630 = srem i32 %r2628,%r2629
    %r2631 = icmp ne i32 %r2630,0
    br i1 %r2631, label %L591, label %L590
L588:
    %r2655 = load i32, ptr %r0
    %r2656 = icmp ne i32 %r2655,0
    br i1 %r2656, label %L593, label %L594
L589:
    %r2639 = load i32, ptr %r0
    %r2640 = add i32 0,1
    %r2641 = load i32, ptr %r2
    %r2642 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2641
    %r2643 = load i32, ptr %r2642
    %r2644 = mul i32 %r2640,%r2643
    %r2645 = add i32 %r2639,%r2644
    store i32 %r2645, ptr %r0
    br label %L590
L590:
    %r2646 = load i32, ptr %r4
    %r2647 = add i32 0,2
    %r2648 = sdiv i32 %r2646,%r2647
    store i32 %r2648, ptr %r4
    %r2649 = load i32, ptr %r6
    %r2650 = add i32 0,2
    %r2651 = sdiv i32 %r2649,%r2650
    store i32 %r2651, ptr %r6
    %r2652 = load i32, ptr %r2
    %r2653 = add i32 0,1
    %r2654 = add i32 %r2652,%r2653
    store i32 %r2654, ptr %r2
    br label %L586
L591:
    %r2632 = load i32, ptr %r6
    %r2633 = add i32 0,2
    %r2634 = srem i32 %r2632,%r2633
    %r2635 = icmp ne i32 %r2634,0
    br i1 %r2635, label %L589, label %L590
L593:
    %r2658 = load i32, ptr %r2612
    store i32 %r2658, ptr %r2657
    %r2660 = load i32, ptr %r2608
    store i32 %r2660, ptr %r2659
    %r2662 = add i32 0,0
    store i32 %r2662, ptr %r2661
    br label %L595
L594:
    %r3039 = load i32, ptr %r2608
    store i32 %r3039, ptr %r3038
    %r3041 = load i32, ptr %r2608
    store i32 %r3041, ptr %r3040
    %r3043 = add i32 0,0
    store i32 %r3043, ptr %r3042
    br label %L679
L595:
    %r2663 = load i32, ptr %r2659
    %r2664 = icmp ne i32 %r2663,0
    br i1 %r2664, label %L596, label %L597
L596:
    %r2665 = add i32 0,0
    store i32 %r2665, ptr %r0
    %r2666 = add i32 0,0
    store i32 %r2666, ptr %r2
    %r2667 = load i32, ptr %r2659
    store i32 %r2667, ptr %r4
    %r2668 = add i32 0,1
    store i32 %r2668, ptr %r6
    br label %L598
L597:
    %r3036 = load i32, ptr %r2661
    store i32 %r3036, ptr %r0
    %r3037 = load i32, ptr %r0
    store i32 %r3037, ptr %r2612
    br label %L594
L598:
    %r2669 = load i32, ptr %r2
    %r2670 = add i32 0,16
    %r2671 = icmp slt i32 %r2669,%r2670
    br i1 %r2671, label %L599, label %L600
L599:
    %r2674 = load i32, ptr %r4
    %r2675 = add i32 0,2
    %r2676 = srem i32 %r2674,%r2675
    %r2677 = icmp ne i32 %r2676,0
    br i1 %r2677, label %L603, label %L602
L600:
    %r2701 = load i32, ptr %r0
    %r2702 = icmp ne i32 %r2701,0
    br i1 %r2702, label %L605, label %L606
L601:
    %r2685 = load i32, ptr %r0
    %r2686 = add i32 0,1
    %r2687 = load i32, ptr %r2
    %r2688 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2687
    %r2689 = load i32, ptr %r2688
    %r2690 = mul i32 %r2686,%r2689
    %r2691 = add i32 %r2685,%r2690
    store i32 %r2691, ptr %r0
    br label %L602
L602:
    %r2692 = load i32, ptr %r4
    %r2693 = add i32 0,2
    %r2694 = sdiv i32 %r2692,%r2693
    store i32 %r2694, ptr %r4
    %r2695 = load i32, ptr %r6
    %r2696 = add i32 0,2
    %r2697 = sdiv i32 %r2695,%r2696
    store i32 %r2697, ptr %r6
    %r2698 = load i32, ptr %r2
    %r2699 = add i32 0,1
    %r2700 = add i32 %r2698,%r2699
    store i32 %r2700, ptr %r2
    br label %L598
L603:
    %r2678 = load i32, ptr %r6
    %r2679 = add i32 0,2
    %r2680 = srem i32 %r2678,%r2679
    %r2681 = icmp ne i32 %r2680,0
    br i1 %r2681, label %L601, label %L602
L605:
    %r2704 = load i32, ptr %r2661
    store i32 %r2704, ptr %r2703
    %r2706 = load i32, ptr %r2657
    store i32 %r2706, ptr %r2705
    %r2708 = add i32 0,0
    store i32 %r2708, ptr %r2707
    br label %L607
L606:
    %r2847 = load i32, ptr %r2657
    store i32 %r2847, ptr %r2846
    %r2849 = load i32, ptr %r2657
    store i32 %r2849, ptr %r2848
    %r2851 = add i32 0,0
    store i32 %r2851, ptr %r2850
    br label %L637
L607:
    %r2709 = load i32, ptr %r2705
    %r2710 = icmp ne i32 %r2709,0
    br i1 %r2710, label %L608, label %L609
L608:
    %r2711 = add i32 0,0
    store i32 %r2711, ptr %r0
    %r2712 = add i32 0,0
    store i32 %r2712, ptr %r2
    %r2713 = load i32, ptr %r2703
    store i32 %r2713, ptr %r4
    %r2714 = load i32, ptr %r2705
    store i32 %r2714, ptr %r6
    br label %L610
L609:
    %r2844 = load i32, ptr %r2703
    store i32 %r2844, ptr %r0
    %r2845 = load i32, ptr %r0
    store i32 %r2845, ptr %r2661
    br label %L606
L610:
    %r2715 = load i32, ptr %r2
    %r2716 = add i32 0,16
    %r2717 = icmp slt i32 %r2715,%r2716
    br i1 %r2717, label %L611, label %L612
L611:
    %r2720 = load i32, ptr %r4
    %r2721 = add i32 0,2
    %r2722 = srem i32 %r2720,%r2721
    %r2723 = icmp ne i32 %r2722,0
    br i1 %r2723, label %L613, label %L614
L612:
    %r2758 = load i32, ptr %r0
    store i32 %r2758, ptr %r2707
    %r2759 = add i32 0,0
    store i32 %r2759, ptr %r0
    %r2760 = add i32 0,0
    store i32 %r2760, ptr %r2
    %r2761 = load i32, ptr %r2703
    store i32 %r2761, ptr %r4
    %r2762 = load i32, ptr %r2705
    store i32 %r2762, ptr %r6
    br label %L620
L613:
    %r2724 = load i32, ptr %r6
    %r2725 = add i32 0,2
    %r2726 = srem i32 %r2724,%r2725
    %r2727 = add i32 0,0
    %r2728 = icmp eq i32 %r2726,%r2727
    br i1 %r2728, label %L616, label %L617
L614:
    %r2738 = load i32, ptr %r6
    %r2739 = add i32 0,2
    %r2740 = srem i32 %r2738,%r2739
    %r2741 = icmp ne i32 %r2740,0
    br i1 %r2741, label %L618, label %L619
L615:
    %r2749 = load i32, ptr %r4
    %r2750 = add i32 0,2
    %r2751 = sdiv i32 %r2749,%r2750
    store i32 %r2751, ptr %r4
    %r2752 = load i32, ptr %r6
    %r2753 = add i32 0,2
    %r2754 = sdiv i32 %r2752,%r2753
    store i32 %r2754, ptr %r6
    %r2755 = load i32, ptr %r2
    %r2756 = add i32 0,1
    %r2757 = add i32 %r2755,%r2756
    store i32 %r2757, ptr %r2
    br label %L610
L616:
    %r2731 = load i32, ptr %r0
    %r2732 = add i32 0,1
    %r2733 = load i32, ptr %r2
    %r2734 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2733
    %r2735 = load i32, ptr %r2734
    %r2736 = mul i32 %r2732,%r2735
    %r2737 = add i32 %r2731,%r2736
    store i32 %r2737, ptr %r0
    br label %L617
L617:
    br label %L615
L618:
    %r2742 = load i32, ptr %r0
    %r2743 = add i32 0,1
    %r2744 = load i32, ptr %r2
    %r2745 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2744
    %r2746 = load i32, ptr %r2745
    %r2747 = mul i32 %r2743,%r2746
    %r2748 = add i32 %r2742,%r2747
    store i32 %r2748, ptr %r0
    br label %L619
L619:
    br label %L615
L620:
    %r2763 = load i32, ptr %r2
    %r2764 = add i32 0,16
    %r2765 = icmp slt i32 %r2763,%r2764
    br i1 %r2765, label %L621, label %L622
L621:
    %r2768 = load i32, ptr %r4
    %r2769 = add i32 0,2
    %r2770 = srem i32 %r2768,%r2769
    %r2771 = icmp ne i32 %r2770,0
    br i1 %r2771, label %L625, label %L624
L622:
    %r2795 = load i32, ptr %r0
    store i32 %r2795, ptr %r2705
    %r2796 = add i32 0,1
    %r2797 = add i32 0,15
    %r2798 = icmp sgt i32 %r2796,%r2797
    br i1 %r2798, label %L627, label %L628
L623:
    %r2779 = load i32, ptr %r0
    %r2780 = add i32 0,1
    %r2781 = load i32, ptr %r2
    %r2782 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2781
    %r2783 = load i32, ptr %r2782
    %r2784 = mul i32 %r2780,%r2783
    %r2785 = add i32 %r2779,%r2784
    store i32 %r2785, ptr %r0
    br label %L624
L624:
    %r2786 = load i32, ptr %r4
    %r2787 = add i32 0,2
    %r2788 = sdiv i32 %r2786,%r2787
    store i32 %r2788, ptr %r4
    %r2789 = load i32, ptr %r6
    %r2790 = add i32 0,2
    %r2791 = sdiv i32 %r2789,%r2790
    store i32 %r2791, ptr %r6
    %r2792 = load i32, ptr %r2
    %r2793 = add i32 0,1
    %r2794 = add i32 %r2792,%r2793
    store i32 %r2794, ptr %r2
    br label %L620
L625:
    %r2772 = load i32, ptr %r6
    %r2773 = add i32 0,2
    %r2774 = srem i32 %r2772,%r2773
    %r2775 = icmp ne i32 %r2774,0
    br i1 %r2775, label %L623, label %L624
L627:
    %r2801 = add i32 0,0
    store i32 %r2801, ptr %r0
    br label %L629
L628:
    %r2802 = add i32 0,0
    store i32 %r2802, ptr %r0
    %r2803 = add i32 0,0
    store i32 %r2803, ptr %r2
    %r2804 = load i32, ptr %r2705
    %r2805 = add i32 0,1
    %r2806 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2805
    %r2807 = load i32, ptr %r2806
    %r2808 = mul i32 %r2804,%r2807
    store i32 %r2808, ptr %r4
    %r2809 = add i32 0,65535
    store i32 %r2809, ptr %r6
    br label %L630
L629:
    %r2842 = load i32, ptr %r0
    store i32 %r2842, ptr %r2705
    %r2843 = load i32, ptr %r2707
    store i32 %r2843, ptr %r2703
    br label %L607
L630:
    %r2810 = load i32, ptr %r2
    %r2811 = add i32 0,16
    %r2812 = icmp slt i32 %r2810,%r2811
    br i1 %r2812, label %L631, label %L632
L631:
    %r2815 = load i32, ptr %r4
    %r2816 = add i32 0,2
    %r2817 = srem i32 %r2815,%r2816
    %r2818 = icmp ne i32 %r2817,0
    br i1 %r2818, label %L635, label %L634
L632:
    br label %L629
L633:
    %r2826 = load i32, ptr %r0
    %r2827 = add i32 0,1
    %r2828 = load i32, ptr %r2
    %r2829 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2828
    %r2830 = load i32, ptr %r2829
    %r2831 = mul i32 %r2827,%r2830
    %r2832 = add i32 %r2826,%r2831
    store i32 %r2832, ptr %r0
    br label %L634
L634:
    %r2833 = load i32, ptr %r4
    %r2834 = add i32 0,2
    %r2835 = sdiv i32 %r2833,%r2834
    store i32 %r2835, ptr %r4
    %r2836 = load i32, ptr %r6
    %r2837 = add i32 0,2
    %r2838 = sdiv i32 %r2836,%r2837
    store i32 %r2838, ptr %r6
    %r2839 = load i32, ptr %r2
    %r2840 = add i32 0,1
    %r2841 = add i32 %r2839,%r2840
    store i32 %r2841, ptr %r2
    br label %L630
L635:
    %r2819 = load i32, ptr %r6
    %r2820 = add i32 0,2
    %r2821 = srem i32 %r2819,%r2820
    %r2822 = icmp ne i32 %r2821,0
    br i1 %r2822, label %L633, label %L634
L637:
    %r2852 = load i32, ptr %r2848
    %r2853 = icmp ne i32 %r2852,0
    br i1 %r2853, label %L638, label %L639
L638:
    %r2854 = add i32 0,0
    store i32 %r2854, ptr %r0
    %r2855 = add i32 0,0
    store i32 %r2855, ptr %r2
    %r2856 = load i32, ptr %r2846
    store i32 %r2856, ptr %r4
    %r2857 = load i32, ptr %r2848
    store i32 %r2857, ptr %r6
    br label %L640
L639:
    %r2987 = load i32, ptr %r2846
    store i32 %r2987, ptr %r0
    %r2988 = load i32, ptr %r0
    store i32 %r2988, ptr %r2657
    %r2989 = load i32, ptr %r2659
    store i32 %r2989, ptr %r4
    %r2990 = add i32 0,1
    store i32 %r2990, ptr %r6
    %r2991 = load i32, ptr %r6
    %r2992 = add i32 0,15
    %r2993 = icmp sge i32 %r2991,%r2992
    br i1 %r2993, label %L667, label %L668
L640:
    %r2858 = load i32, ptr %r2
    %r2859 = add i32 0,16
    %r2860 = icmp slt i32 %r2858,%r2859
    br i1 %r2860, label %L641, label %L642
L641:
    %r2863 = load i32, ptr %r4
    %r2864 = add i32 0,2
    %r2865 = srem i32 %r2863,%r2864
    %r2866 = icmp ne i32 %r2865,0
    br i1 %r2866, label %L643, label %L644
L642:
    %r2901 = load i32, ptr %r0
    store i32 %r2901, ptr %r2850
    %r2902 = add i32 0,0
    store i32 %r2902, ptr %r0
    %r2903 = add i32 0,0
    store i32 %r2903, ptr %r2
    %r2904 = load i32, ptr %r2846
    store i32 %r2904, ptr %r4
    %r2905 = load i32, ptr %r2848
    store i32 %r2905, ptr %r6
    br label %L650
L643:
    %r2867 = load i32, ptr %r6
    %r2868 = add i32 0,2
    %r2869 = srem i32 %r2867,%r2868
    %r2870 = add i32 0,0
    %r2871 = icmp eq i32 %r2869,%r2870
    br i1 %r2871, label %L646, label %L647
L644:
    %r2881 = load i32, ptr %r6
    %r2882 = add i32 0,2
    %r2883 = srem i32 %r2881,%r2882
    %r2884 = icmp ne i32 %r2883,0
    br i1 %r2884, label %L648, label %L649
L645:
    %r2892 = load i32, ptr %r4
    %r2893 = add i32 0,2
    %r2894 = sdiv i32 %r2892,%r2893
    store i32 %r2894, ptr %r4
    %r2895 = load i32, ptr %r6
    %r2896 = add i32 0,2
    %r2897 = sdiv i32 %r2895,%r2896
    store i32 %r2897, ptr %r6
    %r2898 = load i32, ptr %r2
    %r2899 = add i32 0,1
    %r2900 = add i32 %r2898,%r2899
    store i32 %r2900, ptr %r2
    br label %L640
L646:
    %r2874 = load i32, ptr %r0
    %r2875 = add i32 0,1
    %r2876 = load i32, ptr %r2
    %r2877 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2876
    %r2878 = load i32, ptr %r2877
    %r2879 = mul i32 %r2875,%r2878
    %r2880 = add i32 %r2874,%r2879
    store i32 %r2880, ptr %r0
    br label %L647
L647:
    br label %L645
L648:
    %r2885 = load i32, ptr %r0
    %r2886 = add i32 0,1
    %r2887 = load i32, ptr %r2
    %r2888 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2887
    %r2889 = load i32, ptr %r2888
    %r2890 = mul i32 %r2886,%r2889
    %r2891 = add i32 %r2885,%r2890
    store i32 %r2891, ptr %r0
    br label %L649
L649:
    br label %L645
L650:
    %r2906 = load i32, ptr %r2
    %r2907 = add i32 0,16
    %r2908 = icmp slt i32 %r2906,%r2907
    br i1 %r2908, label %L651, label %L652
L651:
    %r2911 = load i32, ptr %r4
    %r2912 = add i32 0,2
    %r2913 = srem i32 %r2911,%r2912
    %r2914 = icmp ne i32 %r2913,0
    br i1 %r2914, label %L655, label %L654
L652:
    %r2938 = load i32, ptr %r0
    store i32 %r2938, ptr %r2848
    %r2939 = add i32 0,1
    %r2940 = add i32 0,15
    %r2941 = icmp sgt i32 %r2939,%r2940
    br i1 %r2941, label %L657, label %L658
L653:
    %r2922 = load i32, ptr %r0
    %r2923 = add i32 0,1
    %r2924 = load i32, ptr %r2
    %r2925 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2924
    %r2926 = load i32, ptr %r2925
    %r2927 = mul i32 %r2923,%r2926
    %r2928 = add i32 %r2922,%r2927
    store i32 %r2928, ptr %r0
    br label %L654
L654:
    %r2929 = load i32, ptr %r4
    %r2930 = add i32 0,2
    %r2931 = sdiv i32 %r2929,%r2930
    store i32 %r2931, ptr %r4
    %r2932 = load i32, ptr %r6
    %r2933 = add i32 0,2
    %r2934 = sdiv i32 %r2932,%r2933
    store i32 %r2934, ptr %r6
    %r2935 = load i32, ptr %r2
    %r2936 = add i32 0,1
    %r2937 = add i32 %r2935,%r2936
    store i32 %r2937, ptr %r2
    br label %L650
L655:
    %r2915 = load i32, ptr %r6
    %r2916 = add i32 0,2
    %r2917 = srem i32 %r2915,%r2916
    %r2918 = icmp ne i32 %r2917,0
    br i1 %r2918, label %L653, label %L654
L657:
    %r2944 = add i32 0,0
    store i32 %r2944, ptr %r0
    br label %L659
L658:
    %r2945 = add i32 0,0
    store i32 %r2945, ptr %r0
    %r2946 = add i32 0,0
    store i32 %r2946, ptr %r2
    %r2947 = load i32, ptr %r2848
    %r2948 = add i32 0,1
    %r2949 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2948
    %r2950 = load i32, ptr %r2949
    %r2951 = mul i32 %r2947,%r2950
    store i32 %r2951, ptr %r4
    %r2952 = add i32 0,65535
    store i32 %r2952, ptr %r6
    br label %L660
L659:
    %r2985 = load i32, ptr %r0
    store i32 %r2985, ptr %r2848
    %r2986 = load i32, ptr %r2850
    store i32 %r2986, ptr %r2846
    br label %L637
L660:
    %r2953 = load i32, ptr %r2
    %r2954 = add i32 0,16
    %r2955 = icmp slt i32 %r2953,%r2954
    br i1 %r2955, label %L661, label %L662
L661:
    %r2958 = load i32, ptr %r4
    %r2959 = add i32 0,2
    %r2960 = srem i32 %r2958,%r2959
    %r2961 = icmp ne i32 %r2960,0
    br i1 %r2961, label %L665, label %L664
L662:
    br label %L659
L663:
    %r2969 = load i32, ptr %r0
    %r2970 = add i32 0,1
    %r2971 = load i32, ptr %r2
    %r2972 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2971
    %r2973 = load i32, ptr %r2972
    %r2974 = mul i32 %r2970,%r2973
    %r2975 = add i32 %r2969,%r2974
    store i32 %r2975, ptr %r0
    br label %L664
L664:
    %r2976 = load i32, ptr %r4
    %r2977 = add i32 0,2
    %r2978 = sdiv i32 %r2976,%r2977
    store i32 %r2978, ptr %r4
    %r2979 = load i32, ptr %r6
    %r2980 = add i32 0,2
    %r2981 = sdiv i32 %r2979,%r2980
    store i32 %r2981, ptr %r6
    %r2982 = load i32, ptr %r2
    %r2983 = add i32 0,1
    %r2984 = add i32 %r2982,%r2983
    store i32 %r2984, ptr %r2
    br label %L660
L665:
    %r2962 = load i32, ptr %r6
    %r2963 = add i32 0,2
    %r2964 = srem i32 %r2962,%r2963
    %r2965 = icmp ne i32 %r2964,0
    br i1 %r2965, label %L663, label %L664
L667:
    %r2996 = load i32, ptr %r4
    %r2997 = add i32 0,0
    %r2998 = icmp slt i32 %r2996,%r2997
    br i1 %r2998, label %L670, label %L671
L668:
    %r3003 = load i32, ptr %r6
    %r3004 = add i32 0,0
    %r3005 = icmp sgt i32 %r3003,%r3004
    br i1 %r3005, label %L673, label %L674
L669:
    %r3035 = load i32, ptr %r0
    store i32 %r3035, ptr %r2659
    br label %L595
L670:
    %r3001 = add i32 0,65535
    store i32 %r3001, ptr %r0
    br label %L672
L671:
    %r3002 = add i32 0,0
    store i32 %r3002, ptr %r0
    br label %L672
L672:
    br label %L669
L673:
    %r3008 = load i32, ptr %r4
    %r3009 = add i32 0,32767
    %r3010 = icmp sgt i32 %r3008,%r3009
    br i1 %r3010, label %L676, label %L677
L674:
    %r3034 = load i32, ptr %r4
    store i32 %r3034, ptr %r0
    br label %L675
L675:
    br label %L669
L676:
    %r3013 = load i32, ptr %r4
    %r3014 = load i32, ptr %r6
    %r3015 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3014
    %r3016 = load i32, ptr %r3015
    %r3017 = sdiv i32 %r3013,%r3016
    store i32 %r3017, ptr %r4
    %r3018 = load i32, ptr %r4
    %r3019 = add i32 0,65536
    %r3020 = add i32 %r3018,%r3019
    %r3021 = add i32 0,15
    %r3022 = load i32, ptr %r6
    %r3023 = sub i32 %r3021,%r3022
    %r3024 = add i32 0,1
    %r3025 = add i32 %r3023,%r3024
    %r3026 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3025
    %r3027 = load i32, ptr %r3026
    %r3028 = sub i32 %r3020,%r3027
    store i32 %r3028, ptr %r0
    br label %L678
L677:
    %r3029 = load i32, ptr %r4
    %r3030 = load i32, ptr %r6
    %r3031 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3030
    %r3032 = load i32, ptr %r3031
    %r3033 = sdiv i32 %r3029,%r3032
    store i32 %r3033, ptr %r0
    br label %L678
L678:
    br label %L675
L679:
    %r3044 = load i32, ptr %r3040
    %r3045 = icmp ne i32 %r3044,0
    br i1 %r3045, label %L680, label %L681
L680:
    %r3046 = add i32 0,0
    store i32 %r3046, ptr %r0
    %r3047 = add i32 0,0
    store i32 %r3047, ptr %r2
    %r3048 = load i32, ptr %r3040
    store i32 %r3048, ptr %r4
    %r3049 = add i32 0,1
    store i32 %r3049, ptr %r6
    br label %L682
L681:
    %r3417 = load i32, ptr %r3042
    store i32 %r3417, ptr %r0
    %r3418 = load i32, ptr %r0
    store i32 %r3418, ptr %r2608
    %r3419 = load i32, ptr %r2610
    store i32 %r3419, ptr %r4
    %r3420 = add i32 0,1
    store i32 %r3420, ptr %r6
    %r3421 = load i32, ptr %r6
    %r3422 = add i32 0,15
    %r3423 = icmp sge i32 %r3421,%r3422
    br i1 %r3423, label %L763, label %L764
L682:
    %r3050 = load i32, ptr %r2
    %r3051 = add i32 0,16
    %r3052 = icmp slt i32 %r3050,%r3051
    br i1 %r3052, label %L683, label %L684
L683:
    %r3055 = load i32, ptr %r4
    %r3056 = add i32 0,2
    %r3057 = srem i32 %r3055,%r3056
    %r3058 = icmp ne i32 %r3057,0
    br i1 %r3058, label %L687, label %L686
L684:
    %r3082 = load i32, ptr %r0
    %r3083 = icmp ne i32 %r3082,0
    br i1 %r3083, label %L689, label %L690
L685:
    %r3066 = load i32, ptr %r0
    %r3067 = add i32 0,1
    %r3068 = load i32, ptr %r2
    %r3069 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3068
    %r3070 = load i32, ptr %r3069
    %r3071 = mul i32 %r3067,%r3070
    %r3072 = add i32 %r3066,%r3071
    store i32 %r3072, ptr %r0
    br label %L686
L686:
    %r3073 = load i32, ptr %r4
    %r3074 = add i32 0,2
    %r3075 = sdiv i32 %r3073,%r3074
    store i32 %r3075, ptr %r4
    %r3076 = load i32, ptr %r6
    %r3077 = add i32 0,2
    %r3078 = sdiv i32 %r3076,%r3077
    store i32 %r3078, ptr %r6
    %r3079 = load i32, ptr %r2
    %r3080 = add i32 0,1
    %r3081 = add i32 %r3079,%r3080
    store i32 %r3081, ptr %r2
    br label %L682
L687:
    %r3059 = load i32, ptr %r6
    %r3060 = add i32 0,2
    %r3061 = srem i32 %r3059,%r3060
    %r3062 = icmp ne i32 %r3061,0
    br i1 %r3062, label %L685, label %L686
L689:
    %r3085 = load i32, ptr %r3042
    store i32 %r3085, ptr %r3084
    %r3087 = load i32, ptr %r3038
    store i32 %r3087, ptr %r3086
    %r3089 = add i32 0,0
    store i32 %r3089, ptr %r3088
    br label %L691
L690:
    %r3228 = load i32, ptr %r3038
    store i32 %r3228, ptr %r3227
    %r3230 = load i32, ptr %r3038
    store i32 %r3230, ptr %r3229
    %r3232 = add i32 0,0
    store i32 %r3232, ptr %r3231
    br label %L721
L691:
    %r3090 = load i32, ptr %r3086
    %r3091 = icmp ne i32 %r3090,0
    br i1 %r3091, label %L692, label %L693
L692:
    %r3092 = add i32 0,0
    store i32 %r3092, ptr %r0
    %r3093 = add i32 0,0
    store i32 %r3093, ptr %r2
    %r3094 = load i32, ptr %r3084
    store i32 %r3094, ptr %r4
    %r3095 = load i32, ptr %r3086
    store i32 %r3095, ptr %r6
    br label %L694
L693:
    %r3225 = load i32, ptr %r3084
    store i32 %r3225, ptr %r0
    %r3226 = load i32, ptr %r0
    store i32 %r3226, ptr %r3042
    br label %L690
L694:
    %r3096 = load i32, ptr %r2
    %r3097 = add i32 0,16
    %r3098 = icmp slt i32 %r3096,%r3097
    br i1 %r3098, label %L695, label %L696
L695:
    %r3101 = load i32, ptr %r4
    %r3102 = add i32 0,2
    %r3103 = srem i32 %r3101,%r3102
    %r3104 = icmp ne i32 %r3103,0
    br i1 %r3104, label %L697, label %L698
L696:
    %r3139 = load i32, ptr %r0
    store i32 %r3139, ptr %r3088
    %r3140 = add i32 0,0
    store i32 %r3140, ptr %r0
    %r3141 = add i32 0,0
    store i32 %r3141, ptr %r2
    %r3142 = load i32, ptr %r3084
    store i32 %r3142, ptr %r4
    %r3143 = load i32, ptr %r3086
    store i32 %r3143, ptr %r6
    br label %L704
L697:
    %r3105 = load i32, ptr %r6
    %r3106 = add i32 0,2
    %r3107 = srem i32 %r3105,%r3106
    %r3108 = add i32 0,0
    %r3109 = icmp eq i32 %r3107,%r3108
    br i1 %r3109, label %L700, label %L701
L698:
    %r3119 = load i32, ptr %r6
    %r3120 = add i32 0,2
    %r3121 = srem i32 %r3119,%r3120
    %r3122 = icmp ne i32 %r3121,0
    br i1 %r3122, label %L702, label %L703
L699:
    %r3130 = load i32, ptr %r4
    %r3131 = add i32 0,2
    %r3132 = sdiv i32 %r3130,%r3131
    store i32 %r3132, ptr %r4
    %r3133 = load i32, ptr %r6
    %r3134 = add i32 0,2
    %r3135 = sdiv i32 %r3133,%r3134
    store i32 %r3135, ptr %r6
    %r3136 = load i32, ptr %r2
    %r3137 = add i32 0,1
    %r3138 = add i32 %r3136,%r3137
    store i32 %r3138, ptr %r2
    br label %L694
L700:
    %r3112 = load i32, ptr %r0
    %r3113 = add i32 0,1
    %r3114 = load i32, ptr %r2
    %r3115 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3114
    %r3116 = load i32, ptr %r3115
    %r3117 = mul i32 %r3113,%r3116
    %r3118 = add i32 %r3112,%r3117
    store i32 %r3118, ptr %r0
    br label %L701
L701:
    br label %L699
L702:
    %r3123 = load i32, ptr %r0
    %r3124 = add i32 0,1
    %r3125 = load i32, ptr %r2
    %r3126 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3125
    %r3127 = load i32, ptr %r3126
    %r3128 = mul i32 %r3124,%r3127
    %r3129 = add i32 %r3123,%r3128
    store i32 %r3129, ptr %r0
    br label %L703
L703:
    br label %L699
L704:
    %r3144 = load i32, ptr %r2
    %r3145 = add i32 0,16
    %r3146 = icmp slt i32 %r3144,%r3145
    br i1 %r3146, label %L705, label %L706
L705:
    %r3149 = load i32, ptr %r4
    %r3150 = add i32 0,2
    %r3151 = srem i32 %r3149,%r3150
    %r3152 = icmp ne i32 %r3151,0
    br i1 %r3152, label %L709, label %L708
L706:
    %r3176 = load i32, ptr %r0
    store i32 %r3176, ptr %r3086
    %r3177 = add i32 0,1
    %r3178 = add i32 0,15
    %r3179 = icmp sgt i32 %r3177,%r3178
    br i1 %r3179, label %L711, label %L712
L707:
    %r3160 = load i32, ptr %r0
    %r3161 = add i32 0,1
    %r3162 = load i32, ptr %r2
    %r3163 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3162
    %r3164 = load i32, ptr %r3163
    %r3165 = mul i32 %r3161,%r3164
    %r3166 = add i32 %r3160,%r3165
    store i32 %r3166, ptr %r0
    br label %L708
L708:
    %r3167 = load i32, ptr %r4
    %r3168 = add i32 0,2
    %r3169 = sdiv i32 %r3167,%r3168
    store i32 %r3169, ptr %r4
    %r3170 = load i32, ptr %r6
    %r3171 = add i32 0,2
    %r3172 = sdiv i32 %r3170,%r3171
    store i32 %r3172, ptr %r6
    %r3173 = load i32, ptr %r2
    %r3174 = add i32 0,1
    %r3175 = add i32 %r3173,%r3174
    store i32 %r3175, ptr %r2
    br label %L704
L709:
    %r3153 = load i32, ptr %r6
    %r3154 = add i32 0,2
    %r3155 = srem i32 %r3153,%r3154
    %r3156 = icmp ne i32 %r3155,0
    br i1 %r3156, label %L707, label %L708
L711:
    %r3182 = add i32 0,0
    store i32 %r3182, ptr %r0
    br label %L713
L712:
    %r3183 = add i32 0,0
    store i32 %r3183, ptr %r0
    %r3184 = add i32 0,0
    store i32 %r3184, ptr %r2
    %r3185 = load i32, ptr %r3086
    %r3186 = add i32 0,1
    %r3187 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3186
    %r3188 = load i32, ptr %r3187
    %r3189 = mul i32 %r3185,%r3188
    store i32 %r3189, ptr %r4
    %r3190 = add i32 0,65535
    store i32 %r3190, ptr %r6
    br label %L714
L713:
    %r3223 = load i32, ptr %r0
    store i32 %r3223, ptr %r3086
    %r3224 = load i32, ptr %r3088
    store i32 %r3224, ptr %r3084
    br label %L691
L714:
    %r3191 = load i32, ptr %r2
    %r3192 = add i32 0,16
    %r3193 = icmp slt i32 %r3191,%r3192
    br i1 %r3193, label %L715, label %L716
L715:
    %r3196 = load i32, ptr %r4
    %r3197 = add i32 0,2
    %r3198 = srem i32 %r3196,%r3197
    %r3199 = icmp ne i32 %r3198,0
    br i1 %r3199, label %L719, label %L718
L716:
    br label %L713
L717:
    %r3207 = load i32, ptr %r0
    %r3208 = add i32 0,1
    %r3209 = load i32, ptr %r2
    %r3210 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3209
    %r3211 = load i32, ptr %r3210
    %r3212 = mul i32 %r3208,%r3211
    %r3213 = add i32 %r3207,%r3212
    store i32 %r3213, ptr %r0
    br label %L718
L718:
    %r3214 = load i32, ptr %r4
    %r3215 = add i32 0,2
    %r3216 = sdiv i32 %r3214,%r3215
    store i32 %r3216, ptr %r4
    %r3217 = load i32, ptr %r6
    %r3218 = add i32 0,2
    %r3219 = sdiv i32 %r3217,%r3218
    store i32 %r3219, ptr %r6
    %r3220 = load i32, ptr %r2
    %r3221 = add i32 0,1
    %r3222 = add i32 %r3220,%r3221
    store i32 %r3222, ptr %r2
    br label %L714
L719:
    %r3200 = load i32, ptr %r6
    %r3201 = add i32 0,2
    %r3202 = srem i32 %r3200,%r3201
    %r3203 = icmp ne i32 %r3202,0
    br i1 %r3203, label %L717, label %L718
L721:
    %r3233 = load i32, ptr %r3229
    %r3234 = icmp ne i32 %r3233,0
    br i1 %r3234, label %L722, label %L723
L722:
    %r3235 = add i32 0,0
    store i32 %r3235, ptr %r0
    %r3236 = add i32 0,0
    store i32 %r3236, ptr %r2
    %r3237 = load i32, ptr %r3227
    store i32 %r3237, ptr %r4
    %r3238 = load i32, ptr %r3229
    store i32 %r3238, ptr %r6
    br label %L724
L723:
    %r3368 = load i32, ptr %r3227
    store i32 %r3368, ptr %r0
    %r3369 = load i32, ptr %r0
    store i32 %r3369, ptr %r3038
    %r3370 = load i32, ptr %r3040
    store i32 %r3370, ptr %r4
    %r3371 = add i32 0,1
    store i32 %r3371, ptr %r6
    %r3372 = load i32, ptr %r6
    %r3373 = add i32 0,15
    %r3374 = icmp sge i32 %r3372,%r3373
    br i1 %r3374, label %L751, label %L752
L724:
    %r3239 = load i32, ptr %r2
    %r3240 = add i32 0,16
    %r3241 = icmp slt i32 %r3239,%r3240
    br i1 %r3241, label %L725, label %L726
L725:
    %r3244 = load i32, ptr %r4
    %r3245 = add i32 0,2
    %r3246 = srem i32 %r3244,%r3245
    %r3247 = icmp ne i32 %r3246,0
    br i1 %r3247, label %L727, label %L728
L726:
    %r3282 = load i32, ptr %r0
    store i32 %r3282, ptr %r3231
    %r3283 = add i32 0,0
    store i32 %r3283, ptr %r0
    %r3284 = add i32 0,0
    store i32 %r3284, ptr %r2
    %r3285 = load i32, ptr %r3227
    store i32 %r3285, ptr %r4
    %r3286 = load i32, ptr %r3229
    store i32 %r3286, ptr %r6
    br label %L734
L727:
    %r3248 = load i32, ptr %r6
    %r3249 = add i32 0,2
    %r3250 = srem i32 %r3248,%r3249
    %r3251 = add i32 0,0
    %r3252 = icmp eq i32 %r3250,%r3251
    br i1 %r3252, label %L730, label %L731
L728:
    %r3262 = load i32, ptr %r6
    %r3263 = add i32 0,2
    %r3264 = srem i32 %r3262,%r3263
    %r3265 = icmp ne i32 %r3264,0
    br i1 %r3265, label %L732, label %L733
L729:
    %r3273 = load i32, ptr %r4
    %r3274 = add i32 0,2
    %r3275 = sdiv i32 %r3273,%r3274
    store i32 %r3275, ptr %r4
    %r3276 = load i32, ptr %r6
    %r3277 = add i32 0,2
    %r3278 = sdiv i32 %r3276,%r3277
    store i32 %r3278, ptr %r6
    %r3279 = load i32, ptr %r2
    %r3280 = add i32 0,1
    %r3281 = add i32 %r3279,%r3280
    store i32 %r3281, ptr %r2
    br label %L724
L730:
    %r3255 = load i32, ptr %r0
    %r3256 = add i32 0,1
    %r3257 = load i32, ptr %r2
    %r3258 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3257
    %r3259 = load i32, ptr %r3258
    %r3260 = mul i32 %r3256,%r3259
    %r3261 = add i32 %r3255,%r3260
    store i32 %r3261, ptr %r0
    br label %L731
L731:
    br label %L729
L732:
    %r3266 = load i32, ptr %r0
    %r3267 = add i32 0,1
    %r3268 = load i32, ptr %r2
    %r3269 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3268
    %r3270 = load i32, ptr %r3269
    %r3271 = mul i32 %r3267,%r3270
    %r3272 = add i32 %r3266,%r3271
    store i32 %r3272, ptr %r0
    br label %L733
L733:
    br label %L729
L734:
    %r3287 = load i32, ptr %r2
    %r3288 = add i32 0,16
    %r3289 = icmp slt i32 %r3287,%r3288
    br i1 %r3289, label %L735, label %L736
L735:
    %r3292 = load i32, ptr %r4
    %r3293 = add i32 0,2
    %r3294 = srem i32 %r3292,%r3293
    %r3295 = icmp ne i32 %r3294,0
    br i1 %r3295, label %L739, label %L738
L736:
    %r3319 = load i32, ptr %r0
    store i32 %r3319, ptr %r3229
    %r3320 = add i32 0,1
    %r3321 = add i32 0,15
    %r3322 = icmp sgt i32 %r3320,%r3321
    br i1 %r3322, label %L741, label %L742
L737:
    %r3303 = load i32, ptr %r0
    %r3304 = add i32 0,1
    %r3305 = load i32, ptr %r2
    %r3306 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3305
    %r3307 = load i32, ptr %r3306
    %r3308 = mul i32 %r3304,%r3307
    %r3309 = add i32 %r3303,%r3308
    store i32 %r3309, ptr %r0
    br label %L738
L738:
    %r3310 = load i32, ptr %r4
    %r3311 = add i32 0,2
    %r3312 = sdiv i32 %r3310,%r3311
    store i32 %r3312, ptr %r4
    %r3313 = load i32, ptr %r6
    %r3314 = add i32 0,2
    %r3315 = sdiv i32 %r3313,%r3314
    store i32 %r3315, ptr %r6
    %r3316 = load i32, ptr %r2
    %r3317 = add i32 0,1
    %r3318 = add i32 %r3316,%r3317
    store i32 %r3318, ptr %r2
    br label %L734
L739:
    %r3296 = load i32, ptr %r6
    %r3297 = add i32 0,2
    %r3298 = srem i32 %r3296,%r3297
    %r3299 = icmp ne i32 %r3298,0
    br i1 %r3299, label %L737, label %L738
L741:
    %r3325 = add i32 0,0
    store i32 %r3325, ptr %r0
    br label %L743
L742:
    %r3326 = add i32 0,0
    store i32 %r3326, ptr %r0
    %r3327 = add i32 0,0
    store i32 %r3327, ptr %r2
    %r3328 = load i32, ptr %r3229
    %r3329 = add i32 0,1
    %r3330 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3329
    %r3331 = load i32, ptr %r3330
    %r3332 = mul i32 %r3328,%r3331
    store i32 %r3332, ptr %r4
    %r3333 = add i32 0,65535
    store i32 %r3333, ptr %r6
    br label %L744
L743:
    %r3366 = load i32, ptr %r0
    store i32 %r3366, ptr %r3229
    %r3367 = load i32, ptr %r3231
    store i32 %r3367, ptr %r3227
    br label %L721
L744:
    %r3334 = load i32, ptr %r2
    %r3335 = add i32 0,16
    %r3336 = icmp slt i32 %r3334,%r3335
    br i1 %r3336, label %L745, label %L746
L745:
    %r3339 = load i32, ptr %r4
    %r3340 = add i32 0,2
    %r3341 = srem i32 %r3339,%r3340
    %r3342 = icmp ne i32 %r3341,0
    br i1 %r3342, label %L749, label %L748
L746:
    br label %L743
L747:
    %r3350 = load i32, ptr %r0
    %r3351 = add i32 0,1
    %r3352 = load i32, ptr %r2
    %r3353 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3352
    %r3354 = load i32, ptr %r3353
    %r3355 = mul i32 %r3351,%r3354
    %r3356 = add i32 %r3350,%r3355
    store i32 %r3356, ptr %r0
    br label %L748
L748:
    %r3357 = load i32, ptr %r4
    %r3358 = add i32 0,2
    %r3359 = sdiv i32 %r3357,%r3358
    store i32 %r3359, ptr %r4
    %r3360 = load i32, ptr %r6
    %r3361 = add i32 0,2
    %r3362 = sdiv i32 %r3360,%r3361
    store i32 %r3362, ptr %r6
    %r3363 = load i32, ptr %r2
    %r3364 = add i32 0,1
    %r3365 = add i32 %r3363,%r3364
    store i32 %r3365, ptr %r2
    br label %L744
L749:
    %r3343 = load i32, ptr %r6
    %r3344 = add i32 0,2
    %r3345 = srem i32 %r3343,%r3344
    %r3346 = icmp ne i32 %r3345,0
    br i1 %r3346, label %L747, label %L748
L751:
    %r3377 = load i32, ptr %r4
    %r3378 = add i32 0,0
    %r3379 = icmp slt i32 %r3377,%r3378
    br i1 %r3379, label %L754, label %L755
L752:
    %r3384 = load i32, ptr %r6
    %r3385 = add i32 0,0
    %r3386 = icmp sgt i32 %r3384,%r3385
    br i1 %r3386, label %L757, label %L758
L753:
    %r3416 = load i32, ptr %r0
    store i32 %r3416, ptr %r3040
    br label %L679
L754:
    %r3382 = add i32 0,65535
    store i32 %r3382, ptr %r0
    br label %L756
L755:
    %r3383 = add i32 0,0
    store i32 %r3383, ptr %r0
    br label %L756
L756:
    br label %L753
L757:
    %r3389 = load i32, ptr %r4
    %r3390 = add i32 0,32767
    %r3391 = icmp sgt i32 %r3389,%r3390
    br i1 %r3391, label %L760, label %L761
L758:
    %r3415 = load i32, ptr %r4
    store i32 %r3415, ptr %r0
    br label %L759
L759:
    br label %L753
L760:
    %r3394 = load i32, ptr %r4
    %r3395 = load i32, ptr %r6
    %r3396 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3395
    %r3397 = load i32, ptr %r3396
    %r3398 = sdiv i32 %r3394,%r3397
    store i32 %r3398, ptr %r4
    %r3399 = load i32, ptr %r4
    %r3400 = add i32 0,65536
    %r3401 = add i32 %r3399,%r3400
    %r3402 = add i32 0,15
    %r3403 = load i32, ptr %r6
    %r3404 = sub i32 %r3402,%r3403
    %r3405 = add i32 0,1
    %r3406 = add i32 %r3404,%r3405
    %r3407 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3406
    %r3408 = load i32, ptr %r3407
    %r3409 = sub i32 %r3401,%r3408
    store i32 %r3409, ptr %r0
    br label %L762
L761:
    %r3410 = load i32, ptr %r4
    %r3411 = load i32, ptr %r6
    %r3412 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3411
    %r3413 = load i32, ptr %r3412
    %r3414 = sdiv i32 %r3410,%r3413
    store i32 %r3414, ptr %r0
    br label %L762
L762:
    br label %L759
L763:
    %r3426 = load i32, ptr %r4
    %r3427 = add i32 0,0
    %r3428 = icmp slt i32 %r3426,%r3427
    br i1 %r3428, label %L766, label %L767
L764:
    %r3433 = load i32, ptr %r6
    %r3434 = add i32 0,0
    %r3435 = icmp sgt i32 %r3433,%r3434
    br i1 %r3435, label %L769, label %L770
L765:
    %r3465 = load i32, ptr %r0
    store i32 %r3465, ptr %r2610
    br label %L583
L766:
    %r3431 = add i32 0,65535
    store i32 %r3431, ptr %r0
    br label %L768
L767:
    %r3432 = add i32 0,0
    store i32 %r3432, ptr %r0
    br label %L768
L768:
    br label %L765
L769:
    %r3438 = load i32, ptr %r4
    %r3439 = add i32 0,32767
    %r3440 = icmp sgt i32 %r3438,%r3439
    br i1 %r3440, label %L772, label %L773
L770:
    %r3464 = load i32, ptr %r4
    store i32 %r3464, ptr %r0
    br label %L771
L771:
    br label %L765
L772:
    %r3443 = load i32, ptr %r4
    %r3444 = load i32, ptr %r6
    %r3445 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3444
    %r3446 = load i32, ptr %r3445
    %r3447 = sdiv i32 %r3443,%r3446
    store i32 %r3447, ptr %r4
    %r3448 = load i32, ptr %r4
    %r3449 = add i32 0,65536
    %r3450 = add i32 %r3448,%r3449
    %r3451 = add i32 0,15
    %r3452 = load i32, ptr %r6
    %r3453 = sub i32 %r3451,%r3452
    %r3454 = add i32 0,1
    %r3455 = add i32 %r3453,%r3454
    %r3456 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3455
    %r3457 = load i32, ptr %r3456
    %r3458 = sub i32 %r3450,%r3457
    store i32 %r3458, ptr %r0
    br label %L774
L773:
    %r3459 = load i32, ptr %r4
    %r3460 = load i32, ptr %r6
    %r3461 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3460
    %r3462 = load i32, ptr %r3461
    %r3463 = sdiv i32 %r3459,%r3462
    store i32 %r3463, ptr %r0
    br label %L774
L774:
    br label %L771
L775:
    %r3474 = add i32 0,1
    ret i32 %r3474
L776:
    %r3475 = load i32, ptr %r8
    %r3476 = add i32 0,1
    %r3477 = add i32 %r3475,%r3476
    store i32 %r3477, ptr %r8
    br label %L580
}
define i32 @main()
{
L0:
    %r0 = call i32 @long_func()
    ret i32 %r0
}
