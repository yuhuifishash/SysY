.arch armv7-a
.fpu vfpv3-d16
.arm
.data
A:
	.space  3600
.text
.global main
.LPIC0:
	.word  A
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#24
.mainL0:
.mainL1:
	@%r1 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-24]
	@%r3 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
.mainL2:
	ldr r8,[fp,#-16]
	mov r7,#30
	cmp r8,r7
	blt .mainL3
.mainL4:
	mov r8,#0
	mov r0,r8
	add sp,sp,#24
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL3:
	mov r8,#0
	str r8,[fp,#-12]
.mainL5:
	ldr r8,[fp,#-12]
	mov r7,#30
	cmp r8,r7
	blt .mainL6
.mainL7:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .mainL2
.mainL6:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	mov r6,#30
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC0
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-24]
	ldr r6,[fp,#-20]
	mul r5,r7,r6
	ldr r7,[fp,#-20]
	mul r6,r5,r7
	add r7,r8,r6
	ldr r8,[fp,#-16]
	ldr r6,[fp,#-12]
	mov r5,#30
	mul r5,r8,r5
	mov r8,r5
	add r8,r8,r6
	ldr r6,.LPIC0
	add r5,r6,r8,lsl #2
	str r7,[r5]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .mainL5
	.section	.note.GNU-stack,"",%progbits
