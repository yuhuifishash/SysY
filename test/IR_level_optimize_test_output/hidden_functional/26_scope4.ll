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
@a = global i32 zeroinitializer
@sum = global i32 zeroinitializer
@count = global i32 0
define i32 @getA()
{
L0:
    br label %L1
L1:
    %r0 = load i32, ptr @count
    %r2 = add i32 %r0,1
    store i32 %r2, ptr @count
    %r3 = load i32, ptr @count
    ret i32 %r3
}
define void @f1(i32 %r0)
{
L0:
    br label %L1
L1:
    %r2 = load i32, ptr @sum
    %r4 = add i32 %r2,%r0
    store i32 %r4, ptr @sum
    br label %L4
L2:
    br label %L7
L3:
    %r16 = load i32, ptr @sum
    %r18 = add i32 %r16,%r24
    store i32 %r18, ptr @sum
    %r19 = load i32, ptr @sum
    %r21 = add i32 %r19,%r24
    store i32 %r21, ptr @sum
    ret void
L4:
    br label %L6
L5:
    %r6 = load i32, ptr @sum
    %r8 = add i32 %r6,%r24
    store i32 %r8, ptr @sum
    br label %L2
L6:
    %r22 = load i32, ptr @count
    %r23 = add i32 %r22,1
    store i32 %r23, ptr @count
    %r24 = load i32, ptr @count
    br label %L5
L7:
    br label %L9
L8:
    %r13 = load i32, ptr @sum
    %r15 = add i32 %r13,%r27
    store i32 %r15, ptr @sum
    br label %L3
L9:
    %r25 = load i32, ptr @count
    %r26 = add i32 %r25,1
    store i32 %r26, ptr @count
    %r27 = load i32, ptr @count
    br label %L8
}
define void @f2()
{
L0:
    br label %L1
L1:
    %r0 = load i32, ptr @sum
    %r1 = load i32, ptr @a
    %r2 = add i32 %r0,%r1
    store i32 %r2, ptr @sum
    br label %L2
L2:
    br label %L4
L3:
    %r5 = load i32, ptr @sum
    %r6 = load i32, ptr @a
    %r7 = add i32 %r5,%r6
    store i32 %r7, ptr @sum
    ret void
L4:
    %r8 = load i32, ptr @count
    %r9 = add i32 %r8,1
    store i32 %r9, ptr @count
    br label %L3
}
define void @f3()
{
L0:
    br label %L1
L1:
    br label %L2
L2:
    br label %L4
L3:
    %r2 = load i32, ptr @sum
    %r4 = add i32 %r2,%r16
    store i32 %r4, ptr @sum
    br label %L5
L4:
    %r14 = load i32, ptr @count
    %r15 = add i32 %r14,1
    store i32 %r15, ptr @count
    %r16 = load i32, ptr @count
    br label %L3
L5:
    br label %L7
L6:
    %r6 = load i32, ptr @sum
    %r8 = add i32 %r6,%r19
    store i32 %r8, ptr @sum
    br label %L8
L7:
    %r17 = load i32, ptr @count
    %r18 = add i32 %r17,1
    store i32 %r18, ptr @count
    %r19 = load i32, ptr @count
    br label %L6
L8:
    br label %L10
L9:
    %r11 = load i32, ptr @sum
    %r13 = add i32 %r11,%r19
    store i32 %r13, ptr @sum
    ret void
L10:
    %r20 = load i32, ptr @count
    %r21 = add i32 %r20,1
    store i32 %r21, ptr @count
    br label %L9
}
define i32 @main()
{
L0:
    br label %L1
L1:
    store i32 0, ptr @sum
    br label %L28
L3:
    br label %L7
L5:
    %r67 = load i32, ptr @sum
    call void @putint(i32 %r67)
    ret i32 0
L7:
    br label %L235
L9:
    br label %L5
L11:
    %r76 = phi i32 [%r80,%L12],[%r112,%L235]
    %r72 = phi i32 [%r71,%L12],[0,%L235]
    br label %L15
L12:
    %r80 = phi i32 [%r76,%L89],[%r109,%L47]
    %r71 = phi i32 [%r52,%L89],[%r57,%L47]
    %r60 = icmp slt i32 %r71,3
    br i1 %r60, label %L11, label %L13
L13:
    br label %L9
L15:
    br label %L18
L17:
    %r44 = icmp eq i32 %r72,1
    br i1 %r44, label %L21, label %L22
L18:
    call void @f1(i32 %r76)
    br label %L31
L21:
    br label %L37
L22:
    call void @f1(i32 %r76)
    br label %L40
L23:
    br label %L46
L28:
    br label %L30
L29:
    store i32 %r83, ptr @a
    %r2 = load i32, ptr @sum
    %r3 = load i32, ptr @a
    %r4 = add i32 %r2,%r3
    store i32 %r4, ptr @sum
    br label %L49
L30:
    %r81 = load i32, ptr @count
    %r82 = add i32 %r81,1
    store i32 %r82, ptr @count
    %r83 = load i32, ptr @count
    br label %L29
L31:
    br label %L33
L32:
    br label %L52
L33:
    %r84 = load i32, ptr @sum
    %r85 = load i32, ptr @a
    %r86 = add i32 %r84,%r85
    store i32 %r86, ptr @sum
    br label %L34
L34:
    br label %L36
L35:
    %r89 = load i32, ptr @sum
    %r90 = load i32, ptr @a
    %r91 = add i32 %r89,%r90
    store i32 %r91, ptr @sum
    br label %L32
L36:
    %r92 = load i32, ptr @count
    %r93 = add i32 %r92,1
    store i32 %r93, ptr @count
    br label %L35
L37:
    br label %L39
L38:
    call void @f1(i32 %r96)
    br label %L64
L39:
    %r94 = load i32, ptr @count
    %r95 = add i32 %r94,1
    store i32 %r95, ptr @count
    %r96 = load i32, ptr @count
    br label %L38
L40:
    br label %L42
L41:
    br label %L70
L42:
    %r97 = load i32, ptr @sum
    %r98 = load i32, ptr @a
    %r99 = add i32 %r97,%r98
    store i32 %r99, ptr @sum
    br label %L43
L43:
    br label %L45
L44:
    %r102 = load i32, ptr @sum
    %r103 = load i32, ptr @a
    %r104 = add i32 %r102,%r103
    store i32 %r104, ptr @sum
    br label %L41
L45:
    %r105 = load i32, ptr @count
    %r106 = add i32 %r105,1
    store i32 %r106, ptr @count
    br label %L44
L46:
    br label %L48
L47:
    %r57 = add i32 %r72,1
    br label %L12
L48:
    %r107 = load i32, ptr @count
    %r108 = add i32 %r107,1
    store i32 %r108, ptr @count
    %r109 = load i32, ptr @count
    br label %L47
L49:
    br label %L51
L50:
    call void @f1(i32 %r112)
    br label %L82
L51:
    %r110 = load i32, ptr @count
    %r111 = add i32 %r110,1
    store i32 %r111, ptr @count
    %r112 = load i32, ptr @count
    br label %L50
L52:
    br label %L54
L53:
    br label %L17
L54:
    br label %L55
L55:
    br label %L57
L56:
    %r115 = load i32, ptr @sum
    %r116 = add i32 %r115,%r113
    store i32 %r116, ptr @sum
    br label %L58
L57:
    %r117 = load i32, ptr @count
    %r118 = add i32 %r117,1
    store i32 %r118, ptr @count
    %r113 = load i32, ptr @count
    br label %L56
L58:
    br label %L60
L59:
    %r121 = load i32, ptr @sum
    %r122 = add i32 %r121,%r119
    store i32 %r122, ptr @sum
    br label %L61
L60:
    %r123 = load i32, ptr @count
    %r124 = add i32 %r123,1
    store i32 %r124, ptr @count
    %r119 = load i32, ptr @count
    br label %L59
L61:
    br label %L63
L62:
    %r127 = load i32, ptr @sum
    %r128 = add i32 %r127,%r119
    store i32 %r128, ptr @sum
    br label %L53
L63:
    %r129 = load i32, ptr @count
    %r130 = add i32 %r129,1
    store i32 %r130, ptr @count
    br label %L62
L64:
    br label %L66
L65:
    br label %L88
L66:
    %r131 = load i32, ptr @sum
    %r132 = load i32, ptr @a
    %r133 = add i32 %r131,%r132
    store i32 %r133, ptr @sum
    br label %L67
L67:
    br label %L69
L68:
    %r136 = load i32, ptr @sum
    %r137 = load i32, ptr @a
    %r138 = add i32 %r136,%r137
    store i32 %r138, ptr @sum
    br label %L65
L69:
    %r139 = load i32, ptr @count
    %r140 = add i32 %r139,1
    store i32 %r140, ptr @count
    br label %L68
L70:
    br label %L72
L71:
    br label %L23
L72:
    br label %L73
L73:
    br label %L75
L74:
    %r143 = load i32, ptr @sum
    %r144 = add i32 %r143,%r141
    store i32 %r144, ptr @sum
    br label %L76
L75:
    %r145 = load i32, ptr @count
    %r146 = add i32 %r145,1
    store i32 %r146, ptr @count
    %r141 = load i32, ptr @count
    br label %L74
L76:
    br label %L78
L77:
    %r149 = load i32, ptr @sum
    %r150 = add i32 %r149,%r147
    store i32 %r150, ptr @sum
    br label %L79
L78:
    %r151 = load i32, ptr @count
    %r152 = add i32 %r151,1
    store i32 %r152, ptr @count
    %r147 = load i32, ptr @count
    br label %L77
L79:
    br label %L81
L80:
    %r155 = load i32, ptr @sum
    %r156 = add i32 %r155,%r147
    store i32 %r156, ptr @sum
    br label %L71
L81:
    %r157 = load i32, ptr @count
    %r158 = add i32 %r157,1
    store i32 %r158, ptr @count
    br label %L80
L82:
    br label %L84
L83:
    br label %L100
L84:
    %r159 = load i32, ptr @sum
    %r160 = load i32, ptr @a
    %r161 = add i32 %r159,%r160
    store i32 %r161, ptr @sum
    br label %L85
L85:
    br label %L87
L86:
    %r164 = load i32, ptr @sum
    %r165 = load i32, ptr @a
    %r166 = add i32 %r164,%r165
    store i32 %r166, ptr @sum
    br label %L83
L87:
    %r167 = load i32, ptr @count
    %r168 = add i32 %r167,1
    store i32 %r168, ptr @count
    br label %L86
L88:
    br label %L90
L89:
    %r52 = add i32 %r72,1
    br label %L12
L90:
    br label %L91
L91:
    br label %L93
L92:
    %r171 = load i32, ptr @sum
    %r172 = add i32 %r171,%r169
    store i32 %r172, ptr @sum
    br label %L94
L93:
    %r173 = load i32, ptr @count
    %r174 = add i32 %r173,1
    store i32 %r174, ptr @count
    %r169 = load i32, ptr @count
    br label %L92
L94:
    br label %L96
L95:
    %r177 = load i32, ptr @sum
    %r178 = add i32 %r177,%r175
    store i32 %r178, ptr @sum
    br label %L97
L96:
    %r179 = load i32, ptr @count
    %r180 = add i32 %r179,1
    store i32 %r180, ptr @count
    %r175 = load i32, ptr @count
    br label %L95
L97:
    br label %L99
L98:
    %r183 = load i32, ptr @sum
    %r184 = add i32 %r183,%r175
    store i32 %r184, ptr @sum
    br label %L89
L99:
    %r185 = load i32, ptr @count
    %r186 = add i32 %r185,1
    store i32 %r186, ptr @count
    br label %L98
L100:
    br label %L102
L101:
    call void @f1(i32 %r112)
    br label %L112
L102:
    br label %L103
L103:
    br label %L105
L104:
    %r189 = load i32, ptr @sum
    %r190 = add i32 %r189,%r187
    store i32 %r190, ptr @sum
    br label %L106
L105:
    %r191 = load i32, ptr @count
    %r192 = add i32 %r191,1
    store i32 %r192, ptr @count
    %r187 = load i32, ptr @count
    br label %L104
L106:
    br label %L108
L107:
    %r195 = load i32, ptr @sum
    %r196 = add i32 %r195,%r193
    store i32 %r196, ptr @sum
    br label %L109
L108:
    %r197 = load i32, ptr @count
    %r198 = add i32 %r197,1
    store i32 %r198, ptr @count
    %r193 = load i32, ptr @count
    br label %L107
L109:
    br label %L111
L110:
    %r201 = load i32, ptr @sum
    %r202 = add i32 %r201,%r193
    store i32 %r202, ptr @sum
    br label %L101
L111:
    %r203 = load i32, ptr @count
    %r204 = add i32 %r203,1
    store i32 %r204, ptr @count
    br label %L110
L112:
    br label %L114
L113:
    br label %L118
L114:
    %r205 = load i32, ptr @sum
    %r206 = load i32, ptr @a
    %r207 = add i32 %r205,%r206
    store i32 %r207, ptr @sum
    br label %L115
L115:
    br label %L117
L116:
    %r210 = load i32, ptr @sum
    %r211 = load i32, ptr @a
    %r212 = add i32 %r210,%r211
    store i32 %r212, ptr @sum
    br label %L113
L117:
    %r213 = load i32, ptr @count
    %r214 = add i32 %r213,1
    store i32 %r214, ptr @count
    br label %L116
L118:
    br label %L120
L119:
    br label %L130
L120:
    br label %L121
L121:
    br label %L123
L122:
    %r217 = load i32, ptr @sum
    %r218 = add i32 %r217,%r215
    store i32 %r218, ptr @sum
    br label %L124
L123:
    %r219 = load i32, ptr @count
    %r220 = add i32 %r219,1
    store i32 %r220, ptr @count
    %r215 = load i32, ptr @count
    br label %L122
L124:
    br label %L126
L125:
    %r223 = load i32, ptr @sum
    %r224 = add i32 %r223,%r221
    store i32 %r224, ptr @sum
    br label %L127
L126:
    %r225 = load i32, ptr @count
    %r226 = add i32 %r225,1
    store i32 %r226, ptr @count
    %r221 = load i32, ptr @count
    br label %L125
L127:
    br label %L129
L128:
    %r229 = load i32, ptr @sum
    %r230 = add i32 %r229,%r221
    store i32 %r230, ptr @sum
    br label %L119
L129:
    %r231 = load i32, ptr @count
    %r232 = add i32 %r231,1
    store i32 %r232, ptr @count
    br label %L128
L130:
    br label %L132
L131:
    call void @f1(i32 %r112)
    br label %L133
L132:
    %r233 = load i32, ptr @count
    %r234 = add i32 %r233,1
    store i32 %r234, ptr @count
    br label %L131
L133:
    br label %L135
L134:
    br label %L139
L135:
    %r236 = load i32, ptr @sum
    %r237 = load i32, ptr @a
    %r238 = add i32 %r236,%r237
    store i32 %r238, ptr @sum
    br label %L136
L136:
    br label %L138
L137:
    %r241 = load i32, ptr @sum
    %r242 = load i32, ptr @a
    %r243 = add i32 %r241,%r242
    store i32 %r243, ptr @sum
    br label %L134
L138:
    %r244 = load i32, ptr @count
    %r245 = add i32 %r244,1
    store i32 %r245, ptr @count
    br label %L137
L139:
    br label %L141
L140:
    br label %L151
L141:
    br label %L142
L142:
    br label %L144
L143:
    %r248 = load i32, ptr @sum
    %r249 = add i32 %r248,%r246
    store i32 %r249, ptr @sum
    br label %L145
L144:
    %r250 = load i32, ptr @count
    %r251 = add i32 %r250,1
    store i32 %r251, ptr @count
    %r246 = load i32, ptr @count
    br label %L143
L145:
    br label %L147
L146:
    %r254 = load i32, ptr @sum
    %r255 = add i32 %r254,%r252
    store i32 %r255, ptr @sum
    br label %L148
L147:
    %r256 = load i32, ptr @count
    %r257 = add i32 %r256,1
    store i32 %r257, ptr @count
    %r252 = load i32, ptr @count
    br label %L146
L148:
    br label %L150
L149:
    %r260 = load i32, ptr @sum
    %r261 = add i32 %r260,%r252
    store i32 %r261, ptr @sum
    br label %L140
L150:
    %r262 = load i32, ptr @count
    %r263 = add i32 %r262,1
    store i32 %r263, ptr @count
    br label %L149
L151:
    br label %L153
L152:
    br label %L154
L153:
    %r264 = load i32, ptr @count
    %r265 = add i32 %r264,1
    store i32 %r265, ptr @count
    br label %L152
L154:
    br label %L156
L155:
    call void @f1(i32 %r269)
    br label %L157
L156:
    %r267 = load i32, ptr @count
    %r268 = add i32 %r267,1
    store i32 %r268, ptr @count
    %r269 = load i32, ptr @count
    br label %L155
L157:
    br label %L159
L158:
    br label %L163
L159:
    %r270 = load i32, ptr @sum
    %r271 = load i32, ptr @a
    %r272 = add i32 %r270,%r271
    store i32 %r272, ptr @sum
    br label %L160
L160:
    br label %L162
L161:
    %r275 = load i32, ptr @sum
    %r276 = load i32, ptr @a
    %r277 = add i32 %r275,%r276
    store i32 %r277, ptr @sum
    br label %L158
L162:
    %r278 = load i32, ptr @count
    %r279 = add i32 %r278,1
    store i32 %r279, ptr @count
    br label %L161
L163:
    br label %L165
L164:
    br label %L175
L165:
    br label %L166
L166:
    br label %L168
L167:
    %r282 = load i32, ptr @sum
    %r283 = add i32 %r282,%r280
    store i32 %r283, ptr @sum
    br label %L169
L168:
    %r284 = load i32, ptr @count
    %r285 = add i32 %r284,1
    store i32 %r285, ptr @count
    %r280 = load i32, ptr @count
    br label %L167
L169:
    br label %L171
L170:
    %r288 = load i32, ptr @sum
    %r289 = add i32 %r288,%r286
    store i32 %r289, ptr @sum
    br label %L172
L171:
    %r290 = load i32, ptr @count
    %r291 = add i32 %r290,1
    store i32 %r291, ptr @count
    %r286 = load i32, ptr @count
    br label %L170
L172:
    br label %L174
L173:
    %r294 = load i32, ptr @sum
    %r295 = add i32 %r294,%r286
    store i32 %r295, ptr @sum
    br label %L164
L174:
    %r296 = load i32, ptr @count
    %r297 = add i32 %r296,1
    store i32 %r297, ptr @count
    br label %L173
L175:
    br label %L177
L176:
    call void @f1(i32 %r300)
    br label %L178
L177:
    %r298 = load i32, ptr @count
    %r299 = add i32 %r298,1
    store i32 %r299, ptr @count
    %r300 = load i32, ptr @count
    br label %L176
L178:
    br label %L180
L179:
    br label %L184
L180:
    %r301 = load i32, ptr @sum
    %r302 = load i32, ptr @a
    %r303 = add i32 %r301,%r302
    store i32 %r303, ptr @sum
    br label %L181
L181:
    br label %L183
L182:
    %r306 = load i32, ptr @sum
    %r307 = load i32, ptr @a
    %r308 = add i32 %r306,%r307
    store i32 %r308, ptr @sum
    br label %L179
L183:
    %r309 = load i32, ptr @count
    %r310 = add i32 %r309,1
    store i32 %r310, ptr @count
    br label %L182
L184:
    br label %L186
L185:
    br label %L196
L186:
    br label %L187
L187:
    br label %L189
L188:
    %r313 = load i32, ptr @sum
    %r314 = add i32 %r313,%r311
    store i32 %r314, ptr @sum
    br label %L190
L189:
    %r315 = load i32, ptr @count
    %r316 = add i32 %r315,1
    store i32 %r316, ptr @count
    %r311 = load i32, ptr @count
    br label %L188
L190:
    br label %L192
L191:
    %r319 = load i32, ptr @sum
    %r320 = add i32 %r319,%r317
    store i32 %r320, ptr @sum
    br label %L193
L192:
    %r321 = load i32, ptr @count
    %r322 = add i32 %r321,1
    store i32 %r322, ptr @count
    %r317 = load i32, ptr @count
    br label %L191
L193:
    br label %L195
L194:
    %r325 = load i32, ptr @sum
    %r326 = add i32 %r325,%r317
    store i32 %r326, ptr @sum
    br label %L185
L195:
    %r327 = load i32, ptr @count
    %r328 = add i32 %r327,1
    store i32 %r328, ptr @count
    br label %L194
L196:
    br label %L198
L197:
    call void @f1(i32 %r331)
    br label %L199
L198:
    %r329 = load i32, ptr @count
    %r330 = add i32 %r329,1
    store i32 %r330, ptr @count
    %r331 = load i32, ptr @count
    br label %L197
L199:
    br label %L201
L200:
    br label %L205
L201:
    %r332 = load i32, ptr @sum
    %r333 = load i32, ptr @a
    %r334 = add i32 %r332,%r333
    store i32 %r334, ptr @sum
    br label %L202
L202:
    br label %L204
L203:
    %r337 = load i32, ptr @sum
    %r338 = load i32, ptr @a
    %r339 = add i32 %r337,%r338
    store i32 %r339, ptr @sum
    br label %L200
L204:
    %r340 = load i32, ptr @count
    %r341 = add i32 %r340,1
    store i32 %r341, ptr @count
    br label %L203
L205:
    br label %L207
L206:
    call void @f1(i32 %r112)
    br label %L217
L207:
    br label %L208
L208:
    br label %L210
L209:
    %r344 = load i32, ptr @sum
    %r345 = add i32 %r344,%r342
    store i32 %r345, ptr @sum
    br label %L211
L210:
    %r346 = load i32, ptr @count
    %r347 = add i32 %r346,1
    store i32 %r347, ptr @count
    %r342 = load i32, ptr @count
    br label %L209
L211:
    br label %L213
L212:
    %r350 = load i32, ptr @sum
    %r351 = add i32 %r350,%r348
    store i32 %r351, ptr @sum
    br label %L214
L213:
    %r352 = load i32, ptr @count
    %r353 = add i32 %r352,1
    store i32 %r353, ptr @count
    %r348 = load i32, ptr @count
    br label %L212
L214:
    br label %L216
L215:
    %r356 = load i32, ptr @sum
    %r357 = add i32 %r356,%r348
    store i32 %r357, ptr @sum
    br label %L206
L216:
    %r358 = load i32, ptr @count
    %r359 = add i32 %r358,1
    store i32 %r359, ptr @count
    br label %L215
L217:
    br label %L219
L218:
    br label %L223
L219:
    %r360 = load i32, ptr @sum
    %r361 = load i32, ptr @a
    %r362 = add i32 %r360,%r361
    store i32 %r362, ptr @sum
    br label %L220
L220:
    br label %L222
L221:
    %r365 = load i32, ptr @sum
    %r366 = load i32, ptr @a
    %r367 = add i32 %r365,%r366
    store i32 %r367, ptr @sum
    br label %L218
L222:
    %r368 = load i32, ptr @count
    %r369 = add i32 %r368,1
    store i32 %r369, ptr @count
    br label %L221
L223:
    br label %L225
L224:
    br label %L3
L225:
    br label %L226
L226:
    br label %L228
L227:
    %r372 = load i32, ptr @sum
    %r373 = add i32 %r372,%r370
    store i32 %r373, ptr @sum
    br label %L229
L228:
    %r374 = load i32, ptr @count
    %r375 = add i32 %r374,1
    store i32 %r375, ptr @count
    %r370 = load i32, ptr @count
    br label %L227
L229:
    br label %L231
L230:
    %r378 = load i32, ptr @sum
    %r379 = add i32 %r378,%r376
    store i32 %r379, ptr @sum
    br label %L232
L231:
    %r380 = load i32, ptr @count
    %r381 = add i32 %r380,1
    store i32 %r381, ptr @count
    %r376 = load i32, ptr @count
    br label %L230
L232:
    br label %L234
L233:
    %r384 = load i32, ptr @sum
    %r385 = add i32 %r384,%r376
    store i32 %r385, ptr @sum
    br label %L224
L234:
    %r386 = load i32, ptr @count
    %r387 = add i32 %r386,1
    store i32 %r387, ptr @count
    br label %L233
L235:
    br label %L11
}
