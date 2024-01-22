.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.mainL0:
.mainL1:
	@%r1 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-16]
	@%r3 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	movw r7,#1
	movt r7,#15232  @ 998244353
	mov r6,r7
	@%r6 = call i32 @__modsi3(i32 %r4,i32 %r5)
	mov r0,r8
	mov r1,r6
	bl __modsi3
	mov r7,r0
	ldr r8,[fp,#-12]
	mov r6,#32
	@%r9 = call i32 @__modsi3(i32 %r7,i32 %r8)
	mov r0,r8
	mov r1,r6
	bl __modsi3
	mov r5,r0
	add r8,r7,r5
	mov r0,r8
	add sp,sp,#16
	pop {r5,r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
