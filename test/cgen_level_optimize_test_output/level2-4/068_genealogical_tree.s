.arch armv7-a
.fpu vfpv3-d16
.arm
.data
map:
	.space  400
indegree:
	.space  40
queue:
	.space  40
.text
.global main
.LPIC0:
	.word  indegree
.LPIC1:
	.word  map
.LPIC2:
	.word  queue
topo:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#16
.topoL0:
.topoL1:
	cmp r0,#1
	bge .topoL23
.topoL5:
	cmp r0,#0
	bgt .topoL26
.topoL22:
	add sp,sp,#16
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.topoL26:
	mov r8,#0
.topoL20:
	mov r7,r8
	ldr r6,.LPIC2
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	@call void @putint(i32 %r91)
	push {r0}
	mov r0,r7
	bl putint
	pop {r0}
	@call void @putch(i32 10)
	push {r0}
	mov r0,#10
	bl putch
	pop {r0}
	add r7,r8,#1
.topoL21:
	cmp r7,r0
	bge .topoL22
.topoL32:
	mov r8,r7
	bl .topoL20
.topoL23:
	mov r9,#1
	str r9,[fp,#-12]
	mov r9,#0
	str r9,[fp,#-16]
	mov r6,#0
.topoL3:
	cmp r0,#1
	bge .topoL24
.topoL29:
	mov r5,r6
.topoL9:
	ldr r9,[fp,#-16]
	mov r4,r9
	ldr r3,.LPIC2
	add r2,r3,r4,lsl #2
	str r5,[r2]
	ldr r9,[fp,#-16]
	add r4,r9,#1
	mov r3,r5
	ldr r2,.LPIC0
	add r1,r2,r3,lsl #2
	mvn r3,#0
	str r3,[r1]
	cmp r0,#1
	bge .topoL25
.topoL16:
	ldr r9,[fp,#-12]
	add r3,r9,#1
.topoL4:
	cmp r3,r0
	bgt .topoL5
.topoL27:
	mov r9,r3
	str r9,[fp,#-12]
	mov r9,r4
	str r9,[fp,#-16]
	mov r6,r5
	bl .topoL3
.topoL25:
	mov r3,#10
	mul r3,r5,r3
	mov r2,r3
	ldr r3,.LPIC1
	add r1,r3,r2,lsl #2
	mov r3,#1
.topoL14:
	mov r2,r3
	add r8,r1,r2,lsl #2
	ldr r2,[r8]
	cmp r2,#0
	bne .topoL17
.topoL18:
	add r8,r3,#1
.topoL15:
	cmp r8,r0
	bgt .topoL16
.topoL31:
	mov r3,r8
	bl .topoL14
.topoL17:
	mov r8,r3
	ldr r2,.LPIC0
	add r7,r2,r8,lsl #2
	ldr r8,[r7]
	sub r2,r8,#1
	str r2,[r7]
	bl .topoL18
.topoL24:
	mov r8,#1
.topoL7:
	mov r7,r8
	ldr r4,.LPIC0
	add r3,r4,r7,lsl #2
	ldr r7,[r3]
	cmp r7,#0
	beq .topoL10
.topoL11:
	add r7,r8,#1
.topoL8:
	cmp r7,r0
	ble .topoL28
.topoL30:
	mov r5,r6
	bl .topoL9
.topoL28:
	mov r8,r7
	bl .topoL7
.topoL10:
	mov r5,r8
	bl .topoL9
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
.mainL10:
	mov r8,#1
.mainL3:
	@%r12 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	bne .mainL11
.mainL9:
	add r6,r8,#1
.mainL4:
	cmp r6,#5
	ble .mainL12
.mainL5:
	@call void @topo(i32 5)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#5
	bl topo
	add sp,sp,#4 @stack align 8bytes
	mov r0,#0
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL12:
	mov r8,r6
	bl .mainL3
.mainL11:
	mov r6,#10
	mul r6,r8,r6
	mov r5,r6
	ldr r6,.LPIC1
	add r4,r6,r5,lsl #2
	mov r6,r7
.mainL7:
	mov r7,r6
	add r5,r4,r7,lsl #2
	mov r7,#1
	str r7,[r5]
	mov r7,r6
	ldr r5,.LPIC0
	add r3,r5,r7,lsl #2
	ldr r7,[r3]
	add r5,r7,#1
	str r5,[r3]
	@%r29 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
.mainL8:
	cmp r7,#0
	beq .mainL9
.mainL13:
	mov r6,r7
	bl .mainL7
	.section	.note.GNU-stack,"",%progbits
