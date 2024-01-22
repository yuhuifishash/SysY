.arch armv7-a
.fpu vfpv3-d16
.arm
.data
n:
	.word  0
.text
.global main
.LPIC0:
	.word  n
swap:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.swapL0:
.swapL1:
	mov r8,r1
	add r7,r0,r8,lsl #2
	ldr r8,[r7]
	mov r6,r2
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	str r6,[r7]
	str r8,[r5]
	mov r0,#0
	add sp,sp,#8
	pop {r5,r6,r7,r8}
	pop {fp,pc}
heap_sort:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.heap_sortL0:
.heap_sortL1:
	add r8,r1,r1,lsr #31
	asr r7,r8,#1
	sub r8,r7,#1
	mvn r7,#0
	cmp r8,r7
	bgt .heap_sortL13
.heap_sortL5:
	sub r7,r1,#1
	cmp r7,#0
	bgt .heap_sortL14
.heap_sortL9:
	mov r0,#0
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.heap_sortL14:
	mov r6,r0
	mov r5,r6
	mov r4,r7
.heap_sortL7:
.heap_sortL10:
.heap_sortL12:
	ldr r7,[r5]
	mov r3,r4
	add r2,r6,r3,lsl #2
	ldr r3,[r2]
	str r3,[r5]
	str r7,[r2]
.heap_sortL11:
	sub r7,r4,#1
	@%r55 = call i32 @heap_ajust(ptr %r45,i32 0,i32 %r51)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1}
	mov r0,r6
	mov r1,#0
	mov r2,r7
	bl heap_ajust
	mov r3,r0
	pop {r0,r1}
	add sp,sp,#4 @stack align 8bytes
.heap_sortL8:
	cmp r7,#0
	ble .heap_sortL9
.heap_sortL16:
	mov r4,r7
	bl .heap_sortL7
.heap_sortL13:
	sub r7,r1,#1
	mov r6,r0
	mov r5,r8
.heap_sortL3:
	@%r24 = call i32 @heap_ajust(ptr %r21,i32 %r69,i32 %r20)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1}
	mov r0,r6
	mov r1,r5
	mov r2,r7
	bl heap_ajust
	mov r8,r0
	pop {r0,r1}
	add sp,sp,#4 @stack align 8bytes
	sub r8,r5,#1
.heap_sortL4:
	mvn r4,#0
	cmp r8,r4
	ble .heap_sortL5
.heap_sortL15:
	mov r5,r8
	bl .heap_sortL3
heap_ajust:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#12
.heap_ajustL0:
	mov r9,r2
	str r9,[fp,#-12]
.heap_ajustL1:
	lsl r8,r1,#1
	add r7,r8,#1
	ldr r9,[fp,#-12]
	add r8,r9,#1
	cmp r7,r8
	blt .heap_ajustL16
.heap_ajustL5:
	mov r0,#0
	add sp,sp,#12
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.heap_ajustL16:
	mov r8,r7
	mov r7,r1
.heap_ajustL3:
	ldr r9,[fp,#-12]
	cmp r8,r9
	blt .heap_ajustL8
.heap_ajustL18:
	mov r6,r8
.heap_ajustL7:
	mov r5,r7
	add r4,r0,r5,lsl #2
	ldr r5,[r4]
	mov r4,r6
	add r3,r0,r4,lsl #2
	ldr r4,[r3]
	cmp r5,r4
	bgt .heap_ajustL10
.heap_ajustL11:
	mov r5,r0
.heap_ajustL13:
.heap_ajustL15:
	mov r4,r7
	add r3,r5,r4,lsl #2
	ldr r4,[r3]
	mov r1,r6
	add r2,r5,r1,lsl #2
	ldr r5,[r2]
	str r5,[r3]
	str r4,[r2]
.heap_ajustL14:
	lsl r5,r6,#1
	add r4,r5,#1
.heap_ajustL12:
.heap_ajustL4:
	ldr r9,[fp,#-12]
	add r5,r9,#1
	cmp r4,r5
	bge .heap_ajustL5
.heap_ajustL17:
	mov r8,r4
	mov r7,r6
	bl .heap_ajustL3
.heap_ajustL10:
	mov r0,#0
	add sp,sp,#12
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.heap_ajustL8:
	mov r5,r8
	add r4,r0,r5,lsl #2
	ldr r5,[r4]
	add r4,r8,#1
	mov r3,r4
	add r4,r0,r3,lsl #2
	ldr r3,[r4]
	cmp r5,r3
	blt .heap_ajustL6
.heap_ajustL19:
	mov r6,r8
	bl .heap_ajustL7
.heap_ajustL6:
	add r5,r8,#1
	mov r6,r5
	bl .heap_ajustL7
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#48
.mainL0:
.mainL1:
	mov r8,#10
	ldr r7,.LPIC0
	str r8,[r7]
	mvn r8,#47
	add r7,fp,r8
	mov r8,#4
	str r8,[r7]
	mov r8,#1
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#3
	str r8,[r7]
	mov r8,#2
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#9
	str r8,[r7]
	mov r8,#3
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#2
	str r8,[r7]
	mov r8,#4
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#0
	str r8,[r7]
	mov r8,#5
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#1
	str r8,[r7]
	mov r8,#6
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#6
	str r8,[r7]
	mov r8,#7
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#5
	str r8,[r7]
	mov r8,#8
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#7
	str r8,[r7]
	mov r8,#9
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#8
	str r8,[r7]
	mvn r8,#47
	add r7,fp,r8
	ldr r8,.LPIC0
	ldr r6,[r8]
	@%r37 = call i32 @heap_sort(ptr %r35,i32 %r36)
	mov r0,r7
	mov r1,r6
	bl heap_sort
	mov r8,r0
	cmp r8,r6
	blt .mainL6
.mainL5:
	mov r0,#0
	add sp,sp,#48
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL6:
	mov r7,r8
.mainL3:
	mov r8,r7
	mvn r6,#47
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	ldr r8,[r6]
	@call void @putint(i32 %r47)
	mov r0,r8
	bl putint
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
	add r8,r7,#1
.mainL4:
	ldr r6,.LPIC0
	ldr r5,[r6]
	cmp r8,r5
	bge .mainL5
.mainL7:
	mov r7,r8
	bl .mainL3
	.section	.note.GNU-stack,"",%progbits
