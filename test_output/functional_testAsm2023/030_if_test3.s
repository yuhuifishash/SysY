.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
ififElse:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.ififElseL0:
.ififElseL1:
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
	beq .ififElseL2
.ififElseL3:
	ldr r8,[fp,#-16]
	mov r0,r8
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
.ififElseL2:
	ldr r8,[fp,#-12]
	mov r7,#10
	cmp r8,r7
	beq .ififElseL4
.ififElseL5:
	ldr r8,[fp,#-16]
	mov r7,#15
	add r6,r8,r7
	str r6,[fp,#-16]
.ififElseL6:
	bl .ififElseL3
.ififElseL4:
	mov r8,#25
	str r8,[fp,#-16]
	bl .ififElseL6
main:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r0 = call i32 @ififElse()
	sub sp,sp,#4 @stack align 8bytes
	bl ififElse
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mov r0,r8
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
