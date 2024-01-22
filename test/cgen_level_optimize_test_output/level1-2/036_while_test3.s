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
EightWhile:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#20
.EightWhileL0:
.EightWhileL1:
.EightWhileL34:
	mov r8,#10
	mov r7,#6
	mov r9,#5
	str r9,[fp,#-20]
.EightWhileL3:
	ldr r9,[fp,#-20]
	add r5,r9,#3
	cmp r7,#10
	blt .EightWhileL35
.EightWhileL43:
	mov r4,r8
	mov r9,r7
	str r9,[fp,#-12]
	mov r2,r5
.EightWhileL9:
	ldr r9,[fp,#-12]
	sub r1,r9,#2
.EightWhileL4:
	cmp r2,#20
	blt .EightWhileL41
.EightWhileL5:
	add r0,r1,r4
	add r3,r2,r0
	add r9,r3,#7
	str r9,[fp,#-16]
	ldr r3,.LPIC0
	ldr r0,[r3]
	add r3,r0,r4
	ldr r0,.LPIC2
	ldr r6,[r0]
	sub r0,r3,r6
	ldr r6,.LPIC3
	ldr r3,[r6]
	add r6,r0,r3
	ldr r9,[fp,#-16]
	sub r3,r9,r6
	mov r0,r3
	add sp,sp,#20
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.EightWhileL41:
	mov r8,r4
	mov r7,r1
	mov r9,r2
	str r9,[fp,#-20]
	bl .EightWhileL3
.EightWhileL35:
	mov r6,r8
	mov r8,r7
	mov r7,r5
.EightWhileL7:
	add r9,r8,#1
	str r9,[fp,#-16]
.EightWhileL11:
	cmp r6,#20
	blt .EightWhileL38
.EightWhileL46:
	mov r3,r6
	mov r1,r7
.EightWhileL17:
	sub r0,r3,#1
.EightWhileL12:
.EightWhileL13:
.EightWhileL8:
	ldr r9,[fp,#-16]
	cmp r9,#10
	blt .EightWhileL42
.EightWhileL44:
	mov r4,r0
	ldr r9,[fp,#-16]
	mov r10,r9
	str r10,[fp,#-12]
	mov r2,r1
	bl .EightWhileL9
.EightWhileL42:
	mov r6,r0
	ldr r9,[fp,#-16]
	mov r8,r9
	mov r7,r1
	bl .EightWhileL7
.EightWhileL38:
	mov r8,r6
	mov r6,r7
.EightWhileL15:
	add r7,r8,#3
	ldr r5,.LPIC0
	ldr r4,[r5]
	cmp r4,#1
	bgt .EightWhileL39
.EightWhileL49:
	mov r5,r6
.EightWhileL21:
	ldr r4,.LPIC0
	ldr r2,[r4]
	add r4,r2,#1
	ldr r2,.LPIC0
	str r4,[r2]
.EightWhileL16:
	cmp r7,#20
	blt .EightWhileL45
.EightWhileL47:
	mov r3,r7
	mov r1,r5
	bl .EightWhileL17
.EightWhileL45:
	mov r8,r7
	mov r6,r5
	bl .EightWhileL15
.EightWhileL39:
	mov r8,r6
.EightWhileL19:
	ldr r6,.LPIC0
	ldr r4,[r6]
	sub r6,r4,#1
	ldr r4,.LPIC0
	str r6,[r4]
	ldr r6,.LPIC1
	ldr r4,[r6]
	cmp r4,#2
	bgt .EightWhileL40
.EightWhileL52:
	mov r6,r8
.EightWhileL25:
	ldr r4,.LPIC1
	ldr r3,[r4]
	add r4,r3,#1
	ldr r3,.LPIC1
	str r4,[r3]
.EightWhileL20:
	ldr r4,.LPIC0
	ldr r3,[r4]
	cmp r3,#1
	bgt .EightWhileL48
.EightWhileL50:
	mov r5,r6
	bl .EightWhileL21
.EightWhileL48:
	mov r8,r6
	bl .EightWhileL19
.EightWhileL40:
	mov r5,r8
.EightWhileL23:
	ldr r8,.LPIC1
	ldr r4,[r8]
	sub r8,r4,#2
	ldr r4,.LPIC1
	str r8,[r4]
	ldr r8,.LPIC2
	ldr r4,[r8]
	cmp r4,#3
	blt .EightWhileL36
.EightWhileL55:
	mov r8,r5
.EightWhileL29:
	ldr r4,.LPIC2
	ldr r3,[r4]
	sub r4,r3,#8
	ldr r3,.LPIC2
	str r4,[r3]
.EightWhileL24:
	ldr r4,.LPIC1
	ldr r3,[r4]
	cmp r3,#2
	bgt .EightWhileL51
.EightWhileL53:
	mov r6,r8
	bl .EightWhileL25
.EightWhileL51:
	mov r5,r8
	bl .EightWhileL23
.EightWhileL36:
	mov r6,r5
.EightWhileL27:
	ldr r5,.LPIC2
	ldr r4,[r5]
	add r5,r4,#10
	ldr r4,.LPIC2
	str r5,[r4]
	ldr r5,.LPIC3
	ldr r4,[r5]
	cmp r4,#10
	blt .EightWhileL37
.EightWhileL58:
	mov r5,r6
.EightWhileL33:
	ldr r4,.LPIC3
	ldr r3,[r4]
	sub r4,r3,#1
	ldr r3,.LPIC3
	str r4,[r3]
.EightWhileL28:
	ldr r4,.LPIC2
	ldr r3,[r4]
	cmp r3,#3
	blt .EightWhileL54
.EightWhileL56:
	mov r8,r5
	bl .EightWhileL29
.EightWhileL54:
	mov r6,r5
	bl .EightWhileL27
.EightWhileL37:
	mov r8,r6
.EightWhileL31:
	ldr r6,.LPIC3
	ldr r4,[r6]
	add r6,r4,#8
	ldr r4,.LPIC3
	str r6,[r4]
.EightWhileL32:
	ldr r6,.LPIC3
	ldr r4,[r6]
	cmp r4,#10
	blt .EightWhileL57
.EightWhileL59:
	mov r5,r8
	bl .EightWhileL33
.EightWhileL57:
	bl .EightWhileL31
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
