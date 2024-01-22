.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
enc:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.encL0:
.encL1:
	cmp r0,#25
	bgt .encL2
.encL3:
	sub r8,r0,#15
	mov r7,r8
.encL4:
	mov r0,r7
	add sp,sp,#8
	pop {r7,r8}
	pop {fp,pc}
.encL2:
	add r8,r0,#60
	mov r7,r8
	bl .encL4
dec:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.decL0:
.decL1:
	cmp r0,#85
	bgt .decL2
.decL3:
	add r8,r0,#14
	mov r7,r8
.decL4:
	mov r0,r7
	add sp,sp,#8
	pop {r7,r8}
	pop {fp,pc}
.decL2:
	sub r8,r0,#59
	mov r7,r8
	bl .decL4
main:@
	push {fp,lr}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
.mainL2:
.mainL4:
.mainL5:
.mainL7:
.mainL3:
.mainL8:
.mainL10:
.mainL11:
.mainL13:
.mainL9:
	@call void @putint(i32 401)
	movw r0,#401
	movt r0,#0  @ 401
	bl putint
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
	mov r0,#0
	add sp,sp,#8
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
