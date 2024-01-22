.arch armv7-a
.fpu vfpv3-d16
.arm
.data
maxn:
	.word  18
mod:
	.word  1000000007
dp:
	.space  52907904
list:
	.space  800
cns:
	.space  80
.text
.global main
.LPIC0:
	.word  cns
.LPIC1:
	.word  dp
.LPIC2:
	.word  list
.LPIC3:
	.word  maxn
.LPIC4:
	.word  mod
dfs:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#36
.dfsL0:
	ldr r7,[fp,#28]
	ldr r8,[fp,#24]
	str r0,[fp,#-16]
	str r1,[fp,#-20]
	str r2,[fp,#-24]
	str r3,[fp,#-28]
	str r8,[fp,#-32]
	str r7,[fp,#-36]
.dfsL1:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-20]
	ldr r6,[fp,#-24]
	ldr r5,[fp,#-28]
	ldr r4,[fp,#-32]
	ldr r3,[fp,#-36]
	movw r2,#13936
	movt r2,#11  @ 734832
	mul r2,r8,r2
	mov r8,r2
	movw r2,#40824
	movt r2,#0  @ 40824
	mul r2,r7,r2
	add r8,r8,r2
	movw r2,#2268
	movt r2,#0  @ 2268
	mul r2,r6,r2
	add r8,r8,r2
	mov r2,#126
	mul r2,r5,r2
	add r8,r8,r2
	rsb r2,r4,r4,lsl #3
	add r8,r8,r2
	add r8,r8,r3
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	bne .dfsL2
.dfsL3:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-20]
	add r6,r8,r7
	ldr r8,[fp,#-24]
	add r7,r6,r8
	ldr r8,[fp,#-28]
	add r6,r7,r8
	ldr r8,[fp,#-32]
	add r7,r6,r8
	mov r8,#0
	cmp r7,r8
	beq .dfsL4
.dfsL5:
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	cmp r8,#0
	bne .dfsL6
.dfsL7:
	ldr r8,[fp,#-20]
	cmp r8,#0
	bne .dfsL8
.dfsL9:
	ldr r8,[fp,#-24]
	cmp r8,#0
	bne .dfsL10
.dfsL11:
	ldr r8,[fp,#-28]
	cmp r8,#0
	bne .dfsL12
.dfsL13:
	ldr r8,[fp,#-32]
	cmp r8,#0
	bne .dfsL14
.dfsL15:
	ldr r8,[fp,#-12]
	ldr r7,.LPIC4
	ldr r6,[r7]
	@%r160 = call i32 @__modsi3(i32 %r158,i32 %r159)
	mov r0,r8
	mov r1,r6
	bl __modsi3
	mov r7,r0
	ldr r8,[fp,#-16]
	ldr r6,[fp,#-20]
	ldr r5,[fp,#-24]
	ldr r4,[fp,#-28]
	ldr r3,[fp,#-32]
	ldr r2,[fp,#-36]
	movw r1,#13936
	movt r1,#11  @ 734832
	mul r1,r8,r1
	mov r8,r1
	movw r1,#40824
	movt r1,#0  @ 40824
	mul r1,r6,r1
	add r8,r8,r1
	movw r1,#2268
	movt r1,#0  @ 2268
	mul r1,r5,r1
	add r8,r8,r1
	mov r1,#126
	mul r1,r4,r1
	add r8,r8,r1
	rsb r1,r3,r3,lsl #3
	add r8,r8,r1
	add r8,r8,r2
	ldr r6,.LPIC1
	add r5,r6,r8,lsl #2
	str r7,[r5]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-20]
	ldr r6,[fp,#-24]
	ldr r5,[fp,#-28]
	ldr r4,[fp,#-32]
	ldr r3,[fp,#-36]
	movw r2,#13936
	movt r2,#11  @ 734832
	mul r2,r8,r2
	mov r8,r2
	movw r2,#40824
	movt r2,#0  @ 40824
	mul r2,r7,r2
	add r8,r8,r2
	movw r2,#2268
	movt r2,#0  @ 2268
	mul r2,r6,r2
	add r8,r8,r2
	mov r2,#126
	mul r2,r5,r2
	add r8,r8,r2
	rsb r2,r4,r4,lsl #3
	add r8,r8,r2
	add r8,r8,r3
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r0,r8
	add sp,sp,#36
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.dfsL14:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-32]
	ldr r6,[fp,#-16]
	ldr r5,[fp,#-20]
	ldr r4,[fp,#-24]
	ldr r3,[fp,#-28]
	mov r2,#1
	add r1,r3,r2
	ldr r3,[fp,#-32]
	mov r2,#1
	sub r0,r3,r2
	mov r3,#5
	@%r153 = call i32 @dfs(i32 %r143,i32 %r144,i32 %r145,i32 %r148,i32 %r151,i32 %r152)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r3}
	sub sp,sp,#8
	str r3,[sp,#4]  @%r152
	str r0,[sp,#0]  @%r151
	mov r0,r6
	mov r2,r4
	mov r3,r1
	mov r1,r5
	bl dfs
	add sp,sp,#8
	mov r2,r0
	pop {r0,r1,r3}
	add sp,sp,#4 @stack align 8bytes
	mul r6,r7,r2
	add r7,r8,r6
	ldr r8,.LPIC4
	ldr r6,[r8]
	@%r157 = call i32 @__modsi3(i32 %r155,i32 %r156)
	mov r0,r7
	mov r1,r6
	bl __modsi3
	mov r8,r0
	str r8,[fp,#-12]
	bl .dfsL15
.dfsL12:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-28]
	ldr r6,[fp,#-36]
	mov r5,#5
	@%r122 = call i32 @equal(i32 %r120,i32 %r121)
	mov r0,r6
	mov r1,r5
	bl equal
	mov r4,r0
	sub r6,r7,r4
	ldr r7,[fp,#-16]
	ldr r5,[fp,#-20]
	ldr r4,[fp,#-24]
	mov r3,#1
	add r2,r4,r3
	ldr r4,[fp,#-28]
	mov r3,#1
	sub r1,r4,r3
	ldr r4,[fp,#-32]
	mov r3,#4
	@%r134 = call i32 @dfs(i32 %r124,i32 %r125,i32 %r128,i32 %r131,i32 %r132,i32 %r133)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r2,r3}
	sub sp,sp,#8
	str r3,[sp,#4]  @%r133
	str r4,[sp,#0]  @%r132
	mov r0,r7
	mov r3,r1
	mov r1,r5
	bl dfs
	add sp,sp,#8
	pop {r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	mul r7,r6,r0
	add r6,r8,r7
	ldr r8,.LPIC4
	ldr r7,[r8]
	@%r138 = call i32 @__modsi3(i32 %r136,i32 %r137)
	mov r0,r6
	mov r1,r7
	bl __modsi3
	mov r8,r0
	str r8,[fp,#-12]
	bl .dfsL13
.dfsL10:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-24]
	ldr r6,[fp,#-36]
	mov r5,#4
	@%r99 = call i32 @equal(i32 %r97,i32 %r98)
	mov r0,r6
	mov r1,r5
	bl equal
	mov r4,r0
	sub r6,r7,r4
	ldr r7,[fp,#-16]
	ldr r5,[fp,#-20]
	mov r4,#1
	add r3,r5,r4
	ldr r5,[fp,#-24]
	mov r4,#1
	sub r2,r5,r4
	ldr r5,[fp,#-28]
	ldr r4,[fp,#-32]
	mov r1,#3
	@%r111 = call i32 @dfs(i32 %r101,i32 %r104,i32 %r107,i32 %r108,i32 %r109,i32 %r110)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r2,r3}
	sub sp,sp,#8
	str r1,[sp,#4]  @%r110
	str r4,[sp,#0]  @%r109
	mov r0,r7
	mov r1,r3
	mov r3,r5
	bl dfs
	add sp,sp,#8
	pop {r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	mul r7,r6,r0
	add r6,r8,r7
	ldr r8,.LPIC4
	ldr r7,[r8]
	@%r115 = call i32 @__modsi3(i32 %r113,i32 %r114)
	mov r0,r6
	mov r1,r7
	bl __modsi3
	mov r8,r0
	str r8,[fp,#-12]
	bl .dfsL11
.dfsL8:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-20]
	ldr r6,[fp,#-36]
	mov r5,#3
	@%r76 = call i32 @equal(i32 %r74,i32 %r75)
	mov r0,r6
	mov r1,r5
	bl equal
	mov r4,r0
	sub r6,r7,r4
	ldr r7,[fp,#-16]
	mov r5,#1
	add r4,r7,r5
	ldr r7,[fp,#-20]
	mov r5,#1
	sub r3,r7,r5
	ldr r7,[fp,#-24]
	ldr r5,[fp,#-28]
	ldr r2,[fp,#-32]
	mov r1,#2
	@%r88 = call i32 @dfs(i32 %r80,i32 %r83,i32 %r84,i32 %r85,i32 %r86,i32 %r87)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r2,r3}
	sub sp,sp,#8
	str r1,[sp,#4]  @%r87
	str r2,[sp,#0]  @%r86
	mov r0,r4
	mov r1,r3
	mov r2,r7
	mov r3,r5
	bl dfs
	add sp,sp,#8
	pop {r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	mul r7,r6,r0
	add r6,r8,r7
	ldr r8,.LPIC4
	ldr r7,[r8]
	@%r92 = call i32 @__modsi3(i32 %r90,i32 %r91)
	mov r0,r6
	mov r1,r7
	bl __modsi3
	mov r8,r0
	str r8,[fp,#-12]
	bl .dfsL9
.dfsL6:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	ldr r6,[fp,#-36]
	mov r5,#2
	@%r55 = call i32 @equal(i32 %r53,i32 %r54)
	mov r0,r6
	mov r1,r5
	bl equal
	mov r4,r0
	sub r6,r7,r4
	ldr r7,[fp,#-16]
	mov r5,#1
	sub r4,r7,r5
	ldr r7,[fp,#-20]
	ldr r5,[fp,#-24]
	ldr r3,[fp,#-28]
	ldr r2,[fp,#-32]
	mov r1,#1
	@%r65 = call i32 @dfs(i32 %r59,i32 %r60,i32 %r61,i32 %r62,i32 %r63,i32 %r64)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r2,r3}
	sub sp,sp,#8
	str r1,[sp,#4]  @%r64
	str r2,[sp,#0]  @%r63
	mov r0,r4
	mov r1,r7
	mov r2,r5
	bl dfs
	add sp,sp,#8
	pop {r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	mul r7,r6,r0
	add r6,r8,r7
	ldr r8,.LPIC4
	ldr r7,[r8]
	@%r69 = call i32 @__modsi3(i32 %r67,i32 %r68)
	mov r0,r6
	mov r1,r7
	bl __modsi3
	mov r8,r0
	str r8,[fp,#-12]
	bl .dfsL7
.dfsL4:
	mov r8,#1
	mov r0,r8
	add sp,sp,#36
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.dfsL2:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-20]
	ldr r6,[fp,#-24]
	ldr r5,[fp,#-28]
	ldr r4,[fp,#-32]
	ldr r3,[fp,#-36]
	movw r2,#13936
	movt r2,#11  @ 734832
	mul r2,r8,r2
	mov r8,r2
	movw r2,#40824
	movt r2,#0  @ 40824
	mul r2,r7,r2
	add r8,r8,r2
	movw r2,#2268
	movt r2,#0  @ 2268
	mul r2,r6,r2
	add r8,r8,r2
	mov r2,#126
	mul r2,r5,r2
	add r8,r8,r2
	rsb r2,r4,r4,lsl #3
	add r8,r8,r2
	add r8,r8,r3
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r0,r8
	add sp,sp,#36
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#40
.mainL0:
.mainL1:
	@%r1 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-40]
	mov r8,#0
	str r8,[fp,#-36]
.mainL2:
	ldr r8,[fp,#-36]
	ldr r7,.LPIC3
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL3
.mainL4:
	mov r8,#0
	str r8,[fp,#-36]
.mainL20:
	ldr r8,[fp,#-36]
	ldr r7,[fp,#-40]
	cmp r8,r7
	blt .mainL21
.mainL22:
	mov r8,#1
	mov r7,r8
	ldr r8,.LPIC0
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	mov r7,#2
	mov r6,r7
	ldr r7,.LPIC0
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	mov r6,#3
	mov r5,r6
	ldr r6,.LPIC0
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mov r5,#4
	mov r4,r5
	ldr r5,.LPIC0
	add r3,r5,r4,lsl #2
	ldr r5,[r3]
	mov r4,#5
	mov r3,r4
	ldr r4,.LPIC0
	add r2,r4,r3,lsl #2
	ldr r4,[r2]
	mov r3,#0
	@%r111 = call i32 @dfs(i32 %r97,i32 %r100,i32 %r103,i32 %r106,i32 %r109,i32 %r110)
	push {r3}
	sub sp,sp,#8
	str r3,[sp,#4]  @%r110
	str r4,[sp,#0]  @%r109
	mov r0,r8
	mov r1,r7
	mov r2,r6
	mov r3,r5
	bl dfs
	add sp,sp,#8
	mov r2,r0
	pop {r3}
	str r2,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putint(i32 %r112)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#40
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL21:
	@%r77 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,[fp,#-36]
	mov r6,r7
	ldr r7,.LPIC2
	add r5,r7,r6,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-36]
	mov r7,r8
	ldr r8,.LPIC2
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	mov r7,r8
	ldr r8,.LPIC0
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	mov r7,#1
	add r6,r8,r7
	ldr r8,[fp,#-36]
	mov r7,r8
	ldr r8,.LPIC2
	add r5,r8,r7,lsl #2
	ldr r8,[r5]
	mov r7,r8
	ldr r8,.LPIC0
	add r5,r8,r7,lsl #2
	str r6,[r5]
	ldr r8,[fp,#-36]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-36]
	bl .mainL20
.mainL3:
	mov r8,#0
	str r8,[fp,#-32]
.mainL5:
	ldr r8,[fp,#-32]
	ldr r7,.LPIC3
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL6
.mainL7:
	ldr r8,[fp,#-36]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-36]
	bl .mainL2
.mainL6:
	mov r8,#0
	str r8,[fp,#-28]
.mainL8:
	ldr r8,[fp,#-28]
	bl .LPIC6
.LPIC5:
	.word maxn
.LPIC6:
	ldr r7,.LPIC5
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL9
.mainL10:
	ldr r8,[fp,#-32]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-32]
	bl .mainL5
.mainL9:
	mov r8,#0
	str r8,[fp,#-24]
.mainL11:
	ldr r8,[fp,#-24]
	ldr r7,.LPIC5
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL12
.mainL13:
	ldr r8,[fp,#-28]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-28]
	bl .mainL8
.mainL12:
	mov r8,#0
	str r8,[fp,#-20]
.mainL14:
	ldr r8,[fp,#-20]
	ldr r7,.LPIC5
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL15
.mainL16:
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-24]
	bl .mainL11
.mainL15:
	mov r8,#0
	str r8,[fp,#-16]
.mainL17:
	ldr r8,[fp,#-16]
	mov r7,#7
	cmp r8,r7
	blt .mainL18
.mainL19:
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
	bl .mainL14
.mainL18:
	mov r8,#1
	rsb r7,r8,#0
	ldr r8,[fp,#-36]
	ldr r6,[fp,#-32]
	ldr r5,[fp,#-28]
	ldr r4,[fp,#-24]
	ldr r3,[fp,#-20]
	ldr r2,[fp,#-16]
	movw r1,#13936
	movt r1,#11  @ 734832
	mul r1,r8,r1
	mov r8,r1
	movw r1,#40824
	movt r1,#0  @ 40824
	mul r1,r6,r1
	add r8,r8,r1
	movw r1,#2268
	movt r1,#0  @ 2268
	mul r1,r5,r1
	add r8,r8,r1
	mov r1,#126
	mul r1,r4,r1
	add r8,r8,r1
	rsb r1,r3,r3,lsl #3
	add r8,r8,r1
	add r8,r8,r2
	bl .LPIC8
.LPIC7:
	.word dp
.LPIC8:
	ldr r6,.LPIC7
	add r5,r6,r8,lsl #2
	str r7,[r5]
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .mainL17
equal:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.equalL0:
	str r0,[fp,#-12]
	str r1,[fp,#-16]
.equalL1:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	cmp r8,r7
	beq .equalL2
.equalL3:
	mov r8,#0
	mov r0,r8
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
.equalL2:
	mov r8,#1
	mov r0,r8
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
