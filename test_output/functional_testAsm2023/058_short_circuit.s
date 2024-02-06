.arch armv7-a
.fpu vfpv3-d16
.arm
.data
g:
	.word  0
.text
.global main
.LPIC0:
	.word  g
func:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.funcL0:
	str r0,[fp,#-12]
.funcL1:
	ldr r8,.LPIC0
	ldr r7,[r8]
	ldr r8,[fp,#-12]
	add r6,r7,r8
	ldr r8,.LPIC0
	str r6,[r8]
	ldr r8,.LPIC0
	ldr r7,[r8]
	@call void @putint(i32 %r5)
	mov r0,r7
	bl putint
	ldr r8,.LPIC0
	ldr r7,[r8]
	mov r0,r7
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
	@%r2 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#10
	cmp r8,r7
	bgt .mainL5
.mainL3:
	mov r8,#0
	str r8,[fp,#-12]
.mainL4:
	@%r16 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#11
	cmp r8,r7
	bgt .mainL10
.mainL8:
	mov r8,#0
	str r8,[fp,#-12]
.mainL9:
	@%r30 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#99
	cmp r8,r7
	ble .mainL12
.mainL15:
	ldr r8,[fp,#-12]
	@%r37 = call i32 @func(i32 %r36)
	mov r0,r8
	bl func
	mov r7,r0
	cmp r7,#0
	bne .mainL12
.mainL13:
	mov r8,#0
	str r8,[fp,#-12]
.mainL14:
	@%r44 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#100
	cmp r8,r7
	ble .mainL17
.mainL20:
	ldr r8,[fp,#-12]
	@%r51 = call i32 @func(i32 %r50)
	mov r0,r8
	bl func
	mov r7,r0
	cmp r7,#0
	bne .mainL17
.mainL18:
	mov r8,#0
	str r8,[fp,#-12]
.mainL19:
	mov r8,#99
	@%r59 = call i32 @func(i32 %r58)
	mov r0,r8
	bl func
	mov r7,r0
	cmp r7,#0
	beq .mainL25
.mainL23:
	mov r8,#0
	str r8,[fp,#-12]
.mainL24:
	mov r8,#0
	mov r0,r8
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
.mainL25:
	mov r8,#100
	@%r64 = call i32 @func(i32 %r63)
	mov r0,r8
	bl func
	mov r7,r0
	cmp r7,#0
	beq .mainL23
.mainL22:
	mov r8,#1
	str r8,[fp,#-12]
	bl .mainL24
.mainL17:
	mov r8,#1
	str r8,[fp,#-12]
	bl .mainL19
.mainL12:
	mov r8,#1
	str r8,[fp,#-12]
	bl .mainL14
.mainL10:
	ldr r8,[fp,#-12]
	@%r23 = call i32 @func(i32 %r22)
	mov r0,r8
	bl func
	mov r7,r0
	cmp r7,#0
	beq .mainL8
.mainL7:
	mov r8,#1
	str r8,[fp,#-12]
	bl .mainL9
.mainL5:
	ldr r8,[fp,#-12]
	@%r9 = call i32 @func(i32 %r8)
	mov r0,r8
	bl func
	mov r7,r0
	cmp r7,#0
	beq .mainL3
.mainL2:
	mov r8,#1
	str r8,[fp,#-12]
	bl .mainL4
	.section	.note.GNU-stack,"",%progbits
