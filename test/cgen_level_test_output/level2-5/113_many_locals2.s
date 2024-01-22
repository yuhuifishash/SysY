.arch armv7-a
.fpu vfpv3-d16
.arm
.data
n:
	.word  0
.text
.global main
.LPIC0:
	.word  n
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	mov r9,#140
	sub sp,sp,r9
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-140]
	mov r8,#0
	str r8,[fp,#-136]
	mov r8,#0
	str r8,[fp,#-132]
	mov r8,#0
	str r8,[fp,#-128]
	mov r8,#0
	str r8,[fp,#-124]
	mov r8,#0
	str r8,[fp,#-120]
	mov r8,#0
	str r8,[fp,#-116]
	mov r8,#0
	str r8,[fp,#-112]
	mov r8,#0
	str r8,[fp,#-108]
	mov r8,#0
	str r8,[fp,#-104]
	mov r8,#0
	str r8,[fp,#-100]
	mov r8,#0
	str r8,[fp,#-96]
	mov r8,#0
	str r8,[fp,#-92]
	mov r8,#0
	str r8,[fp,#-88]
	mov r8,#0
	str r8,[fp,#-84]
	mov r8,#0
	str r8,[fp,#-80]
	mov r8,#0
	str r8,[fp,#-76]
	mov r8,#0
	str r8,[fp,#-72]
	mov r8,#0
	str r8,[fp,#-68]
	mov r8,#0
	str r8,[fp,#-64]
	mov r8,#0
	str r8,[fp,#-60]
	mov r8,#0
	str r8,[fp,#-56]
	mov r8,#0
	str r8,[fp,#-52]
	mov r8,#0
	str r8,[fp,#-48]
	mov r8,#0
	str r8,[fp,#-44]
	mov r8,#0
	str r8,[fp,#-40]
	mov r8,#0
	str r8,[fp,#-36]
	mov r8,#0
	str r8,[fp,#-32]
	mov r8,#0
	str r8,[fp,#-28]
	mov r8,#0
	str r8,[fp,#-24]
	mov r8,#0
	str r8,[fp,#-20]
	@%r62 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-20]
.mainL2:
	ldr r8,[fp,#-20]
	mov r7,#5
	cmp r8,r7
	beq .mainL3
.mainL4:
	mov r8,#0
	str r8,[fp,#-140]
	ldr r8,[fp,#-140]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-136]
	ldr r8,[fp,#-136]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-132]
	ldr r8,[fp,#-132]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-128]
	ldr r8,[fp,#-128]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-124]
	ldr r8,[fp,#-124]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-120]
	ldr r8,[fp,#-120]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-116]
	ldr r8,[fp,#-116]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-112]
	ldr r8,[fp,#-112]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-108]
	ldr r8,[fp,#-108]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-104]
	ldr r8,[fp,#-104]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-100]
	ldr r8,[fp,#-100]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-96]
	ldr r8,[fp,#-96]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-92]
	ldr r8,[fp,#-92]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-88]
	ldr r8,[fp,#-88]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-84]
	ldr r8,[fp,#-84]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-80]
	ldr r8,[fp,#-80]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-76]
	ldr r8,[fp,#-76]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-72]
	ldr r8,[fp,#-72]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-68]
	ldr r8,[fp,#-68]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-64]
	ldr r8,[fp,#-64]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-60]
	ldr r8,[fp,#-60]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-56]
	ldr r8,[fp,#-56]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-52]
	ldr r8,[fp,#-52]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-48]
	ldr r8,[fp,#-48]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-44]
	ldr r8,[fp,#-44]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-40]
	ldr r8,[fp,#-40]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-36]
	ldr r8,[fp,#-36]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-32]
	ldr r8,[fp,#-32]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-28]
	ldr r8,[fp,#-28]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-24]
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-140]
	@call void @putint(i32 %r161)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-136]
	@call void @putint(i32 %r162)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-132]
	@call void @putint(i32 %r163)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-128]
	@call void @putint(i32 %r164)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-124]
	@call void @putint(i32 %r165)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-120]
	@call void @putint(i32 %r166)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-116]
	@call void @putint(i32 %r167)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-112]
	@call void @putint(i32 %r168)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-108]
	@call void @putint(i32 %r169)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-104]
	@call void @putint(i32 %r170)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-100]
	@call void @putint(i32 %r171)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-96]
	@call void @putint(i32 %r172)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-92]
	@call void @putint(i32 %r173)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-88]
	@call void @putint(i32 %r174)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-84]
	@call void @putint(i32 %r175)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-80]
	@call void @putint(i32 %r176)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-76]
	@call void @putint(i32 %r177)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-72]
	@call void @putint(i32 %r178)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-68]
	@call void @putint(i32 %r179)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-64]
	@call void @putint(i32 %r180)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-60]
	@call void @putint(i32 %r181)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-56]
	@call void @putint(i32 %r182)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-52]
	@call void @putint(i32 %r183)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-48]
	@call void @putint(i32 %r184)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-44]
	@call void @putint(i32 %r185)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-40]
	@call void @putint(i32 %r186)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-36]
	@call void @putint(i32 %r187)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-32]
	@call void @putint(i32 %r188)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-28]
	@call void @putint(i32 %r189)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-24]
	@call void @putint(i32 %r190)
	mov r0,r8
	bl putint
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#10
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putch(i32 %r194)
	mov r0,r8
	bl putch
	ldr r8,[fp,#-20]
	@call void @putint(i32 %r195)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-12]
	@call void @putch(i32 %r196)
	mov r0,r8
	bl putch
	ldr r8,[fp,#-40]
	mov r0,r8
	mov r9,#140
	add sp,sp,r9
	pop {r6,r7,r8}
	pop {fp,pc}
.mainL3:
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
	bl .mainL2
	.section	.note.GNU-stack,"",%progbits
