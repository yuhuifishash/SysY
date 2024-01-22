.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
canJump:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#48
.canJumpL0:
.canJumpL1:
	cmp r1,#1
	beq .canJumpL2
.canJumpL3:
	mov r8,r0
	ldr r7,[r8]
	sub r8,r1,#2
	cmp r7,r8
	bgt .canJumpL4
.canJumpL5:
	sub r8,r1,#1
	cmp r8,#0
	bgt .canJumpL23
.canJumpL9:
	sub r8,r1,#1
	mov r7,r8
	mvn r8,#47
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	mov r7,#1
	str r7,[r8]
	sub r8,r1,#2
	mvn r7,#0
	cmp r8,r7
	bgt .canJumpL24
.canJumpL13:
	mvn r7,#47
	add r6,fp,r7
	ldr r7,[r6]
	mov r0,r7
	add sp,sp,#48
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.canJumpL24:
	sub r7,r1,#1
	mov r6,r8
.canJumpL11:
	mov r8,r6
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	sub r5,r7,r6
	cmp r8,r5
	blt .canJumpL14
.canJumpL15:
	sub r8,r1,#1
	sub r5,r8,r6
	mov r8,r5
.canJumpL16:
	mvn r5,#0
	cmp r8,r5
	bgt .canJumpL25
.canJumpL20:
	sub r5,r6,#1
.canJumpL12:
	mvn r4,#0
	cmp r5,r4
	ble .canJumpL13
.canJumpL27:
	mov r6,r5
	bl .canJumpL11
.canJumpL25:
	mov r5,r8
.canJumpL18:
	add r4,r6,r5
	mov r3,r4
	mvn r4,#47
	add r2,fp,r4
	add r4,r2,r3,lsl #2
	ldr r3,[r4]
	cmp r3,#0
	bne .canJumpL21
.canJumpL22:
	sub r4,r5,#1
.canJumpL19:
	mvn r3,#0
	cmp r4,r3
	ble .canJumpL20
.canJumpL28:
	mov r5,r4
	bl .canJumpL18
.canJumpL21:
	mov r4,r6
	mvn r3,#47
	add r2,fp,r3
	add r3,r2,r4,lsl #2
	mov r4,#1
	str r4,[r3]
	bl .canJumpL22
.canJumpL14:
	mov r5,r6
	add r4,r0,r5,lsl #2
	ldr r5,[r4]
	mov r8,r5
	bl .canJumpL16
.canJumpL23:
	sub r8,r1,#1
	mov r7,#0
.canJumpL7:
	mov r6,r7
	mvn r5,#47
	add r4,fp,r5
	add r5,r4,r6,lsl #2
	mov r6,#0
	str r6,[r5]
	add r6,r7,#1
.canJumpL8:
	cmp r6,r8
	bge .canJumpL9
.canJumpL26:
	mov r7,r6
	bl .canJumpL7
.canJumpL4:
	mov r0,#1
	add sp,sp,#48
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.canJumpL2:
	mov r0,#1
	add sp,sp,#48
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#48
.mainL0:
.mainL1:
	mvn r8,#47
	add r7,fp,r8
	mov r8,#3
	str r8,[r7]
	mov r8,#1
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#3
	str r8,[r7]
	mov r8,#2
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#9
	str r8,[r7]
	mov r8,#3
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#0
	str r8,[r7]
	mov r8,#4
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#0
	str r8,[r7]
	mov r8,#5
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#1
	str r8,[r7]
	mov r8,#6
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#1
	str r8,[r7]
	mov r8,#7
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#5
	str r8,[r7]
	mov r8,#8
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#7
	str r8,[r7]
	mov r8,#9
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#8
	str r8,[r7]
	mvn r8,#47
	add r7,fp,r8
	@%r36 = call i32 @canJump(ptr %r34,i32 10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,#10
	bl canJump
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mov r0,r8
	add sp,sp,#48
	pop {r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
