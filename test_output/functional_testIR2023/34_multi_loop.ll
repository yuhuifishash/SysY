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
define i32 @main()
{
L0:  ;
    %r72 = alloca i32
    %r67 = alloca i32
    %r62 = alloca i32
    %r57 = alloca i32
    %r52 = alloca i32
    %r47 = alloca i32
    %r42 = alloca i32
    %r37 = alloca i32
    %r32 = alloca i32
    %r27 = alloca i32
    %r22 = alloca i32
    %r17 = alloca i32
    %r12 = alloca i32
    %r7 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:  ;
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    br label %L2
L2:  ;
    %r4 = load i32, ptr %r2
    %r5 = add i32 3,0
    %r6 = icmp slt i32 %r4,%r5
    br i1 %r6, label %L3, label %L4
L3:  ;
    %r8 = add i32 0,0
    store i32 %r8, ptr %r7
    br label %L5
L4:  ;
    %r127 = load i32, ptr %r0
    ret i32 %r127
L5:  ;
    %r9 = load i32, ptr %r7
    %r10 = add i32 4,0
    %r11 = icmp slt i32 %r9,%r10
    br i1 %r11, label %L6, label %L7
L6:  ;
    %r13 = add i32 0,0
    store i32 %r13, ptr %r12
    br label %L8
L7:  ;
    %r124 = load i32, ptr %r2
    %r125 = add i32 1,0
    %r126 = add i32 %r124,%r125
    store i32 %r126, ptr %r2
    br label %L2
L8:  ;
    %r14 = load i32, ptr %r12
    %r15 = add i32 5,0
    %r16 = icmp slt i32 %r14,%r15
    br i1 %r16, label %L9, label %L10
L9:  ;
    %r18 = add i32 0,0
    store i32 %r18, ptr %r17
    br label %L11
L10:  ;
    %r121 = load i32, ptr %r7
    %r122 = add i32 1,0
    %r123 = add i32 %r121,%r122
    store i32 %r123, ptr %r7
    br label %L5
L11:  ;
    %r19 = load i32, ptr %r17
    %r20 = add i32 3,0
    %r21 = icmp slt i32 %r19,%r20
    br i1 %r21, label %L12, label %L13
L12:  ;
    %r23 = add i32 0,0
    store i32 %r23, ptr %r22
    br label %L14
L13:  ;
    %r118 = load i32, ptr %r12
    %r119 = add i32 1,0
    %r120 = add i32 %r118,%r119
    store i32 %r120, ptr %r12
    br label %L8
L14:  ;
    %r24 = load i32, ptr %r22
    %r25 = add i32 5,0
    %r26 = icmp slt i32 %r24,%r25
    br i1 %r26, label %L15, label %L16
L15:  ;
    %r28 = add i32 0,0
    store i32 %r28, ptr %r27
    br label %L17
L16:  ;
    %r115 = load i32, ptr %r17
    %r116 = add i32 1,0
    %r117 = add i32 %r115,%r116
    store i32 %r117, ptr %r17
    br label %L11
L17:  ;
    %r29 = load i32, ptr %r27
    %r30 = add i32 4,0
    %r31 = icmp slt i32 %r29,%r30
    br i1 %r31, label %L18, label %L19
L18:  ;
    %r33 = add i32 0,0
    store i32 %r33, ptr %r32
    br label %L20
L19:  ;
    %r112 = load i32, ptr %r22
    %r113 = add i32 1,0
    %r114 = add i32 %r112,%r113
    store i32 %r114, ptr %r22
    br label %L14
L20:  ;
    %r34 = load i32, ptr %r32
    %r35 = add i32 6,0
    %r36 = icmp slt i32 %r34,%r35
    br i1 %r36, label %L21, label %L22
L21:  ;
    %r38 = add i32 0,0
    store i32 %r38, ptr %r37
    br label %L23
L22:  ;
    %r109 = load i32, ptr %r27
    %r110 = add i32 1,0
    %r111 = add i32 %r109,%r110
    store i32 %r111, ptr %r27
    br label %L17
L23:  ;
    %r39 = load i32, ptr %r37
    %r40 = add i32 5,0
    %r41 = icmp slt i32 %r39,%r40
    br i1 %r41, label %L24, label %L25
L24:  ;
    %r43 = add i32 0,0
    store i32 %r43, ptr %r42
    br label %L26
L25:  ;
    %r106 = load i32, ptr %r32
    %r107 = add i32 1,0
    %r108 = add i32 %r106,%r107
    store i32 %r108, ptr %r32
    br label %L20
L26:  ;
    %r44 = load i32, ptr %r42
    %r45 = add i32 5,0
    %r46 = icmp slt i32 %r44,%r45
    br i1 %r46, label %L27, label %L28
L27:  ;
    %r48 = add i32 0,0
    store i32 %r48, ptr %r47
    br label %L29
L28:  ;
    %r103 = load i32, ptr %r37
    %r104 = add i32 1,0
    %r105 = add i32 %r103,%r104
    store i32 %r105, ptr %r37
    br label %L23
L29:  ;
    %r49 = load i32, ptr %r47
    %r50 = add i32 3,0
    %r51 = icmp slt i32 %r49,%r50
    br i1 %r51, label %L30, label %L31
L30:  ;
    %r53 = add i32 0,0
    store i32 %r53, ptr %r52
    br label %L32
L31:  ;
    %r100 = load i32, ptr %r42
    %r101 = add i32 1,0
    %r102 = add i32 %r100,%r101
    store i32 %r102, ptr %r42
    br label %L26
L32:  ;
    %r54 = load i32, ptr %r52
    %r55 = add i32 6,0
    %r56 = icmp slt i32 %r54,%r55
    br i1 %r56, label %L33, label %L34
L33:  ;
    %r58 = add i32 0,0
    store i32 %r58, ptr %r57
    br label %L35
L34:  ;
    %r97 = load i32, ptr %r47
    %r98 = add i32 1,0
    %r99 = add i32 %r97,%r98
    store i32 %r99, ptr %r47
    br label %L29
L35:  ;
    %r59 = load i32, ptr %r57
    %r60 = add i32 7,0
    %r61 = icmp slt i32 %r59,%r60
    br i1 %r61, label %L36, label %L37
L36:  ;
    %r63 = add i32 0,0
    store i32 %r63, ptr %r62
    br label %L38
L37:  ;
    %r94 = load i32, ptr %r52
    %r95 = add i32 2,0
    %r96 = add i32 %r94,%r95
    store i32 %r96, ptr %r52
    br label %L32
L38:  ;
    %r64 = load i32, ptr %r62
    %r65 = add i32 5,0
    %r66 = icmp slt i32 %r64,%r65
    br i1 %r66, label %L39, label %L40
L39:  ;
    %r68 = add i32 0,0
    store i32 %r68, ptr %r67
    br label %L41
L40:  ;
    %r91 = load i32, ptr %r57
    %r92 = add i32 2,0
    %r93 = add i32 %r91,%r92
    store i32 %r93, ptr %r57
    br label %L35
L41:  ;
    %r69 = load i32, ptr %r67
    %r70 = add i32 3,0
    %r71 = icmp slt i32 %r69,%r70
    br i1 %r71, label %L42, label %L43
L42:  ;
    %r73 = add i32 0,0
    store i32 %r73, ptr %r72
    br label %L44
L43:  ;
    %r88 = load i32, ptr %r62
    %r89 = add i32 2,0
    %r90 = add i32 %r88,%r89
    store i32 %r90, ptr %r62
    br label %L38
L44:  ;
    %r74 = load i32, ptr %r72
    %r75 = add i32 6,0
    %r76 = icmp slt i32 %r74,%r75
    br i1 %r76, label %L45, label %L46
L45:  ;
    %r77 = load i32, ptr %r0
    %r78 = add i32 3,0
    %r79 = add i32 %r77,%r78
    %r80 = add i32 999,0
    %r81 = srem i32 %r79,%r80
    store i32 %r81, ptr %r0
    %r82 = load i32, ptr %r72
    %r83 = add i32 3,0
    %r84 = add i32 %r82,%r83
    store i32 %r84, ptr %r72
    br label %L44
L46:  ;
    %r85 = load i32, ptr %r67
    %r86 = add i32 1,0
    %r87 = add i32 %r85,%r86
    store i32 %r87, ptr %r67
    br label %L41
}
