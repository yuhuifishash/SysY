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
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#28
.mainL0:
.mainL1:
	@%r1 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-28]
	@%r3 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-24]
	mov r8,#0
	str r8,[fp,#-20]
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-28]
	cmp r8,r7
	blt .mainL3
.mainL5:
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-28]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-12]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	ldr r6,[fp,#-24]
	ldr r5,[fp,#-28]
	@call void @findSmallest(i32 %r28,i32 %r29,i32 %r30,i32 %r31)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	mov r2,r6
	mov r3,r5
	bl findSmallest
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	mov r0,r8
	add sp,sp,#28
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL3:
	@%r11 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,[fp,#-20]
	mov r6,r7
	ldr r7,.LPIC0
	add r5,r7,r6,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL4:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-28]
	cmp r8,r7
	blt .mainL3
	bge .mainL5
swap:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#20
.swapL0:
	str r0,[fp,#-16]
	str r1,[fp,#-20]
.swapL1:
	ldr r8,[fp,#-16]
	mov r7,r8
	ldr r8,.LPIC0
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	str r8,[fp,#-12]
	ldr r8,[fp,#-20]
	mov r7,r8
	ldr r8,.LPIC0
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-16]
	mov r6,r7
	ldr r7,.LPIC0
	add r5,r7,r6,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-20]
	mov r6,r7
	ldr r7,.LPIC0
	add r5,r7,r6,lsl #2
	str r8,[r5]
	add sp,sp,#20
	pop {r5,r6,r7,r8}
	pop {fp,pc}
findPivot:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#28
.findPivotL0:
	str r0,[fp,#-24]
	str r1,[fp,#-28]
.findPivotL1:
	ldr r8,[fp,#-28]
	mov r7,r8
	ldr r8,.LPIC0
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	str r8,[fp,#-20]
	ldr r8,[fp,#-24]
	str r8,[fp,#-16]
	ldr r8,[fp,#-24]
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-28]
	cmp r8,r7
	blt .findPivotL3
.findPivotL5:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-28]
	@call void @swap(i32 %r37,i32 %r38)
	mov r0,r8
	mov r1,r7
	bl swap
	ldr r8,[fp,#-16]
	mov r0,r8
	add sp,sp,#28
	pop {r6,r7,r8}
	pop {fp,pc}
.findPivotL3:
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC0
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-20]
	cmp r8,r7
	ble .findPivotL6
.findPivotL7:
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.findPivotL4:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-28]
	cmp r8,r7
	blt .findPivotL3
	bge .findPivotL5
.findPivotL6:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	@call void @swap(i32 %r24,i32 %r25)
	mov r0,r8
	mov r1,r7
	bl swap
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .findPivotL7
findSmallest:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#32
.findSmallestL0:
	str r0,[fp,#-20]
	str r1,[fp,#-24]
	str r2,[fp,#-28]
	str r3,[fp,#-32]
.findSmallestL1:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-24]
	cmp r8,r7
	beq .findSmallestL2
.findSmallestL3:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-24]
	@%r16 = call i32 @findPivot(i32 %r14,i32 %r15)
	mov r0,r8
	mov r1,r7
	bl findPivot
	mov r6,r0
	str r6,[fp,#-16]
	ldr r8,[fp,#-28]
	ldr r7,[fp,#-16]
	cmp r8,r7
	beq .findSmallestL5
.findSmallestL6:
	ldr r8,[fp,#-28]
	ldr r7,[fp,#-16]
	cmp r8,r7
	blt .findSmallestL12
.findSmallestL13:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-28]
	ldr r5,[fp,#-32]
	@call void @findSmallest(i32 %r54,i32 %r55,i32 %r56,i32 %r57)
	mov r0,r6
	mov r1,r8
	mov r2,r7
	mov r3,r5
	bl findSmallest
.findSmallestL14:
.findSmallestL7:
.findSmallestL4:
	add sp,sp,#32
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.findSmallestL12:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-16]
	mov r6,#1
	sub r5,r7,r6
	ldr r7,[fp,#-28]
	ldr r6,[fp,#-32]
	@call void @findSmallest(i32 %r46,i32 %r49,i32 %r50,i32 %r51)
	mov r0,r8
	mov r1,r5
	mov r2,r7
	mov r3,r6
	bl findSmallest
	bl .findSmallestL14
.findSmallestL5:
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	cmp r8,r7
	blt .findSmallestL9
.findSmallestL11:
	bl .findSmallestL7
.findSmallestL9:
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC0
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	@call void @putint(i32 %r31)
	mov r0,r8
	bl putint
	ldr r8,.LPIC2
	ldr r7,[r8]
	@call void @putch(i32 %r32)
	mov r0,r7
	bl putch
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.findSmallestL10:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	cmp r8,r7
	blt .findSmallestL9
	bge .findSmallestL11
.findSmallestL2:
	add sp,sp,#32
	pop {r5,r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
