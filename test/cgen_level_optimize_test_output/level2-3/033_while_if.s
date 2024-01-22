.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
get_one:@
	push {fp,lr}
	add fp,sp,#4
	sub sp,sp,#8
.get_oneL0:
.get_oneL1:
	mov r0,#1
	add sp,sp,#8
	pop {fp,pc}
deepWhileBr:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.deepWhileBrL0:
.deepWhileBrL1:
	add r8,r0,r1
	cmp r8,#75
	blt .deepWhileBrL15
.deepWhileBrL17:
	mov r7,r8
.deepWhileBrL5:
	mov r0,r7
	add sp,sp,#8
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.deepWhileBrL15:
	mov r6,r8
.deepWhileBrL3:
	cmp r6,#100
	blt .deepWhileBrL6
.deepWhileBrL19:
	mov r8,r6
.deepWhileBrL7:
.deepWhileBrL4:
	cmp r8,#75
	blt .deepWhileBrL16
.deepWhileBrL18:
	mov r7,r8
	bl .deepWhileBrL5
.deepWhileBrL16:
	mov r6,r8
	bl .deepWhileBrL3
.deepWhileBrL6:
	add r7,r6,#42
	cmp r7,#99
	bgt .deepWhileBrL8
.deepWhileBrL20:
	mov r6,r7
.deepWhileBrL9:
	mov r8,r6
	bl .deepWhileBrL7
.deepWhileBrL8:
.deepWhileBrL12:
.deepWhileBrL14:
.deepWhileBrL13:
.deepWhileBrL10:
.deepWhileBrL11:
	mov r6,#168
	bl .deepWhileBrL9
main:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r5 = call i32 @deepWhileBr(i32 2,i32 2)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#2
	mov r1,#2
	bl deepWhileBr
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	@call void @putint(i32 %r5)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r0,#0
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
