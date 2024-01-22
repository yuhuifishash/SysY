.arch armv7-a
.fpu vfpv3-d16
.arm
.data
N:
	.word  0
newline:
	.word  0
.text
.global main
.LPIC0:
	.word  N
.LPIC1:
	.word  newline
factor:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.factorL0:
.factorL1:
	add r8,r0,#1
	cmp r8,#1
	bgt .factorL8
.factorL10:
	mov r8,#0
.factorL5:
	mov r0,r8
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.factorL8:
	add r7,r0,#1
	mov r6,#0
	mov r5,#1
.factorL3:
	@%r17 = call i32 @__modsi3(i32 %r0,i32 %r39)
	push {r0}
	mov r1,r5
	bl __modsi3
	mov r4,r0
	pop {r0}
	cmp r4,#0
	beq .factorL6
.factorL12:
	mov r4,r6
.factorL7:
	add r3,r5,#1
.factorL4:
	cmp r3,r7
	blt .factorL9
.factorL11:
	mov r8,r4
	bl .factorL5
.factorL9:
	mov r6,r4
	mov r5,r3
	bl .factorL3
.factorL6:
	add r8,r6,r5
	mov r4,r8
	bl .factorL7
main:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	mov r8,#4
	ldr r7,.LPIC0
	str r8,[r7]
	mov r8,#10
	ldr r7,.LPIC1
	str r8,[r7]
	@%r10 = call i32 @factor(i32 1478)
	movw r0,#1478
	movt r0,#0  @ 1478
	bl factor
	mov r8,r0
	mov r0,r8
	add sp,sp,#8
	pop {r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
