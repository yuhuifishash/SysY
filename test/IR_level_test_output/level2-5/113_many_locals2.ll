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
@n = global i32 zeroinitializer
define i32 @main()
{
L0:
    %r191 = alloca i32
    %r159 = alloca i32
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
    br label %L1
L1:
    %r63 = load i32, ptr %r60
    %r64 = add i32 0,5
    %r65 = icmp eq i32 %r63,%r64
    br i1 %r65, label %L2, label %L3
L2:
    %r68 = load i32, ptr %r60
    %r69 = add i32 0,1
    %r70 = add i32 %r68,%r69
    store i32 %r70, ptr %r60
    br label %L1
L3:
    %r71 = add i32 0,0
    store i32 %r71, ptr %r0
    %r72 = load i32, ptr %r0
    %r73 = add i32 0,1
    %r74 = add i32 %r72,%r73
    store i32 %r74, ptr %r2
    %r75 = load i32, ptr %r2
    %r76 = add i32 0,1
    %r77 = add i32 %r75,%r76
    store i32 %r77, ptr %r4
    %r78 = load i32, ptr %r4
    %r79 = add i32 0,1
    %r80 = add i32 %r78,%r79
    store i32 %r80, ptr %r6
    %r81 = load i32, ptr %r6
    %r82 = add i32 0,1
    %r83 = add i32 %r81,%r82
    store i32 %r83, ptr %r8
    %r84 = load i32, ptr %r8
    %r85 = add i32 0,1
    %r86 = add i32 %r84,%r85
    store i32 %r86, ptr %r10
    %r87 = load i32, ptr %r10
    %r88 = add i32 0,1
    %r89 = add i32 %r87,%r88
    store i32 %r89, ptr %r12
    %r90 = load i32, ptr %r12
    %r91 = add i32 0,1
    %r92 = add i32 %r90,%r91
    store i32 %r92, ptr %r14
    %r93 = load i32, ptr %r14
    %r94 = add i32 0,1
    %r95 = add i32 %r93,%r94
    store i32 %r95, ptr %r16
    %r96 = load i32, ptr %r16
    %r97 = add i32 0,1
    %r98 = add i32 %r96,%r97
    store i32 %r98, ptr %r18
    %r99 = load i32, ptr %r18
    %r100 = add i32 0,1
    %r101 = add i32 %r99,%r100
    store i32 %r101, ptr %r20
    %r102 = load i32, ptr %r20
    %r103 = add i32 0,1
    %r104 = add i32 %r102,%r103
    store i32 %r104, ptr %r22
    %r105 = load i32, ptr %r22
    %r106 = add i32 0,1
    %r107 = add i32 %r105,%r106
    store i32 %r107, ptr %r24
    %r108 = load i32, ptr %r24
    %r109 = add i32 0,1
    %r110 = add i32 %r108,%r109
    store i32 %r110, ptr %r26
    %r111 = load i32, ptr %r26
    %r112 = add i32 0,1
    %r113 = add i32 %r111,%r112
    store i32 %r113, ptr %r28
    %r114 = load i32, ptr %r28
    %r115 = add i32 0,1
    %r116 = add i32 %r114,%r115
    store i32 %r116, ptr %r30
    %r117 = load i32, ptr %r30
    %r118 = add i32 0,1
    %r119 = add i32 %r117,%r118
    store i32 %r119, ptr %r32
    %r120 = load i32, ptr %r32
    %r121 = add i32 0,1
    %r122 = add i32 %r120,%r121
    store i32 %r122, ptr %r34
    %r123 = load i32, ptr %r34
    %r124 = add i32 0,1
    %r125 = add i32 %r123,%r124
    store i32 %r125, ptr %r36
    %r126 = load i32, ptr %r36
    %r127 = add i32 0,1
    %r128 = add i32 %r126,%r127
    store i32 %r128, ptr %r38
    %r129 = load i32, ptr %r38
    %r130 = add i32 0,1
    %r131 = add i32 %r129,%r130
    store i32 %r131, ptr %r40
    %r132 = load i32, ptr %r40
    %r133 = add i32 0,1
    %r134 = add i32 %r132,%r133
    store i32 %r134, ptr %r42
    %r135 = load i32, ptr %r42
    %r136 = add i32 0,1
    %r137 = add i32 %r135,%r136
    store i32 %r137, ptr %r44
    %r138 = load i32, ptr %r44
    %r139 = add i32 0,1
    %r140 = add i32 %r138,%r139
    store i32 %r140, ptr %r46
    %r141 = load i32, ptr %r46
    %r142 = add i32 0,1
    %r143 = add i32 %r141,%r142
    store i32 %r143, ptr %r48
    %r144 = load i32, ptr %r48
    %r145 = add i32 0,1
    %r146 = add i32 %r144,%r145
    store i32 %r146, ptr %r50
    %r147 = load i32, ptr %r50
    %r148 = add i32 0,1
    %r149 = add i32 %r147,%r148
    store i32 %r149, ptr %r52
    %r150 = load i32, ptr %r52
    %r151 = add i32 0,1
    %r152 = add i32 %r150,%r151
    store i32 %r152, ptr %r54
    %r153 = load i32, ptr %r54
    %r154 = add i32 0,1
    %r155 = add i32 %r153,%r154
    store i32 %r155, ptr %r56
    %r156 = load i32, ptr %r56
    %r157 = add i32 0,1
    %r158 = add i32 %r156,%r157
    store i32 %r158, ptr %r58
    %r160 = add i32 0,0
    store i32 %r160, ptr %r159
    %r161 = load i32, ptr %r0
    call void @putint(i32 %r161)
    %r162 = load i32, ptr %r2
    call void @putint(i32 %r162)
    %r163 = load i32, ptr %r4
    call void @putint(i32 %r163)
    %r164 = load i32, ptr %r6
    call void @putint(i32 %r164)
    %r165 = load i32, ptr %r8
    call void @putint(i32 %r165)
    %r166 = load i32, ptr %r10
    call void @putint(i32 %r166)
    %r167 = load i32, ptr %r12
    call void @putint(i32 %r167)
    %r168 = load i32, ptr %r14
    call void @putint(i32 %r168)
    %r169 = load i32, ptr %r16
    call void @putint(i32 %r169)
    %r170 = load i32, ptr %r18
    call void @putint(i32 %r170)
    %r171 = load i32, ptr %r20
    call void @putint(i32 %r171)
    %r172 = load i32, ptr %r22
    call void @putint(i32 %r172)
    %r173 = load i32, ptr %r24
    call void @putint(i32 %r173)
    %r174 = load i32, ptr %r26
    call void @putint(i32 %r174)
    %r175 = load i32, ptr %r28
    call void @putint(i32 %r175)
    %r176 = load i32, ptr %r30
    call void @putint(i32 %r176)
    %r177 = load i32, ptr %r32
    call void @putint(i32 %r177)
    %r178 = load i32, ptr %r34
    call void @putint(i32 %r178)
    %r179 = load i32, ptr %r36
    call void @putint(i32 %r179)
    %r180 = load i32, ptr %r38
    call void @putint(i32 %r180)
    %r181 = load i32, ptr %r40
    call void @putint(i32 %r181)
    %r182 = load i32, ptr %r42
    call void @putint(i32 %r182)
    %r183 = load i32, ptr %r44
    call void @putint(i32 %r183)
    %r184 = load i32, ptr %r46
    call void @putint(i32 %r184)
    %r185 = load i32, ptr %r48
    call void @putint(i32 %r185)
    %r186 = load i32, ptr %r50
    call void @putint(i32 %r186)
    %r187 = load i32, ptr %r52
    call void @putint(i32 %r187)
    %r188 = load i32, ptr %r54
    call void @putint(i32 %r188)
    %r189 = load i32, ptr %r56
    call void @putint(i32 %r189)
    %r190 = load i32, ptr %r58
    call void @putint(i32 %r190)
    %r192 = add i32 0,0
    store i32 %r192, ptr %r191
    %r193 = add i32 0,10
    store i32 %r193, ptr %r191
    %r194 = load i32, ptr %r191
    call void @putch(i32 %r194)
    %r195 = load i32, ptr %r60
    call void @putint(i32 %r195)
    %r196 = load i32, ptr %r191
    call void @putch(i32 %r196)
    %r197 = load i32, ptr %r50
    ret i32 %r197
}
