.arch armv7-a
.fpu vfpv3-d16
.arm
.data
__HELLO:
	.word  87
	.word  101
	.word  108
	.word  99
	.word  111
	.word  109
	.word  101
	.word  32
	.word  116
	.word  111
	.word  32
	.word  116
	.word  104
	.word  101
	.word  32
	.word  74
	.word  97
	.word  112
	.word  97
	.word  114
	.word  105
	.word  32
	.word  80
	.word  97
	.word  114
	.word  107
	.word  33
	.word  10
	.space  288
N4__mE___:
	.word  83
	.word  97
	.word  97
	.word  98
	.word  97
	.word  114
	.word  117
	.space  172
	.word  75
	.word  97
	.word  98
	.word  97
	.word  110
	.space  180
	.word  72
	.word  97
	.word  115
	.word  104
	.word  105
	.word  98
	.word  105
	.word  114
	.word  111
	.word  107
	.word  111
	.word  117
	.space  152
	.word  65
	.word  114
	.word  97
	.word  105
	.word  103
	.word  117
	.word  109
	.word  97
	.space  168
	.word  72
	.word  117
	.word  110
	.word  98
	.word  111
	.word  114
	.word  117
	.word  116
	.word  111
	.word  32
	.word  80
	.word  101
	.word  110
	.word  103
	.word  105
	.word  110
	.space  136
	.word  84
	.word  97
	.word  105
	.word  114
	.word  105
	.word  107
	.word  117
	.word  32
	.word  79
	.word  111
	.word  107
	.word  97
	.word  109
	.word  105
	.space  144
saY_HeI10_To:
	.word  32
	.word  115
	.word  97
	.word  121
	.word  115
	.word  32
	.word  104
	.word  101
	.word  108
	.word  108
	.word  111
	.word  32
	.word  116
	.word  111
	.word  32
	.space  100
RET:
	.word  10
	.space  16
.text
.global main
.LPIC0:
	.word  N4__mE___
.LPIC1:
	.word  RET
.LPIC2:
	.word  __HELLO
.LPIC3:
	.word  saY_HeI10_To
putstr:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.putstrL0:
.putstrL1:
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	cmp r7,#0
	bne .putstrL3
.putstrL5:
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
.putstrL3:
	ldr r8,[fp,#-12]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	@call void @putch(i32 %r10)
	sub sp,sp,#4 @stack align 8bytes
	push {r0}
	mov r0,r7
	bl putch
	pop {r0}
	add sp,sp,#4 @stack align 8bytes
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.putstrL4:
	ldr r8,[fp,#-12]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	cmp r7,#0
	bne .putstrL3
	beq .putstrL5
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#20
.mainL0:
.mainL1:
	ldr r8,.LPIC2
	@%r1 = call i32 @putstr(ptr %r0)
	mov r0,r8
	bl putstr
	mov r7,r0
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#1
	cmp r8,#0
	bne .mainL3
.mainL5:
	mov r8,#0
	mov r0,r8
	add sp,sp,#20
	pop {r6,r7,r8}
	pop {fp,pc}
.mainL3:
	ldr r8,[fp,#-20]
	mov r7,#6
	@%r9 = call i32 @__aeabi_idiv(i32 %r7,i32 %r8)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-16]
	ldr r8,[fp,#-20]
	mov r7,#6
	@%r13 = call i32 @__modsi3(i32 %r11,i32 %r12)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	str r6,[fp,#-12]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	cmp r8,r7
	bne .mainL6
.mainL7:
	ldr r8,[fp,#-20]
	mov r7,#17
	mul r6,r8,r7
	mov r8,#23
	add r7,r6,r8
	mov r8,#32
	@%r35 = call i32 @__modsi3(i32 %r33,i32 %r34)
	mov r0,r7
	mov r1,r8
	bl __modsi3
	mov r6,r0
	str r6,[fp,#-20]
	ldr r8,[fp,#-20]
	mov r7,#0
	cmp r8,r7
	beq .mainL8
.mainL9:
.mainL4:
	mov r8,#1
	cmp r8,#0
	bne .mainL3
	beq .mainL5
.mainL8:
	bl .mainL5
.mainL6:
	ldr r8,[fp,#-16]
	mov r7,#50
	mul r7,r8,r7
	mov r8,r7
	ldr r7,.LPIC0
	add r6,r7,r8,lsl #2
	@%r21 = call i32 @putstr(ptr %r20)
	mov r0,r6
	bl putstr
	mov r8,r0
	ldr r8,.LPIC3
	@%r23 = call i32 @putstr(ptr %r22)
	mov r0,r8
	bl putstr
	mov r7,r0
	ldr r8,[fp,#-12]
	mov r7,#50
	mul r7,r8,r7
	mov r8,r7
	ldr r7,.LPIC0
	add r6,r7,r8,lsl #2
	@%r26 = call i32 @putstr(ptr %r25)
	mov r0,r6
	bl putstr
	mov r8,r0
	ldr r8,.LPIC1
	@%r28 = call i32 @putstr(ptr %r27)
	mov r0,r8
	bl putstr
	mov r7,r0
	bl .mainL7
	.section	.note.GNU-stack,"",%progbits
