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
.mainL2:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	cmp r8,r7
	blt .mainL3
.mainL4:
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
	bgt .mainL8
.mainL6:
	ldr r8,[fp,#-20]
	mov r7,#100
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL7:
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
	bl .mainL2
.mainL8:
	ldr r8,[fp,#-24]
	mov r7,#100
	cmp r8,r7
	bge .mainL6
.mainL5:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL13
.mainL11:
	ldr r8,[fp,#-20]
	mov r7,#99
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL12:
	bl .mainL7
.mainL13:
	ldr r8,[fp,#-24]
	mov r7,#99
	cmp r8,r7
	bge .mainL11
.mainL10:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL18
.mainL16:
	ldr r8,[fp,#-20]
	mov r7,#98
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL17:
	bl .mainL12
.mainL18:
	ldr r8,[fp,#-24]
	mov r7,#98
	cmp r8,r7
	bge .mainL16
.mainL15:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL23
.mainL21:
	ldr r8,[fp,#-20]
	mov r7,#97
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL22:
	bl .mainL17
.mainL23:
	ldr r8,[fp,#-24]
	mov r7,#97
	cmp r8,r7
	bge .mainL21
.mainL20:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL28
.mainL26:
	ldr r8,[fp,#-20]
	mov r7,#96
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL27:
	bl .mainL22
.mainL28:
	ldr r8,[fp,#-24]
	mov r7,#96
	cmp r8,r7
	bge .mainL26
.mainL25:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL33
.mainL31:
	ldr r8,[fp,#-20]
	mov r7,#95
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL32:
	bl .mainL27
.mainL33:
	ldr r8,[fp,#-24]
	mov r7,#95
	cmp r8,r7
	bge .mainL31
.mainL30:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL38
.mainL36:
	ldr r8,[fp,#-20]
	mov r7,#94
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL37:
	bl .mainL32
.mainL38:
	ldr r8,[fp,#-24]
	mov r7,#94
	cmp r8,r7
	bge .mainL36
.mainL35:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL43
.mainL41:
	ldr r8,[fp,#-20]
	mov r7,#93
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL42:
	bl .mainL37
.mainL43:
	ldr r8,[fp,#-24]
	mov r7,#93
	cmp r8,r7
	bge .mainL41
.mainL40:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL48
.mainL46:
	ldr r8,[fp,#-20]
	mov r7,#92
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL47:
	bl .mainL42
.mainL48:
	ldr r8,[fp,#-24]
	mov r7,#92
	cmp r8,r7
	bge .mainL46
.mainL45:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL53
.mainL51:
	ldr r8,[fp,#-20]
	mov r7,#91
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL52:
	bl .mainL47
.mainL53:
	ldr r8,[fp,#-24]
	mov r7,#91
	cmp r8,r7
	bge .mainL51
.mainL50:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL58
.mainL56:
	ldr r8,[fp,#-20]
	mov r7,#90
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL57:
	bl .mainL52
.mainL58:
	ldr r8,[fp,#-24]
	mov r7,#90
	cmp r8,r7
	bge .mainL56
.mainL55:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL63
.mainL61:
	ldr r8,[fp,#-20]
	mov r7,#89
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL62:
	bl .mainL57
.mainL63:
	ldr r8,[fp,#-24]
	mov r7,#89
	cmp r8,r7
	bge .mainL61
.mainL60:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL68
.mainL66:
	ldr r8,[fp,#-20]
	mov r7,#88
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL67:
	bl .mainL62
.mainL68:
	ldr r8,[fp,#-24]
	mov r7,#88
	cmp r8,r7
	bge .mainL66
.mainL65:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL73
.mainL71:
	ldr r8,[fp,#-20]
	mov r7,#87
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL72:
	bl .mainL67
.mainL73:
	ldr r8,[fp,#-24]
	mov r7,#87
	cmp r8,r7
	bge .mainL71
.mainL70:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL78
.mainL76:
	ldr r8,[fp,#-20]
	mov r7,#86
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL77:
	bl .mainL72
.mainL78:
	ldr r8,[fp,#-24]
	mov r7,#86
	cmp r8,r7
	bge .mainL76
.mainL75:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL83
.mainL81:
	ldr r8,[fp,#-20]
	mov r7,#85
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL82:
	bl .mainL77
.mainL83:
	ldr r8,[fp,#-24]
	mov r7,#85
	cmp r8,r7
	bge .mainL81
.mainL80:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL88
.mainL86:
	ldr r8,[fp,#-20]
	mov r7,#84
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL87:
	bl .mainL82
.mainL88:
	ldr r8,[fp,#-24]
	mov r7,#84
	cmp r8,r7
	bge .mainL86
.mainL85:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL93
.mainL91:
	ldr r8,[fp,#-20]
	mov r7,#83
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL92:
	bl .mainL87
.mainL93:
	ldr r8,[fp,#-24]
	mov r7,#83
	cmp r8,r7
	bge .mainL91
.mainL90:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL98
.mainL96:
	ldr r8,[fp,#-20]
	mov r7,#82
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL97:
	bl .mainL92
.mainL98:
	ldr r8,[fp,#-24]
	mov r7,#82
	cmp r8,r7
	bge .mainL96
.mainL95:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL103
.mainL101:
	ldr r8,[fp,#-20]
	mov r7,#81
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL102:
	bl .mainL97
.mainL103:
	ldr r8,[fp,#-24]
	mov r7,#81
	cmp r8,r7
	bge .mainL101
.mainL100:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL108
.mainL106:
	ldr r8,[fp,#-20]
	mov r7,#80
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL107:
	bl .mainL102
.mainL108:
	ldr r8,[fp,#-24]
	mov r7,#80
	cmp r8,r7
	bge .mainL106
.mainL105:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL113
.mainL111:
	ldr r8,[fp,#-20]
	mov r7,#79
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL112:
	bl .mainL107
.mainL113:
	ldr r8,[fp,#-24]
	mov r7,#79
	cmp r8,r7
	bge .mainL111
.mainL110:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL118
.mainL116:
	ldr r8,[fp,#-20]
	mov r7,#78
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL117:
	bl .mainL112
.mainL118:
	ldr r8,[fp,#-24]
	mov r7,#78
	cmp r8,r7
	bge .mainL116
.mainL115:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL123
.mainL121:
	ldr r8,[fp,#-20]
	mov r7,#77
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL122:
	bl .mainL117
.mainL123:
	ldr r8,[fp,#-24]
	mov r7,#77
	cmp r8,r7
	bge .mainL121
.mainL120:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL128
.mainL126:
	ldr r8,[fp,#-20]
	mov r7,#76
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL127:
	bl .mainL122
.mainL128:
	ldr r8,[fp,#-24]
	mov r7,#76
	cmp r8,r7
	bge .mainL126
.mainL125:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL133
.mainL131:
	ldr r8,[fp,#-20]
	mov r7,#75
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL132:
	bl .mainL127
.mainL133:
	ldr r8,[fp,#-24]
	mov r7,#75
	cmp r8,r7
	bge .mainL131
.mainL130:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL138
.mainL136:
	ldr r8,[fp,#-20]
	mov r7,#74
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL137:
	bl .mainL132
.mainL138:
	ldr r8,[fp,#-24]
	mov r7,#74
	cmp r8,r7
	bge .mainL136
.mainL135:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL143
.mainL141:
	ldr r8,[fp,#-20]
	mov r7,#73
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL142:
	bl .mainL137
.mainL143:
	ldr r8,[fp,#-24]
	mov r7,#73
	cmp r8,r7
	bge .mainL141
.mainL140:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL148
.mainL146:
	ldr r8,[fp,#-20]
	mov r7,#72
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL147:
	bl .mainL142
.mainL148:
	ldr r8,[fp,#-24]
	mov r7,#72
	cmp r8,r7
	bge .mainL146
.mainL145:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL153
.mainL151:
	ldr r8,[fp,#-20]
	mov r7,#71
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL152:
	bl .mainL147
.mainL153:
	ldr r8,[fp,#-24]
	mov r7,#71
	cmp r8,r7
	bge .mainL151
.mainL150:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL158
.mainL156:
	ldr r8,[fp,#-20]
	mov r7,#70
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL157:
	bl .mainL152
.mainL158:
	ldr r8,[fp,#-24]
	mov r7,#70
	cmp r8,r7
	bge .mainL156
.mainL155:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL163
.mainL161:
	ldr r8,[fp,#-20]
	mov r7,#69
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL162:
	bl .mainL157
.mainL163:
	ldr r8,[fp,#-24]
	mov r7,#69
	cmp r8,r7
	bge .mainL161
.mainL160:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL168
.mainL166:
	ldr r8,[fp,#-20]
	mov r7,#68
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL167:
	bl .mainL162
.mainL168:
	ldr r8,[fp,#-24]
	mov r7,#68
	cmp r8,r7
	bge .mainL166
.mainL165:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL173
.mainL171:
	ldr r8,[fp,#-20]
	mov r7,#67
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL172:
	bl .mainL167
.mainL173:
	ldr r8,[fp,#-24]
	mov r7,#67
	cmp r8,r7
	bge .mainL171
.mainL170:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL178
.mainL176:
	ldr r8,[fp,#-20]
	mov r7,#66
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL177:
	bl .mainL172
.mainL178:
	ldr r8,[fp,#-24]
	mov r7,#66
	cmp r8,r7
	bge .mainL176
.mainL175:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL183
.mainL181:
	ldr r8,[fp,#-20]
	mov r7,#65
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL182:
	bl .mainL177
.mainL183:
	ldr r8,[fp,#-24]
	mov r7,#65
	cmp r8,r7
	bge .mainL181
.mainL180:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL188
.mainL186:
	ldr r8,[fp,#-20]
	mov r7,#64
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL187:
	bl .mainL182
.mainL188:
	ldr r8,[fp,#-24]
	mov r7,#64
	cmp r8,r7
	bge .mainL186
.mainL185:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL193
.mainL191:
	ldr r8,[fp,#-20]
	mov r7,#63
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL192:
	bl .mainL187
.mainL193:
	ldr r8,[fp,#-24]
	mov r7,#63
	cmp r8,r7
	bge .mainL191
.mainL190:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL198
.mainL196:
	ldr r8,[fp,#-20]
	mov r7,#62
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL197:
	bl .mainL192
.mainL198:
	ldr r8,[fp,#-24]
	mov r7,#62
	cmp r8,r7
	bge .mainL196
.mainL195:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL203
.mainL201:
	ldr r8,[fp,#-20]
	mov r7,#61
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL202:
	bl .mainL197
.mainL203:
	ldr r8,[fp,#-24]
	mov r7,#61
	cmp r8,r7
	bge .mainL201
.mainL200:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL208
.mainL206:
	ldr r8,[fp,#-20]
	mov r7,#60
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL207:
	bl .mainL202
.mainL208:
	ldr r8,[fp,#-24]
	mov r7,#60
	cmp r8,r7
	bge .mainL206
.mainL205:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL213
.mainL211:
	ldr r8,[fp,#-20]
	mov r7,#59
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL212:
	bl .mainL207
.mainL213:
	ldr r8,[fp,#-24]
	mov r7,#59
	cmp r8,r7
	bge .mainL211
.mainL210:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL218
.mainL216:
	ldr r8,[fp,#-20]
	mov r7,#58
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL217:
	bl .mainL212
.mainL218:
	ldr r8,[fp,#-24]
	mov r7,#58
	cmp r8,r7
	bge .mainL216
.mainL215:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL223
.mainL221:
	ldr r8,[fp,#-20]
	mov r7,#57
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL222:
	bl .mainL217
.mainL223:
	ldr r8,[fp,#-24]
	mov r7,#57
	cmp r8,r7
	bge .mainL221
.mainL220:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL228
.mainL226:
	ldr r8,[fp,#-20]
	mov r7,#56
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL227:
	bl .mainL222
.mainL228:
	ldr r8,[fp,#-24]
	mov r7,#56
	cmp r8,r7
	bge .mainL226
.mainL225:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL233
.mainL231:
	ldr r8,[fp,#-20]
	mov r7,#55
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL232:
	bl .mainL227
.mainL233:
	ldr r8,[fp,#-24]
	mov r7,#55
	cmp r8,r7
	bge .mainL231
.mainL230:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL238
.mainL236:
	ldr r8,[fp,#-20]
	mov r7,#54
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL237:
	bl .mainL232
.mainL238:
	ldr r8,[fp,#-24]
	mov r7,#54
	cmp r8,r7
	bge .mainL236
.mainL235:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL243
.mainL241:
	ldr r8,[fp,#-20]
	mov r7,#53
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL242:
	bl .mainL237
.mainL243:
	ldr r8,[fp,#-24]
	mov r7,#53
	cmp r8,r7
	bge .mainL241
.mainL240:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL248
.mainL246:
	ldr r8,[fp,#-20]
	mov r7,#52
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL247:
	bl .mainL242
.mainL248:
	ldr r8,[fp,#-24]
	mov r7,#52
	cmp r8,r7
	bge .mainL246
.mainL245:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL253
.mainL251:
	ldr r8,[fp,#-20]
	mov r7,#51
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL252:
	bl .mainL247
.mainL253:
	ldr r8,[fp,#-24]
	mov r7,#51
	cmp r8,r7
	bge .mainL251
.mainL250:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL258
.mainL256:
	ldr r8,[fp,#-20]
	mov r7,#50
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL257:
	bl .mainL252
.mainL258:
	ldr r8,[fp,#-24]
	mov r7,#50
	cmp r8,r7
	bge .mainL256
.mainL255:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL263
.mainL261:
	ldr r8,[fp,#-20]
	mov r7,#49
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL262:
	bl .mainL257
.mainL263:
	ldr r8,[fp,#-24]
	mov r7,#49
	cmp r8,r7
	bge .mainL261
.mainL260:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL268
.mainL266:
	ldr r8,[fp,#-20]
	mov r7,#48
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL267:
	bl .mainL262
.mainL268:
	ldr r8,[fp,#-24]
	mov r7,#48
	cmp r8,r7
	bge .mainL266
.mainL265:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL273
.mainL271:
	ldr r8,[fp,#-20]
	mov r7,#47
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL272:
	bl .mainL267
.mainL273:
	ldr r8,[fp,#-24]
	mov r7,#47
	cmp r8,r7
	bge .mainL271
.mainL270:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL278
.mainL276:
	ldr r8,[fp,#-20]
	mov r7,#46
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL277:
	bl .mainL272
.mainL278:
	ldr r8,[fp,#-24]
	mov r7,#46
	cmp r8,r7
	bge .mainL276
.mainL275:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL283
.mainL281:
	ldr r8,[fp,#-20]
	mov r7,#45
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL282:
	bl .mainL277
.mainL283:
	ldr r8,[fp,#-24]
	mov r7,#45
	cmp r8,r7
	bge .mainL281
.mainL280:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL288
.mainL286:
	ldr r8,[fp,#-20]
	mov r7,#44
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL287:
	bl .mainL282
.mainL288:
	ldr r8,[fp,#-24]
	mov r7,#44
	cmp r8,r7
	bge .mainL286
.mainL285:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL293
.mainL291:
	ldr r8,[fp,#-20]
	mov r7,#43
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL292:
	bl .mainL287
.mainL293:
	ldr r8,[fp,#-24]
	mov r7,#43
	cmp r8,r7
	bge .mainL291
.mainL290:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL298
.mainL296:
	ldr r8,[fp,#-20]
	mov r7,#42
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL297:
	bl .mainL292
.mainL298:
	ldr r8,[fp,#-24]
	mov r7,#42
	cmp r8,r7
	bge .mainL296
.mainL295:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL303
.mainL301:
	ldr r8,[fp,#-20]
	mov r7,#41
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL302:
	bl .mainL297
.mainL303:
	ldr r8,[fp,#-24]
	mov r7,#41
	cmp r8,r7
	bge .mainL301
.mainL300:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL308
.mainL306:
	ldr r8,[fp,#-20]
	mov r7,#40
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL307:
	bl .mainL302
.mainL308:
	ldr r8,[fp,#-24]
	mov r7,#40
	cmp r8,r7
	bge .mainL306
.mainL305:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL313
.mainL311:
	ldr r8,[fp,#-20]
	mov r7,#39
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL312:
	bl .mainL307
.mainL313:
	ldr r8,[fp,#-24]
	mov r7,#39
	cmp r8,r7
	bge .mainL311
.mainL310:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL318
.mainL316:
	ldr r8,[fp,#-20]
	mov r7,#38
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL317:
	bl .mainL312
.mainL318:
	ldr r8,[fp,#-24]
	mov r7,#38
	cmp r8,r7
	bge .mainL316
.mainL315:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL323
.mainL321:
	ldr r8,[fp,#-20]
	mov r7,#37
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL322:
	bl .mainL317
.mainL323:
	ldr r8,[fp,#-24]
	mov r7,#37
	cmp r8,r7
	bge .mainL321
.mainL320:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL328
.mainL326:
	ldr r8,[fp,#-20]
	mov r7,#36
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL327:
	bl .mainL322
.mainL328:
	ldr r8,[fp,#-24]
	mov r7,#36
	cmp r8,r7
	bge .mainL326
.mainL325:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL333
.mainL331:
	ldr r8,[fp,#-20]
	mov r7,#35
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL332:
	bl .mainL327
.mainL333:
	ldr r8,[fp,#-24]
	mov r7,#35
	cmp r8,r7
	bge .mainL331
.mainL330:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL338
.mainL336:
	ldr r8,[fp,#-20]
	mov r7,#34
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL337:
	bl .mainL332
.mainL338:
	ldr r8,[fp,#-24]
	mov r7,#34
	cmp r8,r7
	bge .mainL336
.mainL335:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL343
.mainL341:
	ldr r8,[fp,#-20]
	mov r7,#33
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL342:
	bl .mainL337
.mainL343:
	ldr r8,[fp,#-24]
	mov r7,#33
	cmp r8,r7
	bge .mainL341
.mainL340:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL348
.mainL346:
	ldr r8,[fp,#-20]
	mov r7,#32
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL347:
	bl .mainL342
.mainL348:
	ldr r8,[fp,#-24]
	mov r7,#32
	cmp r8,r7
	bge .mainL346
.mainL345:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL353
.mainL351:
	ldr r8,[fp,#-20]
	mov r7,#31
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL352:
	bl .mainL347
.mainL353:
	ldr r8,[fp,#-24]
	mov r7,#31
	cmp r8,r7
	bge .mainL351
.mainL350:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL358
.mainL356:
	ldr r8,[fp,#-20]
	mov r7,#30
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL357:
	bl .mainL352
.mainL358:
	ldr r8,[fp,#-24]
	mov r7,#30
	cmp r8,r7
	bge .mainL356
.mainL355:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL363
.mainL361:
	ldr r8,[fp,#-20]
	mov r7,#29
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL362:
	bl .mainL357
.mainL363:
	ldr r8,[fp,#-24]
	mov r7,#29
	cmp r8,r7
	bge .mainL361
.mainL360:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL368
.mainL366:
	ldr r8,[fp,#-20]
	mov r7,#28
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL367:
	bl .mainL362
.mainL368:
	ldr r8,[fp,#-24]
	mov r7,#28
	cmp r8,r7
	bge .mainL366
.mainL365:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL373
.mainL371:
	ldr r8,[fp,#-20]
	mov r7,#27
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL372:
	bl .mainL367
.mainL373:
	ldr r8,[fp,#-24]
	mov r7,#27
	cmp r8,r7
	bge .mainL371
.mainL370:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL378
.mainL376:
	ldr r8,[fp,#-20]
	mov r7,#26
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL377:
	bl .mainL372
.mainL378:
	ldr r8,[fp,#-24]
	mov r7,#26
	cmp r8,r7
	bge .mainL376
.mainL375:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL383
.mainL381:
	ldr r8,[fp,#-20]
	mov r7,#25
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL382:
	bl .mainL377
.mainL383:
	ldr r8,[fp,#-24]
	mov r7,#25
	cmp r8,r7
	bge .mainL381
.mainL380:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL388
.mainL386:
	ldr r8,[fp,#-20]
	mov r7,#24
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL387:
	bl .mainL382
.mainL388:
	ldr r8,[fp,#-24]
	mov r7,#24
	cmp r8,r7
	bge .mainL386
.mainL385:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL393
.mainL391:
	ldr r8,[fp,#-20]
	mov r7,#23
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL392:
	bl .mainL387
.mainL393:
	ldr r8,[fp,#-24]
	mov r7,#23
	cmp r8,r7
	bge .mainL391
.mainL390:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL398
.mainL396:
	ldr r8,[fp,#-20]
	mov r7,#22
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL397:
	bl .mainL392
.mainL398:
	ldr r8,[fp,#-24]
	mov r7,#22
	cmp r8,r7
	bge .mainL396
.mainL395:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL403
.mainL401:
	ldr r8,[fp,#-20]
	mov r7,#21
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL402:
	bl .mainL397
.mainL403:
	ldr r8,[fp,#-24]
	mov r7,#21
	cmp r8,r7
	bge .mainL401
.mainL400:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL408
.mainL406:
	ldr r8,[fp,#-20]
	mov r7,#20
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL407:
	bl .mainL402
.mainL408:
	ldr r8,[fp,#-24]
	mov r7,#20
	cmp r8,r7
	bge .mainL406
.mainL405:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL413
.mainL411:
	ldr r8,[fp,#-20]
	mov r7,#19
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL412:
	bl .mainL407
.mainL413:
	ldr r8,[fp,#-24]
	mov r7,#19
	cmp r8,r7
	bge .mainL411
.mainL410:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL418
.mainL416:
	ldr r8,[fp,#-20]
	mov r7,#18
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL417:
	bl .mainL412
.mainL418:
	ldr r8,[fp,#-24]
	mov r7,#18
	cmp r8,r7
	bge .mainL416
.mainL415:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL423
.mainL421:
	ldr r8,[fp,#-20]
	mov r7,#17
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL422:
	bl .mainL417
.mainL423:
	ldr r8,[fp,#-24]
	mov r7,#17
	cmp r8,r7
	bge .mainL421
.mainL420:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL428
.mainL426:
	ldr r8,[fp,#-20]
	mov r7,#16
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL427:
	bl .mainL422
.mainL428:
	ldr r8,[fp,#-24]
	mov r7,#16
	cmp r8,r7
	bge .mainL426
.mainL425:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL433
.mainL431:
	ldr r8,[fp,#-20]
	mov r7,#15
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL432:
	bl .mainL427
.mainL433:
	ldr r8,[fp,#-24]
	mov r7,#15
	cmp r8,r7
	bge .mainL431
.mainL430:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL438
.mainL436:
	ldr r8,[fp,#-20]
	mov r7,#14
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL437:
	bl .mainL432
.mainL438:
	ldr r8,[fp,#-24]
	mov r7,#14
	cmp r8,r7
	bge .mainL436
.mainL435:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL443
.mainL441:
	ldr r8,[fp,#-20]
	mov r7,#13
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL442:
	bl .mainL437
.mainL443:
	ldr r8,[fp,#-24]
	mov r7,#13
	cmp r8,r7
	bge .mainL441
.mainL440:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL448
.mainL446:
	ldr r8,[fp,#-20]
	mov r7,#12
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL447:
	bl .mainL442
.mainL448:
	ldr r8,[fp,#-24]
	mov r7,#12
	cmp r8,r7
	bge .mainL446
.mainL445:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL453
.mainL451:
	ldr r8,[fp,#-20]
	mov r7,#11
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL452:
	bl .mainL447
.mainL453:
	ldr r8,[fp,#-24]
	mov r7,#11
	cmp r8,r7
	bge .mainL451
.mainL450:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL458
.mainL456:
	ldr r8,[fp,#-20]
	mov r7,#10
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL457:
	bl .mainL452
.mainL458:
	ldr r8,[fp,#-24]
	mov r7,#10
	cmp r8,r7
	bge .mainL456
.mainL455:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL463
.mainL461:
	ldr r8,[fp,#-20]
	mov r7,#9
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL462:
	bl .mainL457
.mainL463:
	ldr r8,[fp,#-24]
	mov r7,#9
	cmp r8,r7
	bge .mainL461
.mainL460:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL468
.mainL466:
	ldr r8,[fp,#-20]
	mov r7,#8
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL467:
	bl .mainL462
.mainL468:
	ldr r8,[fp,#-24]
	mov r7,#8
	cmp r8,r7
	bge .mainL466
.mainL465:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL473
.mainL471:
	ldr r8,[fp,#-20]
	mov r7,#7
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL472:
	bl .mainL467
.mainL473:
	ldr r8,[fp,#-24]
	mov r7,#7
	cmp r8,r7
	bge .mainL471
.mainL470:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL478
.mainL476:
	ldr r8,[fp,#-20]
	mov r7,#6
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL477:
	bl .mainL472
.mainL478:
	ldr r8,[fp,#-24]
	mov r7,#6
	cmp r8,r7
	bge .mainL476
.mainL475:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL483
.mainL481:
	ldr r8,[fp,#-20]
	mov r7,#5
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL482:
	bl .mainL477
.mainL483:
	ldr r8,[fp,#-24]
	mov r7,#5
	cmp r8,r7
	bge .mainL481
.mainL480:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL488
.mainL486:
	ldr r8,[fp,#-20]
	mov r7,#4
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL487:
	bl .mainL482
.mainL488:
	ldr r8,[fp,#-24]
	mov r7,#4
	cmp r8,r7
	bge .mainL486
.mainL485:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL493
.mainL491:
	ldr r8,[fp,#-20]
	mov r7,#3
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL492:
	bl .mainL487
.mainL493:
	ldr r8,[fp,#-24]
	mov r7,#3
	cmp r8,r7
	bge .mainL491
.mainL490:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL498
.mainL496:
	ldr r8,[fp,#-20]
	mov r7,#2
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL497:
	bl .mainL492
.mainL498:
	ldr r8,[fp,#-24]
	mov r7,#2
	cmp r8,r7
	bge .mainL496
.mainL495:
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
	bl .mainL497
	.section	.note.GNU-stack,"",%progbits
