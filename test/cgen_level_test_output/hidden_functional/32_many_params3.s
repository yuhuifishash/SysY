.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
func:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	movw r9,#5380
	movt r9,#0  @ 5380
	sub sp,sp,r9
.funcL0:
	mov r9,r0
	str r9,[fp,#-2728]
	mov r9,r1
	str r9,[fp,#-2724]
	mov r9,r2
	str r9,[fp,#-2720]
	mov r9,r3
	str r9,[fp,#-2716]
	ldr r9,[fp,#2716]
	movw r10,#60156
	movt r10,#65535  @ -5380
	str r9,[fp,r10]
	ldr r9,[fp,#2712]
	movw r10,#60160
	movt r10,#65535  @ -5376
	str r9,[fp,r10]
	ldr r9,[fp,#2708]
	movw r10,#60164
	movt r10,#65535  @ -5372
	str r9,[fp,r10]
	ldr r9,[fp,#2704]
	movw r10,#60168
	movt r10,#65535  @ -5368
	str r9,[fp,r10]
	ldr r9,[fp,#2700]
	movw r10,#60172
	movt r10,#65535  @ -5364
	str r9,[fp,r10]
	ldr r9,[fp,#2696]
	movw r10,#60176
	movt r10,#65535  @ -5360
	str r9,[fp,r10]
	ldr r9,[fp,#2692]
	movw r10,#60180
	movt r10,#65535  @ -5356
	str r9,[fp,r10]
	ldr r9,[fp,#2688]
	movw r10,#60184
	movt r10,#65535  @ -5352
	str r9,[fp,r10]
	ldr r9,[fp,#2684]
	movw r10,#60188
	movt r10,#65535  @ -5348
	str r9,[fp,r10]
	ldr r9,[fp,#2680]
	movw r10,#60192
	movt r10,#65535  @ -5344
	str r9,[fp,r10]
	ldr r9,[fp,#2676]
	movw r10,#60196
	movt r10,#65535  @ -5340
	str r9,[fp,r10]
	ldr r9,[fp,#2672]
	movw r10,#60200
	movt r10,#65535  @ -5336
	str r9,[fp,r10]
	ldr r9,[fp,#2668]
	movw r10,#60204
	movt r10,#65535  @ -5332
	str r9,[fp,r10]
	ldr r9,[fp,#2664]
	movw r10,#60208
	movt r10,#65535  @ -5328
	str r9,[fp,r10]
	ldr r9,[fp,#2660]
	movw r10,#60212
	movt r10,#65535  @ -5324
	str r9,[fp,r10]
	ldr r9,[fp,#2656]
	movw r10,#60216
	movt r10,#65535  @ -5320
	str r9,[fp,r10]
	ldr r9,[fp,#2652]
	movw r10,#60220
	movt r10,#65535  @ -5316
	str r9,[fp,r10]
	ldr r9,[fp,#2648]
	movw r10,#60224
	movt r10,#65535  @ -5312
	str r9,[fp,r10]
	ldr r9,[fp,#2644]
	movw r10,#60228
	movt r10,#65535  @ -5308
	str r9,[fp,r10]
	ldr r9,[fp,#2640]
	movw r10,#60232
	movt r10,#65535  @ -5304
	str r9,[fp,r10]
	ldr r9,[fp,#2636]
	movw r10,#60236
	movt r10,#65535  @ -5300
	str r9,[fp,r10]
	ldr r9,[fp,#2632]
	movw r10,#60240
	movt r10,#65535  @ -5296
	str r9,[fp,r10]
	ldr r9,[fp,#2628]
	movw r10,#60244
	movt r10,#65535  @ -5292
	str r9,[fp,r10]
	ldr r9,[fp,#2624]
	movw r10,#60248
	movt r10,#65535  @ -5288
	str r9,[fp,r10]
	ldr r9,[fp,#2620]
	movw r10,#60252
	movt r10,#65535  @ -5284
	str r9,[fp,r10]
	ldr r9,[fp,#2616]
	movw r10,#60256
	movt r10,#65535  @ -5280
	str r9,[fp,r10]
	ldr r9,[fp,#2612]
	movw r10,#60260
	movt r10,#65535  @ -5276
	str r9,[fp,r10]
	ldr r9,[fp,#2608]
	movw r10,#60264
	movt r10,#65535  @ -5272
	str r9,[fp,r10]
	ldr r9,[fp,#2604]
	movw r10,#60268
	movt r10,#65535  @ -5268
	str r9,[fp,r10]
	ldr r9,[fp,#2600]
	movw r10,#60272
	movt r10,#65535  @ -5264
	str r9,[fp,r10]
	ldr r9,[fp,#2596]
	movw r10,#60276
	movt r10,#65535  @ -5260
	str r9,[fp,r10]
	ldr r9,[fp,#2592]
	movw r10,#60280
	movt r10,#65535  @ -5256
	str r9,[fp,r10]
	ldr r9,[fp,#2588]
	movw r10,#60284
	movt r10,#65535  @ -5252
	str r9,[fp,r10]
	ldr r9,[fp,#2584]
	movw r10,#60288
	movt r10,#65535  @ -5248
	str r9,[fp,r10]
	ldr r9,[fp,#2580]
	movw r10,#60292
	movt r10,#65535  @ -5244
	str r9,[fp,r10]
	ldr r9,[fp,#2576]
	movw r10,#60296
	movt r10,#65535  @ -5240
	str r9,[fp,r10]
	ldr r9,[fp,#2572]
	movw r10,#60300
	movt r10,#65535  @ -5236
	str r9,[fp,r10]
	ldr r9,[fp,#2568]
	movw r10,#60304
	movt r10,#65535  @ -5232
	str r9,[fp,r10]
	ldr r9,[fp,#2564]
	movw r10,#60308
	movt r10,#65535  @ -5228
	str r9,[fp,r10]
	ldr r9,[fp,#2560]
	movw r10,#60312
	movt r10,#65535  @ -5224
	str r9,[fp,r10]
	ldr r9,[fp,#2556]
	movw r10,#60316
	movt r10,#65535  @ -5220
	str r9,[fp,r10]
	ldr r9,[fp,#2552]
	movw r10,#60320
	movt r10,#65535  @ -5216
	str r9,[fp,r10]
	ldr r9,[fp,#2548]
	movw r10,#60324
	movt r10,#65535  @ -5212
	str r9,[fp,r10]
	ldr r9,[fp,#2544]
	movw r10,#60328
	movt r10,#65535  @ -5208
	str r9,[fp,r10]
	ldr r9,[fp,#2540]
	movw r10,#60332
	movt r10,#65535  @ -5204
	str r9,[fp,r10]
	ldr r9,[fp,#2536]
	movw r10,#60336
	movt r10,#65535  @ -5200
	str r9,[fp,r10]
	ldr r9,[fp,#2532]
	movw r10,#60340
	movt r10,#65535  @ -5196
	str r9,[fp,r10]
	ldr r9,[fp,#2528]
	movw r10,#60344
	movt r10,#65535  @ -5192
	str r9,[fp,r10]
	ldr r9,[fp,#2524]
	movw r10,#60348
	movt r10,#65535  @ -5188
	str r9,[fp,r10]
	ldr r9,[fp,#2520]
	movw r10,#60352
	movt r10,#65535  @ -5184
	str r9,[fp,r10]
	ldr r9,[fp,#2516]
	movw r10,#60356
	movt r10,#65535  @ -5180
	str r9,[fp,r10]
	ldr r9,[fp,#2512]
	movw r10,#60360
	movt r10,#65535  @ -5176
	str r9,[fp,r10]
	ldr r9,[fp,#2508]
	movw r10,#60364
	movt r10,#65535  @ -5172
	str r9,[fp,r10]
	ldr r9,[fp,#2504]
	movw r10,#60368
	movt r10,#65535  @ -5168
	str r9,[fp,r10]
	ldr r9,[fp,#2500]
	movw r10,#60372
	movt r10,#65535  @ -5164
	str r9,[fp,r10]
	ldr r9,[fp,#2496]
	movw r10,#60376
	movt r10,#65535  @ -5160
	str r9,[fp,r10]
	ldr r9,[fp,#2492]
	movw r10,#60380
	movt r10,#65535  @ -5156
	str r9,[fp,r10]
	ldr r9,[fp,#2488]
	movw r10,#60384
	movt r10,#65535  @ -5152
	str r9,[fp,r10]
	ldr r9,[fp,#2484]
	movw r10,#60388
	movt r10,#65535  @ -5148
	str r9,[fp,r10]
	ldr r9,[fp,#2480]
	movw r10,#60392
	movt r10,#65535  @ -5144
	str r9,[fp,r10]
	ldr r9,[fp,#2476]
	movw r10,#60396
	movt r10,#65535  @ -5140
	str r9,[fp,r10]
	ldr r9,[fp,#2472]
	movw r10,#60400
	movt r10,#65535  @ -5136
	str r9,[fp,r10]
	ldr r9,[fp,#2468]
	movw r10,#60404
	movt r10,#65535  @ -5132
	str r9,[fp,r10]
	ldr r9,[fp,#2464]
	movw r10,#60408
	movt r10,#65535  @ -5128
	str r9,[fp,r10]
	ldr r9,[fp,#2460]
	movw r10,#60412
	movt r10,#65535  @ -5124
	str r9,[fp,r10]
	ldr r9,[fp,#2456]
	movw r10,#60416
	movt r10,#65535  @ -5120
	str r9,[fp,r10]
	ldr r9,[fp,#2452]
	movw r10,#60420
	movt r10,#65535  @ -5116
	str r9,[fp,r10]
	ldr r9,[fp,#2448]
	movw r10,#60424
	movt r10,#65535  @ -5112
	str r9,[fp,r10]
	ldr r9,[fp,#2444]
	movw r10,#60428
	movt r10,#65535  @ -5108
	str r9,[fp,r10]
	ldr r9,[fp,#2440]
	movw r10,#60432
	movt r10,#65535  @ -5104
	str r9,[fp,r10]
	ldr r9,[fp,#2436]
	movw r10,#60436
	movt r10,#65535  @ -5100
	str r9,[fp,r10]
	ldr r9,[fp,#2432]
	movw r10,#60440
	movt r10,#65535  @ -5096
	str r9,[fp,r10]
	ldr r9,[fp,#2428]
	movw r10,#60444
	movt r10,#65535  @ -5092
	str r9,[fp,r10]
	ldr r9,[fp,#2424]
	movw r10,#60448
	movt r10,#65535  @ -5088
	str r9,[fp,r10]
	ldr r9,[fp,#2420]
	movw r10,#60452
	movt r10,#65535  @ -5084
	str r9,[fp,r10]
	ldr r9,[fp,#2416]
	movw r10,#60456
	movt r10,#65535  @ -5080
	str r9,[fp,r10]
	ldr r9,[fp,#2412]
	movw r10,#60460
	movt r10,#65535  @ -5076
	str r9,[fp,r10]
	ldr r9,[fp,#2408]
	movw r10,#60464
	movt r10,#65535  @ -5072
	str r9,[fp,r10]
	ldr r9,[fp,#2404]
	movw r10,#60468
	movt r10,#65535  @ -5068
	str r9,[fp,r10]
	ldr r9,[fp,#2400]
	movw r10,#60472
	movt r10,#65535  @ -5064
	str r9,[fp,r10]
	ldr r9,[fp,#2396]
	movw r10,#60476
	movt r10,#65535  @ -5060
	str r9,[fp,r10]
	ldr r9,[fp,#2392]
	movw r10,#60480
	movt r10,#65535  @ -5056
	str r9,[fp,r10]
	ldr r9,[fp,#2388]
	movw r10,#60484
	movt r10,#65535  @ -5052
	str r9,[fp,r10]
	ldr r9,[fp,#2384]
	movw r10,#60488
	movt r10,#65535  @ -5048
	str r9,[fp,r10]
	ldr r9,[fp,#2380]
	movw r10,#60492
	movt r10,#65535  @ -5044
	str r9,[fp,r10]
	ldr r9,[fp,#2376]
	movw r10,#60496
	movt r10,#65535  @ -5040
	str r9,[fp,r10]
	ldr r9,[fp,#2372]
	movw r10,#60500
	movt r10,#65535  @ -5036
	str r9,[fp,r10]
	ldr r9,[fp,#2368]
	movw r10,#60504
	movt r10,#65535  @ -5032
	str r9,[fp,r10]
	ldr r9,[fp,#2364]
	movw r10,#60508
	movt r10,#65535  @ -5028
	str r9,[fp,r10]
	ldr r9,[fp,#2360]
	movw r10,#60512
	movt r10,#65535  @ -5024
	str r9,[fp,r10]
	ldr r9,[fp,#2356]
	movw r10,#60516
	movt r10,#65535  @ -5020
	str r9,[fp,r10]
	ldr r9,[fp,#2352]
	movw r10,#60520
	movt r10,#65535  @ -5016
	str r9,[fp,r10]
	ldr r9,[fp,#2348]
	movw r10,#60524
	movt r10,#65535  @ -5012
	str r9,[fp,r10]
	ldr r9,[fp,#2344]
	movw r10,#60528
	movt r10,#65535  @ -5008
	str r9,[fp,r10]
	ldr r9,[fp,#2340]
	movw r10,#60532
	movt r10,#65535  @ -5004
	str r9,[fp,r10]
	ldr r9,[fp,#2336]
	movw r10,#60536
	movt r10,#65535  @ -5000
	str r9,[fp,r10]
	ldr r9,[fp,#2332]
	movw r10,#60540
	movt r10,#65535  @ -4996
	str r9,[fp,r10]
	ldr r9,[fp,#2328]
	movw r10,#60544
	movt r10,#65535  @ -4992
	str r9,[fp,r10]
	ldr r9,[fp,#2324]
	movw r10,#60548
	movt r10,#65535  @ -4988
	str r9,[fp,r10]
	ldr r9,[fp,#2320]
	movw r10,#60552
	movt r10,#65535  @ -4984
	str r9,[fp,r10]
	ldr r9,[fp,#2316]
	movw r10,#60556
	movt r10,#65535  @ -4980
	str r9,[fp,r10]
	ldr r9,[fp,#2312]
	movw r10,#60560
	movt r10,#65535  @ -4976
	str r9,[fp,r10]
	ldr r9,[fp,#2308]
	movw r10,#60564
	movt r10,#65535  @ -4972
	str r9,[fp,r10]
	ldr r9,[fp,#2304]
	movw r10,#60568
	movt r10,#65535  @ -4968
	str r9,[fp,r10]
	ldr r9,[fp,#2300]
	movw r10,#60572
	movt r10,#65535  @ -4964
	str r9,[fp,r10]
	ldr r9,[fp,#2296]
	movw r10,#60576
	movt r10,#65535  @ -4960
	str r9,[fp,r10]
	ldr r9,[fp,#2292]
	movw r10,#60580
	movt r10,#65535  @ -4956
	str r9,[fp,r10]
	ldr r9,[fp,#2288]
	movw r10,#60584
	movt r10,#65535  @ -4952
	str r9,[fp,r10]
	ldr r9,[fp,#2284]
	movw r10,#60588
	movt r10,#65535  @ -4948
	str r9,[fp,r10]
	ldr r9,[fp,#2280]
	movw r10,#60592
	movt r10,#65535  @ -4944
	str r9,[fp,r10]
	ldr r9,[fp,#2276]
	movw r10,#60596
	movt r10,#65535  @ -4940
	str r9,[fp,r10]
	ldr r9,[fp,#2272]
	movw r10,#60600
	movt r10,#65535  @ -4936
	str r9,[fp,r10]
	ldr r9,[fp,#2268]
	movw r10,#60604
	movt r10,#65535  @ -4932
	str r9,[fp,r10]
	ldr r9,[fp,#2264]
	movw r10,#60608
	movt r10,#65535  @ -4928
	str r9,[fp,r10]
	ldr r9,[fp,#2260]
	movw r10,#60612
	movt r10,#65535  @ -4924
	str r9,[fp,r10]
	ldr r9,[fp,#2256]
	movw r10,#60616
	movt r10,#65535  @ -4920
	str r9,[fp,r10]
	ldr r9,[fp,#2252]
	movw r10,#60620
	movt r10,#65535  @ -4916
	str r9,[fp,r10]
	ldr r9,[fp,#2248]
	movw r10,#60624
	movt r10,#65535  @ -4912
	str r9,[fp,r10]
	ldr r9,[fp,#2244]
	movw r10,#60628
	movt r10,#65535  @ -4908
	str r9,[fp,r10]
	ldr r9,[fp,#2240]
	movw r10,#60632
	movt r10,#65535  @ -4904
	str r9,[fp,r10]
	ldr r9,[fp,#2236]
	movw r10,#60636
	movt r10,#65535  @ -4900
	str r9,[fp,r10]
	ldr r9,[fp,#2232]
	movw r10,#60640
	movt r10,#65535  @ -4896
	str r9,[fp,r10]
	ldr r9,[fp,#2228]
	movw r10,#60644
	movt r10,#65535  @ -4892
	str r9,[fp,r10]
	ldr r9,[fp,#2224]
	movw r10,#60648
	movt r10,#65535  @ -4888
	str r9,[fp,r10]
	ldr r9,[fp,#2220]
	movw r10,#60652
	movt r10,#65535  @ -4884
	str r9,[fp,r10]
	ldr r9,[fp,#2216]
	movw r10,#60656
	movt r10,#65535  @ -4880
	str r9,[fp,r10]
	ldr r9,[fp,#2212]
	movw r10,#60660
	movt r10,#65535  @ -4876
	str r9,[fp,r10]
	ldr r9,[fp,#2208]
	movw r10,#60664
	movt r10,#65535  @ -4872
	str r9,[fp,r10]
	ldr r9,[fp,#2204]
	movw r10,#60668
	movt r10,#65535  @ -4868
	str r9,[fp,r10]
	ldr r9,[fp,#2200]
	movw r10,#60672
	movt r10,#65535  @ -4864
	str r9,[fp,r10]
	ldr r9,[fp,#2196]
	movw r10,#60676
	movt r10,#65535  @ -4860
	str r9,[fp,r10]
	ldr r9,[fp,#2192]
	movw r10,#60680
	movt r10,#65535  @ -4856
	str r9,[fp,r10]
	ldr r9,[fp,#2188]
	movw r10,#60684
	movt r10,#65535  @ -4852
	str r9,[fp,r10]
	ldr r9,[fp,#2184]
	movw r10,#60688
	movt r10,#65535  @ -4848
	str r9,[fp,r10]
	ldr r9,[fp,#2180]
	movw r10,#60692
	movt r10,#65535  @ -4844
	str r9,[fp,r10]
	ldr r9,[fp,#2176]
	movw r10,#60696
	movt r10,#65535  @ -4840
	str r9,[fp,r10]
	ldr r9,[fp,#2172]
	movw r10,#60700
	movt r10,#65535  @ -4836
	str r9,[fp,r10]
	ldr r9,[fp,#2168]
	movw r10,#60704
	movt r10,#65535  @ -4832
	str r9,[fp,r10]
	ldr r9,[fp,#2164]
	movw r10,#60708
	movt r10,#65535  @ -4828
	str r9,[fp,r10]
	ldr r9,[fp,#2160]
	movw r10,#60712
	movt r10,#65535  @ -4824
	str r9,[fp,r10]
	ldr r9,[fp,#2156]
	movw r10,#60716
	movt r10,#65535  @ -4820
	str r9,[fp,r10]
	ldr r9,[fp,#2152]
	movw r10,#60720
	movt r10,#65535  @ -4816
	str r9,[fp,r10]
	ldr r9,[fp,#2148]
	movw r10,#60724
	movt r10,#65535  @ -4812
	str r9,[fp,r10]
	ldr r9,[fp,#2144]
	movw r10,#60728
	movt r10,#65535  @ -4808
	str r9,[fp,r10]
	ldr r9,[fp,#2140]
	movw r10,#60732
	movt r10,#65535  @ -4804
	str r9,[fp,r10]
	ldr r9,[fp,#2136]
	movw r10,#60736
	movt r10,#65535  @ -4800
	str r9,[fp,r10]
	ldr r9,[fp,#2132]
	movw r10,#60740
	movt r10,#65535  @ -4796
	str r9,[fp,r10]
	ldr r9,[fp,#2128]
	movw r10,#60744
	movt r10,#65535  @ -4792
	str r9,[fp,r10]
	ldr r9,[fp,#2124]
	movw r10,#60748
	movt r10,#65535  @ -4788
	str r9,[fp,r10]
	ldr r9,[fp,#2120]
	movw r10,#60752
	movt r10,#65535  @ -4784
	str r9,[fp,r10]
	ldr r9,[fp,#2116]
	movw r10,#60756
	movt r10,#65535  @ -4780
	str r9,[fp,r10]
	ldr r9,[fp,#2112]
	movw r10,#60760
	movt r10,#65535  @ -4776
	str r9,[fp,r10]
	ldr r9,[fp,#2108]
	movw r10,#60764
	movt r10,#65535  @ -4772
	str r9,[fp,r10]
	ldr r9,[fp,#2104]
	movw r10,#60768
	movt r10,#65535  @ -4768
	str r9,[fp,r10]
	ldr r9,[fp,#2100]
	movw r10,#60772
	movt r10,#65535  @ -4764
	str r9,[fp,r10]
	ldr r9,[fp,#2096]
	movw r10,#60776
	movt r10,#65535  @ -4760
	str r9,[fp,r10]
	ldr r9,[fp,#2092]
	movw r10,#60780
	movt r10,#65535  @ -4756
	str r9,[fp,r10]
	ldr r9,[fp,#2088]
	movw r10,#60784
	movt r10,#65535  @ -4752
	str r9,[fp,r10]
	ldr r9,[fp,#2084]
	movw r10,#60788
	movt r10,#65535  @ -4748
	str r9,[fp,r10]
	ldr r9,[fp,#2080]
	movw r10,#60792
	movt r10,#65535  @ -4744
	str r9,[fp,r10]
	ldr r9,[fp,#2076]
	movw r10,#60796
	movt r10,#65535  @ -4740
	str r9,[fp,r10]
	ldr r9,[fp,#2072]
	movw r10,#60800
	movt r10,#65535  @ -4736
	str r9,[fp,r10]
	ldr r9,[fp,#2068]
	movw r10,#60804
	movt r10,#65535  @ -4732
	str r9,[fp,r10]
	ldr r9,[fp,#2064]
	movw r10,#60808
	movt r10,#65535  @ -4728
	str r9,[fp,r10]
	ldr r9,[fp,#2060]
	movw r10,#60812
	movt r10,#65535  @ -4724
	str r9,[fp,r10]
	ldr r9,[fp,#2056]
	movw r10,#60816
	movt r10,#65535  @ -4720
	str r9,[fp,r10]
	ldr r9,[fp,#2052]
	movw r10,#60820
	movt r10,#65535  @ -4716
	str r9,[fp,r10]
	ldr r9,[fp,#2048]
	movw r10,#60824
	movt r10,#65535  @ -4712
	str r9,[fp,r10]
	ldr r9,[fp,#2044]
	movw r10,#60828
	movt r10,#65535  @ -4708
	str r9,[fp,r10]
	ldr r9,[fp,#2040]
	movw r10,#60832
	movt r10,#65535  @ -4704
	str r9,[fp,r10]
	ldr r9,[fp,#2036]
	movw r10,#60836
	movt r10,#65535  @ -4700
	str r9,[fp,r10]
	ldr r9,[fp,#2032]
	movw r10,#60840
	movt r10,#65535  @ -4696
	str r9,[fp,r10]
	ldr r9,[fp,#2028]
	movw r10,#60844
	movt r10,#65535  @ -4692
	str r9,[fp,r10]
	ldr r9,[fp,#2024]
	movw r10,#60848
	movt r10,#65535  @ -4688
	str r9,[fp,r10]
	ldr r9,[fp,#2020]
	movw r10,#60852
	movt r10,#65535  @ -4684
	str r9,[fp,r10]
	ldr r9,[fp,#2016]
	movw r10,#60856
	movt r10,#65535  @ -4680
	str r9,[fp,r10]
	ldr r9,[fp,#2012]
	movw r10,#60860
	movt r10,#65535  @ -4676
	str r9,[fp,r10]
	ldr r9,[fp,#2008]
	movw r10,#60864
	movt r10,#65535  @ -4672
	str r9,[fp,r10]
	ldr r9,[fp,#2004]
	movw r10,#60868
	movt r10,#65535  @ -4668
	str r9,[fp,r10]
	ldr r9,[fp,#2000]
	movw r10,#60872
	movt r10,#65535  @ -4664
	str r9,[fp,r10]
	ldr r9,[fp,#1996]
	movw r10,#60876
	movt r10,#65535  @ -4660
	str r9,[fp,r10]
	ldr r9,[fp,#1992]
	movw r10,#60880
	movt r10,#65535  @ -4656
	str r9,[fp,r10]
	ldr r9,[fp,#1988]
	movw r10,#60884
	movt r10,#65535  @ -4652
	str r9,[fp,r10]
	ldr r9,[fp,#1984]
	movw r10,#60888
	movt r10,#65535  @ -4648
	str r9,[fp,r10]
	ldr r9,[fp,#1980]
	movw r10,#60892
	movt r10,#65535  @ -4644
	str r9,[fp,r10]
	ldr r9,[fp,#1976]
	movw r10,#60896
	movt r10,#65535  @ -4640
	str r9,[fp,r10]
	ldr r9,[fp,#1972]
	movw r10,#60900
	movt r10,#65535  @ -4636
	str r9,[fp,r10]
	ldr r9,[fp,#1968]
	movw r10,#60904
	movt r10,#65535  @ -4632
	str r9,[fp,r10]
	ldr r9,[fp,#1964]
	movw r10,#60908
	movt r10,#65535  @ -4628
	str r9,[fp,r10]
	ldr r9,[fp,#1960]
	movw r10,#60912
	movt r10,#65535  @ -4624
	str r9,[fp,r10]
	ldr r9,[fp,#1956]
	movw r10,#60916
	movt r10,#65535  @ -4620
	str r9,[fp,r10]
	ldr r9,[fp,#1952]
	movw r10,#60920
	movt r10,#65535  @ -4616
	str r9,[fp,r10]
	ldr r9,[fp,#1948]
	movw r10,#60924
	movt r10,#65535  @ -4612
	str r9,[fp,r10]
	ldr r9,[fp,#1944]
	movw r10,#60928
	movt r10,#65535  @ -4608
	str r9,[fp,r10]
	ldr r9,[fp,#1940]
	movw r10,#60932
	movt r10,#65535  @ -4604
	str r9,[fp,r10]
	ldr r9,[fp,#1936]
	movw r10,#60936
	movt r10,#65535  @ -4600
	str r9,[fp,r10]
	ldr r9,[fp,#1932]
	movw r10,#60940
	movt r10,#65535  @ -4596
	str r9,[fp,r10]
	ldr r9,[fp,#1928]
	movw r10,#60944
	movt r10,#65535  @ -4592
	str r9,[fp,r10]
	ldr r9,[fp,#1924]
	movw r10,#60948
	movt r10,#65535  @ -4588
	str r9,[fp,r10]
	ldr r9,[fp,#1920]
	movw r10,#60952
	movt r10,#65535  @ -4584
	str r9,[fp,r10]
	ldr r9,[fp,#1916]
	movw r10,#60956
	movt r10,#65535  @ -4580
	str r9,[fp,r10]
	ldr r9,[fp,#1912]
	movw r10,#60960
	movt r10,#65535  @ -4576
	str r9,[fp,r10]
	ldr r9,[fp,#1908]
	movw r10,#60964
	movt r10,#65535  @ -4572
	str r9,[fp,r10]
	ldr r9,[fp,#1904]
	movw r10,#60968
	movt r10,#65535  @ -4568
	str r9,[fp,r10]
	ldr r9,[fp,#1900]
	movw r10,#60972
	movt r10,#65535  @ -4564
	str r9,[fp,r10]
	ldr r9,[fp,#1896]
	movw r10,#60976
	movt r10,#65535  @ -4560
	str r9,[fp,r10]
	ldr r9,[fp,#1892]
	movw r10,#60980
	movt r10,#65535  @ -4556
	str r9,[fp,r10]
	ldr r9,[fp,#1888]
	movw r10,#60984
	movt r10,#65535  @ -4552
	str r9,[fp,r10]
	ldr r9,[fp,#1884]
	movw r10,#60988
	movt r10,#65535  @ -4548
	str r9,[fp,r10]
	ldr r9,[fp,#1880]
	movw r10,#60992
	movt r10,#65535  @ -4544
	str r9,[fp,r10]
	ldr r9,[fp,#1876]
	movw r10,#60996
	movt r10,#65535  @ -4540
	str r9,[fp,r10]
	ldr r9,[fp,#1872]
	movw r10,#61000
	movt r10,#65535  @ -4536
	str r9,[fp,r10]
	ldr r9,[fp,#1868]
	movw r10,#61004
	movt r10,#65535  @ -4532
	str r9,[fp,r10]
	ldr r9,[fp,#1864]
	movw r10,#61008
	movt r10,#65535  @ -4528
	str r9,[fp,r10]
	ldr r9,[fp,#1860]
	movw r10,#61012
	movt r10,#65535  @ -4524
	str r9,[fp,r10]
	ldr r9,[fp,#1856]
	movw r10,#61016
	movt r10,#65535  @ -4520
	str r9,[fp,r10]
	ldr r9,[fp,#1852]
	movw r10,#61020
	movt r10,#65535  @ -4516
	str r9,[fp,r10]
	ldr r9,[fp,#1848]
	movw r10,#61024
	movt r10,#65535  @ -4512
	str r9,[fp,r10]
	ldr r9,[fp,#1844]
	movw r10,#61028
	movt r10,#65535  @ -4508
	str r9,[fp,r10]
	ldr r9,[fp,#1840]
	movw r10,#61032
	movt r10,#65535  @ -4504
	str r9,[fp,r10]
	ldr r9,[fp,#1836]
	movw r10,#61036
	movt r10,#65535  @ -4500
	str r9,[fp,r10]
	ldr r9,[fp,#1832]
	movw r10,#61040
	movt r10,#65535  @ -4496
	str r9,[fp,r10]
	ldr r9,[fp,#1828]
	movw r10,#61044
	movt r10,#65535  @ -4492
	str r9,[fp,r10]
	ldr r9,[fp,#1824]
	movw r10,#61048
	movt r10,#65535  @ -4488
	str r9,[fp,r10]
	ldr r9,[fp,#1820]
	movw r10,#61052
	movt r10,#65535  @ -4484
	str r9,[fp,r10]
	ldr r9,[fp,#1816]
	movw r10,#61056
	movt r10,#65535  @ -4480
	str r9,[fp,r10]
	ldr r9,[fp,#1812]
	movw r10,#61060
	movt r10,#65535  @ -4476
	str r9,[fp,r10]
	ldr r9,[fp,#1808]
	movw r10,#61064
	movt r10,#65535  @ -4472
	str r9,[fp,r10]
	ldr r9,[fp,#1804]
	movw r10,#61068
	movt r10,#65535  @ -4468
	str r9,[fp,r10]
	ldr r9,[fp,#1800]
	movw r10,#61072
	movt r10,#65535  @ -4464
	str r9,[fp,r10]
	ldr r9,[fp,#1796]
	movw r10,#61076
	movt r10,#65535  @ -4460
	str r9,[fp,r10]
	ldr r9,[fp,#1792]
	movw r10,#61080
	movt r10,#65535  @ -4456
	str r9,[fp,r10]
	ldr r9,[fp,#1788]
	movw r10,#61084
	movt r10,#65535  @ -4452
	str r9,[fp,r10]
	ldr r9,[fp,#1784]
	movw r10,#61088
	movt r10,#65535  @ -4448
	str r9,[fp,r10]
	ldr r9,[fp,#1780]
	movw r10,#61092
	movt r10,#65535  @ -4444
	str r9,[fp,r10]
	ldr r9,[fp,#1776]
	movw r10,#61096
	movt r10,#65535  @ -4440
	str r9,[fp,r10]
	ldr r9,[fp,#1772]
	movw r10,#61100
	movt r10,#65535  @ -4436
	str r9,[fp,r10]
	ldr r9,[fp,#1768]
	movw r10,#61104
	movt r10,#65535  @ -4432
	str r9,[fp,r10]
	ldr r9,[fp,#1764]
	movw r10,#61108
	movt r10,#65535  @ -4428
	str r9,[fp,r10]
	ldr r9,[fp,#1760]
	movw r10,#61112
	movt r10,#65535  @ -4424
	str r9,[fp,r10]
	ldr r9,[fp,#1756]
	movw r10,#61116
	movt r10,#65535  @ -4420
	str r9,[fp,r10]
	ldr r9,[fp,#1752]
	movw r10,#61120
	movt r10,#65535  @ -4416
	str r9,[fp,r10]
	ldr r9,[fp,#1748]
	movw r10,#61124
	movt r10,#65535  @ -4412
	str r9,[fp,r10]
	ldr r9,[fp,#1744]
	movw r10,#61128
	movt r10,#65535  @ -4408
	str r9,[fp,r10]
	ldr r9,[fp,#1740]
	movw r10,#61132
	movt r10,#65535  @ -4404
	str r9,[fp,r10]
	ldr r9,[fp,#1736]
	movw r10,#61136
	movt r10,#65535  @ -4400
	str r9,[fp,r10]
	ldr r9,[fp,#1732]
	movw r10,#61140
	movt r10,#65535  @ -4396
	str r9,[fp,r10]
	ldr r9,[fp,#1728]
	movw r10,#61144
	movt r10,#65535  @ -4392
	str r9,[fp,r10]
	ldr r9,[fp,#1724]
	movw r10,#61148
	movt r10,#65535  @ -4388
	str r9,[fp,r10]
	ldr r9,[fp,#1720]
	movw r10,#61152
	movt r10,#65535  @ -4384
	str r9,[fp,r10]
	ldr r9,[fp,#1716]
	movw r10,#61156
	movt r10,#65535  @ -4380
	str r9,[fp,r10]
	ldr r9,[fp,#1712]
	movw r10,#61160
	movt r10,#65535  @ -4376
	str r9,[fp,r10]
	ldr r9,[fp,#1708]
	movw r10,#61164
	movt r10,#65535  @ -4372
	str r9,[fp,r10]
	ldr r9,[fp,#1704]
	movw r10,#61168
	movt r10,#65535  @ -4368
	str r9,[fp,r10]
	ldr r9,[fp,#1700]
	movw r10,#61172
	movt r10,#65535  @ -4364
	str r9,[fp,r10]
	ldr r9,[fp,#1696]
	movw r10,#61176
	movt r10,#65535  @ -4360
	str r9,[fp,r10]
	ldr r9,[fp,#1692]
	movw r10,#61180
	movt r10,#65535  @ -4356
	str r9,[fp,r10]
	ldr r9,[fp,#1688]
	movw r10,#61184
	movt r10,#65535  @ -4352
	str r9,[fp,r10]
	ldr r9,[fp,#1684]
	movw r10,#61188
	movt r10,#65535  @ -4348
	str r9,[fp,r10]
	ldr r9,[fp,#1680]
	movw r10,#61192
	movt r10,#65535  @ -4344
	str r9,[fp,r10]
	ldr r9,[fp,#1676]
	movw r10,#61196
	movt r10,#65535  @ -4340
	str r9,[fp,r10]
	ldr r9,[fp,#1672]
	movw r10,#61200
	movt r10,#65535  @ -4336
	str r9,[fp,r10]
	ldr r9,[fp,#1668]
	movw r10,#61204
	movt r10,#65535  @ -4332
	str r9,[fp,r10]
	ldr r9,[fp,#1664]
	movw r10,#61208
	movt r10,#65535  @ -4328
	str r9,[fp,r10]
	ldr r9,[fp,#1660]
	movw r10,#61212
	movt r10,#65535  @ -4324
	str r9,[fp,r10]
	ldr r9,[fp,#1656]
	movw r10,#61216
	movt r10,#65535  @ -4320
	str r9,[fp,r10]
	ldr r9,[fp,#1652]
	movw r10,#61220
	movt r10,#65535  @ -4316
	str r9,[fp,r10]
	ldr r9,[fp,#1648]
	movw r10,#61224
	movt r10,#65535  @ -4312
	str r9,[fp,r10]
	ldr r9,[fp,#1644]
	movw r10,#61228
	movt r10,#65535  @ -4308
	str r9,[fp,r10]
	ldr r9,[fp,#1640]
	movw r10,#61232
	movt r10,#65535  @ -4304
	str r9,[fp,r10]
	ldr r9,[fp,#1636]
	movw r10,#61236
	movt r10,#65535  @ -4300
	str r9,[fp,r10]
	ldr r9,[fp,#1632]
	movw r10,#61240
	movt r10,#65535  @ -4296
	str r9,[fp,r10]
	ldr r9,[fp,#1628]
	movw r10,#61244
	movt r10,#65535  @ -4292
	str r9,[fp,r10]
	ldr r9,[fp,#1624]
	movw r10,#61248
	movt r10,#65535  @ -4288
	str r9,[fp,r10]
	ldr r9,[fp,#1620]
	movw r10,#61252
	movt r10,#65535  @ -4284
	str r9,[fp,r10]
	ldr r9,[fp,#1616]
	movw r10,#61256
	movt r10,#65535  @ -4280
	str r9,[fp,r10]
	ldr r9,[fp,#1612]
	movw r10,#61260
	movt r10,#65535  @ -4276
	str r9,[fp,r10]
	ldr r9,[fp,#1608]
	movw r10,#61264
	movt r10,#65535  @ -4272
	str r9,[fp,r10]
	ldr r9,[fp,#1604]
	movw r10,#61268
	movt r10,#65535  @ -4268
	str r9,[fp,r10]
	ldr r9,[fp,#1600]
	movw r10,#61272
	movt r10,#65535  @ -4264
	str r9,[fp,r10]
	ldr r9,[fp,#1596]
	movw r10,#61276
	movt r10,#65535  @ -4260
	str r9,[fp,r10]
	ldr r9,[fp,#1592]
	movw r10,#61280
	movt r10,#65535  @ -4256
	str r9,[fp,r10]
	ldr r9,[fp,#1588]
	movw r10,#61284
	movt r10,#65535  @ -4252
	str r9,[fp,r10]
	ldr r9,[fp,#1584]
	movw r10,#61288
	movt r10,#65535  @ -4248
	str r9,[fp,r10]
	ldr r9,[fp,#1580]
	movw r10,#61292
	movt r10,#65535  @ -4244
	str r9,[fp,r10]
	ldr r9,[fp,#1576]
	movw r10,#61296
	movt r10,#65535  @ -4240
	str r9,[fp,r10]
	ldr r9,[fp,#1572]
	movw r10,#61300
	movt r10,#65535  @ -4236
	str r9,[fp,r10]
	ldr r9,[fp,#1568]
	movw r10,#61304
	movt r10,#65535  @ -4232
	str r9,[fp,r10]
	ldr r9,[fp,#1564]
	movw r10,#61308
	movt r10,#65535  @ -4228
	str r9,[fp,r10]
	ldr r9,[fp,#1560]
	movw r10,#61312
	movt r10,#65535  @ -4224
	str r9,[fp,r10]
	ldr r9,[fp,#1556]
	movw r10,#61316
	movt r10,#65535  @ -4220
	str r9,[fp,r10]
	ldr r9,[fp,#1552]
	movw r10,#61320
	movt r10,#65535  @ -4216
	str r9,[fp,r10]
	ldr r9,[fp,#1548]
	movw r10,#61324
	movt r10,#65535  @ -4212
	str r9,[fp,r10]
	ldr r9,[fp,#1544]
	movw r10,#61328
	movt r10,#65535  @ -4208
	str r9,[fp,r10]
	ldr r9,[fp,#1540]
	movw r10,#61332
	movt r10,#65535  @ -4204
	str r9,[fp,r10]
	ldr r9,[fp,#1536]
	movw r10,#61336
	movt r10,#65535  @ -4200
	str r9,[fp,r10]
	ldr r9,[fp,#1532]
	movw r10,#61340
	movt r10,#65535  @ -4196
	str r9,[fp,r10]
	ldr r9,[fp,#1528]
	movw r10,#61344
	movt r10,#65535  @ -4192
	str r9,[fp,r10]
	ldr r9,[fp,#1524]
	movw r10,#61348
	movt r10,#65535  @ -4188
	str r9,[fp,r10]
	ldr r9,[fp,#1520]
	movw r10,#61352
	movt r10,#65535  @ -4184
	str r9,[fp,r10]
	ldr r9,[fp,#1516]
	movw r10,#61356
	movt r10,#65535  @ -4180
	str r9,[fp,r10]
	ldr r9,[fp,#1512]
	movw r10,#61360
	movt r10,#65535  @ -4176
	str r9,[fp,r10]
	ldr r9,[fp,#1508]
	movw r10,#61364
	movt r10,#65535  @ -4172
	str r9,[fp,r10]
	ldr r9,[fp,#1504]
	movw r10,#61368
	movt r10,#65535  @ -4168
	str r9,[fp,r10]
	ldr r9,[fp,#1500]
	movw r10,#61372
	movt r10,#65535  @ -4164
	str r9,[fp,r10]
	ldr r9,[fp,#1496]
	movw r10,#61376
	movt r10,#65535  @ -4160
	str r9,[fp,r10]
	ldr r9,[fp,#1492]
	movw r10,#61380
	movt r10,#65535  @ -4156
	str r9,[fp,r10]
	ldr r9,[fp,#1488]
	movw r10,#61384
	movt r10,#65535  @ -4152
	str r9,[fp,r10]
	ldr r9,[fp,#1484]
	movw r10,#61388
	movt r10,#65535  @ -4148
	str r9,[fp,r10]
	ldr r9,[fp,#1480]
	movw r10,#61392
	movt r10,#65535  @ -4144
	str r9,[fp,r10]
	ldr r9,[fp,#1476]
	movw r10,#61396
	movt r10,#65535  @ -4140
	str r9,[fp,r10]
	ldr r9,[fp,#1472]
	movw r10,#61400
	movt r10,#65535  @ -4136
	str r9,[fp,r10]
	ldr r9,[fp,#1468]
	movw r10,#61404
	movt r10,#65535  @ -4132
	str r9,[fp,r10]
	ldr r9,[fp,#1464]
	movw r10,#61408
	movt r10,#65535  @ -4128
	str r9,[fp,r10]
	ldr r9,[fp,#1460]
	movw r10,#61412
	movt r10,#65535  @ -4124
	str r9,[fp,r10]
	ldr r9,[fp,#1456]
	movw r10,#61416
	movt r10,#65535  @ -4120
	str r9,[fp,r10]
	ldr r9,[fp,#1452]
	movw r10,#61420
	movt r10,#65535  @ -4116
	str r9,[fp,r10]
	ldr r9,[fp,#1448]
	movw r10,#61424
	movt r10,#65535  @ -4112
	str r9,[fp,r10]
	ldr r9,[fp,#1444]
	movw r10,#61428
	movt r10,#65535  @ -4108
	str r9,[fp,r10]
	ldr r9,[fp,#1440]
	movw r10,#61432
	movt r10,#65535  @ -4104
	str r9,[fp,r10]
	ldr r9,[fp,#1436]
	movw r10,#61436
	movt r10,#65535  @ -4100
	str r9,[fp,r10]
	ldr r9,[fp,#1432]
	movw r10,#61440
	movt r10,#65535  @ -4096
	str r9,[fp,r10]
	ldr r9,[fp,#1428]
	str r9,[fp,#-4092]
	ldr r9,[fp,#1424]
	str r9,[fp,#-4088]
	ldr r9,[fp,#1420]
	str r9,[fp,#-4084]
	ldr r9,[fp,#1416]
	str r9,[fp,#-4080]
	ldr r9,[fp,#1412]
	str r9,[fp,#-4076]
	ldr r9,[fp,#1408]
	str r9,[fp,#-4072]
	ldr r9,[fp,#1404]
	str r9,[fp,#-4068]
	ldr r9,[fp,#1400]
	str r9,[fp,#-4064]
	ldr r9,[fp,#1396]
	str r9,[fp,#-4060]
	ldr r9,[fp,#1392]
	str r9,[fp,#-4056]
	ldr r9,[fp,#1388]
	str r9,[fp,#-4052]
	ldr r9,[fp,#1384]
	str r9,[fp,#-4048]
	ldr r9,[fp,#1380]
	str r9,[fp,#-4044]
	ldr r9,[fp,#1376]
	str r9,[fp,#-4040]
	ldr r9,[fp,#1372]
	str r9,[fp,#-4036]
	ldr r9,[fp,#1368]
	str r9,[fp,#-4032]
	ldr r9,[fp,#1364]
	str r9,[fp,#-4028]
	ldr r9,[fp,#1360]
	str r9,[fp,#-4024]
	ldr r9,[fp,#1356]
	str r9,[fp,#-4020]
	ldr r9,[fp,#1352]
	str r9,[fp,#-4016]
	ldr r9,[fp,#1348]
	str r9,[fp,#-4012]
	ldr r9,[fp,#1344]
	str r9,[fp,#-4008]
	ldr r9,[fp,#1340]
	str r9,[fp,#-4004]
	ldr r9,[fp,#1336]
	str r9,[fp,#-4000]
	ldr r9,[fp,#1332]
	str r9,[fp,#-3996]
	ldr r9,[fp,#1328]
	str r9,[fp,#-3992]
	ldr r9,[fp,#1324]
	str r9,[fp,#-3988]
	ldr r9,[fp,#1320]
	str r9,[fp,#-3984]
	ldr r9,[fp,#1316]
	str r9,[fp,#-3980]
	ldr r9,[fp,#1312]
	str r9,[fp,#-3976]
	ldr r9,[fp,#1308]
	str r9,[fp,#-3972]
	ldr r9,[fp,#1304]
	str r9,[fp,#-3968]
	ldr r9,[fp,#1300]
	str r9,[fp,#-3964]
	ldr r9,[fp,#1296]
	str r9,[fp,#-3960]
	ldr r9,[fp,#1292]
	str r9,[fp,#-3956]
	ldr r9,[fp,#1288]
	str r9,[fp,#-3952]
	ldr r9,[fp,#1284]
	str r9,[fp,#-3948]
	ldr r9,[fp,#1280]
	str r9,[fp,#-3944]
	ldr r9,[fp,#1276]
	str r9,[fp,#-3940]
	ldr r9,[fp,#1272]
	str r9,[fp,#-3936]
	ldr r9,[fp,#1268]
	str r9,[fp,#-3932]
	ldr r9,[fp,#1264]
	str r9,[fp,#-3928]
	ldr r9,[fp,#1260]
	str r9,[fp,#-3924]
	ldr r9,[fp,#1256]
	str r9,[fp,#-3920]
	ldr r9,[fp,#1252]
	str r9,[fp,#-3916]
	ldr r9,[fp,#1248]
	str r9,[fp,#-3912]
	ldr r9,[fp,#1244]
	str r9,[fp,#-3908]
	ldr r9,[fp,#1240]
	str r9,[fp,#-3904]
	ldr r9,[fp,#1236]
	str r9,[fp,#-3900]
	ldr r9,[fp,#1232]
	str r9,[fp,#-3896]
	ldr r9,[fp,#1228]
	str r9,[fp,#-3892]
	ldr r9,[fp,#1224]
	str r9,[fp,#-3888]
	ldr r9,[fp,#1220]
	str r9,[fp,#-3884]
	ldr r9,[fp,#1216]
	str r9,[fp,#-3880]
	ldr r9,[fp,#1212]
	str r9,[fp,#-3876]
	ldr r9,[fp,#1208]
	str r9,[fp,#-3872]
	ldr r9,[fp,#1204]
	str r9,[fp,#-3868]
	ldr r9,[fp,#1200]
	str r9,[fp,#-3864]
	ldr r9,[fp,#1196]
	str r9,[fp,#-3860]
	ldr r9,[fp,#1192]
	str r9,[fp,#-3856]
	ldr r9,[fp,#1188]
	str r9,[fp,#-3852]
	ldr r9,[fp,#1184]
	str r9,[fp,#-3848]
	ldr r9,[fp,#1180]
	str r9,[fp,#-3844]
	ldr r9,[fp,#1176]
	str r9,[fp,#-3840]
	ldr r9,[fp,#1172]
	str r9,[fp,#-3836]
	ldr r9,[fp,#1168]
	str r9,[fp,#-3832]
	ldr r9,[fp,#1164]
	str r9,[fp,#-3828]
	ldr r9,[fp,#1160]
	str r9,[fp,#-3824]
	ldr r9,[fp,#1156]
	str r9,[fp,#-3820]
	ldr r9,[fp,#1152]
	str r9,[fp,#-3816]
	ldr r9,[fp,#1148]
	str r9,[fp,#-3812]
	ldr r9,[fp,#1144]
	str r9,[fp,#-3808]
	ldr r9,[fp,#1140]
	str r9,[fp,#-3804]
	ldr r9,[fp,#1136]
	str r9,[fp,#-3800]
	ldr r9,[fp,#1132]
	str r9,[fp,#-3796]
	ldr r9,[fp,#1128]
	str r9,[fp,#-3792]
	ldr r9,[fp,#1124]
	str r9,[fp,#-3788]
	ldr r9,[fp,#1120]
	str r9,[fp,#-3784]
	ldr r9,[fp,#1116]
	str r9,[fp,#-3780]
	ldr r9,[fp,#1112]
	str r9,[fp,#-3776]
	ldr r9,[fp,#1108]
	str r9,[fp,#-3772]
	ldr r9,[fp,#1104]
	str r9,[fp,#-3768]
	ldr r9,[fp,#1100]
	str r9,[fp,#-3764]
	ldr r9,[fp,#1096]
	str r9,[fp,#-3760]
	ldr r9,[fp,#1092]
	str r9,[fp,#-3756]
	ldr r9,[fp,#1088]
	str r9,[fp,#-3752]
	ldr r9,[fp,#1084]
	str r9,[fp,#-3748]
	ldr r9,[fp,#1080]
	str r9,[fp,#-3744]
	ldr r9,[fp,#1076]
	str r9,[fp,#-3740]
	ldr r9,[fp,#1072]
	str r9,[fp,#-3736]
	ldr r9,[fp,#1068]
	str r9,[fp,#-3732]
	ldr r9,[fp,#1064]
	str r9,[fp,#-3728]
	ldr r9,[fp,#1060]
	str r9,[fp,#-3724]
	ldr r9,[fp,#1056]
	str r9,[fp,#-3720]
	ldr r9,[fp,#1052]
	str r9,[fp,#-3716]
	ldr r9,[fp,#1048]
	str r9,[fp,#-3712]
	ldr r9,[fp,#1044]
	str r9,[fp,#-3708]
	ldr r9,[fp,#1040]
	str r9,[fp,#-3704]
	ldr r9,[fp,#1036]
	str r9,[fp,#-3700]
	ldr r9,[fp,#1032]
	str r9,[fp,#-3696]
	ldr r9,[fp,#1028]
	str r9,[fp,#-3692]
	ldr r9,[fp,#1024]
	str r9,[fp,#-3688]
	ldr r9,[fp,#1020]
	str r9,[fp,#-3684]
	ldr r9,[fp,#1016]
	str r9,[fp,#-3680]
	ldr r9,[fp,#1012]
	str r9,[fp,#-3676]
	ldr r9,[fp,#1008]
	str r9,[fp,#-3672]
	ldr r9,[fp,#1004]
	str r9,[fp,#-3668]
	ldr r9,[fp,#1000]
	str r9,[fp,#-3664]
	ldr r9,[fp,#996]
	str r9,[fp,#-3660]
	ldr r9,[fp,#992]
	str r9,[fp,#-3656]
	ldr r9,[fp,#988]
	str r9,[fp,#-3652]
	ldr r9,[fp,#984]
	str r9,[fp,#-3648]
	ldr r9,[fp,#980]
	str r9,[fp,#-3644]
	ldr r9,[fp,#976]
	str r9,[fp,#-3640]
	ldr r9,[fp,#972]
	str r9,[fp,#-3636]
	ldr r9,[fp,#968]
	str r9,[fp,#-3632]
	ldr r9,[fp,#964]
	str r9,[fp,#-3628]
	ldr r9,[fp,#960]
	str r9,[fp,#-3624]
	ldr r9,[fp,#956]
	str r9,[fp,#-3620]
	ldr r9,[fp,#952]
	str r9,[fp,#-3616]
	ldr r9,[fp,#948]
	str r9,[fp,#-3612]
	ldr r9,[fp,#944]
	str r9,[fp,#-3608]
	ldr r9,[fp,#940]
	str r9,[fp,#-3604]
	ldr r9,[fp,#936]
	str r9,[fp,#-3600]
	ldr r9,[fp,#932]
	str r9,[fp,#-3596]
	ldr r9,[fp,#928]
	str r9,[fp,#-3592]
	ldr r9,[fp,#924]
	str r9,[fp,#-3588]
	ldr r9,[fp,#920]
	str r9,[fp,#-3584]
	ldr r9,[fp,#916]
	str r9,[fp,#-3580]
	ldr r9,[fp,#912]
	str r9,[fp,#-3576]
	ldr r9,[fp,#908]
	str r9,[fp,#-3572]
	ldr r9,[fp,#904]
	str r9,[fp,#-3568]
	ldr r9,[fp,#900]
	str r9,[fp,#-3564]
	ldr r9,[fp,#896]
	str r9,[fp,#-3560]
	ldr r9,[fp,#892]
	str r9,[fp,#-3556]
	ldr r9,[fp,#888]
	str r9,[fp,#-3552]
	ldr r9,[fp,#884]
	str r9,[fp,#-3548]
	ldr r9,[fp,#880]
	str r9,[fp,#-3544]
	ldr r9,[fp,#876]
	str r9,[fp,#-3540]
	ldr r9,[fp,#872]
	str r9,[fp,#-3536]
	ldr r9,[fp,#868]
	str r9,[fp,#-3532]
	ldr r9,[fp,#864]
	str r9,[fp,#-3528]
	ldr r9,[fp,#860]
	str r9,[fp,#-3524]
	ldr r9,[fp,#856]
	str r9,[fp,#-3520]
	ldr r9,[fp,#852]
	str r9,[fp,#-3516]
	ldr r9,[fp,#848]
	str r9,[fp,#-3512]
	ldr r9,[fp,#844]
	str r9,[fp,#-3508]
	ldr r9,[fp,#840]
	str r9,[fp,#-3504]
	ldr r9,[fp,#836]
	str r9,[fp,#-3500]
	ldr r9,[fp,#832]
	str r9,[fp,#-3496]
	ldr r9,[fp,#828]
	str r9,[fp,#-3492]
	ldr r9,[fp,#824]
	str r9,[fp,#-3488]
	ldr r9,[fp,#820]
	str r9,[fp,#-3484]
	ldr r9,[fp,#816]
	str r9,[fp,#-3480]
	ldr r9,[fp,#812]
	str r9,[fp,#-3476]
	ldr r9,[fp,#808]
	str r9,[fp,#-3472]
	ldr r9,[fp,#804]
	str r9,[fp,#-3468]
	ldr r9,[fp,#800]
	str r9,[fp,#-3464]
	ldr r9,[fp,#796]
	str r9,[fp,#-3460]
	ldr r9,[fp,#792]
	str r9,[fp,#-3456]
	ldr r9,[fp,#788]
	str r9,[fp,#-3452]
	ldr r9,[fp,#784]
	str r9,[fp,#-3448]
	ldr r9,[fp,#780]
	str r9,[fp,#-3444]
	ldr r9,[fp,#776]
	str r9,[fp,#-3440]
	ldr r9,[fp,#772]
	str r9,[fp,#-3436]
	ldr r9,[fp,#768]
	str r9,[fp,#-3432]
	ldr r9,[fp,#764]
	str r9,[fp,#-3428]
	ldr r9,[fp,#760]
	str r9,[fp,#-3424]
	ldr r9,[fp,#756]
	str r9,[fp,#-3420]
	ldr r9,[fp,#752]
	str r9,[fp,#-3416]
	ldr r9,[fp,#748]
	str r9,[fp,#-3412]
	ldr r9,[fp,#744]
	str r9,[fp,#-3408]
	ldr r9,[fp,#740]
	str r9,[fp,#-3404]
	ldr r9,[fp,#736]
	str r9,[fp,#-3400]
	ldr r9,[fp,#732]
	str r9,[fp,#-3396]
	ldr r9,[fp,#728]
	str r9,[fp,#-3392]
	ldr r9,[fp,#724]
	str r9,[fp,#-3388]
	ldr r9,[fp,#720]
	str r9,[fp,#-3384]
	ldr r9,[fp,#716]
	str r9,[fp,#-3380]
	ldr r9,[fp,#712]
	str r9,[fp,#-3376]
	ldr r9,[fp,#708]
	str r9,[fp,#-3372]
	ldr r9,[fp,#704]
	str r9,[fp,#-3368]
	ldr r9,[fp,#700]
	str r9,[fp,#-3364]
	ldr r9,[fp,#696]
	str r9,[fp,#-3360]
	ldr r9,[fp,#692]
	str r9,[fp,#-3356]
	ldr r9,[fp,#688]
	str r9,[fp,#-3352]
	ldr r9,[fp,#684]
	str r9,[fp,#-3348]
	ldr r9,[fp,#680]
	str r9,[fp,#-3344]
	ldr r9,[fp,#676]
	str r9,[fp,#-3340]
	ldr r9,[fp,#672]
	str r9,[fp,#-3336]
	ldr r9,[fp,#668]
	str r9,[fp,#-3332]
	ldr r9,[fp,#664]
	str r9,[fp,#-3328]
	ldr r9,[fp,#660]
	str r9,[fp,#-3324]
	ldr r9,[fp,#656]
	str r9,[fp,#-3320]
	ldr r9,[fp,#652]
	str r9,[fp,#-3316]
	ldr r9,[fp,#648]
	str r9,[fp,#-3312]
	ldr r9,[fp,#644]
	str r9,[fp,#-3308]
	ldr r9,[fp,#640]
	str r9,[fp,#-3304]
	ldr r9,[fp,#636]
	str r9,[fp,#-3300]
	ldr r9,[fp,#632]
	str r9,[fp,#-3296]
	ldr r9,[fp,#628]
	str r9,[fp,#-3292]
	ldr r9,[fp,#624]
	str r9,[fp,#-3288]
	ldr r9,[fp,#620]
	str r9,[fp,#-3284]
	ldr r9,[fp,#616]
	str r9,[fp,#-3280]
	ldr r9,[fp,#612]
	str r9,[fp,#-3276]
	ldr r9,[fp,#608]
	str r9,[fp,#-3272]
	ldr r9,[fp,#604]
	str r9,[fp,#-3268]
	ldr r9,[fp,#600]
	str r9,[fp,#-3264]
	ldr r9,[fp,#596]
	str r9,[fp,#-3260]
	ldr r9,[fp,#592]
	str r9,[fp,#-3256]
	ldr r9,[fp,#588]
	str r9,[fp,#-3252]
	ldr r9,[fp,#584]
	str r9,[fp,#-3248]
	ldr r9,[fp,#580]
	str r9,[fp,#-3244]
	ldr r9,[fp,#576]
	str r9,[fp,#-3240]
	ldr r9,[fp,#572]
	str r9,[fp,#-3236]
	ldr r9,[fp,#568]
	str r9,[fp,#-3232]
	ldr r9,[fp,#564]
	str r9,[fp,#-3228]
	ldr r9,[fp,#560]
	str r9,[fp,#-3224]
	ldr r9,[fp,#556]
	str r9,[fp,#-3220]
	ldr r9,[fp,#552]
	str r9,[fp,#-3216]
	ldr r9,[fp,#548]
	str r9,[fp,#-3212]
	ldr r9,[fp,#544]
	str r9,[fp,#-3208]
	ldr r9,[fp,#540]
	str r9,[fp,#-3204]
	ldr r9,[fp,#536]
	str r9,[fp,#-3200]
	ldr r9,[fp,#532]
	str r9,[fp,#-3196]
	ldr r9,[fp,#528]
	str r9,[fp,#-3192]
	ldr r9,[fp,#524]
	str r9,[fp,#-3188]
	ldr r9,[fp,#520]
	str r9,[fp,#-3184]
	ldr r9,[fp,#516]
	str r9,[fp,#-3180]
	ldr r9,[fp,#512]
	str r9,[fp,#-3176]
	ldr r9,[fp,#508]
	str r9,[fp,#-3172]
	ldr r9,[fp,#504]
	str r9,[fp,#-3168]
	ldr r9,[fp,#500]
	str r9,[fp,#-3164]
	ldr r9,[fp,#496]
	str r9,[fp,#-3160]
	ldr r9,[fp,#492]
	str r9,[fp,#-3156]
	ldr r9,[fp,#488]
	str r9,[fp,#-3152]
	ldr r9,[fp,#484]
	str r9,[fp,#-3148]
	ldr r9,[fp,#480]
	str r9,[fp,#-3144]
	ldr r9,[fp,#476]
	str r9,[fp,#-3140]
	ldr r9,[fp,#472]
	str r9,[fp,#-3136]
	ldr r9,[fp,#468]
	str r9,[fp,#-3132]
	ldr r9,[fp,#464]
	str r9,[fp,#-3128]
	ldr r9,[fp,#460]
	str r9,[fp,#-3124]
	ldr r9,[fp,#456]
	str r9,[fp,#-3120]
	ldr r9,[fp,#452]
	str r9,[fp,#-3116]
	ldr r9,[fp,#448]
	str r9,[fp,#-3112]
	ldr r9,[fp,#444]
	str r9,[fp,#-3108]
	ldr r9,[fp,#440]
	str r9,[fp,#-3104]
	ldr r9,[fp,#436]
	str r9,[fp,#-3100]
	ldr r9,[fp,#432]
	str r9,[fp,#-3096]
	ldr r9,[fp,#428]
	str r9,[fp,#-3092]
	ldr r9,[fp,#424]
	str r9,[fp,#-3088]
	ldr r9,[fp,#420]
	str r9,[fp,#-3084]
	ldr r9,[fp,#416]
	str r9,[fp,#-3080]
	ldr r9,[fp,#412]
	str r9,[fp,#-3076]
	ldr r9,[fp,#408]
	str r9,[fp,#-3072]
	ldr r9,[fp,#404]
	str r9,[fp,#-3068]
	ldr r9,[fp,#400]
	str r9,[fp,#-3064]
	ldr r9,[fp,#396]
	str r9,[fp,#-3060]
	ldr r9,[fp,#392]
	str r9,[fp,#-3056]
	ldr r9,[fp,#388]
	str r9,[fp,#-3052]
	ldr r9,[fp,#384]
	str r9,[fp,#-3048]
	ldr r9,[fp,#380]
	str r9,[fp,#-3044]
	ldr r9,[fp,#376]
	str r9,[fp,#-3040]
	ldr r9,[fp,#372]
	str r9,[fp,#-3036]
	ldr r9,[fp,#368]
	str r9,[fp,#-3032]
	ldr r9,[fp,#364]
	str r9,[fp,#-3028]
	ldr r9,[fp,#360]
	str r9,[fp,#-3024]
	ldr r9,[fp,#356]
	str r9,[fp,#-3020]
	ldr r9,[fp,#352]
	str r9,[fp,#-3016]
	ldr r9,[fp,#348]
	str r9,[fp,#-3012]
	ldr r9,[fp,#344]
	str r9,[fp,#-3008]
	ldr r9,[fp,#340]
	str r9,[fp,#-3004]
	ldr r9,[fp,#336]
	str r9,[fp,#-3000]
	ldr r9,[fp,#332]
	str r9,[fp,#-2996]
	ldr r9,[fp,#328]
	str r9,[fp,#-2992]
	ldr r9,[fp,#324]
	str r9,[fp,#-2988]
	ldr r9,[fp,#320]
	str r9,[fp,#-2984]
	ldr r9,[fp,#316]
	str r9,[fp,#-2980]
	ldr r9,[fp,#312]
	str r9,[fp,#-2976]
	ldr r9,[fp,#308]
	str r9,[fp,#-2972]
	ldr r9,[fp,#304]
	str r9,[fp,#-2968]
	ldr r9,[fp,#300]
	str r9,[fp,#-2964]
	ldr r9,[fp,#296]
	str r9,[fp,#-2960]
	ldr r9,[fp,#292]
	str r9,[fp,#-2956]
	ldr r9,[fp,#288]
	str r9,[fp,#-2952]
	ldr r9,[fp,#284]
	str r9,[fp,#-2948]
	ldr r9,[fp,#280]
	str r9,[fp,#-2944]
	ldr r9,[fp,#276]
	str r9,[fp,#-2940]
	ldr r9,[fp,#272]
	str r9,[fp,#-2936]
	ldr r9,[fp,#268]
	str r9,[fp,#-2932]
	ldr r9,[fp,#264]
	str r9,[fp,#-2928]
	ldr r9,[fp,#260]
	str r9,[fp,#-2924]
	ldr r9,[fp,#256]
	str r9,[fp,#-2920]
	ldr r9,[fp,#252]
	str r9,[fp,#-2916]
	ldr r9,[fp,#248]
	str r9,[fp,#-2912]
	ldr r9,[fp,#244]
	str r9,[fp,#-2908]
	ldr r9,[fp,#240]
	str r9,[fp,#-2904]
	ldr r9,[fp,#236]
	str r9,[fp,#-2900]
	ldr r9,[fp,#232]
	str r9,[fp,#-2896]
	ldr r9,[fp,#228]
	str r9,[fp,#-2892]
	ldr r9,[fp,#224]
	str r9,[fp,#-2888]
	ldr r9,[fp,#220]
	str r9,[fp,#-2884]
	ldr r9,[fp,#216]
	str r9,[fp,#-2880]
	ldr r9,[fp,#212]
	str r9,[fp,#-2876]
	ldr r9,[fp,#208]
	str r9,[fp,#-2872]
	ldr r9,[fp,#204]
	str r9,[fp,#-2868]
	ldr r9,[fp,#200]
	str r9,[fp,#-2864]
	ldr r9,[fp,#196]
	str r9,[fp,#-2860]
	ldr r9,[fp,#192]
	str r9,[fp,#-2856]
	ldr r9,[fp,#188]
	str r9,[fp,#-2852]
	ldr r9,[fp,#184]
	str r9,[fp,#-2848]
	ldr r9,[fp,#180]
	str r9,[fp,#-2844]
	ldr r9,[fp,#176]
	str r9,[fp,#-2840]
	ldr r9,[fp,#172]
	str r9,[fp,#-2836]
	ldr r9,[fp,#168]
	str r9,[fp,#-2832]
	ldr r9,[fp,#164]
	str r9,[fp,#-2828]
	ldr r9,[fp,#160]
	str r9,[fp,#-2824]
	ldr r9,[fp,#156]
	str r9,[fp,#-2820]
	ldr r9,[fp,#152]
	str r9,[fp,#-2816]
	ldr r9,[fp,#148]
	str r9,[fp,#-2812]
	ldr r9,[fp,#144]
	str r9,[fp,#-2808]
	ldr r9,[fp,#140]
	str r9,[fp,#-2804]
	ldr r9,[fp,#136]
	str r9,[fp,#-2800]
	ldr r9,[fp,#132]
	str r9,[fp,#-2796]
	ldr r9,[fp,#128]
	str r9,[fp,#-2792]
	ldr r9,[fp,#124]
	str r9,[fp,#-2788]
	ldr r9,[fp,#120]
	str r9,[fp,#-2784]
	ldr r9,[fp,#116]
	str r9,[fp,#-2780]
	ldr r9,[fp,#112]
	str r9,[fp,#-2776]
	ldr r9,[fp,#108]
	str r9,[fp,#-2772]
	ldr r9,[fp,#104]
	str r9,[fp,#-2768]
	ldr r9,[fp,#100]
	str r9,[fp,#-2764]
	ldr r9,[fp,#96]
	str r9,[fp,#-2760]
	ldr r9,[fp,#92]
	str r9,[fp,#-2756]
	ldr r9,[fp,#88]
	str r9,[fp,#-2752]
	ldr r9,[fp,#84]
	str r9,[fp,#-2748]
	ldr r9,[fp,#80]
	str r9,[fp,#-2744]
	ldr r9,[fp,#76]
	str r9,[fp,#-2740]
	ldr r9,[fp,#72]
	str r9,[fp,#-2736]
	ldr r9,[fp,#68]
	str r9,[fp,#-2732]
	ldr r0,[fp,#64]
	ldr r1,[fp,#60]
	ldr r2,[fp,#56]
	ldr r3,[fp,#52]
	ldr r4,[fp,#48]
	ldr r5,[fp,#44]
	ldr r6,[fp,#40]
	ldr r7,[fp,#36]
	ldr r8,[fp,#32]
	ldr r9,[fp,#-2728]
	str r9,[fp,#-12]
	ldr r9,[fp,#-2724]
	str r9,[fp,#-16]
	ldr r9,[fp,#-2720]
	str r9,[fp,#-20]
	ldr r9,[fp,#-2716]
	str r9,[fp,#-24]
	str r8,[fp,#-28]
	str r7,[fp,#-32]
	str r6,[fp,#-36]
	str r5,[fp,#-40]
	str r4,[fp,#-44]
	str r3,[fp,#-48]
	str r2,[fp,#-52]
	str r1,[fp,#-56]
	str r0,[fp,#-60]
	ldr r9,[fp,#-2732]
	str r9,[fp,#-64]
	ldr r9,[fp,#-2736]
	str r9,[fp,#-68]
	ldr r9,[fp,#-2740]
	str r9,[fp,#-72]
	ldr r9,[fp,#-2744]
	str r9,[fp,#-76]
	ldr r9,[fp,#-2748]
	str r9,[fp,#-80]
	ldr r9,[fp,#-2752]
	str r9,[fp,#-84]
	ldr r9,[fp,#-2756]
	str r9,[fp,#-88]
	ldr r9,[fp,#-2760]
	str r9,[fp,#-92]
	ldr r9,[fp,#-2764]
	str r9,[fp,#-96]
	ldr r9,[fp,#-2768]
	str r9,[fp,#-100]
	ldr r9,[fp,#-2772]
	str r9,[fp,#-104]
	ldr r9,[fp,#-2776]
	str r9,[fp,#-108]
	ldr r9,[fp,#-2780]
	str r9,[fp,#-112]
	ldr r9,[fp,#-2784]
	str r9,[fp,#-116]
	ldr r9,[fp,#-2788]
	str r9,[fp,#-120]
	ldr r9,[fp,#-2792]
	str r9,[fp,#-124]
	ldr r9,[fp,#-2796]
	str r9,[fp,#-128]
	ldr r9,[fp,#-2800]
	str r9,[fp,#-132]
	ldr r9,[fp,#-2804]
	str r9,[fp,#-136]
	ldr r9,[fp,#-2808]
	str r9,[fp,#-140]
	ldr r9,[fp,#-2812]
	str r9,[fp,#-144]
	ldr r9,[fp,#-2816]
	str r9,[fp,#-148]
	ldr r9,[fp,#-2820]
	str r9,[fp,#-152]
	ldr r9,[fp,#-2824]
	str r9,[fp,#-156]
	ldr r9,[fp,#-2828]
	str r9,[fp,#-160]
	ldr r9,[fp,#-2832]
	str r9,[fp,#-164]
	ldr r9,[fp,#-2836]
	str r9,[fp,#-168]
	ldr r9,[fp,#-2840]
	str r9,[fp,#-172]
	ldr r9,[fp,#-2844]
	str r9,[fp,#-176]
	ldr r9,[fp,#-2848]
	str r9,[fp,#-180]
	ldr r9,[fp,#-2852]
	str r9,[fp,#-184]
	ldr r9,[fp,#-2856]
	str r9,[fp,#-188]
	ldr r9,[fp,#-2860]
	str r9,[fp,#-192]
	ldr r9,[fp,#-2864]
	str r9,[fp,#-196]
	ldr r9,[fp,#-2868]
	str r9,[fp,#-200]
	ldr r9,[fp,#-2872]
	str r9,[fp,#-204]
	ldr r9,[fp,#-2876]
	str r9,[fp,#-208]
	ldr r9,[fp,#-2880]
	str r9,[fp,#-212]
	ldr r9,[fp,#-2884]
	str r9,[fp,#-216]
	ldr r9,[fp,#-2888]
	str r9,[fp,#-220]
	ldr r9,[fp,#-2892]
	str r9,[fp,#-224]
	ldr r9,[fp,#-2896]
	str r9,[fp,#-228]
	ldr r9,[fp,#-2900]
	str r9,[fp,#-232]
	ldr r9,[fp,#-2904]
	str r9,[fp,#-236]
	ldr r9,[fp,#-2908]
	str r9,[fp,#-240]
	ldr r9,[fp,#-2912]
	str r9,[fp,#-244]
	ldr r9,[fp,#-2916]
	str r9,[fp,#-248]
	ldr r9,[fp,#-2920]
	str r9,[fp,#-252]
	ldr r9,[fp,#-2924]
	str r9,[fp,#-256]
	ldr r9,[fp,#-2928]
	str r9,[fp,#-260]
	ldr r9,[fp,#-2932]
	str r9,[fp,#-264]
	ldr r9,[fp,#-2936]
	str r9,[fp,#-268]
	ldr r9,[fp,#-2940]
	str r9,[fp,#-272]
	ldr r9,[fp,#-2944]
	str r9,[fp,#-276]
	ldr r9,[fp,#-2948]
	str r9,[fp,#-280]
	ldr r9,[fp,#-2952]
	str r9,[fp,#-284]
	ldr r9,[fp,#-2956]
	str r9,[fp,#-288]
	ldr r9,[fp,#-2960]
	str r9,[fp,#-292]
	ldr r9,[fp,#-2964]
	str r9,[fp,#-296]
	ldr r9,[fp,#-2968]
	str r9,[fp,#-300]
	ldr r9,[fp,#-2972]
	str r9,[fp,#-304]
	ldr r9,[fp,#-2976]
	str r9,[fp,#-308]
	ldr r9,[fp,#-2980]
	str r9,[fp,#-312]
	ldr r9,[fp,#-2984]
	str r9,[fp,#-316]
	ldr r9,[fp,#-2988]
	str r9,[fp,#-320]
	ldr r9,[fp,#-2992]
	str r9,[fp,#-324]
	ldr r9,[fp,#-2996]
	str r9,[fp,#-328]
	ldr r9,[fp,#-3000]
	str r9,[fp,#-332]
	ldr r9,[fp,#-3004]
	str r9,[fp,#-336]
	ldr r9,[fp,#-3008]
	str r9,[fp,#-340]
	ldr r9,[fp,#-3012]
	str r9,[fp,#-344]
	ldr r9,[fp,#-3016]
	str r9,[fp,#-348]
	ldr r9,[fp,#-3020]
	str r9,[fp,#-352]
	ldr r9,[fp,#-3024]
	str r9,[fp,#-356]
	ldr r9,[fp,#-3028]
	str r9,[fp,#-360]
	ldr r9,[fp,#-3032]
	str r9,[fp,#-364]
	ldr r9,[fp,#-3036]
	str r9,[fp,#-368]
	ldr r9,[fp,#-3040]
	str r9,[fp,#-372]
	ldr r9,[fp,#-3044]
	str r9,[fp,#-376]
	ldr r9,[fp,#-3048]
	str r9,[fp,#-380]
	ldr r9,[fp,#-3052]
	str r9,[fp,#-384]
	ldr r9,[fp,#-3056]
	str r9,[fp,#-388]
	ldr r9,[fp,#-3060]
	str r9,[fp,#-392]
	ldr r9,[fp,#-3064]
	str r9,[fp,#-396]
	ldr r9,[fp,#-3068]
	str r9,[fp,#-400]
	ldr r9,[fp,#-3072]
	str r9,[fp,#-404]
	ldr r9,[fp,#-3076]
	str r9,[fp,#-408]
	ldr r9,[fp,#-3080]
	str r9,[fp,#-412]
	ldr r9,[fp,#-3084]
	str r9,[fp,#-416]
	ldr r9,[fp,#-3088]
	str r9,[fp,#-420]
	ldr r9,[fp,#-3092]
	str r9,[fp,#-424]
	ldr r9,[fp,#-3096]
	str r9,[fp,#-428]
	ldr r9,[fp,#-3100]
	str r9,[fp,#-432]
	ldr r9,[fp,#-3104]
	str r9,[fp,#-436]
	ldr r9,[fp,#-3108]
	str r9,[fp,#-440]
	ldr r9,[fp,#-3112]
	str r9,[fp,#-444]
	ldr r9,[fp,#-3116]
	str r9,[fp,#-448]
	ldr r9,[fp,#-3120]
	str r9,[fp,#-452]
	ldr r9,[fp,#-3124]
	str r9,[fp,#-456]
	ldr r9,[fp,#-3128]
	str r9,[fp,#-460]
	ldr r9,[fp,#-3132]
	str r9,[fp,#-464]
	ldr r9,[fp,#-3136]
	str r9,[fp,#-468]
	ldr r9,[fp,#-3140]
	str r9,[fp,#-472]
	ldr r9,[fp,#-3144]
	str r9,[fp,#-476]
	ldr r9,[fp,#-3148]
	str r9,[fp,#-480]
	ldr r9,[fp,#-3152]
	str r9,[fp,#-484]
	ldr r9,[fp,#-3156]
	str r9,[fp,#-488]
	ldr r9,[fp,#-3160]
	str r9,[fp,#-492]
	ldr r9,[fp,#-3164]
	str r9,[fp,#-496]
	ldr r9,[fp,#-3168]
	str r9,[fp,#-500]
	ldr r9,[fp,#-3172]
	str r9,[fp,#-504]
	ldr r9,[fp,#-3176]
	str r9,[fp,#-508]
	ldr r9,[fp,#-3180]
	str r9,[fp,#-512]
	ldr r9,[fp,#-3184]
	str r9,[fp,#-516]
	ldr r9,[fp,#-3188]
	str r9,[fp,#-520]
	ldr r9,[fp,#-3192]
	str r9,[fp,#-524]
	ldr r9,[fp,#-3196]
	str r9,[fp,#-528]
	ldr r9,[fp,#-3200]
	str r9,[fp,#-532]
	ldr r9,[fp,#-3204]
	str r9,[fp,#-536]
	ldr r9,[fp,#-3208]
	str r9,[fp,#-540]
	ldr r9,[fp,#-3212]
	str r9,[fp,#-544]
	ldr r9,[fp,#-3216]
	str r9,[fp,#-548]
	ldr r9,[fp,#-3220]
	str r9,[fp,#-552]
	ldr r9,[fp,#-3224]
	str r9,[fp,#-556]
	ldr r9,[fp,#-3228]
	str r9,[fp,#-560]
	ldr r9,[fp,#-3232]
	str r9,[fp,#-564]
	ldr r9,[fp,#-3236]
	str r9,[fp,#-568]
	ldr r9,[fp,#-3240]
	str r9,[fp,#-572]
	ldr r9,[fp,#-3244]
	str r9,[fp,#-576]
	ldr r9,[fp,#-3248]
	str r9,[fp,#-580]
	ldr r9,[fp,#-3252]
	str r9,[fp,#-584]
	ldr r9,[fp,#-3256]
	str r9,[fp,#-588]
	ldr r9,[fp,#-3260]
	str r9,[fp,#-592]
	ldr r9,[fp,#-3264]
	str r9,[fp,#-596]
	ldr r9,[fp,#-3268]
	str r9,[fp,#-600]
	ldr r9,[fp,#-3272]
	str r9,[fp,#-604]
	ldr r9,[fp,#-3276]
	str r9,[fp,#-608]
	ldr r9,[fp,#-3280]
	str r9,[fp,#-612]
	ldr r9,[fp,#-3284]
	str r9,[fp,#-616]
	ldr r9,[fp,#-3288]
	str r9,[fp,#-620]
	ldr r9,[fp,#-3292]
	str r9,[fp,#-624]
	ldr r9,[fp,#-3296]
	str r9,[fp,#-628]
	ldr r9,[fp,#-3300]
	str r9,[fp,#-632]
	ldr r9,[fp,#-3304]
	str r9,[fp,#-636]
	ldr r9,[fp,#-3308]
	str r9,[fp,#-640]
	ldr r9,[fp,#-3312]
	str r9,[fp,#-644]
	ldr r9,[fp,#-3316]
	str r9,[fp,#-648]
	ldr r9,[fp,#-3320]
	str r9,[fp,#-652]
	ldr r9,[fp,#-3324]
	str r9,[fp,#-656]
	ldr r9,[fp,#-3328]
	str r9,[fp,#-660]
	ldr r9,[fp,#-3332]
	str r9,[fp,#-664]
	ldr r9,[fp,#-3336]
	str r9,[fp,#-668]
	ldr r9,[fp,#-3340]
	str r9,[fp,#-672]
	ldr r9,[fp,#-3344]
	str r9,[fp,#-676]
	ldr r9,[fp,#-3348]
	str r9,[fp,#-680]
	ldr r9,[fp,#-3352]
	str r9,[fp,#-684]
	ldr r9,[fp,#-3356]
	str r9,[fp,#-688]
	ldr r9,[fp,#-3360]
	str r9,[fp,#-692]
	ldr r9,[fp,#-3364]
	str r9,[fp,#-696]
	ldr r9,[fp,#-3368]
	str r9,[fp,#-700]
	ldr r9,[fp,#-3372]
	str r9,[fp,#-704]
	ldr r9,[fp,#-3376]
	str r9,[fp,#-708]
	ldr r9,[fp,#-3380]
	str r9,[fp,#-712]
	ldr r9,[fp,#-3384]
	str r9,[fp,#-716]
	ldr r9,[fp,#-3388]
	str r9,[fp,#-720]
	ldr r9,[fp,#-3392]
	str r9,[fp,#-724]
	ldr r9,[fp,#-3396]
	str r9,[fp,#-728]
	ldr r9,[fp,#-3400]
	str r9,[fp,#-732]
	ldr r9,[fp,#-3404]
	str r9,[fp,#-736]
	ldr r9,[fp,#-3408]
	str r9,[fp,#-740]
	ldr r9,[fp,#-3412]
	str r9,[fp,#-744]
	ldr r9,[fp,#-3416]
	str r9,[fp,#-748]
	ldr r9,[fp,#-3420]
	str r9,[fp,#-752]
	ldr r9,[fp,#-3424]
	str r9,[fp,#-756]
	ldr r9,[fp,#-3428]
	str r9,[fp,#-760]
	ldr r9,[fp,#-3432]
	str r9,[fp,#-764]
	ldr r9,[fp,#-3436]
	str r9,[fp,#-768]
	ldr r9,[fp,#-3440]
	str r9,[fp,#-772]
	ldr r9,[fp,#-3444]
	str r9,[fp,#-776]
	ldr r9,[fp,#-3448]
	str r9,[fp,#-780]
	ldr r9,[fp,#-3452]
	str r9,[fp,#-784]
	ldr r9,[fp,#-3456]
	str r9,[fp,#-788]
	ldr r9,[fp,#-3460]
	str r9,[fp,#-792]
	ldr r9,[fp,#-3464]
	str r9,[fp,#-796]
	ldr r9,[fp,#-3468]
	str r9,[fp,#-800]
	ldr r9,[fp,#-3472]
	str r9,[fp,#-804]
	ldr r9,[fp,#-3476]
	str r9,[fp,#-808]
	ldr r9,[fp,#-3480]
	str r9,[fp,#-812]
	ldr r9,[fp,#-3484]
	str r9,[fp,#-816]
	ldr r9,[fp,#-3488]
	str r9,[fp,#-820]
	ldr r9,[fp,#-3492]
	str r9,[fp,#-824]
	ldr r9,[fp,#-3496]
	str r9,[fp,#-828]
	ldr r9,[fp,#-3500]
	str r9,[fp,#-832]
	ldr r9,[fp,#-3504]
	str r9,[fp,#-836]
	ldr r9,[fp,#-3508]
	str r9,[fp,#-840]
	ldr r9,[fp,#-3512]
	str r9,[fp,#-844]
	ldr r9,[fp,#-3516]
	str r9,[fp,#-848]
	ldr r9,[fp,#-3520]
	str r9,[fp,#-852]
	ldr r9,[fp,#-3524]
	str r9,[fp,#-856]
	ldr r9,[fp,#-3528]
	str r9,[fp,#-860]
	ldr r9,[fp,#-3532]
	str r9,[fp,#-864]
	ldr r9,[fp,#-3536]
	str r9,[fp,#-868]
	ldr r9,[fp,#-3540]
	str r9,[fp,#-872]
	ldr r9,[fp,#-3544]
	str r9,[fp,#-876]
	ldr r9,[fp,#-3548]
	str r9,[fp,#-880]
	ldr r9,[fp,#-3552]
	str r9,[fp,#-884]
	ldr r9,[fp,#-3556]
	str r9,[fp,#-888]
	ldr r9,[fp,#-3560]
	str r9,[fp,#-892]
	ldr r9,[fp,#-3564]
	str r9,[fp,#-896]
	ldr r9,[fp,#-3568]
	str r9,[fp,#-900]
	ldr r9,[fp,#-3572]
	str r9,[fp,#-904]
	ldr r9,[fp,#-3576]
	str r9,[fp,#-908]
	ldr r9,[fp,#-3580]
	str r9,[fp,#-912]
	ldr r9,[fp,#-3584]
	str r9,[fp,#-916]
	ldr r9,[fp,#-3588]
	str r9,[fp,#-920]
	ldr r9,[fp,#-3592]
	str r9,[fp,#-924]
	ldr r9,[fp,#-3596]
	str r9,[fp,#-928]
	ldr r9,[fp,#-3600]
	str r9,[fp,#-932]
	ldr r9,[fp,#-3604]
	str r9,[fp,#-936]
	ldr r9,[fp,#-3608]
	str r9,[fp,#-940]
	ldr r9,[fp,#-3612]
	str r9,[fp,#-944]
	ldr r9,[fp,#-3616]
	str r9,[fp,#-948]
	ldr r9,[fp,#-3620]
	str r9,[fp,#-952]
	ldr r9,[fp,#-3624]
	str r9,[fp,#-956]
	ldr r9,[fp,#-3628]
	str r9,[fp,#-960]
	ldr r9,[fp,#-3632]
	str r9,[fp,#-964]
	ldr r9,[fp,#-3636]
	str r9,[fp,#-968]
	ldr r9,[fp,#-3640]
	str r9,[fp,#-972]
	ldr r9,[fp,#-3644]
	str r9,[fp,#-976]
	ldr r9,[fp,#-3648]
	str r9,[fp,#-980]
	ldr r9,[fp,#-3652]
	str r9,[fp,#-984]
	ldr r9,[fp,#-3656]
	str r9,[fp,#-988]
	ldr r9,[fp,#-3660]
	str r9,[fp,#-992]
	ldr r9,[fp,#-3664]
	str r9,[fp,#-996]
	ldr r9,[fp,#-3668]
	str r9,[fp,#-1000]
	ldr r9,[fp,#-3672]
	str r9,[fp,#-1004]
	ldr r9,[fp,#-3676]
	str r9,[fp,#-1008]
	ldr r9,[fp,#-3680]
	str r9,[fp,#-1012]
	ldr r9,[fp,#-3684]
	str r9,[fp,#-1016]
	ldr r9,[fp,#-3688]
	str r9,[fp,#-1020]
	ldr r9,[fp,#-3692]
	str r9,[fp,#-1024]
	ldr r9,[fp,#-3696]
	str r9,[fp,#-1028]
	ldr r9,[fp,#-3700]
	str r9,[fp,#-1032]
	ldr r9,[fp,#-3704]
	str r9,[fp,#-1036]
	ldr r9,[fp,#-3708]
	str r9,[fp,#-1040]
	ldr r9,[fp,#-3712]
	str r9,[fp,#-1044]
	ldr r9,[fp,#-3716]
	str r9,[fp,#-1048]
	ldr r9,[fp,#-3720]
	str r9,[fp,#-1052]
	ldr r9,[fp,#-3724]
	str r9,[fp,#-1056]
	ldr r9,[fp,#-3728]
	str r9,[fp,#-1060]
	ldr r9,[fp,#-3732]
	str r9,[fp,#-1064]
	ldr r9,[fp,#-3736]
	str r9,[fp,#-1068]
	ldr r9,[fp,#-3740]
	str r9,[fp,#-1072]
	ldr r9,[fp,#-3744]
	str r9,[fp,#-1076]
	ldr r9,[fp,#-3748]
	str r9,[fp,#-1080]
	ldr r9,[fp,#-3752]
	str r9,[fp,#-1084]
	ldr r9,[fp,#-3756]
	str r9,[fp,#-1088]
	ldr r9,[fp,#-3760]
	str r9,[fp,#-1092]
	ldr r9,[fp,#-3764]
	str r9,[fp,#-1096]
	ldr r9,[fp,#-3768]
	str r9,[fp,#-1100]
	ldr r9,[fp,#-3772]
	str r9,[fp,#-1104]
	ldr r9,[fp,#-3776]
	str r9,[fp,#-1108]
	ldr r9,[fp,#-3780]
	str r9,[fp,#-1112]
	ldr r9,[fp,#-3784]
	str r9,[fp,#-1116]
	ldr r9,[fp,#-3788]
	str r9,[fp,#-1120]
	ldr r9,[fp,#-3792]
	str r9,[fp,#-1124]
	ldr r9,[fp,#-3796]
	str r9,[fp,#-1128]
	ldr r9,[fp,#-3800]
	str r9,[fp,#-1132]
	ldr r9,[fp,#-3804]
	str r9,[fp,#-1136]
	ldr r9,[fp,#-3808]
	str r9,[fp,#-1140]
	ldr r9,[fp,#-3812]
	str r9,[fp,#-1144]
	ldr r9,[fp,#-3816]
	str r9,[fp,#-1148]
	ldr r9,[fp,#-3820]
	str r9,[fp,#-1152]
	ldr r9,[fp,#-3824]
	str r9,[fp,#-1156]
	ldr r9,[fp,#-3828]
	str r9,[fp,#-1160]
	ldr r9,[fp,#-3832]
	str r9,[fp,#-1164]
	ldr r9,[fp,#-3836]
	str r9,[fp,#-1168]
	ldr r9,[fp,#-3840]
	str r9,[fp,#-1172]
	ldr r9,[fp,#-3844]
	str r9,[fp,#-1176]
	ldr r9,[fp,#-3848]
	str r9,[fp,#-1180]
	ldr r9,[fp,#-3852]
	str r9,[fp,#-1184]
	ldr r9,[fp,#-3856]
	str r9,[fp,#-1188]
	ldr r9,[fp,#-3860]
	str r9,[fp,#-1192]
	ldr r9,[fp,#-3864]
	str r9,[fp,#-1196]
	ldr r9,[fp,#-3868]
	str r9,[fp,#-1200]
	ldr r9,[fp,#-3872]
	str r9,[fp,#-1204]
	ldr r9,[fp,#-3876]
	str r9,[fp,#-1208]
	ldr r9,[fp,#-3880]
	str r9,[fp,#-1212]
	ldr r9,[fp,#-3884]
	str r9,[fp,#-1216]
	ldr r9,[fp,#-3888]
	str r9,[fp,#-1220]
	ldr r9,[fp,#-3892]
	str r9,[fp,#-1224]
	ldr r9,[fp,#-3896]
	str r9,[fp,#-1228]
	ldr r9,[fp,#-3900]
	str r9,[fp,#-1232]
	ldr r9,[fp,#-3904]
	str r9,[fp,#-1236]
	ldr r9,[fp,#-3908]
	str r9,[fp,#-1240]
	ldr r9,[fp,#-3912]
	str r9,[fp,#-1244]
	ldr r9,[fp,#-3916]
	str r9,[fp,#-1248]
	ldr r9,[fp,#-3920]
	str r9,[fp,#-1252]
	ldr r9,[fp,#-3924]
	str r9,[fp,#-1256]
	ldr r9,[fp,#-3928]
	str r9,[fp,#-1260]
	ldr r9,[fp,#-3932]
	str r9,[fp,#-1264]
	ldr r9,[fp,#-3936]
	str r9,[fp,#-1268]
	ldr r9,[fp,#-3940]
	str r9,[fp,#-1272]
	ldr r9,[fp,#-3944]
	str r9,[fp,#-1276]
	ldr r9,[fp,#-3948]
	str r9,[fp,#-1280]
	ldr r9,[fp,#-3952]
	str r9,[fp,#-1284]
	ldr r9,[fp,#-3956]
	str r9,[fp,#-1288]
	ldr r9,[fp,#-3960]
	str r9,[fp,#-1292]
	ldr r9,[fp,#-3964]
	str r9,[fp,#-1296]
	ldr r9,[fp,#-3968]
	str r9,[fp,#-1300]
	ldr r9,[fp,#-3972]
	str r9,[fp,#-1304]
	ldr r9,[fp,#-3976]
	str r9,[fp,#-1308]
	ldr r9,[fp,#-3980]
	str r9,[fp,#-1312]
	ldr r9,[fp,#-3984]
	str r9,[fp,#-1316]
	ldr r9,[fp,#-3988]
	str r9,[fp,#-1320]
	ldr r9,[fp,#-3992]
	str r9,[fp,#-1324]
	ldr r9,[fp,#-3996]
	str r9,[fp,#-1328]
	ldr r9,[fp,#-4000]
	str r9,[fp,#-1332]
	ldr r9,[fp,#-4004]
	str r9,[fp,#-1336]
	ldr r9,[fp,#-4008]
	str r9,[fp,#-1340]
	ldr r9,[fp,#-4012]
	str r9,[fp,#-1344]
	ldr r9,[fp,#-4016]
	str r9,[fp,#-1348]
	ldr r9,[fp,#-4020]
	str r9,[fp,#-1352]
	ldr r9,[fp,#-4024]
	str r9,[fp,#-1356]
	ldr r9,[fp,#-4028]
	str r9,[fp,#-1360]
	ldr r9,[fp,#-4032]
	str r9,[fp,#-1364]
	ldr r9,[fp,#-4036]
	str r9,[fp,#-1368]
	ldr r9,[fp,#-4040]
	str r9,[fp,#-1372]
	ldr r9,[fp,#-4044]
	str r9,[fp,#-1376]
	ldr r9,[fp,#-4048]
	str r9,[fp,#-1380]
	ldr r9,[fp,#-4052]
	str r9,[fp,#-1384]
	ldr r9,[fp,#-4056]
	str r9,[fp,#-1388]
	ldr r9,[fp,#-4060]
	str r9,[fp,#-1392]
	ldr r9,[fp,#-4064]
	str r9,[fp,#-1396]
	ldr r9,[fp,#-4068]
	str r9,[fp,#-1400]
	ldr r9,[fp,#-4072]
	str r9,[fp,#-1404]
	ldr r9,[fp,#-4076]
	str r9,[fp,#-1408]
	ldr r9,[fp,#-4080]
	str r9,[fp,#-1412]
	ldr r9,[fp,#-4084]
	str r9,[fp,#-1416]
	ldr r9,[fp,#-4088]
	str r9,[fp,#-1420]
	ldr r9,[fp,#-4092]
	str r9,[fp,#-1424]
	movw r10,#61440
	movt r10,#65535  @ -4096
	ldr r9,[fp,r10]
	str r9,[fp,#-1428]
	movw r10,#61436
	movt r10,#65535  @ -4100
	ldr r9,[fp,r10]
	str r9,[fp,#-1432]
	movw r10,#61432
	movt r10,#65535  @ -4104
	ldr r9,[fp,r10]
	str r9,[fp,#-1436]
	movw r10,#61428
	movt r10,#65535  @ -4108
	ldr r9,[fp,r10]
	str r9,[fp,#-1440]
	movw r10,#61424
	movt r10,#65535  @ -4112
	ldr r9,[fp,r10]
	str r9,[fp,#-1444]
	movw r10,#61420
	movt r10,#65535  @ -4116
	ldr r9,[fp,r10]
	str r9,[fp,#-1448]
	movw r10,#61416
	movt r10,#65535  @ -4120
	ldr r9,[fp,r10]
	str r9,[fp,#-1452]
	movw r10,#61412
	movt r10,#65535  @ -4124
	ldr r9,[fp,r10]
	str r9,[fp,#-1456]
	movw r10,#61408
	movt r10,#65535  @ -4128
	ldr r9,[fp,r10]
	str r9,[fp,#-1460]
	movw r10,#61404
	movt r10,#65535  @ -4132
	ldr r9,[fp,r10]
	str r9,[fp,#-1464]
	movw r10,#61400
	movt r10,#65535  @ -4136
	ldr r9,[fp,r10]
	str r9,[fp,#-1468]
	movw r10,#61396
	movt r10,#65535  @ -4140
	ldr r9,[fp,r10]
	str r9,[fp,#-1472]
	movw r10,#61392
	movt r10,#65535  @ -4144
	ldr r9,[fp,r10]
	str r9,[fp,#-1476]
	movw r10,#61388
	movt r10,#65535  @ -4148
	ldr r9,[fp,r10]
	str r9,[fp,#-1480]
	movw r10,#61384
	movt r10,#65535  @ -4152
	ldr r9,[fp,r10]
	str r9,[fp,#-1484]
	movw r10,#61380
	movt r10,#65535  @ -4156
	ldr r9,[fp,r10]
	str r9,[fp,#-1488]
	movw r10,#61376
	movt r10,#65535  @ -4160
	ldr r9,[fp,r10]
	str r9,[fp,#-1492]
	movw r10,#61372
	movt r10,#65535  @ -4164
	ldr r9,[fp,r10]
	str r9,[fp,#-1496]
	movw r10,#61368
	movt r10,#65535  @ -4168
	ldr r9,[fp,r10]
	str r9,[fp,#-1500]
	movw r10,#61364
	movt r10,#65535  @ -4172
	ldr r9,[fp,r10]
	str r9,[fp,#-1504]
	movw r10,#61360
	movt r10,#65535  @ -4176
	ldr r9,[fp,r10]
	str r9,[fp,#-1508]
	movw r10,#61356
	movt r10,#65535  @ -4180
	ldr r9,[fp,r10]
	str r9,[fp,#-1512]
	movw r10,#61352
	movt r10,#65535  @ -4184
	ldr r9,[fp,r10]
	str r9,[fp,#-1516]
	movw r10,#61348
	movt r10,#65535  @ -4188
	ldr r9,[fp,r10]
	str r9,[fp,#-1520]
	movw r10,#61344
	movt r10,#65535  @ -4192
	ldr r9,[fp,r10]
	str r9,[fp,#-1524]
	movw r10,#61340
	movt r10,#65535  @ -4196
	ldr r9,[fp,r10]
	str r9,[fp,#-1528]
	movw r10,#61336
	movt r10,#65535  @ -4200
	ldr r9,[fp,r10]
	str r9,[fp,#-1532]
	movw r10,#61332
	movt r10,#65535  @ -4204
	ldr r9,[fp,r10]
	str r9,[fp,#-1536]
	movw r10,#61328
	movt r10,#65535  @ -4208
	ldr r9,[fp,r10]
	str r9,[fp,#-1540]
	movw r10,#61324
	movt r10,#65535  @ -4212
	ldr r9,[fp,r10]
	str r9,[fp,#-1544]
	movw r10,#61320
	movt r10,#65535  @ -4216
	ldr r9,[fp,r10]
	str r9,[fp,#-1548]
	movw r10,#61316
	movt r10,#65535  @ -4220
	ldr r9,[fp,r10]
	str r9,[fp,#-1552]
	movw r10,#61312
	movt r10,#65535  @ -4224
	ldr r9,[fp,r10]
	str r9,[fp,#-1556]
	movw r10,#61308
	movt r10,#65535  @ -4228
	ldr r9,[fp,r10]
	str r9,[fp,#-1560]
	movw r10,#61304
	movt r10,#65535  @ -4232
	ldr r9,[fp,r10]
	str r9,[fp,#-1564]
	movw r10,#61300
	movt r10,#65535  @ -4236
	ldr r9,[fp,r10]
	str r9,[fp,#-1568]
	movw r10,#61296
	movt r10,#65535  @ -4240
	ldr r9,[fp,r10]
	str r9,[fp,#-1572]
	movw r10,#61292
	movt r10,#65535  @ -4244
	ldr r9,[fp,r10]
	str r9,[fp,#-1576]
	movw r10,#61288
	movt r10,#65535  @ -4248
	ldr r9,[fp,r10]
	str r9,[fp,#-1580]
	movw r10,#61284
	movt r10,#65535  @ -4252
	ldr r9,[fp,r10]
	str r9,[fp,#-1584]
	movw r10,#61280
	movt r10,#65535  @ -4256
	ldr r9,[fp,r10]
	str r9,[fp,#-1588]
	movw r10,#61276
	movt r10,#65535  @ -4260
	ldr r9,[fp,r10]
	str r9,[fp,#-1592]
	movw r10,#61272
	movt r10,#65535  @ -4264
	ldr r9,[fp,r10]
	str r9,[fp,#-1596]
	movw r10,#61268
	movt r10,#65535  @ -4268
	ldr r9,[fp,r10]
	str r9,[fp,#-1600]
	movw r10,#61264
	movt r10,#65535  @ -4272
	ldr r9,[fp,r10]
	str r9,[fp,#-1604]
	movw r10,#61260
	movt r10,#65535  @ -4276
	ldr r9,[fp,r10]
	str r9,[fp,#-1608]
	movw r10,#61256
	movt r10,#65535  @ -4280
	ldr r9,[fp,r10]
	str r9,[fp,#-1612]
	movw r10,#61252
	movt r10,#65535  @ -4284
	ldr r9,[fp,r10]
	str r9,[fp,#-1616]
	movw r10,#61248
	movt r10,#65535  @ -4288
	ldr r9,[fp,r10]
	str r9,[fp,#-1620]
	movw r10,#61244
	movt r10,#65535  @ -4292
	ldr r9,[fp,r10]
	str r9,[fp,#-1624]
	movw r10,#61240
	movt r10,#65535  @ -4296
	ldr r9,[fp,r10]
	str r9,[fp,#-1628]
	movw r10,#61236
	movt r10,#65535  @ -4300
	ldr r9,[fp,r10]
	str r9,[fp,#-1632]
	movw r10,#61232
	movt r10,#65535  @ -4304
	ldr r9,[fp,r10]
	str r9,[fp,#-1636]
	movw r10,#61228
	movt r10,#65535  @ -4308
	ldr r9,[fp,r10]
	str r9,[fp,#-1640]
	movw r10,#61224
	movt r10,#65535  @ -4312
	ldr r9,[fp,r10]
	str r9,[fp,#-1644]
	movw r10,#61220
	movt r10,#65535  @ -4316
	ldr r9,[fp,r10]
	str r9,[fp,#-1648]
	movw r10,#61216
	movt r10,#65535  @ -4320
	ldr r9,[fp,r10]
	str r9,[fp,#-1652]
	movw r10,#61212
	movt r10,#65535  @ -4324
	ldr r9,[fp,r10]
	str r9,[fp,#-1656]
	movw r10,#61208
	movt r10,#65535  @ -4328
	ldr r9,[fp,r10]
	str r9,[fp,#-1660]
	movw r10,#61204
	movt r10,#65535  @ -4332
	ldr r9,[fp,r10]
	str r9,[fp,#-1664]
	movw r10,#61200
	movt r10,#65535  @ -4336
	ldr r9,[fp,r10]
	str r9,[fp,#-1668]
	movw r10,#61196
	movt r10,#65535  @ -4340
	ldr r9,[fp,r10]
	str r9,[fp,#-1672]
	movw r10,#61192
	movt r10,#65535  @ -4344
	ldr r9,[fp,r10]
	str r9,[fp,#-1676]
	movw r10,#61188
	movt r10,#65535  @ -4348
	ldr r9,[fp,r10]
	str r9,[fp,#-1680]
	movw r10,#61184
	movt r10,#65535  @ -4352
	ldr r9,[fp,r10]
	str r9,[fp,#-1684]
	movw r10,#61180
	movt r10,#65535  @ -4356
	ldr r9,[fp,r10]
	str r9,[fp,#-1688]
	movw r10,#61176
	movt r10,#65535  @ -4360
	ldr r9,[fp,r10]
	str r9,[fp,#-1692]
	movw r10,#61172
	movt r10,#65535  @ -4364
	ldr r9,[fp,r10]
	str r9,[fp,#-1696]
	movw r10,#61168
	movt r10,#65535  @ -4368
	ldr r9,[fp,r10]
	str r9,[fp,#-1700]
	movw r10,#61164
	movt r10,#65535  @ -4372
	ldr r9,[fp,r10]
	str r9,[fp,#-1704]
	movw r10,#61160
	movt r10,#65535  @ -4376
	ldr r9,[fp,r10]
	str r9,[fp,#-1708]
	movw r10,#61156
	movt r10,#65535  @ -4380
	ldr r9,[fp,r10]
	str r9,[fp,#-1712]
	movw r10,#61152
	movt r10,#65535  @ -4384
	ldr r9,[fp,r10]
	str r9,[fp,#-1716]
	movw r10,#61148
	movt r10,#65535  @ -4388
	ldr r9,[fp,r10]
	str r9,[fp,#-1720]
	movw r10,#61144
	movt r10,#65535  @ -4392
	ldr r9,[fp,r10]
	str r9,[fp,#-1724]
	movw r10,#61140
	movt r10,#65535  @ -4396
	ldr r9,[fp,r10]
	str r9,[fp,#-1728]
	movw r10,#61136
	movt r10,#65535  @ -4400
	ldr r9,[fp,r10]
	str r9,[fp,#-1732]
	movw r10,#61132
	movt r10,#65535  @ -4404
	ldr r9,[fp,r10]
	str r9,[fp,#-1736]
	movw r10,#61128
	movt r10,#65535  @ -4408
	ldr r9,[fp,r10]
	str r9,[fp,#-1740]
	movw r10,#61124
	movt r10,#65535  @ -4412
	ldr r9,[fp,r10]
	str r9,[fp,#-1744]
	movw r10,#61120
	movt r10,#65535  @ -4416
	ldr r9,[fp,r10]
	str r9,[fp,#-1748]
	movw r10,#61116
	movt r10,#65535  @ -4420
	ldr r9,[fp,r10]
	str r9,[fp,#-1752]
	movw r10,#61112
	movt r10,#65535  @ -4424
	ldr r9,[fp,r10]
	str r9,[fp,#-1756]
	movw r10,#61108
	movt r10,#65535  @ -4428
	ldr r9,[fp,r10]
	str r9,[fp,#-1760]
	movw r10,#61104
	movt r10,#65535  @ -4432
	ldr r9,[fp,r10]
	str r9,[fp,#-1764]
	movw r10,#61100
	movt r10,#65535  @ -4436
	ldr r9,[fp,r10]
	str r9,[fp,#-1768]
	movw r10,#61096
	movt r10,#65535  @ -4440
	ldr r9,[fp,r10]
	str r9,[fp,#-1772]
	movw r10,#61092
	movt r10,#65535  @ -4444
	ldr r9,[fp,r10]
	str r9,[fp,#-1776]
	movw r10,#61088
	movt r10,#65535  @ -4448
	ldr r9,[fp,r10]
	str r9,[fp,#-1780]
	movw r10,#61084
	movt r10,#65535  @ -4452
	ldr r9,[fp,r10]
	str r9,[fp,#-1784]
	movw r10,#61080
	movt r10,#65535  @ -4456
	ldr r9,[fp,r10]
	str r9,[fp,#-1788]
	movw r10,#61076
	movt r10,#65535  @ -4460
	ldr r9,[fp,r10]
	str r9,[fp,#-1792]
	movw r10,#61072
	movt r10,#65535  @ -4464
	ldr r9,[fp,r10]
	str r9,[fp,#-1796]
	movw r10,#61068
	movt r10,#65535  @ -4468
	ldr r9,[fp,r10]
	str r9,[fp,#-1800]
	movw r10,#61064
	movt r10,#65535  @ -4472
	ldr r9,[fp,r10]
	str r9,[fp,#-1804]
	movw r10,#61060
	movt r10,#65535  @ -4476
	ldr r9,[fp,r10]
	str r9,[fp,#-1808]
	movw r10,#61056
	movt r10,#65535  @ -4480
	ldr r9,[fp,r10]
	str r9,[fp,#-1812]
	movw r10,#61052
	movt r10,#65535  @ -4484
	ldr r9,[fp,r10]
	str r9,[fp,#-1816]
	movw r10,#61048
	movt r10,#65535  @ -4488
	ldr r9,[fp,r10]
	str r9,[fp,#-1820]
	movw r10,#61044
	movt r10,#65535  @ -4492
	ldr r9,[fp,r10]
	str r9,[fp,#-1824]
	movw r10,#61040
	movt r10,#65535  @ -4496
	ldr r9,[fp,r10]
	str r9,[fp,#-1828]
	movw r10,#61036
	movt r10,#65535  @ -4500
	ldr r9,[fp,r10]
	str r9,[fp,#-1832]
	movw r10,#61032
	movt r10,#65535  @ -4504
	ldr r9,[fp,r10]
	str r9,[fp,#-1836]
	movw r10,#61028
	movt r10,#65535  @ -4508
	ldr r9,[fp,r10]
	str r9,[fp,#-1840]
	movw r10,#61024
	movt r10,#65535  @ -4512
	ldr r9,[fp,r10]
	str r9,[fp,#-1844]
	movw r10,#61020
	movt r10,#65535  @ -4516
	ldr r9,[fp,r10]
	str r9,[fp,#-1848]
	movw r10,#61016
	movt r10,#65535  @ -4520
	ldr r9,[fp,r10]
	str r9,[fp,#-1852]
	movw r10,#61012
	movt r10,#65535  @ -4524
	ldr r9,[fp,r10]
	str r9,[fp,#-1856]
	movw r10,#61008
	movt r10,#65535  @ -4528
	ldr r9,[fp,r10]
	str r9,[fp,#-1860]
	movw r10,#61004
	movt r10,#65535  @ -4532
	ldr r9,[fp,r10]
	str r9,[fp,#-1864]
	movw r10,#61000
	movt r10,#65535  @ -4536
	ldr r9,[fp,r10]
	str r9,[fp,#-1868]
	movw r10,#60996
	movt r10,#65535  @ -4540
	ldr r9,[fp,r10]
	str r9,[fp,#-1872]
	movw r10,#60992
	movt r10,#65535  @ -4544
	ldr r9,[fp,r10]
	str r9,[fp,#-1876]
	movw r10,#60988
	movt r10,#65535  @ -4548
	ldr r9,[fp,r10]
	str r9,[fp,#-1880]
	movw r10,#60984
	movt r10,#65535  @ -4552
	ldr r9,[fp,r10]
	str r9,[fp,#-1884]
	movw r10,#60980
	movt r10,#65535  @ -4556
	ldr r9,[fp,r10]
	str r9,[fp,#-1888]
	movw r10,#60976
	movt r10,#65535  @ -4560
	ldr r9,[fp,r10]
	str r9,[fp,#-1892]
	movw r10,#60972
	movt r10,#65535  @ -4564
	ldr r9,[fp,r10]
	str r9,[fp,#-1896]
	movw r10,#60968
	movt r10,#65535  @ -4568
	ldr r9,[fp,r10]
	str r9,[fp,#-1900]
	movw r10,#60964
	movt r10,#65535  @ -4572
	ldr r9,[fp,r10]
	str r9,[fp,#-1904]
	movw r10,#60960
	movt r10,#65535  @ -4576
	ldr r9,[fp,r10]
	str r9,[fp,#-1908]
	movw r10,#60956
	movt r10,#65535  @ -4580
	ldr r9,[fp,r10]
	str r9,[fp,#-1912]
	movw r10,#60952
	movt r10,#65535  @ -4584
	ldr r9,[fp,r10]
	str r9,[fp,#-1916]
	movw r10,#60948
	movt r10,#65535  @ -4588
	ldr r9,[fp,r10]
	str r9,[fp,#-1920]
	movw r10,#60944
	movt r10,#65535  @ -4592
	ldr r9,[fp,r10]
	str r9,[fp,#-1924]
	movw r10,#60940
	movt r10,#65535  @ -4596
	ldr r9,[fp,r10]
	str r9,[fp,#-1928]
	movw r10,#60936
	movt r10,#65535  @ -4600
	ldr r9,[fp,r10]
	str r9,[fp,#-1932]
	movw r10,#60932
	movt r10,#65535  @ -4604
	ldr r9,[fp,r10]
	str r9,[fp,#-1936]
	movw r10,#60928
	movt r10,#65535  @ -4608
	ldr r9,[fp,r10]
	str r9,[fp,#-1940]
	movw r10,#60924
	movt r10,#65535  @ -4612
	ldr r9,[fp,r10]
	str r9,[fp,#-1944]
	movw r10,#60920
	movt r10,#65535  @ -4616
	ldr r9,[fp,r10]
	str r9,[fp,#-1948]
	movw r10,#60916
	movt r10,#65535  @ -4620
	ldr r9,[fp,r10]
	str r9,[fp,#-1952]
	movw r10,#60912
	movt r10,#65535  @ -4624
	ldr r9,[fp,r10]
	str r9,[fp,#-1956]
	movw r10,#60908
	movt r10,#65535  @ -4628
	ldr r9,[fp,r10]
	str r9,[fp,#-1960]
	movw r10,#60904
	movt r10,#65535  @ -4632
	ldr r9,[fp,r10]
	str r9,[fp,#-1964]
	movw r10,#60900
	movt r10,#65535  @ -4636
	ldr r9,[fp,r10]
	str r9,[fp,#-1968]
	movw r10,#60896
	movt r10,#65535  @ -4640
	ldr r9,[fp,r10]
	str r9,[fp,#-1972]
	movw r10,#60892
	movt r10,#65535  @ -4644
	ldr r9,[fp,r10]
	str r9,[fp,#-1976]
	movw r10,#60888
	movt r10,#65535  @ -4648
	ldr r9,[fp,r10]
	str r9,[fp,#-1980]
	movw r10,#60884
	movt r10,#65535  @ -4652
	ldr r9,[fp,r10]
	str r9,[fp,#-1984]
	movw r10,#60880
	movt r10,#65535  @ -4656
	ldr r9,[fp,r10]
	str r9,[fp,#-1988]
	movw r10,#60876
	movt r10,#65535  @ -4660
	ldr r9,[fp,r10]
	str r9,[fp,#-1992]
	movw r10,#60872
	movt r10,#65535  @ -4664
	ldr r9,[fp,r10]
	str r9,[fp,#-1996]
	movw r10,#60868
	movt r10,#65535  @ -4668
	ldr r9,[fp,r10]
	str r9,[fp,#-2000]
	movw r10,#60864
	movt r10,#65535  @ -4672
	ldr r9,[fp,r10]
	str r9,[fp,#-2004]
	movw r10,#60860
	movt r10,#65535  @ -4676
	ldr r9,[fp,r10]
	str r9,[fp,#-2008]
	movw r10,#60856
	movt r10,#65535  @ -4680
	ldr r9,[fp,r10]
	str r9,[fp,#-2012]
	movw r10,#60852
	movt r10,#65535  @ -4684
	ldr r9,[fp,r10]
	str r9,[fp,#-2016]
	movw r10,#60848
	movt r10,#65535  @ -4688
	ldr r9,[fp,r10]
	str r9,[fp,#-2020]
	movw r10,#60844
	movt r10,#65535  @ -4692
	ldr r9,[fp,r10]
	str r9,[fp,#-2024]
	movw r10,#60840
	movt r10,#65535  @ -4696
	ldr r9,[fp,r10]
	str r9,[fp,#-2028]
	movw r10,#60836
	movt r10,#65535  @ -4700
	ldr r9,[fp,r10]
	str r9,[fp,#-2032]
	movw r10,#60832
	movt r10,#65535  @ -4704
	ldr r9,[fp,r10]
	str r9,[fp,#-2036]
	movw r10,#60828
	movt r10,#65535  @ -4708
	ldr r9,[fp,r10]
	str r9,[fp,#-2040]
	movw r10,#60824
	movt r10,#65535  @ -4712
	ldr r9,[fp,r10]
	str r9,[fp,#-2044]
	movw r10,#60820
	movt r10,#65535  @ -4716
	ldr r9,[fp,r10]
	str r9,[fp,#-2048]
	movw r10,#60816
	movt r10,#65535  @ -4720
	ldr r9,[fp,r10]
	str r9,[fp,#-2052]
	movw r10,#60812
	movt r10,#65535  @ -4724
	ldr r9,[fp,r10]
	str r9,[fp,#-2056]
	movw r10,#60808
	movt r10,#65535  @ -4728
	ldr r9,[fp,r10]
	str r9,[fp,#-2060]
	movw r10,#60804
	movt r10,#65535  @ -4732
	ldr r9,[fp,r10]
	str r9,[fp,#-2064]
	movw r10,#60800
	movt r10,#65535  @ -4736
	ldr r9,[fp,r10]
	str r9,[fp,#-2068]
	movw r10,#60796
	movt r10,#65535  @ -4740
	ldr r9,[fp,r10]
	str r9,[fp,#-2072]
	movw r10,#60792
	movt r10,#65535  @ -4744
	ldr r9,[fp,r10]
	str r9,[fp,#-2076]
	movw r10,#60788
	movt r10,#65535  @ -4748
	ldr r9,[fp,r10]
	str r9,[fp,#-2080]
	movw r10,#60784
	movt r10,#65535  @ -4752
	ldr r9,[fp,r10]
	str r9,[fp,#-2084]
	movw r10,#60780
	movt r10,#65535  @ -4756
	ldr r9,[fp,r10]
	str r9,[fp,#-2088]
	movw r10,#60776
	movt r10,#65535  @ -4760
	ldr r9,[fp,r10]
	str r9,[fp,#-2092]
	movw r10,#60772
	movt r10,#65535  @ -4764
	ldr r9,[fp,r10]
	str r9,[fp,#-2096]
	movw r10,#60768
	movt r10,#65535  @ -4768
	ldr r9,[fp,r10]
	str r9,[fp,#-2100]
	movw r10,#60764
	movt r10,#65535  @ -4772
	ldr r9,[fp,r10]
	str r9,[fp,#-2104]
	movw r10,#60760
	movt r10,#65535  @ -4776
	ldr r9,[fp,r10]
	str r9,[fp,#-2108]
	movw r10,#60756
	movt r10,#65535  @ -4780
	ldr r9,[fp,r10]
	str r9,[fp,#-2112]
	movw r10,#60752
	movt r10,#65535  @ -4784
	ldr r9,[fp,r10]
	str r9,[fp,#-2116]
	movw r10,#60748
	movt r10,#65535  @ -4788
	ldr r9,[fp,r10]
	str r9,[fp,#-2120]
	movw r10,#60744
	movt r10,#65535  @ -4792
	ldr r9,[fp,r10]
	str r9,[fp,#-2124]
	movw r10,#60740
	movt r10,#65535  @ -4796
	ldr r9,[fp,r10]
	str r9,[fp,#-2128]
	movw r10,#60736
	movt r10,#65535  @ -4800
	ldr r9,[fp,r10]
	str r9,[fp,#-2132]
	movw r10,#60732
	movt r10,#65535  @ -4804
	ldr r9,[fp,r10]
	str r9,[fp,#-2136]
	movw r10,#60728
	movt r10,#65535  @ -4808
	ldr r9,[fp,r10]
	str r9,[fp,#-2140]
	movw r10,#60724
	movt r10,#65535  @ -4812
	ldr r9,[fp,r10]
	str r9,[fp,#-2144]
	movw r10,#60720
	movt r10,#65535  @ -4816
	ldr r9,[fp,r10]
	str r9,[fp,#-2148]
	movw r10,#60716
	movt r10,#65535  @ -4820
	ldr r9,[fp,r10]
	str r9,[fp,#-2152]
	movw r10,#60712
	movt r10,#65535  @ -4824
	ldr r9,[fp,r10]
	str r9,[fp,#-2156]
	movw r10,#60708
	movt r10,#65535  @ -4828
	ldr r9,[fp,r10]
	str r9,[fp,#-2160]
	movw r10,#60704
	movt r10,#65535  @ -4832
	ldr r9,[fp,r10]
	str r9,[fp,#-2164]
	movw r10,#60700
	movt r10,#65535  @ -4836
	ldr r9,[fp,r10]
	str r9,[fp,#-2168]
	movw r10,#60696
	movt r10,#65535  @ -4840
	ldr r9,[fp,r10]
	str r9,[fp,#-2172]
	movw r10,#60692
	movt r10,#65535  @ -4844
	ldr r9,[fp,r10]
	str r9,[fp,#-2176]
	movw r10,#60688
	movt r10,#65535  @ -4848
	ldr r9,[fp,r10]
	str r9,[fp,#-2180]
	movw r10,#60684
	movt r10,#65535  @ -4852
	ldr r9,[fp,r10]
	str r9,[fp,#-2184]
	movw r10,#60680
	movt r10,#65535  @ -4856
	ldr r9,[fp,r10]
	str r9,[fp,#-2188]
	movw r10,#60676
	movt r10,#65535  @ -4860
	ldr r9,[fp,r10]
	str r9,[fp,#-2192]
	movw r10,#60672
	movt r10,#65535  @ -4864
	ldr r9,[fp,r10]
	str r9,[fp,#-2196]
	movw r10,#60668
	movt r10,#65535  @ -4868
	ldr r9,[fp,r10]
	str r9,[fp,#-2200]
	movw r10,#60664
	movt r10,#65535  @ -4872
	ldr r9,[fp,r10]
	str r9,[fp,#-2204]
	movw r10,#60660
	movt r10,#65535  @ -4876
	ldr r9,[fp,r10]
	str r9,[fp,#-2208]
	movw r10,#60656
	movt r10,#65535  @ -4880
	ldr r9,[fp,r10]
	str r9,[fp,#-2212]
	movw r10,#60652
	movt r10,#65535  @ -4884
	ldr r9,[fp,r10]
	str r9,[fp,#-2216]
	movw r10,#60648
	movt r10,#65535  @ -4888
	ldr r9,[fp,r10]
	str r9,[fp,#-2220]
	movw r10,#60644
	movt r10,#65535  @ -4892
	ldr r9,[fp,r10]
	str r9,[fp,#-2224]
	movw r10,#60640
	movt r10,#65535  @ -4896
	ldr r9,[fp,r10]
	str r9,[fp,#-2228]
	movw r10,#60636
	movt r10,#65535  @ -4900
	ldr r9,[fp,r10]
	str r9,[fp,#-2232]
	movw r10,#60632
	movt r10,#65535  @ -4904
	ldr r9,[fp,r10]
	str r9,[fp,#-2236]
	movw r10,#60628
	movt r10,#65535  @ -4908
	ldr r9,[fp,r10]
	str r9,[fp,#-2240]
	movw r10,#60624
	movt r10,#65535  @ -4912
	ldr r9,[fp,r10]
	str r9,[fp,#-2244]
	movw r10,#60620
	movt r10,#65535  @ -4916
	ldr r9,[fp,r10]
	str r9,[fp,#-2248]
	movw r10,#60616
	movt r10,#65535  @ -4920
	ldr r9,[fp,r10]
	str r9,[fp,#-2252]
	movw r10,#60612
	movt r10,#65535  @ -4924
	ldr r9,[fp,r10]
	str r9,[fp,#-2256]
	movw r10,#60608
	movt r10,#65535  @ -4928
	ldr r9,[fp,r10]
	str r9,[fp,#-2260]
	movw r10,#60604
	movt r10,#65535  @ -4932
	ldr r9,[fp,r10]
	str r9,[fp,#-2264]
	movw r10,#60600
	movt r10,#65535  @ -4936
	ldr r9,[fp,r10]
	str r9,[fp,#-2268]
	movw r10,#60596
	movt r10,#65535  @ -4940
	ldr r9,[fp,r10]
	str r9,[fp,#-2272]
	movw r10,#60592
	movt r10,#65535  @ -4944
	ldr r9,[fp,r10]
	str r9,[fp,#-2276]
	movw r10,#60588
	movt r10,#65535  @ -4948
	ldr r9,[fp,r10]
	str r9,[fp,#-2280]
	movw r10,#60584
	movt r10,#65535  @ -4952
	ldr r9,[fp,r10]
	str r9,[fp,#-2284]
	movw r10,#60580
	movt r10,#65535  @ -4956
	ldr r9,[fp,r10]
	str r9,[fp,#-2288]
	movw r10,#60576
	movt r10,#65535  @ -4960
	ldr r9,[fp,r10]
	str r9,[fp,#-2292]
	movw r10,#60572
	movt r10,#65535  @ -4964
	ldr r9,[fp,r10]
	str r9,[fp,#-2296]
	movw r10,#60568
	movt r10,#65535  @ -4968
	ldr r9,[fp,r10]
	str r9,[fp,#-2300]
	movw r10,#60564
	movt r10,#65535  @ -4972
	ldr r9,[fp,r10]
	str r9,[fp,#-2304]
	movw r10,#60560
	movt r10,#65535  @ -4976
	ldr r9,[fp,r10]
	str r9,[fp,#-2308]
	movw r10,#60556
	movt r10,#65535  @ -4980
	ldr r9,[fp,r10]
	str r9,[fp,#-2312]
	movw r10,#60552
	movt r10,#65535  @ -4984
	ldr r9,[fp,r10]
	str r9,[fp,#-2316]
	movw r10,#60548
	movt r10,#65535  @ -4988
	ldr r9,[fp,r10]
	str r9,[fp,#-2320]
	movw r10,#60544
	movt r10,#65535  @ -4992
	ldr r9,[fp,r10]
	str r9,[fp,#-2324]
	movw r10,#60540
	movt r10,#65535  @ -4996
	ldr r9,[fp,r10]
	str r9,[fp,#-2328]
	movw r10,#60536
	movt r10,#65535  @ -5000
	ldr r9,[fp,r10]
	str r9,[fp,#-2332]
	movw r10,#60532
	movt r10,#65535  @ -5004
	ldr r9,[fp,r10]
	str r9,[fp,#-2336]
	movw r10,#60528
	movt r10,#65535  @ -5008
	ldr r9,[fp,r10]
	str r9,[fp,#-2340]
	movw r10,#60524
	movt r10,#65535  @ -5012
	ldr r9,[fp,r10]
	str r9,[fp,#-2344]
	movw r10,#60520
	movt r10,#65535  @ -5016
	ldr r9,[fp,r10]
	str r9,[fp,#-2348]
	movw r10,#60516
	movt r10,#65535  @ -5020
	ldr r9,[fp,r10]
	str r9,[fp,#-2352]
	movw r10,#60512
	movt r10,#65535  @ -5024
	ldr r9,[fp,r10]
	str r9,[fp,#-2356]
	movw r10,#60508
	movt r10,#65535  @ -5028
	ldr r9,[fp,r10]
	str r9,[fp,#-2360]
	movw r10,#60504
	movt r10,#65535  @ -5032
	ldr r9,[fp,r10]
	str r9,[fp,#-2364]
	movw r10,#60500
	movt r10,#65535  @ -5036
	ldr r9,[fp,r10]
	str r9,[fp,#-2368]
	movw r10,#60496
	movt r10,#65535  @ -5040
	ldr r9,[fp,r10]
	str r9,[fp,#-2372]
	movw r10,#60492
	movt r10,#65535  @ -5044
	ldr r9,[fp,r10]
	str r9,[fp,#-2376]
	movw r10,#60488
	movt r10,#65535  @ -5048
	ldr r9,[fp,r10]
	str r9,[fp,#-2380]
	movw r10,#60484
	movt r10,#65535  @ -5052
	ldr r9,[fp,r10]
	str r9,[fp,#-2384]
	movw r10,#60480
	movt r10,#65535  @ -5056
	ldr r9,[fp,r10]
	str r9,[fp,#-2388]
	movw r10,#60476
	movt r10,#65535  @ -5060
	ldr r9,[fp,r10]
	str r9,[fp,#-2392]
	movw r10,#60472
	movt r10,#65535  @ -5064
	ldr r9,[fp,r10]
	str r9,[fp,#-2396]
	movw r10,#60468
	movt r10,#65535  @ -5068
	ldr r9,[fp,r10]
	str r9,[fp,#-2400]
	movw r10,#60464
	movt r10,#65535  @ -5072
	ldr r9,[fp,r10]
	str r9,[fp,#-2404]
	movw r10,#60460
	movt r10,#65535  @ -5076
	ldr r9,[fp,r10]
	str r9,[fp,#-2408]
	movw r10,#60456
	movt r10,#65535  @ -5080
	ldr r9,[fp,r10]
	str r9,[fp,#-2412]
	movw r10,#60452
	movt r10,#65535  @ -5084
	ldr r9,[fp,r10]
	str r9,[fp,#-2416]
	movw r10,#60448
	movt r10,#65535  @ -5088
	ldr r9,[fp,r10]
	str r9,[fp,#-2420]
	movw r10,#60444
	movt r10,#65535  @ -5092
	ldr r9,[fp,r10]
	str r9,[fp,#-2424]
	movw r10,#60440
	movt r10,#65535  @ -5096
	ldr r9,[fp,r10]
	str r9,[fp,#-2428]
	movw r10,#60436
	movt r10,#65535  @ -5100
	ldr r9,[fp,r10]
	str r9,[fp,#-2432]
	movw r10,#60432
	movt r10,#65535  @ -5104
	ldr r9,[fp,r10]
	str r9,[fp,#-2436]
	movw r10,#60428
	movt r10,#65535  @ -5108
	ldr r9,[fp,r10]
	str r9,[fp,#-2440]
	movw r10,#60424
	movt r10,#65535  @ -5112
	ldr r9,[fp,r10]
	str r9,[fp,#-2444]
	movw r10,#60420
	movt r10,#65535  @ -5116
	ldr r9,[fp,r10]
	str r9,[fp,#-2448]
	movw r10,#60416
	movt r10,#65535  @ -5120
	ldr r9,[fp,r10]
	str r9,[fp,#-2452]
	movw r10,#60412
	movt r10,#65535  @ -5124
	ldr r9,[fp,r10]
	str r9,[fp,#-2456]
	movw r10,#60408
	movt r10,#65535  @ -5128
	ldr r9,[fp,r10]
	str r9,[fp,#-2460]
	movw r10,#60404
	movt r10,#65535  @ -5132
	ldr r9,[fp,r10]
	str r9,[fp,#-2464]
	movw r10,#60400
	movt r10,#65535  @ -5136
	ldr r9,[fp,r10]
	str r9,[fp,#-2468]
	movw r10,#60396
	movt r10,#65535  @ -5140
	ldr r9,[fp,r10]
	str r9,[fp,#-2472]
	movw r10,#60392
	movt r10,#65535  @ -5144
	ldr r9,[fp,r10]
	str r9,[fp,#-2476]
	movw r10,#60388
	movt r10,#65535  @ -5148
	ldr r9,[fp,r10]
	str r9,[fp,#-2480]
	movw r10,#60384
	movt r10,#65535  @ -5152
	ldr r9,[fp,r10]
	str r9,[fp,#-2484]
	movw r10,#60380
	movt r10,#65535  @ -5156
	ldr r9,[fp,r10]
	str r9,[fp,#-2488]
	movw r10,#60376
	movt r10,#65535  @ -5160
	ldr r9,[fp,r10]
	str r9,[fp,#-2492]
	movw r10,#60372
	movt r10,#65535  @ -5164
	ldr r9,[fp,r10]
	str r9,[fp,#-2496]
	movw r10,#60368
	movt r10,#65535  @ -5168
	ldr r9,[fp,r10]
	str r9,[fp,#-2500]
	movw r10,#60364
	movt r10,#65535  @ -5172
	ldr r9,[fp,r10]
	str r9,[fp,#-2504]
	movw r10,#60360
	movt r10,#65535  @ -5176
	ldr r9,[fp,r10]
	str r9,[fp,#-2508]
	movw r10,#60356
	movt r10,#65535  @ -5180
	ldr r9,[fp,r10]
	str r9,[fp,#-2512]
	movw r10,#60352
	movt r10,#65535  @ -5184
	ldr r9,[fp,r10]
	str r9,[fp,#-2516]
	movw r10,#60348
	movt r10,#65535  @ -5188
	ldr r9,[fp,r10]
	str r9,[fp,#-2520]
	movw r10,#60344
	movt r10,#65535  @ -5192
	ldr r9,[fp,r10]
	str r9,[fp,#-2524]
	movw r10,#60340
	movt r10,#65535  @ -5196
	ldr r9,[fp,r10]
	str r9,[fp,#-2528]
	movw r10,#60336
	movt r10,#65535  @ -5200
	ldr r9,[fp,r10]
	str r9,[fp,#-2532]
	movw r10,#60332
	movt r10,#65535  @ -5204
	ldr r9,[fp,r10]
	str r9,[fp,#-2536]
	movw r10,#60328
	movt r10,#65535  @ -5208
	ldr r9,[fp,r10]
	str r9,[fp,#-2540]
	movw r10,#60324
	movt r10,#65535  @ -5212
	ldr r9,[fp,r10]
	str r9,[fp,#-2544]
	movw r10,#60320
	movt r10,#65535  @ -5216
	ldr r9,[fp,r10]
	str r9,[fp,#-2548]
	movw r10,#60316
	movt r10,#65535  @ -5220
	ldr r9,[fp,r10]
	str r9,[fp,#-2552]
	movw r10,#60312
	movt r10,#65535  @ -5224
	ldr r9,[fp,r10]
	str r9,[fp,#-2556]
	movw r10,#60308
	movt r10,#65535  @ -5228
	ldr r9,[fp,r10]
	str r9,[fp,#-2560]
	movw r10,#60304
	movt r10,#65535  @ -5232
	ldr r9,[fp,r10]
	str r9,[fp,#-2564]
	movw r10,#60300
	movt r10,#65535  @ -5236
	ldr r9,[fp,r10]
	str r9,[fp,#-2568]
	movw r10,#60296
	movt r10,#65535  @ -5240
	ldr r9,[fp,r10]
	str r9,[fp,#-2572]
	movw r10,#60292
	movt r10,#65535  @ -5244
	ldr r9,[fp,r10]
	str r9,[fp,#-2576]
	movw r10,#60288
	movt r10,#65535  @ -5248
	ldr r9,[fp,r10]
	str r9,[fp,#-2580]
	movw r10,#60284
	movt r10,#65535  @ -5252
	ldr r9,[fp,r10]
	str r9,[fp,#-2584]
	movw r10,#60280
	movt r10,#65535  @ -5256
	ldr r9,[fp,r10]
	str r9,[fp,#-2588]
	movw r10,#60276
	movt r10,#65535  @ -5260
	ldr r9,[fp,r10]
	str r9,[fp,#-2592]
	movw r10,#60272
	movt r10,#65535  @ -5264
	ldr r9,[fp,r10]
	str r9,[fp,#-2596]
	movw r10,#60268
	movt r10,#65535  @ -5268
	ldr r9,[fp,r10]
	str r9,[fp,#-2600]
	movw r10,#60264
	movt r10,#65535  @ -5272
	ldr r9,[fp,r10]
	str r9,[fp,#-2604]
	movw r10,#60260
	movt r10,#65535  @ -5276
	ldr r9,[fp,r10]
	str r9,[fp,#-2608]
	movw r10,#60256
	movt r10,#65535  @ -5280
	ldr r9,[fp,r10]
	str r9,[fp,#-2612]
	movw r10,#60252
	movt r10,#65535  @ -5284
	ldr r9,[fp,r10]
	str r9,[fp,#-2616]
	movw r10,#60248
	movt r10,#65535  @ -5288
	ldr r9,[fp,r10]
	str r9,[fp,#-2620]
	movw r10,#60244
	movt r10,#65535  @ -5292
	ldr r9,[fp,r10]
	str r9,[fp,#-2624]
	movw r10,#60240
	movt r10,#65535  @ -5296
	ldr r9,[fp,r10]
	str r9,[fp,#-2628]
	movw r10,#60236
	movt r10,#65535  @ -5300
	ldr r9,[fp,r10]
	str r9,[fp,#-2632]
	movw r10,#60232
	movt r10,#65535  @ -5304
	ldr r9,[fp,r10]
	str r9,[fp,#-2636]
	movw r10,#60228
	movt r10,#65535  @ -5308
	ldr r9,[fp,r10]
	str r9,[fp,#-2640]
	movw r10,#60224
	movt r10,#65535  @ -5312
	ldr r9,[fp,r10]
	str r9,[fp,#-2644]
	movw r10,#60220
	movt r10,#65535  @ -5316
	ldr r9,[fp,r10]
	str r9,[fp,#-2648]
	movw r10,#60216
	movt r10,#65535  @ -5320
	ldr r9,[fp,r10]
	str r9,[fp,#-2652]
	movw r10,#60212
	movt r10,#65535  @ -5324
	ldr r9,[fp,r10]
	str r9,[fp,#-2656]
	movw r10,#60208
	movt r10,#65535  @ -5328
	ldr r9,[fp,r10]
	str r9,[fp,#-2660]
	movw r10,#60204
	movt r10,#65535  @ -5332
	ldr r9,[fp,r10]
	str r9,[fp,#-2664]
	movw r10,#60200
	movt r10,#65535  @ -5336
	ldr r9,[fp,r10]
	str r9,[fp,#-2668]
	movw r10,#60196
	movt r10,#65535  @ -5340
	ldr r9,[fp,r10]
	str r9,[fp,#-2672]
	movw r10,#60192
	movt r10,#65535  @ -5344
	ldr r9,[fp,r10]
	str r9,[fp,#-2676]
	movw r10,#60188
	movt r10,#65535  @ -5348
	ldr r9,[fp,r10]
	str r9,[fp,#-2680]
	movw r10,#60184
	movt r10,#65535  @ -5352
	ldr r9,[fp,r10]
	str r9,[fp,#-2684]
	movw r10,#60180
	movt r10,#65535  @ -5356
	ldr r9,[fp,r10]
	str r9,[fp,#-2688]
	movw r10,#60176
	movt r10,#65535  @ -5360
	ldr r9,[fp,r10]
	str r9,[fp,#-2692]
	movw r10,#60172
	movt r10,#65535  @ -5364
	ldr r9,[fp,r10]
	str r9,[fp,#-2696]
	movw r10,#60168
	movt r10,#65535  @ -5368
	ldr r9,[fp,r10]
	str r9,[fp,#-2700]
	movw r10,#60164
	movt r10,#65535  @ -5372
	ldr r9,[fp,r10]
	str r9,[fp,#-2704]
	movw r10,#60160
	movt r10,#65535  @ -5376
	ldr r9,[fp,r10]
	str r9,[fp,#-2708]
	movw r10,#60156
	movt r10,#65535  @ -5380
	ldr r9,[fp,r10]
	str r9,[fp,#-2712]
.funcL1:
	ldr r8,[fp,#-2644]
	ldr r7,[fp,#-2500]
	mul r6,r8,r7
	ldr r8,[fp,#-2212]
	mul r7,r6,r8
	ldr r8,[fp,#-2656]
	mul r6,r7,r8
	ldr r8,[fp,#-364]
	mul r7,r6,r8
	ldr r8,[fp,#-2124]
	add r6,r7,r8
	ldr r8,[fp,#-1896]
	ldr r7,[fp,#-208]
	mul r5,r8,r7
	ldr r8,[fp,#-1744]
	mul r7,r5,r8
	ldr r8,[fp,#-1092]
	mul r5,r7,r8
	ldr r8,[fp,#-1716]
	mul r7,r5,r8
	ldr r8,[fp,#-1024]
	mul r5,r7,r8
	ldr r8,[fp,#-2440]
	mul r7,r5,r8
	add r8,r6,r7
	ldr r7,[fp,#-2344]
	ldr r6,[fp,#-2324]
	mul r5,r7,r6
	add r7,r8,r5
	ldr r8,[fp,#-1056]
	add r6,r7,r8
	ldr r8,[fp,#-876]
	ldr r7,[fp,#-2232]
	mul r5,r8,r7
	ldr r8,[fp,#-1468]
	mul r7,r5,r8
	add r8,r6,r7
	ldr r7,[fp,#-1576]
	ldr r6,[fp,#-1132]
	mul r5,r7,r6
	add r7,r8,r5
	ldr r8,[fp,#-444]
	ldr r6,[fp,#-616]
	mul r5,r8,r6
	add r8,r7,r5
	ldr r7,[fp,#-740]
	add r6,r8,r7
	ldr r8,[fp,#-164]
	ldr r7,[fp,#-1032]
	mul r5,r8,r7
	ldr r8,[fp,#-1052]
	mul r7,r5,r8
	ldr r8,[fp,#-1328]
	mul r5,r7,r8
	add r8,r6,r5
	ldr r7,[fp,#-720]
	add r6,r8,r7
	ldr r8,[fp,#-1704]
	add r7,r6,r8
	ldr r8,[fp,#-252]
	add r6,r7,r8
	ldr r8,[fp,#-112]
	ldr r7,[fp,#-1192]
	mul r5,r8,r7
	ldr r8,[fp,#-860]
	mul r7,r5,r8
	add r8,r6,r7
	ldr r7,[fp,#-1672]
	ldr r6,[fp,#-2636]
	mul r5,r7,r6
	add r7,r8,r5
	ldr r8,[fp,#-1020]
	ldr r6,[fp,#-2336]
	mul r5,r8,r6
	ldr r8,[fp,#-888]
	mul r6,r5,r8
	ldr r8,[fp,#-624]
	mul r5,r6,r8
	ldr r8,[fp,#-2268]
	mul r6,r5,r8
	add r8,r7,r6
	ldr r7,[fp,#-440]
	add r6,r8,r7
	ldr r8,[fp,#-2004]
	add r7,r6,r8
	ldr r8,[fp,#-1068]
	add r6,r7,r8
	ldr r8,[fp,#-1948]
	ldr r7,[fp,#-804]
	mul r5,r8,r7
	ldr r8,[fp,#-324]
	mul r7,r5,r8
	add r8,r6,r7
	ldr r7,[fp,#-2200]
	ldr r6,[fp,#-696]
	mul r5,r7,r6
	add r7,r8,r5
	ldr r8,[fp,#-16]
	ldr r6,[fp,#-1144]
	mul r5,r8,r6
	ldr r8,[fp,#-1164]
	mul r6,r5,r8
	add r8,r7,r6
	ldr r7,[fp,#-1624]
	ldr r6,[fp,#-28]
	mul r5,r7,r6
	add r7,r8,r5
	ldr r8,[fp,#-292]
	ldr r6,[fp,#-1520]
	mul r5,r8,r6
	add r8,r7,r5
	ldr r7,[fp,#-2420]
	add r6,r8,r7
	ldr r8,[fp,#-2644]
	add r7,r6,r8
	ldr r8,[fp,#-1280]
	add r6,r7,r8
	ldr r8,[fp,#-1892]
	ldr r7,[fp,#-52]
	mul r5,r8,r7
	ldr r8,[fp,#-1108]
	mul r7,r5,r8
	add r8,r6,r7
	ldr r7,[fp,#-832]
	ldr r6,[fp,#-104]
	mul r5,r7,r6
	add r7,r8,r5
	ldr r8,[fp,#-644]
	ldr r6,[fp,#-268]
	mul r5,r8,r6
	add r8,r7,r5
	ldr r7,[fp,#-184]
	ldr r6,[fp,#-576]
	mul r5,r7,r6
	add r7,r8,r5
	ldr r8,[fp,#-2136]
	add r6,r7,r8
	ldr r8,[fp,#-472]
	add r7,r6,r8
	ldr r8,[fp,#-1440]
	add r6,r7,r8
	ldr r8,[fp,#-2064]
	ldr r7,[fp,#-456]
	mul r5,r8,r7
	add r8,r6,r5
	ldr r7,[fp,#-700]
	add r6,r8,r7
	ldr r8,[fp,#-2152]
	ldr r7,[fp,#-2128]
	mul r5,r8,r7
	ldr r8,[fp,#-1152]
	mul r7,r5,r8
	add r8,r6,r7
	ldr r7,[fp,#-2544]
	add r6,r8,r7
	ldr r8,[fp,#-40]
	ldr r7,[fp,#-368]
	mul r5,r8,r7
	ldr r8,[fp,#-2504]
	mul r7,r5,r8
	ldr r8,[fp,#-888]
	mul r5,r7,r8
	ldr r8,[fp,#-1100]
	mul r7,r5,r8
	ldr r8,[fp,#-1736]
	mul r5,r7,r8
	ldr r8,[fp,#-2600]
	mul r7,r5,r8
	add r8,r6,r7
	ldr r7,[fp,#-1164]
	add r6,r8,r7
	ldr r8,[fp,#-1796]
	ldr r7,[fp,#-1680]
	mul r5,r8,r7
	add r8,r6,r5
	ldr r7,[fp,#-1408]
	add r6,r8,r7
	ldr r8,[fp,#-1520]
	add r7,r6,r8
	ldr r8,[fp,#-700]
	add r6,r7,r8
	ldr r8,[fp,#-2684]
	add r7,r6,r8
	ldr r8,[fp,#-220]
	ldr r6,[fp,#-1184]
	mul r5,r8,r6
	add r8,r7,r5
	ldr r7,[fp,#-1780]
	add r6,r8,r7
	ldr r8,[fp,#-380]
	ldr r7,[fp,#-1528]
	mul r5,r8,r7
	add r8,r6,r5
	ldr r7,[fp,#-264]
	ldr r6,[fp,#-504]
	mul r5,r7,r6
	ldr r7,[fp,#-24]
	mul r6,r5,r7
	add r7,r8,r6
	ldr r8,[fp,#-1056]
	add r6,r7,r8
	ldr r8,[fp,#-1996]
	add r7,r6,r8
	ldr r8,[fp,#-120]
	ldr r6,[fp,#-1524]
	mul r5,r8,r6
	add r8,r7,r5
	ldr r7,[fp,#-1284]
	add r6,r8,r7
	ldr r8,[fp,#-2372]
	ldr r7,[fp,#-2440]
	mul r5,r8,r7
	add r8,r6,r5
	ldr r7,[fp,#-1812]
	ldr r6,[fp,#-2084]
	mul r5,r7,r6
	ldr r7,[fp,#-1340]
	mul r6,r5,r7
	add r7,r8,r6
	ldr r8,[fp,#-316]
	add r6,r7,r8
	ldr r8,[fp,#-384]
	ldr r7,[fp,#-2348]
	mul r5,r8,r7
	ldr r8,[fp,#-2376]
	mul r7,r5,r8
	add r8,r6,r7
	ldr r7,[fp,#-412]
	add r6,r8,r7
	ldr r8,[fp,#-1656]
	add r7,r6,r8
	ldr r8,[fp,#-920]
	add r6,r7,r8
	ldr r8,[fp,#-940]
	add r7,r6,r8
	ldr r8,[fp,#-920]
	add r6,r7,r8
	ldr r8,[fp,#-2612]
	ldr r7,[fp,#-828]
	mul r5,r8,r7
	add r8,r6,r5
	ldr r7,[fp,#-1144]
	ldr r6,[fp,#-1580]
	mul r5,r7,r6
	ldr r7,[fp,#-2684]
	mul r6,r5,r7
	ldr r7,[fp,#-816]
	mul r5,r6,r7
	ldr r7,[fp,#-1968]
	mul r6,r5,r7
	ldr r7,[fp,#-1044]
	mul r5,r6,r7
	add r7,r8,r5
	ldr r8,[fp,#-676]
	add r6,r7,r8
	ldr r8,[fp,#-284]
	ldr r7,[fp,#-2556]
	mul r5,r8,r7
	ldr r8,[fp,#-2296]
	mul r7,r5,r8
	ldr r8,[fp,#-340]
	mul r5,r7,r8
	ldr r8,[fp,#-660]
	mul r7,r5,r8
	add r8,r6,r7
	ldr r7,[fp,#-540]
	ldr r6,[fp,#-364]
	mul r5,r7,r6
	ldr r7,[fp,#-2512]
	mul r6,r5,r7
	ldr r7,[fp,#-2348]
	mul r5,r6,r7
	add r7,r8,r5
	ldr r8,[fp,#-2692]
	add r6,r7,r8
	ldr r8,[fp,#-2016]
	ldr r7,[fp,#-168]
	mul r5,r8,r7
	ldr r8,[fp,#-940]
	mul r7,r5,r8
	ldr r8,[fp,#-380]
	mul r5,r7,r8
	add r8,r6,r5
	ldr r7,[fp,#-56]
	add r6,r8,r7
	ldr r8,[fp,#-2232]
	ldr r7,[fp,#-520]
	mul r5,r8,r7
	ldr r8,[fp,#-356]
	mul r7,r5,r8
	ldr r8,[fp,#-952]
	mul r5,r7,r8
	ldr r8,[fp,#-1956]
	mul r7,r5,r8
	ldr r8,[fp,#-128]
	mul r5,r7,r8
	ldr r8,[fp,#-1104]
	mul r7,r5,r8
	add r8,r6,r7
	ldr r7,[fp,#-2608]
	add r6,r8,r7
	ldr r8,[fp,#-1140]
	add r7,r6,r8
	ldr r8,[fp,#-2072]
	ldr r6,[fp,#-2116]
	mul r5,r8,r6
	add r8,r7,r5
	ldr r7,[fp,#-864]
	ldr r6,[fp,#-2392]
	mul r5,r7,r6
	ldr r7,[fp,#-584]
	mul r6,r5,r7
	ldr r7,[fp,#-2136]
	mul r5,r6,r7
	ldr r7,[fp,#-2064]
	mul r6,r5,r7
	ldr r7,[fp,#-592]
	mul r5,r6,r7
	ldr r7,[fp,#-792]
	mul r6,r5,r7
	ldr r7,[fp,#-408]
	mul r5,r6,r7
	ldr r7,[fp,#-2696]
	mul r6,r5,r7
	ldr r7,[fp,#-56]
	mul r5,r6,r7
	ldr r7,[fp,#-2368]
	mul r6,r5,r7
	add r7,r8,r6
	ldr r8,[fp,#-532]
	ldr r6,[fp,#-2280]
	mul r5,r8,r6
	add r8,r7,r5
	ldr r7,[fp,#-1228]
	add r6,r8,r7
	ldr r8,[fp,#-844]
	ldr r7,[fp,#-904]
	mul r5,r8,r7
	ldr r8,[fp,#-2176]
	mul r7,r5,r8
	add r8,r6,r7
	ldr r7,[fp,#-1188]
	add r6,r8,r7
	ldr r8,[fp,#-2684]
	add r7,r6,r8
	ldr r8,[fp,#-476]
	add r6,r7,r8
	ldr r8,[fp,#-1572]
	ldr r7,[fp,#-2632]
	mul r5,r8,r7
	add r8,r6,r5
	ldr r7,[fp,#-2616]
	add r6,r8,r7
	ldr r8,[fp,#-192]
	add r7,r6,r8
	ldr r8,[fp,#-24]
	add r6,r7,r8
	ldr r8,[fp,#-1008]
	add r7,r6,r8
	ldr r8,[fp,#-2168]
	add r6,r7,r8
	ldr r8,[fp,#-2036]
	add r7,r6,r8
	ldr r8,[fp,#-504]
	add r6,r7,r8
	ldr r8,[fp,#-296]
	add r7,r6,r8
	ldr r8,[fp,#-748]
	add r6,r7,r8
	ldr r8,[fp,#-480]
	ldr r7,[fp,#-752]
	mul r5,r8,r7
	ldr r8,[fp,#-760]
	mul r7,r5,r8
	ldr r8,[fp,#-288]
	mul r5,r7,r8
	ldr r8,[fp,#-1204]
	mul r7,r5,r8
	add r8,r6,r7
	ldr r7,[fp,#-1632]
	ldr r6,[fp,#-2336]
	mul r5,r7,r6
	ldr r7,[fp,#-1376]
	mul r6,r5,r7
	ldr r7,[fp,#-1052]
	mul r5,r6,r7
	ldr r7,[fp,#-1988]
	mul r6,r5,r7
	add r7,r8,r6
	ldr r8,[fp,#-1860]
	ldr r6,[fp,#-1000]
	mul r5,r8,r6
	add r8,r7,r5
	ldr r7,[fp,#-480]
	add r6,r8,r7
	ldr r8,[fp,#-644]
	ldr r7,[fp,#-952]
	mul r5,r8,r7
	add r8,r6,r5
	ldr r7,[fp,#-1076]
	ldr r6,[fp,#-136]
	mul r5,r7,r6
	add r7,r8,r5
	ldr r8,[fp,#-1928]
	add r6,r7,r8
	ldr r8,[fp,#-1640]
	add r7,r6,r8
	ldr r8,[fp,#-2100]
	add r6,r7,r8
	ldr r8,[fp,#-2592]
	add r7,r6,r8
	ldr r8,[fp,#-2208]
	ldr r6,[fp,#-2000]
	mul r5,r8,r6
	ldr r8,[fp,#-2428]
	mul r6,r5,r8
	add r8,r7,r6
	ldr r7,[fp,#-280]
	ldr r6,[fp,#-1816]
	mul r5,r7,r6
	add r7,r8,r5
	ldr r8,[fp,#-1756]
	add r6,r7,r8
	ldr r8,[fp,#-2284]
	ldr r7,[fp,#-68]
	mul r5,r8,r7
	ldr r8,[fp,#-1568]
	mul r7,r5,r8
	add r8,r6,r7
	ldr r7,[fp,#-2632]
	add r6,r8,r7
	ldr r8,[fp,#-1712]
	add r7,r6,r8
	ldr r8,[fp,#-1096]
	ldr r6,[fp,#-1960]
	mul r5,r8,r6
	ldr r8,[fp,#-1520]
	mul r6,r5,r8
	ldr r8,[fp,#-1740]
	mul r5,r6,r8
	add r8,r7,r5
	ldr r7,[fp,#-1344]
	ldr r6,[fp,#-508]
	mul r5,r7,r6
	ldr r7,[fp,#-108]
	mul r6,r5,r7
	ldr r7,[fp,#-872]
	mul r5,r6,r7
	ldr r7,[fp,#-1988]
	mul r6,r5,r7
	ldr r7,[fp,#-2036]
	mul r5,r6,r7
	add r7,r8,r5
	ldr r8,[fp,#-2224]
	add r6,r7,r8
	ldr r8,[fp,#-1880]
	add r7,r6,r8
	ldr r8,[fp,#-2560]
	ldr r6,[fp,#-176]
	mul r5,r8,r6
	add r8,r7,r5
	ldr r7,[fp,#-1640]
	add r6,r8,r7
	ldr r8,[fp,#-2480]
	ldr r7,[fp,#-1244]
	mul r5,r8,r7
	add r8,r6,r5
	ldr r7,[fp,#-2148]
	ldr r6,[fp,#-2656]
	mul r5,r7,r6
	ldr r7,[fp,#-1864]
	mul r6,r5,r7
	add r7,r8,r6
	ldr r8,[fp,#-632]
	ldr r6,[fp,#-1880]
	mul r5,r8,r6
	ldr r8,[fp,#-632]
	mul r6,r5,r8
	add r8,r7,r6
	ldr r7,[fp,#-1280]
	ldr r6,[fp,#-1920]
	mul r5,r7,r6
	add r7,r8,r5
	ldr r8,[fp,#-2504]
	ldr r6,[fp,#-2584]
	mul r5,r8,r6
	add r8,r7,r5
	ldr r7,[fp,#-1712]
	add r6,r8,r7
	ldr r8,[fp,#-1084]
	ldr r7,[fp,#-656]
	mul r5,r8,r7
	add r8,r6,r5
	ldr r7,[fp,#-1380]
	add r6,r8,r7
	ldr r8,[fp,#-648]
	add r7,r6,r8
	ldr r8,[fp,#-2296]
	add r6,r7,r8
	ldr r8,[fp,#-1496]
	add r7,r6,r8
	ldr r8,[fp,#-768]
	add r6,r7,r8
	ldr r8,[fp,#-552]
	add r7,r6,r8
	ldr r8,[fp,#-436]
	ldr r6,[fp,#-2444]
	mul r5,r8,r6
	add r8,r7,r5
	ldr r7,[fp,#-744]
	add r6,r8,r7
	ldr r8,[fp,#-1588]
	add r7,r6,r8
	ldr r8,[fp,#-1360]
	ldr r6,[fp,#-2600]
	mul r5,r8,r6
	ldr r8,[fp,#-100]
	mul r6,r5,r8
	add r8,r7,r6
	ldr r7,[fp,#-880]
	add r6,r8,r7
	ldr r8,[fp,#-376]
	add r7,r6,r8
	ldr r8,[fp,#-2648]
	ldr r6,[fp,#-1412]
	mul r5,r8,r6
	add r8,r7,r5
	ldr r7,[fp,#-984]
	ldr r6,[fp,#-1152]
	mul r5,r7,r6
	ldr r7,[fp,#-852]
	mul r6,r5,r7
	ldr r7,[fp,#-1908]
	mul r5,r6,r7
	add r7,r8,r5
	ldr r8,[fp,#-2108]
	ldr r6,[fp,#-2564]
	mul r5,r8,r6
	add r8,r7,r5
	ldr r7,[fp,#-1172]
	add r6,r8,r7
	ldr r8,[fp,#-556]
	ldr r7,[fp,#-1128]
	mul r5,r8,r7
	ldr r8,[fp,#-184]
	mul r7,r5,r8
	ldr r8,[fp,#-2600]
	mul r5,r7,r8
	add r8,r6,r5
	ldr r7,[fp,#-1940]
	ldr r6,[fp,#-1772]
	mul r5,r7,r6
	add r7,r8,r5
	ldr r8,[fp,#-128]
	add r6,r7,r8
	ldr r8,[fp,#-324]
	add r7,r6,r8
	ldr r8,[fp,#-908]
	add r6,r7,r8
	ldr r8,[fp,#-692]
	add r7,r6,r8
	ldr r8,[fp,#-2172]
	add r6,r7,r8
	ldr r8,[fp,#-984]
	ldr r7,[fp,#-1172]
	mul r5,r8,r7
	add r8,r6,r5
	ldr r7,[fp,#-2404]
	add r6,r8,r7
	ldr r8,[fp,#-2268]
	ldr r7,[fp,#-1748]
	mul r5,r8,r7
	add r8,r6,r5
	ldr r7,[fp,#-1324]
	add r6,r8,r7
	ldr r8,[fp,#-2264]
	add r7,r6,r8
	ldr r8,[fp,#-2092]
	add r6,r7,r8
	ldr r8,[fp,#-832]
	ldr r7,[fp,#-1568]
	mul r5,r8,r7
	ldr r8,[fp,#-1928]
	mul r7,r5,r8
	ldr r8,[fp,#-256]
	mul r5,r7,r8
	ldr r8,[fp,#-764]
	mul r7,r5,r8
	add r8,r6,r7
	ldr r7,[fp,#-1792]
	ldr r6,[fp,#-216]
	mul r5,r7,r6
	add r7,r8,r5
	ldr r8,[fp,#-2236]
	ldr r6,[fp,#-852]
	mul r5,r8,r6
	add r8,r7,r5
	ldr r7,[fp,#-848]
	add r6,r8,r7
	ldr r8,[fp,#-568]
	ldr r7,[fp,#-92]
	mul r5,r8,r7
	ldr r8,[fp,#-372]
	mul r7,r5,r8
	add r8,r6,r7
	ldr r7,[fp,#-2212]
	ldr r6,[fp,#-1124]
	mul r5,r7,r6
	add r7,r8,r5
	ldr r8,[fp,#-1616]
	ldr r6,[fp,#-1500]
	mul r5,r8,r6
	ldr r8,[fp,#-1064]
	mul r6,r5,r8
	ldr r8,[fp,#-924]
	mul r5,r6,r8
	add r8,r7,r5
	ldr r7,[fp,#-132]
	ldr r6,[fp,#-1848]
	mul r5,r7,r6
	add r7,r8,r5
	ldr r8,[fp,#-2196]
	ldr r6,[fp,#-748]
	mul r5,r8,r6
	ldr r8,[fp,#-2032]
	mul r6,r5,r8
	add r8,r7,r6
	ldr r7,[fp,#-2348]
	add r6,r8,r7
	ldr r8,[fp,#-1844]
	add r7,r6,r8
	ldr r8,[fp,#-1472]
	add r6,r7,r8
	ldr r8,[fp,#-1596]
	ldr r7,[fp,#-804]
	mul r5,r8,r7
	add r8,r6,r5
	ldr r7,[fp,#-1588]
	ldr r6,[fp,#-2388]
	mul r5,r7,r6
	ldr r7,[fp,#-460]
	mul r6,r5,r7
	ldr r7,[fp,#-1832]
	mul r5,r6,r7
	add r7,r8,r5
	ldr r8,[fp,#-2548]
	add r6,r7,r8
	ldr r8,[fp,#-1476]
	ldr r7,[fp,#-1912]
	mul r5,r8,r7
	ldr r8,[fp,#-868]
	mul r7,r5,r8
	ldr r8,[fp,#-2172]
	mul r5,r7,r8
	add r8,r6,r5
	ldr r7,[fp,#-244]
	ldr r6,[fp,#-2276]
	mul r5,r7,r6
	ldr r7,[fp,#-2560]
	mul r6,r5,r7
	add r7,r8,r6
	ldr r8,[fp,#-2440]
	ldr r6,[fp,#-2328]
	mul r5,r8,r6
	add r8,r7,r5
	ldr r7,[fp,#-2424]
	add r6,r8,r7
	ldr r8,[fp,#-2356]
	add r7,r6,r8
	ldr r8,[fp,#-1432]
	add r6,r7,r8
	ldr r8,[fp,#-2216]
	ldr r7,[fp,#-1884]
	mul r5,r8,r7
	ldr r8,[fp,#-2532]
	mul r7,r5,r8
	add r8,r6,r7
	ldr r7,[fp,#-2128]
	add r6,r8,r7
	ldr r8,[fp,#-1888]
	add r7,r6,r8
	ldr r8,[fp,#-400]
	add r6,r7,r8
	ldr r8,[fp,#-1624]
	add r7,r6,r8
	ldr r8,[fp,#-2124]
	add r6,r7,r8
	ldr r8,[fp,#-1372]
	ldr r7,[fp,#-200]
	mul r5,r8,r7
	add r8,r6,r5
	ldr r7,[fp,#-1676]
	ldr r6,[fp,#-2628]
	mul r5,r7,r6
	ldr r7,[fp,#-1104]
	mul r6,r5,r7
	add r7,r8,r6
	ldr r8,[fp,#-2688]
	ldr r6,[fp,#-324]
	mul r5,r8,r6
	add r8,r7,r5
	ldr r7,[fp,#-1140]
	ldr r6,[fp,#-2464]
	mul r5,r7,r6
	add r7,r8,r5
	ldr r8,[fp,#-836]
	ldr r6,[fp,#-812]
	mul r5,r8,r6
	add r8,r7,r5
	ldr r7,[fp,#-1576]
	add r6,r8,r7
	ldr r8,[fp,#-1560]
	ldr r7,[fp,#-2192]
	mul r5,r8,r7
	ldr r8,[fp,#-1588]
	mul r7,r5,r8
	add r8,r6,r7
	ldr r7,[fp,#-132]
	ldr r6,[fp,#-892]
	mul r5,r7,r6
	add r7,r8,r5
	ldr r8,[fp,#-1908]
	add r6,r7,r8
	ldr r8,[fp,#-2036]
	ldr r7,[fp,#-892]
	mul r5,r8,r7
	add r8,r6,r5
	ldr r7,[fp,#-664]
	ldr r6,[fp,#-1028]
	mul r5,r7,r6
	ldr r7,[fp,#-2704]
	mul r6,r5,r7
	add r7,r8,r6
	ldr r8,[fp,#-540]
	add r6,r7,r8
	ldr r8,[fp,#-1624]
	ldr r7,[fp,#-460]
	mul r5,r8,r7
	ldr r8,[fp,#-2316]
	mul r7,r5,r8
	add r8,r6,r7
	ldr r7,[fp,#-28]
	ldr r6,[fp,#-1796]
	mul r5,r7,r6
	add r7,r8,r5
	ldr r8,[fp,#-2360]
	ldr r6,[fp,#-48]
	mul r5,r8,r6
	add r8,r7,r5
	ldr r7,[fp,#-1580]
	ldr r6,[fp,#-1100]
	mul r5,r7,r6
	ldr r7,[fp,#-1620]
	mul r6,r5,r7
	add r7,r8,r6
	ldr r8,[fp,#-748]
	ldr r6,[fp,#-192]
	mul r5,r8,r6
	ldr r8,[fp,#-72]
	mul r6,r5,r8
	ldr r8,[fp,#-884]
	mul r5,r6,r8
	ldr r8,[fp,#-60]
	mul r6,r5,r8
	add r8,r7,r6
	ldr r7,[fp,#-2588]
	add r6,r8,r7
	ldr r8,[fp,#-1356]
	add r7,r6,r8
	ldr r8,[fp,#-2328]
	ldr r6,[fp,#-40]
	mul r5,r8,r6
	ldr r8,[fp,#-2064]
	mul r6,r5,r8
	ldr r8,[fp,#-588]
	mul r5,r6,r8
	add r8,r7,r5
	ldr r7,[fp,#-1872]
	ldr r6,[fp,#-2004]
	mul r5,r7,r6
	ldr r7,[fp,#-56]
	mul r6,r5,r7
	add r7,r8,r6
	ldr r8,[fp,#-2052]
	add r6,r7,r8
	ldr r8,[fp,#-568]
	add r7,r6,r8
	ldr r8,[fp,#-344]
	ldr r6,[fp,#-2060]
	mul r5,r8,r6
	add r8,r7,r5
	ldr r7,[fp,#-992]
	add r6,r8,r7
	ldr r8,[fp,#-1248]
	add r7,r6,r8
	ldr r8,[fp,#-1552]
	add r6,r7,r8
	ldr r8,[fp,#-896]
	add r7,r6,r8
	mov r0,r7
	movw r9,#5380
	movt r9,#0  @ 5380
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
main:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	movw r9,#2680
	movt r9,#0  @ 2680
	sub sp,sp,r9
.mainL0:
.mainL1:
	mov r9,#0
	str r9,[fp,#-12]
	mov r9,#1
	str r9,[fp,#-16]
	mov r9,#1
	str r9,[fp,#-20]
	mov r9,#8
	str r9,[fp,#-24]
	mov r9,#9
	str r9,[fp,#-28]
	mov r9,#5
	str r9,[fp,#-32]
	mov r9,#2
	str r9,[fp,#-36]
	mov r9,#0
	str r9,[fp,#-40]
	mov r9,#6
	str r9,[fp,#-44]
	mov r9,#2
	str r9,[fp,#-48]
	mov r9,#4
	str r9,[fp,#-52]
	mov r9,#7
	str r9,[fp,#-56]
	mov r9,#1
	str r9,[fp,#-60]
	mov r9,#6
	str r9,[fp,#-64]
	mov r9,#9
	str r9,[fp,#-68]
	mov r9,#3
	str r9,[fp,#-72]
	mov r9,#3
	str r9,[fp,#-76]
	mov r9,#5
	str r9,[fp,#-80]
	mov r9,#0
	str r9,[fp,#-84]
	mov r9,#8
	str r9,[fp,#-88]
	mov r9,#9
	str r9,[fp,#-92]
	mov r9,#3
	str r9,[fp,#-96]
	mov r9,#4
	str r9,[fp,#-100]
	mov r9,#5
	str r9,[fp,#-104]
	mov r9,#9
	str r9,[fp,#-108]
	mov r9,#0
	str r9,[fp,#-112]
	mov r9,#8
	str r9,[fp,#-116]
	mov r9,#9
	str r9,[fp,#-120]
	mov r9,#5
	str r9,[fp,#-124]
	mov r9,#5
	str r9,[fp,#-128]
	mov r9,#4
	str r9,[fp,#-132]
	mov r9,#1
	str r9,[fp,#-136]
	mov r9,#4
	str r9,[fp,#-140]
	mov r9,#3
	str r9,[fp,#-144]
	mov r9,#5
	str r9,[fp,#-148]
	mov r9,#9
	str r9,[fp,#-152]
	mov r9,#7
	str r9,[fp,#-156]
	mov r9,#6
	str r9,[fp,#-160]
	mov r9,#1
	str r9,[fp,#-164]
	mov r9,#7
	str r9,[fp,#-168]
	mov r9,#5
	str r9,[fp,#-172]
	mov r9,#4
	str r9,[fp,#-176]
	mov r9,#0
	str r9,[fp,#-180]
	mov r9,#7
	str r9,[fp,#-184]
	mov r9,#5
	str r9,[fp,#-188]
	mov r9,#5
	str r9,[fp,#-192]
	mov r9,#6
	str r9,[fp,#-196]
	mov r9,#4
	str r9,[fp,#-200]
	mov r9,#9
	str r9,[fp,#-204]
	mov r9,#6
	str r9,[fp,#-208]
	mov r9,#6
	str r9,[fp,#-212]
	mov r9,#6
	str r9,[fp,#-216]
	mov r9,#8
	str r9,[fp,#-220]
	mov r9,#0
	str r9,[fp,#-224]
	mov r9,#4
	str r9,[fp,#-228]
	mov r9,#2
	str r9,[fp,#-232]
	mov r9,#3
	str r9,[fp,#-236]
	mov r9,#3
	str r9,[fp,#-240]
	mov r9,#0
	str r9,[fp,#-244]
	mov r9,#5
	str r9,[fp,#-248]
	mov r9,#4
	str r9,[fp,#-252]
	mov r9,#3
	str r9,[fp,#-256]
	mov r9,#9
	str r9,[fp,#-260]
	mov r9,#5
	str r9,[fp,#-264]
	mov r9,#9
	str r9,[fp,#-268]
	mov r9,#3
	str r9,[fp,#-272]
	mov r9,#3
	str r9,[fp,#-276]
	mov r9,#6
	str r9,[fp,#-280]
	mov r9,#4
	str r9,[fp,#-284]
	mov r9,#3
	str r9,[fp,#-288]
	mov r9,#3
	str r9,[fp,#-292]
	mov r9,#0
	str r9,[fp,#-296]
	mov r9,#5
	str r9,[fp,#-300]
	mov r9,#0
	str r9,[fp,#-304]
	mov r9,#2
	str r9,[fp,#-308]
	mov r9,#5
	str r9,[fp,#-312]
	mov r9,#6
	str r9,[fp,#-316]
	mov r9,#6
	str r9,[fp,#-320]
	mov r9,#9
	str r9,[fp,#-324]
	mov r9,#4
	str r9,[fp,#-328]
	mov r9,#0
	str r9,[fp,#-332]
	mov r9,#3
	str r9,[fp,#-336]
	mov r9,#7
	str r9,[fp,#-340]
	mov r9,#2
	str r9,[fp,#-344]
	mov r9,#1
	str r9,[fp,#-348]
	mov r9,#1
	str r9,[fp,#-352]
	mov r9,#9
	str r9,[fp,#-356]
	mov r9,#8
	str r9,[fp,#-360]
	mov r9,#4
	str r9,[fp,#-364]
	mov r9,#8
	str r9,[fp,#-368]
	mov r9,#5
	str r9,[fp,#-372]
	mov r9,#2
	str r9,[fp,#-376]
	mov r9,#5
	str r9,[fp,#-380]
	mov r9,#4
	str r9,[fp,#-384]
	mov r9,#5
	str r9,[fp,#-388]
	mov r9,#0
	str r9,[fp,#-392]
	mov r9,#3
	str r9,[fp,#-396]
	mov r9,#5
	str r9,[fp,#-400]
	mov r9,#0
	str r9,[fp,#-404]
	mov r9,#7
	str r9,[fp,#-408]
	mov r9,#0
	str r9,[fp,#-412]
	mov r9,#7
	str r9,[fp,#-416]
	mov r9,#5
	str r9,[fp,#-420]
	mov r9,#6
	str r9,[fp,#-424]
	mov r9,#7
	str r9,[fp,#-428]
	mov r9,#7
	str r9,[fp,#-432]
	mov r9,#8
	str r9,[fp,#-436]
	mov r9,#2
	str r9,[fp,#-440]
	mov r9,#6
	str r9,[fp,#-444]
	mov r9,#8
	str r9,[fp,#-448]
	mov r9,#9
	str r9,[fp,#-452]
	mov r9,#4
	str r9,[fp,#-456]
	mov r9,#6
	str r9,[fp,#-460]
	mov r9,#7
	str r9,[fp,#-464]
	mov r9,#2
	str r9,[fp,#-468]
	mov r9,#9
	str r9,[fp,#-472]
	mov r9,#8
	str r9,[fp,#-476]
	mov r9,#8
	str r9,[fp,#-480]
	mov r9,#0
	str r9,[fp,#-484]
	mov r9,#0
	str r9,[fp,#-488]
	mov r9,#3
	str r9,[fp,#-492]
	mov r9,#4
	str r9,[fp,#-496]
	mov r9,#8
	str r9,[fp,#-500]
	mov r9,#9
	str r9,[fp,#-504]
	mov r9,#0
	str r9,[fp,#-508]
	mov r9,#5
	str r9,[fp,#-512]
	mov r9,#9
	str r9,[fp,#-516]
	mov r9,#8
	str r9,[fp,#-520]
	mov r9,#5
	str r9,[fp,#-524]
	mov r9,#1
	str r9,[fp,#-528]
	mov r9,#2
	str r9,[fp,#-532]
	mov r9,#7
	str r9,[fp,#-536]
	mov r9,#3
	str r9,[fp,#-540]
	mov r9,#2
	str r9,[fp,#-544]
	mov r9,#5
	str r9,[fp,#-548]
	mov r9,#4
	str r9,[fp,#-552]
	mov r9,#9
	str r9,[fp,#-556]
	mov r9,#9
	str r9,[fp,#-560]
	mov r9,#6
	str r9,[fp,#-564]
	mov r9,#9
	str r9,[fp,#-568]
	mov r9,#2
	str r9,[fp,#-572]
	mov r9,#5
	str r9,[fp,#-576]
	mov r9,#5
	str r9,[fp,#-580]
	mov r9,#7
	str r9,[fp,#-584]
	mov r9,#8
	str r9,[fp,#-588]
	mov r9,#3
	str r9,[fp,#-592]
	mov r9,#8
	str r9,[fp,#-596]
	mov r9,#9
	str r9,[fp,#-600]
	mov r9,#4
	str r9,[fp,#-604]
	mov r9,#9
	str r9,[fp,#-608]
	mov r9,#0
	str r9,[fp,#-612]
	mov r9,#5
	str r9,[fp,#-616]
	mov r9,#9
	str r9,[fp,#-620]
	mov r9,#8
	str r9,[fp,#-624]
	mov r9,#4
	str r9,[fp,#-628]
	mov r9,#2
	str r9,[fp,#-632]
	mov r9,#5
	str r9,[fp,#-636]
	mov r9,#0
	str r9,[fp,#-640]
	mov r9,#7
	str r9,[fp,#-644]
	mov r9,#8
	str r9,[fp,#-648]
	mov r9,#8
	str r9,[fp,#-652]
	mov r9,#4
	str r9,[fp,#-656]
	mov r9,#6
	str r9,[fp,#-660]
	mov r9,#7
	str r9,[fp,#-664]
	mov r9,#9
	str r9,[fp,#-668]
	mov r9,#8
	str r9,[fp,#-672]
	mov r9,#2
	str r9,[fp,#-676]
	mov r9,#4
	str r9,[fp,#-680]
	mov r9,#4
	str r9,[fp,#-684]
	mov r9,#2
	str r9,[fp,#-688]
	mov r9,#9
	str r9,[fp,#-692]
	mov r9,#9
	str r9,[fp,#-696]
	mov r9,#8
	str r9,[fp,#-700]
	mov r9,#1
	str r9,[fp,#-704]
	mov r9,#2
	str r9,[fp,#-708]
	mov r9,#3
	str r9,[fp,#-712]
	mov r9,#7
	str r9,[fp,#-716]
	mov r9,#2
	str r9,[fp,#-720]
	mov r9,#2
	str r9,[fp,#-724]
	mov r9,#1
	str r9,[fp,#-728]
	mov r9,#7
	str r9,[fp,#-732]
	mov r9,#1
	str r9,[fp,#-736]
	mov r9,#2
	str r9,[fp,#-740]
	mov r9,#4
	str r9,[fp,#-744]
	mov r9,#0
	str r9,[fp,#-748]
	mov r9,#6
	str r9,[fp,#-752]
	mov r9,#6
	str r9,[fp,#-756]
	mov r9,#0
	str r9,[fp,#-760]
	mov r9,#9
	str r9,[fp,#-764]
	mov r9,#9
	str r9,[fp,#-768]
	mov r9,#0
	str r9,[fp,#-772]
	mov r9,#7
	str r9,[fp,#-776]
	mov r9,#8
	str r9,[fp,#-780]
	mov r9,#9
	str r9,[fp,#-784]
	mov r9,#8
	str r9,[fp,#-788]
	mov r9,#5
	str r9,[fp,#-792]
	mov r9,#1
	str r9,[fp,#-796]
	mov r9,#8
	str r9,[fp,#-800]
	mov r9,#9
	str r9,[fp,#-804]
	mov r9,#2
	str r9,[fp,#-808]
	mov r9,#4
	str r9,[fp,#-812]
	mov r9,#7
	str r9,[fp,#-816]
	mov r9,#3
	str r9,[fp,#-820]
	mov r9,#4
	str r9,[fp,#-824]
	mov r9,#7
	str r9,[fp,#-828]
	mov r9,#9
	str r9,[fp,#-832]
	mov r9,#9
	str r9,[fp,#-836]
	mov r9,#4
	str r9,[fp,#-840]
	mov r9,#7
	str r9,[fp,#-844]
	mov r9,#1
	str r9,[fp,#-848]
	mov r9,#9
	str r9,[fp,#-852]
	mov r9,#0
	str r9,[fp,#-856]
	mov r9,#6
	str r9,[fp,#-860]
	mov r9,#0
	str r9,[fp,#-864]
	mov r9,#6
	str r9,[fp,#-868]
	mov r9,#9
	str r9,[fp,#-872]
	mov r9,#8
	str r9,[fp,#-876]
	mov r9,#4
	str r9,[fp,#-880]
	mov r9,#3
	str r9,[fp,#-884]
	mov r9,#6
	str r9,[fp,#-888]
	mov r9,#2
	str r9,[fp,#-892]
	mov r9,#9
	str r9,[fp,#-896]
	mov r9,#7
	str r9,[fp,#-900]
	mov r9,#5
	str r9,[fp,#-904]
	mov r9,#6
	str r9,[fp,#-908]
	mov r9,#9
	str r9,[fp,#-912]
	mov r9,#8
	str r9,[fp,#-916]
	mov r9,#6
	str r9,[fp,#-920]
	mov r9,#5
	str r9,[fp,#-924]
	mov r9,#8
	str r9,[fp,#-928]
	mov r9,#4
	str r9,[fp,#-932]
	mov r9,#0
	str r9,[fp,#-936]
	mov r9,#5
	str r9,[fp,#-940]
	mov r9,#2
	str r9,[fp,#-944]
	mov r9,#3
	str r9,[fp,#-948]
	mov r9,#2
	str r9,[fp,#-952]
	mov r9,#4
	str r9,[fp,#-956]
	mov r9,#0
	str r9,[fp,#-960]
	mov r9,#0
	str r9,[fp,#-964]
	mov r9,#9
	str r9,[fp,#-968]
	mov r9,#5
	str r9,[fp,#-972]
	mov r9,#8
	str r9,[fp,#-976]
	mov r9,#9
	str r9,[fp,#-980]
	mov r9,#2
	str r9,[fp,#-984]
	mov r9,#5
	str r9,[fp,#-988]
	mov r9,#2
	str r9,[fp,#-992]
	mov r9,#5
	str r9,[fp,#-996]
	mov r9,#0
	str r9,[fp,#-1000]
	mov r9,#9
	str r9,[fp,#-1004]
	mov r9,#4
	str r9,[fp,#-1008]
	mov r9,#2
	str r9,[fp,#-1012]
	mov r9,#0
	str r9,[fp,#-1016]
	mov r9,#0
	str r9,[fp,#-1020]
	mov r9,#1
	str r9,[fp,#-1024]
	mov r9,#5
	str r9,[fp,#-1028]
	mov r9,#0
	str r9,[fp,#-1032]
	mov r9,#4
	str r9,[fp,#-1036]
	mov r9,#9
	str r9,[fp,#-1040]
	mov r9,#4
	str r9,[fp,#-1044]
	mov r9,#9
	str r9,[fp,#-1048]
	mov r9,#4
	str r9,[fp,#-1052]
	mov r9,#6
	str r9,[fp,#-1056]
	mov r9,#0
	str r9,[fp,#-1060]
	mov r9,#0
	str r9,[fp,#-1064]
	mov r9,#4
	str r9,[fp,#-1068]
	mov r9,#2
	str r9,[fp,#-1072]
	mov r9,#6
	str r9,[fp,#-1076]
	mov r9,#9
	str r9,[fp,#-1080]
	mov r9,#3
	str r9,[fp,#-1084]
	mov r9,#7
	str r9,[fp,#-1088]
	mov r9,#8
	str r9,[fp,#-1092]
	mov r9,#5
	str r9,[fp,#-1096]
	mov r9,#5
	str r9,[fp,#-1100]
	mov r9,#7
	str r9,[fp,#-1104]
	mov r9,#1
	str r9,[fp,#-1108]
	mov r9,#0
	str r9,[fp,#-1112]
	mov r9,#5
	str r9,[fp,#-1116]
	mov r9,#3
	str r9,[fp,#-1120]
	mov r9,#6
	str r9,[fp,#-1124]
	mov r9,#0
	str r9,[fp,#-1128]
	mov r9,#3
	str r9,[fp,#-1132]
	mov r9,#3
	str r9,[fp,#-1136]
	mov r9,#6
	str r9,[fp,#-1140]
	mov r9,#2
	str r9,[fp,#-1144]
	mov r9,#9
	str r9,[fp,#-1148]
	mov r9,#9
	str r9,[fp,#-1152]
	mov r9,#1
	str r9,[fp,#-1156]
	mov r9,#9
	str r9,[fp,#-1160]
	mov r9,#6
	str r9,[fp,#-1164]
	mov r9,#2
	str r9,[fp,#-1168]
	mov r9,#4
	str r9,[fp,#-1172]
	mov r9,#1
	str r9,[fp,#-1176]
	mov r9,#5
	str r9,[fp,#-1180]
	mov r9,#1
	str r9,[fp,#-1184]
	mov r9,#5
	str r9,[fp,#-1188]
	mov r9,#0
	str r9,[fp,#-1192]
	mov r9,#8
	str r9,[fp,#-1196]
	mov r9,#5
	str r9,[fp,#-1200]
	mov r9,#7
	str r9,[fp,#-1204]
	mov r9,#9
	str r9,[fp,#-1208]
	mov r9,#4
	str r9,[fp,#-1212]
	mov r9,#6
	str r9,[fp,#-1216]
	mov r9,#1
	str r9,[fp,#-1220]
	mov r9,#3
	str r9,[fp,#-1224]
	mov r9,#9
	str r9,[fp,#-1228]
	mov r9,#4
	str r9,[fp,#-1232]
	mov r9,#2
	str r9,[fp,#-1236]
	mov r9,#3
	str r9,[fp,#-1240]
	mov r9,#0
	str r9,[fp,#-1244]
	mov r9,#8
	str r9,[fp,#-1248]
	mov r9,#6
	str r9,[fp,#-1252]
	mov r9,#0
	str r9,[fp,#-1256]
	mov r9,#9
	str r9,[fp,#-1260]
	mov r9,#7
	str r9,[fp,#-1264]
	mov r9,#3
	str r9,[fp,#-1268]
	mov r9,#1
	str r9,[fp,#-1272]
	mov r9,#3
	str r9,[fp,#-1276]
	mov r9,#7
	str r9,[fp,#-1280]
	mov r9,#0
	str r9,[fp,#-1284]
	mov r9,#9
	str r9,[fp,#-1288]
	mov r9,#2
	str r9,[fp,#-1292]
	mov r9,#3
	str r9,[fp,#-1296]
	mov r9,#1
	str r9,[fp,#-1300]
	mov r9,#2
	str r9,[fp,#-1304]
	mov r9,#9
	str r9,[fp,#-1308]
	mov r9,#3
	str r9,[fp,#-1312]
	mov r9,#8
	str r9,[fp,#-1316]
	mov r9,#5
	str r9,[fp,#-1320]
	mov r9,#7
	str r9,[fp,#-1324]
	mov r9,#3
	str r9,[fp,#-1328]
	mov r9,#9
	str r9,[fp,#-1332]
	mov r9,#6
	str r9,[fp,#-1336]
	mov r9,#7
	str r9,[fp,#-1340]
	mov r9,#1
	str r9,[fp,#-1344]
	mov r9,#9
	str r9,[fp,#-1348]
	mov r9,#6
	str r9,[fp,#-1352]
	mov r9,#3
	str r9,[fp,#-1356]
	mov r9,#8
	str r9,[fp,#-1360]
	mov r9,#1
	str r9,[fp,#-1364]
	mov r9,#8
	str r9,[fp,#-1368]
	mov r9,#8
	str r9,[fp,#-1372]
	mov r9,#2
	str r9,[fp,#-1376]
	mov r9,#8
	str r9,[fp,#-1380]
	mov r9,#7
	str r9,[fp,#-1384]
	mov r9,#5
	str r9,[fp,#-1388]
	mov r9,#4
	str r9,[fp,#-1392]
	mov r9,#2
	str r9,[fp,#-1396]
	mov r9,#0
	str r9,[fp,#-1400]
	mov r9,#4
	str r9,[fp,#-1404]
	mov r9,#0
	str r9,[fp,#-1408]
	mov r9,#7
	str r9,[fp,#-1412]
	mov r9,#7
	str r9,[fp,#-1416]
	mov r9,#8
	str r9,[fp,#-1420]
	mov r9,#9
	str r9,[fp,#-1424]
	mov r9,#6
	str r9,[fp,#-1428]
	mov r9,#6
	str r9,[fp,#-1432]
	mov r9,#7
	str r9,[fp,#-1436]
	mov r9,#7
	str r9,[fp,#-1440]
	mov r9,#1
	str r9,[fp,#-1444]
	mov r9,#6
	str r9,[fp,#-1448]
	mov r9,#0
	str r9,[fp,#-1452]
	mov r9,#5
	str r9,[fp,#-1456]
	mov r9,#3
	str r9,[fp,#-1460]
	mov r9,#4
	str r9,[fp,#-1464]
	mov r9,#2
	str r9,[fp,#-1468]
	mov r9,#6
	str r9,[fp,#-1472]
	mov r9,#3
	str r9,[fp,#-1476]
	mov r9,#6
	str r9,[fp,#-1480]
	mov r9,#3
	str r9,[fp,#-1484]
	mov r9,#4
	str r9,[fp,#-1488]
	mov r9,#1
	str r9,[fp,#-1492]
	mov r9,#3
	str r9,[fp,#-1496]
	mov r9,#6
	str r9,[fp,#-1500]
	mov r9,#9
	str r9,[fp,#-1504]
	mov r9,#4
	str r9,[fp,#-1508]
	mov r9,#3
	str r9,[fp,#-1512]
	mov r9,#0
	str r9,[fp,#-1516]
	mov r9,#9
	str r9,[fp,#-1520]
	mov r9,#0
	str r9,[fp,#-1524]
	mov r9,#2
	str r9,[fp,#-1528]
	mov r9,#2
	str r9,[fp,#-1532]
	mov r9,#0
	str r9,[fp,#-1536]
	mov r9,#8
	str r9,[fp,#-1540]
	mov r9,#8
	str r9,[fp,#-1544]
	mov r9,#4
	str r9,[fp,#-1548]
	mov r9,#5
	str r9,[fp,#-1552]
	mov r9,#8
	str r9,[fp,#-1556]
	mov r9,#2
	str r9,[fp,#-1560]
	mov r9,#3
	str r9,[fp,#-1564]
	mov r9,#3
	str r9,[fp,#-1568]
	mov r9,#7
	str r9,[fp,#-1572]
	mov r9,#2
	str r9,[fp,#-1576]
	mov r9,#5
	str r9,[fp,#-1580]
	mov r9,#9
	str r9,[fp,#-1584]
	mov r9,#6
	str r9,[fp,#-1588]
	mov r9,#7
	str r9,[fp,#-1592]
	mov r9,#0
	str r9,[fp,#-1596]
	mov r9,#1
	str r9,[fp,#-1600]
	mov r9,#8
	str r9,[fp,#-1604]
	mov r9,#5
	str r9,[fp,#-1608]
	mov r9,#7
	str r9,[fp,#-1612]
	mov r9,#8
	str r9,[fp,#-1616]
	mov r9,#3
	str r9,[fp,#-1620]
	mov r9,#0
	str r9,[fp,#-1624]
	mov r9,#2
	str r9,[fp,#-1628]
	mov r9,#9
	str r9,[fp,#-1632]
	mov r9,#1
	str r9,[fp,#-1636]
	mov r9,#5
	str r9,[fp,#-1640]
	mov r9,#4
	str r9,[fp,#-1644]
	mov r9,#9
	str r9,[fp,#-1648]
	mov r9,#4
	str r9,[fp,#-1652]
	mov r9,#5
	str r9,[fp,#-1656]
	mov r9,#3
	str r9,[fp,#-1660]
	mov r9,#7
	str r9,[fp,#-1664]
	mov r9,#4
	str r9,[fp,#-1668]
	mov r9,#0
	str r9,[fp,#-1672]
	mov r9,#2
	str r9,[fp,#-1676]
	mov r9,#7
	str r9,[fp,#-1680]
	mov r9,#1
	str r9,[fp,#-1684]
	mov r9,#3
	str r9,[fp,#-1688]
	mov r9,#2
	str r9,[fp,#-1692]
	mov r9,#7
	str r9,[fp,#-1696]
	mov r9,#1
	str r9,[fp,#-1700]
	mov r9,#7
	str r9,[fp,#-1704]
	mov r9,#0
	str r9,[fp,#-1708]
	mov r9,#0
	str r9,[fp,#-1712]
	mov r9,#6
	str r9,[fp,#-1716]
	mov r9,#7
	str r9,[fp,#-1720]
	mov r9,#8
	str r9,[fp,#-1724]
	mov r9,#9
	str r9,[fp,#-1728]
	mov r9,#0
	str r9,[fp,#-1732]
	mov r9,#2
	str r9,[fp,#-1736]
	mov r9,#5
	str r9,[fp,#-1740]
	mov r9,#4
	str r9,[fp,#-1744]
	mov r9,#6
	str r9,[fp,#-1748]
	mov r9,#2
	str r9,[fp,#-1752]
	mov r9,#9
	str r9,[fp,#-1756]
	mov r9,#2
	str r9,[fp,#-1760]
	mov r9,#1
	str r9,[fp,#-1764]
	mov r9,#0
	str r9,[fp,#-1768]
	mov r9,#2
	str r9,[fp,#-1772]
	mov r9,#2
	str r9,[fp,#-1776]
	mov r9,#7
	str r9,[fp,#-1780]
	mov r9,#3
	str r9,[fp,#-1784]
	mov r9,#8
	str r9,[fp,#-1788]
	mov r9,#9
	str r9,[fp,#-1792]
	mov r9,#6
	str r9,[fp,#-1796]
	mov r9,#3
	str r9,[fp,#-1800]
	mov r9,#6
	str r9,[fp,#-1804]
	mov r9,#9
	str r9,[fp,#-1808]
	mov r9,#0
	str r9,[fp,#-1812]
	mov r9,#8
	str r9,[fp,#-1816]
	mov r9,#1
	str r9,[fp,#-1820]
	mov r9,#2
	str r9,[fp,#-1824]
	mov r9,#2
	str r9,[fp,#-1828]
	mov r9,#9
	str r9,[fp,#-1832]
	mov r9,#5
	str r9,[fp,#-1836]
	mov r9,#8
	str r9,[fp,#-1840]
	mov r9,#2
	str r9,[fp,#-1844]
	mov r9,#5
	str r9,[fp,#-1848]
	mov r9,#0
	str r9,[fp,#-1852]
	mov r9,#4
	str r9,[fp,#-1856]
	mov r9,#7
	str r9,[fp,#-1860]
	mov r9,#0
	str r9,[fp,#-1864]
	mov r9,#8
	str r9,[fp,#-1868]
	mov r9,#2
	str r9,[fp,#-1872]
	mov r9,#9
	str r9,[fp,#-1876]
	mov r9,#6
	str r9,[fp,#-1880]
	mov r9,#7
	str r9,[fp,#-1884]
	mov r9,#7
	str r9,[fp,#-1888]
	mov r9,#5
	str r9,[fp,#-1892]
	mov r9,#2
	str r9,[fp,#-1896]
	mov r9,#6
	str r9,[fp,#-1900]
	mov r9,#6
	str r9,[fp,#-1904]
	mov r9,#8
	str r9,[fp,#-1908]
	mov r9,#8
	str r9,[fp,#-1912]
	mov r9,#9
	str r9,[fp,#-1916]
	mov r9,#7
	str r9,[fp,#-1920]
	mov r9,#7
	str r9,[fp,#-1924]
	mov r9,#4
	str r9,[fp,#-1928]
	mov r9,#9
	str r9,[fp,#-1932]
	mov r9,#0
	str r9,[fp,#-1936]
	mov r9,#8
	str r9,[fp,#-1940]
	mov r9,#7
	str r9,[fp,#-1944]
	mov r9,#6
	str r9,[fp,#-1948]
	mov r9,#8
	str r9,[fp,#-1952]
	mov r9,#3
	str r9,[fp,#-1956]
	mov r9,#1
	str r9,[fp,#-1960]
	mov r9,#6
	str r9,[fp,#-1964]
	mov r9,#7
	str r9,[fp,#-1968]
	mov r9,#4
	str r9,[fp,#-1972]
	mov r9,#6
	str r9,[fp,#-1976]
	mov r9,#5
	str r9,[fp,#-1980]
	mov r9,#6
	str r9,[fp,#-1984]
	mov r9,#2
	str r9,[fp,#-1988]
	mov r9,#8
	str r9,[fp,#-1992]
	mov r9,#8
	str r9,[fp,#-1996]
	mov r9,#5
	str r9,[fp,#-2000]
	mov r9,#9
	str r9,[fp,#-2004]
	mov r9,#0
	str r9,[fp,#-2008]
	mov r9,#3
	str r9,[fp,#-2012]
	mov r9,#1
	str r9,[fp,#-2016]
	mov r9,#9
	str r9,[fp,#-2020]
	mov r9,#1
	str r9,[fp,#-2024]
	mov r9,#4
	str r9,[fp,#-2028]
	mov r9,#9
	str r9,[fp,#-2032]
	mov r9,#6
	str r9,[fp,#-2036]
	mov r9,#4
	str r9,[fp,#-2040]
	mov r9,#7
	str r9,[fp,#-2044]
	mov r9,#6
	str r9,[fp,#-2048]
	mov r9,#6
	str r9,[fp,#-2052]
	mov r9,#8
	str r9,[fp,#-2056]
	mov r9,#9
	str r9,[fp,#-2060]
	mov r9,#6
	str r9,[fp,#-2064]
	mov r9,#6
	str r9,[fp,#-2068]
	mov r9,#1
	str r9,[fp,#-2072]
	mov r9,#2
	str r9,[fp,#-2076]
	mov r9,#5
	str r9,[fp,#-2080]
	mov r9,#2
	str r9,[fp,#-2084]
	mov r9,#0
	str r9,[fp,#-2088]
	mov r9,#3
	str r9,[fp,#-2092]
	mov r9,#8
	str r9,[fp,#-2096]
	mov r9,#2
	str r9,[fp,#-2100]
	mov r9,#9
	str r9,[fp,#-2104]
	mov r9,#1
	str r9,[fp,#-2108]
	mov r9,#3
	str r9,[fp,#-2112]
	mov r9,#9
	str r9,[fp,#-2116]
	mov r9,#6
	str r9,[fp,#-2120]
	mov r9,#2
	str r9,[fp,#-2124]
	mov r9,#3
	str r9,[fp,#-2128]
	mov r9,#2
	str r9,[fp,#-2132]
	mov r9,#9
	str r9,[fp,#-2136]
	mov r9,#9
	str r9,[fp,#-2140]
	mov r9,#3
	str r9,[fp,#-2144]
	mov r9,#8
	str r9,[fp,#-2148]
	mov r9,#8
	str r9,[fp,#-2152]
	mov r9,#1
	str r9,[fp,#-2156]
	mov r9,#9
	str r9,[fp,#-2160]
	mov r9,#8
	str r9,[fp,#-2164]
	mov r9,#5
	str r9,[fp,#-2168]
	mov r9,#1
	str r9,[fp,#-2172]
	mov r9,#1
	str r9,[fp,#-2176]
	mov r9,#2
	str r9,[fp,#-2180]
	mov r9,#7
	str r9,[fp,#-2184]
	mov r9,#9
	str r9,[fp,#-2188]
	mov r9,#3
	str r9,[fp,#-2192]
	mov r9,#7
	str r9,[fp,#-2196]
	mov r9,#4
	str r9,[fp,#-2200]
	mov r9,#3
	str r9,[fp,#-2204]
	mov r9,#4
	str r9,[fp,#-2208]
	mov r9,#0
	str r9,[fp,#-2212]
	mov r9,#7
	str r9,[fp,#-2216]
	mov r9,#4
	str r9,[fp,#-2220]
	mov r9,#9
	str r9,[fp,#-2224]
	mov r9,#1
	str r9,[fp,#-2228]
	mov r9,#4
	str r9,[fp,#-2232]
	mov r9,#6
	str r9,[fp,#-2236]
	mov r9,#4
	str r9,[fp,#-2240]
	mov r9,#3
	str r9,[fp,#-2244]
	mov r9,#8
	str r9,[fp,#-2248]
	mov r9,#3
	str r9,[fp,#-2252]
	mov r9,#8
	str r9,[fp,#-2256]
	mov r9,#7
	str r9,[fp,#-2260]
	mov r9,#6
	str r9,[fp,#-2264]
	mov r9,#3
	str r9,[fp,#-2268]
	mov r9,#2
	str r9,[fp,#-2272]
	mov r9,#1
	str r9,[fp,#-2276]
	mov r9,#8
	str r9,[fp,#-2280]
	mov r9,#5
	str r9,[fp,#-2284]
	mov r9,#2
	str r9,[fp,#-2288]
	mov r9,#3
	str r9,[fp,#-2292]
	mov r9,#1
	str r9,[fp,#-2296]
	mov r9,#3
	str r9,[fp,#-2300]
	mov r9,#7
	str r9,[fp,#-2304]
	mov r9,#6
	str r9,[fp,#-2308]
	mov r9,#2
	str r9,[fp,#-2312]
	mov r9,#4
	str r9,[fp,#-2316]
	mov r9,#0
	str r9,[fp,#-2320]
	mov r9,#9
	str r9,[fp,#-2324]
	mov r9,#9
	str r9,[fp,#-2328]
	mov r9,#7
	str r9,[fp,#-2332]
	mov r9,#8
	str r9,[fp,#-2336]
	mov r9,#3
	str r9,[fp,#-2340]
	mov r9,#7
	str r9,[fp,#-2344]
	mov r9,#5
	str r9,[fp,#-2348]
	mov r9,#8
	str r9,[fp,#-2352]
	mov r9,#8
	str r9,[fp,#-2356]
	mov r9,#5
	str r9,[fp,#-2360]
	mov r9,#6
	str r9,[fp,#-2364]
	mov r9,#7
	str r9,[fp,#-2368]
	mov r9,#3
	str r9,[fp,#-2372]
	mov r9,#2
	str r9,[fp,#-2376]
	mov r9,#9
	str r9,[fp,#-2380]
	mov r9,#5
	str r9,[fp,#-2384]
	mov r9,#5
	str r9,[fp,#-2388]
	mov r9,#1
	str r9,[fp,#-2392]
	mov r9,#5
	str r9,[fp,#-2396]
	mov r9,#7
	str r9,[fp,#-2400]
	mov r9,#9
	str r9,[fp,#-2404]
	mov r9,#7
	str r9,[fp,#-2408]
	mov r9,#9
	str r9,[fp,#-2412]
	mov r9,#0
	str r9,[fp,#-2416]
	mov r9,#5
	str r9,[fp,#-2420]
	mov r9,#4
	str r9,[fp,#-2424]
	mov r9,#3
	str r9,[fp,#-2428]
	mov r9,#3
	str r9,[fp,#-2432]
	mov r9,#0
	str r9,[fp,#-2436]
	mov r9,#0
	str r9,[fp,#-2440]
	mov r9,#0
	str r9,[fp,#-2444]
	mov r9,#3
	str r9,[fp,#-2448]
	mov r9,#5
	str r9,[fp,#-2452]
	mov r9,#1
	str r9,[fp,#-2456]
	mov r9,#6
	str r9,[fp,#-2460]
	mov r9,#2
	str r9,[fp,#-2464]
	mov r9,#0
	str r9,[fp,#-2468]
	mov r9,#4
	str r9,[fp,#-2472]
	mov r9,#7
	str r9,[fp,#-2476]
	mov r9,#4
	str r9,[fp,#-2480]
	mov r9,#9
	str r9,[fp,#-2484]
	mov r9,#7
	str r9,[fp,#-2488]
	mov r9,#3
	str r9,[fp,#-2492]
	mov r9,#4
	str r9,[fp,#-2496]
	mov r9,#0
	str r9,[fp,#-2500]
	mov r9,#6
	str r9,[fp,#-2504]
	mov r9,#0
	str r9,[fp,#-2508]
	mov r9,#3
	str r9,[fp,#-2512]
	mov r9,#1
	str r9,[fp,#-2516]
	mov r9,#3
	str r9,[fp,#-2520]
	mov r9,#5
	str r9,[fp,#-2524]
	mov r9,#7
	str r9,[fp,#-2528]
	mov r9,#3
	str r9,[fp,#-2532]
	mov r9,#8
	str r9,[fp,#-2536]
	mov r9,#3
	str r9,[fp,#-2540]
	mov r9,#1
	str r9,[fp,#-2544]
	mov r9,#9
	str r9,[fp,#-2548]
	mov r9,#6
	str r9,[fp,#-2552]
	mov r9,#8
	str r9,[fp,#-2556]
	mov r9,#6
	str r9,[fp,#-2560]
	mov r9,#7
	str r9,[fp,#-2564]
	mov r9,#7
	str r9,[fp,#-2568]
	mov r9,#3
	str r9,[fp,#-2572]
	mov r9,#2
	str r9,[fp,#-2576]
	mov r9,#9
	str r9,[fp,#-2580]
	mov r9,#8
	str r9,[fp,#-2584]
	mov r9,#1
	str r9,[fp,#-2588]
	mov r9,#9
	str r9,[fp,#-2592]
	mov r9,#5
	str r9,[fp,#-2596]
	mov r9,#8
	str r9,[fp,#-2600]
	mov r9,#4
	str r9,[fp,#-2604]
	mov r9,#7
	str r9,[fp,#-2608]
	mov r9,#8
	str r9,[fp,#-2612]
	mov r9,#9
	str r9,[fp,#-2616]
	mov r9,#9
	str r9,[fp,#-2620]
	mov r9,#0
	str r9,[fp,#-2624]
	mov r9,#9
	str r9,[fp,#-2628]
	mov r9,#2
	str r9,[fp,#-2632]
	mov r9,#9
	str r9,[fp,#-2636]
	mov r9,#0
	str r9,[fp,#-2640]
	mov r9,#0
	str r9,[fp,#-2644]
	mov r9,#7
	str r9,[fp,#-2648]
	mov r9,#4
	str r9,[fp,#-2652]
	mov r9,#3
	str r9,[fp,#-2656]
	mov r9,#9
	str r9,[fp,#-2660]
	mov r9,#2
	str r9,[fp,#-2664]
	mov r9,#2
	str r9,[fp,#-2668]
	mov r9,#7
	str r9,[fp,#-2672]
	mov r9,#8
	str r9,[fp,#-2676]
	mov r9,#7
	str r9,[fp,#-2680]
	mov r6,#1
	mov r5,#3
	mov r4,#5
	mov r3,#8
	mov r2,#4
	mov r1,#4
	mov r0,#0
	mov r8,#9
	@%r676 = call i32 @func(i32 %r0,i32 %r1,i32 %r2,i32 %r3,i32 %r4,i32 %r5,i32 %r6,i32 %r7,i32 %r8,i32 %r9,i32 %r10,i32 %r11,i32 %r12,i32 %r13,i32 %r14,i32 %r15,i32 %r16,i32 %r17,i32 %r18,i32 %r19,i32 %r20,i32 %r21,i32 %r22,i32 %r23,i32 %r24,i32 %r25,i32 %r26,i32 %r27,i32 %r28,i32 %r29,i32 %r30,i32 %r31,i32 %r32,i32 %r33,i32 %r34,i32 %r35,i32 %r36,i32 %r37,i32 %r38,i32 %r39,i32 %r40,i32 %r41,i32 %r42,i32 %r43,i32 %r44,i32 %r45,i32 %r46,i32 %r47,i32 %r48,i32 %r49,i32 %r50,i32 %r51,i32 %r52,i32 %r53,i32 %r54,i32 %r55,i32 %r56,i32 %r57,i32 %r58,i32 %r59,i32 %r60,i32 %r61,i32 %r62,i32 %r63,i32 %r64,i32 %r65,i32 %r66,i32 %r67,i32 %r68,i32 %r69,i32 %r70,i32 %r71,i32 %r72,i32 %r73,i32 %r74,i32 %r75,i32 %r76,i32 %r77,i32 %r78,i32 %r79,i32 %r80,i32 %r81,i32 %r82,i32 %r83,i32 %r84,i32 %r85,i32 %r86,i32 %r87,i32 %r88,i32 %r89,i32 %r90,i32 %r91,i32 %r92,i32 %r93,i32 %r94,i32 %r95,i32 %r96,i32 %r97,i32 %r98,i32 %r99,i32 %r100,i32 %r101,i32 %r102,i32 %r103,i32 %r104,i32 %r105,i32 %r106,i32 %r107,i32 %r108,i32 %r109,i32 %r110,i32 %r111,i32 %r112,i32 %r113,i32 %r114,i32 %r115,i32 %r116,i32 %r117,i32 %r118,i32 %r119,i32 %r120,i32 %r121,i32 %r122,i32 %r123,i32 %r124,i32 %r125,i32 %r126,i32 %r127,i32 %r128,i32 %r129,i32 %r130,i32 %r131,i32 %r132,i32 %r133,i32 %r134,i32 %r135,i32 %r136,i32 %r137,i32 %r138,i32 %r139,i32 %r140,i32 %r141,i32 %r142,i32 %r143,i32 %r144,i32 %r145,i32 %r146,i32 %r147,i32 %r148,i32 %r149,i32 %r150,i32 %r151,i32 %r152,i32 %r153,i32 %r154,i32 %r155,i32 %r156,i32 %r157,i32 %r158,i32 %r159,i32 %r160,i32 %r161,i32 %r162,i32 %r163,i32 %r164,i32 %r165,i32 %r166,i32 %r167,i32 %r168,i32 %r169,i32 %r170,i32 %r171,i32 %r172,i32 %r173,i32 %r174,i32 %r175,i32 %r176,i32 %r177,i32 %r178,i32 %r179,i32 %r180,i32 %r181,i32 %r182,i32 %r183,i32 %r184,i32 %r185,i32 %r186,i32 %r187,i32 %r188,i32 %r189,i32 %r190,i32 %r191,i32 %r192,i32 %r193,i32 %r194,i32 %r195,i32 %r196,i32 %r197,i32 %r198,i32 %r199,i32 %r200,i32 %r201,i32 %r202,i32 %r203,i32 %r204,i32 %r205,i32 %r206,i32 %r207,i32 %r208,i32 %r209,i32 %r210,i32 %r211,i32 %r212,i32 %r213,i32 %r214,i32 %r215,i32 %r216,i32 %r217,i32 %r218,i32 %r219,i32 %r220,i32 %r221,i32 %r222,i32 %r223,i32 %r224,i32 %r225,i32 %r226,i32 %r227,i32 %r228,i32 %r229,i32 %r230,i32 %r231,i32 %r232,i32 %r233,i32 %r234,i32 %r235,i32 %r236,i32 %r237,i32 %r238,i32 %r239,i32 %r240,i32 %r241,i32 %r242,i32 %r243,i32 %r244,i32 %r245,i32 %r246,i32 %r247,i32 %r248,i32 %r249,i32 %r250,i32 %r251,i32 %r252,i32 %r253,i32 %r254,i32 %r255,i32 %r256,i32 %r257,i32 %r258,i32 %r259,i32 %r260,i32 %r261,i32 %r262,i32 %r263,i32 %r264,i32 %r265,i32 %r266,i32 %r267,i32 %r268,i32 %r269,i32 %r270,i32 %r271,i32 %r272,i32 %r273,i32 %r274,i32 %r275,i32 %r276,i32 %r277,i32 %r278,i32 %r279,i32 %r280,i32 %r281,i32 %r282,i32 %r283,i32 %r284,i32 %r285,i32 %r286,i32 %r287,i32 %r288,i32 %r289,i32 %r290,i32 %r291,i32 %r292,i32 %r293,i32 %r294,i32 %r295,i32 %r296,i32 %r297,i32 %r298,i32 %r299,i32 %r300,i32 %r301,i32 %r302,i32 %r303,i32 %r304,i32 %r305,i32 %r306,i32 %r307,i32 %r308,i32 %r309,i32 %r310,i32 %r311,i32 %r312,i32 %r313,i32 %r314,i32 %r315,i32 %r316,i32 %r317,i32 %r318,i32 %r319,i32 %r320,i32 %r321,i32 %r322,i32 %r323,i32 %r324,i32 %r325,i32 %r326,i32 %r327,i32 %r328,i32 %r329,i32 %r330,i32 %r331,i32 %r332,i32 %r333,i32 %r334,i32 %r335,i32 %r336,i32 %r337,i32 %r338,i32 %r339,i32 %r340,i32 %r341,i32 %r342,i32 %r343,i32 %r344,i32 %r345,i32 %r346,i32 %r347,i32 %r348,i32 %r349,i32 %r350,i32 %r351,i32 %r352,i32 %r353,i32 %r354,i32 %r355,i32 %r356,i32 %r357,i32 %r358,i32 %r359,i32 %r360,i32 %r361,i32 %r362,i32 %r363,i32 %r364,i32 %r365,i32 %r366,i32 %r367,i32 %r368,i32 %r369,i32 %r370,i32 %r371,i32 %r372,i32 %r373,i32 %r374,i32 %r375,i32 %r376,i32 %r377,i32 %r378,i32 %r379,i32 %r380,i32 %r381,i32 %r382,i32 %r383,i32 %r384,i32 %r385,i32 %r386,i32 %r387,i32 %r388,i32 %r389,i32 %r390,i32 %r391,i32 %r392,i32 %r393,i32 %r394,i32 %r395,i32 %r396,i32 %r397,i32 %r398,i32 %r399,i32 %r400,i32 %r401,i32 %r402,i32 %r403,i32 %r404,i32 %r405,i32 %r406,i32 %r407,i32 %r408,i32 %r409,i32 %r410,i32 %r411,i32 %r412,i32 %r413,i32 %r414,i32 %r415,i32 %r416,i32 %r417,i32 %r418,i32 %r419,i32 %r420,i32 %r421,i32 %r422,i32 %r423,i32 %r424,i32 %r425,i32 %r426,i32 %r427,i32 %r428,i32 %r429,i32 %r430,i32 %r431,i32 %r432,i32 %r433,i32 %r434,i32 %r435,i32 %r436,i32 %r437,i32 %r438,i32 %r439,i32 %r440,i32 %r441,i32 %r442,i32 %r443,i32 %r444,i32 %r445,i32 %r446,i32 %r447,i32 %r448,i32 %r449,i32 %r450,i32 %r451,i32 %r452,i32 %r453,i32 %r454,i32 %r455,i32 %r456,i32 %r457,i32 %r458,i32 %r459,i32 %r460,i32 %r461,i32 %r462,i32 %r463,i32 %r464,i32 %r465,i32 %r466,i32 %r467,i32 %r468,i32 %r469,i32 %r470,i32 %r471,i32 %r472,i32 %r473,i32 %r474,i32 %r475,i32 %r476,i32 %r477,i32 %r478,i32 %r479,i32 %r480,i32 %r481,i32 %r482,i32 %r483,i32 %r484,i32 %r485,i32 %r486,i32 %r487,i32 %r488,i32 %r489,i32 %r490,i32 %r491,i32 %r492,i32 %r493,i32 %r494,i32 %r495,i32 %r496,i32 %r497,i32 %r498,i32 %r499,i32 %r500,i32 %r501,i32 %r502,i32 %r503,i32 %r504,i32 %r505,i32 %r506,i32 %r507,i32 %r508,i32 %r509,i32 %r510,i32 %r511,i32 %r512,i32 %r513,i32 %r514,i32 %r515,i32 %r516,i32 %r517,i32 %r518,i32 %r519,i32 %r520,i32 %r521,i32 %r522,i32 %r523,i32 %r524,i32 %r525,i32 %r526,i32 %r527,i32 %r528,i32 %r529,i32 %r530,i32 %r531,i32 %r532,i32 %r533,i32 %r534,i32 %r535,i32 %r536,i32 %r537,i32 %r538,i32 %r539,i32 %r540,i32 %r541,i32 %r542,i32 %r543,i32 %r544,i32 %r545,i32 %r546,i32 %r547,i32 %r548,i32 %r549,i32 %r550,i32 %r551,i32 %r552,i32 %r553,i32 %r554,i32 %r555,i32 %r556,i32 %r557,i32 %r558,i32 %r559,i32 %r560,i32 %r561,i32 %r562,i32 %r563,i32 %r564,i32 %r565,i32 %r566,i32 %r567,i32 %r568,i32 %r569,i32 %r570,i32 %r571,i32 %r572,i32 %r573,i32 %r574,i32 %r575,i32 %r576,i32 %r577,i32 %r578,i32 %r579,i32 %r580,i32 %r581,i32 %r582,i32 %r583,i32 %r584,i32 %r585,i32 %r586,i32 %r587,i32 %r588,i32 %r589,i32 %r590,i32 %r591,i32 %r592,i32 %r593,i32 %r594,i32 %r595,i32 %r596,i32 %r597,i32 %r598,i32 %r599,i32 %r600,i32 %r601,i32 %r602,i32 %r603,i32 %r604,i32 %r605,i32 %r606,i32 %r607,i32 %r608,i32 %r609,i32 %r610,i32 %r611,i32 %r612,i32 %r613,i32 %r614,i32 %r615,i32 %r616,i32 %r617,i32 %r618,i32 %r619,i32 %r620,i32 %r621,i32 %r622,i32 %r623,i32 %r624,i32 %r625,i32 %r626,i32 %r627,i32 %r628,i32 %r629,i32 %r630,i32 %r631,i32 %r632,i32 %r633,i32 %r634,i32 %r635,i32 %r636,i32 %r637,i32 %r638,i32 %r639,i32 %r640,i32 %r641,i32 %r642,i32 %r643,i32 %r644,i32 %r645,i32 %r646,i32 %r647,i32 %r648,i32 %r649,i32 %r650,i32 %r651,i32 %r652,i32 %r653,i32 %r654,i32 %r655,i32 %r656,i32 %r657,i32 %r658,i32 %r659,i32 %r660,i32 %r661,i32 %r662,i32 %r663,i32 %r664,i32 %r665,i32 %r666,i32 %r667,i32 %r668,i32 %r669,i32 %r670,i32 %r671,i32 %r672,i32 %r673,i32 %r674,i32 %r675)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	sub sp,sp,#2688
	str r8,[sp,#2684]  @%r675
	str r0,[sp,#2680]  @%r674
	str r1,[sp,#2676]  @%r673
	str r2,[sp,#2672]  @%r672
	str r3,[sp,#2668]  @%r671
	str r4,[sp,#2664]  @%r670
	str r5,[sp,#2660]  @%r669
	str r6,[sp,#2656]  @%r668
	ldr r9,[fp,#-2680]
	str r9,[sp,#2652]  @%r667
	ldr r9,[fp,#-2676]
	str r9,[sp,#2648]  @%r666
	ldr r9,[fp,#-2672]
	str r9,[sp,#2644]  @%r665
	ldr r9,[fp,#-2668]
	str r9,[sp,#2640]  @%r664
	ldr r9,[fp,#-2664]
	str r9,[sp,#2636]  @%r663
	ldr r9,[fp,#-2660]
	str r9,[sp,#2632]  @%r662
	ldr r9,[fp,#-2656]
	str r9,[sp,#2628]  @%r661
	ldr r9,[fp,#-2652]
	str r9,[sp,#2624]  @%r660
	ldr r9,[fp,#-2648]
	str r9,[sp,#2620]  @%r659
	ldr r9,[fp,#-2644]
	str r9,[sp,#2616]  @%r658
	ldr r9,[fp,#-2640]
	str r9,[sp,#2612]  @%r657
	ldr r9,[fp,#-2636]
	str r9,[sp,#2608]  @%r656
	ldr r9,[fp,#-2632]
	str r9,[sp,#2604]  @%r655
	ldr r9,[fp,#-2628]
	str r9,[sp,#2600]  @%r654
	ldr r9,[fp,#-2624]
	str r9,[sp,#2596]  @%r653
	ldr r9,[fp,#-2620]
	str r9,[sp,#2592]  @%r652
	ldr r9,[fp,#-2616]
	str r9,[sp,#2588]  @%r651
	ldr r9,[fp,#-2612]
	str r9,[sp,#2584]  @%r650
	ldr r9,[fp,#-2608]
	str r9,[sp,#2580]  @%r649
	ldr r9,[fp,#-2604]
	str r9,[sp,#2576]  @%r648
	ldr r9,[fp,#-2600]
	str r9,[sp,#2572]  @%r647
	ldr r9,[fp,#-2596]
	str r9,[sp,#2568]  @%r646
	ldr r9,[fp,#-2592]
	str r9,[sp,#2564]  @%r645
	ldr r9,[fp,#-2588]
	str r9,[sp,#2560]  @%r644
	ldr r9,[fp,#-2584]
	str r9,[sp,#2556]  @%r643
	ldr r9,[fp,#-2580]
	str r9,[sp,#2552]  @%r642
	ldr r9,[fp,#-2576]
	str r9,[sp,#2548]  @%r641
	ldr r9,[fp,#-2572]
	str r9,[sp,#2544]  @%r640
	ldr r9,[fp,#-2568]
	str r9,[sp,#2540]  @%r639
	ldr r9,[fp,#-2564]
	str r9,[sp,#2536]  @%r638
	ldr r9,[fp,#-2560]
	str r9,[sp,#2532]  @%r637
	ldr r9,[fp,#-2556]
	str r9,[sp,#2528]  @%r636
	ldr r9,[fp,#-2552]
	str r9,[sp,#2524]  @%r635
	ldr r9,[fp,#-2548]
	str r9,[sp,#2520]  @%r634
	ldr r9,[fp,#-2544]
	str r9,[sp,#2516]  @%r633
	ldr r9,[fp,#-2540]
	str r9,[sp,#2512]  @%r632
	ldr r9,[fp,#-2536]
	str r9,[sp,#2508]  @%r631
	ldr r9,[fp,#-2532]
	str r9,[sp,#2504]  @%r630
	ldr r9,[fp,#-2528]
	str r9,[sp,#2500]  @%r629
	ldr r9,[fp,#-2524]
	str r9,[sp,#2496]  @%r628
	ldr r9,[fp,#-2520]
	str r9,[sp,#2492]  @%r627
	ldr r9,[fp,#-2516]
	str r9,[sp,#2488]  @%r626
	ldr r9,[fp,#-2512]
	str r9,[sp,#2484]  @%r625
	ldr r9,[fp,#-2508]
	str r9,[sp,#2480]  @%r624
	ldr r9,[fp,#-2504]
	str r9,[sp,#2476]  @%r623
	ldr r9,[fp,#-2500]
	str r9,[sp,#2472]  @%r622
	ldr r9,[fp,#-2496]
	str r9,[sp,#2468]  @%r621
	ldr r9,[fp,#-2492]
	str r9,[sp,#2464]  @%r620
	ldr r9,[fp,#-2488]
	str r9,[sp,#2460]  @%r619
	ldr r9,[fp,#-2484]
	str r9,[sp,#2456]  @%r618
	ldr r9,[fp,#-2480]
	str r9,[sp,#2452]  @%r617
	ldr r9,[fp,#-2476]
	str r9,[sp,#2448]  @%r616
	ldr r9,[fp,#-2472]
	str r9,[sp,#2444]  @%r615
	ldr r9,[fp,#-2468]
	str r9,[sp,#2440]  @%r614
	ldr r9,[fp,#-2464]
	str r9,[sp,#2436]  @%r613
	ldr r9,[fp,#-2460]
	str r9,[sp,#2432]  @%r612
	ldr r9,[fp,#-2456]
	str r9,[sp,#2428]  @%r611
	ldr r9,[fp,#-2452]
	str r9,[sp,#2424]  @%r610
	ldr r9,[fp,#-2448]
	str r9,[sp,#2420]  @%r609
	ldr r9,[fp,#-2444]
	str r9,[sp,#2416]  @%r608
	ldr r9,[fp,#-2440]
	str r9,[sp,#2412]  @%r607
	ldr r9,[fp,#-2436]
	str r9,[sp,#2408]  @%r606
	ldr r9,[fp,#-2432]
	str r9,[sp,#2404]  @%r605
	ldr r9,[fp,#-2428]
	str r9,[sp,#2400]  @%r604
	ldr r9,[fp,#-2424]
	str r9,[sp,#2396]  @%r603
	ldr r9,[fp,#-2420]
	str r9,[sp,#2392]  @%r602
	ldr r9,[fp,#-2416]
	str r9,[sp,#2388]  @%r601
	ldr r9,[fp,#-2412]
	str r9,[sp,#2384]  @%r600
	ldr r9,[fp,#-2408]
	str r9,[sp,#2380]  @%r599
	ldr r9,[fp,#-2404]
	str r9,[sp,#2376]  @%r598
	ldr r9,[fp,#-2400]
	str r9,[sp,#2372]  @%r597
	ldr r9,[fp,#-2396]
	str r9,[sp,#2368]  @%r596
	ldr r9,[fp,#-2392]
	str r9,[sp,#2364]  @%r595
	ldr r9,[fp,#-2388]
	str r9,[sp,#2360]  @%r594
	ldr r9,[fp,#-2384]
	str r9,[sp,#2356]  @%r593
	ldr r9,[fp,#-2380]
	str r9,[sp,#2352]  @%r592
	ldr r9,[fp,#-2376]
	str r9,[sp,#2348]  @%r591
	ldr r9,[fp,#-2372]
	str r9,[sp,#2344]  @%r590
	ldr r9,[fp,#-2368]
	str r9,[sp,#2340]  @%r589
	ldr r9,[fp,#-2364]
	str r9,[sp,#2336]  @%r588
	ldr r9,[fp,#-2360]
	str r9,[sp,#2332]  @%r587
	ldr r9,[fp,#-2356]
	str r9,[sp,#2328]  @%r586
	ldr r9,[fp,#-2352]
	str r9,[sp,#2324]  @%r585
	ldr r9,[fp,#-2348]
	str r9,[sp,#2320]  @%r584
	ldr r9,[fp,#-2344]
	str r9,[sp,#2316]  @%r583
	ldr r9,[fp,#-2340]
	str r9,[sp,#2312]  @%r582
	ldr r9,[fp,#-2336]
	str r9,[sp,#2308]  @%r581
	ldr r9,[fp,#-2332]
	str r9,[sp,#2304]  @%r580
	ldr r9,[fp,#-2328]
	str r9,[sp,#2300]  @%r579
	ldr r9,[fp,#-2324]
	str r9,[sp,#2296]  @%r578
	ldr r9,[fp,#-2320]
	str r9,[sp,#2292]  @%r577
	ldr r9,[fp,#-2316]
	str r9,[sp,#2288]  @%r576
	ldr r9,[fp,#-2312]
	str r9,[sp,#2284]  @%r575
	ldr r9,[fp,#-2308]
	str r9,[sp,#2280]  @%r574
	ldr r9,[fp,#-2304]
	str r9,[sp,#2276]  @%r573
	ldr r9,[fp,#-2300]
	str r9,[sp,#2272]  @%r572
	ldr r9,[fp,#-2296]
	str r9,[sp,#2268]  @%r571
	ldr r9,[fp,#-2292]
	str r9,[sp,#2264]  @%r570
	ldr r9,[fp,#-2288]
	str r9,[sp,#2260]  @%r569
	ldr r9,[fp,#-2284]
	str r9,[sp,#2256]  @%r568
	ldr r9,[fp,#-2280]
	str r9,[sp,#2252]  @%r567
	ldr r9,[fp,#-2276]
	str r9,[sp,#2248]  @%r566
	ldr r9,[fp,#-2272]
	str r9,[sp,#2244]  @%r565
	ldr r9,[fp,#-2268]
	str r9,[sp,#2240]  @%r564
	ldr r9,[fp,#-2264]
	str r9,[sp,#2236]  @%r563
	ldr r9,[fp,#-2260]
	str r9,[sp,#2232]  @%r562
	ldr r9,[fp,#-2256]
	str r9,[sp,#2228]  @%r561
	ldr r9,[fp,#-2252]
	str r9,[sp,#2224]  @%r560
	ldr r9,[fp,#-2248]
	str r9,[sp,#2220]  @%r559
	ldr r9,[fp,#-2244]
	str r9,[sp,#2216]  @%r558
	ldr r9,[fp,#-2240]
	str r9,[sp,#2212]  @%r557
	ldr r9,[fp,#-2236]
	str r9,[sp,#2208]  @%r556
	ldr r9,[fp,#-2232]
	str r9,[sp,#2204]  @%r555
	ldr r9,[fp,#-2228]
	str r9,[sp,#2200]  @%r554
	ldr r9,[fp,#-2224]
	str r9,[sp,#2196]  @%r553
	ldr r9,[fp,#-2220]
	str r9,[sp,#2192]  @%r552
	ldr r9,[fp,#-2216]
	str r9,[sp,#2188]  @%r551
	ldr r9,[fp,#-2212]
	str r9,[sp,#2184]  @%r550
	ldr r9,[fp,#-2208]
	str r9,[sp,#2180]  @%r549
	ldr r9,[fp,#-2204]
	str r9,[sp,#2176]  @%r548
	ldr r9,[fp,#-2200]
	str r9,[sp,#2172]  @%r547
	ldr r9,[fp,#-2196]
	str r9,[sp,#2168]  @%r546
	ldr r9,[fp,#-2192]
	str r9,[sp,#2164]  @%r545
	ldr r9,[fp,#-2188]
	str r9,[sp,#2160]  @%r544
	ldr r9,[fp,#-2184]
	str r9,[sp,#2156]  @%r543
	ldr r9,[fp,#-2180]
	str r9,[sp,#2152]  @%r542
	ldr r9,[fp,#-2176]
	str r9,[sp,#2148]  @%r541
	ldr r9,[fp,#-2172]
	str r9,[sp,#2144]  @%r540
	ldr r9,[fp,#-2168]
	str r9,[sp,#2140]  @%r539
	ldr r9,[fp,#-2164]
	str r9,[sp,#2136]  @%r538
	ldr r9,[fp,#-2160]
	str r9,[sp,#2132]  @%r537
	ldr r9,[fp,#-2156]
	str r9,[sp,#2128]  @%r536
	ldr r9,[fp,#-2152]
	str r9,[sp,#2124]  @%r535
	ldr r9,[fp,#-2148]
	str r9,[sp,#2120]  @%r534
	ldr r9,[fp,#-2144]
	str r9,[sp,#2116]  @%r533
	ldr r9,[fp,#-2140]
	str r9,[sp,#2112]  @%r532
	ldr r9,[fp,#-2136]
	str r9,[sp,#2108]  @%r531
	ldr r9,[fp,#-2132]
	str r9,[sp,#2104]  @%r530
	ldr r9,[fp,#-2128]
	str r9,[sp,#2100]  @%r529
	ldr r9,[fp,#-2124]
	str r9,[sp,#2096]  @%r528
	ldr r9,[fp,#-2120]
	str r9,[sp,#2092]  @%r527
	ldr r9,[fp,#-2116]
	str r9,[sp,#2088]  @%r526
	ldr r9,[fp,#-2112]
	str r9,[sp,#2084]  @%r525
	ldr r9,[fp,#-2108]
	str r9,[sp,#2080]  @%r524
	ldr r9,[fp,#-2104]
	str r9,[sp,#2076]  @%r523
	ldr r9,[fp,#-2100]
	str r9,[sp,#2072]  @%r522
	ldr r9,[fp,#-2096]
	str r9,[sp,#2068]  @%r521
	ldr r9,[fp,#-2092]
	str r9,[sp,#2064]  @%r520
	ldr r9,[fp,#-2088]
	str r9,[sp,#2060]  @%r519
	ldr r9,[fp,#-2084]
	str r9,[sp,#2056]  @%r518
	ldr r9,[fp,#-2080]
	str r9,[sp,#2052]  @%r517
	ldr r9,[fp,#-2076]
	str r9,[sp,#2048]  @%r516
	ldr r9,[fp,#-2072]
	str r9,[sp,#2044]  @%r515
	ldr r9,[fp,#-2068]
	str r9,[sp,#2040]  @%r514
	ldr r9,[fp,#-2064]
	str r9,[sp,#2036]  @%r513
	ldr r9,[fp,#-2060]
	str r9,[sp,#2032]  @%r512
	ldr r9,[fp,#-2056]
	str r9,[sp,#2028]  @%r511
	ldr r9,[fp,#-2052]
	str r9,[sp,#2024]  @%r510
	ldr r9,[fp,#-2048]
	str r9,[sp,#2020]  @%r509
	ldr r9,[fp,#-2044]
	str r9,[sp,#2016]  @%r508
	ldr r9,[fp,#-2040]
	str r9,[sp,#2012]  @%r507
	ldr r9,[fp,#-2036]
	str r9,[sp,#2008]  @%r506
	ldr r9,[fp,#-2032]
	str r9,[sp,#2004]  @%r505
	ldr r9,[fp,#-2028]
	str r9,[sp,#2000]  @%r504
	ldr r9,[fp,#-2024]
	str r9,[sp,#1996]  @%r503
	ldr r9,[fp,#-2020]
	str r9,[sp,#1992]  @%r502
	ldr r9,[fp,#-2016]
	str r9,[sp,#1988]  @%r501
	ldr r9,[fp,#-2012]
	str r9,[sp,#1984]  @%r500
	ldr r9,[fp,#-2008]
	str r9,[sp,#1980]  @%r499
	ldr r9,[fp,#-2004]
	str r9,[sp,#1976]  @%r498
	ldr r9,[fp,#-2000]
	str r9,[sp,#1972]  @%r497
	ldr r9,[fp,#-1996]
	str r9,[sp,#1968]  @%r496
	ldr r9,[fp,#-1992]
	str r9,[sp,#1964]  @%r495
	ldr r9,[fp,#-1988]
	str r9,[sp,#1960]  @%r494
	ldr r9,[fp,#-1984]
	str r9,[sp,#1956]  @%r493
	ldr r9,[fp,#-1980]
	str r9,[sp,#1952]  @%r492
	ldr r9,[fp,#-1976]
	str r9,[sp,#1948]  @%r491
	ldr r9,[fp,#-1972]
	str r9,[sp,#1944]  @%r490
	ldr r9,[fp,#-1968]
	str r9,[sp,#1940]  @%r489
	ldr r9,[fp,#-1964]
	str r9,[sp,#1936]  @%r488
	ldr r9,[fp,#-1960]
	str r9,[sp,#1932]  @%r487
	ldr r9,[fp,#-1956]
	str r9,[sp,#1928]  @%r486
	ldr r9,[fp,#-1952]
	str r9,[sp,#1924]  @%r485
	ldr r9,[fp,#-1948]
	str r9,[sp,#1920]  @%r484
	ldr r9,[fp,#-1944]
	str r9,[sp,#1916]  @%r483
	ldr r9,[fp,#-1940]
	str r9,[sp,#1912]  @%r482
	ldr r9,[fp,#-1936]
	str r9,[sp,#1908]  @%r481
	ldr r9,[fp,#-1932]
	str r9,[sp,#1904]  @%r480
	ldr r9,[fp,#-1928]
	str r9,[sp,#1900]  @%r479
	ldr r9,[fp,#-1924]
	str r9,[sp,#1896]  @%r478
	ldr r9,[fp,#-1920]
	str r9,[sp,#1892]  @%r477
	ldr r9,[fp,#-1916]
	str r9,[sp,#1888]  @%r476
	ldr r9,[fp,#-1912]
	str r9,[sp,#1884]  @%r475
	ldr r9,[fp,#-1908]
	str r9,[sp,#1880]  @%r474
	ldr r9,[fp,#-1904]
	str r9,[sp,#1876]  @%r473
	ldr r9,[fp,#-1900]
	str r9,[sp,#1872]  @%r472
	ldr r9,[fp,#-1896]
	str r9,[sp,#1868]  @%r471
	ldr r9,[fp,#-1892]
	str r9,[sp,#1864]  @%r470
	ldr r9,[fp,#-1888]
	str r9,[sp,#1860]  @%r469
	ldr r9,[fp,#-1884]
	str r9,[sp,#1856]  @%r468
	ldr r9,[fp,#-1880]
	str r9,[sp,#1852]  @%r467
	ldr r9,[fp,#-1876]
	str r9,[sp,#1848]  @%r466
	ldr r9,[fp,#-1872]
	str r9,[sp,#1844]  @%r465
	ldr r9,[fp,#-1868]
	str r9,[sp,#1840]  @%r464
	ldr r9,[fp,#-1864]
	str r9,[sp,#1836]  @%r463
	ldr r9,[fp,#-1860]
	str r9,[sp,#1832]  @%r462
	ldr r9,[fp,#-1856]
	str r9,[sp,#1828]  @%r461
	ldr r9,[fp,#-1852]
	str r9,[sp,#1824]  @%r460
	ldr r9,[fp,#-1848]
	str r9,[sp,#1820]  @%r459
	ldr r9,[fp,#-1844]
	str r9,[sp,#1816]  @%r458
	ldr r9,[fp,#-1840]
	str r9,[sp,#1812]  @%r457
	ldr r9,[fp,#-1836]
	str r9,[sp,#1808]  @%r456
	ldr r9,[fp,#-1832]
	str r9,[sp,#1804]  @%r455
	ldr r9,[fp,#-1828]
	str r9,[sp,#1800]  @%r454
	ldr r9,[fp,#-1824]
	str r9,[sp,#1796]  @%r453
	ldr r9,[fp,#-1820]
	str r9,[sp,#1792]  @%r452
	ldr r9,[fp,#-1816]
	str r9,[sp,#1788]  @%r451
	ldr r9,[fp,#-1812]
	str r9,[sp,#1784]  @%r450
	ldr r9,[fp,#-1808]
	str r9,[sp,#1780]  @%r449
	ldr r9,[fp,#-1804]
	str r9,[sp,#1776]  @%r448
	ldr r9,[fp,#-1800]
	str r9,[sp,#1772]  @%r447
	ldr r9,[fp,#-1796]
	str r9,[sp,#1768]  @%r446
	ldr r9,[fp,#-1792]
	str r9,[sp,#1764]  @%r445
	ldr r9,[fp,#-1788]
	str r9,[sp,#1760]  @%r444
	ldr r9,[fp,#-1784]
	str r9,[sp,#1756]  @%r443
	ldr r9,[fp,#-1780]
	str r9,[sp,#1752]  @%r442
	ldr r9,[fp,#-1776]
	str r9,[sp,#1748]  @%r441
	ldr r9,[fp,#-1772]
	str r9,[sp,#1744]  @%r440
	ldr r9,[fp,#-1768]
	str r9,[sp,#1740]  @%r439
	ldr r9,[fp,#-1764]
	str r9,[sp,#1736]  @%r438
	ldr r9,[fp,#-1760]
	str r9,[sp,#1732]  @%r437
	ldr r9,[fp,#-1756]
	str r9,[sp,#1728]  @%r436
	ldr r9,[fp,#-1752]
	str r9,[sp,#1724]  @%r435
	ldr r9,[fp,#-1748]
	str r9,[sp,#1720]  @%r434
	ldr r9,[fp,#-1744]
	str r9,[sp,#1716]  @%r433
	ldr r9,[fp,#-1740]
	str r9,[sp,#1712]  @%r432
	ldr r9,[fp,#-1736]
	str r9,[sp,#1708]  @%r431
	ldr r9,[fp,#-1732]
	str r9,[sp,#1704]  @%r430
	ldr r9,[fp,#-1728]
	str r9,[sp,#1700]  @%r429
	ldr r9,[fp,#-1724]
	str r9,[sp,#1696]  @%r428
	ldr r9,[fp,#-1720]
	str r9,[sp,#1692]  @%r427
	ldr r9,[fp,#-1716]
	str r9,[sp,#1688]  @%r426
	ldr r9,[fp,#-1712]
	str r9,[sp,#1684]  @%r425
	ldr r9,[fp,#-1708]
	str r9,[sp,#1680]  @%r424
	ldr r9,[fp,#-1704]
	str r9,[sp,#1676]  @%r423
	ldr r9,[fp,#-1700]
	str r9,[sp,#1672]  @%r422
	ldr r9,[fp,#-1696]
	str r9,[sp,#1668]  @%r421
	ldr r9,[fp,#-1692]
	str r9,[sp,#1664]  @%r420
	ldr r9,[fp,#-1688]
	str r9,[sp,#1660]  @%r419
	ldr r9,[fp,#-1684]
	str r9,[sp,#1656]  @%r418
	ldr r9,[fp,#-1680]
	str r9,[sp,#1652]  @%r417
	ldr r9,[fp,#-1676]
	str r9,[sp,#1648]  @%r416
	ldr r9,[fp,#-1672]
	str r9,[sp,#1644]  @%r415
	ldr r9,[fp,#-1668]
	str r9,[sp,#1640]  @%r414
	ldr r9,[fp,#-1664]
	str r9,[sp,#1636]  @%r413
	ldr r9,[fp,#-1660]
	str r9,[sp,#1632]  @%r412
	ldr r9,[fp,#-1656]
	str r9,[sp,#1628]  @%r411
	ldr r9,[fp,#-1652]
	str r9,[sp,#1624]  @%r410
	ldr r9,[fp,#-1648]
	str r9,[sp,#1620]  @%r409
	ldr r9,[fp,#-1644]
	str r9,[sp,#1616]  @%r408
	ldr r9,[fp,#-1640]
	str r9,[sp,#1612]  @%r407
	ldr r9,[fp,#-1636]
	str r9,[sp,#1608]  @%r406
	ldr r9,[fp,#-1632]
	str r9,[sp,#1604]  @%r405
	ldr r9,[fp,#-1628]
	str r9,[sp,#1600]  @%r404
	ldr r9,[fp,#-1624]
	str r9,[sp,#1596]  @%r403
	ldr r9,[fp,#-1620]
	str r9,[sp,#1592]  @%r402
	ldr r9,[fp,#-1616]
	str r9,[sp,#1588]  @%r401
	ldr r9,[fp,#-1612]
	str r9,[sp,#1584]  @%r400
	ldr r9,[fp,#-1608]
	str r9,[sp,#1580]  @%r399
	ldr r9,[fp,#-1604]
	str r9,[sp,#1576]  @%r398
	ldr r9,[fp,#-1600]
	str r9,[sp,#1572]  @%r397
	ldr r9,[fp,#-1596]
	str r9,[sp,#1568]  @%r396
	ldr r9,[fp,#-1592]
	str r9,[sp,#1564]  @%r395
	ldr r9,[fp,#-1588]
	str r9,[sp,#1560]  @%r394
	ldr r9,[fp,#-1584]
	str r9,[sp,#1556]  @%r393
	ldr r9,[fp,#-1580]
	str r9,[sp,#1552]  @%r392
	ldr r9,[fp,#-1576]
	str r9,[sp,#1548]  @%r391
	ldr r9,[fp,#-1572]
	str r9,[sp,#1544]  @%r390
	ldr r9,[fp,#-1568]
	str r9,[sp,#1540]  @%r389
	ldr r9,[fp,#-1564]
	str r9,[sp,#1536]  @%r388
	ldr r9,[fp,#-1560]
	str r9,[sp,#1532]  @%r387
	ldr r9,[fp,#-1556]
	str r9,[sp,#1528]  @%r386
	ldr r9,[fp,#-1552]
	str r9,[sp,#1524]  @%r385
	ldr r9,[fp,#-1548]
	str r9,[sp,#1520]  @%r384
	ldr r9,[fp,#-1544]
	str r9,[sp,#1516]  @%r383
	ldr r9,[fp,#-1540]
	str r9,[sp,#1512]  @%r382
	ldr r9,[fp,#-1536]
	str r9,[sp,#1508]  @%r381
	ldr r9,[fp,#-1532]
	str r9,[sp,#1504]  @%r380
	ldr r9,[fp,#-1528]
	str r9,[sp,#1500]  @%r379
	ldr r9,[fp,#-1524]
	str r9,[sp,#1496]  @%r378
	ldr r9,[fp,#-1520]
	str r9,[sp,#1492]  @%r377
	ldr r9,[fp,#-1516]
	str r9,[sp,#1488]  @%r376
	ldr r9,[fp,#-1512]
	str r9,[sp,#1484]  @%r375
	ldr r9,[fp,#-1508]
	str r9,[sp,#1480]  @%r374
	ldr r9,[fp,#-1504]
	str r9,[sp,#1476]  @%r373
	ldr r9,[fp,#-1500]
	str r9,[sp,#1472]  @%r372
	ldr r9,[fp,#-1496]
	str r9,[sp,#1468]  @%r371
	ldr r9,[fp,#-1492]
	str r9,[sp,#1464]  @%r370
	ldr r9,[fp,#-1488]
	str r9,[sp,#1460]  @%r369
	ldr r9,[fp,#-1484]
	str r9,[sp,#1456]  @%r368
	ldr r9,[fp,#-1480]
	str r9,[sp,#1452]  @%r367
	ldr r9,[fp,#-1476]
	str r9,[sp,#1448]  @%r366
	ldr r9,[fp,#-1472]
	str r9,[sp,#1444]  @%r365
	ldr r9,[fp,#-1468]
	str r9,[sp,#1440]  @%r364
	ldr r9,[fp,#-1464]
	str r9,[sp,#1436]  @%r363
	ldr r9,[fp,#-1460]
	str r9,[sp,#1432]  @%r362
	ldr r9,[fp,#-1456]
	str r9,[sp,#1428]  @%r361
	ldr r9,[fp,#-1452]
	str r9,[sp,#1424]  @%r360
	ldr r9,[fp,#-1448]
	str r9,[sp,#1420]  @%r359
	ldr r9,[fp,#-1444]
	str r9,[sp,#1416]  @%r358
	ldr r9,[fp,#-1440]
	str r9,[sp,#1412]  @%r357
	ldr r9,[fp,#-1436]
	str r9,[sp,#1408]  @%r356
	ldr r9,[fp,#-1432]
	str r9,[sp,#1404]  @%r355
	ldr r9,[fp,#-1428]
	str r9,[sp,#1400]  @%r354
	ldr r9,[fp,#-1424]
	str r9,[sp,#1396]  @%r353
	ldr r9,[fp,#-1420]
	str r9,[sp,#1392]  @%r352
	ldr r9,[fp,#-1416]
	str r9,[sp,#1388]  @%r351
	ldr r9,[fp,#-1412]
	str r9,[sp,#1384]  @%r350
	ldr r9,[fp,#-1408]
	str r9,[sp,#1380]  @%r349
	ldr r9,[fp,#-1404]
	str r9,[sp,#1376]  @%r348
	ldr r9,[fp,#-1400]
	str r9,[sp,#1372]  @%r347
	ldr r9,[fp,#-1396]
	str r9,[sp,#1368]  @%r346
	ldr r9,[fp,#-1392]
	str r9,[sp,#1364]  @%r345
	ldr r9,[fp,#-1388]
	str r9,[sp,#1360]  @%r344
	ldr r9,[fp,#-1384]
	str r9,[sp,#1356]  @%r343
	ldr r9,[fp,#-1380]
	str r9,[sp,#1352]  @%r342
	ldr r9,[fp,#-1376]
	str r9,[sp,#1348]  @%r341
	ldr r9,[fp,#-1372]
	str r9,[sp,#1344]  @%r340
	ldr r9,[fp,#-1368]
	str r9,[sp,#1340]  @%r339
	ldr r9,[fp,#-1364]
	str r9,[sp,#1336]  @%r338
	ldr r9,[fp,#-1360]
	str r9,[sp,#1332]  @%r337
	ldr r9,[fp,#-1356]
	str r9,[sp,#1328]  @%r336
	ldr r9,[fp,#-1352]
	str r9,[sp,#1324]  @%r335
	ldr r9,[fp,#-1348]
	str r9,[sp,#1320]  @%r334
	ldr r9,[fp,#-1344]
	str r9,[sp,#1316]  @%r333
	ldr r9,[fp,#-1340]
	str r9,[sp,#1312]  @%r332
	ldr r9,[fp,#-1336]
	str r9,[sp,#1308]  @%r331
	ldr r9,[fp,#-1332]
	str r9,[sp,#1304]  @%r330
	ldr r9,[fp,#-1328]
	str r9,[sp,#1300]  @%r329
	ldr r9,[fp,#-1324]
	str r9,[sp,#1296]  @%r328
	ldr r9,[fp,#-1320]
	str r9,[sp,#1292]  @%r327
	ldr r9,[fp,#-1316]
	str r9,[sp,#1288]  @%r326
	ldr r9,[fp,#-1312]
	str r9,[sp,#1284]  @%r325
	ldr r9,[fp,#-1308]
	str r9,[sp,#1280]  @%r324
	ldr r9,[fp,#-1304]
	str r9,[sp,#1276]  @%r323
	ldr r9,[fp,#-1300]
	str r9,[sp,#1272]  @%r322
	ldr r9,[fp,#-1296]
	str r9,[sp,#1268]  @%r321
	ldr r9,[fp,#-1292]
	str r9,[sp,#1264]  @%r320
	ldr r9,[fp,#-1288]
	str r9,[sp,#1260]  @%r319
	ldr r9,[fp,#-1284]
	str r9,[sp,#1256]  @%r318
	ldr r9,[fp,#-1280]
	str r9,[sp,#1252]  @%r317
	ldr r9,[fp,#-1276]
	str r9,[sp,#1248]  @%r316
	ldr r9,[fp,#-1272]
	str r9,[sp,#1244]  @%r315
	ldr r9,[fp,#-1268]
	str r9,[sp,#1240]  @%r314
	ldr r9,[fp,#-1264]
	str r9,[sp,#1236]  @%r313
	ldr r9,[fp,#-1260]
	str r9,[sp,#1232]  @%r312
	ldr r9,[fp,#-1256]
	str r9,[sp,#1228]  @%r311
	ldr r9,[fp,#-1252]
	str r9,[sp,#1224]  @%r310
	ldr r9,[fp,#-1248]
	str r9,[sp,#1220]  @%r309
	ldr r9,[fp,#-1244]
	str r9,[sp,#1216]  @%r308
	ldr r9,[fp,#-1240]
	str r9,[sp,#1212]  @%r307
	ldr r9,[fp,#-1236]
	str r9,[sp,#1208]  @%r306
	ldr r9,[fp,#-1232]
	str r9,[sp,#1204]  @%r305
	ldr r9,[fp,#-1228]
	str r9,[sp,#1200]  @%r304
	ldr r9,[fp,#-1224]
	str r9,[sp,#1196]  @%r303
	ldr r9,[fp,#-1220]
	str r9,[sp,#1192]  @%r302
	ldr r9,[fp,#-1216]
	str r9,[sp,#1188]  @%r301
	ldr r9,[fp,#-1212]
	str r9,[sp,#1184]  @%r300
	ldr r9,[fp,#-1208]
	str r9,[sp,#1180]  @%r299
	ldr r9,[fp,#-1204]
	str r9,[sp,#1176]  @%r298
	ldr r9,[fp,#-1200]
	str r9,[sp,#1172]  @%r297
	ldr r9,[fp,#-1196]
	str r9,[sp,#1168]  @%r296
	ldr r9,[fp,#-1192]
	str r9,[sp,#1164]  @%r295
	ldr r9,[fp,#-1188]
	str r9,[sp,#1160]  @%r294
	ldr r9,[fp,#-1184]
	str r9,[sp,#1156]  @%r293
	ldr r9,[fp,#-1180]
	str r9,[sp,#1152]  @%r292
	ldr r9,[fp,#-1176]
	str r9,[sp,#1148]  @%r291
	ldr r9,[fp,#-1172]
	str r9,[sp,#1144]  @%r290
	ldr r9,[fp,#-1168]
	str r9,[sp,#1140]  @%r289
	ldr r9,[fp,#-1164]
	str r9,[sp,#1136]  @%r288
	ldr r9,[fp,#-1160]
	str r9,[sp,#1132]  @%r287
	ldr r9,[fp,#-1156]
	str r9,[sp,#1128]  @%r286
	ldr r9,[fp,#-1152]
	str r9,[sp,#1124]  @%r285
	ldr r9,[fp,#-1148]
	str r9,[sp,#1120]  @%r284
	ldr r9,[fp,#-1144]
	str r9,[sp,#1116]  @%r283
	ldr r9,[fp,#-1140]
	str r9,[sp,#1112]  @%r282
	ldr r9,[fp,#-1136]
	str r9,[sp,#1108]  @%r281
	ldr r9,[fp,#-1132]
	str r9,[sp,#1104]  @%r280
	ldr r9,[fp,#-1128]
	str r9,[sp,#1100]  @%r279
	ldr r9,[fp,#-1124]
	str r9,[sp,#1096]  @%r278
	ldr r9,[fp,#-1120]
	str r9,[sp,#1092]  @%r277
	ldr r9,[fp,#-1116]
	str r9,[sp,#1088]  @%r276
	ldr r9,[fp,#-1112]
	str r9,[sp,#1084]  @%r275
	ldr r9,[fp,#-1108]
	str r9,[sp,#1080]  @%r274
	ldr r9,[fp,#-1104]
	str r9,[sp,#1076]  @%r273
	ldr r9,[fp,#-1100]
	str r9,[sp,#1072]  @%r272
	ldr r9,[fp,#-1096]
	str r9,[sp,#1068]  @%r271
	ldr r9,[fp,#-1092]
	str r9,[sp,#1064]  @%r270
	ldr r9,[fp,#-1088]
	str r9,[sp,#1060]  @%r269
	ldr r9,[fp,#-1084]
	str r9,[sp,#1056]  @%r268
	ldr r9,[fp,#-1080]
	str r9,[sp,#1052]  @%r267
	ldr r9,[fp,#-1076]
	str r9,[sp,#1048]  @%r266
	ldr r9,[fp,#-1072]
	str r9,[sp,#1044]  @%r265
	ldr r9,[fp,#-1068]
	str r9,[sp,#1040]  @%r264
	ldr r9,[fp,#-1064]
	str r9,[sp,#1036]  @%r263
	ldr r9,[fp,#-1060]
	str r9,[sp,#1032]  @%r262
	ldr r9,[fp,#-1056]
	str r9,[sp,#1028]  @%r261
	ldr r9,[fp,#-1052]
	str r9,[sp,#1024]  @%r260
	ldr r9,[fp,#-1048]
	str r9,[sp,#1020]  @%r259
	ldr r9,[fp,#-1044]
	str r9,[sp,#1016]  @%r258
	ldr r9,[fp,#-1040]
	str r9,[sp,#1012]  @%r257
	ldr r9,[fp,#-1036]
	str r9,[sp,#1008]  @%r256
	ldr r9,[fp,#-1032]
	str r9,[sp,#1004]  @%r255
	ldr r9,[fp,#-1028]
	str r9,[sp,#1000]  @%r254
	ldr r9,[fp,#-1024]
	str r9,[sp,#996]  @%r253
	ldr r9,[fp,#-1020]
	str r9,[sp,#992]  @%r252
	ldr r9,[fp,#-1016]
	str r9,[sp,#988]  @%r251
	ldr r9,[fp,#-1012]
	str r9,[sp,#984]  @%r250
	ldr r9,[fp,#-1008]
	str r9,[sp,#980]  @%r249
	ldr r9,[fp,#-1004]
	str r9,[sp,#976]  @%r248
	ldr r9,[fp,#-1000]
	str r9,[sp,#972]  @%r247
	ldr r9,[fp,#-996]
	str r9,[sp,#968]  @%r246
	ldr r9,[fp,#-992]
	str r9,[sp,#964]  @%r245
	ldr r9,[fp,#-988]
	str r9,[sp,#960]  @%r244
	ldr r9,[fp,#-984]
	str r9,[sp,#956]  @%r243
	ldr r9,[fp,#-980]
	str r9,[sp,#952]  @%r242
	ldr r9,[fp,#-976]
	str r9,[sp,#948]  @%r241
	ldr r9,[fp,#-972]
	str r9,[sp,#944]  @%r240
	ldr r9,[fp,#-968]
	str r9,[sp,#940]  @%r239
	ldr r9,[fp,#-964]
	str r9,[sp,#936]  @%r238
	ldr r9,[fp,#-960]
	str r9,[sp,#932]  @%r237
	ldr r9,[fp,#-956]
	str r9,[sp,#928]  @%r236
	ldr r9,[fp,#-952]
	str r9,[sp,#924]  @%r235
	ldr r9,[fp,#-948]
	str r9,[sp,#920]  @%r234
	ldr r9,[fp,#-944]
	str r9,[sp,#916]  @%r233
	ldr r9,[fp,#-940]
	str r9,[sp,#912]  @%r232
	ldr r9,[fp,#-936]
	str r9,[sp,#908]  @%r231
	ldr r9,[fp,#-932]
	str r9,[sp,#904]  @%r230
	ldr r9,[fp,#-928]
	str r9,[sp,#900]  @%r229
	ldr r9,[fp,#-924]
	str r9,[sp,#896]  @%r228
	ldr r9,[fp,#-920]
	str r9,[sp,#892]  @%r227
	ldr r9,[fp,#-916]
	str r9,[sp,#888]  @%r226
	ldr r9,[fp,#-912]
	str r9,[sp,#884]  @%r225
	ldr r9,[fp,#-908]
	str r9,[sp,#880]  @%r224
	ldr r9,[fp,#-904]
	str r9,[sp,#876]  @%r223
	ldr r9,[fp,#-900]
	str r9,[sp,#872]  @%r222
	ldr r9,[fp,#-896]
	str r9,[sp,#868]  @%r221
	ldr r9,[fp,#-892]
	str r9,[sp,#864]  @%r220
	ldr r9,[fp,#-888]
	str r9,[sp,#860]  @%r219
	ldr r9,[fp,#-884]
	str r9,[sp,#856]  @%r218
	ldr r9,[fp,#-880]
	str r9,[sp,#852]  @%r217
	ldr r9,[fp,#-876]
	str r9,[sp,#848]  @%r216
	ldr r9,[fp,#-872]
	str r9,[sp,#844]  @%r215
	ldr r9,[fp,#-868]
	str r9,[sp,#840]  @%r214
	ldr r9,[fp,#-864]
	str r9,[sp,#836]  @%r213
	ldr r9,[fp,#-860]
	str r9,[sp,#832]  @%r212
	ldr r9,[fp,#-856]
	str r9,[sp,#828]  @%r211
	ldr r9,[fp,#-852]
	str r9,[sp,#824]  @%r210
	ldr r9,[fp,#-848]
	str r9,[sp,#820]  @%r209
	ldr r9,[fp,#-844]
	str r9,[sp,#816]  @%r208
	ldr r9,[fp,#-840]
	str r9,[sp,#812]  @%r207
	ldr r9,[fp,#-836]
	str r9,[sp,#808]  @%r206
	ldr r9,[fp,#-832]
	str r9,[sp,#804]  @%r205
	ldr r9,[fp,#-828]
	str r9,[sp,#800]  @%r204
	ldr r9,[fp,#-824]
	str r9,[sp,#796]  @%r203
	ldr r9,[fp,#-820]
	str r9,[sp,#792]  @%r202
	ldr r9,[fp,#-816]
	str r9,[sp,#788]  @%r201
	ldr r9,[fp,#-812]
	str r9,[sp,#784]  @%r200
	ldr r9,[fp,#-808]
	str r9,[sp,#780]  @%r199
	ldr r9,[fp,#-804]
	str r9,[sp,#776]  @%r198
	ldr r9,[fp,#-800]
	str r9,[sp,#772]  @%r197
	ldr r9,[fp,#-796]
	str r9,[sp,#768]  @%r196
	ldr r9,[fp,#-792]
	str r9,[sp,#764]  @%r195
	ldr r9,[fp,#-788]
	str r9,[sp,#760]  @%r194
	ldr r9,[fp,#-784]
	str r9,[sp,#756]  @%r193
	ldr r9,[fp,#-780]
	str r9,[sp,#752]  @%r192
	ldr r9,[fp,#-776]
	str r9,[sp,#748]  @%r191
	ldr r9,[fp,#-772]
	str r9,[sp,#744]  @%r190
	ldr r9,[fp,#-768]
	str r9,[sp,#740]  @%r189
	ldr r9,[fp,#-764]
	str r9,[sp,#736]  @%r188
	ldr r9,[fp,#-760]
	str r9,[sp,#732]  @%r187
	ldr r9,[fp,#-756]
	str r9,[sp,#728]  @%r186
	ldr r9,[fp,#-752]
	str r9,[sp,#724]  @%r185
	ldr r9,[fp,#-748]
	str r9,[sp,#720]  @%r184
	ldr r9,[fp,#-744]
	str r9,[sp,#716]  @%r183
	ldr r9,[fp,#-740]
	str r9,[sp,#712]  @%r182
	ldr r9,[fp,#-736]
	str r9,[sp,#708]  @%r181
	ldr r9,[fp,#-732]
	str r9,[sp,#704]  @%r180
	ldr r9,[fp,#-728]
	str r9,[sp,#700]  @%r179
	ldr r9,[fp,#-724]
	str r9,[sp,#696]  @%r178
	ldr r9,[fp,#-720]
	str r9,[sp,#692]  @%r177
	ldr r9,[fp,#-716]
	str r9,[sp,#688]  @%r176
	ldr r9,[fp,#-712]
	str r9,[sp,#684]  @%r175
	ldr r9,[fp,#-708]
	str r9,[sp,#680]  @%r174
	ldr r9,[fp,#-704]
	str r9,[sp,#676]  @%r173
	ldr r9,[fp,#-700]
	str r9,[sp,#672]  @%r172
	ldr r9,[fp,#-696]
	str r9,[sp,#668]  @%r171
	ldr r9,[fp,#-692]
	str r9,[sp,#664]  @%r170
	ldr r9,[fp,#-688]
	str r9,[sp,#660]  @%r169
	ldr r9,[fp,#-684]
	str r9,[sp,#656]  @%r168
	ldr r9,[fp,#-680]
	str r9,[sp,#652]  @%r167
	ldr r9,[fp,#-676]
	str r9,[sp,#648]  @%r166
	ldr r9,[fp,#-672]
	str r9,[sp,#644]  @%r165
	ldr r9,[fp,#-668]
	str r9,[sp,#640]  @%r164
	ldr r9,[fp,#-664]
	str r9,[sp,#636]  @%r163
	ldr r9,[fp,#-660]
	str r9,[sp,#632]  @%r162
	ldr r9,[fp,#-656]
	str r9,[sp,#628]  @%r161
	ldr r9,[fp,#-652]
	str r9,[sp,#624]  @%r160
	ldr r9,[fp,#-648]
	str r9,[sp,#620]  @%r159
	ldr r9,[fp,#-644]
	str r9,[sp,#616]  @%r158
	ldr r9,[fp,#-640]
	str r9,[sp,#612]  @%r157
	ldr r9,[fp,#-636]
	str r9,[sp,#608]  @%r156
	ldr r9,[fp,#-632]
	str r9,[sp,#604]  @%r155
	ldr r9,[fp,#-628]
	str r9,[sp,#600]  @%r154
	ldr r9,[fp,#-624]
	str r9,[sp,#596]  @%r153
	ldr r9,[fp,#-620]
	str r9,[sp,#592]  @%r152
	ldr r9,[fp,#-616]
	str r9,[sp,#588]  @%r151
	ldr r9,[fp,#-612]
	str r9,[sp,#584]  @%r150
	ldr r9,[fp,#-608]
	str r9,[sp,#580]  @%r149
	ldr r9,[fp,#-604]
	str r9,[sp,#576]  @%r148
	ldr r9,[fp,#-600]
	str r9,[sp,#572]  @%r147
	ldr r9,[fp,#-596]
	str r9,[sp,#568]  @%r146
	ldr r9,[fp,#-592]
	str r9,[sp,#564]  @%r145
	ldr r9,[fp,#-588]
	str r9,[sp,#560]  @%r144
	ldr r9,[fp,#-584]
	str r9,[sp,#556]  @%r143
	ldr r9,[fp,#-580]
	str r9,[sp,#552]  @%r142
	ldr r9,[fp,#-576]
	str r9,[sp,#548]  @%r141
	ldr r9,[fp,#-572]
	str r9,[sp,#544]  @%r140
	ldr r9,[fp,#-568]
	str r9,[sp,#540]  @%r139
	ldr r9,[fp,#-564]
	str r9,[sp,#536]  @%r138
	ldr r9,[fp,#-560]
	str r9,[sp,#532]  @%r137
	ldr r9,[fp,#-556]
	str r9,[sp,#528]  @%r136
	ldr r9,[fp,#-552]
	str r9,[sp,#524]  @%r135
	ldr r9,[fp,#-548]
	str r9,[sp,#520]  @%r134
	ldr r9,[fp,#-544]
	str r9,[sp,#516]  @%r133
	ldr r9,[fp,#-540]
	str r9,[sp,#512]  @%r132
	ldr r9,[fp,#-536]
	str r9,[sp,#508]  @%r131
	ldr r9,[fp,#-532]
	str r9,[sp,#504]  @%r130
	ldr r9,[fp,#-528]
	str r9,[sp,#500]  @%r129
	ldr r9,[fp,#-524]
	str r9,[sp,#496]  @%r128
	ldr r9,[fp,#-520]
	str r9,[sp,#492]  @%r127
	ldr r9,[fp,#-516]
	str r9,[sp,#488]  @%r126
	ldr r9,[fp,#-512]
	str r9,[sp,#484]  @%r125
	ldr r9,[fp,#-508]
	str r9,[sp,#480]  @%r124
	ldr r9,[fp,#-504]
	str r9,[sp,#476]  @%r123
	ldr r9,[fp,#-500]
	str r9,[sp,#472]  @%r122
	ldr r9,[fp,#-496]
	str r9,[sp,#468]  @%r121
	ldr r9,[fp,#-492]
	str r9,[sp,#464]  @%r120
	ldr r9,[fp,#-488]
	str r9,[sp,#460]  @%r119
	ldr r9,[fp,#-484]
	str r9,[sp,#456]  @%r118
	ldr r9,[fp,#-480]
	str r9,[sp,#452]  @%r117
	ldr r9,[fp,#-476]
	str r9,[sp,#448]  @%r116
	ldr r9,[fp,#-472]
	str r9,[sp,#444]  @%r115
	ldr r9,[fp,#-468]
	str r9,[sp,#440]  @%r114
	ldr r9,[fp,#-464]
	str r9,[sp,#436]  @%r113
	ldr r9,[fp,#-460]
	str r9,[sp,#432]  @%r112
	ldr r9,[fp,#-456]
	str r9,[sp,#428]  @%r111
	ldr r9,[fp,#-452]
	str r9,[sp,#424]  @%r110
	ldr r9,[fp,#-448]
	str r9,[sp,#420]  @%r109
	ldr r9,[fp,#-444]
	str r9,[sp,#416]  @%r108
	ldr r9,[fp,#-440]
	str r9,[sp,#412]  @%r107
	ldr r9,[fp,#-436]
	str r9,[sp,#408]  @%r106
	ldr r9,[fp,#-432]
	str r9,[sp,#404]  @%r105
	ldr r9,[fp,#-428]
	str r9,[sp,#400]  @%r104
	ldr r9,[fp,#-424]
	str r9,[sp,#396]  @%r103
	ldr r9,[fp,#-420]
	str r9,[sp,#392]  @%r102
	ldr r9,[fp,#-416]
	str r9,[sp,#388]  @%r101
	ldr r9,[fp,#-412]
	str r9,[sp,#384]  @%r100
	ldr r9,[fp,#-408]
	str r9,[sp,#380]  @%r99
	ldr r9,[fp,#-404]
	str r9,[sp,#376]  @%r98
	ldr r9,[fp,#-400]
	str r9,[sp,#372]  @%r97
	ldr r9,[fp,#-396]
	str r9,[sp,#368]  @%r96
	ldr r9,[fp,#-392]
	str r9,[sp,#364]  @%r95
	ldr r9,[fp,#-388]
	str r9,[sp,#360]  @%r94
	ldr r9,[fp,#-384]
	str r9,[sp,#356]  @%r93
	ldr r9,[fp,#-380]
	str r9,[sp,#352]  @%r92
	ldr r9,[fp,#-376]
	str r9,[sp,#348]  @%r91
	ldr r9,[fp,#-372]
	str r9,[sp,#344]  @%r90
	ldr r9,[fp,#-368]
	str r9,[sp,#340]  @%r89
	ldr r9,[fp,#-364]
	str r9,[sp,#336]  @%r88
	ldr r9,[fp,#-360]
	str r9,[sp,#332]  @%r87
	ldr r9,[fp,#-356]
	str r9,[sp,#328]  @%r86
	ldr r9,[fp,#-352]
	str r9,[sp,#324]  @%r85
	ldr r9,[fp,#-348]
	str r9,[sp,#320]  @%r84
	ldr r9,[fp,#-344]
	str r9,[sp,#316]  @%r83
	ldr r9,[fp,#-340]
	str r9,[sp,#312]  @%r82
	ldr r9,[fp,#-336]
	str r9,[sp,#308]  @%r81
	ldr r9,[fp,#-332]
	str r9,[sp,#304]  @%r80
	ldr r9,[fp,#-328]
	str r9,[sp,#300]  @%r79
	ldr r9,[fp,#-324]
	str r9,[sp,#296]  @%r78
	ldr r9,[fp,#-320]
	str r9,[sp,#292]  @%r77
	ldr r9,[fp,#-316]
	str r9,[sp,#288]  @%r76
	ldr r9,[fp,#-312]
	str r9,[sp,#284]  @%r75
	ldr r9,[fp,#-308]
	str r9,[sp,#280]  @%r74
	ldr r9,[fp,#-304]
	str r9,[sp,#276]  @%r73
	ldr r9,[fp,#-300]
	str r9,[sp,#272]  @%r72
	ldr r9,[fp,#-296]
	str r9,[sp,#268]  @%r71
	ldr r9,[fp,#-292]
	str r9,[sp,#264]  @%r70
	ldr r9,[fp,#-288]
	str r9,[sp,#260]  @%r69
	ldr r9,[fp,#-284]
	str r9,[sp,#256]  @%r68
	ldr r9,[fp,#-280]
	str r9,[sp,#252]  @%r67
	ldr r9,[fp,#-276]
	str r9,[sp,#248]  @%r66
	ldr r9,[fp,#-272]
	str r9,[sp,#244]  @%r65
	ldr r9,[fp,#-268]
	str r9,[sp,#240]  @%r64
	ldr r9,[fp,#-264]
	str r9,[sp,#236]  @%r63
	ldr r9,[fp,#-260]
	str r9,[sp,#232]  @%r62
	ldr r9,[fp,#-256]
	str r9,[sp,#228]  @%r61
	ldr r9,[fp,#-252]
	str r9,[sp,#224]  @%r60
	ldr r9,[fp,#-248]
	str r9,[sp,#220]  @%r59
	ldr r9,[fp,#-244]
	str r9,[sp,#216]  @%r58
	ldr r9,[fp,#-240]
	str r9,[sp,#212]  @%r57
	ldr r9,[fp,#-236]
	str r9,[sp,#208]  @%r56
	ldr r9,[fp,#-232]
	str r9,[sp,#204]  @%r55
	ldr r9,[fp,#-228]
	str r9,[sp,#200]  @%r54
	ldr r9,[fp,#-224]
	str r9,[sp,#196]  @%r53
	ldr r9,[fp,#-220]
	str r9,[sp,#192]  @%r52
	ldr r9,[fp,#-216]
	str r9,[sp,#188]  @%r51
	ldr r9,[fp,#-212]
	str r9,[sp,#184]  @%r50
	ldr r9,[fp,#-208]
	str r9,[sp,#180]  @%r49
	ldr r9,[fp,#-204]
	str r9,[sp,#176]  @%r48
	ldr r9,[fp,#-200]
	str r9,[sp,#172]  @%r47
	ldr r9,[fp,#-196]
	str r9,[sp,#168]  @%r46
	ldr r9,[fp,#-192]
	str r9,[sp,#164]  @%r45
	ldr r9,[fp,#-188]
	str r9,[sp,#160]  @%r44
	ldr r9,[fp,#-184]
	str r9,[sp,#156]  @%r43
	ldr r9,[fp,#-180]
	str r9,[sp,#152]  @%r42
	ldr r9,[fp,#-176]
	str r9,[sp,#148]  @%r41
	ldr r9,[fp,#-172]
	str r9,[sp,#144]  @%r40
	ldr r9,[fp,#-168]
	str r9,[sp,#140]  @%r39
	ldr r9,[fp,#-164]
	str r9,[sp,#136]  @%r38
	ldr r9,[fp,#-160]
	str r9,[sp,#132]  @%r37
	ldr r9,[fp,#-156]
	str r9,[sp,#128]  @%r36
	ldr r9,[fp,#-152]
	str r9,[sp,#124]  @%r35
	ldr r9,[fp,#-148]
	str r9,[sp,#120]  @%r34
	ldr r9,[fp,#-144]
	str r9,[sp,#116]  @%r33
	ldr r9,[fp,#-140]
	str r9,[sp,#112]  @%r32
	ldr r9,[fp,#-136]
	str r9,[sp,#108]  @%r31
	ldr r9,[fp,#-132]
	str r9,[sp,#104]  @%r30
	ldr r9,[fp,#-128]
	str r9,[sp,#100]  @%r29
	ldr r9,[fp,#-124]
	str r9,[sp,#96]  @%r28
	ldr r9,[fp,#-120]
	str r9,[sp,#92]  @%r27
	ldr r9,[fp,#-116]
	str r9,[sp,#88]  @%r26
	ldr r9,[fp,#-112]
	str r9,[sp,#84]  @%r25
	ldr r9,[fp,#-108]
	str r9,[sp,#80]  @%r24
	ldr r9,[fp,#-104]
	str r9,[sp,#76]  @%r23
	ldr r9,[fp,#-100]
	str r9,[sp,#72]  @%r22
	ldr r9,[fp,#-96]
	str r9,[sp,#68]  @%r21
	ldr r9,[fp,#-92]
	str r9,[sp,#64]  @%r20
	ldr r9,[fp,#-88]
	str r9,[sp,#60]  @%r19
	ldr r9,[fp,#-84]
	str r9,[sp,#56]  @%r18
	ldr r9,[fp,#-80]
	str r9,[sp,#52]  @%r17
	ldr r9,[fp,#-76]
	str r9,[sp,#48]  @%r16
	ldr r9,[fp,#-72]
	str r9,[sp,#44]  @%r15
	ldr r9,[fp,#-68]
	str r9,[sp,#40]  @%r14
	ldr r9,[fp,#-64]
	str r9,[sp,#36]  @%r13
	ldr r9,[fp,#-60]
	str r9,[sp,#32]  @%r12
	ldr r9,[fp,#-56]
	str r9,[sp,#28]  @%r11
	ldr r9,[fp,#-52]
	str r9,[sp,#24]  @%r10
	ldr r9,[fp,#-48]
	str r9,[sp,#20]  @%r9
	ldr r9,[fp,#-44]
	str r9,[sp,#16]  @%r8
	ldr r9,[fp,#-40]
	str r9,[sp,#12]  @%r7
	ldr r9,[fp,#-36]
	str r9,[sp,#8]  @%r6
	ldr r9,[fp,#-32]
	str r9,[sp,#4]  @%r5
	ldr r9,[fp,#-28]
	str r9,[sp,#0]  @%r4
	ldr r0,[fp,#-12]
	ldr r1,[fp,#-16]
	ldr r2,[fp,#-20]
	ldr r3,[fp,#-24]
	bl func
	add sp,sp,#2688
	mov r7,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	mov r0,r7
	movw r9,#2680
	movt r9,#0  @ 2680
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
