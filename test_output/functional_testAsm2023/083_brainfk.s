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
interpret:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#20
.interpretL0:
.interpretL1:
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	cmp r7,#0
	bne .interpretL3
.interpretL5:
	add sp,sp,#20
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.interpretL3:
	ldr r8,[fp,#-12]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-20]
	ldr r8,[fp,#-20]
	mov r7,#62
	cmp r8,r7
	beq .interpretL6
.interpretL7:
	ldr r8,[fp,#-20]
	mov r7,#60
	cmp r8,r7
	beq .interpretL9
.interpretL10:
	ldr r8,[fp,#-20]
	mov r7,#43
	cmp r8,r7
	beq .interpretL12
.interpretL13:
	ldr r8,[fp,#-20]
	mov r7,#45
	cmp r8,r7
	beq .interpretL15
.interpretL16:
	ldr r8,[fp,#-20]
	mov r7,#46
	cmp r8,r7
	beq .interpretL18
.interpretL19:
	ldr r8,[fp,#-20]
	mov r7,#44
	cmp r8,r7
	beq .interpretL21
.interpretL22:
	ldr r8,[fp,#-20]
	mov r7,#93
	cmp r8,r7
	beq .interpretL26
.interpretL25:
.interpretL23:
.interpretL20:
.interpretL17:
.interpretL14:
.interpretL11:
.interpretL8:
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.interpretL4:
	ldr r8,[fp,#-12]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	cmp r7,#0
	bne .interpretL3
	beq .interpretL5
.interpretL26:
	ldr r8,.LPIC3
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC4
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	cmp r8,#0
	beq .interpretL25
.interpretL24:
	mov r8,#1
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	mov r7,#0
	cmp r8,r7
	bgt .interpretL29
.interpretL31:
	bl .interpretL25
.interpretL29:
	ldr r8,[fp,#-12]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-20]
	ldr r8,[fp,#-20]
	mov r7,#91
	cmp r8,r7
	beq .interpretL32
.interpretL33:
	ldr r8,[fp,#-20]
	mov r7,#93
	cmp r8,r7
	beq .interpretL35
.interpretL36:
.interpretL34:
.interpretL30:
	ldr r8,[fp,#-16]
	mov r7,#0
	cmp r8,r7
	bgt .interpretL29
	ble .interpretL31
.interpretL35:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .interpretL36
.interpretL32:
	ldr r8,[fp,#-16]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-16]
	bl .interpretL34
.interpretL21:
	@%r67 = call i32 @getch()
	push {r0}
	bl getch
	mov r8,r0
	pop {r0}
	ldr r7,.LPIC3
	ldr r6,[r7]
	mov r7,r6
	ldr r6,.LPIC4
	add r5,r6,r7,lsl #2
	str r8,[r5]
	bl .interpretL23
.interpretL18:
	ldr r8,.LPIC3
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC4
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	@call void @putch(i32 %r61)
	push {r0}
	mov r0,r8
	bl putch
	pop {r0}
	bl .interpretL20
.interpretL15:
	ldr r8,.LPIC3
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC4
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#1
	sub r6,r8,r7
	ldr r8,.LPIC3
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC4
	add r5,r7,r8,lsl #2
	str r6,[r5]
	bl .interpretL17
.interpretL12:
	ldr r8,.LPIC3
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC4
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#1
	add r6,r8,r7
	ldr r8,.LPIC3
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC4
	add r5,r7,r8,lsl #2
	str r6,[r5]
	bl .interpretL14
.interpretL9:
	ldr r8,.LPIC3
	ldr r7,[r8]
	mov r8,#1
	sub r6,r7,r8
	ldr r8,.LPIC3
	str r6,[r8]
	bl .interpretL11
.interpretL6:
	ldr r8,.LPIC3
	ldr r7,[r8]
	mov r8,#1
	add r6,r7,r8
	ldr r8,.LPIC3
	str r6,[r8]
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
	mov r8,#0
	mov r0,r8
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
read_program:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.read_programL0:
.read_programL1:
	mov r8,#0
	str r8,[fp,#-16]
	@%r3 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	cmp r8,r7
	blt .read_programL3
.read_programL5:
	mov r8,#0
	ldr r7,[fp,#-16]
	mov r6,r7
	ldr r7,.LPIC2
	add r5,r7,r6,lsl #2
	str r8,[r5]
	add sp,sp,#16
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.read_programL3:
	@%r9 = call i32 @getch()
	bl getch
	mov r8,r0
	ldr r7,[fp,#-16]
	mov r6,r7
	ldr r7,.LPIC2
	add r5,r7,r6,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.read_programL4:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	cmp r8,r7
	blt .read_programL3
	bge .read_programL5
	.section	.note.GNU-stack,"",%progbits
