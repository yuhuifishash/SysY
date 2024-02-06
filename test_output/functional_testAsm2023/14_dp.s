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
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#32
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-32]
	mov r8,#0
	str r8,[fp,#-28]
	mov r8,#0
	str r8,[fp,#-24]
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	@%r10 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-32]
	@%r11 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-28]
	mov r8,#1
	str r8,[fp,#-20]
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-32]
	cmp r8,r7
	ble .mainL3
.mainL5:
	mov r8,#1
	str r8,[fp,#-20]
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-32]
	cmp r8,r7
	ble .mainL7
.mainL9:
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-28]
	cmp r8,r7
	ble .mainL18
.mainL20:
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#32
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL18:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-32]
	ldr r6,[fp,#-16]
	mov r5,#35
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC0
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	cmp r8,r7
	blt .mainL21
.mainL22:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.mainL19:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-28]
	cmp r8,r7
	ble .mainL18
	bgt .mainL20
.mainL21:
	ldr r8,[fp,#-32]
	ldr r7,[fp,#-16]
	mov r6,#35
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC0
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	str r8,[fp,#-12]
	bl .mainL22
.mainL7:
	mov r8,#1
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-28]
	cmp r8,r7
	ble .mainL11
.mainL13:
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL8:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-32]
	cmp r8,r7
	ble .mainL7
	bgt .mainL9
.mainL11:
	ldr r8,[fp,#-20]
	mov r7,#1
	sub r6,r8,r7
	ldr r8,[fp,#-16]
	mov r7,#35
	mul r7,r6,r7
	mov r6,r7
	add r6,r6,r8
	ldr r8,.LPIC0
	add r7,r8,r6,lsl #2
	ldr r8,[r7]
	ldr r7,[fp,#-20]
	ldr r6,[fp,#-16]
	mov r5,#1
	add r4,r6,r5
	mov r6,#2
	@%r70 = call i32 @__modsi3(i32 %r68,i32 %r69)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r4
	mov r1,r6
	bl __modsi3
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	lsl r6,r7,#1
	mov r7,r6
	add r7,r7,r5
	ldr r6,.LPIC1
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	add r6,r8,r7
	ldr r8,[fp,#-20]
	mov r7,#1
	sub r5,r8,r7
	ldr r8,[fp,#-16]
	mov r7,#1
	sub r4,r8,r7
	mov r8,#35
	mul r8,r5,r8
	mov r7,r8
	add r7,r7,r4
	ldr r8,.LPIC0
	add r5,r8,r7,lsl #2
	ldr r8,[r5]
	ldr r7,[fp,#-20]
	ldr r5,[fp,#-16]
	mov r4,#1
	add r3,r5,r4
	mov r5,#2
	@%r87 = call i32 @__modsi3(i32 %r85,i32 %r86)
	push {r3}
	mov r0,r3
	mov r1,r5
	bl __modsi3
	mov r4,r0
	pop {r3}
	lsl r5,r7,#1
	mov r7,r5
	add r7,r7,r4
	ldr r5,.LPIC1
	add r4,r5,r7,lsl #2
	ldr r7,[r4]
	add r5,r8,r7
	cmp r6,r5
	bgt .mainL14
.mainL15:
	ldr r8,[fp,#-20]
	mov r7,#1
	sub r6,r8,r7
	ldr r8,[fp,#-16]
	mov r7,#1
	sub r5,r8,r7
	mov r8,#35
	mul r8,r6,r8
	mov r7,r8
	add r7,r7,r5
	ldr r8,.LPIC0
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-20]
	ldr r6,[fp,#-16]
	mov r5,#1
	add r4,r6,r5
	mov r6,#2
	@%r125 = call i32 @__modsi3(i32 %r123,i32 %r124)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r4
	mov r1,r6
	bl __modsi3
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	lsl r6,r7,#1
	mov r7,r6
	add r7,r7,r5
	ldr r6,.LPIC1
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	add r6,r8,r7
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-16]
	mov r5,#35
	mul r5,r8,r5
	mov r8,r5
	add r8,r8,r7
	ldr r7,.LPIC0
	add r5,r7,r8,lsl #2
	str r6,[r5]
.mainL16:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.mainL12:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-28]
	cmp r8,r7
	ble .mainL11
	bgt .mainL13
.mainL14:
	ldr r8,[fp,#-20]
	mov r7,#1
	sub r6,r8,r7
	ldr r8,[fp,#-16]
	mov r7,#35
	mul r7,r6,r7
	mov r6,r7
	add r6,r6,r8
	ldr r8,.LPIC0
	add r7,r8,r6,lsl #2
	ldr r8,[r7]
	ldr r7,[fp,#-20]
	ldr r6,[fp,#-16]
	mov r5,#1
	add r4,r6,r5
	mov r6,#2
	@%r105 = call i32 @__modsi3(i32 %r103,i32 %r104)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r4
	mov r1,r6
	bl __modsi3
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	lsl r6,r7,#1
	mov r7,r6
	add r7,r7,r5
	ldr r6,.LPIC1
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	add r6,r8,r7
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-16]
	mov r5,#35
	mul r5,r8,r5
	mov r8,r5
	add r8,r8,r7
	ldr r7,.LPIC0
	add r5,r7,r8,lsl #2
	str r6,[r5]
	bl .mainL16
.mainL3:
	@%r18 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-24]
	mov r8,#1
	ldr r7,[fp,#-20]
	ldr r6,[fp,#-24]
	mov r5,#2
	@%r23 = call i32 @__modsi3(i32 %r21,i32 %r22)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	mov r1,r5
	bl __modsi3
	mov r4,r0
	add sp,sp,#4 @stack align 8bytes
	lsl r6,r7,#1
	mov r7,r6
	add r7,r7,r4
	ldr r6,.LPIC1
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-20]
	mov r7,#1
	sub r6,r8,r7
	mov r8,#0
	mov r7,#35
	mul r7,r6,r7
	mov r6,r7
	add r6,r6,r8
	ldr r8,.LPIC0
	add r7,r8,r6,lsl #2
	ldr r8,[r7]
	ldr r7,[fp,#-20]
	mov r6,#1
	lsl r5,r7,#1
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC1
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	add r6,r8,r7
	ldr r8,[fp,#-20]
	mov r7,#0
	mov r5,#35
	mul r5,r8,r5
	mov r8,r5
	add r8,r8,r7
	ldr r7,.LPIC0
	add r5,r7,r8,lsl #2
	str r6,[r5]
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL4:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-32]
	cmp r8,r7
	ble .mainL3
	bgt .mainL5
	.section	.note.GNU-stack,"",%progbits
