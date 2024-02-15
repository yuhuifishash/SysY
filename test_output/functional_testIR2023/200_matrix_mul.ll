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
L0:  ;
    br label %L1
L1:  ;
    %r13 = getelementptr float, ptr %r6, i32 0
    %r15 = getelementptr float, ptr %r0, i32 0
    %r16 = load float, ptr %r15
    %r18 = getelementptr float, ptr %r3, i32 0
    %r19 = load float, ptr %r18
    %r20 = fmul float %r16,%r19
    %r22 = getelementptr float, ptr %r0, i32 1
    %r23 = load float, ptr %r22
    %r25 = getelementptr float, ptr %r4, i32 0
    %r26 = load float, ptr %r25
    %r27 = fmul float %r23,%r26
    %r28 = fadd float %r20,%r27
    %r30 = getelementptr float, ptr %r0, i32 2
    %r31 = load float, ptr %r30
    %r33 = getelementptr float, ptr %r5, i32 0
    %r34 = load float, ptr %r33
    %r35 = fmul float %r31,%r34
    %r36 = fadd float %r28,%r35
    store float %r36, ptr %r13
    %r38 = getelementptr float, ptr %r6, i32 1
    %r40 = getelementptr float, ptr %r0, i32 0
    %r41 = load float, ptr %r40
    %r43 = getelementptr float, ptr %r3, i32 1
    %r44 = load float, ptr %r43
    %r45 = fmul float %r41,%r44
    %r47 = getelementptr float, ptr %r0, i32 1
    %r48 = load float, ptr %r47
    %r50 = getelementptr float, ptr %r4, i32 1
    %r51 = load float, ptr %r50
    %r52 = fmul float %r48,%r51
    %r53 = fadd float %r45,%r52
    %r55 = getelementptr float, ptr %r0, i32 2
    %r56 = load float, ptr %r55
    %r58 = getelementptr float, ptr %r5, i32 1
    %r59 = load float, ptr %r58
    %r60 = fmul float %r56,%r59
    %r61 = fadd float %r53,%r60
    store float %r61, ptr %r38
    %r63 = getelementptr float, ptr %r6, i32 2
    %r65 = getelementptr float, ptr %r0, i32 0
    %r66 = load float, ptr %r65
    %r68 = getelementptr float, ptr %r3, i32 2
    %r69 = load float, ptr %r68
    %r70 = fmul float %r66,%r69
    %r72 = getelementptr float, ptr %r0, i32 1
    %r73 = load float, ptr %r72
    %r75 = getelementptr float, ptr %r4, i32 2
    %r76 = load float, ptr %r75
    %r77 = fmul float %r73,%r76
    %r78 = fadd float %r70,%r77
    %r80 = getelementptr float, ptr %r0, i32 2
    %r81 = load float, ptr %r80
    %r83 = getelementptr float, ptr %r5, i32 2
    %r84 = load float, ptr %r83
    %r85 = fmul float %r81,%r84
    %r86 = fadd float %r78,%r85
    store float %r86, ptr %r63
    %r88 = getelementptr float, ptr %r7, i32 0
    %r90 = getelementptr float, ptr %r1, i32 0
    %r91 = load float, ptr %r90
    %r93 = getelementptr float, ptr %r3, i32 0
    %r94 = load float, ptr %r93
    %r95 = fmul float %r91,%r94
    %r97 = getelementptr float, ptr %r1, i32 1
    %r98 = load float, ptr %r97
    %r100 = getelementptr float, ptr %r4, i32 0
    %r101 = load float, ptr %r100
    %r102 = fmul float %r98,%r101
    %r103 = fadd float %r95,%r102
    %r105 = getelementptr float, ptr %r1, i32 2
    %r106 = load float, ptr %r105
    %r108 = getelementptr float, ptr %r5, i32 0
    %r109 = load float, ptr %r108
    %r110 = fmul float %r106,%r109
    %r111 = fadd float %r103,%r110
    store float %r111, ptr %r88
    %r113 = getelementptr float, ptr %r7, i32 1
    %r115 = getelementptr float, ptr %r1, i32 0
    %r116 = load float, ptr %r115
    %r118 = getelementptr float, ptr %r3, i32 1
    %r119 = load float, ptr %r118
    %r120 = fmul float %r116,%r119
    %r122 = getelementptr float, ptr %r1, i32 1
    %r123 = load float, ptr %r122
    %r125 = getelementptr float, ptr %r4, i32 1
    %r126 = load float, ptr %r125
    %r127 = fmul float %r123,%r126
    %r128 = fadd float %r120,%r127
    %r130 = getelementptr float, ptr %r1, i32 2
    %r131 = load float, ptr %r130
    %r133 = getelementptr float, ptr %r5, i32 1
    %r134 = load float, ptr %r133
    %r135 = fmul float %r131,%r134
    %r136 = fadd float %r128,%r135
    store float %r136, ptr %r113
    %r138 = getelementptr float, ptr %r7, i32 2
    %r140 = getelementptr float, ptr %r1, i32 0
    %r141 = load float, ptr %r140
    %r143 = getelementptr float, ptr %r3, i32 2
    %r144 = load float, ptr %r143
    %r145 = fmul float %r141,%r144
    %r147 = getelementptr float, ptr %r1, i32 1
    %r148 = load float, ptr %r147
    %r150 = getelementptr float, ptr %r4, i32 2
    %r151 = load float, ptr %r150
    %r152 = fmul float %r148,%r151
    %r153 = fadd float %r145,%r152
    %r155 = getelementptr float, ptr %r1, i32 2
    %r156 = load float, ptr %r155
    %r158 = getelementptr float, ptr %r5, i32 2
    %r159 = load float, ptr %r158
    %r160 = fmul float %r156,%r159
    %r161 = fadd float %r153,%r160
    store float %r161, ptr %r138
    %r163 = getelementptr float, ptr %r8, i32 0
    %r165 = getelementptr float, ptr %r2, i32 0
    %r166 = load float, ptr %r165
    %r168 = getelementptr float, ptr %r3, i32 0
    %r169 = load float, ptr %r168
    %r170 = fmul float %r166,%r169
    %r172 = getelementptr float, ptr %r2, i32 1
    %r173 = load float, ptr %r172
    %r175 = getelementptr float, ptr %r4, i32 0
    %r176 = load float, ptr %r175
    %r177 = fmul float %r173,%r176
    %r178 = fadd float %r170,%r177
    %r180 = getelementptr float, ptr %r2, i32 2
    %r181 = load float, ptr %r180
    %r183 = getelementptr float, ptr %r5, i32 0
    %r184 = load float, ptr %r183
    %r185 = fmul float %r181,%r184
    %r186 = fadd float %r178,%r185
    store float %r186, ptr %r163
    %r188 = getelementptr float, ptr %r8, i32 1
    %r190 = getelementptr float, ptr %r2, i32 0
    %r191 = load float, ptr %r190
    %r193 = getelementptr float, ptr %r3, i32 1
    %r194 = load float, ptr %r193
    %r195 = fmul float %r191,%r194
    %r197 = getelementptr float, ptr %r2, i32 1
    %r198 = load float, ptr %r197
    %r200 = getelementptr float, ptr %r4, i32 1
    %r201 = load float, ptr %r200
    %r202 = fmul float %r198,%r201
    %r203 = fadd float %r195,%r202
    %r205 = getelementptr float, ptr %r2, i32 2
    %r206 = load float, ptr %r205
    %r208 = getelementptr float, ptr %r5, i32 1
    %r209 = load float, ptr %r208
    %r210 = fmul float %r206,%r209
    %r211 = fadd float %r203,%r210
    store float %r211, ptr %r188
    %r213 = getelementptr float, ptr %r8, i32 2
    %r215 = getelementptr float, ptr %r2, i32 0
    %r216 = load float, ptr %r215
    %r218 = getelementptr float, ptr %r3, i32 2
    %r219 = load float, ptr %r218
    %r220 = fmul float %r216,%r219
    %r222 = getelementptr float, ptr %r2, i32 1
    %r223 = load float, ptr %r222
    %r225 = getelementptr float, ptr %r4, i32 2
    %r226 = load float, ptr %r225
    %r227 = fmul float %r223,%r226
    %r228 = fadd float %r220,%r227
    %r230 = getelementptr float, ptr %r2, i32 2
    %r231 = load float, ptr %r230
    %r233 = getelementptr float, ptr %r5, i32 2
    %r234 = load float, ptr %r233
    %r235 = fmul float %r231,%r234
    %r236 = fadd float %r228,%r235
    store float %r236, ptr %r213
    ret i32 0
}
define i32 @main()
{
L0:  ;
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
L1:  ;
    store i32 3, ptr @N
    store i32 3, ptr @M
    store i32 3, ptr @L
    br label %L2
L2:  ;
    %r102 = phi i32 [0,%L1],[%r44,%L3]
    %r16 = load i32, ptr @M
    %r17 = icmp slt i32 %r102,%r16
    br i1 %r17, label %L3, label %L4
L3:  ;
    %r19 = getelementptr [3 x float], ptr %r3, i32 0, i32 %r102
    %r21 = sitofp i32 %r102 to float
    store float %r21, ptr %r19
    %r23 = getelementptr [3 x float], ptr %r4, i32 0, i32 %r102
    %r25 = sitofp i32 %r102 to float
    store float %r25, ptr %r23
    %r27 = getelementptr [3 x float], ptr %r5, i32 0, i32 %r102
    %r29 = sitofp i32 %r102 to float
    store float %r29, ptr %r27
    %r31 = getelementptr [3 x float], ptr %r6, i32 0, i32 %r102
    %r33 = sitofp i32 %r102 to float
    store float %r33, ptr %r31
    %r35 = getelementptr [3 x float], ptr %r7, i32 0, i32 %r102
    %r37 = sitofp i32 %r102 to float
    store float %r37, ptr %r35
    %r39 = getelementptr [3 x float], ptr %r8, i32 0, i32 %r102
    %r41 = sitofp i32 %r102 to float
    store float %r41, ptr %r39
    %r44 = add i32 %r102,1
    br label %L2
L4:  ;
    %r45 = getelementptr [3 x float], ptr %r3, i32 0
    %r46 = getelementptr [3 x float], ptr %r4, i32 0
    %r47 = getelementptr [3 x float], ptr %r5, i32 0
    %r48 = getelementptr [3 x float], ptr %r6, i32 0
    %r49 = getelementptr [3 x float], ptr %r7, i32 0
    %r50 = getelementptr [3 x float], ptr %r8, i32 0
    %r51 = getelementptr [6 x float], ptr %r9, i32 0
    %r52 = getelementptr [3 x float], ptr %r10, i32 0
    %r53 = getelementptr [3 x float], ptr %r11, i32 0
    %r54 = call i32 @mul(ptr %r45,ptr %r46,ptr %r47,ptr %r48,ptr %r49,ptr %r50,ptr %r51,ptr %r52,ptr %r53)
    br label %L5
L5:  ;
    %r103 = phi i32 [%r54,%L4],[%r67,%L6]
    %r58 = load i32, ptr @N
    %r59 = icmp slt i32 %r103,%r58
    br i1 %r59, label %L6, label %L7
L6:  ;
    %r61 = getelementptr [6 x float], ptr %r9, i32 0, i32 %r103
    %r62 = load float, ptr %r61
    %r63 = fptosi float %r62 to i32
    call void @putint(i32 %r63)
    %r67 = add i32 %r103,1
    br label %L5
L7:  ;
    call void @putch(i32 10)
    br label %L8
L8:  ;
    %r104 = phi i32 [0,%L7],[%r81,%L9]
    %r72 = load i32, ptr @N
    %r73 = icmp slt i32 %r104,%r72
    br i1 %r73, label %L9, label %L10
L9:  ;
    %r75 = getelementptr [3 x float], ptr %r10, i32 0, i32 %r104
    %r76 = load float, ptr %r75
    %r77 = fptosi float %r76 to i32
    call void @putint(i32 %r77)
    %r81 = add i32 %r104,1
    br label %L8
L10:  ;
    call void @putch(i32 10)
    br label %L11
L11:  ;
    %r105 = phi i32 [0,%L10],[%r95,%L12]
    %r86 = load i32, ptr @N
    %r87 = icmp slt i32 %r105,%r86
    br i1 %r87, label %L12, label %L13
L12:  ;
    %r89 = getelementptr [3 x float], ptr %r11, i32 0, i32 %r105
    %r90 = load float, ptr %r89
    %r91 = fptosi float %r90 to i32
    call void @putint(i32 %r91)
    %r95 = add i32 %r105,1
    br label %L11
L13:  ;
    call void @putch(i32 10)
    ret i32 0
}
