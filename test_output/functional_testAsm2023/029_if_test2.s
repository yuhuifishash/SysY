.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
ifElseIf:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.ifElseIfL0:
.ifElseIfL1:
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#5
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#10
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	mov r7,#6
	cmp r8,r7
	beq .ifElseIfL2
.ifElseIfL5:
	ldr r8,[fp,#-12]
	mov r7,#11
	cmp r8,r7
	beq .ifElseIfL2
.ifElseIfL3:
	ldr r8,[fp,#-12]
	mov r7,#10
	cmp r8,r7
	beq .ifElseIfL10
.ifElseIfL8:
	ldr r8,[fp,#-12]
	mov r7,#10
	cmp r8,r7
	beq .ifElseIfL15
.ifElseIfL13:
	ldr r8,[fp,#-16]
	mov r7,r8
	rsb r8,r7,#0
	str r8,[fp,#-16]
.ifElseIfL14:
.ifElseIfL9:
.ifElseIfL4:
	ldr r8,[fp,#-16]
	mov r0,r8
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
.ifElseIfL15:
	ldr r8,[fp,#-16]
	mov r7,#5
	rsb r6,r7,#0
	cmp r8,r6
	bne .ifElseIfL13
.ifElseIfL12:
	ldr r8,[fp,#-16]
	mov r7,#15
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .ifElseIfL14
.ifElseIfL10:
	ldr r8,[fp,#-16]
	mov r7,#1
	cmp r8,r7
	bne .ifElseIfL8
.ifElseIfL7:
	mov r8,#25
	str r8,[fp,#-16]
	bl .ifElseIfL9
.ifElseIfL2:
	ldr r8,[fp,#-16]
	mov r0,r8
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
main:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r0 = call i32 @ifElseIf()
	sub sp,sp,#4 @stack align 8bytes
	bl ifElseIf
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	@call void @putint(i32 %r0)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	mov r0,r8
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
