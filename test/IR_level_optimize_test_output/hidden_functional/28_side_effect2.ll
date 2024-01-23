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
@sum = global i32 0
@array = global [20x i32] zeroinitializer
define i32 @f(i32 %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r4 = load i32, ptr @sum
    %r6 = add i32 %r4,1
    store i32 %r6, ptr @sum
    %r9 = icmp sge i32 %r0,%r1
    br i1 %r9, label %L2, label %L4
L2:
    ret i32 0
L3:
    %r23 = getelementptr [20 x i32], ptr @array, i32 0, i32 %r0
    store i32 1, ptr %r23
    %r26 = icmp eq i32 %r0,0
    br i1 %r26, label %L6, label %L7
L4:
    %r14 = icmp sge i32 %r0,20
    br i1 %r14, label %L2, label %L3
L6:
    %r30 = getelementptr [20 x i32], ptr @array, i32 0, i32 0
    %r31 = load i32, ptr %r30
    ret i32 %r31
L7:
    %r34 = sub i32 %r0,1
    %r35 = getelementptr [20 x i32], ptr @array, i32 0, i32 %r34
    %r36 = load i32, ptr %r35
    ret i32 %r36
}
define i32 @g(i32 %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r4 = load i32, ptr @sum
    %r6 = add i32 %r4,2
    store i32 %r6, ptr @sum
    %r9 = icmp sge i32 %r0,%r1
    br i1 %r9, label %L2, label %L4
L2:
    ret i32 1
L3:
    %r23 = getelementptr [20 x i32], ptr @array, i32 0, i32 %r0
    store i32 0, ptr %r23
    %r26 = icmp eq i32 %r0,0
    br i1 %r26, label %L6, label %L7
L4:
    %r14 = icmp sge i32 %r0,20
    br i1 %r14, label %L2, label %L3
L6:
    %r30 = getelementptr [20 x i32], ptr @array, i32 0, i32 0
    %r31 = load i32, ptr %r30
    ret i32 %r31
L7:
    %r34 = sub i32 %r0,1
    %r35 = getelementptr [20 x i32], ptr @array, i32 0, i32 %r34
    %r36 = load i32, ptr %r35
    ret i32 %r36
}
define i32 @h(i32 %r0)
{
L0:
    br label %L1
L1:
    %r2 = load i32, ptr @sum
    %r4 = add i32 %r2,3
    store i32 %r4, ptr @sum
    %r7 = icmp slt i32 %r0,0
    br i1 %r7, label %L2, label %L4
L2:
    ret i32 0
L3:
    %r20 = getelementptr [20 x i32], ptr @array, i32 0, i32 %r0
    %r21 = load i32, ptr %r20
    ret i32 %r21
L4:
    %r12 = icmp sge i32 %r0,20
    br i1 %r12, label %L2, label %L3
}
define i32 @main()
{
L0:
    br label %L1
L1:
    br label %L290
L3:
    %r516 = phi i32 [%r146,%L4],[0,%L290]
    %r9 = call i32 @f(i32 0,i32 %r516)
    %r10 = icmp ne i32 %r9,0
    br i1 %r10, label %L44, label %L7
L4:
    %r149 = icmp slt i32 %r146,20
    br i1 %r149, label %L3, label %L5
L5:
    br label %L291
L6:
    br label %L7
L7:
    %r146 = add i32 %r516,1
    br label %L4
L8:
    %r139 = call i32 @f(i32 19,i32 %r516)
    %r140 = icmp ne i32 %r139,0
    br i1 %r140, label %L6, label %L7
L10:
    %r132 = call i32 @f(i32 18,i32 %r516)
    %r133 = icmp ne i32 %r132,0
    br i1 %r133, label %L8, label %L7
L12:
    %r125 = call i32 @f(i32 17,i32 %r516)
    %r126 = icmp ne i32 %r125,0
    br i1 %r126, label %L10, label %L7
L14:
    %r118 = call i32 @f(i32 16,i32 %r516)
    %r119 = icmp ne i32 %r118,0
    br i1 %r119, label %L12, label %L7
L16:
    %r111 = call i32 @f(i32 15,i32 %r516)
    %r112 = icmp ne i32 %r111,0
    br i1 %r112, label %L14, label %L7
L18:
    %r104 = call i32 @f(i32 14,i32 %r516)
    %r105 = icmp ne i32 %r104,0
    br i1 %r105, label %L16, label %L7
L20:
    %r97 = call i32 @f(i32 13,i32 %r516)
    %r98 = icmp ne i32 %r97,0
    br i1 %r98, label %L18, label %L7
L22:
    %r90 = call i32 @f(i32 12,i32 %r516)
    %r91 = icmp ne i32 %r90,0
    br i1 %r91, label %L20, label %L7
L24:
    %r83 = call i32 @f(i32 11,i32 %r516)
    %r84 = icmp ne i32 %r83,0
    br i1 %r84, label %L22, label %L7
L26:
    %r76 = call i32 @f(i32 10,i32 %r516)
    %r77 = icmp ne i32 %r76,0
    br i1 %r77, label %L24, label %L7
L28:
    %r69 = call i32 @f(i32 9,i32 %r516)
    %r70 = icmp ne i32 %r69,0
    br i1 %r70, label %L26, label %L7
L30:
    %r62 = call i32 @f(i32 8,i32 %r516)
    %r63 = icmp ne i32 %r62,0
    br i1 %r63, label %L28, label %L7
L32:
    %r55 = call i32 @f(i32 7,i32 %r516)
    %r56 = icmp ne i32 %r55,0
    br i1 %r56, label %L30, label %L7
L34:
    %r48 = call i32 @f(i32 6,i32 %r516)
    %r49 = icmp ne i32 %r48,0
    br i1 %r49, label %L32, label %L7
L36:
    %r41 = call i32 @f(i32 5,i32 %r516)
    %r42 = icmp ne i32 %r41,0
    br i1 %r42, label %L34, label %L7
L38:
    %r34 = call i32 @f(i32 4,i32 %r516)
    %r35 = icmp ne i32 %r34,0
    br i1 %r35, label %L36, label %L7
L40:
    %r27 = call i32 @f(i32 3,i32 %r516)
    %r28 = icmp ne i32 %r27,0
    br i1 %r28, label %L38, label %L7
L42:
    %r20 = call i32 @f(i32 2,i32 %r516)
    %r21 = icmp ne i32 %r20,0
    br i1 %r21, label %L40, label %L7
L44:
    %r13 = call i32 @f(i32 1,i32 %r516)
    %r14 = icmp ne i32 %r13,0
    br i1 %r14, label %L42, label %L7
L47:
    %r518 = phi i32 [%r297,%L48],[0,%L291]
    %r160 = call i32 @g(i32 0,i32 %r518)
    %r161 = icmp eq i32 %r160,0
    br i1 %r161, label %L88, label %L50
L48:
    %r300 = icmp slt i32 %r297,20
    br i1 %r300, label %L47, label %L49
L49:
    br label %L94
L50:
    br label %L51
L51:
    %r297 = add i32 %r518,1
    br label %L48
L52:
    %r290 = call i32 @g(i32 19,i32 %r518)
    %r291 = icmp ne i32 %r290,0
    br i1 %r291, label %L50, label %L51
L54:
    %r283 = call i32 @g(i32 18,i32 %r518)
    %r284 = icmp ne i32 %r283,0
    br i1 %r284, label %L50, label %L52
L56:
    %r276 = call i32 @g(i32 17,i32 %r518)
    %r277 = icmp ne i32 %r276,0
    br i1 %r277, label %L50, label %L54
L58:
    %r269 = call i32 @g(i32 16,i32 %r518)
    %r270 = icmp ne i32 %r269,0
    br i1 %r270, label %L50, label %L56
L60:
    %r262 = call i32 @g(i32 15,i32 %r518)
    %r263 = icmp ne i32 %r262,0
    br i1 %r263, label %L50, label %L58
L62:
    %r255 = call i32 @g(i32 14,i32 %r518)
    %r256 = icmp ne i32 %r255,0
    br i1 %r256, label %L50, label %L60
L64:
    %r248 = call i32 @g(i32 13,i32 %r518)
    %r249 = icmp ne i32 %r248,0
    br i1 %r249, label %L50, label %L62
L66:
    %r241 = call i32 @g(i32 12,i32 %r518)
    %r242 = icmp ne i32 %r241,0
    br i1 %r242, label %L50, label %L64
L68:
    %r234 = call i32 @g(i32 11,i32 %r518)
    %r235 = icmp ne i32 %r234,0
    br i1 %r235, label %L50, label %L66
L70:
    %r227 = call i32 @g(i32 10,i32 %r518)
    %r228 = icmp ne i32 %r227,0
    br i1 %r228, label %L50, label %L68
L72:
    %r220 = call i32 @g(i32 9,i32 %r518)
    %r221 = icmp ne i32 %r220,0
    br i1 %r221, label %L50, label %L70
L74:
    %r213 = call i32 @g(i32 8,i32 %r518)
    %r214 = icmp ne i32 %r213,0
    br i1 %r214, label %L50, label %L72
L76:
    %r206 = call i32 @g(i32 7,i32 %r518)
    %r207 = icmp ne i32 %r206,0
    br i1 %r207, label %L50, label %L74
L78:
    %r199 = call i32 @g(i32 6,i32 %r518)
    %r200 = icmp ne i32 %r199,0
    br i1 %r200, label %L50, label %L76
L80:
    %r192 = call i32 @g(i32 5,i32 %r518)
    %r193 = icmp ne i32 %r192,0
    br i1 %r193, label %L50, label %L78
L82:
    %r185 = call i32 @g(i32 4,i32 %r518)
    %r186 = icmp ne i32 %r185,0
    br i1 %r186, label %L50, label %L80
L84:
    %r178 = call i32 @g(i32 3,i32 %r518)
    %r179 = icmp ne i32 %r178,0
    br i1 %r179, label %L50, label %L82
L86:
    %r171 = call i32 @g(i32 2,i32 %r518)
    %r172 = icmp ne i32 %r171,0
    br i1 %r172, label %L50, label %L84
L88:
    %r164 = call i32 @g(i32 1,i32 %r518)
    %r165 = icmp ne i32 %r164,0
    br i1 %r165, label %L50, label %L86
L91:
    %r520 = phi i32 [1,%L292],[%r320,%L96]
    %r320 = add i32 %r520,1
    br label %L92
L92:
    %r323 = icmp slt i32 %r320,20
    br i1 %r323, label %L96, label %L93
L93:
    br label %L146
L94:
    %r313 = call i32 @f(i32 0,i32 1)
    %r314 = icmp ne i32 %r313,0
    br i1 %r314, label %L292, label %L93
L96:
    %r328 = sub i32 %r320,1
    %r330 = call i32 @f(i32 %r328,i32 %r320)
    %r331 = icmp ne i32 %r330,0
    br i1 %r331, label %L91, label %L93
L98:
    br label %L99
L99:
    br label %L152
L100:
    br label %L158
L102:
    br label %L164
L104:
    br label %L170
L106:
    br label %L107
L107:
    br label %L176
L108:
    br label %L182
L110:
    br label %L188
L112:
    br label %L194
L114:
    br label %L200
L116:
    br label %L117
L117:
    br label %L206
L118:
    br label %L212
L120:
    br label %L218
L122:
    br label %L224
L124:
    br label %L230
L126:
    br label %L236
L128:
    br label %L242
L130:
    br label %L131
L131:
    %r515 = phi i32 [1,%L130],[0,%L249]
    %r508 = load i32, ptr @sum
    %r510 = add i32 %r508,%r515
    call void @putint(i32 %r510)
    ret i32 0
L132:
    br label %L248
L134:
    br label %L254
L136:
    br label %L260
L138:
    br label %L266
L140:
    br label %L272
L142:
    br label %L278
L144:
    br label %L284
L146:
    br label %L148
L147:
    %r340 = icmp ne i32 %r526,0
    br i1 %r340, label %L104, label %L102
L148:
    %r522 = load i32, ptr @sum
    %r523 = add i32 %r522,3
    store i32 %r523, ptr @sum
    br label %L151
L150:
    %r525 = getelementptr [20 x i32], ptr @array, i32 0, i32 0
    %r526 = load i32, ptr %r525
    br label %L147
L151:
    br label %L150
L152:
    br label %L154
L153:
    %r368 = icmp eq i32 %r532,0
    br i1 %r368, label %L106, label %L110
L154:
    %r528 = load i32, ptr @sum
    %r529 = add i32 %r528,3
    store i32 %r529, ptr @sum
    br label %L157
L156:
    %r531 = getelementptr [20 x i32], ptr @array, i32 0, i32 4
    %r532 = load i32, ptr %r531
    br label %L153
L157:
    br label %L156
L158:
    br label %L160
L159:
    %r357 = icmp ne i32 %r538,0
    br i1 %r357, label %L98, label %L99
L160:
    %r534 = load i32, ptr @sum
    %r535 = add i32 %r534,3
    store i32 %r535, ptr @sum
    br label %L163
L162:
    %r537 = getelementptr [20 x i32], ptr @array, i32 0, i32 3
    %r538 = load i32, ptr %r537
    br label %L159
L163:
    br label %L162
L164:
    br label %L166
L165:
    %r349 = icmp eq i32 %r544,0
    br i1 %r349, label %L98, label %L100
L166:
    %r540 = load i32, ptr @sum
    %r541 = add i32 %r540,3
    store i32 %r541, ptr @sum
    br label %L169
L168:
    %r543 = getelementptr [20 x i32], ptr @array, i32 0, i32 2
    %r544 = load i32, ptr %r543
    br label %L165
L169:
    br label %L168
L170:
    br label %L172
L171:
    %r343 = icmp ne i32 %r550,0
    br i1 %r343, label %L98, label %L102
L172:
    %r546 = load i32, ptr @sum
    %r547 = add i32 %r546,3
    store i32 %r547, ptr @sum
    br label %L175
L174:
    %r549 = getelementptr [20 x i32], ptr @array, i32 0, i32 1
    %r550 = load i32, ptr %r549
    br label %L171
L175:
    br label %L174
L176:
    br label %L178
L177:
    %r406 = icmp ne i32 %r556,0
    br i1 %r406, label %L126, label %L124
L178:
    %r552 = load i32, ptr @sum
    %r553 = add i32 %r552,3
    store i32 %r553, ptr @sum
    br label %L181
L180:
    %r555 = getelementptr [20 x i32], ptr @array, i32 0, i32 9
    %r556 = load i32, ptr %r555
    br label %L177
L181:
    br label %L180
L182:
    br label %L184
L183:
    %r393 = icmp eq i32 %r562,0
    br i1 %r393, label %L106, label %L107
L184:
    %r558 = load i32, ptr @sum
    %r559 = add i32 %r558,3
    store i32 %r559, ptr @sum
    br label %L187
L186:
    %r561 = getelementptr [20 x i32], ptr @array, i32 0, i32 8
    %r562 = load i32, ptr %r561
    br label %L183
L187:
    br label %L186
L188:
    br label %L190
L189:
    %r373 = icmp ne i32 %r568,0
    br i1 %r373, label %L114, label %L108
L190:
    %r564 = load i32, ptr @sum
    %r565 = add i32 %r564,3
    store i32 %r565, ptr @sum
    br label %L193
L192:
    %r567 = getelementptr [20 x i32], ptr @array, i32 0, i32 5
    %r568 = load i32, ptr %r567
    br label %L189
L193:
    br label %L192
L194:
    br label %L196
L195:
    %r384 = icmp ne i32 %r574,0
    br i1 %r384, label %L106, label %L108
L196:
    %r570 = load i32, ptr @sum
    %r571 = add i32 %r570,3
    store i32 %r571, ptr @sum
    br label %L199
L198:
    %r573 = getelementptr [20 x i32], ptr @array, i32 0, i32 7
    %r574 = load i32, ptr %r573
    br label %L195
L199:
    br label %L198
L200:
    br label %L202
L201:
    %r376 = icmp eq i32 %r580,0
    br i1 %r376, label %L112, label %L108
L202:
    %r576 = load i32, ptr @sum
    %r577 = add i32 %r576,3
    store i32 %r577, ptr @sum
    br label %L205
L204:
    %r579 = getelementptr [20 x i32], ptr @array, i32 0, i32 6
    %r580 = load i32, ptr %r579
    br label %L201
L205:
    br label %L204
L206:
    br label %L208
L207:
    %r458 = icmp ne i32 %r586,0
    br i1 %r458, label %L142, label %L136
L208:
    %r582 = load i32, ptr @sum
    %r583 = add i32 %r582,3
    store i32 %r583, ptr @sum
    br label %L211
L210:
    %r585 = getelementptr [20 x i32], ptr @array, i32 0, i32 0
    %r586 = load i32, ptr %r585
    br label %L207
L211:
    br label %L210
L212:
    br label %L214
L213:
    %r441 = icmp ne i32 %r592,0
    br i1 %r441, label %L128, label %L117
L214:
    %r588 = load i32, ptr @sum
    %r589 = add i32 %r588,3
    store i32 %r589, ptr @sum
    br label %L217
L216:
    %r591 = getelementptr [20 x i32], ptr @array, i32 0, i32 14
    %r592 = load i32, ptr %r591
    br label %L213
L217:
    br label %L216
L218:
    br label %L220
L219:
    %r433 = icmp eq i32 %r598,0
    br i1 %r433, label %L116, label %L118
L220:
    %r594 = load i32, ptr @sum
    %r595 = add i32 %r594,3
    store i32 %r595, ptr @sum
    br label %L223
L222:
    %r597 = getelementptr [20 x i32], ptr @array, i32 0, i32 13
    %r598 = load i32, ptr %r597
    br label %L219
L223:
    br label %L222
L224:
    br label %L226
L225:
    %r425 = icmp eq i32 %r604,0
    br i1 %r425, label %L116, label %L120
L226:
    %r600 = load i32, ptr @sum
    %r601 = add i32 %r600,3
    store i32 %r601, ptr @sum
    br label %L229
L228:
    %r603 = getelementptr [20 x i32], ptr @array, i32 0, i32 12
    %r604 = load i32, ptr %r603
    br label %L225
L229:
    br label %L228
L230:
    br label %L232
L231:
    %r417 = icmp eq i32 %r610,0
    br i1 %r417, label %L116, label %L122
L232:
    %r606 = load i32, ptr @sum
    %r607 = add i32 %r606,3
    store i32 %r607, ptr @sum
    br label %L235
L234:
    %r609 = getelementptr [20 x i32], ptr @array, i32 0, i32 11
    %r610 = load i32, ptr %r609
    br label %L231
L235:
    br label %L234
L236:
    br label %L238
L237:
    %r409 = icmp eq i32 %r616,0
    br i1 %r409, label %L116, label %L124
L238:
    %r612 = load i32, ptr @sum
    %r613 = add i32 %r612,3
    store i32 %r613, ptr @sum
    br label %L241
L240:
    %r615 = getelementptr [20 x i32], ptr @array, i32 0, i32 10
    %r616 = load i32, ptr %r615
    br label %L237
L241:
    br label %L240
L242:
    br label %L244
L243:
    %r444 = icmp ne i32 %r622,0
    br i1 %r444, label %L116, label %L117
L244:
    %r618 = load i32, ptr @sum
    %r619 = add i32 %r618,3
    store i32 %r619, ptr @sum
    br label %L247
L246:
    %r621 = getelementptr [20 x i32], ptr @array, i32 0, i32 15
    %r622 = load i32, ptr %r621
    br label %L243
L247:
    br label %L246
L248:
    br label %L250
L249:
    %r503 = icmp ne i32 %r628,0
    br i1 %r503, label %L130, label %L131
L250:
    %r624 = load i32, ptr @sum
    %r625 = add i32 %r624,3
    store i32 %r625, ptr @sum
    br label %L253
L252:
    %r627 = getelementptr [20 x i32], ptr @array, i32 0, i32 8
    %r628 = load i32, ptr %r627
    br label %L249
L253:
    br label %L252
L254:
    br label %L256
L255:
    %r489 = icmp ne i32 %r634,0
    br i1 %r489, label %L144, label %L132
L256:
    %r630 = load i32, ptr @sum
    %r631 = add i32 %r630,3
    store i32 %r631, ptr @sum
    br label %L259
L258:
    %r633 = getelementptr [20 x i32], ptr @array, i32 0, i32 6
    %r634 = load i32, ptr %r633
    br label %L255
L259:
    br label %L258
L260:
    br label %L262
L261:
    %r483 = icmp ne i32 %r640,0
    br i1 %r483, label %L130, label %L134
L262:
    %r636 = load i32, ptr @sum
    %r637 = add i32 %r636,3
    store i32 %r637, ptr @sum
    br label %L265
L264:
    %r639 = getelementptr [20 x i32], ptr @array, i32 0, i32 5
    %r640 = load i32, ptr %r639
    br label %L261
L265:
    br label %L264
L266:
    br label %L268
L267:
    %r475 = icmp eq i32 %r646,0
    br i1 %r475, label %L130, label %L136
L268:
    %r642 = load i32, ptr @sum
    %r643 = add i32 %r642,3
    store i32 %r643, ptr @sum
    br label %L271
L270:
    %r645 = getelementptr [20 x i32], ptr @array, i32 0, i32 4
    %r646 = load i32, ptr %r645
    br label %L267
L271:
    br label %L270
L272:
    br label %L274
L273:
    %r467 = icmp eq i32 %r652,0
    br i1 %r467, label %L138, label %L136
L274:
    %r648 = load i32, ptr @sum
    %r649 = add i32 %r648,3
    store i32 %r649, ptr @sum
    br label %L277
L276:
    %r651 = getelementptr [20 x i32], ptr @array, i32 0, i32 3
    %r652 = load i32, ptr %r651
    br label %L273
L277:
    br label %L276
L278:
    br label %L280
L279:
    %r461 = icmp ne i32 %r658,0
    br i1 %r461, label %L140, label %L136
L280:
    %r654 = load i32, ptr @sum
    %r655 = add i32 %r654,3
    store i32 %r655, ptr @sum
    br label %L283
L282:
    %r657 = getelementptr [20 x i32], ptr @array, i32 0, i32 2
    %r658 = load i32, ptr %r657
    br label %L279
L283:
    br label %L282
L284:
    br label %L286
L285:
    %r492 = icmp eq i32 %r664,0
    br i1 %r492, label %L130, label %L132
L286:
    %r660 = load i32, ptr @sum
    %r661 = add i32 %r660,3
    store i32 %r661, ptr @sum
    br label %L289
L288:
    %r663 = getelementptr [20 x i32], ptr @array, i32 0, i32 7
    %r664 = load i32, ptr %r663
    br label %L285
L289:
    br label %L288
L290:
    br label %L3
L291:
    br label %L47
L292:
    br label %L91
}
