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
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r1 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	@%r3 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
.mainL11:
	mul r6,r8,r7
	mul r8,r6,r7
	mov r7,#0
.mainL3:
.mainL10:
	mov r6,#30
	mul r6,r7,r6
	mov r5,r6
	ldr r6,.LPIC0
	add r4,r6,r5,lsl #2
	mov r6,#0
.mainL7:
	mov r5,r6
	add r3,r4,r5,lsl #2
	ldr r5,[r3]
	add r2,r5,r8
	str r2,[r3]
	add r5,r6,#1
.mainL8:
	cmp r5,#30
	blt .mainL13
.mainL9:
	add r3,r7,#1
.mainL4:
	cmp r3,#30
	blt .mainL12
.mainL5:
	mov r0,#0
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL12:
	mov r7,r3
	bl .mainL3
.mainL13:
	mov r6,r5
	bl .mainL7
	.section	.note.GNU-stack,"",%progbits
