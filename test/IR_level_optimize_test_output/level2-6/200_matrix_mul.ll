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
@M = global i32 zeroinitializer
@L = global i32 zeroinitializer
@N = global i32 zeroinitializer
define i32 @mul(ptr %r0,ptr %r1,ptr %r2,ptr %r3,ptr %r4,ptr %r5,ptr %r6,ptr %r7,ptr %r8)
{
L0:
    br label %L1
L1:
    %r13 = getelementptr float, ptr %r0, i32 0
    %r14 = load float, ptr %r13
    %r16 = getelementptr float, ptr %r3, i32 0
    %r17 = load float, ptr %r16
    %r18 = fmul float %r14,%r17
    %r20 = getelementptr float, ptr %r0, i32 1
    %r21 = load float, ptr %r20
    %r23 = getelementptr float, ptr %r4, i32 0
    %r24 = load float, ptr %r23
    %r25 = fmul float %r21,%r24
    %r26 = fadd float %r18,%r25
    %r28 = getelementptr float, ptr %r0, i32 2
    %r29 = load float, ptr %r28
    %r31 = getelementptr float, ptr %r5, i32 0
    %r32 = load float, ptr %r31
    %r33 = fmul float %r29,%r32
    %r34 = fadd float %r26,%r33
    %r36 = getelementptr float, ptr %r6, i32 0
    store float %r34, ptr %r36
    %r39 = load float, ptr %r13
    %r41 = getelementptr float, ptr %r3, i32 1
    %r42 = load float, ptr %r41
    %r43 = fmul float %r39,%r42
    %r45 = getelementptr float, ptr %r0, i32 1
    %r46 = load float, ptr %r45
    %r48 = getelementptr float, ptr %r4, i32 1
    %r49 = load float, ptr %r48
    %r50 = fmul float %r46,%r49
    %r51 = fadd float %r43,%r50
    %r53 = getelementptr float, ptr %r0, i32 2
    %r54 = load float, ptr %r53
    %r56 = getelementptr float, ptr %r5, i32 1
    %r57 = load float, ptr %r56
    %r58 = fmul float %r54,%r57
    %r59 = fadd float %r51,%r58
    %r61 = getelementptr float, ptr %r6, i32 1
    store float %r59, ptr %r61
    %r64 = load float, ptr %r13
    %r66 = getelementptr float, ptr %r3, i32 2
    %r67 = load float, ptr %r66
    %r68 = fmul float %r64,%r67
    %r70 = getelementptr float, ptr %r0, i32 1
    %r71 = load float, ptr %r70
    %r73 = getelementptr float, ptr %r4, i32 2
    %r74 = load float, ptr %r73
    %r75 = fmul float %r71,%r74
    %r76 = fadd float %r68,%r75
    %r78 = getelementptr float, ptr %r0, i32 2
    %r79 = load float, ptr %r78
    %r81 = getelementptr float, ptr %r5, i32 2
    %r82 = load float, ptr %r81
    %r83 = fmul float %r79,%r82
    %r84 = fadd float %r76,%r83
    %r86 = getelementptr float, ptr %r6, i32 2
    store float %r84, ptr %r86
    %r88 = getelementptr float, ptr %r1, i32 0
    %r89 = load float, ptr %r88
    %r92 = load float, ptr %r16
    %r93 = fmul float %r89,%r92
    %r95 = getelementptr float, ptr %r1, i32 1
    %r96 = load float, ptr %r95
    %r99 = load float, ptr %r23
    %r100 = fmul float %r96,%r99
    %r101 = fadd float %r93,%r100
    %r103 = getelementptr float, ptr %r1, i32 2
    %r104 = load float, ptr %r103
    %r107 = load float, ptr %r31
    %r108 = fmul float %r104,%r107
    %r109 = fadd float %r101,%r108
    %r111 = getelementptr float, ptr %r7, i32 0
    store float %r109, ptr %r111
    %r113 = getelementptr float, ptr %r1, i32 0
    %r114 = load float, ptr %r113
    %r116 = getelementptr float, ptr %r3, i32 1
    %r117 = load float, ptr %r116
    %r118 = fmul float %r114,%r117
    %r120 = getelementptr float, ptr %r1, i32 1
    %r121 = load float, ptr %r120
    %r123 = getelementptr float, ptr %r4, i32 1
    %r124 = load float, ptr %r123
    %r125 = fmul float %r121,%r124
    %r126 = fadd float %r118,%r125
    %r128 = getelementptr float, ptr %r1, i32 2
    %r129 = load float, ptr %r128
    %r131 = getelementptr float, ptr %r5, i32 1
    %r132 = load float, ptr %r131
    %r133 = fmul float %r129,%r132
    %r134 = fadd float %r126,%r133
    %r136 = getelementptr float, ptr %r7, i32 1
    store float %r134, ptr %r136
    %r138 = getelementptr float, ptr %r1, i32 0
    %r139 = load float, ptr %r138
    %r141 = getelementptr float, ptr %r3, i32 2
    %r142 = load float, ptr %r141
    %r143 = fmul float %r139,%r142
    %r145 = getelementptr float, ptr %r1, i32 1
    %r146 = load float, ptr %r145
    %r148 = getelementptr float, ptr %r4, i32 2
    %r149 = load float, ptr %r148
    %r150 = fmul float %r146,%r149
    %r151 = fadd float %r143,%r150
    %r153 = getelementptr float, ptr %r1, i32 2
    %r154 = load float, ptr %r153
    %r156 = getelementptr float, ptr %r5, i32 2
    %r157 = load float, ptr %r156
    %r158 = fmul float %r154,%r157
    %r159 = fadd float %r151,%r158
    %r161 = getelementptr float, ptr %r7, i32 2
    store float %r159, ptr %r161
    %r163 = getelementptr float, ptr %r2, i32 0
    %r164 = load float, ptr %r163
    %r167 = load float, ptr %r16
    %r168 = fmul float %r164,%r167
    %r170 = getelementptr float, ptr %r2, i32 1
    %r171 = load float, ptr %r170
    %r174 = load float, ptr %r23
    %r175 = fmul float %r171,%r174
    %r176 = fadd float %r168,%r175
    %r178 = getelementptr float, ptr %r2, i32 2
    %r179 = load float, ptr %r178
    %r182 = load float, ptr %r31
    %r183 = fmul float %r179,%r182
    %r184 = fadd float %r176,%r183
    %r186 = getelementptr float, ptr %r8, i32 0
    store float %r184, ptr %r186
    %r188 = getelementptr float, ptr %r2, i32 0
    %r189 = load float, ptr %r188
    %r191 = getelementptr float, ptr %r3, i32 1
    %r192 = load float, ptr %r191
    %r193 = fmul float %r189,%r192
    %r195 = getelementptr float, ptr %r2, i32 1
    %r196 = load float, ptr %r195
    %r198 = getelementptr float, ptr %r4, i32 1
    %r199 = load float, ptr %r198
    %r200 = fmul float %r196,%r199
    %r201 = fadd float %r193,%r200
    %r203 = getelementptr float, ptr %r2, i32 2
    %r204 = load float, ptr %r203
    %r206 = getelementptr float, ptr %r5, i32 1
    %r207 = load float, ptr %r206
    %r208 = fmul float %r204,%r207
    %r209 = fadd float %r201,%r208
    %r211 = getelementptr float, ptr %r8, i32 1
    store float %r209, ptr %r211
    %r213 = getelementptr float, ptr %r2, i32 0
    %r214 = load float, ptr %r213
    %r216 = getelementptr float, ptr %r3, i32 2
    %r217 = load float, ptr %r216
    %r218 = fmul float %r214,%r217
    %r220 = getelementptr float, ptr %r2, i32 1
    %r221 = load float, ptr %r220
    %r223 = getelementptr float, ptr %r4, i32 2
    %r224 = load float, ptr %r223
    %r225 = fmul float %r221,%r224
    %r226 = fadd float %r218,%r225
    %r228 = getelementptr float, ptr %r2, i32 2
    %r229 = load float, ptr %r228
    %r231 = getelementptr float, ptr %r5, i32 2
    %r232 = load float, ptr %r231
    %r233 = fmul float %r229,%r232
    %r234 = fadd float %r226,%r233
    %r236 = getelementptr float, ptr %r8, i32 2
    store float %r234, ptr %r236
    ret i32 0
}
define i32 @main()
{
L0:
    %r11 = alloca [3 x float]
    %r10 = alloca [3 x float]
    %r9 = alloca [6 x float]
    %r8 = alloca [3 x float]
    %r7 = alloca [3 x float]
    %r6 = alloca [3 x float]
    %r5 = alloca [3 x float]
    %r4 = alloca [3 x float]
    %r3 = alloca [3 x float]
    br label %L1
L1:
    store i32 3, ptr @N
    store i32 3, ptr @M
    store i32 3, ptr @L
    %r16 = load i32, ptr @M
    %r17 = icmp slt i32 0,%r16
    br i1 %r17, label %L18, label %L5
L3:
    %r133 = phi i32 [%r46,%L4],[0,%L18]
    %r22 = getelementptr [3 x float], ptr %r3, i32 0, i32 %r133
    %r23 = sitofp i32 %r133 to float
    store float %r23, ptr %r22
    %r26 = getelementptr [3 x float], ptr %r4, i32 0, i32 %r133
    store float %r23, ptr %r26
    %r30 = getelementptr [3 x float], ptr %r5, i32 0, i32 %r133
    store float %r23, ptr %r30
    %r34 = getelementptr [3 x float], ptr %r6, i32 0, i32 %r133
    store float %r23, ptr %r34
    %r38 = getelementptr [3 x float], ptr %r7, i32 0, i32 %r133
    store float %r23, ptr %r38
    %r42 = getelementptr [3 x float], ptr %r8, i32 0, i32 %r133
    store float %r23, ptr %r42
    %r46 = add i32 %r133,1
    br label %L4
L4:
    %r49 = icmp slt i32 %r46,%r48
    br i1 %r49, label %L3, label %L5
L5:
    %r52 = getelementptr float, ptr %r3, i32 0
    %r53 = getelementptr float, ptr %r4, i32 0
    %r54 = getelementptr float, ptr %r5, i32 0
    %r55 = getelementptr float, ptr %r6, i32 0
    %r56 = getelementptr float, ptr %r7, i32 0
    %r57 = getelementptr float, ptr %r8, i32 0
    %r58 = getelementptr float, ptr %r9, i32 0
    %r59 = getelementptr float, ptr %r10, i32 0
    %r60 = getelementptr float, ptr %r11, i32 0
    %r61 = call i32 @mul(ptr %r52,ptr %r53,ptr %r54,ptr %r55,ptr %r56,ptr %r57,ptr %r58,ptr %r59,ptr %r60)
    %r65 = load i32, ptr @N
    %r66 = icmp slt i32 %r61,%r65
    br i1 %r66, label %L19, label %L9
L7:
    %r135 = phi i32 [%r61,%L19],[%r76,%L8]
    %r70 = getelementptr [6 x float], ptr %r9, i32 0, i32 %r135
    %r71 = load float, ptr %r70
    %r72 = fptosi float %r71 to i32
    call void @putint(i32 %r72)
    %r76 = add i32 %r135,1
    br label %L8
L8:
    %r78 = load i32, ptr @N
    %r79 = icmp slt i32 %r76,%r78
    br i1 %r79, label %L7, label %L9
L9:
    call void @putch(i32 10)
    %r86 = load i32, ptr @N
    %r87 = icmp slt i32 0,%r86
    br i1 %r87, label %L20, label %L13
L11:
    %r137 = phi i32 [%r97,%L12],[0,%L20]
    %r91 = getelementptr [3 x float], ptr %r10, i32 0, i32 %r137
    %r92 = load float, ptr %r91
    %r93 = fptosi float %r92 to i32
    call void @putint(i32 %r93)
    %r97 = add i32 %r137,1
    br label %L12
L12:
    %r99 = load i32, ptr @N
    %r100 = icmp slt i32 %r97,%r99
    br i1 %r100, label %L11, label %L13
L13:
    call void @putch(i32 10)
    %r107 = load i32, ptr @N
    %r108 = icmp slt i32 0,%r107
    br i1 %r108, label %L21, label %L17
L15:
    %r139 = phi i32 [%r118,%L16],[0,%L21]
    %r112 = getelementptr [3 x float], ptr %r11, i32 0, i32 %r139
    %r113 = load float, ptr %r112
    %r114 = fptosi float %r113 to i32
    call void @putint(i32 %r114)
    %r118 = add i32 %r139,1
    br label %L16
L16:
    %r120 = load i32, ptr @N
    %r121 = icmp slt i32 %r118,%r120
    br i1 %r121, label %L15, label %L17
L17:
    call void @putch(i32 10)
    ret i32 0
L18:
    %r48 = load i32, ptr @M
    br label %L3
L19:
    br label %L7
L20:
    br label %L11
L21:
    br label %L15
}
