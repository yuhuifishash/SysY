.arch armv7-a
.fpu vfpv3-d16
.arm
.data
t:
	.space  8040
dp:
	.space  140700
.text
.global main
.LPIC0:
	.word  dp
.LPIC1:
	.word  t
main:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#12
.mainL0:
.mainL1:
	@%r10 = call i32 @getint()
	bl getint
	str r0,[fp,#-12]
	@%r11 = call i32 @getint()
	bl getint
	mov r7,r0
	ldr r9,[fp,#-12]
	cmp r9,#1
	bge .mainL23
.mainL5:
	ldr r9,[fp,#-12]
	cmp r9,#1
	bge .mainL24
.mainL9:
	cmp r7,#0
	bge .mainL26
.mainL31:
	mov r6,#0
.mainL20:
	mov r0,r6
	add sp,sp,#12
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.mainL26:
	mov r5,#35
	ldr r9,[fp,#-12]
	mul r5,r9,r5
	mov r4,r5
	ldr r5,.LPIC0
	add r3,r5,r4,lsl #2
	mov r5,#0
	mov r4,#0
.mainL18:
	mov r2,r4
	add r1,r3,r2,lsl #2
	ldr r2,[r1]
	cmp r5,r2
	blt .mainL21
.mainL33:
	mov r2,r5
.mainL22:
	add r1,r4,#1
.mainL19:
	cmp r1,r7
	ble .mainL30
.mainL32:
	mov r6,r2
	bl .mainL20
.mainL30:
	mov r5,r2
	mov r4,r1
	bl .mainL18
.mainL21:
	mov r6,#35
	ldr r9,[fp,#-12]
	mul r6,r9,r6
	mov r5,r6
	add r5,r5,r4
	ldr r6,.LPIC0
	add r1,r6,r5,lsl #2
	ldr r6,[r1]
	mov r2,r6
	bl .mainL22
.mainL24:
	mov r6,#1
.mainL7:
	cmp r7,#1
	bge .mainL25
.mainL13:
	add r5,r6,#1
.mainL8:
	ldr r9,[fp,#-12]
	cmp r5,r9
	bgt .mainL9
.mainL28:
	mov r6,r5
	bl .mainL7
.mainL25:
	sub r5,r6,#1
	mov r4,#35
	mul r4,r5,r4
	mov r5,r4
	ldr r4,.LPIC0
	add r3,r4,r5,lsl #2
	lsl r5,r6,#1
	mov r4,r5
	ldr r5,.LPIC1
	add r2,r5,r4,lsl #2
	mov r5,#1
.mainL11:
	mov r4,r5
	add r1,r3,r4,lsl #2
	ldr r4,[r1]
	add r1,r5,#1
	cmp r1,#0
	and r0,r1,#1
	it lt
	rsblt r0,r0,#0
	mov r1,r0
	add r0,r2,r1,lsl #2
	ldr r1,[r0]
	add r0,r4,r1
	sub r4,r5,#1
	mov r8,r4
	add r4,r3,r8,lsl #2
	ldr r8,[r4]
	add r4,r8,r1
	cmp r0,r4
	bgt .mainL14
.mainL15:
	sub r8,r6,#1
	sub r4,r5,#1
	mov r1,#35
	mul r1,r8,r1
	mov r8,r1
	add r8,r8,r4
	ldr r4,.LPIC0
	add r1,r4,r8,lsl #2
	ldr r8,[r1]
	add r4,r5,#1
	cmp r4,#0
	and r1,r4,#1
	it lt
	rsblt r1,r1,#0
	lsl r4,r6,#1
	mov r0,r4
	add r0,r0,r1
	ldr r4,.LPIC1
	add r1,r4,r0,lsl #2
	ldr r4,[r1]
	add r1,r8,r4
	mov r8,#35
	mul r8,r6,r8
	mov r4,r8
	add r4,r4,r5
	ldr r8,.LPIC0
	add r0,r8,r4,lsl #2
	str r1,[r0]
.mainL16:
	add r8,r5,#1
.mainL12:
	cmp r8,r7
	bgt .mainL13
.mainL29:
	mov r5,r8
	bl .mainL11
.mainL14:
	sub r8,r6,#1
	mov r4,#35
	mul r4,r8,r4
	mov r8,r4
	add r8,r8,r5
	ldr r4,.LPIC0
	add r1,r4,r8,lsl #2
	ldr r8,[r1]
	add r4,r5,#1
	cmp r4,#0
	and r1,r4,#1
	it lt
	rsblt r1,r1,#0
	lsl r4,r6,#1
	mov r0,r4
	add r0,r0,r1
	ldr r4,.LPIC1
	add r1,r4,r0,lsl #2
	ldr r4,[r1]
	add r1,r8,r4
	mov r8,#35
	mul r8,r6,r8
	mov r4,r8
	add r4,r4,r5
	ldr r8,.LPIC0
	add r0,r8,r4,lsl #2
	str r1,[r0]
	bl .mainL16
.mainL23:
	mov r8,#1
.mainL3:
	@%r18 = call i32 @getint()
	bl getint
	mov r6,r0
	cmp r6,#0
	and r5,r6,#1
	it lt
	rsblt r5,r5,#0
	lsl r6,r8,#1
	mov r4,r6
	ldr r6,.LPIC1
	add r3,r6,r4,lsl #2
	mov r6,r5
	add r5,r3,r6,lsl #2
	mov r6,#1
	str r6,[r5]
	sub r6,r8,#1
	mov r5,#35
	mul r5,r6,r5
	mov r6,r5
	ldr r5,.LPIC0
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	mov r5,#1
	add r4,r3,r5,lsl #2
	ldr r5,[r4]
	add r4,r6,r5
	mov r6,#35
	mul r6,r8,r6
	mov r5,r6
	ldr r6,.LPIC0
	add r3,r6,r5,lsl #2
	str r4,[r3]
	add r6,r8,#1
.mainL4:
	ldr r9,[fp,#-12]
	cmp r6,r9
	bgt .mainL5
.mainL27:
	mov r8,r6
	bl .mainL3
	.section	.note.GNU-stack,"",%progbits
