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
define i32 @main()
{
L0:
    %r100 = alloca i32
    %r93 = alloca i32
    %r86 = alloca i32
    %r79 = alloca i32
    %r72 = alloca i32
    %r65 = alloca i32
    %r58 = alloca i32
    %r51 = alloca i32
    %r44 = alloca i32
    %r37 = alloca i32
    %r30 = alloca i32
    %r23 = alloca i32
    %r16 = alloca i32
    %r9 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    br label %L1
L1:
    %r4 = load i32, ptr %r2
    %r5 = add i32 0,3
    %r6 = icmp slt i32 %r4,%r5
    br i1 %r6, label %L2, label %L3
L2:
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    br label %L4
L3:
    %r157 = load i32, ptr %r0
    ret i32 %r157
L4:
    %r11 = load i32, ptr %r9
    %r12 = add i32 0,4
    %r13 = icmp slt i32 %r11,%r12
    br i1 %r13, label %L5, label %L6
L5:
    %r17 = add i32 0,0
    store i32 %r17, ptr %r16
    br label %L7
L6:
    %r154 = load i32, ptr %r2
    %r155 = add i32 0,1
    %r156 = add i32 %r154,%r155
    store i32 %r156, ptr %r2
    br label %L1
L7:
    %r18 = load i32, ptr %r16
    %r19 = add i32 0,5
    %r20 = icmp slt i32 %r18,%r19
    br i1 %r20, label %L8, label %L9
L8:
    %r24 = add i32 0,0
    store i32 %r24, ptr %r23
    br label %L10
L9:
    %r151 = load i32, ptr %r9
    %r152 = add i32 0,1
    %r153 = add i32 %r151,%r152
    store i32 %r153, ptr %r9
    br label %L4
L10:
    %r25 = load i32, ptr %r23
    %r26 = add i32 0,3
    %r27 = icmp slt i32 %r25,%r26
    br i1 %r27, label %L11, label %L12
L11:
    %r31 = add i32 0,0
    store i32 %r31, ptr %r30
    br label %L13
L12:
    %r148 = load i32, ptr %r16
    %r149 = add i32 0,1
    %r150 = add i32 %r148,%r149
    store i32 %r150, ptr %r16
    br label %L7
L13:
    %r32 = load i32, ptr %r30
    %r33 = add i32 0,5
    %r34 = icmp slt i32 %r32,%r33
    br i1 %r34, label %L14, label %L15
L14:
    %r38 = add i32 0,0
    store i32 %r38, ptr %r37
    br label %L16
L15:
    %r145 = load i32, ptr %r23
    %r146 = add i32 0,1
    %r147 = add i32 %r145,%r146
    store i32 %r147, ptr %r23
    br label %L10
L16:
    %r39 = load i32, ptr %r37
    %r40 = add i32 0,4
    %r41 = icmp slt i32 %r39,%r40
    br i1 %r41, label %L17, label %L18
L17:
    %r45 = add i32 0,0
    store i32 %r45, ptr %r44
    br label %L19
L18:
    %r142 = load i32, ptr %r30
    %r143 = add i32 0,1
    %r144 = add i32 %r142,%r143
    store i32 %r144, ptr %r30
    br label %L13
L19:
    %r46 = load i32, ptr %r44
    %r47 = add i32 0,6
    %r48 = icmp slt i32 %r46,%r47
    br i1 %r48, label %L20, label %L21
L20:
    %r52 = add i32 0,0
    store i32 %r52, ptr %r51
    br label %L22
L21:
    %r139 = load i32, ptr %r37
    %r140 = add i32 0,1
    %r141 = add i32 %r139,%r140
    store i32 %r141, ptr %r37
    br label %L16
L22:
    %r53 = load i32, ptr %r51
    %r54 = add i32 0,5
    %r55 = icmp slt i32 %r53,%r54
    br i1 %r55, label %L23, label %L24
L23:
    %r59 = add i32 0,0
    store i32 %r59, ptr %r58
    br label %L25
L24:
    %r136 = load i32, ptr %r44
    %r137 = add i32 0,1
    %r138 = add i32 %r136,%r137
    store i32 %r138, ptr %r44
    br label %L19
L25:
    %r60 = load i32, ptr %r58
    %r61 = add i32 0,5
    %r62 = icmp slt i32 %r60,%r61
    br i1 %r62, label %L26, label %L27
L26:
    %r66 = add i32 0,0
    store i32 %r66, ptr %r65
    br label %L28
L27:
    %r133 = load i32, ptr %r51
    %r134 = add i32 0,1
    %r135 = add i32 %r133,%r134
    store i32 %r135, ptr %r51
    br label %L22
L28:
    %r67 = load i32, ptr %r65
    %r68 = add i32 0,3
    %r69 = icmp slt i32 %r67,%r68
    br i1 %r69, label %L29, label %L30
L29:
    %r73 = add i32 0,0
    store i32 %r73, ptr %r72
    br label %L31
L30:
    %r130 = load i32, ptr %r58
    %r131 = add i32 0,1
    %r132 = add i32 %r130,%r131
    store i32 %r132, ptr %r58
    br label %L25
L31:
    %r74 = load i32, ptr %r72
    %r75 = add i32 0,6
    %r76 = icmp slt i32 %r74,%r75
    br i1 %r76, label %L32, label %L33
L32:
    %r80 = add i32 0,0
    store i32 %r80, ptr %r79
    br label %L34
L33:
    %r127 = load i32, ptr %r65
    %r128 = add i32 0,1
    %r129 = add i32 %r127,%r128
    store i32 %r129, ptr %r65
    br label %L28
L34:
    %r81 = load i32, ptr %r79
    %r82 = add i32 0,7
    %r83 = icmp slt i32 %r81,%r82
    br i1 %r83, label %L35, label %L36
L35:
    %r87 = add i32 0,0
    store i32 %r87, ptr %r86
    br label %L37
L36:
    %r124 = load i32, ptr %r72
    %r125 = add i32 0,2
    %r126 = add i32 %r124,%r125
    store i32 %r126, ptr %r72
    br label %L31
L37:
    %r88 = load i32, ptr %r86
    %r89 = add i32 0,5
    %r90 = icmp slt i32 %r88,%r89
    br i1 %r90, label %L38, label %L39
L38:
    %r94 = add i32 0,0
    store i32 %r94, ptr %r93
    br label %L40
L39:
    %r121 = load i32, ptr %r79
    %r122 = add i32 0,2
    %r123 = add i32 %r121,%r122
    store i32 %r123, ptr %r79
    br label %L34
L40:
    %r95 = load i32, ptr %r93
    %r96 = add i32 0,3
    %r97 = icmp slt i32 %r95,%r96
    br i1 %r97, label %L41, label %L42
L41:
    %r101 = add i32 0,0
    store i32 %r101, ptr %r100
    br label %L43
L42:
    %r118 = load i32, ptr %r86
    %r119 = add i32 0,2
    %r120 = add i32 %r118,%r119
    store i32 %r120, ptr %r86
    br label %L37
L43:
    %r102 = load i32, ptr %r100
    %r103 = add i32 0,6
    %r104 = icmp slt i32 %r102,%r103
    br i1 %r104, label %L44, label %L45
L44:
    %r107 = load i32, ptr %r0
    %r108 = add i32 0,3
    %r109 = add i32 %r107,%r108
    %r110 = add i32 0,999
    %r111 = srem i32 %r109,%r110
    store i32 %r111, ptr %r0
    %r112 = load i32, ptr %r100
    %r113 = add i32 0,3
    %r114 = add i32 %r112,%r113
    store i32 %r114, ptr %r100
    br label %L43
L45:
    %r115 = load i32, ptr %r93
    %r116 = add i32 0,1
    %r117 = add i32 %r115,%r116
    store i32 %r117, ptr %r93
    br label %L40
}
