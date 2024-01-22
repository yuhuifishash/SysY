.arch armv7-a
.fpu vfpv3-d16
.arm
.data
maxN:
	.word  1005
parent:
	.space  4020
.text
.global main
.LPIC0:
	.word  maxN
.LPIC1:
	.word  parent
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r1 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	@%r3 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r8,#0
	bgt .mainL21
.mainL5:
	cmp r7,#0
	bgt .mainL22
.mainL9:
	cmp r8,#0
	bgt .mainL23
.mainL27:
	mov r6,#0
.mainL13:
	@call void @putint(i32 %r75)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r0,#0
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL23:
	mov r5,#0
	mov r4,#0
.mainL11:
	mov r3,r4
	ldr r2,.LPIC1
	add r1,r2,r3,lsl #2
	ldr r3,[r1]
	cmp r3,r4
	beq .mainL14
.mainL29:
	mov r3,r5
.mainL15:
	add r2,r4,#1
.mainL12:
	cmp r2,r8
	blt .mainL26
.mainL28:
	mov r6,r3
	bl .mainL13
.mainL26:
	mov r5,r3
	mov r4,r2
	bl .mainL11
.mainL14:
	add r6,r5,#1
	mov r3,r6
	bl .mainL15
.mainL22:
	mov r6,#0
.mainL7:
	@%r33 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	@%r34 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r4,r0
	add sp,sp,#4 @stack align 8bytes
.mainL16:
.mainL18:
	@%r86 = call i32 @find(i32 %r33)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r5
	bl find
	mov r3,r0
	add sp,sp,#4 @stack align 8bytes
	@%r87 = call i32 @find(i32 %r34)
	push {r3}
	mov r0,r4
	bl find
	mov r5,r0
	pop {r3}
	cmp r3,r5
	bne .mainL19
.mainL20:
.mainL17:
	add r4,r6,#1
.mainL8:
	cmp r4,r7
	bge .mainL9
.mainL25:
	mov r6,r4
	bl .mainL7
.mainL19:
	mov r4,r5
	ldr r5,.LPIC1
	add r2,r5,r4,lsl #2
	str r3,[r2]
	bl .mainL20
.mainL21:
	mov r6,#0
.mainL3:
	mov r5,r6
	ldr r4,.LPIC1
	add r3,r4,r5,lsl #2
	str r6,[r3]
	add r5,r6,#1
.mainL4:
	cmp r5,r8
	bge .mainL5
.mainL24:
	mov r6,r5
	bl .mainL3
find:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.findL0:
.findL1:
	mov r8,r0
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	cmp r8,r0
	beq .findL2
.findL3:
	mov r8,r0
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	@%r13 = call i32 @find(i32 %r12)
	push {r0}
	mov r0,r8
	bl find
	mov r7,r0
	pop {r0}
	str r7,[r6]
	ldr r8,[r6]
	mov r0,r8
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
.findL2:
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
merge:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mergeL0:
.mergeL1:
	@%r9 = call i32 @find(i32 %r0)
	push {r0,r1}
	bl find
	mov r8,r0
	pop {r0,r1}
	@%r11 = call i32 @find(i32 %r1)
	sub sp,sp,#4 @stack align 8bytes
	push {r1}
	mov r0,r1
	bl find
	mov r7,r0
	pop {r1}
	add sp,sp,#4 @stack align 8bytes
	cmp r8,r7
	bne .mergeL2
.mergeL3:
	add sp,sp,#8
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mergeL2:
	mov r6,r7
	ldr r7,.LPIC1
	add r5,r7,r6,lsl #2
	str r8,[r5]
	bl .mergeL3
	.section	.note.GNU-stack,"",%progbits
