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
	sub sp,sp,#28
.mainL0:
.mainL1:
	movw r8,#893
	movt r8,#0  @ 893
	mov r7,r8
	str r7,[fp,#-28]
	mov r8,#716
	str r8,[fp,#-24]
	movw r8,#837
	movt r8,#0  @ 837
	mov r7,r8
	str r7,[fp,#-20]
	ldr r8,[fp,#-20]
	mov r7,#128
	add r6,r8,r7
	str r6,[fp,#-20]
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	add r6,r8,r7
	str r6,[fp,#-24]
	mov r8,#241
	str r8,[fp,#-16]
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-16]
	add r6,r8,r7
	mov r8,#412
	sub r7,r6,r8
	str r7,[fp,#-20]
	movw r8,#771
	movt r8,#0  @ 771
	mov r7,r8
	str r7,[fp,#-12]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	add r6,r8,r7
	mov r8,#18
	sub r7,r6,r8
	str r7,[fp,#-16]
	ldr r8,[fp,#-16]
	mov r7,#66
	add r6,r8,r7
	str r6,[fp,#-12]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-20]
	add r6,r8,r7
	mov r8,#33
	sub r7,r6,r8
	str r7,[fp,#-16]
	ldr r8,[fp,#-16]
	mov r7,#55
	sub r6,r8,r7
	str r6,[fp,#-20]
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-16]
	add r6,r8,r7
	mov r8,#21
	@%r41 = call i32 @__modsi3(i32 %r39,i32 %r40)
	mov r0,r6
	mov r1,r8
	bl __modsi3
	mov r7,r0
	mov r0,r7
	add sp,sp,#28
	pop {r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
