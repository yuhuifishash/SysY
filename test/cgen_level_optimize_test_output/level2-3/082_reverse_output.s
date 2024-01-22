.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
reverse:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.reverseL0:
.reverseL1:
	cmp r0,#1
	ble .reverseL2
.reverseL3:
	@%r11 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	push {r0}
	bl getint
	mov r8,r0
	pop {r0}
	add sp,sp,#4 @stack align 8bytes
	sub r7,r0,#1
	@call void @reverse(i32 %r14)
	mov r0,r7
	bl reverse
	@call void @putint(i32 %r11)
	mov r0,r8
	bl putint
.reverseL4:
	add sp,sp,#8
	pop {r7,r8}
	pop {fp,pc}
.reverseL2:
	@%r9 = call i32 @getint()
	bl getint
	mov r8,r0
	@call void @putint(i32 %r9)
	mov r0,r8
	bl putint
	bl .reverseL4
main:@
	push {fp,lr}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@call void @reverse(i32 200)
	mov r0,#200
	bl reverse
	mov r0,#0
	add sp,sp,#8
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
