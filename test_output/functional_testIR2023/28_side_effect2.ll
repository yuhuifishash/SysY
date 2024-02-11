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
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r4 = load i32, ptr @sum
    %r5 = add i32 1,0
    %r6 = add i32 %r4,%r5
    store i32 %r6, ptr @sum
    %r7 = load i32, ptr %r2
    %r8 = load i32, ptr %r3
    %r9 = icmp sge i32 %r7,%r8
    br i1 %r9, label %L2, label %L4
L2:
    %r13 = add i32 0,0
    ret i32 %r13
L3:
    %r14 = load i32, ptr %r2
    %r15 = getelementptr [20 x i32], ptr @array, i32 0, i32 %r14
    %r16 = add i32 1,0
    store i32 %r16, ptr %r15
    %r17 = load i32, ptr %r2
    %r18 = add i32 0,0
    %r19 = icmp eq i32 %r17,%r18
    br i1 %r19, label %L5, label %L6
L4:
    %r10 = load i32, ptr %r2
    %r11 = add i32 20,0
    %r12 = icmp sge i32 %r10,%r11
    br i1 %r12, label %L2, label %L3
L5:
    %r20 = add i32 0,0
    %r21 = getelementptr [20 x i32], ptr @array, i32 0, i32 %r20
    %r22 = load i32, ptr %r21
    ret i32 %r22
L6:
    %r23 = load i32, ptr %r2
    %r24 = add i32 1,0
    %r25 = sub i32 %r23,%r24
    %r26 = getelementptr [20 x i32], ptr @array, i32 0, i32 %r25
    %r27 = load i32, ptr %r26
    ret i32 %r27
}
define i32 @g(i32 %r0,i32 %r1)
{
L0:
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r4 = load i32, ptr @sum
    %r5 = add i32 2,0
    %r6 = add i32 %r4,%r5
    store i32 %r6, ptr @sum
    %r7 = load i32, ptr %r2
    %r8 = load i32, ptr %r3
    %r9 = icmp sge i32 %r7,%r8
    br i1 %r9, label %L2, label %L4
L2:
    %r13 = add i32 1,0
    ret i32 %r13
L3:
    %r14 = load i32, ptr %r2
    %r15 = getelementptr [20 x i32], ptr @array, i32 0, i32 %r14
    %r16 = add i32 0,0
    store i32 %r16, ptr %r15
    %r17 = load i32, ptr %r2
    %r18 = add i32 0,0
    %r19 = icmp eq i32 %r17,%r18
    br i1 %r19, label %L5, label %L6
L4:
    %r10 = load i32, ptr %r2
    %r11 = add i32 20,0
    %r12 = icmp sge i32 %r10,%r11
    br i1 %r12, label %L2, label %L3
L5:
    %r20 = add i32 0,0
    %r21 = getelementptr [20 x i32], ptr @array, i32 0, i32 %r20
    %r22 = load i32, ptr %r21
    ret i32 %r22
L6:
    %r23 = load i32, ptr %r2
    %r24 = add i32 1,0
    %r25 = sub i32 %r23,%r24
    %r26 = getelementptr [20 x i32], ptr @array, i32 0, i32 %r25
    %r27 = load i32, ptr %r26
    ret i32 %r27
}
define i32 @h(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:
    %r2 = load i32, ptr @sum
    %r3 = add i32 3,0
    %r4 = add i32 %r2,%r3
    store i32 %r4, ptr @sum
    %r5 = load i32, ptr %r1
    %r6 = add i32 0,0
    %r7 = icmp slt i32 %r5,%r6
    br i1 %r7, label %L2, label %L4
L2:
    %r11 = add i32 0,0
    ret i32 %r11
L3:
    %r12 = load i32, ptr %r1
    %r13 = getelementptr [20 x i32], ptr @array, i32 0, i32 %r12
    %r14 = load i32, ptr %r13
    ret i32 %r14
L4:
    %r8 = load i32, ptr %r1
    %r9 = add i32 20,0
    %r10 = icmp sge i32 %r8,%r9
    br i1 %r10, label %L2, label %L3
}
define i32 @main()
{
L0:
    %r188 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    br label %L2
L2:
    %r2 = load i32, ptr %r0
    %r3 = add i32 20,0
    %r4 = icmp slt i32 %r2,%r3
    br i1 %r4, label %L3, label %L4
L3:
    %r5 = add i32 0,0
    %r6 = load i32, ptr %r0
    %r7 = call i32 @f(i32 %r5,i32 %r6)
    %r8 = icmp ne i32 %r7,0
    br i1 %r8, label %L25, label %L6
L4:
    %r88 = add i32 0,0
    store i32 %r88, ptr %r0
    br label %L26
L5:
    br label %L6
L6:
    %r85 = load i32, ptr %r0
    %r86 = add i32 1,0
    %r87 = add i32 %r85,%r86
    store i32 %r87, ptr %r0
    br label %L2
L7:
    %r81 = add i32 19,0
    %r82 = load i32, ptr %r0
    %r83 = call i32 @f(i32 %r81,i32 %r82)
    %r84 = icmp ne i32 %r83,0
    br i1 %r84, label %L5, label %L6
L8:
    %r77 = add i32 18,0
    %r78 = load i32, ptr %r0
    %r79 = call i32 @f(i32 %r77,i32 %r78)
    %r80 = icmp ne i32 %r79,0
    br i1 %r80, label %L7, label %L6
L9:
    %r73 = add i32 17,0
    %r74 = load i32, ptr %r0
    %r75 = call i32 @f(i32 %r73,i32 %r74)
    %r76 = icmp ne i32 %r75,0
    br i1 %r76, label %L8, label %L6
L10:
    %r69 = add i32 16,0
    %r70 = load i32, ptr %r0
    %r71 = call i32 @f(i32 %r69,i32 %r70)
    %r72 = icmp ne i32 %r71,0
    br i1 %r72, label %L9, label %L6
L11:
    %r65 = add i32 15,0
    %r66 = load i32, ptr %r0
    %r67 = call i32 @f(i32 %r65,i32 %r66)
    %r68 = icmp ne i32 %r67,0
    br i1 %r68, label %L10, label %L6
L12:
    %r61 = add i32 14,0
    %r62 = load i32, ptr %r0
    %r63 = call i32 @f(i32 %r61,i32 %r62)
    %r64 = icmp ne i32 %r63,0
    br i1 %r64, label %L11, label %L6
L13:
    %r57 = add i32 13,0
    %r58 = load i32, ptr %r0
    %r59 = call i32 @f(i32 %r57,i32 %r58)
    %r60 = icmp ne i32 %r59,0
    br i1 %r60, label %L12, label %L6
L14:
    %r53 = add i32 12,0
    %r54 = load i32, ptr %r0
    %r55 = call i32 @f(i32 %r53,i32 %r54)
    %r56 = icmp ne i32 %r55,0
    br i1 %r56, label %L13, label %L6
L15:
    %r49 = add i32 11,0
    %r50 = load i32, ptr %r0
    %r51 = call i32 @f(i32 %r49,i32 %r50)
    %r52 = icmp ne i32 %r51,0
    br i1 %r52, label %L14, label %L6
L16:
    %r45 = add i32 10,0
    %r46 = load i32, ptr %r0
    %r47 = call i32 @f(i32 %r45,i32 %r46)
    %r48 = icmp ne i32 %r47,0
    br i1 %r48, label %L15, label %L6
L17:
    %r41 = add i32 9,0
    %r42 = load i32, ptr %r0
    %r43 = call i32 @f(i32 %r41,i32 %r42)
    %r44 = icmp ne i32 %r43,0
    br i1 %r44, label %L16, label %L6
L18:
    %r37 = add i32 8,0
    %r38 = load i32, ptr %r0
    %r39 = call i32 @f(i32 %r37,i32 %r38)
    %r40 = icmp ne i32 %r39,0
    br i1 %r40, label %L17, label %L6
L19:
    %r33 = add i32 7,0
    %r34 = load i32, ptr %r0
    %r35 = call i32 @f(i32 %r33,i32 %r34)
    %r36 = icmp ne i32 %r35,0
    br i1 %r36, label %L18, label %L6
L20:
    %r29 = add i32 6,0
    %r30 = load i32, ptr %r0
    %r31 = call i32 @f(i32 %r29,i32 %r30)
    %r32 = icmp ne i32 %r31,0
    br i1 %r32, label %L19, label %L6
L21:
    %r25 = add i32 5,0
    %r26 = load i32, ptr %r0
    %r27 = call i32 @f(i32 %r25,i32 %r26)
    %r28 = icmp ne i32 %r27,0
    br i1 %r28, label %L20, label %L6
L22:
    %r21 = add i32 4,0
    %r22 = load i32, ptr %r0
    %r23 = call i32 @f(i32 %r21,i32 %r22)
    %r24 = icmp ne i32 %r23,0
    br i1 %r24, label %L21, label %L6
L23:
    %r17 = add i32 3,0
    %r18 = load i32, ptr %r0
    %r19 = call i32 @f(i32 %r17,i32 %r18)
    %r20 = icmp ne i32 %r19,0
    br i1 %r20, label %L22, label %L6
L24:
    %r13 = add i32 2,0
    %r14 = load i32, ptr %r0
    %r15 = call i32 @f(i32 %r13,i32 %r14)
    %r16 = icmp ne i32 %r15,0
    br i1 %r16, label %L23, label %L6
L25:
    %r9 = add i32 1,0
    %r10 = load i32, ptr %r0
    %r11 = call i32 @f(i32 %r9,i32 %r10)
    %r12 = icmp ne i32 %r11,0
    br i1 %r12, label %L24, label %L6
L26:
    %r89 = load i32, ptr %r0
    %r90 = add i32 20,0
    %r91 = icmp slt i32 %r89,%r90
    br i1 %r91, label %L27, label %L28
L27:
    %r92 = add i32 0,0
    %r93 = load i32, ptr %r0
    %r94 = call i32 @g(i32 %r92,i32 %r93)
    %r95 = icmp ne i32 %r94,0
    br i1 %r95, label %L29, label %L49
L28:
    %r175 = add i32 1,0
    store i32 %r175, ptr %r0
    br label %L50
L29:
    br label %L30
L30:
    %r172 = load i32, ptr %r0
    %r173 = add i32 1,0
    %r174 = add i32 %r172,%r173
    store i32 %r174, ptr %r0
    br label %L26
L31:
    %r168 = add i32 19,0
    %r169 = load i32, ptr %r0
    %r170 = call i32 @g(i32 %r168,i32 %r169)
    %r171 = icmp ne i32 %r170,0
    br i1 %r171, label %L29, label %L30
L32:
    %r164 = add i32 18,0
    %r165 = load i32, ptr %r0
    %r166 = call i32 @g(i32 %r164,i32 %r165)
    %r167 = icmp ne i32 %r166,0
    br i1 %r167, label %L29, label %L31
L33:
    %r160 = add i32 17,0
    %r161 = load i32, ptr %r0
    %r162 = call i32 @g(i32 %r160,i32 %r161)
    %r163 = icmp ne i32 %r162,0
    br i1 %r163, label %L29, label %L32
L34:
    %r156 = add i32 16,0
    %r157 = load i32, ptr %r0
    %r158 = call i32 @g(i32 %r156,i32 %r157)
    %r159 = icmp ne i32 %r158,0
    br i1 %r159, label %L29, label %L33
L35:
    %r152 = add i32 15,0
    %r153 = load i32, ptr %r0
    %r154 = call i32 @g(i32 %r152,i32 %r153)
    %r155 = icmp ne i32 %r154,0
    br i1 %r155, label %L29, label %L34
L36:
    %r148 = add i32 14,0
    %r149 = load i32, ptr %r0
    %r150 = call i32 @g(i32 %r148,i32 %r149)
    %r151 = icmp ne i32 %r150,0
    br i1 %r151, label %L29, label %L35
L37:
    %r144 = add i32 13,0
    %r145 = load i32, ptr %r0
    %r146 = call i32 @g(i32 %r144,i32 %r145)
    %r147 = icmp ne i32 %r146,0
    br i1 %r147, label %L29, label %L36
L38:
    %r140 = add i32 12,0
    %r141 = load i32, ptr %r0
    %r142 = call i32 @g(i32 %r140,i32 %r141)
    %r143 = icmp ne i32 %r142,0
    br i1 %r143, label %L29, label %L37
L39:
    %r136 = add i32 11,0
    %r137 = load i32, ptr %r0
    %r138 = call i32 @g(i32 %r136,i32 %r137)
    %r139 = icmp ne i32 %r138,0
    br i1 %r139, label %L29, label %L38
L40:
    %r132 = add i32 10,0
    %r133 = load i32, ptr %r0
    %r134 = call i32 @g(i32 %r132,i32 %r133)
    %r135 = icmp ne i32 %r134,0
    br i1 %r135, label %L29, label %L39
L41:
    %r128 = add i32 9,0
    %r129 = load i32, ptr %r0
    %r130 = call i32 @g(i32 %r128,i32 %r129)
    %r131 = icmp ne i32 %r130,0
    br i1 %r131, label %L29, label %L40
L42:
    %r124 = add i32 8,0
    %r125 = load i32, ptr %r0
    %r126 = call i32 @g(i32 %r124,i32 %r125)
    %r127 = icmp ne i32 %r126,0
    br i1 %r127, label %L29, label %L41
L43:
    %r120 = add i32 7,0
    %r121 = load i32, ptr %r0
    %r122 = call i32 @g(i32 %r120,i32 %r121)
    %r123 = icmp ne i32 %r122,0
    br i1 %r123, label %L29, label %L42
L44:
    %r116 = add i32 6,0
    %r117 = load i32, ptr %r0
    %r118 = call i32 @g(i32 %r116,i32 %r117)
    %r119 = icmp ne i32 %r118,0
    br i1 %r119, label %L29, label %L43
L45:
    %r112 = add i32 5,0
    %r113 = load i32, ptr %r0
    %r114 = call i32 @g(i32 %r112,i32 %r113)
    %r115 = icmp ne i32 %r114,0
    br i1 %r115, label %L29, label %L44
L46:
    %r108 = add i32 4,0
    %r109 = load i32, ptr %r0
    %r110 = call i32 @g(i32 %r108,i32 %r109)
    %r111 = icmp ne i32 %r110,0
    br i1 %r111, label %L29, label %L45
L47:
    %r104 = add i32 3,0
    %r105 = load i32, ptr %r0
    %r106 = call i32 @g(i32 %r104,i32 %r105)
    %r107 = icmp ne i32 %r106,0
    br i1 %r107, label %L29, label %L46
L48:
    %r100 = add i32 2,0
    %r101 = load i32, ptr %r0
    %r102 = call i32 @g(i32 %r100,i32 %r101)
    %r103 = icmp ne i32 %r102,0
    br i1 %r103, label %L29, label %L47
L49:
    %r96 = add i32 1,0
    %r97 = load i32, ptr %r0
    %r98 = call i32 @g(i32 %r96,i32 %r97)
    %r99 = icmp ne i32 %r98,0
    br i1 %r99, label %L29, label %L48
L50:
    %r176 = load i32, ptr %r0
    %r177 = add i32 20,0
    %r178 = icmp slt i32 %r176,%r177
    br i1 %r178, label %L53, label %L52
L51:
    %r185 = load i32, ptr %r0
    %r186 = add i32 1,0
    %r187 = add i32 %r185,%r186
    store i32 %r187, ptr %r0
    br label %L50
L52:
    %r189 = add i32 0,0
    store i32 %r189, ptr %r188
    %r190 = add i32 0,0
    store i32 %r190, ptr %r188
    %r191 = add i32 0,0
    %r192 = call i32 @h(i32 %r191)
    %r193 = icmp ne i32 %r192,0
    br i1 %r193, label %L58, label %L57
L53:
    %r179 = load i32, ptr %r0
    %r180 = add i32 1,0
    %r181 = sub i32 %r179,%r180
    %r182 = load i32, ptr %r0
    %r183 = call i32 @f(i32 %r181,i32 %r182)
    %r184 = icmp ne i32 %r183,0
    br i1 %r184, label %L51, label %L52
L54:
    %r203 = add i32 1,0
    store i32 %r203, ptr %r188
    br label %L55
L55:
    %r204 = load i32, ptr @sum
    %r205 = load i32, ptr %r188
    %r206 = add i32 %r204,%r205
    %r207 = add i32 0,0
    store i32 %r207, ptr %r188
    %r208 = add i32 4,0
    %r209 = call i32 @h(i32 %r208)
    %r210 = icmp eq i32 %r209,0
    br i1 %r210, label %L59, label %L62
L56:
    %r200 = add i32 3,0
    %r201 = call i32 @h(i32 %r200)
    %r202 = icmp ne i32 %r201,0
    br i1 %r202, label %L54, label %L55
L57:
    %r197 = add i32 2,0
    %r198 = call i32 @h(i32 %r197)
    %r199 = icmp eq i32 %r198,0
    br i1 %r199, label %L54, label %L56
L58:
    %r194 = add i32 1,0
    %r195 = call i32 @h(i32 %r194)
    %r196 = icmp ne i32 %r195,0
    br i1 %r196, label %L54, label %L57
L59:
    %r223 = add i32 1,0
    store i32 %r223, ptr %r188
    br label %L60
L60:
    %r224 = load i32, ptr @sum
    %r225 = load i32, ptr %r188
    %r226 = mul i32 %r224,%r225
    %r227 = add i32 0,0
    store i32 %r227, ptr %r188
    %r228 = add i32 9,0
    %r229 = call i32 @h(i32 %r228)
    %r230 = icmp ne i32 %r229,0
    br i1 %r230, label %L71, label %L70
L61:
    %r220 = add i32 8,0
    %r221 = call i32 @h(i32 %r220)
    %r222 = icmp eq i32 %r221,0
    br i1 %r222, label %L59, label %L60
L62:
    %r211 = add i32 5,0
    %r212 = call i32 @h(i32 %r211)
    %r213 = icmp ne i32 %r212,0
    br i1 %r213, label %L64, label %L61
L63:
    %r217 = add i32 7,0
    %r218 = call i32 @h(i32 %r217)
    %r219 = icmp ne i32 %r218,0
    br i1 %r219, label %L59, label %L61
L64:
    %r214 = add i32 6,0
    %r215 = call i32 @h(i32 %r214)
    %r216 = icmp eq i32 %r215,0
    br i1 %r216, label %L63, label %L61
L65:
    %r249 = add i32 1,0
    store i32 %r249, ptr %r188
    br label %L66
L66:
    %r250 = load i32, ptr @sum
    %r251 = load i32, ptr %r188
    %r252 = sub i32 %r250,%r251
    %r253 = add i32 0,0
    store i32 %r253, ptr %r188
    %r254 = add i32 0,0
    %r255 = call i32 @h(i32 %r254)
    %r256 = icmp ne i32 %r255,0
    br i1 %r256, label %L80, label %L77
L67:
    %r243 = add i32 14,0
    %r244 = call i32 @h(i32 %r243)
    %r245 = icmp ne i32 %r244,0
    br i1 %r245, label %L72, label %L66
L68:
    %r240 = add i32 13,0
    %r241 = call i32 @h(i32 %r240)
    %r242 = icmp eq i32 %r241,0
    br i1 %r242, label %L65, label %L67
L69:
    %r237 = add i32 12,0
    %r238 = call i32 @h(i32 %r237)
    %r239 = icmp eq i32 %r238,0
    br i1 %r239, label %L65, label %L68
L70:
    %r234 = add i32 11,0
    %r235 = call i32 @h(i32 %r234)
    %r236 = icmp eq i32 %r235,0
    br i1 %r236, label %L65, label %L69
L71:
    %r231 = add i32 10,0
    %r232 = call i32 @h(i32 %r231)
    %r233 = icmp eq i32 %r232,0
    br i1 %r233, label %L65, label %L70
L72:
    %r246 = add i32 15,0
    %r247 = call i32 @h(i32 %r246)
    %r248 = icmp ne i32 %r247,0
    br i1 %r248, label %L65, label %L66
L73:
    %r278 = add i32 1,0
    store i32 %r278, ptr %r188
    br label %L74
L74:
    %r279 = load i32, ptr @sum
    %r280 = load i32, ptr %r188
    %r281 = add i32 %r279,%r280
    call void @putint(i32 %r281)
    %r282 = add i32 0,0
    ret i32 %r282
L75:
    %r275 = add i32 8,0
    %r276 = call i32 @h(i32 %r275)
    %r277 = icmp ne i32 %r276,0
    br i1 %r277, label %L73, label %L74
L76:
    %r269 = add i32 6,0
    %r270 = call i32 @h(i32 %r269)
    %r271 = icmp ne i32 %r270,0
    br i1 %r271, label %L81, label %L75
L77:
    %r266 = add i32 5,0
    %r267 = call i32 @h(i32 %r266)
    %r268 = icmp ne i32 %r267,0
    br i1 %r268, label %L73, label %L76
L78:
    %r263 = add i32 4,0
    %r264 = call i32 @h(i32 %r263)
    %r265 = icmp eq i32 %r264,0
    br i1 %r265, label %L73, label %L77
L79:
    %r260 = add i32 3,0
    %r261 = call i32 @h(i32 %r260)
    %r262 = icmp eq i32 %r261,0
    br i1 %r262, label %L78, label %L77
L80:
    %r257 = add i32 2,0
    %r258 = call i32 @h(i32 %r257)
    %r259 = icmp ne i32 %r258,0
    br i1 %r259, label %L79, label %L77
L81:
    %r272 = add i32 7,0
    %r273 = call i32 @h(i32 %r272)
    %r274 = icmp eq i32 %r273,0
    br i1 %r274, label %L73, label %L75
}
