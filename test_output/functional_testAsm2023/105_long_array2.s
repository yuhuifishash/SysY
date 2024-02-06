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
f1:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.f1L0:
.f1L1:
	mov r8,#4000
	mov r7,#5
	mov r6,r7
	ldr r7,.LPIC0
	add r5,r7,r6,lsl #2
	str r8,[r5]
	mov r8,#3
	mov r7,#4000
	mov r6,r7
	ldr r7,.LPIC0
	add r5,r7,r6,lsl #2
	str r8,[r5]
	mov r8,#7
	movw r7,#4095
	movt r7,#0  @ 4095
	mov r6,r7
	mov r7,r6
	ldr r6,.LPIC0
	add r5,r6,r7,lsl #2
	str r8,[r5]
	movw r8,#2216
	movt r8,#0  @ 2216
	mov r7,r8
	mov r8,r7
	ldr r7,.LPIC0
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#9
	add r6,r8,r7
	movw r8,#4095
	movt r8,#0  @ 4095
	mov r7,r8
	mov r8,r7
	ldr r7,.LPIC0
	add r5,r7,r8,lsl #2
	ldr r8,[r5]
	mov r7,r8
	add r8,r0,r7,lsl #2
	str r6,[r8]
	mov r8,#5
	mov r7,r8
	ldr r8,.LPIC0
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	mov r7,r8
	ldr r8,.LPIC0
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	mov r0,r8
	add sp,sp,#8
	pop {r5,r6,r7,r8}
	pop {fp,pc}
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
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
	mov r0,r7
	mov r1,#0
	mov r2,#16384
	bl memset
	mov r8,#1
	mov r7,#1024
	movw r6,#32760
	movt r6,#65535  @ -32776
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#2
	mov r7,#2048
	movw r6,#32760
	movt r6,#65535  @ -32776
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#3
	movw r7,#2049
	movt r7,#0  @ 2049
	mov r6,r7
	movw r7,#32760
	movt r7,#65535  @ -32776
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#4
	mov r7,#3072
	movw r6,#32760
	movt r6,#65535  @ -32776
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#5
	movw r7,#3073
	movt r7,#0  @ 3073
	mov r6,r7
	movw r7,#32760
	movt r7,#65535  @ -32776
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#6
	movw r7,#3074
	movt r7,#0  @ 3074
	mov r6,r7
	movw r7,#32760
	movt r7,#65535  @ -32776
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	movw r8,#49144
	movt r8,#65535  @ -16392
	add r7,fp,r8
	@call void @memset(i32 %r59,i32 0,i32 16384)
	mov r0,r7
	mov r1,#0
	mov r2,#16384
	bl memset
	mov r8,#1
	movw r7,#49144
	movt r7,#65535  @ -16392
	add r6,fp,r7
	str r8,[r6]
	mov r8,#2
	mov r7,#1
	movw r6,#49144
	movt r6,#65535  @ -16392
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#3
	mov r7,#4
	movw r6,#49144
	movt r6,#65535  @ -16392
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#4
	mov r7,#5
	movw r6,#49144
	movt r6,#65535  @ -16392
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#0
	lsl r7,r8,#2
	mov r8,r7
	movw r7,#49144
	movt r7,#65535  @ -16392
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	@%r24 = call i32 @f1(ptr %r23)
	mov r0,r7
	bl f1
	mov r8,r0
	@call void @putint(i32 %r24)
	mov r0,r8
	bl putint
	mov r8,#10
	@call void @putch(i32 %r25)
	mov r0,r8
	bl putch
	mov r8,#2
	mov r7,#0
	lsl r6,r8,#2
	mov r8,r6
	add r8,r8,r7
	movw r7,#49144
	movt r7,#65535  @ -16392
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	ldr r8,[r7]
	mov r0,r8
	movw r9,#32776
	movt r9,#0  @ 32776
	add sp,sp,r9
	pop {r5,r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
