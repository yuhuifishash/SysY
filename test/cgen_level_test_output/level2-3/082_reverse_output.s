.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
reverse:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.reverseL0:
	str r0,[fp,#-16]
.reverseL1:
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	mov r7,#1
	cmp r8,r7
	ble .reverseL2
.reverseL3:
	@%r11 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	mov r7,#1
	sub r6,r8,r7
	@call void @reverse(i32 %r14)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	bl reverse
	add sp,sp,#4 @stack align 8bytes
	ldr r8,[fp,#-12]
	@call void @putint(i32 %r15)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
.reverseL4:
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
.reverseL2:
	@%r9 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putint(i32 %r10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	bl .reverseL4
main:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#12
.mainL0:
.mainL1:
	mov r8,#200
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @reverse(i32 %r2)
	mov r0,r8
	bl reverse
	mov r8,#0
	mov r0,r8
	add sp,sp,#12
	pop {r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
