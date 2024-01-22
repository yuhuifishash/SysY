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
define i32 @model(ptr %r0)
{
L0:
    br label %L1
L1:
    %r3 = getelementptr [5 x i32], ptr %r0, i32 0, i32 0
    %r4 = load i32, ptr %r3
    %r5 = add i32 0,%r4
    %r7 = mul i32 %r5,85
    %r10 = getelementptr [5 x i32], ptr %r0, i32 0, i32 1
    %r11 = load i32, ptr %r10
    %r13 = mul i32 %r11,23
    %r14 = add i32 %r7,%r13
    %r17 = getelementptr [5 x i32], ptr %r0, i32 0, i32 2
    %r18 = load i32, ptr %r17
    %r21 = mul i32 %r18,-82
    %r22 = add i32 %r14,%r21
    %r25 = getelementptr [5 x i32], ptr %r0, i32 0, i32 3
    %r26 = load i32, ptr %r25
    %r29 = mul i32 %r26,-103
    %r30 = add i32 %r22,%r29
    %r33 = getelementptr [5 x i32], ptr %r0, i32 0, i32 4
    %r34 = load i32, ptr %r33
    %r37 = mul i32 %r34,-123
    %r38 = add i32 %r30,%r37
    %r41 = getelementptr [5 x i32], ptr %r0, i32 1, i32 0
    %r42 = load i32, ptr %r41
    %r44 = mul i32 %r42,64
    %r45 = add i32 %r38,%r44
    %r48 = getelementptr [5 x i32], ptr %r0, i32 1, i32 1
    %r49 = load i32, ptr %r48
    %r52 = mul i32 %r49,-120
    %r53 = add i32 %r45,%r52
    %r56 = getelementptr [5 x i32], ptr %r0, i32 1, i32 2
    %r57 = load i32, ptr %r56
    %r59 = mul i32 %r57,50
    %r60 = add i32 %r53,%r59
    %r63 = getelementptr [5 x i32], ptr %r0, i32 1, i32 3
    %r64 = load i32, ptr %r63
    %r67 = mul i32 %r64,-59
    %r68 = add i32 %r60,%r67
    %r71 = getelementptr [5 x i32], ptr %r0, i32 1, i32 4
    %r72 = load i32, ptr %r71
    %r74 = mul i32 %r72,47
    %r75 = add i32 %r68,%r74
    %r78 = getelementptr [5 x i32], ptr %r0, i32 2, i32 0
    %r79 = load i32, ptr %r78
    %r82 = mul i32 %r79,-111
    %r83 = add i32 %r75,%r82
    %r86 = getelementptr [5 x i32], ptr %r0, i32 2, i32 1
    %r87 = load i32, ptr %r86
    %r90 = mul i32 %r87,-67
    %r91 = add i32 %r83,%r90
    %r94 = getelementptr [5 x i32], ptr %r0, i32 2, i32 2
    %r95 = load i32, ptr %r94
    %r98 = mul i32 %r95,-106
    %r99 = add i32 %r91,%r98
    %r102 = getelementptr [5 x i32], ptr %r0, i32 2, i32 3
    %r103 = load i32, ptr %r102
    %r106 = mul i32 %r103,-75
    %r107 = add i32 %r99,%r106
    %r110 = getelementptr [5 x i32], ptr %r0, i32 2, i32 4
    %r111 = load i32, ptr %r110
    %r114 = mul i32 %r111,-102
    %r115 = add i32 %r107,%r114
    %r118 = getelementptr [5 x i32], ptr %r0, i32 3, i32 0
    %r119 = load i32, ptr %r118
    %r121 = mul i32 %r119,34
    %r122 = add i32 %r115,%r121
    %r125 = getelementptr [5 x i32], ptr %r0, i32 3, i32 1
    %r126 = load i32, ptr %r125
    %r129 = mul i32 %r126,-39
    %r130 = add i32 %r122,%r129
    %r133 = getelementptr [5 x i32], ptr %r0, i32 3, i32 2
    %r134 = load i32, ptr %r133
    %r136 = mul i32 %r134,65
    %r137 = add i32 %r130,%r136
    %r140 = getelementptr [5 x i32], ptr %r0, i32 3, i32 3
    %r141 = load i32, ptr %r140
    %r143 = mul i32 %r141,47
    %r144 = add i32 %r137,%r143
    %r147 = getelementptr [5 x i32], ptr %r0, i32 3, i32 4
    %r148 = load i32, ptr %r147
    %r150 = mul i32 %r148,113
    %r151 = add i32 %r144,%r150
    %r154 = getelementptr [5 x i32], ptr %r0, i32 4, i32 0
    %r155 = load i32, ptr %r154
    %r157 = mul i32 %r155,110
    %r158 = add i32 %r151,%r157
    %r161 = getelementptr [5 x i32], ptr %r0, i32 4, i32 1
    %r162 = load i32, ptr %r161
    %r164 = mul i32 %r162,47
    %r165 = add i32 %r158,%r164
    %r168 = getelementptr [5 x i32], ptr %r0, i32 4, i32 2
    %r169 = load i32, ptr %r168
    %r172 = mul i32 %r169,-4
    %r173 = add i32 %r165,%r172
    %r176 = getelementptr [5 x i32], ptr %r0, i32 4, i32 3
    %r177 = load i32, ptr %r176
    %r179 = mul i32 %r177,80
    %r180 = add i32 %r173,%r179
    %r183 = getelementptr [5 x i32], ptr %r0, i32 4, i32 4
    %r184 = load i32, ptr %r183
    %r186 = mul i32 %r184,46
    %r187 = add i32 %r180,%r186
    br label %L4
L2:
    ret i32 1
L3:
    ret i32 0
L4:
    br label %L6
L5:
    %r188 = phi i32 [%r187,%L10],[0,%L9],[127,%L7]
    %r189 = add i32 0,%r188
    %r191 = mul i32 %r189,39
    %r199 = mul i32 %r5,-106
    %r205 = mul i32 %r11,126
    %r206 = add i32 %r199,%r205
    %r213 = mul i32 %r18,-18
    %r214 = add i32 %r206,%r213
    %r221 = mul i32 %r26,-31
    %r222 = add i32 %r214,%r221
    %r229 = mul i32 %r34,-8
    %r230 = add i32 %r222,%r229
    %r233 = getelementptr [5 x i32], ptr %r0, i32 1, i32 0
    %r234 = load i32, ptr %r233
    %r236 = mul i32 %r234,47
    %r237 = add i32 %r230,%r236
    %r240 = getelementptr [5 x i32], ptr %r0, i32 1, i32 1
    %r241 = load i32, ptr %r240
    %r244 = mul i32 %r241,-4
    %r245 = add i32 %r237,%r244
    %r248 = getelementptr [5 x i32], ptr %r0, i32 1, i32 2
    %r249 = load i32, ptr %r248
    %r251 = mul i32 %r249,67
    %r252 = add i32 %r245,%r251
    %r255 = getelementptr [5 x i32], ptr %r0, i32 1, i32 3
    %r256 = load i32, ptr %r255
    %r259 = mul i32 %r256,-94
    %r260 = add i32 %r252,%r259
    %r267 = mul i32 %r72,-121
    %r268 = add i32 %r260,%r267
    %r271 = getelementptr [5 x i32], ptr %r0, i32 2, i32 0
    %r272 = load i32, ptr %r271
    %r274 = mul i32 %r272,7
    %r275 = add i32 %r268,%r274
    %r278 = getelementptr [5 x i32], ptr %r0, i32 2, i32 1
    %r279 = load i32, ptr %r278
    %r282 = mul i32 %r279,-21
    %r283 = add i32 %r275,%r282
    %r286 = getelementptr [5 x i32], ptr %r0, i32 2, i32 2
    %r287 = load i32, ptr %r286
    %r290 = mul i32 %r287,-60
    %r291 = add i32 %r283,%r290
    %r294 = getelementptr [5 x i32], ptr %r0, i32 2, i32 3
    %r295 = load i32, ptr %r294
    %r298 = mul i32 %r295,-43
    %r299 = add i32 %r291,%r298
    %r305 = mul i32 %r111,105
    %r306 = add i32 %r299,%r305
    %r309 = getelementptr [5 x i32], ptr %r0, i32 3, i32 0
    %r310 = load i32, ptr %r309
    %r313 = mul i32 %r310,-42
    %r314 = add i32 %r306,%r313
    %r317 = getelementptr [5 x i32], ptr %r0, i32 3, i32 1
    %r318 = load i32, ptr %r317
    %r320 = mul i32 %r318,87
    %r321 = add i32 %r314,%r320
    %r324 = getelementptr [5 x i32], ptr %r0, i32 3, i32 2
    %r325 = load i32, ptr %r324
    %r327 = mul i32 %r325,29
    %r328 = add i32 %r321,%r327
    %r331 = getelementptr [5 x i32], ptr %r0, i32 3, i32 3
    %r332 = load i32, ptr %r331
    %r335 = mul i32 %r332,-106
    %r336 = add i32 %r328,%r335
    %r343 = mul i32 %r148,-31
    %r344 = add i32 %r336,%r343
    %r347 = getelementptr [5 x i32], ptr %r0, i32 4, i32 0
    %r348 = load i32, ptr %r347
    %r351 = mul i32 %r348,-110
    %r352 = add i32 %r344,%r351
    %r355 = getelementptr [5 x i32], ptr %r0, i32 4, i32 1
    %r356 = load i32, ptr %r355
    %r359 = mul i32 %r356,-100
    %r360 = add i32 %r352,%r359
    %r363 = getelementptr [5 x i32], ptr %r0, i32 4, i32 2
    %r364 = load i32, ptr %r363
    %r367 = mul i32 %r364,-22
    %r368 = add i32 %r360,%r367
    %r371 = getelementptr [5 x i32], ptr %r0, i32 4, i32 3
    %r372 = load i32, ptr %r371
    %r375 = mul i32 %r372,-75
    %r376 = add i32 %r368,%r375
    %r383 = mul i32 %r184,-125
    %r384 = add i32 %r376,%r383
    br label %L11
L6:
    %r1924 = icmp sgt i32 %r187,127
    br i1 %r1924, label %L7, label %L8
L7:
    br label %L5
L8:
    %r1925 = icmp slt i32 %r187,0
    br i1 %r1925, label %L9, label %L10
L9:
    br label %L5
L10:
    br label %L5
L11:
    br label %L13
L12:
    %r385 = phi i32 [127,%L14],[0,%L16],[%r384,%L17]
    %r387 = mul i32 %r385,77
    %r388 = add i32 %r191,%r387
    %r395 = mul i32 %r5,26
    %r401 = mul i32 %r11,76
    %r402 = add i32 %r395,%r401
    %r409 = mul i32 %r18,-70
    %r410 = add i32 %r402,%r409
    %r416 = mul i32 %r26,29
    %r417 = add i32 %r410,%r416
    %r424 = mul i32 %r34,-95
    %r425 = add i32 %r417,%r424
    %r428 = getelementptr [5 x i32], ptr %r0, i32 1, i32 0
    %r429 = load i32, ptr %r428
    %r431 = mul i32 %r429,96
    %r432 = add i32 %r425,%r431
    %r435 = getelementptr [5 x i32], ptr %r0, i32 1, i32 1
    %r436 = load i32, ptr %r435
    %r438 = mul i32 %r436,52
    %r439 = add i32 %r432,%r438
    %r442 = getelementptr [5 x i32], ptr %r0, i32 1, i32 2
    %r443 = load i32, ptr %r442
    %r446 = mul i32 %r443,-68
    %r447 = add i32 %r439,%r446
    %r450 = getelementptr [5 x i32], ptr %r0, i32 1, i32 3
    %r451 = load i32, ptr %r450
    %r454 = mul i32 %r451,-5
    %r455 = add i32 %r447,%r454
    %r461 = mul i32 %r72,34
    %r462 = add i32 %r455,%r461
    %r465 = getelementptr [5 x i32], ptr %r0, i32 2, i32 0
    %r466 = load i32, ptr %r465
    %r469 = mul i32 %r466,-34
    %r470 = add i32 %r462,%r469
    %r473 = getelementptr [5 x i32], ptr %r0, i32 2, i32 1
    %r474 = load i32, ptr %r473
    %r476 = mul i32 %r474,102
    %r477 = add i32 %r470,%r476
    %r480 = getelementptr [5 x i32], ptr %r0, i32 2, i32 2
    %r481 = load i32, ptr %r480
    %r483 = mul i32 %r481,6
    %r484 = add i32 %r477,%r483
    %r487 = getelementptr [5 x i32], ptr %r0, i32 2, i32 3
    %r488 = load i32, ptr %r487
    %r491 = mul i32 %r488,-38
    %r492 = add i32 %r484,%r491
    %r498 = mul i32 %r111,27
    %r499 = add i32 %r492,%r498
    %r502 = getelementptr [5 x i32], ptr %r0, i32 3, i32 0
    %r503 = load i32, ptr %r502
    %r505 = mul i32 %r503,110
    %r506 = add i32 %r499,%r505
    %r509 = getelementptr [5 x i32], ptr %r0, i32 3, i32 1
    %r510 = load i32, ptr %r509
    %r512 = mul i32 %r510,116
    %r513 = add i32 %r506,%r512
    %r516 = getelementptr [5 x i32], ptr %r0, i32 3, i32 2
    %r517 = load i32, ptr %r516
    %r519 = mul i32 %r517,39
    %r520 = add i32 %r513,%r519
    %r523 = getelementptr [5 x i32], ptr %r0, i32 3, i32 3
    %r524 = load i32, ptr %r523
    %r527 = mul i32 %r524,-63
    %r528 = add i32 %r520,%r527
    %r535 = mul i32 %r148,-99
    %r536 = add i32 %r528,%r535
    %r539 = getelementptr [5 x i32], ptr %r0, i32 4, i32 0
    %r540 = load i32, ptr %r539
    %r542 = mul i32 %r540,65
    %r543 = add i32 %r536,%r542
    %r546 = getelementptr [5 x i32], ptr %r0, i32 4, i32 1
    %r547 = load i32, ptr %r546
    %r549 = mul i32 %r547,120
    %r550 = add i32 %r543,%r549
    %r553 = getelementptr [5 x i32], ptr %r0, i32 4, i32 2
    %r554 = load i32, ptr %r553
    %r557 = mul i32 %r554,-39
    %r558 = add i32 %r550,%r557
    %r561 = getelementptr [5 x i32], ptr %r0, i32 4, i32 3
    %r562 = load i32, ptr %r561
    %r565 = mul i32 %r562,-6
    %r566 = add i32 %r558,%r565
    %r572 = mul i32 %r184,94
    %r573 = add i32 %r566,%r572
    br label %L18
L13:
    %r1926 = icmp sgt i32 %r384,127
    br i1 %r1926, label %L14, label %L15
L14:
    br label %L12
L15:
    %r1927 = icmp slt i32 %r384,0
    br i1 %r1927, label %L16, label %L17
L16:
    br label %L12
L17:
    br label %L12
L18:
    br label %L20
L19:
    %r574 = phi i32 [0,%L23],[%r573,%L24],[127,%L21]
    %r576 = mul i32 %r574,127
    %r577 = add i32 %r388,%r576
    %r585 = mul i32 %r5,-23
    %r592 = mul i32 %r11,-63
    %r593 = add i32 %r585,%r592
    %r599 = mul i32 %r18,49
    %r600 = add i32 %r593,%r599
    %r606 = mul i32 %r26,50
    %r607 = add i32 %r600,%r606
    %r613 = mul i32 %r34,72
    %r614 = add i32 %r607,%r613
    %r617 = getelementptr [5 x i32], ptr %r0, i32 1, i32 0
    %r618 = load i32, ptr %r617
    %r620 = mul i32 %r618,85
    %r621 = add i32 %r614,%r620
    %r624 = getelementptr [5 x i32], ptr %r0, i32 1, i32 1
    %r625 = load i32, ptr %r624
    %r628 = mul i32 %r625,-30
    %r629 = add i32 %r621,%r628
    %r632 = getelementptr [5 x i32], ptr %r0, i32 1, i32 2
    %r633 = load i32, ptr %r632
    %r635 = mul i32 %r633,12
    %r636 = add i32 %r629,%r635
    %r639 = getelementptr [5 x i32], ptr %r0, i32 1, i32 3
    %r640 = load i32, ptr %r639
    %r642 = mul i32 %r640,125
    %r643 = add i32 %r636,%r642
    %r650 = mul i32 %r72,-117
    %r651 = add i32 %r643,%r650
    %r654 = getelementptr [5 x i32], ptr %r0, i32 2, i32 0
    %r655 = load i32, ptr %r654
    %r658 = mul i32 %r655,-65
    %r659 = add i32 %r651,%r658
    %r662 = getelementptr [5 x i32], ptr %r0, i32 2, i32 1
    %r663 = load i32, ptr %r662
    %r666 = mul i32 %r663,-67
    %r667 = add i32 %r659,%r666
    %r670 = getelementptr [5 x i32], ptr %r0, i32 2, i32 2
    %r671 = load i32, ptr %r670
    %r673 = mul i32 %r671,125
    %r674 = add i32 %r667,%r673
    %r677 = getelementptr [5 x i32], ptr %r0, i32 2, i32 3
    %r678 = load i32, ptr %r677
    %r680 = mul i32 %r678,110
    %r681 = add i32 %r674,%r680
    %r688 = mul i32 %r111,-31
    %r689 = add i32 %r681,%r688
    %r692 = getelementptr [5 x i32], ptr %r0, i32 3, i32 0
    %r693 = load i32, ptr %r692
    %r696 = mul i32 %r693,-123
    %r697 = add i32 %r689,%r696
    %r700 = getelementptr [5 x i32], ptr %r0, i32 3, i32 1
    %r701 = load i32, ptr %r700
    %r703 = mul i32 %r701,83
    %r704 = add i32 %r697,%r703
    %r707 = getelementptr [5 x i32], ptr %r0, i32 3, i32 2
    %r708 = load i32, ptr %r707
    %r710 = mul i32 %r708,122
    %r711 = add i32 %r704,%r710
    %r714 = getelementptr [5 x i32], ptr %r0, i32 3, i32 3
    %r715 = load i32, ptr %r714
    %r717 = mul i32 %r715,11
    %r718 = add i32 %r711,%r717
    %r725 = mul i32 %r148,-23
    %r726 = add i32 %r718,%r725
    %r729 = getelementptr [5 x i32], ptr %r0, i32 4, i32 0
    %r730 = load i32, ptr %r729
    %r733 = mul i32 %r730,-47
    %r734 = add i32 %r726,%r733
    %r737 = getelementptr [5 x i32], ptr %r0, i32 4, i32 1
    %r738 = load i32, ptr %r737
    %r741 = mul i32 %r738,-32
    %r742 = add i32 %r734,%r741
    %r745 = getelementptr [5 x i32], ptr %r0, i32 4, i32 2
    %r746 = load i32, ptr %r745
    %r749 = mul i32 %r746,-117
    %r750 = add i32 %r742,%r749
    %r753 = getelementptr [5 x i32], ptr %r0, i32 4, i32 3
    %r754 = load i32, ptr %r753
    %r756 = mul i32 %r754,95
    %r757 = add i32 %r750,%r756
    %r763 = mul i32 %r184,118
    %r764 = add i32 %r757,%r763
    br label %L25
L20:
    %r1928 = icmp sgt i32 %r573,127
    br i1 %r1928, label %L21, label %L22
L21:
    br label %L19
L22:
    %r1929 = icmp slt i32 %r573,0
    br i1 %r1929, label %L23, label %L24
L23:
    br label %L19
L24:
    br label %L19
L25:
    br label %L27
L26:
    %r765 = phi i32 [%r764,%L31],[0,%L30],[127,%L28]
    %r768 = mul i32 %r765,-106
    %r769 = add i32 %r577,%r768
    %r776 = mul i32 %r5,8
    %r782 = mul i32 %r11,82
    %r783 = add i32 %r776,%r782
    %r790 = mul i32 %r18,-104
    %r791 = add i32 %r783,%r790
    %r797 = mul i32 %r26,101
    %r798 = add i32 %r791,%r797
    %r805 = mul i32 %r34,-116
    %r806 = add i32 %r798,%r805
    %r809 = getelementptr [5 x i32], ptr %r0, i32 1, i32 0
    %r810 = load i32, ptr %r809
    %r813 = mul i32 %r810,-63
    %r814 = add i32 %r806,%r813
    %r817 = getelementptr [5 x i32], ptr %r0, i32 1, i32 1
    %r818 = load i32, ptr %r817
    %r821 = mul i32 %r818,-16
    %r822 = add i32 %r814,%r821
    %r825 = getelementptr [5 x i32], ptr %r0, i32 1, i32 2
    %r826 = load i32, ptr %r825
    %r829 = mul i32 %r826,-70
    %r830 = add i32 %r822,%r829
    %r833 = getelementptr [5 x i32], ptr %r0, i32 1, i32 3
    %r834 = load i32, ptr %r833
    %r836 = mul i32 %r834,125
    %r837 = add i32 %r830,%r836
    %r843 = mul i32 %r72,75
    %r844 = add i32 %r837,%r843
    %r847 = getelementptr [5 x i32], ptr %r0, i32 2, i32 0
    %r848 = load i32, ptr %r847
    %r850 = mul i32 %r848,66
    %r851 = add i32 %r844,%r850
    %r854 = getelementptr [5 x i32], ptr %r0, i32 2, i32 1
    %r855 = load i32, ptr %r854
    %r858 = mul i32 %r855,-96
    %r859 = add i32 %r851,%r858
    %r862 = getelementptr [5 x i32], ptr %r0, i32 2, i32 2
    %r863 = load i32, ptr %r862
    %r866 = mul i32 %r863,-101
    %r867 = add i32 %r859,%r866
    %r870 = getelementptr [5 x i32], ptr %r0, i32 2, i32 3
    %r871 = load i32, ptr %r870
    %r874 = mul i32 %r871,-114
    %r875 = add i32 %r867,%r874
    %r881 = mul i32 %r111,59
    %r882 = add i32 %r875,%r881
    %r885 = getelementptr [5 x i32], ptr %r0, i32 3, i32 0
    %r886 = load i32, ptr %r885
    %r888 = mul i32 %r886,12
    %r889 = add i32 %r882,%r888
    %r892 = getelementptr [5 x i32], ptr %r0, i32 3, i32 1
    %r893 = load i32, ptr %r892
    %r895 = mul i32 %r893,5
    %r896 = add i32 %r889,%r895
    %r899 = getelementptr [5 x i32], ptr %r0, i32 3, i32 2
    %r900 = load i32, ptr %r899
    %r903 = mul i32 %r900,-95
    %r904 = add i32 %r896,%r903
    %r907 = getelementptr [5 x i32], ptr %r0, i32 3, i32 3
    %r908 = load i32, ptr %r907
    %r910 = mul i32 %r908,116
    %r911 = add i32 %r904,%r910
    %r918 = mul i32 %r148,-93
    %r919 = add i32 %r911,%r918
    %r922 = getelementptr [5 x i32], ptr %r0, i32 4, i32 0
    %r923 = load i32, ptr %r922
    %r925 = mul i32 %r923,15
    %r926 = add i32 %r919,%r925
    %r929 = getelementptr [5 x i32], ptr %r0, i32 4, i32 1
    %r930 = load i32, ptr %r929
    %r932 = mul i32 %r930,79
    %r933 = add i32 %r926,%r932
    %r936 = getelementptr [5 x i32], ptr %r0, i32 4, i32 2
    %r937 = load i32, ptr %r936
    %r939 = mul i32 %r937,3
    %r940 = add i32 %r933,%r939
    %r943 = getelementptr [5 x i32], ptr %r0, i32 4, i32 3
    %r944 = load i32, ptr %r943
    %r946 = mul i32 %r944,49
    %r947 = add i32 %r940,%r946
    %r954 = mul i32 %r184,-124
    %r955 = add i32 %r947,%r954
    br label %L32
L27:
    %r1930 = icmp sgt i32 %r764,127
    br i1 %r1930, label %L28, label %L29
L28:
    br label %L26
L29:
    %r1931 = icmp slt i32 %r764,0
    br i1 %r1931, label %L30, label %L31
L30:
    br label %L26
L31:
    br label %L26
L32:
    br label %L34
L33:
    %r956 = phi i32 [127,%L35],[0,%L37],[%r955,%L38]
    %r959 = mul i32 %r956,-3
    %r960 = add i32 %r769,%r959
    %r967 = mul i32 %r5,81
    %r973 = mul i32 %r11,68
    %r974 = add i32 %r967,%r973
    %r981 = mul i32 %r18,-102
    %r982 = add i32 %r974,%r981
    %r989 = mul i32 %r26,-74
    %r990 = add i32 %r982,%r989
    %r996 = mul i32 %r34,121
    %r997 = add i32 %r990,%r996
    %r1000 = getelementptr [5 x i32], ptr %r0, i32 1, i32 0
    %r1001 = load i32, ptr %r1000
    %r1004 = mul i32 %r1001,-15
    %r1005 = add i32 %r997,%r1004
    %r1008 = getelementptr [5 x i32], ptr %r0, i32 1, i32 1
    %r1009 = load i32, ptr %r1008
    %r1011 = mul i32 %r1009,55
    %r1012 = add i32 %r1005,%r1011
    %r1015 = getelementptr [5 x i32], ptr %r0, i32 1, i32 2
    %r1016 = load i32, ptr %r1015
    %r1018 = mul i32 %r1016,101
    %r1019 = add i32 %r1012,%r1018
    %r1022 = getelementptr [5 x i32], ptr %r0, i32 1, i32 3
    %r1023 = load i32, ptr %r1022
    %r1026 = mul i32 %r1023,-13
    %r1027 = add i32 %r1019,%r1026
    %r1034 = mul i32 %r72,-62
    %r1035 = add i32 %r1027,%r1034
    %r1038 = getelementptr [5 x i32], ptr %r0, i32 2, i32 0
    %r1039 = load i32, ptr %r1038
    %r1041 = mul i32 %r1039,64
    %r1042 = add i32 %r1035,%r1041
    %r1045 = getelementptr [5 x i32], ptr %r0, i32 2, i32 1
    %r1046 = load i32, ptr %r1045
    %r1048 = mul i32 %r1046,114
    %r1049 = add i32 %r1042,%r1048
    %r1052 = getelementptr [5 x i32], ptr %r0, i32 2, i32 2
    %r1053 = load i32, ptr %r1052
    %r1055 = mul i32 %r1053,38
    %r1056 = add i32 %r1049,%r1055
    %r1059 = getelementptr [5 x i32], ptr %r0, i32 2, i32 3
    %r1060 = load i32, ptr %r1059
    %r1063 = mul i32 %r1060,-21
    %r1064 = add i32 %r1056,%r1063
    %r1070 = mul i32 %r111,112
    %r1071 = add i32 %r1064,%r1070
    %r1074 = getelementptr [5 x i32], ptr %r0, i32 3, i32 0
    %r1075 = load i32, ptr %r1074
    %r1077 = mul i32 %r1075,114
    %r1078 = add i32 %r1071,%r1077
    %r1081 = getelementptr [5 x i32], ptr %r0, i32 3, i32 1
    %r1082 = load i32, ptr %r1081
    %r1084 = mul i32 %r1082,112
    %r1085 = add i32 %r1078,%r1084
    %r1088 = getelementptr [5 x i32], ptr %r0, i32 3, i32 2
    %r1089 = load i32, ptr %r1088
    %r1092 = mul i32 %r1089,-10
    %r1093 = add i32 %r1085,%r1092
    %r1096 = getelementptr [5 x i32], ptr %r0, i32 3, i32 3
    %r1097 = load i32, ptr %r1096
    %r1100 = mul i32 %r1097,-16
    %r1101 = add i32 %r1093,%r1100
    %r1108 = mul i32 %r148,-50
    %r1109 = add i32 %r1101,%r1108
    %r1112 = getelementptr [5 x i32], ptr %r0, i32 4, i32 0
    %r1113 = load i32, ptr %r1112
    %r1116 = mul i32 %r1113,-112
    %r1117 = add i32 %r1109,%r1116
    %r1120 = getelementptr [5 x i32], ptr %r0, i32 4, i32 1
    %r1121 = load i32, ptr %r1120
    %r1124 = mul i32 %r1121,-116
    %r1125 = add i32 %r1117,%r1124
    %r1128 = getelementptr [5 x i32], ptr %r0, i32 4, i32 2
    %r1129 = load i32, ptr %r1128
    %r1132 = mul i32 %r1129,-54
    %r1133 = add i32 %r1125,%r1132
    %r1136 = getelementptr [5 x i32], ptr %r0, i32 4, i32 3
    %r1137 = load i32, ptr %r1136
    %r1139 = mul i32 %r1137,82
    %r1140 = add i32 %r1133,%r1139
    %r1147 = mul i32 %r184,-72
    %r1148 = add i32 %r1140,%r1147
    br label %L39
L34:
    %r1932 = icmp sgt i32 %r955,127
    br i1 %r1932, label %L35, label %L36
L35:
    br label %L33
L36:
    %r1933 = icmp slt i32 %r955,0
    br i1 %r1933, label %L37, label %L38
L37:
    br label %L33
L38:
    br label %L33
L39:
    br label %L41
L40:
    %r1149 = phi i32 [127,%L42],[%r1148,%L45],[0,%L44]
    %r1151 = mul i32 %r1149,32
    %r1152 = add i32 %r960,%r1151
    %r1159 = mul i32 %r5,15
    %r1166 = mul i32 %r11,-77
    %r1167 = add i32 %r1159,%r1166
    %r1173 = mul i32 %r18,66
    %r1174 = add i32 %r1167,%r1173
    %r1181 = mul i32 %r26,-90
    %r1182 = add i32 %r1174,%r1181
    %r1189 = mul i32 %r34,-6
    %r1190 = add i32 %r1182,%r1189
    %r1193 = getelementptr [5 x i32], ptr %r0, i32 1, i32 0
    %r1194 = load i32, ptr %r1193
    %r1197 = mul i32 %r1194,-30
    %r1198 = add i32 %r1190,%r1197
    %r1201 = getelementptr [5 x i32], ptr %r0, i32 1, i32 1
    %r1202 = load i32, ptr %r1201
    %r1205 = mul i32 %r1202,-8
    %r1206 = add i32 %r1198,%r1205
    %r1209 = getelementptr [5 x i32], ptr %r0, i32 1, i32 2
    %r1210 = load i32, ptr %r1209
    %r1212 = mul i32 %r1210,81
    %r1213 = add i32 %r1206,%r1212
    %r1216 = getelementptr [5 x i32], ptr %r0, i32 1, i32 3
    %r1217 = load i32, ptr %r1216
    %r1219 = mul i32 %r1217,2
    %r1220 = add i32 %r1213,%r1219
    %r1227 = mul i32 %r72,-110
    %r1228 = add i32 %r1220,%r1227
    %r1231 = getelementptr [5 x i32], ptr %r0, i32 2, i32 0
    %r1232 = load i32, ptr %r1231
    %r1235 = mul i32 %r1232,-95
    %r1236 = add i32 %r1228,%r1235
    %r1239 = getelementptr [5 x i32], ptr %r0, i32 2, i32 1
    %r1240 = load i32, ptr %r1239
    %r1242 = mul i32 %r1240,59
    %r1243 = add i32 %r1236,%r1242
    %r1246 = getelementptr [5 x i32], ptr %r0, i32 2, i32 2
    %r1247 = load i32, ptr %r1246
    %r1249 = mul i32 %r1247,52
    %r1250 = add i32 %r1243,%r1249
    %r1253 = getelementptr [5 x i32], ptr %r0, i32 2, i32 3
    %r1254 = load i32, ptr %r1253
    %r1256 = mul i32 %r1254,15
    %r1257 = add i32 %r1250,%r1256
    %r1263 = mul i32 %r111,55
    %r1264 = add i32 %r1257,%r1263
    %r1267 = getelementptr [5 x i32], ptr %r0, i32 3, i32 0
    %r1268 = load i32, ptr %r1267
    %r1271 = mul i32 %r1268,-33
    %r1272 = add i32 %r1264,%r1271
    %r1275 = getelementptr [5 x i32], ptr %r0, i32 3, i32 1
    %r1276 = load i32, ptr %r1275
    %r1278 = mul i32 %r1276,14
    %r1279 = add i32 %r1272,%r1278
    %r1282 = getelementptr [5 x i32], ptr %r0, i32 3, i32 2
    %r1283 = load i32, ptr %r1282
    %r1285 = mul i32 %r1283,58
    %r1286 = add i32 %r1279,%r1285
    %r1289 = getelementptr [5 x i32], ptr %r0, i32 3, i32 3
    %r1290 = load i32, ptr %r1289
    %r1292 = mul i32 %r1290,67
    %r1293 = add i32 %r1286,%r1292
    %r1299 = mul i32 %r148,86
    %r1300 = add i32 %r1293,%r1299
    %r1303 = getelementptr [5 x i32], ptr %r0, i32 4, i32 0
    %r1304 = load i32, ptr %r1303
    %r1307 = mul i32 %r1304,-79
    %r1308 = add i32 %r1300,%r1307
    %r1311 = getelementptr [5 x i32], ptr %r0, i32 4, i32 1
    %r1312 = load i32, ptr %r1311
    %r1314 = mul i32 %r1312,48
    %r1315 = add i32 %r1308,%r1314
    %r1318 = getelementptr [5 x i32], ptr %r0, i32 4, i32 2
    %r1319 = load i32, ptr %r1318
    %r1322 = mul i32 %r1319,-13
    %r1323 = add i32 %r1315,%r1322
    %r1326 = getelementptr [5 x i32], ptr %r0, i32 4, i32 3
    %r1327 = load i32, ptr %r1326
    %r1330 = mul i32 %r1327,-15
    %r1331 = add i32 %r1323,%r1330
    %r1337 = mul i32 %r184,66
    %r1338 = add i32 %r1331,%r1337
    br label %L46
L41:
    %r1934 = icmp sgt i32 %r1148,127
    br i1 %r1934, label %L42, label %L43
L42:
    br label %L40
L43:
    %r1935 = icmp slt i32 %r1148,0
    br i1 %r1935, label %L44, label %L45
L44:
    br label %L40
L45:
    br label %L40
L46:
    br label %L48
L47:
    %r1339 = phi i32 [127,%L49],[0,%L51],[%r1338,%L52]
    %r1342 = mul i32 %r1339,-95
    %r1343 = add i32 %r1152,%r1342
    %r1350 = mul i32 %r5,33
    %r1356 = mul i32 %r11,82
    %r1357 = add i32 %r1350,%r1356
    %r1363 = mul i32 %r18,67
    %r1364 = add i32 %r1357,%r1363
    %r1370 = mul i32 %r26,30
    %r1371 = add i32 %r1364,%r1370
    %r1378 = mul i32 %r34,-2
    %r1379 = add i32 %r1371,%r1378
    %r1382 = getelementptr [5 x i32], ptr %r0, i32 1, i32 0
    %r1383 = load i32, ptr %r1382
    %r1385 = mul i32 %r1383,65
    %r1386 = add i32 %r1379,%r1385
    %r1389 = getelementptr [5 x i32], ptr %r0, i32 1, i32 1
    %r1390 = load i32, ptr %r1389
    %r1392 = mul i32 %r1390,120
    %r1393 = add i32 %r1386,%r1392
    %r1396 = getelementptr [5 x i32], ptr %r0, i32 1, i32 2
    %r1397 = load i32, ptr %r1396
    %r1400 = mul i32 %r1397,-13
    %r1401 = add i32 %r1393,%r1400
    %r1404 = getelementptr [5 x i32], ptr %r0, i32 1, i32 3
    %r1405 = load i32, ptr %r1404
    %r1407 = mul i32 %r1405,18
    %r1408 = add i32 %r1401,%r1407
    %r1414 = mul i32 %r72,5
    %r1415 = add i32 %r1408,%r1414
    %r1418 = getelementptr [5 x i32], ptr %r0, i32 2, i32 0
    %r1419 = load i32, ptr %r1418
    %r1421 = mul i32 %r1419,104
    %r1422 = add i32 %r1415,%r1421
    %r1425 = getelementptr [5 x i32], ptr %r0, i32 2, i32 1
    %r1426 = load i32, ptr %r1425
    %r1429 = mul i32 %r1426,-119
    %r1430 = add i32 %r1422,%r1429
    %r1433 = getelementptr [5 x i32], ptr %r0, i32 2, i32 2
    %r1434 = load i32, ptr %r1433
    %r1437 = mul i32 %r1434,-7
    %r1438 = add i32 %r1430,%r1437
    %r1441 = getelementptr [5 x i32], ptr %r0, i32 2, i32 3
    %r1442 = load i32, ptr %r1441
    %r1444 = mul i32 %r1442,71
    %r1445 = add i32 %r1438,%r1444
    %r1451 = mul i32 %r111,107
    %r1452 = add i32 %r1445,%r1451
    %r1455 = getelementptr [5 x i32], ptr %r0, i32 3, i32 0
    %r1456 = load i32, ptr %r1455
    %r1458 = mul i32 %r1456,24
    %r1459 = add i32 %r1452,%r1458
    %r1462 = getelementptr [5 x i32], ptr %r0, i32 3, i32 1
    %r1463 = load i32, ptr %r1462
    %r1465 = mul i32 %r1463,82
    %r1466 = add i32 %r1459,%r1465
    %r1469 = getelementptr [5 x i32], ptr %r0, i32 3, i32 2
    %r1470 = load i32, ptr %r1469
    %r1473 = mul i32 %r1470,-96
    %r1474 = add i32 %r1466,%r1473
    %r1477 = getelementptr [5 x i32], ptr %r0, i32 3, i32 3
    %r1478 = load i32, ptr %r1477
    %r1481 = mul i32 %r1478,-104
    %r1482 = add i32 %r1474,%r1481
    %r1489 = mul i32 %r148,-121
    %r1490 = add i32 %r1482,%r1489
    %r1493 = getelementptr [5 x i32], ptr %r0, i32 4, i32 0
    %r1494 = load i32, ptr %r1493
    %r1496 = mul i32 %r1494,65
    %r1497 = add i32 %r1490,%r1496
    %r1500 = getelementptr [5 x i32], ptr %r0, i32 4, i32 1
    %r1501 = load i32, ptr %r1500
    %r1503 = mul i32 %r1501,97
    %r1504 = add i32 %r1497,%r1503
    %r1507 = getelementptr [5 x i32], ptr %r0, i32 4, i32 2
    %r1508 = load i32, ptr %r1507
    %r1510 = mul i32 %r1508,83
    %r1511 = add i32 %r1504,%r1510
    %r1514 = getelementptr [5 x i32], ptr %r0, i32 4, i32 3
    %r1515 = load i32, ptr %r1514
    %r1517 = mul i32 %r1515,46
    %r1518 = add i32 %r1511,%r1517
    %r1525 = mul i32 %r184,-84
    %r1526 = add i32 %r1518,%r1525
    br label %L53
L48:
    %r1936 = icmp sgt i32 %r1338,127
    br i1 %r1936, label %L49, label %L50
L49:
    br label %L47
L50:
    %r1937 = icmp slt i32 %r1338,0
    br i1 %r1937, label %L51, label %L52
L51:
    br label %L47
L52:
    br label %L47
L53:
    br label %L55
L54:
    %r1527 = phi i32 [%r1526,%L59],[127,%L56],[0,%L58]
    %r1530 = mul i32 %r1527,-50
    %r1531 = add i32 %r1343,%r1530
    %r1539 = mul i32 %r5,-29
    %r1545 = mul i32 %r11,7
    %r1546 = add i32 %r1539,%r1545
    %r1553 = mul i32 %r18,-70
    %r1554 = add i32 %r1546,%r1553
    %r1560 = mul i32 %r26,38
    %r1561 = add i32 %r1554,%r1560
    %r1568 = mul i32 %r34,-90
    %r1569 = add i32 %r1561,%r1568
    %r1572 = getelementptr [5 x i32], ptr %r0, i32 1, i32 0
    %r1573 = load i32, ptr %r1572
    %r1576 = mul i32 %r1573,-15
    %r1577 = add i32 %r1569,%r1576
    %r1580 = getelementptr [5 x i32], ptr %r0, i32 1, i32 1
    %r1581 = load i32, ptr %r1580
    %r1584 = mul i32 %r1581,-32
    %r1585 = add i32 %r1577,%r1584
    %r1588 = getelementptr [5 x i32], ptr %r0, i32 1, i32 2
    %r1589 = load i32, ptr %r1588
    %r1591 = mul i32 %r1589,37
    %r1592 = add i32 %r1585,%r1591
    %r1595 = getelementptr [5 x i32], ptr %r0, i32 1, i32 3
    %r1596 = load i32, ptr %r1595
    %r1598 = mul i32 %r1596,36
    %r1599 = add i32 %r1592,%r1598
    %r1606 = mul i32 %r72,-62
    %r1607 = add i32 %r1599,%r1606
    %r1610 = getelementptr [5 x i32], ptr %r0, i32 2, i32 0
    %r1611 = load i32, ptr %r1610
    %r1614 = mul i32 %r1611,-125
    %r1615 = add i32 %r1607,%r1614
    %r1618 = getelementptr [5 x i32], ptr %r0, i32 2, i32 1
    %r1619 = load i32, ptr %r1618
    %r1622 = mul i32 %r1619,-46
    %r1623 = add i32 %r1615,%r1622
    %r1626 = getelementptr [5 x i32], ptr %r0, i32 2, i32 2
    %r1627 = load i32, ptr %r1626
    %r1630 = mul i32 %r1627,-70
    %r1631 = add i32 %r1623,%r1630
    %r1634 = getelementptr [5 x i32], ptr %r0, i32 2, i32 3
    %r1635 = load i32, ptr %r1634
    %r1637 = mul i32 %r1635,37
    %r1638 = add i32 %r1631,%r1637
    %r1645 = mul i32 %r111,-73
    %r1646 = add i32 %r1638,%r1645
    %r1649 = getelementptr [5 x i32], ptr %r0, i32 3, i32 0
    %r1650 = load i32, ptr %r1649
    %r1653 = mul i32 %r1650,-34
    %r1654 = add i32 %r1646,%r1653
    %r1657 = getelementptr [5 x i32], ptr %r0, i32 3, i32 1
    %r1658 = load i32, ptr %r1657
    %r1661 = mul i32 %r1658,-87
    %r1662 = add i32 %r1654,%r1661
    %r1665 = getelementptr [5 x i32], ptr %r0, i32 3, i32 2
    %r1666 = load i32, ptr %r1665
    %r1669 = mul i32 %r1666,-75
    %r1670 = add i32 %r1662,%r1669
    %r1673 = getelementptr [5 x i32], ptr %r0, i32 3, i32 3
    %r1674 = load i32, ptr %r1673
    %r1676 = mul i32 %r1674,71
    %r1677 = add i32 %r1670,%r1676
    %r1684 = mul i32 %r148,-77
    %r1685 = add i32 %r1677,%r1684
    %r1688 = getelementptr [5 x i32], ptr %r0, i32 4, i32 0
    %r1689 = load i32, ptr %r1688
    %r1691 = mul i32 %r1689,53
    %r1692 = add i32 %r1685,%r1691
    %r1695 = getelementptr [5 x i32], ptr %r0, i32 4, i32 1
    %r1696 = load i32, ptr %r1695
    %r1698 = mul i32 %r1696,37
    %r1699 = add i32 %r1692,%r1698
    %r1702 = getelementptr [5 x i32], ptr %r0, i32 4, i32 2
    %r1703 = load i32, ptr %r1702
    %r1706 = mul i32 %r1703,-103
    %r1707 = add i32 %r1699,%r1706
    %r1710 = getelementptr [5 x i32], ptr %r0, i32 4, i32 3
    %r1711 = load i32, ptr %r1710
    %r1714 = mul i32 %r1711,-13
    %r1715 = add i32 %r1707,%r1714
    %r1722 = mul i32 %r184,-114
    %r1723 = add i32 %r1715,%r1722
    br label %L60
L55:
    %r1938 = icmp sgt i32 %r1526,127
    br i1 %r1938, label %L56, label %L57
L56:
    br label %L54
L57:
    %r1939 = icmp slt i32 %r1526,0
    br i1 %r1939, label %L58, label %L59
L58:
    br label %L54
L59:
    br label %L54
L60:
    br label %L62
L61:
    %r1724 = phi i32 [0,%L65],[%r1723,%L66],[127,%L63]
    %r1727 = mul i32 %r1724,-23
    %r1728 = add i32 %r1531,%r1727
    %r1735 = mul i32 %r5,67
    %r1741 = mul i32 %r11,42
    %r1742 = add i32 %r1735,%r1741
    %r1748 = mul i32 %r18,41
    %r1749 = add i32 %r1742,%r1748
    %r1756 = mul i32 %r26,-123
    %r1757 = add i32 %r1749,%r1756
    %r1764 = mul i32 %r34,-92
    %r1765 = add i32 %r1757,%r1764
    %r1768 = getelementptr [5 x i32], ptr %r0, i32 1, i32 0
    %r1769 = load i32, ptr %r1768
    %r1771 = mul i32 %r1769,10
    %r1772 = add i32 %r1765,%r1771
    %r1775 = getelementptr [5 x i32], ptr %r0, i32 1, i32 1
    %r1776 = load i32, ptr %r1775
    %r1779 = mul i32 %r1776,-77
    %r1780 = add i32 %r1772,%r1779
    %r1783 = getelementptr [5 x i32], ptr %r0, i32 1, i32 2
    %r1784 = load i32, ptr %r1783
    %r1786 = mul i32 %r1784,75
    %r1787 = add i32 %r1780,%r1786
    %r1790 = getelementptr [5 x i32], ptr %r0, i32 1, i32 3
    %r1791 = load i32, ptr %r1790
    %r1793 = mul i32 %r1791,96
    %r1794 = add i32 %r1787,%r1793
    %r1801 = mul i32 %r72,-51
    %r1802 = add i32 %r1794,%r1801
    %r1805 = getelementptr [5 x i32], ptr %r0, i32 2, i32 0
    %r1806 = load i32, ptr %r1805
    %r1808 = mul i32 %r1806,109
    %r1809 = add i32 %r1802,%r1808
    %r1812 = getelementptr [5 x i32], ptr %r0, i32 2, i32 1
    %r1813 = load i32, ptr %r1812
    %r1816 = mul i32 %r1813,-74
    %r1817 = add i32 %r1809,%r1816
    %r1820 = getelementptr [5 x i32], ptr %r0, i32 2, i32 2
    %r1821 = load i32, ptr %r1820
    %r1824 = mul i32 %r1821,-7
    %r1825 = add i32 %r1817,%r1824
    %r1828 = getelementptr [5 x i32], ptr %r0, i32 2, i32 3
    %r1829 = load i32, ptr %r1828
    %r1832 = mul i32 %r1829,-122
    %r1833 = add i32 %r1825,%r1832
    %r1839 = mul i32 %r111,67
    %r1840 = add i32 %r1833,%r1839
    %r1843 = getelementptr [5 x i32], ptr %r0, i32 3, i32 0
    %r1844 = load i32, ptr %r1843
    %r1846 = mul i32 %r1844,47
    %r1847 = add i32 %r1840,%r1846
    %r1850 = getelementptr [5 x i32], ptr %r0, i32 3, i32 1
    %r1851 = load i32, ptr %r1850
    %r1853 = mul i32 %r1851,22
    %r1854 = add i32 %r1847,%r1853
    %r1857 = getelementptr [5 x i32], ptr %r0, i32 3, i32 2
    %r1858 = load i32, ptr %r1857
    %r1861 = mul i32 %r1858,-68
    %r1862 = add i32 %r1854,%r1861
    %r1865 = getelementptr [5 x i32], ptr %r0, i32 3, i32 3
    %r1866 = load i32, ptr %r1865
    %r1868 = mul i32 %r1866,38
    %r1869 = add i32 %r1862,%r1868
    %r1875 = mul i32 %r148,29
    %r1876 = add i32 %r1869,%r1875
    %r1879 = getelementptr [5 x i32], ptr %r0, i32 4, i32 0
    %r1880 = load i32, ptr %r1879
    %r1882 = mul i32 %r1880,115
    %r1883 = add i32 %r1876,%r1882
    %r1886 = getelementptr [5 x i32], ptr %r0, i32 4, i32 1
    %r1887 = load i32, ptr %r1886
    %r1890 = mul i32 %r1887,-121
    %r1891 = add i32 %r1883,%r1890
    %r1894 = getelementptr [5 x i32], ptr %r0, i32 4, i32 2
    %r1895 = load i32, ptr %r1894
    %r1897 = mul i32 %r1895,36
    %r1898 = add i32 %r1891,%r1897
    %r1901 = getelementptr [5 x i32], ptr %r0, i32 4, i32 3
    %r1902 = load i32, ptr %r1901
    %r1905 = mul i32 %r1902,-49
    %r1906 = add i32 %r1898,%r1905
    %r1912 = mul i32 %r184,85
    %r1913 = add i32 %r1906,%r1912
    br label %L67
L62:
    %r1940 = icmp sgt i32 %r1723,127
    br i1 %r1940, label %L63, label %L64
L63:
    br label %L61
L64:
    %r1941 = icmp slt i32 %r1723,0
    br i1 %r1941, label %L65, label %L66
L65:
    br label %L61
L66:
    br label %L61
L67:
    br label %L69
L68:
    %r1914 = phi i32 [0,%L72],[%r1913,%L73],[127,%L70]
    %r1916 = mul i32 %r1914,46
    %r1917 = add i32 %r1728,%r1916
    %r1919 = icmp sgt i32 %r1917,0
    br i1 %r1919, label %L2, label %L3
L69:
    %r1942 = icmp sgt i32 %r1913,127
    br i1 %r1942, label %L70, label %L71
L70:
    br label %L68
L71:
    %r1943 = icmp slt i32 %r1913,0
    br i1 %r1943, label %L72, label %L73
L72:
    br label %L68
L73:
    br label %L68
}
define i32 @relu_reg(i32 %r0)
{
L0:
    br label %L1
L1:
    %r4 = icmp sgt i32 %r0,127
    br i1 %r4, label %L2, label %L3
L2:
    ret i32 127
L3:
    %r10 = icmp slt i32 %r0,0
    br i1 %r10, label %L4, label %L5
L4:
    ret i32 0
L5:
    ret i32 %r0
}
define i32 @main()
{
L0:
    %r2 = alloca [5 x [5 x i32]]
    br label %L1
L1:
    %r1 = call i32 @getint()
    %r5 = icmp sgt i32 %r1,0
    br i1 %r5, label %L17, label %L5
L3:
    %r72 = phi i32 [%r55,%L4],[%r1,%L17]
    br label %L18
L4:
    %r58 = icmp sgt i32 %r55,0
    br i1 %r58, label %L3, label %L5
L5:
    ret i32 0
L7:
    %r70 = phi i32 [%r36,%L8],[0,%L18]
    br label %L19
L8:
    %r39 = icmp slt i32 %r36,5
    br i1 %r39, label %L7, label %L9
L9:
    %r43 = call i32 @model(ptr %r42)
    %r44 = icmp ne i32 %r43,0
    br i1 %r44, label %L14, label %L15
L11:
    %r66 = phi i32 [%r28,%L12],[0,%L19]
    %r22 = call i32 @getint()
    %r25 = getelementptr i32, ptr %r74, i32 %r66
    store i32 %r22, ptr %r25
    %r28 = add i32 %r66,1
    br label %L12
L12:
    %r31 = icmp slt i32 %r28,5
    br i1 %r31, label %L11, label %L13
L13:
    %r36 = add i32 %r70,1
    br label %L8
L14:
    call void @putch(i32 99)
    call void @putch(i32 97)
    call void @putch(i32 116)
    call void @putch(i32 10)
    br label %L16
L15:
    call void @putch(i32 100)
    call void @putch(i32 111)
    call void @putch(i32 103)
    call void @putch(i32 10)
    br label %L16
L16:
    %r55 = sub i32 %r72,1
    br label %L4
L17:
    %r42 = getelementptr i32, ptr %r2, i32 0
    br label %L3
L18:
    br label %L7
L19:
    %r74 = getelementptr [5 x [5 x i32]], ptr %r2, i32 0, i32 %r70
    br label %L11
}
