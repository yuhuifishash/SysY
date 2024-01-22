.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#10
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#3
	@%r5 = call i32 @__modsi3(i32 %r3,i32 %r4)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	mov r0,r6
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
