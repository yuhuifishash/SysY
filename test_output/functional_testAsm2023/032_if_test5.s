.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
if_if_Else:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.if_if_ElseL0:
.if_if_ElseL1:
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
	beq .if_if_ElseL2
.if_if_ElseL3:
	ldr r8,[fp,#-16]
	mov r7,#15
	add r6,r8,r7
	str r6,[fp,#-16]
.if_if_ElseL4:
	ldr r8,[fp,#-16]
	mov r0,r8
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
.if_if_ElseL2:
	ldr r8,[fp,#-12]
	mov r7,#10
	cmp r8,r7
	beq .if_if_ElseL5
.if_if_ElseL6:
	bl .if_if_ElseL4
.if_if_ElseL5:
	mov r8,#25
	str r8,[fp,#-16]
	bl .if_if_ElseL6
main:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r0 = call i32 @if_if_Else()
	sub sp,sp,#4 @stack align 8bytes
	bl if_if_Else
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mov r0,r8
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
