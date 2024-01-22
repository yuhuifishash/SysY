.arch armv7-a
.fpu vfpv3-d16
.arm
.data
g:
	.word  0
h:
	.word  0
f:
	.word  0
e:
	.word  0
.text
.global main
.LPIC0:
	.word  e
.LPIC1:
	.word  f
.LPIC2:
	.word  g
.LPIC3:
	.word  h
EightWhile:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#24
.EightWhileL0:
.EightWhileL1:
	mov r8,#0
	str r8,[fp,#-24]
	mov r8,#5
	str r8,[fp,#-24]
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#6
	str r8,[fp,#-20]
	mov r8,#7
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#10
	str r8,[fp,#-12]
.EightWhileL2:
	ldr r8,[fp,#-24]
	mov r7,#20
	cmp r8,r7
	blt .EightWhileL3
.EightWhileL4:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	ldr r6,[fp,#-12]
	add r5,r7,r6
	add r7,r8,r5
	ldr r8,[fp,#-16]
	add r6,r7,r8
	ldr r8,.LPIC0
	ldr r7,[r8]
	ldr r8,[fp,#-12]
	add r5,r7,r8
	ldr r8,.LPIC2
	ldr r7,[r8]
	sub r8,r5,r7
	ldr r7,.LPIC3
	ldr r5,[r7]
	add r7,r8,r5
	sub r8,r6,r7
	mov r0,r8
	add sp,sp,#24
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.EightWhileL3:
	ldr r8,[fp,#-24]
	mov r7,#3
	add r6,r8,r7
	str r6,[fp,#-24]
.EightWhileL5:
	ldr r8,[fp,#-20]
	mov r7,#10
	cmp r8,r7
	blt .EightWhileL6
.EightWhileL7:
	ldr r8,[fp,#-20]
	mov r7,#2
	sub r6,r8,r7
	str r6,[fp,#-20]
	bl .EightWhileL2
.EightWhileL6:
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
.EightWhileL8:
	ldr r8,[fp,#-16]
	mov r7,#7
	cmp r8,r7
	beq .EightWhileL9
.EightWhileL10:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .EightWhileL5
.EightWhileL9:
	ldr r8,[fp,#-16]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-16]
.EightWhileL11:
	ldr r8,[fp,#-12]
	mov r7,#20
	cmp r8,r7
	blt .EightWhileL12
.EightWhileL13:
	ldr r8,[fp,#-12]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-12]
	bl .EightWhileL8
.EightWhileL12:
	ldr r8,[fp,#-12]
	mov r7,#3
	add r6,r8,r7
	str r6,[fp,#-12]
.EightWhileL14:
	ldr r8,.LPIC0
	ldr r7,[r8]
	mov r8,#1
	cmp r7,r8
	bgt .EightWhileL15
.EightWhileL16:
	ldr r8,.LPIC0
	ldr r7,[r8]
	mov r8,#1
	add r6,r7,r8
	ldr r8,.LPIC0
	str r6,[r8]
	bl .EightWhileL11
.EightWhileL15:
	ldr r8,.LPIC0
	ldr r7,[r8]
	mov r8,#1
	sub r6,r7,r8
	ldr r8,.LPIC0
	str r6,[r8]
.EightWhileL17:
	ldr r8,.LPIC1
	ldr r7,[r8]
	mov r8,#2
	cmp r7,r8
	bgt .EightWhileL18
.EightWhileL19:
	ldr r8,.LPIC1
	ldr r7,[r8]
	mov r8,#1
	add r6,r7,r8
	ldr r8,.LPIC1
	str r6,[r8]
	bl .EightWhileL14
.EightWhileL18:
	ldr r8,.LPIC1
	ldr r7,[r8]
	mov r8,#2
	sub r6,r7,r8
	ldr r8,.LPIC1
	str r6,[r8]
.EightWhileL20:
	ldr r8,.LPIC2
	ldr r7,[r8]
	mov r8,#3
	cmp r7,r8
	blt .EightWhileL21
.EightWhileL22:
	ldr r8,.LPIC2
	ldr r7,[r8]
	mov r8,#8
	sub r6,r7,r8
	ldr r8,.LPIC2
	str r6,[r8]
	bl .EightWhileL17
.EightWhileL21:
	ldr r8,.LPIC2
	ldr r7,[r8]
	mov r8,#10
	add r6,r7,r8
	ldr r8,.LPIC2
	str r6,[r8]
.EightWhileL23:
	ldr r8,.LPIC3
	ldr r7,[r8]
	mov r8,#10
	cmp r7,r8
	blt .EightWhileL24
.EightWhileL25:
	ldr r8,.LPIC3
	ldr r7,[r8]
	mov r8,#1
	sub r6,r7,r8
	ldr r8,.LPIC3
	str r6,[r8]
	bl .EightWhileL20
.EightWhileL24:
	ldr r8,.LPIC3
	ldr r7,[r8]
	mov r8,#8
	add r6,r7,r8
	ldr r8,.LPIC3
	str r6,[r8]
	bl .EightWhileL23
main:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	mov r8,#1
	ldr r7,.LPIC2
	str r8,[r7]
	mov r8,#2
	ldr r7,.LPIC3
	str r8,[r7]
	mov r8,#4
	ldr r7,.LPIC0
	str r8,[r7]
	mov r8,#6
	ldr r7,.LPIC1
	str r8,[r7]
	@%r4 = call i32 @EightWhile()
	bl EightWhile
	mov r8,r0
	mov r0,r8
	add sp,sp,#8
	pop {r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
