.arch armv7-a
.fpu vfpv3-d16
.arm
.data
ints:
	.space  40000
intt:
	.word  0
chas:
	.space  40000
chat:
	.word  0
i:
	.word  0
ii:
	.word  1
c:
	.word  0
get:
	.space  40000
get2:
	.space  40000
.text
.global main
.LPIC0:
	.word  c
.LPIC1:
	.word  chas
.LPIC2:
	.word  chat
.LPIC3:
	.word  get
.LPIC4:
	.word  get2
.LPIC5:
	.word  i
.LPIC6:
	.word  ii
.LPIC7:
	.word  ints
.LPIC8:
	.word  intt
isdigit:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.isdigitL0:
.isdigitL1:
	cmp r0,#48
	bge .isdigitL4
.isdigitL3:
	mov r0,#0
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
.isdigitL4:
	cmp r0,#57
	bgt .isdigitL3
.isdigitL2:
	mov r0,#1
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
intpush:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.intpushL0:
.intpushL1:
	ldr r8,.LPIC8
	ldr r7,[r8]
	add r8,r7,#1
	ldr r7,.LPIC8
	str r8,[r7]
	ldr r8,.LPIC8
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC7
	add r6,r7,r8,lsl #2
	str r0,[r6]
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
getstr:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.getstrL0:
.getstrL1:
	@%r2 = call i32 @getch()
	push {r0}
	bl getch
	mov r8,r0
	pop {r0}
	cmp r8,#13
	bne .getstrL6
.getstrL12:
	mov r7,#0
.getstrL5:
	mov r0,r7
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.getstrL6:
	cmp r8,#10
	bne .getstrL10
.getstrL14:
	mov r7,#0
	bl .getstrL5
.getstrL10:
	mov r6,#0
	mov r5,r8
.getstrL3:
	mov r8,r6
	add r4,r0,r8,lsl #2
	str r5,[r4]
	add r8,r6,#1
	@%r24 = call i32 @getch()
	push {r0}
	bl getch
	mov r4,r0
	pop {r0}
.getstrL4:
	cmp r4,#13
	bne .getstrL8
.getstrL13:
	mov r7,r8
	bl .getstrL5
.getstrL8:
	cmp r4,#10
	bne .getstrL11
.getstrL15:
	mov r7,r8
	bl .getstrL5
.getstrL11:
	mov r6,r8
	mov r5,r4
	bl .getstrL3
power:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.powerL0:
.powerL1:
	cmp r1,#0
	bne .powerL6
.powerL8:
	mov r8,#1
.powerL5:
	mov r0,r8
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.powerL6:
	mov r7,#1
	mov r6,r1
.powerL3:
	mul r5,r7,r0
	sub r4,r6,#1
.powerL4:
	cmp r4,#0
	bne .powerL7
.powerL9:
	mov r8,r5
	bl .powerL5
.powerL7:
	mov r7,r5
	mov r6,r4
	bl .powerL3
chapush:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.chapushL0:
.chapushL1:
	ldr r8,.LPIC2
	ldr r7,[r8]
	add r8,r7,#1
	ldr r7,.LPIC2
	str r8,[r7]
	ldr r8,.LPIC2
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	str r0,[r6]
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
intpop:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.intpopL0:
.intpopL1:
	ldr r8,.LPIC8
	ldr r7,[r8]
	sub r8,r7,#1
	ldr r7,.LPIC8
	str r8,[r7]
	ldr r8,.LPIC8
	ldr r7,[r8]
	add r8,r7,#1
	mov r7,r8
	ldr r8,.LPIC7
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	mov r0,r8
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
chapop:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.chapopL0:
.chapopL1:
	ldr r8,.LPIC2
	ldr r7,[r8]
	sub r8,r7,#1
	ldr r7,.LPIC2
	str r8,[r7]
	ldr r8,.LPIC2
	ldr r7,[r8]
	add r8,r7,#1
	mov r7,r8
	ldr r8,.LPIC1
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	mov r0,r8
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
intadd:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.intaddL0:
.intaddL1:
	ldr r8,.LPIC8
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC7
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#10
	mul r5,r8,r7
	str r5,[r6]
	ldr r8,.LPIC8
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC7
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	add r7,r8,r0
	str r7,[r6]
	add sp,sp,#8
	pop {r5,r6,r7,r8}
	pop {fp,pc}
find:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.findL0:
.findL1:
.findL4:
.findL6:
	ldr r8,.LPIC2
	ldr r7,[r8]
	sub r8,r7,#1
	ldr r7,.LPIC2
	str r8,[r7]
	ldr r8,.LPIC2
	ldr r7,[r8]
	add r8,r7,#1
	mov r7,r8
	ldr r8,.LPIC1
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
.findL5:
	ldr r7,.LPIC0
	str r8,[r7]
	ldr r8,.LPIC6
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC4
	add r6,r7,r8,lsl #2
	mov r8,#32
	str r8,[r6]
	ldr r8,.LPIC0
	ldr r7,[r8]
	ldr r8,.LPIC6
	ldr r6,[r8]
	add r8,r6,#1
	mov r6,r8
	ldr r8,.LPIC4
	add r5,r8,r6,lsl #2
	str r7,[r5]
	ldr r8,.LPIC6
	ldr r7,[r8]
	add r8,r7,#2
	ldr r7,.LPIC6
	str r8,[r7]
	ldr r8,.LPIC2
	ldr r7,[r8]
	cmp r7,#0
	beq .findL2
.findL3:
	mov r0,#1
	add sp,sp,#8
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.findL2:
	mov r0,#0
	add sp,sp,#8
	pop {r5,r6,r7,r8}
	pop {fp,pc}
main:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#28
.mainL0:
.mainL1:
	mov r8,#0
	ldr r7,.LPIC8
	str r8,[r7]
	mov r8,#0
	ldr r7,.LPIC2
	str r8,[r7]
	ldr r8,.LPIC3
	@%r4 = call i32 @getstr(ptr %r3)
	mov r0,r8
	bl getstr
	str r0,[fp,#-12]
	ldr r8,.LPIC5
	ldr r6,[r8]
	ldr r9,[fp,#-12]
	cmp r6,r9
	blt .mainL233
.mainL5:
	ldr r8,.LPIC2
	ldr r6,[r8]
	cmp r6,#0
	bgt .mainL240
.mainL143:
	ldr r8,.LPIC6
	ldr r6,[r8]
	mov r8,r6
	ldr r6,.LPIC4
	add r5,r6,r8,lsl #2
	mov r8,#64
	str r8,[r5]
	mov r8,#1
	ldr r6,.LPIC5
	str r8,[r6]
	ldr r8,.LPIC5
	ldr r6,[r8]
	mov r8,r6
	ldr r6,.LPIC4
	add r5,r6,r8,lsl #2
	ldr r8,[r5]
	cmp r8,#64
	bne .mainL241
.mainL147:
	mov r8,#1
	ldr r6,.LPIC7
	add r5,r6,r8,lsl #2
	ldr r8,[r5]
	@call void @putint(i32 %r817)
	mov r0,r8
	bl putint
	mov r0,#0
	add sp,sp,#28
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.mainL241:
.mainL145:
	ldr r8,.LPIC5
	ldr r6,[r8]
	mov r8,r6
	ldr r6,.LPIC4
	add r5,r6,r8,lsl #2
	ldr r8,[r5]
	cmp r8,#43
	beq .mainL148
.mainL159:
	ldr r8,.LPIC5
	ldr r6,[r8]
	mov r8,r6
	ldr r6,.LPIC4
	add r5,r6,r8,lsl #2
	ldr r8,[r5]
	cmp r8,#45
	beq .mainL148
.mainL157:
	ldr r8,.LPIC5
	ldr r6,[r8]
	mov r8,r6
	ldr r6,.LPIC4
	add r5,r6,r8,lsl #2
	ldr r8,[r5]
	cmp r8,#42
	beq .mainL148
.mainL155:
	ldr r8,.LPIC5
	ldr r6,[r8]
	mov r8,r6
	ldr r6,.LPIC4
	add r5,r6,r8,lsl #2
	ldr r8,[r5]
	cmp r8,#47
	beq .mainL148
.mainL153:
	ldr r8,.LPIC5
	ldr r6,[r8]
	mov r8,r6
	ldr r6,.LPIC4
	add r5,r6,r8,lsl #2
	ldr r8,[r5]
	cmp r8,#37
	beq .mainL148
.mainL151:
	ldr r8,.LPIC5
	ldr r6,[r8]
	mov r8,r6
	ldr r6,.LPIC4
	add r5,r6,r8,lsl #2
	ldr r8,[r5]
	cmp r8,#94
	beq .mainL148
.mainL149:
	ldr r8,.LPIC5
	ldr r6,[r8]
	mov r8,r6
	ldr r6,.LPIC4
	add r5,r6,r8,lsl #2
	ldr r8,[r5]
	cmp r8,#32
	bne .mainL173
.mainL174:
.mainL150:
	ldr r8,.LPIC5
	ldr r6,[r8]
	add r8,r6,#1
	ldr r6,.LPIC5
	str r8,[r6]
.mainL146:
	ldr r8,.LPIC5
	ldr r6,[r8]
	mov r8,r6
	ldr r6,.LPIC4
	add r5,r6,r8,lsl #2
	ldr r8,[r5]
	cmp r8,#64
	bne .mainL145
	beq .mainL147
.mainL173:
	ldr r8,.LPIC5
	ldr r6,[r8]
	mov r8,r6
	ldr r6,.LPIC4
	add r5,r6,r8,lsl #2
	ldr r8,[r5]
	sub r6,r8,#48
.mainL227:
.mainL229:
	ldr r8,.LPIC8
	ldr r5,[r8]
	add r8,r5,#1
	ldr r5,.LPIC8
	str r8,[r5]
	ldr r8,.LPIC8
	ldr r5,[r8]
	mov r8,r5
	ldr r5,.LPIC7
	add r4,r5,r8,lsl #2
	str r6,[r4]
.mainL228:
	mov r8,#1
	ldr r6,.LPIC6
	str r8,[r6]
	ldr r8,.LPIC5
	ldr r6,[r8]
	ldr r8,.LPIC6
	ldr r5,[r8]
	add r8,r6,r5
	mov r6,r8
	ldr r8,.LPIC4
	add r5,r8,r6,lsl #2
	ldr r8,[r5]
	cmp r8,#32
	bne .mainL242
.mainL178:
	ldr r8,.LPIC5
	ldr r6,[r8]
	ldr r8,.LPIC6
	ldr r5,[r8]
	add r8,r6,r5
	sub r6,r8,#1
	ldr r8,.LPIC5
	str r6,[r8]
	bl .mainL174
.mainL242:
.mainL176:
	ldr r8,.LPIC5
	ldr r6,[r8]
	ldr r8,.LPIC6
	ldr r5,[r8]
	add r8,r6,r5
	mov r6,r8
	ldr r8,.LPIC4
	add r4,r8,r6,lsl #2
	ldr r8,[r4]
	sub r6,r8,#48
	@call void @intadd(i32 %r787)
	mov r0,r6
	bl intadd
	add r8,r5,#1
	ldr r6,.LPIC6
	str r8,[r6]
.mainL177:
	ldr r8,.LPIC5
	ldr r6,[r8]
	ldr r8,.LPIC6
	ldr r5,[r8]
	add r8,r6,r5
	mov r6,r8
	ldr r8,.LPIC4
	add r5,r8,r6,lsl #2
	ldr r8,[r5]
	cmp r8,#32
	bne .mainL176
	beq .mainL178
.mainL148:
.mainL215:
.mainL217:
	bl .LPIC10
.LPIC9:
	.word intt
.LPIC10:
	ldr r8,.LPIC9
	ldr r6,[r8]
	sub r8,r6,#1
	ldr r6,.LPIC9
	str r8,[r6]
	ldr r8,.LPIC9
	ldr r6,[r8]
	add r8,r6,#1
	mov r6,r8
	bl .LPIC12
.LPIC11:
	.word ints
.LPIC12:
	ldr r8,.LPIC11
	add r5,r8,r6,lsl #2
	ldr r8,[r5]
.mainL216:
.mainL230:
.mainL232:
	ldr r6,.LPIC9
	ldr r5,[r6]
	sub r6,r5,#1
	ldr r5,.LPIC9
	str r6,[r5]
	ldr r6,.LPIC9
	ldr r5,[r6]
	add r6,r5,#1
	mov r5,r6
	ldr r6,.LPIC11
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
.mainL231:
	bl .LPIC14
.LPIC13:
	.word i
.LPIC14:
	ldr r5,.LPIC13
	ldr r4,[r5]
	mov r5,r4
	bl .LPIC16
.LPIC15:
	.word get2
.LPIC16:
	ldr r4,.LPIC15
	add r3,r4,r5,lsl #2
	ldr r5,[r3]
	cmp r5,#43
	beq .mainL161
.mainL244:
	mov r9,#0
	str r9,[fp,#-16]
.mainL162:
	ldr r4,.LPIC13
	ldr r3,[r4]
	mov r4,r3
	ldr r3,.LPIC15
	add r2,r3,r4,lsl #2
	ldr r4,[r2]
	cmp r4,#45
	beq .mainL163
.mainL245:
	ldr r9,[fp,#-16]
	mov r10,r9
	str r10,[fp,#-20]
.mainL164:
	ldr r3,.LPIC13
	ldr r2,[r3]
	mov r3,r2
	ldr r2,.LPIC15
	add r1,r2,r3,lsl #2
	ldr r3,[r1]
	cmp r3,#42
	beq .mainL165
.mainL246:
	ldr r9,[fp,#-20]
	mov r10,r9
	str r10,[fp,#-24]
.mainL166:
	ldr r2,.LPIC13
	ldr r1,[r2]
	mov r2,r1
	ldr r1,.LPIC15
	add r0,r1,r2,lsl #2
	ldr r2,[r0]
	cmp r2,#47
	beq .mainL167
.mainL247:
	ldr r9,[fp,#-24]
	mov r10,r9
	str r10,[fp,#-28]
.mainL168:
	ldr r1,.LPIC13
	ldr r0,[r1]
	mov r1,r0
	ldr r0,.LPIC15
	add r7,r0,r1,lsl #2
	ldr r1,[r7]
	cmp r1,#37
	beq .mainL169
.mainL248:
	ldr r9,[fp,#-28]
	mov r7,r9
.mainL170:
	ldr r1,.LPIC13
	ldr r0,[r1]
	mov r1,r0
	ldr r0,.LPIC15
	add r5,r0,r1,lsl #2
	ldr r1,[r5]
	cmp r1,#94
	beq .mainL171
.mainL249:
	mov r5,r7
.mainL172:
.mainL224:
.mainL226:
	ldr r1,.LPIC9
	ldr r0,[r1]
	add r1,r0,#1
	ldr r0,.LPIC9
	str r1,[r0]
	ldr r1,.LPIC9
	ldr r0,[r1]
	mov r1,r0
	ldr r0,.LPIC11
	add r4,r0,r1,lsl #2
	str r5,[r4]
.mainL225:
	bl .mainL150
.mainL171:
.mainL218:
.mainL220:
	cmp r8,#0
	bne .mainL243
.mainL251:
	mov r4,#1
.mainL223:
.mainL219:
	mov r5,r4
	bl .mainL172
.mainL243:
	mov r5,r8
	mov r1,#1
.mainL221:
	mul r0,r1,r6
	sub r3,r5,#1
.mainL222:
	cmp r3,#0
	bne .mainL250
.mainL252:
	mov r4,r0
	bl .mainL223
.mainL250:
	mov r5,r3
	mov r1,r0
	bl .mainL221
.mainL169:
	@%r747 = call i32 @__modsi3(i32 %r903,i32 %r881)
	push {r2,r3}
	mov r0,r6
	mov r1,r8
	bl __modsi3
	mov r5,r0
	pop {r2,r3}
	mov r7,r5
	bl .mainL170
.mainL167:
	@%r737 = call i32 @__aeabi_idiv(i32 %r903,i32 %r881)
	push {r2,r3}
	mov r0,r6
	mov r1,r8
	bl __aeabi_idiv
	mov r7,r0
	pop {r2,r3}
	mov r9,r7
	str r9,[fp,#-28]
	bl .mainL168
.mainL165:
	mul r7,r8,r6
	mov r9,r7
	str r9,[fp,#-24]
	bl .mainL166
.mainL163:
	sub r7,r6,r8
	mov r9,r7
	str r9,[fp,#-20]
	bl .mainL164
.mainL161:
	add r7,r8,r6
	mov r9,r7
	str r9,[fp,#-16]
	bl .mainL162
.mainL240:
.mainL141:
.mainL212:
.mainL214:
	bl .LPIC18
.LPIC17:
	.word chat
.LPIC18:
	ldr r8,.LPIC17
	ldr r7,[r8]
	sub r8,r7,#1
	ldr r7,.LPIC17
	str r8,[r7]
	ldr r8,.LPIC17
	ldr r7,[r8]
	add r8,r7,#1
	mov r7,r8
	bl .LPIC20
.LPIC19:
	.word chas
.LPIC20:
	ldr r8,.LPIC19
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
.mainL213:
	bl .LPIC22
.LPIC21:
	.word ii
.LPIC22:
	ldr r7,.LPIC21
	ldr r6,[r7]
	mov r7,r6
	ldr r6,.LPIC15
	add r5,r6,r7,lsl #2
	mov r7,#32
	str r7,[r5]
	ldr r7,.LPIC21
	ldr r6,[r7]
	add r7,r6,#1
	mov r6,r7
	ldr r7,.LPIC15
	add r5,r7,r6,lsl #2
	str r8,[r5]
	ldr r8,.LPIC21
	ldr r7,[r8]
	add r8,r7,#2
	ldr r7,.LPIC21
	str r8,[r7]
.mainL142:
	ldr r8,.LPIC17
	ldr r7,[r8]
	cmp r7,#0
	bgt .mainL141
	ble .mainL143
.mainL233:
.mainL3:
	ldr r8,.LPIC13
	ldr r7,[r8]
	mov r8,r7
	bl .LPIC24
.LPIC23:
	.word get
.LPIC24:
	ldr r7,.LPIC23
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
.mainL179:
.mainL181:
	cmp r8,#48
	bge .mainL184
.mainL183:
	mov r7,#0
.mainL180:
	cmp r7,#1
	beq .mainL6
.mainL7:
	ldr r6,.LPIC13
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC23
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#40
	beq .mainL9
.mainL10:
	ldr r6,.LPIC13
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC23
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#94
	beq .mainL11
.mainL12:
	ldr r6,.LPIC13
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC23
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#41
	beq .mainL13
.mainL14:
	ldr r6,.LPIC13
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC23
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#43
	beq .mainL19
.mainL20:
	ldr r6,.LPIC13
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC23
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#45
	beq .mainL48
.mainL49:
	ldr r6,.LPIC13
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC23
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#42
	beq .mainL77
.mainL78:
	ldr r6,.LPIC13
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC23
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#47
	beq .mainL98
.mainL99:
	ldr r6,.LPIC13
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC23
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#37
	beq .mainL119
.mainL120:
	ldr r6,.LPIC21
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC15
	add r4,r5,r6,lsl #2
	mov r6,#32
	str r6,[r4]
	ldr r6,.LPIC21
	ldr r5,[r6]
	add r6,r5,#1
	ldr r5,.LPIC21
	str r6,[r5]
.mainL8:
	ldr r6,.LPIC13
	ldr r5,[r6]
	add r6,r5,#1
	ldr r5,.LPIC13
	str r6,[r5]
.mainL4:
	ldr r6,.LPIC13
	ldr r5,[r6]
	ldr r9,[fp,#-12]
	cmp r5,r9
	blt .mainL3
	bge .mainL5
.mainL119:
	ldr r6,.LPIC17
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC19
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#42
	beq .mainL239
.mainL129:
	ldr r6,.LPIC17
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC19
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#47
	beq .mainL239
.mainL127:
	ldr r6,.LPIC17
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC19
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#37
	beq .mainL239
.mainL125:
	ldr r6,.LPIC17
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC19
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#94
	beq .mainL239
.mainL124:
.mainL209:
.mainL211:
	ldr r6,.LPIC17
	ldr r5,[r6]
	add r6,r5,#1
	ldr r5,.LPIC17
	str r6,[r5]
	ldr r6,.LPIC17
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC19
	add r4,r5,r6,lsl #2
	mov r6,#37
	str r6,[r4]
.mainL210:
	bl .mainL120
.mainL239:
.mainL122:
	@%r544 = call i32 @find()
	bl find
	mov r6,r0
	cmp r6,#0
	beq .mainL131
.mainL132:
.mainL123:
	ldr r6,.LPIC17
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC19
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#42
	beq .mainL122
.mainL138:
	ldr r6,.LPIC17
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC19
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#47
	beq .mainL122
.mainL136:
	ldr r6,.LPIC17
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC19
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#37
	beq .mainL122
.mainL134:
	ldr r6,.LPIC17
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC19
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#94
	beq .mainL122
	bne .mainL124
.mainL131:
	bl .mainL124
.mainL98:
	ldr r6,.LPIC17
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC19
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#42
	beq .mainL238
.mainL108:
	ldr r6,.LPIC17
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC19
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#47
	beq .mainL238
.mainL106:
	ldr r6,.LPIC17
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC19
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#37
	beq .mainL238
.mainL104:
	ldr r6,.LPIC17
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC19
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#94
	beq .mainL238
.mainL103:
.mainL206:
.mainL208:
	ldr r6,.LPIC17
	ldr r5,[r6]
	add r6,r5,#1
	ldr r5,.LPIC17
	str r6,[r5]
	ldr r6,.LPIC17
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC19
	add r4,r5,r6,lsl #2
	mov r6,#47
	str r6,[r4]
.mainL207:
	bl .mainL99
.mainL238:
.mainL101:
	@%r457 = call i32 @find()
	bl find
	mov r6,r0
	cmp r6,#0
	beq .mainL110
.mainL111:
.mainL102:
	ldr r6,.LPIC17
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC19
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#42
	beq .mainL101
.mainL117:
	ldr r6,.LPIC17
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC19
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#47
	beq .mainL101
.mainL115:
	ldr r6,.LPIC17
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC19
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#37
	beq .mainL101
.mainL113:
	ldr r6,.LPIC17
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC19
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#94
	beq .mainL101
	bne .mainL103
.mainL110:
	bl .mainL103
.mainL77:
	ldr r6,.LPIC17
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC19
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#42
	beq .mainL237
.mainL87:
	ldr r6,.LPIC17
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC19
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#47
	beq .mainL237
.mainL85:
	ldr r6,.LPIC17
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC19
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#37
	beq .mainL237
.mainL83:
	ldr r6,.LPIC17
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC19
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#94
	beq .mainL237
.mainL82:
.mainL203:
.mainL205:
	ldr r6,.LPIC17
	ldr r5,[r6]
	add r6,r5,#1
	ldr r5,.LPIC17
	str r6,[r5]
	ldr r6,.LPIC17
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC19
	add r4,r5,r6,lsl #2
	mov r6,#42
	str r6,[r4]
.mainL204:
	bl .mainL78
.mainL237:
.mainL80:
	@%r370 = call i32 @find()
	bl find
	mov r6,r0
	cmp r6,#0
	beq .mainL89
.mainL90:
.mainL81:
	ldr r6,.LPIC17
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC19
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#42
	beq .mainL80
.mainL96:
	ldr r6,.LPIC17
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC19
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#47
	beq .mainL80
.mainL94:
	bl .LPIC26
.LPIC25:
	.word chat
.LPIC26:
	ldr r6,.LPIC25
	ldr r5,[r6]
	mov r6,r5
	bl .LPIC28
.LPIC27:
	.word chas
.LPIC28:
	ldr r5,.LPIC27
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#37
	beq .mainL80
.mainL92:
	ldr r6,.LPIC25
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC27
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#94
	beq .mainL80
	bne .mainL82
.mainL89:
	bl .mainL82
.mainL48:
	ldr r6,.LPIC25
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC27
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#43
	beq .mainL236
.mainL62:
	ldr r6,.LPIC25
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC27
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#45
	beq .mainL236
.mainL60:
	ldr r6,.LPIC25
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC27
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#42
	beq .mainL236
.mainL58:
	ldr r6,.LPIC25
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC27
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#47
	beq .mainL236
.mainL56:
	ldr r6,.LPIC25
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC27
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#37
	beq .mainL236
.mainL54:
	ldr r6,.LPIC25
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC27
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#94
	beq .mainL236
.mainL53:
.mainL200:
.mainL202:
	ldr r6,.LPIC25
	ldr r5,[r6]
	add r6,r5,#1
	ldr r5,.LPIC25
	str r6,[r5]
	ldr r6,.LPIC25
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC27
	add r4,r5,r6,lsl #2
	mov r6,#45
	str r6,[r4]
.mainL201:
	bl .mainL49
.mainL236:
.mainL51:
	@%r263 = call i32 @find()
	bl find
	mov r6,r0
	cmp r6,#0
	beq .mainL64
.mainL65:
.mainL52:
	ldr r6,.LPIC25
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC27
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#43
	beq .mainL51
.mainL75:
	ldr r6,.LPIC25
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC27
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#45
	beq .mainL51
.mainL73:
	ldr r6,.LPIC25
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC27
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#42
	beq .mainL51
.mainL71:
	ldr r6,.LPIC25
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC27
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#47
	beq .mainL51
.mainL69:
	ldr r6,.LPIC25
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC27
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#37
	beq .mainL51
.mainL67:
	ldr r6,.LPIC25
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC27
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#94
	beq .mainL51
	bne .mainL53
.mainL64:
	bl .mainL53
.mainL19:
	ldr r6,.LPIC25
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC27
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#43
	beq .mainL235
.mainL33:
	ldr r6,.LPIC25
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC27
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#45
	beq .mainL235
.mainL31:
	ldr r6,.LPIC25
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC27
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#42
	beq .mainL235
.mainL29:
	ldr r6,.LPIC25
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC27
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#47
	beq .mainL235
.mainL27:
	ldr r6,.LPIC25
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC27
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#37
	beq .mainL235
.mainL25:
	ldr r6,.LPIC25
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC27
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#94
	beq .mainL235
.mainL24:
.mainL197:
.mainL199:
	ldr r6,.LPIC25
	ldr r5,[r6]
	add r6,r5,#1
	ldr r5,.LPIC25
	str r6,[r5]
	ldr r6,.LPIC25
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC27
	add r4,r5,r6,lsl #2
	mov r6,#43
	str r6,[r4]
.mainL198:
	bl .mainL20
.mainL235:
.mainL22:
	@%r136 = call i32 @find()
	bl find
	mov r6,r0
	cmp r6,#0
	beq .mainL35
.mainL36:
.mainL23:
	ldr r6,.LPIC25
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC27
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#43
	beq .mainL22
.mainL46:
	ldr r6,.LPIC25
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC27
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#45
	beq .mainL22
.mainL44:
	ldr r6,.LPIC25
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC27
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#42
	beq .mainL22
.mainL42:
	ldr r6,.LPIC25
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC27
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#47
	beq .mainL22
.mainL40:
	ldr r6,.LPIC25
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC27
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#37
	beq .mainL22
.mainL38:
	ldr r6,.LPIC25
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC27
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,#94
	beq .mainL22
	bne .mainL24
.mainL35:
	bl .mainL24
.mainL13:
.mainL191:
.mainL193:
	ldr r6,.LPIC25
	ldr r5,[r6]
	sub r6,r5,#1
	ldr r5,.LPIC25
	str r6,[r5]
	ldr r6,.LPIC25
	ldr r5,[r6]
	add r6,r5,#1
	mov r5,r6
	ldr r6,.LPIC27
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
.mainL192:
	bl .LPIC30
.LPIC29:
	.word c
.LPIC30:
	ldr r5,.LPIC29
	str r6,[r5]
	ldr r6,.LPIC29
	ldr r5,[r6]
	cmp r5,#40
	bne .mainL234
.mainL18:
	bl .mainL14
.mainL234:
.mainL16:
	bl .LPIC32
.LPIC31:
	.word ii
.LPIC32:
	ldr r6,.LPIC31
	ldr r5,[r6]
	mov r6,r5
	bl .LPIC34
.LPIC33:
	.word get2
.LPIC34:
	ldr r5,.LPIC33
	add r4,r5,r6,lsl #2
	mov r6,#32
	str r6,[r4]
	ldr r6,.LPIC29
	ldr r5,[r6]
	ldr r6,.LPIC31
	ldr r4,[r6]
	add r6,r4,#1
	mov r4,r6
	ldr r6,.LPIC33
	add r3,r6,r4,lsl #2
	str r5,[r3]
	ldr r6,.LPIC31
	ldr r5,[r6]
	add r6,r5,#2
	ldr r5,.LPIC31
	str r6,[r5]
.mainL194:
.mainL196:
	ldr r6,.LPIC25
	ldr r5,[r6]
	sub r6,r5,#1
	ldr r5,.LPIC25
	str r6,[r5]
	ldr r6,.LPIC25
	ldr r5,[r6]
	add r6,r5,#1
	mov r5,r6
	ldr r6,.LPIC27
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
.mainL195:
	ldr r5,.LPIC29
	str r6,[r5]
.mainL17:
	ldr r6,.LPIC29
	ldr r5,[r6]
	cmp r5,#40
	bne .mainL16
	beq .mainL18
.mainL11:
.mainL188:
.mainL190:
	ldr r6,.LPIC25
	ldr r5,[r6]
	add r6,r5,#1
	ldr r5,.LPIC25
	str r6,[r5]
	ldr r6,.LPIC25
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC27
	add r4,r5,r6,lsl #2
	mov r6,#94
	str r6,[r4]
.mainL189:
	bl .mainL12
.mainL9:
.mainL185:
.mainL187:
	ldr r6,.LPIC25
	ldr r5,[r6]
	add r6,r5,#1
	ldr r5,.LPIC25
	str r6,[r5]
	ldr r6,.LPIC25
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC27
	add r4,r5,r6,lsl #2
	mov r6,#40
	str r6,[r4]
.mainL186:
	bl .mainL10
.mainL6:
	bl .LPIC36
.LPIC35:
	.word i
.LPIC36:
	ldr r6,.LPIC35
	ldr r5,[r6]
	mov r6,r5
	bl .LPIC38
.LPIC37:
	.word get
.LPIC38:
	ldr r5,.LPIC37
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	ldr r5,.LPIC31
	ldr r4,[r5]
	mov r5,r4
	ldr r4,.LPIC33
	add r3,r4,r5,lsl #2
	str r6,[r3]
	ldr r6,.LPIC31
	ldr r5,[r6]
	add r6,r5,#1
	ldr r5,.LPIC31
	str r6,[r5]
	bl .mainL8
.mainL184:
	cmp r8,#57
	bgt .mainL183
.mainL182:
	mov r7,#1
	bl .mainL180
	.section	.note.GNU-stack,"",%progbits
