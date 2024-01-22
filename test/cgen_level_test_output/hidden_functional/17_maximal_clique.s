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
maxCliques:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#28
.maxCliquesL0:
	str r0,[fp,#-24]
	str r1,[fp,#-28]
.maxCliquesL1:
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#1
	str r8,[fp,#-16]
	mov r8,#1
	str r8,[fp,#-24]
.maxCliquesL2:
	ldr r8,[fp,#-16]
	ldr r7,.LPIC4
	ldr r6,[r7]
	cmp r8,r6
	ble .maxCliquesL3
.maxCliquesL4:
	ldr r8,[fp,#-20]
	mov r0,r8
	add sp,sp,#28
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.maxCliquesL3:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-28]
	mov r6,r7
	ldr r7,.LPIC5
	add r5,r7,r6,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-28]
	mov r7,#1
	add r6,r8,r7
	@%r20 = call i32 @is_clique(i32 %r19)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	bl is_clique
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r8,#0
	bne .maxCliquesL5
.maxCliquesL6:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .maxCliquesL2
.maxCliquesL5:
	ldr r8,[fp,#-28]
	ldr r7,[fp,#-20]
	cmp r8,r7
	bgt .maxCliquesL7
.maxCliquesL8:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-28]
	mov r6,#1
	add r5,r7,r6
	@%r33 = call i32 @maxCliques(i32 %r29,i32 %r32)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r5
	bl maxCliques
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	str r7,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-20]
	cmp r8,r7
	bgt .maxCliquesL9
.maxCliquesL10:
	bl .maxCliquesL6
.maxCliquesL9:
	ldr r8,[fp,#-12]
	str r8,[fp,#-20]
	bl .maxCliquesL10
.maxCliquesL7:
	ldr r8,[fp,#-28]
	str r8,[fp,#-20]
	bl .maxCliquesL8
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	movw r9,#4812
	movt r9,#0  @ 4812
	sub sp,sp,r9
.mainL0:
.mainL1:
	@%r0 = call i32 @getint()
	bl getint
	mov r8,r0
	ldr r7,.LPIC4
	str r8,[r7]
	@%r1 = call i32 @getint()
	bl getint
	mov r8,r0
	ldr r7,.LPIC1
	str r8,[r7]
	mov r8,#0
	str r8,[fp,#-12]
.mainL2:
	ldr r8,[fp,#-12]
	ldr r7,.LPIC1
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL3
.mainL4:
	mov r8,#0
	str r8,[fp,#-12]
.mainL5:
	ldr r8,[fp,#-12]
	ldr r7,.LPIC1
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL6
.mainL7:
	mov r8,#0
	mov r7,#1
	@%r52 = call i32 @maxCliques(i32 %r50,i32 %r51)
	mov r0,r8
	mov r1,r7
	bl maxCliques
	mov r6,r0
	@call void @putint(i32 %r52)
	mov r0,r6
	bl putint
	mov r8,#0
	mov r0,r8
	movw r9,#4812
	movt r9,#0  @ 4812
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL6:
	mov r8,#1
	ldr r7,[fp,#-12]
	mov r6,#0
	lsl r5,r7,#1
	mov r7,r5
	add r7,r7,r6
	movw r6,#60724
	movt r6,#65535  @ -4812
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	ldr r7,[r6]
	ldr r6,[fp,#-12]
	mov r5,#1
	lsl r4,r6,#1
	mov r6,r4
	add r6,r6,r5
	movw r5,#60724
	movt r5,#65535  @ -4812
	add r4,fp,r5
	add r5,r4,r6,lsl #2
	ldr r6,[r5]
	mov r5,#30
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC0
	add r5,r6,r7,lsl #2
	str r8,[r5]
	mov r8,#1
	ldr r7,[fp,#-12]
	mov r6,#1
	lsl r5,r7,#1
	mov r7,r5
	add r7,r7,r6
	movw r6,#60724
	movt r6,#65535  @ -4812
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	ldr r7,[r6]
	ldr r6,[fp,#-12]
	mov r5,#0
	lsl r4,r6,#1
	mov r6,r4
	add r6,r6,r5
	movw r5,#60724
	movt r5,#65535  @ -4812
	add r4,fp,r5
	add r5,r4,r6,lsl #2
	ldr r6,[r5]
	mov r5,#30
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC0
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .mainL5
.mainL3:
	@%r10 = call i32 @getint()
	bl getint
	mov r8,r0
	ldr r7,[fp,#-12]
	mov r6,#0
	lsl r5,r7,#1
	mov r7,r5
	add r7,r7,r6
	movw r6,#60724
	movt r6,#65535  @ -4812
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	@%r14 = call i32 @getint()
	bl getint
	mov r8,r0
	ldr r7,[fp,#-12]
	mov r6,#1
	lsl r5,r7,#1
	mov r7,r5
	add r7,r7,r6
	movw r6,#60724
	movt r6,#65535  @ -4812
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .mainL2
is_clique:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#20
.is_cliqueL0:
	str r0,[fp,#-20]
.is_cliqueL1:
	mov r8,#1
	str r8,[fp,#-16]
.is_cliqueL2:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-20]
	cmp r8,r7
	blt .is_cliqueL3
.is_cliqueL4:
	mov r8,#1
	mov r0,r8
	add sp,sp,#20
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.is_cliqueL3:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.is_cliqueL5:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-20]
	cmp r8,r7
	blt .is_cliqueL6
.is_cliqueL7:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .is_cliqueL2
.is_cliqueL6:
	ldr r8,[fp,#-16]
	mov r7,r8
	ldr r8,.LPIC5
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-12]
	mov r6,r7
	ldr r7,.LPIC5
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	mov r6,#30
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC0
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#0
	cmp r8,r7
	beq .is_cliqueL8
.is_cliqueL9:
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .is_cliqueL5
.is_cliqueL8:
	mov r8,#0
	mov r0,r8
	add sp,sp,#20
	pop {r5,r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
