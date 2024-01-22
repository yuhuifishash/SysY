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
dfs:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#32
.dfsL0:
	mov r9,r2
	str r9,[fp,#-32]
	mov r9,r3
	str r9,[fp,#-28]
	ldr r9,[fp,#36]
	str r9,[fp,#-20]
	ldr r8,[fp,#32]
.dfsL1:
	movw r6,#13936
	movt r6,#11  @ 734832
	mul r6,r0,r6
	mov r5,r6
	movw r6,#40824
	movt r6,#0  @ 40824
	mul r6,r1,r6
	add r5,r5,r6
	movw r6,#2268
	movt r6,#0  @ 2268
	ldr r9,[fp,#-32]
	mul r6,r9,r6
	add r5,r5,r6
	mov r6,#126
	ldr r9,[fp,#-28]
	mul r6,r9,r6
	add r5,r5,r6
	rsb r6,r8,r8,lsl #3
	add r5,r5,r6
	ldr r9,[fp,#-20]
	add r5,r5,r9
	ldr r6,.LPIC1
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mvn r5,#0
	cmp r6,r5
	bne .dfsL2
.dfsL3:
	add r6,r0,r1
	ldr r9,[fp,#-32]
	add r5,r6,r9
	ldr r9,[fp,#-28]
	add r6,r5,r9
	add r5,r6,r8
	cmp r5,#0
	beq .dfsL4
.dfsL5:
	cmp r0,#0
	bne .dfsL6
.dfsL36:
	mov r9,#0
	str r9,[fp,#-12]
.dfsL7:
	cmp r1,#0
	bne .dfsL8
.dfsL37:
	ldr r9,[fp,#-12]
	mov r10,r9
	str r10,[fp,#-16]
.dfsL9:
	ldr r9,[fp,#-32]
	cmp r9,#0
	bne .dfsL10
.dfsL38:
	ldr r9,[fp,#-16]
	mov r10,r9
	str r10,[fp,#-24]
.dfsL11:
	ldr r9,[fp,#-28]
	cmp r9,#0
	bne .dfsL12
.dfsL39:
	ldr r9,[fp,#-24]
	mov r6,r9
.dfsL13:
	cmp r8,#0
	bne .dfsL14
.dfsL40:
	mov r5,r6
.dfsL15:
	movw r7,#12185
	movt r7,#17592  @ 1152921497
	smmul r7,r5,r7
	asr r4,r5,#31
	rsb r7,r4,r7,asr #28
	movw r4,#51719
	movt r4,#15258  @ 1000000007
	mul r7,r7,r4
	sub r4,r5,r7
	movw r7,#13936
	movt r7,#11  @ 734832
	mul r7,r0,r7
	mov r3,r7
	movw r7,#40824
	movt r7,#0  @ 40824
	mul r7,r1,r7
	add r3,r3,r7
	movw r7,#2268
	movt r7,#0  @ 2268
	ldr r9,[fp,#-32]
	mul r7,r9,r7
	add r3,r3,r7
	mov r7,#126
	ldr r9,[fp,#-28]
	mul r7,r9,r7
	add r3,r3,r7
	rsb r7,r8,r8,lsl #3
	add r3,r3,r7
	ldr r9,[fp,#-20]
	add r3,r3,r9
	ldr r7,.LPIC1
	add r2,r7,r3,lsl #2
	str r4,[r2]
	ldr r7,[r2]
	mov r0,r7
	add sp,sp,#32
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.dfsL14:
	ldr r9,[fp,#-28]
	add r7,r9,#1
	sub r4,r8,#1
	@%r153 = call i32 @dfs(i32 %r0,i32 %r1,i32 %r2,i32 %r148,i32 %r151,i32 5)
	push {r0,r1,r2}
	sub sp,sp,#8
	mov r9,#5
	str r9,[sp,#4]  @5
	str r4,[sp,#0]  @%r151
	ldr r2,[fp,#-32]
	mov r3,r7
	bl dfs
	add sp,sp,#8
	mov r3,r0
	pop {r0,r1,r2}
	mul r7,r8,r3
	add r4,r6,r7
	movw r7,#12185
	movt r7,#17592  @ 1152921497
	smmul r7,r4,r7
	asr r3,r4,#31
	rsb r7,r3,r7,asr #28
	movw r3,#51719
	movt r3,#15258  @ 1000000007
	mul r7,r7,r3
	sub r3,r4,r7
	mov r5,r3
	bl .dfsL15
.dfsL12:
.dfsL31:
.dfsL33:
	ldr r9,[fp,#-20]
	cmp r9,#5
	beq .dfsL34
.dfsL35:
	mov r7,#0
.dfsL32:
	ldr r9,[fp,#-28]
	sub r5,r9,r7
	ldr r9,[fp,#-32]
	add r4,r9,#1
	ldr r9,[fp,#-28]
	sub r3,r9,#1
	@%r134 = call i32 @dfs(i32 %r0,i32 %r1,i32 %r128,i32 %r131,i32 %r4,i32 4)
	push {r0,r1,r3}
	sub sp,sp,#8
	mov r9,#4
	str r9,[sp,#4]  @4
	str r8,[sp,#0]  @%r4
	mov r2,r4
	bl dfs
	add sp,sp,#8
	mov r2,r0
	pop {r0,r1,r3}
	mul r4,r5,r2
	ldr r9,[fp,#-24]
	add r5,r9,r4
	movw r4,#12185
	movt r4,#17592  @ 1152921497
	smmul r4,r5,r4
	asr r3,r5,#31
	rsb r4,r3,r4,asr #28
	movw r3,#51719
	movt r3,#15258  @ 1000000007
	mul r4,r4,r3
	sub r3,r5,r4
	mov r6,r3
	bl .dfsL13
.dfsL34:
	mov r7,#1
	bl .dfsL32
.dfsL10:
.dfsL26:
.dfsL28:
	ldr r9,[fp,#-20]
	cmp r9,#4
	beq .dfsL29
.dfsL30:
	mov r7,#0
.dfsL27:
	ldr r9,[fp,#-32]
	sub r6,r9,r7
	add r5,r1,#1
	ldr r9,[fp,#-32]
	sub r4,r9,#1
	@%r111 = call i32 @dfs(i32 %r0,i32 %r104,i32 %r107,i32 %r3,i32 %r4,i32 3)
	push {r0,r1,r2}
	sub sp,sp,#8
	mov r9,#3
	str r9,[sp,#4]  @3
	str r8,[sp,#0]  @%r4
	mov r1,r5
	mov r2,r4
	ldr r3,[fp,#-28]
	bl dfs
	add sp,sp,#8
	mov r3,r0
	pop {r0,r1,r2}
	mul r5,r6,r3
	ldr r9,[fp,#-16]
	add r6,r9,r5
	movw r5,#12185
	movt r5,#17592  @ 1152921497
	smmul r5,r6,r5
	asr r4,r6,#31
	rsb r5,r4,r5,asr #28
	movw r4,#51719
	movt r4,#15258  @ 1000000007
	mul r5,r5,r4
	sub r4,r6,r5
	mov r9,r4
	str r9,[fp,#-24]
	bl .dfsL11
.dfsL29:
	mov r7,#1
	bl .dfsL27
.dfsL8:
.dfsL21:
.dfsL23:
	ldr r9,[fp,#-20]
	cmp r9,#3
	beq .dfsL24
.dfsL25:
	mov r7,#0
.dfsL22:
	sub r6,r1,r7
	add r5,r0,#1
	sub r4,r1,#1
	@%r88 = call i32 @dfs(i32 %r80,i32 %r83,i32 %r2,i32 %r3,i32 %r4,i32 2)
	push {r0,r1,r2}
	sub sp,sp,#8
	mov r9,#2
	str r9,[sp,#4]  @2
	str r8,[sp,#0]  @%r4
	mov r0,r5
	mov r1,r4
	ldr r2,[fp,#-32]
	ldr r3,[fp,#-28]
	bl dfs
	add sp,sp,#8
	mov r3,r0
	pop {r0,r1,r2}
	mul r5,r6,r3
	ldr r9,[fp,#-12]
	add r6,r9,r5
	movw r5,#12185
	movt r5,#17592  @ 1152921497
	smmul r5,r6,r5
	asr r4,r6,#31
	rsb r5,r4,r5,asr #28
	movw r4,#51719
	movt r4,#15258  @ 1000000007
	mul r5,r5,r4
	sub r4,r6,r5
	mov r9,r4
	str r9,[fp,#-16]
	bl .dfsL9
.dfsL24:
	mov r7,#1
	bl .dfsL22
.dfsL6:
.dfsL16:
.dfsL18:
	ldr r9,[fp,#-20]
	cmp r9,#2
	beq .dfsL19
.dfsL20:
	mov r7,#0
.dfsL17:
	sub r6,r0,r7
	sub r5,r0,#1
	@%r65 = call i32 @dfs(i32 %r59,i32 %r1,i32 %r2,i32 %r3,i32 %r4,i32 1)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	sub sp,sp,#8
	mov r9,#1
	str r9,[sp,#4]  @1
	str r8,[sp,#0]  @%r4
	mov r0,r5
	ldr r2,[fp,#-32]
	ldr r3,[fp,#-28]
	bl dfs
	add sp,sp,#8
	mov r4,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	mul r5,r6,r4
	mov r6,r5
	movw r5,#12185
	movt r5,#17592  @ 1152921497
	smmul r5,r6,r5
	asr r4,r6,#31
	rsb r5,r4,r5,asr #28
	movw r4,#51719
	movt r4,#15258  @ 1000000007
	mul r5,r5,r4
	sub r4,r6,r5
	mov r9,r4
	str r9,[fp,#-12]
	bl .dfsL7
.dfsL19:
	mov r7,#1
	bl .dfsL17
.dfsL4:
	mov r0,#1
	add sp,sp,#32
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.dfsL2:
	movw r7,#13936
	movt r7,#11  @ 734832
	mul r7,r0,r7
	mov r6,r7
	movw r7,#40824
	movt r7,#0  @ 40824
	mul r7,r1,r7
	add r6,r6,r7
	movw r7,#2268
	movt r7,#0  @ 2268
	ldr r9,[fp,#-32]
	mul r7,r9,r7
	add r6,r6,r7
	mov r7,#126
	ldr r9,[fp,#-28]
	mul r7,r9,r7
	add r6,r6,r7
	rsb r7,r8,r8,lsl #3
	add r6,r6,r7
	ldr r9,[fp,#-20]
	add r6,r6,r9
	ldr r8,.LPIC1
	add r7,r8,r6,lsl #2
	ldr r8,[r7]
	mov r0,r8
	add sp,sp,#32
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
main:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#80
.mainL0:
.mainL1:
	@%r1 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	str r0,[fp,#-12]
	add sp,sp,#4 @stack align 8bytes
.mainL30:
	mov r9,#0
	str r9,[fp,#-20]
.mainL3:
.mainL31:
	movw r6,#13936
	movt r6,#11  @ 734832
	ldr r9,[fp,#-20]
	mul r6,r9,r6
	mov r5,r6
	ldr r6,.LPIC1
	add r9,r6,r5,lsl #2
	str r9,[fp,#-16]
	mov r9,#0
	str r9,[fp,#-28]
.mainL7:
.mainL32:
	movw r5,#40824
	movt r5,#0  @ 40824
	ldr r9,[fp,#-28]
	mul r5,r9,r5
	mov r3,r5
	ldr r9,[fp,#-16]
	add r10,r9,r3,lsl #2
	str r10,[fp,#-24]
	mov r9,#0
	str r9,[fp,#-40]
.mainL11:
.mainL33:
	movw r2,#2268
	movt r2,#0  @ 2268
	ldr r9,[fp,#-40]
	mul r2,r9,r2
	mov r1,r2
	ldr r9,[fp,#-24]
	add r10,r9,r1,lsl #2
	str r10,[fp,#-32]
	mov r9,#0
	str r9,[fp,#-76]
.mainL15:
.mainL34:
	mov r0,#126
	ldr r9,[fp,#-76]
	mul r0,r9,r0
	mov r8,r0
	ldr r9,[fp,#-32]
	add r10,r9,r8,lsl #2
	str r10,[fp,#-36]
	mov r8,#0
.mainL19:
.mainL35:
	rsb r4,r8,r8,lsl #3
	mov r7,r4
	ldr r9,[fp,#-36]
	add r10,r9,r7,lsl #2
	str r10,[fp,#-52]
	mov r7,#0
.mainL23:
	mov r5,r7
	ldr r9,[fp,#-52]
	add r6,r9,r5,lsl #2
	mvn r5,#0
	str r5,[r6]
	add r6,r7,#1
.mainL24:
	cmp r6,#7
	blt .mainL42
.mainL25:
	add r5,r8,#1
.mainL20:
	cmp r5,#18
	blt .mainL41
.mainL21:
	ldr r9,[fp,#-76]
	add r10,r9,#1
	str r10,[fp,#-80]
.mainL16:
	ldr r9,[fp,#-80]
	cmp r9,#18
	blt .mainL40
.mainL17:
	ldr r9,[fp,#-40]
	add r10,r9,#1
	str r10,[fp,#-56]
.mainL12:
	ldr r9,[fp,#-56]
	cmp r9,#18
	blt .mainL39
.mainL13:
	ldr r9,[fp,#-28]
	add r10,r9,#1
	str r10,[fp,#-44]
.mainL8:
	ldr r9,[fp,#-44]
	cmp r9,#18
	blt .mainL38
.mainL9:
	ldr r9,[fp,#-20]
	add r10,r9,#1
	str r10,[fp,#-48]
.mainL4:
	ldr r9,[fp,#-48]
	cmp r9,#18
	blt .mainL37
.mainL5:
	ldr r9,[fp,#-12]
	cmp r9,#0
	bgt .mainL36
.mainL29:
	mov r3,#1
	ldr r4,.LPIC0
	add r0,r4,r3,lsl #2
	ldr r9,[r0]
	str r9,[fp,#-60]
	mov r3,#2
	ldr r0,.LPIC0
	add r4,r0,r3,lsl #2
	ldr r9,[r4]
	str r9,[fp,#-64]
	mov r4,#3
	ldr r0,.LPIC0
	add r3,r0,r4,lsl #2
	ldr r9,[r3]
	str r9,[fp,#-68]
	mov r3,#4
	ldr r0,.LPIC0
	add r4,r0,r3,lsl #2
	ldr r9,[r4]
	str r9,[fp,#-72]
	mov r4,#5
	ldr r0,.LPIC0
	add r3,r0,r4,lsl #2
	ldr r4,[r3]
	@%r146 = call i32 @dfs(i32 %r132,i32 %r135,i32 %r138,i32 %r141,i32 %r144,i32 0)
	push {r0,r1,r2}
	sub sp,sp,#8
	mov r9,#0
	str r9,[sp,#4]  @0
	str r4,[sp,#0]  @%r144
	ldr r0,[fp,#-60]
	ldr r1,[fp,#-64]
	ldr r2,[fp,#-68]
	ldr r3,[fp,#-72]
	bl dfs
	add sp,sp,#8
	mov r3,r0
	pop {r0,r1,r2}
	@call void @putint(i32 %r146)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r0,r3
	bl putint
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	mov r0,r3
	add sp,sp,#80
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.mainL36:
	mov r4,#0
.mainL27:
	@%r107 = call i32 @getint()
	push {r0,r1,r2}
	bl getint
	mov r3,r0
	pop {r0,r1,r2}
	mov r0,r4
	ldr r1,.LPIC2
	add r2,r1,r0,lsl #2
	str r3,[r2]
	ldr r3,[r2]
	mov r2,r3
	ldr r3,.LPIC0
	add r1,r3,r2,lsl #2
	ldr r3,[r1]
	add r2,r3,#1
	str r2,[r1]
	add r3,r4,#1
.mainL28:
	ldr r9,[fp,#-12]
	cmp r3,r9
	bge .mainL29
.mainL43:
	mov r4,r3
	bl .mainL27
.mainL37:
	ldr r9,[fp,#-48]
	mov r10,r9
	str r10,[fp,#-20]
	bl .mainL3
.mainL38:
	ldr r9,[fp,#-44]
	mov r10,r9
	str r10,[fp,#-28]
	bl .mainL7
.mainL39:
	ldr r9,[fp,#-56]
	mov r10,r9
	str r10,[fp,#-40]
	bl .mainL11
.mainL40:
	ldr r9,[fp,#-80]
	mov r10,r9
	str r10,[fp,#-76]
	bl .mainL15
.mainL41:
	mov r8,r5
	bl .mainL19
.mainL42:
	mov r7,r6
	bl .mainL23
equal:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.equalL0:
.equalL1:
	cmp r0,r1
	beq .equalL2
.equalL3:
	mov r0,#0
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
.equalL2:
	mov r0,#1
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
