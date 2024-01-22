.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
canJump:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#60
.canJumpL0:
	str r1,[fp,#-60]
.canJumpL1:
	ldr r8,[fp,#-60]
	mov r7,#1
	cmp r8,r7
	beq .canJumpL2
.canJumpL3:
	mov r8,#0
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-60]
	mov r6,#2
	sub r5,r8,r6
	cmp r7,r5
	bgt .canJumpL4
.canJumpL5:
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-16]
.canJumpL6:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-60]
	mov r6,#1
	sub r5,r7,r6
	cmp r8,r5
	blt .canJumpL7
.canJumpL8:
	mov r8,#1
	ldr r7,[fp,#-60]
	mov r6,#1
	sub r5,r7,r6
	mov r7,r5
	mvn r6,#55
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	ldr r8,[fp,#-60]
	mov r7,#2
	sub r6,r8,r7
	str r6,[fp,#-16]
.canJumpL9:
	ldr r8,[fp,#-16]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	bgt .canJumpL10
.canJumpL11:
	mov r8,#0
	mov r7,r8
	mvn r8,#55
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	mov r0,r7
	add sp,sp,#60
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.canJumpL10:
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-60]
	mov r6,#1
	sub r5,r8,r6
	ldr r8,[fp,#-16]
	sub r6,r5,r8
	cmp r7,r6
	blt .canJumpL12
.canJumpL13:
	ldr r8,[fp,#-60]
	mov r7,#1
	sub r6,r8,r7
	ldr r8,[fp,#-16]
	sub r7,r6,r8
	str r7,[fp,#-12]
.canJumpL14:
.canJumpL15:
	ldr r8,[fp,#-12]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	bgt .canJumpL16
.canJumpL17:
	ldr r8,[fp,#-16]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-16]
	bl .canJumpL9
.canJumpL16:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	add r6,r8,r7
	mov r8,r6
	mvn r7,#55
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	ldr r8,[r7]
	mov r7,#0
	cmp r8,r7
	bne .canJumpL18
.canJumpL19:
	ldr r8,[fp,#-12]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-12]
	bl .canJumpL15
.canJumpL18:
	mov r8,#1
	ldr r7,[fp,#-16]
	mov r6,r7
	mvn r7,#55
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	bl .canJumpL19
.canJumpL12:
	ldr r8,[fp,#-16]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-12]
	bl .canJumpL14
.canJumpL7:
	mov r8,#0
	ldr r7,[fp,#-16]
	mov r6,r7
	mvn r7,#55
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .canJumpL6
.canJumpL4:
	mov r8,#1
	mov r0,r8
	add sp,sp,#60
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.canJumpL2:
	mov r8,#1
	mov r0,r8
	add sp,sp,#60
	pop {r5,r6,r7,r8}
	pop {fp,pc}
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#52
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-52]
	mov r8,#3
	mov r7,#0
	mov r6,r7
	mvn r7,#47
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#3
	mov r7,#1
	mov r6,r7
	mvn r7,#47
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#9
	mov r7,#2
	mov r6,r7
	mvn r7,#47
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#0
	mov r7,#3
	mov r6,r7
	mvn r7,#47
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#0
	mov r7,#4
	mov r6,r7
	mvn r7,#47
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#1
	mov r7,#5
	mov r6,r7
	mvn r7,#47
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#1
	mov r7,#6
	mov r6,r7
	mvn r7,#47
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#5
	mov r7,#7
	mov r6,r7
	mvn r7,#47
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#7
	mov r7,#8
	mov r6,r7
	mvn r7,#47
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#8
	mov r7,#9
	mov r6,r7
	mvn r7,#47
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#10
	str r8,[fp,#-52]
	mvn r8,#47
	add r7,fp,r8
	ldr r8,[fp,#-52]
	@%r36 = call i32 @canJump(ptr %r34,i32 %r35)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,r8
	bl canJump
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	str r6,[fp,#-52]
	ldr r8,[fp,#-52]
	mov r0,r8
	add sp,sp,#52
	pop {r5,r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
