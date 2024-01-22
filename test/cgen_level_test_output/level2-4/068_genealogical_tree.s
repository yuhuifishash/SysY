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
topo:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#28
.topoL0:
	str r0,[fp,#-28]
.topoL1:
	mov r8,#0
	str r8,[fp,#-24]
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#1
	str r8,[fp,#-16]
	mov r8,#1
	str r8,[fp,#-12]
.topoL2:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-28]
	cmp r8,r7
	ble .topoL3
.topoL4:
	mov r8,#0
	str r8,[fp,#-16]
.topoL16:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-28]
	cmp r8,r7
	blt .topoL17
.topoL18:
	add sp,sp,#28
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.topoL17:
	ldr r8,[fp,#-16]
	mov r7,r8
	ldr r8,.LPIC2
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	@call void @putint(i32 %r76)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#10
	@call void @putch(i32 %r77)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .topoL16
.topoL3:
	mov r8,#1
	str r8,[fp,#-12]
.topoL5:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-28]
	cmp r8,r7
	ble .topoL6
.topoL7:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	mov r6,r7
	ldr r7,.LPIC2
	add r5,r7,r6,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
	mov r8,#1
	rsb r7,r8,#0
	ldr r8,[fp,#-24]
	mov r6,r8
	ldr r8,.LPIC0
	add r5,r8,r6,lsl #2
	str r7,[r5]
	mov r8,#1
	str r8,[fp,#-12]
.topoL11:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-28]
	cmp r8,r7
	ble .topoL12
.topoL13:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .topoL2
.topoL12:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-12]
	mov r6,#10
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	cmp r8,#0
	bne .topoL14
.topoL15:
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .topoL11
.topoL14:
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC0
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	mov r7,#1
	sub r6,r8,r7
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC0
	add r5,r8,r7,lsl #2
	str r6,[r5]
	bl .topoL15
.topoL6:
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC0
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	mov r7,#0
	cmp r8,r7
	beq .topoL8
.topoL9:
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .topoL5
.topoL8:
	ldr r8,[fp,#-12]
	str r8,[fp,#-24]
	bl .topoL7
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#20
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#1
	str r8,[fp,#-12]
	mov r8,#5
	str r8,[fp,#-20]
.mainL2:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-20]
	cmp r8,r7
	ble .mainL3
.mainL4:
	ldr r8,[fp,#-20]
	@call void @topo(i32 %r33)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl topo
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	mov r0,r8
	add sp,sp,#20
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL3:
	@%r12 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-16]
.mainL5:
	ldr r8,[fp,#-16]
	mov r7,#0
	cmp r8,r7
	bne .mainL6
.mainL7:
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .mainL2
.mainL6:
	mov r8,#1
	ldr r7,[fp,#-12]
	ldr r6,[fp,#-16]
	mov r5,#10
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC1
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-16]
	mov r7,r8
	ldr r8,.LPIC0
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	mov r7,#1
	add r6,r8,r7
	ldr r8,[fp,#-16]
	mov r7,r8
	ldr r8,.LPIC0
	add r5,r8,r7,lsl #2
	str r6,[r5]
	@%r29 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-16]
	bl .mainL5
	.section	.note.GNU-stack,"",%progbits
