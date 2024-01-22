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
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r1 = call i32 @getint()
	bl getint
	mov r8,r0
	@%r3 = call i32 @getint()
	bl getint
	mov r7,r0
	movw r6,#51217
	movt r6,#4405  @ 288737297
	smmul r6,r8,r6
	asr r5,r8,#31
	rsb r6,r5,r6,asr #26
	movw r5,#1
	movt r5,#15232  @ 998244353
	mul r6,r6,r5
	sub r5,r8,r6
	rsbs r8,r7,#0
	and r6,r7,#31
	and r8,r8,#31
	it pl
	rsbpl r6,r8,#0
	add r8,r5,r6
	mov r0,r8
	add sp,sp,#8
	pop {r5,r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
