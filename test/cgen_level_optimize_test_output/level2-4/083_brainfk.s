.arch armv7-a
.fpu vfpv3-d16
.arm
.data
TAPE_LEN:
	.word  65536
BUFFER_LEN:
	.word  32768
tape:
	.space  262144
program:
	.space  131072
ptr:
	.word  0
.text
.global main
.LPIC0:
	.word  BUFFER_LEN
.LPIC1:
	.word  TAPE_LEN
.LPIC2:
	.word  program
.LPIC3:
	.word  ptr
.LPIC4:
	.word  tape
interpret:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#64
.interpretL0:
	mov r9,r0
	str r9,[fp,#-12]
.interpretL1:
	ldr r9,[fp,#-12]
	mov r8,r9
	ldr r7,[r8]
	cmp r7,#0
	bne .interpretL37
.interpretL5:
	add sp,sp,#64
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.interpretL37:
	mov r9,#0
	str r9,[fp,#-64]
	mov r7,#0
.interpretL3:
	mov r6,r7
	ldr r9,[fp,#-12]
	add r5,r9,r6,lsl #2
	ldr r6,[r5]
	cmp r6,#62
	beq .interpretL6
.interpretL7:
	cmp r6,#60
	beq .interpretL9
.interpretL10:
	cmp r6,#43
	beq .interpretL12
.interpretL13:
	cmp r6,#45
	beq .interpretL15
.interpretL16:
	cmp r6,#46
	beq .interpretL18
.interpretL19:
	cmp r6,#44
	beq .interpretL21
.interpretL22:
	cmp r6,#93
	beq .interpretL26
.interpretL40:
	mov r6,r7
	ldr r9,[fp,#-64]
	mov r5,r9
.interpretL25:
	mov r9,r6
	str r9,[fp,#-56]
	mov r9,r5
	str r9,[fp,#-60]
.interpretL23:
	ldr r9,[fp,#-56]
	mov r10,r9
	str r10,[fp,#-48]
	ldr r9,[fp,#-60]
	mov r10,r9
	str r10,[fp,#-52]
.interpretL20:
	ldr r9,[fp,#-48]
	mov r10,r9
	str r10,[fp,#-16]
	ldr r9,[fp,#-52]
	mov r10,r9
	str r10,[fp,#-44]
.interpretL17:
	ldr r9,[fp,#-44]
	mov r10,r9
	str r10,[fp,#-20]
	ldr r9,[fp,#-16]
	mov r10,r9
	str r10,[fp,#-24]
.interpretL14:
	ldr r9,[fp,#-20]
	mov r10,r9
	str r10,[fp,#-28]
	ldr r9,[fp,#-24]
	mov r10,r9
	str r10,[fp,#-32]
.interpretL11:
	ldr r9,[fp,#-28]
	mov r10,r9
	str r10,[fp,#-36]
	ldr r9,[fp,#-32]
	mov r10,r9
	str r10,[fp,#-40]
.interpretL8:
	ldr r9,[fp,#-40]
	add r0,r9,#1
.interpretL4:
	mov r2,r0
	ldr r9,[fp,#-12]
	add r1,r9,r2,lsl #2
	ldr r2,[r1]
	cmp r2,#0
	beq .interpretL5
.interpretL39:
	ldr r9,[fp,#-36]
	mov r10,r9
	str r10,[fp,#-64]
	mov r7,r0
	bl .interpretL3
.interpretL26:
	ldr r2,.LPIC3
	ldr r1,[r2]
	mov r2,r1
	ldr r1,.LPIC4
	add r0,r1,r2,lsl #2
	ldr r2,[r0]
	cmp r2,#0
	bne .interpretL24
.interpretL41:
	mov r6,r7
	ldr r9,[fp,#-64]
	mov r5,r9
	bl .interpretL25
.interpretL24:
.interpretL38:
	mov r2,#1
	mov r1,r7
.interpretL29:
	sub r0,r1,#1
	mov r4,r0
	ldr r9,[fp,#-12]
	add r3,r9,r4,lsl #2
	ldr r4,[r3]
	cmp r4,#91
	beq .interpretL32
.interpretL33:
	cmp r4,#93
	beq .interpretL35
.interpretL43:
	mov r4,r2
.interpretL36:
	mov r3,r4
.interpretL34:
.interpretL30:
	cmp r3,#0
	bgt .interpretL42
.interpretL31:
	mov r6,r0
	mov r5,r3
	bl .interpretL25
.interpretL42:
	mov r2,r3
	mov r1,r0
	bl .interpretL29
.interpretL35:
	add r8,r2,#1
	mov r4,r8
	bl .interpretL36
.interpretL32:
	sub r8,r2,#1
	mov r3,r8
	bl .interpretL34
.interpretL21:
	@%r67 = call i32 @getch()
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	bl getch
	mov r8,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	ldr r6,.LPIC3
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC4
	add r4,r5,r6,lsl #2
	str r8,[r4]
	mov r9,r7
	str r9,[fp,#-56]
	ldr r9,[fp,#-64]
	mov r10,r9
	str r10,[fp,#-60]
	bl .interpretL23
.interpretL18:
	ldr r8,.LPIC3
	ldr r6,[r8]
	mov r8,r6
	ldr r6,.LPIC4
	add r5,r6,r8,lsl #2
	ldr r8,[r5]
	@call void @putch(i32 %r61)
	push {r0,r1,r2}
	mov r0,r8
	bl putch
	pop {r0,r1,r2}
	mov r9,r7
	str r9,[fp,#-48]
	ldr r9,[fp,#-64]
	mov r10,r9
	str r10,[fp,#-52]
	bl .interpretL20
.interpretL15:
	ldr r8,.LPIC3
	ldr r6,[r8]
	mov r8,r6
	ldr r6,.LPIC4
	add r5,r6,r8,lsl #2
	ldr r8,[r5]
	sub r6,r8,#1
	str r6,[r5]
	mov r9,r7
	str r9,[fp,#-16]
	ldr r9,[fp,#-64]
	mov r10,r9
	str r10,[fp,#-44]
	bl .interpretL17
.interpretL12:
	ldr r8,.LPIC3
	ldr r6,[r8]
	mov r8,r6
	ldr r6,.LPIC4
	add r5,r6,r8,lsl #2
	ldr r8,[r5]
	add r6,r8,#1
	str r6,[r5]
	ldr r9,[fp,#-64]
	mov r10,r9
	str r10,[fp,#-20]
	mov r9,r7
	str r9,[fp,#-24]
	bl .interpretL14
.interpretL9:
	ldr r8,.LPIC3
	ldr r6,[r8]
	sub r8,r6,#1
	ldr r6,.LPIC3
	str r8,[r6]
	ldr r9,[fp,#-64]
	mov r10,r9
	str r10,[fp,#-28]
	mov r9,r7
	str r9,[fp,#-32]
	bl .interpretL11
.interpretL6:
	ldr r8,.LPIC3
	ldr r6,[r8]
	add r8,r6,#1
	ldr r6,.LPIC3
	str r8,[r6]
	ldr r9,[fp,#-64]
	mov r10,r9
	str r10,[fp,#-36]
	mov r9,r7
	str r9,[fp,#-40]
	bl .interpretL8
main:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@call void @read_program()
	sub sp,sp,#4 @stack align 8bytes
	bl read_program
	add sp,sp,#4 @stack align 8bytes
	ldr r8,.LPIC2
	@call void @interpret(ptr %r0)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl interpret
	add sp,sp,#4 @stack align 8bytes
	mov r0,#0
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
read_program:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.read_programL0:
.read_programL1:
	@%r3 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r8,#0
	bgt .read_programL6
.read_programL8:
	mov r7,#0
.read_programL5:
	mov r6,r7
	ldr r5,.LPIC2
	add r4,r5,r6,lsl #2
	mov r6,#0
	str r6,[r4]
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.read_programL6:
	mov r6,#0
.read_programL3:
	@%r9 = call i32 @getch()
	sub sp,sp,#4 @stack align 8bytes
	bl getch
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	mov r4,r6
	ldr r3,.LPIC2
	add r2,r3,r4,lsl #2
	str r5,[r2]
	add r5,r6,#1
.read_programL4:
	cmp r5,r8
	blt .read_programL7
.read_programL9:
	mov r7,r5
	bl .read_programL5
.read_programL7:
	mov r6,r5
	bl .read_programL3
	.section	.note.GNU-stack,"",%progbits
