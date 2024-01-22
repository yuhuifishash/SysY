.arch armv7-a
.fpu vfpv3-d16
.arm
.data
a:
	.word  10
	.word  1
	.word  50
	.word  50
	.word  20
	.word  5
dp:
	.space  400
.text
.global main
.LPIC0:
	.word  a
.LPIC1:
	.word  dp
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#32
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-32]
	mov r8,#6
	str r8,[fp,#-32]
	mov r8,#0
	str r8,[fp,#-28]
	mov r8,#0
	str r8,[fp,#-24]
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#3
	str r8,[fp,#-28]
.mainL2:
	ldr r8,[fp,#-28]
	ldr r7,[fp,#-32]
	cmp r8,r7
	ble .mainL3
.mainL4:
	mov r8,#0
	ldr r7,[fp,#-32]
	mov r6,#1
	sub r5,r7,r6
	mov r7,#10
	mul r7,r8,r7
	mov r8,r7
	add r8,r8,r5
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	@call void @putint(i32 %r99)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	mov r0,r8
	add sp,sp,#32
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL3:
	mov r8,#0
	str r8,[fp,#-24]
.mainL5:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-32]
	ldr r6,[fp,#-28]
	sub r5,r7,r6
	mov r7,#1
	add r6,r5,r7
	cmp r8,r6
	blt .mainL6
.mainL7:
	ldr r8,[fp,#-28]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-28]
	bl .mainL2
.mainL6:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-28]
	add r6,r8,r7
	mov r8,#1
	sub r7,r6,r8
	str r7,[fp,#-16]
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL8:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-16]
	cmp r8,r7
	blt .mainL9
.mainL10:
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-24]
	bl .mainL5
.mainL9:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	mov r6,#10
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-20]
	ldr r6,[fp,#-16]
	mov r5,#10
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC1
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	add r6,r8,r7
	ldr r8,[fp,#-24]
	mov r7,r8
	ldr r8,.LPIC0
	add r5,r8,r7,lsl #2
	ldr r8,[r5]
	ldr r7,[fp,#-20]
	mov r5,r7
	ldr r7,.LPIC0
	add r4,r7,r5,lsl #2
	ldr r7,[r4]
	mul r5,r8,r7
	ldr r8,[fp,#-16]
	mov r7,r8
	ldr r8,.LPIC0
	add r4,r8,r7,lsl #2
	ldr r8,[r4]
	mul r7,r5,r8
	add r8,r6,r7
	str r8,[fp,#-12]
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-16]
	mov r6,#10
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	cmp r8,#0
	beq .mainL11
.mainL13:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-24]
	ldr r6,[fp,#-16]
	mov r5,#10
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC1
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	cmp r8,r7
	blt .mainL11
.mainL12:
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
	bl .mainL8
.mainL11:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-24]
	ldr r6,[fp,#-16]
	mov r5,#10
	mul r5,r7,r5
	mov r4,r5
	add r4,r4,r6
	ldr r3,.LPIC1
	add r2,r3,r4,lsl #2
	str r8,[r2]
	bl .mainL12
	.section	.note.GNU-stack,"",%progbits
