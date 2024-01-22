.arch armv7-a
.fpu vfpv3-d16
.arm
.data
sum:
	.word  0
array:
	.space  80
.text
.global main
.LPIC0:
	.word  array
.LPIC1:
	.word  sum
f:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.fL0:
.fL1:
	ldr r8,.LPIC1
	ldr r7,[r8]
	add r8,r7,#1
	ldr r7,.LPIC1
	str r8,[r7]
	cmp r0,r1
	bge .fL2
.fL4:
	cmp r0,#20
	bge .fL2
.fL3:
	mov r8,r0
	ldr r7,.LPIC0
	add r6,r7,r8,lsl #2
	mov r8,#1
	str r8,[r6]
	cmp r0,#0
	beq .fL6
.fL7:
	sub r8,r0,#1
	mov r7,r8
	ldr r8,.LPIC0
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	mov r0,r8
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
.fL6:
	ldr r8,.LPIC0
	ldr r7,[r8]
	mov r0,r7
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
.fL2:
	mov r0,#0
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
g:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.gL0:
.gL1:
	ldr r8,.LPIC1
	ldr r7,[r8]
	add r8,r7,#2
	ldr r7,.LPIC1
	str r8,[r7]
	cmp r0,r1
	bge .gL2
.gL4:
	cmp r0,#20
	bge .gL2
.gL3:
	mov r8,r0
	ldr r7,.LPIC0
	add r6,r7,r8,lsl #2
	mov r8,#0
	str r8,[r6]
	cmp r0,#0
	beq .gL6
.gL7:
	sub r8,r0,#1
	mov r7,r8
	ldr r8,.LPIC0
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	mov r0,r8
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
.gL6:
	ldr r8,.LPIC0
	ldr r7,[r8]
	mov r0,r7
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
.gL2:
	mov r0,#1
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
h:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.hL0:
.hL1:
	ldr r8,.LPIC1
	ldr r7,[r8]
	add r8,r7,#3
	ldr r7,.LPIC1
	str r8,[r7]
	cmp r0,#0
	blt .hL2
.hL4:
	cmp r0,#20
	bge .hL2
.hL3:
	mov r8,r0
	ldr r7,.LPIC0
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r0,r8
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
.hL2:
	mov r0,#0
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
.mainL290:
	mov r8,#0
.mainL3:
	@%r9 = call i32 @f(i32 0,i32 %r516)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#0
	mov r1,r8
	bl f
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	bne .mainL44
.mainL7:
	add r7,r8,#1
.mainL4:
	cmp r7,#20
	blt .mainL293
.mainL5:
.mainL291:
	mov r6,#0
.mainL47:
	@%r160 = call i32 @g(i32 0,i32 %r518)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#0
	mov r1,r6
	bl g
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r5,#0
	beq .mainL88
.mainL50:
.mainL51:
	add r5,r6,#1
.mainL48:
	cmp r5,#20
	blt .mainL294
.mainL49:
.mainL94:
	@%r313 = call i32 @f(i32 0,i32 1)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#0
	mov r1,#1
	bl f
	mov r4,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r4,#0
	bne .mainL292
.mainL93:
.mainL146:
.mainL148:
	ldr r4,.LPIC1
	ldr r3,[r4]
	add r4,r3,#3
	ldr r3,.LPIC1
	str r4,[r3]
.mainL151:
.mainL150:
	ldr r4,.LPIC0
	ldr r3,[r4]
.mainL147:
	cmp r3,#0
	bne .mainL104
.mainL102:
.mainL164:
.mainL166:
	ldr r4,.LPIC1
	ldr r3,[r4]
	add r4,r3,#3
	ldr r3,.LPIC1
	str r4,[r3]
.mainL169:
.mainL168:
	mov r4,#2
	ldr r3,.LPIC0
	add r2,r3,r4,lsl #2
	ldr r4,[r2]
.mainL165:
	cmp r4,#0
	beq .mainL98
.mainL100:
.mainL158:
.mainL160:
	ldr r4,.LPIC1
	ldr r3,[r4]
	add r4,r3,#3
	ldr r3,.LPIC1
	str r4,[r3]
.mainL163:
.mainL162:
	mov r4,#3
	ldr r3,.LPIC0
	add r2,r3,r4,lsl #2
	ldr r4,[r2]
.mainL159:
	cmp r4,#0
	bne .mainL98
.mainL99:
.mainL152:
.mainL154:
	ldr r4,.LPIC1
	ldr r3,[r4]
	add r4,r3,#3
	ldr r3,.LPIC1
	str r4,[r3]
.mainL157:
.mainL156:
	mov r4,#4
	ldr r3,.LPIC0
	add r2,r3,r4,lsl #2
	ldr r4,[r2]
.mainL153:
	cmp r4,#0
	beq .mainL106
.mainL110:
.mainL188:
.mainL190:
	ldr r4,.LPIC1
	ldr r3,[r4]
	add r4,r3,#3
	ldr r3,.LPIC1
	str r4,[r3]
.mainL193:
.mainL192:
	mov r4,#5
	ldr r3,.LPIC0
	add r2,r3,r4,lsl #2
	ldr r4,[r2]
.mainL189:
	cmp r4,#0
	bne .mainL114
.mainL108:
.mainL182:
.mainL184:
	ldr r4,.LPIC1
	ldr r3,[r4]
	add r4,r3,#3
	ldr r3,.LPIC1
	str r4,[r3]
.mainL187:
.mainL186:
	mov r4,#8
	ldr r3,.LPIC0
	add r2,r3,r4,lsl #2
	ldr r4,[r2]
.mainL183:
	cmp r4,#0
	beq .mainL106
.mainL107:
.mainL176:
.mainL178:
	ldr r4,.LPIC1
	ldr r3,[r4]
	add r4,r3,#3
	ldr r3,.LPIC1
	str r4,[r3]
.mainL181:
.mainL180:
	mov r4,#9
	ldr r3,.LPIC0
	add r2,r3,r4,lsl #2
	ldr r4,[r2]
.mainL177:
	cmp r4,#0
	bne .mainL126
.mainL124:
.mainL230:
.mainL232:
	ldr r4,.LPIC1
	ldr r3,[r4]
	add r4,r3,#3
	ldr r3,.LPIC1
	str r4,[r3]
.mainL235:
.mainL234:
	mov r4,#11
	ldr r3,.LPIC0
	add r2,r3,r4,lsl #2
	ldr r4,[r2]
.mainL231:
	cmp r4,#0
	beq .mainL116
.mainL122:
.mainL224:
.mainL226:
	ldr r4,.LPIC1
	ldr r3,[r4]
	add r4,r3,#3
	ldr r3,.LPIC1
	str r4,[r3]
.mainL229:
.mainL228:
	mov r4,#12
	ldr r3,.LPIC0
	add r2,r3,r4,lsl #2
	ldr r4,[r2]
.mainL225:
	cmp r4,#0
	beq .mainL116
.mainL120:
.mainL218:
.mainL220:
	ldr r4,.LPIC1
	ldr r3,[r4]
	add r4,r3,#3
	ldr r3,.LPIC1
	str r4,[r3]
.mainL223:
.mainL222:
	mov r4,#13
	ldr r3,.LPIC0
	add r2,r3,r4,lsl #2
	ldr r4,[r2]
.mainL219:
	cmp r4,#0
	beq .mainL116
.mainL118:
.mainL212:
.mainL214:
	ldr r4,.LPIC1
	ldr r3,[r4]
	add r4,r3,#3
	ldr r3,.LPIC1
	str r4,[r3]
.mainL217:
.mainL216:
	mov r4,#14
	ldr r3,.LPIC0
	add r2,r3,r4,lsl #2
	ldr r4,[r2]
.mainL213:
	cmp r4,#0
	bne .mainL128
.mainL117:
.mainL206:
.mainL208:
	ldr r4,.LPIC1
	ldr r3,[r4]
	add r4,r3,#3
	ldr r3,.LPIC1
	str r4,[r3]
.mainL211:
.mainL210:
	ldr r4,.LPIC0
	ldr r3,[r4]
.mainL207:
	cmp r3,#0
	bne .mainL142
.mainL136:
.mainL260:
.mainL262:
	ldr r4,.LPIC1
	ldr r3,[r4]
	add r4,r3,#3
	ldr r3,.LPIC1
	str r4,[r3]
.mainL265:
.mainL264:
	mov r4,#5
	ldr r3,.LPIC0
	add r2,r3,r4,lsl #2
	ldr r4,[r2]
.mainL261:
	cmp r4,#0
	bne .mainL130
.mainL134:
.mainL254:
.mainL256:
	ldr r4,.LPIC1
	ldr r3,[r4]
	add r4,r3,#3
	ldr r3,.LPIC1
	str r4,[r3]
.mainL259:
.mainL258:
	mov r4,#6
	ldr r3,.LPIC0
	add r2,r3,r4,lsl #2
	ldr r4,[r2]
.mainL255:
	cmp r4,#0
	bne .mainL144
.mainL132:
.mainL248:
.mainL250:
	ldr r4,.LPIC1
	ldr r3,[r4]
	add r4,r3,#3
	ldr r3,.LPIC1
	str r4,[r3]
.mainL253:
.mainL252:
	mov r4,#8
	ldr r3,.LPIC0
	add r2,r3,r4,lsl #2
	ldr r4,[r2]
.mainL249:
	cmp r4,#0
	bne .mainL130
.mainL296:
	mov r4,#0
.mainL131:
	ldr r3,.LPIC1
	ldr r2,[r3]
	add r3,r2,r4
	@call void @putint(i32 %r510)
	push {r3}
	mov r0,r3
	bl putint
	pop {r3}
	mov r0,#0
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL130:
	mov r4,#1
	bl .mainL131
.mainL144:
.mainL284:
.mainL286:
	ldr r3,.LPIC1
	ldr r2,[r3]
	add r3,r2,#3
	ldr r2,.LPIC1
	str r3,[r2]
.mainL289:
.mainL288:
	mov r3,#7
	ldr r2,.LPIC0
	add r1,r2,r3,lsl #2
	ldr r3,[r1]
.mainL285:
	cmp r3,#0
	beq .mainL130
	bne .mainL132
.mainL142:
.mainL278:
.mainL280:
	ldr r4,.LPIC1
	ldr r3,[r4]
	add r4,r3,#3
	ldr r3,.LPIC1
	str r4,[r3]
.mainL283:
.mainL282:
	mov r4,#2
	ldr r3,.LPIC0
	add r2,r3,r4,lsl #2
	ldr r4,[r2]
.mainL279:
	cmp r4,#0
	beq .mainL136
.mainL140:
.mainL272:
.mainL274:
	ldr r4,.LPIC1
	ldr r3,[r4]
	add r4,r3,#3
	ldr r3,.LPIC1
	str r4,[r3]
.mainL277:
.mainL276:
	mov r4,#3
	ldr r3,.LPIC0
	add r2,r3,r4,lsl #2
	ldr r4,[r2]
.mainL273:
	cmp r4,#0
	bne .mainL136
.mainL138:
.mainL266:
.mainL268:
	ldr r4,.LPIC1
	ldr r3,[r4]
	add r4,r3,#3
	bl .LPIC3
.LPIC2:
	.word sum
.LPIC3:
	ldr r3,.LPIC2
	str r4,[r3]
.mainL271:
.mainL270:
	mov r4,#4
	bl .LPIC5
.LPIC4:
	.word array
.LPIC5:
	ldr r3,.LPIC4
	add r2,r3,r4,lsl #2
	ldr r4,[r2]
.mainL267:
	cmp r4,#0
	beq .mainL130
	bne .mainL136
.mainL128:
.mainL242:
.mainL244:
	ldr r4,.LPIC2
	ldr r3,[r4]
	add r4,r3,#3
	ldr r3,.LPIC2
	str r4,[r3]
.mainL247:
.mainL246:
	mov r4,#15
	ldr r3,.LPIC4
	add r2,r3,r4,lsl #2
	ldr r4,[r2]
.mainL243:
	cmp r4,#0
	beq .mainL117
.mainL116:
	bl .mainL117
.mainL126:
.mainL236:
.mainL238:
	ldr r4,.LPIC2
	ldr r3,[r4]
	add r4,r3,#3
	ldr r3,.LPIC2
	str r4,[r3]
.mainL241:
.mainL240:
	mov r4,#10
	ldr r3,.LPIC4
	add r2,r3,r4,lsl #2
	ldr r4,[r2]
.mainL237:
	cmp r4,#0
	beq .mainL116
	bne .mainL124
.mainL106:
	bl .mainL107
.mainL114:
.mainL200:
.mainL202:
	ldr r4,.LPIC2
	ldr r3,[r4]
	add r4,r3,#3
	ldr r3,.LPIC2
	str r4,[r3]
.mainL205:
.mainL204:
	mov r4,#6
	ldr r3,.LPIC4
	add r2,r3,r4,lsl #2
	ldr r4,[r2]
.mainL201:
	cmp r4,#0
	bne .mainL108
.mainL112:
.mainL194:
.mainL196:
	ldr r4,.LPIC2
	ldr r3,[r4]
	add r4,r3,#3
	ldr r3,.LPIC2
	str r4,[r3]
.mainL199:
.mainL198:
	mov r4,#7
	ldr r3,.LPIC4
	add r2,r3,r4,lsl #2
	ldr r4,[r2]
.mainL195:
	cmp r4,#0
	bne .mainL106
	beq .mainL108
.mainL98:
	bl .mainL99
.mainL104:
.mainL170:
.mainL172:
	ldr r4,.LPIC2
	ldr r3,[r4]
	add r4,r3,#3
	ldr r3,.LPIC2
	str r4,[r3]
.mainL175:
.mainL174:
	mov r4,#1
	ldr r3,.LPIC4
	add r2,r3,r4,lsl #2
	ldr r4,[r2]
.mainL171:
	cmp r4,#0
	bne .mainL98
	beq .mainL102
.mainL292:
	mov r4,#1
.mainL91:
	add r3,r4,#1
.mainL92:
	cmp r3,#20
	bge .mainL93
.mainL96:
	sub r2,r3,#1
	@%r330 = call i32 @f(i32 %r328,i32 %r320)
	sub sp,sp,#4 @stack align 8bytes
	push {r2,r3}
	mov r0,r2
	mov r1,r3
	bl f
	mov r1,r0
	pop {r2,r3}
	add sp,sp,#4 @stack align 8bytes
	cmp r1,#0
	beq .mainL93
.mainL295:
	mov r4,r3
	bl .mainL91
.mainL294:
	mov r6,r5
	bl .mainL47
.mainL88:
	@%r164 = call i32 @g(i32 1,i32 %r518)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#1
	mov r1,r6
	bl g
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r5,#0
	bne .mainL50
.mainL86:
	@%r171 = call i32 @g(i32 2,i32 %r518)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#2
	mov r1,r6
	bl g
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r5,#0
	bne .mainL50
.mainL84:
	@%r178 = call i32 @g(i32 3,i32 %r518)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#3
	mov r1,r6
	bl g
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r5,#0
	bne .mainL50
.mainL82:
	@%r185 = call i32 @g(i32 4,i32 %r518)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#4
	mov r1,r6
	bl g
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r5,#0
	bne .mainL50
.mainL80:
	@%r192 = call i32 @g(i32 5,i32 %r518)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#5
	mov r1,r6
	bl g
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r5,#0
	bne .mainL50
.mainL78:
	@%r199 = call i32 @g(i32 6,i32 %r518)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#6
	mov r1,r6
	bl g
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r5,#0
	bne .mainL50
.mainL76:
	@%r206 = call i32 @g(i32 7,i32 %r518)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#7
	mov r1,r6
	bl g
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r5,#0
	bne .mainL50
.mainL74:
	@%r213 = call i32 @g(i32 8,i32 %r518)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#8
	mov r1,r6
	bl g
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r5,#0
	bne .mainL50
.mainL72:
	@%r220 = call i32 @g(i32 9,i32 %r518)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#9
	mov r1,r6
	bl g
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r5,#0
	bne .mainL50
.mainL70:
	@%r227 = call i32 @g(i32 10,i32 %r518)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	mov r1,r6
	bl g
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r5,#0
	bne .mainL50
.mainL68:
	@%r234 = call i32 @g(i32 11,i32 %r518)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#11
	mov r1,r6
	bl g
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r5,#0
	bne .mainL50
.mainL66:
	@%r241 = call i32 @g(i32 12,i32 %r518)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#12
	mov r1,r6
	bl g
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r5,#0
	bne .mainL50
.mainL64:
	@%r248 = call i32 @g(i32 13,i32 %r518)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#13
	mov r1,r6
	bl g
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r5,#0
	bne .mainL50
.mainL62:
	@%r255 = call i32 @g(i32 14,i32 %r518)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#14
	mov r1,r6
	bl g
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r5,#0
	bne .mainL50
.mainL60:
	@%r262 = call i32 @g(i32 15,i32 %r518)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#15
	mov r1,r6
	bl g
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r5,#0
	bne .mainL50
.mainL58:
	@%r269 = call i32 @g(i32 16,i32 %r518)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#16
	mov r1,r6
	bl g
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r5,#0
	bne .mainL50
.mainL56:
	@%r276 = call i32 @g(i32 17,i32 %r518)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#17
	mov r1,r6
	bl g
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r5,#0
	bne .mainL50
.mainL54:
	@%r283 = call i32 @g(i32 18,i32 %r518)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#18
	mov r1,r6
	bl g
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r5,#0
	bne .mainL50
.mainL52:
	@%r290 = call i32 @g(i32 19,i32 %r518)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#19
	mov r1,r6
	bl g
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r5,#0
	bne .mainL50
	beq .mainL51
.mainL293:
	mov r8,r7
	bl .mainL3
.mainL44:
	@%r13 = call i32 @f(i32 1,i32 %r516)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#1
	mov r1,r8
	bl f
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL7
.mainL42:
	@%r20 = call i32 @f(i32 2,i32 %r516)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#2
	mov r1,r8
	bl f
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL7
.mainL40:
	@%r27 = call i32 @f(i32 3,i32 %r516)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#3
	mov r1,r8
	bl f
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL7
.mainL38:
	@%r34 = call i32 @f(i32 4,i32 %r516)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#4
	mov r1,r8
	bl f
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL7
.mainL36:
	@%r41 = call i32 @f(i32 5,i32 %r516)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#5
	mov r1,r8
	bl f
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL7
.mainL34:
	@%r48 = call i32 @f(i32 6,i32 %r516)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#6
	mov r1,r8
	bl f
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL7
.mainL32:
	@%r55 = call i32 @f(i32 7,i32 %r516)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#7
	mov r1,r8
	bl f
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL7
.mainL30:
	@%r62 = call i32 @f(i32 8,i32 %r516)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#8
	mov r1,r8
	bl f
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL7
.mainL28:
	@%r69 = call i32 @f(i32 9,i32 %r516)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#9
	mov r1,r8
	bl f
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL7
.mainL26:
	@%r76 = call i32 @f(i32 10,i32 %r516)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	mov r1,r8
	bl f
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL7
.mainL24:
	@%r83 = call i32 @f(i32 11,i32 %r516)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#11
	mov r1,r8
	bl f
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL7
.mainL22:
	@%r90 = call i32 @f(i32 12,i32 %r516)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#12
	mov r1,r8
	bl f
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL7
.mainL20:
	@%r97 = call i32 @f(i32 13,i32 %r516)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#13
	mov r1,r8
	bl f
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL7
.mainL18:
	@%r104 = call i32 @f(i32 14,i32 %r516)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#14
	mov r1,r8
	bl f
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL7
.mainL16:
	@%r111 = call i32 @f(i32 15,i32 %r516)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#15
	mov r1,r8
	bl f
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL7
.mainL14:
	@%r118 = call i32 @f(i32 16,i32 %r516)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#16
	mov r1,r8
	bl f
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL7
.mainL12:
	@%r125 = call i32 @f(i32 17,i32 %r516)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#17
	mov r1,r8
	bl f
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL7
.mainL10:
	@%r132 = call i32 @f(i32 18,i32 %r516)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#18
	mov r1,r8
	bl f
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL7
.mainL8:
	@%r139 = call i32 @f(i32 19,i32 %r516)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#19
	mov r1,r8
	bl f
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL7
.mainL6:
	bl .mainL7
	.section	.note.GNU-stack,"",%progbits
