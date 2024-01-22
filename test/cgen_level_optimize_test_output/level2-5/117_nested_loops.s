.arch armv7-a
.fpu vfpv3-d16
.arm
.data
arr1:
	.space  57600
arr2:
	.space  107520
.text
.global main
.LPIC0:
	.word  arr1
.LPIC1:
	.word  arr2
loop1:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#84
.loop1L0:
	mov r9,r0
	str r9,[fp,#-32]
	mov r9,r1
	str r9,[fp,#-28]
.loop1L1:
	ldr r9,[fp,#-32]
	cmp r9,#0
	bgt .loop1L6
.loop1L5:
	add sp,sp,#84
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.loop1L6:
	ldr r9,[fp,#-28]
	cmp r9,#0
	ble .loop1L5
.loop1L40:
	mov r9,#0
	str r9,[fp,#-20]
.loop1L3:
.loop1L34:
	mov r7,#1440
	ldr r9,[fp,#-20]
	mul r7,r9,r7
	mov r6,r7
	ldr r7,.LPIC0
	add r9,r7,r6,lsl #2
	str r9,[fp,#-12]
	mov r9,#0
	str r9,[fp,#-44]
.loop1L9:
.loop1L35:
	ldr r9,[fp,#-20]
	ldr r10,[fp,#-44]
	add r10,r9,r10
	str r10,[fp,#-16]
	mov r4,#720
	ldr r9,[fp,#-44]
	mul r4,r9,r4
	mov r3,r4
	ldr r9,[fp,#-12]
	add r10,r9,r3,lsl #2
	str r10,[fp,#-24]
	mov r9,#0
	str r9,[fp,#-60]
.loop1L13:
.loop1L36:
	ldr r9,[fp,#-16]
	ldr r10,[fp,#-60]
	add r10,r9,r10
	str r10,[fp,#-36]
	mov r5,#240
	ldr r9,[fp,#-60]
	mul r5,r9,r5
	mov r6,r5
	ldr r9,[fp,#-24]
	add r10,r9,r6,lsl #2
	str r10,[fp,#-40]
	mov r9,#0
	str r9,[fp,#-76]
.loop1L17:
.loop1L37:
	ldr r9,[fp,#-36]
	ldr r10,[fp,#-76]
	add r10,r9,r10
	str r10,[fp,#-48]
	mov r4,#60
	ldr r9,[fp,#-76]
	mul r4,r9,r4
	mov r1,r4
	ldr r9,[fp,#-40]
	add r10,r9,r1,lsl #2
	str r10,[fp,#-52]
	mov r9,#0
	str r9,[fp,#-80]
.loop1L21:
.loop1L38:
	ldr r9,[fp,#-48]
	ldr r10,[fp,#-80]
	add r10,r9,r10
	str r10,[fp,#-56]
	mov r2,#12
	ldr r9,[fp,#-80]
	mul r2,r9,r2
	mov r5,r2
	ldr r9,[fp,#-52]
	add r10,r9,r5,lsl #2
	str r10,[fp,#-64]
	mov r5,#0
.loop1L25:
.loop1L39:
	ldr r9,[fp,#-56]
	add r10,r9,r5
	str r10,[fp,#-68]
	lsl r8,r5,#1
	mov r4,r8
	ldr r9,[fp,#-64]
	add r10,r9,r4,lsl #2
	str r10,[fp,#-72]
	mov r4,#0
.loop1L29:
	ldr r9,[fp,#-68]
	add r0,r9,r4
	ldr r9,[fp,#-32]
	add r3,r0,r9
	ldr r9,[fp,#-28]
	add r0,r3,r9
	mov r3,r4
	ldr r9,[fp,#-72]
	add r2,r9,r3,lsl #2
	str r0,[r2]
	add r9,r4,#1
	str r9,[fp,#-84]
.loop1L30:
	ldr r9,[fp,#-84]
	cmp r9,#2
	blt .loop1L47
.loop1L31:
	add r2,r5,#1
.loop1L26:
	cmp r2,#6
	blt .loop1L46
.loop1L27:
	ldr r9,[fp,#-80]
	add r0,r9,#1
.loop1L22:
	cmp r0,#5
	blt .loop1L45
.loop1L23:
	ldr r9,[fp,#-76]
	add r7,r9,#1
.loop1L18:
	cmp r7,#4
	blt .loop1L44
.loop1L19:
	ldr r9,[fp,#-60]
	add r8,r9,#1
.loop1L14:
	cmp r8,#3
	blt .loop1L43
.loop1L15:
	ldr r9,[fp,#-44]
	add r6,r9,#1
.loop1L10:
	cmp r6,#2
	blt .loop1L42
.loop1L11:
	ldr r9,[fp,#-20]
	add r1,r9,#1
.loop1L4:
	ldr r9,[fp,#-32]
	cmp r1,r9
	bge .loop1L5
.loop1L32:
	ldr r9,[fp,#-28]
	cmp r1,r9
	bge .loop1L5
.loop1L41:
	mov r9,r1
	str r9,[fp,#-20]
	bl .loop1L3
.loop1L42:
	mov r9,r6
	str r9,[fp,#-44]
	bl .loop1L9
.loop1L43:
	mov r9,r8
	str r9,[fp,#-60]
	bl .loop1L13
.loop1L44:
	mov r9,r7
	str r9,[fp,#-76]
	bl .loop1L17
.loop1L45:
	mov r9,r0
	str r9,[fp,#-80]
	bl .loop1L21
.loop1L46:
	mov r5,r2
	bl .loop1L25
.loop1L47:
	ldr r9,[fp,#-84]
	mov r4,r9
	bl .loop1L29
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
	@%r5 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	@%r7 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	@%r9 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r4,r0
	add sp,sp,#4 @stack align 8bytes
	@%r11 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r3,r0
	add sp,sp,#4 @stack align 8bytes
	@%r13 = call i32 @getint()
	push {r3}
	bl getint
	mov r2,r0
	pop {r3}
	@%r15 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	push {r2,r3}
	bl getint
	mov r1,r0
	pop {r2,r3}
	add sp,sp,#4 @stack align 8bytes
	@%r17 = call i32 @getint()
	push {r1,r2,r3}
	bl getint
	pop {r1,r2,r3}
	@call void @loop1(i32 %r1,i32 %r3)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r0,r8
	mov r1,r7
	bl loop1
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	@call void @loop2()
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	bl loop2
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	@%r27 = call i32 @loop3(i32 %r5,i32 %r7,i32 %r9,i32 %r11,i32 %r13,i32 %r15,i32 %r17)
	push {r0,r1,r2,r3}
	sub sp,sp,#12
	str r0,[sp,#8]  @%r17
	str r1,[sp,#4]  @%r15
	str r2,[sp,#0]  @%r13
	mov r0,r6
	mov r1,r5
	mov r2,r4
	bl loop3
	add sp,sp,#12
	mov r8,r0
	pop {r0,r1,r2,r3}
	mov r0,r8
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
loop3:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	mov r9,#164
	sub sp,sp,r9
.loop3L0:
	mov r9,r3
	str r9,[fp,#-36]
	mov r9,r2
	str r9,[fp,#-20]
	mov r9,r1
	str r9,[fp,#-16]
	mov r9,r0
	str r9,[fp,#-12]
	ldr r9,[fp,#40]
	str r9,[fp,#-60]
	ldr r9,[fp,#36]
	str r9,[fp,#-52]
	ldr r9,[fp,#32]
	str r9,[fp,#-44]
.loop3L1:
.loop3L51:
	mov r9,#0
	str r9,[fp,#-24]
	mov r9,#0
	str r9,[fp,#-40]
.loop3L3:
.loop3L52:
	mov r0,#1440
	ldr r9,[fp,#-40]
	mul r0,r9,r0
	mov r1,r0
	ldr r0,.LPIC0
	add r9,r0,r1,lsl #2
	str r9,[fp,#-28]
	mov r1,#2688
	ldr r9,[fp,#-40]
	mul r1,r9,r1
	mov r0,r1
	ldr r1,.LPIC1
	add r9,r1,r0,lsl #2
	str r9,[fp,#-32]
	ldr r9,[fp,#-24]
	mov r10,r9
	str r10,[fp,#-64]
	mov r9,#0
	str r9,[fp,#-76]
.loop3L7:
.loop3L53:
	mov r2,#720
	ldr r9,[fp,#-76]
	mul r2,r9,r2
	mov r5,r2
	ldr r9,[fp,#-28]
	add r10,r9,r5,lsl #2
	str r10,[fp,#-48]
	mov r5,#1344
	ldr r9,[fp,#-76]
	mul r5,r9,r5
	mov r3,r5
	ldr r9,[fp,#-32]
	add r10,r9,r3,lsl #2
	str r10,[fp,#-56]
	ldr r9,[fp,#-64]
	mov r10,r9
	str r10,[fp,#-80]
	mov r9,#0
	str r9,[fp,#-104]
.loop3L11:
.loop3L54:
	mov r6,#240
	ldr r9,[fp,#-104]
	mul r6,r9,r6
	mov r2,r6
	ldr r9,[fp,#-48]
	add r10,r9,r2,lsl #2
	str r10,[fp,#-68]
	mov r2,#448
	ldr r9,[fp,#-104]
	mul r2,r9,r2
	mov r7,r2
	ldr r9,[fp,#-56]
	add r10,r9,r7,lsl #2
	str r10,[fp,#-72]
	ldr r9,[fp,#-80]
	mov r10,r9
	str r10,[fp,#-96]
	mov r9,#0
	str r9,[fp,#-120]
.loop3L15:
.loop3L55:
	mov r8,#60
	ldr r9,[fp,#-120]
	mul r8,r9,r8
	mov r1,r8
	ldr r9,[fp,#-68]
	add r10,r9,r1,lsl #2
	str r10,[fp,#-84]
	mov r1,#224
	ldr r9,[fp,#-120]
	mul r1,r9,r1
	mov r6,r1
	ldr r9,[fp,#-72]
	add r10,r9,r6,lsl #2
	str r10,[fp,#-88]
	ldr r9,[fp,#-96]
	mov r10,r9
	str r10,[fp,#-112]
	mov r9,#0
	str r9,[fp,#-128]
.loop3L19:
.loop3L56:
	mov r0,#12
	ldr r9,[fp,#-128]
	mul r0,r9,r0
	mov r3,r0
	ldr r9,[fp,#-84]
	add r10,r9,r3,lsl #2
	str r10,[fp,#-92]
	mov r3,#56
	ldr r9,[fp,#-128]
	mul r3,r9,r3
	mov r8,r3
	ldr r9,[fp,#-88]
	add r10,r9,r8,lsl #2
	str r10,[fp,#-100]
	ldr r9,[fp,#-112]
	mov r10,r9
	str r10,[fp,#-124]
	mov r9,#0
	str r9,[fp,#-136]
.loop3L23:
.loop3L57:
	ldr r9,[fp,#-136]
	lsl r0,r9,#1
	mov r7,r0
	ldr r9,[fp,#-92]
	add r10,r9,r7,lsl #2
	str r10,[fp,#-108]
	ldr r9,[fp,#-136]
	ldr r10,[fp,#-136]
	rsb r7,r9,r10,lsl #3
	mov r3,r7
	ldr r9,[fp,#-100]
	add r10,r9,r3,lsl #2
	str r10,[fp,#-116]
	ldr r9,[fp,#-124]
	mov r3,r9
	mov r9,#0
	str r9,[fp,#-144]
.loop3L27:
	movw r0,#19413
	movt r0,#41070  @ -1603384363
	smmul r0,r3,r0
	asr r6,r3,#31
	add r0,r3,r0
	rsb r0,r6,r0,asr #9
	movw r6,#817
	movt r6,#0  @ 817
	mul r0,r0,r6
	sub r6,r3,r0
	ldr r9,[fp,#-144]
	mov r0,r9
	ldr r9,[fp,#-108]
	add r7,r9,r0,lsl #2
	ldr r0,[r7]
	add r7,r6,r0
	ldr r9,[fp,#-144]
	mov r6,r9
	ldr r9,[fp,#-116]
	add r0,r9,r6,lsl #2
	ldr r6,[r0]
	add r9,r7,r6
	str r9,[fp,#-132]
	ldr r9,[fp,#-144]
	add r10,r9,#1
	str r10,[fp,#-140]
	ldr r9,[fp,#-140]
	ldr r10,[fp,#-60]
	cmp r9,r10
	bge .loop3L30
.loop3L31:
.loop3L28:
	movw r6,#38528
	movt r6,#152  @ 10000000
	ldr r9,[fp,#-140]
	cmp r9,r6
	blt .loop3L70
.loop3L71:
	ldr r9,[fp,#-132]
	mov r6,r9
.loop3L29:
	ldr r9,[fp,#-136]
	add r10,r9,#1
	str r10,[fp,#-164]
	ldr r9,[fp,#-164]
	ldr r10,[fp,#-52]
	cmp r9,r10
	bge .loop3L33
.loop3L34:
.loop3L24:
	movw r8,#16960
	movt r8,#15  @ 1000000
	ldr r9,[fp,#-164]
	cmp r9,r8
	blt .loop3L68
.loop3L69:
	mov r8,r6
.loop3L25:
	ldr r9,[fp,#-128]
	add r2,r9,#1
	ldr r9,[fp,#-44]
	cmp r2,r9
	bge .loop3L36
.loop3L37:
.loop3L20:
	movw r0,#34464
	movt r0,#1  @ 100000
	cmp r2,r0
	blt .loop3L66
.loop3L67:
	mov r9,r8
	str r9,[fp,#-156]
.loop3L21:
	ldr r9,[fp,#-120]
	add r0,r9,#1
	ldr r9,[fp,#-36]
	cmp r0,r9
	bge .loop3L39
.loop3L40:
.loop3L16:
	movw r7,#10000
	movt r7,#0  @ 10000
	cmp r0,r7
	blt .loop3L64
.loop3L65:
	ldr r9,[fp,#-156]
	mov r10,r9
	str r10,[fp,#-148]
.loop3L17:
	ldr r9,[fp,#-104]
	add r4,r9,#1
	ldr r9,[fp,#-20]
	cmp r4,r9
	bge .loop3L42
.loop3L43:
.loop3L12:
	cmp r4,#1000
	blt .loop3L62
.loop3L63:
	ldr r9,[fp,#-148]
	mov r10,r9
	str r10,[fp,#-152]
.loop3L13:
	ldr r9,[fp,#-76]
	add r7,r9,#1
	ldr r9,[fp,#-16]
	cmp r7,r9
	bge .loop3L45
.loop3L46:
.loop3L8:
	cmp r7,#100
	blt .loop3L60
.loop3L61:
	ldr r9,[fp,#-152]
	mov r10,r9
	str r10,[fp,#-160]
.loop3L9:
	ldr r9,[fp,#-40]
	add r1,r9,#1
	ldr r9,[fp,#-12]
	cmp r1,r9
	bge .loop3L48
.loop3L49:
.loop3L4:
	cmp r1,#10
	blt .loop3L58
.loop3L59:
	ldr r9,[fp,#-160]
	mov r5,r9
.loop3L5:
	mov r0,r5
	mov r9,#164
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.loop3L58:
	ldr r9,[fp,#-160]
	mov r10,r9
	str r10,[fp,#-24]
	mov r9,r1
	str r9,[fp,#-40]
	bl .loop3L3
.loop3L48:
	ldr r9,[fp,#-160]
	mov r5,r9
	bl .loop3L5
.loop3L60:
	ldr r9,[fp,#-152]
	mov r10,r9
	str r10,[fp,#-64]
	mov r9,r7
	str r9,[fp,#-76]
	bl .loop3L7
.loop3L45:
	ldr r9,[fp,#-152]
	mov r10,r9
	str r10,[fp,#-160]
	bl .loop3L9
.loop3L62:
	ldr r9,[fp,#-148]
	mov r10,r9
	str r10,[fp,#-80]
	mov r9,r4
	str r9,[fp,#-104]
	bl .loop3L11
.loop3L42:
	ldr r9,[fp,#-148]
	mov r10,r9
	str r10,[fp,#-152]
	bl .loop3L13
.loop3L64:
	ldr r9,[fp,#-156]
	mov r10,r9
	str r10,[fp,#-96]
	mov r9,r0
	str r9,[fp,#-120]
	bl .loop3L15
.loop3L39:
	ldr r9,[fp,#-156]
	mov r10,r9
	str r10,[fp,#-148]
	bl .loop3L17
.loop3L66:
	mov r9,r8
	str r9,[fp,#-112]
	mov r9,r2
	str r9,[fp,#-128]
	bl .loop3L19
.loop3L36:
	mov r9,r8
	str r9,[fp,#-156]
	bl .loop3L21
.loop3L68:
	mov r9,r6
	str r9,[fp,#-124]
	ldr r9,[fp,#-164]
	mov r10,r9
	str r10,[fp,#-136]
	bl .loop3L23
.loop3L33:
	mov r8,r6
	bl .loop3L25
.loop3L70:
	ldr r9,[fp,#-132]
	mov r3,r9
	ldr r9,[fp,#-140]
	mov r10,r9
	str r10,[fp,#-144]
	bl .loop3L27
.loop3L30:
	ldr r9,[fp,#-132]
	mov r6,r9
	bl .loop3L29
loop2:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#64
.loop2L0:
.loop2L1:
.loop2L30:
	mov r9,#0
	str r9,[fp,#-16]
.loop2L3:
.loop2L31:
	mov r7,#2688
	ldr r9,[fp,#-16]
	mul r7,r9,r7
	mov r6,r7
	bl .LPIC3
.LPIC2:
	.word arr2
.LPIC3:
	ldr r7,.LPIC2
	add r9,r7,r6,lsl #2
	str r9,[fp,#-12]
	mov r9,#0
	str r9,[fp,#-32]
.loop2L7:
.loop2L32:
	ldr r9,[fp,#-16]
	ldr r10,[fp,#-32]
	add r10,r9,r10
	str r10,[fp,#-24]
	mov r4,#1344
	ldr r9,[fp,#-32]
	mul r4,r9,r4
	mov r3,r4
	ldr r9,[fp,#-12]
	add r10,r9,r3,lsl #2
	str r10,[fp,#-20]
	mov r9,#0
	str r9,[fp,#-40]
.loop2L11:
.loop2L33:
	mov r2,#448
	ldr r9,[fp,#-40]
	mul r2,r9,r2
	mov r1,r2
	ldr r9,[fp,#-20]
	add r10,r9,r1,lsl #2
	str r10,[fp,#-28]
	mov r9,#0
	str r9,[fp,#-56]
.loop2L15:
.loop2L34:
	ldr r9,[fp,#-24]
	ldr r10,[fp,#-56]
	add r10,r9,r10
	str r10,[fp,#-44]
	mov r5,#224
	ldr r9,[fp,#-56]
	mul r5,r9,r5
	mov r8,r5
	ldr r9,[fp,#-28]
	add r10,r9,r8,lsl #2
	str r10,[fp,#-36]
	mov r9,#0
	str r9,[fp,#-60]
.loop2L19:
.loop2L35:
	mov r4,#56
	ldr r9,[fp,#-60]
	mul r4,r9,r4
	mov r6,r4
	ldr r9,[fp,#-36]
	add r10,r9,r6,lsl #2
	str r10,[fp,#-48]
	mov r6,#0
.loop2L23:
.loop2L36:
	rsb r2,r6,r6,lsl #3
	mov r7,r2
	ldr r9,[fp,#-48]
	add r10,r9,r7,lsl #2
	str r10,[fp,#-52]
	mov r7,#0
.loop2L27:
	ldr r9,[fp,#-44]
	add r5,r9,r7
	mov r3,r7
	ldr r9,[fp,#-52]
	add r0,r9,r3,lsl #2
	str r5,[r0]
	add r9,r7,#1
	str r9,[fp,#-64]
.loop2L28:
	ldr r9,[fp,#-64]
	cmp r9,#7
	blt .loop2L43
.loop2L29:
	add r3,r6,#1
.loop2L24:
	cmp r3,#8
	blt .loop2L42
.loop2L25:
	ldr r9,[fp,#-60]
	add r0,r9,#1
.loop2L20:
	cmp r0,#4
	blt .loop2L41
.loop2L21:
	ldr r9,[fp,#-56]
	add r4,r9,#1
.loop2L16:
	cmp r4,#2
	blt .loop2L40
.loop2L17:
	ldr r9,[fp,#-40]
	add r2,r9,#1
.loop2L12:
	cmp r2,#3
	blt .loop2L39
.loop2L13:
	ldr r9,[fp,#-32]
	add r1,r9,#1
.loop2L8:
	cmp r1,#2
	blt .loop2L38
.loop2L9:
	ldr r9,[fp,#-16]
	add r8,r9,#1
.loop2L4:
	cmp r8,#10
	blt .loop2L37
.loop2L5:
	add sp,sp,#64
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.loop2L37:
	mov r9,r8
	str r9,[fp,#-16]
	bl .loop2L3
.loop2L38:
	mov r9,r1
	str r9,[fp,#-32]
	bl .loop2L7
.loop2L39:
	mov r9,r2
	str r9,[fp,#-40]
	bl .loop2L11
.loop2L40:
	mov r9,r4
	str r9,[fp,#-56]
	bl .loop2L15
.loop2L41:
	mov r9,r0
	str r9,[fp,#-60]
	bl .loop2L19
.loop2L42:
	mov r6,r3
	bl .loop2L23
.loop2L43:
	ldr r9,[fp,#-64]
	mov r7,r9
	bl .loop2L27
	.section	.note.GNU-stack,"",%progbits
