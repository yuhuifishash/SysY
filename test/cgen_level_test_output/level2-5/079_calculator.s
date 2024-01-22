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
.getstrL2:
	ldr r8,[fp,#-16]
	mov r7,#13
	cmp r8,r7
	bne .getstrL5
.getstrL4:
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
.getstrL5:
	ldr r8,[fp,#-16]
	mov r7,#10
	cmp r8,r7
	beq .getstrL4
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
	bl .getstrL2
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
.powerL2:
	ldr r8,[fp,#-20]
	mov r7,#0
	cmp r8,r7
	bne .powerL3
.powerL4:
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
	bl .powerL2
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
.mainL2:
	ldr r8,.LPIC5
	ldr r7,[r8]
	ldr r8,[fp,#-28]
	cmp r7,r8
	blt .mainL3
.mainL4:
.mainL95:
	ldr r8,.LPIC2
	ldr r7,[r8]
	mov r8,#0
	cmp r7,r8
	bgt .mainL96
.mainL97:
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
.mainL98:
	ldr r8,.LPIC5
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC4
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#64
	cmp r8,r7
	bne .mainL99
.mainL100:
	mov r8,#1
	mov r7,r8
	ldr r8,.LPIC7
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	@call void @putint(i32 %r561)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	mov r0,r8
	add sp,sp,#48
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.mainL99:
	ldr r8,.LPIC5
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC4
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#43
	cmp r8,r7
	beq .mainL101
.mainL112:
	ldr r8,.LPIC5
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC4
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#45
	cmp r8,r7
	beq .mainL101
.mainL110:
	ldr r8,.LPIC5
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC4
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#42
	cmp r8,r7
	beq .mainL101
.mainL108:
	ldr r8,.LPIC5
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC4
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#47
	cmp r8,r7
	beq .mainL101
.mainL106:
	ldr r8,.LPIC5
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC4
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#37
	cmp r8,r7
	beq .mainL101
.mainL104:
	ldr r8,.LPIC5
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC4
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#94
	cmp r8,r7
	beq .mainL101
.mainL102:
	ldr r8,.LPIC5
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC4
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#32
	cmp r8,r7
	bne .mainL126
.mainL127:
.mainL103:
	ldr r8,.LPIC5
	ldr r7,[r8]
	mov r8,#1
	add r6,r7,r8
	ldr r8,.LPIC5
	str r6,[r8]
	bl .mainL98
.mainL126:
	ldr r8,.LPIC5
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC4
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#48
	sub r6,r8,r7
	@call void @intpush(i32 %r530)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	bl intpush
	add sp,sp,#4 @stack align 8bytes
	mov r8,#1
	ldr r7,.LPIC6
	str r8,[r7]
.mainL128:
	ldr r8,.LPIC5
	ldr r7,[r8]
	ldr r8,.LPIC6
	ldr r6,[r8]
	add r8,r7,r6
	mov r7,r8
	ldr r8,.LPIC4
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	mov r7,#32
	cmp r8,r7
	bne .mainL129
.mainL130:
	ldr r8,.LPIC5
	ldr r7,[r8]
	ldr r8,.LPIC6
	ldr r6,[r8]
	add r8,r7,r6
	mov r7,#1
	sub r6,r8,r7
	ldr r8,.LPIC5
	str r6,[r8]
	bl .mainL127
.mainL129:
	bl .LPIC10
.LPIC9:
	.word i
.LPIC10:
	ldr r8,.LPIC9
	ldr r7,[r8]
	bl .LPIC12
.LPIC11:
	.word ii
.LPIC12:
	ldr r8,.LPIC11
	ldr r6,[r8]
	add r8,r7,r6
	mov r7,r8
	bl .LPIC14
.LPIC13:
	.word get2
.LPIC14:
	ldr r8,.LPIC13
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	mov r7,#48
	sub r6,r8,r7
	@call void @intadd(i32 %r547)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	bl intadd
	add sp,sp,#4 @stack align 8bytes
	ldr r8,.LPIC11
	ldr r7,[r8]
	mov r8,#1
	add r6,r7,r8
	ldr r8,.LPIC11
	str r6,[r8]
	bl .mainL128
.mainL101:
	@%r453 = call i32 @intpop()
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	bl intpop
	str r0,[fp,#-40]
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	ldr r9,[fp,#-40]
	str r9,[fp,#-20]
	@%r455 = call i32 @intpop()
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	bl intpop
	mov r7,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	str r7,[fp,#-16]
	mov r6,#0
	str r6,[fp,#-12]
	ldr r5,.LPIC9
	ldr r4,[r5]
	mov r9,r4
	str r9,[fp,#-32]
	ldr r9,.LPIC13
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
	beq .mainL114
.mainL115:
	ldr r8,.LPIC9
	ldr r2,[r8]
	mov r8,r2
	ldr r2,.LPIC13
	add r3,r2,r8,lsl #2
	ldr r8,[r3]
	mov r3,#45
	cmp r8,r3
	beq .mainL116
.mainL117:
	ldr r8,.LPIC9
	ldr r3,[r8]
	mov r8,r3
	ldr r3,.LPIC13
	add r2,r3,r8,lsl #2
	ldr r8,[r2]
	mov r3,#42
	cmp r8,r3
	beq .mainL118
.mainL119:
	ldr r8,.LPIC9
	ldr r3,[r8]
	mov r8,r3
	ldr r3,.LPIC13
	add r2,r3,r8,lsl #2
	ldr r8,[r2]
	mov r3,#47
	cmp r8,r3
	beq .mainL120
.mainL121:
	ldr r8,.LPIC9
	ldr r3,[r8]
	mov r8,r3
	ldr r3,.LPIC13
	add r2,r3,r8,lsl #2
	ldr r8,[r2]
	mov r3,#37
	cmp r8,r3
	beq .mainL122
.mainL123:
	ldr r8,.LPIC9
	ldr r3,[r8]
	mov r8,r3
	ldr r3,.LPIC13
	add r2,r3,r8,lsl #2
	ldr r8,[r2]
	mov r3,#94
	cmp r8,r3
	beq .mainL124
.mainL125:
	ldr r8,[fp,#-12]
	@call void @intpush(i32 %r518)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r0,r8
	bl intpush
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	bl .mainL103
.mainL124:
	ldr r8,[fp,#-16]
	ldr r3,[fp,#-20]
	@%r517 = call i32 @power(i32 %r515,i32 %r516)
	push {r0,r1,r3}
	mov r0,r8
	mov r1,r3
	bl power
	mov r2,r0
	pop {r0,r1,r3}
	str r2,[fp,#-12]
	bl .mainL125
.mainL122:
	ldr r8,[fp,#-16]
	ldr r3,[fp,#-20]
	@%r507 = call i32 @__modsi3(i32 %r505,i32 %r506)
	push {r0,r1,r3}
	mov r0,r8
	mov r1,r3
	bl __modsi3
	mov r2,r0
	pop {r0,r1,r3}
	str r2,[fp,#-12]
	bl .mainL123
.mainL120:
	ldr r8,[fp,#-16]
	ldr r3,[fp,#-20]
	@%r497 = call i32 @__aeabi_idiv(i32 %r495,i32 %r496)
	push {r0,r1,r3}
	mov r0,r8
	mov r1,r3
	bl __aeabi_idiv
	mov r2,r0
	pop {r0,r1,r3}
	str r2,[fp,#-12]
	bl .mainL121
.mainL118:
	ldr r8,[fp,#-20]
	ldr r3,[fp,#-16]
	mul r2,r8,r3
	str r2,[fp,#-12]
	bl .mainL119
.mainL116:
	ldr r8,[fp,#-16]
	ldr r3,[fp,#-20]
	sub r2,r8,r3
	str r2,[fp,#-12]
	bl .mainL117
.mainL114:
	ldr r8,[fp,#-20]
	ldr r3,[fp,#-16]
	add r2,r8,r3
	str r2,[fp,#-12]
	bl .mainL115
.mainL96:
	@%r372 = call i32 @chapop()
	sub sp,sp,#4 @stack align 8bytes
	bl chapop
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-24]
	mov r8,#32
	ldr r7,.LPIC11
	ldr r6,[r7]
	mov r7,r6
	ldr r6,.LPIC13
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-24]
	ldr r7,.LPIC11
	ldr r6,[r7]
	mov r7,#1
	add r5,r6,r7
	mov r7,r5
	ldr r6,.LPIC13
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,.LPIC11
	ldr r7,[r8]
	mov r8,#2
	add r6,r7,r8
	ldr r8,.LPIC11
	str r6,[r8]
	bl .mainL95
.mainL3:
	ldr r8,.LPIC9
	ldr r7,[r8]
	mov r8,r7
	bl .LPIC16
.LPIC15:
	.word get
.LPIC16:
	ldr r7,.LPIC15
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
	beq .mainL5
.mainL6:
	ldr r8,.LPIC9
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC15
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#40
	cmp r8,r7
	beq .mainL8
.mainL9:
	ldr r8,.LPIC9
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC15
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#94
	cmp r8,r7
	beq .mainL10
.mainL11:
	ldr r8,.LPIC9
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC15
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#41
	cmp r8,r7
	beq .mainL12
.mainL13:
	ldr r8,.LPIC9
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC15
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#43
	cmp r8,r7
	beq .mainL17
.mainL18:
	ldr r8,.LPIC9
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC15
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#45
	cmp r8,r7
	beq .mainL35
.mainL36:
	ldr r8,.LPIC9
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC15
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#42
	cmp r8,r7
	beq .mainL53
.mainL54:
	ldr r8,.LPIC9
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC15
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#47
	cmp r8,r7
	beq .mainL67
.mainL68:
	ldr r8,.LPIC9
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC15
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#37
	cmp r8,r7
	beq .mainL81
.mainL82:
	mov r8,#32
	ldr r7,.LPIC11
	ldr r6,[r7]
	mov r7,r6
	ldr r6,.LPIC13
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,.LPIC11
	ldr r7,[r8]
	mov r8,#1
	add r6,r7,r8
	ldr r8,.LPIC11
	str r6,[r8]
.mainL7:
	ldr r8,.LPIC9
	ldr r7,[r8]
	mov r8,#1
	add r6,r7,r8
	ldr r8,.LPIC9
	str r6,[r8]
	bl .mainL2
.mainL81:
.mainL83:
	bl .LPIC18
.LPIC17:
	.word chat
.LPIC18:
	ldr r8,.LPIC17
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
	beq .mainL84
.mainL90:
	ldr r8,.LPIC17
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#47
	cmp r8,r7
	beq .mainL84
.mainL88:
	ldr r8,.LPIC17
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#37
	cmp r8,r7
	beq .mainL84
.mainL86:
	ldr r8,.LPIC17
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#94
	cmp r8,r7
	beq .mainL84
.mainL85:
	mov r8,#37
	@call void @chapush(i32 %r356)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl chapush
	add sp,sp,#4 @stack align 8bytes
	bl .mainL82
.mainL84:
	@%r351 = call i32 @find()
	sub sp,sp,#4 @stack align 8bytes
	bl find
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mov r7,#0
	cmp r8,r7
	beq .mainL92
.mainL93:
	bl .mainL83
.mainL92:
	bl .mainL85
.mainL67:
.mainL69:
	ldr r8,.LPIC17
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#42
	cmp r8,r7
	beq .mainL70
.mainL76:
	ldr r8,.LPIC17
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#47
	cmp r8,r7
	beq .mainL70
.mainL74:
	ldr r8,.LPIC17
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#37
	cmp r8,r7
	beq .mainL70
.mainL72:
	ldr r8,.LPIC17
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#94
	cmp r8,r7
	beq .mainL70
.mainL71:
	mov r8,#47
	@call void @chapush(i32 %r306)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl chapush
	add sp,sp,#4 @stack align 8bytes
	bl .mainL68
.mainL70:
	@%r301 = call i32 @find()
	sub sp,sp,#4 @stack align 8bytes
	bl find
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mov r7,#0
	cmp r8,r7
	beq .mainL78
.mainL79:
	bl .mainL69
.mainL78:
	bl .mainL71
.mainL53:
.mainL55:
	ldr r8,.LPIC17
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#42
	cmp r8,r7
	beq .mainL56
.mainL62:
	ldr r8,.LPIC17
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#47
	cmp r8,r7
	beq .mainL56
.mainL60:
	ldr r8,.LPIC17
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#37
	cmp r8,r7
	beq .mainL56
.mainL58:
	ldr r8,.LPIC17
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#94
	cmp r8,r7
	beq .mainL56
.mainL57:
	mov r8,#42
	@call void @chapush(i32 %r256)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl chapush
	add sp,sp,#4 @stack align 8bytes
	bl .mainL54
.mainL56:
	@%r251 = call i32 @find()
	sub sp,sp,#4 @stack align 8bytes
	bl find
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mov r7,#0
	cmp r8,r7
	beq .mainL64
.mainL65:
	bl .mainL55
.mainL64:
	bl .mainL57
.mainL35:
.mainL37:
	ldr r8,.LPIC17
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#43
	cmp r8,r7
	beq .mainL38
.mainL48:
	ldr r8,.LPIC17
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#45
	cmp r8,r7
	beq .mainL38
.mainL46:
	ldr r8,.LPIC17
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#42
	cmp r8,r7
	beq .mainL38
.mainL44:
	ldr r8,.LPIC17
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#47
	cmp r8,r7
	beq .mainL38
.mainL42:
	ldr r8,.LPIC17
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#37
	cmp r8,r7
	beq .mainL38
.mainL40:
	ldr r8,.LPIC17
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#94
	cmp r8,r7
	beq .mainL38
.mainL39:
	mov r8,#45
	@call void @chapush(i32 %r206)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl chapush
	add sp,sp,#4 @stack align 8bytes
	bl .mainL36
.mainL38:
	@%r201 = call i32 @find()
	sub sp,sp,#4 @stack align 8bytes
	bl find
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mov r7,#0
	cmp r8,r7
	beq .mainL50
.mainL51:
	bl .mainL37
.mainL50:
	bl .mainL39
.mainL17:
.mainL19:
	ldr r8,.LPIC17
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#43
	cmp r8,r7
	beq .mainL20
.mainL30:
	ldr r8,.LPIC17
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#45
	cmp r8,r7
	beq .mainL20
.mainL28:
	ldr r8,.LPIC17
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#42
	cmp r8,r7
	beq .mainL20
.mainL26:
	ldr r8,.LPIC17
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#47
	cmp r8,r7
	beq .mainL20
.mainL24:
	ldr r8,.LPIC17
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#37
	cmp r8,r7
	beq .mainL20
.mainL22:
	ldr r8,.LPIC17
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC19
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#94
	cmp r8,r7
	beq .mainL20
.mainL21:
	mov r8,#43
	@call void @chapush(i32 %r136)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl chapush
	add sp,sp,#4 @stack align 8bytes
	bl .mainL18
.mainL20:
	@%r131 = call i32 @find()
	sub sp,sp,#4 @stack align 8bytes
	bl find
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mov r7,#0
	cmp r8,r7
	beq .mainL32
.mainL33:
	bl .mainL19
.mainL32:
	bl .mainL21
.mainL12:
	@%r49 = call i32 @chapop()
	sub sp,sp,#4 @stack align 8bytes
	bl chapop
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	bl .LPIC22
.LPIC21:
	.word c
.LPIC22:
	ldr r7,.LPIC21
	str r8,[r7]
.mainL14:
	ldr r8,.LPIC21
	ldr r7,[r8]
	mov r8,#40
	cmp r7,r8
	bne .mainL15
.mainL16:
	bl .mainL13
.mainL15:
	mov r8,#32
	bl .LPIC24
.LPIC23:
	.word ii
.LPIC24:
	ldr r7,.LPIC23
	ldr r6,[r7]
	mov r7,r6
	bl .LPIC26
.LPIC25:
	.word get2
.LPIC26:
	ldr r6,.LPIC25
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,.LPIC21
	ldr r7,[r8]
	ldr r8,.LPIC23
	ldr r6,[r8]
	mov r8,#1
	add r5,r6,r8
	mov r8,r5
	ldr r6,.LPIC25
	add r5,r6,r8,lsl #2
	str r7,[r5]
	ldr r8,.LPIC23
	ldr r7,[r8]
	mov r8,#2
	add r6,r7,r8
	ldr r8,.LPIC23
	str r6,[r8]
	@%r66 = call i32 @chapop()
	sub sp,sp,#4 @stack align 8bytes
	bl chapop
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,.LPIC21
	str r8,[r7]
	bl .mainL14
.mainL10:
	mov r8,#94
	@call void @chapush(i32 %r41)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl chapush
	add sp,sp,#4 @stack align 8bytes
	bl .mainL11
.mainL8:
	mov r8,#40
	@call void @chapush(i32 %r33)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl chapush
	add sp,sp,#4 @stack align 8bytes
	bl .mainL9
.mainL5:
	bl .LPIC28
.LPIC27:
	.word i
.LPIC28:
	ldr r8,.LPIC27
	ldr r7,[r8]
	mov r8,r7
	bl .LPIC30
.LPIC29:
	.word get
.LPIC30:
	ldr r7,.LPIC29
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r7,.LPIC23
	ldr r6,[r7]
	mov r7,r6
	ldr r6,.LPIC25
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,.LPIC23
	ldr r7,[r8]
	mov r8,#1
	add r6,r7,r8
	ldr r8,.LPIC23
	str r6,[r8]
	bl .mainL7
	.section	.note.GNU-stack,"",%progbits
