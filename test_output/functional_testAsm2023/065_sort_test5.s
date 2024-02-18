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
swap:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#20
.swapL0:
	str r1,[fp,#-16]
	str r2,[fp,#-20]
.swapL1:
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-12]
	ldr r8,[fp,#-20]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-16]
	mov r6,r8
	add r8,r0,r6,lsl #2
	str r7,[r8]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-20]
	mov r6,r7
	add r7,r0,r6,lsl #2
	str r8,[r7]
	mov r8,#0
	mov r0,r8
	add sp,sp,#20
	pop {r6,r7,r8}
	pop {fp,pc}
heap_sort:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#24
.heap_sortL0:
	str r1,[fp,#-24]
.heap_sortL1:
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-24]
	mov r7,#2
	@%r9 = call i32 @__aeabi_idiv(i32 %r7,i32 %r8)
	sub sp,sp,#4 @stack align 8bytes
	push {r0}
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	pop {r0}
	add sp,sp,#4 @stack align 8bytes
	mov r8,#1
	sub r7,r6,r8
	str r7,[fp,#-20]
	ldr r8,[fp,#-20]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	bgt .heap_sortL3
.heap_sortL5:
	ldr r8,[fp,#-24]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-20]
	ldr r8,[fp,#-20]
	mov r7,#0
	cmp r8,r7
	bgt .heap_sortL7
.heap_sortL9:
	mov r8,#0
	mov r0,r8
	add sp,sp,#24
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.heap_sortL7:
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,r0
	ldr r7,[fp,#-12]
	ldr r6,[fp,#-20]
	@%r48 = call i32 @swap(ptr %r45,i32 %r46,i32 %r47)
	sub sp,sp,#4 @stack align 8bytes
	push {r0}
	mov r0,r8
	mov r1,r7
	mov r2,r6
	bl swap
	mov r5,r0
	pop {r0}
	add sp,sp,#4 @stack align 8bytes
	str r5,[fp,#-16]
	ldr r8,[fp,#-20]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-16]
	mov r8,r0
	ldr r7,[fp,#-12]
	ldr r6,[fp,#-16]
	@%r55 = call i32 @heap_ajust(ptr %r52,i32 %r53,i32 %r54)
	sub sp,sp,#4 @stack align 8bytes
	push {r0}
	mov r0,r8
	mov r1,r7
	mov r2,r6
	bl heap_ajust
	mov r5,r0
	pop {r0}
	add sp,sp,#4 @stack align 8bytes
	str r5,[fp,#-16]
	ldr r8,[fp,#-20]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-20]
.heap_sortL8:
	ldr r8,[fp,#-20]
	mov r7,#0
	cmp r8,r7
	bgt .heap_sortL7
	ble .heap_sortL9
.heap_sortL3:
	ldr r8,[fp,#-24]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-16]
	mov r8,r0
	ldr r7,[fp,#-20]
	ldr r6,[fp,#-16]
	@%r24 = call i32 @heap_ajust(ptr %r21,i32 %r22,i32 %r23)
	sub sp,sp,#4 @stack align 8bytes
	push {r0}
	mov r0,r8
	mov r1,r7
	mov r2,r6
	bl heap_ajust
	mov r5,r0
	pop {r0}
	add sp,sp,#4 @stack align 8bytes
	str r5,[fp,#-16]
	ldr r8,[fp,#-20]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-20]
.heap_sortL4:
	ldr r8,[fp,#-20]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	bgt .heap_sortL3
	ble .heap_sortL5
heap_ajust:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#24
.heap_ajustL0:
	str r1,[fp,#-20]
	str r2,[fp,#-24]
.heap_ajustL1:
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-20]
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	mov r7,#2
	mul r6,r8,r7
	mov r8,#1
	add r7,r6,r8
	str r7,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-24]
	mov r6,#1
	add r5,r7,r6
	cmp r8,r5
	blt .heap_ajustL3
.heap_ajustL5:
	mov r8,#0
	mov r0,r8
	add sp,sp,#24
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.heap_ajustL3:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-24]
	cmp r8,r7
	blt .heap_ajustL8
.heap_ajustL7:
	ldr r8,[fp,#-16]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-12]
	mov r6,r8
	add r8,r0,r6,lsl #2
	ldr r6,[r8]
	cmp r7,r6
	bgt .heap_ajustL10
.heap_ajustL11:
	mov r8,r0
	ldr r7,[fp,#-16]
	ldr r6,[fp,#-12]
	@%r57 = call i32 @swap(ptr %r54,i32 %r55,i32 %r56)
	sub sp,sp,#4 @stack align 8bytes
	push {r0}
	mov r0,r8
	mov r1,r7
	mov r2,r6
	bl swap
	mov r5,r0
	pop {r0}
	add sp,sp,#4 @stack align 8bytes
	str r5,[fp,#-16]
	ldr r8,[fp,#-12]
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	mov r7,#2
	mul r6,r8,r7
	mov r8,#1
	add r7,r6,r8
	str r7,[fp,#-12]
.heap_ajustL12:
.heap_ajustL4:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-24]
	mov r6,#1
	add r5,r7,r6
	cmp r8,r5
	blt .heap_ajustL3
	bge .heap_ajustL5
.heap_ajustL10:
	mov r8,#0
	mov r0,r8
	add sp,sp,#24
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.heap_ajustL8:
	ldr r8,[fp,#-12]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-12]
	mov r6,#1
	add r5,r8,r6
	mov r8,r5
	add r6,r0,r8,lsl #2
	ldr r8,[r6]
	cmp r7,r8
	bge .heap_ajustL7
.heap_ajustL6:
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .heap_ajustL7
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#56
.mainL0:
.mainL1:
	mov r8,#10
	ldr r7,.LPIC0
	str r8,[r7]
	mov r8,#4
	mov r7,#0
	mov r6,r7
	mvn r7,#55
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#3
	mov r7,#1
	mov r6,r7
	mvn r7,#55
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#9
	mov r7,#2
	mov r6,r7
	mvn r7,#55
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#2
	mov r7,#3
	mov r6,r7
	mvn r7,#55
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#0
	mov r7,#4
	mov r6,r7
	mvn r7,#55
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#1
	mov r7,#5
	mov r6,r7
	mvn r7,#55
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#6
	mov r7,#6
	mov r6,r7
	mvn r7,#55
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#5
	mov r7,#7
	mov r6,r7
	mvn r7,#55
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#7
	mov r7,#8
	mov r6,r7
	mvn r7,#55
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#8
	mov r7,#9
	mov r6,r7
	mvn r7,#55
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-16]
	mvn r8,#55
	add r7,fp,r8
	ldr r8,.LPIC0
	ldr r6,[r8]
	@%r37 = call i32 @heap_sort(ptr %r35,i32 %r36)
	mov r0,r7
	mov r1,r6
	bl heap_sort
	mov r8,r0
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	ldr r7,.LPIC0
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL3
.mainL5:
	mov r8,#0
	mov r0,r8
	add sp,sp,#56
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL3:
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	mov r7,r8
	mvn r8,#55
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putint(i32 %r48)
	mov r0,r8
	bl putint
	mov r8,#10
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putch(i32 %r50)
	mov r0,r8
	bl putch
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.mainL4:
	ldr r8,[fp,#-16]
	ldr r7,.LPIC0
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL3
	bge .mainL5
	.section	.note.GNU-stack,"",%progbits
