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
f:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.fL0:
	str r0,[fp,#-12]
	str r1,[fp,#-16]
.fL1:
	ldr r8,.LPIC1
	ldr r7,[r8]
	mov r8,#1
	add r6,r7,r8
	ldr r8,.LPIC1
	str r6,[r8]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	cmp r8,r7
	bge .fL2
.fL4:
	ldr r8,[fp,#-12]
	mov r7,#20
	cmp r8,r7
	bge .fL2
.fL3:
	mov r8,#1
	ldr r7,[fp,#-12]
	mov r6,r7
	ldr r7,.LPIC0
	add r5,r7,r6,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-12]
	mov r7,#0
	cmp r8,r7
	beq .fL6
.fL7:
	ldr r8,[fp,#-12]
	mov r7,#1
	sub r6,r8,r7
	mov r8,r6
	ldr r7,.LPIC0
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r0,r8
	add sp,sp,#16
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.fL6:
	mov r8,#0
	mov r7,r8
	ldr r8,.LPIC0
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	mov r0,r8
	add sp,sp,#16
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.fL2:
	mov r8,#0
	mov r0,r8
	add sp,sp,#16
	pop {r5,r6,r7,r8}
	pop {fp,pc}
g:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.gL0:
	str r0,[fp,#-12]
	str r1,[fp,#-16]
.gL1:
	ldr r8,.LPIC1
	ldr r7,[r8]
	mov r8,#2
	add r6,r7,r8
	ldr r8,.LPIC1
	str r6,[r8]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	cmp r8,r7
	bge .gL2
.gL4:
	ldr r8,[fp,#-12]
	mov r7,#20
	cmp r8,r7
	bge .gL2
.gL3:
	mov r8,#0
	ldr r7,[fp,#-12]
	mov r6,r7
	ldr r7,.LPIC0
	add r5,r7,r6,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-12]
	mov r7,#0
	cmp r8,r7
	beq .gL6
.gL7:
	ldr r8,[fp,#-12]
	mov r7,#1
	sub r6,r8,r7
	mov r8,r6
	ldr r7,.LPIC0
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r0,r8
	add sp,sp,#16
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.gL6:
	mov r8,#0
	mov r7,r8
	ldr r8,.LPIC0
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	mov r0,r8
	add sp,sp,#16
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.gL2:
	mov r8,#1
	mov r0,r8
	add sp,sp,#16
	pop {r5,r6,r7,r8}
	pop {fp,pc}
h:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.hL0:
	str r0,[fp,#-12]
.hL1:
	ldr r8,.LPIC1
	ldr r7,[r8]
	mov r8,#3
	add r6,r7,r8
	ldr r8,.LPIC1
	str r6,[r8]
	ldr r8,[fp,#-12]
	mov r7,#0
	cmp r8,r7
	blt .hL2
.hL4:
	ldr r8,[fp,#-12]
	mov r7,#20
	cmp r8,r7
	bge .hL2
.hL3:
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC0
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	mov r0,r8
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
.hL2:
	mov r8,#0
	mov r0,r8
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	mov r7,#20
	cmp r8,r7
	blt .mainL3
.mainL5:
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	mov r7,#20
	cmp r8,r7
	blt .mainL47
.mainL49:
	mov r8,#1
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	mov r7,#20
	cmp r8,r7
	blt .mainL94
.mainL93:
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#0
	@%r339 = call i32 @h(i32 %r338)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	bne .mainL104
.mainL102:
	mov r8,#2
	@%r348 = call i32 @h(i32 %r347)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL98
.mainL100:
	mov r8,#3
	@%r356 = call i32 @h(i32 %r355)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	bne .mainL98
.mainL99:
	ldr r8,.LPIC1
	ldr r7,[r8]
	ldr r8,[fp,#-12]
	add r6,r7,r8
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#4
	@%r367 = call i32 @h(i32 %r366)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL106
.mainL110:
	mov r8,#5
	@%r372 = call i32 @h(i32 %r371)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	bne .mainL114
.mainL108:
	mov r8,#8
	@%r392 = call i32 @h(i32 %r391)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL106
.mainL107:
	ldr r8,.LPIC1
	ldr r7,[r8]
	ldr r8,[fp,#-12]
	mul r6,r7,r8
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#9
	@%r405 = call i32 @h(i32 %r404)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	bne .mainL126
.mainL124:
	mov r8,#11
	@%r416 = call i32 @h(i32 %r415)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL116
.mainL122:
	mov r8,#12
	@%r424 = call i32 @h(i32 %r423)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL116
.mainL120:
	mov r8,#13
	@%r432 = call i32 @h(i32 %r431)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL116
.mainL118:
	mov r8,#14
	@%r440 = call i32 @h(i32 %r439)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	bne .mainL128
.mainL117:
	ldr r8,.LPIC1
	ldr r7,[r8]
	ldr r8,[fp,#-12]
	sub r6,r7,r8
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#0
	@%r457 = call i32 @h(i32 %r456)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	bne .mainL142
.mainL136:
	mov r8,#5
	@%r482 = call i32 @h(i32 %r481)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	bne .mainL130
.mainL134:
	mov r8,#6
	@%r488 = call i32 @h(i32 %r487)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	bne .mainL144
.mainL132:
	mov r8,#8
	@%r502 = call i32 @h(i32 %r501)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	bne .mainL130
.mainL131:
	ldr r8,.LPIC1
	ldr r7,[r8]
	ldr r8,[fp,#-12]
	add r6,r7,r8
	@call void @putint(i32 %r510)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	mov r0,r8
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
.mainL130:
	mov r8,#1
	str r8,[fp,#-12]
	bl .mainL131
.mainL144:
	mov r7,#7
	@%r491 = call i32 @h(i32 %r490)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl h
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	beq .mainL130
	bne .mainL132
.mainL142:
	mov r8,#2
	@%r460 = call i32 @h(i32 %r459)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL136
.mainL140:
	mov r8,#3
	@%r466 = call i32 @h(i32 %r465)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	bne .mainL136
.mainL138:
	mov r8,#4
	@%r474 = call i32 @h(i32 %r473)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL130
	bne .mainL136
.mainL128:
	mov r8,#15
	@%r443 = call i32 @h(i32 %r442)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL117
.mainL116:
	mov r8,#1
	str r8,[fp,#-12]
	bl .mainL117
.mainL126:
	mov r8,#10
	@%r408 = call i32 @h(i32 %r407)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL116
	bne .mainL124
.mainL106:
	mov r8,#1
	str r8,[fp,#-12]
	bl .mainL107
.mainL114:
	mov r7,#6
	@%r375 = call i32 @h(i32 %r374)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl h
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL108
.mainL112:
	mov r7,#7
	@%r383 = call i32 @h(i32 %r382)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl h
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL106
	beq .mainL108
.mainL98:
	mov r8,#1
	str r8,[fp,#-12]
	bl .mainL99
.mainL104:
	mov r8,#1
	@%r342 = call i32 @h(i32 %r341)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	bne .mainL98
	beq .mainL102
.mainL94:
	ldr r8,[fp,#-16]
	mov r7,#1
	sub r6,r8,r7
	ldr r8,[fp,#-16]
	@%r313 = call i32 @f(i32 %r311,i32 %r312)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	mov r1,r8
	bl f
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL93
.mainL91:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.mainL92:
	ldr r8,[fp,#-16]
	mov r7,#20
	cmp r8,r7
	bge .mainL93
.mainL96:
	ldr r8,[fp,#-16]
	mov r7,#1
	sub r6,r8,r7
	ldr r8,[fp,#-16]
	@%r330 = call i32 @f(i32 %r328,i32 %r329)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	mov r1,r8
	bl f
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	bne .mainL91
	beq .mainL93
.mainL47:
	mov r8,#0
	ldr r7,[fp,#-16]
	@%r160 = call i32 @g(i32 %r158,i32 %r159)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	beq .mainL88
.mainL50:
.mainL51:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.mainL48:
	ldr r8,[fp,#-16]
	mov r7,#20
	cmp r8,r7
	blt .mainL47
	bge .mainL49
.mainL88:
	mov r8,#1
	ldr r7,[fp,#-16]
	@%r164 = call i32 @g(i32 %r162,i32 %r163)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL50
.mainL86:
	mov r8,#2
	ldr r7,[fp,#-16]
	@%r171 = call i32 @g(i32 %r169,i32 %r170)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL50
.mainL84:
	mov r8,#3
	ldr r7,[fp,#-16]
	@%r178 = call i32 @g(i32 %r176,i32 %r177)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL50
.mainL82:
	mov r8,#4
	ldr r7,[fp,#-16]
	@%r185 = call i32 @g(i32 %r183,i32 %r184)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL50
.mainL80:
	mov r8,#5
	ldr r7,[fp,#-16]
	@%r192 = call i32 @g(i32 %r190,i32 %r191)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL50
.mainL78:
	mov r8,#6
	ldr r7,[fp,#-16]
	@%r199 = call i32 @g(i32 %r197,i32 %r198)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL50
.mainL76:
	mov r8,#7
	ldr r7,[fp,#-16]
	@%r206 = call i32 @g(i32 %r204,i32 %r205)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL50
.mainL74:
	mov r8,#8
	ldr r7,[fp,#-16]
	@%r213 = call i32 @g(i32 %r211,i32 %r212)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL50
.mainL72:
	mov r8,#9
	ldr r7,[fp,#-16]
	@%r220 = call i32 @g(i32 %r218,i32 %r219)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL50
.mainL70:
	mov r8,#10
	ldr r7,[fp,#-16]
	@%r227 = call i32 @g(i32 %r225,i32 %r226)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL50
.mainL68:
	mov r8,#11
	ldr r7,[fp,#-16]
	@%r234 = call i32 @g(i32 %r232,i32 %r233)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL50
.mainL66:
	mov r8,#12
	ldr r7,[fp,#-16]
	@%r241 = call i32 @g(i32 %r239,i32 %r240)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL50
.mainL64:
	mov r8,#13
	ldr r7,[fp,#-16]
	@%r248 = call i32 @g(i32 %r246,i32 %r247)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL50
.mainL62:
	mov r8,#14
	ldr r7,[fp,#-16]
	@%r255 = call i32 @g(i32 %r253,i32 %r254)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL50
.mainL60:
	mov r8,#15
	ldr r7,[fp,#-16]
	@%r262 = call i32 @g(i32 %r260,i32 %r261)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL50
.mainL58:
	mov r8,#16
	ldr r7,[fp,#-16]
	@%r269 = call i32 @g(i32 %r267,i32 %r268)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL50
.mainL56:
	mov r8,#17
	ldr r7,[fp,#-16]
	@%r276 = call i32 @g(i32 %r274,i32 %r275)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL50
.mainL54:
	mov r8,#18
	ldr r7,[fp,#-16]
	@%r283 = call i32 @g(i32 %r281,i32 %r282)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL50
.mainL52:
	mov r8,#19
	ldr r7,[fp,#-16]
	@%r290 = call i32 @g(i32 %r288,i32 %r289)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL50
	beq .mainL51
.mainL3:
	mov r8,#0
	ldr r7,[fp,#-16]
	@%r9 = call i32 @f(i32 %r7,i32 %r8)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl f
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL44
.mainL7:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.mainL4:
	ldr r8,[fp,#-16]
	mov r7,#20
	cmp r8,r7
	blt .mainL3
	bge .mainL5
.mainL44:
	mov r8,#1
	ldr r7,[fp,#-16]
	@%r13 = call i32 @f(i32 %r11,i32 %r12)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl f
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	beq .mainL7
.mainL42:
	mov r8,#2
	ldr r7,[fp,#-16]
	@%r20 = call i32 @f(i32 %r18,i32 %r19)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl f
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	beq .mainL7
.mainL40:
	mov r8,#3
	ldr r7,[fp,#-16]
	@%r27 = call i32 @f(i32 %r25,i32 %r26)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl f
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	beq .mainL7
.mainL38:
	mov r8,#4
	ldr r7,[fp,#-16]
	@%r34 = call i32 @f(i32 %r32,i32 %r33)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl f
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	beq .mainL7
.mainL36:
	mov r8,#5
	ldr r7,[fp,#-16]
	@%r41 = call i32 @f(i32 %r39,i32 %r40)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl f
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	beq .mainL7
.mainL34:
	mov r8,#6
	ldr r7,[fp,#-16]
	@%r48 = call i32 @f(i32 %r46,i32 %r47)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl f
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	beq .mainL7
.mainL32:
	mov r8,#7
	ldr r7,[fp,#-16]
	@%r55 = call i32 @f(i32 %r53,i32 %r54)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl f
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	beq .mainL7
.mainL30:
	mov r8,#8
	ldr r7,[fp,#-16]
	@%r62 = call i32 @f(i32 %r60,i32 %r61)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl f
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	beq .mainL7
.mainL28:
	mov r8,#9
	ldr r7,[fp,#-16]
	@%r69 = call i32 @f(i32 %r67,i32 %r68)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl f
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	beq .mainL7
.mainL26:
	mov r8,#10
	ldr r7,[fp,#-16]
	@%r76 = call i32 @f(i32 %r74,i32 %r75)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl f
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	beq .mainL7
.mainL24:
	mov r8,#11
	ldr r7,[fp,#-16]
	@%r83 = call i32 @f(i32 %r81,i32 %r82)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl f
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	beq .mainL7
.mainL22:
	mov r8,#12
	ldr r7,[fp,#-16]
	@%r90 = call i32 @f(i32 %r88,i32 %r89)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl f
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	beq .mainL7
.mainL20:
	mov r8,#13
	ldr r7,[fp,#-16]
	@%r97 = call i32 @f(i32 %r95,i32 %r96)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl f
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	beq .mainL7
.mainL18:
	mov r8,#14
	ldr r7,[fp,#-16]
	@%r104 = call i32 @f(i32 %r102,i32 %r103)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl f
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	beq .mainL7
.mainL16:
	mov r8,#15
	ldr r7,[fp,#-16]
	@%r111 = call i32 @f(i32 %r109,i32 %r110)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl f
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	beq .mainL7
.mainL14:
	mov r8,#16
	ldr r7,[fp,#-16]
	@%r118 = call i32 @f(i32 %r116,i32 %r117)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl f
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	beq .mainL7
.mainL12:
	mov r8,#17
	ldr r7,[fp,#-16]
	@%r125 = call i32 @f(i32 %r123,i32 %r124)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl f
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	beq .mainL7
.mainL10:
	mov r8,#18
	ldr r7,[fp,#-16]
	@%r132 = call i32 @f(i32 %r130,i32 %r131)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl f
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	beq .mainL7
.mainL8:
	mov r8,#19
	ldr r7,[fp,#-16]
	@%r139 = call i32 @f(i32 %r137,i32 %r138)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl f
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	beq .mainL7
.mainL6:
	bl .mainL7
	.section	.note.GNU-stack,"",%progbits
