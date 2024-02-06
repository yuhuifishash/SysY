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
isdigit:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.isdigitL0:
	str r0,[fp,#-12]
.isdigitL1:
	ldr r8,[fp,#-12]
	mov r7,#48
	cmp r8,r7
	bge .isdigitL4
.isdigitL3:
	mov r8,#0
	mov r0,r8
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
.isdigitL4:
	ldr r8,[fp,#-12]
	mov r7,#57
	cmp r8,r7
	bgt .isdigitL3
.isdigitL2:
	mov r8,#1
	mov r0,r8
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
intpush:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.intpushL0:
	str r0,[fp,#-12]
.intpushL1:
	ldr r8,.LPIC8
	ldr r7,[r8]
	mov r8,#1
	add r6,r7,r8
	ldr r8,.LPIC8
	str r6,[r8]
	ldr r8,[fp,#-12]
	ldr r7,.LPIC8
	ldr r6,[r7]
	mov r7,r6
	ldr r6,.LPIC7
	add r5,r6,r7,lsl #2
	str r8,[r5]
	add sp,sp,#12
	pop {r5,r6,r7,r8}
	pop {fp,pc}
getstr:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.getstrL0:
.getstrL1:
	@%r2 = call i32 @getch()
	push {r0}
	bl getch
	mov r8,r0
	pop {r0}
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	mov r7,#13
	cmp r8,r7
	bne .getstrL6
.getstrL5:
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
.getstrL6:
	ldr r8,[fp,#-16]
	mov r7,#10
	cmp r8,r7
	beq .getstrL5
.getstrL3:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	mov r6,r7
	add r7,r0,r6,lsl #2
	str r8,[r7]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	@%r24 = call i32 @getch()
	push {r0}
	bl getch
	mov r8,r0
	pop {r0}
	str r8,[fp,#-16]
.getstrL4:
	ldr r8,[fp,#-16]
	mov r7,#13
	cmp r8,r7
	beq .getstrL5
.getstrL8:
	ldr r8,[fp,#-16]
	mov r7,#10
	cmp r8,r7
	bne .getstrL3
	beq .getstrL5
power:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#20
.powerL0:
	str r0,[fp,#-16]
	str r1,[fp,#-20]
.powerL1:
	mov r8,#1
	str r8,[fp,#-12]
	ldr r8,[fp,#-20]
	mov r7,#0
	cmp r8,r7
	bne .powerL3
.powerL5:
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#20
	pop {r6,r7,r8}
	pop {fp,pc}
.powerL3:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	mul r6,r8,r7
	str r6,[fp,#-12]
	ldr r8,[fp,#-20]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-20]
.powerL4:
	ldr r8,[fp,#-20]
	mov r7,#0
	cmp r8,r7
	bne .powerL3
	beq .powerL5
chapush:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.chapushL0:
	str r0,[fp,#-12]
.chapushL1:
	ldr r8,.LPIC2
	ldr r7,[r8]
	mov r8,#1
	add r6,r7,r8
	ldr r8,.LPIC2
	str r6,[r8]
	ldr r8,[fp,#-12]
	ldr r7,.LPIC2
	ldr r6,[r7]
	mov r7,r6
	ldr r6,.LPIC1
	add r5,r6,r7,lsl #2
	str r8,[r5]
	add sp,sp,#12
	pop {r5,r6,r7,r8}
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
	mov r8,#1
	sub r6,r7,r8
	ldr r8,.LPIC8
	str r6,[r8]
	ldr r8,.LPIC8
	ldr r7,[r8]
	mov r8,#1
	add r6,r7,r8
	mov r8,r6
	ldr r7,.LPIC7
	add r6,r7,r8,lsl #2
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
	mov r8,#1
	sub r6,r7,r8
	ldr r8,.LPIC2
	str r6,[r8]
	ldr r8,.LPIC2
	ldr r7,[r8]
	mov r8,#1
	add r6,r7,r8
	mov r8,r6
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r0,r8
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
intadd:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.intaddL0:
	str r0,[fp,#-12]
.intaddL1:
	ldr r8,.LPIC8
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC7
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#10
	mul r6,r8,r7
	ldr r8,.LPIC8
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC7
	add r5,r7,r8,lsl #2
	str r6,[r5]
	ldr r8,.LPIC8
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC7
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-12]
	add r6,r8,r7
	ldr r8,.LPIC8
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC7
	add r5,r7,r8,lsl #2
	str r6,[r5]
	add sp,sp,#12
	pop {r5,r6,r7,r8}
	pop {fp,pc}
find:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.findL0:
.findL1:
	@%r0 = call i32 @chapop()
	bl chapop
	mov r8,r0
	ldr r7,.LPIC0
	str r8,[r7]
	mov r8,#32
	ldr r7,.LPIC6
	ldr r6,[r7]
	mov r7,r6
	ldr r6,.LPIC4
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,.LPIC0
	ldr r7,[r8]
	ldr r8,.LPIC6
	ldr r6,[r8]
	mov r8,#1
	add r5,r6,r8
	mov r8,r5
	ldr r6,.LPIC4
	add r5,r6,r8,lsl #2
	str r7,[r5]
	ldr r8,.LPIC6
	ldr r7,[r8]
	mov r8,#2
	add r6,r7,r8
	ldr r8,.LPIC6
	str r6,[r8]
	ldr r8,.LPIC2
	ldr r7,[r8]
	mov r8,#0
	cmp r7,r8
	beq .findL2
.findL3:
	mov r8,#1
	mov r0,r8
	add sp,sp,#8
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.findL2:
	mov r8,#0
	mov r0,r8
	add sp,sp,#8
	pop {r5,r6,r7,r8}
	pop {fp,pc}
main:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#48
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
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl getstr
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	str r7,[fp,#-28]
	ldr r8,.LPIC5
	ldr r7,[r8]
	ldr r8,[fp,#-28]
	cmp r7,r8
	blt .mainL3
.mainL5:
	ldr r8,.LPIC2
	ldr r7,[r8]
	mov r8,#0
	cmp r7,r8
	bgt .mainL141
.mainL143:
	mov r8,#64
	ldr r7,.LPIC6
	ldr r6,[r7]
	mov r7,r6
	ldr r6,.LPIC4
	add r5,r6,r7,lsl #2
	str r8,[r5]
	mov r8,#1
	ldr r7,.LPIC5
	str r8,[r7]
	ldr r8,.LPIC5
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC4
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#64
	cmp r8,r7
	bne .mainL145
.mainL147:
	mov r8,#1
	mov r7,r8
	ldr r8,.LPIC7
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	@call void @putint(i32 %r817)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	mov r0,r8
	add sp,sp,#48
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.mainL145:
	ldr r8,.LPIC5
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC4
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#43
	cmp r8,r7
	beq .mainL148
.mainL159:
	ldr r8,.LPIC5
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC4
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#45
	cmp r8,r7
	beq .mainL148
.mainL157:
	ldr r8,.LPIC5
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC4
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#42
	cmp r8,r7
	beq .mainL148
.mainL155:
	ldr r8,.LPIC5
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC4
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#47
	cmp r8,r7
	beq .mainL148
.mainL153:
	ldr r8,.LPIC5
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC4
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#37
	cmp r8,r7
	beq .mainL148
.mainL151:
	ldr r8,.LPIC5
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC4
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#94
	cmp r8,r7
	beq .mainL148
.mainL149:
	ldr r8,.LPIC5
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC4
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#32
	cmp r8,r7
	bne .mainL173
.mainL174:
.mainL150:
	ldr r8,.LPIC5
	ldr r7,[r8]
	mov r8,#1
	add r6,r7,r8
	ldr r8,.LPIC5
	str r6,[r8]
.mainL146:
	ldr r8,.LPIC5
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC4
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#64
	cmp r8,r7
	bne .mainL145
	beq .mainL147
.mainL173:
	ldr r8,.LPIC5
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC4
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#48
	sub r6,r8,r7
	@call void @intpush(i32 %r770)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	bl intpush
	add sp,sp,#4 @stack align 8bytes
	mov r8,#1
	ldr r7,.LPIC6
	str r8,[r7]
	ldr r8,.LPIC5
	ldr r7,[r8]
	ldr r8,.LPIC6
	ldr r6,[r8]
	add r8,r7,r6
	mov r7,r8
	bl .LPIC10
.LPIC9:
	.word get2
.LPIC10:
	ldr r8,.LPIC9
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	mov r7,#32
	cmp r8,r7
	bne .mainL176
.mainL178:
	bl .LPIC12
.LPIC11:
	.word i
.LPIC12:
	ldr r8,.LPIC11
	ldr r7,[r8]
	bl .LPIC14
.LPIC13:
	.word ii
.LPIC14:
	ldr r8,.LPIC13
	ldr r6,[r8]
	add r8,r7,r6
	mov r7,#1
	sub r6,r8,r7
	ldr r8,.LPIC11
	str r6,[r8]
	bl .mainL174
.mainL176:
	ldr r8,.LPIC11
	ldr r7,[r8]
	ldr r8,.LPIC13
	ldr r6,[r8]
	add r8,r7,r6
	mov r7,r8
	ldr r8,.LPIC9
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	mov r7,#48
	sub r6,r8,r7
	@call void @intadd(i32 %r787)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	bl intadd
	add sp,sp,#4 @stack align 8bytes
	ldr r8,.LPIC13
	ldr r7,[r8]
	mov r8,#1
	add r6,r7,r8
	ldr r8,.LPIC13
	str r6,[r8]
.mainL177:
	ldr r8,.LPIC11
	ldr r7,[r8]
	ldr r8,.LPIC13
	ldr r6,[r8]
	add r8,r7,r6
	mov r7,r8
	ldr r8,.LPIC9
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	mov r7,#32
	cmp r8,r7
	bne .mainL176
	beq .mainL178
.mainL148:
	@%r693 = call i32 @intpop()
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	bl intpop
	str r0,[fp,#-40]
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	ldr r9,[fp,#-40]
	str r9,[fp,#-20]
	@%r695 = call i32 @intpop()
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	bl intpop
	mov r7,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	str r7,[fp,#-16]
	mov r6,#0
	str r6,[fp,#-12]
	ldr r5,.LPIC11
	ldr r4,[r5]
	mov r9,r4
	str r9,[fp,#-32]
	ldr r9,.LPIC9
	str r9,[fp,#-44]
	ldr r9,[fp,#-44]
	ldr r10,[fp,#-32]
	add r1,r9,r10,lsl #2
	ldr r9,[r1]
	str r9,[fp,#-36]
	mov r9,#43
	str r9,[fp,#-48]
	ldr r9,[fp,#-36]
	ldr r10,[fp,#-48]
	cmp r9,r10
	beq .mainL161
.mainL162:
	ldr r8,.LPIC11
	ldr r2,[r8]
	mov r8,r2
	ldr r2,.LPIC9
	add r3,r2,r8,lsl #2
	ldr r8,[r3]
	mov r3,#45
	cmp r8,r3
	beq .mainL163
.mainL164:
	ldr r8,.LPIC11
	ldr r3,[r8]
	mov r8,r3
	ldr r3,.LPIC9
	add r2,r3,r8,lsl #2
	ldr r8,[r2]
	mov r3,#42
	cmp r8,r3
	beq .mainL165
.mainL166:
	ldr r8,.LPIC11
	ldr r3,[r8]
	mov r8,r3
	ldr r3,.LPIC9
	add r2,r3,r8,lsl #2
	ldr r8,[r2]
	mov r3,#47
	cmp r8,r3
	beq .mainL167
.mainL168:
	ldr r8,.LPIC11
	ldr r3,[r8]
	mov r8,r3
	ldr r3,.LPIC9
	add r2,r3,r8,lsl #2
	ldr r8,[r2]
	mov r3,#37
	cmp r8,r3
	beq .mainL169
.mainL170:
	ldr r8,.LPIC11
	ldr r3,[r8]
	mov r8,r3
	ldr r3,.LPIC9
	add r2,r3,r8,lsl #2
	ldr r8,[r2]
	mov r3,#94
	cmp r8,r3
	beq .mainL171
.mainL172:
	ldr r8,[fp,#-12]
	@call void @intpush(i32 %r758)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r0,r8
	bl intpush
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	bl .mainL150
.mainL171:
	ldr r8,[fp,#-16]
	ldr r3,[fp,#-20]
	@%r757 = call i32 @power(i32 %r755,i32 %r756)
	push {r0,r1,r3}
	mov r0,r8
	mov r1,r3
	bl power
	mov r2,r0
	pop {r0,r1,r3}
	str r2,[fp,#-12]
	bl .mainL172
.mainL169:
	ldr r8,[fp,#-16]
	ldr r3,[fp,#-20]
	@%r747 = call i32 @__modsi3(i32 %r745,i32 %r746)
	push {r0,r1,r3}
	mov r0,r8
	mov r1,r3
	bl __modsi3
	mov r2,r0
	pop {r0,r1,r3}
	str r2,[fp,#-12]
	bl .mainL170
.mainL167:
	ldr r8,[fp,#-16]
	ldr r3,[fp,#-20]
	@%r737 = call i32 @__aeabi_idiv(i32 %r735,i32 %r736)
	push {r0,r1,r3}
	mov r0,r8
	mov r1,r3
	bl __aeabi_idiv
	mov r2,r0
	pop {r0,r1,r3}
	str r2,[fp,#-12]
	bl .mainL168
.mainL165:
	ldr r8,[fp,#-20]
	ldr r3,[fp,#-16]
	mul r2,r8,r3
	str r2,[fp,#-12]
	bl .mainL166
.mainL163:
	ldr r8,[fp,#-16]
	ldr r3,[fp,#-20]
	sub r2,r8,r3
	str r2,[fp,#-12]
	bl .mainL164
.mainL161:
	ldr r8,[fp,#-20]
	ldr r3,[fp,#-16]
	add r2,r8,r3
	str r2,[fp,#-12]
	bl .mainL162
.mainL141:
	@%r607 = call i32 @chapop()
	sub sp,sp,#4 @stack align 8bytes
	bl chapop
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-24]
	mov r8,#32
	ldr r7,.LPIC13
	ldr r6,[r7]
	mov r7,r6
	ldr r6,.LPIC9
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-24]
	ldr r7,.LPIC13
	ldr r6,[r7]
	mov r7,#1
	add r5,r6,r7
	mov r7,r5
	ldr r6,.LPIC9
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,.LPIC13
	ldr r7,[r8]
	mov r8,#2
	add r6,r7,r8
	ldr r8,.LPIC13
	str r6,[r8]
.mainL142:
	bl .LPIC16
.LPIC15:
	.word chat
.LPIC16:
	ldr r8,.LPIC15
	ldr r7,[r8]
	mov r8,#0
	cmp r7,r8
	bgt .mainL141
	ble .mainL143
.mainL3:
	ldr r8,.LPIC11
	ldr r7,[r8]
	mov r8,r7
	bl .LPIC18
.LPIC17:
	.word get
.LPIC18:
	ldr r7,.LPIC17
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	@%r13 = call i32 @isdigit(i32 %r12)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl isdigit
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	mov r8,#1
	cmp r7,r8
	beq .mainL6
.mainL7:
	ldr r8,.LPIC11
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC17
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#40
	cmp r8,r7
	beq .mainL9
.mainL10:
	ldr r8,.LPIC11
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC17
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#94
	cmp r8,r7
	beq .mainL11
.mainL12:
	ldr r8,.LPIC11
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC17
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#41
	cmp r8,r7
	beq .mainL13
.mainL14:
	ldr r8,.LPIC11
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC17
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#43
	cmp r8,r7
	beq .mainL19
.mainL20:
	ldr r8,.LPIC11
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC17
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#45
	cmp r8,r7
	beq .mainL48
.mainL49:
	ldr r8,.LPIC11
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC17
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#42
	cmp r8,r7
	beq .mainL77
.mainL78:
	ldr r8,.LPIC11
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC17
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#47
	cmp r8,r7
	beq .mainL98
.mainL99:
	ldr r8,.LPIC11
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC17
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#37
	cmp r8,r7
	beq .mainL119
.mainL120:
	mov r8,#32
	ldr r7,.LPIC13
	ldr r6,[r7]
	mov r7,r6
	ldr r6,.LPIC9
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,.LPIC13
	ldr r7,[r8]
	mov r8,#1
	add r6,r7,r8
	ldr r8,.LPIC13
	str r6,[r8]
.mainL8:
	ldr r8,.LPIC11
	ldr r7,[r8]
	mov r8,#1
	add r6,r7,r8
	ldr r8,.LPIC11
	str r6,[r8]
.mainL4:
	ldr r8,.LPIC11
	ldr r7,[r8]
	ldr r8,[fp,#-28]
	cmp r7,r8
	blt .mainL3
	bge .mainL5
.mainL119:
	ldr r8,.LPIC15
	ldr r7,[r8]
	mov r8,r7
	bl .LPIC20
.LPIC19:
	.word chas
.LPIC20:
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#42
	cmp r8,r7
	beq .mainL122
.mainL129:
	ldr r8,.LPIC15
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#47
	cmp r8,r7
	beq .mainL122
.mainL127:
	ldr r8,.LPIC15
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#37
	cmp r8,r7
	beq .mainL122
.mainL125:
	ldr r8,.LPIC15
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#94
	cmp r8,r7
	beq .mainL122
.mainL124:
	mov r8,#37
	@call void @chapush(i32 %r586)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl chapush
	add sp,sp,#4 @stack align 8bytes
	bl .mainL120
.mainL122:
	@%r544 = call i32 @find()
	sub sp,sp,#4 @stack align 8bytes
	bl find
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mov r7,#0
	cmp r8,r7
	beq .mainL131
.mainL132:
.mainL123:
	ldr r5,.LPIC15
	ldr r4,[r5]
	mov r5,r4
	ldr r4,.LPIC19
	add r3,r4,r5,lsl #2
	ldr r5,[r3]
	mov r4,#42
	cmp r5,r4
	beq .mainL122
.mainL138:
	ldr r5,.LPIC15
	ldr r4,[r5]
	mov r5,r4
	ldr r4,.LPIC19
	add r3,r4,r5,lsl #2
	ldr r5,[r3]
	mov r4,#47
	cmp r5,r4
	beq .mainL122
.mainL136:
	ldr r5,.LPIC15
	ldr r4,[r5]
	mov r5,r4
	ldr r4,.LPIC19
	add r3,r4,r5,lsl #2
	ldr r5,[r3]
	mov r4,#37
	cmp r5,r4
	beq .mainL122
.mainL134:
	ldr r5,.LPIC15
	ldr r4,[r5]
	mov r5,r4
	ldr r4,.LPIC19
	add r3,r4,r5,lsl #2
	ldr r5,[r3]
	mov r4,#94
	cmp r5,r4
	beq .mainL122
	bne .mainL124
.mainL131:
	bl .mainL124
.mainL98:
	ldr r8,.LPIC15
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#42
	cmp r8,r7
	beq .mainL101
.mainL108:
	ldr r8,.LPIC15
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#47
	cmp r8,r7
	beq .mainL101
.mainL106:
	ldr r8,.LPIC15
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#37
	cmp r8,r7
	beq .mainL101
.mainL104:
	ldr r8,.LPIC15
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#94
	cmp r8,r7
	beq .mainL101
.mainL103:
	mov r8,#47
	@call void @chapush(i32 %r499)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl chapush
	add sp,sp,#4 @stack align 8bytes
	bl .mainL99
.mainL101:
	@%r457 = call i32 @find()
	sub sp,sp,#4 @stack align 8bytes
	bl find
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mov r7,#0
	cmp r8,r7
	beq .mainL110
.mainL111:
.mainL102:
	ldr r5,.LPIC15
	ldr r4,[r5]
	mov r5,r4
	ldr r4,.LPIC19
	add r3,r4,r5,lsl #2
	ldr r5,[r3]
	mov r4,#42
	cmp r5,r4
	beq .mainL101
.mainL117:
	ldr r5,.LPIC15
	ldr r4,[r5]
	mov r5,r4
	ldr r4,.LPIC19
	add r3,r4,r5,lsl #2
	ldr r5,[r3]
	mov r4,#47
	cmp r5,r4
	beq .mainL101
.mainL115:
	ldr r5,.LPIC15
	ldr r4,[r5]
	mov r5,r4
	ldr r4,.LPIC19
	add r3,r4,r5,lsl #2
	ldr r5,[r3]
	mov r4,#37
	cmp r5,r4
	beq .mainL101
.mainL113:
	ldr r5,.LPIC15
	ldr r4,[r5]
	mov r5,r4
	ldr r4,.LPIC19
	add r3,r4,r5,lsl #2
	ldr r5,[r3]
	mov r4,#94
	cmp r5,r4
	beq .mainL101
	bne .mainL103
.mainL110:
	bl .mainL103
.mainL77:
	ldr r8,.LPIC15
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#42
	cmp r8,r7
	beq .mainL80
.mainL87:
	ldr r8,.LPIC15
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#47
	cmp r8,r7
	beq .mainL80
.mainL85:
	ldr r8,.LPIC15
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#37
	cmp r8,r7
	beq .mainL80
.mainL83:
	ldr r8,.LPIC15
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#94
	cmp r8,r7
	beq .mainL80
.mainL82:
	mov r8,#42
	@call void @chapush(i32 %r412)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl chapush
	add sp,sp,#4 @stack align 8bytes
	bl .mainL78
.mainL80:
	@%r370 = call i32 @find()
	sub sp,sp,#4 @stack align 8bytes
	bl find
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mov r7,#0
	cmp r8,r7
	beq .mainL89
.mainL90:
.mainL81:
	ldr r5,.LPIC15
	ldr r4,[r5]
	mov r5,r4
	ldr r4,.LPIC19
	add r3,r4,r5,lsl #2
	ldr r5,[r3]
	mov r4,#42
	cmp r5,r4
	beq .mainL80
.mainL96:
	ldr r5,.LPIC15
	ldr r4,[r5]
	mov r5,r4
	ldr r4,.LPIC19
	add r3,r4,r5,lsl #2
	ldr r5,[r3]
	mov r4,#47
	cmp r5,r4
	beq .mainL80
.mainL94:
	ldr r5,.LPIC15
	ldr r4,[r5]
	mov r5,r4
	ldr r4,.LPIC19
	add r3,r4,r5,lsl #2
	ldr r5,[r3]
	mov r4,#37
	cmp r5,r4
	beq .mainL80
.mainL92:
	ldr r5,.LPIC15
	ldr r4,[r5]
	mov r5,r4
	ldr r4,.LPIC19
	add r3,r4,r5,lsl #2
	ldr r5,[r3]
	mov r4,#94
	cmp r5,r4
	beq .mainL80
	bne .mainL82
.mainL89:
	bl .mainL82
.mainL48:
	ldr r8,.LPIC15
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#43
	cmp r8,r7
	beq .mainL51
.mainL62:
	ldr r8,.LPIC15
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#45
	cmp r8,r7
	beq .mainL51
.mainL60:
	ldr r8,.LPIC15
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#42
	cmp r8,r7
	beq .mainL51
.mainL58:
	bl .LPIC22
.LPIC21:
	.word chat
.LPIC22:
	ldr r8,.LPIC21
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#47
	cmp r8,r7
	beq .mainL51
.mainL56:
	ldr r8,.LPIC21
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#37
	cmp r8,r7
	beq .mainL51
.mainL54:
	ldr r8,.LPIC21
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#94
	cmp r8,r7
	beq .mainL51
.mainL53:
	mov r8,#45
	@call void @chapush(i32 %r325)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl chapush
	add sp,sp,#4 @stack align 8bytes
	bl .mainL49
.mainL51:
	@%r263 = call i32 @find()
	sub sp,sp,#4 @stack align 8bytes
	bl find
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mov r7,#0
	cmp r8,r7
	beq .mainL64
.mainL65:
.mainL52:
	ldr r5,.LPIC21
	ldr r4,[r5]
	mov r5,r4
	ldr r4,.LPIC19
	add r3,r4,r5,lsl #2
	ldr r5,[r3]
	mov r4,#43
	cmp r5,r4
	beq .mainL51
.mainL75:
	ldr r5,.LPIC21
	ldr r4,[r5]
	mov r5,r4
	ldr r4,.LPIC19
	add r3,r4,r5,lsl #2
	ldr r5,[r3]
	mov r4,#45
	cmp r5,r4
	beq .mainL51
.mainL73:
	ldr r5,.LPIC21
	ldr r4,[r5]
	mov r5,r4
	ldr r4,.LPIC19
	add r3,r4,r5,lsl #2
	ldr r5,[r3]
	mov r4,#42
	cmp r5,r4
	beq .mainL51
.mainL71:
	ldr r5,.LPIC21
	ldr r4,[r5]
	mov r5,r4
	ldr r4,.LPIC19
	add r3,r4,r5,lsl #2
	ldr r5,[r3]
	mov r4,#47
	cmp r5,r4
	beq .mainL51
.mainL69:
	ldr r5,.LPIC21
	ldr r4,[r5]
	mov r5,r4
	ldr r4,.LPIC19
	add r3,r4,r5,lsl #2
	ldr r5,[r3]
	mov r4,#37
	cmp r5,r4
	beq .mainL51
.mainL67:
	ldr r5,.LPIC21
	ldr r4,[r5]
	mov r5,r4
	ldr r4,.LPIC19
	add r3,r4,r5,lsl #2
	ldr r5,[r3]
	mov r4,#94
	cmp r5,r4
	beq .mainL51
	bne .mainL53
.mainL64:
	bl .mainL53
.mainL19:
	ldr r8,.LPIC21
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#43
	cmp r8,r7
	beq .mainL22
.mainL33:
	ldr r8,.LPIC21
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#45
	cmp r8,r7
	beq .mainL22
.mainL31:
	ldr r8,.LPIC21
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#42
	cmp r8,r7
	beq .mainL22
.mainL29:
	ldr r8,.LPIC21
	ldr r7,[r8]
	mov r8,r7
	bl .LPIC24
.LPIC23:
	.word chas
.LPIC24:
	ldr r7,.LPIC23
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#47
	cmp r8,r7
	beq .mainL22
.mainL27:
	ldr r8,.LPIC21
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC23
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#37
	cmp r8,r7
	beq .mainL22
.mainL25:
	ldr r8,.LPIC21
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC23
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#94
	cmp r8,r7
	beq .mainL22
.mainL24:
	mov r8,#43
	@call void @chapush(i32 %r198)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl chapush
	add sp,sp,#4 @stack align 8bytes
	bl .mainL20
.mainL22:
	@%r136 = call i32 @find()
	sub sp,sp,#4 @stack align 8bytes
	bl find
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mov r7,#0
	cmp r8,r7
	beq .mainL35
.mainL36:
.mainL23:
	ldr r5,.LPIC21
	ldr r4,[r5]
	mov r5,r4
	ldr r4,.LPIC23
	add r3,r4,r5,lsl #2
	ldr r5,[r3]
	mov r4,#43
	cmp r5,r4
	beq .mainL22
.mainL46:
	ldr r5,.LPIC21
	ldr r4,[r5]
	mov r5,r4
	ldr r4,.LPIC23
	add r3,r4,r5,lsl #2
	ldr r5,[r3]
	mov r4,#45
	cmp r5,r4
	beq .mainL22
.mainL44:
	ldr r5,.LPIC21
	ldr r4,[r5]
	mov r5,r4
	ldr r4,.LPIC23
	add r3,r4,r5,lsl #2
	ldr r5,[r3]
	mov r4,#42
	cmp r5,r4
	beq .mainL22
.mainL42:
	ldr r5,.LPIC21
	ldr r4,[r5]
	mov r5,r4
	ldr r4,.LPIC23
	add r3,r4,r5,lsl #2
	ldr r5,[r3]
	mov r4,#47
	cmp r5,r4
	beq .mainL22
.mainL40:
	ldr r5,.LPIC21
	ldr r4,[r5]
	mov r5,r4
	ldr r4,.LPIC23
	add r3,r4,r5,lsl #2
	ldr r5,[r3]
	mov r4,#37
	cmp r5,r4
	beq .mainL22
.mainL38:
	ldr r5,.LPIC21
	ldr r4,[r5]
	mov r5,r4
	ldr r4,.LPIC23
	add r3,r4,r5,lsl #2
	ldr r5,[r3]
	mov r4,#94
	cmp r5,r4
	beq .mainL22
	bne .mainL24
.mainL35:
	bl .mainL24
.mainL13:
	@%r49 = call i32 @chapop()
	sub sp,sp,#4 @stack align 8bytes
	bl chapop
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	bl .LPIC26
.LPIC25:
	.word c
.LPIC26:
	ldr r7,.LPIC25
	str r8,[r7]
	ldr r8,.LPIC25
	ldr r7,[r8]
	mov r8,#40
	cmp r7,r8
	bne .mainL16
.mainL18:
	bl .mainL14
.mainL16:
	mov r8,#32
	bl .LPIC28
.LPIC27:
	.word ii
.LPIC28:
	ldr r7,.LPIC27
	ldr r6,[r7]
	mov r7,r6
	bl .LPIC30
.LPIC29:
	.word get2
.LPIC30:
	ldr r6,.LPIC29
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,.LPIC25
	ldr r7,[r8]
	ldr r8,.LPIC27
	ldr r6,[r8]
	mov r8,#1
	add r5,r6,r8
	mov r8,r5
	ldr r6,.LPIC29
	add r5,r6,r8,lsl #2
	str r7,[r5]
	ldr r8,.LPIC27
	ldr r7,[r8]
	mov r8,#2
	add r6,r7,r8
	ldr r8,.LPIC27
	str r6,[r8]
	@%r66 = call i32 @chapop()
	sub sp,sp,#4 @stack align 8bytes
	bl chapop
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,.LPIC25
	str r8,[r7]
.mainL17:
	ldr r8,.LPIC25
	ldr r7,[r8]
	mov r8,#40
	cmp r7,r8
	bne .mainL16
	beq .mainL18
.mainL11:
	mov r8,#94
	@call void @chapush(i32 %r41)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl chapush
	add sp,sp,#4 @stack align 8bytes
	bl .mainL12
.mainL9:
	mov r8,#40
	@call void @chapush(i32 %r33)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl chapush
	add sp,sp,#4 @stack align 8bytes
	bl .mainL10
.mainL6:
	bl .LPIC32
.LPIC31:
	.word i
.LPIC32:
	ldr r8,.LPIC31
	ldr r7,[r8]
	mov r8,r7
	bl .LPIC34
.LPIC33:
	.word get
.LPIC34:
	ldr r7,.LPIC33
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r7,.LPIC27
	ldr r6,[r7]
	mov r7,r6
	ldr r6,.LPIC29
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,.LPIC27
	ldr r7,[r8]
	mov r8,#1
	add r6,r7,r8
	ldr r8,.LPIC27
	str r6,[r8]
	bl .mainL8
	.section	.note.GNU-stack,"",%progbits
