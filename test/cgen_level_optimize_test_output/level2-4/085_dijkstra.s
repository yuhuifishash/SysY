.arch armv7-a
.fpu vfpv3-d16
.arm
.data
INF:
	.word  65535
e:
	.space  1024
book:
	.space  64
dis:
	.space  64
n:
	.word  0
m:
	.word  0
v1:
	.word  0
v2:
	.word  0
w:
	.word  0
.text
.global main
.LPIC0:
	.word  INF
.LPIC1:
	.word  book
.LPIC2:
	.word  dis
.LPIC3:
	.word  e
.LPIC4:
	.word  m
.LPIC5:
	.word  n
.LPIC6:
	.word  v1
.LPIC7:
	.word  v2
.LPIC8:
	.word  w
Dijkstra:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#20
.DijkstraL0:
.DijkstraL1:
	ldr r8,.LPIC5
	ldr r7,[r8]
	cmp r7,#1
	bge .DijkstraL26
.DijkstraL5:
	mov r8,#1
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	mov r8,#1
	str r8,[r6]
	ldr r8,.LPIC5
	ldr r7,[r8]
	sub r8,r7,#1
	cmp r8,#1
	bge .DijkstraL27
.DijkstraL9:
	add sp,sp,#20
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.DijkstraL27:
	ldr r8,.LPIC5
	ldr r9,[r8]
	str r9,[fp,#-20]
	ldr r9,[fp,#-20]
	sub r10,r9,#1
	str r10,[fp,#-12]
	mov r9,#1
	str r9,[fp,#-16]
.DijkstraL7:
	ldr r9,[fp,#-20]
	cmp r9,#1
	bge .DijkstraL28
.DijkstraL33:
	mov r5,#0
.DijkstraL13:
	mov r4,r5
	ldr r3,.LPIC1
	add r2,r3,r4,lsl #2
	mov r4,#1
	str r4,[r2]
	ldr r9,[fp,#-20]
	cmp r9,#1
	bge .DijkstraL29
.DijkstraL21:
	ldr r9,[fp,#-16]
	add r4,r9,#1
.DijkstraL8:
	ldr r9,[fp,#-12]
	cmp r4,r9
	bgt .DijkstraL9
.DijkstraL31:
	mov r9,r4
	str r9,[fp,#-16]
	bl .DijkstraL7
.DijkstraL29:
	lsl r4,r5,#4
	mov r3,r4
	ldr r4,.LPIC3
	add r2,r4,r3,lsl #2
	ldr r4,.LPIC5
	ldr r3,[r4]
	mov r4,#1
.DijkstraL19:
	mov r1,r4
	add r0,r2,r1,lsl #2
	ldr r1,[r0]
	movw r0,#65535
	movt r0,#0  @ 65535
	cmp r1,r0
	blt .DijkstraL22
.DijkstraL23:
	add r8,r4,#1
.DijkstraL20:
	cmp r8,r3
	bgt .DijkstraL21
.DijkstraL37:
	mov r4,r8
	bl .DijkstraL19
.DijkstraL22:
	mov r8,r4
	ldr r1,.LPIC2
	add r0,r1,r8,lsl #2
	ldr r8,[r0]
	mov r1,r5
	ldr r0,.LPIC2
	add r6,r0,r1,lsl #2
	ldr r1,[r6]
	lsl r6,r5,#4
	mov r0,r6
	add r0,r0,r4
	ldr r6,.LPIC3
	add r7,r6,r0,lsl #2
	ldr r6,[r7]
	add r7,r1,r6
	cmp r8,r7
	bgt .DijkstraL24
.DijkstraL25:
	bl .DijkstraL23
.DijkstraL24:
	mov r8,r5
	ldr r7,.LPIC2
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	lsl r7,r5,#4
	mov r6,r7
	add r6,r6,r4
	ldr r7,.LPIC3
	add r1,r7,r6,lsl #2
	ldr r7,[r1]
	add r6,r8,r7
	mov r8,r4
	ldr r7,.LPIC2
	add r1,r7,r8,lsl #2
	str r6,[r1]
	bl .DijkstraL25
.DijkstraL28:
	ldr r8,.LPIC5
	ldr r7,[r8]
	mov r8,#1
	mov r6,#0
	movw r4,#65535
	movt r4,#0  @ 65535
	mov r3,r4
.DijkstraL11:
	mov r4,r8
	ldr r2,.LPIC2
	add r1,r2,r4,lsl #2
	ldr r4,[r1]
	cmp r3,r4
	bgt .DijkstraL16
.DijkstraL35:
	mov r4,r6
	mov r2,r3
.DijkstraL15:
	add r1,r8,#1
.DijkstraL12:
	cmp r1,r7
	ble .DijkstraL32
.DijkstraL34:
	mov r5,r4
	bl .DijkstraL13
.DijkstraL32:
	mov r8,r1
	mov r6,r4
	mov r3,r2
	bl .DijkstraL11
.DijkstraL16:
	mov r5,r8
	ldr r1,.LPIC1
	add r0,r1,r5,lsl #2
	ldr r5,[r0]
	cmp r5,#0
	beq .DijkstraL14
.DijkstraL36:
	mov r4,r6
	mov r2,r3
	bl .DijkstraL15
.DijkstraL14:
	mov r6,r8
	ldr r5,.LPIC2
	add r3,r5,r6,lsl #2
	ldr r6,[r3]
	mov r4,r8
	mov r2,r6
	bl .DijkstraL15
.DijkstraL26:
	ldr r8,.LPIC5
	ldr r7,[r8]
	mov r8,#1
.DijkstraL3:
	mov r6,r8
	add r6,r6,#16
	ldr r5,.LPIC3
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	mov r5,r8
	ldr r4,.LPIC2
	add r3,r4,r5,lsl #2
	str r6,[r3]
	mov r6,r8
	ldr r5,.LPIC1
	add r4,r5,r6,lsl #2
	mov r6,#0
	str r6,[r4]
	add r6,r8,#1
.DijkstraL4:
	cmp r6,r7
	bgt .DijkstraL5
.DijkstraL30:
	mov r8,r6
	bl .DijkstraL3
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r2 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,.LPIC5
	str r8,[r7]
	@%r3 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,.LPIC4
	str r8,[r7]
	ldr r8,.LPIC5
	ldr r7,[r8]
	cmp r7,#1
	bge .mainL21
.mainL5:
	ldr r8,.LPIC4
	ldr r7,[r8]
	cmp r7,#1
	bge .mainL23
.mainL16:
	@call void @Dijkstra()
	sub sp,sp,#4 @stack align 8bytes
	bl Dijkstra
	add sp,sp,#4 @stack align 8bytes
	ldr r8,.LPIC5
	ldr r7,[r8]
	cmp r7,#1
	bge .mainL24
.mainL20:
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	bl putch
	add sp,sp,#4 @stack align 8bytes
	mov r0,#0
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL24:
	mov r8,#1
.mainL18:
	mov r7,r8
	ldr r6,.LPIC2
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	@call void @putint(i32 %r76)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl putint
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 32)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#32
	bl putch
	add sp,sp,#4 @stack align 8bytes
	add r7,r8,#1
.mainL19:
	ldr r6,.LPIC5
	ldr r5,[r6]
	cmp r7,r5
	bgt .mainL20
.mainL28:
	mov r8,r7
	bl .mainL18
.mainL23:
	mov r8,#1
.mainL14:
	@%r53 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	@%r55 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	@%r56 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	lsl r4,r7,#4
	mov r7,r4
	add r7,r7,r6
	ldr r6,.LPIC3
	add r4,r6,r7,lsl #2
	str r5,[r4]
	add r7,r8,#1
.mainL15:
	ldr r6,.LPIC4
	ldr r5,[r6]
	cmp r7,r5
	bgt .mainL16
.mainL27:
	mov r8,r7
	bl .mainL14
.mainL21:
	ldr r8,.LPIC5
	ldr r7,[r8]
	mov r8,#1
.mainL3:
	cmp r7,#1
	bge .mainL22
.mainL9:
	add r6,r8,#1
.mainL4:
	cmp r6,r7
	bgt .mainL5
.mainL25:
	mov r8,r6
	bl .mainL3
.mainL22:
	ldr r6,.LPIC5
	ldr r5,[r6]
	mov r6,#1
.mainL7:
	cmp r8,r6
	beq .mainL10
.mainL11:
	lsl r4,r8,#4
	mov r3,r4
	add r3,r3,r6
	ldr r4,.LPIC3
	add r2,r4,r3,lsl #2
	movw r4,#65535
	movt r4,#0  @ 65535
	str r4,[r2]
.mainL12:
	add r4,r6,#1
.mainL8:
	cmp r4,r5
	bgt .mainL9
.mainL26:
	mov r6,r4
	bl .mainL7
.mainL10:
	lsl r4,r8,#4
	mov r3,r4
	add r3,r3,r6
	ldr r4,.LPIC3
	add r2,r4,r3,lsl #2
	mov r4,#0
	str r4,[r2]
	bl .mainL12
	.section	.note.GNU-stack,"",%progbits
