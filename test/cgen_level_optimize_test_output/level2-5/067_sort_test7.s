.arch armv7-a
.fpu vfpv3-d16
.arm
.data
buf:
	.space  800
.text
.global main
.LPIC0:
	.word  buf
merge_sort:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#36
.merge_sortL0:
	mov r9,r1
	str r9,[fp,#-36]
	mov r9,r0
	str r9,[fp,#-28]
.merge_sortL1:
	ldr r9,[fp,#-28]
	add r8,r9,#1
	ldr r9,[fp,#-36]
	cmp r8,r9
	bge .merge_sortL2
.merge_sortL3:
	ldr r9,[fp,#-28]
	ldr r10,[fp,#-36]
	add r8,r9,r10
	add r7,r8,r8,lsr #31
	asr r9,r7,#1
	str r9,[fp,#-32]
	@call void @merge_sort(i32 %r0,i32 %r16)
	push {r0,r1}
	ldr r0,[fp,#-28]
	ldr r1,[fp,#-32]
	bl merge_sort
	pop {r0,r1}
	@call void @merge_sort(i32 %r16,i32 %r1)
	push {r0,r1}
	ldr r0,[fp,#-32]
	ldr r1,[fp,#-36]
	bl merge_sort
	pop {r0,r1}
	ldr r9,[fp,#-28]
	ldr r10,[fp,#-32]
	cmp r9,r10
	blt .merge_sortL8
.merge_sortL32:
	ldr r9,[fp,#-28]
	mov r10,r9
	str r10,[fp,#-16]
	ldr r9,[fp,#-32]
	mov r10,r9
	str r10,[fp,#-20]
	ldr r9,[fp,#-28]
	mov r10,r9
	str r10,[fp,#-24]
.merge_sortL7:
	ldr r9,[fp,#-24]
	ldr r10,[fp,#-32]
	cmp r9,r10
	blt .merge_sortL28
.merge_sortL37:
	ldr r9,[fp,#-16]
	mov r10,r9
	str r10,[fp,#-12]
.merge_sortL18:
	ldr r9,[fp,#-20]
	ldr r10,[fp,#-36]
	cmp r9,r10
	blt .merge_sortL29
.merge_sortL22:
	ldr r9,[fp,#-28]
	ldr r10,[fp,#-36]
	cmp r9,r10
	blt .merge_sortL30
.merge_sortL26:
	add sp,sp,#36
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.merge_sortL30:
	ldr r9,[fp,#-28]
	mov r3,r9
.merge_sortL24:
	mov r2,r3
	add r2,r2,#100
	ldr r4,.LPIC0
	add r7,r4,r2,lsl #2
	ldr r4,[r7]
	mov r7,r3
	ldr r2,.LPIC0
	add r6,r2,r7,lsl #2
	str r4,[r6]
	add r7,r3,#1
.merge_sortL25:
	ldr r9,[fp,#-36]
	cmp r7,r9
	bge .merge_sortL26
.merge_sortL40:
	mov r3,r7
	bl .merge_sortL24
.merge_sortL29:
	ldr r9,[fp,#-12]
	mov r7,r9
	ldr r9,[fp,#-20]
	mov r6,r9
.merge_sortL20:
	mov r4,r6
	ldr r3,.LPIC0
	add r2,r3,r4,lsl #2
	ldr r4,[r2]
	mov r3,r7
	add r3,r3,#100
	ldr r2,.LPIC0
	add r5,r2,r3,lsl #2
	str r4,[r5]
	add r5,r6,#1
	add r4,r7,#1
.merge_sortL21:
	ldr r9,[fp,#-36]
	cmp r5,r9
	bge .merge_sortL22
.merge_sortL39:
	mov r7,r4
	mov r6,r5
	bl .merge_sortL20
.merge_sortL28:
	ldr r9,[fp,#-16]
	mov r7,r9
	ldr r9,[fp,#-24]
	mov r6,r9
.merge_sortL16:
	mov r5,r6
	ldr r4,.LPIC0
	add r3,r4,r5,lsl #2
	ldr r5,[r3]
	mov r4,r7
	add r4,r4,#100
	ldr r3,.LPIC0
	add r2,r3,r4,lsl #2
	str r5,[r2]
	add r5,r6,#1
	add r4,r7,#1
.merge_sortL17:
	ldr r9,[fp,#-32]
	cmp r5,r9
	blt .merge_sortL36
.merge_sortL38:
	mov r9,r4
	str r9,[fp,#-12]
	bl .merge_sortL18
.merge_sortL36:
	mov r7,r4
	mov r6,r5
	bl .merge_sortL16
.merge_sortL8:
	ldr r9,[fp,#-32]
	ldr r10,[fp,#-36]
	cmp r9,r10
	blt .merge_sortL27
.merge_sortL34:
	ldr r9,[fp,#-28]
	mov r10,r9
	str r10,[fp,#-16]
	ldr r9,[fp,#-32]
	mov r10,r9
	str r10,[fp,#-20]
	ldr r9,[fp,#-28]
	mov r10,r9
	str r10,[fp,#-24]
	bl .merge_sortL7
.merge_sortL27:
	ldr r9,[fp,#-28]
	mov r7,r9
	ldr r9,[fp,#-32]
	mov r6,r9
	ldr r9,[fp,#-28]
	mov r5,r9
.merge_sortL5:
	mov r4,r5
	ldr r3,.LPIC0
	add r2,r3,r4,lsl #2
	ldr r4,[r2]
	mov r3,r6
	ldr r2,.LPIC0
	add r0,r2,r3,lsl #2
	ldr r3,[r0]
	cmp r4,r3
	blt .merge_sortL10
.merge_sortL11:
	mov r4,r6
	ldr r3,.LPIC0
	add r2,r3,r4,lsl #2
	ldr r4,[r2]
	mov r3,r7
	add r3,r3,#100
	ldr r2,.LPIC0
	add r0,r2,r3,lsl #2
	str r4,[r0]
	add r4,r6,#1
	mov r3,r4
	mov r4,r5
.merge_sortL12:
	add r2,r7,#1
.merge_sortL6:
	ldr r9,[fp,#-32]
	cmp r4,r9
	blt .merge_sortL13
.merge_sortL33:
	mov r9,r2
	str r9,[fp,#-16]
	mov r9,r3
	str r9,[fp,#-20]
	mov r9,r4
	str r9,[fp,#-24]
	bl .merge_sortL7
.merge_sortL13:
	ldr r9,[fp,#-36]
	cmp r3,r9
	blt .merge_sortL31
.merge_sortL35:
	mov r9,r2
	str r9,[fp,#-16]
	mov r9,r3
	str r9,[fp,#-20]
	mov r9,r4
	str r9,[fp,#-24]
	bl .merge_sortL7
.merge_sortL31:
	mov r7,r2
	mov r6,r3
	mov r5,r4
	bl .merge_sortL5
.merge_sortL10:
	mov r2,r5
	ldr r0,.LPIC0
	add r8,r0,r2,lsl #2
	ldr r2,[r8]
	mov r8,r7
	add r8,r8,#100
	ldr r0,.LPIC0
	add r1,r0,r8,lsl #2
	str r2,[r1]
	add r8,r5,#1
	mov r3,r6
	mov r4,r8
	bl .merge_sortL12
.merge_sortL2:
	add sp,sp,#36
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
main:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	ldr r8,.LPIC0
	@%r3 = call i32 @getarray(ptr %r2)
	mov r0,r8
	bl getarray
	mov r7,r0
	@call void @merge_sort(i32 0,i32 %r3)
	mov r0,#0
	mov r1,r7
	bl merge_sort
	@call void @putarray(i32 %r3,ptr %r2)
	mov r0,r7
	mov r1,r8
	bl putarray
	mov r0,#0
	add sp,sp,#8
	pop {r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
