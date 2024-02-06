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
	sub sp,sp,#20
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	@%r6 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-16]
	@%r7 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-20]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-20]
	@%r10 = call i32 @fun(i32 %r8,i32 %r9)
	mov r0,r8
	mov r1,r7
	bl fun
	mov r6,r0
	str r6,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putint(i32 %r11)
	mov r0,r8
	bl putint
	mov r8,#0
	mov r0,r8
	add sp,sp,#20
	pop {r6,r7,r8}
	pop {fp,pc}
fun:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#20
.funL0:
	str r0,[fp,#-16]
	str r1,[fp,#-20]
.funL1:
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-20]
	mov r7,#0
	cmp r8,r7
	bgt .funL3
.funL5:
	ldr r8,[fp,#-16]
	mov r0,r8
	add sp,sp,#20
	pop {r6,r7,r8}
	pop {fp,pc}
.funL3:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-20]
	@%r13 = call i32 @__modsi3(i32 %r11,i32 %r12)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	str r6,[fp,#-12]
	ldr r8,[fp,#-20]
	str r8,[fp,#-16]
	ldr r8,[fp,#-12]
	str r8,[fp,#-20]
.funL4:
	ldr r8,[fp,#-20]
	mov r7,#0
	cmp r8,r7
	bgt .funL3
	ble .funL5
	.section	.note.GNU-stack,"",%progbits
