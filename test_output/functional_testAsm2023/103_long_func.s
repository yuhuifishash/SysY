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
	ldr r8,[fp,#-340]
	mov r7,#0
	cmp r8,r7
	bgt .long_funcL3
.long_funcL5:
	ldr r8,[fp,#-336]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	@call void @putint(i32 %r961)
	mov r0,r8
	bl putint
	mov r8,#10
	@call void @putch(i32 %r962)
	mov r0,r8
	bl putch
	mov r8,#2
	str r8,[fp,#-260]
	mov r8,#1
	str r8,[fp,#-256]
	mov r8,#1
	str r8,[fp,#-252]
	ldr r8,[fp,#-256]
	mov r7,#0
	cmp r8,r7
	bgt .long_funcL217
.long_funcL219:
	ldr r8,[fp,#-252]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	@call void @putint(i32 %r1914)
	mov r0,r8
	bl putint
	mov r8,#10
	@call void @putch(i32 %r1915)
	mov r0,r8
	bl putch
	mov r8,#2
	str r8,[fp,#-348]
	ldr r8,[fp,#-348]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL431
.long_funcL433:
	mov r8,#0
	str r8,[fp,#-348]
	ldr r8,[fp,#-348]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL649
.long_funcL651:
	mov r8,#0
	mov r0,r8
	mov r9,#364
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.long_funcL649:
	mov r8,#2
	str r8,[fp,#-92]
	ldr r8,[fp,#-348]
	str r8,[fp,#-88]
	mov r8,#1
	str r8,[fp,#-84]
	ldr r8,[fp,#-88]
	mov r7,#0
	cmp r8,r7
	bgt .long_funcL653
.long_funcL655:
	ldr r8,[fp,#-84]
	str r8,[fp,#-364]
	ldr r8,[fp,#-348]
	mov r7,r8
	ldr r8,.LPIC0
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-364]
	cmp r8,r7
	bne .long_funcL866
.long_funcL867:
	ldr r8,[fp,#-348]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-348]
.long_funcL650:
	ldr r8,[fp,#-348]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL649
	bge .long_funcL651
.long_funcL866:
	mov r8,#1
	mov r0,r8
	mov r9,#364
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.long_funcL653:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-88]
	str r8,[fp,#-356]
	mov r8,#1
	str r8,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL657
.long_funcL659:
	ldr r8,[fp,#-364]
	cmp r8,#0
	bne .long_funcL664
.long_funcL665:
	ldr r8,[fp,#-92]
	str r8,[fp,#-44]
	ldr r8,[fp,#-92]
	str r8,[fp,#-40]
	mov r8,#0
	str r8,[fp,#-36]
	ldr r8,[fp,#-40]
	cmp r8,#0
	bne .long_funcL761
.long_funcL763:
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
	bge .long_funcL854
.long_funcL855:
	ldr r8,[fp,#-352]
	mov r7,#0
	cmp r8,r7
	bgt .long_funcL860
.long_funcL861:
	ldr r8,[fp,#-356]
	str r8,[fp,#-364]
.long_funcL862:
.long_funcL856:
	ldr r8,[fp,#-364]
	str r8,[fp,#-88]
.long_funcL654:
	ldr r8,[fp,#-88]
	mov r7,#0
	cmp r8,r7
	bgt .long_funcL653
	ble .long_funcL655
.long_funcL860:
	ldr r8,[fp,#-356]
	movw r7,#32767
	movt r7,#0  @ 32767
	mov r6,r7
	cmp r8,r6
	bgt .long_funcL863
.long_funcL864:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC0
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r3831 = call i32 @__aeabi_idiv(i32 %r3827,i32 %r3830)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-364]
.long_funcL865:
	bl .long_funcL862
.long_funcL863:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC0
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r3815 = call i32 @__aeabi_idiv(i32 %r3811,i32 %r3814)
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
	bl .long_funcL865
.long_funcL854:
	ldr r8,[fp,#-356]
	mov r7,#0
	cmp r8,r7
	blt .long_funcL857
.long_funcL858:
	mov r8,#0
	str r8,[fp,#-364]
.long_funcL859:
	bl .long_funcL856
.long_funcL857:
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-364]
	bl .long_funcL859
.long_funcL761:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-40]
	str r8,[fp,#-356]
	mov r8,#1
	str r8,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL765
.long_funcL767:
	ldr r8,[fp,#-364]
	cmp r8,#0
	bne .long_funcL772
.long_funcL773:
	ldr r8,[fp,#-44]
	str r8,[fp,#-20]
	ldr r8,[fp,#-44]
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	cmp r8,#0
	bne .long_funcL809
.long_funcL811:
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
	bge .long_funcL842
.long_funcL843:
	ldr r8,[fp,#-352]
	mov r7,#0
	cmp r8,r7
	bgt .long_funcL848
.long_funcL849:
	ldr r8,[fp,#-356]
	str r8,[fp,#-364]
.long_funcL850:
.long_funcL844:
	ldr r8,[fp,#-364]
	str r8,[fp,#-40]
.long_funcL762:
	ldr r8,[fp,#-40]
	cmp r8,#0
	bne .long_funcL761
	beq .long_funcL763
.long_funcL848:
	ldr r8,[fp,#-356]
	movw r7,#32767
	movt r7,#0  @ 32767
	mov r6,r7
	cmp r8,r6
	bgt .long_funcL851
.long_funcL852:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC0
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r3780 = call i32 @__aeabi_idiv(i32 %r3776,i32 %r3779)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-364]
.long_funcL853:
	bl .long_funcL850
.long_funcL851:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC0
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r3764 = call i32 @__aeabi_idiv(i32 %r3760,i32 %r3763)
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
	bl .long_funcL853
.long_funcL842:
	ldr r8,[fp,#-356]
	mov r7,#0
	cmp r8,r7
	blt .long_funcL845
.long_funcL846:
	mov r8,#0
	str r8,[fp,#-364]
.long_funcL847:
	bl .long_funcL844
.long_funcL845:
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-364]
	bl .long_funcL847
.long_funcL809:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-20]
	str r8,[fp,#-356]
	ldr r8,[fp,#-16]
	str r8,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL813
.long_funcL815:
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
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL824
.long_funcL826:
	ldr r8,[fp,#-364]
	str r8,[fp,#-16]
	mov r8,#1
	mov r7,#15
	cmp r8,r7
	bgt .long_funcL831
.long_funcL832:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-16]
	mov r7,#1
	mov r6,r7
	bl .LPIC2
.LPIC1:
	.word SHIFT_TABLE
.LPIC2:
	ldr r7,.LPIC1
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	mul r6,r8,r7
	str r6,[fp,#-356]
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL835
.long_funcL837:
.long_funcL833:
	ldr r8,[fp,#-364]
	str r8,[fp,#-16]
	ldr r8,[fp,#-12]
	str r8,[fp,#-20]
.long_funcL810:
	ldr r8,[fp,#-16]
	cmp r8,#0
	bne .long_funcL809
	beq .long_funcL811
.long_funcL835:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3700 = call i32 @__modsi3(i32 %r3698,i32 %r3699)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL840
.long_funcL839:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3718 = call i32 @__aeabi_idiv(i32 %r3716,i32 %r3717)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3721 = call i32 @__aeabi_idiv(i32 %r3719,i32 %r3720)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL836:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL835
	bge .long_funcL837
.long_funcL840:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3704 = call i32 @__modsi3(i32 %r3702,i32 %r3703)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL839
.long_funcL838:
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
	bl .long_funcL839
.long_funcL831:
	mov r8,#0
	str r8,[fp,#-364]
	bl .long_funcL833
.long_funcL824:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3648 = call i32 @__modsi3(i32 %r3646,i32 %r3647)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL829
.long_funcL828:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3666 = call i32 @__aeabi_idiv(i32 %r3664,i32 %r3665)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3669 = call i32 @__aeabi_idiv(i32 %r3667,i32 %r3668)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL825:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL824
	bge .long_funcL826
.long_funcL829:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3652 = call i32 @__modsi3(i32 %r3650,i32 %r3651)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL828
.long_funcL827:
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
	bl .long_funcL828
.long_funcL813:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3595 = call i32 @__modsi3(i32 %r3593,i32 %r3594)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL816
.long_funcL817:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3613 = call i32 @__modsi3(i32 %r3611,i32 %r3612)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL821
.long_funcL822:
.long_funcL818:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3624 = call i32 @__aeabi_idiv(i32 %r3622,i32 %r3623)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3627 = call i32 @__aeabi_idiv(i32 %r3625,i32 %r3626)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL814:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL813
	bge .long_funcL815
.long_funcL821:
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
	bl .long_funcL822
.long_funcL816:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3599 = call i32 @__modsi3(i32 %r3597,i32 %r3598)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	mov r8,#0
	cmp r6,r8
	beq .long_funcL819
.long_funcL820:
	bl .long_funcL818
.long_funcL819:
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
	bl .long_funcL820
.long_funcL772:
	ldr r8,[fp,#-36]
	str r8,[fp,#-32]
	ldr r8,[fp,#-44]
	str r8,[fp,#-28]
	mov r8,#0
	str r8,[fp,#-24]
	ldr r8,[fp,#-28]
	cmp r8,#0
	bne .long_funcL775
.long_funcL777:
	ldr r8,[fp,#-32]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	str r8,[fp,#-36]
	bl .long_funcL773
.long_funcL775:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-32]
	str r8,[fp,#-356]
	ldr r8,[fp,#-28]
	str r8,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL779
.long_funcL781:
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
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL790
.long_funcL792:
	ldr r8,[fp,#-364]
	str r8,[fp,#-28]
	mov r8,#1
	mov r7,#15
	cmp r8,r7
	bgt .long_funcL797
.long_funcL798:
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
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL801
.long_funcL803:
.long_funcL799:
	ldr r8,[fp,#-364]
	str r8,[fp,#-28]
	ldr r8,[fp,#-24]
	str r8,[fp,#-32]
.long_funcL776:
	ldr r8,[fp,#-28]
	cmp r8,#0
	bne .long_funcL775
	beq .long_funcL777
.long_funcL801:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3540 = call i32 @__modsi3(i32 %r3538,i32 %r3539)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL806
.long_funcL805:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3558 = call i32 @__aeabi_idiv(i32 %r3556,i32 %r3557)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3561 = call i32 @__aeabi_idiv(i32 %r3559,i32 %r3560)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL802:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL801
	bge .long_funcL803
.long_funcL806:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3544 = call i32 @__modsi3(i32 %r3542,i32 %r3543)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL805
.long_funcL804:
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
	bl .long_funcL805
.long_funcL797:
	mov r8,#0
	str r8,[fp,#-364]
	bl .long_funcL799
.long_funcL790:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3488 = call i32 @__modsi3(i32 %r3486,i32 %r3487)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL795
.long_funcL794:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3506 = call i32 @__aeabi_idiv(i32 %r3504,i32 %r3505)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3509 = call i32 @__aeabi_idiv(i32 %r3507,i32 %r3508)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL791:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL790
	bge .long_funcL792
.long_funcL795:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3492 = call i32 @__modsi3(i32 %r3490,i32 %r3491)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL794
.long_funcL793:
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
	bl .long_funcL794
.long_funcL779:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3435 = call i32 @__modsi3(i32 %r3433,i32 %r3434)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL782
.long_funcL783:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3453 = call i32 @__modsi3(i32 %r3451,i32 %r3452)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL787
.long_funcL788:
.long_funcL784:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3464 = call i32 @__aeabi_idiv(i32 %r3462,i32 %r3463)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3467 = call i32 @__aeabi_idiv(i32 %r3465,i32 %r3466)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL780:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL779
	bge .long_funcL781
.long_funcL787:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	bl .LPIC4
.LPIC3:
	.word SHIFT_TABLE
.LPIC4:
	ldr r6,.LPIC3
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL788
.long_funcL782:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3439 = call i32 @__modsi3(i32 %r3437,i32 %r3438)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	mov r8,#0
	cmp r6,r8
	beq .long_funcL785
.long_funcL786:
	bl .long_funcL784
.long_funcL785:
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
	bl .long_funcL786
.long_funcL765:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3384 = call i32 @__modsi3(i32 %r3382,i32 %r3383)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL770
.long_funcL769:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3402 = call i32 @__aeabi_idiv(i32 %r3400,i32 %r3401)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3405 = call i32 @__aeabi_idiv(i32 %r3403,i32 %r3404)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL766:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL765
	bge .long_funcL767
.long_funcL770:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3388 = call i32 @__modsi3(i32 %r3386,i32 %r3387)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL769
.long_funcL768:
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
	bl .long_funcL769
.long_funcL664:
	ldr r8,[fp,#-84]
	str r8,[fp,#-80]
	ldr r8,[fp,#-92]
	str r8,[fp,#-76]
	mov r8,#0
	str r8,[fp,#-72]
	ldr r8,[fp,#-76]
	cmp r8,#0
	bne .long_funcL667
.long_funcL669:
	ldr r8,[fp,#-72]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	str r8,[fp,#-84]
	bl .long_funcL665
.long_funcL667:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-76]
	str r8,[fp,#-356]
	mov r8,#1
	str r8,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL671
.long_funcL673:
	ldr r8,[fp,#-364]
	cmp r8,#0
	bne .long_funcL678
.long_funcL679:
	ldr r8,[fp,#-80]
	str r8,[fp,#-56]
	ldr r8,[fp,#-80]
	str r8,[fp,#-52]
	mov r8,#0
	str r8,[fp,#-48]
	ldr r8,[fp,#-52]
	cmp r8,#0
	bne .long_funcL715
.long_funcL717:
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
	bge .long_funcL748
.long_funcL749:
	ldr r8,[fp,#-352]
	mov r7,#0
	cmp r8,r7
	bgt .long_funcL754
.long_funcL755:
	ldr r8,[fp,#-356]
	str r8,[fp,#-364]
.long_funcL756:
.long_funcL750:
	ldr r8,[fp,#-364]
	str r8,[fp,#-76]
.long_funcL668:
	ldr r8,[fp,#-76]
	cmp r8,#0
	bne .long_funcL667
	beq .long_funcL669
.long_funcL754:
	ldr r8,[fp,#-356]
	movw r7,#32767
	movt r7,#0  @ 32767
	mov r6,r7
	cmp r8,r6
	bgt .long_funcL757
.long_funcL758:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC3
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r3358 = call i32 @__aeabi_idiv(i32 %r3354,i32 %r3357)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-364]
.long_funcL759:
	bl .long_funcL756
.long_funcL757:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC3
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r3342 = call i32 @__aeabi_idiv(i32 %r3338,i32 %r3341)
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
	bl .long_funcL759
.long_funcL748:
	ldr r8,[fp,#-356]
	mov r7,#0
	cmp r8,r7
	blt .long_funcL751
.long_funcL752:
	mov r8,#0
	str r8,[fp,#-364]
.long_funcL753:
	bl .long_funcL750
.long_funcL751:
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-364]
	bl .long_funcL753
.long_funcL715:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-56]
	str r8,[fp,#-356]
	ldr r8,[fp,#-52]
	str r8,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL719
.long_funcL721:
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
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL730
.long_funcL732:
	ldr r8,[fp,#-364]
	str r8,[fp,#-52]
	mov r8,#1
	mov r7,#15
	cmp r8,r7
	bgt .long_funcL737
.long_funcL738:
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
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL741
.long_funcL743:
.long_funcL739:
	ldr r8,[fp,#-364]
	str r8,[fp,#-52]
	ldr r8,[fp,#-48]
	str r8,[fp,#-56]
.long_funcL716:
	ldr r8,[fp,#-52]
	cmp r8,#0
	bne .long_funcL715
	beq .long_funcL717
.long_funcL741:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3278 = call i32 @__modsi3(i32 %r3276,i32 %r3277)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL746
.long_funcL745:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3296 = call i32 @__aeabi_idiv(i32 %r3294,i32 %r3295)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3299 = call i32 @__aeabi_idiv(i32 %r3297,i32 %r3298)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL742:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL741
	bge .long_funcL743
.long_funcL746:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3282 = call i32 @__modsi3(i32 %r3280,i32 %r3281)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL745
.long_funcL744:
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
	bl .long_funcL745
.long_funcL737:
	mov r8,#0
	str r8,[fp,#-364]
	bl .long_funcL739
.long_funcL730:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3226 = call i32 @__modsi3(i32 %r3224,i32 %r3225)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL735
.long_funcL734:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3244 = call i32 @__aeabi_idiv(i32 %r3242,i32 %r3243)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3247 = call i32 @__aeabi_idiv(i32 %r3245,i32 %r3246)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL731:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL730
	bge .long_funcL732
.long_funcL735:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3230 = call i32 @__modsi3(i32 %r3228,i32 %r3229)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL734
.long_funcL733:
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
	bl .long_funcL734
.long_funcL719:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3173 = call i32 @__modsi3(i32 %r3171,i32 %r3172)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL722
.long_funcL723:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3191 = call i32 @__modsi3(i32 %r3189,i32 %r3190)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL727
.long_funcL728:
.long_funcL724:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3202 = call i32 @__aeabi_idiv(i32 %r3200,i32 %r3201)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3205 = call i32 @__aeabi_idiv(i32 %r3203,i32 %r3204)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL720:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL719
	bge .long_funcL721
.long_funcL727:
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
	bl .long_funcL728
.long_funcL722:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3177 = call i32 @__modsi3(i32 %r3175,i32 %r3176)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	mov r8,#0
	cmp r6,r8
	beq .long_funcL725
.long_funcL726:
	bl .long_funcL724
.long_funcL725:
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
	bl .long_funcL726
.long_funcL678:
	ldr r8,[fp,#-72]
	str r8,[fp,#-68]
	ldr r8,[fp,#-80]
	str r8,[fp,#-64]
	mov r8,#0
	str r8,[fp,#-60]
	ldr r8,[fp,#-64]
	cmp r8,#0
	bne .long_funcL681
.long_funcL683:
	ldr r8,[fp,#-68]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	str r8,[fp,#-72]
	bl .long_funcL679
.long_funcL681:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-68]
	str r8,[fp,#-356]
	ldr r8,[fp,#-64]
	str r8,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL685
.long_funcL687:
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
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL696
.long_funcL698:
	ldr r8,[fp,#-364]
	str r8,[fp,#-64]
	mov r8,#1
	mov r7,#15
	cmp r8,r7
	bgt .long_funcL703
.long_funcL704:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-64]
	mov r7,#1
	mov r6,r7
	ldr r7,.LPIC5
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	mul r6,r8,r7
	str r6,[fp,#-356]
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL707
.long_funcL709:
.long_funcL705:
	ldr r8,[fp,#-364]
	str r8,[fp,#-64]
	ldr r8,[fp,#-60]
	str r8,[fp,#-68]
.long_funcL682:
	ldr r8,[fp,#-64]
	cmp r8,#0
	bne .long_funcL681
	beq .long_funcL683
.long_funcL707:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3118 = call i32 @__modsi3(i32 %r3116,i32 %r3117)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL712
.long_funcL711:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3136 = call i32 @__aeabi_idiv(i32 %r3134,i32 %r3135)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3139 = call i32 @__aeabi_idiv(i32 %r3137,i32 %r3138)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL708:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL707
	bge .long_funcL709
.long_funcL712:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3122 = call i32 @__modsi3(i32 %r3120,i32 %r3121)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL711
.long_funcL710:
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
	bl .long_funcL711
.long_funcL703:
	mov r8,#0
	str r8,[fp,#-364]
	bl .long_funcL705
.long_funcL696:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3066 = call i32 @__modsi3(i32 %r3064,i32 %r3065)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL701
.long_funcL700:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3084 = call i32 @__aeabi_idiv(i32 %r3082,i32 %r3083)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3087 = call i32 @__aeabi_idiv(i32 %r3085,i32 %r3086)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL697:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL696
	bge .long_funcL698
.long_funcL701:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3070 = call i32 @__modsi3(i32 %r3068,i32 %r3069)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL700
.long_funcL699:
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
	bl .long_funcL700
.long_funcL685:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3013 = call i32 @__modsi3(i32 %r3011,i32 %r3012)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL688
.long_funcL689:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3031 = call i32 @__modsi3(i32 %r3029,i32 %r3030)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL693
.long_funcL694:
.long_funcL690:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r3042 = call i32 @__aeabi_idiv(i32 %r3040,i32 %r3041)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3045 = call i32 @__aeabi_idiv(i32 %r3043,i32 %r3044)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL686:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL685
	bge .long_funcL687
.long_funcL693:
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
	bl .long_funcL694
.long_funcL688:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r3017 = call i32 @__modsi3(i32 %r3015,i32 %r3016)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	mov r8,#0
	cmp r6,r8
	beq .long_funcL691
.long_funcL692:
	bl .long_funcL690
.long_funcL691:
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
	bl .long_funcL692
.long_funcL671:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2962 = call i32 @__modsi3(i32 %r2960,i32 %r2961)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL676
.long_funcL675:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2980 = call i32 @__aeabi_idiv(i32 %r2978,i32 %r2979)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2983 = call i32 @__aeabi_idiv(i32 %r2981,i32 %r2982)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL672:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL671
	bge .long_funcL673
.long_funcL676:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2966 = call i32 @__modsi3(i32 %r2964,i32 %r2965)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL675
.long_funcL674:
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
	bl .long_funcL675
.long_funcL657:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2911 = call i32 @__modsi3(i32 %r2909,i32 %r2910)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL662
.long_funcL661:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2929 = call i32 @__aeabi_idiv(i32 %r2927,i32 %r2928)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2932 = call i32 @__aeabi_idiv(i32 %r2930,i32 %r2931)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL658:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL657
	bge .long_funcL659
.long_funcL662:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2915 = call i32 @__modsi3(i32 %r2913,i32 %r2914)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL661
.long_funcL660:
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
	bl .long_funcL661
.long_funcL431:
	mov r8,#2
	str r8,[fp,#-176]
	ldr r8,[fp,#-348]
	str r8,[fp,#-172]
	mov r8,#1
	str r8,[fp,#-168]
	ldr r8,[fp,#-172]
	mov r7,#0
	cmp r8,r7
	bgt .long_funcL435
.long_funcL437:
	ldr r8,[fp,#-168]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	@call void @putint(i32 %r2873)
	mov r0,r8
	bl putint
	mov r8,#10
	@call void @putch(i32 %r2874)
	mov r0,r8
	bl putch
	ldr r8,[fp,#-348]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-348]
.long_funcL432:
	ldr r8,[fp,#-348]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL431
	bge .long_funcL433
.long_funcL435:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-172]
	str r8,[fp,#-356]
	mov r8,#1
	str r8,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL439
.long_funcL441:
	ldr r8,[fp,#-364]
	cmp r8,#0
	bne .long_funcL446
.long_funcL447:
	ldr r8,[fp,#-176]
	str r8,[fp,#-128]
	ldr r8,[fp,#-176]
	str r8,[fp,#-124]
	mov r8,#0
	str r8,[fp,#-120]
	ldr r8,[fp,#-124]
	cmp r8,#0
	bne .long_funcL543
.long_funcL545:
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
	bge .long_funcL636
.long_funcL637:
	ldr r8,[fp,#-352]
	mov r7,#0
	cmp r8,r7
	bgt .long_funcL642
.long_funcL643:
	ldr r8,[fp,#-356]
	str r8,[fp,#-364]
.long_funcL644:
.long_funcL638:
	ldr r8,[fp,#-364]
	str r8,[fp,#-172]
.long_funcL436:
	ldr r8,[fp,#-172]
	mov r7,#0
	cmp r8,r7
	bgt .long_funcL435
	ble .long_funcL437
.long_funcL642:
	ldr r8,[fp,#-356]
	movw r7,#32767
	movt r7,#0  @ 32767
	mov r6,r7
	cmp r8,r6
	bgt .long_funcL645
.long_funcL646:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	bl .LPIC8
.LPIC7:
	.word SHIFT_TABLE
.LPIC8:
	ldr r7,.LPIC7
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r2864 = call i32 @__aeabi_idiv(i32 %r2860,i32 %r2863)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-364]
.long_funcL647:
	bl .long_funcL644
.long_funcL645:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC7
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r2848 = call i32 @__aeabi_idiv(i32 %r2844,i32 %r2847)
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
	ldr r7,.LPIC7
	add r5,r7,r8,lsl #2
	ldr r8,[r5]
	sub r7,r6,r8
	str r7,[fp,#-364]
	bl .long_funcL647
.long_funcL636:
	ldr r8,[fp,#-356]
	mov r7,#0
	cmp r8,r7
	blt .long_funcL639
.long_funcL640:
	mov r8,#0
	str r8,[fp,#-364]
.long_funcL641:
	bl .long_funcL638
.long_funcL639:
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-364]
	bl .long_funcL641
.long_funcL543:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-124]
	str r8,[fp,#-356]
	mov r8,#1
	str r8,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL547
.long_funcL549:
	ldr r8,[fp,#-364]
	cmp r8,#0
	bne .long_funcL554
.long_funcL555:
	ldr r8,[fp,#-128]
	str r8,[fp,#-104]
	ldr r8,[fp,#-128]
	str r8,[fp,#-100]
	mov r8,#0
	str r8,[fp,#-96]
	ldr r8,[fp,#-100]
	cmp r8,#0
	bne .long_funcL591
.long_funcL593:
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
	bge .long_funcL624
.long_funcL625:
	ldr r8,[fp,#-352]
	mov r7,#0
	cmp r8,r7
	bgt .long_funcL630
.long_funcL631:
	ldr r8,[fp,#-356]
	str r8,[fp,#-364]
.long_funcL632:
.long_funcL626:
	ldr r8,[fp,#-364]
	str r8,[fp,#-124]
.long_funcL544:
	ldr r8,[fp,#-124]
	cmp r8,#0
	bne .long_funcL543
	beq .long_funcL545
.long_funcL630:
	ldr r8,[fp,#-356]
	movw r7,#32767
	movt r7,#0  @ 32767
	mov r6,r7
	cmp r8,r6
	bgt .long_funcL633
.long_funcL634:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC7
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r2813 = call i32 @__aeabi_idiv(i32 %r2809,i32 %r2812)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-364]
.long_funcL635:
	bl .long_funcL632
.long_funcL633:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC7
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r2797 = call i32 @__aeabi_idiv(i32 %r2793,i32 %r2796)
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
	ldr r7,.LPIC7
	add r5,r7,r8,lsl #2
	ldr r8,[r5]
	sub r7,r6,r8
	str r7,[fp,#-364]
	bl .long_funcL635
.long_funcL624:
	ldr r8,[fp,#-356]
	mov r7,#0
	cmp r8,r7
	blt .long_funcL627
.long_funcL628:
	mov r8,#0
	str r8,[fp,#-364]
.long_funcL629:
	bl .long_funcL626
.long_funcL627:
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-364]
	bl .long_funcL629
.long_funcL591:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-104]
	str r8,[fp,#-356]
	ldr r8,[fp,#-100]
	str r8,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL595
.long_funcL597:
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
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL606
.long_funcL608:
	ldr r8,[fp,#-364]
	str r8,[fp,#-100]
	mov r8,#1
	mov r7,#15
	cmp r8,r7
	bgt .long_funcL613
.long_funcL614:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-100]
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
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL617
.long_funcL619:
.long_funcL615:
	ldr r8,[fp,#-364]
	str r8,[fp,#-100]
	ldr r8,[fp,#-96]
	str r8,[fp,#-104]
.long_funcL592:
	ldr r8,[fp,#-100]
	cmp r8,#0
	bne .long_funcL591
	beq .long_funcL593
.long_funcL617:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2733 = call i32 @__modsi3(i32 %r2731,i32 %r2732)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL622
.long_funcL621:
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
.long_funcL618:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL617
	bge .long_funcL619
.long_funcL622:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2737 = call i32 @__modsi3(i32 %r2735,i32 %r2736)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL621
.long_funcL620:
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
	bl .long_funcL621
.long_funcL613:
	mov r8,#0
	str r8,[fp,#-364]
	bl .long_funcL615
.long_funcL606:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2681 = call i32 @__modsi3(i32 %r2679,i32 %r2680)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL611
.long_funcL610:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2699 = call i32 @__aeabi_idiv(i32 %r2697,i32 %r2698)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2702 = call i32 @__aeabi_idiv(i32 %r2700,i32 %r2701)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL607:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL606
	bge .long_funcL608
.long_funcL611:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2685 = call i32 @__modsi3(i32 %r2683,i32 %r2684)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL610
.long_funcL609:
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
	bl .long_funcL610
.long_funcL595:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2628 = call i32 @__modsi3(i32 %r2626,i32 %r2627)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL598
.long_funcL599:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2646 = call i32 @__modsi3(i32 %r2644,i32 %r2645)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL603
.long_funcL604:
.long_funcL600:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2657 = call i32 @__aeabi_idiv(i32 %r2655,i32 %r2656)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2660 = call i32 @__aeabi_idiv(i32 %r2658,i32 %r2659)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL596:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL595
	bge .long_funcL597
.long_funcL603:
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
	bl .long_funcL604
.long_funcL598:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2632 = call i32 @__modsi3(i32 %r2630,i32 %r2631)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	mov r8,#0
	cmp r6,r8
	beq .long_funcL601
.long_funcL602:
	bl .long_funcL600
.long_funcL601:
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
	bl .long_funcL602
.long_funcL554:
	ldr r8,[fp,#-120]
	str r8,[fp,#-116]
	ldr r8,[fp,#-128]
	str r8,[fp,#-112]
	mov r8,#0
	str r8,[fp,#-108]
	ldr r8,[fp,#-112]
	cmp r8,#0
	bne .long_funcL557
.long_funcL559:
	ldr r8,[fp,#-116]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	str r8,[fp,#-120]
	bl .long_funcL555
.long_funcL557:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-116]
	str r8,[fp,#-356]
	ldr r8,[fp,#-112]
	str r8,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL561
.long_funcL563:
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
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL572
.long_funcL574:
	ldr r8,[fp,#-364]
	str r8,[fp,#-112]
	mov r8,#1
	mov r7,#15
	cmp r8,r7
	bgt .long_funcL579
.long_funcL580:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-112]
	mov r7,#1
	mov r6,r7
	bl .LPIC10
.LPIC9:
	.word SHIFT_TABLE
.LPIC10:
	ldr r7,.LPIC9
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	mul r6,r8,r7
	str r6,[fp,#-356]
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL583
.long_funcL585:
.long_funcL581:
	ldr r8,[fp,#-364]
	str r8,[fp,#-112]
	ldr r8,[fp,#-108]
	str r8,[fp,#-116]
.long_funcL558:
	ldr r8,[fp,#-112]
	cmp r8,#0
	bne .long_funcL557
	beq .long_funcL559
.long_funcL583:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2573 = call i32 @__modsi3(i32 %r2571,i32 %r2572)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL588
.long_funcL587:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2591 = call i32 @__aeabi_idiv(i32 %r2589,i32 %r2590)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2594 = call i32 @__aeabi_idiv(i32 %r2592,i32 %r2593)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL584:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL583
	bge .long_funcL585
.long_funcL588:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2577 = call i32 @__modsi3(i32 %r2575,i32 %r2576)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL587
.long_funcL586:
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
	bl .long_funcL587
.long_funcL579:
	mov r8,#0
	str r8,[fp,#-364]
	bl .long_funcL581
.long_funcL572:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2521 = call i32 @__modsi3(i32 %r2519,i32 %r2520)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL577
.long_funcL576:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2539 = call i32 @__aeabi_idiv(i32 %r2537,i32 %r2538)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2542 = call i32 @__aeabi_idiv(i32 %r2540,i32 %r2541)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL573:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL572
	bge .long_funcL574
.long_funcL577:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2525 = call i32 @__modsi3(i32 %r2523,i32 %r2524)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL576
.long_funcL575:
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
	bl .long_funcL576
.long_funcL561:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2468 = call i32 @__modsi3(i32 %r2466,i32 %r2467)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL564
.long_funcL565:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2486 = call i32 @__modsi3(i32 %r2484,i32 %r2485)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL569
.long_funcL570:
.long_funcL566:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2497 = call i32 @__aeabi_idiv(i32 %r2495,i32 %r2496)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2500 = call i32 @__aeabi_idiv(i32 %r2498,i32 %r2499)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL562:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL561
	bge .long_funcL563
.long_funcL569:
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
	bl .long_funcL570
.long_funcL564:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2472 = call i32 @__modsi3(i32 %r2470,i32 %r2471)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	mov r8,#0
	cmp r6,r8
	beq .long_funcL567
.long_funcL568:
	bl .long_funcL566
.long_funcL567:
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
	bl .long_funcL568
.long_funcL547:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2417 = call i32 @__modsi3(i32 %r2415,i32 %r2416)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL552
.long_funcL551:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2435 = call i32 @__aeabi_idiv(i32 %r2433,i32 %r2434)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2438 = call i32 @__aeabi_idiv(i32 %r2436,i32 %r2437)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL548:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL547
	bge .long_funcL549
.long_funcL552:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2421 = call i32 @__modsi3(i32 %r2419,i32 %r2420)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL551
.long_funcL550:
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
	bl .long_funcL551
.long_funcL446:
	ldr r8,[fp,#-168]
	str r8,[fp,#-164]
	ldr r8,[fp,#-176]
	str r8,[fp,#-160]
	mov r8,#0
	str r8,[fp,#-156]
	ldr r8,[fp,#-160]
	cmp r8,#0
	bne .long_funcL449
.long_funcL451:
	ldr r8,[fp,#-156]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	str r8,[fp,#-168]
	bl .long_funcL447
.long_funcL449:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-160]
	str r8,[fp,#-356]
	mov r8,#1
	str r8,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL453
.long_funcL455:
	ldr r8,[fp,#-364]
	cmp r8,#0
	bne .long_funcL460
.long_funcL461:
	ldr r8,[fp,#-164]
	str r8,[fp,#-140]
	ldr r8,[fp,#-164]
	str r8,[fp,#-136]
	mov r8,#0
	str r8,[fp,#-132]
	ldr r8,[fp,#-136]
	cmp r8,#0
	bne .long_funcL497
.long_funcL499:
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
	bge .long_funcL530
.long_funcL531:
	ldr r8,[fp,#-352]
	mov r7,#0
	cmp r8,r7
	bgt .long_funcL536
.long_funcL537:
	ldr r8,[fp,#-356]
	str r8,[fp,#-364]
.long_funcL538:
.long_funcL532:
	ldr r8,[fp,#-364]
	str r8,[fp,#-160]
.long_funcL450:
	ldr r8,[fp,#-160]
	cmp r8,#0
	bne .long_funcL449
	beq .long_funcL451
.long_funcL536:
	ldr r8,[fp,#-356]
	movw r7,#32767
	movt r7,#0  @ 32767
	mov r6,r7
	cmp r8,r6
	bgt .long_funcL539
.long_funcL540:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC9
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r2391 = call i32 @__aeabi_idiv(i32 %r2387,i32 %r2390)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-364]
.long_funcL541:
	bl .long_funcL538
.long_funcL539:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC9
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r2375 = call i32 @__aeabi_idiv(i32 %r2371,i32 %r2374)
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
	bl .long_funcL541
.long_funcL530:
	ldr r8,[fp,#-356]
	mov r7,#0
	cmp r8,r7
	blt .long_funcL533
.long_funcL534:
	mov r8,#0
	str r8,[fp,#-364]
.long_funcL535:
	bl .long_funcL532
.long_funcL533:
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-364]
	bl .long_funcL535
.long_funcL497:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-140]
	str r8,[fp,#-356]
	ldr r8,[fp,#-136]
	str r8,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL501
.long_funcL503:
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
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL512
.long_funcL514:
	ldr r8,[fp,#-364]
	str r8,[fp,#-136]
	mov r8,#1
	mov r7,#15
	cmp r8,r7
	bgt .long_funcL519
.long_funcL520:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-136]
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
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL523
.long_funcL525:
.long_funcL521:
	ldr r8,[fp,#-364]
	str r8,[fp,#-136]
	ldr r8,[fp,#-132]
	str r8,[fp,#-140]
.long_funcL498:
	ldr r8,[fp,#-136]
	cmp r8,#0
	bne .long_funcL497
	beq .long_funcL499
.long_funcL523:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2311 = call i32 @__modsi3(i32 %r2309,i32 %r2310)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL528
.long_funcL527:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2329 = call i32 @__aeabi_idiv(i32 %r2327,i32 %r2328)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2332 = call i32 @__aeabi_idiv(i32 %r2330,i32 %r2331)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL524:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL523
	bge .long_funcL525
.long_funcL528:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2315 = call i32 @__modsi3(i32 %r2313,i32 %r2314)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL527
.long_funcL526:
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
	bl .long_funcL527
.long_funcL519:
	mov r8,#0
	str r8,[fp,#-364]
	bl .long_funcL521
.long_funcL512:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2259 = call i32 @__modsi3(i32 %r2257,i32 %r2258)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL517
.long_funcL516:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2277 = call i32 @__aeabi_idiv(i32 %r2275,i32 %r2276)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2280 = call i32 @__aeabi_idiv(i32 %r2278,i32 %r2279)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL513:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL512
	bge .long_funcL514
.long_funcL517:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2263 = call i32 @__modsi3(i32 %r2261,i32 %r2262)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL516
.long_funcL515:
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
	bl .long_funcL516
.long_funcL501:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2206 = call i32 @__modsi3(i32 %r2204,i32 %r2205)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL504
.long_funcL505:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2224 = call i32 @__modsi3(i32 %r2222,i32 %r2223)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL509
.long_funcL510:
.long_funcL506:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2235 = call i32 @__aeabi_idiv(i32 %r2233,i32 %r2234)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2238 = call i32 @__aeabi_idiv(i32 %r2236,i32 %r2237)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL502:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL501
	bge .long_funcL503
.long_funcL509:
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
	bl .long_funcL510
.long_funcL504:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2210 = call i32 @__modsi3(i32 %r2208,i32 %r2209)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	mov r8,#0
	cmp r6,r8
	beq .long_funcL507
.long_funcL508:
	bl .long_funcL506
.long_funcL507:
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
	bl .long_funcL508
.long_funcL460:
	ldr r8,[fp,#-156]
	str r8,[fp,#-152]
	ldr r8,[fp,#-164]
	str r8,[fp,#-148]
	mov r8,#0
	str r8,[fp,#-144]
	ldr r8,[fp,#-148]
	cmp r8,#0
	bne .long_funcL463
.long_funcL465:
	ldr r8,[fp,#-152]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	str r8,[fp,#-156]
	bl .long_funcL461
.long_funcL463:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-152]
	str r8,[fp,#-356]
	ldr r8,[fp,#-148]
	str r8,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL467
.long_funcL469:
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
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL478
.long_funcL480:
	ldr r8,[fp,#-364]
	str r8,[fp,#-148]
	mov r8,#1
	mov r7,#15
	cmp r8,r7
	bgt .long_funcL485
.long_funcL486:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-148]
	mov r7,#1
	mov r6,r7
	ldr r7,.LPIC11
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	mul r6,r8,r7
	str r6,[fp,#-356]
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL489
.long_funcL491:
.long_funcL487:
	ldr r8,[fp,#-364]
	str r8,[fp,#-148]
	ldr r8,[fp,#-144]
	str r8,[fp,#-152]
.long_funcL464:
	ldr r8,[fp,#-148]
	cmp r8,#0
	bne .long_funcL463
	beq .long_funcL465
.long_funcL489:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2151 = call i32 @__modsi3(i32 %r2149,i32 %r2150)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL494
.long_funcL493:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2169 = call i32 @__aeabi_idiv(i32 %r2167,i32 %r2168)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2172 = call i32 @__aeabi_idiv(i32 %r2170,i32 %r2171)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL490:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL489
	bge .long_funcL491
.long_funcL494:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2155 = call i32 @__modsi3(i32 %r2153,i32 %r2154)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL493
.long_funcL492:
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
	bl .long_funcL493
.long_funcL485:
	mov r8,#0
	str r8,[fp,#-364]
	bl .long_funcL487
.long_funcL478:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2099 = call i32 @__modsi3(i32 %r2097,i32 %r2098)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL483
.long_funcL482:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2117 = call i32 @__aeabi_idiv(i32 %r2115,i32 %r2116)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2120 = call i32 @__aeabi_idiv(i32 %r2118,i32 %r2119)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL479:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL478
	bge .long_funcL480
.long_funcL483:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2103 = call i32 @__modsi3(i32 %r2101,i32 %r2102)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL482
.long_funcL481:
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
	bl .long_funcL482
.long_funcL467:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2046 = call i32 @__modsi3(i32 %r2044,i32 %r2045)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL470
.long_funcL471:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2064 = call i32 @__modsi3(i32 %r2062,i32 %r2063)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL475
.long_funcL476:
.long_funcL472:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2075 = call i32 @__aeabi_idiv(i32 %r2073,i32 %r2074)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2078 = call i32 @__aeabi_idiv(i32 %r2076,i32 %r2077)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL468:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL467
	bge .long_funcL469
.long_funcL475:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	bl .LPIC14
.LPIC13:
	.word SHIFT_TABLE
.LPIC14:
	ldr r6,.LPIC13
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL476
.long_funcL470:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2050 = call i32 @__modsi3(i32 %r2048,i32 %r2049)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	mov r8,#0
	cmp r6,r8
	beq .long_funcL473
.long_funcL474:
	bl .long_funcL472
.long_funcL473:
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
	bl .long_funcL474
.long_funcL453:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1995 = call i32 @__modsi3(i32 %r1993,i32 %r1994)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL458
.long_funcL457:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r2013 = call i32 @__aeabi_idiv(i32 %r2011,i32 %r2012)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r2016 = call i32 @__aeabi_idiv(i32 %r2014,i32 %r2015)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL454:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL453
	bge .long_funcL455
.long_funcL458:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1999 = call i32 @__modsi3(i32 %r1997,i32 %r1998)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL457
.long_funcL456:
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
	bl .long_funcL457
.long_funcL439:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1944 = call i32 @__modsi3(i32 %r1942,i32 %r1943)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL444
.long_funcL443:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1962 = call i32 @__aeabi_idiv(i32 %r1960,i32 %r1961)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1965 = call i32 @__aeabi_idiv(i32 %r1963,i32 %r1964)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL440:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL439
	bge .long_funcL441
.long_funcL444:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1948 = call i32 @__modsi3(i32 %r1946,i32 %r1947)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL443
.long_funcL442:
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
	bl .long_funcL443
.long_funcL217:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-256]
	str r8,[fp,#-356]
	mov r8,#1
	str r8,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL221
.long_funcL223:
	ldr r8,[fp,#-364]
	cmp r8,#0
	bne .long_funcL228
.long_funcL229:
	ldr r8,[fp,#-260]
	str r8,[fp,#-212]
	ldr r8,[fp,#-260]
	str r8,[fp,#-208]
	mov r8,#0
	str r8,[fp,#-204]
	ldr r8,[fp,#-208]
	cmp r8,#0
	bne .long_funcL325
.long_funcL327:
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
	bge .long_funcL418
.long_funcL419:
	ldr r8,[fp,#-352]
	mov r7,#0
	cmp r8,r7
	bgt .long_funcL424
.long_funcL425:
	ldr r8,[fp,#-356]
	str r8,[fp,#-364]
.long_funcL426:
.long_funcL420:
	ldr r8,[fp,#-364]
	str r8,[fp,#-256]
.long_funcL218:
	ldr r8,[fp,#-256]
	mov r7,#0
	cmp r8,r7
	bgt .long_funcL217
	ble .long_funcL219
.long_funcL424:
	ldr r8,[fp,#-356]
	movw r7,#32767
	movt r7,#0  @ 32767
	mov r6,r7
	cmp r8,r6
	bgt .long_funcL427
.long_funcL428:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC13
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r1905 = call i32 @__aeabi_idiv(i32 %r1901,i32 %r1904)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-364]
.long_funcL429:
	bl .long_funcL426
.long_funcL427:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC13
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r1889 = call i32 @__aeabi_idiv(i32 %r1885,i32 %r1888)
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
	bl .long_funcL429
.long_funcL418:
	ldr r8,[fp,#-356]
	mov r7,#0
	cmp r8,r7
	blt .long_funcL421
.long_funcL422:
	mov r8,#0
	str r8,[fp,#-364]
.long_funcL423:
	bl .long_funcL420
.long_funcL421:
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-364]
	bl .long_funcL423
.long_funcL325:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-208]
	str r8,[fp,#-356]
	mov r8,#1
	str r8,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL329
.long_funcL331:
	ldr r8,[fp,#-364]
	cmp r8,#0
	bne .long_funcL336
.long_funcL337:
	ldr r8,[fp,#-212]
	str r8,[fp,#-188]
	ldr r8,[fp,#-212]
	str r8,[fp,#-184]
	mov r8,#0
	str r8,[fp,#-180]
	ldr r8,[fp,#-184]
	cmp r8,#0
	bne .long_funcL373
.long_funcL375:
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
	bge .long_funcL406
.long_funcL407:
	ldr r8,[fp,#-352]
	mov r7,#0
	cmp r8,r7
	bgt .long_funcL412
.long_funcL413:
	ldr r8,[fp,#-356]
	str r8,[fp,#-364]
.long_funcL414:
.long_funcL408:
	ldr r8,[fp,#-364]
	str r8,[fp,#-208]
.long_funcL326:
	ldr r8,[fp,#-208]
	cmp r8,#0
	bne .long_funcL325
	beq .long_funcL327
.long_funcL412:
	ldr r8,[fp,#-356]
	movw r7,#32767
	movt r7,#0  @ 32767
	mov r6,r7
	cmp r8,r6
	bgt .long_funcL415
.long_funcL416:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC13
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r1854 = call i32 @__aeabi_idiv(i32 %r1850,i32 %r1853)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-364]
.long_funcL417:
	bl .long_funcL414
.long_funcL415:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC13
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r1838 = call i32 @__aeabi_idiv(i32 %r1834,i32 %r1837)
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
	bl .long_funcL417
.long_funcL406:
	ldr r8,[fp,#-356]
	mov r7,#0
	cmp r8,r7
	blt .long_funcL409
.long_funcL410:
	mov r8,#0
	str r8,[fp,#-364]
.long_funcL411:
	bl .long_funcL408
.long_funcL409:
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-364]
	bl .long_funcL411
.long_funcL373:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-188]
	str r8,[fp,#-356]
	ldr r8,[fp,#-184]
	str r8,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL377
.long_funcL379:
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
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL388
.long_funcL390:
	ldr r8,[fp,#-364]
	str r8,[fp,#-184]
	mov r8,#1
	mov r7,#15
	cmp r8,r7
	bgt .long_funcL395
.long_funcL396:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-184]
	mov r7,#1
	mov r6,r7
	bl .LPIC16
.LPIC15:
	.word SHIFT_TABLE
.LPIC16:
	ldr r7,.LPIC15
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	mul r6,r8,r7
	str r6,[fp,#-356]
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL399
.long_funcL401:
.long_funcL397:
	ldr r8,[fp,#-364]
	str r8,[fp,#-184]
	ldr r8,[fp,#-180]
	str r8,[fp,#-188]
.long_funcL374:
	ldr r8,[fp,#-184]
	cmp r8,#0
	bne .long_funcL373
	beq .long_funcL375
.long_funcL399:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1774 = call i32 @__modsi3(i32 %r1772,i32 %r1773)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL404
.long_funcL403:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1792 = call i32 @__aeabi_idiv(i32 %r1790,i32 %r1791)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1795 = call i32 @__aeabi_idiv(i32 %r1793,i32 %r1794)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL400:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL399
	bge .long_funcL401
.long_funcL404:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1778 = call i32 @__modsi3(i32 %r1776,i32 %r1777)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL403
.long_funcL402:
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
	bl .long_funcL403
.long_funcL395:
	mov r8,#0
	str r8,[fp,#-364]
	bl .long_funcL397
.long_funcL388:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1722 = call i32 @__modsi3(i32 %r1720,i32 %r1721)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL393
.long_funcL392:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1740 = call i32 @__aeabi_idiv(i32 %r1738,i32 %r1739)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1743 = call i32 @__aeabi_idiv(i32 %r1741,i32 %r1742)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL389:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL388
	bge .long_funcL390
.long_funcL393:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1726 = call i32 @__modsi3(i32 %r1724,i32 %r1725)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL392
.long_funcL391:
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
	bl .long_funcL392
.long_funcL377:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1669 = call i32 @__modsi3(i32 %r1667,i32 %r1668)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL380
.long_funcL381:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1687 = call i32 @__modsi3(i32 %r1685,i32 %r1686)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL385
.long_funcL386:
.long_funcL382:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1698 = call i32 @__aeabi_idiv(i32 %r1696,i32 %r1697)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1701 = call i32 @__aeabi_idiv(i32 %r1699,i32 %r1700)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL378:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL377
	bge .long_funcL379
.long_funcL385:
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
	bl .long_funcL386
.long_funcL380:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1673 = call i32 @__modsi3(i32 %r1671,i32 %r1672)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	mov r8,#0
	cmp r6,r8
	beq .long_funcL383
.long_funcL384:
	bl .long_funcL382
.long_funcL383:
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
	bl .long_funcL384
.long_funcL336:
	ldr r8,[fp,#-204]
	str r8,[fp,#-200]
	ldr r8,[fp,#-212]
	str r8,[fp,#-196]
	mov r8,#0
	str r8,[fp,#-192]
	ldr r8,[fp,#-196]
	cmp r8,#0
	bne .long_funcL339
.long_funcL341:
	ldr r8,[fp,#-200]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	str r8,[fp,#-204]
	bl .long_funcL337
.long_funcL339:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-200]
	str r8,[fp,#-356]
	ldr r8,[fp,#-196]
	str r8,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL343
.long_funcL345:
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
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL354
.long_funcL356:
	ldr r8,[fp,#-364]
	str r8,[fp,#-196]
	mov r8,#1
	mov r7,#15
	cmp r8,r7
	bgt .long_funcL361
.long_funcL362:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-196]
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
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL365
.long_funcL367:
.long_funcL363:
	ldr r8,[fp,#-364]
	str r8,[fp,#-196]
	ldr r8,[fp,#-192]
	str r8,[fp,#-200]
.long_funcL340:
	ldr r8,[fp,#-196]
	cmp r8,#0
	bne .long_funcL339
	beq .long_funcL341
.long_funcL365:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1614 = call i32 @__modsi3(i32 %r1612,i32 %r1613)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL370
.long_funcL369:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1632 = call i32 @__aeabi_idiv(i32 %r1630,i32 %r1631)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1635 = call i32 @__aeabi_idiv(i32 %r1633,i32 %r1634)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL366:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL365
	bge .long_funcL367
.long_funcL370:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1618 = call i32 @__modsi3(i32 %r1616,i32 %r1617)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL369
.long_funcL368:
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
	bl .long_funcL369
.long_funcL361:
	mov r8,#0
	str r8,[fp,#-364]
	bl .long_funcL363
.long_funcL354:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1562 = call i32 @__modsi3(i32 %r1560,i32 %r1561)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL359
.long_funcL358:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1580 = call i32 @__aeabi_idiv(i32 %r1578,i32 %r1579)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1583 = call i32 @__aeabi_idiv(i32 %r1581,i32 %r1582)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL355:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL354
	bge .long_funcL356
.long_funcL359:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1566 = call i32 @__modsi3(i32 %r1564,i32 %r1565)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL358
.long_funcL357:
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
	bl .long_funcL358
.long_funcL343:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1509 = call i32 @__modsi3(i32 %r1507,i32 %r1508)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL346
.long_funcL347:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1527 = call i32 @__modsi3(i32 %r1525,i32 %r1526)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL351
.long_funcL352:
.long_funcL348:
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
.long_funcL344:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL343
	bge .long_funcL345
.long_funcL351:
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
	bl .long_funcL352
.long_funcL346:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1513 = call i32 @__modsi3(i32 %r1511,i32 %r1512)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	mov r8,#0
	cmp r6,r8
	beq .long_funcL349
.long_funcL350:
	bl .long_funcL348
.long_funcL349:
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
	bl .long_funcL350
.long_funcL329:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1458 = call i32 @__modsi3(i32 %r1456,i32 %r1457)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL334
.long_funcL333:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1476 = call i32 @__aeabi_idiv(i32 %r1474,i32 %r1475)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1479 = call i32 @__aeabi_idiv(i32 %r1477,i32 %r1478)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL330:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL329
	bge .long_funcL331
.long_funcL334:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1462 = call i32 @__modsi3(i32 %r1460,i32 %r1461)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL333
.long_funcL332:
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
	bl .long_funcL333
.long_funcL228:
	ldr r8,[fp,#-252]
	str r8,[fp,#-248]
	ldr r8,[fp,#-260]
	str r8,[fp,#-244]
	mov r8,#0
	str r8,[fp,#-240]
	ldr r8,[fp,#-244]
	cmp r8,#0
	bne .long_funcL231
.long_funcL233:
	ldr r8,[fp,#-240]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	str r8,[fp,#-252]
	bl .long_funcL229
.long_funcL231:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-244]
	str r8,[fp,#-356]
	mov r8,#1
	str r8,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL235
.long_funcL237:
	ldr r8,[fp,#-364]
	cmp r8,#0
	bne .long_funcL242
.long_funcL243:
	ldr r8,[fp,#-248]
	str r8,[fp,#-224]
	ldr r8,[fp,#-248]
	str r8,[fp,#-220]
	mov r8,#0
	str r8,[fp,#-216]
	ldr r8,[fp,#-220]
	cmp r8,#0
	bne .long_funcL279
.long_funcL281:
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
	bge .long_funcL312
.long_funcL313:
	ldr r8,[fp,#-352]
	mov r7,#0
	cmp r8,r7
	bgt .long_funcL318
.long_funcL319:
	ldr r8,[fp,#-356]
	str r8,[fp,#-364]
.long_funcL320:
.long_funcL314:
	ldr r8,[fp,#-364]
	str r8,[fp,#-244]
.long_funcL232:
	ldr r8,[fp,#-244]
	cmp r8,#0
	bne .long_funcL231
	beq .long_funcL233
.long_funcL318:
	ldr r8,[fp,#-356]
	movw r7,#32767
	movt r7,#0  @ 32767
	mov r6,r7
	cmp r8,r6
	bgt .long_funcL321
.long_funcL322:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC17
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r1432 = call i32 @__aeabi_idiv(i32 %r1428,i32 %r1431)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-364]
.long_funcL323:
	bl .long_funcL320
.long_funcL321:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC17
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r1416 = call i32 @__aeabi_idiv(i32 %r1412,i32 %r1415)
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
	ldr r7,.LPIC17
	add r5,r7,r8,lsl #2
	ldr r8,[r5]
	sub r7,r6,r8
	str r7,[fp,#-364]
	bl .long_funcL323
.long_funcL312:
	ldr r8,[fp,#-356]
	mov r7,#0
	cmp r8,r7
	blt .long_funcL315
.long_funcL316:
	mov r8,#0
	str r8,[fp,#-364]
.long_funcL317:
	bl .long_funcL314
.long_funcL315:
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-364]
	bl .long_funcL317
.long_funcL279:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-224]
	str r8,[fp,#-356]
	ldr r8,[fp,#-220]
	str r8,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL283
.long_funcL285:
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
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL294
.long_funcL296:
	ldr r8,[fp,#-364]
	str r8,[fp,#-220]
	mov r8,#1
	mov r7,#15
	cmp r8,r7
	bgt .long_funcL301
.long_funcL302:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-220]
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
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL305
.long_funcL307:
.long_funcL303:
	ldr r8,[fp,#-364]
	str r8,[fp,#-220]
	ldr r8,[fp,#-216]
	str r8,[fp,#-224]
.long_funcL280:
	ldr r8,[fp,#-220]
	cmp r8,#0
	bne .long_funcL279
	beq .long_funcL281
.long_funcL305:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1352 = call i32 @__modsi3(i32 %r1350,i32 %r1351)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL310
.long_funcL309:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1370 = call i32 @__aeabi_idiv(i32 %r1368,i32 %r1369)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1373 = call i32 @__aeabi_idiv(i32 %r1371,i32 %r1372)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL306:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL305
	bge .long_funcL307
.long_funcL310:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1356 = call i32 @__modsi3(i32 %r1354,i32 %r1355)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL309
.long_funcL308:
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
	bl .long_funcL309
.long_funcL301:
	mov r8,#0
	str r8,[fp,#-364]
	bl .long_funcL303
.long_funcL294:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1300 = call i32 @__modsi3(i32 %r1298,i32 %r1299)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL299
.long_funcL298:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1318 = call i32 @__aeabi_idiv(i32 %r1316,i32 %r1317)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1321 = call i32 @__aeabi_idiv(i32 %r1319,i32 %r1320)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL295:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL294
	bge .long_funcL296
.long_funcL299:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1304 = call i32 @__modsi3(i32 %r1302,i32 %r1303)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL298
.long_funcL297:
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
	bl .long_funcL298
.long_funcL283:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1247 = call i32 @__modsi3(i32 %r1245,i32 %r1246)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL286
.long_funcL287:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1265 = call i32 @__modsi3(i32 %r1263,i32 %r1264)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL291
.long_funcL292:
.long_funcL288:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1276 = call i32 @__aeabi_idiv(i32 %r1274,i32 %r1275)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1279 = call i32 @__aeabi_idiv(i32 %r1277,i32 %r1278)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL284:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL283
	bge .long_funcL285
.long_funcL291:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	bl .LPIC20
.LPIC19:
	.word SHIFT_TABLE
.LPIC20:
	ldr r6,.LPIC19
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL292
.long_funcL286:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1251 = call i32 @__modsi3(i32 %r1249,i32 %r1250)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	mov r8,#0
	cmp r6,r8
	beq .long_funcL289
.long_funcL290:
	bl .long_funcL288
.long_funcL289:
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
	bl .long_funcL290
.long_funcL242:
	ldr r8,[fp,#-240]
	str r8,[fp,#-236]
	ldr r8,[fp,#-248]
	str r8,[fp,#-232]
	mov r8,#0
	str r8,[fp,#-228]
	ldr r8,[fp,#-232]
	cmp r8,#0
	bne .long_funcL245
.long_funcL247:
	ldr r8,[fp,#-236]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	str r8,[fp,#-240]
	bl .long_funcL243
.long_funcL245:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-236]
	str r8,[fp,#-356]
	ldr r8,[fp,#-232]
	str r8,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL249
.long_funcL251:
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
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL260
.long_funcL262:
	ldr r8,[fp,#-364]
	str r8,[fp,#-232]
	mov r8,#1
	mov r7,#15
	cmp r8,r7
	bgt .long_funcL267
.long_funcL268:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-232]
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
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL271
.long_funcL273:
.long_funcL269:
	ldr r8,[fp,#-364]
	str r8,[fp,#-232]
	ldr r8,[fp,#-228]
	str r8,[fp,#-236]
.long_funcL246:
	ldr r8,[fp,#-232]
	cmp r8,#0
	bne .long_funcL245
	beq .long_funcL247
.long_funcL271:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1192 = call i32 @__modsi3(i32 %r1190,i32 %r1191)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL276
.long_funcL275:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1210 = call i32 @__aeabi_idiv(i32 %r1208,i32 %r1209)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1213 = call i32 @__aeabi_idiv(i32 %r1211,i32 %r1212)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL272:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL271
	bge .long_funcL273
.long_funcL276:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1196 = call i32 @__modsi3(i32 %r1194,i32 %r1195)
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
	ldr r6,.LPIC19
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL275
.long_funcL267:
	mov r8,#0
	str r8,[fp,#-364]
	bl .long_funcL269
.long_funcL260:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1140 = call i32 @__modsi3(i32 %r1138,i32 %r1139)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL265
.long_funcL264:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1158 = call i32 @__aeabi_idiv(i32 %r1156,i32 %r1157)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1161 = call i32 @__aeabi_idiv(i32 %r1159,i32 %r1160)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL261:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL260
	bge .long_funcL262
.long_funcL265:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1144 = call i32 @__modsi3(i32 %r1142,i32 %r1143)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL264
.long_funcL263:
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
	bl .long_funcL264
.long_funcL249:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1087 = call i32 @__modsi3(i32 %r1085,i32 %r1086)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL252
.long_funcL253:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1105 = call i32 @__modsi3(i32 %r1103,i32 %r1104)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL257
.long_funcL258:
.long_funcL254:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1116 = call i32 @__aeabi_idiv(i32 %r1114,i32 %r1115)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1119 = call i32 @__aeabi_idiv(i32 %r1117,i32 %r1118)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL250:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL249
	bge .long_funcL251
.long_funcL257:
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
	bl .long_funcL258
.long_funcL252:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1091 = call i32 @__modsi3(i32 %r1089,i32 %r1090)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	mov r8,#0
	cmp r6,r8
	beq .long_funcL255
.long_funcL256:
	bl .long_funcL254
.long_funcL255:
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
	bl .long_funcL256
.long_funcL235:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1036 = call i32 @__modsi3(i32 %r1034,i32 %r1035)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL240
.long_funcL239:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1054 = call i32 @__aeabi_idiv(i32 %r1052,i32 %r1053)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1057 = call i32 @__aeabi_idiv(i32 %r1055,i32 %r1056)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL236:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL235
	bge .long_funcL237
.long_funcL240:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1040 = call i32 @__modsi3(i32 %r1038,i32 %r1039)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL239
.long_funcL238:
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
	bl .long_funcL239
.long_funcL221:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r985 = call i32 @__modsi3(i32 %r983,i32 %r984)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL226
.long_funcL225:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r1003 = call i32 @__aeabi_idiv(i32 %r1001,i32 %r1002)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r1006 = call i32 @__aeabi_idiv(i32 %r1004,i32 %r1005)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL222:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL221
	bge .long_funcL223
.long_funcL226:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r989 = call i32 @__modsi3(i32 %r987,i32 %r988)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL225
.long_funcL224:
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
	bl .long_funcL225
.long_funcL3:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-340]
	str r8,[fp,#-356]
	mov r8,#1
	str r8,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL7
.long_funcL9:
	ldr r8,[fp,#-364]
	cmp r8,#0
	bne .long_funcL14
.long_funcL15:
	ldr r8,[fp,#-344]
	str r8,[fp,#-296]
	ldr r8,[fp,#-344]
	str r8,[fp,#-292]
	mov r8,#0
	str r8,[fp,#-288]
	ldr r8,[fp,#-292]
	cmp r8,#0
	bne .long_funcL111
.long_funcL113:
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
	bge .long_funcL204
.long_funcL205:
	ldr r8,[fp,#-352]
	mov r7,#0
	cmp r8,r7
	bgt .long_funcL210
.long_funcL211:
	ldr r8,[fp,#-356]
	str r8,[fp,#-364]
.long_funcL212:
.long_funcL206:
	ldr r8,[fp,#-364]
	str r8,[fp,#-340]
.long_funcL4:
	ldr r8,[fp,#-340]
	mov r7,#0
	cmp r8,r7
	bgt .long_funcL3
	ble .long_funcL5
.long_funcL210:
	ldr r8,[fp,#-356]
	movw r7,#32767
	movt r7,#0  @ 32767
	mov r6,r7
	cmp r8,r6
	bgt .long_funcL213
.long_funcL214:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	bl .LPIC22
.LPIC21:
	.word SHIFT_TABLE
.LPIC22:
	ldr r7,.LPIC21
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r952 = call i32 @__aeabi_idiv(i32 %r948,i32 %r951)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-364]
.long_funcL215:
	bl .long_funcL212
.long_funcL213:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC21
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r936 = call i32 @__aeabi_idiv(i32 %r932,i32 %r935)
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
	bl .long_funcL215
.long_funcL204:
	ldr r8,[fp,#-356]
	mov r7,#0
	cmp r8,r7
	blt .long_funcL207
.long_funcL208:
	mov r8,#0
	str r8,[fp,#-364]
.long_funcL209:
	bl .long_funcL206
.long_funcL207:
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-364]
	bl .long_funcL209
.long_funcL111:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-292]
	str r8,[fp,#-356]
	mov r8,#1
	str r8,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL115
.long_funcL117:
	ldr r8,[fp,#-364]
	cmp r8,#0
	bne .long_funcL122
.long_funcL123:
	ldr r8,[fp,#-296]
	str r8,[fp,#-272]
	ldr r8,[fp,#-296]
	str r8,[fp,#-268]
	mov r8,#0
	str r8,[fp,#-264]
	ldr r8,[fp,#-268]
	cmp r8,#0
	bne .long_funcL159
.long_funcL161:
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
	bge .long_funcL192
.long_funcL193:
	ldr r8,[fp,#-352]
	mov r7,#0
	cmp r8,r7
	bgt .long_funcL198
.long_funcL199:
	ldr r8,[fp,#-356]
	str r8,[fp,#-364]
.long_funcL200:
.long_funcL194:
	ldr r8,[fp,#-364]
	str r8,[fp,#-292]
.long_funcL112:
	ldr r8,[fp,#-292]
	cmp r8,#0
	bne .long_funcL111
	beq .long_funcL113
.long_funcL198:
	ldr r8,[fp,#-356]
	movw r7,#32767
	movt r7,#0  @ 32767
	mov r6,r7
	cmp r8,r6
	bgt .long_funcL201
.long_funcL202:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC21
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r901 = call i32 @__aeabi_idiv(i32 %r897,i32 %r900)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-364]
.long_funcL203:
	bl .long_funcL200
.long_funcL201:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC21
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r885 = call i32 @__aeabi_idiv(i32 %r881,i32 %r884)
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
	bl .long_funcL203
.long_funcL192:
	ldr r8,[fp,#-356]
	mov r7,#0
	cmp r8,r7
	blt .long_funcL195
.long_funcL196:
	mov r8,#0
	str r8,[fp,#-364]
.long_funcL197:
	bl .long_funcL194
.long_funcL195:
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-364]
	bl .long_funcL197
.long_funcL159:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-272]
	str r8,[fp,#-356]
	ldr r8,[fp,#-268]
	str r8,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL163
.long_funcL165:
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
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL174
.long_funcL176:
	ldr r8,[fp,#-364]
	str r8,[fp,#-268]
	mov r8,#1
	mov r7,#15
	cmp r8,r7
	bgt .long_funcL181
.long_funcL182:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-268]
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
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL185
.long_funcL187:
.long_funcL183:
	ldr r8,[fp,#-364]
	str r8,[fp,#-268]
	ldr r8,[fp,#-264]
	str r8,[fp,#-272]
.long_funcL160:
	ldr r8,[fp,#-268]
	cmp r8,#0
	bne .long_funcL159
	beq .long_funcL161
.long_funcL185:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r821 = call i32 @__modsi3(i32 %r819,i32 %r820)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL190
.long_funcL189:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r839 = call i32 @__aeabi_idiv(i32 %r837,i32 %r838)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r842 = call i32 @__aeabi_idiv(i32 %r840,i32 %r841)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL186:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL185
	bge .long_funcL187
.long_funcL190:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r825 = call i32 @__modsi3(i32 %r823,i32 %r824)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL189
.long_funcL188:
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
	bl .long_funcL189
.long_funcL181:
	mov r8,#0
	str r8,[fp,#-364]
	bl .long_funcL183
.long_funcL174:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r769 = call i32 @__modsi3(i32 %r767,i32 %r768)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL179
.long_funcL178:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r787 = call i32 @__aeabi_idiv(i32 %r785,i32 %r786)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r790 = call i32 @__aeabi_idiv(i32 %r788,i32 %r789)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL175:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL174
	bge .long_funcL176
.long_funcL179:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r773 = call i32 @__modsi3(i32 %r771,i32 %r772)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL178
.long_funcL177:
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
	bl .long_funcL178
.long_funcL163:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r716 = call i32 @__modsi3(i32 %r714,i32 %r715)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL166
.long_funcL167:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r734 = call i32 @__modsi3(i32 %r732,i32 %r733)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL171
.long_funcL172:
.long_funcL168:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r745 = call i32 @__aeabi_idiv(i32 %r743,i32 %r744)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r748 = call i32 @__aeabi_idiv(i32 %r746,i32 %r747)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL164:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL163
	bge .long_funcL165
.long_funcL171:
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
	bl .long_funcL172
.long_funcL166:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r720 = call i32 @__modsi3(i32 %r718,i32 %r719)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	mov r8,#0
	cmp r6,r8
	beq .long_funcL169
.long_funcL170:
	bl .long_funcL168
.long_funcL169:
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
	bl .long_funcL170
.long_funcL122:
	ldr r8,[fp,#-288]
	str r8,[fp,#-284]
	ldr r8,[fp,#-296]
	str r8,[fp,#-280]
	mov r8,#0
	str r8,[fp,#-276]
	ldr r8,[fp,#-280]
	cmp r8,#0
	bne .long_funcL125
.long_funcL127:
	ldr r8,[fp,#-284]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	str r8,[fp,#-288]
	bl .long_funcL123
.long_funcL125:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-284]
	str r8,[fp,#-356]
	ldr r8,[fp,#-280]
	str r8,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL129
.long_funcL131:
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
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL140
.long_funcL142:
	ldr r8,[fp,#-364]
	str r8,[fp,#-280]
	mov r8,#1
	mov r7,#15
	cmp r8,r7
	bgt .long_funcL147
.long_funcL148:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-280]
	mov r7,#1
	mov r6,r7
	bl .LPIC24
.LPIC23:
	.word SHIFT_TABLE
.LPIC24:
	ldr r7,.LPIC23
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	mul r6,r8,r7
	str r6,[fp,#-356]
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL151
.long_funcL153:
.long_funcL149:
	ldr r8,[fp,#-364]
	str r8,[fp,#-280]
	ldr r8,[fp,#-276]
	str r8,[fp,#-284]
.long_funcL126:
	ldr r8,[fp,#-280]
	cmp r8,#0
	bne .long_funcL125
	beq .long_funcL127
.long_funcL151:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r661 = call i32 @__modsi3(i32 %r659,i32 %r660)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL156
.long_funcL155:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r679 = call i32 @__aeabi_idiv(i32 %r677,i32 %r678)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r682 = call i32 @__aeabi_idiv(i32 %r680,i32 %r681)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL152:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL151
	bge .long_funcL153
.long_funcL156:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r665 = call i32 @__modsi3(i32 %r663,i32 %r664)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL155
.long_funcL154:
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
	bl .long_funcL155
.long_funcL147:
	mov r8,#0
	str r8,[fp,#-364]
	bl .long_funcL149
.long_funcL140:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r609 = call i32 @__modsi3(i32 %r607,i32 %r608)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL145
.long_funcL144:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r627 = call i32 @__aeabi_idiv(i32 %r625,i32 %r626)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r630 = call i32 @__aeabi_idiv(i32 %r628,i32 %r629)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL141:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL140
	bge .long_funcL142
.long_funcL145:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r613 = call i32 @__modsi3(i32 %r611,i32 %r612)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL144
.long_funcL143:
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
	bl .long_funcL144
.long_funcL129:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r556 = call i32 @__modsi3(i32 %r554,i32 %r555)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL132
.long_funcL133:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r574 = call i32 @__modsi3(i32 %r572,i32 %r573)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL137
.long_funcL138:
.long_funcL134:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r585 = call i32 @__aeabi_idiv(i32 %r583,i32 %r584)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r588 = call i32 @__aeabi_idiv(i32 %r586,i32 %r587)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL130:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL129
	bge .long_funcL131
.long_funcL137:
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
	bl .long_funcL138
.long_funcL132:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r560 = call i32 @__modsi3(i32 %r558,i32 %r559)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	mov r8,#0
	cmp r6,r8
	beq .long_funcL135
.long_funcL136:
	bl .long_funcL134
.long_funcL135:
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
	bl .long_funcL136
.long_funcL115:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r505 = call i32 @__modsi3(i32 %r503,i32 %r504)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL120
.long_funcL119:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r523 = call i32 @__aeabi_idiv(i32 %r521,i32 %r522)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r526 = call i32 @__aeabi_idiv(i32 %r524,i32 %r525)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL116:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL115
	bge .long_funcL117
.long_funcL120:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r509 = call i32 @__modsi3(i32 %r507,i32 %r508)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL119
.long_funcL118:
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
	bl .long_funcL119
.long_funcL14:
	ldr r8,[fp,#-336]
	str r8,[fp,#-332]
	ldr r8,[fp,#-344]
	str r8,[fp,#-328]
	mov r8,#0
	str r8,[fp,#-324]
	ldr r8,[fp,#-328]
	cmp r8,#0
	bne .long_funcL17
.long_funcL19:
	ldr r8,[fp,#-324]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	str r8,[fp,#-336]
	bl .long_funcL15
.long_funcL17:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-328]
	str r8,[fp,#-356]
	mov r8,#1
	str r8,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL21
.long_funcL23:
	ldr r8,[fp,#-364]
	cmp r8,#0
	bne .long_funcL28
.long_funcL29:
	ldr r8,[fp,#-332]
	str r8,[fp,#-308]
	ldr r8,[fp,#-332]
	str r8,[fp,#-304]
	mov r8,#0
	str r8,[fp,#-300]
	ldr r8,[fp,#-304]
	cmp r8,#0
	bne .long_funcL65
.long_funcL67:
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
	bge .long_funcL98
.long_funcL99:
	ldr r8,[fp,#-352]
	mov r7,#0
	cmp r8,r7
	bgt .long_funcL104
.long_funcL105:
	ldr r8,[fp,#-356]
	str r8,[fp,#-364]
.long_funcL106:
.long_funcL100:
	ldr r8,[fp,#-364]
	str r8,[fp,#-328]
.long_funcL18:
	ldr r8,[fp,#-328]
	cmp r8,#0
	bne .long_funcL17
	beq .long_funcL19
.long_funcL104:
	ldr r8,[fp,#-356]
	movw r7,#32767
	movt r7,#0  @ 32767
	mov r6,r7
	cmp r8,r6
	bgt .long_funcL107
.long_funcL108:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC23
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r479 = call i32 @__aeabi_idiv(i32 %r475,i32 %r478)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-364]
.long_funcL109:
	bl .long_funcL106
.long_funcL107:
	ldr r8,[fp,#-356]
	ldr r7,[fp,#-352]
	mov r6,r7
	ldr r7,.LPIC23
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r463 = call i32 @__aeabi_idiv(i32 %r459,i32 %r462)
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
	ldr r7,.LPIC23
	add r5,r7,r8,lsl #2
	ldr r8,[r5]
	sub r7,r6,r8
	str r7,[fp,#-364]
	bl .long_funcL109
.long_funcL98:
	ldr r8,[fp,#-356]
	mov r7,#0
	cmp r8,r7
	blt .long_funcL101
.long_funcL102:
	mov r8,#0
	str r8,[fp,#-364]
.long_funcL103:
	bl .long_funcL100
.long_funcL101:
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-364]
	bl .long_funcL103
.long_funcL65:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-308]
	str r8,[fp,#-356]
	ldr r8,[fp,#-304]
	str r8,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL69
.long_funcL71:
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
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL80
.long_funcL82:
	ldr r8,[fp,#-364]
	str r8,[fp,#-304]
	mov r8,#1
	mov r7,#15
	cmp r8,r7
	bgt .long_funcL87
.long_funcL88:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-304]
	mov r7,#1
	mov r6,r7
	bl .LPIC26
.LPIC25:
	.word SHIFT_TABLE
.LPIC26:
	ldr r7,.LPIC25
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	mul r6,r8,r7
	str r6,[fp,#-356]
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL91
.long_funcL93:
.long_funcL89:
	ldr r8,[fp,#-364]
	str r8,[fp,#-304]
	ldr r8,[fp,#-300]
	str r8,[fp,#-308]
.long_funcL66:
	ldr r8,[fp,#-304]
	cmp r8,#0
	bne .long_funcL65
	beq .long_funcL67
.long_funcL91:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r399 = call i32 @__modsi3(i32 %r397,i32 %r398)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL96
.long_funcL95:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r417 = call i32 @__aeabi_idiv(i32 %r415,i32 %r416)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r420 = call i32 @__aeabi_idiv(i32 %r418,i32 %r419)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL92:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL91
	bge .long_funcL93
.long_funcL96:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r403 = call i32 @__modsi3(i32 %r401,i32 %r402)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL95
.long_funcL94:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC25
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL95
.long_funcL87:
	mov r8,#0
	str r8,[fp,#-364]
	bl .long_funcL89
.long_funcL80:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r347 = call i32 @__modsi3(i32 %r345,i32 %r346)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL85
.long_funcL84:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r365 = call i32 @__aeabi_idiv(i32 %r363,i32 %r364)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r368 = call i32 @__aeabi_idiv(i32 %r366,i32 %r367)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL81:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL80
	bge .long_funcL82
.long_funcL85:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r351 = call i32 @__modsi3(i32 %r349,i32 %r350)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL84
.long_funcL83:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC25
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL84
.long_funcL69:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r294 = call i32 @__modsi3(i32 %r292,i32 %r293)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL72
.long_funcL73:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r312 = call i32 @__modsi3(i32 %r310,i32 %r311)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL77
.long_funcL78:
.long_funcL74:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r323 = call i32 @__aeabi_idiv(i32 %r321,i32 %r322)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r326 = call i32 @__aeabi_idiv(i32 %r324,i32 %r325)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL70:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL69
	bge .long_funcL71
.long_funcL77:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC25
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL78
.long_funcL72:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r298 = call i32 @__modsi3(i32 %r296,i32 %r297)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	mov r8,#0
	cmp r6,r8
	beq .long_funcL75
.long_funcL76:
	bl .long_funcL74
.long_funcL75:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC25
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL76
.long_funcL28:
	ldr r8,[fp,#-324]
	str r8,[fp,#-320]
	ldr r8,[fp,#-332]
	str r8,[fp,#-316]
	mov r8,#0
	str r8,[fp,#-312]
	ldr r8,[fp,#-316]
	cmp r8,#0
	bne .long_funcL31
.long_funcL33:
	ldr r8,[fp,#-320]
	str r8,[fp,#-364]
	ldr r8,[fp,#-364]
	str r8,[fp,#-324]
	bl .long_funcL29
.long_funcL31:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-320]
	str r8,[fp,#-356]
	ldr r8,[fp,#-316]
	str r8,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL35
.long_funcL37:
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
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL46
.long_funcL48:
	ldr r8,[fp,#-364]
	str r8,[fp,#-316]
	mov r8,#1
	mov r7,#15
	cmp r8,r7
	bgt .long_funcL53
.long_funcL54:
	mov r8,#0
	str r8,[fp,#-364]
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-316]
	mov r7,#1
	mov r6,r7
	ldr r7,.LPIC25
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	mul r6,r8,r7
	str r6,[fp,#-356]
	movw r8,#65535
	movt r8,#0  @ 65535
	mov r7,r8
	str r7,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL57
.long_funcL59:
.long_funcL55:
	ldr r8,[fp,#-364]
	str r8,[fp,#-316]
	ldr r8,[fp,#-312]
	str r8,[fp,#-320]
.long_funcL32:
	ldr r8,[fp,#-316]
	cmp r8,#0
	bne .long_funcL31
	beq .long_funcL33
.long_funcL57:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r239 = call i32 @__modsi3(i32 %r237,i32 %r238)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL62
.long_funcL61:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r257 = call i32 @__aeabi_idiv(i32 %r255,i32 %r256)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r260 = call i32 @__aeabi_idiv(i32 %r258,i32 %r259)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL58:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL57
	bge .long_funcL59
.long_funcL62:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r243 = call i32 @__modsi3(i32 %r241,i32 %r242)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL61
.long_funcL60:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC25
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL61
.long_funcL53:
	mov r8,#0
	str r8,[fp,#-364]
	bl .long_funcL55
.long_funcL46:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r187 = call i32 @__modsi3(i32 %r185,i32 %r186)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL51
.long_funcL50:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r205 = call i32 @__aeabi_idiv(i32 %r203,i32 %r204)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r208 = call i32 @__aeabi_idiv(i32 %r206,i32 %r207)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL47:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL46
	bge .long_funcL48
.long_funcL51:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r191 = call i32 @__modsi3(i32 %r189,i32 %r190)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL50
.long_funcL49:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC25
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL50
.long_funcL35:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r134 = call i32 @__modsi3(i32 %r132,i32 %r133)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL38
.long_funcL39:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r152 = call i32 @__modsi3(i32 %r150,i32 %r151)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL43
.long_funcL44:
.long_funcL40:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r163 = call i32 @__aeabi_idiv(i32 %r161,i32 %r162)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r166 = call i32 @__aeabi_idiv(i32 %r164,i32 %r165)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL36:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL35
	bge .long_funcL37
.long_funcL43:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	bl .LPIC28
.LPIC27:
	.word SHIFT_TABLE
.LPIC28:
	ldr r6,.LPIC27
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL44
.long_funcL38:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r138 = call i32 @__modsi3(i32 %r136,i32 %r137)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	mov r8,#0
	cmp r6,r8
	beq .long_funcL41
.long_funcL42:
	bl .long_funcL40
.long_funcL41:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC27
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL42
.long_funcL21:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r83 = call i32 @__modsi3(i32 %r81,i32 %r82)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL26
.long_funcL25:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r101 = call i32 @__aeabi_idiv(i32 %r99,i32 %r100)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-356]
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r104 = call i32 @__aeabi_idiv(i32 %r102,i32 %r103)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-352]
	ldr r8,[fp,#-360]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-360]
.long_funcL22:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL21
	bge .long_funcL23
.long_funcL26:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r87 = call i32 @__modsi3(i32 %r85,i32 %r86)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL25
.long_funcL24:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC27
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL25
.long_funcL7:
	ldr r8,[fp,#-356]
	mov r7,#2
	@%r32 = call i32 @__modsi3(i32 %r30,i32 %r31)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .long_funcL12
.long_funcL11:
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
.long_funcL8:
	ldr r8,[fp,#-360]
	mov r7,#16
	cmp r8,r7
	blt .long_funcL7
	bge .long_funcL9
.long_funcL12:
	ldr r8,[fp,#-352]
	mov r7,#2
	@%r36 = call i32 @__modsi3(i32 %r34,i32 %r35)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	beq .long_funcL11
.long_funcL10:
	ldr r8,[fp,#-364]
	mov r7,#1
	ldr r6,[fp,#-360]
	mov r5,r6
	ldr r6,.LPIC27
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-364]
	bl .long_funcL11
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
