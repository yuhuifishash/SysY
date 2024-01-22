.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
ifElse:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.ifElseL0:
.ifElseL1:
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#5
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#5
	cmp r8,r7
	beq .ifElseL2
.ifElseL3:
	ldr r8,[fp,#-12]
	mov r7,#2
	mul r6,r8,r7
	str r6,[fp,#-12]
.ifElseL4:
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
.ifElseL2:
	mov r8,#25
	str r8,[fp,#-12]
	bl .ifElseL4
main:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r0 = call i32 @ifElse()
	sub sp,sp,#4 @stack align 8bytes
	bl ifElse
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mov r0,r8
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
