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
define i32 @relu_reg(i32 %r0)
{
L0:  ;
    br label %L1
L1:  ;
    %r4 = icmp sgt i32 %r0,127
    br i1 %r4, label %L2, label %L3
L2:  ;
    br label %L6
L3:  ;
    %r8 = icmp slt i32 %r0,0
    br i1 %r8, label %L4, label %L5
L4:  ;
    br label %L6
L5:  ;
    br label %L6
L6:  ;
    %r13 = phi i32 [127,%L2],[0,%L4],[%r0,%L5]
    ret i32 %r13
}
define i32 @model(ptr %r0)
{
L0:  ;
    br label %L1
L1:  ;
    %r3 = getelementptr [5 x i32], ptr %r0, i32 0, i32 0
    %r4 = load i32, ptr %r3
    %r6 = mul i32 %r4,85
    %r9 = getelementptr [5 x i32], ptr %r0, i32 0, i32 1
    %r10 = load i32, ptr %r9
    %r12 = mul i32 %r10,23
    %r13 = add i32 %r6,%r12
    %r16 = getelementptr [5 x i32], ptr %r0, i32 0, i32 2
    %r17 = load i32, ptr %r16
    %r20 = mul i32 %r17,-82
    %r21 = add i32 %r13,%r20
    %r24 = getelementptr [5 x i32], ptr %r0, i32 0, i32 3
    %r25 = load i32, ptr %r24
    %r28 = mul i32 %r25,-103
    %r29 = add i32 %r21,%r28
    %r32 = getelementptr [5 x i32], ptr %r0, i32 0, i32 4
    %r33 = load i32, ptr %r32
    %r36 = mul i32 %r33,-123
    %r37 = add i32 %r29,%r36
    %r40 = getelementptr [5 x i32], ptr %r0, i32 1, i32 0
    %r41 = load i32, ptr %r40
    %r43 = mul i32 %r41,64
    %r44 = add i32 %r37,%r43
    %r47 = getelementptr [5 x i32], ptr %r0, i32 1, i32 1
    %r48 = load i32, ptr %r47
    %r51 = mul i32 %r48,-120
    %r52 = add i32 %r44,%r51
    %r55 = getelementptr [5 x i32], ptr %r0, i32 1, i32 2
    %r56 = load i32, ptr %r55
    %r58 = mul i32 %r56,50
    %r59 = add i32 %r52,%r58
    %r62 = getelementptr [5 x i32], ptr %r0, i32 1, i32 3
    %r63 = load i32, ptr %r62
    %r66 = mul i32 %r63,-59
    %r67 = add i32 %r59,%r66
    %r70 = getelementptr [5 x i32], ptr %r0, i32 1, i32 4
    %r71 = load i32, ptr %r70
    %r73 = mul i32 %r71,47
    %r74 = add i32 %r67,%r73
    %r77 = getelementptr [5 x i32], ptr %r0, i32 2, i32 0
    %r78 = load i32, ptr %r77
    %r81 = mul i32 %r78,-111
    %r82 = add i32 %r74,%r81
    %r85 = getelementptr [5 x i32], ptr %r0, i32 2, i32 1
    %r86 = load i32, ptr %r85
    %r89 = mul i32 %r86,-67
    %r90 = add i32 %r82,%r89
    %r93 = getelementptr [5 x i32], ptr %r0, i32 2, i32 2
    %r94 = load i32, ptr %r93
    %r97 = mul i32 %r94,-106
    %r98 = add i32 %r90,%r97
    %r101 = getelementptr [5 x i32], ptr %r0, i32 2, i32 3
    %r102 = load i32, ptr %r101
    %r105 = mul i32 %r102,-75
    %r106 = add i32 %r98,%r105
    %r109 = getelementptr [5 x i32], ptr %r0, i32 2, i32 4
    %r110 = load i32, ptr %r109
    %r113 = mul i32 %r110,-102
    %r114 = add i32 %r106,%r113
    %r117 = getelementptr [5 x i32], ptr %r0, i32 3, i32 0
    %r118 = load i32, ptr %r117
    %r120 = mul i32 %r118,34
    %r121 = add i32 %r114,%r120
    %r124 = getelementptr [5 x i32], ptr %r0, i32 3, i32 1
    %r125 = load i32, ptr %r124
    %r128 = mul i32 %r125,-39
    %r129 = add i32 %r121,%r128
    %r132 = getelementptr [5 x i32], ptr %r0, i32 3, i32 2
    %r133 = load i32, ptr %r132
    %r135 = mul i32 %r133,65
    %r136 = add i32 %r129,%r135
    %r139 = getelementptr [5 x i32], ptr %r0, i32 3, i32 3
    %r140 = load i32, ptr %r139
    %r142 = mul i32 %r140,47
    %r143 = add i32 %r136,%r142
    %r146 = getelementptr [5 x i32], ptr %r0, i32 3, i32 4
    %r147 = load i32, ptr %r146
    %r149 = mul i32 %r147,113
    %r150 = add i32 %r143,%r149
    %r153 = getelementptr [5 x i32], ptr %r0, i32 4, i32 0
    %r154 = load i32, ptr %r153
    %r156 = mul i32 %r154,110
    %r157 = add i32 %r150,%r156
    %r160 = getelementptr [5 x i32], ptr %r0, i32 4, i32 1
    %r161 = load i32, ptr %r160
    %r163 = mul i32 %r161,47
    %r164 = add i32 %r157,%r163
    %r167 = getelementptr [5 x i32], ptr %r0, i32 4, i32 2
    %r168 = load i32, ptr %r167
    %r171 = mul i32 %r168,-4
    %r172 = add i32 %r164,%r171
    %r175 = getelementptr [5 x i32], ptr %r0, i32 4, i32 3
    %r176 = load i32, ptr %r175
    %r178 = mul i32 %r176,80
    %r179 = add i32 %r172,%r178
    %r182 = getelementptr [5 x i32], ptr %r0, i32 4, i32 4
    %r183 = load i32, ptr %r182
    %r185 = mul i32 %r183,46
    %r186 = add i32 %r179,%r185
    %r187 = call i32 @relu_reg(i32 %r186)
    %r189 = mul i32 %r187,39
    %r196 = mul i32 %r4,-106
    %r202 = mul i32 %r10,126
    %r203 = add i32 %r196,%r202
    %r210 = mul i32 %r17,-18
    %r211 = add i32 %r203,%r210
    %r218 = mul i32 %r25,-31
    %r219 = add i32 %r211,%r218
    %r226 = mul i32 %r33,-8
    %r227 = add i32 %r219,%r226
    %r233 = mul i32 %r41,47
    %r234 = add i32 %r227,%r233
    %r241 = mul i32 %r48,-4
    %r242 = add i32 %r234,%r241
    %r248 = mul i32 %r56,67
    %r249 = add i32 %r242,%r248
    %r256 = mul i32 %r63,-94
    %r257 = add i32 %r249,%r256
    %r264 = mul i32 %r71,-121
    %r265 = add i32 %r257,%r264
    %r271 = mul i32 %r78,7
    %r272 = add i32 %r265,%r271
    %r279 = mul i32 %r86,-21
    %r280 = add i32 %r272,%r279
    %r287 = mul i32 %r94,-60
    %r288 = add i32 %r280,%r287
    %r295 = mul i32 %r102,-43
    %r296 = add i32 %r288,%r295
    %r302 = mul i32 %r110,105
    %r303 = add i32 %r296,%r302
    %r310 = mul i32 %r118,-42
    %r311 = add i32 %r303,%r310
    %r317 = mul i32 %r125,87
    %r318 = add i32 %r311,%r317
    %r324 = mul i32 %r133,29
    %r325 = add i32 %r318,%r324
    %r332 = mul i32 %r140,-106
    %r333 = add i32 %r325,%r332
    %r340 = mul i32 %r147,-31
    %r341 = add i32 %r333,%r340
    %r348 = mul i32 %r154,-110
    %r349 = add i32 %r341,%r348
    %r356 = mul i32 %r161,-100
    %r357 = add i32 %r349,%r356
    %r364 = mul i32 %r168,-22
    %r365 = add i32 %r357,%r364
    %r372 = mul i32 %r176,-75
    %r373 = add i32 %r365,%r372
    %r380 = mul i32 %r183,-125
    %r381 = add i32 %r373,%r380
    %r382 = call i32 @relu_reg(i32 %r381)
    %r384 = mul i32 %r382,77
    %r385 = add i32 %r189,%r384
    %r391 = mul i32 %r4,26
    %r397 = mul i32 %r10,76
    %r398 = add i32 %r391,%r397
    %r405 = mul i32 %r17,-70
    %r406 = add i32 %r398,%r405
    %r412 = mul i32 %r25,29
    %r413 = add i32 %r406,%r412
    %r420 = mul i32 %r33,-95
    %r421 = add i32 %r413,%r420
    %r427 = mul i32 %r41,96
    %r428 = add i32 %r421,%r427
    %r434 = mul i32 %r48,52
    %r435 = add i32 %r428,%r434
    %r442 = mul i32 %r56,-68
    %r443 = add i32 %r435,%r442
    %r450 = mul i32 %r63,-5
    %r451 = add i32 %r443,%r450
    %r457 = mul i32 %r71,34
    %r458 = add i32 %r451,%r457
    %r465 = mul i32 %r78,-34
    %r466 = add i32 %r458,%r465
    %r472 = mul i32 %r86,102
    %r473 = add i32 %r466,%r472
    %r479 = mul i32 %r94,6
    %r480 = add i32 %r473,%r479
    %r487 = mul i32 %r102,-38
    %r488 = add i32 %r480,%r487
    %r494 = mul i32 %r110,27
    %r495 = add i32 %r488,%r494
    %r501 = mul i32 %r118,110
    %r502 = add i32 %r495,%r501
    %r508 = mul i32 %r125,116
    %r509 = add i32 %r502,%r508
    %r515 = mul i32 %r133,39
    %r516 = add i32 %r509,%r515
    %r523 = mul i32 %r140,-63
    %r524 = add i32 %r516,%r523
    %r531 = mul i32 %r147,-99
    %r532 = add i32 %r524,%r531
    %r538 = mul i32 %r154,65
    %r539 = add i32 %r532,%r538
    %r545 = mul i32 %r161,120
    %r546 = add i32 %r539,%r545
    %r553 = mul i32 %r168,-39
    %r554 = add i32 %r546,%r553
    %r561 = mul i32 %r176,-6
    %r562 = add i32 %r554,%r561
    %r568 = mul i32 %r183,94
    %r569 = add i32 %r562,%r568
    %r570 = call i32 @relu_reg(i32 %r569)
    %r572 = mul i32 %r570,127
    %r573 = add i32 %r385,%r572
    %r580 = mul i32 %r4,-23
    %r587 = mul i32 %r10,-63
    %r588 = add i32 %r580,%r587
    %r594 = mul i32 %r17,49
    %r595 = add i32 %r588,%r594
    %r601 = mul i32 %r25,50
    %r602 = add i32 %r595,%r601
    %r608 = mul i32 %r33,72
    %r609 = add i32 %r602,%r608
    %r615 = mul i32 %r41,85
    %r616 = add i32 %r609,%r615
    %r623 = mul i32 %r48,-30
    %r624 = add i32 %r616,%r623
    %r630 = mul i32 %r56,12
    %r631 = add i32 %r624,%r630
    %r637 = mul i32 %r63,125
    %r638 = add i32 %r631,%r637
    %r645 = mul i32 %r71,-117
    %r646 = add i32 %r638,%r645
    %r653 = mul i32 %r78,-65
    %r654 = add i32 %r646,%r653
    %r662 = add i32 %r654,%r89
    %r668 = mul i32 %r94,125
    %r669 = add i32 %r662,%r668
    %r675 = mul i32 %r102,110
    %r676 = add i32 %r669,%r675
    %r683 = mul i32 %r110,-31
    %r684 = add i32 %r676,%r683
    %r691 = mul i32 %r118,-123
    %r692 = add i32 %r684,%r691
    %r698 = mul i32 %r125,83
    %r699 = add i32 %r692,%r698
    %r705 = mul i32 %r133,122
    %r706 = add i32 %r699,%r705
    %r712 = mul i32 %r140,11
    %r713 = add i32 %r706,%r712
    %r720 = mul i32 %r147,-23
    %r721 = add i32 %r713,%r720
    %r728 = mul i32 %r154,-47
    %r729 = add i32 %r721,%r728
    %r736 = mul i32 %r161,-32
    %r737 = add i32 %r729,%r736
    %r744 = mul i32 %r168,-117
    %r745 = add i32 %r737,%r744
    %r751 = mul i32 %r176,95
    %r752 = add i32 %r745,%r751
    %r758 = mul i32 %r183,118
    %r759 = add i32 %r752,%r758
    %r760 = call i32 @relu_reg(i32 %r759)
    %r763 = mul i32 %r760,-106
    %r764 = add i32 %r573,%r763
    %r770 = mul i32 %r4,8
    %r776 = mul i32 %r10,82
    %r777 = add i32 %r770,%r776
    %r784 = mul i32 %r17,-104
    %r785 = add i32 %r777,%r784
    %r791 = mul i32 %r25,101
    %r792 = add i32 %r785,%r791
    %r799 = mul i32 %r33,-116
    %r800 = add i32 %r792,%r799
    %r807 = mul i32 %r41,-63
    %r808 = add i32 %r800,%r807
    %r815 = mul i32 %r48,-16
    %r816 = add i32 %r808,%r815
    %r823 = mul i32 %r56,-70
    %r824 = add i32 %r816,%r823
    %r831 = add i32 %r824,%r637
    %r837 = mul i32 %r71,75
    %r838 = add i32 %r831,%r837
    %r844 = mul i32 %r78,66
    %r845 = add i32 %r838,%r844
    %r852 = mul i32 %r86,-96
    %r853 = add i32 %r845,%r852
    %r860 = mul i32 %r94,-101
    %r861 = add i32 %r853,%r860
    %r868 = mul i32 %r102,-114
    %r869 = add i32 %r861,%r868
    %r875 = mul i32 %r110,59
    %r876 = add i32 %r869,%r875
    %r882 = mul i32 %r118,12
    %r883 = add i32 %r876,%r882
    %r889 = mul i32 %r125,5
    %r890 = add i32 %r883,%r889
    %r897 = mul i32 %r133,-95
    %r898 = add i32 %r890,%r897
    %r904 = mul i32 %r140,116
    %r905 = add i32 %r898,%r904
    %r912 = mul i32 %r147,-93
    %r913 = add i32 %r905,%r912
    %r919 = mul i32 %r154,15
    %r920 = add i32 %r913,%r919
    %r926 = mul i32 %r161,79
    %r927 = add i32 %r920,%r926
    %r933 = mul i32 %r168,3
    %r934 = add i32 %r927,%r933
    %r940 = mul i32 %r176,49
    %r941 = add i32 %r934,%r940
    %r948 = mul i32 %r183,-124
    %r949 = add i32 %r941,%r948
    %r950 = call i32 @relu_reg(i32 %r949)
    %r953 = mul i32 %r950,-3
    %r954 = add i32 %r764,%r953
    %r960 = mul i32 %r4,81
    %r966 = mul i32 %r10,68
    %r967 = add i32 %r960,%r966
    %r974 = mul i32 %r17,-102
    %r975 = add i32 %r967,%r974
    %r982 = mul i32 %r25,-74
    %r983 = add i32 %r975,%r982
    %r989 = mul i32 %r33,121
    %r990 = add i32 %r983,%r989
    %r997 = mul i32 %r41,-15
    %r998 = add i32 %r990,%r997
    %r1004 = mul i32 %r48,55
    %r1005 = add i32 %r998,%r1004
    %r1011 = mul i32 %r56,101
    %r1012 = add i32 %r1005,%r1011
    %r1019 = mul i32 %r63,-13
    %r1020 = add i32 %r1012,%r1019
    %r1027 = mul i32 %r71,-62
    %r1028 = add i32 %r1020,%r1027
    %r1034 = mul i32 %r78,64
    %r1035 = add i32 %r1028,%r1034
    %r1041 = mul i32 %r86,114
    %r1042 = add i32 %r1035,%r1041
    %r1048 = mul i32 %r94,38
    %r1049 = add i32 %r1042,%r1048
    %r1056 = mul i32 %r102,-21
    %r1057 = add i32 %r1049,%r1056
    %r1063 = mul i32 %r110,112
    %r1064 = add i32 %r1057,%r1063
    %r1070 = mul i32 %r118,114
    %r1071 = add i32 %r1064,%r1070
    %r1077 = mul i32 %r125,112
    %r1078 = add i32 %r1071,%r1077
    %r1085 = mul i32 %r133,-10
    %r1086 = add i32 %r1078,%r1085
    %r1093 = mul i32 %r140,-16
    %r1094 = add i32 %r1086,%r1093
    %r1101 = mul i32 %r147,-50
    %r1102 = add i32 %r1094,%r1101
    %r1109 = mul i32 %r154,-112
    %r1110 = add i32 %r1102,%r1109
    %r1117 = mul i32 %r161,-116
    %r1118 = add i32 %r1110,%r1117
    %r1125 = mul i32 %r168,-54
    %r1126 = add i32 %r1118,%r1125
    %r1132 = mul i32 %r176,82
    %r1133 = add i32 %r1126,%r1132
    %r1140 = mul i32 %r183,-72
    %r1141 = add i32 %r1133,%r1140
    %r1142 = call i32 @relu_reg(i32 %r1141)
    %r1144 = mul i32 %r1142,32
    %r1145 = add i32 %r954,%r1144
    %r1151 = mul i32 %r4,15
    %r1158 = mul i32 %r10,-77
    %r1159 = add i32 %r1151,%r1158
    %r1165 = mul i32 %r17,66
    %r1166 = add i32 %r1159,%r1165
    %r1173 = mul i32 %r25,-90
    %r1174 = add i32 %r1166,%r1173
    %r1181 = mul i32 %r33,-6
    %r1182 = add i32 %r1174,%r1181
    %r1189 = mul i32 %r41,-30
    %r1190 = add i32 %r1182,%r1189
    %r1197 = mul i32 %r48,-8
    %r1198 = add i32 %r1190,%r1197
    %r1204 = mul i32 %r56,81
    %r1205 = add i32 %r1198,%r1204
    %r1211 = mul i32 %r63,2
    %r1212 = add i32 %r1205,%r1211
    %r1219 = mul i32 %r71,-110
    %r1220 = add i32 %r1212,%r1219
    %r1227 = mul i32 %r78,-95
    %r1228 = add i32 %r1220,%r1227
    %r1234 = mul i32 %r86,59
    %r1235 = add i32 %r1228,%r1234
    %r1241 = mul i32 %r94,52
    %r1242 = add i32 %r1235,%r1241
    %r1248 = mul i32 %r102,15
    %r1249 = add i32 %r1242,%r1248
    %r1255 = mul i32 %r110,55
    %r1256 = add i32 %r1249,%r1255
    %r1263 = mul i32 %r118,-33
    %r1264 = add i32 %r1256,%r1263
    %r1270 = mul i32 %r125,14
    %r1271 = add i32 %r1264,%r1270
    %r1277 = mul i32 %r133,58
    %r1278 = add i32 %r1271,%r1277
    %r1284 = mul i32 %r140,67
    %r1285 = add i32 %r1278,%r1284
    %r1291 = mul i32 %r147,86
    %r1292 = add i32 %r1285,%r1291
    %r1299 = mul i32 %r154,-79
    %r1300 = add i32 %r1292,%r1299
    %r1306 = mul i32 %r161,48
    %r1307 = add i32 %r1300,%r1306
    %r1314 = mul i32 %r168,-13
    %r1315 = add i32 %r1307,%r1314
    %r1322 = mul i32 %r176,-15
    %r1323 = add i32 %r1315,%r1322
    %r1329 = mul i32 %r183,66
    %r1330 = add i32 %r1323,%r1329
    %r1331 = call i32 @relu_reg(i32 %r1330)
    %r1334 = mul i32 %r1331,-95
    %r1335 = add i32 %r1145,%r1334
    %r1341 = mul i32 %r4,33
    %r1348 = add i32 %r1341,%r776
    %r1354 = mul i32 %r17,67
    %r1355 = add i32 %r1348,%r1354
    %r1361 = mul i32 %r25,30
    %r1362 = add i32 %r1355,%r1361
    %r1369 = mul i32 %r33,-2
    %r1370 = add i32 %r1362,%r1369
    %r1376 = mul i32 %r41,65
    %r1377 = add i32 %r1370,%r1376
    %r1383 = mul i32 %r48,120
    %r1384 = add i32 %r1377,%r1383
    %r1391 = mul i32 %r56,-13
    %r1392 = add i32 %r1384,%r1391
    %r1398 = mul i32 %r63,18
    %r1399 = add i32 %r1392,%r1398
    %r1405 = mul i32 %r71,5
    %r1406 = add i32 %r1399,%r1405
    %r1412 = mul i32 %r78,104
    %r1413 = add i32 %r1406,%r1412
    %r1420 = mul i32 %r86,-119
    %r1421 = add i32 %r1413,%r1420
    %r1428 = mul i32 %r94,-7
    %r1429 = add i32 %r1421,%r1428
    %r1435 = mul i32 %r102,71
    %r1436 = add i32 %r1429,%r1435
    %r1442 = mul i32 %r110,107
    %r1443 = add i32 %r1436,%r1442
    %r1449 = mul i32 %r118,24
    %r1450 = add i32 %r1443,%r1449
    %r1456 = mul i32 %r125,82
    %r1457 = add i32 %r1450,%r1456
    %r1464 = mul i32 %r133,-96
    %r1465 = add i32 %r1457,%r1464
    %r1472 = mul i32 %r140,-104
    %r1473 = add i32 %r1465,%r1472
    %r1480 = mul i32 %r147,-121
    %r1481 = add i32 %r1473,%r1480
    %r1488 = add i32 %r1481,%r538
    %r1494 = mul i32 %r161,97
    %r1495 = add i32 %r1488,%r1494
    %r1501 = mul i32 %r168,83
    %r1502 = add i32 %r1495,%r1501
    %r1508 = mul i32 %r176,46
    %r1509 = add i32 %r1502,%r1508
    %r1516 = mul i32 %r183,-84
    %r1517 = add i32 %r1509,%r1516
    %r1518 = call i32 @relu_reg(i32 %r1517)
    %r1521 = mul i32 %r1518,-50
    %r1522 = add i32 %r1335,%r1521
    %r1529 = mul i32 %r4,-29
    %r1535 = mul i32 %r10,7
    %r1536 = add i32 %r1529,%r1535
    %r1544 = add i32 %r1536,%r405
    %r1550 = mul i32 %r25,38
    %r1551 = add i32 %r1544,%r1550
    %r1558 = mul i32 %r33,-90
    %r1559 = add i32 %r1551,%r1558
    %r1567 = add i32 %r1559,%r997
    %r1574 = mul i32 %r48,-32
    %r1575 = add i32 %r1567,%r1574
    %r1581 = mul i32 %r56,37
    %r1582 = add i32 %r1575,%r1581
    %r1588 = mul i32 %r63,36
    %r1589 = add i32 %r1582,%r1588
    %r1597 = add i32 %r1589,%r1027
    %r1604 = mul i32 %r78,-125
    %r1605 = add i32 %r1597,%r1604
    %r1612 = mul i32 %r86,-46
    %r1613 = add i32 %r1605,%r1612
    %r1620 = mul i32 %r94,-70
    %r1621 = add i32 %r1613,%r1620
    %r1627 = mul i32 %r102,37
    %r1628 = add i32 %r1621,%r1627
    %r1635 = mul i32 %r110,-73
    %r1636 = add i32 %r1628,%r1635
    %r1643 = mul i32 %r118,-34
    %r1644 = add i32 %r1636,%r1643
    %r1651 = mul i32 %r125,-87
    %r1652 = add i32 %r1644,%r1651
    %r1659 = mul i32 %r133,-75
    %r1660 = add i32 %r1652,%r1659
    %r1666 = mul i32 %r140,71
    %r1667 = add i32 %r1660,%r1666
    %r1674 = mul i32 %r147,-77
    %r1675 = add i32 %r1667,%r1674
    %r1681 = mul i32 %r154,53
    %r1682 = add i32 %r1675,%r1681
    %r1688 = mul i32 %r161,37
    %r1689 = add i32 %r1682,%r1688
    %r1696 = mul i32 %r168,-103
    %r1697 = add i32 %r1689,%r1696
    %r1704 = mul i32 %r176,-13
    %r1705 = add i32 %r1697,%r1704
    %r1712 = mul i32 %r183,-114
    %r1713 = add i32 %r1705,%r1712
    %r1714 = call i32 @relu_reg(i32 %r1713)
    %r1717 = mul i32 %r1714,-23
    %r1718 = add i32 %r1522,%r1717
    %r1724 = mul i32 %r4,67
    %r1730 = mul i32 %r10,42
    %r1731 = add i32 %r1724,%r1730
    %r1737 = mul i32 %r17,41
    %r1738 = add i32 %r1731,%r1737
    %r1745 = mul i32 %r25,-123
    %r1746 = add i32 %r1738,%r1745
    %r1753 = mul i32 %r33,-92
    %r1754 = add i32 %r1746,%r1753
    %r1760 = mul i32 %r41,10
    %r1761 = add i32 %r1754,%r1760
    %r1768 = mul i32 %r48,-77
    %r1769 = add i32 %r1761,%r1768
    %r1775 = mul i32 %r56,75
    %r1776 = add i32 %r1769,%r1775
    %r1782 = mul i32 %r63,96
    %r1783 = add i32 %r1776,%r1782
    %r1790 = mul i32 %r71,-51
    %r1791 = add i32 %r1783,%r1790
    %r1797 = mul i32 %r78,109
    %r1798 = add i32 %r1791,%r1797
    %r1805 = mul i32 %r86,-74
    %r1806 = add i32 %r1798,%r1805
    %r1814 = add i32 %r1806,%r1428
    %r1821 = mul i32 %r102,-122
    %r1822 = add i32 %r1814,%r1821
    %r1828 = mul i32 %r110,67
    %r1829 = add i32 %r1822,%r1828
    %r1835 = mul i32 %r118,47
    %r1836 = add i32 %r1829,%r1835
    %r1842 = mul i32 %r125,22
    %r1843 = add i32 %r1836,%r1842
    %r1850 = mul i32 %r133,-68
    %r1851 = add i32 %r1843,%r1850
    %r1857 = mul i32 %r140,38
    %r1858 = add i32 %r1851,%r1857
    %r1864 = mul i32 %r147,29
    %r1865 = add i32 %r1858,%r1864
    %r1871 = mul i32 %r154,115
    %r1872 = add i32 %r1865,%r1871
    %r1879 = mul i32 %r161,-121
    %r1880 = add i32 %r1872,%r1879
    %r1886 = mul i32 %r168,36
    %r1887 = add i32 %r1880,%r1886
    %r1894 = mul i32 %r176,-49
    %r1895 = add i32 %r1887,%r1894
    %r1901 = mul i32 %r183,85
    %r1902 = add i32 %r1895,%r1901
    %r1903 = call i32 @relu_reg(i32 %r1902)
    %r1905 = mul i32 %r1903,46
    %r1906 = add i32 %r1718,%r1905
    %r1908 = icmp sgt i32 %r1906,0
    br i1 %r1908, label %L2, label %L3
L2:  ;
    br label %L4
L3:  ;
    br label %L4
L4:  ;
    %r1913 = phi i32 [1,%L2],[0,%L3]
    ret i32 %r1913
}
define i32 @main()
{
L0:  ;
    %r2 = alloca [5 x [5 x i32]]
    br label %L1
L1:  ;  preheader2
    %r1 = call i32 @getint()
    br label %L2
L2:  ;  exiting2  header2
    %r46 = phi i32 [%r1,%L1],[%r39,%L13]
    %r5 = icmp sgt i32 %r46,0
    br i1 %r5, label %L3, label %L4
L3:  ;  preheader1
    br label %L5
L4:  ;
    ret i32 0
L5:  ;  exiting1  header1
    %r45 = phi i32 [0,%L3],[%r25,%L10]
    %r10 = icmp slt i32 %r45,5
    br i1 %r10, label %L6, label %L7
L6:  ;  preheader0
    br label %L8
L7:  ;
    %r26 = getelementptr [5 x [5 x i32]], ptr %r2, i32 0
    %r27 = call i32 @model(ptr %r26)
    %r28 = icmp ne i32 %r27,0
    br i1 %r28, label %L11, label %L12
L8:  ;  exiting0  header0
    %r43 = phi i32 [0,%L6],[%r22,%L9]
    %r15 = icmp slt i32 %r43,5
    br i1 %r15, label %L9, label %L10
L9:  ;  latch0
    %r18 = getelementptr [5 x [5 x i32]], ptr %r2, i32 0, i32 %r45, i32 %r43
    %r19 = call i32 @getint()
    store i32 %r19, ptr %r18
    %r22 = add i32 %r43,1
    br label %L8
L10:  ;  latch1
    %r25 = add i32 %r45,1
    br label %L5
L11:  ;
    call void @putch(i32 99)
    call void @putch(i32 97)
    call void @putch(i32 116)
    call void @putch(i32 10)
    br label %L13
L12:  ;
    call void @putch(i32 100)
    call void @putch(i32 111)
    call void @putch(i32 103)
    call void @putch(i32 10)
    br label %L13
L13:  ;  latch2
    %r39 = sub i32 %r46,1
    br label %L2
}
