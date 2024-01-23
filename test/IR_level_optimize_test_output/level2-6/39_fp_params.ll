declare i32 @getint()
declare i32 @getch()
declare float @getfloat()
declare i32 @getarray(ptr)
declare i32 @getfarray(ptr)
declare void @putint(i32)
declare void @putch(i32)
declare void @putfloat(float)
declare void @putarray(i32,ptr)
declare void @putfarray(i32,ptr)
declare void @putf(ptr)
declare void @_sysy_starttime(i32)
declare void @_sysy_stoptime(i32)
declare void @llvm.memset.p0.i32(ptr,i8,i32,i1)
@k = global i32 zeroinitializer
define i32 @main()
{
L0:
    %r1 = alloca [24 x [3 x i32]]
    %r0 = alloca [40 x [3 x float]]
    br label %L1
L1:
    %r4 = call i32 @getint()
    store i32 %r4, ptr @k
    br label %L10
L3:
    %r750 = phi i32 [%r16,%L4],[0,%L10]
    %r12 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r750
    %r13 = call i32 @getfarray(ptr %r12)
    %r16 = add i32 %r750,1
    br label %L4
L4:
    %r19 = icmp slt i32 %r16,40
    br i1 %r19, label %L3, label %L5
L5:
    br label %L11
L7:
    %r752 = phi i32 [%r33,%L8],[0,%L11]
    %r29 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r752
    %r30 = call i32 @getarray(ptr %r29)
    %r33 = add i32 %r752,1
    br label %L8
L8:
    %r36 = icmp slt i32 %r33,24
    br i1 %r36, label %L7, label %L9
L9:
    %r41 = load i32, ptr @k
    %r42 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 0, i32 %r41
    %r43 = load float, ptr %r42
    %r46 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 1, i32 %r41
    %r47 = load float, ptr %r46
    %r50 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 2, i32 %r41
    %r51 = load float, ptr %r50
    %r54 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 3, i32 %r41
    %r55 = load float, ptr %r54
    %r58 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 4, i32 %r41
    %r59 = load float, ptr %r58
    %r62 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 5, i32 %r41
    %r63 = load float, ptr %r62
    %r66 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 6, i32 %r41
    %r67 = load float, ptr %r66
    %r70 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 7, i32 %r41
    %r71 = load float, ptr %r70
    %r74 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 8, i32 %r41
    %r75 = load float, ptr %r74
    %r78 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 9, i32 %r41
    %r79 = load float, ptr %r78
    %r82 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 10, i32 %r41
    %r83 = load float, ptr %r82
    %r86 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 11, i32 %r41
    %r87 = load float, ptr %r86
    %r90 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 12, i32 %r41
    %r91 = load float, ptr %r90
    %r94 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 13, i32 %r41
    %r95 = load float, ptr %r94
    %r98 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 14, i32 %r41
    %r99 = load float, ptr %r98
    %r102 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 15, i32 %r41
    %r103 = load float, ptr %r102
    %r106 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 16, i32 %r41
    %r107 = load float, ptr %r106
    %r110 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 17, i32 %r41
    %r111 = load float, ptr %r110
    %r114 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 18, i32 %r41
    %r115 = load float, ptr %r114
    %r118 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 19, i32 %r41
    %r119 = load float, ptr %r118
    %r122 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 20, i32 %r41
    %r123 = load float, ptr %r122
    %r126 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 21, i32 %r41
    %r127 = load float, ptr %r126
    %r130 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 22, i32 %r41
    %r131 = load float, ptr %r130
    %r134 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 23, i32 %r41
    %r135 = load float, ptr %r134
    %r138 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 24, i32 %r41
    %r139 = load float, ptr %r138
    %r142 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 25, i32 %r41
    %r143 = load float, ptr %r142
    %r146 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 26, i32 %r41
    %r147 = load float, ptr %r146
    %r150 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 27, i32 %r41
    %r151 = load float, ptr %r150
    %r154 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 28, i32 %r41
    %r155 = load float, ptr %r154
    %r158 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 29, i32 %r41
    %r159 = load float, ptr %r158
    %r162 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 30, i32 %r41
    %r163 = load float, ptr %r162
    %r166 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 31, i32 %r41
    %r167 = load float, ptr %r166
    %r170 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 32, i32 %r41
    %r171 = load float, ptr %r170
    %r174 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 33, i32 %r41
    %r175 = load float, ptr %r174
    %r178 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 34, i32 %r41
    %r179 = load float, ptr %r178
    %r182 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 35, i32 %r41
    %r183 = load float, ptr %r182
    %r186 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 36, i32 %r41
    %r187 = load float, ptr %r186
    %r190 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 37, i32 %r41
    %r191 = load float, ptr %r190
    %r194 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 38, i32 %r41
    %r195 = load float, ptr %r194
    %r198 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 39, i32 %r41
    %r199 = load float, ptr %r198
    %r200 = call float @params_f40(float %r43,float %r47,float %r51,float %r55,float %r59,float %r63,float %r67,float %r71,float %r75,float %r79,float %r83,float %r87,float %r91,float %r95,float %r99,float %r103,float %r107,float %r111,float %r115,float %r119,float %r123,float %r127,float %r131,float %r135,float %r139,float %r143,float %r147,float %r151,float %r155,float %r159,float %r163,float %r167,float %r171,float %r175,float %r179,float %r183,float %r187,float %r191,float %r195,float %r199)
    %r204 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 23, i32 %r41
    %r205 = load i32, ptr %r204
    %r208 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 2, i32 %r41
    %r209 = load i32, ptr %r208
    %r212 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 6, i32 %r41
    %r213 = load i32, ptr %r212
    %r220 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 1, i32 %r41
    %r221 = load i32, ptr %r220
    %r224 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 4, i32 %r41
    %r225 = load i32, ptr %r224
    %r228 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 5, i32 %r41
    %r229 = load i32, ptr %r228
    %r244 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 22, i32 %r41
    %r245 = load i32, ptr %r244
    %r256 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 0, i32 %r41
    %r257 = load i32, ptr %r256
    %r264 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 19, i32 %r41
    %r265 = load i32, ptr %r264
    %r292 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 7, i32 %r41
    %r293 = load i32, ptr %r292
    %r300 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 10, i32 %r41
    %r301 = load i32, ptr %r300
    %r304 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 13, i32 %r41
    %r305 = load i32, ptr %r304
    %r328 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 8, i32 %r41
    %r329 = load i32, ptr %r328
    %r336 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 17, i32 %r41
    %r337 = load i32, ptr %r336
    %r356 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 18, i32 %r41
    %r357 = load i32, ptr %r356
    %r360 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 9, i32 %r41
    %r361 = load i32, ptr %r360
    %r376 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 12, i32 %r41
    %r377 = load i32, ptr %r376
    %r384 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 11, i32 %r41
    %r385 = load i32, ptr %r384
    %r388 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 16, i32 %r41
    %r389 = load i32, ptr %r388
    %r408 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 3, i32 %r41
    %r409 = load i32, ptr %r408
    %r412 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 21, i32 %r41
    %r413 = load i32, ptr %r412
    %r416 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 20, i32 %r41
    %r417 = load i32, ptr %r416
    %r444 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 15, i32 %r41
    %r445 = load i32, ptr %r444
    %r452 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 14, i32 %r41
    %r453 = load i32, ptr %r452
    %r458 = call float @params_f40_i24(i32 %r205,i32 %r209,i32 %r213,float %r59,i32 %r221,i32 %r225,i32 %r229,float %r75,float %r103,float %r71,i32 %r245,float %r55,float %r155,i32 %r257,float %r191,i32 %r265,float %r163,float %r91,float %r47,float %r87,float %r195,float %r67,i32 %r293,float %r171,i32 %r301,i32 %r305,float %r123,float %r175,float %r135,float %r79,float %r143,i32 %r329,float %r199,i32 %r337,float %r127,float %r107,float %r63,float %r179,i32 %r357,i32 %r361,float %r99,float %r83,float %r43,i32 %r377,float %r167,i32 %r385,i32 %r389,float %r151,float %r139,float %r95,float %r159,i32 %r409,i32 %r413,i32 %r417,float %r115,float %r119,float %r131,float %r147,float %r187,float %r111,i32 %r445,float %r51,i32 %r453,float %r183)
    %r461 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 0
    %r463 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 1
    %r465 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 2
    %r467 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 3
    %r469 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 4
    %r471 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 5
    %r473 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 6
    %r475 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 7
    %r477 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 8
    %r479 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 9
    %r481 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 10
    %r483 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 11
    %r485 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 12
    %r487 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 13
    %r489 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 14
    %r491 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 15
    %r493 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 16
    %r495 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 17
    %r497 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 18
    %r499 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 19
    %r501 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 20
    %r503 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 21
    %r505 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 22
    %r507 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 23
    %r509 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 24
    %r511 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 25
    %r513 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 26
    %r515 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 27
    %r517 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 28
    %r519 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 29
    %r521 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 30
    %r523 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 31
    %r525 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 32
    %r527 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 33
    %r529 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 34
    %r531 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 35
    %r533 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 36
    %r535 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 37
    %r537 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 38
    %r539 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 39
    %r540 = call float @params_fa40(ptr %r461,ptr %r463,ptr %r465,ptr %r467,ptr %r469,ptr %r471,ptr %r473,ptr %r475,ptr %r477,ptr %r479,ptr %r481,ptr %r483,ptr %r485,ptr %r487,ptr %r489,ptr %r491,ptr %r493,ptr %r495,ptr %r497,ptr %r499,ptr %r501,ptr %r503,ptr %r505,ptr %r507,ptr %r509,ptr %r511,ptr %r513,ptr %r515,ptr %r517,ptr %r519,ptr %r521,ptr %r523,ptr %r525,ptr %r527,ptr %r529,ptr %r531,ptr %r533,ptr %r535,ptr %r537,ptr %r539)
    %r547 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 0
    %r550 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 1, i32 %r41
    %r551 = load i32, ptr %r550
    %r560 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 2, i32 %r41
    %r561 = load i32, ptr %r560
    %r573 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 3
    %r576 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 4, i32 %r41
    %r577 = load i32, ptr %r576
    %r580 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 5, i32 %r41
    %r581 = load i32, ptr %r580
    %r585 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 6
    %r587 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 7
    %r590 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 8, i32 %r41
    %r591 = load i32, ptr %r590
    %r612 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 9, i32 %r41
    %r613 = load i32, ptr %r612
    %r627 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 10
    %r631 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 11
    %r633 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 12
    %r645 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 13
    %r648 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 14, i32 %r41
    %r649 = load i32, ptr %r648
    %r663 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 15
    %r665 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 16
    %r668 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 17, i32 %r41
    %r669 = load i32, ptr %r668
    %r672 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 18, i32 %r41
    %r673 = load i32, ptr %r672
    %r683 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 19
    %r686 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 20, i32 %r41
    %r687 = load i32, ptr %r686
    %r692 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 21, i32 %r41
    %r693 = load i32, ptr %r692
    %r695 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 22
    %r697 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 23
    %r710 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 0, i32 %r41
    %r711 = load i32, ptr %r710
    %r713 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 1
    %r722 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 2, i32 %r41
    %r723 = load i32, ptr %r722
    %r738 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 3, i32 %r41
    %r739 = load i32, ptr %r738
    %r740 = call i32 @params_mix(float %r43,ptr %r547,i32 %r551,ptr %r463,float %r51,i32 %r561,float %r55,float %r59,ptr %r471,ptr %r573,i32 %r577,i32 %r581,ptr %r473,ptr %r585,ptr %r587,i32 %r591,ptr %r475,ptr %r477,float %r79,float %r83,float %r87,ptr %r485,i32 %r613,float %r95,float %r99,float %r103,ptr %r627,ptr %r493,ptr %r631,ptr %r633,ptr %r495,float %r115,float %r119,ptr %r645,i32 %r649,ptr %r501,ptr %r503,float %r131,float %r135,ptr %r663,ptr %r665,i32 %r669,i32 %r673,float %r139,float %r143,ptr %r683,i32 %r687,ptr %r513,i32 %r693,ptr %r695,ptr %r697,float %r151,float %r155,ptr %r519,i32 %r711,ptr %r713,ptr %r521,float %r167,i32 %r723,float %r171,ptr %r527,ptr %r529,float %r183,i32 %r739)
    call void @putfloat(float %r200)
    call void @putch(i32 10)
    call void @putfloat(float %r458)
    call void @putch(i32 10)
    call void @putfloat(float %r540)
    call void @putch(i32 10)
    call void @putint(i32 %r740)
    call void @putch(i32 10)
    ret i32 0
L10:
    br label %L3
L11:
    br label %L7
}
define float @params_fa40(ptr %r0,ptr %r1,ptr %r2,ptr %r3,ptr %r4,ptr %r5,ptr %r6,ptr %r7,ptr %r8,ptr %r9,ptr %r10,ptr %r11,ptr %r12,ptr %r13,ptr %r14,ptr %r15,ptr %r16,ptr %r17,ptr %r18,ptr %r19,ptr %r20,ptr %r21,ptr %r22,ptr %r23,ptr %r24,ptr %r25,ptr %r26,ptr %r27,ptr %r28,ptr %r29,ptr %r30,ptr %r31,ptr %r32,ptr %r33,ptr %r34,ptr %r35,ptr %r36,ptr %r37,ptr %r38,ptr %r39)
{
L0:
    %r40 = alloca [10 x float]
    br label %L1
L1:
    call void @llvm.memset.p0.i32(ptr %r40,i8 0,i32 40,i1 0)
    %r41 = load i32, ptr @k
    %r42 = getelementptr float, ptr %r0, i32 %r41
    %r43 = load float, ptr %r42
    %r45 = getelementptr float, ptr %r1, i32 %r41
    %r46 = load float, ptr %r45
    %r47 = fadd float %r43,%r46
    %r49 = getelementptr float, ptr %r2, i32 %r41
    %r50 = load float, ptr %r49
    %r51 = fadd float %r47,%r50
    %r53 = getelementptr float, ptr %r3, i32 %r41
    %r54 = load float, ptr %r53
    %r55 = fadd float %r51,%r54
    %r56 = getelementptr [10 x float], ptr %r40, i32 0, i32 0
    store float %r55, ptr %r56
    %r57 = load i32, ptr @k
    %r58 = getelementptr float, ptr %r4, i32 %r57
    %r59 = load float, ptr %r58
    %r61 = getelementptr float, ptr %r5, i32 %r57
    %r62 = load float, ptr %r61
    %r63 = fadd float %r59,%r62
    %r65 = getelementptr float, ptr %r6, i32 %r57
    %r66 = load float, ptr %r65
    %r67 = fadd float %r63,%r66
    %r69 = getelementptr float, ptr %r7, i32 %r57
    %r70 = load float, ptr %r69
    %r71 = fadd float %r67,%r70
    %r72 = getelementptr [10 x float], ptr %r40, i32 0, i32 1
    store float %r71, ptr %r72
    %r73 = load i32, ptr @k
    %r74 = getelementptr float, ptr %r8, i32 %r73
    %r75 = load float, ptr %r74
    %r77 = getelementptr float, ptr %r9, i32 %r73
    %r78 = load float, ptr %r77
    %r79 = fadd float %r75,%r78
    %r81 = getelementptr float, ptr %r10, i32 %r73
    %r82 = load float, ptr %r81
    %r83 = fadd float %r79,%r82
    %r85 = getelementptr float, ptr %r11, i32 %r73
    %r86 = load float, ptr %r85
    %r87 = fadd float %r83,%r86
    %r88 = getelementptr [10 x float], ptr %r40, i32 0, i32 2
    store float %r87, ptr %r88
    %r89 = load i32, ptr @k
    %r90 = getelementptr float, ptr %r12, i32 %r89
    %r91 = load float, ptr %r90
    %r93 = getelementptr float, ptr %r13, i32 %r89
    %r94 = load float, ptr %r93
    %r95 = fadd float %r91,%r94
    %r97 = getelementptr float, ptr %r14, i32 %r89
    %r98 = load float, ptr %r97
    %r99 = fadd float %r95,%r98
    %r101 = getelementptr float, ptr %r15, i32 %r89
    %r102 = load float, ptr %r101
    %r103 = fadd float %r99,%r102
    %r104 = getelementptr [10 x float], ptr %r40, i32 0, i32 3
    store float %r103, ptr %r104
    %r105 = load i32, ptr @k
    %r106 = getelementptr float, ptr %r16, i32 %r105
    %r107 = load float, ptr %r106
    %r109 = getelementptr float, ptr %r17, i32 %r105
    %r110 = load float, ptr %r109
    %r111 = fadd float %r107,%r110
    %r113 = getelementptr float, ptr %r18, i32 %r105
    %r114 = load float, ptr %r113
    %r115 = fadd float %r111,%r114
    %r117 = getelementptr float, ptr %r19, i32 %r105
    %r118 = load float, ptr %r117
    %r119 = fadd float %r115,%r118
    %r120 = getelementptr [10 x float], ptr %r40, i32 0, i32 4
    store float %r119, ptr %r120
    %r121 = load i32, ptr @k
    %r122 = getelementptr float, ptr %r20, i32 %r121
    %r123 = load float, ptr %r122
    %r125 = getelementptr float, ptr %r21, i32 %r121
    %r126 = load float, ptr %r125
    %r127 = fadd float %r123,%r126
    %r129 = getelementptr float, ptr %r22, i32 %r121
    %r130 = load float, ptr %r129
    %r131 = fadd float %r127,%r130
    %r133 = getelementptr float, ptr %r23, i32 %r121
    %r134 = load float, ptr %r133
    %r135 = fadd float %r131,%r134
    %r136 = getelementptr [10 x float], ptr %r40, i32 0, i32 5
    store float %r135, ptr %r136
    %r137 = load i32, ptr @k
    %r138 = getelementptr float, ptr %r24, i32 %r137
    %r139 = load float, ptr %r138
    %r141 = getelementptr float, ptr %r25, i32 %r137
    %r142 = load float, ptr %r141
    %r143 = fadd float %r139,%r142
    %r145 = getelementptr float, ptr %r26, i32 %r137
    %r146 = load float, ptr %r145
    %r147 = fadd float %r143,%r146
    %r149 = getelementptr float, ptr %r27, i32 %r137
    %r150 = load float, ptr %r149
    %r151 = fadd float %r147,%r150
    %r152 = getelementptr [10 x float], ptr %r40, i32 0, i32 6
    store float %r151, ptr %r152
    %r153 = load i32, ptr @k
    %r154 = getelementptr float, ptr %r28, i32 %r153
    %r155 = load float, ptr %r154
    %r157 = getelementptr float, ptr %r29, i32 %r153
    %r158 = load float, ptr %r157
    %r159 = fadd float %r155,%r158
    %r161 = getelementptr float, ptr %r30, i32 %r153
    %r162 = load float, ptr %r161
    %r163 = fadd float %r159,%r162
    %r165 = getelementptr float, ptr %r31, i32 %r153
    %r166 = load float, ptr %r165
    %r167 = fadd float %r163,%r166
    %r168 = getelementptr [10 x float], ptr %r40, i32 0, i32 7
    store float %r167, ptr %r168
    %r169 = load i32, ptr @k
    %r170 = getelementptr float, ptr %r32, i32 %r169
    %r171 = load float, ptr %r170
    %r173 = getelementptr float, ptr %r33, i32 %r169
    %r174 = load float, ptr %r173
    %r175 = fadd float %r171,%r174
    %r177 = getelementptr float, ptr %r34, i32 %r169
    %r178 = load float, ptr %r177
    %r179 = fadd float %r175,%r178
    %r181 = getelementptr float, ptr %r35, i32 %r169
    %r182 = load float, ptr %r181
    %r183 = fadd float %r179,%r182
    %r184 = getelementptr [10 x float], ptr %r40, i32 0, i32 8
    store float %r183, ptr %r184
    %r185 = load i32, ptr @k
    %r186 = getelementptr float, ptr %r36, i32 %r185
    %r187 = load float, ptr %r186
    %r189 = getelementptr float, ptr %r37, i32 %r185
    %r190 = load float, ptr %r189
    %r191 = fadd float %r187,%r190
    %r193 = getelementptr float, ptr %r38, i32 %r185
    %r194 = load float, ptr %r193
    %r195 = fadd float %r191,%r194
    %r197 = getelementptr float, ptr %r39, i32 %r185
    %r198 = load float, ptr %r197
    %r199 = fadd float %r195,%r198
    %r200 = getelementptr [10 x float], ptr %r40, i32 0, i32 9
    store float %r199, ptr %r200
    %r201 = load i32, ptr @k
    %r202 = getelementptr float, ptr %r39, i32 %r201
    %r203 = load float, ptr %r202
    %r205 = sitofp i32 0 to float
    %r206 = fcmp one float %r203,%r205
    %r207 = zext i1 %r206 to i32
    %r209 = icmp ne i32 %r207,0
    %r210 = zext i1 %r209 to i32
    %r211 = fadd float 0x0,0x0
    %r212 = sitofp i32 %r210 to float
    %r213 = fcmp one float %r212,%r211
    %r214 = zext i1 %r213 to i32
    %r215 = fadd float 0x0,0x0
    %r216 = sitofp i32 %r214 to float
    %r217 = fcmp one float %r216,%r215
    br i1 %r217, label %L2, label %L3
L2:
    %r221 = getelementptr float, ptr %r40, i32 0
    call void @putfarray(i32 10,ptr %r221)
    %r222 = load i32, ptr @k
    %r223 = getelementptr [10 x float], ptr %r40, i32 0, i32 %r222
    %r224 = load float, ptr %r223
    ret float %r224
L3:
    %r225 = getelementptr float, ptr %r1
    %r226 = getelementptr float, ptr %r2
    %r227 = getelementptr float, ptr %r3
    %r228 = getelementptr float, ptr %r4
    %r229 = getelementptr float, ptr %r5
    %r230 = getelementptr float, ptr %r6
    %r231 = getelementptr float, ptr %r7
    %r232 = getelementptr float, ptr %r8
    %r233 = getelementptr float, ptr %r9
    %r234 = getelementptr float, ptr %r10
    %r235 = getelementptr float, ptr %r11
    %r236 = getelementptr float, ptr %r12
    %r237 = getelementptr float, ptr %r13
    %r238 = getelementptr float, ptr %r14
    %r239 = getelementptr float, ptr %r15
    %r240 = getelementptr float, ptr %r16
    %r241 = getelementptr float, ptr %r17
    %r242 = getelementptr float, ptr %r18
    %r243 = getelementptr float, ptr %r19
    %r244 = getelementptr float, ptr %r20
    %r245 = getelementptr float, ptr %r21
    %r246 = getelementptr float, ptr %r22
    %r247 = getelementptr float, ptr %r23
    %r248 = getelementptr float, ptr %r24
    %r249 = getelementptr float, ptr %r25
    %r250 = getelementptr float, ptr %r26
    %r251 = getelementptr float, ptr %r27
    %r252 = getelementptr float, ptr %r28
    %r253 = getelementptr float, ptr %r29
    %r254 = getelementptr float, ptr %r30
    %r255 = getelementptr float, ptr %r31
    %r256 = getelementptr float, ptr %r32
    %r257 = getelementptr float, ptr %r33
    %r258 = getelementptr float, ptr %r34
    %r259 = getelementptr float, ptr %r35
    %r260 = getelementptr float, ptr %r36
    %r261 = getelementptr float, ptr %r37
    %r262 = getelementptr float, ptr %r38
    %r263 = getelementptr float, ptr %r39
    %r264 = getelementptr float, ptr %r40, i32 0
    %r265 = call float @params_fa40(ptr %r225,ptr %r226,ptr %r227,ptr %r228,ptr %r229,ptr %r230,ptr %r231,ptr %r232,ptr %r233,ptr %r234,ptr %r235,ptr %r236,ptr %r237,ptr %r238,ptr %r239,ptr %r240,ptr %r241,ptr %r242,ptr %r243,ptr %r244,ptr %r245,ptr %r246,ptr %r247,ptr %r248,ptr %r249,ptr %r250,ptr %r251,ptr %r252,ptr %r253,ptr %r254,ptr %r255,ptr %r256,ptr %r257,ptr %r258,ptr %r259,ptr %r260,ptr %r261,ptr %r262,ptr %r263,ptr %r264)
    ret float %r265
}
define i32 @params_mix(float %r0,ptr %r1,i32 %r2,ptr %r3,float %r4,i32 %r5,float %r6,float %r7,ptr %r8,ptr %r9,i32 %r10,i32 %r11,ptr %r12,ptr %r13,ptr %r14,i32 %r15,ptr %r16,ptr %r17,float %r18,float %r19,float %r20,ptr %r21,i32 %r22,float %r23,float %r24,float %r25,ptr %r26,ptr %r27,ptr %r28,ptr %r29,ptr %r30,float %r31,float %r32,ptr %r33,i32 %r34,ptr %r35,ptr %r36,float %r37,float %r38,ptr %r39,ptr %r40,i32 %r41,i32 %r42,float %r43,float %r44,ptr %r45,i32 %r46,ptr %r47,i32 %r48,ptr %r49,ptr %r50,float %r51,float %r52,ptr %r53,i32 %r54,ptr %r55,ptr %r56,float %r57,i32 %r58,float %r59,ptr %r60,ptr %r61,float %r62,i32 %r63)
{
L0:
    %r202 = alloca [10 x i32]
    %r99 = alloca [10 x float]
    br label %L1
L1:
    call void @llvm.memset.p0.i32(ptr %r99,i8 0,i32 40,i1 0)
    %r101 = load i32, ptr @k
    %r102 = getelementptr float, ptr %r3, i32 %r101
    %r103 = load float, ptr %r102
    %r104 = fadd float %r0,%r103
    %r106 = fadd float %r104,%r4
    %r108 = fadd float %r106,%r6
    %r109 = getelementptr [10 x float], ptr %r99, i32 0, i32 0
    store float %r108, ptr %r109
    %r111 = load i32, ptr @k
    %r112 = getelementptr float, ptr %r8, i32 %r111
    %r113 = load float, ptr %r112
    %r114 = fadd float %r7,%r113
    %r116 = getelementptr float, ptr %r12, i32 %r111
    %r117 = load float, ptr %r116
    %r118 = fadd float %r114,%r117
    %r120 = getelementptr float, ptr %r16, i32 %r111
    %r121 = load float, ptr %r120
    %r122 = fadd float %r118,%r121
    %r123 = getelementptr [10 x float], ptr %r99, i32 0, i32 1
    store float %r122, ptr %r123
    %r124 = load i32, ptr @k
    %r125 = getelementptr float, ptr %r17, i32 %r124
    %r126 = load float, ptr %r125
    %r128 = fadd float %r126,%r18
    %r130 = fadd float %r128,%r19
    %r132 = fadd float %r130,%r20
    %r133 = getelementptr [10 x float], ptr %r99, i32 0, i32 2
    store float %r132, ptr %r133
    %r134 = load i32, ptr @k
    %r135 = getelementptr float, ptr %r21, i32 %r134
    %r136 = load float, ptr %r135
    %r138 = fadd float %r136,%r23
    %r140 = fadd float %r138,%r24
    %r142 = fadd float %r140,%r25
    %r143 = getelementptr [10 x float], ptr %r99, i32 0, i32 3
    store float %r142, ptr %r143
    %r144 = load i32, ptr @k
    %r145 = getelementptr float, ptr %r27, i32 %r144
    %r146 = load float, ptr %r145
    %r148 = getelementptr float, ptr %r30, i32 %r144
    %r149 = load float, ptr %r148
    %r150 = fadd float %r146,%r149
    %r152 = fadd float %r150,%r31
    %r154 = fadd float %r152,%r32
    %r155 = getelementptr [10 x float], ptr %r99, i32 0, i32 4
    store float %r154, ptr %r155
    %r156 = load i32, ptr @k
    %r157 = getelementptr float, ptr %r35, i32 %r156
    %r158 = load float, ptr %r157
    %r160 = getelementptr float, ptr %r36, i32 %r156
    %r161 = load float, ptr %r160
    %r162 = fadd float %r158,%r161
    %r164 = fadd float %r162,%r37
    %r166 = fadd float %r164,%r38
    %r167 = getelementptr [10 x float], ptr %r99, i32 0, i32 5
    store float %r166, ptr %r167
    %r170 = fadd float %r43,%r44
    %r171 = load i32, ptr @k
    %r172 = getelementptr float, ptr %r47, i32 %r171
    %r173 = load float, ptr %r172
    %r174 = fadd float %r170,%r173
    %r176 = fadd float %r174,%r51
    %r177 = getelementptr [10 x float], ptr %r99, i32 0, i32 6
    store float %r176, ptr %r177
    %r179 = load i32, ptr @k
    %r180 = getelementptr float, ptr %r53, i32 %r179
    %r181 = load float, ptr %r180
    %r182 = fadd float %r52,%r181
    %r184 = getelementptr float, ptr %r56, i32 %r179
    %r185 = load float, ptr %r184
    %r186 = fadd float %r182,%r185
    %r188 = fadd float %r186,%r57
    %r189 = getelementptr [10 x float], ptr %r99, i32 0, i32 7
    store float %r188, ptr %r189
    %r191 = load i32, ptr @k
    %r192 = getelementptr float, ptr %r60, i32 %r191
    %r193 = load float, ptr %r192
    %r194 = fadd float %r59,%r193
    %r196 = getelementptr float, ptr %r61, i32 %r191
    %r197 = load float, ptr %r196
    %r198 = fadd float %r194,%r197
    %r200 = fadd float %r198,%r62
    %r201 = getelementptr [10 x float], ptr %r99, i32 0, i32 8
    store float %r200, ptr %r201
    call void @llvm.memset.p0.i32(ptr %r202,i8 0,i32 40,i1 0)
    %r203 = load i32, ptr @k
    %r204 = getelementptr i32, ptr %r1, i32 %r203
    %r205 = load i32, ptr %r204
    %r207 = add i32 %r205,%r2
    %r209 = add i32 %r207,%r5
    %r210 = getelementptr [10 x i32], ptr %r202, i32 0, i32 0
    store i32 %r209, ptr %r210
    %r211 = load i32, ptr @k
    %r212 = getelementptr i32, ptr %r9, i32 %r211
    %r213 = load i32, ptr %r212
    %r215 = add i32 %r213,%r10
    %r217 = add i32 %r215,%r11
    %r218 = getelementptr [10 x i32], ptr %r202, i32 0, i32 1
    store i32 %r217, ptr %r218
    %r219 = load i32, ptr @k
    %r220 = getelementptr i32, ptr %r13, i32 %r219
    %r221 = load i32, ptr %r220
    %r223 = getelementptr i32, ptr %r14, i32 %r219
    %r224 = load i32, ptr %r223
    %r225 = add i32 %r221,%r224
    %r227 = add i32 %r225,%r15
    %r228 = getelementptr [10 x i32], ptr %r202, i32 0, i32 2
    store i32 %r227, ptr %r228
    %r230 = load i32, ptr @k
    %r231 = getelementptr i32, ptr %r26, i32 %r230
    %r232 = load i32, ptr %r231
    %r233 = add i32 %r22,%r232
    %r235 = getelementptr i32, ptr %r28, i32 %r230
    %r236 = load i32, ptr %r235
    %r237 = add i32 %r233,%r236
    %r238 = getelementptr [10 x i32], ptr %r202, i32 0, i32 3
    store i32 %r237, ptr %r238
    %r239 = load i32, ptr @k
    %r240 = getelementptr i32, ptr %r29, i32 %r239
    %r241 = load i32, ptr %r240
    %r243 = getelementptr i32, ptr %r33, i32 %r239
    %r244 = load i32, ptr %r243
    %r245 = add i32 %r241,%r244
    %r247 = add i32 %r245,%r34
    %r248 = getelementptr [10 x i32], ptr %r202, i32 0, i32 4
    store i32 %r247, ptr %r248
    %r249 = load i32, ptr @k
    %r250 = getelementptr i32, ptr %r39, i32 %r249
    %r251 = load i32, ptr %r250
    %r253 = getelementptr i32, ptr %r40, i32 %r249
    %r254 = load i32, ptr %r253
    %r255 = add i32 %r251,%r254
    %r257 = add i32 %r255,%r41
    %r258 = getelementptr [10 x i32], ptr %r202, i32 0, i32 5
    store i32 %r257, ptr %r258
    %r260 = load i32, ptr @k
    %r261 = getelementptr i32, ptr %r45, i32 %r260
    %r262 = load i32, ptr %r261
    %r263 = add i32 %r42,%r262
    %r265 = add i32 %r263,%r46
    %r266 = getelementptr [10 x i32], ptr %r202, i32 0, i32 6
    store i32 %r265, ptr %r266
    %r268 = load i32, ptr @k
    %r269 = getelementptr i32, ptr %r49, i32 %r268
    %r270 = load i32, ptr %r269
    %r271 = add i32 %r48,%r270
    %r273 = getelementptr i32, ptr %r50, i32 %r268
    %r274 = load i32, ptr %r273
    %r275 = add i32 %r271,%r274
    %r276 = getelementptr [10 x i32], ptr %r202, i32 0, i32 7
    store i32 %r275, ptr %r276
    %r278 = load i32, ptr @k
    %r279 = getelementptr i32, ptr %r55, i32 %r278
    %r280 = load i32, ptr %r279
    %r281 = add i32 %r54,%r280
    %r283 = add i32 %r281,%r58
    %r285 = add i32 %r283,%r63
    %r286 = getelementptr [10 x i32], ptr %r202, i32 0, i32 8
    store i32 %r285, ptr %r286
    %r289 = icmp ne i32 %r63,0
    br i1 %r289, label %L2, label %L3
L2:
    %r293 = getelementptr float, ptr %r99, i32 0
    call void @putfarray(i32 10,ptr %r293)
    %r295 = getelementptr i32, ptr %r202, i32 0
    call void @putarray(i32 10,ptr %r295)
    br label %L9
L3:
    %r332 = getelementptr i32, ptr %r202, i32 0
    %r334 = getelementptr float, ptr %r99, i32 0
    %r339 = getelementptr float, ptr %r8
    %r340 = getelementptr i32, ptr %r9
    %r343 = getelementptr float, ptr %r12
    %r344 = getelementptr i32, ptr %r13
    %r345 = getelementptr i32, ptr %r14
    %r347 = getelementptr float, ptr %r16
    %r348 = getelementptr float, ptr %r17
    %r352 = getelementptr float, ptr %r21
    %r357 = getelementptr i32, ptr %r26
    %r358 = getelementptr float, ptr %r27
    %r359 = getelementptr i32, ptr %r28
    %r360 = getelementptr i32, ptr %r29
    %r361 = getelementptr float, ptr %r30
    %r364 = getelementptr i32, ptr %r33
    %r366 = getelementptr float, ptr %r35
    %r367 = getelementptr float, ptr %r36
    %r370 = getelementptr i32, ptr %r39
    %r371 = getelementptr i32, ptr %r40
    %r376 = getelementptr i32, ptr %r45
    %r378 = getelementptr float, ptr %r47
    %r380 = getelementptr i32, ptr %r49
    %r381 = getelementptr i32, ptr %r50
    %r384 = getelementptr float, ptr %r53
    %r386 = getelementptr i32, ptr %r55
    %r387 = getelementptr float, ptr %r56
    %r391 = getelementptr float, ptr %r60
    %r392 = getelementptr float, ptr %r61
    %r394 = sitofp i32 %r63 to float
    %r396 = fptosi float %r62 to i32
    %r397 = call i32 @params_mix(float %r0,ptr %r332,i32 %r2,ptr %r334,float %r4,i32 %r5,float %r6,float %r7,ptr %r339,ptr %r340,i32 %r10,i32 %r11,ptr %r343,ptr %r344,ptr %r345,i32 %r15,ptr %r347,ptr %r348,float %r18,float %r19,float %r20,ptr %r352,i32 %r22,float %r23,float %r24,float %r25,ptr %r357,ptr %r358,ptr %r359,ptr %r360,ptr %r361,float %r31,float %r32,ptr %r364,i32 %r34,ptr %r366,ptr %r367,float %r37,float %r38,ptr %r370,ptr %r371,i32 %r41,i32 %r42,float %r43,float %r44,ptr %r376,i32 %r46,ptr %r378,i32 %r48,ptr %r380,ptr %r381,float %r51,float %r52,ptr %r384,i32 %r54,ptr %r386,ptr %r387,float %r57,i32 %r58,float %r59,ptr %r391,ptr %r392,float %r394,i32 %r396)
    ret i32 %r397
L6:
    %r398 = phi i32 [0,%L9],[%r316,%L7]
    %r304 = getelementptr [10 x i32], ptr %r202, i32 0, i32 %r398
    %r305 = load i32, ptr %r304
    %r307 = getelementptr [10 x float], ptr %r99, i32 0, i32 %r398
    %r308 = load float, ptr %r307
    %r309 = sitofp i32 %r305 to float
    %r310 = fsub float %r309,%r308
    %r313 = fptosi float %r310 to i32
    store i32 %r313, ptr %r304
    %r316 = add i32 %r398,1
    br label %L7
L7:
    %r319 = icmp slt i32 %r316,10
    br i1 %r319, label %L6, label %L8
L8:
    %r322 = load i32, ptr @k
    %r323 = getelementptr [10 x i32], ptr %r202, i32 0, i32 %r322
    %r324 = load i32, ptr %r323
    %r326 = getelementptr [10 x float], ptr %r99, i32 0, i32 8
    %r327 = load float, ptr %r326
    %r328 = sitofp i32 %r324 to float
    %r329 = fmul float %r328,%r327
    %r330 = fptosi float %r329 to i32
    ret i32 %r330
L9:
    br label %L6
}
define float @params_f40_i24(i32 %r0,i32 %r1,i32 %r2,float %r3,i32 %r4,i32 %r5,i32 %r6,float %r7,float %r8,float %r9,i32 %r10,float %r11,float %r12,i32 %r13,float %r14,i32 %r15,float %r16,float %r17,float %r18,float %r19,float %r20,float %r21,i32 %r22,float %r23,i32 %r24,i32 %r25,float %r26,float %r27,float %r28,float %r29,float %r30,i32 %r31,float %r32,i32 %r33,float %r34,float %r35,float %r36,float %r37,i32 %r38,i32 %r39,float %r40,float %r41,float %r42,i32 %r43,float %r44,i32 %r45,i32 %r46,float %r47,float %r48,float %r49,float %r50,i32 %r51,i32 %r52,i32 %r53,float %r54,float %r55,float %r56,float %r57,float %r58,float %r59,i32 %r60,float %r61,i32 %r62,float %r63)
{
L0:
    %r214 = alloca [8 x i32]
    %r133 = alloca [10 x float]
    br label %L1
L1:
    %r130 = icmp ne i32 %r0,0
    br i1 %r130, label %L2, label %L3
L2:
    call void @llvm.memset.p0.i32(ptr %r133,i8 0,i32 40,i1 0)
    %r136 = fadd float %r42,%r18
    %r138 = fadd float %r136,%r61
    %r140 = fadd float %r138,%r11
    %r141 = getelementptr [10 x float], ptr %r133, i32 0, i32 0
    store float %r140, ptr %r141
    %r144 = fadd float %r3,%r36
    %r146 = fadd float %r144,%r21
    %r148 = fadd float %r146,%r9
    %r149 = getelementptr [10 x float], ptr %r133, i32 0, i32 1
    store float %r148, ptr %r149
    %r152 = fadd float %r7,%r29
    %r154 = fadd float %r152,%r41
    %r156 = fadd float %r154,%r19
    %r157 = getelementptr [10 x float], ptr %r133, i32 0, i32 2
    store float %r156, ptr %r157
    %r160 = fadd float %r17,%r49
    %r162 = fadd float %r160,%r40
    %r164 = fadd float %r162,%r8
    %r165 = getelementptr [10 x float], ptr %r133, i32 0, i32 3
    store float %r164, ptr %r165
    %r168 = fadd float %r35,%r59
    %r170 = fadd float %r168,%r54
    %r172 = fadd float %r170,%r55
    %r173 = getelementptr [10 x float], ptr %r133, i32 0, i32 4
    store float %r172, ptr %r173
    %r176 = fadd float %r26,%r34
    %r178 = fadd float %r176,%r56
    %r180 = fadd float %r178,%r28
    %r181 = getelementptr [10 x float], ptr %r133, i32 0, i32 5
    store float %r180, ptr %r181
    %r184 = fadd float %r48,%r30
    %r186 = fadd float %r184,%r57
    %r188 = fadd float %r186,%r47
    %r189 = getelementptr [10 x float], ptr %r133, i32 0, i32 6
    store float %r188, ptr %r189
    %r192 = fadd float %r12,%r50
    %r194 = fadd float %r192,%r16
    %r196 = fadd float %r194,%r44
    %r197 = getelementptr [10 x float], ptr %r133, i32 0, i32 7
    store float %r196, ptr %r197
    %r200 = fadd float %r23,%r27
    %r202 = fadd float %r200,%r37
    %r204 = fadd float %r202,%r63
    %r205 = getelementptr [10 x float], ptr %r133, i32 0, i32 8
    store float %r204, ptr %r205
    %r208 = fadd float %r58,%r14
    %r210 = fadd float %r208,%r20
    %r212 = fadd float %r210,%r32
    %r213 = getelementptr [10 x float], ptr %r133, i32 0, i32 9
    store float %r212, ptr %r213
    call void @llvm.memset.p0.i32(ptr %r214,i8 0,i32 32,i1 0)
    %r217 = add i32 %r13,%r4
    %r219 = add i32 %r217,%r1
    %r220 = getelementptr [8 x i32], ptr %r214, i32 0, i32 0
    store i32 %r219, ptr %r220
    %r223 = add i32 %r51,%r5
    %r225 = add i32 %r223,%r6
    %r226 = getelementptr [8 x i32], ptr %r214, i32 0, i32 1
    store i32 %r225, ptr %r226
    %r229 = add i32 %r2,%r22
    %r231 = add i32 %r229,%r31
    %r232 = getelementptr [8 x i32], ptr %r214, i32 0, i32 2
    store i32 %r231, ptr %r232
    %r235 = add i32 %r39,%r24
    %r237 = add i32 %r235,%r45
    %r238 = getelementptr [8 x i32], ptr %r214, i32 0, i32 3
    store i32 %r237, ptr %r238
    %r241 = add i32 %r43,%r25
    %r243 = add i32 %r241,%r62
    %r244 = getelementptr [8 x i32], ptr %r214, i32 0, i32 4
    store i32 %r243, ptr %r244
    %r247 = add i32 %r60,%r46
    %r249 = add i32 %r247,%r33
    %r250 = getelementptr [8 x i32], ptr %r214, i32 0, i32 5
    store i32 %r249, ptr %r250
    %r253 = add i32 %r38,%r15
    %r255 = add i32 %r253,%r53
    %r256 = getelementptr [8 x i32], ptr %r214, i32 0, i32 6
    store i32 %r255, ptr %r256
    %r259 = add i32 %r52,%r10
    %r261 = add i32 %r259,%r0
    %r262 = getelementptr [8 x i32], ptr %r214, i32 0, i32 7
    store i32 %r261, ptr %r262
    %r264 = getelementptr float, ptr %r133, i32 0
    call void @putfarray(i32 10,ptr %r264)
    %r266 = getelementptr i32, ptr %r214, i32 0
    call void @putarray(i32 8,ptr %r266)
    br label %L9
L3:
    %r361 = call float @params_f40_i24(i32 %r4,i32 %r1,i32 %r2,float %r3,i32 %r4,i32 %r5,i32 %r6,float %r7,float %r8,float %r9,i32 %r10,float %r11,float %r12,i32 %r13,float %r14,i32 %r15,float %r16,float %r17,float %r18,float %r19,float %r20,float %r21,i32 %r22,float %r23,i32 %r24,i32 %r25,float %r26,float %r27,float %r28,float %r29,float %r30,i32 %r31,float %r32,i32 %r33,float %r34,float %r35,float %r36,float %r37,i32 %r38,i32 %r39,float %r40,float %r41,float %r42,i32 %r43,float %r44,i32 %r45,i32 %r46,float %r47,float %r48,float %r49,float %r50,i32 %r51,i32 %r52,i32 %r53,float %r54,float %r55,float %r56,float %r57,float %r58,float %r59,i32 %r60,float %r61,i32 %r62,float %r63)
    ret float %r361
L6:
    %r362 = phi i32 [%r287,%L7],[0,%L9]
    %r275 = getelementptr [8 x i32], ptr %r214, i32 0, i32 %r362
    %r276 = load i32, ptr %r275
    %r278 = getelementptr [10 x float], ptr %r133, i32 0, i32 %r362
    %r279 = load float, ptr %r278
    %r280 = sitofp i32 %r276 to float
    %r281 = fsub float %r280,%r279
    %r284 = fptosi float %r281 to i32
    store i32 %r284, ptr %r275
    %r287 = add i32 %r362,1
    br label %L7
L7:
    %r290 = icmp slt i32 %r287,8
    br i1 %r290, label %L6, label %L8
L8:
    %r293 = load i32, ptr @k
    %r294 = getelementptr [8 x i32], ptr %r214, i32 0, i32 %r293
    %r295 = load i32, ptr %r294
    %r296 = sitofp i32 %r295 to float
    ret float %r296
L9:
    br label %L6
}
define float @params_f40(float %r0,float %r1,float %r2,float %r3,float %r4,float %r5,float %r6,float %r7,float %r8,float %r9,float %r10,float %r11,float %r12,float %r13,float %r14,float %r15,float %r16,float %r17,float %r18,float %r19,float %r20,float %r21,float %r22,float %r23,float %r24,float %r25,float %r26,float %r27,float %r28,float %r29,float %r30,float %r31,float %r32,float %r33,float %r34,float %r35,float %r36,float %r37,float %r38,float %r39)
{
L0:
    %r86 = alloca [10 x float]
    br label %L1
L1:
    %r82 = sitofp i32 0 to float
    %r83 = fcmp one float %r39,%r82
    br i1 %r83, label %L2, label %L3
L2:
    call void @llvm.memset.p0.i32(ptr %r86,i8 0,i32 40,i1 0)
    %r89 = fadd float %r0,%r1
    %r91 = fadd float %r89,%r2
    %r93 = fadd float %r91,%r3
    %r94 = getelementptr [10 x float], ptr %r86, i32 0, i32 0
    store float %r93, ptr %r94
    %r97 = fadd float %r4,%r5
    %r99 = fadd float %r97,%r6
    %r101 = fadd float %r99,%r7
    %r102 = getelementptr [10 x float], ptr %r86, i32 0, i32 1
    store float %r101, ptr %r102
    %r105 = fadd float %r8,%r9
    %r107 = fadd float %r105,%r10
    %r109 = fadd float %r107,%r11
    %r110 = getelementptr [10 x float], ptr %r86, i32 0, i32 2
    store float %r109, ptr %r110
    %r113 = fadd float %r12,%r13
    %r115 = fadd float %r113,%r14
    %r117 = fadd float %r115,%r15
    %r118 = getelementptr [10 x float], ptr %r86, i32 0, i32 3
    store float %r117, ptr %r118
    %r121 = fadd float %r16,%r17
    %r123 = fadd float %r121,%r18
    %r125 = fadd float %r123,%r19
    %r126 = getelementptr [10 x float], ptr %r86, i32 0, i32 4
    store float %r125, ptr %r126
    %r129 = fadd float %r20,%r21
    %r131 = fadd float %r129,%r22
    %r133 = fadd float %r131,%r23
    %r134 = getelementptr [10 x float], ptr %r86, i32 0, i32 5
    store float %r133, ptr %r134
    %r137 = fadd float %r24,%r25
    %r139 = fadd float %r137,%r26
    %r141 = fadd float %r139,%r27
    %r142 = getelementptr [10 x float], ptr %r86, i32 0, i32 6
    store float %r141, ptr %r142
    %r145 = fadd float %r28,%r29
    %r147 = fadd float %r145,%r30
    %r149 = fadd float %r147,%r31
    %r150 = getelementptr [10 x float], ptr %r86, i32 0, i32 7
    store float %r149, ptr %r150
    %r153 = fadd float %r32,%r33
    %r155 = fadd float %r153,%r34
    %r157 = fadd float %r155,%r35
    %r158 = getelementptr [10 x float], ptr %r86, i32 0, i32 8
    store float %r157, ptr %r158
    %r161 = fadd float %r36,%r37
    %r163 = fadd float %r161,%r38
    %r165 = fadd float %r163,%r39
    %r166 = getelementptr [10 x float], ptr %r86, i32 0, i32 9
    store float %r165, ptr %r166
    %r168 = getelementptr float, ptr %r86, i32 0
    call void @putfarray(i32 10,ptr %r168)
    %r169 = load i32, ptr @k
    %r170 = getelementptr [10 x float], ptr %r86, i32 0, i32 %r169
    %r171 = load float, ptr %r170
    ret float %r171
L3:
    %r213 = fadd float %r0,%r1
    %r215 = fadd float %r213,%r2
    %r216 = call float @params_f40(float %r1,float %r2,float %r3,float %r4,float %r5,float %r6,float %r7,float %r8,float %r9,float %r10,float %r11,float %r12,float %r13,float %r14,float %r15,float %r16,float %r17,float %r18,float %r19,float %r20,float %r21,float %r22,float %r23,float %r24,float %r25,float %r26,float %r27,float %r28,float %r29,float %r30,float %r31,float %r32,float %r33,float %r34,float %r35,float %r36,float %r37,float %r38,float %r39,float %r215)
    ret float %r216
}
