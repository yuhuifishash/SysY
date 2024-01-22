.arch armv7-a
.fpu vfpv3-d16
.arm
.data
a:
	.word  0
b:
	.word  0
.text
.global main
.LPIC0:
	.word  a
.LPIC1:
	.word  b
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.mainL0:
.mainL1:
	@%r0 = call i32 @getint()
	bl getint
	mov r8,r0
	ldr r7,.LPIC0
	str r8,[r7]
	@%r1 = call i32 @getint()
	bl getint
	mov r8,r0
	ldr r7,.LPIC1
	str r8,[r7]
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,.LPIC0
	ldr r7,[r8]
	ldr r8,.LPIC1
	ldr r6,[r8]
	cmp r7,r6
	beq .mainL5
.mainL3:
	mov r8,#0
	str r8,[fp,#-12]
.mainL4:
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
.mainL5:
	ldr r8,.LPIC0
	ldr r7,[r8]
	mov r8,#3
	cmp r7,r8
	beq .mainL3
.mainL2:
	mov r8,#1
	str r8,[fp,#-12]
	bl .mainL4
	.section	.note.GNU-stack,"",%progbits
