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
	add r7,fp,r8
	@%r5 = call i32 @read_str(ptr %r4)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl read_str
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	movw r8,#32760
	movt r8,#65535  @ -32776
	add r7,fp,r8
	movw r8,#49144
	movt r8,#65535  @ -16392
	add r6,fp,r8
	@%r8 = call i32 @KMP(ptr %r6,ptr %r7)
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
	mov r8,#10
	@call void @putch(i32 %r9)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	mov r0,r8
	movw r9,#32776
	movt r9,#0  @ 32776
	add sp,sp,r9
	pop {r6,r7,r8}
	pop {fp,pc}
KMP:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	movw r9,#16400
	movt r9,#0  @ 16400
	sub sp,sp,r9
.KMPL0:
.KMPL1:
	mov r8,r0
	movw r7,#49136
	movt r7,#65535  @ -16400
	add r6,fp,r7
	@call void @get_next(ptr %r3,ptr %r4)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1}
	mov r0,r8
	mov r1,r6
	bl get_next
	pop {r0,r1}
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,r8
	add r8,r1,r7,lsl #2
	ldr r7,[r8]
	cmp r7,#0
	bne .KMPL3
.KMPL5:
	mov r8,#1
	rsb r7,r8,#0
	mov r0,r7
	movw r9,#16400
	movt r9,#0  @ 16400
	add sp,sp,r9
	pop {r6,r7,r8}
	pop {fp,pc}
.KMPL3:
	ldr r8,[fp,#-16]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-12]
	mov r6,r8
	add r8,r1,r6,lsl #2
	ldr r6,[r8]
	cmp r7,r6
	beq .KMPL6
.KMPL7:
	ldr r8,[fp,#-16]
	mov r7,r8
	movw r8,#49136
	movt r8,#65535  @ -16400
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-16]
	ldr r8,[fp,#-16]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	beq .KMPL11
.KMPL12:
.KMPL8:
.KMPL4:
	ldr r8,[fp,#-12]
	mov r7,r8
	add r8,r1,r7,lsl #2
	ldr r7,[r8]
	cmp r7,#0
	bne .KMPL3
	beq .KMPL5
.KMPL11:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .KMPL12
.KMPL6:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	ldr r8,[fp,#-16]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	cmp r7,#0
	beq .KMPL9
.KMPL10:
	bl .KMPL8
.KMPL9:
	ldr r8,[fp,#-12]
	mov r0,r8
	movw r9,#16400
	movt r9,#0  @ 16400
	add sp,sp,r9
	pop {r6,r7,r8}
	pop {fp,pc}
get_next:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#28
.get_nextL0:
	mov r9,r1
	str r9,[fp,#-24]
	mov r9,r0
	str r9,[fp,#-20]
.get_nextL1:
	mov r8,#1
	rsb r7,r8,#0
	mov r8,#0
	mov r6,r8
	ldr r9,[fp,#-24]
	add r8,r9,r6,lsl #2
	str r7,[r8]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#1
	rsb r7,r8,#0
	str r7,[fp,#-12]
	ldr r8,[fp,#-16]
	mov r7,r8
	ldr r9,[fp,#-20]
	add r8,r9,r7,lsl #2
	ldr r7,[r8]
	cmp r7,#0
	bne .get_nextL3
.get_nextL5:
	add sp,sp,#28
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.get_nextL3:
	ldr r8,[fp,#-12]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	beq .get_nextL6
.get_nextL9:
	ldr r8,[fp,#-16]
	mov r7,r8
	ldr r9,[fp,#-20]
	add r8,r9,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-12]
	mov r6,r8
	ldr r9,[fp,#-20]
	add r8,r9,r6,lsl #2
	ldr r6,[r8]
	cmp r7,r6
	beq .get_nextL6
.get_nextL7:
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r9,[fp,#-24]
	add r8,r9,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-12]
.get_nextL8:
.get_nextL4:
	ldr r8,[fp,#-16]
	mov r7,r8
	ldr r9,[fp,#-20]
	add r8,r9,r7,lsl #2
	ldr r7,[r8]
	cmp r7,#0
	bne .get_nextL3
	beq .get_nextL5
.get_nextL6:
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	ldr r5,[fp,#-16]
	mov r4,#1
	add r3,r5,r4
	str r3,[fp,#-16]
	ldr r9,[fp,#-12]
	str r9,[fp,#-28]
	ldr r0,[fp,#-16]
	mov r1,r0
	ldr r9,[fp,#-24]
	add r2,r9,r1,lsl #2
	ldr r9,[fp,#-28]
	str r9,[r2]
	bl .get_nextL8
read_str:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.read_strL0:
.read_strL1:
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#1
	cmp r8,#0
	bne .read_strL3
.read_strL5:
	mov r8,#0
	ldr r7,[fp,#-12]
	mov r6,r7
	add r7,r0,r6,lsl #2
	str r8,[r7]
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
.read_strL3:
	@%r5 = call i32 @getch()
	sub sp,sp,#4 @stack align 8bytes
	push {r0}
	bl getch
	mov r8,r0
	pop {r0}
	add sp,sp,#4 @stack align 8bytes
	ldr r7,[fp,#-12]
	mov r6,r7
	add r7,r0,r6,lsl #2
	str r8,[r7]
	ldr r8,[fp,#-12]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	mov r8,#10
	cmp r7,r8
	beq .read_strL6
.read_strL7:
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.read_strL4:
	mov r8,#1
	cmp r8,#0
	bne .read_strL3
	beq .read_strL5
.read_strL6:
	bl .read_strL5
	.section	.note.GNU-stack,"",%progbits
