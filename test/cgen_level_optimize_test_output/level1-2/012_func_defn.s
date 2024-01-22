.arch armv7-a
.fpu vfpv3-d16
.arm
.data
a:
	.word  0
.text
.global main
.LPIC0:
	.word  a
func:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.funcL0:
.funcL1:
	sub r8,r0,#1
	mov r0,r8
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
main:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	mov r8,#10
	ldr r7,.LPIC0
	str r8,[r7]
	ldr r8,.LPIC0
	ldr r7,[r8]
.mainL2:
.mainL4:
	sub r8,r7,#1
.mainL3:
	mov r0,r8
	add sp,sp,#8
	pop {r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
