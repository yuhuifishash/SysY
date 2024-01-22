.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
func:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.funcL0:
	str r0,[fp,#-12]
.funcL1:
	ldr r8,[fp,#-12]
	mov r7,#50
	cmp r8,r7
	ble .funcL2
.funcL3:
	ldr r8,[fp,#-12]
	@call void @putint(i32 %r9)
	mov r0,r8
	bl putint
	mov r8,#0
	mov r0,r8
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
.funcL2:
	ldr r8,[fp,#-12]
	@call void @putint(i32 %r7)
	mov r0,r8
	bl putint
	mov r8,#1
	mov r0,r8
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#0
	@%r3 = call i32 @func(i32 %r2)
	mov r0,r8
	bl func
	mov r7,r0
	mov r8,#1
	cmp r7,r8
	beq .mainL2
.mainL5:
	mov r8,#50
	@%r9 = call i32 @func(i32 %r8)
	mov r0,r8
	bl func
	mov r7,r0
	mov r8,#1
	cmp r7,r8
	beq .mainL7
.mainL3:
	mov r8,#1
	str r8,[fp,#-12]
.mainL4:
	mov r8,#50
	@%r29 = call i32 @func(i32 %r28)
	mov r0,r8
	bl func
	mov r7,r0
	mov r8,#1
	cmp r7,r8
	beq .mainL14
.mainL12:
	mov r8,#1
	@%r44 = call i32 @func(i32 %r43)
	mov r0,r8
	bl func
	mov r7,r0
	mov r8,#1
	cmp r7,r8
	beq .mainL9
.mainL10:
	mov r8,#1
	str r8,[fp,#-12]
.mainL11:
	mov r8,#0
	mov r0,r8
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
.mainL9:
	mov r8,#0
	str r8,[fp,#-12]
	bl .mainL11
.mainL14:
	mov r8,#40
	@%r35 = call i32 @func(i32 %r34)
	mov r0,r8
	bl func
	mov r7,r0
	mov r8,#1
	cmp r7,r8
	beq .mainL9
	bne .mainL12
.mainL7:
	mov r8,#100
	@%r15 = call i32 @func(i32 %r14)
	mov r0,r8
	bl func
	mov r7,r0
	mov r8,#0
	cmp r7,r8
	bne .mainL3
.mainL2:
	mov r8,#0
	str r8,[fp,#-12]
	bl .mainL4
	.section	.note.GNU-stack,"",%progbits
