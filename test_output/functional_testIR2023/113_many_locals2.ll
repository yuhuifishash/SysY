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
@n = global i32 zeroinitializer
define i32 @main()
{
L0:
    %r189 = alloca i32
    %r157 = alloca i32
    %r60 = alloca i32
    %r58 = alloca i32
    %r56 = alloca i32
    %r54 = alloca i32
    %r52 = alloca i32
    %r50 = alloca i32
    %r48 = alloca i32
    %r46 = alloca i32
    %r44 = alloca i32
    %r42 = alloca i32
    %r40 = alloca i32
    %r38 = alloca i32
    %r36 = alloca i32
    %r34 = alloca i32
    %r32 = alloca i32
    %r30 = alloca i32
    %r28 = alloca i32
    %r26 = alloca i32
    %r24 = alloca i32
    %r22 = alloca i32
    %r20 = alloca i32
    %r18 = alloca i32
    %r16 = alloca i32
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
    %r11 = add i32 0,0
    store i32 %r11, ptr %r10
    %r13 = add i32 0,0
    store i32 %r13, ptr %r12
    %r15 = add i32 0,0
    store i32 %r15, ptr %r14
    %r17 = add i32 0,0
    store i32 %r17, ptr %r16
    %r19 = add i32 0,0
    store i32 %r19, ptr %r18
    %r21 = add i32 0,0
    store i32 %r21, ptr %r20
    %r23 = add i32 0,0
    store i32 %r23, ptr %r22
    %r25 = add i32 0,0
    store i32 %r25, ptr %r24
    %r27 = add i32 0,0
    store i32 %r27, ptr %r26
    %r29 = add i32 0,0
    store i32 %r29, ptr %r28
    %r31 = add i32 0,0
    store i32 %r31, ptr %r30
    %r33 = add i32 0,0
    store i32 %r33, ptr %r32
    %r35 = add i32 0,0
    store i32 %r35, ptr %r34
    %r37 = add i32 0,0
    store i32 %r37, ptr %r36
    %r39 = add i32 0,0
    store i32 %r39, ptr %r38
    %r41 = add i32 0,0
    store i32 %r41, ptr %r40
    %r43 = add i32 0,0
    store i32 %r43, ptr %r42
    %r45 = add i32 0,0
    store i32 %r45, ptr %r44
    %r47 = add i32 0,0
    store i32 %r47, ptr %r46
    %r49 = add i32 0,0
    store i32 %r49, ptr %r48
    %r51 = add i32 0,0
    store i32 %r51, ptr %r50
    %r53 = add i32 0,0
    store i32 %r53, ptr %r52
    %r55 = add i32 0,0
    store i32 %r55, ptr %r54
    %r57 = add i32 0,0
    store i32 %r57, ptr %r56
    %r59 = add i32 0,0
    store i32 %r59, ptr %r58
    %r61 = add i32 0,0
    store i32 %r61, ptr %r60
    %r62 = call i32 @getint()
    store i32 %r62, ptr %r60
    br label %L2
L2:
    %r63 = load i32, ptr %r60
    %r64 = add i32 5,0
    %r65 = icmp eq i32 %r63,%r64
    br i1 %r65, label %L3, label %L4
L3:
    %r66 = load i32, ptr %r60
    %r67 = add i32 1,0
    %r68 = add i32 %r66,%r67
    store i32 %r68, ptr %r60
    br label %L2
L4:
    %r69 = add i32 0,0
    store i32 %r69, ptr %r0
    %r70 = load i32, ptr %r0
    %r71 = add i32 1,0
    %r72 = add i32 %r70,%r71
    store i32 %r72, ptr %r2
    %r73 = load i32, ptr %r2
    %r74 = add i32 1,0
    %r75 = add i32 %r73,%r74
    store i32 %r75, ptr %r4
    %r76 = load i32, ptr %r4
    %r77 = add i32 1,0
    %r78 = add i32 %r76,%r77
    store i32 %r78, ptr %r6
    %r79 = load i32, ptr %r6
    %r80 = add i32 1,0
    %r81 = add i32 %r79,%r80
    store i32 %r81, ptr %r8
    %r82 = load i32, ptr %r8
    %r83 = add i32 1,0
    %r84 = add i32 %r82,%r83
    store i32 %r84, ptr %r10
    %r85 = load i32, ptr %r10
    %r86 = add i32 1,0
    %r87 = add i32 %r85,%r86
    store i32 %r87, ptr %r12
    %r88 = load i32, ptr %r12
    %r89 = add i32 1,0
    %r90 = add i32 %r88,%r89
    store i32 %r90, ptr %r14
    %r91 = load i32, ptr %r14
    %r92 = add i32 1,0
    %r93 = add i32 %r91,%r92
    store i32 %r93, ptr %r16
    %r94 = load i32, ptr %r16
    %r95 = add i32 1,0
    %r96 = add i32 %r94,%r95
    store i32 %r96, ptr %r18
    %r97 = load i32, ptr %r18
    %r98 = add i32 1,0
    %r99 = add i32 %r97,%r98
    store i32 %r99, ptr %r20
    %r100 = load i32, ptr %r20
    %r101 = add i32 1,0
    %r102 = add i32 %r100,%r101
    store i32 %r102, ptr %r22
    %r103 = load i32, ptr %r22
    %r104 = add i32 1,0
    %r105 = add i32 %r103,%r104
    store i32 %r105, ptr %r24
    %r106 = load i32, ptr %r24
    %r107 = add i32 1,0
    %r108 = add i32 %r106,%r107
    store i32 %r108, ptr %r26
    %r109 = load i32, ptr %r26
    %r110 = add i32 1,0
    %r111 = add i32 %r109,%r110
    store i32 %r111, ptr %r28
    %r112 = load i32, ptr %r28
    %r113 = add i32 1,0
    %r114 = add i32 %r112,%r113
    store i32 %r114, ptr %r30
    %r115 = load i32, ptr %r30
    %r116 = add i32 1,0
    %r117 = add i32 %r115,%r116
    store i32 %r117, ptr %r32
    %r118 = load i32, ptr %r32
    %r119 = add i32 1,0
    %r120 = add i32 %r118,%r119
    store i32 %r120, ptr %r34
    %r121 = load i32, ptr %r34
    %r122 = add i32 1,0
    %r123 = add i32 %r121,%r122
    store i32 %r123, ptr %r36
    %r124 = load i32, ptr %r36
    %r125 = add i32 1,0
    %r126 = add i32 %r124,%r125
    store i32 %r126, ptr %r38
    %r127 = load i32, ptr %r38
    %r128 = add i32 1,0
    %r129 = add i32 %r127,%r128
    store i32 %r129, ptr %r40
    %r130 = load i32, ptr %r40
    %r131 = add i32 1,0
    %r132 = add i32 %r130,%r131
    store i32 %r132, ptr %r42
    %r133 = load i32, ptr %r42
    %r134 = add i32 1,0
    %r135 = add i32 %r133,%r134
    store i32 %r135, ptr %r44
    %r136 = load i32, ptr %r44
    %r137 = add i32 1,0
    %r138 = add i32 %r136,%r137
    store i32 %r138, ptr %r46
    %r139 = load i32, ptr %r46
    %r140 = add i32 1,0
    %r141 = add i32 %r139,%r140
    store i32 %r141, ptr %r48
    %r142 = load i32, ptr %r48
    %r143 = add i32 1,0
    %r144 = add i32 %r142,%r143
    store i32 %r144, ptr %r50
    %r145 = load i32, ptr %r50
    %r146 = add i32 1,0
    %r147 = add i32 %r145,%r146
    store i32 %r147, ptr %r52
    %r148 = load i32, ptr %r52
    %r149 = add i32 1,0
    %r150 = add i32 %r148,%r149
    store i32 %r150, ptr %r54
    %r151 = load i32, ptr %r54
    %r152 = add i32 1,0
    %r153 = add i32 %r151,%r152
    store i32 %r153, ptr %r56
    %r154 = load i32, ptr %r56
    %r155 = add i32 1,0
    %r156 = add i32 %r154,%r155
    store i32 %r156, ptr %r58
    %r158 = add i32 0,0
    store i32 %r158, ptr %r157
    %r159 = load i32, ptr %r0
    call void @putint(i32 %r159)
    %r160 = load i32, ptr %r2
    call void @putint(i32 %r160)
    %r161 = load i32, ptr %r4
    call void @putint(i32 %r161)
    %r162 = load i32, ptr %r6
    call void @putint(i32 %r162)
    %r163 = load i32, ptr %r8
    call void @putint(i32 %r163)
    %r164 = load i32, ptr %r10
    call void @putint(i32 %r164)
    %r165 = load i32, ptr %r12
    call void @putint(i32 %r165)
    %r166 = load i32, ptr %r14
    call void @putint(i32 %r166)
    %r167 = load i32, ptr %r16
    call void @putint(i32 %r167)
    %r168 = load i32, ptr %r18
    call void @putint(i32 %r168)
    %r169 = load i32, ptr %r20
    call void @putint(i32 %r169)
    %r170 = load i32, ptr %r22
    call void @putint(i32 %r170)
    %r171 = load i32, ptr %r24
    call void @putint(i32 %r171)
    %r172 = load i32, ptr %r26
    call void @putint(i32 %r172)
    %r173 = load i32, ptr %r28
    call void @putint(i32 %r173)
    %r174 = load i32, ptr %r30
    call void @putint(i32 %r174)
    %r175 = load i32, ptr %r32
    call void @putint(i32 %r175)
    %r176 = load i32, ptr %r34
    call void @putint(i32 %r176)
    %r177 = load i32, ptr %r36
    call void @putint(i32 %r177)
    %r178 = load i32, ptr %r38
    call void @putint(i32 %r178)
    %r179 = load i32, ptr %r40
    call void @putint(i32 %r179)
    %r180 = load i32, ptr %r42
    call void @putint(i32 %r180)
    %r181 = load i32, ptr %r44
    call void @putint(i32 %r181)
    %r182 = load i32, ptr %r46
    call void @putint(i32 %r182)
    %r183 = load i32, ptr %r48
    call void @putint(i32 %r183)
    %r184 = load i32, ptr %r50
    call void @putint(i32 %r184)
    %r185 = load i32, ptr %r52
    call void @putint(i32 %r185)
    %r186 = load i32, ptr %r54
    call void @putint(i32 %r186)
    %r187 = load i32, ptr %r56
    call void @putint(i32 %r187)
    %r188 = load i32, ptr %r58
    call void @putint(i32 %r188)
    %r190 = add i32 0,0
    store i32 %r190, ptr %r189
    %r191 = add i32 10,0
    store i32 %r191, ptr %r189
    %r192 = load i32, ptr %r189
    call void @putch(i32 %r192)
    %r193 = load i32, ptr %r60
    call void @putint(i32 %r193)
    %r194 = load i32, ptr %r189
    call void @putch(i32 %r194)
    %r195 = load i32, ptr %r50
    ret i32 %r195
}
