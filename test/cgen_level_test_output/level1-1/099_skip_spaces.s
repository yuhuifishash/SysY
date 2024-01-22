.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	mov r9,#416
	sub sp,sp,r9
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
.mainL2:
	@%r5 = call i32 @getint()
	bl getint
	mov r8,r0
	cmp r8,#0
	bne .mainL3
.mainL4:
.mainL5:
	ldr r8,[fp,#-16]
	cmp r8,#0
	bne .mainL6
.mainL7:
	ldr r8,[fp,#-12]
	mov r7,#79
	@%r25 = call i32 @__modsi3(i32 %r23,i32 %r24)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	mov r0,r6
	mov r9,#416
	add sp,sp,r9
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL6:
	ldr r8,[fp,#-16]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-16]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	mov r6,r7
	movw r7,#65120
	movt r7,#65535  @ -416
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	str r7,[fp,#-12]
	bl .mainL5
.mainL3:
	@%r7 = call i32 @getint()
	bl getint
	mov r8,r0
	ldr r7,[fp,#-16]
	mov r6,r7
	movw r7,#65120
	movt r7,#65535  @ -416
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .mainL2
	.section	.note.GNU-stack,"",%progbits
