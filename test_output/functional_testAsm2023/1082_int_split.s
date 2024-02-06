.arch armv7-a
.fpu vfpv3-d16
.arm
.data
N:
	.word  0
newline:
	.word  0
.text
.global main
.LPIC0:
	.word  N
.LPIC1:
	.word  newline
split:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.splitL0:
	str r0,[fp,#-16]
.splitL1:
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,.LPIC0
	ldr r7,[r8]
	mov r8,#1
	sub r6,r7,r8
	str r6,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	bne .splitL3
.splitL5:
	mov r8,#0
	mov r0,r8
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
.splitL3:
	ldr r8,[fp,#-16]
	mov r7,#10
	@%r16 = call i32 @__modsi3(i32 %r14,i32 %r15)
	push {r1}
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	pop {r1}
	ldr r8,[fp,#-12]
	mov r7,r8
	add r8,r1,r7,lsl #2
	str r6,[r8]
	ldr r8,[fp,#-16]
	mov r7,#10
	@%r21 = call i32 @__aeabi_idiv(i32 %r19,i32 %r20)
	push {r1}
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	pop {r1}
	str r6,[fp,#-16]
	ldr r8,[fp,#-12]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-12]
.splitL4:
	ldr r8,[fp,#-12]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	bne .splitL3
	beq .splitL5
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#36
.mainL0:
.mainL1:
	mov r8,#4
	ldr r7,.LPIC0
	str r8,[r7]
	mov r8,#10
	ldr r7,.LPIC1
	str r8,[r7]
	mov r8,#0
	str r8,[fp,#-36]
	mov r8,#0
	str r8,[fp,#-32]
	movw r8,#1478
	movt r8,#0  @ 1478
	mov r7,r8
	str r7,[fp,#-32]
	ldr r8,[fp,#-32]
	mvn r7,#27
	add r6,fp,r7
	@%r10 = call i32 @split(i32 %r8,ptr %r9)
	mov r0,r8
	mov r1,r6
	bl split
	mov r7,r0
	str r7,[fp,#-32]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#0
	str r8,[fp,#-36]
	ldr r8,[fp,#-36]
	mov r7,#4
	cmp r8,r7
	blt .mainL3
.mainL5:
	mov r8,#0
	mov r0,r8
	add sp,sp,#36
	pop {r6,r7,r8}
	pop {fp,pc}
.mainL3:
	ldr r8,[fp,#-36]
	mov r7,r8
	mvn r8,#27
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putint(i32 %r22)
	mov r0,r8
	bl putint
	ldr r8,.LPIC1
	ldr r7,[r8]
	@call void @putch(i32 %r23)
	mov r0,r7
	bl putch
	ldr r8,[fp,#-36]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-36]
.mainL4:
	ldr r8,[fp,#-36]
	mov r7,#4
	cmp r8,r7
	blt .mainL3
	bge .mainL5
	.section	.note.GNU-stack,"",%progbits
