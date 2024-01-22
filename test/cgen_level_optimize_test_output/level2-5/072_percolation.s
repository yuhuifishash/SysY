.arch armv7-a
.fpu vfpv3-d16
.arm
.data
array:
	.space  440
n:
	.word  0
.text
.global main
.LPIC0:
	.word  array
.LPIC1:
	.word  n
init:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.initL0:
.initL1:
	mul r8,r0,r0
	add r7,r8,#1
	cmp r7,#1
	bge .initL6
.initL5:
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.initL6:
	mul r8,r0,r0
	add r7,r8,#1
	mov r8,#1
.initL3:
	mov r6,r8
	ldr r5,.LPIC0
	add r4,r5,r6,lsl #2
	mvn r6,#0
	str r6,[r4]
	add r6,r8,#1
.initL4:
	cmp r6,r7
	bgt .initL5
.initL7:
	mov r8,r6
	bl .initL3
findfa:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.findfaL0:
.findfaL1:
	mov r8,r0
	ldr r7,.LPIC0
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	cmp r8,r0
	beq .findfaL2
.findfaL3:
	mov r8,r0
	ldr r7,.LPIC0
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	@%r13 = call i32 @findfa(i32 %r12)
	push {r0}
	mov r0,r8
	bl findfa
	mov r7,r0
	pop {r0}
	str r7,[r6]
	ldr r8,[r6]
	mov r0,r8
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
.findfaL2:
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
mmerge:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mmergeL0:
.mmergeL1:
	@%r6 = call i32 @findfa(i32 %r0)
	push {r0,r1}
	bl findfa
	mov r8,r0
	pop {r0,r1}
	@%r9 = call i32 @findfa(i32 %r1)
	sub sp,sp,#4 @stack align 8bytes
	push {r1}
	mov r0,r1
	bl findfa
	mov r7,r0
	pop {r1}
	add sp,sp,#4 @stack align 8bytes
	cmp r8,r7
	bne .mmergeL2
.mmergeL3:
	add sp,sp,#8
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mmergeL2:
	mov r6,r8
	ldr r8,.LPIC0
	add r5,r8,r6,lsl #2
	str r7,[r5]
	bl .mmergeL3
main:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#12
.mainL0:
.mainL1:
.mainL3:
	mov r8,#4
	ldr r7,.LPIC1
	str r8,[r7]
	ldr r8,.LPIC1
	ldr r7,[r8]
	@call void @init(i32 %r20)
	mov r0,r7
	bl init
	mul r8,r7,r7
	add r7,r8,#1
.mainL70:
	mov r8,#0
	mov r9,#0
	str r9,[fp,#-12]
.mainL7:
	@%r32 = call i32 @getint()
	bl getint
	mov r5,r0
	@%r33 = call i32 @getint()
	bl getint
	mov r4,r0
	cmp r8,#0
	beq .mainL10
.mainL72:
	mov r3,r8
.mainL11:
	ldr r9,[fp,#-12]
	add r2,r9,#1
.mainL8:
	cmp r2,#10
	blt .mainL71
.mainL9:
	cmp r3,#0
	beq .mainL38
.mainL39:
.mainL4:
.mainL5:
	mov r0,#0
	add sp,sp,#12
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.mainL38:
	@call void @putint(i32 -1)
	push {r2,r3}
	mvn r0,#0
	bl putint
	pop {r2,r3}
	@call void @putch(i32 10)
	push {r2,r3}
	mov r0,#10
	bl putch
	pop {r2,r3}
	bl .mainL39
.mainL71:
	mov r8,r3
	mov r9,r2
	str r9,[fp,#-12]
	bl .mainL7
.mainL10:
	ldr r2,.LPIC1
	ldr r1,[r2]
	sub r2,r5,#1
	mul r0,r1,r2
	add r2,r0,r4
	mov r1,r2
	ldr r0,.LPIC0
	add r6,r0,r1,lsl #2
	str r2,[r6]
	cmp r5,#1
	beq .mainL12
.mainL13:
	ldr r6,.LPIC1
	ldr r1,[r6]
	cmp r5,r1
	beq .mainL14
.mainL15:
	ldr r6,.LPIC1
	ldr r1,[r6]
	cmp r4,r1
	blt .mainL18
.mainL17:
	cmp r4,#1
	bgt .mainL22
.mainL21:
	ldr r6,.LPIC1
	ldr r1,[r6]
	cmp r5,r1
	blt .mainL26
.mainL25:
	cmp r5,#1
	bgt .mainL30
.mainL29:
	ldr r6,.LPIC0
	ldr r1,[r6]
	mvn r6,#0
	cmp r1,r6
	bne .mainL36
.mainL73:
	mov r6,r8
.mainL33:
	mov r3,r6
	bl .mainL11
.mainL36:
	mov r3,r7
	ldr r1,.LPIC0
	add r0,r1,r3,lsl #2
	ldr r3,[r0]
	mvn r1,#0
	cmp r3,r1
	bne .mainL34
.mainL75:
	mov r6,r8
	bl .mainL33
.mainL34:
	@%r177 = call i32 @findfa(i32 0)
	sub sp,sp,#4 @stack align 8bytes
	push {r2}
	mov r0,#0
	bl findfa
	mov r3,r0
	pop {r2}
	add sp,sp,#4 @stack align 8bytes
	@%r179 = call i32 @findfa(i32 %r26)
	push {r2,r3}
	mov r0,r7
	bl findfa
	mov r1,r0
	pop {r2,r3}
	cmp r3,r1
	beq .mainL32
.mainL74:
	mov r6,r8
	bl .mainL33
.mainL32:
	ldr r9,[fp,#-12]
	add r3,r9,#1
	@call void @putint(i32 %r190)
	push {r2,r3}
	mov r0,r3
	bl putint
	pop {r2,r3}
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	push {r2}
	mov r0,#10
	bl putch
	pop {r2}
	add sp,sp,#4 @stack align 8bytes
	mov r6,#1
	bl .mainL33
.mainL30:
	ldr r6,.LPIC1
	ldr r3,[r6]
	sub r6,r2,r3
	mov r3,r6
	ldr r6,.LPIC0
	add r1,r6,r3,lsl #2
	ldr r6,[r1]
	mvn r3,#0
	cmp r6,r3
	beq .mainL29
.mainL28:
	ldr r6,.LPIC1
	ldr r3,[r6]
	sub r6,r2,r3
.mainL65:
.mainL67:
	@%r253 = call i32 @findfa(i32 %r45)
	sub sp,sp,#4 @stack align 8bytes
	push {r2}
	mov r0,r2
	bl findfa
	mov r3,r0
	pop {r2}
	add sp,sp,#4 @stack align 8bytes
	@%r254 = call i32 @findfa(i32 %r156)
	push {r2,r3}
	mov r0,r6
	bl findfa
	mov r1,r0
	pop {r2,r3}
	cmp r3,r1
	bne .mainL68
.mainL69:
.mainL66:
	bl .mainL29
.mainL68:
	mov r6,r3
	ldr r3,.LPIC0
	add r0,r3,r6,lsl #2
	str r1,[r0]
	bl .mainL69
.mainL26:
	ldr r6,.LPIC1
	ldr r3,[r6]
	add r6,r2,r3
	mov r3,r6
	ldr r6,.LPIC0
	add r1,r6,r3,lsl #2
	ldr r6,[r1]
	mvn r3,#0
	cmp r6,r3
	beq .mainL25
.mainL24:
	ldr r6,.LPIC1
	ldr r3,[r6]
	add r6,r2,r3
.mainL60:
.mainL62:
	@%r249 = call i32 @findfa(i32 %r45)
	sub sp,sp,#4 @stack align 8bytes
	push {r2}
	mov r0,r2
	bl findfa
	mov r3,r0
	pop {r2}
	add sp,sp,#4 @stack align 8bytes
	@%r250 = call i32 @findfa(i32 %r134)
	push {r2,r3}
	mov r0,r6
	bl findfa
	mov r1,r0
	pop {r2,r3}
	cmp r3,r1
	bne .mainL63
.mainL64:
.mainL61:
	bl .mainL25
.mainL63:
	mov r6,r3
	ldr r3,.LPIC0
	add r0,r3,r6,lsl #2
	str r1,[r0]
	bl .mainL64
.mainL22:
	sub r6,r2,#1
	mov r3,r6
	ldr r6,.LPIC0
	add r1,r6,r3,lsl #2
	ldr r6,[r1]
	mvn r3,#0
	cmp r6,r3
	beq .mainL21
.mainL20:
	sub r6,r2,#1
.mainL55:
.mainL57:
	@%r245 = call i32 @findfa(i32 %r45)
	sub sp,sp,#4 @stack align 8bytes
	push {r2}
	mov r0,r2
	bl findfa
	mov r3,r0
	pop {r2}
	add sp,sp,#4 @stack align 8bytes
	@%r246 = call i32 @findfa(i32 %r112)
	push {r2,r3}
	mov r0,r6
	bl findfa
	mov r1,r0
	pop {r2,r3}
	cmp r3,r1
	bne .mainL58
.mainL59:
.mainL56:
	bl .mainL21
.mainL58:
	mov r6,r3
	ldr r3,.LPIC0
	add r0,r3,r6,lsl #2
	str r1,[r0]
	bl .mainL59
.mainL18:
	add r6,r2,#1
	mov r3,r6
	ldr r6,.LPIC0
	add r1,r6,r3,lsl #2
	ldr r6,[r1]
	mvn r3,#0
	cmp r6,r3
	beq .mainL17
.mainL16:
	add r6,r2,#1
.mainL50:
.mainL52:
	@%r241 = call i32 @findfa(i32 %r45)
	sub sp,sp,#4 @stack align 8bytes
	push {r2}
	mov r0,r2
	bl findfa
	mov r3,r0
	pop {r2}
	add sp,sp,#4 @stack align 8bytes
	@%r242 = call i32 @findfa(i32 %r90)
	push {r2,r3}
	mov r0,r6
	bl findfa
	mov r1,r0
	pop {r2,r3}
	cmp r3,r1
	bne .mainL53
.mainL54:
.mainL51:
	bl .mainL17
.mainL53:
	mov r6,r3
	ldr r3,.LPIC0
	add r0,r3,r6,lsl #2
	str r1,[r0]
	bl .mainL54
.mainL14:
	mov r6,r7
	ldr r3,.LPIC0
	add r1,r3,r6,lsl #2
	str r7,[r1]
.mainL45:
.mainL47:
	@%r237 = call i32 @findfa(i32 %r45)
	sub sp,sp,#4 @stack align 8bytes
	push {r2}
	mov r0,r2
	bl findfa
	mov r6,r0
	pop {r2}
	add sp,sp,#4 @stack align 8bytes
	@%r238 = call i32 @findfa(i32 %r26)
	sub sp,sp,#4 @stack align 8bytes
	push {r2}
	mov r0,r7
	bl findfa
	mov r3,r0
	pop {r2}
	add sp,sp,#4 @stack align 8bytes
	cmp r6,r3
	bne .mainL48
.mainL49:
.mainL46:
	bl .mainL15
.mainL48:
	mov r1,r6
	ldr r6,.LPIC0
	add r0,r6,r1,lsl #2
	str r3,[r0]
	bl .mainL49
.mainL12:
	ldr r6,.LPIC0
	mov r3,#0
	str r3,[r6]
.mainL40:
.mainL42:
	@%r233 = call i32 @findfa(i32 %r45)
	sub sp,sp,#4 @stack align 8bytes
	push {r2}
	mov r0,r2
	bl findfa
	mov r6,r0
	pop {r2}
	add sp,sp,#4 @stack align 8bytes
	@%r234 = call i32 @findfa(i32 0)
	sub sp,sp,#4 @stack align 8bytes
	push {r2}
	mov r0,#0
	bl findfa
	mov r3,r0
	pop {r2}
	add sp,sp,#4 @stack align 8bytes
	cmp r6,r3
	bne .mainL43
.mainL44:
.mainL41:
	bl .mainL13
.mainL43:
	mov r1,r6
	ldr r6,.LPIC0
	add r0,r6,r1,lsl #2
	str r3,[r0]
	bl .mainL44
	.section	.note.GNU-stack,"",%progbits
