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
func:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.funcL0:
	str r0,[fp,#-12]
.funcL1:
	ldr r8,[fp,#-12]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
main:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#10
	ldr r7,.LPIC0
	str r8,[r7]
	ldr r8,.LPIC0
	ldr r7,[r8]
	@%r4 = call i32 @func(i32 %r3)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl func
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#12
	pop {r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
