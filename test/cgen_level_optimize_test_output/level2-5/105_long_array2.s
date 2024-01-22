.arch armv7-a
.fpu vfpv3-d16
.arm
.data
a:
	.space  16384
.text
.global main
.LPIC0:
	.word  a
f1:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.f1L0:
.f1L1:
	mov r8,#5
	ldr r7,.LPIC0
	add r6,r7,r8,lsl #2
	mov r8,#4000
	str r8,[r6]
	mov r8,#4000
	ldr r7,.LPIC0
	add r5,r7,r8,lsl #2
	mov r8,#3
	str r8,[r5]
	movw r8,#4095
	movt r8,#0  @ 4095
	mov r7,r8
	ldr r8,.LPIC0
	add r5,r8,r7,lsl #2
	mov r8,#7
	str r8,[r5]
	movw r8,#2216
	movt r8,#0  @ 2216
	mov r7,r8
	ldr r8,.LPIC0
	add r4,r8,r7,lsl #2
	ldr r8,[r4]
	add r7,r8,#9
	ldr r8,[r5]
	mov r5,r8
	add r8,r0,r5,lsl #2
	str r7,[r8]
	ldr r8,[r6]
	mov r7,r8
	ldr r8,.LPIC0
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	mov r0,r8
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	movw r9,#32776
	movt r9,#0  @ 32776
	sub sp,sp,r9
.mainL0:
.mainL1:
	movw r8,#32760
	movt r8,#65535  @ -32776
	add r7,fp,r8
	@call void @memset(i32 %r30,i32 0,i32 16384)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,#0
	mov r2,#16384
	bl memset
	add sp,sp,#4 @stack align 8bytes
	mov r8,#1024
	movw r7,#32760
	movt r7,#65535  @ -32776
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#1
	str r8,[r7]
	mov r8,#2048
	movw r7,#32760
	movt r7,#65535  @ -32776
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#2
	str r8,[r7]
	movw r8,#2049
	movt r8,#0  @ 2049
	mov r7,r8
	movw r8,#32760
	movt r8,#65535  @ -32776
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	mov r7,#3
	str r7,[r8]
	mov r8,#3072
	movw r7,#32760
	movt r7,#65535  @ -32776
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#4
	str r8,[r7]
	movw r8,#3073
	movt r8,#0  @ 3073
	mov r7,r8
	movw r8,#32760
	movt r8,#65535  @ -32776
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	mov r7,#5
	str r7,[r8]
	movw r8,#3074
	movt r8,#0  @ 3074
	mov r7,r8
	movw r8,#32760
	movt r8,#65535  @ -32776
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	mov r7,#6
	str r7,[r8]
	movw r8,#49144
	movt r8,#65535  @ -16392
	add r7,fp,r8
	@call void @memset(i32 %r65,i32 0,i32 16384)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,#0
	mov r2,#16384
	bl memset
	add sp,sp,#4 @stack align 8bytes
	movw r8,#49144
	movt r8,#65535  @ -16392
	add r7,fp,r8
	mov r8,#1
	str r8,[r7]
	mov r8,#1
	movw r7,#49144
	movt r7,#65535  @ -16392
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#2
	str r8,[r7]
	mov r8,#4
	movw r7,#49144
	movt r7,#65535  @ -16392
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#3
	str r8,[r7]
	mov r8,#5
	movw r7,#49144
	movt r7,#65535  @ -16392
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#4
	str r8,[r7]
	movw r8,#49144
	movt r8,#65535  @ -16392
	add r7,fp,r8
	@%r24 = call i32 @f1(ptr %r23)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl f1
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	@call void @putint(i32 %r24)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	bl putch
	add sp,sp,#4 @stack align 8bytes
	mov r8,#8
	movw r7,#49144
	movt r7,#65535  @ -16392
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	ldr r8,[r7]
	mov r0,r8
	movw r9,#32776
	movt r9,#0  @ 32776
	add sp,sp,r9
	pop {r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
