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
@SHIFT_TABLE = global [16 x i32] [i32 1,i32 2,i32 4,i32 8,i32 16,i32 32,i32 64,i32 128,i32 256,i32 512,i32 1024,i32 2048,i32 4096,i32 8192,i32 16384,i32 32768]
define i32 @long_func()
{
L0:
    %r3580 = alloca i32
    %r3578 = alloca i32
    %r3576 = alloca i32
    %r3420 = alloca i32
    %r3418 = alloca i32
    %r3416 = alloca i32
    %r3369 = alloca i32
    %r3367 = alloca i32
    %r3365 = alloca i32
    %r3158 = alloca i32
    %r3156 = alloca i32
    %r3154 = alloca i32
    %r2998 = alloca i32
    %r2996 = alloca i32
    %r2994 = alloca i32
    %r2947 = alloca i32
    %r2945 = alloca i32
    %r2943 = alloca i32
    %r2893 = alloca i32
    %r2891 = alloca i32
    %r2889 = alloca i32
    %r2613 = alloca i32
    %r2611 = alloca i32
    %r2609 = alloca i32
    %r2453 = alloca i32
    %r2451 = alloca i32
    %r2449 = alloca i32
    %r2402 = alloca i32
    %r2400 = alloca i32
    %r2398 = alloca i32
    %r2191 = alloca i32
    %r2189 = alloca i32
    %r2187 = alloca i32
    %r2031 = alloca i32
    %r2029 = alloca i32
    %r2027 = alloca i32
    %r1980 = alloca i32
    %r1978 = alloca i32
    %r1976 = alloca i32
    %r1926 = alloca i32
    %r1924 = alloca i32
    %r1922 = alloca i32
    %r1654 = alloca i32
    %r1652 = alloca i32
    %r1650 = alloca i32
    %r1494 = alloca i32
    %r1492 = alloca i32
    %r1490 = alloca i32
    %r1443 = alloca i32
    %r1441 = alloca i32
    %r1439 = alloca i32
    %r1232 = alloca i32
    %r1230 = alloca i32
    %r1228 = alloca i32
    %r1072 = alloca i32
    %r1070 = alloca i32
    %r1068 = alloca i32
    %r1021 = alloca i32
    %r1019 = alloca i32
    %r1017 = alloca i32
    %r967 = alloca i32
    %r965 = alloca i32
    %r963 = alloca i32
    %r701 = alloca i32
    %r699 = alloca i32
    %r697 = alloca i32
    %r541 = alloca i32
    %r539 = alloca i32
    %r537 = alloca i32
    %r490 = alloca i32
    %r488 = alloca i32
    %r486 = alloca i32
    %r279 = alloca i32
    %r277 = alloca i32
    %r275 = alloca i32
    %r119 = alloca i32
    %r117 = alloca i32
    %r115 = alloca i32
    %r68 = alloca i32
    %r66 = alloca i32
    %r64 = alloca i32
    %r14 = alloca i32
    %r12 = alloca i32
    %r10 = alloca i32
    %r8 = alloca i32
    %r6 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
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
    %r16 = load i32, ptr %r12
    %r17 = add i32 0,0
    %r18 = icmp sgt i32 %r16,%r17
    br i1 %r18, label %L3, label %L5
L3:
    %r21 = add i32 0,0
    store i32 %r21, ptr %r0
    %r22 = add i32 0,0
    store i32 %r22, ptr %r2
    %r23 = load i32, ptr %r12
    store i32 %r23, ptr %r4
    %r24 = add i32 0,1
    store i32 %r24, ptr %r6
    %r25 = load i32, ptr %r2
    %r26 = add i32 0,16
    %r27 = icmp slt i32 %r25,%r26
    br i1 %r27, label %L7, label %L9
L4:
    %r955 = load i32, ptr %r12
    %r956 = add i32 0,0
    %r957 = icmp sgt i32 %r955,%r956
    br i1 %r957, label %L3, label %L5
L5:
    %r960 = load i32, ptr %r14
    store i32 %r960, ptr %r0
    %r961 = load i32, ptr %r0
    call void @putint(i32 %r961)
    %r962 = add i32 0,10
    call void @putch(i32 %r962)
    %r964 = add i32 0,2
    store i32 %r964, ptr %r963
    %r966 = add i32 0,1
    store i32 %r966, ptr %r965
    %r968 = add i32 0,1
    store i32 %r968, ptr %r967
    %r969 = load i32, ptr %r965
    %r970 = add i32 0,0
    %r971 = icmp sgt i32 %r969,%r970
    br i1 %r971, label %L217, label %L219
L7:
    %r30 = load i32, ptr %r4
    %r31 = add i32 0,2
    %r32 = srem i32 %r30,%r31
    %r33 = icmp ne i32 %r32,0
    br i1 %r33, label %L12, label %L11
L8:
    %r57 = load i32, ptr %r2
    %r58 = add i32 0,16
    %r59 = icmp slt i32 %r57,%r58
    br i1 %r59, label %L7, label %L9
L9:
    %r62 = load i32, ptr %r0
    %r63 = icmp ne i32 %r62,0
    br i1 %r63, label %L14, label %L15
L10:
    %r41 = load i32, ptr %r0
    %r42 = add i32 0,1
    %r43 = load i32, ptr %r2
    %r44 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r43
    %r45 = load i32, ptr %r44
    %r46 = mul i32 %r42,%r45
    %r47 = add i32 %r41,%r46
    store i32 %r47, ptr %r0
    br label %L11
L11:
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
    br label %L8
L12:
    %r34 = load i32, ptr %r6
    %r35 = add i32 0,2
    %r36 = srem i32 %r34,%r35
    %r37 = icmp ne i32 %r36,0
    br i1 %r37, label %L10, label %L11
L14:
    %r65 = load i32, ptr %r14
    store i32 %r65, ptr %r64
    %r67 = load i32, ptr %r10
    store i32 %r67, ptr %r66
    %r69 = add i32 0,0
    store i32 %r69, ptr %r68
    %r70 = load i32, ptr %r66
    %r71 = icmp ne i32 %r70,0
    br i1 %r71, label %L17, label %L19
L15:
    %r487 = load i32, ptr %r10
    store i32 %r487, ptr %r486
    %r489 = load i32, ptr %r10
    store i32 %r489, ptr %r488
    %r491 = add i32 0,0
    store i32 %r491, ptr %r490
    %r492 = load i32, ptr %r488
    %r493 = icmp ne i32 %r492,0
    br i1 %r493, label %L111, label %L113
L17:
    %r72 = add i32 0,0
    store i32 %r72, ptr %r0
    %r73 = add i32 0,0
    store i32 %r73, ptr %r2
    %r74 = load i32, ptr %r66
    store i32 %r74, ptr %r4
    %r75 = add i32 0,1
    store i32 %r75, ptr %r6
    %r76 = load i32, ptr %r2
    %r77 = add i32 0,16
    %r78 = icmp slt i32 %r76,%r77
    br i1 %r78, label %L21, label %L23
L18:
    %r482 = load i32, ptr %r66
    %r483 = icmp ne i32 %r482,0
    br i1 %r483, label %L17, label %L19
L19:
    %r484 = load i32, ptr %r68
    store i32 %r484, ptr %r0
    %r485 = load i32, ptr %r0
    store i32 %r485, ptr %r14
    br label %L15
L21:
    %r81 = load i32, ptr %r4
    %r82 = add i32 0,2
    %r83 = srem i32 %r81,%r82
    %r84 = icmp ne i32 %r83,0
    br i1 %r84, label %L26, label %L25
L22:
    %r108 = load i32, ptr %r2
    %r109 = add i32 0,16
    %r110 = icmp slt i32 %r108,%r109
    br i1 %r110, label %L21, label %L23
L23:
    %r113 = load i32, ptr %r0
    %r114 = icmp ne i32 %r113,0
    br i1 %r114, label %L28, label %L29
L24:
    %r92 = load i32, ptr %r0
    %r93 = add i32 0,1
    %r94 = load i32, ptr %r2
    %r95 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r94
    %r96 = load i32, ptr %r95
    %r97 = mul i32 %r93,%r96
    %r98 = add i32 %r92,%r97
    store i32 %r98, ptr %r0
    br label %L25
L25:
    %r99 = load i32, ptr %r4
    %r100 = add i32 0,2
    %r101 = sdiv i32 %r99,%r100
    store i32 %r101, ptr %r4
    %r102 = load i32, ptr %r6
    %r103 = add i32 0,2
    %r104 = sdiv i32 %r102,%r103
    store i32 %r104, ptr %r6
    %r105 = load i32, ptr %r2
    %r106 = add i32 0,1
    %r107 = add i32 %r105,%r106
    store i32 %r107, ptr %r2
    br label %L22
L26:
    %r85 = load i32, ptr %r6
    %r86 = add i32 0,2
    %r87 = srem i32 %r85,%r86
    %r88 = icmp ne i32 %r87,0
    br i1 %r88, label %L24, label %L25
L28:
    %r116 = load i32, ptr %r68
    store i32 %r116, ptr %r115
    %r118 = load i32, ptr %r64
    store i32 %r118, ptr %r117
    %r120 = add i32 0,0
    store i32 %r120, ptr %r119
    %r121 = load i32, ptr %r117
    %r122 = icmp ne i32 %r121,0
    br i1 %r122, label %L31, label %L33
L29:
    %r276 = load i32, ptr %r64
    store i32 %r276, ptr %r275
    %r278 = load i32, ptr %r64
    store i32 %r278, ptr %r277
    %r280 = add i32 0,0
    store i32 %r280, ptr %r279
    %r281 = load i32, ptr %r277
    %r282 = icmp ne i32 %r281,0
    br i1 %r282, label %L65, label %L67
L31:
    %r123 = add i32 0,0
    store i32 %r123, ptr %r0
    %r124 = add i32 0,0
    store i32 %r124, ptr %r2
    %r125 = load i32, ptr %r115
    store i32 %r125, ptr %r4
    %r126 = load i32, ptr %r117
    store i32 %r126, ptr %r6
    %r127 = load i32, ptr %r2
    %r128 = add i32 0,16
    %r129 = icmp slt i32 %r127,%r128
    br i1 %r129, label %L35, label %L37
L32:
    %r271 = load i32, ptr %r117
    %r272 = icmp ne i32 %r271,0
    br i1 %r272, label %L31, label %L33
L33:
    %r273 = load i32, ptr %r115
    store i32 %r273, ptr %r0
    %r274 = load i32, ptr %r0
    store i32 %r274, ptr %r68
    br label %L29
L35:
    %r132 = load i32, ptr %r4
    %r133 = add i32 0,2
    %r134 = srem i32 %r132,%r133
    %r135 = icmp ne i32 %r134,0
    br i1 %r135, label %L38, label %L39
L36:
    %r170 = load i32, ptr %r2
    %r171 = add i32 0,16
    %r172 = icmp slt i32 %r170,%r171
    br i1 %r172, label %L35, label %L37
L37:
    %r175 = load i32, ptr %r0
    store i32 %r175, ptr %r119
    %r176 = add i32 0,0
    store i32 %r176, ptr %r0
    %r177 = add i32 0,0
    store i32 %r177, ptr %r2
    %r178 = load i32, ptr %r115
    store i32 %r178, ptr %r4
    %r179 = load i32, ptr %r117
    store i32 %r179, ptr %r6
    %r180 = load i32, ptr %r2
    %r181 = add i32 0,16
    %r182 = icmp slt i32 %r180,%r181
    br i1 %r182, label %L46, label %L48
L38:
    %r136 = load i32, ptr %r6
    %r137 = add i32 0,2
    %r138 = srem i32 %r136,%r137
    %r139 = add i32 0,0
    %r140 = icmp eq i32 %r138,%r139
    br i1 %r140, label %L41, label %L42
L39:
    %r150 = load i32, ptr %r6
    %r151 = add i32 0,2
    %r152 = srem i32 %r150,%r151
    %r153 = icmp ne i32 %r152,0
    br i1 %r153, label %L43, label %L44
L40:
    %r161 = load i32, ptr %r4
    %r162 = add i32 0,2
    %r163 = sdiv i32 %r161,%r162
    store i32 %r163, ptr %r4
    %r164 = load i32, ptr %r6
    %r165 = add i32 0,2
    %r166 = sdiv i32 %r164,%r165
    store i32 %r166, ptr %r6
    %r167 = load i32, ptr %r2
    %r168 = add i32 0,1
    %r169 = add i32 %r167,%r168
    store i32 %r169, ptr %r2
    br label %L36
L41:
    %r143 = load i32, ptr %r0
    %r144 = add i32 0,1
    %r145 = load i32, ptr %r2
    %r146 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r145
    %r147 = load i32, ptr %r146
    %r148 = mul i32 %r144,%r147
    %r149 = add i32 %r143,%r148
    store i32 %r149, ptr %r0
    br label %L42
L42:
    br label %L40
L43:
    %r154 = load i32, ptr %r0
    %r155 = add i32 0,1
    %r156 = load i32, ptr %r2
    %r157 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r156
    %r158 = load i32, ptr %r157
    %r159 = mul i32 %r155,%r158
    %r160 = add i32 %r154,%r159
    store i32 %r160, ptr %r0
    br label %L44
L44:
    br label %L40
L46:
    %r185 = load i32, ptr %r4
    %r186 = add i32 0,2
    %r187 = srem i32 %r185,%r186
    %r188 = icmp ne i32 %r187,0
    br i1 %r188, label %L51, label %L50
L47:
    %r212 = load i32, ptr %r2
    %r213 = add i32 0,16
    %r214 = icmp slt i32 %r212,%r213
    br i1 %r214, label %L46, label %L48
L48:
    %r217 = load i32, ptr %r0
    store i32 %r217, ptr %r117
    %r218 = add i32 0,1
    %r219 = add i32 0,15
    %r220 = icmp sgt i32 %r218,%r219
    br i1 %r220, label %L53, label %L54
L49:
    %r196 = load i32, ptr %r0
    %r197 = add i32 0,1
    %r198 = load i32, ptr %r2
    %r199 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r198
    %r200 = load i32, ptr %r199
    %r201 = mul i32 %r197,%r200
    %r202 = add i32 %r196,%r201
    store i32 %r202, ptr %r0
    br label %L50
L50:
    %r203 = load i32, ptr %r4
    %r204 = add i32 0,2
    %r205 = sdiv i32 %r203,%r204
    store i32 %r205, ptr %r4
    %r206 = load i32, ptr %r6
    %r207 = add i32 0,2
    %r208 = sdiv i32 %r206,%r207
    store i32 %r208, ptr %r6
    %r209 = load i32, ptr %r2
    %r210 = add i32 0,1
    %r211 = add i32 %r209,%r210
    store i32 %r211, ptr %r2
    br label %L47
L51:
    %r189 = load i32, ptr %r6
    %r190 = add i32 0,2
    %r191 = srem i32 %r189,%r190
    %r192 = icmp ne i32 %r191,0
    br i1 %r192, label %L49, label %L50
L53:
    %r223 = add i32 0,0
    store i32 %r223, ptr %r0
    br label %L55
L54:
    %r224 = add i32 0,0
    store i32 %r224, ptr %r0
    %r225 = add i32 0,0
    store i32 %r225, ptr %r2
    %r226 = load i32, ptr %r117
    %r227 = add i32 0,1
    %r228 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r227
    %r229 = load i32, ptr %r228
    %r230 = mul i32 %r226,%r229
    store i32 %r230, ptr %r4
    %r231 = add i32 0,65535
    store i32 %r231, ptr %r6
    %r232 = load i32, ptr %r2
    %r233 = add i32 0,16
    %r234 = icmp slt i32 %r232,%r233
    br i1 %r234, label %L57, label %L59
L55:
    %r269 = load i32, ptr %r0
    store i32 %r269, ptr %r117
    %r270 = load i32, ptr %r119
    store i32 %r270, ptr %r115
    br label %L32
L57:
    %r237 = load i32, ptr %r4
    %r238 = add i32 0,2
    %r239 = srem i32 %r237,%r238
    %r240 = icmp ne i32 %r239,0
    br i1 %r240, label %L62, label %L61
L58:
    %r264 = load i32, ptr %r2
    %r265 = add i32 0,16
    %r266 = icmp slt i32 %r264,%r265
    br i1 %r266, label %L57, label %L59
L59:
    br label %L55
L60:
    %r248 = load i32, ptr %r0
    %r249 = add i32 0,1
    %r250 = load i32, ptr %r2
    %r251 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r250
    %r252 = load i32, ptr %r251
    %r253 = mul i32 %r249,%r252
    %r254 = add i32 %r248,%r253
    store i32 %r254, ptr %r0
    br label %L61
L61:
    %r255 = load i32, ptr %r4
    %r256 = add i32 0,2
    %r257 = sdiv i32 %r255,%r256
    store i32 %r257, ptr %r4
    %r258 = load i32, ptr %r6
    %r259 = add i32 0,2
    %r260 = sdiv i32 %r258,%r259
    store i32 %r260, ptr %r6
    %r261 = load i32, ptr %r2
    %r262 = add i32 0,1
    %r263 = add i32 %r261,%r262
    store i32 %r263, ptr %r2
    br label %L58
L62:
    %r241 = load i32, ptr %r6
    %r242 = add i32 0,2
    %r243 = srem i32 %r241,%r242
    %r244 = icmp ne i32 %r243,0
    br i1 %r244, label %L60, label %L61
L65:
    %r283 = add i32 0,0
    store i32 %r283, ptr %r0
    %r284 = add i32 0,0
    store i32 %r284, ptr %r2
    %r285 = load i32, ptr %r275
    store i32 %r285, ptr %r4
    %r286 = load i32, ptr %r277
    store i32 %r286, ptr %r6
    %r287 = load i32, ptr %r2
    %r288 = add i32 0,16
    %r289 = icmp slt i32 %r287,%r288
    br i1 %r289, label %L69, label %L71
L66:
    %r431 = load i32, ptr %r277
    %r432 = icmp ne i32 %r431,0
    br i1 %r432, label %L65, label %L67
L67:
    %r433 = load i32, ptr %r275
    store i32 %r433, ptr %r0
    %r434 = load i32, ptr %r0
    store i32 %r434, ptr %r64
    %r435 = load i32, ptr %r66
    store i32 %r435, ptr %r4
    %r436 = add i32 0,1
    store i32 %r436, ptr %r6
    %r437 = load i32, ptr %r6
    %r438 = add i32 0,15
    %r439 = icmp sge i32 %r437,%r438
    br i1 %r439, label %L98, label %L99
L69:
    %r292 = load i32, ptr %r4
    %r293 = add i32 0,2
    %r294 = srem i32 %r292,%r293
    %r295 = icmp ne i32 %r294,0
    br i1 %r295, label %L72, label %L73
L70:
    %r330 = load i32, ptr %r2
    %r331 = add i32 0,16
    %r332 = icmp slt i32 %r330,%r331
    br i1 %r332, label %L69, label %L71
L71:
    %r335 = load i32, ptr %r0
    store i32 %r335, ptr %r279
    %r336 = add i32 0,0
    store i32 %r336, ptr %r0
    %r337 = add i32 0,0
    store i32 %r337, ptr %r2
    %r338 = load i32, ptr %r275
    store i32 %r338, ptr %r4
    %r339 = load i32, ptr %r277
    store i32 %r339, ptr %r6
    %r340 = load i32, ptr %r2
    %r341 = add i32 0,16
    %r342 = icmp slt i32 %r340,%r341
    br i1 %r342, label %L80, label %L82
L72:
    %r296 = load i32, ptr %r6
    %r297 = add i32 0,2
    %r298 = srem i32 %r296,%r297
    %r299 = add i32 0,0
    %r300 = icmp eq i32 %r298,%r299
    br i1 %r300, label %L75, label %L76
L73:
    %r310 = load i32, ptr %r6
    %r311 = add i32 0,2
    %r312 = srem i32 %r310,%r311
    %r313 = icmp ne i32 %r312,0
    br i1 %r313, label %L77, label %L78
L74:
    %r321 = load i32, ptr %r4
    %r322 = add i32 0,2
    %r323 = sdiv i32 %r321,%r322
    store i32 %r323, ptr %r4
    %r324 = load i32, ptr %r6
    %r325 = add i32 0,2
    %r326 = sdiv i32 %r324,%r325
    store i32 %r326, ptr %r6
    %r327 = load i32, ptr %r2
    %r328 = add i32 0,1
    %r329 = add i32 %r327,%r328
    store i32 %r329, ptr %r2
    br label %L70
L75:
    %r303 = load i32, ptr %r0
    %r304 = add i32 0,1
    %r305 = load i32, ptr %r2
    %r306 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r305
    %r307 = load i32, ptr %r306
    %r308 = mul i32 %r304,%r307
    %r309 = add i32 %r303,%r308
    store i32 %r309, ptr %r0
    br label %L76
L76:
    br label %L74
L77:
    %r314 = load i32, ptr %r0
    %r315 = add i32 0,1
    %r316 = load i32, ptr %r2
    %r317 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r316
    %r318 = load i32, ptr %r317
    %r319 = mul i32 %r315,%r318
    %r320 = add i32 %r314,%r319
    store i32 %r320, ptr %r0
    br label %L78
L78:
    br label %L74
L80:
    %r345 = load i32, ptr %r4
    %r346 = add i32 0,2
    %r347 = srem i32 %r345,%r346
    %r348 = icmp ne i32 %r347,0
    br i1 %r348, label %L85, label %L84
L81:
    %r372 = load i32, ptr %r2
    %r373 = add i32 0,16
    %r374 = icmp slt i32 %r372,%r373
    br i1 %r374, label %L80, label %L82
L82:
    %r377 = load i32, ptr %r0
    store i32 %r377, ptr %r277
    %r378 = add i32 0,1
    %r379 = add i32 0,15
    %r380 = icmp sgt i32 %r378,%r379
    br i1 %r380, label %L87, label %L88
L83:
    %r356 = load i32, ptr %r0
    %r357 = add i32 0,1
    %r358 = load i32, ptr %r2
    %r359 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r358
    %r360 = load i32, ptr %r359
    %r361 = mul i32 %r357,%r360
    %r362 = add i32 %r356,%r361
    store i32 %r362, ptr %r0
    br label %L84
L84:
    %r363 = load i32, ptr %r4
    %r364 = add i32 0,2
    %r365 = sdiv i32 %r363,%r364
    store i32 %r365, ptr %r4
    %r366 = load i32, ptr %r6
    %r367 = add i32 0,2
    %r368 = sdiv i32 %r366,%r367
    store i32 %r368, ptr %r6
    %r369 = load i32, ptr %r2
    %r370 = add i32 0,1
    %r371 = add i32 %r369,%r370
    store i32 %r371, ptr %r2
    br label %L81
L85:
    %r349 = load i32, ptr %r6
    %r350 = add i32 0,2
    %r351 = srem i32 %r349,%r350
    %r352 = icmp ne i32 %r351,0
    br i1 %r352, label %L83, label %L84
L87:
    %r383 = add i32 0,0
    store i32 %r383, ptr %r0
    br label %L89
L88:
    %r384 = add i32 0,0
    store i32 %r384, ptr %r0
    %r385 = add i32 0,0
    store i32 %r385, ptr %r2
    %r386 = load i32, ptr %r277
    %r387 = add i32 0,1
    %r388 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r387
    %r389 = load i32, ptr %r388
    %r390 = mul i32 %r386,%r389
    store i32 %r390, ptr %r4
    %r391 = add i32 0,65535
    store i32 %r391, ptr %r6
    %r392 = load i32, ptr %r2
    %r393 = add i32 0,16
    %r394 = icmp slt i32 %r392,%r393
    br i1 %r394, label %L91, label %L93
L89:
    %r429 = load i32, ptr %r0
    store i32 %r429, ptr %r277
    %r430 = load i32, ptr %r279
    store i32 %r430, ptr %r275
    br label %L66
L91:
    %r397 = load i32, ptr %r4
    %r398 = add i32 0,2
    %r399 = srem i32 %r397,%r398
    %r400 = icmp ne i32 %r399,0
    br i1 %r400, label %L96, label %L95
L92:
    %r424 = load i32, ptr %r2
    %r425 = add i32 0,16
    %r426 = icmp slt i32 %r424,%r425
    br i1 %r426, label %L91, label %L93
L93:
    br label %L89
L94:
    %r408 = load i32, ptr %r0
    %r409 = add i32 0,1
    %r410 = load i32, ptr %r2
    %r411 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r410
    %r412 = load i32, ptr %r411
    %r413 = mul i32 %r409,%r412
    %r414 = add i32 %r408,%r413
    store i32 %r414, ptr %r0
    br label %L95
L95:
    %r415 = load i32, ptr %r4
    %r416 = add i32 0,2
    %r417 = sdiv i32 %r415,%r416
    store i32 %r417, ptr %r4
    %r418 = load i32, ptr %r6
    %r419 = add i32 0,2
    %r420 = sdiv i32 %r418,%r419
    store i32 %r420, ptr %r6
    %r421 = load i32, ptr %r2
    %r422 = add i32 0,1
    %r423 = add i32 %r421,%r422
    store i32 %r423, ptr %r2
    br label %L92
L96:
    %r401 = load i32, ptr %r6
    %r402 = add i32 0,2
    %r403 = srem i32 %r401,%r402
    %r404 = icmp ne i32 %r403,0
    br i1 %r404, label %L94, label %L95
L98:
    %r442 = load i32, ptr %r4
    %r443 = add i32 0,0
    %r444 = icmp slt i32 %r442,%r443
    br i1 %r444, label %L101, label %L102
L99:
    %r449 = load i32, ptr %r6
    %r450 = add i32 0,0
    %r451 = icmp sgt i32 %r449,%r450
    br i1 %r451, label %L104, label %L105
L100:
    %r481 = load i32, ptr %r0
    store i32 %r481, ptr %r66
    br label %L18
L101:
    %r447 = add i32 0,65535
    store i32 %r447, ptr %r0
    br label %L103
L102:
    %r448 = add i32 0,0
    store i32 %r448, ptr %r0
    br label %L103
L103:
    br label %L100
L104:
    %r454 = load i32, ptr %r4
    %r455 = add i32 0,32767
    %r456 = icmp sgt i32 %r454,%r455
    br i1 %r456, label %L107, label %L108
L105:
    %r480 = load i32, ptr %r4
    store i32 %r480, ptr %r0
    br label %L106
L106:
    br label %L100
L107:
    %r459 = load i32, ptr %r4
    %r460 = load i32, ptr %r6
    %r461 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r460
    %r462 = load i32, ptr %r461
    %r463 = sdiv i32 %r459,%r462
    store i32 %r463, ptr %r4
    %r464 = load i32, ptr %r4
    %r465 = add i32 0,65536
    %r466 = add i32 %r464,%r465
    %r467 = add i32 0,15
    %r468 = load i32, ptr %r6
    %r469 = sub i32 %r467,%r468
    %r470 = add i32 0,1
    %r471 = add i32 %r469,%r470
    %r472 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r471
    %r473 = load i32, ptr %r472
    %r474 = sub i32 %r466,%r473
    store i32 %r474, ptr %r0
    br label %L109
L108:
    %r475 = load i32, ptr %r4
    %r476 = load i32, ptr %r6
    %r477 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r476
    %r478 = load i32, ptr %r477
    %r479 = sdiv i32 %r475,%r478
    store i32 %r479, ptr %r0
    br label %L109
L109:
    br label %L106
L111:
    %r494 = add i32 0,0
    store i32 %r494, ptr %r0
    %r495 = add i32 0,0
    store i32 %r495, ptr %r2
    %r496 = load i32, ptr %r488
    store i32 %r496, ptr %r4
    %r497 = add i32 0,1
    store i32 %r497, ptr %r6
    %r498 = load i32, ptr %r2
    %r499 = add i32 0,16
    %r500 = icmp slt i32 %r498,%r499
    br i1 %r500, label %L115, label %L117
L112:
    %r904 = load i32, ptr %r488
    %r905 = icmp ne i32 %r904,0
    br i1 %r905, label %L111, label %L113
L113:
    %r906 = load i32, ptr %r490
    store i32 %r906, ptr %r0
    %r907 = load i32, ptr %r0
    store i32 %r907, ptr %r10
    %r908 = load i32, ptr %r12
    store i32 %r908, ptr %r4
    %r909 = add i32 0,1
    store i32 %r909, ptr %r6
    %r910 = load i32, ptr %r6
    %r911 = add i32 0,15
    %r912 = icmp sge i32 %r910,%r911
    br i1 %r912, label %L204, label %L205
L115:
    %r503 = load i32, ptr %r4
    %r504 = add i32 0,2
    %r505 = srem i32 %r503,%r504
    %r506 = icmp ne i32 %r505,0
    br i1 %r506, label %L120, label %L119
L116:
    %r530 = load i32, ptr %r2
    %r531 = add i32 0,16
    %r532 = icmp slt i32 %r530,%r531
    br i1 %r532, label %L115, label %L117
L117:
    %r535 = load i32, ptr %r0
    %r536 = icmp ne i32 %r535,0
    br i1 %r536, label %L122, label %L123
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
    %r521 = load i32, ptr %r4
    %r522 = add i32 0,2
    %r523 = sdiv i32 %r521,%r522
    store i32 %r523, ptr %r4
    %r524 = load i32, ptr %r6
    %r525 = add i32 0,2
    %r526 = sdiv i32 %r524,%r525
    store i32 %r526, ptr %r6
    %r527 = load i32, ptr %r2
    %r528 = add i32 0,1
    %r529 = add i32 %r527,%r528
    store i32 %r529, ptr %r2
    br label %L116
L120:
    %r507 = load i32, ptr %r6
    %r508 = add i32 0,2
    %r509 = srem i32 %r507,%r508
    %r510 = icmp ne i32 %r509,0
    br i1 %r510, label %L118, label %L119
L122:
    %r538 = load i32, ptr %r490
    store i32 %r538, ptr %r537
    %r540 = load i32, ptr %r486
    store i32 %r540, ptr %r539
    %r542 = add i32 0,0
    store i32 %r542, ptr %r541
    %r543 = load i32, ptr %r539
    %r544 = icmp ne i32 %r543,0
    br i1 %r544, label %L125, label %L127
L123:
    %r698 = load i32, ptr %r486
    store i32 %r698, ptr %r697
    %r700 = load i32, ptr %r486
    store i32 %r700, ptr %r699
    %r702 = add i32 0,0
    store i32 %r702, ptr %r701
    %r703 = load i32, ptr %r699
    %r704 = icmp ne i32 %r703,0
    br i1 %r704, label %L159, label %L161
L125:
    %r545 = add i32 0,0
    store i32 %r545, ptr %r0
    %r546 = add i32 0,0
    store i32 %r546, ptr %r2
    %r547 = load i32, ptr %r537
    store i32 %r547, ptr %r4
    %r548 = load i32, ptr %r539
    store i32 %r548, ptr %r6
    %r549 = load i32, ptr %r2
    %r550 = add i32 0,16
    %r551 = icmp slt i32 %r549,%r550
    br i1 %r551, label %L129, label %L131
L126:
    %r693 = load i32, ptr %r539
    %r694 = icmp ne i32 %r693,0
    br i1 %r694, label %L125, label %L127
L127:
    %r695 = load i32, ptr %r537
    store i32 %r695, ptr %r0
    %r696 = load i32, ptr %r0
    store i32 %r696, ptr %r490
    br label %L123
L129:
    %r554 = load i32, ptr %r4
    %r555 = add i32 0,2
    %r556 = srem i32 %r554,%r555
    %r557 = icmp ne i32 %r556,0
    br i1 %r557, label %L132, label %L133
L130:
    %r592 = load i32, ptr %r2
    %r593 = add i32 0,16
    %r594 = icmp slt i32 %r592,%r593
    br i1 %r594, label %L129, label %L131
L131:
    %r597 = load i32, ptr %r0
    store i32 %r597, ptr %r541
    %r598 = add i32 0,0
    store i32 %r598, ptr %r0
    %r599 = add i32 0,0
    store i32 %r599, ptr %r2
    %r600 = load i32, ptr %r537
    store i32 %r600, ptr %r4
    %r601 = load i32, ptr %r539
    store i32 %r601, ptr %r6
    %r602 = load i32, ptr %r2
    %r603 = add i32 0,16
    %r604 = icmp slt i32 %r602,%r603
    br i1 %r604, label %L140, label %L142
L132:
    %r558 = load i32, ptr %r6
    %r559 = add i32 0,2
    %r560 = srem i32 %r558,%r559
    %r561 = add i32 0,0
    %r562 = icmp eq i32 %r560,%r561
    br i1 %r562, label %L135, label %L136
L133:
    %r572 = load i32, ptr %r6
    %r573 = add i32 0,2
    %r574 = srem i32 %r572,%r573
    %r575 = icmp ne i32 %r574,0
    br i1 %r575, label %L137, label %L138
L134:
    %r583 = load i32, ptr %r4
    %r584 = add i32 0,2
    %r585 = sdiv i32 %r583,%r584
    store i32 %r585, ptr %r4
    %r586 = load i32, ptr %r6
    %r587 = add i32 0,2
    %r588 = sdiv i32 %r586,%r587
    store i32 %r588, ptr %r6
    %r589 = load i32, ptr %r2
    %r590 = add i32 0,1
    %r591 = add i32 %r589,%r590
    store i32 %r591, ptr %r2
    br label %L130
L135:
    %r565 = load i32, ptr %r0
    %r566 = add i32 0,1
    %r567 = load i32, ptr %r2
    %r568 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r567
    %r569 = load i32, ptr %r568
    %r570 = mul i32 %r566,%r569
    %r571 = add i32 %r565,%r570
    store i32 %r571, ptr %r0
    br label %L136
L136:
    br label %L134
L137:
    %r576 = load i32, ptr %r0
    %r577 = add i32 0,1
    %r578 = load i32, ptr %r2
    %r579 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r578
    %r580 = load i32, ptr %r579
    %r581 = mul i32 %r577,%r580
    %r582 = add i32 %r576,%r581
    store i32 %r582, ptr %r0
    br label %L138
L138:
    br label %L134
L140:
    %r607 = load i32, ptr %r4
    %r608 = add i32 0,2
    %r609 = srem i32 %r607,%r608
    %r610 = icmp ne i32 %r609,0
    br i1 %r610, label %L145, label %L144
L141:
    %r634 = load i32, ptr %r2
    %r635 = add i32 0,16
    %r636 = icmp slt i32 %r634,%r635
    br i1 %r636, label %L140, label %L142
L142:
    %r639 = load i32, ptr %r0
    store i32 %r639, ptr %r539
    %r640 = add i32 0,1
    %r641 = add i32 0,15
    %r642 = icmp sgt i32 %r640,%r641
    br i1 %r642, label %L147, label %L148
L143:
    %r618 = load i32, ptr %r0
    %r619 = add i32 0,1
    %r620 = load i32, ptr %r2
    %r621 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r620
    %r622 = load i32, ptr %r621
    %r623 = mul i32 %r619,%r622
    %r624 = add i32 %r618,%r623
    store i32 %r624, ptr %r0
    br label %L144
L144:
    %r625 = load i32, ptr %r4
    %r626 = add i32 0,2
    %r627 = sdiv i32 %r625,%r626
    store i32 %r627, ptr %r4
    %r628 = load i32, ptr %r6
    %r629 = add i32 0,2
    %r630 = sdiv i32 %r628,%r629
    store i32 %r630, ptr %r6
    %r631 = load i32, ptr %r2
    %r632 = add i32 0,1
    %r633 = add i32 %r631,%r632
    store i32 %r633, ptr %r2
    br label %L141
L145:
    %r611 = load i32, ptr %r6
    %r612 = add i32 0,2
    %r613 = srem i32 %r611,%r612
    %r614 = icmp ne i32 %r613,0
    br i1 %r614, label %L143, label %L144
L147:
    %r645 = add i32 0,0
    store i32 %r645, ptr %r0
    br label %L149
L148:
    %r646 = add i32 0,0
    store i32 %r646, ptr %r0
    %r647 = add i32 0,0
    store i32 %r647, ptr %r2
    %r648 = load i32, ptr %r539
    %r649 = add i32 0,1
    %r650 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r649
    %r651 = load i32, ptr %r650
    %r652 = mul i32 %r648,%r651
    store i32 %r652, ptr %r4
    %r653 = add i32 0,65535
    store i32 %r653, ptr %r6
    %r654 = load i32, ptr %r2
    %r655 = add i32 0,16
    %r656 = icmp slt i32 %r654,%r655
    br i1 %r656, label %L151, label %L153
L149:
    %r691 = load i32, ptr %r0
    store i32 %r691, ptr %r539
    %r692 = load i32, ptr %r541
    store i32 %r692, ptr %r537
    br label %L126
L151:
    %r659 = load i32, ptr %r4
    %r660 = add i32 0,2
    %r661 = srem i32 %r659,%r660
    %r662 = icmp ne i32 %r661,0
    br i1 %r662, label %L156, label %L155
L152:
    %r686 = load i32, ptr %r2
    %r687 = add i32 0,16
    %r688 = icmp slt i32 %r686,%r687
    br i1 %r688, label %L151, label %L153
L153:
    br label %L149
L154:
    %r670 = load i32, ptr %r0
    %r671 = add i32 0,1
    %r672 = load i32, ptr %r2
    %r673 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r672
    %r674 = load i32, ptr %r673
    %r675 = mul i32 %r671,%r674
    %r676 = add i32 %r670,%r675
    store i32 %r676, ptr %r0
    br label %L155
L155:
    %r677 = load i32, ptr %r4
    %r678 = add i32 0,2
    %r679 = sdiv i32 %r677,%r678
    store i32 %r679, ptr %r4
    %r680 = load i32, ptr %r6
    %r681 = add i32 0,2
    %r682 = sdiv i32 %r680,%r681
    store i32 %r682, ptr %r6
    %r683 = load i32, ptr %r2
    %r684 = add i32 0,1
    %r685 = add i32 %r683,%r684
    store i32 %r685, ptr %r2
    br label %L152
L156:
    %r663 = load i32, ptr %r6
    %r664 = add i32 0,2
    %r665 = srem i32 %r663,%r664
    %r666 = icmp ne i32 %r665,0
    br i1 %r666, label %L154, label %L155
L159:
    %r705 = add i32 0,0
    store i32 %r705, ptr %r0
    %r706 = add i32 0,0
    store i32 %r706, ptr %r2
    %r707 = load i32, ptr %r697
    store i32 %r707, ptr %r4
    %r708 = load i32, ptr %r699
    store i32 %r708, ptr %r6
    %r709 = load i32, ptr %r2
    %r710 = add i32 0,16
    %r711 = icmp slt i32 %r709,%r710
    br i1 %r711, label %L163, label %L165
L160:
    %r853 = load i32, ptr %r699
    %r854 = icmp ne i32 %r853,0
    br i1 %r854, label %L159, label %L161
L161:
    %r855 = load i32, ptr %r697
    store i32 %r855, ptr %r0
    %r856 = load i32, ptr %r0
    store i32 %r856, ptr %r486
    %r857 = load i32, ptr %r488
    store i32 %r857, ptr %r4
    %r858 = add i32 0,1
    store i32 %r858, ptr %r6
    %r859 = load i32, ptr %r6
    %r860 = add i32 0,15
    %r861 = icmp sge i32 %r859,%r860
    br i1 %r861, label %L192, label %L193
L163:
    %r714 = load i32, ptr %r4
    %r715 = add i32 0,2
    %r716 = srem i32 %r714,%r715
    %r717 = icmp ne i32 %r716,0
    br i1 %r717, label %L166, label %L167
L164:
    %r752 = load i32, ptr %r2
    %r753 = add i32 0,16
    %r754 = icmp slt i32 %r752,%r753
    br i1 %r754, label %L163, label %L165
L165:
    %r757 = load i32, ptr %r0
    store i32 %r757, ptr %r701
    %r758 = add i32 0,0
    store i32 %r758, ptr %r0
    %r759 = add i32 0,0
    store i32 %r759, ptr %r2
    %r760 = load i32, ptr %r697
    store i32 %r760, ptr %r4
    %r761 = load i32, ptr %r699
    store i32 %r761, ptr %r6
    %r762 = load i32, ptr %r2
    %r763 = add i32 0,16
    %r764 = icmp slt i32 %r762,%r763
    br i1 %r764, label %L174, label %L176
L166:
    %r718 = load i32, ptr %r6
    %r719 = add i32 0,2
    %r720 = srem i32 %r718,%r719
    %r721 = add i32 0,0
    %r722 = icmp eq i32 %r720,%r721
    br i1 %r722, label %L169, label %L170
L167:
    %r732 = load i32, ptr %r6
    %r733 = add i32 0,2
    %r734 = srem i32 %r732,%r733
    %r735 = icmp ne i32 %r734,0
    br i1 %r735, label %L171, label %L172
L168:
    %r743 = load i32, ptr %r4
    %r744 = add i32 0,2
    %r745 = sdiv i32 %r743,%r744
    store i32 %r745, ptr %r4
    %r746 = load i32, ptr %r6
    %r747 = add i32 0,2
    %r748 = sdiv i32 %r746,%r747
    store i32 %r748, ptr %r6
    %r749 = load i32, ptr %r2
    %r750 = add i32 0,1
    %r751 = add i32 %r749,%r750
    store i32 %r751, ptr %r2
    br label %L164
L169:
    %r725 = load i32, ptr %r0
    %r726 = add i32 0,1
    %r727 = load i32, ptr %r2
    %r728 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r727
    %r729 = load i32, ptr %r728
    %r730 = mul i32 %r726,%r729
    %r731 = add i32 %r725,%r730
    store i32 %r731, ptr %r0
    br label %L170
L170:
    br label %L168
L171:
    %r736 = load i32, ptr %r0
    %r737 = add i32 0,1
    %r738 = load i32, ptr %r2
    %r739 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r738
    %r740 = load i32, ptr %r739
    %r741 = mul i32 %r737,%r740
    %r742 = add i32 %r736,%r741
    store i32 %r742, ptr %r0
    br label %L172
L172:
    br label %L168
L174:
    %r767 = load i32, ptr %r4
    %r768 = add i32 0,2
    %r769 = srem i32 %r767,%r768
    %r770 = icmp ne i32 %r769,0
    br i1 %r770, label %L179, label %L178
L175:
    %r794 = load i32, ptr %r2
    %r795 = add i32 0,16
    %r796 = icmp slt i32 %r794,%r795
    br i1 %r796, label %L174, label %L176
L176:
    %r799 = load i32, ptr %r0
    store i32 %r799, ptr %r699
    %r800 = add i32 0,1
    %r801 = add i32 0,15
    %r802 = icmp sgt i32 %r800,%r801
    br i1 %r802, label %L181, label %L182
L177:
    %r778 = load i32, ptr %r0
    %r779 = add i32 0,1
    %r780 = load i32, ptr %r2
    %r781 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r780
    %r782 = load i32, ptr %r781
    %r783 = mul i32 %r779,%r782
    %r784 = add i32 %r778,%r783
    store i32 %r784, ptr %r0
    br label %L178
L178:
    %r785 = load i32, ptr %r4
    %r786 = add i32 0,2
    %r787 = sdiv i32 %r785,%r786
    store i32 %r787, ptr %r4
    %r788 = load i32, ptr %r6
    %r789 = add i32 0,2
    %r790 = sdiv i32 %r788,%r789
    store i32 %r790, ptr %r6
    %r791 = load i32, ptr %r2
    %r792 = add i32 0,1
    %r793 = add i32 %r791,%r792
    store i32 %r793, ptr %r2
    br label %L175
L179:
    %r771 = load i32, ptr %r6
    %r772 = add i32 0,2
    %r773 = srem i32 %r771,%r772
    %r774 = icmp ne i32 %r773,0
    br i1 %r774, label %L177, label %L178
L181:
    %r805 = add i32 0,0
    store i32 %r805, ptr %r0
    br label %L183
L182:
    %r806 = add i32 0,0
    store i32 %r806, ptr %r0
    %r807 = add i32 0,0
    store i32 %r807, ptr %r2
    %r808 = load i32, ptr %r699
    %r809 = add i32 0,1
    %r810 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r809
    %r811 = load i32, ptr %r810
    %r812 = mul i32 %r808,%r811
    store i32 %r812, ptr %r4
    %r813 = add i32 0,65535
    store i32 %r813, ptr %r6
    %r814 = load i32, ptr %r2
    %r815 = add i32 0,16
    %r816 = icmp slt i32 %r814,%r815
    br i1 %r816, label %L185, label %L187
L183:
    %r851 = load i32, ptr %r0
    store i32 %r851, ptr %r699
    %r852 = load i32, ptr %r701
    store i32 %r852, ptr %r697
    br label %L160
L185:
    %r819 = load i32, ptr %r4
    %r820 = add i32 0,2
    %r821 = srem i32 %r819,%r820
    %r822 = icmp ne i32 %r821,0
    br i1 %r822, label %L190, label %L189
L186:
    %r846 = load i32, ptr %r2
    %r847 = add i32 0,16
    %r848 = icmp slt i32 %r846,%r847
    br i1 %r848, label %L185, label %L187
L187:
    br label %L183
L188:
    %r830 = load i32, ptr %r0
    %r831 = add i32 0,1
    %r832 = load i32, ptr %r2
    %r833 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r832
    %r834 = load i32, ptr %r833
    %r835 = mul i32 %r831,%r834
    %r836 = add i32 %r830,%r835
    store i32 %r836, ptr %r0
    br label %L189
L189:
    %r837 = load i32, ptr %r4
    %r838 = add i32 0,2
    %r839 = sdiv i32 %r837,%r838
    store i32 %r839, ptr %r4
    %r840 = load i32, ptr %r6
    %r841 = add i32 0,2
    %r842 = sdiv i32 %r840,%r841
    store i32 %r842, ptr %r6
    %r843 = load i32, ptr %r2
    %r844 = add i32 0,1
    %r845 = add i32 %r843,%r844
    store i32 %r845, ptr %r2
    br label %L186
L190:
    %r823 = load i32, ptr %r6
    %r824 = add i32 0,2
    %r825 = srem i32 %r823,%r824
    %r826 = icmp ne i32 %r825,0
    br i1 %r826, label %L188, label %L189
L192:
    %r864 = load i32, ptr %r4
    %r865 = add i32 0,0
    %r866 = icmp slt i32 %r864,%r865
    br i1 %r866, label %L195, label %L196
L193:
    %r871 = load i32, ptr %r6
    %r872 = add i32 0,0
    %r873 = icmp sgt i32 %r871,%r872
    br i1 %r873, label %L198, label %L199
L194:
    %r903 = load i32, ptr %r0
    store i32 %r903, ptr %r488
    br label %L112
L195:
    %r869 = add i32 0,65535
    store i32 %r869, ptr %r0
    br label %L197
L196:
    %r870 = add i32 0,0
    store i32 %r870, ptr %r0
    br label %L197
L197:
    br label %L194
L198:
    %r876 = load i32, ptr %r4
    %r877 = add i32 0,32767
    %r878 = icmp sgt i32 %r876,%r877
    br i1 %r878, label %L201, label %L202
L199:
    %r902 = load i32, ptr %r4
    store i32 %r902, ptr %r0
    br label %L200
L200:
    br label %L194
L201:
    %r881 = load i32, ptr %r4
    %r882 = load i32, ptr %r6
    %r883 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r882
    %r884 = load i32, ptr %r883
    %r885 = sdiv i32 %r881,%r884
    store i32 %r885, ptr %r4
    %r886 = load i32, ptr %r4
    %r887 = add i32 0,65536
    %r888 = add i32 %r886,%r887
    %r889 = add i32 0,15
    %r890 = load i32, ptr %r6
    %r891 = sub i32 %r889,%r890
    %r892 = add i32 0,1
    %r893 = add i32 %r891,%r892
    %r894 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r893
    %r895 = load i32, ptr %r894
    %r896 = sub i32 %r888,%r895
    store i32 %r896, ptr %r0
    br label %L203
L202:
    %r897 = load i32, ptr %r4
    %r898 = load i32, ptr %r6
    %r899 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r898
    %r900 = load i32, ptr %r899
    %r901 = sdiv i32 %r897,%r900
    store i32 %r901, ptr %r0
    br label %L203
L203:
    br label %L200
L204:
    %r915 = load i32, ptr %r4
    %r916 = add i32 0,0
    %r917 = icmp slt i32 %r915,%r916
    br i1 %r917, label %L207, label %L208
L205:
    %r922 = load i32, ptr %r6
    %r923 = add i32 0,0
    %r924 = icmp sgt i32 %r922,%r923
    br i1 %r924, label %L210, label %L211
L206:
    %r954 = load i32, ptr %r0
    store i32 %r954, ptr %r12
    br label %L4
L207:
    %r920 = add i32 0,65535
    store i32 %r920, ptr %r0
    br label %L209
L208:
    %r921 = add i32 0,0
    store i32 %r921, ptr %r0
    br label %L209
L209:
    br label %L206
L210:
    %r927 = load i32, ptr %r4
    %r928 = add i32 0,32767
    %r929 = icmp sgt i32 %r927,%r928
    br i1 %r929, label %L213, label %L214
L211:
    %r953 = load i32, ptr %r4
    store i32 %r953, ptr %r0
    br label %L212
L212:
    br label %L206
L213:
    %r932 = load i32, ptr %r4
    %r933 = load i32, ptr %r6
    %r934 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r933
    %r935 = load i32, ptr %r934
    %r936 = sdiv i32 %r932,%r935
    store i32 %r936, ptr %r4
    %r937 = load i32, ptr %r4
    %r938 = add i32 0,65536
    %r939 = add i32 %r937,%r938
    %r940 = add i32 0,15
    %r941 = load i32, ptr %r6
    %r942 = sub i32 %r940,%r941
    %r943 = add i32 0,1
    %r944 = add i32 %r942,%r943
    %r945 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r944
    %r946 = load i32, ptr %r945
    %r947 = sub i32 %r939,%r946
    store i32 %r947, ptr %r0
    br label %L215
L214:
    %r948 = load i32, ptr %r4
    %r949 = load i32, ptr %r6
    %r950 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r949
    %r951 = load i32, ptr %r950
    %r952 = sdiv i32 %r948,%r951
    store i32 %r952, ptr %r0
    br label %L215
L215:
    br label %L212
L217:
    %r974 = add i32 0,0
    store i32 %r974, ptr %r0
    %r975 = add i32 0,0
    store i32 %r975, ptr %r2
    %r976 = load i32, ptr %r965
    store i32 %r976, ptr %r4
    %r977 = add i32 0,1
    store i32 %r977, ptr %r6
    %r978 = load i32, ptr %r2
    %r979 = add i32 0,16
    %r980 = icmp slt i32 %r978,%r979
    br i1 %r980, label %L221, label %L223
L218:
    %r1908 = load i32, ptr %r965
    %r1909 = add i32 0,0
    %r1910 = icmp sgt i32 %r1908,%r1909
    br i1 %r1910, label %L217, label %L219
L219:
    %r1913 = load i32, ptr %r967
    store i32 %r1913, ptr %r0
    %r1914 = load i32, ptr %r0
    call void @putint(i32 %r1914)
    %r1915 = add i32 0,10
    call void @putch(i32 %r1915)
    %r1916 = add i32 0,2
    store i32 %r1916, ptr %r8
    %r1917 = load i32, ptr %r8
    %r1918 = add i32 0,16
    %r1919 = icmp slt i32 %r1917,%r1918
    br i1 %r1919, label %L431, label %L433
L221:
    %r983 = load i32, ptr %r4
    %r984 = add i32 0,2
    %r985 = srem i32 %r983,%r984
    %r986 = icmp ne i32 %r985,0
    br i1 %r986, label %L226, label %L225
L222:
    %r1010 = load i32, ptr %r2
    %r1011 = add i32 0,16
    %r1012 = icmp slt i32 %r1010,%r1011
    br i1 %r1012, label %L221, label %L223
L223:
    %r1015 = load i32, ptr %r0
    %r1016 = icmp ne i32 %r1015,0
    br i1 %r1016, label %L228, label %L229
L224:
    %r994 = load i32, ptr %r0
    %r995 = add i32 0,1
    %r996 = load i32, ptr %r2
    %r997 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r996
    %r998 = load i32, ptr %r997
    %r999 = mul i32 %r995,%r998
    %r1000 = add i32 %r994,%r999
    store i32 %r1000, ptr %r0
    br label %L225
L225:
    %r1001 = load i32, ptr %r4
    %r1002 = add i32 0,2
    %r1003 = sdiv i32 %r1001,%r1002
    store i32 %r1003, ptr %r4
    %r1004 = load i32, ptr %r6
    %r1005 = add i32 0,2
    %r1006 = sdiv i32 %r1004,%r1005
    store i32 %r1006, ptr %r6
    %r1007 = load i32, ptr %r2
    %r1008 = add i32 0,1
    %r1009 = add i32 %r1007,%r1008
    store i32 %r1009, ptr %r2
    br label %L222
L226:
    %r987 = load i32, ptr %r6
    %r988 = add i32 0,2
    %r989 = srem i32 %r987,%r988
    %r990 = icmp ne i32 %r989,0
    br i1 %r990, label %L224, label %L225
L228:
    %r1018 = load i32, ptr %r967
    store i32 %r1018, ptr %r1017
    %r1020 = load i32, ptr %r963
    store i32 %r1020, ptr %r1019
    %r1022 = add i32 0,0
    store i32 %r1022, ptr %r1021
    %r1023 = load i32, ptr %r1019
    %r1024 = icmp ne i32 %r1023,0
    br i1 %r1024, label %L231, label %L233
L229:
    %r1440 = load i32, ptr %r963
    store i32 %r1440, ptr %r1439
    %r1442 = load i32, ptr %r963
    store i32 %r1442, ptr %r1441
    %r1444 = add i32 0,0
    store i32 %r1444, ptr %r1443
    %r1445 = load i32, ptr %r1441
    %r1446 = icmp ne i32 %r1445,0
    br i1 %r1446, label %L325, label %L327
L231:
    %r1025 = add i32 0,0
    store i32 %r1025, ptr %r0
    %r1026 = add i32 0,0
    store i32 %r1026, ptr %r2
    %r1027 = load i32, ptr %r1019
    store i32 %r1027, ptr %r4
    %r1028 = add i32 0,1
    store i32 %r1028, ptr %r6
    %r1029 = load i32, ptr %r2
    %r1030 = add i32 0,16
    %r1031 = icmp slt i32 %r1029,%r1030
    br i1 %r1031, label %L235, label %L237
L232:
    %r1435 = load i32, ptr %r1019
    %r1436 = icmp ne i32 %r1435,0
    br i1 %r1436, label %L231, label %L233
L233:
    %r1437 = load i32, ptr %r1021
    store i32 %r1437, ptr %r0
    %r1438 = load i32, ptr %r0
    store i32 %r1438, ptr %r967
    br label %L229
L235:
    %r1034 = load i32, ptr %r4
    %r1035 = add i32 0,2
    %r1036 = srem i32 %r1034,%r1035
    %r1037 = icmp ne i32 %r1036,0
    br i1 %r1037, label %L240, label %L239
L236:
    %r1061 = load i32, ptr %r2
    %r1062 = add i32 0,16
    %r1063 = icmp slt i32 %r1061,%r1062
    br i1 %r1063, label %L235, label %L237
L237:
    %r1066 = load i32, ptr %r0
    %r1067 = icmp ne i32 %r1066,0
    br i1 %r1067, label %L242, label %L243
L238:
    %r1045 = load i32, ptr %r0
    %r1046 = add i32 0,1
    %r1047 = load i32, ptr %r2
    %r1048 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1047
    %r1049 = load i32, ptr %r1048
    %r1050 = mul i32 %r1046,%r1049
    %r1051 = add i32 %r1045,%r1050
    store i32 %r1051, ptr %r0
    br label %L239
L239:
    %r1052 = load i32, ptr %r4
    %r1053 = add i32 0,2
    %r1054 = sdiv i32 %r1052,%r1053
    store i32 %r1054, ptr %r4
    %r1055 = load i32, ptr %r6
    %r1056 = add i32 0,2
    %r1057 = sdiv i32 %r1055,%r1056
    store i32 %r1057, ptr %r6
    %r1058 = load i32, ptr %r2
    %r1059 = add i32 0,1
    %r1060 = add i32 %r1058,%r1059
    store i32 %r1060, ptr %r2
    br label %L236
L240:
    %r1038 = load i32, ptr %r6
    %r1039 = add i32 0,2
    %r1040 = srem i32 %r1038,%r1039
    %r1041 = icmp ne i32 %r1040,0
    br i1 %r1041, label %L238, label %L239
L242:
    %r1069 = load i32, ptr %r1021
    store i32 %r1069, ptr %r1068
    %r1071 = load i32, ptr %r1017
    store i32 %r1071, ptr %r1070
    %r1073 = add i32 0,0
    store i32 %r1073, ptr %r1072
    %r1074 = load i32, ptr %r1070
    %r1075 = icmp ne i32 %r1074,0
    br i1 %r1075, label %L245, label %L247
L243:
    %r1229 = load i32, ptr %r1017
    store i32 %r1229, ptr %r1228
    %r1231 = load i32, ptr %r1017
    store i32 %r1231, ptr %r1230
    %r1233 = add i32 0,0
    store i32 %r1233, ptr %r1232
    %r1234 = load i32, ptr %r1230
    %r1235 = icmp ne i32 %r1234,0
    br i1 %r1235, label %L279, label %L281
L245:
    %r1076 = add i32 0,0
    store i32 %r1076, ptr %r0
    %r1077 = add i32 0,0
    store i32 %r1077, ptr %r2
    %r1078 = load i32, ptr %r1068
    store i32 %r1078, ptr %r4
    %r1079 = load i32, ptr %r1070
    store i32 %r1079, ptr %r6
    %r1080 = load i32, ptr %r2
    %r1081 = add i32 0,16
    %r1082 = icmp slt i32 %r1080,%r1081
    br i1 %r1082, label %L249, label %L251
L246:
    %r1224 = load i32, ptr %r1070
    %r1225 = icmp ne i32 %r1224,0
    br i1 %r1225, label %L245, label %L247
L247:
    %r1226 = load i32, ptr %r1068
    store i32 %r1226, ptr %r0
    %r1227 = load i32, ptr %r0
    store i32 %r1227, ptr %r1021
    br label %L243
L249:
    %r1085 = load i32, ptr %r4
    %r1086 = add i32 0,2
    %r1087 = srem i32 %r1085,%r1086
    %r1088 = icmp ne i32 %r1087,0
    br i1 %r1088, label %L252, label %L253
L250:
    %r1123 = load i32, ptr %r2
    %r1124 = add i32 0,16
    %r1125 = icmp slt i32 %r1123,%r1124
    br i1 %r1125, label %L249, label %L251
L251:
    %r1128 = load i32, ptr %r0
    store i32 %r1128, ptr %r1072
    %r1129 = add i32 0,0
    store i32 %r1129, ptr %r0
    %r1130 = add i32 0,0
    store i32 %r1130, ptr %r2
    %r1131 = load i32, ptr %r1068
    store i32 %r1131, ptr %r4
    %r1132 = load i32, ptr %r1070
    store i32 %r1132, ptr %r6
    %r1133 = load i32, ptr %r2
    %r1134 = add i32 0,16
    %r1135 = icmp slt i32 %r1133,%r1134
    br i1 %r1135, label %L260, label %L262
L252:
    %r1089 = load i32, ptr %r6
    %r1090 = add i32 0,2
    %r1091 = srem i32 %r1089,%r1090
    %r1092 = add i32 0,0
    %r1093 = icmp eq i32 %r1091,%r1092
    br i1 %r1093, label %L255, label %L256
L253:
    %r1103 = load i32, ptr %r6
    %r1104 = add i32 0,2
    %r1105 = srem i32 %r1103,%r1104
    %r1106 = icmp ne i32 %r1105,0
    br i1 %r1106, label %L257, label %L258
L254:
    %r1114 = load i32, ptr %r4
    %r1115 = add i32 0,2
    %r1116 = sdiv i32 %r1114,%r1115
    store i32 %r1116, ptr %r4
    %r1117 = load i32, ptr %r6
    %r1118 = add i32 0,2
    %r1119 = sdiv i32 %r1117,%r1118
    store i32 %r1119, ptr %r6
    %r1120 = load i32, ptr %r2
    %r1121 = add i32 0,1
    %r1122 = add i32 %r1120,%r1121
    store i32 %r1122, ptr %r2
    br label %L250
L255:
    %r1096 = load i32, ptr %r0
    %r1097 = add i32 0,1
    %r1098 = load i32, ptr %r2
    %r1099 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1098
    %r1100 = load i32, ptr %r1099
    %r1101 = mul i32 %r1097,%r1100
    %r1102 = add i32 %r1096,%r1101
    store i32 %r1102, ptr %r0
    br label %L256
L256:
    br label %L254
L257:
    %r1107 = load i32, ptr %r0
    %r1108 = add i32 0,1
    %r1109 = load i32, ptr %r2
    %r1110 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1109
    %r1111 = load i32, ptr %r1110
    %r1112 = mul i32 %r1108,%r1111
    %r1113 = add i32 %r1107,%r1112
    store i32 %r1113, ptr %r0
    br label %L258
L258:
    br label %L254
L260:
    %r1138 = load i32, ptr %r4
    %r1139 = add i32 0,2
    %r1140 = srem i32 %r1138,%r1139
    %r1141 = icmp ne i32 %r1140,0
    br i1 %r1141, label %L265, label %L264
L261:
    %r1165 = load i32, ptr %r2
    %r1166 = add i32 0,16
    %r1167 = icmp slt i32 %r1165,%r1166
    br i1 %r1167, label %L260, label %L262
L262:
    %r1170 = load i32, ptr %r0
    store i32 %r1170, ptr %r1070
    %r1171 = add i32 0,1
    %r1172 = add i32 0,15
    %r1173 = icmp sgt i32 %r1171,%r1172
    br i1 %r1173, label %L267, label %L268
L263:
    %r1149 = load i32, ptr %r0
    %r1150 = add i32 0,1
    %r1151 = load i32, ptr %r2
    %r1152 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1151
    %r1153 = load i32, ptr %r1152
    %r1154 = mul i32 %r1150,%r1153
    %r1155 = add i32 %r1149,%r1154
    store i32 %r1155, ptr %r0
    br label %L264
L264:
    %r1156 = load i32, ptr %r4
    %r1157 = add i32 0,2
    %r1158 = sdiv i32 %r1156,%r1157
    store i32 %r1158, ptr %r4
    %r1159 = load i32, ptr %r6
    %r1160 = add i32 0,2
    %r1161 = sdiv i32 %r1159,%r1160
    store i32 %r1161, ptr %r6
    %r1162 = load i32, ptr %r2
    %r1163 = add i32 0,1
    %r1164 = add i32 %r1162,%r1163
    store i32 %r1164, ptr %r2
    br label %L261
L265:
    %r1142 = load i32, ptr %r6
    %r1143 = add i32 0,2
    %r1144 = srem i32 %r1142,%r1143
    %r1145 = icmp ne i32 %r1144,0
    br i1 %r1145, label %L263, label %L264
L267:
    %r1176 = add i32 0,0
    store i32 %r1176, ptr %r0
    br label %L269
L268:
    %r1177 = add i32 0,0
    store i32 %r1177, ptr %r0
    %r1178 = add i32 0,0
    store i32 %r1178, ptr %r2
    %r1179 = load i32, ptr %r1070
    %r1180 = add i32 0,1
    %r1181 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1180
    %r1182 = load i32, ptr %r1181
    %r1183 = mul i32 %r1179,%r1182
    store i32 %r1183, ptr %r4
    %r1184 = add i32 0,65535
    store i32 %r1184, ptr %r6
    %r1185 = load i32, ptr %r2
    %r1186 = add i32 0,16
    %r1187 = icmp slt i32 %r1185,%r1186
    br i1 %r1187, label %L271, label %L273
L269:
    %r1222 = load i32, ptr %r0
    store i32 %r1222, ptr %r1070
    %r1223 = load i32, ptr %r1072
    store i32 %r1223, ptr %r1068
    br label %L246
L271:
    %r1190 = load i32, ptr %r4
    %r1191 = add i32 0,2
    %r1192 = srem i32 %r1190,%r1191
    %r1193 = icmp ne i32 %r1192,0
    br i1 %r1193, label %L276, label %L275
L272:
    %r1217 = load i32, ptr %r2
    %r1218 = add i32 0,16
    %r1219 = icmp slt i32 %r1217,%r1218
    br i1 %r1219, label %L271, label %L273
L273:
    br label %L269
L274:
    %r1201 = load i32, ptr %r0
    %r1202 = add i32 0,1
    %r1203 = load i32, ptr %r2
    %r1204 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1203
    %r1205 = load i32, ptr %r1204
    %r1206 = mul i32 %r1202,%r1205
    %r1207 = add i32 %r1201,%r1206
    store i32 %r1207, ptr %r0
    br label %L275
L275:
    %r1208 = load i32, ptr %r4
    %r1209 = add i32 0,2
    %r1210 = sdiv i32 %r1208,%r1209
    store i32 %r1210, ptr %r4
    %r1211 = load i32, ptr %r6
    %r1212 = add i32 0,2
    %r1213 = sdiv i32 %r1211,%r1212
    store i32 %r1213, ptr %r6
    %r1214 = load i32, ptr %r2
    %r1215 = add i32 0,1
    %r1216 = add i32 %r1214,%r1215
    store i32 %r1216, ptr %r2
    br label %L272
L276:
    %r1194 = load i32, ptr %r6
    %r1195 = add i32 0,2
    %r1196 = srem i32 %r1194,%r1195
    %r1197 = icmp ne i32 %r1196,0
    br i1 %r1197, label %L274, label %L275
L279:
    %r1236 = add i32 0,0
    store i32 %r1236, ptr %r0
    %r1237 = add i32 0,0
    store i32 %r1237, ptr %r2
    %r1238 = load i32, ptr %r1228
    store i32 %r1238, ptr %r4
    %r1239 = load i32, ptr %r1230
    store i32 %r1239, ptr %r6
    %r1240 = load i32, ptr %r2
    %r1241 = add i32 0,16
    %r1242 = icmp slt i32 %r1240,%r1241
    br i1 %r1242, label %L283, label %L285
L280:
    %r1384 = load i32, ptr %r1230
    %r1385 = icmp ne i32 %r1384,0
    br i1 %r1385, label %L279, label %L281
L281:
    %r1386 = load i32, ptr %r1228
    store i32 %r1386, ptr %r0
    %r1387 = load i32, ptr %r0
    store i32 %r1387, ptr %r1017
    %r1388 = load i32, ptr %r1019
    store i32 %r1388, ptr %r4
    %r1389 = add i32 0,1
    store i32 %r1389, ptr %r6
    %r1390 = load i32, ptr %r6
    %r1391 = add i32 0,15
    %r1392 = icmp sge i32 %r1390,%r1391
    br i1 %r1392, label %L312, label %L313
L283:
    %r1245 = load i32, ptr %r4
    %r1246 = add i32 0,2
    %r1247 = srem i32 %r1245,%r1246
    %r1248 = icmp ne i32 %r1247,0
    br i1 %r1248, label %L286, label %L287
L284:
    %r1283 = load i32, ptr %r2
    %r1284 = add i32 0,16
    %r1285 = icmp slt i32 %r1283,%r1284
    br i1 %r1285, label %L283, label %L285
L285:
    %r1288 = load i32, ptr %r0
    store i32 %r1288, ptr %r1232
    %r1289 = add i32 0,0
    store i32 %r1289, ptr %r0
    %r1290 = add i32 0,0
    store i32 %r1290, ptr %r2
    %r1291 = load i32, ptr %r1228
    store i32 %r1291, ptr %r4
    %r1292 = load i32, ptr %r1230
    store i32 %r1292, ptr %r6
    %r1293 = load i32, ptr %r2
    %r1294 = add i32 0,16
    %r1295 = icmp slt i32 %r1293,%r1294
    br i1 %r1295, label %L294, label %L296
L286:
    %r1249 = load i32, ptr %r6
    %r1250 = add i32 0,2
    %r1251 = srem i32 %r1249,%r1250
    %r1252 = add i32 0,0
    %r1253 = icmp eq i32 %r1251,%r1252
    br i1 %r1253, label %L289, label %L290
L287:
    %r1263 = load i32, ptr %r6
    %r1264 = add i32 0,2
    %r1265 = srem i32 %r1263,%r1264
    %r1266 = icmp ne i32 %r1265,0
    br i1 %r1266, label %L291, label %L292
L288:
    %r1274 = load i32, ptr %r4
    %r1275 = add i32 0,2
    %r1276 = sdiv i32 %r1274,%r1275
    store i32 %r1276, ptr %r4
    %r1277 = load i32, ptr %r6
    %r1278 = add i32 0,2
    %r1279 = sdiv i32 %r1277,%r1278
    store i32 %r1279, ptr %r6
    %r1280 = load i32, ptr %r2
    %r1281 = add i32 0,1
    %r1282 = add i32 %r1280,%r1281
    store i32 %r1282, ptr %r2
    br label %L284
L289:
    %r1256 = load i32, ptr %r0
    %r1257 = add i32 0,1
    %r1258 = load i32, ptr %r2
    %r1259 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1258
    %r1260 = load i32, ptr %r1259
    %r1261 = mul i32 %r1257,%r1260
    %r1262 = add i32 %r1256,%r1261
    store i32 %r1262, ptr %r0
    br label %L290
L290:
    br label %L288
L291:
    %r1267 = load i32, ptr %r0
    %r1268 = add i32 0,1
    %r1269 = load i32, ptr %r2
    %r1270 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1269
    %r1271 = load i32, ptr %r1270
    %r1272 = mul i32 %r1268,%r1271
    %r1273 = add i32 %r1267,%r1272
    store i32 %r1273, ptr %r0
    br label %L292
L292:
    br label %L288
L294:
    %r1298 = load i32, ptr %r4
    %r1299 = add i32 0,2
    %r1300 = srem i32 %r1298,%r1299
    %r1301 = icmp ne i32 %r1300,0
    br i1 %r1301, label %L299, label %L298
L295:
    %r1325 = load i32, ptr %r2
    %r1326 = add i32 0,16
    %r1327 = icmp slt i32 %r1325,%r1326
    br i1 %r1327, label %L294, label %L296
L296:
    %r1330 = load i32, ptr %r0
    store i32 %r1330, ptr %r1230
    %r1331 = add i32 0,1
    %r1332 = add i32 0,15
    %r1333 = icmp sgt i32 %r1331,%r1332
    br i1 %r1333, label %L301, label %L302
L297:
    %r1309 = load i32, ptr %r0
    %r1310 = add i32 0,1
    %r1311 = load i32, ptr %r2
    %r1312 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1311
    %r1313 = load i32, ptr %r1312
    %r1314 = mul i32 %r1310,%r1313
    %r1315 = add i32 %r1309,%r1314
    store i32 %r1315, ptr %r0
    br label %L298
L298:
    %r1316 = load i32, ptr %r4
    %r1317 = add i32 0,2
    %r1318 = sdiv i32 %r1316,%r1317
    store i32 %r1318, ptr %r4
    %r1319 = load i32, ptr %r6
    %r1320 = add i32 0,2
    %r1321 = sdiv i32 %r1319,%r1320
    store i32 %r1321, ptr %r6
    %r1322 = load i32, ptr %r2
    %r1323 = add i32 0,1
    %r1324 = add i32 %r1322,%r1323
    store i32 %r1324, ptr %r2
    br label %L295
L299:
    %r1302 = load i32, ptr %r6
    %r1303 = add i32 0,2
    %r1304 = srem i32 %r1302,%r1303
    %r1305 = icmp ne i32 %r1304,0
    br i1 %r1305, label %L297, label %L298
L301:
    %r1336 = add i32 0,0
    store i32 %r1336, ptr %r0
    br label %L303
L302:
    %r1337 = add i32 0,0
    store i32 %r1337, ptr %r0
    %r1338 = add i32 0,0
    store i32 %r1338, ptr %r2
    %r1339 = load i32, ptr %r1230
    %r1340 = add i32 0,1
    %r1341 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1340
    %r1342 = load i32, ptr %r1341
    %r1343 = mul i32 %r1339,%r1342
    store i32 %r1343, ptr %r4
    %r1344 = add i32 0,65535
    store i32 %r1344, ptr %r6
    %r1345 = load i32, ptr %r2
    %r1346 = add i32 0,16
    %r1347 = icmp slt i32 %r1345,%r1346
    br i1 %r1347, label %L305, label %L307
L303:
    %r1382 = load i32, ptr %r0
    store i32 %r1382, ptr %r1230
    %r1383 = load i32, ptr %r1232
    store i32 %r1383, ptr %r1228
    br label %L280
L305:
    %r1350 = load i32, ptr %r4
    %r1351 = add i32 0,2
    %r1352 = srem i32 %r1350,%r1351
    %r1353 = icmp ne i32 %r1352,0
    br i1 %r1353, label %L310, label %L309
L306:
    %r1377 = load i32, ptr %r2
    %r1378 = add i32 0,16
    %r1379 = icmp slt i32 %r1377,%r1378
    br i1 %r1379, label %L305, label %L307
L307:
    br label %L303
L308:
    %r1361 = load i32, ptr %r0
    %r1362 = add i32 0,1
    %r1363 = load i32, ptr %r2
    %r1364 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1363
    %r1365 = load i32, ptr %r1364
    %r1366 = mul i32 %r1362,%r1365
    %r1367 = add i32 %r1361,%r1366
    store i32 %r1367, ptr %r0
    br label %L309
L309:
    %r1368 = load i32, ptr %r4
    %r1369 = add i32 0,2
    %r1370 = sdiv i32 %r1368,%r1369
    store i32 %r1370, ptr %r4
    %r1371 = load i32, ptr %r6
    %r1372 = add i32 0,2
    %r1373 = sdiv i32 %r1371,%r1372
    store i32 %r1373, ptr %r6
    %r1374 = load i32, ptr %r2
    %r1375 = add i32 0,1
    %r1376 = add i32 %r1374,%r1375
    store i32 %r1376, ptr %r2
    br label %L306
L310:
    %r1354 = load i32, ptr %r6
    %r1355 = add i32 0,2
    %r1356 = srem i32 %r1354,%r1355
    %r1357 = icmp ne i32 %r1356,0
    br i1 %r1357, label %L308, label %L309
L312:
    %r1395 = load i32, ptr %r4
    %r1396 = add i32 0,0
    %r1397 = icmp slt i32 %r1395,%r1396
    br i1 %r1397, label %L315, label %L316
L313:
    %r1402 = load i32, ptr %r6
    %r1403 = add i32 0,0
    %r1404 = icmp sgt i32 %r1402,%r1403
    br i1 %r1404, label %L318, label %L319
L314:
    %r1434 = load i32, ptr %r0
    store i32 %r1434, ptr %r1019
    br label %L232
L315:
    %r1400 = add i32 0,65535
    store i32 %r1400, ptr %r0
    br label %L317
L316:
    %r1401 = add i32 0,0
    store i32 %r1401, ptr %r0
    br label %L317
L317:
    br label %L314
L318:
    %r1407 = load i32, ptr %r4
    %r1408 = add i32 0,32767
    %r1409 = icmp sgt i32 %r1407,%r1408
    br i1 %r1409, label %L321, label %L322
L319:
    %r1433 = load i32, ptr %r4
    store i32 %r1433, ptr %r0
    br label %L320
L320:
    br label %L314
L321:
    %r1412 = load i32, ptr %r4
    %r1413 = load i32, ptr %r6
    %r1414 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1413
    %r1415 = load i32, ptr %r1414
    %r1416 = sdiv i32 %r1412,%r1415
    store i32 %r1416, ptr %r4
    %r1417 = load i32, ptr %r4
    %r1418 = add i32 0,65536
    %r1419 = add i32 %r1417,%r1418
    %r1420 = add i32 0,15
    %r1421 = load i32, ptr %r6
    %r1422 = sub i32 %r1420,%r1421
    %r1423 = add i32 0,1
    %r1424 = add i32 %r1422,%r1423
    %r1425 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1424
    %r1426 = load i32, ptr %r1425
    %r1427 = sub i32 %r1419,%r1426
    store i32 %r1427, ptr %r0
    br label %L323
L322:
    %r1428 = load i32, ptr %r4
    %r1429 = load i32, ptr %r6
    %r1430 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1429
    %r1431 = load i32, ptr %r1430
    %r1432 = sdiv i32 %r1428,%r1431
    store i32 %r1432, ptr %r0
    br label %L323
L323:
    br label %L320
L325:
    %r1447 = add i32 0,0
    store i32 %r1447, ptr %r0
    %r1448 = add i32 0,0
    store i32 %r1448, ptr %r2
    %r1449 = load i32, ptr %r1441
    store i32 %r1449, ptr %r4
    %r1450 = add i32 0,1
    store i32 %r1450, ptr %r6
    %r1451 = load i32, ptr %r2
    %r1452 = add i32 0,16
    %r1453 = icmp slt i32 %r1451,%r1452
    br i1 %r1453, label %L329, label %L331
L326:
    %r1857 = load i32, ptr %r1441
    %r1858 = icmp ne i32 %r1857,0
    br i1 %r1858, label %L325, label %L327
L327:
    %r1859 = load i32, ptr %r1443
    store i32 %r1859, ptr %r0
    %r1860 = load i32, ptr %r0
    store i32 %r1860, ptr %r963
    %r1861 = load i32, ptr %r965
    store i32 %r1861, ptr %r4
    %r1862 = add i32 0,1
    store i32 %r1862, ptr %r6
    %r1863 = load i32, ptr %r6
    %r1864 = add i32 0,15
    %r1865 = icmp sge i32 %r1863,%r1864
    br i1 %r1865, label %L418, label %L419
L329:
    %r1456 = load i32, ptr %r4
    %r1457 = add i32 0,2
    %r1458 = srem i32 %r1456,%r1457
    %r1459 = icmp ne i32 %r1458,0
    br i1 %r1459, label %L334, label %L333
L330:
    %r1483 = load i32, ptr %r2
    %r1484 = add i32 0,16
    %r1485 = icmp slt i32 %r1483,%r1484
    br i1 %r1485, label %L329, label %L331
L331:
    %r1488 = load i32, ptr %r0
    %r1489 = icmp ne i32 %r1488,0
    br i1 %r1489, label %L336, label %L337
L332:
    %r1467 = load i32, ptr %r0
    %r1468 = add i32 0,1
    %r1469 = load i32, ptr %r2
    %r1470 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1469
    %r1471 = load i32, ptr %r1470
    %r1472 = mul i32 %r1468,%r1471
    %r1473 = add i32 %r1467,%r1472
    store i32 %r1473, ptr %r0
    br label %L333
L333:
    %r1474 = load i32, ptr %r4
    %r1475 = add i32 0,2
    %r1476 = sdiv i32 %r1474,%r1475
    store i32 %r1476, ptr %r4
    %r1477 = load i32, ptr %r6
    %r1478 = add i32 0,2
    %r1479 = sdiv i32 %r1477,%r1478
    store i32 %r1479, ptr %r6
    %r1480 = load i32, ptr %r2
    %r1481 = add i32 0,1
    %r1482 = add i32 %r1480,%r1481
    store i32 %r1482, ptr %r2
    br label %L330
L334:
    %r1460 = load i32, ptr %r6
    %r1461 = add i32 0,2
    %r1462 = srem i32 %r1460,%r1461
    %r1463 = icmp ne i32 %r1462,0
    br i1 %r1463, label %L332, label %L333
L336:
    %r1491 = load i32, ptr %r1443
    store i32 %r1491, ptr %r1490
    %r1493 = load i32, ptr %r1439
    store i32 %r1493, ptr %r1492
    %r1495 = add i32 0,0
    store i32 %r1495, ptr %r1494
    %r1496 = load i32, ptr %r1492
    %r1497 = icmp ne i32 %r1496,0
    br i1 %r1497, label %L339, label %L341
L337:
    %r1651 = load i32, ptr %r1439
    store i32 %r1651, ptr %r1650
    %r1653 = load i32, ptr %r1439
    store i32 %r1653, ptr %r1652
    %r1655 = add i32 0,0
    store i32 %r1655, ptr %r1654
    %r1656 = load i32, ptr %r1652
    %r1657 = icmp ne i32 %r1656,0
    br i1 %r1657, label %L373, label %L375
L339:
    %r1498 = add i32 0,0
    store i32 %r1498, ptr %r0
    %r1499 = add i32 0,0
    store i32 %r1499, ptr %r2
    %r1500 = load i32, ptr %r1490
    store i32 %r1500, ptr %r4
    %r1501 = load i32, ptr %r1492
    store i32 %r1501, ptr %r6
    %r1502 = load i32, ptr %r2
    %r1503 = add i32 0,16
    %r1504 = icmp slt i32 %r1502,%r1503
    br i1 %r1504, label %L343, label %L345
L340:
    %r1646 = load i32, ptr %r1492
    %r1647 = icmp ne i32 %r1646,0
    br i1 %r1647, label %L339, label %L341
L341:
    %r1648 = load i32, ptr %r1490
    store i32 %r1648, ptr %r0
    %r1649 = load i32, ptr %r0
    store i32 %r1649, ptr %r1443
    br label %L337
L343:
    %r1507 = load i32, ptr %r4
    %r1508 = add i32 0,2
    %r1509 = srem i32 %r1507,%r1508
    %r1510 = icmp ne i32 %r1509,0
    br i1 %r1510, label %L346, label %L347
L344:
    %r1545 = load i32, ptr %r2
    %r1546 = add i32 0,16
    %r1547 = icmp slt i32 %r1545,%r1546
    br i1 %r1547, label %L343, label %L345
L345:
    %r1550 = load i32, ptr %r0
    store i32 %r1550, ptr %r1494
    %r1551 = add i32 0,0
    store i32 %r1551, ptr %r0
    %r1552 = add i32 0,0
    store i32 %r1552, ptr %r2
    %r1553 = load i32, ptr %r1490
    store i32 %r1553, ptr %r4
    %r1554 = load i32, ptr %r1492
    store i32 %r1554, ptr %r6
    %r1555 = load i32, ptr %r2
    %r1556 = add i32 0,16
    %r1557 = icmp slt i32 %r1555,%r1556
    br i1 %r1557, label %L354, label %L356
L346:
    %r1511 = load i32, ptr %r6
    %r1512 = add i32 0,2
    %r1513 = srem i32 %r1511,%r1512
    %r1514 = add i32 0,0
    %r1515 = icmp eq i32 %r1513,%r1514
    br i1 %r1515, label %L349, label %L350
L347:
    %r1525 = load i32, ptr %r6
    %r1526 = add i32 0,2
    %r1527 = srem i32 %r1525,%r1526
    %r1528 = icmp ne i32 %r1527,0
    br i1 %r1528, label %L351, label %L352
L348:
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
    br label %L344
L349:
    %r1518 = load i32, ptr %r0
    %r1519 = add i32 0,1
    %r1520 = load i32, ptr %r2
    %r1521 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1520
    %r1522 = load i32, ptr %r1521
    %r1523 = mul i32 %r1519,%r1522
    %r1524 = add i32 %r1518,%r1523
    store i32 %r1524, ptr %r0
    br label %L350
L350:
    br label %L348
L351:
    %r1529 = load i32, ptr %r0
    %r1530 = add i32 0,1
    %r1531 = load i32, ptr %r2
    %r1532 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1531
    %r1533 = load i32, ptr %r1532
    %r1534 = mul i32 %r1530,%r1533
    %r1535 = add i32 %r1529,%r1534
    store i32 %r1535, ptr %r0
    br label %L352
L352:
    br label %L348
L354:
    %r1560 = load i32, ptr %r4
    %r1561 = add i32 0,2
    %r1562 = srem i32 %r1560,%r1561
    %r1563 = icmp ne i32 %r1562,0
    br i1 %r1563, label %L359, label %L358
L355:
    %r1587 = load i32, ptr %r2
    %r1588 = add i32 0,16
    %r1589 = icmp slt i32 %r1587,%r1588
    br i1 %r1589, label %L354, label %L356
L356:
    %r1592 = load i32, ptr %r0
    store i32 %r1592, ptr %r1492
    %r1593 = add i32 0,1
    %r1594 = add i32 0,15
    %r1595 = icmp sgt i32 %r1593,%r1594
    br i1 %r1595, label %L361, label %L362
L357:
    %r1571 = load i32, ptr %r0
    %r1572 = add i32 0,1
    %r1573 = load i32, ptr %r2
    %r1574 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1573
    %r1575 = load i32, ptr %r1574
    %r1576 = mul i32 %r1572,%r1575
    %r1577 = add i32 %r1571,%r1576
    store i32 %r1577, ptr %r0
    br label %L358
L358:
    %r1578 = load i32, ptr %r4
    %r1579 = add i32 0,2
    %r1580 = sdiv i32 %r1578,%r1579
    store i32 %r1580, ptr %r4
    %r1581 = load i32, ptr %r6
    %r1582 = add i32 0,2
    %r1583 = sdiv i32 %r1581,%r1582
    store i32 %r1583, ptr %r6
    %r1584 = load i32, ptr %r2
    %r1585 = add i32 0,1
    %r1586 = add i32 %r1584,%r1585
    store i32 %r1586, ptr %r2
    br label %L355
L359:
    %r1564 = load i32, ptr %r6
    %r1565 = add i32 0,2
    %r1566 = srem i32 %r1564,%r1565
    %r1567 = icmp ne i32 %r1566,0
    br i1 %r1567, label %L357, label %L358
L361:
    %r1598 = add i32 0,0
    store i32 %r1598, ptr %r0
    br label %L363
L362:
    %r1599 = add i32 0,0
    store i32 %r1599, ptr %r0
    %r1600 = add i32 0,0
    store i32 %r1600, ptr %r2
    %r1601 = load i32, ptr %r1492
    %r1602 = add i32 0,1
    %r1603 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1602
    %r1604 = load i32, ptr %r1603
    %r1605 = mul i32 %r1601,%r1604
    store i32 %r1605, ptr %r4
    %r1606 = add i32 0,65535
    store i32 %r1606, ptr %r6
    %r1607 = load i32, ptr %r2
    %r1608 = add i32 0,16
    %r1609 = icmp slt i32 %r1607,%r1608
    br i1 %r1609, label %L365, label %L367
L363:
    %r1644 = load i32, ptr %r0
    store i32 %r1644, ptr %r1492
    %r1645 = load i32, ptr %r1494
    store i32 %r1645, ptr %r1490
    br label %L340
L365:
    %r1612 = load i32, ptr %r4
    %r1613 = add i32 0,2
    %r1614 = srem i32 %r1612,%r1613
    %r1615 = icmp ne i32 %r1614,0
    br i1 %r1615, label %L370, label %L369
L366:
    %r1639 = load i32, ptr %r2
    %r1640 = add i32 0,16
    %r1641 = icmp slt i32 %r1639,%r1640
    br i1 %r1641, label %L365, label %L367
L367:
    br label %L363
L368:
    %r1623 = load i32, ptr %r0
    %r1624 = add i32 0,1
    %r1625 = load i32, ptr %r2
    %r1626 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1625
    %r1627 = load i32, ptr %r1626
    %r1628 = mul i32 %r1624,%r1627
    %r1629 = add i32 %r1623,%r1628
    store i32 %r1629, ptr %r0
    br label %L369
L369:
    %r1630 = load i32, ptr %r4
    %r1631 = add i32 0,2
    %r1632 = sdiv i32 %r1630,%r1631
    store i32 %r1632, ptr %r4
    %r1633 = load i32, ptr %r6
    %r1634 = add i32 0,2
    %r1635 = sdiv i32 %r1633,%r1634
    store i32 %r1635, ptr %r6
    %r1636 = load i32, ptr %r2
    %r1637 = add i32 0,1
    %r1638 = add i32 %r1636,%r1637
    store i32 %r1638, ptr %r2
    br label %L366
L370:
    %r1616 = load i32, ptr %r6
    %r1617 = add i32 0,2
    %r1618 = srem i32 %r1616,%r1617
    %r1619 = icmp ne i32 %r1618,0
    br i1 %r1619, label %L368, label %L369
L373:
    %r1658 = add i32 0,0
    store i32 %r1658, ptr %r0
    %r1659 = add i32 0,0
    store i32 %r1659, ptr %r2
    %r1660 = load i32, ptr %r1650
    store i32 %r1660, ptr %r4
    %r1661 = load i32, ptr %r1652
    store i32 %r1661, ptr %r6
    %r1662 = load i32, ptr %r2
    %r1663 = add i32 0,16
    %r1664 = icmp slt i32 %r1662,%r1663
    br i1 %r1664, label %L377, label %L379
L374:
    %r1806 = load i32, ptr %r1652
    %r1807 = icmp ne i32 %r1806,0
    br i1 %r1807, label %L373, label %L375
L375:
    %r1808 = load i32, ptr %r1650
    store i32 %r1808, ptr %r0
    %r1809 = load i32, ptr %r0
    store i32 %r1809, ptr %r1439
    %r1810 = load i32, ptr %r1441
    store i32 %r1810, ptr %r4
    %r1811 = add i32 0,1
    store i32 %r1811, ptr %r6
    %r1812 = load i32, ptr %r6
    %r1813 = add i32 0,15
    %r1814 = icmp sge i32 %r1812,%r1813
    br i1 %r1814, label %L406, label %L407
L377:
    %r1667 = load i32, ptr %r4
    %r1668 = add i32 0,2
    %r1669 = srem i32 %r1667,%r1668
    %r1670 = icmp ne i32 %r1669,0
    br i1 %r1670, label %L380, label %L381
L378:
    %r1705 = load i32, ptr %r2
    %r1706 = add i32 0,16
    %r1707 = icmp slt i32 %r1705,%r1706
    br i1 %r1707, label %L377, label %L379
L379:
    %r1710 = load i32, ptr %r0
    store i32 %r1710, ptr %r1654
    %r1711 = add i32 0,0
    store i32 %r1711, ptr %r0
    %r1712 = add i32 0,0
    store i32 %r1712, ptr %r2
    %r1713 = load i32, ptr %r1650
    store i32 %r1713, ptr %r4
    %r1714 = load i32, ptr %r1652
    store i32 %r1714, ptr %r6
    %r1715 = load i32, ptr %r2
    %r1716 = add i32 0,16
    %r1717 = icmp slt i32 %r1715,%r1716
    br i1 %r1717, label %L388, label %L390
L380:
    %r1671 = load i32, ptr %r6
    %r1672 = add i32 0,2
    %r1673 = srem i32 %r1671,%r1672
    %r1674 = add i32 0,0
    %r1675 = icmp eq i32 %r1673,%r1674
    br i1 %r1675, label %L383, label %L384
L381:
    %r1685 = load i32, ptr %r6
    %r1686 = add i32 0,2
    %r1687 = srem i32 %r1685,%r1686
    %r1688 = icmp ne i32 %r1687,0
    br i1 %r1688, label %L385, label %L386
L382:
    %r1696 = load i32, ptr %r4
    %r1697 = add i32 0,2
    %r1698 = sdiv i32 %r1696,%r1697
    store i32 %r1698, ptr %r4
    %r1699 = load i32, ptr %r6
    %r1700 = add i32 0,2
    %r1701 = sdiv i32 %r1699,%r1700
    store i32 %r1701, ptr %r6
    %r1702 = load i32, ptr %r2
    %r1703 = add i32 0,1
    %r1704 = add i32 %r1702,%r1703
    store i32 %r1704, ptr %r2
    br label %L378
L383:
    %r1678 = load i32, ptr %r0
    %r1679 = add i32 0,1
    %r1680 = load i32, ptr %r2
    %r1681 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1680
    %r1682 = load i32, ptr %r1681
    %r1683 = mul i32 %r1679,%r1682
    %r1684 = add i32 %r1678,%r1683
    store i32 %r1684, ptr %r0
    br label %L384
L384:
    br label %L382
L385:
    %r1689 = load i32, ptr %r0
    %r1690 = add i32 0,1
    %r1691 = load i32, ptr %r2
    %r1692 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1691
    %r1693 = load i32, ptr %r1692
    %r1694 = mul i32 %r1690,%r1693
    %r1695 = add i32 %r1689,%r1694
    store i32 %r1695, ptr %r0
    br label %L386
L386:
    br label %L382
L388:
    %r1720 = load i32, ptr %r4
    %r1721 = add i32 0,2
    %r1722 = srem i32 %r1720,%r1721
    %r1723 = icmp ne i32 %r1722,0
    br i1 %r1723, label %L393, label %L392
L389:
    %r1747 = load i32, ptr %r2
    %r1748 = add i32 0,16
    %r1749 = icmp slt i32 %r1747,%r1748
    br i1 %r1749, label %L388, label %L390
L390:
    %r1752 = load i32, ptr %r0
    store i32 %r1752, ptr %r1652
    %r1753 = add i32 0,1
    %r1754 = add i32 0,15
    %r1755 = icmp sgt i32 %r1753,%r1754
    br i1 %r1755, label %L395, label %L396
L391:
    %r1731 = load i32, ptr %r0
    %r1732 = add i32 0,1
    %r1733 = load i32, ptr %r2
    %r1734 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1733
    %r1735 = load i32, ptr %r1734
    %r1736 = mul i32 %r1732,%r1735
    %r1737 = add i32 %r1731,%r1736
    store i32 %r1737, ptr %r0
    br label %L392
L392:
    %r1738 = load i32, ptr %r4
    %r1739 = add i32 0,2
    %r1740 = sdiv i32 %r1738,%r1739
    store i32 %r1740, ptr %r4
    %r1741 = load i32, ptr %r6
    %r1742 = add i32 0,2
    %r1743 = sdiv i32 %r1741,%r1742
    store i32 %r1743, ptr %r6
    %r1744 = load i32, ptr %r2
    %r1745 = add i32 0,1
    %r1746 = add i32 %r1744,%r1745
    store i32 %r1746, ptr %r2
    br label %L389
L393:
    %r1724 = load i32, ptr %r6
    %r1725 = add i32 0,2
    %r1726 = srem i32 %r1724,%r1725
    %r1727 = icmp ne i32 %r1726,0
    br i1 %r1727, label %L391, label %L392
L395:
    %r1758 = add i32 0,0
    store i32 %r1758, ptr %r0
    br label %L397
L396:
    %r1759 = add i32 0,0
    store i32 %r1759, ptr %r0
    %r1760 = add i32 0,0
    store i32 %r1760, ptr %r2
    %r1761 = load i32, ptr %r1652
    %r1762 = add i32 0,1
    %r1763 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1762
    %r1764 = load i32, ptr %r1763
    %r1765 = mul i32 %r1761,%r1764
    store i32 %r1765, ptr %r4
    %r1766 = add i32 0,65535
    store i32 %r1766, ptr %r6
    %r1767 = load i32, ptr %r2
    %r1768 = add i32 0,16
    %r1769 = icmp slt i32 %r1767,%r1768
    br i1 %r1769, label %L399, label %L401
L397:
    %r1804 = load i32, ptr %r0
    store i32 %r1804, ptr %r1652
    %r1805 = load i32, ptr %r1654
    store i32 %r1805, ptr %r1650
    br label %L374
L399:
    %r1772 = load i32, ptr %r4
    %r1773 = add i32 0,2
    %r1774 = srem i32 %r1772,%r1773
    %r1775 = icmp ne i32 %r1774,0
    br i1 %r1775, label %L404, label %L403
L400:
    %r1799 = load i32, ptr %r2
    %r1800 = add i32 0,16
    %r1801 = icmp slt i32 %r1799,%r1800
    br i1 %r1801, label %L399, label %L401
L401:
    br label %L397
L402:
    %r1783 = load i32, ptr %r0
    %r1784 = add i32 0,1
    %r1785 = load i32, ptr %r2
    %r1786 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1785
    %r1787 = load i32, ptr %r1786
    %r1788 = mul i32 %r1784,%r1787
    %r1789 = add i32 %r1783,%r1788
    store i32 %r1789, ptr %r0
    br label %L403
L403:
    %r1790 = load i32, ptr %r4
    %r1791 = add i32 0,2
    %r1792 = sdiv i32 %r1790,%r1791
    store i32 %r1792, ptr %r4
    %r1793 = load i32, ptr %r6
    %r1794 = add i32 0,2
    %r1795 = sdiv i32 %r1793,%r1794
    store i32 %r1795, ptr %r6
    %r1796 = load i32, ptr %r2
    %r1797 = add i32 0,1
    %r1798 = add i32 %r1796,%r1797
    store i32 %r1798, ptr %r2
    br label %L400
L404:
    %r1776 = load i32, ptr %r6
    %r1777 = add i32 0,2
    %r1778 = srem i32 %r1776,%r1777
    %r1779 = icmp ne i32 %r1778,0
    br i1 %r1779, label %L402, label %L403
L406:
    %r1817 = load i32, ptr %r4
    %r1818 = add i32 0,0
    %r1819 = icmp slt i32 %r1817,%r1818
    br i1 %r1819, label %L409, label %L410
L407:
    %r1824 = load i32, ptr %r6
    %r1825 = add i32 0,0
    %r1826 = icmp sgt i32 %r1824,%r1825
    br i1 %r1826, label %L412, label %L413
L408:
    %r1856 = load i32, ptr %r0
    store i32 %r1856, ptr %r1441
    br label %L326
L409:
    %r1822 = add i32 0,65535
    store i32 %r1822, ptr %r0
    br label %L411
L410:
    %r1823 = add i32 0,0
    store i32 %r1823, ptr %r0
    br label %L411
L411:
    br label %L408
L412:
    %r1829 = load i32, ptr %r4
    %r1830 = add i32 0,32767
    %r1831 = icmp sgt i32 %r1829,%r1830
    br i1 %r1831, label %L415, label %L416
L413:
    %r1855 = load i32, ptr %r4
    store i32 %r1855, ptr %r0
    br label %L414
L414:
    br label %L408
L415:
    %r1834 = load i32, ptr %r4
    %r1835 = load i32, ptr %r6
    %r1836 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1835
    %r1837 = load i32, ptr %r1836
    %r1838 = sdiv i32 %r1834,%r1837
    store i32 %r1838, ptr %r4
    %r1839 = load i32, ptr %r4
    %r1840 = add i32 0,65536
    %r1841 = add i32 %r1839,%r1840
    %r1842 = add i32 0,15
    %r1843 = load i32, ptr %r6
    %r1844 = sub i32 %r1842,%r1843
    %r1845 = add i32 0,1
    %r1846 = add i32 %r1844,%r1845
    %r1847 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1846
    %r1848 = load i32, ptr %r1847
    %r1849 = sub i32 %r1841,%r1848
    store i32 %r1849, ptr %r0
    br label %L417
L416:
    %r1850 = load i32, ptr %r4
    %r1851 = load i32, ptr %r6
    %r1852 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1851
    %r1853 = load i32, ptr %r1852
    %r1854 = sdiv i32 %r1850,%r1853
    store i32 %r1854, ptr %r0
    br label %L417
L417:
    br label %L414
L418:
    %r1868 = load i32, ptr %r4
    %r1869 = add i32 0,0
    %r1870 = icmp slt i32 %r1868,%r1869
    br i1 %r1870, label %L421, label %L422
L419:
    %r1875 = load i32, ptr %r6
    %r1876 = add i32 0,0
    %r1877 = icmp sgt i32 %r1875,%r1876
    br i1 %r1877, label %L424, label %L425
L420:
    %r1907 = load i32, ptr %r0
    store i32 %r1907, ptr %r965
    br label %L218
L421:
    %r1873 = add i32 0,65535
    store i32 %r1873, ptr %r0
    br label %L423
L422:
    %r1874 = add i32 0,0
    store i32 %r1874, ptr %r0
    br label %L423
L423:
    br label %L420
L424:
    %r1880 = load i32, ptr %r4
    %r1881 = add i32 0,32767
    %r1882 = icmp sgt i32 %r1880,%r1881
    br i1 %r1882, label %L427, label %L428
L425:
    %r1906 = load i32, ptr %r4
    store i32 %r1906, ptr %r0
    br label %L426
L426:
    br label %L420
L427:
    %r1885 = load i32, ptr %r4
    %r1886 = load i32, ptr %r6
    %r1887 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1886
    %r1888 = load i32, ptr %r1887
    %r1889 = sdiv i32 %r1885,%r1888
    store i32 %r1889, ptr %r4
    %r1890 = load i32, ptr %r4
    %r1891 = add i32 0,65536
    %r1892 = add i32 %r1890,%r1891
    %r1893 = add i32 0,15
    %r1894 = load i32, ptr %r6
    %r1895 = sub i32 %r1893,%r1894
    %r1896 = add i32 0,1
    %r1897 = add i32 %r1895,%r1896
    %r1898 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1897
    %r1899 = load i32, ptr %r1898
    %r1900 = sub i32 %r1892,%r1899
    store i32 %r1900, ptr %r0
    br label %L429
L428:
    %r1901 = load i32, ptr %r4
    %r1902 = load i32, ptr %r6
    %r1903 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1902
    %r1904 = load i32, ptr %r1903
    %r1905 = sdiv i32 %r1901,%r1904
    store i32 %r1905, ptr %r0
    br label %L429
L429:
    br label %L426
L431:
    %r1923 = add i32 0,2
    store i32 %r1923, ptr %r1922
    %r1925 = load i32, ptr %r8
    store i32 %r1925, ptr %r1924
    %r1927 = add i32 0,1
    store i32 %r1927, ptr %r1926
    %r1928 = load i32, ptr %r1924
    %r1929 = add i32 0,0
    %r1930 = icmp sgt i32 %r1928,%r1929
    br i1 %r1930, label %L435, label %L437
L432:
    %r2878 = load i32, ptr %r8
    %r2879 = add i32 0,16
    %r2880 = icmp slt i32 %r2878,%r2879
    br i1 %r2880, label %L431, label %L433
L433:
    %r2883 = add i32 0,0
    store i32 %r2883, ptr %r8
    %r2884 = load i32, ptr %r8
    %r2885 = add i32 0,16
    %r2886 = icmp slt i32 %r2884,%r2885
    br i1 %r2886, label %L649, label %L651
L435:
    %r1933 = add i32 0,0
    store i32 %r1933, ptr %r0
    %r1934 = add i32 0,0
    store i32 %r1934, ptr %r2
    %r1935 = load i32, ptr %r1924
    store i32 %r1935, ptr %r4
    %r1936 = add i32 0,1
    store i32 %r1936, ptr %r6
    %r1937 = load i32, ptr %r2
    %r1938 = add i32 0,16
    %r1939 = icmp slt i32 %r1937,%r1938
    br i1 %r1939, label %L439, label %L441
L436:
    %r2867 = load i32, ptr %r1924
    %r2868 = add i32 0,0
    %r2869 = icmp sgt i32 %r2867,%r2868
    br i1 %r2869, label %L435, label %L437
L437:
    %r2872 = load i32, ptr %r1926
    store i32 %r2872, ptr %r0
    %r2873 = load i32, ptr %r0
    call void @putint(i32 %r2873)
    %r2874 = add i32 0,10
    call void @putch(i32 %r2874)
    %r2875 = load i32, ptr %r8
    %r2876 = add i32 0,1
    %r2877 = add i32 %r2875,%r2876
    store i32 %r2877, ptr %r8
    br label %L432
L439:
    %r1942 = load i32, ptr %r4
    %r1943 = add i32 0,2
    %r1944 = srem i32 %r1942,%r1943
    %r1945 = icmp ne i32 %r1944,0
    br i1 %r1945, label %L444, label %L443
L440:
    %r1969 = load i32, ptr %r2
    %r1970 = add i32 0,16
    %r1971 = icmp slt i32 %r1969,%r1970
    br i1 %r1971, label %L439, label %L441
L441:
    %r1974 = load i32, ptr %r0
    %r1975 = icmp ne i32 %r1974,0
    br i1 %r1975, label %L446, label %L447
L442:
    %r1953 = load i32, ptr %r0
    %r1954 = add i32 0,1
    %r1955 = load i32, ptr %r2
    %r1956 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r1955
    %r1957 = load i32, ptr %r1956
    %r1958 = mul i32 %r1954,%r1957
    %r1959 = add i32 %r1953,%r1958
    store i32 %r1959, ptr %r0
    br label %L443
L443:
    %r1960 = load i32, ptr %r4
    %r1961 = add i32 0,2
    %r1962 = sdiv i32 %r1960,%r1961
    store i32 %r1962, ptr %r4
    %r1963 = load i32, ptr %r6
    %r1964 = add i32 0,2
    %r1965 = sdiv i32 %r1963,%r1964
    store i32 %r1965, ptr %r6
    %r1966 = load i32, ptr %r2
    %r1967 = add i32 0,1
    %r1968 = add i32 %r1966,%r1967
    store i32 %r1968, ptr %r2
    br label %L440
L444:
    %r1946 = load i32, ptr %r6
    %r1947 = add i32 0,2
    %r1948 = srem i32 %r1946,%r1947
    %r1949 = icmp ne i32 %r1948,0
    br i1 %r1949, label %L442, label %L443
L446:
    %r1977 = load i32, ptr %r1926
    store i32 %r1977, ptr %r1976
    %r1979 = load i32, ptr %r1922
    store i32 %r1979, ptr %r1978
    %r1981 = add i32 0,0
    store i32 %r1981, ptr %r1980
    %r1982 = load i32, ptr %r1978
    %r1983 = icmp ne i32 %r1982,0
    br i1 %r1983, label %L449, label %L451
L447:
    %r2399 = load i32, ptr %r1922
    store i32 %r2399, ptr %r2398
    %r2401 = load i32, ptr %r1922
    store i32 %r2401, ptr %r2400
    %r2403 = add i32 0,0
    store i32 %r2403, ptr %r2402
    %r2404 = load i32, ptr %r2400
    %r2405 = icmp ne i32 %r2404,0
    br i1 %r2405, label %L543, label %L545
L449:
    %r1984 = add i32 0,0
    store i32 %r1984, ptr %r0
    %r1985 = add i32 0,0
    store i32 %r1985, ptr %r2
    %r1986 = load i32, ptr %r1978
    store i32 %r1986, ptr %r4
    %r1987 = add i32 0,1
    store i32 %r1987, ptr %r6
    %r1988 = load i32, ptr %r2
    %r1989 = add i32 0,16
    %r1990 = icmp slt i32 %r1988,%r1989
    br i1 %r1990, label %L453, label %L455
L450:
    %r2394 = load i32, ptr %r1978
    %r2395 = icmp ne i32 %r2394,0
    br i1 %r2395, label %L449, label %L451
L451:
    %r2396 = load i32, ptr %r1980
    store i32 %r2396, ptr %r0
    %r2397 = load i32, ptr %r0
    store i32 %r2397, ptr %r1926
    br label %L447
L453:
    %r1993 = load i32, ptr %r4
    %r1994 = add i32 0,2
    %r1995 = srem i32 %r1993,%r1994
    %r1996 = icmp ne i32 %r1995,0
    br i1 %r1996, label %L458, label %L457
L454:
    %r2020 = load i32, ptr %r2
    %r2021 = add i32 0,16
    %r2022 = icmp slt i32 %r2020,%r2021
    br i1 %r2022, label %L453, label %L455
L455:
    %r2025 = load i32, ptr %r0
    %r2026 = icmp ne i32 %r2025,0
    br i1 %r2026, label %L460, label %L461
L456:
    %r2004 = load i32, ptr %r0
    %r2005 = add i32 0,1
    %r2006 = load i32, ptr %r2
    %r2007 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2006
    %r2008 = load i32, ptr %r2007
    %r2009 = mul i32 %r2005,%r2008
    %r2010 = add i32 %r2004,%r2009
    store i32 %r2010, ptr %r0
    br label %L457
L457:
    %r2011 = load i32, ptr %r4
    %r2012 = add i32 0,2
    %r2013 = sdiv i32 %r2011,%r2012
    store i32 %r2013, ptr %r4
    %r2014 = load i32, ptr %r6
    %r2015 = add i32 0,2
    %r2016 = sdiv i32 %r2014,%r2015
    store i32 %r2016, ptr %r6
    %r2017 = load i32, ptr %r2
    %r2018 = add i32 0,1
    %r2019 = add i32 %r2017,%r2018
    store i32 %r2019, ptr %r2
    br label %L454
L458:
    %r1997 = load i32, ptr %r6
    %r1998 = add i32 0,2
    %r1999 = srem i32 %r1997,%r1998
    %r2000 = icmp ne i32 %r1999,0
    br i1 %r2000, label %L456, label %L457
L460:
    %r2028 = load i32, ptr %r1980
    store i32 %r2028, ptr %r2027
    %r2030 = load i32, ptr %r1976
    store i32 %r2030, ptr %r2029
    %r2032 = add i32 0,0
    store i32 %r2032, ptr %r2031
    %r2033 = load i32, ptr %r2029
    %r2034 = icmp ne i32 %r2033,0
    br i1 %r2034, label %L463, label %L465
L461:
    %r2188 = load i32, ptr %r1976
    store i32 %r2188, ptr %r2187
    %r2190 = load i32, ptr %r1976
    store i32 %r2190, ptr %r2189
    %r2192 = add i32 0,0
    store i32 %r2192, ptr %r2191
    %r2193 = load i32, ptr %r2189
    %r2194 = icmp ne i32 %r2193,0
    br i1 %r2194, label %L497, label %L499
L463:
    %r2035 = add i32 0,0
    store i32 %r2035, ptr %r0
    %r2036 = add i32 0,0
    store i32 %r2036, ptr %r2
    %r2037 = load i32, ptr %r2027
    store i32 %r2037, ptr %r4
    %r2038 = load i32, ptr %r2029
    store i32 %r2038, ptr %r6
    %r2039 = load i32, ptr %r2
    %r2040 = add i32 0,16
    %r2041 = icmp slt i32 %r2039,%r2040
    br i1 %r2041, label %L467, label %L469
L464:
    %r2183 = load i32, ptr %r2029
    %r2184 = icmp ne i32 %r2183,0
    br i1 %r2184, label %L463, label %L465
L465:
    %r2185 = load i32, ptr %r2027
    store i32 %r2185, ptr %r0
    %r2186 = load i32, ptr %r0
    store i32 %r2186, ptr %r1980
    br label %L461
L467:
    %r2044 = load i32, ptr %r4
    %r2045 = add i32 0,2
    %r2046 = srem i32 %r2044,%r2045
    %r2047 = icmp ne i32 %r2046,0
    br i1 %r2047, label %L470, label %L471
L468:
    %r2082 = load i32, ptr %r2
    %r2083 = add i32 0,16
    %r2084 = icmp slt i32 %r2082,%r2083
    br i1 %r2084, label %L467, label %L469
L469:
    %r2087 = load i32, ptr %r0
    store i32 %r2087, ptr %r2031
    %r2088 = add i32 0,0
    store i32 %r2088, ptr %r0
    %r2089 = add i32 0,0
    store i32 %r2089, ptr %r2
    %r2090 = load i32, ptr %r2027
    store i32 %r2090, ptr %r4
    %r2091 = load i32, ptr %r2029
    store i32 %r2091, ptr %r6
    %r2092 = load i32, ptr %r2
    %r2093 = add i32 0,16
    %r2094 = icmp slt i32 %r2092,%r2093
    br i1 %r2094, label %L478, label %L480
L470:
    %r2048 = load i32, ptr %r6
    %r2049 = add i32 0,2
    %r2050 = srem i32 %r2048,%r2049
    %r2051 = add i32 0,0
    %r2052 = icmp eq i32 %r2050,%r2051
    br i1 %r2052, label %L473, label %L474
L471:
    %r2062 = load i32, ptr %r6
    %r2063 = add i32 0,2
    %r2064 = srem i32 %r2062,%r2063
    %r2065 = icmp ne i32 %r2064,0
    br i1 %r2065, label %L475, label %L476
L472:
    %r2073 = load i32, ptr %r4
    %r2074 = add i32 0,2
    %r2075 = sdiv i32 %r2073,%r2074
    store i32 %r2075, ptr %r4
    %r2076 = load i32, ptr %r6
    %r2077 = add i32 0,2
    %r2078 = sdiv i32 %r2076,%r2077
    store i32 %r2078, ptr %r6
    %r2079 = load i32, ptr %r2
    %r2080 = add i32 0,1
    %r2081 = add i32 %r2079,%r2080
    store i32 %r2081, ptr %r2
    br label %L468
L473:
    %r2055 = load i32, ptr %r0
    %r2056 = add i32 0,1
    %r2057 = load i32, ptr %r2
    %r2058 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2057
    %r2059 = load i32, ptr %r2058
    %r2060 = mul i32 %r2056,%r2059
    %r2061 = add i32 %r2055,%r2060
    store i32 %r2061, ptr %r0
    br label %L474
L474:
    br label %L472
L475:
    %r2066 = load i32, ptr %r0
    %r2067 = add i32 0,1
    %r2068 = load i32, ptr %r2
    %r2069 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2068
    %r2070 = load i32, ptr %r2069
    %r2071 = mul i32 %r2067,%r2070
    %r2072 = add i32 %r2066,%r2071
    store i32 %r2072, ptr %r0
    br label %L476
L476:
    br label %L472
L478:
    %r2097 = load i32, ptr %r4
    %r2098 = add i32 0,2
    %r2099 = srem i32 %r2097,%r2098
    %r2100 = icmp ne i32 %r2099,0
    br i1 %r2100, label %L483, label %L482
L479:
    %r2124 = load i32, ptr %r2
    %r2125 = add i32 0,16
    %r2126 = icmp slt i32 %r2124,%r2125
    br i1 %r2126, label %L478, label %L480
L480:
    %r2129 = load i32, ptr %r0
    store i32 %r2129, ptr %r2029
    %r2130 = add i32 0,1
    %r2131 = add i32 0,15
    %r2132 = icmp sgt i32 %r2130,%r2131
    br i1 %r2132, label %L485, label %L486
L481:
    %r2108 = load i32, ptr %r0
    %r2109 = add i32 0,1
    %r2110 = load i32, ptr %r2
    %r2111 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2110
    %r2112 = load i32, ptr %r2111
    %r2113 = mul i32 %r2109,%r2112
    %r2114 = add i32 %r2108,%r2113
    store i32 %r2114, ptr %r0
    br label %L482
L482:
    %r2115 = load i32, ptr %r4
    %r2116 = add i32 0,2
    %r2117 = sdiv i32 %r2115,%r2116
    store i32 %r2117, ptr %r4
    %r2118 = load i32, ptr %r6
    %r2119 = add i32 0,2
    %r2120 = sdiv i32 %r2118,%r2119
    store i32 %r2120, ptr %r6
    %r2121 = load i32, ptr %r2
    %r2122 = add i32 0,1
    %r2123 = add i32 %r2121,%r2122
    store i32 %r2123, ptr %r2
    br label %L479
L483:
    %r2101 = load i32, ptr %r6
    %r2102 = add i32 0,2
    %r2103 = srem i32 %r2101,%r2102
    %r2104 = icmp ne i32 %r2103,0
    br i1 %r2104, label %L481, label %L482
L485:
    %r2135 = add i32 0,0
    store i32 %r2135, ptr %r0
    br label %L487
L486:
    %r2136 = add i32 0,0
    store i32 %r2136, ptr %r0
    %r2137 = add i32 0,0
    store i32 %r2137, ptr %r2
    %r2138 = load i32, ptr %r2029
    %r2139 = add i32 0,1
    %r2140 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2139
    %r2141 = load i32, ptr %r2140
    %r2142 = mul i32 %r2138,%r2141
    store i32 %r2142, ptr %r4
    %r2143 = add i32 0,65535
    store i32 %r2143, ptr %r6
    %r2144 = load i32, ptr %r2
    %r2145 = add i32 0,16
    %r2146 = icmp slt i32 %r2144,%r2145
    br i1 %r2146, label %L489, label %L491
L487:
    %r2181 = load i32, ptr %r0
    store i32 %r2181, ptr %r2029
    %r2182 = load i32, ptr %r2031
    store i32 %r2182, ptr %r2027
    br label %L464
L489:
    %r2149 = load i32, ptr %r4
    %r2150 = add i32 0,2
    %r2151 = srem i32 %r2149,%r2150
    %r2152 = icmp ne i32 %r2151,0
    br i1 %r2152, label %L494, label %L493
L490:
    %r2176 = load i32, ptr %r2
    %r2177 = add i32 0,16
    %r2178 = icmp slt i32 %r2176,%r2177
    br i1 %r2178, label %L489, label %L491
L491:
    br label %L487
L492:
    %r2160 = load i32, ptr %r0
    %r2161 = add i32 0,1
    %r2162 = load i32, ptr %r2
    %r2163 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2162
    %r2164 = load i32, ptr %r2163
    %r2165 = mul i32 %r2161,%r2164
    %r2166 = add i32 %r2160,%r2165
    store i32 %r2166, ptr %r0
    br label %L493
L493:
    %r2167 = load i32, ptr %r4
    %r2168 = add i32 0,2
    %r2169 = sdiv i32 %r2167,%r2168
    store i32 %r2169, ptr %r4
    %r2170 = load i32, ptr %r6
    %r2171 = add i32 0,2
    %r2172 = sdiv i32 %r2170,%r2171
    store i32 %r2172, ptr %r6
    %r2173 = load i32, ptr %r2
    %r2174 = add i32 0,1
    %r2175 = add i32 %r2173,%r2174
    store i32 %r2175, ptr %r2
    br label %L490
L494:
    %r2153 = load i32, ptr %r6
    %r2154 = add i32 0,2
    %r2155 = srem i32 %r2153,%r2154
    %r2156 = icmp ne i32 %r2155,0
    br i1 %r2156, label %L492, label %L493
L497:
    %r2195 = add i32 0,0
    store i32 %r2195, ptr %r0
    %r2196 = add i32 0,0
    store i32 %r2196, ptr %r2
    %r2197 = load i32, ptr %r2187
    store i32 %r2197, ptr %r4
    %r2198 = load i32, ptr %r2189
    store i32 %r2198, ptr %r6
    %r2199 = load i32, ptr %r2
    %r2200 = add i32 0,16
    %r2201 = icmp slt i32 %r2199,%r2200
    br i1 %r2201, label %L501, label %L503
L498:
    %r2343 = load i32, ptr %r2189
    %r2344 = icmp ne i32 %r2343,0
    br i1 %r2344, label %L497, label %L499
L499:
    %r2345 = load i32, ptr %r2187
    store i32 %r2345, ptr %r0
    %r2346 = load i32, ptr %r0
    store i32 %r2346, ptr %r1976
    %r2347 = load i32, ptr %r1978
    store i32 %r2347, ptr %r4
    %r2348 = add i32 0,1
    store i32 %r2348, ptr %r6
    %r2349 = load i32, ptr %r6
    %r2350 = add i32 0,15
    %r2351 = icmp sge i32 %r2349,%r2350
    br i1 %r2351, label %L530, label %L531
L501:
    %r2204 = load i32, ptr %r4
    %r2205 = add i32 0,2
    %r2206 = srem i32 %r2204,%r2205
    %r2207 = icmp ne i32 %r2206,0
    br i1 %r2207, label %L504, label %L505
L502:
    %r2242 = load i32, ptr %r2
    %r2243 = add i32 0,16
    %r2244 = icmp slt i32 %r2242,%r2243
    br i1 %r2244, label %L501, label %L503
L503:
    %r2247 = load i32, ptr %r0
    store i32 %r2247, ptr %r2191
    %r2248 = add i32 0,0
    store i32 %r2248, ptr %r0
    %r2249 = add i32 0,0
    store i32 %r2249, ptr %r2
    %r2250 = load i32, ptr %r2187
    store i32 %r2250, ptr %r4
    %r2251 = load i32, ptr %r2189
    store i32 %r2251, ptr %r6
    %r2252 = load i32, ptr %r2
    %r2253 = add i32 0,16
    %r2254 = icmp slt i32 %r2252,%r2253
    br i1 %r2254, label %L512, label %L514
L504:
    %r2208 = load i32, ptr %r6
    %r2209 = add i32 0,2
    %r2210 = srem i32 %r2208,%r2209
    %r2211 = add i32 0,0
    %r2212 = icmp eq i32 %r2210,%r2211
    br i1 %r2212, label %L507, label %L508
L505:
    %r2222 = load i32, ptr %r6
    %r2223 = add i32 0,2
    %r2224 = srem i32 %r2222,%r2223
    %r2225 = icmp ne i32 %r2224,0
    br i1 %r2225, label %L509, label %L510
L506:
    %r2233 = load i32, ptr %r4
    %r2234 = add i32 0,2
    %r2235 = sdiv i32 %r2233,%r2234
    store i32 %r2235, ptr %r4
    %r2236 = load i32, ptr %r6
    %r2237 = add i32 0,2
    %r2238 = sdiv i32 %r2236,%r2237
    store i32 %r2238, ptr %r6
    %r2239 = load i32, ptr %r2
    %r2240 = add i32 0,1
    %r2241 = add i32 %r2239,%r2240
    store i32 %r2241, ptr %r2
    br label %L502
L507:
    %r2215 = load i32, ptr %r0
    %r2216 = add i32 0,1
    %r2217 = load i32, ptr %r2
    %r2218 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2217
    %r2219 = load i32, ptr %r2218
    %r2220 = mul i32 %r2216,%r2219
    %r2221 = add i32 %r2215,%r2220
    store i32 %r2221, ptr %r0
    br label %L508
L508:
    br label %L506
L509:
    %r2226 = load i32, ptr %r0
    %r2227 = add i32 0,1
    %r2228 = load i32, ptr %r2
    %r2229 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2228
    %r2230 = load i32, ptr %r2229
    %r2231 = mul i32 %r2227,%r2230
    %r2232 = add i32 %r2226,%r2231
    store i32 %r2232, ptr %r0
    br label %L510
L510:
    br label %L506
L512:
    %r2257 = load i32, ptr %r4
    %r2258 = add i32 0,2
    %r2259 = srem i32 %r2257,%r2258
    %r2260 = icmp ne i32 %r2259,0
    br i1 %r2260, label %L517, label %L516
L513:
    %r2284 = load i32, ptr %r2
    %r2285 = add i32 0,16
    %r2286 = icmp slt i32 %r2284,%r2285
    br i1 %r2286, label %L512, label %L514
L514:
    %r2289 = load i32, ptr %r0
    store i32 %r2289, ptr %r2189
    %r2290 = add i32 0,1
    %r2291 = add i32 0,15
    %r2292 = icmp sgt i32 %r2290,%r2291
    br i1 %r2292, label %L519, label %L520
L515:
    %r2268 = load i32, ptr %r0
    %r2269 = add i32 0,1
    %r2270 = load i32, ptr %r2
    %r2271 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2270
    %r2272 = load i32, ptr %r2271
    %r2273 = mul i32 %r2269,%r2272
    %r2274 = add i32 %r2268,%r2273
    store i32 %r2274, ptr %r0
    br label %L516
L516:
    %r2275 = load i32, ptr %r4
    %r2276 = add i32 0,2
    %r2277 = sdiv i32 %r2275,%r2276
    store i32 %r2277, ptr %r4
    %r2278 = load i32, ptr %r6
    %r2279 = add i32 0,2
    %r2280 = sdiv i32 %r2278,%r2279
    store i32 %r2280, ptr %r6
    %r2281 = load i32, ptr %r2
    %r2282 = add i32 0,1
    %r2283 = add i32 %r2281,%r2282
    store i32 %r2283, ptr %r2
    br label %L513
L517:
    %r2261 = load i32, ptr %r6
    %r2262 = add i32 0,2
    %r2263 = srem i32 %r2261,%r2262
    %r2264 = icmp ne i32 %r2263,0
    br i1 %r2264, label %L515, label %L516
L519:
    %r2295 = add i32 0,0
    store i32 %r2295, ptr %r0
    br label %L521
L520:
    %r2296 = add i32 0,0
    store i32 %r2296, ptr %r0
    %r2297 = add i32 0,0
    store i32 %r2297, ptr %r2
    %r2298 = load i32, ptr %r2189
    %r2299 = add i32 0,1
    %r2300 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2299
    %r2301 = load i32, ptr %r2300
    %r2302 = mul i32 %r2298,%r2301
    store i32 %r2302, ptr %r4
    %r2303 = add i32 0,65535
    store i32 %r2303, ptr %r6
    %r2304 = load i32, ptr %r2
    %r2305 = add i32 0,16
    %r2306 = icmp slt i32 %r2304,%r2305
    br i1 %r2306, label %L523, label %L525
L521:
    %r2341 = load i32, ptr %r0
    store i32 %r2341, ptr %r2189
    %r2342 = load i32, ptr %r2191
    store i32 %r2342, ptr %r2187
    br label %L498
L523:
    %r2309 = load i32, ptr %r4
    %r2310 = add i32 0,2
    %r2311 = srem i32 %r2309,%r2310
    %r2312 = icmp ne i32 %r2311,0
    br i1 %r2312, label %L528, label %L527
L524:
    %r2336 = load i32, ptr %r2
    %r2337 = add i32 0,16
    %r2338 = icmp slt i32 %r2336,%r2337
    br i1 %r2338, label %L523, label %L525
L525:
    br label %L521
L526:
    %r2320 = load i32, ptr %r0
    %r2321 = add i32 0,1
    %r2322 = load i32, ptr %r2
    %r2323 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2322
    %r2324 = load i32, ptr %r2323
    %r2325 = mul i32 %r2321,%r2324
    %r2326 = add i32 %r2320,%r2325
    store i32 %r2326, ptr %r0
    br label %L527
L527:
    %r2327 = load i32, ptr %r4
    %r2328 = add i32 0,2
    %r2329 = sdiv i32 %r2327,%r2328
    store i32 %r2329, ptr %r4
    %r2330 = load i32, ptr %r6
    %r2331 = add i32 0,2
    %r2332 = sdiv i32 %r2330,%r2331
    store i32 %r2332, ptr %r6
    %r2333 = load i32, ptr %r2
    %r2334 = add i32 0,1
    %r2335 = add i32 %r2333,%r2334
    store i32 %r2335, ptr %r2
    br label %L524
L528:
    %r2313 = load i32, ptr %r6
    %r2314 = add i32 0,2
    %r2315 = srem i32 %r2313,%r2314
    %r2316 = icmp ne i32 %r2315,0
    br i1 %r2316, label %L526, label %L527
L530:
    %r2354 = load i32, ptr %r4
    %r2355 = add i32 0,0
    %r2356 = icmp slt i32 %r2354,%r2355
    br i1 %r2356, label %L533, label %L534
L531:
    %r2361 = load i32, ptr %r6
    %r2362 = add i32 0,0
    %r2363 = icmp sgt i32 %r2361,%r2362
    br i1 %r2363, label %L536, label %L537
L532:
    %r2393 = load i32, ptr %r0
    store i32 %r2393, ptr %r1978
    br label %L450
L533:
    %r2359 = add i32 0,65535
    store i32 %r2359, ptr %r0
    br label %L535
L534:
    %r2360 = add i32 0,0
    store i32 %r2360, ptr %r0
    br label %L535
L535:
    br label %L532
L536:
    %r2366 = load i32, ptr %r4
    %r2367 = add i32 0,32767
    %r2368 = icmp sgt i32 %r2366,%r2367
    br i1 %r2368, label %L539, label %L540
L537:
    %r2392 = load i32, ptr %r4
    store i32 %r2392, ptr %r0
    br label %L538
L538:
    br label %L532
L539:
    %r2371 = load i32, ptr %r4
    %r2372 = load i32, ptr %r6
    %r2373 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2372
    %r2374 = load i32, ptr %r2373
    %r2375 = sdiv i32 %r2371,%r2374
    store i32 %r2375, ptr %r4
    %r2376 = load i32, ptr %r4
    %r2377 = add i32 0,65536
    %r2378 = add i32 %r2376,%r2377
    %r2379 = add i32 0,15
    %r2380 = load i32, ptr %r6
    %r2381 = sub i32 %r2379,%r2380
    %r2382 = add i32 0,1
    %r2383 = add i32 %r2381,%r2382
    %r2384 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2383
    %r2385 = load i32, ptr %r2384
    %r2386 = sub i32 %r2378,%r2385
    store i32 %r2386, ptr %r0
    br label %L541
L540:
    %r2387 = load i32, ptr %r4
    %r2388 = load i32, ptr %r6
    %r2389 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2388
    %r2390 = load i32, ptr %r2389
    %r2391 = sdiv i32 %r2387,%r2390
    store i32 %r2391, ptr %r0
    br label %L541
L541:
    br label %L538
L543:
    %r2406 = add i32 0,0
    store i32 %r2406, ptr %r0
    %r2407 = add i32 0,0
    store i32 %r2407, ptr %r2
    %r2408 = load i32, ptr %r2400
    store i32 %r2408, ptr %r4
    %r2409 = add i32 0,1
    store i32 %r2409, ptr %r6
    %r2410 = load i32, ptr %r2
    %r2411 = add i32 0,16
    %r2412 = icmp slt i32 %r2410,%r2411
    br i1 %r2412, label %L547, label %L549
L544:
    %r2816 = load i32, ptr %r2400
    %r2817 = icmp ne i32 %r2816,0
    br i1 %r2817, label %L543, label %L545
L545:
    %r2818 = load i32, ptr %r2402
    store i32 %r2818, ptr %r0
    %r2819 = load i32, ptr %r0
    store i32 %r2819, ptr %r1922
    %r2820 = load i32, ptr %r1924
    store i32 %r2820, ptr %r4
    %r2821 = add i32 0,1
    store i32 %r2821, ptr %r6
    %r2822 = load i32, ptr %r6
    %r2823 = add i32 0,15
    %r2824 = icmp sge i32 %r2822,%r2823
    br i1 %r2824, label %L636, label %L637
L547:
    %r2415 = load i32, ptr %r4
    %r2416 = add i32 0,2
    %r2417 = srem i32 %r2415,%r2416
    %r2418 = icmp ne i32 %r2417,0
    br i1 %r2418, label %L552, label %L551
L548:
    %r2442 = load i32, ptr %r2
    %r2443 = add i32 0,16
    %r2444 = icmp slt i32 %r2442,%r2443
    br i1 %r2444, label %L547, label %L549
L549:
    %r2447 = load i32, ptr %r0
    %r2448 = icmp ne i32 %r2447,0
    br i1 %r2448, label %L554, label %L555
L550:
    %r2426 = load i32, ptr %r0
    %r2427 = add i32 0,1
    %r2428 = load i32, ptr %r2
    %r2429 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2428
    %r2430 = load i32, ptr %r2429
    %r2431 = mul i32 %r2427,%r2430
    %r2432 = add i32 %r2426,%r2431
    store i32 %r2432, ptr %r0
    br label %L551
L551:
    %r2433 = load i32, ptr %r4
    %r2434 = add i32 0,2
    %r2435 = sdiv i32 %r2433,%r2434
    store i32 %r2435, ptr %r4
    %r2436 = load i32, ptr %r6
    %r2437 = add i32 0,2
    %r2438 = sdiv i32 %r2436,%r2437
    store i32 %r2438, ptr %r6
    %r2439 = load i32, ptr %r2
    %r2440 = add i32 0,1
    %r2441 = add i32 %r2439,%r2440
    store i32 %r2441, ptr %r2
    br label %L548
L552:
    %r2419 = load i32, ptr %r6
    %r2420 = add i32 0,2
    %r2421 = srem i32 %r2419,%r2420
    %r2422 = icmp ne i32 %r2421,0
    br i1 %r2422, label %L550, label %L551
L554:
    %r2450 = load i32, ptr %r2402
    store i32 %r2450, ptr %r2449
    %r2452 = load i32, ptr %r2398
    store i32 %r2452, ptr %r2451
    %r2454 = add i32 0,0
    store i32 %r2454, ptr %r2453
    %r2455 = load i32, ptr %r2451
    %r2456 = icmp ne i32 %r2455,0
    br i1 %r2456, label %L557, label %L559
L555:
    %r2610 = load i32, ptr %r2398
    store i32 %r2610, ptr %r2609
    %r2612 = load i32, ptr %r2398
    store i32 %r2612, ptr %r2611
    %r2614 = add i32 0,0
    store i32 %r2614, ptr %r2613
    %r2615 = load i32, ptr %r2611
    %r2616 = icmp ne i32 %r2615,0
    br i1 %r2616, label %L591, label %L593
L557:
    %r2457 = add i32 0,0
    store i32 %r2457, ptr %r0
    %r2458 = add i32 0,0
    store i32 %r2458, ptr %r2
    %r2459 = load i32, ptr %r2449
    store i32 %r2459, ptr %r4
    %r2460 = load i32, ptr %r2451
    store i32 %r2460, ptr %r6
    %r2461 = load i32, ptr %r2
    %r2462 = add i32 0,16
    %r2463 = icmp slt i32 %r2461,%r2462
    br i1 %r2463, label %L561, label %L563
L558:
    %r2605 = load i32, ptr %r2451
    %r2606 = icmp ne i32 %r2605,0
    br i1 %r2606, label %L557, label %L559
L559:
    %r2607 = load i32, ptr %r2449
    store i32 %r2607, ptr %r0
    %r2608 = load i32, ptr %r0
    store i32 %r2608, ptr %r2402
    br label %L555
L561:
    %r2466 = load i32, ptr %r4
    %r2467 = add i32 0,2
    %r2468 = srem i32 %r2466,%r2467
    %r2469 = icmp ne i32 %r2468,0
    br i1 %r2469, label %L564, label %L565
L562:
    %r2504 = load i32, ptr %r2
    %r2505 = add i32 0,16
    %r2506 = icmp slt i32 %r2504,%r2505
    br i1 %r2506, label %L561, label %L563
L563:
    %r2509 = load i32, ptr %r0
    store i32 %r2509, ptr %r2453
    %r2510 = add i32 0,0
    store i32 %r2510, ptr %r0
    %r2511 = add i32 0,0
    store i32 %r2511, ptr %r2
    %r2512 = load i32, ptr %r2449
    store i32 %r2512, ptr %r4
    %r2513 = load i32, ptr %r2451
    store i32 %r2513, ptr %r6
    %r2514 = load i32, ptr %r2
    %r2515 = add i32 0,16
    %r2516 = icmp slt i32 %r2514,%r2515
    br i1 %r2516, label %L572, label %L574
L564:
    %r2470 = load i32, ptr %r6
    %r2471 = add i32 0,2
    %r2472 = srem i32 %r2470,%r2471
    %r2473 = add i32 0,0
    %r2474 = icmp eq i32 %r2472,%r2473
    br i1 %r2474, label %L567, label %L568
L565:
    %r2484 = load i32, ptr %r6
    %r2485 = add i32 0,2
    %r2486 = srem i32 %r2484,%r2485
    %r2487 = icmp ne i32 %r2486,0
    br i1 %r2487, label %L569, label %L570
L566:
    %r2495 = load i32, ptr %r4
    %r2496 = add i32 0,2
    %r2497 = sdiv i32 %r2495,%r2496
    store i32 %r2497, ptr %r4
    %r2498 = load i32, ptr %r6
    %r2499 = add i32 0,2
    %r2500 = sdiv i32 %r2498,%r2499
    store i32 %r2500, ptr %r6
    %r2501 = load i32, ptr %r2
    %r2502 = add i32 0,1
    %r2503 = add i32 %r2501,%r2502
    store i32 %r2503, ptr %r2
    br label %L562
L567:
    %r2477 = load i32, ptr %r0
    %r2478 = add i32 0,1
    %r2479 = load i32, ptr %r2
    %r2480 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2479
    %r2481 = load i32, ptr %r2480
    %r2482 = mul i32 %r2478,%r2481
    %r2483 = add i32 %r2477,%r2482
    store i32 %r2483, ptr %r0
    br label %L568
L568:
    br label %L566
L569:
    %r2488 = load i32, ptr %r0
    %r2489 = add i32 0,1
    %r2490 = load i32, ptr %r2
    %r2491 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2490
    %r2492 = load i32, ptr %r2491
    %r2493 = mul i32 %r2489,%r2492
    %r2494 = add i32 %r2488,%r2493
    store i32 %r2494, ptr %r0
    br label %L570
L570:
    br label %L566
L572:
    %r2519 = load i32, ptr %r4
    %r2520 = add i32 0,2
    %r2521 = srem i32 %r2519,%r2520
    %r2522 = icmp ne i32 %r2521,0
    br i1 %r2522, label %L577, label %L576
L573:
    %r2546 = load i32, ptr %r2
    %r2547 = add i32 0,16
    %r2548 = icmp slt i32 %r2546,%r2547
    br i1 %r2548, label %L572, label %L574
L574:
    %r2551 = load i32, ptr %r0
    store i32 %r2551, ptr %r2451
    %r2552 = add i32 0,1
    %r2553 = add i32 0,15
    %r2554 = icmp sgt i32 %r2552,%r2553
    br i1 %r2554, label %L579, label %L580
L575:
    %r2530 = load i32, ptr %r0
    %r2531 = add i32 0,1
    %r2532 = load i32, ptr %r2
    %r2533 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2532
    %r2534 = load i32, ptr %r2533
    %r2535 = mul i32 %r2531,%r2534
    %r2536 = add i32 %r2530,%r2535
    store i32 %r2536, ptr %r0
    br label %L576
L576:
    %r2537 = load i32, ptr %r4
    %r2538 = add i32 0,2
    %r2539 = sdiv i32 %r2537,%r2538
    store i32 %r2539, ptr %r4
    %r2540 = load i32, ptr %r6
    %r2541 = add i32 0,2
    %r2542 = sdiv i32 %r2540,%r2541
    store i32 %r2542, ptr %r6
    %r2543 = load i32, ptr %r2
    %r2544 = add i32 0,1
    %r2545 = add i32 %r2543,%r2544
    store i32 %r2545, ptr %r2
    br label %L573
L577:
    %r2523 = load i32, ptr %r6
    %r2524 = add i32 0,2
    %r2525 = srem i32 %r2523,%r2524
    %r2526 = icmp ne i32 %r2525,0
    br i1 %r2526, label %L575, label %L576
L579:
    %r2557 = add i32 0,0
    store i32 %r2557, ptr %r0
    br label %L581
L580:
    %r2558 = add i32 0,0
    store i32 %r2558, ptr %r0
    %r2559 = add i32 0,0
    store i32 %r2559, ptr %r2
    %r2560 = load i32, ptr %r2451
    %r2561 = add i32 0,1
    %r2562 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2561
    %r2563 = load i32, ptr %r2562
    %r2564 = mul i32 %r2560,%r2563
    store i32 %r2564, ptr %r4
    %r2565 = add i32 0,65535
    store i32 %r2565, ptr %r6
    %r2566 = load i32, ptr %r2
    %r2567 = add i32 0,16
    %r2568 = icmp slt i32 %r2566,%r2567
    br i1 %r2568, label %L583, label %L585
L581:
    %r2603 = load i32, ptr %r0
    store i32 %r2603, ptr %r2451
    %r2604 = load i32, ptr %r2453
    store i32 %r2604, ptr %r2449
    br label %L558
L583:
    %r2571 = load i32, ptr %r4
    %r2572 = add i32 0,2
    %r2573 = srem i32 %r2571,%r2572
    %r2574 = icmp ne i32 %r2573,0
    br i1 %r2574, label %L588, label %L587
L584:
    %r2598 = load i32, ptr %r2
    %r2599 = add i32 0,16
    %r2600 = icmp slt i32 %r2598,%r2599
    br i1 %r2600, label %L583, label %L585
L585:
    br label %L581
L586:
    %r2582 = load i32, ptr %r0
    %r2583 = add i32 0,1
    %r2584 = load i32, ptr %r2
    %r2585 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2584
    %r2586 = load i32, ptr %r2585
    %r2587 = mul i32 %r2583,%r2586
    %r2588 = add i32 %r2582,%r2587
    store i32 %r2588, ptr %r0
    br label %L587
L587:
    %r2589 = load i32, ptr %r4
    %r2590 = add i32 0,2
    %r2591 = sdiv i32 %r2589,%r2590
    store i32 %r2591, ptr %r4
    %r2592 = load i32, ptr %r6
    %r2593 = add i32 0,2
    %r2594 = sdiv i32 %r2592,%r2593
    store i32 %r2594, ptr %r6
    %r2595 = load i32, ptr %r2
    %r2596 = add i32 0,1
    %r2597 = add i32 %r2595,%r2596
    store i32 %r2597, ptr %r2
    br label %L584
L588:
    %r2575 = load i32, ptr %r6
    %r2576 = add i32 0,2
    %r2577 = srem i32 %r2575,%r2576
    %r2578 = icmp ne i32 %r2577,0
    br i1 %r2578, label %L586, label %L587
L591:
    %r2617 = add i32 0,0
    store i32 %r2617, ptr %r0
    %r2618 = add i32 0,0
    store i32 %r2618, ptr %r2
    %r2619 = load i32, ptr %r2609
    store i32 %r2619, ptr %r4
    %r2620 = load i32, ptr %r2611
    store i32 %r2620, ptr %r6
    %r2621 = load i32, ptr %r2
    %r2622 = add i32 0,16
    %r2623 = icmp slt i32 %r2621,%r2622
    br i1 %r2623, label %L595, label %L597
L592:
    %r2765 = load i32, ptr %r2611
    %r2766 = icmp ne i32 %r2765,0
    br i1 %r2766, label %L591, label %L593
L593:
    %r2767 = load i32, ptr %r2609
    store i32 %r2767, ptr %r0
    %r2768 = load i32, ptr %r0
    store i32 %r2768, ptr %r2398
    %r2769 = load i32, ptr %r2400
    store i32 %r2769, ptr %r4
    %r2770 = add i32 0,1
    store i32 %r2770, ptr %r6
    %r2771 = load i32, ptr %r6
    %r2772 = add i32 0,15
    %r2773 = icmp sge i32 %r2771,%r2772
    br i1 %r2773, label %L624, label %L625
L595:
    %r2626 = load i32, ptr %r4
    %r2627 = add i32 0,2
    %r2628 = srem i32 %r2626,%r2627
    %r2629 = icmp ne i32 %r2628,0
    br i1 %r2629, label %L598, label %L599
L596:
    %r2664 = load i32, ptr %r2
    %r2665 = add i32 0,16
    %r2666 = icmp slt i32 %r2664,%r2665
    br i1 %r2666, label %L595, label %L597
L597:
    %r2669 = load i32, ptr %r0
    store i32 %r2669, ptr %r2613
    %r2670 = add i32 0,0
    store i32 %r2670, ptr %r0
    %r2671 = add i32 0,0
    store i32 %r2671, ptr %r2
    %r2672 = load i32, ptr %r2609
    store i32 %r2672, ptr %r4
    %r2673 = load i32, ptr %r2611
    store i32 %r2673, ptr %r6
    %r2674 = load i32, ptr %r2
    %r2675 = add i32 0,16
    %r2676 = icmp slt i32 %r2674,%r2675
    br i1 %r2676, label %L606, label %L608
L598:
    %r2630 = load i32, ptr %r6
    %r2631 = add i32 0,2
    %r2632 = srem i32 %r2630,%r2631
    %r2633 = add i32 0,0
    %r2634 = icmp eq i32 %r2632,%r2633
    br i1 %r2634, label %L601, label %L602
L599:
    %r2644 = load i32, ptr %r6
    %r2645 = add i32 0,2
    %r2646 = srem i32 %r2644,%r2645
    %r2647 = icmp ne i32 %r2646,0
    br i1 %r2647, label %L603, label %L604
L600:
    %r2655 = load i32, ptr %r4
    %r2656 = add i32 0,2
    %r2657 = sdiv i32 %r2655,%r2656
    store i32 %r2657, ptr %r4
    %r2658 = load i32, ptr %r6
    %r2659 = add i32 0,2
    %r2660 = sdiv i32 %r2658,%r2659
    store i32 %r2660, ptr %r6
    %r2661 = load i32, ptr %r2
    %r2662 = add i32 0,1
    %r2663 = add i32 %r2661,%r2662
    store i32 %r2663, ptr %r2
    br label %L596
L601:
    %r2637 = load i32, ptr %r0
    %r2638 = add i32 0,1
    %r2639 = load i32, ptr %r2
    %r2640 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2639
    %r2641 = load i32, ptr %r2640
    %r2642 = mul i32 %r2638,%r2641
    %r2643 = add i32 %r2637,%r2642
    store i32 %r2643, ptr %r0
    br label %L602
L602:
    br label %L600
L603:
    %r2648 = load i32, ptr %r0
    %r2649 = add i32 0,1
    %r2650 = load i32, ptr %r2
    %r2651 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2650
    %r2652 = load i32, ptr %r2651
    %r2653 = mul i32 %r2649,%r2652
    %r2654 = add i32 %r2648,%r2653
    store i32 %r2654, ptr %r0
    br label %L604
L604:
    br label %L600
L606:
    %r2679 = load i32, ptr %r4
    %r2680 = add i32 0,2
    %r2681 = srem i32 %r2679,%r2680
    %r2682 = icmp ne i32 %r2681,0
    br i1 %r2682, label %L611, label %L610
L607:
    %r2706 = load i32, ptr %r2
    %r2707 = add i32 0,16
    %r2708 = icmp slt i32 %r2706,%r2707
    br i1 %r2708, label %L606, label %L608
L608:
    %r2711 = load i32, ptr %r0
    store i32 %r2711, ptr %r2611
    %r2712 = add i32 0,1
    %r2713 = add i32 0,15
    %r2714 = icmp sgt i32 %r2712,%r2713
    br i1 %r2714, label %L613, label %L614
L609:
    %r2690 = load i32, ptr %r0
    %r2691 = add i32 0,1
    %r2692 = load i32, ptr %r2
    %r2693 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2692
    %r2694 = load i32, ptr %r2693
    %r2695 = mul i32 %r2691,%r2694
    %r2696 = add i32 %r2690,%r2695
    store i32 %r2696, ptr %r0
    br label %L610
L610:
    %r2697 = load i32, ptr %r4
    %r2698 = add i32 0,2
    %r2699 = sdiv i32 %r2697,%r2698
    store i32 %r2699, ptr %r4
    %r2700 = load i32, ptr %r6
    %r2701 = add i32 0,2
    %r2702 = sdiv i32 %r2700,%r2701
    store i32 %r2702, ptr %r6
    %r2703 = load i32, ptr %r2
    %r2704 = add i32 0,1
    %r2705 = add i32 %r2703,%r2704
    store i32 %r2705, ptr %r2
    br label %L607
L611:
    %r2683 = load i32, ptr %r6
    %r2684 = add i32 0,2
    %r2685 = srem i32 %r2683,%r2684
    %r2686 = icmp ne i32 %r2685,0
    br i1 %r2686, label %L609, label %L610
L613:
    %r2717 = add i32 0,0
    store i32 %r2717, ptr %r0
    br label %L615
L614:
    %r2718 = add i32 0,0
    store i32 %r2718, ptr %r0
    %r2719 = add i32 0,0
    store i32 %r2719, ptr %r2
    %r2720 = load i32, ptr %r2611
    %r2721 = add i32 0,1
    %r2722 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2721
    %r2723 = load i32, ptr %r2722
    %r2724 = mul i32 %r2720,%r2723
    store i32 %r2724, ptr %r4
    %r2725 = add i32 0,65535
    store i32 %r2725, ptr %r6
    %r2726 = load i32, ptr %r2
    %r2727 = add i32 0,16
    %r2728 = icmp slt i32 %r2726,%r2727
    br i1 %r2728, label %L617, label %L619
L615:
    %r2763 = load i32, ptr %r0
    store i32 %r2763, ptr %r2611
    %r2764 = load i32, ptr %r2613
    store i32 %r2764, ptr %r2609
    br label %L592
L617:
    %r2731 = load i32, ptr %r4
    %r2732 = add i32 0,2
    %r2733 = srem i32 %r2731,%r2732
    %r2734 = icmp ne i32 %r2733,0
    br i1 %r2734, label %L622, label %L621
L618:
    %r2758 = load i32, ptr %r2
    %r2759 = add i32 0,16
    %r2760 = icmp slt i32 %r2758,%r2759
    br i1 %r2760, label %L617, label %L619
L619:
    br label %L615
L620:
    %r2742 = load i32, ptr %r0
    %r2743 = add i32 0,1
    %r2744 = load i32, ptr %r2
    %r2745 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2744
    %r2746 = load i32, ptr %r2745
    %r2747 = mul i32 %r2743,%r2746
    %r2748 = add i32 %r2742,%r2747
    store i32 %r2748, ptr %r0
    br label %L621
L621:
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
    br label %L618
L622:
    %r2735 = load i32, ptr %r6
    %r2736 = add i32 0,2
    %r2737 = srem i32 %r2735,%r2736
    %r2738 = icmp ne i32 %r2737,0
    br i1 %r2738, label %L620, label %L621
L624:
    %r2776 = load i32, ptr %r4
    %r2777 = add i32 0,0
    %r2778 = icmp slt i32 %r2776,%r2777
    br i1 %r2778, label %L627, label %L628
L625:
    %r2783 = load i32, ptr %r6
    %r2784 = add i32 0,0
    %r2785 = icmp sgt i32 %r2783,%r2784
    br i1 %r2785, label %L630, label %L631
L626:
    %r2815 = load i32, ptr %r0
    store i32 %r2815, ptr %r2400
    br label %L544
L627:
    %r2781 = add i32 0,65535
    store i32 %r2781, ptr %r0
    br label %L629
L628:
    %r2782 = add i32 0,0
    store i32 %r2782, ptr %r0
    br label %L629
L629:
    br label %L626
L630:
    %r2788 = load i32, ptr %r4
    %r2789 = add i32 0,32767
    %r2790 = icmp sgt i32 %r2788,%r2789
    br i1 %r2790, label %L633, label %L634
L631:
    %r2814 = load i32, ptr %r4
    store i32 %r2814, ptr %r0
    br label %L632
L632:
    br label %L626
L633:
    %r2793 = load i32, ptr %r4
    %r2794 = load i32, ptr %r6
    %r2795 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2794
    %r2796 = load i32, ptr %r2795
    %r2797 = sdiv i32 %r2793,%r2796
    store i32 %r2797, ptr %r4
    %r2798 = load i32, ptr %r4
    %r2799 = add i32 0,65536
    %r2800 = add i32 %r2798,%r2799
    %r2801 = add i32 0,15
    %r2802 = load i32, ptr %r6
    %r2803 = sub i32 %r2801,%r2802
    %r2804 = add i32 0,1
    %r2805 = add i32 %r2803,%r2804
    %r2806 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2805
    %r2807 = load i32, ptr %r2806
    %r2808 = sub i32 %r2800,%r2807
    store i32 %r2808, ptr %r0
    br label %L635
L634:
    %r2809 = load i32, ptr %r4
    %r2810 = load i32, ptr %r6
    %r2811 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2810
    %r2812 = load i32, ptr %r2811
    %r2813 = sdiv i32 %r2809,%r2812
    store i32 %r2813, ptr %r0
    br label %L635
L635:
    br label %L632
L636:
    %r2827 = load i32, ptr %r4
    %r2828 = add i32 0,0
    %r2829 = icmp slt i32 %r2827,%r2828
    br i1 %r2829, label %L639, label %L640
L637:
    %r2834 = load i32, ptr %r6
    %r2835 = add i32 0,0
    %r2836 = icmp sgt i32 %r2834,%r2835
    br i1 %r2836, label %L642, label %L643
L638:
    %r2866 = load i32, ptr %r0
    store i32 %r2866, ptr %r1924
    br label %L436
L639:
    %r2832 = add i32 0,65535
    store i32 %r2832, ptr %r0
    br label %L641
L640:
    %r2833 = add i32 0,0
    store i32 %r2833, ptr %r0
    br label %L641
L641:
    br label %L638
L642:
    %r2839 = load i32, ptr %r4
    %r2840 = add i32 0,32767
    %r2841 = icmp sgt i32 %r2839,%r2840
    br i1 %r2841, label %L645, label %L646
L643:
    %r2865 = load i32, ptr %r4
    store i32 %r2865, ptr %r0
    br label %L644
L644:
    br label %L638
L645:
    %r2844 = load i32, ptr %r4
    %r2845 = load i32, ptr %r6
    %r2846 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2845
    %r2847 = load i32, ptr %r2846
    %r2848 = sdiv i32 %r2844,%r2847
    store i32 %r2848, ptr %r4
    %r2849 = load i32, ptr %r4
    %r2850 = add i32 0,65536
    %r2851 = add i32 %r2849,%r2850
    %r2852 = add i32 0,15
    %r2853 = load i32, ptr %r6
    %r2854 = sub i32 %r2852,%r2853
    %r2855 = add i32 0,1
    %r2856 = add i32 %r2854,%r2855
    %r2857 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2856
    %r2858 = load i32, ptr %r2857
    %r2859 = sub i32 %r2851,%r2858
    store i32 %r2859, ptr %r0
    br label %L647
L646:
    %r2860 = load i32, ptr %r4
    %r2861 = load i32, ptr %r6
    %r2862 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2861
    %r2863 = load i32, ptr %r2862
    %r2864 = sdiv i32 %r2860,%r2863
    store i32 %r2864, ptr %r0
    br label %L647
L647:
    br label %L644
L649:
    %r2890 = add i32 0,2
    store i32 %r2890, ptr %r2889
    %r2892 = load i32, ptr %r8
    store i32 %r2892, ptr %r2891
    %r2894 = add i32 0,1
    store i32 %r2894, ptr %r2893
    %r2895 = load i32, ptr %r2891
    %r2896 = add i32 0,0
    %r2897 = icmp sgt i32 %r2895,%r2896
    br i1 %r2897, label %L653, label %L655
L650:
    %r3851 = load i32, ptr %r8
    %r3852 = add i32 0,16
    %r3853 = icmp slt i32 %r3851,%r3852
    br i1 %r3853, label %L649, label %L651
L651:
    %r3856 = add i32 0,0
    ret i32 %r3856
L653:
    %r2900 = add i32 0,0
    store i32 %r2900, ptr %r0
    %r2901 = add i32 0,0
    store i32 %r2901, ptr %r2
    %r2902 = load i32, ptr %r2891
    store i32 %r2902, ptr %r4
    %r2903 = add i32 0,1
    store i32 %r2903, ptr %r6
    %r2904 = load i32, ptr %r2
    %r2905 = add i32 0,16
    %r2906 = icmp slt i32 %r2904,%r2905
    br i1 %r2906, label %L657, label %L659
L654:
    %r3834 = load i32, ptr %r2891
    %r3835 = add i32 0,0
    %r3836 = icmp sgt i32 %r3834,%r3835
    br i1 %r3836, label %L653, label %L655
L655:
    %r3839 = load i32, ptr %r2893
    store i32 %r3839, ptr %r0
    %r3840 = load i32, ptr %r8
    %r3841 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3840
    %r3842 = load i32, ptr %r3841
    %r3843 = load i32, ptr %r0
    %r3844 = icmp ne i32 %r3842,%r3843
    br i1 %r3844, label %L866, label %L867
L657:
    %r2909 = load i32, ptr %r4
    %r2910 = add i32 0,2
    %r2911 = srem i32 %r2909,%r2910
    %r2912 = icmp ne i32 %r2911,0
    br i1 %r2912, label %L662, label %L661
L658:
    %r2936 = load i32, ptr %r2
    %r2937 = add i32 0,16
    %r2938 = icmp slt i32 %r2936,%r2937
    br i1 %r2938, label %L657, label %L659
L659:
    %r2941 = load i32, ptr %r0
    %r2942 = icmp ne i32 %r2941,0
    br i1 %r2942, label %L664, label %L665
L660:
    %r2920 = load i32, ptr %r0
    %r2921 = add i32 0,1
    %r2922 = load i32, ptr %r2
    %r2923 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2922
    %r2924 = load i32, ptr %r2923
    %r2925 = mul i32 %r2921,%r2924
    %r2926 = add i32 %r2920,%r2925
    store i32 %r2926, ptr %r0
    br label %L661
L661:
    %r2927 = load i32, ptr %r4
    %r2928 = add i32 0,2
    %r2929 = sdiv i32 %r2927,%r2928
    store i32 %r2929, ptr %r4
    %r2930 = load i32, ptr %r6
    %r2931 = add i32 0,2
    %r2932 = sdiv i32 %r2930,%r2931
    store i32 %r2932, ptr %r6
    %r2933 = load i32, ptr %r2
    %r2934 = add i32 0,1
    %r2935 = add i32 %r2933,%r2934
    store i32 %r2935, ptr %r2
    br label %L658
L662:
    %r2913 = load i32, ptr %r6
    %r2914 = add i32 0,2
    %r2915 = srem i32 %r2913,%r2914
    %r2916 = icmp ne i32 %r2915,0
    br i1 %r2916, label %L660, label %L661
L664:
    %r2944 = load i32, ptr %r2893
    store i32 %r2944, ptr %r2943
    %r2946 = load i32, ptr %r2889
    store i32 %r2946, ptr %r2945
    %r2948 = add i32 0,0
    store i32 %r2948, ptr %r2947
    %r2949 = load i32, ptr %r2945
    %r2950 = icmp ne i32 %r2949,0
    br i1 %r2950, label %L667, label %L669
L665:
    %r3366 = load i32, ptr %r2889
    store i32 %r3366, ptr %r3365
    %r3368 = load i32, ptr %r2889
    store i32 %r3368, ptr %r3367
    %r3370 = add i32 0,0
    store i32 %r3370, ptr %r3369
    %r3371 = load i32, ptr %r3367
    %r3372 = icmp ne i32 %r3371,0
    br i1 %r3372, label %L761, label %L763
L667:
    %r2951 = add i32 0,0
    store i32 %r2951, ptr %r0
    %r2952 = add i32 0,0
    store i32 %r2952, ptr %r2
    %r2953 = load i32, ptr %r2945
    store i32 %r2953, ptr %r4
    %r2954 = add i32 0,1
    store i32 %r2954, ptr %r6
    %r2955 = load i32, ptr %r2
    %r2956 = add i32 0,16
    %r2957 = icmp slt i32 %r2955,%r2956
    br i1 %r2957, label %L671, label %L673
L668:
    %r3361 = load i32, ptr %r2945
    %r3362 = icmp ne i32 %r3361,0
    br i1 %r3362, label %L667, label %L669
L669:
    %r3363 = load i32, ptr %r2947
    store i32 %r3363, ptr %r0
    %r3364 = load i32, ptr %r0
    store i32 %r3364, ptr %r2893
    br label %L665
L671:
    %r2960 = load i32, ptr %r4
    %r2961 = add i32 0,2
    %r2962 = srem i32 %r2960,%r2961
    %r2963 = icmp ne i32 %r2962,0
    br i1 %r2963, label %L676, label %L675
L672:
    %r2987 = load i32, ptr %r2
    %r2988 = add i32 0,16
    %r2989 = icmp slt i32 %r2987,%r2988
    br i1 %r2989, label %L671, label %L673
L673:
    %r2992 = load i32, ptr %r0
    %r2993 = icmp ne i32 %r2992,0
    br i1 %r2993, label %L678, label %L679
L674:
    %r2971 = load i32, ptr %r0
    %r2972 = add i32 0,1
    %r2973 = load i32, ptr %r2
    %r2974 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r2973
    %r2975 = load i32, ptr %r2974
    %r2976 = mul i32 %r2972,%r2975
    %r2977 = add i32 %r2971,%r2976
    store i32 %r2977, ptr %r0
    br label %L675
L675:
    %r2978 = load i32, ptr %r4
    %r2979 = add i32 0,2
    %r2980 = sdiv i32 %r2978,%r2979
    store i32 %r2980, ptr %r4
    %r2981 = load i32, ptr %r6
    %r2982 = add i32 0,2
    %r2983 = sdiv i32 %r2981,%r2982
    store i32 %r2983, ptr %r6
    %r2984 = load i32, ptr %r2
    %r2985 = add i32 0,1
    %r2986 = add i32 %r2984,%r2985
    store i32 %r2986, ptr %r2
    br label %L672
L676:
    %r2964 = load i32, ptr %r6
    %r2965 = add i32 0,2
    %r2966 = srem i32 %r2964,%r2965
    %r2967 = icmp ne i32 %r2966,0
    br i1 %r2967, label %L674, label %L675
L678:
    %r2995 = load i32, ptr %r2947
    store i32 %r2995, ptr %r2994
    %r2997 = load i32, ptr %r2943
    store i32 %r2997, ptr %r2996
    %r2999 = add i32 0,0
    store i32 %r2999, ptr %r2998
    %r3000 = load i32, ptr %r2996
    %r3001 = icmp ne i32 %r3000,0
    br i1 %r3001, label %L681, label %L683
L679:
    %r3155 = load i32, ptr %r2943
    store i32 %r3155, ptr %r3154
    %r3157 = load i32, ptr %r2943
    store i32 %r3157, ptr %r3156
    %r3159 = add i32 0,0
    store i32 %r3159, ptr %r3158
    %r3160 = load i32, ptr %r3156
    %r3161 = icmp ne i32 %r3160,0
    br i1 %r3161, label %L715, label %L717
L681:
    %r3002 = add i32 0,0
    store i32 %r3002, ptr %r0
    %r3003 = add i32 0,0
    store i32 %r3003, ptr %r2
    %r3004 = load i32, ptr %r2994
    store i32 %r3004, ptr %r4
    %r3005 = load i32, ptr %r2996
    store i32 %r3005, ptr %r6
    %r3006 = load i32, ptr %r2
    %r3007 = add i32 0,16
    %r3008 = icmp slt i32 %r3006,%r3007
    br i1 %r3008, label %L685, label %L687
L682:
    %r3150 = load i32, ptr %r2996
    %r3151 = icmp ne i32 %r3150,0
    br i1 %r3151, label %L681, label %L683
L683:
    %r3152 = load i32, ptr %r2994
    store i32 %r3152, ptr %r0
    %r3153 = load i32, ptr %r0
    store i32 %r3153, ptr %r2947
    br label %L679
L685:
    %r3011 = load i32, ptr %r4
    %r3012 = add i32 0,2
    %r3013 = srem i32 %r3011,%r3012
    %r3014 = icmp ne i32 %r3013,0
    br i1 %r3014, label %L688, label %L689
L686:
    %r3049 = load i32, ptr %r2
    %r3050 = add i32 0,16
    %r3051 = icmp slt i32 %r3049,%r3050
    br i1 %r3051, label %L685, label %L687
L687:
    %r3054 = load i32, ptr %r0
    store i32 %r3054, ptr %r2998
    %r3055 = add i32 0,0
    store i32 %r3055, ptr %r0
    %r3056 = add i32 0,0
    store i32 %r3056, ptr %r2
    %r3057 = load i32, ptr %r2994
    store i32 %r3057, ptr %r4
    %r3058 = load i32, ptr %r2996
    store i32 %r3058, ptr %r6
    %r3059 = load i32, ptr %r2
    %r3060 = add i32 0,16
    %r3061 = icmp slt i32 %r3059,%r3060
    br i1 %r3061, label %L696, label %L698
L688:
    %r3015 = load i32, ptr %r6
    %r3016 = add i32 0,2
    %r3017 = srem i32 %r3015,%r3016
    %r3018 = add i32 0,0
    %r3019 = icmp eq i32 %r3017,%r3018
    br i1 %r3019, label %L691, label %L692
L689:
    %r3029 = load i32, ptr %r6
    %r3030 = add i32 0,2
    %r3031 = srem i32 %r3029,%r3030
    %r3032 = icmp ne i32 %r3031,0
    br i1 %r3032, label %L693, label %L694
L690:
    %r3040 = load i32, ptr %r4
    %r3041 = add i32 0,2
    %r3042 = sdiv i32 %r3040,%r3041
    store i32 %r3042, ptr %r4
    %r3043 = load i32, ptr %r6
    %r3044 = add i32 0,2
    %r3045 = sdiv i32 %r3043,%r3044
    store i32 %r3045, ptr %r6
    %r3046 = load i32, ptr %r2
    %r3047 = add i32 0,1
    %r3048 = add i32 %r3046,%r3047
    store i32 %r3048, ptr %r2
    br label %L686
L691:
    %r3022 = load i32, ptr %r0
    %r3023 = add i32 0,1
    %r3024 = load i32, ptr %r2
    %r3025 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3024
    %r3026 = load i32, ptr %r3025
    %r3027 = mul i32 %r3023,%r3026
    %r3028 = add i32 %r3022,%r3027
    store i32 %r3028, ptr %r0
    br label %L692
L692:
    br label %L690
L693:
    %r3033 = load i32, ptr %r0
    %r3034 = add i32 0,1
    %r3035 = load i32, ptr %r2
    %r3036 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3035
    %r3037 = load i32, ptr %r3036
    %r3038 = mul i32 %r3034,%r3037
    %r3039 = add i32 %r3033,%r3038
    store i32 %r3039, ptr %r0
    br label %L694
L694:
    br label %L690
L696:
    %r3064 = load i32, ptr %r4
    %r3065 = add i32 0,2
    %r3066 = srem i32 %r3064,%r3065
    %r3067 = icmp ne i32 %r3066,0
    br i1 %r3067, label %L701, label %L700
L697:
    %r3091 = load i32, ptr %r2
    %r3092 = add i32 0,16
    %r3093 = icmp slt i32 %r3091,%r3092
    br i1 %r3093, label %L696, label %L698
L698:
    %r3096 = load i32, ptr %r0
    store i32 %r3096, ptr %r2996
    %r3097 = add i32 0,1
    %r3098 = add i32 0,15
    %r3099 = icmp sgt i32 %r3097,%r3098
    br i1 %r3099, label %L703, label %L704
L699:
    %r3075 = load i32, ptr %r0
    %r3076 = add i32 0,1
    %r3077 = load i32, ptr %r2
    %r3078 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3077
    %r3079 = load i32, ptr %r3078
    %r3080 = mul i32 %r3076,%r3079
    %r3081 = add i32 %r3075,%r3080
    store i32 %r3081, ptr %r0
    br label %L700
L700:
    %r3082 = load i32, ptr %r4
    %r3083 = add i32 0,2
    %r3084 = sdiv i32 %r3082,%r3083
    store i32 %r3084, ptr %r4
    %r3085 = load i32, ptr %r6
    %r3086 = add i32 0,2
    %r3087 = sdiv i32 %r3085,%r3086
    store i32 %r3087, ptr %r6
    %r3088 = load i32, ptr %r2
    %r3089 = add i32 0,1
    %r3090 = add i32 %r3088,%r3089
    store i32 %r3090, ptr %r2
    br label %L697
L701:
    %r3068 = load i32, ptr %r6
    %r3069 = add i32 0,2
    %r3070 = srem i32 %r3068,%r3069
    %r3071 = icmp ne i32 %r3070,0
    br i1 %r3071, label %L699, label %L700
L703:
    %r3102 = add i32 0,0
    store i32 %r3102, ptr %r0
    br label %L705
L704:
    %r3103 = add i32 0,0
    store i32 %r3103, ptr %r0
    %r3104 = add i32 0,0
    store i32 %r3104, ptr %r2
    %r3105 = load i32, ptr %r2996
    %r3106 = add i32 0,1
    %r3107 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3106
    %r3108 = load i32, ptr %r3107
    %r3109 = mul i32 %r3105,%r3108
    store i32 %r3109, ptr %r4
    %r3110 = add i32 0,65535
    store i32 %r3110, ptr %r6
    %r3111 = load i32, ptr %r2
    %r3112 = add i32 0,16
    %r3113 = icmp slt i32 %r3111,%r3112
    br i1 %r3113, label %L707, label %L709
L705:
    %r3148 = load i32, ptr %r0
    store i32 %r3148, ptr %r2996
    %r3149 = load i32, ptr %r2998
    store i32 %r3149, ptr %r2994
    br label %L682
L707:
    %r3116 = load i32, ptr %r4
    %r3117 = add i32 0,2
    %r3118 = srem i32 %r3116,%r3117
    %r3119 = icmp ne i32 %r3118,0
    br i1 %r3119, label %L712, label %L711
L708:
    %r3143 = load i32, ptr %r2
    %r3144 = add i32 0,16
    %r3145 = icmp slt i32 %r3143,%r3144
    br i1 %r3145, label %L707, label %L709
L709:
    br label %L705
L710:
    %r3127 = load i32, ptr %r0
    %r3128 = add i32 0,1
    %r3129 = load i32, ptr %r2
    %r3130 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3129
    %r3131 = load i32, ptr %r3130
    %r3132 = mul i32 %r3128,%r3131
    %r3133 = add i32 %r3127,%r3132
    store i32 %r3133, ptr %r0
    br label %L711
L711:
    %r3134 = load i32, ptr %r4
    %r3135 = add i32 0,2
    %r3136 = sdiv i32 %r3134,%r3135
    store i32 %r3136, ptr %r4
    %r3137 = load i32, ptr %r6
    %r3138 = add i32 0,2
    %r3139 = sdiv i32 %r3137,%r3138
    store i32 %r3139, ptr %r6
    %r3140 = load i32, ptr %r2
    %r3141 = add i32 0,1
    %r3142 = add i32 %r3140,%r3141
    store i32 %r3142, ptr %r2
    br label %L708
L712:
    %r3120 = load i32, ptr %r6
    %r3121 = add i32 0,2
    %r3122 = srem i32 %r3120,%r3121
    %r3123 = icmp ne i32 %r3122,0
    br i1 %r3123, label %L710, label %L711
L715:
    %r3162 = add i32 0,0
    store i32 %r3162, ptr %r0
    %r3163 = add i32 0,0
    store i32 %r3163, ptr %r2
    %r3164 = load i32, ptr %r3154
    store i32 %r3164, ptr %r4
    %r3165 = load i32, ptr %r3156
    store i32 %r3165, ptr %r6
    %r3166 = load i32, ptr %r2
    %r3167 = add i32 0,16
    %r3168 = icmp slt i32 %r3166,%r3167
    br i1 %r3168, label %L719, label %L721
L716:
    %r3310 = load i32, ptr %r3156
    %r3311 = icmp ne i32 %r3310,0
    br i1 %r3311, label %L715, label %L717
L717:
    %r3312 = load i32, ptr %r3154
    store i32 %r3312, ptr %r0
    %r3313 = load i32, ptr %r0
    store i32 %r3313, ptr %r2943
    %r3314 = load i32, ptr %r2945
    store i32 %r3314, ptr %r4
    %r3315 = add i32 0,1
    store i32 %r3315, ptr %r6
    %r3316 = load i32, ptr %r6
    %r3317 = add i32 0,15
    %r3318 = icmp sge i32 %r3316,%r3317
    br i1 %r3318, label %L748, label %L749
L719:
    %r3171 = load i32, ptr %r4
    %r3172 = add i32 0,2
    %r3173 = srem i32 %r3171,%r3172
    %r3174 = icmp ne i32 %r3173,0
    br i1 %r3174, label %L722, label %L723
L720:
    %r3209 = load i32, ptr %r2
    %r3210 = add i32 0,16
    %r3211 = icmp slt i32 %r3209,%r3210
    br i1 %r3211, label %L719, label %L721
L721:
    %r3214 = load i32, ptr %r0
    store i32 %r3214, ptr %r3158
    %r3215 = add i32 0,0
    store i32 %r3215, ptr %r0
    %r3216 = add i32 0,0
    store i32 %r3216, ptr %r2
    %r3217 = load i32, ptr %r3154
    store i32 %r3217, ptr %r4
    %r3218 = load i32, ptr %r3156
    store i32 %r3218, ptr %r6
    %r3219 = load i32, ptr %r2
    %r3220 = add i32 0,16
    %r3221 = icmp slt i32 %r3219,%r3220
    br i1 %r3221, label %L730, label %L732
L722:
    %r3175 = load i32, ptr %r6
    %r3176 = add i32 0,2
    %r3177 = srem i32 %r3175,%r3176
    %r3178 = add i32 0,0
    %r3179 = icmp eq i32 %r3177,%r3178
    br i1 %r3179, label %L725, label %L726
L723:
    %r3189 = load i32, ptr %r6
    %r3190 = add i32 0,2
    %r3191 = srem i32 %r3189,%r3190
    %r3192 = icmp ne i32 %r3191,0
    br i1 %r3192, label %L727, label %L728
L724:
    %r3200 = load i32, ptr %r4
    %r3201 = add i32 0,2
    %r3202 = sdiv i32 %r3200,%r3201
    store i32 %r3202, ptr %r4
    %r3203 = load i32, ptr %r6
    %r3204 = add i32 0,2
    %r3205 = sdiv i32 %r3203,%r3204
    store i32 %r3205, ptr %r6
    %r3206 = load i32, ptr %r2
    %r3207 = add i32 0,1
    %r3208 = add i32 %r3206,%r3207
    store i32 %r3208, ptr %r2
    br label %L720
L725:
    %r3182 = load i32, ptr %r0
    %r3183 = add i32 0,1
    %r3184 = load i32, ptr %r2
    %r3185 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3184
    %r3186 = load i32, ptr %r3185
    %r3187 = mul i32 %r3183,%r3186
    %r3188 = add i32 %r3182,%r3187
    store i32 %r3188, ptr %r0
    br label %L726
L726:
    br label %L724
L727:
    %r3193 = load i32, ptr %r0
    %r3194 = add i32 0,1
    %r3195 = load i32, ptr %r2
    %r3196 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3195
    %r3197 = load i32, ptr %r3196
    %r3198 = mul i32 %r3194,%r3197
    %r3199 = add i32 %r3193,%r3198
    store i32 %r3199, ptr %r0
    br label %L728
L728:
    br label %L724
L730:
    %r3224 = load i32, ptr %r4
    %r3225 = add i32 0,2
    %r3226 = srem i32 %r3224,%r3225
    %r3227 = icmp ne i32 %r3226,0
    br i1 %r3227, label %L735, label %L734
L731:
    %r3251 = load i32, ptr %r2
    %r3252 = add i32 0,16
    %r3253 = icmp slt i32 %r3251,%r3252
    br i1 %r3253, label %L730, label %L732
L732:
    %r3256 = load i32, ptr %r0
    store i32 %r3256, ptr %r3156
    %r3257 = add i32 0,1
    %r3258 = add i32 0,15
    %r3259 = icmp sgt i32 %r3257,%r3258
    br i1 %r3259, label %L737, label %L738
L733:
    %r3235 = load i32, ptr %r0
    %r3236 = add i32 0,1
    %r3237 = load i32, ptr %r2
    %r3238 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3237
    %r3239 = load i32, ptr %r3238
    %r3240 = mul i32 %r3236,%r3239
    %r3241 = add i32 %r3235,%r3240
    store i32 %r3241, ptr %r0
    br label %L734
L734:
    %r3242 = load i32, ptr %r4
    %r3243 = add i32 0,2
    %r3244 = sdiv i32 %r3242,%r3243
    store i32 %r3244, ptr %r4
    %r3245 = load i32, ptr %r6
    %r3246 = add i32 0,2
    %r3247 = sdiv i32 %r3245,%r3246
    store i32 %r3247, ptr %r6
    %r3248 = load i32, ptr %r2
    %r3249 = add i32 0,1
    %r3250 = add i32 %r3248,%r3249
    store i32 %r3250, ptr %r2
    br label %L731
L735:
    %r3228 = load i32, ptr %r6
    %r3229 = add i32 0,2
    %r3230 = srem i32 %r3228,%r3229
    %r3231 = icmp ne i32 %r3230,0
    br i1 %r3231, label %L733, label %L734
L737:
    %r3262 = add i32 0,0
    store i32 %r3262, ptr %r0
    br label %L739
L738:
    %r3263 = add i32 0,0
    store i32 %r3263, ptr %r0
    %r3264 = add i32 0,0
    store i32 %r3264, ptr %r2
    %r3265 = load i32, ptr %r3156
    %r3266 = add i32 0,1
    %r3267 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3266
    %r3268 = load i32, ptr %r3267
    %r3269 = mul i32 %r3265,%r3268
    store i32 %r3269, ptr %r4
    %r3270 = add i32 0,65535
    store i32 %r3270, ptr %r6
    %r3271 = load i32, ptr %r2
    %r3272 = add i32 0,16
    %r3273 = icmp slt i32 %r3271,%r3272
    br i1 %r3273, label %L741, label %L743
L739:
    %r3308 = load i32, ptr %r0
    store i32 %r3308, ptr %r3156
    %r3309 = load i32, ptr %r3158
    store i32 %r3309, ptr %r3154
    br label %L716
L741:
    %r3276 = load i32, ptr %r4
    %r3277 = add i32 0,2
    %r3278 = srem i32 %r3276,%r3277
    %r3279 = icmp ne i32 %r3278,0
    br i1 %r3279, label %L746, label %L745
L742:
    %r3303 = load i32, ptr %r2
    %r3304 = add i32 0,16
    %r3305 = icmp slt i32 %r3303,%r3304
    br i1 %r3305, label %L741, label %L743
L743:
    br label %L739
L744:
    %r3287 = load i32, ptr %r0
    %r3288 = add i32 0,1
    %r3289 = load i32, ptr %r2
    %r3290 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3289
    %r3291 = load i32, ptr %r3290
    %r3292 = mul i32 %r3288,%r3291
    %r3293 = add i32 %r3287,%r3292
    store i32 %r3293, ptr %r0
    br label %L745
L745:
    %r3294 = load i32, ptr %r4
    %r3295 = add i32 0,2
    %r3296 = sdiv i32 %r3294,%r3295
    store i32 %r3296, ptr %r4
    %r3297 = load i32, ptr %r6
    %r3298 = add i32 0,2
    %r3299 = sdiv i32 %r3297,%r3298
    store i32 %r3299, ptr %r6
    %r3300 = load i32, ptr %r2
    %r3301 = add i32 0,1
    %r3302 = add i32 %r3300,%r3301
    store i32 %r3302, ptr %r2
    br label %L742
L746:
    %r3280 = load i32, ptr %r6
    %r3281 = add i32 0,2
    %r3282 = srem i32 %r3280,%r3281
    %r3283 = icmp ne i32 %r3282,0
    br i1 %r3283, label %L744, label %L745
L748:
    %r3321 = load i32, ptr %r4
    %r3322 = add i32 0,0
    %r3323 = icmp slt i32 %r3321,%r3322
    br i1 %r3323, label %L751, label %L752
L749:
    %r3328 = load i32, ptr %r6
    %r3329 = add i32 0,0
    %r3330 = icmp sgt i32 %r3328,%r3329
    br i1 %r3330, label %L754, label %L755
L750:
    %r3360 = load i32, ptr %r0
    store i32 %r3360, ptr %r2945
    br label %L668
L751:
    %r3326 = add i32 0,65535
    store i32 %r3326, ptr %r0
    br label %L753
L752:
    %r3327 = add i32 0,0
    store i32 %r3327, ptr %r0
    br label %L753
L753:
    br label %L750
L754:
    %r3333 = load i32, ptr %r4
    %r3334 = add i32 0,32767
    %r3335 = icmp sgt i32 %r3333,%r3334
    br i1 %r3335, label %L757, label %L758
L755:
    %r3359 = load i32, ptr %r4
    store i32 %r3359, ptr %r0
    br label %L756
L756:
    br label %L750
L757:
    %r3338 = load i32, ptr %r4
    %r3339 = load i32, ptr %r6
    %r3340 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3339
    %r3341 = load i32, ptr %r3340
    %r3342 = sdiv i32 %r3338,%r3341
    store i32 %r3342, ptr %r4
    %r3343 = load i32, ptr %r4
    %r3344 = add i32 0,65536
    %r3345 = add i32 %r3343,%r3344
    %r3346 = add i32 0,15
    %r3347 = load i32, ptr %r6
    %r3348 = sub i32 %r3346,%r3347
    %r3349 = add i32 0,1
    %r3350 = add i32 %r3348,%r3349
    %r3351 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3350
    %r3352 = load i32, ptr %r3351
    %r3353 = sub i32 %r3345,%r3352
    store i32 %r3353, ptr %r0
    br label %L759
L758:
    %r3354 = load i32, ptr %r4
    %r3355 = load i32, ptr %r6
    %r3356 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3355
    %r3357 = load i32, ptr %r3356
    %r3358 = sdiv i32 %r3354,%r3357
    store i32 %r3358, ptr %r0
    br label %L759
L759:
    br label %L756
L761:
    %r3373 = add i32 0,0
    store i32 %r3373, ptr %r0
    %r3374 = add i32 0,0
    store i32 %r3374, ptr %r2
    %r3375 = load i32, ptr %r3367
    store i32 %r3375, ptr %r4
    %r3376 = add i32 0,1
    store i32 %r3376, ptr %r6
    %r3377 = load i32, ptr %r2
    %r3378 = add i32 0,16
    %r3379 = icmp slt i32 %r3377,%r3378
    br i1 %r3379, label %L765, label %L767
L762:
    %r3783 = load i32, ptr %r3367
    %r3784 = icmp ne i32 %r3783,0
    br i1 %r3784, label %L761, label %L763
L763:
    %r3785 = load i32, ptr %r3369
    store i32 %r3785, ptr %r0
    %r3786 = load i32, ptr %r0
    store i32 %r3786, ptr %r2889
    %r3787 = load i32, ptr %r2891
    store i32 %r3787, ptr %r4
    %r3788 = add i32 0,1
    store i32 %r3788, ptr %r6
    %r3789 = load i32, ptr %r6
    %r3790 = add i32 0,15
    %r3791 = icmp sge i32 %r3789,%r3790
    br i1 %r3791, label %L854, label %L855
L765:
    %r3382 = load i32, ptr %r4
    %r3383 = add i32 0,2
    %r3384 = srem i32 %r3382,%r3383
    %r3385 = icmp ne i32 %r3384,0
    br i1 %r3385, label %L770, label %L769
L766:
    %r3409 = load i32, ptr %r2
    %r3410 = add i32 0,16
    %r3411 = icmp slt i32 %r3409,%r3410
    br i1 %r3411, label %L765, label %L767
L767:
    %r3414 = load i32, ptr %r0
    %r3415 = icmp ne i32 %r3414,0
    br i1 %r3415, label %L772, label %L773
L768:
    %r3393 = load i32, ptr %r0
    %r3394 = add i32 0,1
    %r3395 = load i32, ptr %r2
    %r3396 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3395
    %r3397 = load i32, ptr %r3396
    %r3398 = mul i32 %r3394,%r3397
    %r3399 = add i32 %r3393,%r3398
    store i32 %r3399, ptr %r0
    br label %L769
L769:
    %r3400 = load i32, ptr %r4
    %r3401 = add i32 0,2
    %r3402 = sdiv i32 %r3400,%r3401
    store i32 %r3402, ptr %r4
    %r3403 = load i32, ptr %r6
    %r3404 = add i32 0,2
    %r3405 = sdiv i32 %r3403,%r3404
    store i32 %r3405, ptr %r6
    %r3406 = load i32, ptr %r2
    %r3407 = add i32 0,1
    %r3408 = add i32 %r3406,%r3407
    store i32 %r3408, ptr %r2
    br label %L766
L770:
    %r3386 = load i32, ptr %r6
    %r3387 = add i32 0,2
    %r3388 = srem i32 %r3386,%r3387
    %r3389 = icmp ne i32 %r3388,0
    br i1 %r3389, label %L768, label %L769
L772:
    %r3417 = load i32, ptr %r3369
    store i32 %r3417, ptr %r3416
    %r3419 = load i32, ptr %r3365
    store i32 %r3419, ptr %r3418
    %r3421 = add i32 0,0
    store i32 %r3421, ptr %r3420
    %r3422 = load i32, ptr %r3418
    %r3423 = icmp ne i32 %r3422,0
    br i1 %r3423, label %L775, label %L777
L773:
    %r3577 = load i32, ptr %r3365
    store i32 %r3577, ptr %r3576
    %r3579 = load i32, ptr %r3365
    store i32 %r3579, ptr %r3578
    %r3581 = add i32 0,0
    store i32 %r3581, ptr %r3580
    %r3582 = load i32, ptr %r3578
    %r3583 = icmp ne i32 %r3582,0
    br i1 %r3583, label %L809, label %L811
L775:
    %r3424 = add i32 0,0
    store i32 %r3424, ptr %r0
    %r3425 = add i32 0,0
    store i32 %r3425, ptr %r2
    %r3426 = load i32, ptr %r3416
    store i32 %r3426, ptr %r4
    %r3427 = load i32, ptr %r3418
    store i32 %r3427, ptr %r6
    %r3428 = load i32, ptr %r2
    %r3429 = add i32 0,16
    %r3430 = icmp slt i32 %r3428,%r3429
    br i1 %r3430, label %L779, label %L781
L776:
    %r3572 = load i32, ptr %r3418
    %r3573 = icmp ne i32 %r3572,0
    br i1 %r3573, label %L775, label %L777
L777:
    %r3574 = load i32, ptr %r3416
    store i32 %r3574, ptr %r0
    %r3575 = load i32, ptr %r0
    store i32 %r3575, ptr %r3369
    br label %L773
L779:
    %r3433 = load i32, ptr %r4
    %r3434 = add i32 0,2
    %r3435 = srem i32 %r3433,%r3434
    %r3436 = icmp ne i32 %r3435,0
    br i1 %r3436, label %L782, label %L783
L780:
    %r3471 = load i32, ptr %r2
    %r3472 = add i32 0,16
    %r3473 = icmp slt i32 %r3471,%r3472
    br i1 %r3473, label %L779, label %L781
L781:
    %r3476 = load i32, ptr %r0
    store i32 %r3476, ptr %r3420
    %r3477 = add i32 0,0
    store i32 %r3477, ptr %r0
    %r3478 = add i32 0,0
    store i32 %r3478, ptr %r2
    %r3479 = load i32, ptr %r3416
    store i32 %r3479, ptr %r4
    %r3480 = load i32, ptr %r3418
    store i32 %r3480, ptr %r6
    %r3481 = load i32, ptr %r2
    %r3482 = add i32 0,16
    %r3483 = icmp slt i32 %r3481,%r3482
    br i1 %r3483, label %L790, label %L792
L782:
    %r3437 = load i32, ptr %r6
    %r3438 = add i32 0,2
    %r3439 = srem i32 %r3437,%r3438
    %r3440 = add i32 0,0
    %r3441 = icmp eq i32 %r3439,%r3440
    br i1 %r3441, label %L785, label %L786
L783:
    %r3451 = load i32, ptr %r6
    %r3452 = add i32 0,2
    %r3453 = srem i32 %r3451,%r3452
    %r3454 = icmp ne i32 %r3453,0
    br i1 %r3454, label %L787, label %L788
L784:
    %r3462 = load i32, ptr %r4
    %r3463 = add i32 0,2
    %r3464 = sdiv i32 %r3462,%r3463
    store i32 %r3464, ptr %r4
    %r3465 = load i32, ptr %r6
    %r3466 = add i32 0,2
    %r3467 = sdiv i32 %r3465,%r3466
    store i32 %r3467, ptr %r6
    %r3468 = load i32, ptr %r2
    %r3469 = add i32 0,1
    %r3470 = add i32 %r3468,%r3469
    store i32 %r3470, ptr %r2
    br label %L780
L785:
    %r3444 = load i32, ptr %r0
    %r3445 = add i32 0,1
    %r3446 = load i32, ptr %r2
    %r3447 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3446
    %r3448 = load i32, ptr %r3447
    %r3449 = mul i32 %r3445,%r3448
    %r3450 = add i32 %r3444,%r3449
    store i32 %r3450, ptr %r0
    br label %L786
L786:
    br label %L784
L787:
    %r3455 = load i32, ptr %r0
    %r3456 = add i32 0,1
    %r3457 = load i32, ptr %r2
    %r3458 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3457
    %r3459 = load i32, ptr %r3458
    %r3460 = mul i32 %r3456,%r3459
    %r3461 = add i32 %r3455,%r3460
    store i32 %r3461, ptr %r0
    br label %L788
L788:
    br label %L784
L790:
    %r3486 = load i32, ptr %r4
    %r3487 = add i32 0,2
    %r3488 = srem i32 %r3486,%r3487
    %r3489 = icmp ne i32 %r3488,0
    br i1 %r3489, label %L795, label %L794
L791:
    %r3513 = load i32, ptr %r2
    %r3514 = add i32 0,16
    %r3515 = icmp slt i32 %r3513,%r3514
    br i1 %r3515, label %L790, label %L792
L792:
    %r3518 = load i32, ptr %r0
    store i32 %r3518, ptr %r3418
    %r3519 = add i32 0,1
    %r3520 = add i32 0,15
    %r3521 = icmp sgt i32 %r3519,%r3520
    br i1 %r3521, label %L797, label %L798
L793:
    %r3497 = load i32, ptr %r0
    %r3498 = add i32 0,1
    %r3499 = load i32, ptr %r2
    %r3500 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3499
    %r3501 = load i32, ptr %r3500
    %r3502 = mul i32 %r3498,%r3501
    %r3503 = add i32 %r3497,%r3502
    store i32 %r3503, ptr %r0
    br label %L794
L794:
    %r3504 = load i32, ptr %r4
    %r3505 = add i32 0,2
    %r3506 = sdiv i32 %r3504,%r3505
    store i32 %r3506, ptr %r4
    %r3507 = load i32, ptr %r6
    %r3508 = add i32 0,2
    %r3509 = sdiv i32 %r3507,%r3508
    store i32 %r3509, ptr %r6
    %r3510 = load i32, ptr %r2
    %r3511 = add i32 0,1
    %r3512 = add i32 %r3510,%r3511
    store i32 %r3512, ptr %r2
    br label %L791
L795:
    %r3490 = load i32, ptr %r6
    %r3491 = add i32 0,2
    %r3492 = srem i32 %r3490,%r3491
    %r3493 = icmp ne i32 %r3492,0
    br i1 %r3493, label %L793, label %L794
L797:
    %r3524 = add i32 0,0
    store i32 %r3524, ptr %r0
    br label %L799
L798:
    %r3525 = add i32 0,0
    store i32 %r3525, ptr %r0
    %r3526 = add i32 0,0
    store i32 %r3526, ptr %r2
    %r3527 = load i32, ptr %r3418
    %r3528 = add i32 0,1
    %r3529 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3528
    %r3530 = load i32, ptr %r3529
    %r3531 = mul i32 %r3527,%r3530
    store i32 %r3531, ptr %r4
    %r3532 = add i32 0,65535
    store i32 %r3532, ptr %r6
    %r3533 = load i32, ptr %r2
    %r3534 = add i32 0,16
    %r3535 = icmp slt i32 %r3533,%r3534
    br i1 %r3535, label %L801, label %L803
L799:
    %r3570 = load i32, ptr %r0
    store i32 %r3570, ptr %r3418
    %r3571 = load i32, ptr %r3420
    store i32 %r3571, ptr %r3416
    br label %L776
L801:
    %r3538 = load i32, ptr %r4
    %r3539 = add i32 0,2
    %r3540 = srem i32 %r3538,%r3539
    %r3541 = icmp ne i32 %r3540,0
    br i1 %r3541, label %L806, label %L805
L802:
    %r3565 = load i32, ptr %r2
    %r3566 = add i32 0,16
    %r3567 = icmp slt i32 %r3565,%r3566
    br i1 %r3567, label %L801, label %L803
L803:
    br label %L799
L804:
    %r3549 = load i32, ptr %r0
    %r3550 = add i32 0,1
    %r3551 = load i32, ptr %r2
    %r3552 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3551
    %r3553 = load i32, ptr %r3552
    %r3554 = mul i32 %r3550,%r3553
    %r3555 = add i32 %r3549,%r3554
    store i32 %r3555, ptr %r0
    br label %L805
L805:
    %r3556 = load i32, ptr %r4
    %r3557 = add i32 0,2
    %r3558 = sdiv i32 %r3556,%r3557
    store i32 %r3558, ptr %r4
    %r3559 = load i32, ptr %r6
    %r3560 = add i32 0,2
    %r3561 = sdiv i32 %r3559,%r3560
    store i32 %r3561, ptr %r6
    %r3562 = load i32, ptr %r2
    %r3563 = add i32 0,1
    %r3564 = add i32 %r3562,%r3563
    store i32 %r3564, ptr %r2
    br label %L802
L806:
    %r3542 = load i32, ptr %r6
    %r3543 = add i32 0,2
    %r3544 = srem i32 %r3542,%r3543
    %r3545 = icmp ne i32 %r3544,0
    br i1 %r3545, label %L804, label %L805
L809:
    %r3584 = add i32 0,0
    store i32 %r3584, ptr %r0
    %r3585 = add i32 0,0
    store i32 %r3585, ptr %r2
    %r3586 = load i32, ptr %r3576
    store i32 %r3586, ptr %r4
    %r3587 = load i32, ptr %r3578
    store i32 %r3587, ptr %r6
    %r3588 = load i32, ptr %r2
    %r3589 = add i32 0,16
    %r3590 = icmp slt i32 %r3588,%r3589
    br i1 %r3590, label %L813, label %L815
L810:
    %r3732 = load i32, ptr %r3578
    %r3733 = icmp ne i32 %r3732,0
    br i1 %r3733, label %L809, label %L811
L811:
    %r3734 = load i32, ptr %r3576
    store i32 %r3734, ptr %r0
    %r3735 = load i32, ptr %r0
    store i32 %r3735, ptr %r3365
    %r3736 = load i32, ptr %r3367
    store i32 %r3736, ptr %r4
    %r3737 = add i32 0,1
    store i32 %r3737, ptr %r6
    %r3738 = load i32, ptr %r6
    %r3739 = add i32 0,15
    %r3740 = icmp sge i32 %r3738,%r3739
    br i1 %r3740, label %L842, label %L843
L813:
    %r3593 = load i32, ptr %r4
    %r3594 = add i32 0,2
    %r3595 = srem i32 %r3593,%r3594
    %r3596 = icmp ne i32 %r3595,0
    br i1 %r3596, label %L816, label %L817
L814:
    %r3631 = load i32, ptr %r2
    %r3632 = add i32 0,16
    %r3633 = icmp slt i32 %r3631,%r3632
    br i1 %r3633, label %L813, label %L815
L815:
    %r3636 = load i32, ptr %r0
    store i32 %r3636, ptr %r3580
    %r3637 = add i32 0,0
    store i32 %r3637, ptr %r0
    %r3638 = add i32 0,0
    store i32 %r3638, ptr %r2
    %r3639 = load i32, ptr %r3576
    store i32 %r3639, ptr %r4
    %r3640 = load i32, ptr %r3578
    store i32 %r3640, ptr %r6
    %r3641 = load i32, ptr %r2
    %r3642 = add i32 0,16
    %r3643 = icmp slt i32 %r3641,%r3642
    br i1 %r3643, label %L824, label %L826
L816:
    %r3597 = load i32, ptr %r6
    %r3598 = add i32 0,2
    %r3599 = srem i32 %r3597,%r3598
    %r3600 = add i32 0,0
    %r3601 = icmp eq i32 %r3599,%r3600
    br i1 %r3601, label %L819, label %L820
L817:
    %r3611 = load i32, ptr %r6
    %r3612 = add i32 0,2
    %r3613 = srem i32 %r3611,%r3612
    %r3614 = icmp ne i32 %r3613,0
    br i1 %r3614, label %L821, label %L822
L818:
    %r3622 = load i32, ptr %r4
    %r3623 = add i32 0,2
    %r3624 = sdiv i32 %r3622,%r3623
    store i32 %r3624, ptr %r4
    %r3625 = load i32, ptr %r6
    %r3626 = add i32 0,2
    %r3627 = sdiv i32 %r3625,%r3626
    store i32 %r3627, ptr %r6
    %r3628 = load i32, ptr %r2
    %r3629 = add i32 0,1
    %r3630 = add i32 %r3628,%r3629
    store i32 %r3630, ptr %r2
    br label %L814
L819:
    %r3604 = load i32, ptr %r0
    %r3605 = add i32 0,1
    %r3606 = load i32, ptr %r2
    %r3607 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3606
    %r3608 = load i32, ptr %r3607
    %r3609 = mul i32 %r3605,%r3608
    %r3610 = add i32 %r3604,%r3609
    store i32 %r3610, ptr %r0
    br label %L820
L820:
    br label %L818
L821:
    %r3615 = load i32, ptr %r0
    %r3616 = add i32 0,1
    %r3617 = load i32, ptr %r2
    %r3618 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3617
    %r3619 = load i32, ptr %r3618
    %r3620 = mul i32 %r3616,%r3619
    %r3621 = add i32 %r3615,%r3620
    store i32 %r3621, ptr %r0
    br label %L822
L822:
    br label %L818
L824:
    %r3646 = load i32, ptr %r4
    %r3647 = add i32 0,2
    %r3648 = srem i32 %r3646,%r3647
    %r3649 = icmp ne i32 %r3648,0
    br i1 %r3649, label %L829, label %L828
L825:
    %r3673 = load i32, ptr %r2
    %r3674 = add i32 0,16
    %r3675 = icmp slt i32 %r3673,%r3674
    br i1 %r3675, label %L824, label %L826
L826:
    %r3678 = load i32, ptr %r0
    store i32 %r3678, ptr %r3578
    %r3679 = add i32 0,1
    %r3680 = add i32 0,15
    %r3681 = icmp sgt i32 %r3679,%r3680
    br i1 %r3681, label %L831, label %L832
L827:
    %r3657 = load i32, ptr %r0
    %r3658 = add i32 0,1
    %r3659 = load i32, ptr %r2
    %r3660 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3659
    %r3661 = load i32, ptr %r3660
    %r3662 = mul i32 %r3658,%r3661
    %r3663 = add i32 %r3657,%r3662
    store i32 %r3663, ptr %r0
    br label %L828
L828:
    %r3664 = load i32, ptr %r4
    %r3665 = add i32 0,2
    %r3666 = sdiv i32 %r3664,%r3665
    store i32 %r3666, ptr %r4
    %r3667 = load i32, ptr %r6
    %r3668 = add i32 0,2
    %r3669 = sdiv i32 %r3667,%r3668
    store i32 %r3669, ptr %r6
    %r3670 = load i32, ptr %r2
    %r3671 = add i32 0,1
    %r3672 = add i32 %r3670,%r3671
    store i32 %r3672, ptr %r2
    br label %L825
L829:
    %r3650 = load i32, ptr %r6
    %r3651 = add i32 0,2
    %r3652 = srem i32 %r3650,%r3651
    %r3653 = icmp ne i32 %r3652,0
    br i1 %r3653, label %L827, label %L828
L831:
    %r3684 = add i32 0,0
    store i32 %r3684, ptr %r0
    br label %L833
L832:
    %r3685 = add i32 0,0
    store i32 %r3685, ptr %r0
    %r3686 = add i32 0,0
    store i32 %r3686, ptr %r2
    %r3687 = load i32, ptr %r3578
    %r3688 = add i32 0,1
    %r3689 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3688
    %r3690 = load i32, ptr %r3689
    %r3691 = mul i32 %r3687,%r3690
    store i32 %r3691, ptr %r4
    %r3692 = add i32 0,65535
    store i32 %r3692, ptr %r6
    %r3693 = load i32, ptr %r2
    %r3694 = add i32 0,16
    %r3695 = icmp slt i32 %r3693,%r3694
    br i1 %r3695, label %L835, label %L837
L833:
    %r3730 = load i32, ptr %r0
    store i32 %r3730, ptr %r3578
    %r3731 = load i32, ptr %r3580
    store i32 %r3731, ptr %r3576
    br label %L810
L835:
    %r3698 = load i32, ptr %r4
    %r3699 = add i32 0,2
    %r3700 = srem i32 %r3698,%r3699
    %r3701 = icmp ne i32 %r3700,0
    br i1 %r3701, label %L840, label %L839
L836:
    %r3725 = load i32, ptr %r2
    %r3726 = add i32 0,16
    %r3727 = icmp slt i32 %r3725,%r3726
    br i1 %r3727, label %L835, label %L837
L837:
    br label %L833
L838:
    %r3709 = load i32, ptr %r0
    %r3710 = add i32 0,1
    %r3711 = load i32, ptr %r2
    %r3712 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3711
    %r3713 = load i32, ptr %r3712
    %r3714 = mul i32 %r3710,%r3713
    %r3715 = add i32 %r3709,%r3714
    store i32 %r3715, ptr %r0
    br label %L839
L839:
    %r3716 = load i32, ptr %r4
    %r3717 = add i32 0,2
    %r3718 = sdiv i32 %r3716,%r3717
    store i32 %r3718, ptr %r4
    %r3719 = load i32, ptr %r6
    %r3720 = add i32 0,2
    %r3721 = sdiv i32 %r3719,%r3720
    store i32 %r3721, ptr %r6
    %r3722 = load i32, ptr %r2
    %r3723 = add i32 0,1
    %r3724 = add i32 %r3722,%r3723
    store i32 %r3724, ptr %r2
    br label %L836
L840:
    %r3702 = load i32, ptr %r6
    %r3703 = add i32 0,2
    %r3704 = srem i32 %r3702,%r3703
    %r3705 = icmp ne i32 %r3704,0
    br i1 %r3705, label %L838, label %L839
L842:
    %r3743 = load i32, ptr %r4
    %r3744 = add i32 0,0
    %r3745 = icmp slt i32 %r3743,%r3744
    br i1 %r3745, label %L845, label %L846
L843:
    %r3750 = load i32, ptr %r6
    %r3751 = add i32 0,0
    %r3752 = icmp sgt i32 %r3750,%r3751
    br i1 %r3752, label %L848, label %L849
L844:
    %r3782 = load i32, ptr %r0
    store i32 %r3782, ptr %r3367
    br label %L762
L845:
    %r3748 = add i32 0,65535
    store i32 %r3748, ptr %r0
    br label %L847
L846:
    %r3749 = add i32 0,0
    store i32 %r3749, ptr %r0
    br label %L847
L847:
    br label %L844
L848:
    %r3755 = load i32, ptr %r4
    %r3756 = add i32 0,32767
    %r3757 = icmp sgt i32 %r3755,%r3756
    br i1 %r3757, label %L851, label %L852
L849:
    %r3781 = load i32, ptr %r4
    store i32 %r3781, ptr %r0
    br label %L850
L850:
    br label %L844
L851:
    %r3760 = load i32, ptr %r4
    %r3761 = load i32, ptr %r6
    %r3762 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3761
    %r3763 = load i32, ptr %r3762
    %r3764 = sdiv i32 %r3760,%r3763
    store i32 %r3764, ptr %r4
    %r3765 = load i32, ptr %r4
    %r3766 = add i32 0,65536
    %r3767 = add i32 %r3765,%r3766
    %r3768 = add i32 0,15
    %r3769 = load i32, ptr %r6
    %r3770 = sub i32 %r3768,%r3769
    %r3771 = add i32 0,1
    %r3772 = add i32 %r3770,%r3771
    %r3773 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3772
    %r3774 = load i32, ptr %r3773
    %r3775 = sub i32 %r3767,%r3774
    store i32 %r3775, ptr %r0
    br label %L853
L852:
    %r3776 = load i32, ptr %r4
    %r3777 = load i32, ptr %r6
    %r3778 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3777
    %r3779 = load i32, ptr %r3778
    %r3780 = sdiv i32 %r3776,%r3779
    store i32 %r3780, ptr %r0
    br label %L853
L853:
    br label %L850
L854:
    %r3794 = load i32, ptr %r4
    %r3795 = add i32 0,0
    %r3796 = icmp slt i32 %r3794,%r3795
    br i1 %r3796, label %L857, label %L858
L855:
    %r3801 = load i32, ptr %r6
    %r3802 = add i32 0,0
    %r3803 = icmp sgt i32 %r3801,%r3802
    br i1 %r3803, label %L860, label %L861
L856:
    %r3833 = load i32, ptr %r0
    store i32 %r3833, ptr %r2891
    br label %L654
L857:
    %r3799 = add i32 0,65535
    store i32 %r3799, ptr %r0
    br label %L859
L858:
    %r3800 = add i32 0,0
    store i32 %r3800, ptr %r0
    br label %L859
L859:
    br label %L856
L860:
    %r3806 = load i32, ptr %r4
    %r3807 = add i32 0,32767
    %r3808 = icmp sgt i32 %r3806,%r3807
    br i1 %r3808, label %L863, label %L864
L861:
    %r3832 = load i32, ptr %r4
    store i32 %r3832, ptr %r0
    br label %L862
L862:
    br label %L856
L863:
    %r3811 = load i32, ptr %r4
    %r3812 = load i32, ptr %r6
    %r3813 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3812
    %r3814 = load i32, ptr %r3813
    %r3815 = sdiv i32 %r3811,%r3814
    store i32 %r3815, ptr %r4
    %r3816 = load i32, ptr %r4
    %r3817 = add i32 0,65536
    %r3818 = add i32 %r3816,%r3817
    %r3819 = add i32 0,15
    %r3820 = load i32, ptr %r6
    %r3821 = sub i32 %r3819,%r3820
    %r3822 = add i32 0,1
    %r3823 = add i32 %r3821,%r3822
    %r3824 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3823
    %r3825 = load i32, ptr %r3824
    %r3826 = sub i32 %r3818,%r3825
    store i32 %r3826, ptr %r0
    br label %L865
L864:
    %r3827 = load i32, ptr %r4
    %r3828 = load i32, ptr %r6
    %r3829 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3828
    %r3830 = load i32, ptr %r3829
    %r3831 = sdiv i32 %r3827,%r3830
    store i32 %r3831, ptr %r0
    br label %L865
L865:
    br label %L862
L866:
    %r3847 = add i32 0,1
    ret i32 %r3847
L867:
    %r3848 = load i32, ptr %r8
    %r3849 = add i32 0,1
    %r3850 = add i32 %r3848,%r3849
    store i32 %r3850, ptr %r8
    br label %L650
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r0 = call i32 @long_func()
    ret i32 %r0
}
