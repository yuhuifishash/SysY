.arch armv7-a
.fpu vfpv3-d16
.arm
.data
maxN:
	.word  1005
parent:
	.space  4020
.text
.global main
.LPIC0:
	.word  maxN
.LPIC1:
	.word  parent
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#32
.mainL0:
.mainL1:
	@%r1 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-32]
	@%r3 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-28]
	mov r8,#0
	str r8,[fp,#-24]
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-24]
.mainL2:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-32]
	cmp r8,r7
	blt .mainL3
.mainL4:
	mov r8,#0
	str r8,[fp,#-24]
.mainL5:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-28]
	cmp r8,r7
	blt .mainL6
.mainL7:
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#0
	str r8,[fp,#-24]
.mainL8:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-32]
	cmp r8,r7
	blt .mainL9
.mainL10:
	ldr r8,[fp,#-12]
	@call void @putint(i32 %r56)
	mov r0,r8
	bl putint
	mov r8,#0
	mov r0,r8
	add sp,sp,#32
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL9:
	ldr r8,[fp,#-24]
	mov r7,r8
	ldr r8,.LPIC1
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-24]
	cmp r8,r7
	beq .mainL11
.mainL12:
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-24]
	bl .mainL8
.mainL11:
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .mainL12
.mainL6:
	@%r28 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-20]
	@%r29 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-16]
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-16]
	@call void @merge(i32 %r30,i32 %r31)
	mov r0,r8
	mov r1,r7
	bl merge
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-24]
	bl .mainL5
.mainL3:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-24]
	mov r6,r7
	ldr r7,.LPIC1
	add r5,r7,r6,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-24]
	bl .mainL2
find:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.findL0:
	str r0,[fp,#-12]
.findL1:
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC1
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-12]
	cmp r8,r7
	beq .findL2
.findL3:
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC1
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	@%r13 = call i32 @find(i32 %r12)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl find
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r8,[fp,#-12]
	mov r6,r8
	ldr r8,.LPIC1
	add r5,r8,r6,lsl #2
	str r7,[r5]
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC1
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	mov r0,r8
	add sp,sp,#12
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.findL2:
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#12
	pop {r5,r6,r7,r8}
	pop {fp,pc}
merge:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#24
.mergeL0:
	str r0,[fp,#-20]
	str r1,[fp,#-24]
.mergeL1:
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-20]
	@%r9 = call i32 @find(i32 %r8)
	mov r0,r8
	bl find
	mov r7,r0
	str r7,[fp,#-16]
	ldr r8,[fp,#-24]
	@%r11 = call i32 @find(i32 %r10)
	mov r0,r8
	bl find
	mov r7,r0
	str r7,[fp,#-12]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	cmp r8,r7
	bne .mergeL2
.mergeL3:
	add sp,sp,#24
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mergeL2:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	mov r6,r7
	ldr r7,.LPIC1
	add r5,r7,r6,lsl #2
	str r8,[r5]
	bl .mergeL3
	.section	.note.GNU-stack,"",%progbits
