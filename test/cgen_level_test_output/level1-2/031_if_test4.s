.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
if_ifElse_:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.if_ifElse_L0:
.if_ifElse_L1:
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#5
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#10
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	mov r7,#5
	cmp r8,r7
	beq .if_ifElse_L2
.if_ifElse_L3:
	ldr r8,[fp,#-16]
	mov r0,r8
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
.if_ifElse_L2:
	ldr r8,[fp,#-12]
	mov r7,#10
	cmp r8,r7
	beq .if_ifElse_L4
.if_ifElse_L5:
	ldr r8,[fp,#-16]
	mov r7,#15
	add r6,r8,r7
	str r6,[fp,#-16]
.if_ifElse_L6:
	bl .if_ifElse_L3
.if_ifElse_L4:
	mov r8,#25
	str r8,[fp,#-16]
	bl .if_ifElse_L6
main:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r0 = call i32 @if_ifElse_()
	sub sp,sp,#4 @stack align 8bytes
	bl if_ifElse_
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mov r0,r8
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
