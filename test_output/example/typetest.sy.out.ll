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
define i32 @func(i32 %r0)
{
L0:  ;
    %r8 = alloca [100 x i32]
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r639 = phi i32 [0,%L1],[%r19,%L3]
    %r13 = icmp slt i32 %r639,100
    br i1 %r13, label %L3, label %L4
L3:  ;
    %r15 = getelementptr [100 x i32], ptr %r8, i32 0, i32 %r639
    store i32 0, ptr %r15
    %r19 = add i32 %r639,1
    br label %L2
L4:  ;
    br label %L5
L5:  ;
    %r642 = phi i32 [0,%L4],[%r635,%L208]
    %r640 = phi i32 [0,%L4],[%r619,%L208]
    %r22 = icmp slt i32 %r640,%r0
    br i1 %r22, label %L6, label %L7
L6:  ;
    br label %L8
L7:  ;
    ret i32 %r642
L8:  ;
    %r27 = getelementptr [100 x i32], ptr %r8, i32 0, i32 1
    store i32 1, ptr %r27
    br label %L10
L9:  ;
    %r619 = add i32 %r640,1
    br label %L206
L10:  ;
    %r33 = getelementptr [100 x i32], ptr %r8, i32 0, i32 2
    store i32 2, ptr %r33
    br label %L12
L11:  ;
    br label %L9
L12:  ;
    %r39 = getelementptr [100 x i32], ptr %r8, i32 0, i32 3
    store i32 3, ptr %r39
    br label %L14
L13:  ;
    br label %L11
L14:  ;
    %r45 = getelementptr [100 x i32], ptr %r8, i32 0, i32 4
    store i32 4, ptr %r45
    br label %L16
L15:  ;
    br label %L13
L16:  ;
    %r51 = getelementptr [100 x i32], ptr %r8, i32 0, i32 5
    store i32 5, ptr %r51
    br label %L18
L17:  ;
    br label %L15
L18:  ;
    %r57 = getelementptr [100 x i32], ptr %r8, i32 0, i32 6
    store i32 6, ptr %r57
    br label %L20
L19:  ;
    br label %L17
L20:  ;
    %r63 = getelementptr [100 x i32], ptr %r8, i32 0, i32 7
    store i32 7, ptr %r63
    br label %L22
L21:  ;
    br label %L19
L22:  ;
    %r69 = getelementptr [100 x i32], ptr %r8, i32 0, i32 8
    store i32 8, ptr %r69
    br label %L24
L23:  ;
    br label %L21
L24:  ;
    %r75 = getelementptr [100 x i32], ptr %r8, i32 0, i32 9
    store i32 9, ptr %r75
    br label %L26
L25:  ;
    br label %L23
L26:  ;
    %r81 = getelementptr [100 x i32], ptr %r8, i32 0, i32 10
    store i32 10, ptr %r81
    br label %L28
L27:  ;
    br label %L25
L28:  ;
    %r87 = getelementptr [100 x i32], ptr %r8, i32 0, i32 11
    store i32 11, ptr %r87
    br label %L30
L29:  ;
    br label %L27
L30:  ;
    %r93 = getelementptr [100 x i32], ptr %r8, i32 0, i32 12
    store i32 12, ptr %r93
    br label %L32
L31:  ;
    br label %L29
L32:  ;
    %r99 = getelementptr [100 x i32], ptr %r8, i32 0, i32 13
    store i32 13, ptr %r99
    br label %L34
L33:  ;
    br label %L31
L34:  ;
    %r105 = getelementptr [100 x i32], ptr %r8, i32 0, i32 14
    store i32 14, ptr %r105
    br label %L36
L35:  ;
    br label %L33
L36:  ;
    %r111 = getelementptr [100 x i32], ptr %r8, i32 0, i32 15
    store i32 15, ptr %r111
    br label %L38
L37:  ;
    br label %L35
L38:  ;
    %r117 = getelementptr [100 x i32], ptr %r8, i32 0, i32 16
    store i32 16, ptr %r117
    br label %L40
L39:  ;
    br label %L37
L40:  ;
    %r123 = getelementptr [100 x i32], ptr %r8, i32 0, i32 17
    store i32 17, ptr %r123
    br label %L42
L41:  ;
    br label %L39
L42:  ;
    %r129 = getelementptr [100 x i32], ptr %r8, i32 0, i32 18
    store i32 18, ptr %r129
    br label %L44
L43:  ;
    br label %L41
L44:  ;
    %r135 = getelementptr [100 x i32], ptr %r8, i32 0, i32 19
    store i32 19, ptr %r135
    br label %L46
L45:  ;
    br label %L43
L46:  ;
    %r141 = getelementptr [100 x i32], ptr %r8, i32 0, i32 20
    store i32 20, ptr %r141
    br label %L48
L47:  ;
    br label %L45
L48:  ;
    %r147 = getelementptr [100 x i32], ptr %r8, i32 0, i32 21
    store i32 21, ptr %r147
    br label %L50
L49:  ;
    br label %L47
L50:  ;
    %r153 = getelementptr [100 x i32], ptr %r8, i32 0, i32 22
    store i32 22, ptr %r153
    br label %L52
L51:  ;
    br label %L49
L52:  ;
    %r159 = getelementptr [100 x i32], ptr %r8, i32 0, i32 23
    store i32 23, ptr %r159
    br label %L54
L53:  ;
    br label %L51
L54:  ;
    %r165 = getelementptr [100 x i32], ptr %r8, i32 0, i32 24
    store i32 24, ptr %r165
    br label %L56
L55:  ;
    br label %L53
L56:  ;
    %r171 = getelementptr [100 x i32], ptr %r8, i32 0, i32 25
    store i32 25, ptr %r171
    br label %L58
L57:  ;
    br label %L55
L58:  ;
    %r177 = getelementptr [100 x i32], ptr %r8, i32 0, i32 26
    store i32 26, ptr %r177
    br label %L60
L59:  ;
    br label %L57
L60:  ;
    %r183 = getelementptr [100 x i32], ptr %r8, i32 0, i32 27
    store i32 27, ptr %r183
    br label %L62
L61:  ;
    br label %L59
L62:  ;
    %r189 = getelementptr [100 x i32], ptr %r8, i32 0, i32 28
    store i32 28, ptr %r189
    br label %L64
L63:  ;
    br label %L61
L64:  ;
    %r195 = getelementptr [100 x i32], ptr %r8, i32 0, i32 29
    store i32 29, ptr %r195
    br label %L66
L65:  ;
    br label %L63
L66:  ;
    %r201 = getelementptr [100 x i32], ptr %r8, i32 0, i32 30
    store i32 30, ptr %r201
    br label %L68
L67:  ;
    br label %L65
L68:  ;
    %r207 = getelementptr [100 x i32], ptr %r8, i32 0, i32 31
    store i32 31, ptr %r207
    br label %L70
L69:  ;
    br label %L67
L70:  ;
    %r213 = getelementptr [100 x i32], ptr %r8, i32 0, i32 32
    store i32 32, ptr %r213
    br label %L72
L71:  ;
    br label %L69
L72:  ;
    %r219 = getelementptr [100 x i32], ptr %r8, i32 0, i32 33
    store i32 33, ptr %r219
    br label %L74
L73:  ;
    br label %L71
L74:  ;
    %r225 = getelementptr [100 x i32], ptr %r8, i32 0, i32 34
    store i32 34, ptr %r225
    br label %L76
L75:  ;
    br label %L73
L76:  ;
    %r231 = getelementptr [100 x i32], ptr %r8, i32 0, i32 35
    store i32 35, ptr %r231
    br label %L78
L77:  ;
    br label %L75
L78:  ;
    %r237 = getelementptr [100 x i32], ptr %r8, i32 0, i32 36
    store i32 36, ptr %r237
    br label %L80
L79:  ;
    br label %L77
L80:  ;
    %r243 = getelementptr [100 x i32], ptr %r8, i32 0, i32 37
    store i32 37, ptr %r243
    br label %L82
L81:  ;
    br label %L79
L82:  ;
    %r249 = getelementptr [100 x i32], ptr %r8, i32 0, i32 38
    store i32 38, ptr %r249
    br label %L84
L83:  ;
    br label %L81
L84:  ;
    %r255 = getelementptr [100 x i32], ptr %r8, i32 0, i32 39
    store i32 39, ptr %r255
    br label %L86
L85:  ;
    br label %L83
L86:  ;
    %r261 = getelementptr [100 x i32], ptr %r8, i32 0, i32 40
    store i32 40, ptr %r261
    br label %L88
L87:  ;
    br label %L85
L88:  ;
    %r267 = getelementptr [100 x i32], ptr %r8, i32 0, i32 41
    store i32 41, ptr %r267
    br label %L90
L89:  ;
    br label %L87
L90:  ;
    %r273 = getelementptr [100 x i32], ptr %r8, i32 0, i32 42
    store i32 42, ptr %r273
    br label %L92
L91:  ;
    br label %L89
L92:  ;
    %r279 = getelementptr [100 x i32], ptr %r8, i32 0, i32 43
    store i32 43, ptr %r279
    br label %L94
L93:  ;
    br label %L91
L94:  ;
    %r285 = getelementptr [100 x i32], ptr %r8, i32 0, i32 44
    store i32 44, ptr %r285
    br label %L96
L95:  ;
    br label %L93
L96:  ;
    %r291 = getelementptr [100 x i32], ptr %r8, i32 0, i32 45
    store i32 45, ptr %r291
    br label %L98
L97:  ;
    br label %L95
L98:  ;
    %r297 = getelementptr [100 x i32], ptr %r8, i32 0, i32 46
    store i32 46, ptr %r297
    br label %L100
L99:  ;
    br label %L97
L100:  ;
    %r303 = getelementptr [100 x i32], ptr %r8, i32 0, i32 47
    store i32 47, ptr %r303
    br label %L102
L101:  ;
    br label %L99
L102:  ;
    %r309 = getelementptr [100 x i32], ptr %r8, i32 0, i32 48
    store i32 48, ptr %r309
    br label %L104
L103:  ;
    br label %L101
L104:  ;
    %r315 = getelementptr [100 x i32], ptr %r8, i32 0, i32 49
    store i32 49, ptr %r315
    br label %L106
L105:  ;
    br label %L103
L106:  ;
    %r321 = getelementptr [100 x i32], ptr %r8, i32 0, i32 50
    store i32 50, ptr %r321
    br label %L108
L107:  ;
    br label %L105
L108:  ;
    %r327 = getelementptr [100 x i32], ptr %r8, i32 0, i32 51
    store i32 51, ptr %r327
    br label %L110
L109:  ;
    br label %L107
L110:  ;
    %r333 = getelementptr [100 x i32], ptr %r8, i32 0, i32 52
    store i32 52, ptr %r333
    br label %L112
L111:  ;
    br label %L109
L112:  ;
    %r339 = getelementptr [100 x i32], ptr %r8, i32 0, i32 53
    store i32 53, ptr %r339
    br label %L114
L113:  ;
    br label %L111
L114:  ;
    %r345 = getelementptr [100 x i32], ptr %r8, i32 0, i32 54
    store i32 54, ptr %r345
    br label %L116
L115:  ;
    br label %L113
L116:  ;
    %r351 = getelementptr [100 x i32], ptr %r8, i32 0, i32 55
    store i32 55, ptr %r351
    br label %L118
L117:  ;
    br label %L115
L118:  ;
    %r357 = getelementptr [100 x i32], ptr %r8, i32 0, i32 56
    store i32 56, ptr %r357
    br label %L120
L119:  ;
    br label %L117
L120:  ;
    %r363 = getelementptr [100 x i32], ptr %r8, i32 0, i32 57
    store i32 57, ptr %r363
    br label %L122
L121:  ;
    br label %L119
L122:  ;
    %r369 = getelementptr [100 x i32], ptr %r8, i32 0, i32 58
    store i32 58, ptr %r369
    br label %L124
L123:  ;
    br label %L121
L124:  ;
    %r375 = getelementptr [100 x i32], ptr %r8, i32 0, i32 59
    store i32 59, ptr %r375
    br label %L126
L125:  ;
    br label %L123
L126:  ;
    %r381 = getelementptr [100 x i32], ptr %r8, i32 0, i32 60
    store i32 60, ptr %r381
    br label %L128
L127:  ;
    br label %L125
L128:  ;
    %r387 = getelementptr [100 x i32], ptr %r8, i32 0, i32 61
    store i32 61, ptr %r387
    br label %L130
L129:  ;
    br label %L127
L130:  ;
    %r393 = getelementptr [100 x i32], ptr %r8, i32 0, i32 62
    store i32 62, ptr %r393
    br label %L132
L131:  ;
    br label %L129
L132:  ;
    %r399 = getelementptr [100 x i32], ptr %r8, i32 0, i32 63
    store i32 63, ptr %r399
    br label %L134
L133:  ;
    br label %L131
L134:  ;
    %r405 = getelementptr [100 x i32], ptr %r8, i32 0, i32 64
    store i32 64, ptr %r405
    br label %L136
L135:  ;
    br label %L133
L136:  ;
    %r411 = getelementptr [100 x i32], ptr %r8, i32 0, i32 65
    store i32 65, ptr %r411
    br label %L138
L137:  ;
    br label %L135
L138:  ;
    %r417 = getelementptr [100 x i32], ptr %r8, i32 0, i32 66
    store i32 66, ptr %r417
    br label %L140
L139:  ;
    br label %L137
L140:  ;
    %r423 = getelementptr [100 x i32], ptr %r8, i32 0, i32 67
    store i32 67, ptr %r423
    br label %L142
L141:  ;
    br label %L139
L142:  ;
    %r429 = getelementptr [100 x i32], ptr %r8, i32 0, i32 68
    store i32 68, ptr %r429
    br label %L144
L143:  ;
    br label %L141
L144:  ;
    %r435 = getelementptr [100 x i32], ptr %r8, i32 0, i32 69
    store i32 69, ptr %r435
    br label %L146
L145:  ;
    br label %L143
L146:  ;
    %r441 = getelementptr [100 x i32], ptr %r8, i32 0, i32 70
    store i32 70, ptr %r441
    br label %L148
L147:  ;
    br label %L145
L148:  ;
    %r447 = getelementptr [100 x i32], ptr %r8, i32 0, i32 71
    store i32 71, ptr %r447
    br label %L150
L149:  ;
    br label %L147
L150:  ;
    %r453 = getelementptr [100 x i32], ptr %r8, i32 0, i32 72
    store i32 72, ptr %r453
    br label %L152
L151:  ;
    br label %L149
L152:  ;
    %r459 = getelementptr [100 x i32], ptr %r8, i32 0, i32 73
    store i32 73, ptr %r459
    br label %L154
L153:  ;
    br label %L151
L154:  ;
    %r465 = getelementptr [100 x i32], ptr %r8, i32 0, i32 74
    store i32 74, ptr %r465
    br label %L156
L155:  ;
    br label %L153
L156:  ;
    %r471 = getelementptr [100 x i32], ptr %r8, i32 0, i32 75
    store i32 75, ptr %r471
    br label %L158
L157:  ;
    br label %L155
L158:  ;
    %r477 = getelementptr [100 x i32], ptr %r8, i32 0, i32 76
    store i32 76, ptr %r477
    br label %L160
L159:  ;
    br label %L157
L160:  ;
    %r483 = getelementptr [100 x i32], ptr %r8, i32 0, i32 77
    store i32 77, ptr %r483
    br label %L162
L161:  ;
    br label %L159
L162:  ;
    %r489 = getelementptr [100 x i32], ptr %r8, i32 0, i32 78
    store i32 78, ptr %r489
    br label %L164
L163:  ;
    br label %L161
L164:  ;
    %r495 = getelementptr [100 x i32], ptr %r8, i32 0, i32 79
    store i32 79, ptr %r495
    br label %L166
L165:  ;
    br label %L163
L166:  ;
    %r501 = getelementptr [100 x i32], ptr %r8, i32 0, i32 80
    store i32 80, ptr %r501
    br label %L168
L167:  ;
    br label %L165
L168:  ;
    %r507 = getelementptr [100 x i32], ptr %r8, i32 0, i32 81
    store i32 81, ptr %r507
    br label %L170
L169:  ;
    br label %L167
L170:  ;
    %r513 = getelementptr [100 x i32], ptr %r8, i32 0, i32 82
    store i32 82, ptr %r513
    br label %L172
L171:  ;
    br label %L169
L172:  ;
    %r519 = getelementptr [100 x i32], ptr %r8, i32 0, i32 83
    store i32 83, ptr %r519
    br label %L174
L173:  ;
    br label %L171
L174:  ;
    %r525 = getelementptr [100 x i32], ptr %r8, i32 0, i32 84
    store i32 84, ptr %r525
    br label %L176
L175:  ;
    br label %L173
L176:  ;
    %r531 = getelementptr [100 x i32], ptr %r8, i32 0, i32 85
    store i32 85, ptr %r531
    br label %L178
L177:  ;
    br label %L175
L178:  ;
    %r537 = getelementptr [100 x i32], ptr %r8, i32 0, i32 86
    store i32 86, ptr %r537
    br label %L180
L179:  ;
    br label %L177
L180:  ;
    %r543 = getelementptr [100 x i32], ptr %r8, i32 0, i32 87
    store i32 87, ptr %r543
    br label %L182
L181:  ;
    br label %L179
L182:  ;
    %r549 = getelementptr [100 x i32], ptr %r8, i32 0, i32 88
    store i32 88, ptr %r549
    br label %L184
L183:  ;
    br label %L181
L184:  ;
    %r555 = getelementptr [100 x i32], ptr %r8, i32 0, i32 89
    store i32 89, ptr %r555
    br label %L186
L185:  ;
    br label %L183
L186:  ;
    %r561 = getelementptr [100 x i32], ptr %r8, i32 0, i32 90
    store i32 90, ptr %r561
    br label %L188
L187:  ;
    br label %L185
L188:  ;
    %r567 = getelementptr [100 x i32], ptr %r8, i32 0, i32 91
    store i32 91, ptr %r567
    br label %L190
L189:  ;
    br label %L187
L190:  ;
    %r573 = getelementptr [100 x i32], ptr %r8, i32 0, i32 92
    store i32 92, ptr %r573
    br label %L192
L191:  ;
    br label %L189
L192:  ;
    %r579 = getelementptr [100 x i32], ptr %r8, i32 0, i32 93
    store i32 93, ptr %r579
    br label %L194
L193:  ;
    br label %L191
L194:  ;
    %r585 = getelementptr [100 x i32], ptr %r8, i32 0, i32 94
    store i32 94, ptr %r585
    br label %L196
L195:  ;
    br label %L193
L196:  ;
    %r591 = getelementptr [100 x i32], ptr %r8, i32 0, i32 95
    store i32 95, ptr %r591
    br label %L198
L197:  ;
    br label %L195
L198:  ;
    %r597 = getelementptr [100 x i32], ptr %r8, i32 0, i32 96
    store i32 96, ptr %r597
    br label %L200
L199:  ;
    br label %L197
L200:  ;
    %r603 = getelementptr [100 x i32], ptr %r8, i32 0, i32 97
    store i32 97, ptr %r603
    br label %L202
L201:  ;
    br label %L199
L202:  ;
    %r609 = getelementptr [100 x i32], ptr %r8, i32 0, i32 98
    store i32 98, ptr %r609
    br label %L204
L203:  ;
    br label %L201
L204:  ;
    %r615 = getelementptr [100 x i32], ptr %r8, i32 0, i32 99
    store i32 99, ptr %r615
    br label %L205
L205:  ;
    br label %L203
L206:  ;
    %r641 = phi i32 [%r642,%L9],[%r629,%L207]
    %r638 = phi i32 [0,%L9],[%r632,%L207]
    %r624 = icmp slt i32 %r638,100
    br i1 %r624, label %L207, label %L208
L207:  ;
    %r627 = getelementptr [100 x i32], ptr %r8, i32 0, i32 %r638
    %r628 = load i32, ptr %r627
    %r629 = add i32 %r641,%r628
    %r632 = add i32 %r638,1
    br label %L206
L208:  ;
    %r635 = srem i32 %r641,65535
    br label %L5
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    call void @_sysy_starttime(i32 324)
    %r2 = call i32 @getint()
    %r4 = call i32 @func(i32 %r2)
    call void @putint(i32 %r4)
    call void @putch(i32 10)
    call void @_sysy_stoptime(i32 328)
    ret i32 0
}
