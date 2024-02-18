.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#24
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-24]
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	@%r6 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	cmp r8,r7
	blt .mainL3
.mainL5:
	mov r8,#0
	mov r0,r8
	add sp,sp,#24
	pop {r6,r7,r8}
	pop {fp,pc}
.mainL3:
	mov r8,#0
	str r8,[fp,#-20]
	@%r15 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-24]
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL9
.mainL7:
	ldr r8,[fp,#-20]
	mov r7,#100
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL8:
	ldr r8,[fp,#-20]
	@call void @putint(i32 %r1603)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#10
	@call void @putch(i32 %r1604)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.mainL4:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	cmp r8,r7
	blt .mainL3
	bge .mainL5
.mainL9:
	ldr r8,[fp,#-24]
	mov r7,#100
	cmp r8,r7
	bge .mainL7
.mainL6:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL14
.mainL12:
	ldr r8,[fp,#-20]
	mov r7,#99
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL13:
	bl .mainL8
.mainL14:
	ldr r8,[fp,#-24]
	mov r7,#99
	cmp r8,r7
	bge .mainL12
.mainL11:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL19
.mainL17:
	ldr r8,[fp,#-20]
	mov r7,#98
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL18:
	bl .mainL13
.mainL19:
	ldr r8,[fp,#-24]
	mov r7,#98
	cmp r8,r7
	bge .mainL17
.mainL16:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL24
.mainL22:
	ldr r8,[fp,#-20]
	mov r7,#97
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL23:
	bl .mainL18
.mainL24:
	ldr r8,[fp,#-24]
	mov r7,#97
	cmp r8,r7
	bge .mainL22
.mainL21:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL29
.mainL27:
	ldr r8,[fp,#-20]
	mov r7,#96
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL28:
	bl .mainL23
.mainL29:
	ldr r8,[fp,#-24]
	mov r7,#96
	cmp r8,r7
	bge .mainL27
.mainL26:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL34
.mainL32:
	ldr r8,[fp,#-20]
	mov r7,#95
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL33:
	bl .mainL28
.mainL34:
	ldr r8,[fp,#-24]
	mov r7,#95
	cmp r8,r7
	bge .mainL32
.mainL31:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL39
.mainL37:
	ldr r8,[fp,#-20]
	mov r7,#94
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL38:
	bl .mainL33
.mainL39:
	ldr r8,[fp,#-24]
	mov r7,#94
	cmp r8,r7
	bge .mainL37
.mainL36:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL44
.mainL42:
	ldr r8,[fp,#-20]
	mov r7,#93
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL43:
	bl .mainL38
.mainL44:
	ldr r8,[fp,#-24]
	mov r7,#93
	cmp r8,r7
	bge .mainL42
.mainL41:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL49
.mainL47:
	ldr r8,[fp,#-20]
	mov r7,#92
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL48:
	bl .mainL43
.mainL49:
	ldr r8,[fp,#-24]
	mov r7,#92
	cmp r8,r7
	bge .mainL47
.mainL46:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL54
.mainL52:
	ldr r8,[fp,#-20]
	mov r7,#91
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL53:
	bl .mainL48
.mainL54:
	ldr r8,[fp,#-24]
	mov r7,#91
	cmp r8,r7
	bge .mainL52
.mainL51:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL59
.mainL57:
	ldr r8,[fp,#-20]
	mov r7,#90
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL58:
	bl .mainL53
.mainL59:
	ldr r8,[fp,#-24]
	mov r7,#90
	cmp r8,r7
	bge .mainL57
.mainL56:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL64
.mainL62:
	ldr r8,[fp,#-20]
	mov r7,#89
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL63:
	bl .mainL58
.mainL64:
	ldr r8,[fp,#-24]
	mov r7,#89
	cmp r8,r7
	bge .mainL62
.mainL61:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL69
.mainL67:
	ldr r8,[fp,#-20]
	mov r7,#88
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL68:
	bl .mainL63
.mainL69:
	ldr r8,[fp,#-24]
	mov r7,#88
	cmp r8,r7
	bge .mainL67
.mainL66:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL74
.mainL72:
	ldr r8,[fp,#-20]
	mov r7,#87
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL73:
	bl .mainL68
.mainL74:
	ldr r8,[fp,#-24]
	mov r7,#87
	cmp r8,r7
	bge .mainL72
.mainL71:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL79
.mainL77:
	ldr r8,[fp,#-20]
	mov r7,#86
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL78:
	bl .mainL73
.mainL79:
	ldr r8,[fp,#-24]
	mov r7,#86
	cmp r8,r7
	bge .mainL77
.mainL76:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL84
.mainL82:
	ldr r8,[fp,#-20]
	mov r7,#85
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL83:
	bl .mainL78
.mainL84:
	ldr r8,[fp,#-24]
	mov r7,#85
	cmp r8,r7
	bge .mainL82
.mainL81:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL89
.mainL87:
	ldr r8,[fp,#-20]
	mov r7,#84
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL88:
	bl .mainL83
.mainL89:
	ldr r8,[fp,#-24]
	mov r7,#84
	cmp r8,r7
	bge .mainL87
.mainL86:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL94
.mainL92:
	ldr r8,[fp,#-20]
	mov r7,#83
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL93:
	bl .mainL88
.mainL94:
	ldr r8,[fp,#-24]
	mov r7,#83
	cmp r8,r7
	bge .mainL92
.mainL91:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL99
.mainL97:
	ldr r8,[fp,#-20]
	mov r7,#82
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL98:
	bl .mainL93
.mainL99:
	ldr r8,[fp,#-24]
	mov r7,#82
	cmp r8,r7
	bge .mainL97
.mainL96:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL104
.mainL102:
	ldr r8,[fp,#-20]
	mov r7,#81
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL103:
	bl .mainL98
.mainL104:
	ldr r8,[fp,#-24]
	mov r7,#81
	cmp r8,r7
	bge .mainL102
.mainL101:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL109
.mainL107:
	ldr r8,[fp,#-20]
	mov r7,#80
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL108:
	bl .mainL103
.mainL109:
	ldr r8,[fp,#-24]
	mov r7,#80
	cmp r8,r7
	bge .mainL107
.mainL106:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL114
.mainL112:
	ldr r8,[fp,#-20]
	mov r7,#79
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL113:
	bl .mainL108
.mainL114:
	ldr r8,[fp,#-24]
	mov r7,#79
	cmp r8,r7
	bge .mainL112
.mainL111:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL119
.mainL117:
	ldr r8,[fp,#-20]
	mov r7,#78
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL118:
	bl .mainL113
.mainL119:
	ldr r8,[fp,#-24]
	mov r7,#78
	cmp r8,r7
	bge .mainL117
.mainL116:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL124
.mainL122:
	ldr r8,[fp,#-20]
	mov r7,#77
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL123:
	bl .mainL118
.mainL124:
	ldr r8,[fp,#-24]
	mov r7,#77
	cmp r8,r7
	bge .mainL122
.mainL121:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL129
.mainL127:
	ldr r8,[fp,#-20]
	mov r7,#76
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL128:
	bl .mainL123
.mainL129:
	ldr r8,[fp,#-24]
	mov r7,#76
	cmp r8,r7
	bge .mainL127
.mainL126:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL134
.mainL132:
	ldr r8,[fp,#-20]
	mov r7,#75
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL133:
	bl .mainL128
.mainL134:
	ldr r8,[fp,#-24]
	mov r7,#75
	cmp r8,r7
	bge .mainL132
.mainL131:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL139
.mainL137:
	ldr r8,[fp,#-20]
	mov r7,#74
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL138:
	bl .mainL133
.mainL139:
	ldr r8,[fp,#-24]
	mov r7,#74
	cmp r8,r7
	bge .mainL137
.mainL136:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL144
.mainL142:
	ldr r8,[fp,#-20]
	mov r7,#73
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL143:
	bl .mainL138
.mainL144:
	ldr r8,[fp,#-24]
	mov r7,#73
	cmp r8,r7
	bge .mainL142
.mainL141:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL149
.mainL147:
	ldr r8,[fp,#-20]
	mov r7,#72
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL148:
	bl .mainL143
.mainL149:
	ldr r8,[fp,#-24]
	mov r7,#72
	cmp r8,r7
	bge .mainL147
.mainL146:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL154
.mainL152:
	ldr r8,[fp,#-20]
	mov r7,#71
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL153:
	bl .mainL148
.mainL154:
	ldr r8,[fp,#-24]
	mov r7,#71
	cmp r8,r7
	bge .mainL152
.mainL151:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL159
.mainL157:
	ldr r8,[fp,#-20]
	mov r7,#70
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL158:
	bl .mainL153
.mainL159:
	ldr r8,[fp,#-24]
	mov r7,#70
	cmp r8,r7
	bge .mainL157
.mainL156:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL164
.mainL162:
	ldr r8,[fp,#-20]
	mov r7,#69
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL163:
	bl .mainL158
.mainL164:
	ldr r8,[fp,#-24]
	mov r7,#69
	cmp r8,r7
	bge .mainL162
.mainL161:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL169
.mainL167:
	ldr r8,[fp,#-20]
	mov r7,#68
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL168:
	bl .mainL163
.mainL169:
	ldr r8,[fp,#-24]
	mov r7,#68
	cmp r8,r7
	bge .mainL167
.mainL166:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL174
.mainL172:
	ldr r8,[fp,#-20]
	mov r7,#67
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL173:
	bl .mainL168
.mainL174:
	ldr r8,[fp,#-24]
	mov r7,#67
	cmp r8,r7
	bge .mainL172
.mainL171:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL179
.mainL177:
	ldr r8,[fp,#-20]
	mov r7,#66
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL178:
	bl .mainL173
.mainL179:
	ldr r8,[fp,#-24]
	mov r7,#66
	cmp r8,r7
	bge .mainL177
.mainL176:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL184
.mainL182:
	ldr r8,[fp,#-20]
	mov r7,#65
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL183:
	bl .mainL178
.mainL184:
	ldr r8,[fp,#-24]
	mov r7,#65
	cmp r8,r7
	bge .mainL182
.mainL181:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL189
.mainL187:
	ldr r8,[fp,#-20]
	mov r7,#64
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL188:
	bl .mainL183
.mainL189:
	ldr r8,[fp,#-24]
	mov r7,#64
	cmp r8,r7
	bge .mainL187
.mainL186:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL194
.mainL192:
	ldr r8,[fp,#-20]
	mov r7,#63
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL193:
	bl .mainL188
.mainL194:
	ldr r8,[fp,#-24]
	mov r7,#63
	cmp r8,r7
	bge .mainL192
.mainL191:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL199
.mainL197:
	ldr r8,[fp,#-20]
	mov r7,#62
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL198:
	bl .mainL193
.mainL199:
	ldr r8,[fp,#-24]
	mov r7,#62
	cmp r8,r7
	bge .mainL197
.mainL196:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL204
.mainL202:
	ldr r8,[fp,#-20]
	mov r7,#61
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL203:
	bl .mainL198
.mainL204:
	ldr r8,[fp,#-24]
	mov r7,#61
	cmp r8,r7
	bge .mainL202
.mainL201:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL209
.mainL207:
	ldr r8,[fp,#-20]
	mov r7,#60
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL208:
	bl .mainL203
.mainL209:
	ldr r8,[fp,#-24]
	mov r7,#60
	cmp r8,r7
	bge .mainL207
.mainL206:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL214
.mainL212:
	ldr r8,[fp,#-20]
	mov r7,#59
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL213:
	bl .mainL208
.mainL214:
	ldr r8,[fp,#-24]
	mov r7,#59
	cmp r8,r7
	bge .mainL212
.mainL211:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL219
.mainL217:
	ldr r8,[fp,#-20]
	mov r7,#58
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL218:
	bl .mainL213
.mainL219:
	ldr r8,[fp,#-24]
	mov r7,#58
	cmp r8,r7
	bge .mainL217
.mainL216:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL224
.mainL222:
	ldr r8,[fp,#-20]
	mov r7,#57
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL223:
	bl .mainL218
.mainL224:
	ldr r8,[fp,#-24]
	mov r7,#57
	cmp r8,r7
	bge .mainL222
.mainL221:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL229
.mainL227:
	ldr r8,[fp,#-20]
	mov r7,#56
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL228:
	bl .mainL223
.mainL229:
	ldr r8,[fp,#-24]
	mov r7,#56
	cmp r8,r7
	bge .mainL227
.mainL226:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL234
.mainL232:
	ldr r8,[fp,#-20]
	mov r7,#55
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL233:
	bl .mainL228
.mainL234:
	ldr r8,[fp,#-24]
	mov r7,#55
	cmp r8,r7
	bge .mainL232
.mainL231:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL239
.mainL237:
	ldr r8,[fp,#-20]
	mov r7,#54
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL238:
	bl .mainL233
.mainL239:
	ldr r8,[fp,#-24]
	mov r7,#54
	cmp r8,r7
	bge .mainL237
.mainL236:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL244
.mainL242:
	ldr r8,[fp,#-20]
	mov r7,#53
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL243:
	bl .mainL238
.mainL244:
	ldr r8,[fp,#-24]
	mov r7,#53
	cmp r8,r7
	bge .mainL242
.mainL241:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL249
.mainL247:
	ldr r8,[fp,#-20]
	mov r7,#52
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL248:
	bl .mainL243
.mainL249:
	ldr r8,[fp,#-24]
	mov r7,#52
	cmp r8,r7
	bge .mainL247
.mainL246:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL254
.mainL252:
	ldr r8,[fp,#-20]
	mov r7,#51
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL253:
	bl .mainL248
.mainL254:
	ldr r8,[fp,#-24]
	mov r7,#51
	cmp r8,r7
	bge .mainL252
.mainL251:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL259
.mainL257:
	ldr r8,[fp,#-20]
	mov r7,#50
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL258:
	bl .mainL253
.mainL259:
	ldr r8,[fp,#-24]
	mov r7,#50
	cmp r8,r7
	bge .mainL257
.mainL256:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL264
.mainL262:
	ldr r8,[fp,#-20]
	mov r7,#49
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL263:
	bl .mainL258
.mainL264:
	ldr r8,[fp,#-24]
	mov r7,#49
	cmp r8,r7
	bge .mainL262
.mainL261:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL269
.mainL267:
	ldr r8,[fp,#-20]
	mov r7,#48
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL268:
	bl .mainL263
.mainL269:
	ldr r8,[fp,#-24]
	mov r7,#48
	cmp r8,r7
	bge .mainL267
.mainL266:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL274
.mainL272:
	ldr r8,[fp,#-20]
	mov r7,#47
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL273:
	bl .mainL268
.mainL274:
	ldr r8,[fp,#-24]
	mov r7,#47
	cmp r8,r7
	bge .mainL272
.mainL271:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL279
.mainL277:
	ldr r8,[fp,#-20]
	mov r7,#46
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL278:
	bl .mainL273
.mainL279:
	ldr r8,[fp,#-24]
	mov r7,#46
	cmp r8,r7
	bge .mainL277
.mainL276:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL284
.mainL282:
	ldr r8,[fp,#-20]
	mov r7,#45
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL283:
	bl .mainL278
.mainL284:
	ldr r8,[fp,#-24]
	mov r7,#45
	cmp r8,r7
	bge .mainL282
.mainL281:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL289
.mainL287:
	ldr r8,[fp,#-20]
	mov r7,#44
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL288:
	bl .mainL283
.mainL289:
	ldr r8,[fp,#-24]
	mov r7,#44
	cmp r8,r7
	bge .mainL287
.mainL286:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL294
.mainL292:
	ldr r8,[fp,#-20]
	mov r7,#43
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL293:
	bl .mainL288
.mainL294:
	ldr r8,[fp,#-24]
	mov r7,#43
	cmp r8,r7
	bge .mainL292
.mainL291:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL299
.mainL297:
	ldr r8,[fp,#-20]
	mov r7,#42
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL298:
	bl .mainL293
.mainL299:
	ldr r8,[fp,#-24]
	mov r7,#42
	cmp r8,r7
	bge .mainL297
.mainL296:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL304
.mainL302:
	ldr r8,[fp,#-20]
	mov r7,#41
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL303:
	bl .mainL298
.mainL304:
	ldr r8,[fp,#-24]
	mov r7,#41
	cmp r8,r7
	bge .mainL302
.mainL301:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL309
.mainL307:
	ldr r8,[fp,#-20]
	mov r7,#40
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL308:
	bl .mainL303
.mainL309:
	ldr r8,[fp,#-24]
	mov r7,#40
	cmp r8,r7
	bge .mainL307
.mainL306:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL314
.mainL312:
	ldr r8,[fp,#-20]
	mov r7,#39
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL313:
	bl .mainL308
.mainL314:
	ldr r8,[fp,#-24]
	mov r7,#39
	cmp r8,r7
	bge .mainL312
.mainL311:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL319
.mainL317:
	ldr r8,[fp,#-20]
	mov r7,#38
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL318:
	bl .mainL313
.mainL319:
	ldr r8,[fp,#-24]
	mov r7,#38
	cmp r8,r7
	bge .mainL317
.mainL316:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL324
.mainL322:
	ldr r8,[fp,#-20]
	mov r7,#37
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL323:
	bl .mainL318
.mainL324:
	ldr r8,[fp,#-24]
	mov r7,#37
	cmp r8,r7
	bge .mainL322
.mainL321:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL329
.mainL327:
	ldr r8,[fp,#-20]
	mov r7,#36
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL328:
	bl .mainL323
.mainL329:
	ldr r8,[fp,#-24]
	mov r7,#36
	cmp r8,r7
	bge .mainL327
.mainL326:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL334
.mainL332:
	ldr r8,[fp,#-20]
	mov r7,#35
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL333:
	bl .mainL328
.mainL334:
	ldr r8,[fp,#-24]
	mov r7,#35
	cmp r8,r7
	bge .mainL332
.mainL331:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL339
.mainL337:
	ldr r8,[fp,#-20]
	mov r7,#34
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL338:
	bl .mainL333
.mainL339:
	ldr r8,[fp,#-24]
	mov r7,#34
	cmp r8,r7
	bge .mainL337
.mainL336:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL344
.mainL342:
	ldr r8,[fp,#-20]
	mov r7,#33
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL343:
	bl .mainL338
.mainL344:
	ldr r8,[fp,#-24]
	mov r7,#33
	cmp r8,r7
	bge .mainL342
.mainL341:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL349
.mainL347:
	ldr r8,[fp,#-20]
	mov r7,#32
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL348:
	bl .mainL343
.mainL349:
	ldr r8,[fp,#-24]
	mov r7,#32
	cmp r8,r7
	bge .mainL347
.mainL346:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL354
.mainL352:
	ldr r8,[fp,#-20]
	mov r7,#31
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL353:
	bl .mainL348
.mainL354:
	ldr r8,[fp,#-24]
	mov r7,#31
	cmp r8,r7
	bge .mainL352
.mainL351:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL359
.mainL357:
	ldr r8,[fp,#-20]
	mov r7,#30
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL358:
	bl .mainL353
.mainL359:
	ldr r8,[fp,#-24]
	mov r7,#30
	cmp r8,r7
	bge .mainL357
.mainL356:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL364
.mainL362:
	ldr r8,[fp,#-20]
	mov r7,#29
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL363:
	bl .mainL358
.mainL364:
	ldr r8,[fp,#-24]
	mov r7,#29
	cmp r8,r7
	bge .mainL362
.mainL361:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL369
.mainL367:
	ldr r8,[fp,#-20]
	mov r7,#28
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL368:
	bl .mainL363
.mainL369:
	ldr r8,[fp,#-24]
	mov r7,#28
	cmp r8,r7
	bge .mainL367
.mainL366:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL374
.mainL372:
	ldr r8,[fp,#-20]
	mov r7,#27
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL373:
	bl .mainL368
.mainL374:
	ldr r8,[fp,#-24]
	mov r7,#27
	cmp r8,r7
	bge .mainL372
.mainL371:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL379
.mainL377:
	ldr r8,[fp,#-20]
	mov r7,#26
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL378:
	bl .mainL373
.mainL379:
	ldr r8,[fp,#-24]
	mov r7,#26
	cmp r8,r7
	bge .mainL377
.mainL376:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL384
.mainL382:
	ldr r8,[fp,#-20]
	mov r7,#25
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL383:
	bl .mainL378
.mainL384:
	ldr r8,[fp,#-24]
	mov r7,#25
	cmp r8,r7
	bge .mainL382
.mainL381:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL389
.mainL387:
	ldr r8,[fp,#-20]
	mov r7,#24
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL388:
	bl .mainL383
.mainL389:
	ldr r8,[fp,#-24]
	mov r7,#24
	cmp r8,r7
	bge .mainL387
.mainL386:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL394
.mainL392:
	ldr r8,[fp,#-20]
	mov r7,#23
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL393:
	bl .mainL388
.mainL394:
	ldr r8,[fp,#-24]
	mov r7,#23
	cmp r8,r7
	bge .mainL392
.mainL391:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL399
.mainL397:
	ldr r8,[fp,#-20]
	mov r7,#22
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL398:
	bl .mainL393
.mainL399:
	ldr r8,[fp,#-24]
	mov r7,#22
	cmp r8,r7
	bge .mainL397
.mainL396:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL404
.mainL402:
	ldr r8,[fp,#-20]
	mov r7,#21
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL403:
	bl .mainL398
.mainL404:
	ldr r8,[fp,#-24]
	mov r7,#21
	cmp r8,r7
	bge .mainL402
.mainL401:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL409
.mainL407:
	ldr r8,[fp,#-20]
	mov r7,#20
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL408:
	bl .mainL403
.mainL409:
	ldr r8,[fp,#-24]
	mov r7,#20
	cmp r8,r7
	bge .mainL407
.mainL406:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL414
.mainL412:
	ldr r8,[fp,#-20]
	mov r7,#19
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL413:
	bl .mainL408
.mainL414:
	ldr r8,[fp,#-24]
	mov r7,#19
	cmp r8,r7
	bge .mainL412
.mainL411:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL419
.mainL417:
	ldr r8,[fp,#-20]
	mov r7,#18
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL418:
	bl .mainL413
.mainL419:
	ldr r8,[fp,#-24]
	mov r7,#18
	cmp r8,r7
	bge .mainL417
.mainL416:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL424
.mainL422:
	ldr r8,[fp,#-20]
	mov r7,#17
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL423:
	bl .mainL418
.mainL424:
	ldr r8,[fp,#-24]
	mov r7,#17
	cmp r8,r7
	bge .mainL422
.mainL421:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL429
.mainL427:
	ldr r8,[fp,#-20]
	mov r7,#16
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL428:
	bl .mainL423
.mainL429:
	ldr r8,[fp,#-24]
	mov r7,#16
	cmp r8,r7
	bge .mainL427
.mainL426:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL434
.mainL432:
	ldr r8,[fp,#-20]
	mov r7,#15
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL433:
	bl .mainL428
.mainL434:
	ldr r8,[fp,#-24]
	mov r7,#15
	cmp r8,r7
	bge .mainL432
.mainL431:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL439
.mainL437:
	ldr r8,[fp,#-20]
	mov r7,#14
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL438:
	bl .mainL433
.mainL439:
	ldr r8,[fp,#-24]
	mov r7,#14
	cmp r8,r7
	bge .mainL437
.mainL436:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL444
.mainL442:
	ldr r8,[fp,#-20]
	mov r7,#13
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL443:
	bl .mainL438
.mainL444:
	ldr r8,[fp,#-24]
	mov r7,#13
	cmp r8,r7
	bge .mainL442
.mainL441:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL449
.mainL447:
	ldr r8,[fp,#-20]
	mov r7,#12
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL448:
	bl .mainL443
.mainL449:
	ldr r8,[fp,#-24]
	mov r7,#12
	cmp r8,r7
	bge .mainL447
.mainL446:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL454
.mainL452:
	ldr r8,[fp,#-20]
	mov r7,#11
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL453:
	bl .mainL448
.mainL454:
	ldr r8,[fp,#-24]
	mov r7,#11
	cmp r8,r7
	bge .mainL452
.mainL451:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL459
.mainL457:
	ldr r8,[fp,#-20]
	mov r7,#10
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL458:
	bl .mainL453
.mainL459:
	ldr r8,[fp,#-24]
	mov r7,#10
	cmp r8,r7
	bge .mainL457
.mainL456:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL464
.mainL462:
	ldr r8,[fp,#-20]
	mov r7,#9
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL463:
	bl .mainL458
.mainL464:
	ldr r8,[fp,#-24]
	mov r7,#9
	cmp r8,r7
	bge .mainL462
.mainL461:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL469
.mainL467:
	ldr r8,[fp,#-20]
	mov r7,#8
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL468:
	bl .mainL463
.mainL469:
	ldr r8,[fp,#-24]
	mov r7,#8
	cmp r8,r7
	bge .mainL467
.mainL466:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL474
.mainL472:
	ldr r8,[fp,#-20]
	mov r7,#7
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL473:
	bl .mainL468
.mainL474:
	ldr r8,[fp,#-24]
	mov r7,#7
	cmp r8,r7
	bge .mainL472
.mainL471:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL479
.mainL477:
	ldr r8,[fp,#-20]
	mov r7,#6
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL478:
	bl .mainL473
.mainL479:
	ldr r8,[fp,#-24]
	mov r7,#6
	cmp r8,r7
	bge .mainL477
.mainL476:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL484
.mainL482:
	ldr r8,[fp,#-20]
	mov r7,#5
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL483:
	bl .mainL478
.mainL484:
	ldr r8,[fp,#-24]
	mov r7,#5
	cmp r8,r7
	bge .mainL482
.mainL481:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL489
.mainL487:
	ldr r8,[fp,#-20]
	mov r7,#4
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL488:
	bl .mainL483
.mainL489:
	ldr r8,[fp,#-24]
	mov r7,#4
	cmp r8,r7
	bge .mainL487
.mainL486:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL494
.mainL492:
	ldr r8,[fp,#-20]
	mov r7,#3
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL493:
	bl .mainL488
.mainL494:
	ldr r8,[fp,#-24]
	mov r7,#3
	cmp r8,r7
	bge .mainL492
.mainL491:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL499
.mainL497:
	ldr r8,[fp,#-20]
	mov r7,#2
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL498:
	bl .mainL493
.mainL499:
	ldr r8,[fp,#-24]
	mov r7,#2
	cmp r8,r7
	bge .mainL497
.mainL496:
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
	bl .mainL498
	.section	.note.GNU-stack,"",%progbits
