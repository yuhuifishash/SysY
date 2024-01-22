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
@a = global i32 zeroinitializer
@b = global i32 zeroinitializer
@d = global i32 zeroinitializer
define i32 @set_a(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    %r2 = load i32, ptr %r1
    store i32 %r2, ptr @a
    %r3 = load i32, ptr @a
    ret i32 %r3
}
define i32 @set_b(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    %r2 = load i32, ptr %r1
    store i32 %r2, ptr @b
    %r3 = load i32, ptr @b
    ret i32 %r3
}
define i32 @set_d(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    %r2 = load i32, ptr %r1
    store i32 %r2, ptr @d
    %r3 = load i32, ptr @d
    ret i32 %r3
}
define i32 @main()
{
L0:
    %r130 = alloca i32
    %r128 = alloca i32
    %r126 = alloca i32
    %r124 = alloca i32
    %r122 = alloca i32
    %r30 = alloca i32
    %r0 = add i32 0,2
    store i32 %r0, ptr @a
    %r1 = add i32 0,3
    store i32 %r1, ptr @b
    %r2 = add i32 0,0
    %r3 = call i32 @set_a(i32 %r2)
    %r4 = icmp ne i32 %r3,0
    br i1 %r4, label %L3, label %L2
L1:
    br label %L2
L2:
    %r11 = load i32, ptr @a
    call void @putint(i32 %r11)
    %r12 = add i32 0,32
    call void @putch(i32 %r12)
    %r13 = load i32, ptr @b
    call void @putint(i32 %r13)
    %r14 = add i32 0,32
    call void @putch(i32 %r14)
    %r15 = add i32 0,2
    store i32 %r15, ptr @a
    %r16 = add i32 0,3
    store i32 %r16, ptr @b
    %r17 = add i32 0,0
    %r18 = call i32 @set_a(i32 %r17)
    %r19 = icmp ne i32 %r18,0
    br i1 %r19, label %L7, label %L6
L3:
    %r5 = add i32 0,1
    %r6 = call i32 @set_b(i32 %r5)
    %r7 = icmp ne i32 %r6,0
    br i1 %r7, label %L1, label %L2
L5:
    br label %L6
L6:
    %r26 = load i32, ptr @a
    call void @putint(i32 %r26)
    %r27 = add i32 0,32
    call void @putch(i32 %r27)
    %r28 = load i32, ptr @b
    call void @putint(i32 %r28)
    %r29 = add i32 0,10
    call void @putch(i32 %r29)
    %r31 = add i32 0,1
    store i32 %r31, ptr %r30
    %r32 = add i32 0,2
    store i32 %r32, ptr @d
    %r33 = load i32, ptr %r30
    %r34 = add i32 0,1
    %r35 = icmp sge i32 %r33,%r34
    br i1 %r35, label %L11, label %L10
L7:
    %r20 = add i32 0,1
    %r21 = call i32 @set_b(i32 %r20)
    %r22 = icmp ne i32 %r21,0
    br i1 %r22, label %L5, label %L6
L9:
    br label %L10
L10:
    %r44 = load i32, ptr @d
    call void @putint(i32 %r44)
    %r45 = add i32 0,32
    call void @putch(i32 %r45)
    %r46 = load i32, ptr %r30
    %r47 = add i32 0,1
    %r48 = icmp sle i32 %r46,%r47
    br i1 %r48, label %L13, label %L15
L11:
    %r38 = add i32 0,3
    %r39 = call i32 @set_d(i32 %r38)
    %r40 = icmp ne i32 %r39,0
    br i1 %r40, label %L9, label %L10
L13:
    br label %L14
L14:
    %r57 = load i32, ptr @d
    call void @putint(i32 %r57)
    %r58 = add i32 0,10
    call void @putch(i32 %r58)
    %r59 = add i32 0,16
    %r60 = add i32 0,3
    %r61 = add i32 0,2
    %r62 = add i32 0,1
    %r63 = add i32 %r61,%r62
    %r64 = sub i32 %r60,%r63
    %r65 = icmp sge i32 %r59,%r64
    br i1 %r65, label %L17, label %L18
L15:
    %r51 = add i32 0,4
    %r52 = call i32 @set_d(i32 %r51)
    %r53 = icmp ne i32 %r52,0
    br i1 %r53, label %L13, label %L14
L17:
    %r68 = add i32 0,65
    call void @putch(i32 %r68)
    br label %L18
L18:
    %r69 = add i32 0,25
    %r70 = add i32 0,7
    %r71 = sub i32 %r69,%r70
    %r72 = add i32 0,36
    %r73 = add i32 0,6
    %r74 = add i32 0,3
    %r75 = mul i32 %r73,%r74
    %r76 = sub i32 %r72,%r75
    %r77 = icmp ne i32 %r71,%r76
    br i1 %r77, label %L19, label %L20
L19:
    %r80 = add i32 0,66
    call void @putch(i32 %r80)
    br label %L20
L20:
    %r81 = add i32 0,1
    %r82 = add i32 0,8
    %r83 = icmp slt i32 %r81,%r82
    %r84 = zext i1 %r83 to i32
    %r85 = add i32 0,7
    %r86 = add i32 0,2
    %r87 = srem i32 %r85,%r86
    %r88 = icmp ne i32 %r84,%r87
    br i1 %r88, label %L21, label %L22
L21:
    %r91 = add i32 0,67
    call void @putch(i32 %r91)
    br label %L22
L22:
    %r92 = add i32 0,3
    %r93 = add i32 0,4
    %r94 = icmp sgt i32 %r92,%r93
    %r95 = zext i1 %r94 to i32
    %r96 = add i32 0,0
    %r97 = icmp eq i32 %r95,%r96
    br i1 %r97, label %L23, label %L24
L23:
    %r100 = add i32 0,68
    call void @putch(i32 %r100)
    br label %L24
L24:
    %r101 = add i32 0,1
    %r102 = add i32 0,102
    %r103 = add i32 0,63
    %r104 = icmp sle i32 %r102,%r103
    %r105 = zext i1 %r104 to i32
    %r106 = icmp eq i32 %r101,%r105
    br i1 %r106, label %L25, label %L26
L25:
    %r109 = add i32 0,69
    call void @putch(i32 %r109)
    br label %L26
L26:
    %r110 = add i32 0,5
    %r111 = add i32 0,6
    %r112 = sub i32 %r110,%r111
    %r113 = add i32 0,0
    %r114 = icmp eq i32 %r113,0
    %r115 = zext i1 %r114 to i32
    %r116 = sub i32 0,%r115
    %r117 = icmp eq i32 %r112,%r116
    br i1 %r117, label %L27, label %L28
L27:
    %r120 = add i32 0,70
    call void @putch(i32 %r120)
    br label %L28
L28:
    %r121 = add i32 0,10
    call void @putch(i32 %r121)
    %r123 = add i32 0,0
    store i32 %r123, ptr %r122
    %r125 = add i32 0,1
    store i32 %r125, ptr %r124
    %r127 = add i32 0,2
    store i32 %r127, ptr %r126
    %r129 = add i32 0,3
    store i32 %r129, ptr %r128
    %r131 = add i32 0,4
    store i32 %r131, ptr %r130
    br label %L29
L29:
    %r132 = load i32, ptr %r122
    %r133 = icmp ne i32 %r132,0
    br i1 %r133, label %L32, label %L31
L30:
    %r139 = add i32 0,32
    call void @putch(i32 %r139)
    br label %L29
L31:
    %r140 = load i32, ptr %r122
    %r141 = icmp eq i32 %r140,0
    br i1 %r141, label %L36, label %L34
L32:
    %r134 = load i32, ptr %r124
    %r135 = icmp ne i32 %r134,0
    br i1 %r135, label %L30, label %L31
L34:
    %r147 = add i32 0,67
    call void @putch(i32 %r147)
    br label %L35
L35:
    %r148 = load i32, ptr %r122
    %r149 = load i32, ptr %r124
    %r150 = icmp sge i32 %r148,%r149
    br i1 %r150, label %L38, label %L40
L36:
    %r142 = load i32, ptr %r124
    %r143 = icmp ne i32 %r142,0
    br i1 %r143, label %L34, label %L35
L38:
    %r161 = add i32 0,72
    call void @putch(i32 %r161)
    br label %L39
L39:
    %r162 = load i32, ptr %r126
    %r163 = load i32, ptr %r124
    %r164 = icmp sge i32 %r162,%r163
    br i1 %r164, label %L44, label %L43
L40:
    %r153 = load i32, ptr %r124
    %r154 = load i32, ptr %r122
    %r155 = icmp sle i32 %r153,%r154
    br i1 %r155, label %L38, label %L39
L42:
    %r175 = add i32 0,73
    call void @putch(i32 %r175)
    br label %L43
L43:
    %r176 = load i32, ptr %r122
    %r177 = load i32, ptr %r124
    %r178 = icmp eq i32 %r177,0
    %r179 = zext i1 %r178 to i32
    %r180 = icmp eq i32 %r176,%r179
    br i1 %r180, label %L50, label %L48
L44:
    %r167 = load i32, ptr %r130
    %r168 = load i32, ptr %r128
    %r169 = icmp ne i32 %r167,%r168
    br i1 %r169, label %L42, label %L43
L46:
    %r199 = add i32 0,74
    call void @putch(i32 %r199)
    br label %L47
L47:
    %r200 = load i32, ptr %r122
    %r201 = load i32, ptr %r124
    %r202 = icmp eq i32 %r201,0
    %r203 = zext i1 %r202 to i32
    %r204 = icmp eq i32 %r200,%r203
    br i1 %r204, label %L52, label %L54
L48:
    %r191 = load i32, ptr %r130
    %r192 = load i32, ptr %r130
    %r193 = icmp sge i32 %r191,%r192
    br i1 %r193, label %L46, label %L47
L50:
    %r183 = load i32, ptr %r128
    %r184 = load i32, ptr %r128
    %r185 = icmp slt i32 %r183,%r184
    br i1 %r185, label %L46, label %L48
L52:
    %r223 = add i32 0,75
    call void @putch(i32 %r223)
    br label %L53
L53:
    %r224 = add i32 0,10
    call void @putch(i32 %r224)
    %r225 = add i32 0,0
    ret i32 %r225
L54:
    %r207 = load i32, ptr %r128
    %r208 = load i32, ptr %r128
    %r209 = icmp slt i32 %r207,%r208
    br i1 %r209, label %L56, label %L53
L56:
    %r212 = load i32, ptr %r130
    %r213 = load i32, ptr %r130
    %r214 = icmp sge i32 %r212,%r213
    br i1 %r214, label %L52, label %L53
}
