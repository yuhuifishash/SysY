.arch armv7-a
.fpu vfpv3-d16
.arm
.data
maxN:
	.word  1000
space:
	.word  32
array:
	.space  4000
.text
.global main
.LPIC0:
	.word  array
.LPIC1:
	.word  maxN
.LPIC2:
	.word  space
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
	cmp r8,#0
	bgt .mainL6
.mainL5:
	sub r6,r8,#1
	@call void @findSmallest(i32 0,i32 %r27,i32 %r3,i32 %r1)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#0
	mov r1,r6
	mov r2,r7
	mov r3,r8
	bl findSmallest
	add sp,sp,#4 @stack align 8bytes
	mov r0,#0
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL6:
	mov r6,#0
.mainL3:
	@%r11 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	mov r4,r6
	ldr r3,.LPIC0
	add r2,r3,r4,lsl #2
	str r5,[r2]
	add r5,r6,#1
.mainL4:
	cmp r5,r8
	bge .mainL5
.mainL7:
	mov r6,r5
	bl .mainL3
swap:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.swapL0:
.swapL1:
	mov r8,r0
	ldr r7,.LPIC0
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,r1
	ldr r5,.LPIC0
	add r4,r5,r7,lsl #2
	ldr r7,[r4]
	str r7,[r6]
	str r8,[r4]
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
findPivot:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#12
.findPivotL0:
.findPivotL1:
	mov r8,r1
	ldr r7,.LPIC0
	add r6,r7,r8,lsl #2
	ldr r9,[r6]
	str r9,[fp,#-12]
	cmp r0,r1
	blt .findPivotL14
.findPivotL16:
	mov r7,r0
.findPivotL5:
.findPivotL8:
.findPivotL10:
	mov r6,r7
	ldr r5,.LPIC0
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	mov r5,r1
	ldr r3,.LPIC0
	add r2,r3,r5,lsl #2
	ldr r5,[r2]
	str r5,[r4]
	str r6,[r2]
.findPivotL9:
	mov r0,r7
	add sp,sp,#12
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.findPivotL14:
	mov r6,r0
	mov r5,r0
.findPivotL3:
	mov r4,r6
	ldr r3,.LPIC0
	add r2,r3,r4,lsl #2
	ldr r4,[r2]
	ldr r9,[fp,#-12]
	cmp r4,r9
	ble .findPivotL6
.findPivotL18:
	mov r4,r5
.findPivotL7:
	add r3,r6,#1
.findPivotL4:
	cmp r3,r1
	blt .findPivotL15
.findPivotL17:
	mov r7,r4
	bl .findPivotL5
.findPivotL15:
	mov r6,r3
	mov r5,r4
	bl .findPivotL3
.findPivotL6:
.findPivotL11:
.findPivotL13:
	mov r7,r6
	ldr r3,.LPIC0
	add r2,r3,r7,lsl #2
	ldr r7,[r2]
	mov r3,r5
	ldr r0,.LPIC0
	add r8,r0,r3,lsl #2
	ldr r3,[r8]
	str r3,[r2]
	str r7,[r8]
.findPivotL12:
	add r8,r5,#1
	mov r4,r8
	bl .findPivotL7
findSmallest:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.findSmallestL0:
.findSmallestL1:
	cmp r0,r1
	beq .findSmallestL2
.findSmallestL3:
	@%r16 = call i32 @findPivot(i32 %r0,i32 %r1)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	bl findPivot
	mov r8,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	cmp r2,r8
	beq .findSmallestL5
.findSmallestL6:
	cmp r2,r8
	blt .findSmallestL12
.findSmallestL13:
	add r7,r8,#1
	@call void @findSmallest(i32 %r54,i32 %r1,i32 %r2,i32 %r3)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r0,r7
	bl findSmallest
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
.findSmallestL14:
.findSmallestL7:
.findSmallestL4:
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.findSmallestL12:
	sub r7,r8,#1
	@call void @findSmallest(i32 %r0,i32 %r49,i32 %r2,i32 %r3)
	push {r0,r2,r3}
	mov r1,r7
	bl findSmallest
	pop {r0,r2,r3}
	bl .findSmallestL14
.findSmallestL5:
	cmp r8,#0
	bgt .findSmallestL15
.findSmallestL11:
	bl .findSmallestL7
.findSmallestL15:
	mov r7,#0
.findSmallestL9:
	mov r6,r7
	ldr r5,.LPIC0
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	@call void @putint(i32 %r31)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	bl putint
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 32)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#32
	bl putch
	add sp,sp,#4 @stack align 8bytes
	add r6,r7,#1
.findSmallestL10:
	cmp r6,r8
	bge .findSmallestL11
.findSmallestL16:
	mov r7,r6
	bl .findSmallestL9
.findSmallestL2:
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
