.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
main:@
	push {fp,lr}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
.mainL5:
.mainL2:
.mainL7:
.mainL13:
.mainL18:
.mainL22:
.mainL28:
.mainL26:
.mainL30:
.mainL33:
.mainL37:
	mov r0,#10
	add sp,sp,#8
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
