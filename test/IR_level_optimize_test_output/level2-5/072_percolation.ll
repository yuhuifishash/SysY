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
@array = global [110x i32] zeroinitializer
@n = global i32 zeroinitializer
define void @init(i32 %r0)
{
L0:
    br label %L1
L1:
    %r7 = mul i32 %r0,%r0
    %r9 = add i32 %r7,1
    %r10 = icmp sle i32 1,%r9
    br i1 %r10, label %L6, label %L5
L3:
    %r29 = phi i32 [%r19,%L4],[1,%L6]
    %r16 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r29
    store i32 -1, ptr %r16
    %r19 = add i32 %r29,1
    br label %L4
L4:
    %r26 = icmp sle i32 %r19,%r25
    br i1 %r26, label %L3, label %L5
L5:
    ret void
L6:
    %r23 = mul i32 %r0,%r0
    %r25 = add i32 %r23,1
    br label %L3
}
define i32 @findfa(i32 %r0)
{
L0:
    br label %L1
L1:
    %r3 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r0
    %r4 = load i32, ptr %r3
    %r6 = icmp eq i32 %r4,%r0
    br i1 %r6, label %L2, label %L3
L2:
    ret i32 %r0
L3:
    %r11 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r0
    %r12 = load i32, ptr %r11
    %r13 = call i32 @findfa(i32 %r12)
    store i32 %r13, ptr %r11
    %r18 = load i32, ptr %r11
    ret i32 %r18
}
define void @mmerge(i32 %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r6 = call i32 @findfa(i32 %r0)
    %r9 = call i32 @findfa(i32 %r1)
    %r12 = icmp ne i32 %r6,%r9
    br i1 %r12, label %L2, label %L3
L2:
    %r17 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r6
    store i32 %r9, ptr %r17
    br label %L3
L3:
    ret void
}
define i32 @main()
{
L0:
    br label %L1
L1:
    br label %L3
L3:
    store i32 4, ptr @n
    %r20 = load i32, ptr @n
    call void @init(i32 %r20)
    %r24 = mul i32 %r20,%r20
    %r26 = add i32 %r24,1
    br label %L70
L4:
    br label %L5
L5:
    ret i32 0
L7:
    %r219 = phi i32 [%r195,%L8],[0,%L70]
    %r215 = phi i32 [%r214,%L8],[0,%L70]
    %r32 = call i32 @getint()
    %r33 = call i32 @getint()
    %r35 = icmp eq i32 %r215,0
    br i1 %r35, label %L10, label %L11
L8:
    %r198 = icmp slt i32 %r195,10
    br i1 %r198, label %L7, label %L9
L9:
    %r202 = icmp eq i32 %r214,0
    br i1 %r202, label %L38, label %L39
L10:
    %r39 = load i32, ptr @n
    %r42 = sub i32 %r32,1
    %r43 = mul i32 %r39,%r42
    %r45 = add i32 %r43,%r33
    %r48 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r45
    store i32 %r45, ptr %r48
    %r51 = icmp eq i32 %r32,1
    br i1 %r51, label %L12, label %L13
L11:
    %r214 = phi i32 [%r215,%L7],[%r213,%L33]
    %r195 = add i32 %r219,1
    br label %L8
L12:
    %r56 = getelementptr [110 x i32], ptr @array, i32 0, i32 0
    store i32 0, ptr %r56
    br label %L40
L13:
    %r60 = load i32, ptr @n
    %r61 = icmp eq i32 %r32,%r60
    br i1 %r61, label %L14, label %L15
L14:
    %r66 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r26
    store i32 %r26, ptr %r66
    br label %L45
L15:
    %r70 = load i32, ptr @n
    %r71 = icmp slt i32 %r33,%r70
    br i1 %r71, label %L18, label %L17
L16:
    %r90 = add i32 %r45,1
    br label %L50
L17:
    %r93 = icmp sgt i32 %r33,1
    br i1 %r93, label %L22, label %L21
L18:
    %r76 = add i32 %r45,1
    %r77 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r76
    %r78 = load i32, ptr %r77
    %r81 = icmp ne i32 %r78,-1
    br i1 %r81, label %L16, label %L17
L20:
    %r112 = sub i32 %r45,1
    br label %L55
L21:
    %r114 = load i32, ptr @n
    %r115 = icmp slt i32 %r32,%r114
    br i1 %r115, label %L26, label %L25
L22:
    %r98 = sub i32 %r45,1
    %r99 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r98
    %r100 = load i32, ptr %r99
    %r103 = icmp ne i32 %r100,-1
    br i1 %r103, label %L20, label %L21
L24:
    %r133 = load i32, ptr @n
    %r134 = add i32 %r45,%r133
    br label %L60
L25:
    %r137 = icmp sgt i32 %r32,1
    br i1 %r137, label %L30, label %L29
L26:
    %r119 = load i32, ptr @n
    %r120 = add i32 %r45,%r119
    %r121 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r120
    %r122 = load i32, ptr %r121
    %r125 = icmp ne i32 %r122,-1
    br i1 %r125, label %L24, label %L25
L28:
    %r155 = load i32, ptr @n
    %r156 = sub i32 %r45,%r155
    br label %L65
L29:
    %r158 = getelementptr [110 x i32], ptr @array, i32 0, i32 0
    %r159 = load i32, ptr %r158
    %r162 = icmp ne i32 %r159,-1
    br i1 %r162, label %L36, label %L33
L30:
    %r141 = load i32, ptr @n
    %r142 = sub i32 %r45,%r141
    %r143 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r142
    %r144 = load i32, ptr %r143
    %r147 = icmp ne i32 %r144,-1
    br i1 %r147, label %L28, label %L29
L32:
    %r190 = add i32 %r219,1
    call void @putint(i32 %r190)
    call void @putch(i32 10)
    br label %L33
L33:
    %r213 = phi i32 [%r215,%L29],[%r215,%L36],[%r215,%L34],[1,%L32]
    br label %L11
L34:
    %r177 = call i32 @findfa(i32 0)
    %r179 = call i32 @findfa(i32 %r26)
    %r180 = icmp eq i32 %r177,%r179
    br i1 %r180, label %L32, label %L33
L36:
    %r166 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r26
    %r167 = load i32, ptr %r166
    %r170 = icmp ne i32 %r167,-1
    br i1 %r170, label %L34, label %L33
L38:
    call void @putint(i32 -1)
    call void @putch(i32 10)
    br label %L39
L39:
    br label %L4
L40:
    br label %L42
L41:
    br label %L13
L42:
    %r233 = call i32 @findfa(i32 %r45)
    %r234 = call i32 @findfa(i32 0)
    %r235 = icmp ne i32 %r233,%r234
    br i1 %r235, label %L43, label %L44
L43:
    %r236 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r233
    store i32 %r234, ptr %r236
    br label %L44
L44:
    br label %L41
L45:
    br label %L47
L46:
    br label %L15
L47:
    %r237 = call i32 @findfa(i32 %r45)
    %r238 = call i32 @findfa(i32 %r26)
    %r239 = icmp ne i32 %r237,%r238
    br i1 %r239, label %L48, label %L49
L48:
    %r240 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r237
    store i32 %r238, ptr %r240
    br label %L49
L49:
    br label %L46
L50:
    br label %L52
L51:
    br label %L17
L52:
    %r241 = call i32 @findfa(i32 %r45)
    %r242 = call i32 @findfa(i32 %r90)
    %r243 = icmp ne i32 %r241,%r242
    br i1 %r243, label %L53, label %L54
L53:
    %r244 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r241
    store i32 %r242, ptr %r244
    br label %L54
L54:
    br label %L51
L55:
    br label %L57
L56:
    br label %L21
L57:
    %r245 = call i32 @findfa(i32 %r45)
    %r246 = call i32 @findfa(i32 %r112)
    %r247 = icmp ne i32 %r245,%r246
    br i1 %r247, label %L58, label %L59
L58:
    %r248 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r245
    store i32 %r246, ptr %r248
    br label %L59
L59:
    br label %L56
L60:
    br label %L62
L61:
    br label %L25
L62:
    %r249 = call i32 @findfa(i32 %r45)
    %r250 = call i32 @findfa(i32 %r134)
    %r251 = icmp ne i32 %r249,%r250
    br i1 %r251, label %L63, label %L64
L63:
    %r252 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r249
    store i32 %r250, ptr %r252
    br label %L64
L64:
    br label %L61
L65:
    br label %L67
L66:
    br label %L29
L67:
    %r253 = call i32 @findfa(i32 %r45)
    %r254 = call i32 @findfa(i32 %r156)
    %r255 = icmp ne i32 %r253,%r254
    br i1 %r255, label %L68, label %L69
L68:
    %r256 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r253
    store i32 %r254, ptr %r256
    br label %L69
L69:
    br label %L66
L70:
    br label %L7
}
