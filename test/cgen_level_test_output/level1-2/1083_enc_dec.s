.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
enc:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.encL0:
	str r0,[fp,#-12]
.encL1:
	ldr r8,[fp,#-12]
	mov r7,#25
	cmp r8,r7
	bgt .encL2
.encL3:
	ldr r8,[fp,#-12]
	mov r7,#15
	sub r6,r8,r7
	str r6,[fp,#-12]
.encL4:
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
.encL2:
	ldr r8,[fp,#-12]
	mov r7,#60
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .encL4
dec:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.decL0:
	str r0,[fp,#-12]
.decL1:
	ldr r8,[fp,#-12]
	mov r7,#85
	cmp r8,r7
	bgt .decL2
.decL3:
	ldr r8,[fp,#-12]
	mov r7,#14
	add r6,r8,r7
	str r6,[fp,#-12]
.decL4:
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
.decL2:
	ldr r8,[fp,#-12]
	mov r7,#59
	sub r6,r8,r7
	str r6,[fp,#-12]
	bl .decL4
main:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#400
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	@%r6 = call i32 @enc(i32 %r5)
	mov r0,r8
	bl enc
	mov r7,r0
	str r7,[fp,#-12]
	ldr r8,[fp,#-12]
	@%r8 = call i32 @dec(i32 %r7)
	mov r0,r8
	bl dec
	mov r7,r0
	str r7,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putint(i32 %r9)
	mov r0,r8
	bl putint
	mov r8,#10
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putch(i32 %r11)
	mov r0,r8
	bl putch
	mov r8,#0
	mov r0,r8
	add sp,sp,#16
	pop {r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
