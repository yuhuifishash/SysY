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
    %r196 = alloca i32
    %r164 = alloca i32
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
    %r63 = load i32, ptr %r60
    %r64 = add i32 0,5
    %r65 = icmp eq i32 %r63,%r64
    br i1 %r65, label %L3, label %L5
L3:
    %r68 = load i32, ptr %r60
    %r69 = add i32 0,1
    %r70 = add i32 %r68,%r69
    store i32 %r70, ptr %r60
    br label %L4
L4:
    %r71 = load i32, ptr %r60
    %r72 = add i32 0,5
    %r73 = icmp eq i32 %r71,%r72
    br i1 %r73, label %L3, label %L5
L5:
    %r76 = add i32 0,0
    store i32 %r76, ptr %r0
    %r77 = load i32, ptr %r0
    %r78 = add i32 0,1
    %r79 = add i32 %r77,%r78
    store i32 %r79, ptr %r2
    %r80 = load i32, ptr %r2
    %r81 = add i32 0,1
    %r82 = add i32 %r80,%r81
    store i32 %r82, ptr %r4
    %r83 = load i32, ptr %r4
    %r84 = add i32 0,1
    %r85 = add i32 %r83,%r84
    store i32 %r85, ptr %r6
    %r86 = load i32, ptr %r6
    %r87 = add i32 0,1
    %r88 = add i32 %r86,%r87
    store i32 %r88, ptr %r8
    %r89 = load i32, ptr %r8
    %r90 = add i32 0,1
    %r91 = add i32 %r89,%r90
    store i32 %r91, ptr %r10
    %r92 = load i32, ptr %r10
    %r93 = add i32 0,1
    %r94 = add i32 %r92,%r93
    store i32 %r94, ptr %r12
    %r95 = load i32, ptr %r12
    %r96 = add i32 0,1
    %r97 = add i32 %r95,%r96
    store i32 %r97, ptr %r14
    %r98 = load i32, ptr %r14
    %r99 = add i32 0,1
    %r100 = add i32 %r98,%r99
    store i32 %r100, ptr %r16
    %r101 = load i32, ptr %r16
    %r102 = add i32 0,1
    %r103 = add i32 %r101,%r102
    store i32 %r103, ptr %r18
    %r104 = load i32, ptr %r18
    %r105 = add i32 0,1
    %r106 = add i32 %r104,%r105
    store i32 %r106, ptr %r20
    %r107 = load i32, ptr %r20
    %r108 = add i32 0,1
    %r109 = add i32 %r107,%r108
    store i32 %r109, ptr %r22
    %r110 = load i32, ptr %r22
    %r111 = add i32 0,1
    %r112 = add i32 %r110,%r111
    store i32 %r112, ptr %r24
    %r113 = load i32, ptr %r24
    %r114 = add i32 0,1
    %r115 = add i32 %r113,%r114
    store i32 %r115, ptr %r26
    %r116 = load i32, ptr %r26
    %r117 = add i32 0,1
    %r118 = add i32 %r116,%r117
    store i32 %r118, ptr %r28
    %r119 = load i32, ptr %r28
    %r120 = add i32 0,1
    %r121 = add i32 %r119,%r120
    store i32 %r121, ptr %r30
    %r122 = load i32, ptr %r30
    %r123 = add i32 0,1
    %r124 = add i32 %r122,%r123
    store i32 %r124, ptr %r32
    %r125 = load i32, ptr %r32
    %r126 = add i32 0,1
    %r127 = add i32 %r125,%r126
    store i32 %r127, ptr %r34
    %r128 = load i32, ptr %r34
    %r129 = add i32 0,1
    %r130 = add i32 %r128,%r129
    store i32 %r130, ptr %r36
    %r131 = load i32, ptr %r36
    %r132 = add i32 0,1
    %r133 = add i32 %r131,%r132
    store i32 %r133, ptr %r38
    %r134 = load i32, ptr %r38
    %r135 = add i32 0,1
    %r136 = add i32 %r134,%r135
    store i32 %r136, ptr %r40
    %r137 = load i32, ptr %r40
    %r138 = add i32 0,1
    %r139 = add i32 %r137,%r138
    store i32 %r139, ptr %r42
    %r140 = load i32, ptr %r42
    %r141 = add i32 0,1
    %r142 = add i32 %r140,%r141
    store i32 %r142, ptr %r44
    %r143 = load i32, ptr %r44
    %r144 = add i32 0,1
    %r145 = add i32 %r143,%r144
    store i32 %r145, ptr %r46
    %r146 = load i32, ptr %r46
    %r147 = add i32 0,1
    %r148 = add i32 %r146,%r147
    store i32 %r148, ptr %r48
    %r149 = load i32, ptr %r48
    %r150 = add i32 0,1
    %r151 = add i32 %r149,%r150
    store i32 %r151, ptr %r50
    %r152 = load i32, ptr %r50
    %r153 = add i32 0,1
    %r154 = add i32 %r152,%r153
    store i32 %r154, ptr %r52
    %r155 = load i32, ptr %r52
    %r156 = add i32 0,1
    %r157 = add i32 %r155,%r156
    store i32 %r157, ptr %r54
    %r158 = load i32, ptr %r54
    %r159 = add i32 0,1
    %r160 = add i32 %r158,%r159
    store i32 %r160, ptr %r56
    %r161 = load i32, ptr %r56
    %r162 = add i32 0,1
    %r163 = add i32 %r161,%r162
    store i32 %r163, ptr %r58
    %r165 = add i32 0,0
    store i32 %r165, ptr %r164
    %r166 = load i32, ptr %r0
    call void @putint(i32 %r166)
    %r167 = load i32, ptr %r2
    call void @putint(i32 %r167)
    %r168 = load i32, ptr %r4
    call void @putint(i32 %r168)
    %r169 = load i32, ptr %r6
    call void @putint(i32 %r169)
    %r170 = load i32, ptr %r8
    call void @putint(i32 %r170)
    %r171 = load i32, ptr %r10
    call void @putint(i32 %r171)
    %r172 = load i32, ptr %r12
    call void @putint(i32 %r172)
    %r173 = load i32, ptr %r14
    call void @putint(i32 %r173)
    %r174 = load i32, ptr %r16
    call void @putint(i32 %r174)
    %r175 = load i32, ptr %r18
    call void @putint(i32 %r175)
    %r176 = load i32, ptr %r20
    call void @putint(i32 %r176)
    %r177 = load i32, ptr %r22
    call void @putint(i32 %r177)
    %r178 = load i32, ptr %r24
    call void @putint(i32 %r178)
    %r179 = load i32, ptr %r26
    call void @putint(i32 %r179)
    %r180 = load i32, ptr %r28
    call void @putint(i32 %r180)
    %r181 = load i32, ptr %r30
    call void @putint(i32 %r181)
    %r182 = load i32, ptr %r32
    call void @putint(i32 %r182)
    %r183 = load i32, ptr %r34
    call void @putint(i32 %r183)
    %r184 = load i32, ptr %r36
    call void @putint(i32 %r184)
    %r185 = load i32, ptr %r38
    call void @putint(i32 %r185)
    %r186 = load i32, ptr %r40
    call void @putint(i32 %r186)
    %r187 = load i32, ptr %r42
    call void @putint(i32 %r187)
    %r188 = load i32, ptr %r44
    call void @putint(i32 %r188)
    %r189 = load i32, ptr %r46
    call void @putint(i32 %r189)
    %r190 = load i32, ptr %r48
    call void @putint(i32 %r190)
    %r191 = load i32, ptr %r50
    call void @putint(i32 %r191)
    %r192 = load i32, ptr %r52
    call void @putint(i32 %r192)
    %r193 = load i32, ptr %r54
    call void @putint(i32 %r193)
    %r194 = load i32, ptr %r56
    call void @putint(i32 %r194)
    %r195 = load i32, ptr %r58
    call void @putint(i32 %r195)
    %r197 = add i32 0,0
    store i32 %r197, ptr %r196
    %r198 = add i32 0,10
    store i32 %r198, ptr %r196
    %r199 = load i32, ptr %r196
    call void @putch(i32 %r199)
    %r200 = load i32, ptr %r60
    call void @putint(i32 %r200)
    %r201 = load i32, ptr %r196
    call void @putch(i32 %r201)
    %r202 = load i32, ptr %r50
    ret i32 %r202
}
