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
@a = global i32 zeroinitializer
@b = global i32 zeroinitializer
@d = global i32 zeroinitializer
define i32 @set_a(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:
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
    br label %L1
L1:
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
    br label %L1
L1:
    %r2 = load i32, ptr %r1
    store i32 %r2, ptr @d
    %r3 = load i32, ptr @d
    ret i32 %r3
}
define i32 @main()
{
L0:
    %r102 = alloca i32
    %r100 = alloca i32
    %r98 = alloca i32
    %r96 = alloca i32
    %r94 = alloca i32
    %r24 = alloca i32
    br label %L1
L1:
    %r0 = add i32 2,0
    store i32 %r0, ptr @a
    %r1 = add i32 3,0
    store i32 %r1, ptr @b
    %r2 = add i32 0,0
    %r3 = call i32 @set_a(i32 %r2)
    %r4 = icmp ne i32 %r3,0
    br i1 %r4, label %L4, label %L3
L2:
    br label %L3
L3:
    %r8 = load i32, ptr @a
    call void @putint(i32 %r8)
    %r9 = add i32 32,0
    call void @putch(i32 %r9)
    %r10 = load i32, ptr @b
    call void @putint(i32 %r10)
    %r11 = add i32 32,0
    call void @putch(i32 %r11)
    %r12 = add i32 2,0
    store i32 %r12, ptr @a
    %r13 = add i32 3,0
    store i32 %r13, ptr @b
    %r14 = add i32 0,0
    %r15 = call i32 @set_a(i32 %r14)
    %r16 = icmp ne i32 %r15,0
    br i1 %r16, label %L7, label %L6
L4:
    %r5 = add i32 1,0
    %r6 = call i32 @set_b(i32 %r5)
    %r7 = icmp ne i32 %r6,0
    br i1 %r7, label %L2, label %L3
L5:
    br label %L6
L6:
    %r20 = load i32, ptr @a
    call void @putint(i32 %r20)
    %r21 = add i32 32,0
    call void @putch(i32 %r21)
    %r22 = load i32, ptr @b
    call void @putint(i32 %r22)
    %r23 = add i32 10,0
    call void @putch(i32 %r23)
    %r25 = add i32 1,0
    store i32 %r25, ptr %r24
    %r26 = add i32 2,0
    store i32 %r26, ptr @d
    %r27 = load i32, ptr %r24
    %r28 = add i32 1,0
    %r29 = icmp sge i32 %r27,%r28
    br i1 %r29, label %L10, label %L9
L7:
    %r17 = add i32 1,0
    %r18 = call i32 @set_b(i32 %r17)
    %r19 = icmp ne i32 %r18,0
    br i1 %r19, label %L5, label %L6
L8:
    br label %L9
L9:
    %r33 = load i32, ptr @d
    call void @putint(i32 %r33)
    %r34 = add i32 32,0
    call void @putch(i32 %r34)
    %r35 = load i32, ptr %r24
    %r36 = add i32 1,0
    %r37 = icmp sle i32 %r35,%r36
    br i1 %r37, label %L11, label %L13
L10:
    %r30 = add i32 3,0
    %r31 = call i32 @set_d(i32 %r30)
    %r32 = icmp ne i32 %r31,0
    br i1 %r32, label %L8, label %L9
L11:
    br label %L12
L12:
    %r41 = load i32, ptr @d
    call void @putint(i32 %r41)
    %r42 = add i32 10,0
    call void @putch(i32 %r42)
    %r43 = add i32 16,0
    %r44 = add i32 3,0
    %r45 = add i32 2,0
    %r46 = add i32 1,0
    %r47 = add i32 %r45,%r46
    %r48 = sub i32 %r44,%r47
    %r49 = icmp sge i32 %r43,%r48
    br i1 %r49, label %L14, label %L15
L13:
    %r38 = add i32 4,0
    %r39 = call i32 @set_d(i32 %r38)
    %r40 = icmp ne i32 %r39,0
    br i1 %r40, label %L11, label %L12
L14:
    %r50 = add i32 65,0
    call void @putch(i32 %r50)
    br label %L15
L15:
    %r51 = add i32 25,0
    %r52 = add i32 7,0
    %r53 = sub i32 %r51,%r52
    %r54 = add i32 36,0
    %r55 = add i32 6,0
    %r56 = add i32 3,0
    %r57 = mul i32 %r55,%r56
    %r58 = sub i32 %r54,%r57
    %r59 = icmp ne i32 %r53,%r58
    br i1 %r59, label %L16, label %L17
L16:
    %r60 = add i32 66,0
    call void @putch(i32 %r60)
    br label %L17
L17:
    %r61 = add i32 1,0
    %r62 = add i32 8,0
    %r63 = icmp slt i32 %r61,%r62
    %r64 = add i32 7,0
    %r65 = add i32 2,0
    %r66 = srem i32 %r64,%r65
    %r67 = zext i1 %r63 to i32
    %r68 = icmp ne i32 %r67,%r66
    br i1 %r68, label %L18, label %L19
L18:
    %r69 = add i32 67,0
    call void @putch(i32 %r69)
    br label %L19
L19:
    %r70 = add i32 3,0
    %r71 = add i32 4,0
    %r72 = icmp sgt i32 %r70,%r71
    %r73 = add i32 0,0
    %r74 = zext i1 %r72 to i32
    %r75 = icmp eq i32 %r74,%r73
    br i1 %r75, label %L20, label %L21
L20:
    %r76 = add i32 68,0
    call void @putch(i32 %r76)
    br label %L21
L21:
    %r77 = add i32 1,0
    %r78 = add i32 102,0
    %r79 = add i32 63,0
    %r80 = icmp sle i32 %r78,%r79
    %r81 = zext i1 %r80 to i32
    %r82 = icmp eq i32 %r77,%r81
    br i1 %r82, label %L22, label %L23
L22:
    %r83 = add i32 69,0
    call void @putch(i32 %r83)
    br label %L23
L23:
    %r84 = add i32 5,0
    %r85 = add i32 6,0
    %r86 = sub i32 %r84,%r85
    %r87 = add i32 0,0
    %r88 = icmp eq i32 %r87,0
    %r89 = zext i1 %r88 to i32
    %r90 = sub i32 0,%r89
    %r91 = icmp eq i32 %r86,%r90
    br i1 %r91, label %L24, label %L25
L24:
    %r92 = add i32 70,0
    call void @putch(i32 %r92)
    br label %L25
L25:
    %r93 = add i32 10,0
    call void @putch(i32 %r93)
    %r95 = add i32 0,0
    store i32 %r95, ptr %r94
    %r97 = add i32 1,0
    store i32 %r97, ptr %r96
    %r99 = add i32 2,0
    store i32 %r99, ptr %r98
    %r101 = add i32 3,0
    store i32 %r101, ptr %r100
    %r103 = add i32 4,0
    store i32 %r103, ptr %r102
    br label %L26
L26:
    %r104 = load i32, ptr %r94
    %r105 = icmp ne i32 %r104,0
    br i1 %r105, label %L29, label %L28
L27:
    %r108 = add i32 32,0
    call void @putch(i32 %r108)
    br label %L26
L28:
    %r109 = load i32, ptr %r94
    %r110 = icmp ne i32 %r109,0
    br i1 %r110, label %L30, label %L32
L29:
    %r106 = load i32, ptr %r96
    %r107 = icmp ne i32 %r106,0
    br i1 %r107, label %L27, label %L28
L30:
    %r113 = add i32 67,0
    call void @putch(i32 %r113)
    br label %L31
L31:
    %r114 = load i32, ptr %r94
    %r115 = load i32, ptr %r96
    %r116 = icmp sge i32 %r114,%r115
    br i1 %r116, label %L33, label %L35
L32:
    %r111 = load i32, ptr %r96
    %r112 = icmp ne i32 %r111,0
    br i1 %r112, label %L30, label %L31
L33:
    %r120 = add i32 72,0
    call void @putch(i32 %r120)
    br label %L34
L34:
    %r121 = load i32, ptr %r98
    %r122 = load i32, ptr %r96
    %r123 = icmp sge i32 %r121,%r122
    br i1 %r123, label %L38, label %L37
L35:
    %r117 = load i32, ptr %r96
    %r118 = load i32, ptr %r94
    %r119 = icmp sle i32 %r117,%r118
    br i1 %r119, label %L33, label %L34
L36:
    %r127 = add i32 73,0
    call void @putch(i32 %r127)
    br label %L37
L37:
    %r128 = load i32, ptr %r94
    %r129 = load i32, ptr %r96
    %r130 = icmp eq i32 %r129,0
    %r131 = zext i1 %r130 to i32
    %r132 = icmp eq i32 %r128,%r131
    br i1 %r132, label %L42, label %L41
L38:
    %r124 = load i32, ptr %r102
    %r125 = load i32, ptr %r100
    %r126 = icmp ne i32 %r124,%r125
    br i1 %r126, label %L36, label %L37
L39:
    %r139 = add i32 74,0
    call void @putch(i32 %r139)
    br label %L40
L40:
    %r140 = load i32, ptr %r94
    %r141 = load i32, ptr %r96
    %r142 = icmp eq i32 %r141,0
    %r143 = zext i1 %r142 to i32
    %r144 = icmp eq i32 %r140,%r143
    br i1 %r144, label %L43, label %L45
L41:
    %r136 = load i32, ptr %r102
    %r137 = load i32, ptr %r102
    %r138 = icmp sge i32 %r136,%r137
    br i1 %r138, label %L39, label %L40
L42:
    %r133 = load i32, ptr %r100
    %r134 = load i32, ptr %r100
    %r135 = icmp slt i32 %r133,%r134
    br i1 %r135, label %L39, label %L41
L43:
    %r151 = add i32 75,0
    call void @putch(i32 %r151)
    br label %L44
L44:
    %r152 = add i32 10,0
    call void @putch(i32 %r152)
    %r153 = add i32 0,0
    ret i32 %r153
L45:
    %r145 = load i32, ptr %r100
    %r146 = load i32, ptr %r100
    %r147 = icmp slt i32 %r145,%r146
    br i1 %r147, label %L46, label %L44
L46:
    %r148 = load i32, ptr %r102
    %r149 = load i32, ptr %r102
    %r150 = icmp sge i32 %r148,%r149
    br i1 %r150, label %L43, label %L44
}
