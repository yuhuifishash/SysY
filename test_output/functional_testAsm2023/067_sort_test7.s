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
merge_sort:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#32
.merge_sortL0:
	str r0,[fp,#-28]
	str r1,[fp,#-32]
.merge_sortL1:
	ldr r8,[fp,#-28]
	mov r7,#1
	add r6,r8,r7
	ldr r8,[fp,#-32]
	cmp r6,r8
	bge .merge_sortL2
.merge_sortL3:
	ldr r8,[fp,#-28]
	ldr r7,[fp,#-32]
	add r6,r8,r7
	mov r8,#2
	@%r16 = call i32 @__aeabi_idiv(i32 %r14,i32 %r15)
	mov r0,r6
	mov r1,r8
	bl __aeabi_idiv
	mov r7,r0
	str r7,[fp,#-24]
	ldr r8,[fp,#-28]
	ldr r7,[fp,#-24]
	@call void @merge_sort(i32 %r17,i32 %r18)
	mov r0,r8
	mov r1,r7
	bl merge_sort
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-32]
	@call void @merge_sort(i32 %r19,i32 %r20)
	mov r0,r8
	mov r1,r7
	bl merge_sort
	ldr r8,[fp,#-28]
	str r8,[fp,#-20]
	ldr r8,[fp,#-24]
	str r8,[fp,#-16]
	ldr r8,[fp,#-28]
	str r8,[fp,#-12]
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-24]
	cmp r8,r7
	blt .merge_sortL8
.merge_sortL7:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-24]
	cmp r8,r7
	blt .merge_sortL16
.merge_sortL18:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-32]
	cmp r8,r7
	blt .merge_sortL20
.merge_sortL22:
	ldr r8,[fp,#-28]
	ldr r7,[fp,#-32]
	cmp r8,r7
	blt .merge_sortL24
.merge_sortL26:
	add sp,sp,#32
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.merge_sortL24:
	mov r8,#1
	ldr r7,[fp,#-28]
	mov r6,#100
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC0
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#0
	ldr r6,[fp,#-28]
	mov r5,#100
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC0
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-28]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-28]
.merge_sortL25:
	ldr r8,[fp,#-28]
	ldr r7,[fp,#-32]
	cmp r8,r7
	blt .merge_sortL24
	bge .merge_sortL26
.merge_sortL20:
	mov r8,#0
	ldr r7,[fp,#-16]
	mov r6,#100
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC0
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#1
	ldr r6,[fp,#-12]
	mov r5,#100
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC0
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.merge_sortL21:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-32]
	cmp r8,r7
	blt .merge_sortL20
	bge .merge_sortL22
.merge_sortL16:
	mov r8,#0
	ldr r7,[fp,#-20]
	mov r6,#100
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC0
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#1
	ldr r6,[fp,#-12]
	mov r5,#100
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC0
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.merge_sortL17:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-24]
	cmp r8,r7
	blt .merge_sortL16
	bge .merge_sortL18
.merge_sortL8:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-32]
	cmp r8,r7
	bge .merge_sortL7
.merge_sortL5:
	mov r8,#0
	ldr r7,[fp,#-20]
	mov r6,#100
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC0
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#0
	ldr r6,[fp,#-16]
	mov r5,#100
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC0
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	cmp r8,r7
	blt .merge_sortL10
.merge_sortL11:
	mov r8,#0
	ldr r7,[fp,#-16]
	mov r6,#100
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC0
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#1
	ldr r6,[fp,#-12]
	mov r5,#100
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC0
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.merge_sortL12:
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.merge_sortL6:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-24]
	cmp r8,r7
	bge .merge_sortL7
.merge_sortL13:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-32]
	cmp r8,r7
	blt .merge_sortL5
	bge .merge_sortL7
.merge_sortL10:
	mov r8,#0
	ldr r7,[fp,#-20]
	mov r6,#100
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC0
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#1
	ldr r6,[fp,#-12]
	mov r5,#100
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC0
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
	bl .merge_sortL12
.merge_sortL2:
	add sp,sp,#32
	pop {r5,r6,r7,r8}
	pop {fp,pc}
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.mainL0:
.mainL1:
	mov r8,#0
	mov r7,#100
	mul r7,r8,r7
	mov r8,r7
	ldr r7,.LPIC0
	add r6,r7,r8,lsl #2
	@%r3 = call i32 @getarray(ptr %r2)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	bl getarray
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-12]
	mov r8,#0
	ldr r7,[fp,#-12]
	@call void @merge_sort(i32 %r4,i32 %r5)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl merge_sort
	add sp,sp,#4 @stack align 8bytes
	ldr r8,[fp,#-12]
	mov r7,#0
	mov r6,#100
	mul r6,r7,r6
	mov r7,r6
	ldr r6,.LPIC0
	add r5,r6,r7,lsl #2
	@call void @putarray(i32 %r6,ptr %r8)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r5
	bl putarray
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	mov r0,r8
	add sp,sp,#12
	pop {r5,r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
