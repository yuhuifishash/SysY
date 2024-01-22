.arch armv7-a
.fpu vfpv3-d16
.arm
.data
SHIFT_TABLE:
	.word  1
	.word  2
	.word  4
	.word  8
	.word  16
	.word  32
	.word  64
	.word  128
	.word  256
	.word  512
	.word  1024
	.word  2048
	.word  4096
	.word  8192
	.word  16384
	.word  32768
.text
.global main
.LPIC0:
	.word  SHIFT_TABLE
long_func:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	mov r9,#364
	sub sp,sp,r9
.long_funcL0:
.long_funcL1:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	mov r8,#0
	str r8,[fp,#-356]
	mov r8,#0
	str r8,[fp,#-352]
	mov r8,#0
	str r8,[fp,#-348]
	mov r8,#2
	str r8,[fp,#-344]
	mov r8,#0
	str r8,[fp,#-340]
	mov r8,#1
	str r8,[fp,#-336]
.long_funcL2:
	ldr r8,[fp,#-340]
	mov r7,#0
	cmp r8,r7
	bgt .long_funcL3
.long_funcL4:
	ldr r8,[fp,#-336]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	@call void @putint(i32 %r869)
	mov r0,r8
	bl putint
	mov r8,#10
	@call void @putch(i32 %r870)
	mov r0,r8
	bl putch
	mov r8,#2
	str r8,[fp,#-260]
	mov r8,#1
	str r8,[fp,#-256]
	mov r8,#1
	str r8,[fp,#-252]
.long_funcL194:
	ldr r8,[fp,#-256]
	mov r7,#0
	cmp r8,r7
	bgt .long_funcL195
.long_funcL196:
	ldr r8,[fp,#-252]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	@call void @putint(i32 %r1730)
	mov r0,r8
	bl putint
	mov r8,#10
	@call void @putch(i32 %r1731)
	mov r0,r8
	bl putch
	mov r8,#2
	str r8,[fp,#-348]
.long_funcL386:
	ldr r8,[fp,#-348]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL387
.long_funcL388:
	mov r8,#0
	str r8,[fp,#-348]
.long_funcL581:
	ldr r8,[fp,#-348]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL582
.long_funcL583:
	mov r8,#0
	mov r0,r8
	mov r9,#364
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.long_funcL582:
	mov r8,#2
	str r8,[fp,#-92]
	ldr r8,[fp,#-348]
	str r8,[fp,#-88]
	mov r8,#1
	str r8,[fp,#-84]
.long_funcL584:
	ldr r8,[fp,#-88]
	mov r7,#0
	cmp r8,r7
	bgt .long_funcL585
.long_funcL586:
	ldr r8,[fp,#-84]
	str r8,[fp,#-364]
	ldr r8,[fp,#-348]
	mov r7,r8
	ldr r8,.LPIC0
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-364]
	cmp r8,r7
	bne .long_funcL776
.long_funcL777:
	ldr r8,[fp,#-348]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-348]
	bl .long_funcL581
.long_funcL776:
	mov r8,#1
	mov r0,r8
	mov r9,#364
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.long_funcL585:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-88]
	str r8,[fp,#-356]
	mov r8,#1
	str r8,[fp,#-352]
.long_funcL587:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL588
.long_funcL589:
	ldr r8,[fp,#-364]
	cmp r8,#0
	bne .long_funcL594
.long_funcL595:
	ldr r8,[fp,#-92]
	str r8,[fp,#-44]
	ldr r8,[fp,#-92]
	str r8,[fp,#-40]
	mov r8,#0
	str r8,[fp,#-36]
.long_funcL680:
	ldr r8,[fp,#-40]
	cmp r8,#0
	bne .long_funcL681
.long_funcL682:
	ldr r8,[fp,#-36]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	str r8,[fp,#-92]
	ldr r8,[fp,#-88]
	str r8,[fp,#-356]
	mov r8,#1
	str r8,[fp,#-352]
	ldr r8,[fp,#-352]
	mov r7,#15
	cmp r8,r7
	bge .long_funcL764
.long_funcL765:
	ldr r8,[fp,#-352]
	mov r7,#0
	cmp r8,r7
	bgt .long_funcL770
.long_funcL771:
	ldr r8,[fp,#-356]
	str r8,[fp,#-364]
.long_funcL772:
.long_funcL766:
	ldr r8,[fp,#-364]
	str r8,[fp,#-88]
	bl .long_funcL584
.long_funcL770:
	ldr r8,[fp,#-356]
	movw r7,#32767
	movt r7,#0  @ 32767
	mov r6,r7
	cmp r8,r6
	bgt .long_funcL773
.long_funcL774:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC0
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r3463 = call i32 @__aeabi_idiv(i32 %r3459,i32 %r3462)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-364]
.long_funcL775:
	bl .long_funcL772
.long_funcL773:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC0
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r3447 = call i32 @__aeabi_idiv(i32 %r3443,i32 %r3446)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-356]
	mov r7,#65536
	add r6,r8,r7
	mov r8,#15
	ldr r7,[fp,#-352]
	sub r5,r8,r7
	mov r8,#1
	add r7,r5,r8
	mov r8,r7
	ldr r7,.LPIC0
	add r5,r7,r8,lsl #2
	ldr r8,[r5]
	sub r7,r6,r8
	str r7,[fp,#-364]
	bl .long_funcL775
.long_funcL764:
	ldr r8,[fp,#-356]
	mov r7,#0
	cmp r8,r7
	blt .long_funcL767
.long_funcL768:
	mov r8,#0
	str r8,[fp,#-364]
.long_funcL769:
	bl .long_funcL766
.long_funcL767:
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-364]
	bl .long_funcL769
.long_funcL681:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-40]
	str r8,[fp,#-356]
	mov r8,#1
	str r8,[fp,#-352]
.long_funcL683:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL684
.long_funcL685:
	ldr r8,[fp,#-364]
	cmp r8,#0
	bne .long_funcL690
.long_funcL691:
	ldr r8,[fp,#-44]
	str r8,[fp,#-20]
	ldr r8,[fp,#-44]
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
.long_funcL722:
	ldr r8,[fp,#-16]
	cmp r8,#0
	bne .long_funcL723
.long_funcL724:
	ldr r8,[fp,#-20]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	str r8,[fp,#-44]
	ldr r8,[fp,#-40]
	str r8,[fp,#-356]
	mov r8,#1
	str r8,[fp,#-352]
	ldr r8,[fp,#-352]
	mov r7,#15
	cmp r8,r7
	bge .long_funcL752
.long_funcL753:
	ldr r8,[fp,#-352]
	mov r7,#0
	cmp r8,r7
	bgt .long_funcL758
.long_funcL759:
	ldr r8,[fp,#-356]
	str r8,[fp,#-364]
.long_funcL760:
.long_funcL754:
	ldr r8,[fp,#-364]
	str r8,[fp,#-40]
	bl .long_funcL680
.long_funcL758:
	ldr r8,[fp,#-356]
	movw r7,#32767
	movt r7,#0  @ 32767
	mov r6,r7
	cmp r8,r6
	bgt .long_funcL761
.long_funcL762:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC0
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r3414 = call i32 @__aeabi_idiv(i32 %r3410,i32 %r3413)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-364]
.long_funcL763:
	bl .long_funcL760
.long_funcL761:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC0
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r3398 = call i32 @__aeabi_idiv(i32 %r3394,i32 %r3397)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-356]
	mov r7,#65536
	add r6,r8,r7
	mov r8,#15
	ldr r7,[fp,#-352]
	sub r5,r8,r7
	mov r8,#1
	add r7,r5,r8
	mov r8,r7
	ldr r7,.LPIC0
	add r5,r7,r8,lsl #2
	ldr r8,[r5]
	sub r7,r6,r8
	str r7,[fp,#-364]
	bl .long_funcL763
.long_funcL752:
	ldr r8,[fp,#-356]
	mov r7,#0
	cmp r8,r7
	blt .long_funcL755
.long_funcL756:
	mov r8,#0
	str r8,[fp,#-364]
.long_funcL757:
	bl .long_funcL754
.long_funcL755:
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-364]
	bl .long_funcL757
.long_funcL723:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-20]
	str r8,[fp,#-356]
	ldr r8,[fp,#-16]
	str r8,[fp,#-352]
.long_funcL725:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL726
.long_funcL727:
	ldr r8,[fp,#-364]
	str r8,[fp,#-12]
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-20]
	str r8,[fp,#-356]
	ldr r8,[fp,#-16]
	str r8,[fp,#-352]
.long_funcL735:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL736
.long_funcL737:
	ldr r8,[fp,#-364]
	str r8,[fp,#-16]
	mov r8,#1
	mov r7,#15
	cmp r8,r7
	bgt .long_funcL742
.long_funcL743:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-16]
	mov r7,#1
	mov r6,r7
	ldr r7,.LPIC0
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	mul r6,r8,r7
	str r6,[fp,#-356]
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-352]
.long_funcL745:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL746
.long_funcL747:
.long_funcL744:
	ldr r8,[fp,#-364]
	str r8,[fp,#-16]
	ldr r8,[fp,#-12]
	str r8,[fp,#-20]
	bl .long_funcL722
.long_funcL746:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3341 = call i32 @__modsi3(i32 %r3339,i32 %r3340)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL750
.long_funcL749:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3359 = call i32 @__aeabi_idiv(i32 %r3357,i32 %r3358)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3362 = call i32 @__aeabi_idiv(i32 %r3360,i32 %r3361)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL745
.long_funcL750:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3345 = call i32 @__modsi3(i32 %r3343,i32 %r3344)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL749
.long_funcL748:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	bl .LPIC2
.LPIC1:
	.word SHIFT_TABLE
.LPIC2:
	ldr r6,.LPIC1
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL749
.long_funcL742:
	mov r8,#0
	str r8,[fp,#-364]
	bl .long_funcL744
.long_funcL736:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3294 = call i32 @__modsi3(i32 %r3292,i32 %r3293)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL740
.long_funcL739:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3312 = call i32 @__aeabi_idiv(i32 %r3310,i32 %r3311)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3315 = call i32 @__aeabi_idiv(i32 %r3313,i32 %r3314)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL735
.long_funcL740:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3298 = call i32 @__modsi3(i32 %r3296,i32 %r3297)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL739
.long_funcL738:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC1
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL739
.long_funcL726:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3246 = call i32 @__modsi3(i32 %r3244,i32 %r3245)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL728
.long_funcL729:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3264 = call i32 @__modsi3(i32 %r3262,i32 %r3263)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL733
.long_funcL734:
.long_funcL730:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3275 = call i32 @__aeabi_idiv(i32 %r3273,i32 %r3274)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3278 = call i32 @__aeabi_idiv(i32 %r3276,i32 %r3277)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL725
.long_funcL733:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC1
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL734
.long_funcL728:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3250 = call i32 @__modsi3(i32 %r3248,i32 %r3249)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	mov r8,#0
	cmp r6,r8
	beq .long_funcL731
.long_funcL732:
	bl .long_funcL730
.long_funcL731:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC1
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL732
.long_funcL690:
	ldr r8,[fp,#-36]
	str r8,[fp,#-32]
	ldr r8,[fp,#-44]
	str r8,[fp,#-28]
	mov r8,#0
	str r8,[fp,#-24]
.long_funcL692:
	ldr r8,[fp,#-28]
	cmp r8,#0
	bne .long_funcL693
.long_funcL694:
	ldr r8,[fp,#-32]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	str r8,[fp,#-36]
	bl .long_funcL691
.long_funcL693:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-32]
	str r8,[fp,#-356]
	ldr r8,[fp,#-28]
	str r8,[fp,#-352]
.long_funcL695:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL696
.long_funcL697:
	ldr r8,[fp,#-364]
	str r8,[fp,#-24]
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-32]
	str r8,[fp,#-356]
	ldr r8,[fp,#-28]
	str r8,[fp,#-352]
.long_funcL705:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL706
.long_funcL707:
	ldr r8,[fp,#-364]
	str r8,[fp,#-28]
	mov r8,#1
	mov r7,#15
	cmp r8,r7
	bgt .long_funcL712
.long_funcL713:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-28]
	mov r7,#1
	mov r6,r7
	ldr r7,.LPIC1
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	mul r6,r8,r7
	str r6,[fp,#-356]
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-352]
.long_funcL715:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL716
.long_funcL717:
.long_funcL714:
	ldr r8,[fp,#-364]
	str r8,[fp,#-28]
	ldr r8,[fp,#-24]
	str r8,[fp,#-32]
	bl .long_funcL692
.long_funcL716:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3198 = call i32 @__modsi3(i32 %r3196,i32 %r3197)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL720
.long_funcL719:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3216 = call i32 @__aeabi_idiv(i32 %r3214,i32 %r3215)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3219 = call i32 @__aeabi_idiv(i32 %r3217,i32 %r3218)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL715
.long_funcL720:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3202 = call i32 @__modsi3(i32 %r3200,i32 %r3201)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL719
.long_funcL718:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC1
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL719
.long_funcL712:
	mov r8,#0
	str r8,[fp,#-364]
	bl .long_funcL714
.long_funcL706:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3151 = call i32 @__modsi3(i32 %r3149,i32 %r3150)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL710
.long_funcL709:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3169 = call i32 @__aeabi_idiv(i32 %r3167,i32 %r3168)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3172 = call i32 @__aeabi_idiv(i32 %r3170,i32 %r3171)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL705
.long_funcL710:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3155 = call i32 @__modsi3(i32 %r3153,i32 %r3154)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL709
.long_funcL708:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC1
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL709
.long_funcL696:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3103 = call i32 @__modsi3(i32 %r3101,i32 %r3102)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL698
.long_funcL699:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3121 = call i32 @__modsi3(i32 %r3119,i32 %r3120)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL703
.long_funcL704:
.long_funcL700:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3132 = call i32 @__aeabi_idiv(i32 %r3130,i32 %r3131)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3135 = call i32 @__aeabi_idiv(i32 %r3133,i32 %r3134)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL695
.long_funcL703:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC1
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL704
.long_funcL698:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3107 = call i32 @__modsi3(i32 %r3105,i32 %r3106)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	mov r8,#0
	cmp r6,r8
	beq .long_funcL701
.long_funcL702:
	bl .long_funcL700
.long_funcL701:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC1
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL702
.long_funcL684:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3057 = call i32 @__modsi3(i32 %r3055,i32 %r3056)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL688
.long_funcL687:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3075 = call i32 @__aeabi_idiv(i32 %r3073,i32 %r3074)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3078 = call i32 @__aeabi_idiv(i32 %r3076,i32 %r3077)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL683
.long_funcL688:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3061 = call i32 @__modsi3(i32 %r3059,i32 %r3060)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL687
.long_funcL686:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC1
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL687
.long_funcL594:
	ldr r8,[fp,#-84]
	str r8,[fp,#-80]
	ldr r8,[fp,#-92]
	str r8,[fp,#-76]
	mov r8,#0
	str r8,[fp,#-72]
.long_funcL596:
	ldr r8,[fp,#-76]
	cmp r8,#0
	bne .long_funcL597
.long_funcL598:
	ldr r8,[fp,#-72]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	str r8,[fp,#-84]
	bl .long_funcL595
.long_funcL597:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-76]
	str r8,[fp,#-356]
	mov r8,#1
	str r8,[fp,#-352]
.long_funcL599:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL600
.long_funcL601:
	ldr r8,[fp,#-364]
	cmp r8,#0
	bne .long_funcL606
.long_funcL607:
	ldr r8,[fp,#-80]
	str r8,[fp,#-56]
	ldr r8,[fp,#-80]
	str r8,[fp,#-52]
	mov r8,#0
	str r8,[fp,#-48]
.long_funcL638:
	ldr r8,[fp,#-52]
	cmp r8,#0
	bne .long_funcL639
.long_funcL640:
	ldr r8,[fp,#-56]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	str r8,[fp,#-80]
	ldr r8,[fp,#-76]
	str r8,[fp,#-356]
	mov r8,#1
	str r8,[fp,#-352]
	ldr r8,[fp,#-352]
	mov r7,#15
	cmp r8,r7
	bge .long_funcL668
.long_funcL669:
	ldr r8,[fp,#-352]
	mov r7,#0
	cmp r8,r7
	bgt .long_funcL674
.long_funcL675:
	ldr r8,[fp,#-356]
	str r8,[fp,#-364]
.long_funcL676:
.long_funcL670:
	ldr r8,[fp,#-364]
	str r8,[fp,#-76]
	bl .long_funcL596
.long_funcL674:
	ldr r8,[fp,#-356]
	movw r7,#32767
	movt r7,#0  @ 32767
	mov r6,r7
	cmp r8,r6
	bgt .long_funcL677
.long_funcL678:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	bl .LPIC4
.LPIC3:
	.word SHIFT_TABLE
.LPIC4:
	ldr r7,.LPIC3
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r3033 = call i32 @__aeabi_idiv(i32 %r3029,i32 %r3032)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-364]
.long_funcL679:
	bl .long_funcL676
.long_funcL677:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC3
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r3017 = call i32 @__aeabi_idiv(i32 %r3013,i32 %r3016)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-356]
	mov r7,#65536
	add r6,r8,r7
	mov r8,#15
	ldr r7,[fp,#-352]
	sub r5,r8,r7
	mov r8,#1
	add r7,r5,r8
	mov r8,r7
	ldr r7,.LPIC3
	add r5,r7,r8,lsl #2
	ldr r8,[r5]
	sub r7,r6,r8
	str r7,[fp,#-364]
	bl .long_funcL679
.long_funcL668:
	ldr r8,[fp,#-356]
	mov r7,#0
	cmp r8,r7
	blt .long_funcL671
.long_funcL672:
	mov r8,#0
	str r8,[fp,#-364]
.long_funcL673:
	bl .long_funcL670
.long_funcL671:
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-364]
	bl .long_funcL673
.long_funcL639:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-56]
	str r8,[fp,#-356]
	ldr r8,[fp,#-52]
	str r8,[fp,#-352]
.long_funcL641:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL642
.long_funcL643:
	ldr r8,[fp,#-364]
	str r8,[fp,#-48]
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-56]
	str r8,[fp,#-356]
	ldr r8,[fp,#-52]
	str r8,[fp,#-352]
.long_funcL651:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL652
.long_funcL653:
	ldr r8,[fp,#-364]
	str r8,[fp,#-52]
	mov r8,#1
	mov r7,#15
	cmp r8,r7
	bgt .long_funcL658
.long_funcL659:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-52]
	mov r7,#1
	mov r6,r7
	ldr r7,.LPIC3
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	mul r6,r8,r7
	str r6,[fp,#-356]
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-352]
.long_funcL661:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL662
.long_funcL663:
.long_funcL660:
	ldr r8,[fp,#-364]
	str r8,[fp,#-52]
	ldr r8,[fp,#-48]
	str r8,[fp,#-56]
	bl .long_funcL638
.long_funcL662:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2960 = call i32 @__modsi3(i32 %r2958,i32 %r2959)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL666
.long_funcL665:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2978 = call i32 @__aeabi_idiv(i32 %r2976,i32 %r2977)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2981 = call i32 @__aeabi_idiv(i32 %r2979,i32 %r2980)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL661
.long_funcL666:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2964 = call i32 @__modsi3(i32 %r2962,i32 %r2963)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL665
.long_funcL664:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC3
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL665
.long_funcL658:
	mov r8,#0
	str r8,[fp,#-364]
	bl .long_funcL660
.long_funcL652:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2913 = call i32 @__modsi3(i32 %r2911,i32 %r2912)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL656
.long_funcL655:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2931 = call i32 @__aeabi_idiv(i32 %r2929,i32 %r2930)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2934 = call i32 @__aeabi_idiv(i32 %r2932,i32 %r2933)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL651
.long_funcL656:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2917 = call i32 @__modsi3(i32 %r2915,i32 %r2916)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL655
.long_funcL654:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC3
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL655
.long_funcL642:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2865 = call i32 @__modsi3(i32 %r2863,i32 %r2864)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL644
.long_funcL645:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2883 = call i32 @__modsi3(i32 %r2881,i32 %r2882)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL649
.long_funcL650:
.long_funcL646:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2894 = call i32 @__aeabi_idiv(i32 %r2892,i32 %r2893)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2897 = call i32 @__aeabi_idiv(i32 %r2895,i32 %r2896)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL641
.long_funcL649:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC3
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL650
.long_funcL644:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2869 = call i32 @__modsi3(i32 %r2867,i32 %r2868)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	mov r8,#0
	cmp r6,r8
	beq .long_funcL647
.long_funcL648:
	bl .long_funcL646
.long_funcL647:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC3
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL648
.long_funcL606:
	ldr r8,[fp,#-72]
	str r8,[fp,#-68]
	ldr r8,[fp,#-80]
	str r8,[fp,#-64]
	mov r8,#0
	str r8,[fp,#-60]
.long_funcL608:
	ldr r8,[fp,#-64]
	cmp r8,#0
	bne .long_funcL609
.long_funcL610:
	ldr r8,[fp,#-68]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	str r8,[fp,#-72]
	bl .long_funcL607
.long_funcL609:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-68]
	str r8,[fp,#-356]
	ldr r8,[fp,#-64]
	str r8,[fp,#-352]
.long_funcL611:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL612
.long_funcL613:
	ldr r8,[fp,#-364]
	str r8,[fp,#-60]
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-68]
	str r8,[fp,#-356]
	ldr r8,[fp,#-64]
	str r8,[fp,#-352]
.long_funcL621:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL622
.long_funcL623:
	ldr r8,[fp,#-364]
	str r8,[fp,#-64]
	mov r8,#1
	mov r7,#15
	cmp r8,r7
	bgt .long_funcL628
.long_funcL629:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-64]
	mov r7,#1
	mov r6,r7
	ldr r7,.LPIC3
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	mul r6,r8,r7
	str r6,[fp,#-356]
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-352]
.long_funcL631:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL632
.long_funcL633:
.long_funcL630:
	ldr r8,[fp,#-364]
	str r8,[fp,#-64]
	ldr r8,[fp,#-60]
	str r8,[fp,#-68]
	bl .long_funcL608
.long_funcL632:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2817 = call i32 @__modsi3(i32 %r2815,i32 %r2816)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL636
.long_funcL635:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2835 = call i32 @__aeabi_idiv(i32 %r2833,i32 %r2834)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2838 = call i32 @__aeabi_idiv(i32 %r2836,i32 %r2837)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL631
.long_funcL636:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2821 = call i32 @__modsi3(i32 %r2819,i32 %r2820)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL635
.long_funcL634:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC3
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL635
.long_funcL628:
	mov r8,#0
	str r8,[fp,#-364]
	bl .long_funcL630
.long_funcL622:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2770 = call i32 @__modsi3(i32 %r2768,i32 %r2769)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL626
.long_funcL625:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2788 = call i32 @__aeabi_idiv(i32 %r2786,i32 %r2787)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2791 = call i32 @__aeabi_idiv(i32 %r2789,i32 %r2790)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL621
.long_funcL626:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2774 = call i32 @__modsi3(i32 %r2772,i32 %r2773)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL625
.long_funcL624:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	bl .LPIC6
.LPIC5:
	.word SHIFT_TABLE
.LPIC6:
	ldr r6,.LPIC5
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL625
.long_funcL612:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2722 = call i32 @__modsi3(i32 %r2720,i32 %r2721)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL614
.long_funcL615:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2740 = call i32 @__modsi3(i32 %r2738,i32 %r2739)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL619
.long_funcL620:
.long_funcL616:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2751 = call i32 @__aeabi_idiv(i32 %r2749,i32 %r2750)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2754 = call i32 @__aeabi_idiv(i32 %r2752,i32 %r2753)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL611
.long_funcL619:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC5
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL620
.long_funcL614:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2726 = call i32 @__modsi3(i32 %r2724,i32 %r2725)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	mov r8,#0
	cmp r6,r8
	beq .long_funcL617
.long_funcL618:
	bl .long_funcL616
.long_funcL617:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC5
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL618
.long_funcL600:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2676 = call i32 @__modsi3(i32 %r2674,i32 %r2675)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL604
.long_funcL603:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2694 = call i32 @__aeabi_idiv(i32 %r2692,i32 %r2693)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2697 = call i32 @__aeabi_idiv(i32 %r2695,i32 %r2696)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL599
.long_funcL604:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2680 = call i32 @__modsi3(i32 %r2678,i32 %r2679)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL603
.long_funcL602:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC5
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL603
.long_funcL588:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2630 = call i32 @__modsi3(i32 %r2628,i32 %r2629)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL592
.long_funcL591:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2648 = call i32 @__aeabi_idiv(i32 %r2646,i32 %r2647)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2651 = call i32 @__aeabi_idiv(i32 %r2649,i32 %r2650)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL587
.long_funcL592:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2634 = call i32 @__modsi3(i32 %r2632,i32 %r2633)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL591
.long_funcL590:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC5
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL591
.long_funcL387:
	mov r8,#2
	str r8,[fp,#-176]
	ldr r8,[fp,#-348]
	str r8,[fp,#-172]
	mov r8,#1
	str r8,[fp,#-168]
.long_funcL389:
	ldr r8,[fp,#-172]
	mov r7,#0
	cmp r8,r7
	bgt .long_funcL390
.long_funcL391:
	ldr r8,[fp,#-168]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	@call void @putint(i32 %r2597)
	mov r0,r8
	bl putint
	mov r8,#10
	@call void @putch(i32 %r2598)
	mov r0,r8
	bl putch
	ldr r8,[fp,#-348]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-348]
	bl .long_funcL386
.long_funcL390:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-172]
	str r8,[fp,#-356]
	mov r8,#1
	str r8,[fp,#-352]
.long_funcL392:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL393
.long_funcL394:
	ldr r8,[fp,#-364]
	cmp r8,#0
	bne .long_funcL399
.long_funcL400:
	ldr r8,[fp,#-176]
	str r8,[fp,#-128]
	ldr r8,[fp,#-176]
	str r8,[fp,#-124]
	mov r8,#0
	str r8,[fp,#-120]
.long_funcL485:
	ldr r8,[fp,#-124]
	cmp r8,#0
	bne .long_funcL486
.long_funcL487:
	ldr r8,[fp,#-120]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	str r8,[fp,#-176]
	ldr r8,[fp,#-172]
	str r8,[fp,#-356]
	mov r8,#1
	str r8,[fp,#-352]
	ldr r8,[fp,#-352]
	mov r7,#15
	cmp r8,r7
	bge .long_funcL569
.long_funcL570:
	ldr r8,[fp,#-352]
	mov r7,#0
	cmp r8,r7
	bgt .long_funcL575
.long_funcL576:
	ldr r8,[fp,#-356]
	str r8,[fp,#-364]
.long_funcL577:
.long_funcL571:
	ldr r8,[fp,#-364]
	str r8,[fp,#-172]
	bl .long_funcL389
.long_funcL575:
	ldr r8,[fp,#-356]
	movw r7,#32767
	movt r7,#0  @ 32767
	mov r6,r7
	cmp r8,r6
	bgt .long_funcL578
.long_funcL579:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC5
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r2593 = call i32 @__aeabi_idiv(i32 %r2589,i32 %r2592)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-364]
.long_funcL580:
	bl .long_funcL577
.long_funcL578:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC5
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r2577 = call i32 @__aeabi_idiv(i32 %r2573,i32 %r2576)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-356]
	mov r7,#65536
	add r6,r8,r7
	mov r8,#15
	ldr r7,[fp,#-352]
	sub r5,r8,r7
	mov r8,#1
	add r7,r5,r8
	mov r8,r7
	ldr r7,.LPIC5
	add r5,r7,r8,lsl #2
	ldr r8,[r5]
	sub r7,r6,r8
	str r7,[fp,#-364]
	bl .long_funcL580
.long_funcL569:
	ldr r8,[fp,#-356]
	mov r7,#0
	cmp r8,r7
	blt .long_funcL572
.long_funcL573:
	mov r8,#0
	str r8,[fp,#-364]
.long_funcL574:
	bl .long_funcL571
.long_funcL572:
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-364]
	bl .long_funcL574
.long_funcL486:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-124]
	str r8,[fp,#-356]
	mov r8,#1
	str r8,[fp,#-352]
.long_funcL488:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL489
.long_funcL490:
	ldr r8,[fp,#-364]
	cmp r8,#0
	bne .long_funcL495
.long_funcL496:
	ldr r8,[fp,#-128]
	str r8,[fp,#-104]
	ldr r8,[fp,#-128]
	str r8,[fp,#-100]
	mov r8,#0
	str r8,[fp,#-96]
.long_funcL527:
	ldr r8,[fp,#-100]
	cmp r8,#0
	bne .long_funcL528
.long_funcL529:
	ldr r8,[fp,#-104]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	str r8,[fp,#-128]
	ldr r8,[fp,#-124]
	str r8,[fp,#-356]
	mov r8,#1
	str r8,[fp,#-352]
	ldr r8,[fp,#-352]
	mov r7,#15
	cmp r8,r7
	bge .long_funcL557
.long_funcL558:
	ldr r8,[fp,#-352]
	mov r7,#0
	cmp r8,r7
	bgt .long_funcL563
.long_funcL564:
	ldr r8,[fp,#-356]
	str r8,[fp,#-364]
.long_funcL565:
.long_funcL559:
	ldr r8,[fp,#-364]
	str r8,[fp,#-124]
	bl .long_funcL485
.long_funcL563:
	ldr r8,[fp,#-356]
	movw r7,#32767
	movt r7,#0  @ 32767
	mov r6,r7
	cmp r8,r6
	bgt .long_funcL566
.long_funcL567:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC5
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r2544 = call i32 @__aeabi_idiv(i32 %r2540,i32 %r2543)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-364]
.long_funcL568:
	bl .long_funcL565
.long_funcL566:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC5
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r2528 = call i32 @__aeabi_idiv(i32 %r2524,i32 %r2527)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-356]
	mov r7,#65536
	add r6,r8,r7
	mov r8,#15
	ldr r7,[fp,#-352]
	sub r5,r8,r7
	mov r8,#1
	add r7,r5,r8
	mov r8,r7
	ldr r7,.LPIC5
	add r5,r7,r8,lsl #2
	ldr r8,[r5]
	sub r7,r6,r8
	str r7,[fp,#-364]
	bl .long_funcL568
.long_funcL557:
	ldr r8,[fp,#-356]
	mov r7,#0
	cmp r8,r7
	blt .long_funcL560
.long_funcL561:
	mov r8,#0
	str r8,[fp,#-364]
.long_funcL562:
	bl .long_funcL559
.long_funcL560:
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-364]
	bl .long_funcL562
.long_funcL528:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-104]
	str r8,[fp,#-356]
	ldr r8,[fp,#-100]
	str r8,[fp,#-352]
.long_funcL530:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL531
.long_funcL532:
	ldr r8,[fp,#-364]
	str r8,[fp,#-96]
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-104]
	str r8,[fp,#-356]
	ldr r8,[fp,#-100]
	str r8,[fp,#-352]
.long_funcL540:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL541
.long_funcL542:
	ldr r8,[fp,#-364]
	str r8,[fp,#-100]
	mov r8,#1
	mov r7,#15
	cmp r8,r7
	bgt .long_funcL547
.long_funcL548:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-100]
	mov r7,#1
	mov r6,r7
	bl .LPIC8
.LPIC7:
	.word SHIFT_TABLE
.LPIC8:
	ldr r7,.LPIC7
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	mul r6,r8,r7
	str r6,[fp,#-356]
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-352]
.long_funcL550:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL551
.long_funcL552:
.long_funcL549:
	ldr r8,[fp,#-364]
	str r8,[fp,#-100]
	ldr r8,[fp,#-96]
	str r8,[fp,#-104]
	bl .long_funcL527
.long_funcL551:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2471 = call i32 @__modsi3(i32 %r2469,i32 %r2470)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL555
.long_funcL554:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2489 = call i32 @__aeabi_idiv(i32 %r2487,i32 %r2488)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2492 = call i32 @__aeabi_idiv(i32 %r2490,i32 %r2491)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL550
.long_funcL555:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2475 = call i32 @__modsi3(i32 %r2473,i32 %r2474)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL554
.long_funcL553:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC7
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL554
.long_funcL547:
	mov r8,#0
	str r8,[fp,#-364]
	bl .long_funcL549
.long_funcL541:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2424 = call i32 @__modsi3(i32 %r2422,i32 %r2423)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL545
.long_funcL544:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2442 = call i32 @__aeabi_idiv(i32 %r2440,i32 %r2441)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2445 = call i32 @__aeabi_idiv(i32 %r2443,i32 %r2444)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL540
.long_funcL545:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2428 = call i32 @__modsi3(i32 %r2426,i32 %r2427)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL544
.long_funcL543:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC7
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL544
.long_funcL531:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2376 = call i32 @__modsi3(i32 %r2374,i32 %r2375)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL533
.long_funcL534:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2394 = call i32 @__modsi3(i32 %r2392,i32 %r2393)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL538
.long_funcL539:
.long_funcL535:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2405 = call i32 @__aeabi_idiv(i32 %r2403,i32 %r2404)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2408 = call i32 @__aeabi_idiv(i32 %r2406,i32 %r2407)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL530
.long_funcL538:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC7
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL539
.long_funcL533:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2380 = call i32 @__modsi3(i32 %r2378,i32 %r2379)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	mov r8,#0
	cmp r6,r8
	beq .long_funcL536
.long_funcL537:
	bl .long_funcL535
.long_funcL536:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC7
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL537
.long_funcL495:
	ldr r8,[fp,#-120]
	str r8,[fp,#-116]
	ldr r8,[fp,#-128]
	str r8,[fp,#-112]
	mov r8,#0
	str r8,[fp,#-108]
.long_funcL497:
	ldr r8,[fp,#-112]
	cmp r8,#0
	bne .long_funcL498
.long_funcL499:
	ldr r8,[fp,#-116]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	str r8,[fp,#-120]
	bl .long_funcL496
.long_funcL498:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-116]
	str r8,[fp,#-356]
	ldr r8,[fp,#-112]
	str r8,[fp,#-352]
.long_funcL500:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL501
.long_funcL502:
	ldr r8,[fp,#-364]
	str r8,[fp,#-108]
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-116]
	str r8,[fp,#-356]
	ldr r8,[fp,#-112]
	str r8,[fp,#-352]
.long_funcL510:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL511
.long_funcL512:
	ldr r8,[fp,#-364]
	str r8,[fp,#-112]
	mov r8,#1
	mov r7,#15
	cmp r8,r7
	bgt .long_funcL517
.long_funcL518:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-112]
	mov r7,#1
	mov r6,r7
	ldr r7,.LPIC7
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	mul r6,r8,r7
	str r6,[fp,#-356]
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-352]
.long_funcL520:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL521
.long_funcL522:
.long_funcL519:
	ldr r8,[fp,#-364]
	str r8,[fp,#-112]
	ldr r8,[fp,#-108]
	str r8,[fp,#-116]
	bl .long_funcL497
.long_funcL521:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2328 = call i32 @__modsi3(i32 %r2326,i32 %r2327)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL525
.long_funcL524:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2346 = call i32 @__aeabi_idiv(i32 %r2344,i32 %r2345)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2349 = call i32 @__aeabi_idiv(i32 %r2347,i32 %r2348)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL520
.long_funcL525:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2332 = call i32 @__modsi3(i32 %r2330,i32 %r2331)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL524
.long_funcL523:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC7
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL524
.long_funcL517:
	mov r8,#0
	str r8,[fp,#-364]
	bl .long_funcL519
.long_funcL511:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2281 = call i32 @__modsi3(i32 %r2279,i32 %r2280)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL515
.long_funcL514:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2299 = call i32 @__aeabi_idiv(i32 %r2297,i32 %r2298)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2302 = call i32 @__aeabi_idiv(i32 %r2300,i32 %r2301)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL510
.long_funcL515:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2285 = call i32 @__modsi3(i32 %r2283,i32 %r2284)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL514
.long_funcL513:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC7
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL514
.long_funcL501:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2233 = call i32 @__modsi3(i32 %r2231,i32 %r2232)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL503
.long_funcL504:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2251 = call i32 @__modsi3(i32 %r2249,i32 %r2250)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL508
.long_funcL509:
.long_funcL505:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2262 = call i32 @__aeabi_idiv(i32 %r2260,i32 %r2261)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2265 = call i32 @__aeabi_idiv(i32 %r2263,i32 %r2264)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL500
.long_funcL508:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC7
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL509
.long_funcL503:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2237 = call i32 @__modsi3(i32 %r2235,i32 %r2236)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	mov r8,#0
	cmp r6,r8
	beq .long_funcL506
.long_funcL507:
	bl .long_funcL505
.long_funcL506:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC7
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL507
.long_funcL489:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2187 = call i32 @__modsi3(i32 %r2185,i32 %r2186)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL493
.long_funcL492:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2205 = call i32 @__aeabi_idiv(i32 %r2203,i32 %r2204)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2208 = call i32 @__aeabi_idiv(i32 %r2206,i32 %r2207)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL488
.long_funcL493:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2191 = call i32 @__modsi3(i32 %r2189,i32 %r2190)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL492
.long_funcL491:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	bl .LPIC10
.LPIC9:
	.word SHIFT_TABLE
.LPIC10:
	ldr r6,.LPIC9
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL492
.long_funcL399:
	ldr r8,[fp,#-168]
	str r8,[fp,#-164]
	ldr r8,[fp,#-176]
	str r8,[fp,#-160]
	mov r8,#0
	str r8,[fp,#-156]
.long_funcL401:
	ldr r8,[fp,#-160]
	cmp r8,#0
	bne .long_funcL402
.long_funcL403:
	ldr r8,[fp,#-156]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	str r8,[fp,#-168]
	bl .long_funcL400
.long_funcL402:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-160]
	str r8,[fp,#-356]
	mov r8,#1
	str r8,[fp,#-352]
.long_funcL404:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL405
.long_funcL406:
	ldr r8,[fp,#-364]
	cmp r8,#0
	bne .long_funcL411
.long_funcL412:
	ldr r8,[fp,#-164]
	str r8,[fp,#-140]
	ldr r8,[fp,#-164]
	str r8,[fp,#-136]
	mov r8,#0
	str r8,[fp,#-132]
.long_funcL443:
	ldr r8,[fp,#-136]
	cmp r8,#0
	bne .long_funcL444
.long_funcL445:
	ldr r8,[fp,#-140]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	str r8,[fp,#-164]
	ldr r8,[fp,#-160]
	str r8,[fp,#-356]
	mov r8,#1
	str r8,[fp,#-352]
	ldr r8,[fp,#-352]
	mov r7,#15
	cmp r8,r7
	bge .long_funcL473
.long_funcL474:
	ldr r8,[fp,#-352]
	mov r7,#0
	cmp r8,r7
	bgt .long_funcL479
.long_funcL480:
	ldr r8,[fp,#-356]
	str r8,[fp,#-364]
.long_funcL481:
.long_funcL475:
	ldr r8,[fp,#-364]
	str r8,[fp,#-160]
	bl .long_funcL401
.long_funcL479:
	ldr r8,[fp,#-356]
	movw r7,#32767
	movt r7,#0  @ 32767
	mov r6,r7
	cmp r8,r6
	bgt .long_funcL482
.long_funcL483:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC9
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r2163 = call i32 @__aeabi_idiv(i32 %r2159,i32 %r2162)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-364]
.long_funcL484:
	bl .long_funcL481
.long_funcL482:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC9
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r2147 = call i32 @__aeabi_idiv(i32 %r2143,i32 %r2146)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-356]
	mov r7,#65536
	add r6,r8,r7
	mov r8,#15
	ldr r7,[fp,#-352]
	sub r5,r8,r7
	mov r8,#1
	add r7,r5,r8
	mov r8,r7
	ldr r7,.LPIC9
	add r5,r7,r8,lsl #2
	ldr r8,[r5]
	sub r7,r6,r8
	str r7,[fp,#-364]
	bl .long_funcL484
.long_funcL473:
	ldr r8,[fp,#-356]
	mov r7,#0
	cmp r8,r7
	blt .long_funcL476
.long_funcL477:
	mov r8,#0
	str r8,[fp,#-364]
.long_funcL478:
	bl .long_funcL475
.long_funcL476:
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-364]
	bl .long_funcL478
.long_funcL444:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-140]
	str r8,[fp,#-356]
	ldr r8,[fp,#-136]
	str r8,[fp,#-352]
.long_funcL446:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL447
.long_funcL448:
	ldr r8,[fp,#-364]
	str r8,[fp,#-132]
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-140]
	str r8,[fp,#-356]
	ldr r8,[fp,#-136]
	str r8,[fp,#-352]
.long_funcL456:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL457
.long_funcL458:
	ldr r8,[fp,#-364]
	str r8,[fp,#-136]
	mov r8,#1
	mov r7,#15
	cmp r8,r7
	bgt .long_funcL463
.long_funcL464:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-136]
	mov r7,#1
	mov r6,r7
	ldr r7,.LPIC9
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	mul r6,r8,r7
	str r6,[fp,#-356]
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-352]
.long_funcL466:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL467
.long_funcL468:
.long_funcL465:
	ldr r8,[fp,#-364]
	str r8,[fp,#-136]
	ldr r8,[fp,#-132]
	str r8,[fp,#-140]
	bl .long_funcL443
.long_funcL467:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2090 = call i32 @__modsi3(i32 %r2088,i32 %r2089)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL471
.long_funcL470:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2108 = call i32 @__aeabi_idiv(i32 %r2106,i32 %r2107)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2111 = call i32 @__aeabi_idiv(i32 %r2109,i32 %r2110)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL466
.long_funcL471:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2094 = call i32 @__modsi3(i32 %r2092,i32 %r2093)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL470
.long_funcL469:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC9
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL470
.long_funcL463:
	mov r8,#0
	str r8,[fp,#-364]
	bl .long_funcL465
.long_funcL457:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2043 = call i32 @__modsi3(i32 %r2041,i32 %r2042)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL461
.long_funcL460:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2061 = call i32 @__aeabi_idiv(i32 %r2059,i32 %r2060)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2064 = call i32 @__aeabi_idiv(i32 %r2062,i32 %r2063)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL456
.long_funcL461:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2047 = call i32 @__modsi3(i32 %r2045,i32 %r2046)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL460
.long_funcL459:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC9
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL460
.long_funcL447:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1995 = call i32 @__modsi3(i32 %r1993,i32 %r1994)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL449
.long_funcL450:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2013 = call i32 @__modsi3(i32 %r2011,i32 %r2012)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL454
.long_funcL455:
.long_funcL451:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2024 = call i32 @__aeabi_idiv(i32 %r2022,i32 %r2023)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2027 = call i32 @__aeabi_idiv(i32 %r2025,i32 %r2026)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL446
.long_funcL454:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC9
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL455
.long_funcL449:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1999 = call i32 @__modsi3(i32 %r1997,i32 %r1998)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	mov r8,#0
	cmp r6,r8
	beq .long_funcL452
.long_funcL453:
	bl .long_funcL451
.long_funcL452:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC9
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL453
.long_funcL411:
	ldr r8,[fp,#-156]
	str r8,[fp,#-152]
	ldr r8,[fp,#-164]
	str r8,[fp,#-148]
	mov r8,#0
	str r8,[fp,#-144]
.long_funcL413:
	ldr r8,[fp,#-148]
	cmp r8,#0
	bne .long_funcL414
.long_funcL415:
	ldr r8,[fp,#-152]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	str r8,[fp,#-156]
	bl .long_funcL412
.long_funcL414:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-152]
	str r8,[fp,#-356]
	ldr r8,[fp,#-148]
	str r8,[fp,#-352]
.long_funcL416:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL417
.long_funcL418:
	ldr r8,[fp,#-364]
	str r8,[fp,#-144]
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-152]
	str r8,[fp,#-356]
	ldr r8,[fp,#-148]
	str r8,[fp,#-352]
.long_funcL426:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL427
.long_funcL428:
	ldr r8,[fp,#-364]
	str r8,[fp,#-148]
	mov r8,#1
	mov r7,#15
	cmp r8,r7
	bgt .long_funcL433
.long_funcL434:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-148]
	mov r7,#1
	mov r6,r7
	bl .LPIC12
.LPIC11:
	.word SHIFT_TABLE
.LPIC12:
	ldr r7,.LPIC11
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	mul r6,r8,r7
	str r6,[fp,#-356]
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-352]
.long_funcL436:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL437
.long_funcL438:
.long_funcL435:
	ldr r8,[fp,#-364]
	str r8,[fp,#-148]
	ldr r8,[fp,#-144]
	str r8,[fp,#-152]
	bl .long_funcL413
.long_funcL437:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1947 = call i32 @__modsi3(i32 %r1945,i32 %r1946)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL441
.long_funcL440:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1965 = call i32 @__aeabi_idiv(i32 %r1963,i32 %r1964)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1968 = call i32 @__aeabi_idiv(i32 %r1966,i32 %r1967)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL436
.long_funcL441:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1951 = call i32 @__modsi3(i32 %r1949,i32 %r1950)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL440
.long_funcL439:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC11
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL440
.long_funcL433:
	mov r8,#0
	str r8,[fp,#-364]
	bl .long_funcL435
.long_funcL427:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1900 = call i32 @__modsi3(i32 %r1898,i32 %r1899)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL431
.long_funcL430:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1918 = call i32 @__aeabi_idiv(i32 %r1916,i32 %r1917)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1921 = call i32 @__aeabi_idiv(i32 %r1919,i32 %r1920)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL426
.long_funcL431:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1904 = call i32 @__modsi3(i32 %r1902,i32 %r1903)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL430
.long_funcL429:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC11
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL430
.long_funcL417:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1852 = call i32 @__modsi3(i32 %r1850,i32 %r1851)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL419
.long_funcL420:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1870 = call i32 @__modsi3(i32 %r1868,i32 %r1869)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL424
.long_funcL425:
.long_funcL421:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1881 = call i32 @__aeabi_idiv(i32 %r1879,i32 %r1880)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1884 = call i32 @__aeabi_idiv(i32 %r1882,i32 %r1883)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL416
.long_funcL424:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC11
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL425
.long_funcL419:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1856 = call i32 @__modsi3(i32 %r1854,i32 %r1855)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	mov r8,#0
	cmp r6,r8
	beq .long_funcL422
.long_funcL423:
	bl .long_funcL421
.long_funcL422:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC11
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL423
.long_funcL405:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1806 = call i32 @__modsi3(i32 %r1804,i32 %r1805)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL409
.long_funcL408:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1824 = call i32 @__aeabi_idiv(i32 %r1822,i32 %r1823)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1827 = call i32 @__aeabi_idiv(i32 %r1825,i32 %r1826)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL404
.long_funcL409:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1810 = call i32 @__modsi3(i32 %r1808,i32 %r1809)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL408
.long_funcL407:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC11
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL408
.long_funcL393:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1760 = call i32 @__modsi3(i32 %r1758,i32 %r1759)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL397
.long_funcL396:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1778 = call i32 @__aeabi_idiv(i32 %r1776,i32 %r1777)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1781 = call i32 @__aeabi_idiv(i32 %r1779,i32 %r1780)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL392
.long_funcL397:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1764 = call i32 @__modsi3(i32 %r1762,i32 %r1763)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL396
.long_funcL395:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC11
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL396
.long_funcL195:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-256]
	str r8,[fp,#-356]
	mov r8,#1
	str r8,[fp,#-352]
.long_funcL197:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL198
.long_funcL199:
	ldr r8,[fp,#-364]
	cmp r8,#0
	bne .long_funcL204
.long_funcL205:
	ldr r8,[fp,#-260]
	str r8,[fp,#-212]
	ldr r8,[fp,#-260]
	str r8,[fp,#-208]
	mov r8,#0
	str r8,[fp,#-204]
.long_funcL290:
	ldr r8,[fp,#-208]
	cmp r8,#0
	bne .long_funcL291
.long_funcL292:
	ldr r8,[fp,#-204]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	str r8,[fp,#-260]
	ldr r8,[fp,#-256]
	str r8,[fp,#-356]
	mov r8,#1
	str r8,[fp,#-352]
	ldr r8,[fp,#-352]
	mov r7,#15
	cmp r8,r7
	bge .long_funcL374
.long_funcL375:
	ldr r8,[fp,#-352]
	mov r7,#0
	cmp r8,r7
	bgt .long_funcL380
.long_funcL381:
	ldr r8,[fp,#-356]
	str r8,[fp,#-364]
.long_funcL382:
.long_funcL376:
	ldr r8,[fp,#-364]
	str r8,[fp,#-256]
	bl .long_funcL194
.long_funcL380:
	ldr r8,[fp,#-356]
	movw r7,#32767
	movt r7,#0  @ 32767
	mov r6,r7
	cmp r8,r6
	bgt .long_funcL383
.long_funcL384:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC11
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r1726 = call i32 @__aeabi_idiv(i32 %r1722,i32 %r1725)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-364]
.long_funcL385:
	bl .long_funcL382
.long_funcL383:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC11
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r1710 = call i32 @__aeabi_idiv(i32 %r1706,i32 %r1709)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-356]
	mov r7,#65536
	add r6,r8,r7
	mov r8,#15
	ldr r7,[fp,#-352]
	sub r5,r8,r7
	mov r8,#1
	add r7,r5,r8
	mov r8,r7
	ldr r7,.LPIC11
	add r5,r7,r8,lsl #2
	ldr r8,[r5]
	sub r7,r6,r8
	str r7,[fp,#-364]
	bl .long_funcL385
.long_funcL374:
	ldr r8,[fp,#-356]
	mov r7,#0
	cmp r8,r7
	blt .long_funcL377
.long_funcL378:
	mov r8,#0
	str r8,[fp,#-364]
.long_funcL379:
	bl .long_funcL376
.long_funcL377:
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-364]
	bl .long_funcL379
.long_funcL291:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-208]
	str r8,[fp,#-356]
	mov r8,#1
	str r8,[fp,#-352]
.long_funcL293:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL294
.long_funcL295:
	ldr r8,[fp,#-364]
	cmp r8,#0
	bne .long_funcL300
.long_funcL301:
	ldr r8,[fp,#-212]
	str r8,[fp,#-188]
	ldr r8,[fp,#-212]
	str r8,[fp,#-184]
	mov r8,#0
	str r8,[fp,#-180]
.long_funcL332:
	ldr r8,[fp,#-184]
	cmp r8,#0
	bne .long_funcL333
.long_funcL334:
	ldr r8,[fp,#-188]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	str r8,[fp,#-212]
	ldr r8,[fp,#-208]
	str r8,[fp,#-356]
	mov r8,#1
	str r8,[fp,#-352]
	ldr r8,[fp,#-352]
	mov r7,#15
	cmp r8,r7
	bge .long_funcL362
.long_funcL363:
	ldr r8,[fp,#-352]
	mov r7,#0
	cmp r8,r7
	bgt .long_funcL368
.long_funcL369:
	ldr r8,[fp,#-356]
	str r8,[fp,#-364]
.long_funcL370:
.long_funcL364:
	ldr r8,[fp,#-364]
	str r8,[fp,#-208]
	bl .long_funcL290
.long_funcL368:
	ldr r8,[fp,#-356]
	movw r7,#32767
	movt r7,#0  @ 32767
	mov r6,r7
	cmp r8,r6
	bgt .long_funcL371
.long_funcL372:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	bl .LPIC14
.LPIC13:
	.word SHIFT_TABLE
.LPIC14:
	ldr r7,.LPIC13
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r1677 = call i32 @__aeabi_idiv(i32 %r1673,i32 %r1676)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-364]
.long_funcL373:
	bl .long_funcL370
.long_funcL371:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC13
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r1661 = call i32 @__aeabi_idiv(i32 %r1657,i32 %r1660)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-356]
	mov r7,#65536
	add r6,r8,r7
	mov r8,#15
	ldr r7,[fp,#-352]
	sub r5,r8,r7
	mov r8,#1
	add r7,r5,r8
	mov r8,r7
	ldr r7,.LPIC13
	add r5,r7,r8,lsl #2
	ldr r8,[r5]
	sub r7,r6,r8
	str r7,[fp,#-364]
	bl .long_funcL373
.long_funcL362:
	ldr r8,[fp,#-356]
	mov r7,#0
	cmp r8,r7
	blt .long_funcL365
.long_funcL366:
	mov r8,#0
	str r8,[fp,#-364]
.long_funcL367:
	bl .long_funcL364
.long_funcL365:
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-364]
	bl .long_funcL367
.long_funcL333:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-188]
	str r8,[fp,#-356]
	ldr r8,[fp,#-184]
	str r8,[fp,#-352]
.long_funcL335:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL336
.long_funcL337:
	ldr r8,[fp,#-364]
	str r8,[fp,#-180]
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-188]
	str r8,[fp,#-356]
	ldr r8,[fp,#-184]
	str r8,[fp,#-352]
.long_funcL345:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL346
.long_funcL347:
	ldr r8,[fp,#-364]
	str r8,[fp,#-184]
	mov r8,#1
	mov r7,#15
	cmp r8,r7
	bgt .long_funcL352
.long_funcL353:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-184]
	mov r7,#1
	mov r6,r7
	ldr r7,.LPIC13
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	mul r6,r8,r7
	str r6,[fp,#-356]
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-352]
.long_funcL355:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL356
.long_funcL357:
.long_funcL354:
	ldr r8,[fp,#-364]
	str r8,[fp,#-184]
	ldr r8,[fp,#-180]
	str r8,[fp,#-188]
	bl .long_funcL332
.long_funcL356:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1604 = call i32 @__modsi3(i32 %r1602,i32 %r1603)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL360
.long_funcL359:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1622 = call i32 @__aeabi_idiv(i32 %r1620,i32 %r1621)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1625 = call i32 @__aeabi_idiv(i32 %r1623,i32 %r1624)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL355
.long_funcL360:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1608 = call i32 @__modsi3(i32 %r1606,i32 %r1607)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL359
.long_funcL358:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC13
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL359
.long_funcL352:
	mov r8,#0
	str r8,[fp,#-364]
	bl .long_funcL354
.long_funcL346:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1557 = call i32 @__modsi3(i32 %r1555,i32 %r1556)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL350
.long_funcL349:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1575 = call i32 @__aeabi_idiv(i32 %r1573,i32 %r1574)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1578 = call i32 @__aeabi_idiv(i32 %r1576,i32 %r1577)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL345
.long_funcL350:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1561 = call i32 @__modsi3(i32 %r1559,i32 %r1560)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL349
.long_funcL348:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC13
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL349
.long_funcL336:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1509 = call i32 @__modsi3(i32 %r1507,i32 %r1508)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL338
.long_funcL339:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1527 = call i32 @__modsi3(i32 %r1525,i32 %r1526)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL343
.long_funcL344:
.long_funcL340:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1538 = call i32 @__aeabi_idiv(i32 %r1536,i32 %r1537)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1541 = call i32 @__aeabi_idiv(i32 %r1539,i32 %r1540)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL335
.long_funcL343:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC13
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL344
.long_funcL338:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1513 = call i32 @__modsi3(i32 %r1511,i32 %r1512)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	mov r8,#0
	cmp r6,r8
	beq .long_funcL341
.long_funcL342:
	bl .long_funcL340
.long_funcL341:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC13
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL342
.long_funcL300:
	ldr r8,[fp,#-204]
	str r8,[fp,#-200]
	ldr r8,[fp,#-212]
	str r8,[fp,#-196]
	mov r8,#0
	str r8,[fp,#-192]
.long_funcL302:
	ldr r8,[fp,#-196]
	cmp r8,#0
	bne .long_funcL303
.long_funcL304:
	ldr r8,[fp,#-200]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	str r8,[fp,#-204]
	bl .long_funcL301
.long_funcL303:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-200]
	str r8,[fp,#-356]
	ldr r8,[fp,#-196]
	str r8,[fp,#-352]
.long_funcL305:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL306
.long_funcL307:
	ldr r8,[fp,#-364]
	str r8,[fp,#-192]
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-200]
	str r8,[fp,#-356]
	ldr r8,[fp,#-196]
	str r8,[fp,#-352]
.long_funcL315:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL316
.long_funcL317:
	ldr r8,[fp,#-364]
	str r8,[fp,#-196]
	mov r8,#1
	mov r7,#15
	cmp r8,r7
	bgt .long_funcL322
.long_funcL323:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-196]
	mov r7,#1
	mov r6,r7
	ldr r7,.LPIC13
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	mul r6,r8,r7
	str r6,[fp,#-356]
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-352]
.long_funcL325:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL326
.long_funcL327:
.long_funcL324:
	ldr r8,[fp,#-364]
	str r8,[fp,#-196]
	ldr r8,[fp,#-192]
	str r8,[fp,#-200]
	bl .long_funcL302
.long_funcL326:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1461 = call i32 @__modsi3(i32 %r1459,i32 %r1460)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL330
.long_funcL329:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1479 = call i32 @__aeabi_idiv(i32 %r1477,i32 %r1478)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1482 = call i32 @__aeabi_idiv(i32 %r1480,i32 %r1481)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL325
.long_funcL330:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1465 = call i32 @__modsi3(i32 %r1463,i32 %r1464)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL329
.long_funcL328:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC13
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL329
.long_funcL322:
	mov r8,#0
	str r8,[fp,#-364]
	bl .long_funcL324
.long_funcL316:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1414 = call i32 @__modsi3(i32 %r1412,i32 %r1413)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL320
.long_funcL319:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1432 = call i32 @__aeabi_idiv(i32 %r1430,i32 %r1431)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1435 = call i32 @__aeabi_idiv(i32 %r1433,i32 %r1434)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL315
.long_funcL320:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1418 = call i32 @__modsi3(i32 %r1416,i32 %r1417)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL319
.long_funcL318:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	bl .LPIC16
.LPIC15:
	.word SHIFT_TABLE
.LPIC16:
	ldr r6,.LPIC15
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL319
.long_funcL306:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1366 = call i32 @__modsi3(i32 %r1364,i32 %r1365)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL308
.long_funcL309:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1384 = call i32 @__modsi3(i32 %r1382,i32 %r1383)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL313
.long_funcL314:
.long_funcL310:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1395 = call i32 @__aeabi_idiv(i32 %r1393,i32 %r1394)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1398 = call i32 @__aeabi_idiv(i32 %r1396,i32 %r1397)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL305
.long_funcL313:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC15
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL314
.long_funcL308:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1370 = call i32 @__modsi3(i32 %r1368,i32 %r1369)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	mov r8,#0
	cmp r6,r8
	beq .long_funcL311
.long_funcL312:
	bl .long_funcL310
.long_funcL311:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC15
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL312
.long_funcL294:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1320 = call i32 @__modsi3(i32 %r1318,i32 %r1319)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL298
.long_funcL297:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1338 = call i32 @__aeabi_idiv(i32 %r1336,i32 %r1337)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1341 = call i32 @__aeabi_idiv(i32 %r1339,i32 %r1340)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL293
.long_funcL298:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1324 = call i32 @__modsi3(i32 %r1322,i32 %r1323)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL297
.long_funcL296:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC15
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL297
.long_funcL204:
	ldr r8,[fp,#-252]
	str r8,[fp,#-248]
	ldr r8,[fp,#-260]
	str r8,[fp,#-244]
	mov r8,#0
	str r8,[fp,#-240]
.long_funcL206:
	ldr r8,[fp,#-244]
	cmp r8,#0
	bne .long_funcL207
.long_funcL208:
	ldr r8,[fp,#-240]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	str r8,[fp,#-252]
	bl .long_funcL205
.long_funcL207:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-244]
	str r8,[fp,#-356]
	mov r8,#1
	str r8,[fp,#-352]
.long_funcL209:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL210
.long_funcL211:
	ldr r8,[fp,#-364]
	cmp r8,#0
	bne .long_funcL216
.long_funcL217:
	ldr r8,[fp,#-248]
	str r8,[fp,#-224]
	ldr r8,[fp,#-248]
	str r8,[fp,#-220]
	mov r8,#0
	str r8,[fp,#-216]
.long_funcL248:
	ldr r8,[fp,#-220]
	cmp r8,#0
	bne .long_funcL249
.long_funcL250:
	ldr r8,[fp,#-224]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	str r8,[fp,#-248]
	ldr r8,[fp,#-244]
	str r8,[fp,#-356]
	mov r8,#1
	str r8,[fp,#-352]
	ldr r8,[fp,#-352]
	mov r7,#15
	cmp r8,r7
	bge .long_funcL278
.long_funcL279:
	ldr r8,[fp,#-352]
	mov r7,#0
	cmp r8,r7
	bgt .long_funcL284
.long_funcL285:
	ldr r8,[fp,#-356]
	str r8,[fp,#-364]
.long_funcL286:
.long_funcL280:
	ldr r8,[fp,#-364]
	str r8,[fp,#-244]
	bl .long_funcL206
.long_funcL284:
	ldr r8,[fp,#-356]
	movw r7,#32767
	movt r7,#0  @ 32767
	mov r6,r7
	cmp r8,r6
	bgt .long_funcL287
.long_funcL288:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC15
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r1296 = call i32 @__aeabi_idiv(i32 %r1292,i32 %r1295)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-364]
.long_funcL289:
	bl .long_funcL286
.long_funcL287:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC15
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r1280 = call i32 @__aeabi_idiv(i32 %r1276,i32 %r1279)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-356]
	mov r7,#65536
	add r6,r8,r7
	mov r8,#15
	ldr r7,[fp,#-352]
	sub r5,r8,r7
	mov r8,#1
	add r7,r5,r8
	mov r8,r7
	ldr r7,.LPIC15
	add r5,r7,r8,lsl #2
	ldr r8,[r5]
	sub r7,r6,r8
	str r7,[fp,#-364]
	bl .long_funcL289
.long_funcL278:
	ldr r8,[fp,#-356]
	mov r7,#0
	cmp r8,r7
	blt .long_funcL281
.long_funcL282:
	mov r8,#0
	str r8,[fp,#-364]
.long_funcL283:
	bl .long_funcL280
.long_funcL281:
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-364]
	bl .long_funcL283
.long_funcL249:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-224]
	str r8,[fp,#-356]
	ldr r8,[fp,#-220]
	str r8,[fp,#-352]
.long_funcL251:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL252
.long_funcL253:
	ldr r8,[fp,#-364]
	str r8,[fp,#-216]
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-224]
	str r8,[fp,#-356]
	ldr r8,[fp,#-220]
	str r8,[fp,#-352]
.long_funcL261:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL262
.long_funcL263:
	ldr r8,[fp,#-364]
	str r8,[fp,#-220]
	mov r8,#1
	mov r7,#15
	cmp r8,r7
	bgt .long_funcL268
.long_funcL269:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-220]
	mov r7,#1
	mov r6,r7
	ldr r7,.LPIC15
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	mul r6,r8,r7
	str r6,[fp,#-356]
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-352]
.long_funcL271:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL272
.long_funcL273:
.long_funcL270:
	ldr r8,[fp,#-364]
	str r8,[fp,#-220]
	ldr r8,[fp,#-216]
	str r8,[fp,#-224]
	bl .long_funcL248
.long_funcL272:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1223 = call i32 @__modsi3(i32 %r1221,i32 %r1222)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL276
.long_funcL275:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1241 = call i32 @__aeabi_idiv(i32 %r1239,i32 %r1240)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1244 = call i32 @__aeabi_idiv(i32 %r1242,i32 %r1243)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL271
.long_funcL276:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1227 = call i32 @__modsi3(i32 %r1225,i32 %r1226)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL275
.long_funcL274:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC15
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL275
.long_funcL268:
	mov r8,#0
	str r8,[fp,#-364]
	bl .long_funcL270
.long_funcL262:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1176 = call i32 @__modsi3(i32 %r1174,i32 %r1175)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL266
.long_funcL265:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1194 = call i32 @__aeabi_idiv(i32 %r1192,i32 %r1193)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1197 = call i32 @__aeabi_idiv(i32 %r1195,i32 %r1196)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL261
.long_funcL266:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1180 = call i32 @__modsi3(i32 %r1178,i32 %r1179)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL265
.long_funcL264:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC15
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL265
.long_funcL252:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1128 = call i32 @__modsi3(i32 %r1126,i32 %r1127)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL254
.long_funcL255:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1146 = call i32 @__modsi3(i32 %r1144,i32 %r1145)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL259
.long_funcL260:
.long_funcL256:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1157 = call i32 @__aeabi_idiv(i32 %r1155,i32 %r1156)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1160 = call i32 @__aeabi_idiv(i32 %r1158,i32 %r1159)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL251
.long_funcL259:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	bl .LPIC18
.LPIC17:
	.word SHIFT_TABLE
.LPIC18:
	ldr r6,.LPIC17
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL260
.long_funcL254:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1132 = call i32 @__modsi3(i32 %r1130,i32 %r1131)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	mov r8,#0
	cmp r6,r8
	beq .long_funcL257
.long_funcL258:
	bl .long_funcL256
.long_funcL257:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC17
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL258
.long_funcL216:
	ldr r8,[fp,#-240]
	str r8,[fp,#-236]
	ldr r8,[fp,#-248]
	str r8,[fp,#-232]
	mov r8,#0
	str r8,[fp,#-228]
.long_funcL218:
	ldr r8,[fp,#-232]
	cmp r8,#0
	bne .long_funcL219
.long_funcL220:
	ldr r8,[fp,#-236]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	str r8,[fp,#-240]
	bl .long_funcL217
.long_funcL219:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-236]
	str r8,[fp,#-356]
	ldr r8,[fp,#-232]
	str r8,[fp,#-352]
.long_funcL221:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL222
.long_funcL223:
	ldr r8,[fp,#-364]
	str r8,[fp,#-228]
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-236]
	str r8,[fp,#-356]
	ldr r8,[fp,#-232]
	str r8,[fp,#-352]
.long_funcL231:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL232
.long_funcL233:
	ldr r8,[fp,#-364]
	str r8,[fp,#-232]
	mov r8,#1
	mov r7,#15
	cmp r8,r7
	bgt .long_funcL238
.long_funcL239:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-232]
	mov r7,#1
	mov r6,r7
	ldr r7,.LPIC17
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	mul r6,r8,r7
	str r6,[fp,#-356]
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-352]
.long_funcL241:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL242
.long_funcL243:
.long_funcL240:
	ldr r8,[fp,#-364]
	str r8,[fp,#-232]
	ldr r8,[fp,#-228]
	str r8,[fp,#-236]
	bl .long_funcL218
.long_funcL242:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1080 = call i32 @__modsi3(i32 %r1078,i32 %r1079)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL246
.long_funcL245:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1098 = call i32 @__aeabi_idiv(i32 %r1096,i32 %r1097)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1101 = call i32 @__aeabi_idiv(i32 %r1099,i32 %r1100)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL241
.long_funcL246:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1084 = call i32 @__modsi3(i32 %r1082,i32 %r1083)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL245
.long_funcL244:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC17
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL245
.long_funcL238:
	mov r8,#0
	str r8,[fp,#-364]
	bl .long_funcL240
.long_funcL232:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1033 = call i32 @__modsi3(i32 %r1031,i32 %r1032)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL236
.long_funcL235:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1051 = call i32 @__aeabi_idiv(i32 %r1049,i32 %r1050)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1054 = call i32 @__aeabi_idiv(i32 %r1052,i32 %r1053)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL231
.long_funcL236:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1037 = call i32 @__modsi3(i32 %r1035,i32 %r1036)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL235
.long_funcL234:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC17
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL235
.long_funcL222:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r985 = call i32 @__modsi3(i32 %r983,i32 %r984)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL224
.long_funcL225:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1003 = call i32 @__modsi3(i32 %r1001,i32 %r1002)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL229
.long_funcL230:
.long_funcL226:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1014 = call i32 @__aeabi_idiv(i32 %r1012,i32 %r1013)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1017 = call i32 @__aeabi_idiv(i32 %r1015,i32 %r1016)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL221
.long_funcL229:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC17
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL230
.long_funcL224:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r989 = call i32 @__modsi3(i32 %r987,i32 %r988)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	mov r8,#0
	cmp r6,r8
	beq .long_funcL227
.long_funcL228:
	bl .long_funcL226
.long_funcL227:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC17
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL228
.long_funcL210:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r939 = call i32 @__modsi3(i32 %r937,i32 %r938)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL214
.long_funcL213:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r957 = call i32 @__aeabi_idiv(i32 %r955,i32 %r956)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r960 = call i32 @__aeabi_idiv(i32 %r958,i32 %r959)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL209
.long_funcL214:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r943 = call i32 @__modsi3(i32 %r941,i32 %r942)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL213
.long_funcL212:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC17
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL213
.long_funcL198:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r893 = call i32 @__modsi3(i32 %r891,i32 %r892)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL202
.long_funcL201:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r911 = call i32 @__aeabi_idiv(i32 %r909,i32 %r910)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r914 = call i32 @__aeabi_idiv(i32 %r912,i32 %r913)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL197
.long_funcL202:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r897 = call i32 @__modsi3(i32 %r895,i32 %r896)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL201
.long_funcL200:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC17
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL201
.long_funcL3:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-340]
	str r8,[fp,#-356]
	mov r8,#1
	str r8,[fp,#-352]
.long_funcL5:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL6
.long_funcL7:
	ldr r8,[fp,#-364]
	cmp r8,#0
	bne .long_funcL12
.long_funcL13:
	ldr r8,[fp,#-344]
	str r8,[fp,#-296]
	ldr r8,[fp,#-344]
	str r8,[fp,#-292]
	mov r8,#0
	str r8,[fp,#-288]
.long_funcL98:
	ldr r8,[fp,#-292]
	cmp r8,#0
	bne .long_funcL99
.long_funcL100:
	ldr r8,[fp,#-288]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	str r8,[fp,#-344]
	ldr r8,[fp,#-340]
	str r8,[fp,#-356]
	mov r8,#1
	str r8,[fp,#-352]
	ldr r8,[fp,#-352]
	mov r7,#15
	cmp r8,r7
	bge .long_funcL182
.long_funcL183:
	ldr r8,[fp,#-352]
	mov r7,#0
	cmp r8,r7
	bgt .long_funcL188
.long_funcL189:
	ldr r8,[fp,#-356]
	str r8,[fp,#-364]
.long_funcL190:
.long_funcL184:
	ldr r8,[fp,#-364]
	str r8,[fp,#-340]
	bl .long_funcL2
.long_funcL188:
	ldr r8,[fp,#-356]
	movw r7,#32767
	movt r7,#0  @ 32767
	mov r6,r7
	cmp r8,r6
	bgt .long_funcL191
.long_funcL192:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	bl .LPIC20
.LPIC19:
	.word SHIFT_TABLE
.LPIC20:
	ldr r7,.LPIC19
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r865 = call i32 @__aeabi_idiv(i32 %r861,i32 %r864)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-364]
.long_funcL193:
	bl .long_funcL190
.long_funcL191:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC19
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r849 = call i32 @__aeabi_idiv(i32 %r845,i32 %r848)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-356]
	mov r7,#65536
	add r6,r8,r7
	mov r8,#15
	ldr r7,[fp,#-352]
	sub r5,r8,r7
	mov r8,#1
	add r7,r5,r8
	mov r8,r7
	ldr r7,.LPIC19
	add r5,r7,r8,lsl #2
	ldr r8,[r5]
	sub r7,r6,r8
	str r7,[fp,#-364]
	bl .long_funcL193
.long_funcL182:
	ldr r8,[fp,#-356]
	mov r7,#0
	cmp r8,r7
	blt .long_funcL185
.long_funcL186:
	mov r8,#0
	str r8,[fp,#-364]
.long_funcL187:
	bl .long_funcL184
.long_funcL185:
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-364]
	bl .long_funcL187
.long_funcL99:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-292]
	str r8,[fp,#-356]
	mov r8,#1
	str r8,[fp,#-352]
.long_funcL101:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL102
.long_funcL103:
	ldr r8,[fp,#-364]
	cmp r8,#0
	bne .long_funcL108
.long_funcL109:
	ldr r8,[fp,#-296]
	str r8,[fp,#-272]
	ldr r8,[fp,#-296]
	str r8,[fp,#-268]
	mov r8,#0
	str r8,[fp,#-264]
.long_funcL140:
	ldr r8,[fp,#-268]
	cmp r8,#0
	bne .long_funcL141
.long_funcL142:
	ldr r8,[fp,#-272]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	str r8,[fp,#-296]
	ldr r8,[fp,#-292]
	str r8,[fp,#-356]
	mov r8,#1
	str r8,[fp,#-352]
	ldr r8,[fp,#-352]
	mov r7,#15
	cmp r8,r7
	bge .long_funcL170
.long_funcL171:
	ldr r8,[fp,#-352]
	mov r7,#0
	cmp r8,r7
	bgt .long_funcL176
.long_funcL177:
	ldr r8,[fp,#-356]
	str r8,[fp,#-364]
.long_funcL178:
.long_funcL172:
	ldr r8,[fp,#-364]
	str r8,[fp,#-292]
	bl .long_funcL98
.long_funcL176:
	ldr r8,[fp,#-356]
	movw r7,#32767
	movt r7,#0  @ 32767
	mov r6,r7
	cmp r8,r6
	bgt .long_funcL179
.long_funcL180:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC19
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r816 = call i32 @__aeabi_idiv(i32 %r812,i32 %r815)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-364]
.long_funcL181:
	bl .long_funcL178
.long_funcL179:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC19
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r800 = call i32 @__aeabi_idiv(i32 %r796,i32 %r799)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-356]
	mov r7,#65536
	add r6,r8,r7
	mov r8,#15
	ldr r7,[fp,#-352]
	sub r5,r8,r7
	mov r8,#1
	add r7,r5,r8
	mov r8,r7
	ldr r7,.LPIC19
	add r5,r7,r8,lsl #2
	ldr r8,[r5]
	sub r7,r6,r8
	str r7,[fp,#-364]
	bl .long_funcL181
.long_funcL170:
	ldr r8,[fp,#-356]
	mov r7,#0
	cmp r8,r7
	blt .long_funcL173
.long_funcL174:
	mov r8,#0
	str r8,[fp,#-364]
.long_funcL175:
	bl .long_funcL172
.long_funcL173:
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-364]
	bl .long_funcL175
.long_funcL141:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-272]
	str r8,[fp,#-356]
	ldr r8,[fp,#-268]
	str r8,[fp,#-352]
.long_funcL143:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL144
.long_funcL145:
	ldr r8,[fp,#-364]
	str r8,[fp,#-264]
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-272]
	str r8,[fp,#-356]
	ldr r8,[fp,#-268]
	str r8,[fp,#-352]
.long_funcL153:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL154
.long_funcL155:
	ldr r8,[fp,#-364]
	str r8,[fp,#-268]
	mov r8,#1
	mov r7,#15
	cmp r8,r7
	bgt .long_funcL160
.long_funcL161:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-268]
	mov r7,#1
	mov r6,r7
	ldr r7,.LPIC19
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	mul r6,r8,r7
	str r6,[fp,#-356]
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-352]
.long_funcL163:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL164
.long_funcL165:
.long_funcL162:
	ldr r8,[fp,#-364]
	str r8,[fp,#-268]
	ldr r8,[fp,#-264]
	str r8,[fp,#-272]
	bl .long_funcL140
.long_funcL164:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r743 = call i32 @__modsi3(i32 %r741,i32 %r742)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL168
.long_funcL167:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r761 = call i32 @__aeabi_idiv(i32 %r759,i32 %r760)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r764 = call i32 @__aeabi_idiv(i32 %r762,i32 %r763)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL163
.long_funcL168:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r747 = call i32 @__modsi3(i32 %r745,i32 %r746)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL167
.long_funcL166:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC19
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL167
.long_funcL160:
	mov r8,#0
	str r8,[fp,#-364]
	bl .long_funcL162
.long_funcL154:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r696 = call i32 @__modsi3(i32 %r694,i32 %r695)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL158
.long_funcL157:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r714 = call i32 @__aeabi_idiv(i32 %r712,i32 %r713)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r717 = call i32 @__aeabi_idiv(i32 %r715,i32 %r716)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL153
.long_funcL158:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r700 = call i32 @__modsi3(i32 %r698,i32 %r699)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL157
.long_funcL156:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC19
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL157
.long_funcL144:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r648 = call i32 @__modsi3(i32 %r646,i32 %r647)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL146
.long_funcL147:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r666 = call i32 @__modsi3(i32 %r664,i32 %r665)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL151
.long_funcL152:
.long_funcL148:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r677 = call i32 @__aeabi_idiv(i32 %r675,i32 %r676)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r680 = call i32 @__aeabi_idiv(i32 %r678,i32 %r679)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL143
.long_funcL151:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC19
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL152
.long_funcL146:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r652 = call i32 @__modsi3(i32 %r650,i32 %r651)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	mov r8,#0
	cmp r6,r8
	beq .long_funcL149
.long_funcL150:
	bl .long_funcL148
.long_funcL149:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC19
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL150
.long_funcL108:
	ldr r8,[fp,#-288]
	str r8,[fp,#-284]
	ldr r8,[fp,#-296]
	str r8,[fp,#-280]
	mov r8,#0
	str r8,[fp,#-276]
.long_funcL110:
	ldr r8,[fp,#-280]
	cmp r8,#0
	bne .long_funcL111
.long_funcL112:
	ldr r8,[fp,#-284]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	str r8,[fp,#-288]
	bl .long_funcL109
.long_funcL111:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-284]
	str r8,[fp,#-356]
	ldr r8,[fp,#-280]
	str r8,[fp,#-352]
.long_funcL113:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL114
.long_funcL115:
	ldr r8,[fp,#-364]
	str r8,[fp,#-276]
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-284]
	str r8,[fp,#-356]
	ldr r8,[fp,#-280]
	str r8,[fp,#-352]
.long_funcL123:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL124
.long_funcL125:
	ldr r8,[fp,#-364]
	str r8,[fp,#-280]
	mov r8,#1
	mov r7,#15
	cmp r8,r7
	bgt .long_funcL130
.long_funcL131:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-280]
	mov r7,#1
	mov r6,r7
	bl .LPIC22
.LPIC21:
	.word SHIFT_TABLE
.LPIC22:
	ldr r7,.LPIC21
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	mul r6,r8,r7
	str r6,[fp,#-356]
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-352]
.long_funcL133:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL134
.long_funcL135:
.long_funcL132:
	ldr r8,[fp,#-364]
	str r8,[fp,#-280]
	ldr r8,[fp,#-276]
	str r8,[fp,#-284]
	bl .long_funcL110
.long_funcL134:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r600 = call i32 @__modsi3(i32 %r598,i32 %r599)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL138
.long_funcL137:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r618 = call i32 @__aeabi_idiv(i32 %r616,i32 %r617)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r621 = call i32 @__aeabi_idiv(i32 %r619,i32 %r620)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL133
.long_funcL138:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r604 = call i32 @__modsi3(i32 %r602,i32 %r603)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL137
.long_funcL136:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC21
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL137
.long_funcL130:
	mov r8,#0
	str r8,[fp,#-364]
	bl .long_funcL132
.long_funcL124:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r553 = call i32 @__modsi3(i32 %r551,i32 %r552)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL128
.long_funcL127:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r571 = call i32 @__aeabi_idiv(i32 %r569,i32 %r570)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r574 = call i32 @__aeabi_idiv(i32 %r572,i32 %r573)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL123
.long_funcL128:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r557 = call i32 @__modsi3(i32 %r555,i32 %r556)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL127
.long_funcL126:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC21
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL127
.long_funcL114:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r505 = call i32 @__modsi3(i32 %r503,i32 %r504)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL116
.long_funcL117:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r523 = call i32 @__modsi3(i32 %r521,i32 %r522)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL121
.long_funcL122:
.long_funcL118:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r534 = call i32 @__aeabi_idiv(i32 %r532,i32 %r533)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r537 = call i32 @__aeabi_idiv(i32 %r535,i32 %r536)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL113
.long_funcL121:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC21
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL122
.long_funcL116:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r509 = call i32 @__modsi3(i32 %r507,i32 %r508)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	mov r8,#0
	cmp r6,r8
	beq .long_funcL119
.long_funcL120:
	bl .long_funcL118
.long_funcL119:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC21
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL120
.long_funcL102:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r459 = call i32 @__modsi3(i32 %r457,i32 %r458)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL106
.long_funcL105:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r477 = call i32 @__aeabi_idiv(i32 %r475,i32 %r476)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r480 = call i32 @__aeabi_idiv(i32 %r478,i32 %r479)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL101
.long_funcL106:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r463 = call i32 @__modsi3(i32 %r461,i32 %r462)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL105
.long_funcL104:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC21
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL105
.long_funcL12:
	ldr r8,[fp,#-336]
	str r8,[fp,#-332]
	ldr r8,[fp,#-344]
	str r8,[fp,#-328]
	mov r8,#0
	str r8,[fp,#-324]
.long_funcL14:
	ldr r8,[fp,#-328]
	cmp r8,#0
	bne .long_funcL15
.long_funcL16:
	ldr r8,[fp,#-324]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	str r8,[fp,#-336]
	bl .long_funcL13
.long_funcL15:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-328]
	str r8,[fp,#-356]
	mov r8,#1
	str r8,[fp,#-352]
.long_funcL17:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL18
.long_funcL19:
	ldr r8,[fp,#-364]
	cmp r8,#0
	bne .long_funcL24
.long_funcL25:
	ldr r8,[fp,#-332]
	str r8,[fp,#-308]
	ldr r8,[fp,#-332]
	str r8,[fp,#-304]
	mov r8,#0
	str r8,[fp,#-300]
.long_funcL56:
	ldr r8,[fp,#-304]
	cmp r8,#0
	bne .long_funcL57
.long_funcL58:
	ldr r8,[fp,#-308]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	str r8,[fp,#-332]
	ldr r8,[fp,#-328]
	str r8,[fp,#-356]
	mov r8,#1
	str r8,[fp,#-352]
	ldr r8,[fp,#-352]
	mov r7,#15
	cmp r8,r7
	bge .long_funcL86
.long_funcL87:
	ldr r8,[fp,#-352]
	mov r7,#0
	cmp r8,r7
	bgt .long_funcL92
.long_funcL93:
	ldr r8,[fp,#-356]
	str r8,[fp,#-364]
.long_funcL94:
.long_funcL88:
	ldr r8,[fp,#-364]
	str r8,[fp,#-328]
	bl .long_funcL14
.long_funcL92:
	ldr r8,[fp,#-356]
	movw r7,#32767
	movt r7,#0  @ 32767
	mov r6,r7
	cmp r8,r6
	bgt .long_funcL95
.long_funcL96:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC21
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r435 = call i32 @__aeabi_idiv(i32 %r431,i32 %r434)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-364]
.long_funcL97:
	bl .long_funcL94
.long_funcL95:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC21
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r419 = call i32 @__aeabi_idiv(i32 %r415,i32 %r418)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-356]
	mov r7,#65536
	add r6,r8,r7
	mov r8,#15
	ldr r7,[fp,#-352]
	sub r5,r8,r7
	mov r8,#1
	add r7,r5,r8
	mov r8,r7
	ldr r7,.LPIC21
	add r5,r7,r8,lsl #2
	ldr r8,[r5]
	sub r7,r6,r8
	str r7,[fp,#-364]
	bl .long_funcL97
.long_funcL86:
	ldr r8,[fp,#-356]
	mov r7,#0
	cmp r8,r7
	blt .long_funcL89
.long_funcL90:
	mov r8,#0
	str r8,[fp,#-364]
.long_funcL91:
	bl .long_funcL88
.long_funcL89:
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-364]
	bl .long_funcL91
.long_funcL57:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-308]
	str r8,[fp,#-356]
	ldr r8,[fp,#-304]
	str r8,[fp,#-352]
.long_funcL59:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL60
.long_funcL61:
	ldr r8,[fp,#-364]
	str r8,[fp,#-300]
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-308]
	str r8,[fp,#-356]
	ldr r8,[fp,#-304]
	str r8,[fp,#-352]
.long_funcL69:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL70
.long_funcL71:
	ldr r8,[fp,#-364]
	str r8,[fp,#-304]
	mov r8,#1
	mov r7,#15
	cmp r8,r7
	bgt .long_funcL76
.long_funcL77:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-304]
	mov r7,#1
	mov r6,r7
	ldr r7,.LPIC21
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	mul r6,r8,r7
	str r6,[fp,#-356]
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-352]
.long_funcL79:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL80
.long_funcL81:
.long_funcL78:
	ldr r8,[fp,#-364]
	str r8,[fp,#-304]
	ldr r8,[fp,#-300]
	str r8,[fp,#-308]
	bl .long_funcL56
.long_funcL80:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r362 = call i32 @__modsi3(i32 %r360,i32 %r361)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL84
.long_funcL83:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r380 = call i32 @__aeabi_idiv(i32 %r378,i32 %r379)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r383 = call i32 @__aeabi_idiv(i32 %r381,i32 %r382)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL79
.long_funcL84:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r366 = call i32 @__modsi3(i32 %r364,i32 %r365)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL83
.long_funcL82:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	bl .LPIC24
.LPIC23:
	.word SHIFT_TABLE
.LPIC24:
	ldr r6,.LPIC23
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL83
.long_funcL76:
	mov r8,#0
	str r8,[fp,#-364]
	bl .long_funcL78
.long_funcL70:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r315 = call i32 @__modsi3(i32 %r313,i32 %r314)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL74
.long_funcL73:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r333 = call i32 @__aeabi_idiv(i32 %r331,i32 %r332)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r336 = call i32 @__aeabi_idiv(i32 %r334,i32 %r335)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL69
.long_funcL74:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r319 = call i32 @__modsi3(i32 %r317,i32 %r318)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL73
.long_funcL72:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC23
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL73
.long_funcL60:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r267 = call i32 @__modsi3(i32 %r265,i32 %r266)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL62
.long_funcL63:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r285 = call i32 @__modsi3(i32 %r283,i32 %r284)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL67
.long_funcL68:
.long_funcL64:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r296 = call i32 @__aeabi_idiv(i32 %r294,i32 %r295)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r299 = call i32 @__aeabi_idiv(i32 %r297,i32 %r298)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL59
.long_funcL67:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC23
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL68
.long_funcL62:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r271 = call i32 @__modsi3(i32 %r269,i32 %r270)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	mov r8,#0
	cmp r6,r8
	beq .long_funcL65
.long_funcL66:
	bl .long_funcL64
.long_funcL65:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC23
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL66
.long_funcL24:
	ldr r8,[fp,#-324]
	str r8,[fp,#-320]
	ldr r8,[fp,#-332]
	str r8,[fp,#-316]
	mov r8,#0
	str r8,[fp,#-312]
.long_funcL26:
	ldr r8,[fp,#-316]
	cmp r8,#0
	bne .long_funcL27
.long_funcL28:
	ldr r8,[fp,#-320]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	str r8,[fp,#-324]
	bl .long_funcL25
.long_funcL27:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-320]
	str r8,[fp,#-356]
	ldr r8,[fp,#-316]
	str r8,[fp,#-352]
.long_funcL29:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL30
.long_funcL31:
	ldr r8,[fp,#-364]
	str r8,[fp,#-312]
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-320]
	str r8,[fp,#-356]
	ldr r8,[fp,#-316]
	str r8,[fp,#-352]
.long_funcL39:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL40
.long_funcL41:
	ldr r8,[fp,#-364]
	str r8,[fp,#-316]
	mov r8,#1
	mov r7,#15
	cmp r8,r7
	bgt .long_funcL46
.long_funcL47:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-316]
	mov r7,#1
	mov r6,r7
	ldr r7,.LPIC23
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	mul r6,r8,r7
	str r6,[fp,#-356]
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-352]
.long_funcL49:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL50
.long_funcL51:
.long_funcL48:
	ldr r8,[fp,#-364]
	str r8,[fp,#-316]
	ldr r8,[fp,#-312]
	str r8,[fp,#-320]
	bl .long_funcL26
.long_funcL50:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r219 = call i32 @__modsi3(i32 %r217,i32 %r218)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL54
.long_funcL53:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r237 = call i32 @__aeabi_idiv(i32 %r235,i32 %r236)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r240 = call i32 @__aeabi_idiv(i32 %r238,i32 %r239)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL49
.long_funcL54:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r223 = call i32 @__modsi3(i32 %r221,i32 %r222)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL53
.long_funcL52:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC23
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL53
.long_funcL46:
	mov r8,#0
	str r8,[fp,#-364]
	bl .long_funcL48
.long_funcL40:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r172 = call i32 @__modsi3(i32 %r170,i32 %r171)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL44
.long_funcL43:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r190 = call i32 @__aeabi_idiv(i32 %r188,i32 %r189)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r193 = call i32 @__aeabi_idiv(i32 %r191,i32 %r192)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL39
.long_funcL44:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r176 = call i32 @__modsi3(i32 %r174,i32 %r175)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL43
.long_funcL42:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC23
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL43
.long_funcL30:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r124 = call i32 @__modsi3(i32 %r122,i32 %r123)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL32
.long_funcL33:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r142 = call i32 @__modsi3(i32 %r140,i32 %r141)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL37
.long_funcL38:
.long_funcL34:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r153 = call i32 @__aeabi_idiv(i32 %r151,i32 %r152)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r156 = call i32 @__aeabi_idiv(i32 %r154,i32 %r155)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL29
.long_funcL37:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC23
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL38
.long_funcL32:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r128 = call i32 @__modsi3(i32 %r126,i32 %r127)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	mov r8,#0
	cmp r6,r8
	beq .long_funcL35
.long_funcL36:
	bl .long_funcL34
.long_funcL35:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC23
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL36
.long_funcL18:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r78 = call i32 @__modsi3(i32 %r76,i32 %r77)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL22
.long_funcL21:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r96 = call i32 @__aeabi_idiv(i32 %r94,i32 %r95)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r99 = call i32 @__aeabi_idiv(i32 %r97,i32 %r98)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL17
.long_funcL22:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r82 = call i32 @__modsi3(i32 %r80,i32 %r81)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL21
.long_funcL20:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC23
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL21
.long_funcL6:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r32 = call i32 @__modsi3(i32 %r30,i32 %r31)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL10
.long_funcL9:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r50 = call i32 @__aeabi_idiv(i32 %r48,i32 %r49)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r53 = call i32 @__aeabi_idiv(i32 %r51,i32 %r52)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
	bl .long_funcL5
.long_funcL10:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r36 = call i32 @__modsi3(i32 %r34,i32 %r35)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL9
.long_funcL8:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	bl .LPIC26
.LPIC25:
	.word SHIFT_TABLE
.LPIC26:
	ldr r6,.LPIC25
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL9
main:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r0 = call i32 @long_func()
	sub sp,sp,#4 @stack align 8bytes
	bl long_func
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mov r0,r8
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
