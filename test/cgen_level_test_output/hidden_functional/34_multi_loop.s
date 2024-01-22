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
	sub sp,sp,#72
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-72]
	mov r8,#0
	str r8,[fp,#-68]
.mainL2:
	ldr r8,[fp,#-68]
	mov r7,#3
	cmp r8,r7
	blt .mainL3
.mainL4:
	ldr r8,[fp,#-72]
	mov r0,r8
	add sp,sp,#72
	pop {r6,r7,r8}
	pop {fp,pc}
.mainL3:
	mov r8,#0
	str r8,[fp,#-64]
.mainL5:
	ldr r8,[fp,#-64]
	mov r7,#4
	cmp r8,r7
	blt .mainL6
.mainL7:
	ldr r8,[fp,#-68]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-68]
	bl .mainL2
.mainL6:
	mov r8,#0
	str r8,[fp,#-60]
.mainL8:
	ldr r8,[fp,#-60]
	mov r7,#5
	cmp r8,r7
	blt .mainL9
.mainL10:
	ldr r8,[fp,#-64]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-64]
	bl .mainL5
.mainL9:
	mov r8,#0
	str r8,[fp,#-56]
.mainL11:
	ldr r8,[fp,#-56]
	mov r7,#3
	cmp r8,r7
	blt .mainL12
.mainL13:
	ldr r8,[fp,#-60]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-60]
	bl .mainL8
.mainL12:
	mov r8,#0
	str r8,[fp,#-52]
.mainL14:
	ldr r8,[fp,#-52]
	mov r7,#5
	cmp r8,r7
	blt .mainL15
.mainL16:
	ldr r8,[fp,#-56]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-56]
	bl .mainL11
.mainL15:
	mov r8,#0
	str r8,[fp,#-48]
.mainL17:
	ldr r8,[fp,#-48]
	mov r7,#4
	cmp r8,r7
	blt .mainL18
.mainL19:
	ldr r8,[fp,#-52]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-52]
	bl .mainL14
.mainL18:
	mov r8,#0
	str r8,[fp,#-44]
.mainL20:
	ldr r8,[fp,#-44]
	mov r7,#6
	cmp r8,r7
	blt .mainL21
.mainL22:
	ldr r8,[fp,#-48]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-48]
	bl .mainL17
.mainL21:
	mov r8,#0
	str r8,[fp,#-40]
.mainL23:
	ldr r8,[fp,#-40]
	mov r7,#5
	cmp r8,r7
	blt .mainL24
.mainL25:
	ldr r8,[fp,#-44]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-44]
	bl .mainL20
.mainL24:
	mov r8,#0
	str r8,[fp,#-36]
.mainL26:
	ldr r8,[fp,#-36]
	mov r7,#5
	cmp r8,r7
	blt .mainL27
.mainL28:
	ldr r8,[fp,#-40]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-40]
	bl .mainL23
.mainL27:
	mov r8,#0
	str r8,[fp,#-32]
.mainL29:
	ldr r8,[fp,#-32]
	mov r7,#3
	cmp r8,r7
	blt .mainL30
.mainL31:
	ldr r8,[fp,#-36]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-36]
	bl .mainL26
.mainL30:
	mov r8,#0
	str r8,[fp,#-28]
.mainL32:
	ldr r8,[fp,#-28]
	mov r7,#6
	cmp r8,r7
	blt .mainL33
.mainL34:
	ldr r8,[fp,#-32]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-32]
	bl .mainL29
.mainL33:
	mov r8,#0
	str r8,[fp,#-24]
.mainL35:
	ldr r8,[fp,#-24]
	mov r7,#7
	cmp r8,r7
	blt .mainL36
.mainL37:
	ldr r8,[fp,#-28]
	mov r7,#2
	add r6,r8,r7
	str r6,[fp,#-28]
	bl .mainL32
.mainL36:
	mov r8,#0
	str r8,[fp,#-20]
.mainL38:
	ldr r8,[fp,#-20]
	mov r7,#5
	cmp r8,r7
	blt .mainL39
.mainL40:
	ldr r8,[fp,#-24]
	mov r7,#2
	add r6,r8,r7
	str r6,[fp,#-24]
	bl .mainL35
.mainL39:
	mov r8,#0
	str r8,[fp,#-16]
.mainL41:
	ldr r8,[fp,#-16]
	mov r7,#3
	cmp r8,r7
	blt .mainL42
.mainL43:
	ldr r8,[fp,#-20]
	mov r7,#2
	add r6,r8,r7
	str r6,[fp,#-20]
	bl .mainL38
.mainL42:
	mov r8,#0
	str r8,[fp,#-12]
.mainL44:
	ldr r8,[fp,#-12]
	mov r7,#6
	cmp r8,r7
	blt .mainL45
.mainL46:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .mainL41
.mainL45:
	ldr r8,[fp,#-72]
	mov r7,#3
	add r6,r8,r7
	movw r8,#999
	movt r8,#0  @ 999
	mov r7,r8
	@%r111 = call i32 @__modsi3(i32 %r109,i32 %r110)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	mov r1,r7
	bl __modsi3
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-72]
	ldr r8,[fp,#-12]
	mov r7,#3
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .mainL44
	.section	.note.GNU-stack,"",%progbits
