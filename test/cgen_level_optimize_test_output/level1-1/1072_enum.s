.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
main:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#24
.mainL0:
.mainL1:
.mainL12:
	mov r8,#0
	mov r7,#0
	mov r6,#0
	mov r5,#0
.mainL3:
	rsb r4,r5,#101
	cmp r6,r4
	blt .mainL13
.mainL16:
	mov r9,r8
	str r9,[fp,#-12]
	mov r9,r7
	str r9,[fp,#-16]
	mov r9,r6
	str r9,[fp,#-20]
.mainL9:
	add r1,r5,#1
.mainL4:
	cmp r1,#21
	blt .mainL14
.mainL5:
	mov r0,#0
	add sp,sp,#24
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.mainL14:
	ldr r9,[fp,#-12]
	mov r8,r9
	ldr r9,[fp,#-16]
	mov r7,r9
	ldr r9,[fp,#-20]
	mov r6,r9
	mov r5,r1
	bl .mainL3
.mainL13:
	rsb r9,r5,#100
	str r9,[fp,#-24]
	add r1,r5,r5,lsl #2
	rsb r0,r5,#101
	mov r4,r8
	mov r8,r6
.mainL7:
	ldr r9,[fp,#-24]
	sub r6,r9,r8
	add r3,r1,r8
	add r2,r6,r6,lsr #31
	asr r7,r2,#1
	add r2,r3,r7
	cmp r2,#100
	beq .mainL10
.mainL18:
	mov r7,r4
.mainL11:
	add r3,r8,#1
.mainL8:
	cmp r3,r0
	blt .mainL15
.mainL17:
	mov r9,r7
	str r9,[fp,#-12]
	mov r9,r6
	str r9,[fp,#-16]
	mov r9,r3
	str r9,[fp,#-20]
	bl .mainL9
.mainL15:
	mov r4,r7
	mov r8,r3
	bl .mainL7
.mainL10:
	@call void @putint(i32 %r80)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1}
	mov r0,r5
	bl putint
	pop {r0,r1}
	add sp,sp,#4 @stack align 8bytes
	@call void @putint(i32 %r76)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1}
	mov r0,r8
	bl putint
	pop {r0,r1}
	add sp,sp,#4 @stack align 8bytes
	@call void @putint(i32 %r27)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1}
	mov r0,r6
	bl putint
	pop {r0,r1}
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1}
	mov r0,#10
	bl putch
	pop {r0,r1}
	add sp,sp,#4 @stack align 8bytes
	mov r7,#10
	bl .mainL11
	.section	.note.GNU-stack,"",%progbits
