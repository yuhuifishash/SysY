.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	mov r9,#408
	sub sp,sp,r9
.mainL0:
.mainL1:
	@%r5 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r8,#0
	bne .mainL10
.mainL13:
	mov r8,#0
.mainL5:
	cmp r8,#0
	bne .mainL11
.mainL16:
	mov r7,#0
.mainL9:
	movw r6,#14933
	movt r6,#26546  @ 1739733589
	smmul r6,r7,r6
	asr r5,r7,#31
	rsb r6,r5,r6,asr #5
	mov r5,#79
	mul r6,r6,r5
	sub r5,r7,r6
	mov r0,r5
	mov r9,#408
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL11:
	mov r6,#0
	mov r5,r8
.mainL7:
	sub r4,r5,#1
	mov r3,r4
	movw r2,#65128
	movt r2,#65535  @ -408
	add r1,fp,r2
	add r2,r1,r3,lsl #2
	ldr r3,[r2]
	add r2,r6,r3
.mainL8:
	cmp r4,#0
	bne .mainL15
.mainL17:
	mov r7,r2
	bl .mainL9
.mainL15:
	mov r6,r2
	mov r5,r4
	bl .mainL7
.mainL10:
	mov r7,#0
.mainL3:
	@%r7 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	mov r5,r7
	movw r4,#65128
	movt r4,#65535  @ -408
	add r3,fp,r4
	add r4,r3,r5,lsl #2
	str r6,[r4]
	add r6,r7,#1
.mainL4:
	@%r13 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r5,#0
	bne .mainL12
.mainL14:
	mov r8,r6
	bl .mainL5
.mainL12:
	mov r7,r6
	bl .mainL3
	.section	.note.GNU-stack,"",%progbits
