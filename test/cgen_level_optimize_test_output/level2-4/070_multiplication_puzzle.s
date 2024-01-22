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
main:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#36
.mainL0:
.mainL1:
.mainL18:
	mov r8,#0
	mov r7,#0
	mov r6,#0
	mov r9,#3
	str r9,[fp,#-12]
.mainL3:
	ldr r9,[fp,#-12]
	rsb r4,r9,#6
	add r3,r4,#1
	cmp r3,#0
	bgt .mainL19
.mainL23:
	mov r9,r8
	str r9,[fp,#-16]
	mov r3,r7
	mov r2,r6
.mainL9:
	ldr r9,[fp,#-12]
	add r1,r9,#1
.mainL4:
	cmp r1,#6
	ble .mainL21
.mainL5:
	mov r0,#5
	ldr r5,.LPIC1
	add r4,r5,r0,lsl #2
	ldr r5,[r4]
	@call void @putint(i32 %r118)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r2,r3}
	mov r0,r5
	bl putint
	pop {r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	mov r0,#0
	add sp,sp,#36
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.mainL21:
	ldr r9,[fp,#-16]
	mov r8,r9
	mov r7,r3
	mov r6,r2
	mov r9,r1
	str r9,[fp,#-12]
	bl .mainL3
.mainL19:
	ldr r9,[fp,#-12]
	rsb r7,r9,#6
	add r9,r7,#1
	str r9,[fp,#-20]
	mov r7,r8
	mov r8,#0
.mainL7:
	ldr r9,[fp,#-12]
	add r5,r8,r9
	sub r4,r5,#1
	add r5,r8,#1
	cmp r5,r4
	blt .mainL20
.mainL26:
	mov r1,r7
	mov r9,r5
	str r9,[fp,#-24]
.mainL13:
	add r6,r8,#1
.mainL8:
	ldr r9,[fp,#-20]
	cmp r6,r9
	blt .mainL22
.mainL24:
	mov r9,r1
	str r9,[fp,#-16]
	mov r3,r4
	ldr r9,[fp,#-24]
	mov r2,r9
	bl .mainL9
.mainL22:
	mov r7,r1
	mov r8,r6
	bl .mainL7
.mainL20:
	mov r7,#10
	mul r7,r8,r7
	mov r6,r7
	ldr r7,.LPIC1
	add r9,r7,r6,lsl #2
	str r9,[fp,#-36]
	mov r7,r8
	ldr r6,.LPIC0
	add r9,r6,r7,lsl #2
	str r9,[fp,#-16]
	mov r7,r4
	ldr r6,.LPIC0
	add r9,r6,r7,lsl #2
	str r9,[fp,#-28]
	mov r7,r4
	ldr r9,[fp,#-36]
	add r10,r9,r7,lsl #2
	str r10,[fp,#-32]
	mov r7,r5
.mainL11:
	mov r5,r7
	ldr r9,[fp,#-36]
	add r2,r9,r5,lsl #2
	ldr r5,[r2]
	mov r2,#10
	mul r2,r7,r2
	mov r0,r2
	add r0,r0,r4
	ldr r2,.LPIC1
	add r6,r2,r0,lsl #2
	ldr r2,[r6]
	add r6,r5,r2
	ldr r9,[fp,#-16]
	ldr r5,[r9]
	mov r2,r7
	ldr r0,.LPIC0
	add r3,r0,r2,lsl #2
	ldr r2,[r3]
	mul r3,r5,r2
	ldr r9,[fp,#-28]
	ldr r5,[r9]
	mul r2,r3,r5
	add r5,r6,r2
	ldr r9,[fp,#-32]
	ldr r6,[r9]
	cmp r6,#0
	beq .mainL14
.mainL16:
	mov r6,#10
	mul r6,r8,r6
	mov r3,r6
	add r3,r3,r4
	ldr r6,.LPIC1
	add r2,r6,r3,lsl #2
	ldr r6,[r2]
	cmp r5,r6
	blt .mainL14
.mainL15:
	add r6,r7,#1
.mainL12:
	cmp r6,r4
	blt .mainL25
.mainL27:
	mov r1,r5
	mov r9,r6
	str r9,[fp,#-24]
	bl .mainL13
.mainL25:
	mov r7,r6
	bl .mainL11
.mainL14:
	mov r6,#10
	mul r6,r8,r6
	mov r3,r6
	add r3,r3,r4
	ldr r2,.LPIC1
	add r1,r2,r3,lsl #2
	str r5,[r1]
	bl .mainL15
	.section	.note.GNU-stack,"",%progbits
