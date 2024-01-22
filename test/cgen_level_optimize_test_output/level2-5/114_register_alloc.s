.arch armv7-a
.fpu vfpv3-d16
.arm
.data
a1:
	.word  1
a2:
	.word  2
a3:
	.word  3
a4:
	.word  4
a5:
	.word  5
a6:
	.word  6
a7:
	.word  7
a8:
	.word  8
a9:
	.word  9
a10:
	.word  10
a11:
	.word  11
a12:
	.word  12
a13:
	.word  13
a14:
	.word  14
a15:
	.word  15
a16:
	.word  16
a17:
	.word  1
a18:
	.word  2
a19:
	.word  3
a20:
	.word  4
a21:
	.word  5
a22:
	.word  6
a23:
	.word  7
a24:
	.word  8
a25:
	.word  9
a26:
	.word  10
a27:
	.word  11
a28:
	.word  12
a29:
	.word  13
a30:
	.word  14
a31:
	.word  15
a32:
	.word  16
.text
.global main
.LPIC0:
	.word  a1
.LPIC1:
	.word  a10
.LPIC2:
	.word  a11
.LPIC3:
	.word  a12
.LPIC4:
	.word  a13
.LPIC5:
	.word  a14
.LPIC6:
	.word  a15
.LPIC7:
	.word  a16
.LPIC8:
	.word  a17
.LPIC9:
	.word  a18
.LPIC10:
	.word  a19
.LPIC11:
	.word  a2
.LPIC12:
	.word  a20
.LPIC13:
	.word  a21
.LPIC14:
	.word  a22
.LPIC15:
	.word  a23
.LPIC16:
	.word  a24
.LPIC17:
	.word  a25
.LPIC18:
	.word  a26
.LPIC19:
	.word  a27
.LPIC20:
	.word  a28
.LPIC21:
	.word  a29
.LPIC22:
	.word  a3
.LPIC23:
	.word  a30
.LPIC24:
	.word  a31
.LPIC25:
	.word  a32
.LPIC26:
	.word  a4
.LPIC27:
	.word  a5
.LPIC28:
	.word  a6
.LPIC29:
	.word  a7
.LPIC30:
	.word  a8
.LPIC31:
	.word  a9
func:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	mov r9,#268
	sub sp,sp,r9
.funcL0:
	mov r9,r1
	str r9,[fp,#-16]
	mov r9,r0
	str r9,[fp,#-12]
.funcL1:
	@%r81 = call i32 @getint()
	push {r0,r1}
	bl getint
	str r0,[fp,#-36]
	pop {r0,r1}
	@%r82 = call i32 @getint()
	push {r0,r1}
	bl getint
	str r0,[fp,#-48]
	pop {r0,r1}
	@%r83 = call i32 @getint()
	push {r0,r1}
	bl getint
	str r0,[fp,#-44]
	pop {r0,r1}
	@%r84 = call i32 @getint()
	push {r0,r1}
	bl getint
	str r0,[fp,#-40]
	pop {r0,r1}
	ldr r9,[fp,#-36]
	add r4,r9,#1
	ldr r3,.LPIC0
	ldr r9,[r3]
	str r9,[fp,#-20]
	ldr r9,[fp,#-20]
	add r10,r4,r9
	str r10,[fp,#-100]
	ldr r9,[fp,#-48]
	add r4,r9,#2
	ldr r0,.LPIC11
	ldr r9,[r0]
	str r9,[fp,#-24]
	ldr r9,[fp,#-24]
	add r10,r4,r9
	str r10,[fp,#-108]
	ldr r9,[fp,#-44]
	add r4,r9,#3
	ldr r2,.LPIC22
	ldr r9,[r2]
	str r9,[fp,#-28]
	ldr r9,[fp,#-28]
	add r10,r4,r9
	str r10,[fp,#-116]
	ldr r9,[fp,#-40]
	add r4,r9,#4
	ldr r1,.LPIC26
	ldr r9,[r1]
	str r9,[fp,#-32]
	ldr r9,[fp,#-32]
	add r10,r4,r9
	str r10,[fp,#-124]
	ldr r9,[fp,#-100]
	add r4,r9,#1
	ldr r8,.LPIC27
	ldr r9,[r8]
	str r9,[fp,#-52]
	ldr r9,[fp,#-52]
	add r10,r4,r9
	str r10,[fp,#-68]
	ldr r9,[fp,#-108]
	add r4,r9,#2
	ldr r6,.LPIC28
	ldr r9,[r6]
	str r9,[fp,#-56]
	ldr r9,[fp,#-56]
	add r10,r4,r9
	str r10,[fp,#-72]
	ldr r9,[fp,#-116]
	add r4,r9,#3
	ldr r5,.LPIC29
	ldr r9,[r5]
	str r9,[fp,#-60]
	ldr r9,[fp,#-60]
	add r10,r4,r9
	str r10,[fp,#-80]
	ldr r9,[fp,#-124]
	add r4,r9,#4
	ldr r7,.LPIC30
	ldr r9,[r7]
	str r9,[fp,#-64]
	ldr r9,[fp,#-64]
	add r10,r4,r9
	str r10,[fp,#-88]
	ldr r9,[fp,#-68]
	add r4,r9,#1
	ldr r8,.LPIC31
	ldr r9,[r8]
	str r9,[fp,#-76]
	ldr r9,[fp,#-76]
	add r10,r4,r9
	str r10,[fp,#-132]
	ldr r9,[fp,#-72]
	add r4,r9,#2
	ldr r6,.LPIC1
	ldr r9,[r6]
	str r9,[fp,#-84]
	ldr r9,[fp,#-84]
	add r10,r4,r9
	str r10,[fp,#-140]
	ldr r9,[fp,#-80]
	add r4,r9,#3
	ldr r5,.LPIC2
	ldr r9,[r5]
	str r9,[fp,#-92]
	ldr r9,[fp,#-92]
	add r10,r4,r9
	str r10,[fp,#-148]
	ldr r9,[fp,#-88]
	add r4,r9,#4
	ldr r7,.LPIC3
	ldr r9,[r7]
	str r9,[fp,#-96]
	ldr r9,[fp,#-96]
	add r10,r4,r9
	str r10,[fp,#-156]
	ldr r9,[fp,#-132]
	add r4,r9,#1
	ldr r3,.LPIC4
	ldr r9,[r3]
	str r9,[fp,#-104]
	ldr r9,[fp,#-104]
	add r10,r4,r9
	str r10,[fp,#-164]
	ldr r9,[fp,#-140]
	add r4,r9,#2
	ldr r0,.LPIC5
	ldr r9,[r0]
	str r9,[fp,#-112]
	ldr r9,[fp,#-112]
	add r10,r4,r9
	str r10,[fp,#-172]
	ldr r9,[fp,#-148]
	add r4,r9,#3
	ldr r2,.LPIC6
	ldr r9,[r2]
	str r9,[fp,#-120]
	ldr r9,[fp,#-120]
	add r10,r4,r9
	str r10,[fp,#-180]
	ldr r9,[fp,#-156]
	add r4,r9,#4
	ldr r1,.LPIC7
	ldr r9,[r1]
	str r9,[fp,#-128]
	ldr r9,[fp,#-128]
	add r10,r4,r9
	str r10,[fp,#-188]
	ldr r9,[fp,#-164]
	add r4,r9,#1
	ldr r8,.LPIC8
	ldr r9,[r8]
	str r9,[fp,#-136]
	ldr r9,[fp,#-136]
	add r10,r4,r9
	str r10,[fp,#-196]
	ldr r9,[fp,#-172]
	add r4,r9,#2
	ldr r6,.LPIC9
	ldr r9,[r6]
	str r9,[fp,#-144]
	ldr r9,[fp,#-144]
	add r10,r4,r9
	str r10,[fp,#-204]
	ldr r9,[fp,#-180]
	add r4,r9,#3
	ldr r5,.LPIC10
	ldr r9,[r5]
	str r9,[fp,#-152]
	ldr r9,[fp,#-152]
	add r10,r4,r9
	str r10,[fp,#-212]
	ldr r9,[fp,#-188]
	add r4,r9,#4
	ldr r7,.LPIC12
	ldr r9,[r7]
	str r9,[fp,#-160]
	ldr r9,[fp,#-160]
	add r10,r4,r9
	str r10,[fp,#-220]
	ldr r9,[fp,#-196]
	add r4,r9,#1
	ldr r3,.LPIC13
	ldr r9,[r3]
	str r9,[fp,#-168]
	ldr r9,[fp,#-168]
	add r3,r4,r9
	ldr r9,[fp,#-204]
	add r4,r9,#2
	ldr r0,.LPIC14
	ldr r9,[r0]
	str r9,[fp,#-176]
	ldr r9,[fp,#-176]
	add r0,r4,r9
	ldr r9,[fp,#-212]
	add r4,r9,#3
	ldr r2,.LPIC15
	ldr r9,[r2]
	str r9,[fp,#-184]
	ldr r9,[fp,#-184]
	add r2,r4,r9
	ldr r9,[fp,#-220]
	add r4,r9,#4
	ldr r1,.LPIC16
	ldr r9,[r1]
	str r9,[fp,#-192]
	ldr r9,[fp,#-192]
	add r1,r4,r9
	add r4,r3,#1
	ldr r8,.LPIC17
	ldr r9,[r8]
	str r9,[fp,#-200]
	ldr r9,[fp,#-200]
	add r8,r4,r9
	add r4,r0,#2
	ldr r6,.LPIC18
	ldr r9,[r6]
	str r9,[fp,#-208]
	ldr r9,[fp,#-208]
	add r6,r4,r9
	add r4,r2,#3
	ldr r5,.LPIC19
	ldr r9,[r5]
	str r9,[fp,#-216]
	ldr r9,[fp,#-216]
	add r5,r4,r9
	add r4,r1,#4
	ldr r7,.LPIC20
	ldr r9,[r7]
	str r9,[fp,#-224]
	ldr r9,[fp,#-224]
	add r7,r4,r9
	ldr r4,.LPIC21
	ldr r9,[r4]
	str r9,[fp,#-228]
	ldr r4,.LPIC23
	ldr r9,[r4]
	str r9,[fp,#-232]
	ldr r4,.LPIC24
	ldr r9,[r4]
	str r9,[fp,#-236]
	ldr r4,.LPIC25
	ldr r9,[r4]
	str r9,[fp,#-240]
	ldr r9,[fp,#-12]
	ldr r10,[fp,#-16]
	sub r4,r9,r10
	add r9,r4,#10
	str r9,[fp,#-12]
	add r4,r8,#1
	ldr r9,[fp,#-228]
	add r10,r4,r9
	str r10,[fp,#-16]
	add r4,r6,#2
	ldr r9,[fp,#-232]
	add r10,r4,r9
	str r10,[fp,#-244]
	add r4,r5,#3
	ldr r9,[fp,#-236]
	add r10,r4,r9
	str r10,[fp,#-248]
	add r4,r7,#4
	ldr r9,[fp,#-240]
	add r10,r4,r9
	str r10,[fp,#-252]
	add r4,r3,#1
	ldr r9,[fp,#-200]
	add r10,r4,r9
	str r10,[fp,#-256]
	add r4,r0,#2
	ldr r9,[fp,#-208]
	add r10,r4,r9
	str r10,[fp,#-260]
	add r4,r2,#3
	ldr r9,[fp,#-216]
	add r10,r4,r9
	str r10,[fp,#-264]
	add r4,r1,#4
	ldr r9,[fp,#-224]
	add r10,r4,r9
	str r10,[fp,#-268]
	ldr r9,[fp,#-196]
	add r4,r9,#1
	ldr r9,[fp,#-168]
	add r10,r4,r9
	str r10,[fp,#-196]
	ldr r9,[fp,#-204]
	add r4,r9,#2
	ldr r9,[fp,#-176]
	add r10,r4,r9
	str r10,[fp,#-204]
	ldr r9,[fp,#-212]
	add r4,r9,#3
	ldr r9,[fp,#-184]
	add r10,r4,r9
	str r10,[fp,#-212]
	ldr r9,[fp,#-220]
	add r4,r9,#4
	ldr r9,[fp,#-192]
	add r10,r4,r9
	str r10,[fp,#-220]
	ldr r9,[fp,#-164]
	add r4,r9,#1
	ldr r9,[fp,#-136]
	add r10,r4,r9
	str r10,[fp,#-164]
	ldr r9,[fp,#-172]
	add r4,r9,#2
	ldr r9,[fp,#-144]
	add r10,r4,r9
	str r10,[fp,#-172]
	ldr r9,[fp,#-180]
	add r4,r9,#3
	ldr r9,[fp,#-152]
	add r10,r4,r9
	str r10,[fp,#-180]
	ldr r9,[fp,#-188]
	add r4,r9,#4
	ldr r9,[fp,#-160]
	add r10,r4,r9
	str r10,[fp,#-188]
	ldr r9,[fp,#-132]
	add r4,r9,#1
	ldr r9,[fp,#-104]
	add r10,r4,r9
	str r10,[fp,#-132]
	ldr r9,[fp,#-140]
	add r4,r9,#2
	ldr r9,[fp,#-112]
	add r10,r4,r9
	str r10,[fp,#-140]
	ldr r9,[fp,#-148]
	add r4,r9,#3
	ldr r9,[fp,#-120]
	add r10,r4,r9
	str r10,[fp,#-148]
	ldr r9,[fp,#-156]
	add r4,r9,#4
	ldr r9,[fp,#-128]
	add r10,r4,r9
	str r10,[fp,#-156]
	ldr r9,[fp,#-68]
	add r4,r9,#1
	ldr r9,[fp,#-76]
	add r10,r4,r9
	str r10,[fp,#-68]
	ldr r9,[fp,#-72]
	add r4,r9,#2
	ldr r9,[fp,#-84]
	add r0,r4,r9
	ldr r9,[fp,#-80]
	add r4,r9,#3
	ldr r9,[fp,#-92]
	add r2,r4,r9
	ldr r9,[fp,#-88]
	add r4,r9,#4
	ldr r9,[fp,#-96]
	add r1,r4,r9
	ldr r9,[fp,#-100]
	add r4,r9,#1
	ldr r9,[fp,#-52]
	add r8,r4,r9
	ldr r9,[fp,#-108]
	add r4,r9,#2
	ldr r9,[fp,#-56]
	add r6,r4,r9
	ldr r9,[fp,#-116]
	add r4,r9,#3
	ldr r9,[fp,#-60]
	add r5,r4,r9
	ldr r9,[fp,#-124]
	add r4,r9,#4
	ldr r9,[fp,#-64]
	add r7,r4,r9
	ldr r9,[fp,#-12]
	ldr r10,[fp,#-36]
	add r4,r9,r10
	ldr r9,[fp,#-48]
	add r3,r4,r9
	ldr r9,[fp,#-44]
	add r4,r3,r9
	ldr r9,[fp,#-40]
	add r3,r4,r9
	ldr r9,[fp,#-100]
	sub r4,r3,r9
	ldr r9,[fp,#-108]
	sub r3,r4,r9
	ldr r9,[fp,#-116]
	sub r4,r3,r9
	ldr r9,[fp,#-124]
	sub r3,r4,r9
	add r4,r3,r8
	add r8,r4,r6
	add r6,r8,r5
	add r8,r6,r7
	ldr r9,[fp,#-68]
	sub r7,r8,r9
	sub r8,r7,r0
	sub r7,r8,r2
	sub r8,r7,r1
	ldr r9,[fp,#-132]
	add r7,r8,r9
	ldr r9,[fp,#-140]
	add r8,r7,r9
	ldr r9,[fp,#-148]
	add r7,r8,r9
	ldr r9,[fp,#-156]
	add r8,r7,r9
	ldr r9,[fp,#-164]
	sub r7,r8,r9
	ldr r9,[fp,#-172]
	sub r8,r7,r9
	ldr r9,[fp,#-180]
	sub r7,r8,r9
	ldr r9,[fp,#-188]
	sub r8,r7,r9
	ldr r9,[fp,#-196]
	add r7,r8,r9
	ldr r9,[fp,#-204]
	add r8,r7,r9
	ldr r9,[fp,#-212]
	add r7,r8,r9
	ldr r9,[fp,#-220]
	add r8,r7,r9
	ldr r9,[fp,#-256]
	sub r7,r8,r9
	ldr r9,[fp,#-260]
	sub r8,r7,r9
	ldr r9,[fp,#-264]
	sub r7,r8,r9
	ldr r9,[fp,#-268]
	sub r8,r7,r9
	ldr r9,[fp,#-16]
	add r7,r8,r9
	ldr r9,[fp,#-244]
	add r8,r7,r9
	ldr r9,[fp,#-248]
	add r7,r8,r9
	ldr r9,[fp,#-252]
	add r8,r7,r9
	ldr r9,[fp,#-20]
	add r7,r8,r9
	ldr r9,[fp,#-24]
	sub r8,r7,r9
	ldr r9,[fp,#-28]
	add r7,r8,r9
	ldr r9,[fp,#-32]
	sub r8,r7,r9
	ldr r9,[fp,#-52]
	add r7,r8,r9
	ldr r9,[fp,#-56]
	sub r8,r7,r9
	ldr r9,[fp,#-60]
	add r7,r8,r9
	ldr r9,[fp,#-64]
	sub r8,r7,r9
	ldr r9,[fp,#-76]
	add r7,r8,r9
	ldr r9,[fp,#-84]
	sub r8,r7,r9
	ldr r9,[fp,#-92]
	add r7,r8,r9
	ldr r9,[fp,#-96]
	sub r8,r7,r9
	ldr r9,[fp,#-104]
	add r7,r8,r9
	ldr r9,[fp,#-112]
	sub r8,r7,r9
	ldr r9,[fp,#-120]
	add r7,r8,r9
	ldr r9,[fp,#-128]
	sub r8,r7,r9
	ldr r9,[fp,#-136]
	add r7,r8,r9
	ldr r9,[fp,#-144]
	sub r8,r7,r9
	ldr r9,[fp,#-152]
	add r7,r8,r9
	ldr r9,[fp,#-160]
	sub r8,r7,r9
	ldr r9,[fp,#-168]
	add r7,r8,r9
	ldr r9,[fp,#-176]
	sub r8,r7,r9
	ldr r9,[fp,#-184]
	add r7,r8,r9
	ldr r9,[fp,#-192]
	sub r8,r7,r9
	ldr r9,[fp,#-200]
	add r7,r8,r9
	ldr r9,[fp,#-208]
	sub r8,r7,r9
	ldr r9,[fp,#-216]
	add r7,r8,r9
	ldr r9,[fp,#-224]
	sub r8,r7,r9
	ldr r9,[fp,#-228]
	add r7,r8,r9
	ldr r9,[fp,#-232]
	sub r8,r7,r9
	ldr r9,[fp,#-236]
	add r7,r8,r9
	ldr r9,[fp,#-240]
	sub r8,r7,r9
	mov r0,r8
	mov r9,#268
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r4 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	add r7,r8,#18
	@%r12 = call i32 @func(i32 %r4,i32 %r9)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl func
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	@call void @putint(i32 %r12)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r0,r6
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
