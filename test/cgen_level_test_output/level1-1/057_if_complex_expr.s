.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#28
.mainL0:
.mainL1:
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
	mov r8,#5
	str r8,[fp,#-28]
	mov r8,#5
	str r8,[fp,#-24]
	mov r8,#1
	str r8,[fp,#-20]
	mov r8,#2
	rsb r7,r8,#0
	str r7,[fp,#-16]
	mov r8,#2
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	mov r7,#1
	mul r6,r8,r7
	mov r8,#2
	@%r20 = call i32 @__aeabi_idiv(i32 %r18,i32 %r19)
	mov r0,r6
	mov r1,r8
	bl __aeabi_idiv
	mov r7,r0
	mov r8,#0
	cmp r7,r8
	blt .mainL2
.mainL4:
	ldr r8,[fp,#-28]
	ldr r7,[fp,#-24]
	sub r6,r8,r7
	mov r8,#0
	cmp r6,r8
	bne .mainL6
.mainL3:
	ldr r8,[fp,#-16]
	mov r7,#2
	@%r50 = call i32 @__modsi3(i32 %r48,i32 %r49)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	mov r8,#67
	add r7,r6,r8
	mov r8,#0
	cmp r7,r8
	blt .mainL8
.mainL10:
	ldr r8,[fp,#-28]
	ldr r7,[fp,#-24]
	sub r6,r8,r7
	mov r8,#0
	cmp r6,r8
	bne .mainL12
.mainL9:
	mov r8,#0
	mov r0,r8
	add sp,sp,#28
	pop {r6,r7,r8}
	pop {fp,pc}
.mainL12:
	ldr r8,[fp,#-20]
	mov r7,#2
	add r6,r8,r7
	mov r8,#2
	@%r68 = call i32 @__modsi3(i32 %r66,i32 %r67)
	mov r0,r6
	mov r1,r8
	bl __modsi3
	mov r7,r0
	mov r8,#0
	cmp r7,r8
	beq .mainL9
.mainL8:
	mov r8,#4
	str r8,[fp,#-12]
	ldr r7,[fp,#-12]
	@call void @putint(i32 %r80)
	mov r0,r7
	bl putint
	bl .mainL9
.mainL6:
	ldr r8,[fp,#-20]
	mov r7,#3
	add r6,r8,r7
	mov r8,#2
	@%r36 = call i32 @__modsi3(i32 %r34,i32 %r35)
	mov r0,r6
	mov r1,r8
	bl __modsi3
	mov r7,r0
	mov r8,#0
	cmp r7,r8
	beq .mainL3
.mainL2:
	ldr r8,[fp,#-12]
	@call void @putint(i32 %r47)
	mov r0,r8
	bl putint
	bl .mainL3
	.section	.note.GNU-stack,"",%progbits
