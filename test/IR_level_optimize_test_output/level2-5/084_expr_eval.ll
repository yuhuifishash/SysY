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
@TOKEN_NUM = global i32 0
@TOKEN_OTHER = global i32 1
@last_char = global i32 32
@num = global i32 zeroinitializer
@other = global i32 zeroinitializer
@cur_token = global i32 zeroinitializer
define i32 @next_char()
{
L0:
    br label %L1
L1:
    %r0 = call i32 @getch()
    store i32 %r0, ptr @last_char
    %r1 = load i32, ptr @last_char
    ret i32 %r1
}
define i32 @is_space(i32 %r0)
{
L0:
    br label %L1
L1:
    %r4 = icmp eq i32 %r0,32
    br i1 %r4, label %L2, label %L5
L2:
    ret i32 1
L3:
    ret i32 0
L5:
    %r9 = icmp eq i32 %r0,10
    br i1 %r9, label %L2, label %L3
}
define i32 @panic()
{
L0:
    br label %L1
L1:
    call void @putch(i32 112)
    call void @putch(i32 97)
    call void @putch(i32 110)
    call void @putch(i32 105)
    call void @putch(i32 99)
    call void @putch(i32 33)
    call void @putch(i32 10)
    ret i32 -1
}
define i32 @get_op_prec(i32 %r0)
{
L0:
    br label %L1
L1:
    %r4 = icmp eq i32 %r0,43
    br i1 %r4, label %L2, label %L4
L2:
    ret i32 10
L3:
    %r18 = icmp eq i32 %r0,42
    br i1 %r18, label %L6, label %L10
L4:
    %r9 = icmp eq i32 %r0,45
    br i1 %r9, label %L2, label %L3
L6:
    ret i32 20
L7:
    ret i32 0
L8:
    %r31 = icmp eq i32 %r0,37
    br i1 %r31, label %L6, label %L7
L10:
    %r23 = icmp eq i32 %r0,47
    br i1 %r23, label %L6, label %L8
}
define i32 @is_num(i32 %r0)
{
L0:
    br label %L1
L1:
    %r4 = icmp sge i32 %r0,48
    br i1 %r4, label %L5, label %L3
L2:
    ret i32 1
L3:
    ret i32 0
L5:
    %r9 = icmp sle i32 %r0,57
    br i1 %r9, label %L2, label %L3
}
define i32 @next_token()
{
L0:
    br label %L1
L1:
    %r0 = load i32, ptr @last_char
    br label %L13
L3:
    br label %L19
L4:
    %r4 = load i32, ptr @last_char
    br label %L22
L5:
    %r7 = load i32, ptr @last_char
    br label %L28
L6:
    %r10 = load i32, ptr @last_char
    %r12 = sub i32 %r10,48
    store i32 %r12, ptr @num
    br label %L34
L7:
    %r27 = load i32, ptr @last_char
    store i32 %r27, ptr @other
    br label %L37
L8:
    %r30 = load i32, ptr @cur_token
    ret i32 %r30
L10:
    %r16 = load i32, ptr @num
    %r18 = mul i32 %r16,10
    %r19 = load i32, ptr @last_char
    %r20 = add i32 %r18,%r19
    %r22 = sub i32 %r20,48
    store i32 %r22, ptr @num
    br label %L11
L11:
    br label %L40
L12:
    store i32 0, ptr @cur_token
    br label %L8
L13:
    br label %L15
L14:
    %r1 = phi i32 [1,%L16],[0,%L17]
    %r2 = icmp ne i32 %r1,0
    br i1 %r2, label %L55, label %L5
L15:
    %r31 = icmp eq i32 %r0,32
    br i1 %r31, label %L16, label %L18
L16:
    br label %L14
L17:
    br label %L14
L18:
    %r32 = icmp eq i32 %r0,10
    br i1 %r32, label %L16, label %L17
L19:
    br label %L21
L20:
    br label %L4
L21:
    %r33 = call i32 @getch()
    store i32 %r33, ptr @last_char
    br label %L20
L22:
    br label %L24
L23:
    %r5 = phi i32 [1,%L25],[0,%L26]
    %r6 = icmp ne i32 %r5,0
    br i1 %r6, label %L3, label %L5
L24:
    %r35 = icmp eq i32 %r4,32
    br i1 %r35, label %L25, label %L27
L25:
    br label %L23
L26:
    br label %L23
L27:
    %r36 = icmp eq i32 %r4,10
    br i1 %r36, label %L25, label %L26
L28:
    br label %L30
L29:
    %r8 = phi i32 [1,%L31],[0,%L32]
    %r9 = icmp ne i32 %r8,0
    br i1 %r9, label %L6, label %L7
L30:
    %r37 = icmp sge i32 %r7,48
    br i1 %r37, label %L33, label %L32
L31:
    br label %L29
L32:
    br label %L29
L33:
    %r38 = icmp sle i32 %r7,57
    br i1 %r38, label %L31, label %L32
L34:
    br label %L36
L35:
    br label %L43
L36:
    %r39 = call i32 @getch()
    store i32 %r39, ptr @last_char
    %r40 = load i32, ptr @last_char
    br label %L35
L37:
    br label %L39
L38:
    store i32 1, ptr @cur_token
    br label %L8
L39:
    %r41 = call i32 @getch()
    store i32 %r41, ptr @last_char
    br label %L38
L40:
    br label %L42
L41:
    br label %L49
L42:
    %r43 = call i32 @getch()
    store i32 %r43, ptr @last_char
    %r44 = load i32, ptr @last_char
    br label %L41
L43:
    br label %L45
L44:
    %r14 = phi i32 [1,%L46],[0,%L47]
    %r15 = icmp ne i32 %r14,0
    br i1 %r15, label %L56, label %L12
L45:
    %r45 = icmp sge i32 %r40,48
    br i1 %r45, label %L48, label %L47
L46:
    br label %L44
L47:
    br label %L44
L48:
    %r46 = icmp sle i32 %r40,57
    br i1 %r46, label %L46, label %L47
L49:
    br label %L51
L50:
    %r24 = phi i32 [1,%L52],[0,%L53]
    %r25 = icmp ne i32 %r24,0
    br i1 %r25, label %L10, label %L12
L51:
    %r47 = icmp sge i32 %r44,48
    br i1 %r47, label %L54, label %L53
L52:
    br label %L50
L53:
    br label %L50
L54:
    %r48 = icmp sle i32 %r44,57
    br i1 %r48, label %L52, label %L53
L55:
    br label %L3
L56:
    br label %L10
}
define void @stack_push(ptr %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r4 = getelementptr i32, ptr %r0, i32 0
    %r5 = load i32, ptr %r4
    %r7 = add i32 %r5,1
    store i32 %r7, ptr %r4
    %r13 = load i32, ptr %r4
    %r14 = getelementptr i32, ptr %r0, i32 %r13
    store i32 %r1, ptr %r14
    ret void
}
define i32 @stack_pop(ptr %r0)
{
L0:
    br label %L1
L1:
    %r3 = getelementptr i32, ptr %r0, i32 0
    %r4 = load i32, ptr %r3
    %r5 = getelementptr i32, ptr %r0, i32 %r4
    %r6 = load i32, ptr %r5
    %r11 = sub i32 %r4,1
    store i32 %r11, ptr %r3
    ret i32 %r6
}
define i32 @stack_peek(ptr %r0)
{
L0:
    br label %L1
L1:
    %r2 = getelementptr i32, ptr %r0, i32 0
    %r3 = load i32, ptr %r2
    %r4 = getelementptr i32, ptr %r0, i32 %r3
    %r5 = load i32, ptr %r4
    ret i32 %r5
}
define i32 @stack_size(ptr %r0)
{
L0:
    br label %L1
L1:
    %r2 = getelementptr i32, ptr %r0, i32 0
    %r3 = load i32, ptr %r2
    ret i32 %r3
}
define i32 @eval_op(i32 %r0,i32 %r1,i32 %r2)
{
L0:
    br label %L1
L1:
    %r8 = icmp eq i32 %r0,43
    br i1 %r8, label %L2, label %L3
L2:
    %r13 = add i32 %r1,%r2
    ret i32 %r13
L3:
    %r16 = icmp eq i32 %r0,45
    br i1 %r16, label %L4, label %L5
L4:
    %r21 = sub i32 %r1,%r2
    ret i32 %r21
L5:
    %r24 = icmp eq i32 %r0,42
    br i1 %r24, label %L6, label %L7
L6:
    %r29 = mul i32 %r1,%r2
    ret i32 %r29
L7:
    %r32 = icmp eq i32 %r0,47
    br i1 %r32, label %L8, label %L9
L8:
    %r37 = sdiv i32 %r1,%r2
    ret i32 %r37
L9:
    %r40 = icmp eq i32 %r0,37
    br i1 %r40, label %L10, label %L11
L10:
    %r45 = srem i32 %r1,%r2
    ret i32 %r45
L11:
    ret i32 0
}
define i32 @eval()
{
L0:
    %r1 = alloca [256 x i32]
    %r0 = alloca [256 x i32]
    br label %L1
L1:
    call void @llvm.memset.p0.i32(ptr %r0,i8 0,i32 1024,i1 0)
    call void @llvm.memset.p0.i32(ptr %r1,i8 0,i32 1024,i1 0)
    %r2 = load i32, ptr @cur_token
    %r4 = icmp ne i32 %r2,0
    br i1 %r4, label %L2, label %L3
L2:
    br label %L25
L3:
    %r8 = getelementptr i32, ptr %r0, i32 0
    %r9 = load i32, ptr @num
    br label %L28
L5:
    %r17 = load i32, ptr @other
    br label %L31
L6:
    %r77 = load i32, ptr @cur_token
    %r79 = icmp eq i32 %r77,1
    br i1 %r79, label %L5, label %L7
L7:
    %r82 = call i32 @next_token()
    %r83 = getelementptr i32, ptr %r1, i32 0
    br label %L41
L8:
    br label %L7
L9:
    %r23 = call i32 @next_token()
    %r24 = getelementptr i32, ptr %r1, i32 0
    br label %L44
L12:
    br label %L47
L13:
    br label %L50
L14:
    %r66 = getelementptr i32, ptr %r1, i32 0
    br label %L53
L15:
    %r27 = getelementptr i32, ptr %r1, i32 0
    br label %L56
L17:
    %r55 = getelementptr i32, ptr %r1, i32 0
    br label %L59
L19:
    br label %L62
L20:
    %r74 = getelementptr i32, ptr %r0, i32 0
    %r75 = load i32, ptr @num
    br label %L65
L22:
    br label %L68
L23:
    br label %L71
L24:
    %r103 = getelementptr i32, ptr %r0, i32 0
    br label %L74
L25:
    br label %L27
L26:
    ret i32 -1
L27:
    call void @putch(i32 112)
    call void @putch(i32 97)
    call void @putch(i32 110)
    call void @putch(i32 105)
    call void @putch(i32 99)
    call void @putch(i32 33)
    call void @putch(i32 10)
    br label %L26
L28:
    br label %L30
L29:
    %r10 = call i32 @next_token()
    %r11 = load i32, ptr @cur_token
    %r13 = icmp eq i32 %r11,1
    br i1 %r13, label %L135, label %L7
L30:
    %r105 = getelementptr i32, ptr %r8, i32 0
    %r106 = load i32, ptr %r105
    %r107 = add i32 %r106,1
    store i32 %r107, ptr %r105
    %r108 = load i32, ptr %r105
    %r109 = getelementptr i32, ptr %r8, i32 %r108
    store i32 %r9, ptr %r109
    br label %L29
L31:
    br label %L33
L32:
    %r19 = phi i32 [10,%L34],[20,%L37],[0,%L38]
    %r20 = icmp eq i32 %r19,0
    br i1 %r20, label %L8, label %L9
L33:
    %r110 = icmp eq i32 %r17,43
    br i1 %r110, label %L34, label %L36
L34:
    br label %L32
L35:
    %r111 = icmp eq i32 %r17,42
    br i1 %r111, label %L37, label %L40
L36:
    %r112 = icmp eq i32 %r17,45
    br i1 %r112, label %L34, label %L35
L37:
    br label %L32
L38:
    br label %L32
L39:
    %r113 = icmp eq i32 %r17,37
    br i1 %r113, label %L37, label %L38
L40:
    %r114 = icmp eq i32 %r17,47
    br i1 %r114, label %L37, label %L39
L41:
    br label %L43
L42:
    %r85 = icmp ne i32 %r116,0
    br i1 %r85, label %L136, label %L24
L43:
    %r115 = getelementptr i32, ptr %r83, i32 0
    %r116 = load i32, ptr %r115
    br label %L42
L44:
    br label %L46
L45:
    %r26 = icmp ne i32 %r118,0
    br i1 %r26, label %L15, label %L14
L46:
    %r117 = getelementptr i32, ptr %r24, i32 0
    %r118 = load i32, ptr %r117
    br label %L45
L47:
    br label %L49
L48:
    br label %L77
L49:
    %r120 = load i32, ptr %r119
    %r121 = getelementptr i32, ptr %r39, i32 %r120
    %r122 = load i32, ptr %r121
    %r123 = sub i32 %r120,1
    store i32 %r123, ptr %r119
    br label %L48
L50:
    br label %L52
L51:
    %r54 = icmp ne i32 %r125,0
    br i1 %r54, label %L17, label %L14
L52:
    %r125 = load i32, ptr %r119
    br label %L51
L53:
    br label %L55
L54:
    %r68 = load i32, ptr @cur_token
    %r70 = icmp ne i32 %r68,0
    br i1 %r70, label %L19, label %L20
L55:
    %r126 = getelementptr i32, ptr %r66, i32 0
    %r127 = load i32, ptr %r126
    %r128 = add i32 %r127,1
    store i32 %r128, ptr %r126
    %r129 = load i32, ptr %r126
    %r130 = getelementptr i32, ptr %r66, i32 %r129
    store i32 %r17, ptr %r130
    br label %L54
L56:
    br label %L58
L57:
    br label %L80
L58:
    %r131 = getelementptr i32, ptr %r27, i32 0
    %r132 = load i32, ptr %r131
    %r133 = getelementptr i32, ptr %r27, i32 %r132
    %r134 = load i32, ptr %r133
    br label %L57
L59:
    br label %L61
L60:
    br label %L90
L61:
    %r135 = getelementptr i32, ptr %r55, i32 0
    %r136 = load i32, ptr %r135
    %r137 = getelementptr i32, ptr %r55, i32 %r136
    %r138 = load i32, ptr %r137
    br label %L60
L62:
    br label %L64
L63:
    ret i32 -1
L64:
    call void @putch(i32 112)
    call void @putch(i32 97)
    call void @putch(i32 110)
    call void @putch(i32 105)
    call void @putch(i32 99)
    call void @putch(i32 33)
    call void @putch(i32 10)
    br label %L63
L65:
    br label %L67
L66:
    %r76 = call i32 @next_token()
    br label %L6
L67:
    %r139 = getelementptr i32, ptr %r74, i32 0
    %r140 = load i32, ptr %r139
    %r141 = add i32 %r140,1
    store i32 %r141, ptr %r139
    %r142 = load i32, ptr %r139
    %r143 = getelementptr i32, ptr %r74, i32 %r142
    store i32 %r75, ptr %r143
    br label %L66
L68:
    br label %L70
L69:
    br label %L100
L70:
    %r145 = load i32, ptr %r144
    %r146 = getelementptr i32, ptr %r87, i32 %r145
    %r147 = load i32, ptr %r146
    %r148 = sub i32 %r145,1
    store i32 %r148, ptr %r144
    br label %L69
L71:
    br label %L73
L72:
    %r102 = icmp ne i32 %r150,0
    br i1 %r102, label %L22, label %L24
L73:
    %r150 = load i32, ptr %r144
    br label %L72
L74:
    br label %L76
L75:
    ret i32 %r154
L76:
    %r151 = getelementptr i32, ptr %r103, i32 0
    %r152 = load i32, ptr %r151
    %r153 = getelementptr i32, ptr %r103, i32 %r152
    %r154 = load i32, ptr %r153
    br label %L75
L77:
    br label %L79
L78:
    br label %L103
L79:
    %r156 = load i32, ptr %r155
    %r157 = getelementptr i32, ptr %r42, i32 %r156
    %r158 = load i32, ptr %r157
    %r159 = sub i32 %r156,1
    store i32 %r159, ptr %r155
    br label %L78
L80:
    br label %L82
L81:
    %r29 = phi i32 [10,%L83],[20,%L86],[0,%L87]
    br label %L106
L82:
    %r160 = icmp eq i32 %r134,43
    br i1 %r160, label %L83, label %L85
L83:
    br label %L81
L84:
    %r161 = icmp eq i32 %r134,42
    br i1 %r161, label %L86, label %L89
L85:
    %r162 = icmp eq i32 %r134,45
    br i1 %r162, label %L83, label %L84
L86:
    br label %L81
L87:
    br label %L81
L88:
    %r163 = icmp eq i32 %r134,37
    br i1 %r163, label %L86, label %L87
L89:
    %r164 = icmp eq i32 %r134,47
    br i1 %r164, label %L86, label %L88
L90:
    br label %L92
L91:
    %r57 = phi i32 [10,%L93],[20,%L96],[0,%L97]
    br label %L116
L92:
    %r165 = icmp eq i32 %r138,43
    br i1 %r165, label %L93, label %L95
L93:
    br label %L91
L94:
    %r166 = icmp eq i32 %r138,42
    br i1 %r166, label %L96, label %L99
L95:
    %r167 = icmp eq i32 %r138,45
    br i1 %r167, label %L93, label %L94
L96:
    br label %L91
L97:
    br label %L91
L98:
    %r168 = icmp eq i32 %r138,37
    br i1 %r168, label %L96, label %L97
L99:
    %r169 = icmp eq i32 %r138,47
    br i1 %r169, label %L96, label %L98
L100:
    br label %L102
L101:
    br label %L126
L102:
    %r171 = load i32, ptr %r170
    %r172 = getelementptr i32, ptr %r90, i32 %r171
    %r173 = load i32, ptr %r172
    %r174 = sub i32 %r171,1
    store i32 %r174, ptr %r170
    br label %L101
L103:
    br label %L105
L104:
    %r51 = call i32 @eval_op(i32 %r122,i32 %r178,i32 %r158)
    br label %L129
L105:
    %r176 = load i32, ptr %r155
    %r177 = getelementptr i32, ptr %r42, i32 %r176
    %r178 = load i32, ptr %r177
    %r179 = sub i32 %r176,1
    store i32 %r179, ptr %r155
    br label %L104
L106:
    br label %L108
L107:
    %r31 = phi i32 [10,%L109],[20,%L112],[0,%L113]
    %r32 = icmp sge i32 %r29,%r31
    br i1 %r32, label %L137, label %L14
L108:
    %r180 = icmp eq i32 %r17,43
    br i1 %r180, label %L109, label %L111
L109:
    br label %L107
L110:
    %r181 = icmp eq i32 %r17,42
    br i1 %r181, label %L112, label %L115
L111:
    %r182 = icmp eq i32 %r17,45
    br i1 %r182, label %L109, label %L110
L112:
    br label %L107
L113:
    br label %L107
L114:
    %r183 = icmp eq i32 %r17,37
    br i1 %r183, label %L112, label %L113
L115:
    %r184 = icmp eq i32 %r17,47
    br i1 %r184, label %L112, label %L114
L116:
    br label %L118
L117:
    %r59 = phi i32 [10,%L119],[20,%L122],[0,%L123]
    %r60 = icmp sge i32 %r57,%r59
    br i1 %r60, label %L12, label %L14
L118:
    %r185 = icmp eq i32 %r17,43
    br i1 %r185, label %L119, label %L121
L119:
    br label %L117
L120:
    %r186 = icmp eq i32 %r17,42
    br i1 %r186, label %L122, label %L125
L121:
    %r187 = icmp eq i32 %r17,45
    br i1 %r187, label %L119, label %L120
L122:
    br label %L117
L123:
    br label %L117
L124:
    %r188 = icmp eq i32 %r17,37
    br i1 %r188, label %L122, label %L123
L125:
    %r189 = icmp eq i32 %r17,47
    br i1 %r189, label %L122, label %L124
L126:
    br label %L128
L127:
    %r99 = call i32 @eval_op(i32 %r147,i32 %r193,i32 %r173)
    br label %L132
L128:
    %r191 = load i32, ptr %r170
    %r192 = getelementptr i32, ptr %r90, i32 %r191
    %r193 = load i32, ptr %r192
    %r194 = sub i32 %r191,1
    store i32 %r194, ptr %r170
    br label %L127
L129:
    br label %L131
L130:
    br label %L13
L131:
    %r196 = load i32, ptr %r155
    %r197 = add i32 %r196,1
    store i32 %r197, ptr %r155
    %r198 = load i32, ptr %r155
    %r199 = getelementptr i32, ptr %r42, i32 %r198
    store i32 %r51, ptr %r199
    br label %L130
L132:
    br label %L134
L133:
    br label %L23
L134:
    %r201 = load i32, ptr %r170
    %r202 = add i32 %r201,1
    store i32 %r202, ptr %r170
    %r203 = load i32, ptr %r170
    %r204 = getelementptr i32, ptr %r90, i32 %r203
    store i32 %r99, ptr %r204
    br label %L133
L135:
    br label %L5
L136:
    %r87 = getelementptr i32, ptr %r1, i32 0
    %r90 = getelementptr i32, ptr %r0, i32 0
    %r144 = getelementptr i32, ptr %r87, i32 0
    %r170 = getelementptr i32, ptr %r90, i32 0
    br label %L22
L137:
    %r39 = getelementptr i32, ptr %r1, i32 0
    %r42 = getelementptr i32, ptr %r0, i32 0
    %r119 = getelementptr i32, ptr %r39, i32 0
    %r155 = getelementptr i32, ptr %r42, i32 0
    br label %L12
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r1 = call i32 @getint()
    %r2 = call i32 @getch()
    %r3 = call i32 @next_token()
    %r5 = icmp ne i32 %r1,0
    br i1 %r5, label %L6, label %L5
L3:
    %r14 = phi i32 [%r10,%L4],[%r1,%L6]
    %r6 = call i32 @eval()
    call void @putint(i32 %r6)
    call void @putch(i32 10)
    %r10 = sub i32 %r14,1
    br label %L4
L4:
    %r12 = icmp ne i32 %r10,0
    br i1 %r12, label %L3, label %L5
L5:
    ret i32 0
L6:
    br label %L3
}
