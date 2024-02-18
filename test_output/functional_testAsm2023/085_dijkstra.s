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
Dijkstra:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#32
.DijkstraL0:
.DijkstraL1:
	mov r8,#0
	str r8,[fp,#-32]
	mov r8,#0
	str r8,[fp,#-28]
	mov r8,#1
	str r8,[fp,#-32]
	ldr r8,[fp,#-32]
	ldr r7,.LPIC5
	ldr r6,[r7]
	cmp r8,r6
	ble .DijkstraL3
.DijkstraL5:
	mov r8,#1
	mov r7,#1
	mov r6,r7
	ldr r7,.LPIC1
	add r5,r7,r6,lsl #2
	str r8,[r5]
	mov r8,#1
	str r8,[fp,#-32]
	ldr r8,[fp,#-32]
	ldr r7,.LPIC5
	ldr r6,[r7]
	mov r7,#1
	sub r5,r6,r7
	cmp r8,r5
	ble .DijkstraL7
.DijkstraL9:
	add sp,sp,#32
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.DijkstraL7:
	ldr r8,.LPIC0
	ldr r7,[r8]
	str r7,[fp,#-24]
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#1
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	ldr r7,.LPIC5
	ldr r6,[r7]
	cmp r8,r6
	ble .DijkstraL11
.DijkstraL13:
	mov r8,#1
	ldr r7,[fp,#-20]
	mov r6,r7
	ldr r7,.LPIC1
	add r5,r7,r6,lsl #2
	str r8,[r5]
	mov r8,#1
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,.LPIC5
	ldr r6,[r7]
	cmp r8,r6
	ble .DijkstraL19
.DijkstraL21:
	ldr r8,[fp,#-32]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-32]
.DijkstraL8:
	ldr r8,[fp,#-32]
	ldr r7,.LPIC5
	ldr r6,[r7]
	mov r7,#1
	sub r5,r6,r7
	cmp r8,r5
	ble .DijkstraL7
	bgt .DijkstraL9
.DijkstraL19:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-12]
	lsl r6,r8,#4
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC3
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r7,.LPIC0
	ldr r6,[r7]
	cmp r8,r6
	blt .DijkstraL22
.DijkstraL23:
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.DijkstraL20:
	ldr r8,[fp,#-12]
	ldr r7,.LPIC5
	ldr r6,[r7]
	cmp r8,r6
	ble .DijkstraL19
	bgt .DijkstraL21
.DijkstraL22:
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC2
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-20]
	mov r6,r7
	ldr r7,.LPIC2
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	ldr r6,[fp,#-20]
	ldr r5,[fp,#-12]
	lsl r4,r6,#4
	mov r6,r4
	add r6,r6,r5
	ldr r5,.LPIC3
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	add r5,r7,r6
	cmp r8,r5
	bgt .DijkstraL24
.DijkstraL25:
	bl .DijkstraL23
.DijkstraL24:
	ldr r8,[fp,#-20]
	mov r7,r8
	ldr r8,.LPIC2
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-20]
	ldr r6,[fp,#-12]
	lsl r5,r7,#4
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC3
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	add r6,r8,r7
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC2
	add r5,r8,r7,lsl #2
	str r6,[r5]
	bl .DijkstraL25
.DijkstraL11:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-16]
	mov r6,r7
	ldr r7,.LPIC2
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	cmp r8,r7
	bgt .DijkstraL16
.DijkstraL15:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.DijkstraL12:
	ldr r8,[fp,#-16]
	ldr r7,.LPIC5
	ldr r6,[r7]
	cmp r8,r6
	ble .DijkstraL11
	bgt .DijkstraL13
.DijkstraL16:
	ldr r8,[fp,#-16]
	mov r7,r8
	ldr r8,.LPIC1
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	mov r7,#0
	cmp r8,r7
	bne .DijkstraL15
.DijkstraL14:
	ldr r8,[fp,#-16]
	mov r7,r8
	ldr r8,.LPIC2
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	str r8,[fp,#-24]
	ldr r8,[fp,#-16]
	str r8,[fp,#-20]
	bl .DijkstraL15
.DijkstraL3:
	mov r8,#1
	ldr r7,[fp,#-32]
	lsl r6,r8,#4
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC3
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-32]
	mov r6,r7
	ldr r7,.LPIC2
	add r5,r7,r6,lsl #2
	str r8,[r5]
	mov r8,#0
	ldr r7,[fp,#-32]
	mov r6,r7
	ldr r7,.LPIC1
	add r5,r7,r6,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-32]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-32]
.DijkstraL4:
	ldr r8,[fp,#-32]
	ldr r7,.LPIC5
	ldr r6,[r7]
	cmp r8,r6
	ble .DijkstraL3
	bgt .DijkstraL5
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#24
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-24]
	@%r2 = call i32 @getint()
	bl getint
	mov r8,r0
	ldr r7,.LPIC5
	str r8,[r7]
	@%r3 = call i32 @getint()
	bl getint
	mov r8,r0
	ldr r7,.LPIC4
	str r8,[r7]
	mov r8,#1
	str r8,[fp,#-24]
	ldr r8,[fp,#-24]
	ldr r7,.LPIC5
	ldr r6,[r7]
	cmp r8,r6
	ble .mainL3
.mainL5:
	mov r8,#1
	str r8,[fp,#-24]
	ldr r8,[fp,#-24]
	ldr r7,.LPIC4
	ldr r6,[r7]
	cmp r8,r6
	ble .mainL14
.mainL16:
	@call void @Dijkstra()
	bl Dijkstra
	mov r8,#1
	str r8,[fp,#-24]
	ldr r8,[fp,#-24]
	ldr r7,.LPIC5
	ldr r6,[r7]
	cmp r8,r6
	ble .mainL18
.mainL20:
	mov r8,#10
	@call void @putch(i32 %r86)
	mov r0,r8
	bl putch
	mov r8,#0
	mov r0,r8
	add sp,sp,#24
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL18:
	ldr r8,[fp,#-24]
	mov r7,r8
	ldr r8,.LPIC2
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	@call void @putint(i32 %r76)
	mov r0,r8
	bl putint
	mov r8,#32
	@call void @putch(i32 %r77)
	mov r0,r8
	bl putch
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-24]
.mainL19:
	ldr r8,[fp,#-24]
	ldr r7,.LPIC5
	ldr r6,[r7]
	cmp r8,r6
	ble .mainL18
	bgt .mainL20
.mainL14:
	@%r53 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-16]
	@%r55 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-12]
	@%r56 = call i32 @getint()
	bl getint
	mov r8,r0
	ldr r7,[fp,#-16]
	ldr r6,[fp,#-12]
	lsl r5,r7,#4
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC3
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-24]
.mainL15:
	ldr r8,[fp,#-24]
	ldr r7,.LPIC4
	ldr r6,[r7]
	cmp r8,r6
	ble .mainL14
	bgt .mainL16
.mainL3:
	mov r8,#1
	str r8,[fp,#-20]
	ldr r8,[fp,#-20]
	ldr r7,.LPIC5
	ldr r6,[r7]
	cmp r8,r6
	ble .mainL7
.mainL9:
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-24]
.mainL4:
	ldr r8,[fp,#-24]
	ldr r7,.LPIC5
	ldr r6,[r7]
	cmp r8,r6
	ble .mainL3
	bgt .mainL5
.mainL7:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	cmp r8,r7
	beq .mainL10
.mainL11:
	ldr r8,.LPIC0
	ldr r7,[r8]
	ldr r8,[fp,#-24]
	ldr r6,[fp,#-20]
	lsl r5,r8,#4
	mov r8,r5
	add r8,r8,r6
	ldr r6,.LPIC3
	add r5,r6,r8,lsl #2
	str r7,[r5]
.mainL12:
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL8:
	ldr r8,[fp,#-20]
	ldr r7,.LPIC5
	ldr r6,[r7]
	cmp r8,r6
	ble .mainL7
	bgt .mainL9
.mainL10:
	mov r8,#0
	ldr r7,[fp,#-24]
	ldr r6,[fp,#-20]
	lsl r5,r7,#4
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC3
	add r5,r6,r7,lsl #2
	str r8,[r5]
	bl .mainL12
	.section	.note.GNU-stack,"",%progbits
