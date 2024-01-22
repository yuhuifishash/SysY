.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
f:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.fL0:
.fL1:
	mul r8,r0,r1
	mov r0,r8
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
g:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.gL0:
.gL1:
	@%r6 = call i32 @__modsi3(i32 %r0,i32 %r1)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1}
	bl __modsi3
	mov r8,r0
	pop {r0,r1}
	add sp,sp,#4 @stack align 8bytes
	mov r0,r8
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
h:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.hL0:
.hL1:
.hL2:
.hL4:
	@%r15 = call i32 @__modsi3(i32 %r0,i32 %r1)
	push {r0,r1}
	bl __modsi3
	mov r8,r0
	pop {r0,r1}
.hL3:
.hL5:
.hL7:
	lsl r7,r8,#1
.hL6:
.hL8:
.hL10:
	mul r8,r0,r1
.hL9:
.hL11:
.hL13:
	rsbs r6,r8,#0
	and r5,r8,#3
	and r6,r6,#3
	it pl
	rsbpl r5,r6,#0
.hL12:
.hL14:
.hL16:
	mul r8,r7,r5
.hL15:
	mov r0,r8
	add sp,sp,#8
	pop {r5,r6,r7,r8}
	pop {fp,pc}
main:@
	push {fp,lr}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
.mainL2:
.mainL4:
.mainL5:
.mainL7:
.mainL6:
.mainL8:
.mainL10:
.mainL9:
.mainL11:
.mainL13:
.mainL12:
.mainL14:
.mainL16:
.mainL15:
.mainL17:
.mainL19:
.mainL18:
.mainL3:
	@call void @putint(i32 4)
	mov r0,#4
	bl putint
	mov r0,#0
	add sp,sp,#8
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
