.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#24
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-24]
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#0
	str r8,[fp,#-24]
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
.mainL2:
	ldr r8,[fp,#-24]
	mov r7,#21
	cmp r8,r7
	blt .mainL3
.mainL4:
	mov r8,#0
	mov r0,r8
	add sp,sp,#24
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL3:
.mainL5:
	ldr r8,[fp,#-20]
	mov r7,#101
	ldr r6,[fp,#-24]
	sub r5,r7,r6
	cmp r8,r5
	blt .mainL6
.mainL7:
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-24]
	bl .mainL2
.mainL6:
	mov r8,#100
	ldr r7,[fp,#-24]
	sub r6,r8,r7
	ldr r8,[fp,#-20]
	sub r7,r6,r8
	str r7,[fp,#-16]
	mov r8,#5
	ldr r7,[fp,#-24]
	mul r6,r8,r7
	mov r8,#1
	ldr r7,[fp,#-20]
	mul r5,r8,r7
	add r8,r6,r5
	ldr r7,[fp,#-16]
	mov r6,#2
	@%r37 = call i32 @__aeabi_idiv(i32 %r35,i32 %r36)
	mov r0,r7
	mov r1,r6
	bl __aeabi_idiv
	mov r5,r0
	add r7,r8,r5
	mov r8,#100
	cmp r7,r8
	beq .mainL8
.mainL9:
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
	bl .mainL5
.mainL8:
	ldr r8,[fp,#-24]
	@call void @putint(i32 %r43)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-20]
	@call void @putint(i32 %r44)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-16]
	@call void @putint(i32 %r45)
	mov r0,r8
	bl putint
	mov r8,#10
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putch(i32 %r47)
	mov r0,r8
	bl putch
	bl .mainL9
	.section	.note.GNU-stack,"",%progbits
