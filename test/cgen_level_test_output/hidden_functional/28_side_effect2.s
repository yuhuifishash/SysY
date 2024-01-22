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
.mainL2:
	ldr r8,[fp,#-16]
	mov r7,#20
	cmp r8,r7
	blt .mainL3
.mainL4:
	mov r8,#0
	str r8,[fp,#-16]
.mainL45:
	ldr r8,[fp,#-16]
	mov r7,#20
	cmp r8,r7
	blt .mainL46
.mainL47:
	mov r8,#1
	str r8,[fp,#-16]
.mainL88:
	ldr r8,[fp,#-16]
	mov r7,#20
	cmp r8,r7
	blt .mainL91
.mainL90:
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#0
	@%r315 = call i32 @h(i32 %r314)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	bne .mainL99
.mainL97:
	mov r8,#2
	@%r324 = call i32 @h(i32 %r323)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL93
.mainL95:
	mov r8,#3
	@%r332 = call i32 @h(i32 %r331)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	bne .mainL93
.mainL94:
	ldr r8,.LPIC1
	ldr r7,[r8]
	ldr r8,[fp,#-12]
	add r6,r7,r8
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#4
	@%r343 = call i32 @h(i32 %r342)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL101
.mainL105:
	mov r8,#5
	@%r348 = call i32 @h(i32 %r347)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	bne .mainL109
.mainL103:
	mov r8,#8
	@%r368 = call i32 @h(i32 %r367)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL101
.mainL102:
	ldr r8,.LPIC1
	ldr r7,[r8]
	ldr r8,[fp,#-12]
	mul r6,r7,r8
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#9
	@%r381 = call i32 @h(i32 %r380)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	bne .mainL121
.mainL119:
	mov r8,#11
	@%r392 = call i32 @h(i32 %r391)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL111
.mainL117:
	mov r8,#12
	@%r400 = call i32 @h(i32 %r399)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL111
.mainL115:
	mov r8,#13
	@%r408 = call i32 @h(i32 %r407)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL111
.mainL113:
	mov r8,#14
	@%r416 = call i32 @h(i32 %r415)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	bne .mainL123
.mainL112:
	ldr r8,.LPIC1
	ldr r7,[r8]
	ldr r8,[fp,#-12]
	sub r6,r7,r8
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#0
	@%r433 = call i32 @h(i32 %r432)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	bne .mainL137
.mainL131:
	mov r8,#5
	@%r458 = call i32 @h(i32 %r457)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	bne .mainL125
.mainL129:
	mov r8,#6
	@%r464 = call i32 @h(i32 %r463)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	bne .mainL139
.mainL127:
	mov r8,#8
	@%r478 = call i32 @h(i32 %r477)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	bne .mainL125
.mainL126:
	ldr r8,.LPIC1
	ldr r7,[r8]
	ldr r8,[fp,#-12]
	add r6,r7,r8
	@call void @putint(i32 %r486)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	mov r0,r8
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
.mainL125:
	mov r8,#1
	str r8,[fp,#-12]
	bl .mainL126
.mainL139:
	mov r7,#7
	@%r467 = call i32 @h(i32 %r466)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl h
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	beq .mainL125
	bne .mainL127
.mainL137:
	mov r8,#2
	@%r436 = call i32 @h(i32 %r435)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL131
.mainL135:
	mov r8,#3
	@%r442 = call i32 @h(i32 %r441)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	bne .mainL131
.mainL133:
	mov r8,#4
	@%r450 = call i32 @h(i32 %r449)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL125
	bne .mainL131
.mainL123:
	mov r8,#15
	@%r419 = call i32 @h(i32 %r418)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL112
.mainL111:
	mov r8,#1
	str r8,[fp,#-12]
	bl .mainL112
.mainL121:
	mov r8,#10
	@%r384 = call i32 @h(i32 %r383)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL111
	bne .mainL119
.mainL101:
	mov r8,#1
	str r8,[fp,#-12]
	bl .mainL102
.mainL109:
	mov r7,#6
	@%r351 = call i32 @h(i32 %r350)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl h
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL103
.mainL107:
	mov r7,#7
	@%r359 = call i32 @h(i32 %r358)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl h
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL101
	beq .mainL103
.mainL93:
	mov r8,#1
	str r8,[fp,#-12]
	bl .mainL94
.mainL99:
	mov r8,#1
	@%r318 = call i32 @h(i32 %r317)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl h
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	bne .mainL93
	beq .mainL97
.mainL91:
	ldr r8,[fp,#-16]
	mov r7,#1
	sub r6,r8,r7
	ldr r8,[fp,#-16]
	@%r303 = call i32 @f(i32 %r301,i32 %r302)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	mov r1,r8
	bl f
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL90
.mainL89:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .mainL88
.mainL46:
	mov r8,#0
	ldr r7,[fp,#-16]
	@%r155 = call i32 @g(i32 %r153,i32 %r154)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	beq .mainL86
.mainL48:
.mainL49:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .mainL45
.mainL86:
	mov r8,#1
	ldr r7,[fp,#-16]
	@%r159 = call i32 @g(i32 %r157,i32 %r158)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL48
.mainL84:
	mov r8,#2
	ldr r7,[fp,#-16]
	@%r166 = call i32 @g(i32 %r164,i32 %r165)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL48
.mainL82:
	mov r8,#3
	ldr r7,[fp,#-16]
	@%r173 = call i32 @g(i32 %r171,i32 %r172)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL48
.mainL80:
	mov r8,#4
	ldr r7,[fp,#-16]
	@%r180 = call i32 @g(i32 %r178,i32 %r179)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL48
.mainL78:
	mov r8,#5
	ldr r7,[fp,#-16]
	@%r187 = call i32 @g(i32 %r185,i32 %r186)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL48
.mainL76:
	mov r8,#6
	ldr r7,[fp,#-16]
	@%r194 = call i32 @g(i32 %r192,i32 %r193)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL48
.mainL74:
	mov r8,#7
	ldr r7,[fp,#-16]
	@%r201 = call i32 @g(i32 %r199,i32 %r200)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL48
.mainL72:
	mov r8,#8
	ldr r7,[fp,#-16]
	@%r208 = call i32 @g(i32 %r206,i32 %r207)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL48
.mainL70:
	mov r8,#9
	ldr r7,[fp,#-16]
	@%r215 = call i32 @g(i32 %r213,i32 %r214)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL48
.mainL68:
	mov r8,#10
	ldr r7,[fp,#-16]
	@%r222 = call i32 @g(i32 %r220,i32 %r221)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL48
.mainL66:
	mov r8,#11
	ldr r7,[fp,#-16]
	@%r229 = call i32 @g(i32 %r227,i32 %r228)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL48
.mainL64:
	mov r8,#12
	ldr r7,[fp,#-16]
	@%r236 = call i32 @g(i32 %r234,i32 %r235)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL48
.mainL62:
	mov r8,#13
	ldr r7,[fp,#-16]
	@%r243 = call i32 @g(i32 %r241,i32 %r242)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL48
.mainL60:
	mov r8,#14
	ldr r7,[fp,#-16]
	@%r250 = call i32 @g(i32 %r248,i32 %r249)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL48
.mainL58:
	mov r8,#15
	ldr r7,[fp,#-16]
	@%r257 = call i32 @g(i32 %r255,i32 %r256)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL48
.mainL56:
	mov r8,#16
	ldr r7,[fp,#-16]
	@%r264 = call i32 @g(i32 %r262,i32 %r263)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL48
.mainL54:
	mov r8,#17
	ldr r7,[fp,#-16]
	@%r271 = call i32 @g(i32 %r269,i32 %r270)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL48
.mainL52:
	mov r8,#18
	ldr r7,[fp,#-16]
	@%r278 = call i32 @g(i32 %r276,i32 %r277)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL48
.mainL50:
	mov r8,#19
	ldr r7,[fp,#-16]
	@%r285 = call i32 @g(i32 %r283,i32 %r284)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl g
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .mainL48
	beq .mainL49
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
	bne .mainL43
.mainL6:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .mainL2
.mainL43:
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
	beq .mainL6
.mainL41:
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
	beq .mainL6
.mainL39:
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
	beq .mainL6
.mainL37:
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
	beq .mainL6
.mainL35:
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
	beq .mainL6
.mainL33:
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
	beq .mainL6
.mainL31:
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
	beq .mainL6
.mainL29:
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
	beq .mainL6
.mainL27:
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
	beq .mainL6
.mainL25:
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
	beq .mainL6
.mainL23:
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
	beq .mainL6
.mainL21:
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
	beq .mainL6
.mainL19:
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
	beq .mainL6
.mainL17:
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
	beq .mainL6
.mainL15:
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
	beq .mainL6
.mainL13:
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
	beq .mainL6
.mainL11:
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
	beq .mainL6
.mainL9:
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
	beq .mainL6
.mainL7:
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
	beq .mainL6
.mainL5:
	bl .mainL6
	.section	.note.GNU-stack,"",%progbits
