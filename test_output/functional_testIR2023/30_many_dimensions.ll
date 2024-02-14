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
define i32 @sum(ptr %r0,ptr %r1,ptr %r2,ptr %r3,ptr %r4,ptr %r5,ptr %r6,ptr %r7,ptr %r8,ptr %r9,ptr %r10,ptr %r11,ptr %r12,ptr %r13,ptr %r14,ptr %r15,ptr %r16,ptr %r17,ptr %r18)
{
L0:
    br label %L1
L1:
    %r20 = getelementptr i32, ptr %r0, i32 0
    %r21 = load i32, ptr %r20
    %r24 = getelementptr [2 x i32], ptr %r1, i32 1, i32 0
    %r25 = load i32, ptr %r24
    %r26 = add i32 %r21,%r25
    %r30 = getelementptr [2 x [2 x i32]], ptr %r2, i32 0, i32 0, i32 1
    %r31 = load i32, ptr %r30
    %r32 = add i32 %r26,%r31
    %r37 = getelementptr [2 x [2 x [2 x i32]]], ptr %r3, i32 1, i32 0, i32 1, i32 0
    %r38 = load i32, ptr %r37
    %r39 = add i32 %r32,%r38
    %r45 = getelementptr [2 x [2 x [2 x [2 x i32]]]], ptr %r4, i32 0, i32 0, i32 1, i32 1, i32 0
    %r46 = load i32, ptr %r45
    %r47 = add i32 %r39,%r46
    %r54 = getelementptr [2 x [2 x [2 x [2 x [2 x i32]]]]], ptr %r5, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1
    %r55 = load i32, ptr %r54
    %r56 = add i32 %r47,%r55
    %r64 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]], ptr %r6, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0
    %r65 = load i32, ptr %r64
    %r66 = add i32 %r56,%r65
    %r75 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]], ptr %r7, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 1
    %r76 = load i32, ptr %r75
    %r77 = add i32 %r66,%r76
    %r87 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]], ptr %r8, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0
    %r88 = load i32, ptr %r87
    %r89 = add i32 %r77,%r88
    %r100 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]], ptr %r9, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1
    %r101 = load i32, ptr %r100
    %r102 = add i32 %r89,%r101
    %r114 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]], ptr %r10, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1, i32 1
    %r115 = load i32, ptr %r114
    %r116 = add i32 %r102,%r115
    %r129 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]], ptr %r11, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0
    %r130 = load i32, ptr %r129
    %r131 = add i32 %r116,%r130
    %r145 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]], ptr %r12, i32 1, i32 1, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
    %r146 = load i32, ptr %r145
    %r147 = add i32 %r131,%r146
    %r162 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]], ptr %r13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1
    %r163 = load i32, ptr %r162
    %r164 = add i32 %r147,%r163
    %r180 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]], ptr %r14, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1
    %r181 = load i32, ptr %r180
    %r182 = add i32 %r164,%r181
    %r199 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]], ptr %r15, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0
    %r200 = load i32, ptr %r199
    %r201 = add i32 %r182,%r200
    %r219 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]], ptr %r16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1
    %r220 = load i32, ptr %r219
    %r221 = add i32 %r201,%r220
    %r240 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]], ptr %r17, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1, i32 1
    %r241 = load i32, ptr %r240
    %r242 = add i32 %r221,%r241
    %r262 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]], ptr %r18, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
    %r263 = load i32, ptr %r262
    %r264 = add i32 %r242,%r263
    ret i32 %r264
}
define i32 @main()
{
L0:
    %r0 = alloca [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]]
    br label %L1
L1:
    call void @llvm.memset.p0.i32(ptr %r0,i8 0,i32 2097152,i1 0)
    %r2 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
    store i32 0, ptr %r2
    br label %L2
L2:
    %r581 = phi i32 [0,%L1],[%r580,%L7]
    %r562 = phi i32 [0,%L1],[%r180,%L7]
    %r9 = icmp slt i32 %r562,2
    br i1 %r9, label %L3, label %L4
L3:
    br label %L5
L4:
    %r199 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
    %r217 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
    %r234 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
    %r250 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
    %r265 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
    %r279 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
    %r292 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
    %r304 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
    %r315 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
    %r325 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
    %r334 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
    %r342 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
    %r349 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
    %r355 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
    %r360 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 0, i32 0, i32 0, i32 0
    %r364 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 0, i32 0, i32 0
    %r367 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 0, i32 0
    %r369 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 0
    %r370 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0
    %r371 = call i32 @sum(ptr %r199,ptr %r217,ptr %r234,ptr %r250,ptr %r265,ptr %r279,ptr %r292,ptr %r304,ptr %r315,ptr %r325,ptr %r334,ptr %r342,ptr %r349,ptr %r355,ptr %r360,ptr %r364,ptr %r367,ptr %r369,ptr %r370)
    call void @putint(i32 %r371)
    ret i32 0
L5:
    %r580 = phi i32 [%r581,%L3],[%r579,%L10]
    %r561 = phi i32 [0,%L3],[%r177,%L10]
    %r14 = icmp slt i32 %r561,2
    br i1 %r14, label %L6, label %L7
L6:
    br label %L8
L7:
    %r180 = add i32 %r562,1
    br label %L2
L8:
    %r579 = phi i32 [%r580,%L6],[%r578,%L13]
    %r559 = phi i32 [0,%L6],[%r174,%L13]
    %r19 = icmp slt i32 %r559,2
    br i1 %r19, label %L9, label %L10
L9:
    br label %L11
L10:
    %r177 = add i32 %r561,1
    br label %L5
L11:
    %r578 = phi i32 [%r579,%L9],[%r577,%L16]
    %r556 = phi i32 [0,%L9],[%r171,%L16]
    %r24 = icmp slt i32 %r556,2
    br i1 %r24, label %L12, label %L13
L12:
    br label %L14
L13:
    %r174 = add i32 %r559,1
    br label %L8
L14:
    %r577 = phi i32 [%r578,%L12],[%r576,%L19]
    %r552 = phi i32 [0,%L12],[%r168,%L19]
    %r29 = icmp slt i32 %r552,2
    br i1 %r29, label %L15, label %L16
L15:
    br label %L17
L16:
    %r171 = add i32 %r556,1
    br label %L11
L17:
    %r576 = phi i32 [%r577,%L15],[%r575,%L22]
    %r547 = phi i32 [0,%L15],[%r165,%L22]
    %r34 = icmp slt i32 %r547,2
    br i1 %r34, label %L18, label %L19
L18:
    br label %L20
L19:
    %r168 = add i32 %r552,1
    br label %L14
L20:
    %r575 = phi i32 [%r576,%L18],[%r574,%L25]
    %r541 = phi i32 [0,%L18],[%r162,%L25]
    %r39 = icmp slt i32 %r541,2
    br i1 %r39, label %L21, label %L22
L21:
    br label %L23
L22:
    %r165 = add i32 %r547,1
    br label %L17
L23:
    %r574 = phi i32 [%r575,%L21],[%r573,%L28]
    %r534 = phi i32 [0,%L21],[%r159,%L28]
    %r44 = icmp slt i32 %r534,2
    br i1 %r44, label %L24, label %L25
L24:
    br label %L26
L25:
    %r162 = add i32 %r541,1
    br label %L20
L26:
    %r573 = phi i32 [%r574,%L24],[%r572,%L31]
    %r526 = phi i32 [0,%L24],[%r156,%L31]
    %r49 = icmp slt i32 %r526,2
    br i1 %r49, label %L27, label %L28
L27:
    br label %L29
L28:
    %r159 = add i32 %r534,1
    br label %L23
L29:
    %r572 = phi i32 [%r573,%L27],[%r571,%L34]
    %r517 = phi i32 [0,%L27],[%r153,%L34]
    %r54 = icmp slt i32 %r517,2
    br i1 %r54, label %L30, label %L31
L30:
    br label %L32
L31:
    %r156 = add i32 %r526,1
    br label %L26
L32:
    %r571 = phi i32 [%r572,%L30],[%r570,%L37]
    %r507 = phi i32 [0,%L30],[%r150,%L37]
    %r59 = icmp slt i32 %r507,2
    br i1 %r59, label %L33, label %L34
L33:
    br label %L35
L34:
    %r153 = add i32 %r517,1
    br label %L29
L35:
    %r570 = phi i32 [%r571,%L33],[%r569,%L40]
    %r496 = phi i32 [0,%L33],[%r147,%L40]
    %r64 = icmp slt i32 %r496,2
    br i1 %r64, label %L36, label %L37
L36:
    br label %L38
L37:
    %r150 = add i32 %r507,1
    br label %L32
L38:
    %r569 = phi i32 [%r570,%L36],[%r568,%L43]
    %r484 = phi i32 [0,%L36],[%r144,%L43]
    %r69 = icmp slt i32 %r484,2
    br i1 %r69, label %L39, label %L40
L39:
    br label %L41
L40:
    %r147 = add i32 %r496,1
    br label %L35
L41:
    %r568 = phi i32 [%r569,%L39],[%r567,%L46]
    %r471 = phi i32 [0,%L39],[%r141,%L46]
    %r74 = icmp slt i32 %r471,2
    br i1 %r74, label %L42, label %L43
L42:
    br label %L44
L43:
    %r144 = add i32 %r484,1
    br label %L38
L44:
    %r567 = phi i32 [%r568,%L42],[%r566,%L49]
    %r457 = phi i32 [0,%L42],[%r138,%L49]
    %r79 = icmp slt i32 %r457,2
    br i1 %r79, label %L45, label %L46
L45:
    br label %L47
L46:
    %r141 = add i32 %r471,1
    br label %L41
L47:
    %r566 = phi i32 [%r567,%L45],[%r565,%L52]
    %r442 = phi i32 [0,%L45],[%r135,%L52]
    %r84 = icmp slt i32 %r442,2
    br i1 %r84, label %L48, label %L49
L48:
    br label %L50
L49:
    %r138 = add i32 %r457,1
    br label %L44
L50:
    %r565 = phi i32 [%r566,%L48],[%r564,%L55]
    %r426 = phi i32 [0,%L48],[%r132,%L55]
    %r89 = icmp slt i32 %r426,2
    br i1 %r89, label %L51, label %L52
L51:
    br label %L53
L52:
    %r135 = add i32 %r442,1
    br label %L47
L53:
    %r564 = phi i32 [%r565,%L51],[%r563,%L58]
    %r409 = phi i32 [0,%L51],[%r129,%L58]
    %r94 = icmp slt i32 %r409,2
    br i1 %r94, label %L54, label %L55
L54:
    br label %L56
L55:
    %r132 = add i32 %r426,1
    br label %L50
L56:
    %r563 = phi i32 [%r564,%L54],[%r123,%L57]
    %r391 = phi i32 [0,%L54],[%r126,%L57]
    %r99 = icmp slt i32 %r391,2
    br i1 %r99, label %L57, label %L58
L57:
    %r119 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 %r562, i32 %r561, i32 %r559, i32 %r556, i32 %r552, i32 %r547, i32 %r541, i32 %r534, i32 %r526, i32 %r517, i32 %r507, i32 %r496, i32 %r484, i32 %r471, i32 %r457, i32 %r442, i32 %r426, i32 %r409, i32 %r391
    store i32 %r563, ptr %r119
    %r123 = add i32 %r563,1
    %r126 = add i32 %r391,1
    br label %L56
L58:
    %r129 = add i32 %r409,1
    br label %L53
}
