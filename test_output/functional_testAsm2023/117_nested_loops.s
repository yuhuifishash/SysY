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
loop1:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#44
.loop1L0:
	str r0,[fp,#-40]
	str r1,[fp,#-44]
.loop1L1:
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
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#0
	str r8,[fp,#-36]
	ldr r8,[fp,#-36]
	ldr r7,[fp,#-40]
	cmp r8,r7
	blt .loop1L6
.loop1L5:
	add sp,sp,#44
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.loop1L6:
	ldr r8,[fp,#-36]
	ldr r7,[fp,#-44]
	cmp r8,r7
	bge .loop1L5
.loop1L3:
	mov r8,#0
	str r8,[fp,#-32]
	ldr r8,[fp,#-32]
	mov r7,#2
	cmp r8,r7
	blt .loop1L9
.loop1L11:
	ldr r8,[fp,#-36]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-36]
.loop1L4:
	ldr r8,[fp,#-36]
	ldr r7,[fp,#-40]
	cmp r8,r7
	bge .loop1L5
.loop1L32:
	ldr r8,[fp,#-36]
	ldr r7,[fp,#-44]
	cmp r8,r7
	blt .loop1L3
	bge .loop1L5
.loop1L9:
	mov r8,#0
	str r8,[fp,#-28]
	ldr r8,[fp,#-28]
	mov r7,#3
	cmp r8,r7
	blt .loop1L13
.loop1L15:
	ldr r8,[fp,#-32]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-32]
.loop1L10:
	ldr r8,[fp,#-32]
	mov r7,#2
	cmp r8,r7
	blt .loop1L9
	bge .loop1L11
.loop1L13:
	mov r8,#0
	str r8,[fp,#-24]
	ldr r8,[fp,#-24]
	mov r7,#4
	cmp r8,r7
	blt .loop1L17
.loop1L19:
	ldr r8,[fp,#-28]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-28]
.loop1L14:
	ldr r8,[fp,#-28]
	mov r7,#3
	cmp r8,r7
	blt .loop1L13
	bge .loop1L15
.loop1L17:
	mov r8,#0
	str r8,[fp,#-20]
	ldr r8,[fp,#-20]
	mov r7,#5
	cmp r8,r7
	blt .loop1L21
.loop1L23:
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-24]
.loop1L18:
	ldr r8,[fp,#-24]
	mov r7,#4
	cmp r8,r7
	blt .loop1L17
	bge .loop1L19
.loop1L21:
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	mov r7,#6
	cmp r8,r7
	blt .loop1L25
.loop1L27:
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
.loop1L22:
	ldr r8,[fp,#-20]
	mov r7,#5
	cmp r8,r7
	blt .loop1L21
	bge .loop1L23
.loop1L25:
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#2
	cmp r8,r7
	blt .loop1L29
.loop1L31:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.loop1L26:
	ldr r8,[fp,#-16]
	mov r7,#6
	cmp r8,r7
	blt .loop1L25
	bge .loop1L27
.loop1L29:
	ldr r8,[fp,#-36]
	ldr r7,[fp,#-32]
	add r6,r8,r7
	ldr r8,[fp,#-28]
	add r7,r6,r8
	ldr r8,[fp,#-24]
	add r6,r7,r8
	ldr r8,[fp,#-20]
	add r7,r6,r8
	ldr r8,[fp,#-16]
	add r6,r7,r8
	ldr r8,[fp,#-12]
	add r7,r6,r8
	ldr r8,[fp,#-40]
	add r6,r7,r8
	ldr r8,[fp,#-44]
	add r7,r6,r8
	ldr r8,[fp,#-36]
	ldr r6,[fp,#-32]
	ldr r5,[fp,#-28]
	ldr r4,[fp,#-24]
	ldr r3,[fp,#-20]
	ldr r2,[fp,#-16]
	ldr r1,[fp,#-12]
	mov r0,#1440
	mul r0,r8,r0
	mov r8,r0
	mov r0,#720
	mul r0,r6,r0
	add r8,r8,r0
	mov r0,#240
	mul r0,r5,r0
	add r8,r8,r0
	mov r0,#60
	mul r0,r4,r0
	add r8,r8,r0
	mov r0,#12
	mul r0,r3,r0
	add r8,r8,r0
	lsl r0,r2,#1
	add r8,r8,r0
	add r8,r8,r1
	ldr r6,.LPIC0
	add r5,r6,r8,lsl #2
	str r7,[r5]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.loop1L30:
	ldr r8,[fp,#-12]
	mov r7,#2
	cmp r8,r7
	blt .loop1L29
	bge .loop1L31
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#44
.mainL0:
.mainL1:
	@%r1 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-44]
	@%r3 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-40]
	@%r5 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-36]
	@%r7 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-32]
	@%r9 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-28]
	@%r11 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-24]
	@%r13 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-20]
	@%r15 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-16]
	@%r17 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-12]
	ldr r8,[fp,#-44]
	ldr r7,[fp,#-40]
	@call void @loop1(i32 %r18,i32 %r19)
	mov r0,r8
	mov r1,r7
	bl loop1
	@call void @loop2()
	bl loop2
	ldr r8,[fp,#-36]
	ldr r7,[fp,#-32]
	ldr r6,[fp,#-28]
	ldr r5,[fp,#-24]
	ldr r4,[fp,#-20]
	ldr r3,[fp,#-16]
	ldr r2,[fp,#-12]
	@%r27 = call i32 @loop3(i32 %r20,i32 %r21,i32 %r22,i32 %r23,i32 %r24,i32 %r25,i32 %r26)
	sub sp,sp,#4 @stack align 8bytes
	push {r2,r3}
	sub sp,sp,#12
	str r2,[sp,#8]  @%r26
	str r3,[sp,#4]  @%r25
	str r4,[sp,#0]  @%r24
	mov r0,r8
	mov r1,r7
	mov r2,r6
	mov r3,r5
	bl loop3
	add sp,sp,#12
	mov r1,r0
	pop {r2,r3}
	add sp,sp,#4 @stack align 8bytes
	mov r0,r1
	add sp,sp,#44
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
loop3:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#68
.loop3L0:
	ldr r6,[fp,#32]
	ldr r7,[fp,#28]
	ldr r8,[fp,#24]
	str r0,[fp,#-44]
	str r1,[fp,#-48]
	str r2,[fp,#-52]
	str r3,[fp,#-56]
	str r8,[fp,#-60]
	str r7,[fp,#-64]
	str r6,[fp,#-68]
.loop3L1:
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
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#0
	str r8,[fp,#-40]
	ldr r8,[fp,#-40]
	mov r7,#10
	cmp r8,r7
	blt .loop3L3
.loop3L5:
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#68
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.loop3L3:
	mov r8,#0
	str r8,[fp,#-36]
	ldr r8,[fp,#-36]
	mov r7,#100
	cmp r8,r7
	blt .loop3L7
.loop3L9:
	ldr r8,[fp,#-40]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-40]
	ldr r8,[fp,#-40]
	ldr r7,[fp,#-44]
	cmp r8,r7
	bge .loop3L48
.loop3L49:
.loop3L4:
	ldr r8,[fp,#-40]
	mov r7,#10
	cmp r8,r7
	blt .loop3L3
	bge .loop3L5
.loop3L48:
	bl .loop3L5
.loop3L7:
	mov r8,#0
	str r8,[fp,#-32]
	ldr r8,[fp,#-32]
	mov r7,#1000
	cmp r8,r7
	blt .loop3L11
.loop3L13:
	ldr r8,[fp,#-36]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-36]
	ldr r8,[fp,#-36]
	ldr r7,[fp,#-48]
	cmp r8,r7
	bge .loop3L45
.loop3L46:
.loop3L8:
	ldr r8,[fp,#-36]
	mov r7,#100
	cmp r8,r7
	blt .loop3L7
	bge .loop3L9
.loop3L45:
	bl .loop3L9
.loop3L11:
	mov r8,#0
	str r8,[fp,#-28]
	ldr r8,[fp,#-28]
	movw r7,#10000
	movt r7,#0  @ 10000
	mov r6,r7
	cmp r8,r6
	blt .loop3L15
.loop3L17:
	ldr r8,[fp,#-32]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-32]
	ldr r8,[fp,#-32]
	ldr r7,[fp,#-52]
	cmp r8,r7
	bge .loop3L42
.loop3L43:
.loop3L12:
	ldr r8,[fp,#-32]
	mov r7,#1000
	cmp r8,r7
	blt .loop3L11
	bge .loop3L13
.loop3L42:
	bl .loop3L13
.loop3L15:
	mov r8,#0
	str r8,[fp,#-24]
	ldr r8,[fp,#-24]
	movw r7,#34464
	movt r7,#1  @ 100000
	mov r6,r7
	cmp r8,r6
	blt .loop3L19
.loop3L21:
	ldr r8,[fp,#-28]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-28]
	ldr r8,[fp,#-28]
	ldr r7,[fp,#-56]
	cmp r8,r7
	bge .loop3L39
.loop3L40:
.loop3L16:
	ldr r8,[fp,#-28]
	movw r7,#10000
	movt r7,#0  @ 10000
	mov r6,r7
	cmp r8,r6
	blt .loop3L15
	bge .loop3L17
.loop3L39:
	bl .loop3L17
.loop3L19:
	mov r8,#0
	str r8,[fp,#-20]
	ldr r8,[fp,#-20]
	movw r7,#16960
	movt r7,#15  @ 1000000
	mov r6,r7
	cmp r8,r6
	blt .loop3L23
.loop3L25:
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-24]
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-60]
	cmp r8,r7
	bge .loop3L36
.loop3L37:
.loop3L20:
	ldr r8,[fp,#-24]
	movw r7,#34464
	movt r7,#1  @ 100000
	mov r6,r7
	cmp r8,r6
	blt .loop3L19
	bge .loop3L21
.loop3L36:
	bl .loop3L21
.loop3L23:
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	movw r7,#38528
	movt r7,#152  @ 10000000
	mov r6,r7
	cmp r8,r6
	blt .loop3L27
.loop3L29:
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-64]
	cmp r8,r7
	bge .loop3L33
.loop3L34:
.loop3L24:
	ldr r8,[fp,#-20]
	movw r7,#16960
	movt r7,#15  @ 1000000
	mov r6,r7
	cmp r8,r6
	blt .loop3L23
	bge .loop3L25
.loop3L33:
	bl .loop3L25
.loop3L27:
	ldr r8,[fp,#-12]
	movw r7,#817
	movt r7,#0  @ 817
	mov r6,r7
	@%r74 = call i32 @__modsi3(i32 %r72,i32 %r73)
	mov r0,r8
	mov r1,r6
	bl __modsi3
	mov r7,r0
	ldr r8,[fp,#-40]
	ldr r6,[fp,#-36]
	ldr r5,[fp,#-32]
	ldr r4,[fp,#-28]
	ldr r3,[fp,#-24]
	ldr r2,[fp,#-20]
	ldr r1,[fp,#-16]
	mov r0,#1440
	mul r0,r8,r0
	mov r8,r0
	mov r0,#720
	mul r0,r6,r0
	add r8,r8,r0
	mov r0,#240
	mul r0,r5,r0
	add r8,r8,r0
	mov r0,#60
	mul r0,r4,r0
	add r8,r8,r0
	mov r0,#12
	mul r0,r3,r0
	add r8,r8,r0
	lsl r0,r2,#1
	add r8,r8,r0
	add r8,r8,r1
	bl .LPIC3
.LPIC2:
	.word arr1
.LPIC3:
	ldr r6,.LPIC2
	add r5,r6,r8,lsl #2
	ldr r8,[r5]
	add r6,r7,r8
	ldr r8,[fp,#-40]
	ldr r7,[fp,#-36]
	ldr r5,[fp,#-32]
	ldr r4,[fp,#-28]
	ldr r3,[fp,#-24]
	ldr r2,[fp,#-20]
	ldr r1,[fp,#-16]
	mov r0,#2688
	mul r0,r8,r0
	mov r8,r0
	mov r0,#1344
	mul r0,r7,r0
	add r8,r8,r0
	mov r0,#448
	mul r0,r5,r0
	add r8,r8,r0
	mov r0,#224
	mul r0,r4,r0
	add r8,r8,r0
	mov r0,#56
	mul r0,r3,r0
	add r8,r8,r0
	rsb r0,r2,r2,lsl #3
	add r8,r8,r0
	add r8,r8,r1
	bl .LPIC5
.LPIC4:
	.word arr2
.LPIC5:
	ldr r7,.LPIC4
	add r5,r7,r8,lsl #2
	ldr r8,[r5]
	add r7,r6,r8
	str r7,[fp,#-12]
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-68]
	cmp r8,r7
	bge .loop3L30
.loop3L31:
.loop3L28:
	ldr r8,[fp,#-16]
	movw r7,#38528
	movt r7,#152  @ 10000000
	mov r6,r7
	cmp r8,r6
	blt .loop3L27
	bge .loop3L29
.loop3L30:
	bl .loop3L29
loop2:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#36
.loop2L0:
.loop2L1:
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
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#0
	str r8,[fp,#-36]
	ldr r8,[fp,#-36]
	mov r7,#10
	cmp r8,r7
	blt .loop2L3
.loop2L5:
	add sp,sp,#36
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.loop2L3:
	mov r8,#0
	str r8,[fp,#-32]
	ldr r8,[fp,#-32]
	mov r7,#2
	cmp r8,r7
	blt .loop2L7
.loop2L9:
	ldr r8,[fp,#-36]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-36]
.loop2L4:
	ldr r8,[fp,#-36]
	mov r7,#10
	cmp r8,r7
	blt .loop2L3
	bge .loop2L5
.loop2L7:
	mov r8,#0
	str r8,[fp,#-28]
	ldr r8,[fp,#-28]
	mov r7,#3
	cmp r8,r7
	blt .loop2L11
.loop2L13:
	ldr r8,[fp,#-32]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-32]
.loop2L8:
	ldr r8,[fp,#-32]
	mov r7,#2
	cmp r8,r7
	blt .loop2L7
	bge .loop2L9
.loop2L11:
	mov r8,#0
	str r8,[fp,#-24]
	ldr r8,[fp,#-24]
	mov r7,#2
	cmp r8,r7
	blt .loop2L15
.loop2L17:
	ldr r8,[fp,#-28]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-28]
.loop2L12:
	ldr r8,[fp,#-28]
	mov r7,#3
	cmp r8,r7
	blt .loop2L11
	bge .loop2L13
.loop2L15:
	mov r8,#0
	str r8,[fp,#-20]
	ldr r8,[fp,#-20]
	mov r7,#4
	cmp r8,r7
	blt .loop2L19
.loop2L21:
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-24]
.loop2L16:
	ldr r8,[fp,#-24]
	mov r7,#2
	cmp r8,r7
	blt .loop2L15
	bge .loop2L17
.loop2L19:
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	mov r7,#8
	cmp r8,r7
	blt .loop2L23
.loop2L25:
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
.loop2L20:
	ldr r8,[fp,#-20]
	mov r7,#4
	cmp r8,r7
	blt .loop2L19
	bge .loop2L21
.loop2L23:
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#7
	cmp r8,r7
	blt .loop2L27
.loop2L29:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.loop2L24:
	ldr r8,[fp,#-16]
	mov r7,#8
	cmp r8,r7
	blt .loop2L23
	bge .loop2L25
.loop2L27:
	ldr r8,[fp,#-36]
	ldr r7,[fp,#-32]
	add r6,r8,r7
	ldr r8,[fp,#-24]
	add r7,r6,r8
	ldr r8,[fp,#-12]
	add r6,r7,r8
	ldr r8,[fp,#-36]
	ldr r7,[fp,#-32]
	ldr r5,[fp,#-28]
	ldr r4,[fp,#-24]
	ldr r3,[fp,#-20]
	ldr r2,[fp,#-16]
	ldr r1,[fp,#-12]
	mov r0,#2688
	mul r0,r8,r0
	mov r8,r0
	mov r0,#1344
	mul r0,r7,r0
	add r8,r8,r0
	mov r0,#448
	mul r0,r5,r0
	add r8,r8,r0
	mov r0,#224
	mul r0,r4,r0
	add r8,r8,r0
	mov r0,#56
	mul r0,r3,r0
	add r8,r8,r0
	rsb r0,r2,r2,lsl #3
	add r8,r8,r0
	add r8,r8,r1
	ldr r7,.LPIC4
	add r5,r7,r8,lsl #2
	str r6,[r5]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.loop2L28:
	ldr r8,[fp,#-12]
	mov r7,#7
	cmp r8,r7
	blt .loop2L27
	bge .loop2L29
	.section	.note.GNU-stack,"",%progbits
