.arch armv7-a
.fpu vfpv3-d16
.arm
.data
N:
	.word  100
M:
	.word  20
array:
	.space  8000
.text
.global main
.LPIC0:
	.word  M
.LPIC1:
	.word  N
.LPIC2:
	.word  array
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
.mainL10:
	mov r8,#0
.mainL3:
.mainL11:
	mov r7,#100
	mul r7,r8,r7
	mov r6,r7
	ldr r7,.LPIC2
	add r5,r7,r6,lsl #2
	mov r7,#0
.mainL7:
	mov r6,r7
	add r4,r5,r6,lsl #2
	str r7,[r4]
	add r6,r7,#1
.mainL8:
	cmp r6,#100
	blt .mainL13
.mainL9:
	add r4,r8,#1
.mainL4:
	cmp r4,#20
	blt .mainL12
.mainL5:
	movw r3,#1923
	movt r3,#0  @ 1923
	mov r2,r3
	ldr r3,.LPIC2
	add r1,r3,r2,lsl #2
	ldr r3,[r1]
	mov r2,r3
	movw r3,#1800
	movt r3,#0  @ 1800
	add r2,r2,r3
	ldr r3,.LPIC2
	add r1,r3,r2,lsl #2
	ldr r3,[r1]
	mov r2,r3
	movw r3,#1700
	movt r3,#0  @ 1700
	add r2,r2,r3
	ldr r3,.LPIC2
	add r1,r3,r2,lsl #2
	ldr r3,[r1]
	mov r2,r3
	add r2,r2,#1600
	ldr r3,.LPIC2
	add r1,r3,r2,lsl #2
	ldr r3,[r1]
	mov r2,r3
	movw r3,#1500
	movt r3,#0  @ 1500
	add r2,r2,r3
	ldr r3,.LPIC2
	add r1,r3,r2,lsl #2
	ldr r3,[r1]
	mov r2,r3
	movw r3,#1400
	movt r3,#0  @ 1400
	add r2,r2,r3
	ldr r3,.LPIC2
	add r1,r3,r2,lsl #2
	ldr r3,[r1]
	mov r2,r3
	movw r3,#1300
	movt r3,#0  @ 1300
	add r2,r2,r3
	ldr r3,.LPIC2
	add r1,r3,r2,lsl #2
	ldr r3,[r1]
	mov r2,r3
	add r2,r2,#1200
	ldr r3,.LPIC2
	add r1,r3,r2,lsl #2
	ldr r3,[r1]
	mov r2,r3
	movw r3,#1100
	movt r3,#0  @ 1100
	add r2,r2,r3
	ldr r3,.LPIC2
	add r1,r3,r2,lsl #2
	ldr r3,[r1]
	mov r2,r3
	add r2,r2,#1000
	ldr r3,.LPIC2
	add r1,r3,r2,lsl #2
	ldr r3,[r1]
	mov r2,r3
	add r2,r2,#900
	ldr r3,.LPIC2
	add r1,r3,r2,lsl #2
	ldr r3,[r1]
	mov r2,r3
	add r2,r2,#800
	ldr r3,.LPIC2
	add r1,r3,r2,lsl #2
	ldr r3,[r1]
	mov r2,r3
	add r2,r2,#700
	ldr r3,.LPIC2
	add r1,r3,r2,lsl #2
	ldr r3,[r1]
	mov r2,r3
	add r2,r2,#600
	ldr r3,.LPIC2
	add r1,r3,r2,lsl #2
	ldr r3,[r1]
	mov r2,r3
	add r2,r2,#500
	ldr r3,.LPIC2
	add r1,r3,r2,lsl #2
	ldr r3,[r1]
	mov r2,r3
	add r2,r2,#400
	ldr r3,.LPIC2
	add r1,r3,r2,lsl #2
	ldr r3,[r1]
	mov r2,r3
	add r2,r2,#300
	ldr r3,.LPIC2
	add r1,r3,r2,lsl #2
	ldr r3,[r1]
	mov r2,r3
	add r2,r2,#200
	ldr r3,.LPIC2
	add r1,r3,r2,lsl #2
	ldr r3,[r1]
	mov r2,r3
	add r2,r2,#100
	ldr r3,.LPIC2
	add r1,r3,r2,lsl #2
	ldr r3,[r1]
	mov r2,r3
	ldr r3,.LPIC2
	add r1,r3,r2,lsl #2
	ldr r3,[r1]
	movw r2,#1918
	movt r2,#0  @ 1918
	mov r1,r2
	ldr r2,.LPIC2
	add r0,r2,r1,lsl #2
	ldr r2,[r0]
	mov r1,#100
	mul r1,r2,r1
	mov r2,r1
	add r2,r2,#17
	ldr r1,.LPIC2
	add r0,r1,r2,lsl #2
	ldr r2,[r0]
	mov r1,#100
	mul r1,r2,r1
	mov r2,r1
	add r2,r2,#16
	ldr r1,.LPIC2
	add r0,r1,r2,lsl #2
	ldr r2,[r0]
	mov r1,#100
	mul r1,r2,r1
	mov r2,r1
	add r2,r2,#15
	ldr r1,.LPIC2
	add r0,r1,r2,lsl #2
	ldr r2,[r0]
	mov r1,#100
	mul r1,r2,r1
	mov r2,r1
	add r2,r2,#14
	ldr r1,.LPIC2
	add r0,r1,r2,lsl #2
	ldr r2,[r0]
	mov r1,#100
	mul r1,r2,r1
	mov r2,r1
	add r2,r2,#13
	ldr r1,.LPIC2
	add r0,r1,r2,lsl #2
	ldr r2,[r0]
	mov r1,#100
	mul r1,r2,r1
	mov r2,r1
	add r2,r2,#12
	ldr r1,.LPIC2
	add r0,r1,r2,lsl #2
	ldr r2,[r0]
	mov r1,#100
	mul r1,r2,r1
	mov r2,r1
	add r2,r2,#11
	ldr r1,.LPIC2
	add r0,r1,r2,lsl #2
	ldr r2,[r0]
	mov r1,#100
	mul r1,r2,r1
	mov r2,r1
	add r2,r2,#10
	ldr r1,.LPIC2
	add r0,r1,r2,lsl #2
	ldr r2,[r0]
	mov r1,#100
	mul r1,r2,r1
	mov r2,r1
	add r2,r2,#9
	ldr r1,.LPIC2
	add r0,r1,r2,lsl #2
	ldr r2,[r0]
	mov r1,#100
	mul r1,r2,r1
	mov r2,r1
	add r2,r2,#8
	ldr r1,.LPIC2
	add r0,r1,r2,lsl #2
	ldr r2,[r0]
	mov r1,#100
	mul r1,r2,r1
	mov r2,r1
	add r2,r2,#7
	ldr r1,.LPIC2
	add r0,r1,r2,lsl #2
	ldr r2,[r0]
	mov r1,#100
	mul r1,r2,r1
	mov r2,r1
	add r2,r2,#6
	ldr r1,.LPIC2
	add r0,r1,r2,lsl #2
	ldr r2,[r0]
	mov r1,#100
	mul r1,r2,r1
	mov r2,r1
	add r2,r2,#5
	ldr r1,.LPIC2
	add r0,r1,r2,lsl #2
	ldr r2,[r0]
	mov r1,#100
	mul r1,r2,r1
	mov r2,r1
	add r2,r2,#4
	ldr r1,.LPIC2
	add r0,r1,r2,lsl #2
	ldr r2,[r0]
	mov r1,#100
	mul r1,r2,r1
	mov r2,r1
	add r2,r2,#3
	ldr r1,.LPIC2
	add r0,r1,r2,lsl #2
	ldr r2,[r0]
	mov r1,#100
	mul r1,r2,r1
	mov r2,r1
	add r2,r2,#2
	ldr r1,.LPIC2
	add r0,r1,r2,lsl #2
	ldr r2,[r0]
	mov r1,#100
	mul r1,r2,r1
	mov r2,r1
	add r2,r2,#1
	ldr r1,.LPIC2
	add r0,r1,r2,lsl #2
	ldr r2,[r0]
	mov r1,#100
	mul r1,r2,r1
	mov r2,r1
	ldr r1,.LPIC2
	add r0,r1,r2,lsl #2
	ldr r2,[r0]
	mov r1,#100
	mul r1,r2,r1
	mov r2,r1
	add r2,r2,#56
	ldr r1,.LPIC2
	add r0,r1,r2,lsl #2
	ldr r2,[r0]
	add r1,r3,r2
	@call void @putint(i32 %r158)
	push {r1}
	mov r0,r1
	bl putint
	pop {r1}
	mov r0,#0
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL12:
	mov r8,r4
	bl .mainL3
.mainL13:
	mov r7,r6
	bl .mainL7
	.section	.note.GNU-stack,"",%progbits
