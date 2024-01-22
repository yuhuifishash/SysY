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
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
.mainL16:
	ldr r8,.LPIC0
	ldr r7,[r8]
	mov r8,#0
	mov r6,#0
.mainL3:
.mainL11:
.mainL13:
	cmp r7,#1
	beq .mainL14
.mainL15:
	mov r5,#0
.mainL12:
	cmp r5,#1
	beq .mainL6
.mainL18:
	mov r4,r6
.mainL7:
	add r3,r8,#1
.mainL4:
	cmp r3,#100
	blt .mainL17
.mainL5:
	cmp r4,#100
	blt .mainL8
.mainL9:
	@call void @putint(i32 0)
	push {r3}
	mov r0,#0
	bl putint
	pop {r3}
.mainL10:
	mov r0,#0
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL8:
	@call void @putint(i32 1)
	push {r3}
	mov r0,#1
	bl putint
	pop {r3}
	bl .mainL10
.mainL17:
	mov r8,r3
	mov r6,r4
	bl .mainL3
.mainL6:
	add r3,r6,#1
	mov r4,r3
	bl .mainL7
.mainL14:
	mov r5,#1
	bl .mainL12
func:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.funcL0:
.funcL1:
	ldr r8,.LPIC0
	ldr r7,[r8]
	cmp r7,#1
	beq .funcL2
.funcL3:
	mov r0,#0
	add sp,sp,#8
	pop {r7,r8}
	pop {fp,pc}
.funcL2:
	mov r0,#1
	add sp,sp,#8
	pop {r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
