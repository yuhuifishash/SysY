.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
param32_rec:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#112
.param32_recL0:
	mov r9,r1
	str r9,[fp,#-20]
	mov r9,r2
	str r9,[fp,#-16]
	mov r9,r3
	str r9,[fp,#-12]
	ldr r1,[fp,#140]
	ldr r9,[fp,#136]
	str r9,[fp,#-104]
	ldr r5,[fp,#132]
	ldr r3,[fp,#128]
	ldr r9,[fp,#124]
	str r9,[fp,#-112]
	ldr r9,[fp,#120]
	str r9,[fp,#-32]
	ldr r9,[fp,#116]
	str r9,[fp,#-36]
	ldr r9,[fp,#112]
	str r9,[fp,#-44]
	ldr r9,[fp,#108]
	str r9,[fp,#-48]
	ldr r9,[fp,#104]
	str r9,[fp,#-72]
	ldr r9,[fp,#100]
	str r9,[fp,#-52]
	ldr r9,[fp,#96]
	str r9,[fp,#-56]
	ldr r9,[fp,#92]
	str r9,[fp,#-60]
	ldr r9,[fp,#88]
	str r9,[fp,#-96]
	ldr r9,[fp,#84]
	str r9,[fp,#-76]
	ldr r9,[fp,#80]
	str r9,[fp,#-80]
	ldr r9,[fp,#76]
	str r9,[fp,#-84]
	ldr r7,[fp,#72]
	ldr r9,[fp,#68]
	str r9,[fp,#-108]
	ldr r9,[fp,#64]
	str r9,[fp,#-28]
	ldr r9,[fp,#60]
	str r9,[fp,#-40]
	ldr r9,[fp,#56]
	str r9,[fp,#-68]
	ldr r9,[fp,#52]
	str r9,[fp,#-88]
	ldr r9,[fp,#48]
	str r9,[fp,#-92]
	ldr r9,[fp,#44]
	str r9,[fp,#-100]
	ldr r8,[fp,#40]
	ldr r9,[fp,#36]
	str r9,[fp,#-24]
	ldr r9,[fp,#32]
	str r9,[fp,#-64]
.param32_recL1:
	cmp r0,#0
	beq .param32_recL2
.param32_recL3:
	sub r6,r0,#1
	ldr r9,[fp,#-20]
	ldr r10,[fp,#-16]
	add r0,r9,r10
	movw r4,#51217
	movt r4,#4405  @ 288737297
	smmul r4,r0,r4
	asr r2,r0,#31
	rsb r4,r2,r4,asr #26
	movw r2,#1
	movt r2,#15232  @ 998244353
	mul r4,r4,r2
	sub r2,r0,r4
	@%r108 = call i32 @param32_rec(i32 %r72,i32 %r77,i32 %r3,i32 %r4,i32 %r5,i32 %r6,i32 %r7,i32 %r8,i32 %r9,i32 %r10,i32 %r11,i32 %r12,i32 %r13,i32 %r14,i32 %r15,i32 %r16,i32 %r17,i32 %r18,i32 %r19,i32 %r20,i32 %r21,i32 %r22,i32 %r23,i32 %r24,i32 %r25,i32 %r26,i32 %r27,i32 %r28,i32 %r29,i32 %r30,i32 %r31,i32 0)
	push {r1,r2,r3}
	sub sp,sp,#112
	mov r9,#0
	str r9,[sp,#108]  @0
	str r1,[sp,#104]  @%r31
	ldr r9,[fp,#-104]
	str r9,[sp,#100]  @%r30
	str r5,[sp,#96]  @%r29
	str r3,[sp,#92]  @%r28
	ldr r9,[fp,#-112]
	str r9,[sp,#88]  @%r27
	ldr r9,[fp,#-32]
	str r9,[sp,#84]  @%r26
	ldr r9,[fp,#-36]
	str r9,[sp,#80]  @%r25
	ldr r9,[fp,#-44]
	str r9,[sp,#76]  @%r24
	ldr r9,[fp,#-48]
	str r9,[sp,#72]  @%r23
	ldr r9,[fp,#-72]
	str r9,[sp,#68]  @%r22
	ldr r9,[fp,#-52]
	str r9,[sp,#64]  @%r21
	ldr r9,[fp,#-56]
	str r9,[sp,#60]  @%r20
	ldr r9,[fp,#-60]
	str r9,[sp,#56]  @%r19
	ldr r9,[fp,#-96]
	str r9,[sp,#52]  @%r18
	ldr r9,[fp,#-76]
	str r9,[sp,#48]  @%r17
	ldr r9,[fp,#-80]
	str r9,[sp,#44]  @%r16
	ldr r9,[fp,#-84]
	str r9,[sp,#40]  @%r15
	str r7,[sp,#36]  @%r14
	ldr r9,[fp,#-108]
	str r9,[sp,#32]  @%r13
	ldr r9,[fp,#-28]
	str r9,[sp,#28]  @%r12
	ldr r9,[fp,#-40]
	str r9,[sp,#24]  @%r11
	ldr r9,[fp,#-68]
	str r9,[sp,#20]  @%r10
	ldr r9,[fp,#-88]
	str r9,[sp,#16]  @%r9
	ldr r9,[fp,#-92]
	str r9,[sp,#12]  @%r8
	ldr r9,[fp,#-100]
	str r9,[sp,#8]  @%r7
	str r8,[sp,#4]  @%r6
	ldr r9,[fp,#-24]
	str r9,[sp,#0]  @%r5
	mov r0,r6
	mov r1,r2
	ldr r2,[fp,#-12]
	ldr r3,[fp,#-64]
	bl param32_rec
	add sp,sp,#112
	mov r4,r0
	pop {r1,r2,r3}
	mov r0,r4
	add sp,sp,#112
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.param32_recL2:
	ldr r9,[fp,#-20]
	mov r0,r9
	add sp,sp,#112
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
param32_arr:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#112
.param32_arrL0:
	mov r9,r3
	str r9,[fp,#-112]
	ldr r9,[fp,#140]
	str r9,[fp,#-100]
	ldr r9,[fp,#136]
	str r9,[fp,#-96]
	ldr r9,[fp,#132]
	str r9,[fp,#-92]
	ldr r9,[fp,#128]
	str r9,[fp,#-88]
	ldr r9,[fp,#124]
	str r9,[fp,#-84]
	ldr r9,[fp,#120]
	str r9,[fp,#-80]
	ldr r9,[fp,#116]
	str r9,[fp,#-76]
	ldr r9,[fp,#112]
	str r9,[fp,#-72]
	ldr r9,[fp,#108]
	str r9,[fp,#-68]
	ldr r9,[fp,#104]
	str r9,[fp,#-64]
	ldr r9,[fp,#100]
	str r9,[fp,#-60]
	ldr r9,[fp,#96]
	str r9,[fp,#-56]
	ldr r9,[fp,#92]
	str r9,[fp,#-52]
	ldr r9,[fp,#88]
	str r9,[fp,#-48]
	ldr r9,[fp,#84]
	str r9,[fp,#-44]
	ldr r9,[fp,#80]
	str r9,[fp,#-40]
	ldr r9,[fp,#76]
	str r9,[fp,#-36]
	ldr r9,[fp,#72]
	str r9,[fp,#-32]
	ldr r9,[fp,#68]
	str r9,[fp,#-28]
	ldr r9,[fp,#64]
	str r9,[fp,#-24]
	ldr r9,[fp,#60]
	str r9,[fp,#-20]
	ldr r9,[fp,#56]
	str r9,[fp,#-16]
	ldr r9,[fp,#52]
	str r9,[fp,#-12]
	ldr r9,[fp,#48]
	str r9,[fp,#-104]
	ldr r9,[fp,#44]
	str r9,[fp,#-108]
	ldr r6,[fp,#40]
	ldr r7,[fp,#36]
	ldr r8,[fp,#32]
.param32_arrL1:
	mov r4,r0
	ldr r5,[r4]
	mov r4,#1
	add r3,r0,r4,lsl #2
	ldr r4,[r3]
	add r3,r5,r4
	mov r5,r1
	ldr r4,[r5]
	add r5,r3,r4
	mov r4,#1
	add r3,r1,r4,lsl #2
	ldr r4,[r3]
	add r3,r5,r4
	mov r5,r2
	ldr r4,[r5]
	add r5,r3,r4
	mov r4,#1
	add r3,r2,r4,lsl #2
	ldr r4,[r3]
	add r3,r5,r4
	ldr r9,[fp,#-112]
	mov r5,r9
	ldr r4,[r5]
	add r5,r3,r4
	mov r4,#1
	ldr r9,[fp,#-112]
	add r3,r9,r4,lsl #2
	ldr r4,[r3]
	add r3,r5,r4
	mov r5,r8
	ldr r4,[r5]
	add r5,r3,r4
	mov r4,#1
	add r3,r8,r4,lsl #2
	ldr r8,[r3]
	add r4,r5,r8
	mov r8,r7
	ldr r5,[r8]
	add r8,r4,r5
	mov r5,#1
	add r4,r7,r5,lsl #2
	ldr r7,[r4]
	add r5,r8,r7
	mov r8,r6
	ldr r7,[r8]
	add r8,r5,r7
	mov r7,#1
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	add r6,r8,r7
	ldr r9,[fp,#-108]
	mov r8,r9
	ldr r7,[r8]
	add r8,r6,r7
	mov r7,#1
	ldr r9,[fp,#-108]
	add r6,r9,r7,lsl #2
	ldr r7,[r6]
	add r6,r8,r7
	ldr r9,[fp,#-104]
	mov r8,r9
	ldr r7,[r8]
	add r8,r6,r7
	mov r7,#1
	ldr r9,[fp,#-104]
	add r6,r9,r7,lsl #2
	ldr r7,[r6]
	add r6,r8,r7
	ldr r9,[fp,#-12]
	mov r8,r9
	ldr r7,[r8]
	add r8,r6,r7
	mov r7,#1
	ldr r9,[fp,#-12]
	add r6,r9,r7,lsl #2
	ldr r7,[r6]
	add r6,r8,r7
	ldr r9,[fp,#-16]
	mov r8,r9
	ldr r7,[r8]
	add r8,r6,r7
	mov r7,#1
	ldr r9,[fp,#-16]
	add r6,r9,r7,lsl #2
	ldr r7,[r6]
	add r6,r8,r7
	ldr r9,[fp,#-20]
	mov r8,r9
	ldr r7,[r8]
	add r8,r6,r7
	mov r7,#1
	ldr r9,[fp,#-20]
	add r6,r9,r7,lsl #2
	ldr r7,[r6]
	add r6,r8,r7
	ldr r9,[fp,#-24]
	mov r8,r9
	ldr r7,[r8]
	add r8,r6,r7
	mov r7,#1
	ldr r9,[fp,#-24]
	add r6,r9,r7,lsl #2
	ldr r7,[r6]
	add r6,r8,r7
	ldr r9,[fp,#-28]
	mov r8,r9
	ldr r7,[r8]
	add r8,r6,r7
	mov r7,#1
	ldr r9,[fp,#-28]
	add r6,r9,r7,lsl #2
	ldr r7,[r6]
	add r6,r8,r7
	ldr r9,[fp,#-32]
	mov r8,r9
	ldr r7,[r8]
	add r8,r6,r7
	mov r7,#1
	ldr r9,[fp,#-32]
	add r6,r9,r7,lsl #2
	ldr r7,[r6]
	add r6,r8,r7
	ldr r9,[fp,#-36]
	mov r8,r9
	ldr r7,[r8]
	add r8,r6,r7
	mov r7,#1
	ldr r9,[fp,#-36]
	add r6,r9,r7,lsl #2
	ldr r7,[r6]
	add r6,r8,r7
	ldr r9,[fp,#-40]
	mov r8,r9
	ldr r7,[r8]
	add r8,r6,r7
	mov r7,#1
	ldr r9,[fp,#-40]
	add r6,r9,r7,lsl #2
	ldr r7,[r6]
	add r6,r8,r7
	ldr r9,[fp,#-44]
	mov r8,r9
	ldr r7,[r8]
	add r8,r6,r7
	mov r7,#1
	ldr r9,[fp,#-44]
	add r6,r9,r7,lsl #2
	ldr r7,[r6]
	add r6,r8,r7
	ldr r9,[fp,#-48]
	mov r8,r9
	ldr r7,[r8]
	add r8,r6,r7
	mov r7,#1
	ldr r9,[fp,#-48]
	add r6,r9,r7,lsl #2
	ldr r7,[r6]
	add r6,r8,r7
	ldr r9,[fp,#-52]
	mov r8,r9
	ldr r7,[r8]
	add r8,r6,r7
	mov r7,#1
	ldr r9,[fp,#-52]
	add r6,r9,r7,lsl #2
	ldr r7,[r6]
	add r6,r8,r7
	ldr r9,[fp,#-56]
	mov r8,r9
	ldr r7,[r8]
	add r8,r6,r7
	mov r7,#1
	ldr r9,[fp,#-56]
	add r6,r9,r7,lsl #2
	ldr r7,[r6]
	add r6,r8,r7
	ldr r9,[fp,#-60]
	mov r8,r9
	ldr r7,[r8]
	add r8,r6,r7
	mov r7,#1
	ldr r9,[fp,#-60]
	add r6,r9,r7,lsl #2
	ldr r7,[r6]
	add r6,r8,r7
	ldr r9,[fp,#-64]
	mov r8,r9
	ldr r7,[r8]
	add r8,r6,r7
	mov r7,#1
	ldr r9,[fp,#-64]
	add r6,r9,r7,lsl #2
	ldr r7,[r6]
	add r6,r8,r7
	ldr r9,[fp,#-68]
	mov r8,r9
	ldr r7,[r8]
	add r8,r6,r7
	mov r7,#1
	ldr r9,[fp,#-68]
	add r6,r9,r7,lsl #2
	ldr r7,[r6]
	add r6,r8,r7
	ldr r9,[fp,#-72]
	mov r8,r9
	ldr r7,[r8]
	add r8,r6,r7
	mov r7,#1
	ldr r9,[fp,#-72]
	add r6,r9,r7,lsl #2
	ldr r7,[r6]
	add r6,r8,r7
	ldr r9,[fp,#-76]
	mov r8,r9
	ldr r7,[r8]
	add r8,r6,r7
	mov r7,#1
	ldr r9,[fp,#-76]
	add r6,r9,r7,lsl #2
	ldr r7,[r6]
	add r6,r8,r7
	ldr r9,[fp,#-80]
	mov r8,r9
	ldr r7,[r8]
	add r8,r6,r7
	mov r7,#1
	ldr r9,[fp,#-80]
	add r6,r9,r7,lsl #2
	ldr r7,[r6]
	add r6,r8,r7
	ldr r9,[fp,#-84]
	mov r8,r9
	ldr r7,[r8]
	add r8,r6,r7
	mov r7,#1
	ldr r9,[fp,#-84]
	add r6,r9,r7,lsl #2
	ldr r7,[r6]
	add r6,r8,r7
	ldr r9,[fp,#-88]
	mov r8,r9
	ldr r7,[r8]
	add r8,r6,r7
	mov r7,#1
	ldr r9,[fp,#-88]
	add r6,r9,r7,lsl #2
	ldr r7,[r6]
	add r6,r8,r7
	ldr r9,[fp,#-92]
	mov r8,r9
	ldr r7,[r8]
	add r8,r6,r7
	mov r7,#1
	ldr r9,[fp,#-92]
	add r6,r9,r7,lsl #2
	ldr r7,[r6]
	add r6,r8,r7
	ldr r9,[fp,#-96]
	mov r8,r9
	ldr r7,[r8]
	add r8,r6,r7
	mov r7,#1
	ldr r9,[fp,#-96]
	add r6,r9,r7,lsl #2
	ldr r7,[r6]
	add r6,r8,r7
	ldr r9,[fp,#-100]
	mov r8,r9
	ldr r7,[r8]
	add r8,r6,r7
	mov r7,#1
	ldr r9,[fp,#-100]
	add r6,r9,r7,lsl #2
	ldr r7,[r6]
	add r6,r8,r7
	mov r0,r6
	add sp,sp,#112
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
main:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	mov r9,#372
	sub sp,sp,r9
.mainL0:
.mainL1:
	movw r8,#65272
	movt r8,#65535  @ -264
	add r7,fp,r8
	@call void @memset(i32 %r132,i32 0,i32 256)
	mov r0,r7
	mov r1,#0
	mov r2,#256
	bl memset
	@%r1 = call i32 @getint()
	bl getint
	str r0,[fp,#-268]
	@%r2 = call i32 @getint()
	bl getint
	str r0,[fp,#-272]
	@%r3 = call i32 @getint()
	bl getint
	str r0,[fp,#-276]
	@%r4 = call i32 @getint()
	bl getint
	str r0,[fp,#-280]
	@%r5 = call i32 @getint()
	bl getint
	str r0,[fp,#-284]
	@%r6 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	push {r3}
	bl getint
	str r0,[fp,#-288]
	pop {r3}
	add sp,sp,#4 @stack align 8bytes
	@%r7 = call i32 @getint()
	push {r2,r3}
	bl getint
	str r0,[fp,#-292]
	pop {r2,r3}
	@%r8 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r2,r3}
	bl getint
	str r0,[fp,#-296]
	pop {r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	@%r9 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r2,r3}
	bl getint
	pop {r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	@%r10 = call i32 @getint()
	push {r0,r1,r2,r3}
	bl getint
	mov r8,r0
	pop {r0,r1,r2,r3}
	@%r11 = call i32 @getint()
	push {r0,r1,r2,r3}
	bl getint
	mov r7,r0
	pop {r0,r1,r2,r3}
	@%r12 = call i32 @getint()
	push {r0,r1,r2,r3}
	bl getint
	mov r6,r0
	pop {r0,r1,r2,r3}
	@%r13 = call i32 @getint()
	push {r0,r1,r2,r3}
	bl getint
	mov r5,r0
	pop {r0,r1,r2,r3}
	@%r14 = call i32 @getint()
	push {r0,r1,r2,r3}
	bl getint
	mov r4,r0
	pop {r0,r1,r2,r3}
	@%r15 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2}
	bl getint
	mov r3,r0
	pop {r0,r1,r2}
	add sp,sp,#4 @stack align 8bytes
	@%r16 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r3}
	bl getint
	mov r2,r0
	pop {r0,r1,r3}
	add sp,sp,#4 @stack align 8bytes
	@%r17 = call i32 @param16(i32 %r1,i32 %r2,i32 %r3,i32 %r4,i32 %r5,i32 %r6,i32 %r7,i32 %r8,i32 %r9,i32 %r10,i32 %r11,i32 %r12,i32 %r13,i32 %r14,i32 %r15,i32 %r16)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r2,r3}
	sub sp,sp,#48
	str r2,[sp,#44]  @%r16
	str r3,[sp,#40]  @%r15
	str r4,[sp,#36]  @%r14
	str r5,[sp,#32]  @%r13
	str r6,[sp,#28]  @%r12
	str r7,[sp,#24]  @%r11
	str r8,[sp,#20]  @%r10
	str r0,[sp,#16]  @%r9
	ldr r9,[fp,#-296]
	str r9,[sp,#12]  @%r8
	ldr r9,[fp,#-292]
	str r9,[sp,#8]  @%r7
	ldr r9,[fp,#-288]
	str r9,[sp,#4]  @%r6
	ldr r9,[fp,#-284]
	str r9,[sp,#0]  @%r5
	ldr r0,[fp,#-268]
	ldr r1,[fp,#-272]
	ldr r2,[fp,#-276]
	ldr r3,[fp,#-280]
	bl param16
	add sp,sp,#48
	mov r1,r0
	pop {r0,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	movw r8,#65272
	movt r8,#65535  @ -264
	add r7,fp,r8
	str r1,[r7]
	mov r8,#1
	movw r7,#65272
	movt r7,#65535  @ -264
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	movw r8,#8848
	movt r8,#0  @ 8848
	str r8,[r7]
.mainL6:
	mov r8,#1
.mainL3:
	sub r7,r8,#1
	lsl r6,r7,#1
	mov r7,r6
	movw r6,#65272
	movt r6,#65535  @ -264
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	mov r7,#1
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	sub r5,r7,#1
	lsl r7,r8,#1
	mov r4,r7
	movw r7,#65272
	movt r7,#65535  @ -264
	add r3,fp,r7
	add r7,r3,r4,lsl #2
	mov r4,r7
	str r5,[r4]
	mov r5,r6
	ldr r6,[r5]
	sub r5,r6,#2
	mov r6,#1
	add r4,r7,r6,lsl #2
	str r5,[r4]
	add r7,r8,#1
.mainL4:
	cmp r7,#32
	blt .mainL7
.mainL5:
	movw r6,#65272
	movt r6,#65535  @ -264
	add r9,fp,r6
	str r9,[fp,#-268]
	mov r6,#2
	movw r4,#65272
	movt r4,#65535  @ -264
	add r3,fp,r4
	add r9,r3,r6,lsl #2
	str r9,[fp,#-276]
	mov r6,#4
	movw r3,#65272
	movt r3,#65535  @ -264
	add r2,fp,r3
	add r9,r2,r6,lsl #2
	str r9,[fp,#-292]
	mov r6,#6
	movw r2,#65272
	movt r2,#65535  @ -264
	add r1,fp,r2
	add r9,r1,r6,lsl #2
	str r9,[fp,#-296]
	mov r6,#8
	movw r1,#65272
	movt r1,#65535  @ -264
	add r0,fp,r1
	add r9,r0,r6,lsl #2
	str r9,[fp,#-288]
	mov r6,#10
	movw r0,#65272
	movt r0,#65535  @ -264
	add r5,fp,r0
	add r9,r5,r6,lsl #2
	str r9,[fp,#-272]
	mov r6,#12
	movw r5,#65272
	movt r5,#65535  @ -264
	add r4,fp,r5
	add r9,r4,r6,lsl #2
	str r9,[fp,#-284]
	mov r6,#14
	movw r4,#65272
	movt r4,#65535  @ -264
	add r3,fp,r4
	add r9,r3,r6,lsl #2
	str r9,[fp,#-280]
	mov r6,#16
	movw r3,#65272
	movt r3,#65535  @ -264
	add r2,fp,r3
	add r9,r2,r6,lsl #2
	str r9,[fp,#-300]
	mov r6,#18
	movw r2,#65272
	movt r2,#65535  @ -264
	add r1,fp,r2
	add r9,r1,r6,lsl #2
	str r9,[fp,#-304]
	mov r6,#20
	movw r1,#65272
	movt r1,#65535  @ -264
	add r0,fp,r1
	add r9,r0,r6,lsl #2
	str r9,[fp,#-308]
	mov r6,#22
	movw r0,#65272
	movt r0,#65535  @ -264
	add r5,fp,r0
	add r9,r5,r6,lsl #2
	str r9,[fp,#-312]
	mov r6,#24
	movw r5,#65272
	movt r5,#65535  @ -264
	add r4,fp,r5
	add r9,r4,r6,lsl #2
	str r9,[fp,#-316]
	mov r6,#26
	movw r4,#65272
	movt r4,#65535  @ -264
	add r3,fp,r4
	add r9,r3,r6,lsl #2
	str r9,[fp,#-320]
	mov r6,#28
	movw r3,#65272
	movt r3,#65535  @ -264
	add r2,fp,r3
	add r9,r2,r6,lsl #2
	str r9,[fp,#-324]
	mov r6,#30
	movw r2,#65272
	movt r2,#65535  @ -264
	add r1,fp,r2
	add r9,r1,r6,lsl #2
	str r9,[fp,#-328]
	mov r6,#32
	movw r1,#65272
	movt r1,#65535  @ -264
	add r0,fp,r1
	add r9,r0,r6,lsl #2
	str r9,[fp,#-332]
	mov r6,#34
	movw r0,#65272
	movt r0,#65535  @ -264
	add r5,fp,r0
	add r9,r5,r6,lsl #2
	str r9,[fp,#-336]
	mov r6,#36
	movw r5,#65272
	movt r5,#65535  @ -264
	add r4,fp,r5
	add r9,r4,r6,lsl #2
	str r9,[fp,#-340]
	mov r6,#38
	movw r4,#65272
	movt r4,#65535  @ -264
	add r3,fp,r4
	add r9,r3,r6,lsl #2
	str r9,[fp,#-344]
	mov r6,#40
	movw r3,#65272
	movt r3,#65535  @ -264
	add r2,fp,r3
	add r9,r2,r6,lsl #2
	str r9,[fp,#-348]
	mov r6,#42
	movw r2,#65272
	movt r2,#65535  @ -264
	add r1,fp,r2
	add r9,r1,r6,lsl #2
	str r9,[fp,#-352]
	mov r6,#44
	movw r1,#65272
	movt r1,#65535  @ -264
	add r0,fp,r1
	add r9,r0,r6,lsl #2
	str r9,[fp,#-356]
	mov r6,#46
	movw r0,#65272
	movt r0,#65535  @ -264
	add r5,fp,r0
	add r9,r5,r6,lsl #2
	str r9,[fp,#-360]
	mov r6,#48
	movw r5,#65272
	movt r5,#65535  @ -264
	add r4,fp,r5
	add r9,r4,r6,lsl #2
	str r9,[fp,#-364]
	mov r6,#50
	movw r4,#65272
	movt r4,#65535  @ -264
	add r3,fp,r4
	add r9,r3,r6,lsl #2
	str r9,[fp,#-368]
	mov r6,#52
	movw r3,#65272
	movt r3,#65535  @ -264
	add r2,fp,r3
	add r9,r2,r6,lsl #2
	str r9,[fp,#-372]
	mov r6,#54
	movw r2,#65272
	movt r2,#65535  @ -264
	add r1,fp,r2
	add r2,r1,r6,lsl #2
	mov r6,#56
	movw r1,#65272
	movt r1,#65535  @ -264
	add r0,fp,r1
	add r1,r0,r6,lsl #2
	mov r6,#58
	movw r0,#65272
	movt r0,#65535  @ -264
	add r5,fp,r0
	add r0,r5,r6,lsl #2
	mov r6,#60
	movw r5,#65272
	movt r5,#65535  @ -264
	add r4,fp,r5
	add r5,r4,r6,lsl #2
	mov r6,#62
	movw r4,#65272
	movt r4,#65535  @ -264
	add r3,fp,r4
	add r4,r3,r6,lsl #2
	@%r122 = call i32 @param32_arr(ptr %r59,ptr %r61,ptr %r63,ptr %r65,ptr %r67,ptr %r69,ptr %r71,ptr %r73,ptr %r75,ptr %r77,ptr %r79,ptr %r81,ptr %r83,ptr %r85,ptr %r87,ptr %r89,ptr %r91,ptr %r93,ptr %r95,ptr %r97,ptr %r99,ptr %r101,ptr %r103,ptr %r105,ptr %r107,ptr %r109,ptr %r111,ptr %r113,ptr %r115,ptr %r117,ptr %r119,ptr %r121)
	push {r0,r1,r2,r3}
	sub sp,sp,#112
	str r4,[sp,#108]  @%r121
	str r5,[sp,#104]  @%r119
	str r0,[sp,#100]  @%r117
	str r1,[sp,#96]  @%r115
	str r2,[sp,#92]  @%r113
	ldr r9,[fp,#-372]
	str r9,[sp,#88]  @%r111
	ldr r9,[fp,#-368]
	str r9,[sp,#84]  @%r109
	ldr r9,[fp,#-364]
	str r9,[sp,#80]  @%r107
	ldr r9,[fp,#-360]
	str r9,[sp,#76]  @%r105
	ldr r9,[fp,#-356]
	str r9,[sp,#72]  @%r103
	ldr r9,[fp,#-352]
	str r9,[sp,#68]  @%r101
	ldr r9,[fp,#-348]
	str r9,[sp,#64]  @%r99
	ldr r9,[fp,#-344]
	str r9,[sp,#60]  @%r97
	ldr r9,[fp,#-340]
	str r9,[sp,#56]  @%r95
	ldr r9,[fp,#-336]
	str r9,[sp,#52]  @%r93
	ldr r9,[fp,#-332]
	str r9,[sp,#48]  @%r91
	ldr r9,[fp,#-328]
	str r9,[sp,#44]  @%r89
	ldr r9,[fp,#-324]
	str r9,[sp,#40]  @%r87
	ldr r9,[fp,#-320]
	str r9,[sp,#36]  @%r85
	ldr r9,[fp,#-316]
	str r9,[sp,#32]  @%r83
	ldr r9,[fp,#-312]
	str r9,[sp,#28]  @%r81
	ldr r9,[fp,#-308]
	str r9,[sp,#24]  @%r79
	ldr r9,[fp,#-304]
	str r9,[sp,#20]  @%r77
	ldr r9,[fp,#-300]
	str r9,[sp,#16]  @%r75
	ldr r9,[fp,#-280]
	str r9,[sp,#12]  @%r73
	ldr r9,[fp,#-284]
	str r9,[sp,#8]  @%r71
	ldr r9,[fp,#-272]
	str r9,[sp,#4]  @%r69
	ldr r9,[fp,#-288]
	str r9,[sp,#0]  @%r67
	ldr r0,[fp,#-268]
	ldr r1,[fp,#-276]
	ldr r2,[fp,#-292]
	ldr r3,[fp,#-296]
	bl param32_arr
	add sp,sp,#112
	mov r6,r0
	pop {r0,r1,r2,r3}
	@call void @putint(i32 %r122)
	mov r0,r6
	bl putint
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
	mov r0,#0
	mov r9,#372
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.mainL7:
	mov r8,r7
	bl .mainL3
param16:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	mov r9,#204
	sub sp,sp,r9
.param16L0:
	mov r9,r3
	str r9,[fp,#-88]
	mov r9,r2
	str r9,[fp,#-84]
	mov r9,r1
	str r9,[fp,#-80]
	mov r9,r0
	str r9,[fp,#-76]
	ldr r9,[fp,#76]
	str r9,[fp,#-100]
	ldr r9,[fp,#72]
	str r9,[fp,#-120]
	ldr r9,[fp,#68]
	str r9,[fp,#-104]
	ldr r9,[fp,#64]
	str r9,[fp,#-108]
	ldr r9,[fp,#60]
	str r9,[fp,#-136]
	ldr r9,[fp,#56]
	str r9,[fp,#-112]
	ldr r9,[fp,#52]
	str r9,[fp,#-116]
	ldr r9,[fp,#48]
	str r9,[fp,#-92]
	ldr r9,[fp,#44]
	str r9,[fp,#-96]
	ldr r9,[fp,#40]
	str r9,[fp,#-124]
	ldr r9,[fp,#36]
	str r9,[fp,#-132]
	ldr r9,[fp,#32]
	str r9,[fp,#-128]
.param16L1:
	mvn r6,#71
	add r4,fp,r6
	@call void @memset(i32 %r132,i32 0,i32 64)
	push {r0,r1,r2,r3}
	mov r0,r4
	mov r1,#0
	mov r2,#64
	bl memset
	pop {r0,r1,r2,r3}
	mvn r6,#71
	add r9,fp,r6
	str r9,[fp,#-140]
	ldr r9,[fp,#-76]
	ldr r10,[fp,#-140]
	str r9,[r10]
	mov r6,#1
	mvn r2,#71
	add r3,fp,r2
	add r9,r3,r6,lsl #2
	str r9,[fp,#-144]
	ldr r9,[fp,#-80]
	ldr r10,[fp,#-144]
	str r9,[r10]
	mov r6,#2
	mvn r3,#71
	add r7,fp,r3
	add r9,r7,r6,lsl #2
	str r9,[fp,#-148]
	ldr r9,[fp,#-84]
	ldr r10,[fp,#-148]
	str r9,[r10]
	mov r7,#3
	mvn r6,#71
	add r8,fp,r6
	add r9,r8,r7,lsl #2
	str r9,[fp,#-152]
	ldr r9,[fp,#-88]
	ldr r10,[fp,#-152]
	str r9,[r10]
	mov r8,#4
	mvn r7,#71
	add r1,fp,r7
	add r9,r1,r8,lsl #2
	str r9,[fp,#-156]
	ldr r9,[fp,#-128]
	ldr r10,[fp,#-156]
	str r9,[r10]
	mov r8,#5
	mvn r1,#71
	add r5,fp,r1
	add r9,r5,r8,lsl #2
	str r9,[fp,#-160]
	ldr r9,[fp,#-132]
	ldr r10,[fp,#-160]
	str r9,[r10]
	mov r8,#6
	mvn r5,#71
	add r0,fp,r5
	add r9,r0,r8,lsl #2
	str r9,[fp,#-164]
	ldr r9,[fp,#-124]
	ldr r10,[fp,#-164]
	str r9,[r10]
	mov r8,#7
	mvn r0,#71
	add r4,fp,r0
	add r9,r4,r8,lsl #2
	str r9,[fp,#-168]
	ldr r9,[fp,#-96]
	ldr r10,[fp,#-168]
	str r9,[r10]
	mov r8,#8
	mvn r4,#71
	add r2,fp,r4
	add r9,r2,r8,lsl #2
	str r9,[fp,#-172]
	ldr r9,[fp,#-92]
	ldr r10,[fp,#-172]
	str r9,[r10]
	mov r8,#9
	mvn r2,#71
	add r3,fp,r2
	add r9,r3,r8,lsl #2
	str r9,[fp,#-176]
	ldr r9,[fp,#-116]
	ldr r10,[fp,#-176]
	str r9,[r10]
	mov r8,#10
	mvn r3,#71
	add r6,fp,r3
	add r9,r6,r8,lsl #2
	str r9,[fp,#-180]
	ldr r9,[fp,#-112]
	ldr r10,[fp,#-180]
	str r9,[r10]
	mov r8,#11
	mvn r6,#71
	add r7,fp,r6
	add r9,r7,r8,lsl #2
	str r9,[fp,#-184]
	ldr r9,[fp,#-136]
	ldr r10,[fp,#-184]
	str r9,[r10]
	mov r8,#12
	mvn r7,#71
	add r1,fp,r7
	add r9,r1,r8,lsl #2
	str r9,[fp,#-188]
	ldr r9,[fp,#-108]
	ldr r10,[fp,#-188]
	str r9,[r10]
	mov r8,#13
	mvn r1,#71
	add r5,fp,r1
	add r9,r5,r8,lsl #2
	str r9,[fp,#-192]
	ldr r9,[fp,#-104]
	ldr r10,[fp,#-192]
	str r9,[r10]
	mov r8,#14
	mvn r5,#71
	add r0,fp,r5
	add r9,r0,r8,lsl #2
	str r9,[fp,#-200]
	ldr r9,[fp,#-120]
	ldr r10,[fp,#-200]
	str r9,[r10]
	mov r8,#15
	mvn r0,#71
	add r4,fp,r0
	add r9,r4,r8,lsl #2
	str r9,[fp,#-204]
	ldr r9,[fp,#-100]
	ldr r10,[fp,#-204]
	str r9,[r10]
	mvn r8,#71
	add r4,fp,r8
	@call void @sort(ptr %r65,i32 16)
	push {r0,r1,r2,r3}
	mov r0,r4
	mov r1,#16
	bl sort
	pop {r0,r1,r2,r3}
	ldr r9,[fp,#-140]
	ldr r10,[r9]
	str r10,[fp,#-196]
	ldr r9,[fp,#-144]
	ldr r10,[r9]
	str r10,[fp,#-140]
	ldr r9,[fp,#-148]
	ldr r10,[r9]
	str r10,[fp,#-144]
	ldr r9,[fp,#-152]
	ldr r10,[r9]
	str r10,[fp,#-148]
	ldr r9,[fp,#-156]
	ldr r10,[r9]
	str r10,[fp,#-152]
	ldr r9,[fp,#-160]
	ldr r10,[r9]
	str r10,[fp,#-156]
	ldr r9,[fp,#-164]
	ldr r10,[r9]
	str r10,[fp,#-160]
	ldr r9,[fp,#-168]
	ldr r10,[r9]
	str r10,[fp,#-164]
	ldr r9,[fp,#-172]
	ldr r5,[r9]
	ldr r9,[fp,#-176]
	ldr r4,[r9]
	ldr r9,[fp,#-180]
	ldr r2,[r9]
	ldr r9,[fp,#-184]
	ldr r0,[r9]
	ldr r9,[fp,#-188]
	ldr r3,[r9]
	ldr r9,[fp,#-192]
	ldr r6,[r9]
	ldr r9,[fp,#-200]
	ldr r7,[r9]
	ldr r9,[fp,#-204]
	ldr r1,[r9]
	@%r131 = call i32 @param32_rec(i32 %r69,i32 %r72,i32 %r75,i32 %r78,i32 %r81,i32 %r84,i32 %r87,i32 %r90,i32 %r93,i32 %r96,i32 %r99,i32 %r102,i32 %r105,i32 %r108,i32 %r111,i32 %r114,i32 %r0,i32 %r1,i32 %r2,i32 %r3,i32 %r4,i32 %r5,i32 %r6,i32 %r7,i32 %r8,i32 %r9,i32 %r10,i32 %r11,i32 %r12,i32 %r13,i32 %r14,i32 %r15)
	push {r0,r1,r2,r3}
	sub sp,sp,#112
	ldr r9,[fp,#-100]
	str r9,[sp,#108]  @%r15
	ldr r9,[fp,#-120]
	str r9,[sp,#104]  @%r14
	ldr r9,[fp,#-104]
	str r9,[sp,#100]  @%r13
	ldr r9,[fp,#-108]
	str r9,[sp,#96]  @%r12
	ldr r9,[fp,#-136]
	str r9,[sp,#92]  @%r11
	ldr r9,[fp,#-112]
	str r9,[sp,#88]  @%r10
	ldr r9,[fp,#-116]
	str r9,[sp,#84]  @%r9
	ldr r9,[fp,#-92]
	str r9,[sp,#80]  @%r8
	ldr r9,[fp,#-96]
	str r9,[sp,#76]  @%r7
	ldr r9,[fp,#-124]
	str r9,[sp,#72]  @%r6
	ldr r9,[fp,#-132]
	str r9,[sp,#68]  @%r5
	ldr r9,[fp,#-128]
	str r9,[sp,#64]  @%r4
	ldr r9,[fp,#-88]
	str r9,[sp,#60]  @%r3
	ldr r9,[fp,#-84]
	str r9,[sp,#56]  @%r2
	ldr r9,[fp,#-80]
	str r9,[sp,#52]  @%r1
	ldr r9,[fp,#-76]
	str r9,[sp,#48]  @%r0
	str r1,[sp,#44]  @%r114
	str r7,[sp,#40]  @%r111
	str r6,[sp,#36]  @%r108
	str r3,[sp,#32]  @%r105
	str r0,[sp,#28]  @%r102
	str r2,[sp,#24]  @%r99
	str r4,[sp,#20]  @%r96
	str r5,[sp,#16]  @%r93
	ldr r9,[fp,#-164]
	str r9,[sp,#12]  @%r90
	ldr r9,[fp,#-160]
	str r9,[sp,#8]  @%r87
	ldr r9,[fp,#-156]
	str r9,[sp,#4]  @%r84
	ldr r9,[fp,#-152]
	str r9,[sp,#0]  @%r81
	ldr r0,[fp,#-196]
	ldr r1,[fp,#-140]
	ldr r2,[fp,#-144]
	ldr r3,[fp,#-148]
	bl param32_rec
	add sp,sp,#112
	mov r8,r0
	pop {r0,r1,r2,r3}
	mov r0,r8
	mov r9,#204
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
sort:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#12
.sortL0:
.sortL1:
	sub r8,r1,#1
	cmp r8,#0
	bgt .sortL12
.sortL5:
	add sp,sp,#12
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.sortL12:
	sub r9,r1,#1
	str r9,[fp,#-12]
	mov r7,#0
.sortL3:
	add r6,r7,#1
	cmp r6,r1
	blt .sortL13
.sortL9:
	add r5,r7,#1
.sortL4:
	ldr r9,[fp,#-12]
	cmp r5,r9
	bge .sortL5
.sortL14:
	mov r7,r5
	bl .sortL3
.sortL13:
	mov r5,r7
	add r4,r0,r5,lsl #2
	mov r5,r6
.sortL7:
	ldr r6,[r4]
	mov r3,r5
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	cmp r6,r3
	blt .sortL10
.sortL11:
	add r6,r5,#1
.sortL8:
	cmp r6,r1
	bge .sortL9
.sortL15:
	mov r5,r6
	bl .sortL7
.sortL10:
	mov r6,r7
	add r3,r0,r6,lsl #2
	ldr r6,[r3]
	mov r2,r5
	add r8,r0,r2,lsl #2
	ldr r2,[r8]
	str r2,[r3]
	str r6,[r8]
	bl .sortL11
	.section	.note.GNU-stack,"",%progbits
