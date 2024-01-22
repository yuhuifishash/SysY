.arch armv7-a
.fpu vfpv3-d16
.arm
.data
maxN:
	.word  30
maxM:
	.word  600
store:
	.space  120
n:
	.word  0
m:
	.word  0
graph:
	.space  3600
.text
.global main
.LPIC0:
	.word  graph
.LPIC1:
	.word  m
.LPIC2:
	.word  maxM
.LPIC3:
	.word  maxN
.LPIC4:
	.word  n
.LPIC5:
	.word  store
maxCliques:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#12
.maxCliquesL0:
.maxCliquesL1:
	ldr r8,.LPIC4
	ldr r7,[r8]
	cmp r7,#1
	bge .maxCliquesL12
.maxCliquesL14:
	mov r9,#0
	str r9,[fp,#-12]
.maxCliquesL5:
	ldr r9,[fp,#-12]
	mov r0,r9
	add sp,sp,#12
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.maxCliquesL12:
	mov r7,r1
	ldr r6,.LPIC5
	add r5,r6,r7,lsl #2
	add r7,r1,#1
	mov r6,#1
	mov r4,#0
.maxCliquesL3:
	str r6,[r5]
	@%r20 = call i32 @is_clique(i32 %r19)
	sub sp,sp,#4 @stack align 8bytes
	push {r1}
	mov r0,r7
	bl is_clique
	mov r3,r0
	pop {r1}
	add sp,sp,#4 @stack align 8bytes
	cmp r3,#0
	bne .maxCliquesL6
.maxCliquesL16:
	mov r3,r4
.maxCliquesL7:
	add r2,r6,#1
.maxCliquesL4:
	ldr r0,.LPIC4
	ldr r8,[r0]
	cmp r2,r8
	ble .maxCliquesL13
.maxCliquesL15:
	mov r9,r3
	str r9,[fp,#-12]
	bl .maxCliquesL5
.maxCliquesL13:
	mov r6,r2
	mov r4,r3
	bl .maxCliquesL3
.maxCliquesL6:
	cmp r1,r4
	bgt .maxCliquesL8
.maxCliquesL17:
	mov r8,r4
.maxCliquesL9:
	add r4,r1,#1
	@%r33 = call i32 @maxCliques(i32 %r49,i32 %r32)
	push {r1,r3}
	mov r0,r6
	mov r1,r4
	bl maxCliques
	mov r2,r0
	pop {r1,r3}
	cmp r2,r8
	bgt .maxCliquesL10
.maxCliquesL18:
	mov r4,r8
.maxCliquesL11:
	mov r3,r4
	bl .maxCliquesL7
.maxCliquesL10:
	mov r4,r2
	bl .maxCliquesL11
.maxCliquesL8:
	mov r8,r1
	bl .maxCliquesL9
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	movw r9,#4808
	movt r9,#0  @ 4808
	sub sp,sp,r9
.mainL0:
.mainL1:
	@%r0 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,.LPIC4
	str r8,[r7]
	@%r1 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,.LPIC1
	str r8,[r7]
	ldr r8,.LPIC1
	ldr r7,[r8]
	cmp r7,#0
	bgt .mainL10
.mainL5:
	ldr r8,.LPIC1
	ldr r7,[r8]
	cmp r7,#0
	bgt .mainL11
.mainL9:
	@%r62 = call i32 @maxCliques(i32 0,i32 1)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#0
	mov r1,#1
	bl maxCliques
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	@call void @putint(i32 %r62)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r0,#0
	movw r9,#4808
	movt r9,#0  @ 4808
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL11:
	ldr r8,.LPIC1
	ldr r7,[r8]
	mov r8,#0
.mainL7:
	lsl r6,r8,#1
	mov r5,r6
	movw r6,#60728
	movt r6,#65535  @ -4808
	add r4,fp,r6
	add r6,r4,r5,lsl #2
	mov r5,r6
	ldr r4,[r5]
	mov r3,#1
	add r2,r6,r3,lsl #2
	ldr r6,[r2]
	mov r3,#30
	mul r3,r4,r3
	mov r4,r3
	add r4,r4,r6
	ldr r6,.LPIC0
	add r3,r6,r4,lsl #2
	mov r6,#1
	str r6,[r3]
	ldr r6,[r2]
	ldr r4,[r5]
	mov r5,#30
	mul r5,r6,r5
	mov r6,r5
	add r6,r6,r4
	ldr r5,.LPIC0
	add r4,r5,r6,lsl #2
	mov r6,#1
	str r6,[r4]
	add r6,r8,#1
.mainL8:
	cmp r6,r7
	bge .mainL9
.mainL13:
	mov r8,r6
	bl .mainL7
.mainL10:
	mov r8,#0
.mainL3:
	@%r10 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	lsl r6,r8,#1
	mov r5,r6
	movw r6,#60728
	movt r6,#65535  @ -4808
	add r4,fp,r6
	add r6,r4,r5,lsl #2
	mov r5,r6
	str r7,[r5]
	@%r14 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	mov r5,#1
	add r4,r6,r5,lsl #2
	str r7,[r4]
	add r7,r8,#1
.mainL4:
	ldr r6,.LPIC1
	ldr r5,[r6]
	cmp r7,r5
	bge .mainL5
.mainL12:
	mov r8,r7
	bl .mainL3
is_clique:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.is_cliqueL0:
.is_cliqueL1:
	cmp r0,#1
	bgt .is_cliqueL12
.is_cliqueL5:
	mov r0,#1
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.is_cliqueL12:
	mov r8,#1
.is_cliqueL3:
	add r7,r8,#1
	cmp r7,r0
	blt .is_cliqueL13
.is_cliqueL9:
	add r6,r8,#1
.is_cliqueL4:
	cmp r6,r0
	bge .is_cliqueL5
.is_cliqueL14:
	mov r8,r6
	bl .is_cliqueL3
.is_cliqueL13:
	mov r6,r8
	ldr r5,.LPIC5
	add r4,r5,r6,lsl #2
	mov r6,r7
.is_cliqueL7:
	ldr r7,[r4]
	mov r5,r6
	ldr r3,.LPIC5
	add r2,r3,r5,lsl #2
	ldr r5,[r2]
	mov r3,#30
	mul r3,r7,r3
	mov r7,r3
	add r7,r7,r5
	ldr r5,.LPIC0
	add r3,r5,r7,lsl #2
	ldr r7,[r3]
	cmp r7,#0
	beq .is_cliqueL10
.is_cliqueL11:
	add r7,r6,#1
.is_cliqueL8:
	cmp r7,r0
	bge .is_cliqueL9
.is_cliqueL15:
	mov r6,r7
	bl .is_cliqueL7
.is_cliqueL10:
	mov r0,#0
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
