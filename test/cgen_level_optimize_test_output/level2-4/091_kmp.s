.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	movw r9,#32776
	movt r9,#0  @ 32776
	sub sp,sp,r9
.mainL0:
.mainL1:
	movw r8,#32760
	movt r8,#65535  @ -32776
	add r7,fp,r8
	@%r3 = call i32 @read_str(ptr %r2)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl read_str
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	movw r8,#49144
	movt r8,#65535  @ -16392
	add r6,fp,r8
	@%r5 = call i32 @read_str(ptr %r4)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	bl read_str
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	@%r8 = call i32 @KMP(ptr %r2,ptr %r4)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,r6
	bl KMP
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	@call void @putint(i32 %r8)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	bl putch
	add sp,sp,#4 @stack align 8bytes
	mov r0,#0
	movw r9,#32776
	movt r9,#0  @ 32776
	add sp,sp,r9
	pop {r6,r7,r8}
	pop {fp,pc}
KMP:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	movw r9,#16400
	movt r9,#0  @ 16400
	sub sp,sp,r9
.KMPL0:
	mov r9,r1
	movw r10,#49136
	movt r10,#65535  @ -16400
	str r9,[fp,r10]
	mov r9,r0
	movw r10,#49140
	movt r10,#65535  @ -16396
	str r9,[fp,r10]
.KMPL1:
	movw r10,#49140
	movt r10,#65535  @ -16396
	ldr r9,[fp,r10]
	mov r8,r9
	movw r7,#49144
	movt r7,#65535  @ -16392
	add r6,fp,r7
	@call void @get_next(ptr %r3,ptr %r4)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1}
	mov r0,r8
	mov r1,r6
	bl get_next
	pop {r0,r1}
	add sp,sp,#4 @stack align 8bytes
	movw r10,#49136
	movt r10,#65535  @ -16400
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r7,[r8]
	cmp r7,#0
	bne .KMPL13
.KMPL5:
	mov r0,#-1
	movw r9,#16400
	movt r9,#0  @ 16400
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.KMPL13:
	mov r8,#0
	mov r7,#0
.KMPL3:
	mov r6,r7
	movw r10,#49140
	movt r10,#65535  @ -16396
	ldr r9,[fp,r10]
	add r5,r9,r6,lsl #2
	ldr r6,[r5]
	mov r5,r8
	movw r10,#49136
	movt r10,#65535  @ -16400
	ldr r9,[fp,r10]
	add r4,r9,r5,lsl #2
	ldr r5,[r4]
	cmp r6,r5
	beq .KMPL6
.KMPL7:
	mov r6,r7
	movw r5,#49144
	movt r5,#65535  @ -16392
	add r4,fp,r5
	add r5,r4,r6,lsl #2
	ldr r6,[r5]
	mvn r5,#0
	cmp r6,r5
	beq .KMPL11
.KMPL15:
	mov r5,r8
	mov r4,r6
.KMPL12:
	mov r3,r5
	mov r2,r4
.KMPL8:
.KMPL4:
	mov r0,r3
	movw r10,#49136
	movt r10,#65535  @ -16400
	ldr r9,[fp,r10]
	add r1,r9,r0,lsl #2
	ldr r0,[r1]
	cmp r0,#0
	beq .KMPL5
.KMPL14:
	mov r8,r3
	mov r7,r2
	bl .KMPL3
.KMPL11:
	add r1,r6,#1
	add r6,r8,#1
	mov r5,r6
	mov r4,r1
	bl .KMPL12
.KMPL6:
	add r6,r7,#1
	add r7,r8,#1
	mov r8,r6
	movw r10,#49140
	movt r10,#65535  @ -16396
	ldr r9,[fp,r10]
	add r5,r9,r8,lsl #2
	ldr r8,[r5]
	cmp r8,#0
	beq .KMPL9
.KMPL10:
	mov r3,r7
	mov r2,r6
	bl .KMPL8
.KMPL9:
	mov r0,r7
	movw r9,#16400
	movt r9,#0  @ 16400
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
get_next:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#12
.get_nextL0:
	mov r9,r0
	str r9,[fp,#-12]
.get_nextL1:
	mov r8,r1
	mvn r7,#0
	str r7,[r8]
	ldr r9,[fp,#-12]
	mov r8,r9
	ldr r7,[r8]
	cmp r7,#0
	bne .get_nextL11
.get_nextL5:
	add sp,sp,#12
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.get_nextL11:
	mvn r8,#0
	mov r7,r8
	mov r8,#0
.get_nextL3:
	mvn r6,#0
	cmp r7,r6
	beq .get_nextL6
.get_nextL9:
	mov r6,r8
	ldr r9,[fp,#-12]
	add r5,r9,r6,lsl #2
	ldr r6,[r5]
	mov r5,r7
	ldr r9,[fp,#-12]
	add r4,r9,r5,lsl #2
	ldr r5,[r4]
	cmp r6,r5
	beq .get_nextL6
.get_nextL7:
	mov r6,r7
	add r5,r1,r6,lsl #2
	ldr r6,[r5]
	mov r5,r6
	mov r6,r8
.get_nextL8:
.get_nextL4:
	mov r4,r6
	ldr r9,[fp,#-12]
	add r3,r9,r4,lsl #2
	ldr r4,[r3]
	cmp r4,#0
	beq .get_nextL5
.get_nextL12:
	mov r7,r5
	mov r8,r6
	bl .get_nextL3
.get_nextL6:
	add r4,r7,#1
	add r3,r8,#1
	mov r2,r3
	add r0,r1,r2,lsl #2
	str r4,[r0]
	mov r5,r4
	mov r6,r3
	bl .get_nextL8
read_str:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.read_strL0:
.read_strL1:
.read_strL9:
	mov r8,#0
.read_strL3:
	@%r5 = call i32 @getch()
	sub sp,sp,#4 @stack align 8bytes
	push {r0}
	bl getch
	mov r7,r0
	pop {r0}
	add sp,sp,#4 @stack align 8bytes
	mov r6,r8
	add r5,r0,r6,lsl #2
	str r7,[r5]
	ldr r7,[r5]
	cmp r7,#10
	beq .read_strL6
.read_strL7:
	add r7,r8,#1
.read_strL4:
	mov r8,r7
	bl .read_strL3
.read_strL6:
.read_strL5:
	mov r7,r8
	add r6,r0,r7,lsl #2
	mov r7,#0
	str r7,[r6]
	mov r0,r8
	add sp,sp,#8
	pop {r5,r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
