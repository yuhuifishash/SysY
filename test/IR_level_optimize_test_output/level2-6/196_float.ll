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
@RADIUS = global float 0x4016000000000000
@PI = global float 0x400921fb60000000
@EPS = global float 0x3eb0c6f7a0000000
@PI_HEX = global float 0x400921fb60000000
@HEX2 = global float 0x3fb4000000000000
@FACT = global float 0xc0e01d0000000000
@EVAL1 = global float 0x4057c21fc0000000
@EVAL2 = global float 0x4041475ce0000000
@EVAL3 = global float 0x4041475ce0000000
@CONV1 = global float 0x406d200000000000
@CONV2 = global float 0x40affe0000000000
@MAX = global i32 1000000000
@TWO = global i32 2
@THREE = global i32 3
@FIVE = global i32 5
define float @float_abs(float %r0)
{
L0:
    br label %L1
L1:
    %r4 = sitofp i32 0 to float
    %r5 = fcmp olt float %r0,%r4
    br i1 %r5, label %L2, label %L3
L2:
    %r9 = fsub float 0x0,%r0
    ret float %r9
L3:
    ret float %r0
}
define float @circle_area(i32 %r0)
{
L0:
    br label %L1
L1:
    %r2 = fadd float 0x0,0x400921fb60000000
    %r4 = sitofp i32 %r0 to float
    %r5 = fmul float %r2,%r4
    %r8 = fmul float %r5,%r4
    %r11 = mul i32 %r0,%r0
    %r12 = fadd float 0x0,0x400921fb60000000
    %r13 = sitofp i32 %r11 to float
    %r14 = fmul float %r13,%r12
    %r15 = fadd float %r8,%r14
    %r17 = sitofp i32 2 to float
    %r18 = fdiv float %r15,%r17
    ret float %r18
}
define i32 @float_eq(float %r0,float %r1)
{
L0:
    br label %L1
L1:
    %r6 = fsub float %r0,%r1
    br label %L5
L2:
    %r13 = fadd float 0x0,0x4000000000000000
    %r14 = sitofp i32 1 to float
    %r15 = fmul float %r14,%r13
    %r17 = sitofp i32 2 to float
    %r18 = fdiv float %r15,%r17
    %r19 = fptosi float %r18 to i32
    ret i32 %r19
L3:
    ret i32 0
L5:
    br label %L7
L6:
    %r7 = phi float [%r23,%L8],[%r6,%L9]
    %r8 = fadd float 0x0,0x3eb0c6f7a0000000
    %r9 = fcmp olt float %r7,%r8
    br i1 %r9, label %L2, label %L3
L7:
    %r21 = sitofp i32 0 to float
    %r22 = fcmp olt float %r6,%r21
    br i1 %r22, label %L8, label %L9
L8:
    %r23 = fsub float 0x0,%r6
    br label %L6
L9:
    br label %L6
}
define void @error()
{
L0:
    br label %L1
L1:
    call void @putch(i32 101)
    call void @putch(i32 114)
    call void @putch(i32 114)
    call void @putch(i32 111)
    call void @putch(i32 114)
    call void @putch(i32 10)
    ret void
}
define void @ok()
{
L0:
    br label %L1
L1:
    call void @putch(i32 111)
    call void @putch(i32 107)
    call void @putch(i32 10)
    ret void
}
define void @assert(i32 %r0)
{
L0:
    br label %L1
L1:
    %r3 = icmp eq i32 %r0,0
    br i1 %r3, label %L2, label %L3
L2:
    br label %L5
L3:
    br label %L8
L4:
    ret void
L5:
    br label %L7
L6:
    br label %L4
L7:
    call void @putch(i32 101)
    call void @putch(i32 114)
    call void @putch(i32 114)
    call void @putch(i32 111)
    call void @putch(i32 114)
    call void @putch(i32 10)
    br label %L6
L8:
    br label %L10
L9:
    br label %L4
L10:
    call void @putch(i32 111)
    call void @putch(i32 107)
    call void @putch(i32 10)
    br label %L9
}
define i32 @main()
{
L0:
    %r50 = alloca [10 x float]
    br label %L1
L1:
    %r0 = fadd float 0x0,0x3fb4000000000000
    %r1 = fadd float 0x0,0xc0e01d0000000000
    br label %L18
L2:
    br label %L28
L3:
    %r26 = fadd float 0x0,0x400a666660000000
    %r27 = fcmp oeq float %r26,0x0
    %r28 = zext i1 %r27 to i32
    %r29 = icmp eq i32 %r28,0
    br i1 %r29, label %L4, label %L5
L4:
    br label %L31
L5:
    %r32 = fadd float 0x0,0x0
    %r33 = fcmp one float %r32,0x0
    br i1 %r33, label %L8, label %L7
L6:
    br label %L34
L7:
    br label %L12
L8:
    br label %L6
L10:
    br label %L37
L11:
    call void @llvm.memset.p0.i32(ptr %r50,i8 0,i32 40,i1 0)
    %r51 = fadd float 0x0,0x3ff0000000000000
    %r52 = getelementptr [10 x float], ptr %r50, i32 0, i32 0
    store float %r51, ptr %r52
    %r54 = sitofp i32 2 to float
    %r55 = getelementptr [10 x float], ptr %r50, i32 0, i32 1
    store float %r54, ptr %r55
    %r57 = getelementptr float, ptr %r50, i32 0
    %r58 = call i32 @getfarray(ptr %r57)
    br label %L149
L12:
    %r41 = fadd float 0x0,0x3fd3333340000000
    %r42 = fcmp one float %r41,0x0
    br i1 %r42, label %L10, label %L11
L15:
    %r108 = phi i32 [%r94,%L16],[1,%L149]
    %r106 = phi i32 [0,%L149],[%r97,%L16]
    %r65 = call float @getfloat()
    %r69 = fmul float %r67,%r65
    %r71 = fmul float %r69,%r65
    %r74 = fptosi float %r65 to i32
    br label %L40
L16:
    %r100 = icmp slt i32 %r94,1000000000
    br i1 %r100, label %L15, label %L17
L17:
    %r104 = getelementptr float, ptr %r50, i32 0
    call void @putfarray(i32 %r58,ptr %r104)
    ret i32 0
L18:
    br label %L20
L19:
    %r2 = phi i32 [%r116,%L21],[0,%L22]
    %r3 = icmp eq i32 %r2,0
    %r4 = zext i1 %r3 to i32
    br label %L43
L20:
    %r110 = fsub float %r0,%r1
    br label %L23
L21:
    %r111 = fadd float 0x0,0x4000000000000000
    %r112 = sitofp i32 1 to float
    %r113 = fmul float %r112,%r111
    %r114 = sitofp i32 2 to float
    %r115 = fdiv float %r113,%r114
    %r116 = fptosi float %r115 to i32
    br label %L19
L22:
    br label %L19
L23:
    br label %L25
L24:
    %r118 = phi float [%r117,%L26],[%r110,%L27]
    %r119 = fadd float 0x0,0x3eb0c6f7a0000000
    %r120 = fcmp olt float %r118,%r119
    br i1 %r120, label %L21, label %L22
L25:
    %r121 = sitofp i32 0 to float
    %r122 = fcmp olt float %r110,%r121
    br i1 %r122, label %L26, label %L27
L26:
    %r117 = fsub float 0x0,%r110
    br label %L24
L27:
    br label %L24
L28:
    br label %L30
L29:
    br label %L3
L30:
    call void @putch(i32 111)
    call void @putch(i32 107)
    call void @putch(i32 10)
    br label %L29
L31:
    br label %L33
L32:
    br label %L5
L33:
    call void @putch(i32 111)
    call void @putch(i32 107)
    call void @putch(i32 10)
    br label %L32
L34:
    br label %L36
L35:
    br label %L7
L36:
    call void @putch(i32 101)
    call void @putch(i32 114)
    call void @putch(i32 114)
    call void @putch(i32 111)
    call void @putch(i32 114)
    call void @putch(i32 10)
    br label %L35
L37:
    br label %L39
L38:
    br label %L11
L39:
    call void @putch(i32 111)
    call void @putch(i32 107)
    call void @putch(i32 10)
    br label %L38
L40:
    br label %L42
L41:
    %r77 = getelementptr [10 x float], ptr %r50, i32 0, i32 %r106
    %r78 = load float, ptr %r77
    %r80 = fadd float %r78,%r65
    store float %r80, ptr %r77
    call void @putfloat(float %r71)
    call void @putch(i32 32)
    %r86 = fptosi float %r133 to i32
    call void @putint(i32 %r86)
    call void @putch(i32 10)
    %r92 = sitofp i32 %r108 to float
    %r93 = fmul float %r92,%r91
    %r94 = fptosi float %r93 to i32
    %r97 = add i32 %r106,1
    br label %L16
L42:
    %r124 = sitofp i32 %r74 to float
    %r125 = fmul float %r123,%r124
    %r126 = fmul float %r125,%r124
    %r127 = mul i32 %r74,%r74
    %r129 = sitofp i32 %r127 to float
    %r130 = fmul float %r129,%r128
    %r131 = fadd float %r126,%r130
    %r133 = fdiv float %r131,%r132
    br label %L41
L43:
    br label %L45
L44:
    %r5 = fadd float 0x0,0x4057c21fc0000000
    %r6 = fadd float 0x0,0x4041475ce0000000
    br label %L55
L45:
    %r134 = icmp eq i32 %r4,0
    br i1 %r134, label %L46, label %L47
L46:
    br label %L49
L47:
    br label %L52
L48:
    br label %L44
L49:
    br label %L51
L50:
    br label %L48
L51:
    call void @putch(i32 101)
    call void @putch(i32 114)
    call void @putch(i32 114)
    call void @putch(i32 111)
    call void @putch(i32 114)
    call void @putch(i32 10)
    br label %L50
L52:
    br label %L54
L53:
    br label %L48
L54:
    call void @putch(i32 111)
    call void @putch(i32 107)
    call void @putch(i32 10)
    br label %L53
L55:
    br label %L57
L56:
    %r7 = phi i32 [%r141,%L58],[0,%L59]
    %r8 = icmp eq i32 %r7,0
    %r9 = zext i1 %r8 to i32
    br label %L65
L57:
    %r135 = fsub float %r5,%r6
    br label %L60
L58:
    %r136 = fadd float 0x0,0x4000000000000000
    %r137 = sitofp i32 1 to float
    %r138 = fmul float %r137,%r136
    %r139 = sitofp i32 2 to float
    %r140 = fdiv float %r138,%r139
    %r141 = fptosi float %r140 to i32
    br label %L56
L59:
    br label %L56
L60:
    br label %L62
L61:
    %r143 = phi float [%r142,%L63],[%r135,%L64]
    %r144 = fadd float 0x0,0x3eb0c6f7a0000000
    %r145 = fcmp olt float %r143,%r144
    br i1 %r145, label %L58, label %L59
L62:
    %r146 = sitofp i32 0 to float
    %r147 = fcmp olt float %r135,%r146
    br i1 %r147, label %L63, label %L64
L63:
    %r142 = fsub float 0x0,%r135
    br label %L61
L64:
    br label %L61
L65:
    br label %L67
L66:
    %r10 = fadd float 0x0,0x4041475ce0000000
    %r11 = fadd float 0x0,0x4041475ce0000000
    br label %L77
L67:
    %r148 = icmp eq i32 %r9,0
    br i1 %r148, label %L68, label %L69
L68:
    br label %L71
L69:
    br label %L74
L70:
    br label %L66
L71:
    br label %L73
L72:
    br label %L70
L73:
    call void @putch(i32 101)
    call void @putch(i32 114)
    call void @putch(i32 114)
    call void @putch(i32 111)
    call void @putch(i32 114)
    call void @putch(i32 10)
    br label %L72
L74:
    br label %L76
L75:
    br label %L70
L76:
    call void @putch(i32 111)
    call void @putch(i32 107)
    call void @putch(i32 10)
    br label %L75
L77:
    br label %L79
L78:
    %r12 = phi i32 [%r155,%L80],[0,%L81]
    br label %L87
L79:
    %r149 = fsub float %r10,%r11
    br label %L82
L80:
    %r150 = fadd float 0x0,0x4000000000000000
    %r151 = sitofp i32 1 to float
    %r152 = fmul float %r151,%r150
    %r153 = sitofp i32 2 to float
    %r154 = fdiv float %r152,%r153
    %r155 = fptosi float %r154 to i32
    br label %L78
L81:
    br label %L78
L82:
    br label %L84
L83:
    %r157 = phi float [%r156,%L85],[%r149,%L86]
    %r158 = fadd float 0x0,0x3eb0c6f7a0000000
    %r159 = fcmp olt float %r157,%r158
    br i1 %r159, label %L80, label %L81
L84:
    %r160 = sitofp i32 0 to float
    %r161 = fcmp olt float %r149,%r160
    br i1 %r161, label %L85, label %L86
L85:
    %r156 = fsub float 0x0,%r149
    br label %L83
L86:
    br label %L83
L87:
    br label %L89
L88:
    %r13 = fadd float 0x0,0x4016000000000000
    %r14 = fptosi float %r13 to i32
    br label %L99
L89:
    %r162 = icmp eq i32 %r12,0
    br i1 %r162, label %L90, label %L91
L90:
    br label %L93
L91:
    br label %L96
L92:
    br label %L88
L93:
    br label %L95
L94:
    br label %L92
L95:
    call void @putch(i32 101)
    call void @putch(i32 114)
    call void @putch(i32 114)
    call void @putch(i32 111)
    call void @putch(i32 114)
    call void @putch(i32 10)
    br label %L94
L96:
    br label %L98
L97:
    br label %L92
L98:
    call void @putch(i32 111)
    call void @putch(i32 107)
    call void @putch(i32 10)
    br label %L97
L99:
    br label %L101
L100:
    br label %L102
L101:
    %r163 = fadd float 0x0,0x400921fb60000000
    %r164 = sitofp i32 %r14 to float
    %r165 = fmul float %r163,%r164
    %r166 = fmul float %r165,%r164
    %r167 = mul i32 %r14,%r14
    %r168 = fadd float 0x0,0x400921fb60000000
    %r169 = sitofp i32 %r167 to float
    %r170 = fmul float %r169,%r168
    %r171 = fadd float %r166,%r170
    %r172 = sitofp i32 2 to float
    %r173 = fdiv float %r171,%r172
    br label %L100
L102:
    br label %L104
L103:
    br label %L105
L104:
    %r174 = fadd float 0x0,0x400921fb60000000
    %r175 = sitofp i32 5 to float
    %r176 = fmul float %r174,%r175
    %r177 = fmul float %r176,%r175
    %r179 = fadd float 0x0,0x400921fb60000000
    %r180 = sitofp i32 25 to float
    %r181 = fmul float %r180,%r179
    %r182 = fadd float %r177,%r181
    %r183 = sitofp i32 2 to float
    %r184 = fdiv float %r182,%r183
    br label %L103
L105:
    br label %L107
L106:
    %r18 = phi i32 [%r191,%L108],[0,%L109]
    br label %L115
L107:
    %r185 = fsub float %r173,%r184
    br label %L110
L108:
    %r186 = fadd float 0x0,0x4000000000000000
    %r187 = sitofp i32 1 to float
    %r188 = fmul float %r187,%r186
    %r189 = sitofp i32 2 to float
    %r190 = fdiv float %r188,%r189
    %r191 = fptosi float %r190 to i32
    br label %L106
L109:
    br label %L106
L110:
    br label %L112
L111:
    %r193 = phi float [%r192,%L113],[%r185,%L114]
    %r194 = fadd float 0x0,0x3eb0c6f7a0000000
    %r195 = fcmp olt float %r193,%r194
    br i1 %r195, label %L108, label %L109
L112:
    %r196 = sitofp i32 0 to float
    %r197 = fcmp olt float %r185,%r196
    br i1 %r197, label %L113, label %L114
L113:
    %r192 = fsub float 0x0,%r185
    br label %L111
L114:
    br label %L111
L115:
    br label %L117
L116:
    %r19 = fadd float 0x0,0x406d200000000000
    %r20 = fadd float 0x0,0x40affe0000000000
    br label %L127
L117:
    %r198 = icmp eq i32 %r18,0
    br i1 %r198, label %L118, label %L119
L118:
    br label %L121
L119:
    br label %L124
L120:
    br label %L116
L121:
    br label %L123
L122:
    br label %L120
L123:
    call void @putch(i32 101)
    call void @putch(i32 114)
    call void @putch(i32 114)
    call void @putch(i32 111)
    call void @putch(i32 114)
    call void @putch(i32 10)
    br label %L122
L124:
    br label %L126
L125:
    br label %L120
L126:
    call void @putch(i32 111)
    call void @putch(i32 107)
    call void @putch(i32 10)
    br label %L125
L127:
    br label %L129
L128:
    %r21 = phi i32 [%r205,%L130],[0,%L131]
    %r22 = icmp eq i32 %r21,0
    %r23 = zext i1 %r22 to i32
    br label %L137
L129:
    %r199 = fsub float %r19,%r20
    br label %L132
L130:
    %r200 = fadd float 0x0,0x4000000000000000
    %r201 = sitofp i32 1 to float
    %r202 = fmul float %r201,%r200
    %r203 = sitofp i32 2 to float
    %r204 = fdiv float %r202,%r203
    %r205 = fptosi float %r204 to i32
    br label %L128
L131:
    br label %L128
L132:
    br label %L134
L133:
    %r207 = phi float [%r206,%L135],[%r199,%L136]
    %r208 = fadd float 0x0,0x3eb0c6f7a0000000
    %r209 = fcmp olt float %r207,%r208
    br i1 %r209, label %L130, label %L131
L134:
    %r210 = sitofp i32 0 to float
    %r211 = fcmp olt float %r199,%r210
    br i1 %r211, label %L135, label %L136
L135:
    %r206 = fsub float 0x0,%r199
    br label %L133
L136:
    br label %L133
L137:
    br label %L139
L138:
    %r24 = fadd float 0x0,0x3ff8000000000000
    %r25 = fcmp one float %r24,0x0
    br i1 %r25, label %L2, label %L3
L139:
    %r212 = icmp eq i32 %r23,0
    br i1 %r212, label %L140, label %L141
L140:
    br label %L143
L141:
    br label %L146
L142:
    br label %L138
L143:
    br label %L145
L144:
    br label %L142
L145:
    call void @putch(i32 101)
    call void @putch(i32 114)
    call void @putch(i32 114)
    call void @putch(i32 111)
    call void @putch(i32 114)
    call void @putch(i32 10)
    br label %L144
L146:
    br label %L148
L147:
    br label %L142
L148:
    call void @putch(i32 111)
    call void @putch(i32 107)
    call void @putch(i32 10)
    br label %L147
L149:
    %r67 = fadd float 0x0,0x400921fb60000000
    %r89 = fadd float 0x0,0x4024000000000000
    %r90 = fsub float 0x0,%r89
    %r91 = fsub float 0x0,%r90
    %r123 = fadd float 0x0,0x400921fb60000000
    %r128 = fadd float 0x0,0x400921fb60000000
    %r132 = sitofp i32 2 to float
    br label %L15
}
