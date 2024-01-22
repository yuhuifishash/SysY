.arch armv7-a
.fpu vfpv3-d16
.arm
.data
a:
	.word  7
.text
.global main
.LPIC0:
	.word  a
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
.mainL2:
	ldr r8,[fp,#-12]
	mov r7,#100
	cmp r8,r7
	blt .mainL3
.mainL4:
	ldr r8,[fp,#-16]
	mov r7,#100
	cmp r8,r7
	blt .mainL7
.mainL8:
	mov r8,#0
	@call void @putint(i32 %r26)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
.mainL9:
	mov r8,#0
	mov r0,r8
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
.mainL7:
	mov r8,#1
	@call void @putint(i32 %r25)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	bl .mainL9
.mainL3:
	@%r9 = call i32 @func()
	sub sp,sp,#4 @stack align 8bytes
	bl func
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mov r7,#1
	cmp r8,r7
	beq .mainL5
.mainL6:
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .mainL2
.mainL5:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .mainL6
func:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.funcL0:
.funcL1:
	ldr r8,.LPIC0
	ldr r7,[r8]
	str r7,[fp,#-16]
	mov r8,#1
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	cmp r8,r7
	beq .funcL2
.funcL3:
	mov r8,#0
	mov r0,r8
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
.funcL2:
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	mov r8,#1
	mov r0,r8
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
