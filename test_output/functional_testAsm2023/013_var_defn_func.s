.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
defn:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.defnL0:
.defnL1:
	mov r8,#4
	mov r0,r8
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
main:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#12
.mainL0:
.mainL1:
	@%r1 = call i32 @defn()
	bl defn
	mov r8,r0
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#12
	pop {r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
