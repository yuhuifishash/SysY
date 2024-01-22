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
@n = global i32 zeroinitializer
define i32 @QuickSort(ptr %r0,i32 %r1,i32 %r2)
{
L0:
    br label %L1
L1:
    %r7 = icmp slt i32 %r1,%r2
    br i1 %r7, label %L2, label %L3
L2:
    %r19 = getelementptr i32, ptr %r0, i32 %r1
    %r20 = load i32, ptr %r19
    %r23 = icmp slt i32 %r1,%r2
    br i1 %r23, label %L29, label %L7
L3:
    ret i32 0
L5:
    %r156 = phi i32 [%r159,%L6],[%r1,%L29]
    %r151 = phi i32 [%r153,%L6],[%r2,%L29]
    %r28 = icmp slt i32 %r156,%r151
    br i1 %r28, label %L12, label %L11
L6:
    %r124 = icmp slt i32 %r159,%r153
    br i1 %r124, label %L5, label %L7
L7:
    %r157 = phi i32 [%r1,%L2],[%r159,%L6]
    %r129 = getelementptr i32, ptr %r0, i32 %r157
    store i32 %r20, ptr %r129
    %r134 = sub i32 %r157,1
    %r135 = getelementptr i32, ptr %r0
    %r138 = call i32 @QuickSort(ptr %r135,i32 %r1,i32 %r134)
    %r141 = add i32 %r157,1
    %r145 = call i32 @QuickSort(ptr %r135,i32 %r141,i32 %r2)
    br label %L3
L9:
    %r149 = phi i32 [%r45,%L14],[%r151,%L30]
    %r45 = sub i32 %r149,1
    br label %L10
L10:
    %r48 = icmp slt i32 %r156,%r45
    br i1 %r48, label %L14, label %L11
L11:
    %r150 = phi i32 [%r151,%L5],[%r151,%L12],[%r45,%L10],[%r45,%L14]
    %r65 = icmp slt i32 %r156,%r150
    br i1 %r65, label %L16, label %L17
L12:
    %r32 = getelementptr i32, ptr %r0, i32 %r151
    %r33 = load i32, ptr %r32
    %r36 = sub i32 %r20,1
    %r37 = icmp sgt i32 %r33,%r36
    br i1 %r37, label %L30, label %L11
L14:
    %r52 = getelementptr i32, ptr %r0, i32 %r45
    %r53 = load i32, ptr %r52
    %r56 = sub i32 %r20,1
    %r57 = icmp sgt i32 %r53,%r56
    br i1 %r57, label %L9, label %L11
L16:
    %r69 = getelementptr i32, ptr %r0, i32 %r150
    %r70 = load i32, ptr %r69
    %r72 = getelementptr i32, ptr %r0, i32 %r156
    store i32 %r70, ptr %r72
    %r75 = add i32 %r156,1
    br label %L17
L17:
    %r155 = phi i32 [%r156,%L11],[%r75,%L16]
    %r78 = icmp slt i32 %r155,%r150
    br i1 %r78, label %L22, label %L21
L19:
    %r158 = phi i32 [%r93,%L24],[%r155,%L28]
    %r93 = add i32 %r158,1
    br label %L20
L20:
    %r96 = icmp slt i32 %r93,%r150
    br i1 %r96, label %L24, label %L21
L21:
    %r159 = phi i32 [%r155,%L17],[%r155,%L22],[%r93,%L20],[%r93,%L24]
    %r111 = icmp slt i32 %r159,%r150
    br i1 %r111, label %L26, label %L27
L22:
    %r82 = getelementptr i32, ptr %r0, i32 %r155
    %r83 = load i32, ptr %r82
    %r85 = icmp slt i32 %r83,%r20
    br i1 %r85, label %L28, label %L21
L24:
    %r100 = getelementptr i32, ptr %r0, i32 %r93
    %r101 = load i32, ptr %r100
    %r103 = icmp slt i32 %r101,%r20
    br i1 %r103, label %L19, label %L21
L26:
    %r115 = getelementptr i32, ptr %r0, i32 %r159
    %r116 = load i32, ptr %r115
    %r118 = getelementptr i32, ptr %r0, i32 %r150
    store i32 %r116, ptr %r118
    %r121 = sub i32 %r150,1
    br label %L27
L27:
    %r153 = phi i32 [%r150,%L21],[%r121,%L26]
    br label %L6
L28:
    br label %L19
L29:
    br label %L5
L30:
    br label %L9
}
define i32 @insertsort(ptr %r0)
{
L0:
    br label %L1
L1:
    %r5 = load i32, ptr @n
    %r6 = icmp slt i32 1,%r5
    br i1 %r6, label %L14, label %L5
L3:
    %r81 = phi i32 [%r68,%L4],[1,%L14]
    %r12 = getelementptr i32, ptr %r0, i32 %r81
    %r13 = load i32, ptr %r12
    %r18 = sub i32 %r81,1
    %r22 = icmp sgt i32 %r18,-1
    br i1 %r22, label %L10, label %L9
L4:
    %r71 = icmp slt i32 %r68,%r70
    br i1 %r71, label %L3, label %L5
L5:
    ret i32 0
L7:
    %r77 = phi i32 [%r44,%L12],[%r18,%L15]
    %r36 = getelementptr i32, ptr %r0, i32 %r77
    %r37 = load i32, ptr %r36
    %r40 = add i32 %r77,1
    %r41 = getelementptr i32, ptr %r0, i32 %r40
    store i32 %r37, ptr %r41
    %r44 = sub i32 %r77,1
    br label %L8
L8:
    %r48 = icmp sgt i32 %r44,-1
    br i1 %r48, label %L12, label %L9
L9:
    %r78 = phi i32 [%r18,%L3],[%r18,%L10],[%r44,%L8],[%r44,%L12]
    %r64 = add i32 %r78,1
    %r65 = getelementptr i32, ptr %r0, i32 %r64
    store i32 %r13, ptr %r65
    %r68 = add i32 %r81,1
    br label %L4
L10:
    %r27 = getelementptr i32, ptr %r0, i32 %r18
    %r28 = load i32, ptr %r27
    %r29 = icmp slt i32 %r13,%r28
    br i1 %r29, label %L15, label %L9
L12:
    %r53 = getelementptr i32, ptr %r0, i32 %r44
    %r54 = load i32, ptr %r53
    %r55 = icmp slt i32 %r13,%r54
    br i1 %r55, label %L7, label %L9
L14:
    %r70 = load i32, ptr @n
    br label %L3
L15:
    br label %L7
}
define i32 @bubblesort(ptr %r0)
{
L0:
    br label %L1
L1:
    %r7 = load i32, ptr @n
    %r9 = sub i32 %r7,1
    %r10 = icmp slt i32 0,%r9
    br i1 %r10, label %L13, label %L5
L3:
    %r78 = phi i32 [%r65,%L4],[0,%L13]
    %r17 = sub i32 %r15,%r78
    %r19 = sub i32 %r17,1
    %r20 = icmp slt i32 0,%r19
    br i1 %r20, label %L12, label %L9
L4:
    %r70 = icmp slt i32 %r65,%r69
    br i1 %r70, label %L3, label %L5
L5:
    ret i32 0
L7:
    %r76 = phi i32 [%r53,%L8],[0,%L12]
    %r24 = getelementptr i32, ptr %r0, i32 %r76
    %r25 = load i32, ptr %r24
    %r28 = add i32 %r76,1
    %r29 = getelementptr i32, ptr %r0, i32 %r28
    %r30 = load i32, ptr %r29
    %r31 = icmp sgt i32 %r25,%r30
    br i1 %r31, label %L10, label %L11
L8:
    %r60 = icmp slt i32 %r53,%r59
    br i1 %r60, label %L7, label %L9
L9:
    %r65 = add i32 %r78,1
    br label %L4
L10:
    %r38 = add i32 %r76,1
    %r39 = getelementptr i32, ptr %r0, i32 %r38
    %r40 = load i32, ptr %r39
    %r42 = getelementptr i32, ptr %r0, i32 %r76
    %r43 = load i32, ptr %r42
    store i32 %r43, ptr %r39
    store i32 %r40, ptr %r42
    br label %L11
L11:
    %r53 = add i32 %r76,1
    br label %L8
L12:
    %r55 = load i32, ptr @n
    %r57 = sub i32 %r55,%r78
    %r59 = sub i32 %r57,1
    br label %L7
L13:
    %r15 = load i32, ptr @n
    %r69 = sub i32 %r15,1
    br label %L3
}
define i32 @getMid(ptr %r0)
{
L0:
    br label %L1
L1:
    %r3 = load i32, ptr @n
    %r5 = srem i32 %r3,2
    %r7 = icmp eq i32 %r5,0
    br i1 %r7, label %L2, label %L3
L2:
    %r10 = load i32, ptr @n
    %r12 = sdiv i32 %r10,2
    %r14 = getelementptr i32, ptr %r0, i32 %r12
    %r15 = load i32, ptr %r14
    %r18 = sub i32 %r12,1
    %r19 = getelementptr i32, ptr %r0, i32 %r18
    %r20 = load i32, ptr %r19
    %r21 = add i32 %r15,%r20
    %r23 = sdiv i32 %r21,2
    ret i32 %r23
L3:
    %r24 = load i32, ptr @n
    %r26 = sdiv i32 %r24,2
    %r28 = getelementptr i32, ptr %r0, i32 %r26
    %r29 = load i32, ptr %r28
    ret i32 %r29
}
define i32 @getMost(ptr %r0)
{
L0:
    %r1 = alloca [1000 x i32]
    br label %L1
L1:
    br label %L13
L3:
    %r72 = phi i32 [%r15,%L4],[0,%L13]
    %r12 = getelementptr [1000 x i32], ptr %r1, i32 0, i32 %r72
    store i32 0, ptr %r12
    %r15 = add i32 %r72,1
    br label %L4
L4:
    %r18 = icmp slt i32 %r15,1000
    br i1 %r18, label %L3, label %L5
L5:
    %r28 = load i32, ptr @n
    %r29 = icmp slt i32 0,%r28
    br i1 %r29, label %L12, label %L9
L7:
    %r74 = phi i32 [%r57,%L8],[0,%L12]
    %r70 = phi i32 [%r69,%L8],[0,%L12]
    %r67 = phi i32 [%r66,%L8],[0,%L12]
    %r35 = getelementptr i32, ptr %r0, i32 %r74
    %r36 = load i32, ptr %r35
    %r38 = getelementptr [1000 x i32], ptr %r1, i32 0, i32 %r36
    %r39 = load i32, ptr %r38
    %r41 = add i32 %r39,1
    store i32 %r41, ptr %r38
    %r46 = load i32, ptr %r38
    %r48 = icmp sgt i32 %r46,%r70
    br i1 %r48, label %L10, label %L11
L8:
    %r60 = icmp slt i32 %r57,%r59
    br i1 %r60, label %L7, label %L9
L9:
    %r68 = phi i32 [0,%L5],[%r66,%L8]
    ret i32 %r68
L10:
    %r52 = getelementptr [1000 x i32], ptr %r1, i32 0, i32 %r36
    %r53 = load i32, ptr %r52
    br label %L11
L11:
    %r69 = phi i32 [%r70,%L7],[%r53,%L10]
    %r66 = phi i32 [%r67,%L7],[%r36,%L10]
    %r57 = add i32 %r74,1
    br label %L8
L12:
    %r59 = load i32, ptr @n
    br label %L7
L13:
    br label %L3
}
define i32 @arrCopy(ptr %r0,ptr %r1)
{
L0:
    br label %L1
L1:
    %r6 = load i32, ptr @n
    %r7 = icmp slt i32 0,%r6
    br i1 %r7, label %L6, label %L5
L3:
    %r24 = phi i32 [%r17,%L4],[0,%L6]
    %r11 = getelementptr i32, ptr %r0, i32 %r24
    %r12 = load i32, ptr %r11
    %r14 = getelementptr i32, ptr %r1, i32 %r24
    store i32 %r12, ptr %r14
    %r17 = add i32 %r24,1
    br label %L4
L4:
    %r20 = icmp slt i32 %r17,%r19
    br i1 %r20, label %L3, label %L5
L5:
    ret i32 0
L6:
    %r19 = load i32, ptr @n
    br label %L3
}
define i32 @revert(ptr %r0)
{
L0:
    br label %L1
L1:
    br label %L5
L5:
    ret i32 0
}
define i32 @calSum(ptr %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r10 = load i32, ptr @n
    %r11 = icmp slt i32 0,%r10
    br i1 %r11, label %L9, label %L5
L3:
    %r46 = phi i32 [%r48,%L4],[0,%L9]
    %r44 = phi i32 [%r37,%L4],[0,%L9]
    %r16 = getelementptr i32, ptr %r0, i32 %r44
    %r17 = load i32, ptr %r16
    %r18 = add i32 %r46,%r17
    %r21 = srem i32 %r44,%r1
    %r25 = icmp ne i32 %r21,%r24
    br i1 %r25, label %L6, label %L7
L4:
    %r40 = icmp slt i32 %r37,%r39
    br i1 %r40, label %L3, label %L5
L5:
    ret i32 0
L6:
    %r30 = getelementptr i32, ptr %r0, i32 %r44
    store i32 0, ptr %r30
    br label %L8
L7:
    %r33 = getelementptr i32, ptr %r0, i32 %r44
    store i32 %r18, ptr %r33
    br label %L8
L8:
    %r48 = phi i32 [%r18,%L6],[0,%L7]
    %r37 = add i32 %r44,1
    br label %L4
L9:
    %r24 = sub i32 %r1,1
    %r39 = load i32, ptr @n
    br label %L3
}
define i32 @avgPooling(ptr %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r12 = load i32, ptr @n
    %r13 = icmp slt i32 0,%r12
    br i1 %r13, label %L16, label %L5
L3:
    %r105 = phi i32 [%r104,%L4],[0,%L16]
    %r100 = phi i32 [%r68,%L4],[0,%L16]
    %r98 = phi i32 [%r97,%L4],[0,%L16]
    %r20 = icmp slt i32 %r100,%r19
    br i1 %r20, label %L6, label %L7
L4:
    %r71 = icmp slt i32 %r68,%r70
    br i1 %r71, label %L3, label %L5
L5:
    %r74 = load i32, ptr @n
    %r76 = sub i32 %r74,%r1
    %r78 = add i32 %r76,1
    %r81 = icmp slt i32 %r78,%r74
    br i1 %r81, label %L17, label %L15
L6:
    %r25 = getelementptr i32, ptr %r0, i32 %r100
    %r26 = load i32, ptr %r25
    %r27 = add i32 %r105,%r26
    br label %L8
L7:
    %r31 = sub i32 %r1,1
    %r32 = icmp eq i32 %r100,%r31
    br i1 %r32, label %L9, label %L10
L8:
    %r104 = phi i32 [%r27,%L6],[%r107,%L11]
    %r97 = phi i32 [%r98,%L6],[%r96,%L11]
    %r68 = add i32 %r100,1
    br label %L4
L9:
    %r36 = getelementptr i32, ptr %r0, i32 0
    %r37 = load i32, ptr %r36
    %r40 = sdiv i32 %r105,%r1
    store i32 %r40, ptr %r36
    br label %L11
L10:
    %r45 = getelementptr i32, ptr %r0, i32 %r100
    %r46 = load i32, ptr %r45
    %r47 = add i32 %r105,%r46
    %r49 = sub i32 %r47,%r98
    %r52 = sub i32 %r100,%r1
    %r54 = add i32 %r52,1
    %r55 = getelementptr i32, ptr %r0, i32 %r54
    %r56 = load i32, ptr %r55
    %r59 = sdiv i32 %r49,%r1
    %r62 = sub i32 %r100,%r1
    %r64 = add i32 %r62,1
    %r65 = getelementptr i32, ptr %r0, i32 %r64
    store i32 %r59, ptr %r65
    br label %L11
L11:
    %r107 = phi i32 [%r105,%L9],[%r49,%L10]
    %r96 = phi i32 [%r37,%L9],[%r56,%L10]
    br label %L8
L13:
    %r102 = phi i32 [%r89,%L14],[%r78,%L17]
    %r86 = getelementptr i32, ptr %r0, i32 %r102
    store i32 0, ptr %r86
    %r89 = add i32 %r102,1
    br label %L14
L14:
    %r92 = icmp slt i32 %r89,%r91
    br i1 %r92, label %L13, label %L15
L15:
    ret i32 0
L16:
    %r19 = sub i32 %r1,1
    %r70 = load i32, ptr @n
    br label %L3
L17:
    %r91 = load i32, ptr @n
    br label %L13
}
define i32 @main()
{
L0:
    %r2 = alloca [32 x i32]
    %r1 = alloca [32 x i32]
    br label %L1
L1:
    store i32 32, ptr @n
    %r5 = getelementptr [32 x i32], ptr %r1, i32 0, i32 0
    store i32 7, ptr %r5
    %r8 = getelementptr [32 x i32], ptr %r1, i32 0, i32 1
    store i32 23, ptr %r8
    %r11 = getelementptr [32 x i32], ptr %r1, i32 0, i32 2
    store i32 89, ptr %r11
    %r14 = getelementptr [32 x i32], ptr %r1, i32 0, i32 3
    store i32 26, ptr %r14
    %r17 = getelementptr [32 x i32], ptr %r1, i32 0, i32 4
    store i32 282, ptr %r17
    %r20 = getelementptr [32 x i32], ptr %r1, i32 0, i32 5
    store i32 254, ptr %r20
    %r23 = getelementptr [32 x i32], ptr %r1, i32 0, i32 6
    store i32 27, ptr %r23
    %r26 = getelementptr [32 x i32], ptr %r1, i32 0, i32 7
    store i32 5, ptr %r26
    %r29 = getelementptr [32 x i32], ptr %r1, i32 0, i32 8
    store i32 83, ptr %r29
    %r32 = getelementptr [32 x i32], ptr %r1, i32 0, i32 9
    store i32 273, ptr %r32
    %r35 = getelementptr [32 x i32], ptr %r1, i32 0, i32 10
    store i32 574, ptr %r35
    %r38 = getelementptr [32 x i32], ptr %r1, i32 0, i32 11
    store i32 905, ptr %r38
    %r41 = getelementptr [32 x i32], ptr %r1, i32 0, i32 12
    store i32 354, ptr %r41
    %r44 = getelementptr [32 x i32], ptr %r1, i32 0, i32 13
    store i32 657, ptr %r44
    %r47 = getelementptr [32 x i32], ptr %r1, i32 0, i32 14
    store i32 935, ptr %r47
    %r50 = getelementptr [32 x i32], ptr %r1, i32 0, i32 15
    store i32 264, ptr %r50
    %r53 = getelementptr [32 x i32], ptr %r1, i32 0, i32 16
    store i32 639, ptr %r53
    %r56 = getelementptr [32 x i32], ptr %r1, i32 0, i32 17
    store i32 459, ptr %r56
    %r59 = getelementptr [32 x i32], ptr %r1, i32 0, i32 18
    store i32 29, ptr %r59
    %r62 = getelementptr [32 x i32], ptr %r1, i32 0, i32 19
    store i32 68, ptr %r62
    %r65 = getelementptr [32 x i32], ptr %r1, i32 0, i32 20
    store i32 929, ptr %r65
    %r68 = getelementptr [32 x i32], ptr %r1, i32 0, i32 21
    store i32 756, ptr %r68
    %r71 = getelementptr [32 x i32], ptr %r1, i32 0, i32 22
    store i32 452, ptr %r71
    %r74 = getelementptr [32 x i32], ptr %r1, i32 0, i32 23
    store i32 279, ptr %r74
    %r77 = getelementptr [32 x i32], ptr %r1, i32 0, i32 24
    store i32 58, ptr %r77
    %r80 = getelementptr [32 x i32], ptr %r1, i32 0, i32 25
    store i32 87, ptr %r80
    %r83 = getelementptr [32 x i32], ptr %r1, i32 0, i32 26
    store i32 96, ptr %r83
    %r86 = getelementptr [32 x i32], ptr %r1, i32 0, i32 27
    store i32 36, ptr %r86
    %r89 = getelementptr [32 x i32], ptr %r1, i32 0, i32 28
    store i32 39, ptr %r89
    %r92 = getelementptr [32 x i32], ptr %r1, i32 0, i32 29
    store i32 28, ptr %r92
    %r95 = getelementptr [32 x i32], ptr %r1, i32 0, i32 30
    store i32 1, ptr %r95
    %r98 = getelementptr [32 x i32], ptr %r1, i32 0, i32 31
    store i32 290, ptr %r98
    %r101 = getelementptr i32, ptr %r1, i32 0
    %r102 = getelementptr i32, ptr %r2, i32 0
    %r103 = call i32 @arrCopy(ptr %r101,ptr %r102)
    br label %L30
L3:
    %r273 = phi i32 [%r120,%L4],[0,%L37]
    %r115 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r273
    %r116 = load i32, ptr %r115
    call void @putint(i32 %r116)
    %r120 = add i32 %r273,1
    br label %L4
L4:
    %r123 = icmp slt i32 %r120,32
    br i1 %r123, label %L3, label %L5
L5:
    %r126 = getelementptr i32, ptr %r2, i32 0
    %r127 = call i32 @bubblesort(ptr %r126)
    br label %L38
L7:
    %r275 = phi i32 [%r140,%L8],[0,%L38]
    %r135 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r275
    %r136 = load i32, ptr %r135
    call void @putint(i32 %r136)
    %r140 = add i32 %r275,1
    br label %L8
L8:
    %r143 = icmp slt i32 %r140,32
    br i1 %r143, label %L7, label %L9
L9:
    %r146 = getelementptr i32, ptr %r2, i32 0
    %r147 = call i32 @getMid(ptr %r146)
    call void @putint(i32 %r147)
    %r150 = call i32 @getMost(ptr %r146)
    call void @putint(i32 %r150)
    %r152 = getelementptr i32, ptr %r1, i32 0
    %r154 = call i32 @arrCopy(ptr %r152,ptr %r146)
    %r156 = call i32 @bubblesort(ptr %r146)
    br label %L39
L11:
    %r277 = phi i32 [%r169,%L12],[0,%L39]
    %r164 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r277
    %r165 = load i32, ptr %r164
    call void @putint(i32 %r165)
    %r169 = add i32 %r277,1
    br label %L12
L12:
    %r172 = icmp slt i32 %r169,32
    br i1 %r172, label %L11, label %L13
L13:
    %r175 = getelementptr i32, ptr %r1, i32 0
    %r176 = getelementptr i32, ptr %r2, i32 0
    %r177 = call i32 @arrCopy(ptr %r175,ptr %r176)
    %r179 = call i32 @insertsort(ptr %r176)
    br label %L34
L15:
    %r279 = phi i32 [%r192,%L16],[0,%L34]
    %r187 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r279
    %r188 = load i32, ptr %r187
    call void @putint(i32 %r188)
    %r192 = add i32 %r279,1
    br label %L16
L16:
    %r195 = icmp slt i32 %r192,32
    br i1 %r195, label %L15, label %L17
L17:
    %r198 = getelementptr i32, ptr %r1, i32 0
    %r199 = getelementptr i32, ptr %r2, i32 0
    %r200 = call i32 @arrCopy(ptr %r198,ptr %r199)
    %r206 = call i32 @QuickSort(ptr %r199,i32 0,i32 31)
    br label %L35
L19:
    %r281 = phi i32 [%r218,%L20],[0,%L35]
    %r213 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r281
    %r214 = load i32, ptr %r213
    call void @putint(i32 %r214)
    %r218 = add i32 %r281,1
    br label %L20
L20:
    %r221 = icmp slt i32 %r218,32
    br i1 %r221, label %L19, label %L21
L21:
    %r224 = getelementptr i32, ptr %r1, i32 0
    %r225 = getelementptr i32, ptr %r2, i32 0
    %r226 = call i32 @arrCopy(ptr %r224,ptr %r225)
    %r229 = call i32 @calSum(ptr %r225,i32 4)
    br label %L36
L23:
    %r283 = phi i32 [%r242,%L24],[0,%L36]
    %r237 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r283
    %r238 = load i32, ptr %r237
    call void @putint(i32 %r238)
    %r242 = add i32 %r283,1
    br label %L24
L24:
    %r245 = icmp slt i32 %r242,32
    br i1 %r245, label %L23, label %L25
L25:
    %r248 = getelementptr i32, ptr %r1, i32 0
    %r249 = getelementptr i32, ptr %r2, i32 0
    %r250 = call i32 @arrCopy(ptr %r248,ptr %r249)
    %r253 = call i32 @avgPooling(ptr %r249,i32 3)
    br label %L40
L27:
    %r285 = phi i32 [%r266,%L28],[0,%L40]
    %r261 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r285
    %r262 = load i32, ptr %r261
    call void @putint(i32 %r262)
    %r266 = add i32 %r285,1
    br label %L28
L28:
    %r269 = icmp slt i32 %r266,32
    br i1 %r269, label %L27, label %L29
L29:
    ret i32 0
L30:
    br label %L32
L31:
    br label %L37
L32:
    br label %L33
L33:
    br label %L31
L34:
    br label %L15
L35:
    br label %L19
L36:
    br label %L23
L37:
    br label %L3
L38:
    br label %L7
L39:
    br label %L11
L40:
    br label %L27
}
