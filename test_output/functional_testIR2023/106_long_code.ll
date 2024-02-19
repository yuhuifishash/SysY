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
define i32 @bubblesort(ptr %r0)
{
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r54 = phi i32 [0,%L1],[%r50,%L7]
    %r7 = load i32, ptr @n
    %r9 = sub i32 %r7,1
    %r10 = icmp slt i32 %r54,%r9
    br i1 %r10, label %L3, label %L4
L3:  ;
    br label %L5
L4:  ;
    ret i32 0
L5:  ;
    %r53 = phi i32 [0,%L3],[%r24,%L9]
    %r13 = load i32, ptr @n
    %r15 = sub i32 %r13,%r54
    %r17 = sub i32 %r15,1
    %r18 = icmp slt i32 %r53,%r17
    br i1 %r18, label %L6, label %L7
L6:  ;
    %r20 = getelementptr i32, ptr %r0, i32 %r53
    %r21 = load i32, ptr %r20
    %r24 = add i32 %r53,1
    %r25 = getelementptr i32, ptr %r0, i32 %r24
    %r26 = load i32, ptr %r25
    %r27 = icmp sgt i32 %r21,%r26
    br i1 %r27, label %L8, label %L9
L7:  ;
    %r50 = add i32 %r54,1
    br label %L2
L8:  ;
    %r34 = load i32, ptr %r25
    %r41 = load i32, ptr %r20
    store i32 %r41, ptr %r25
    store i32 %r34, ptr %r20
    br label %L9
L9:  ;
    br label %L5
}
define i32 @insertsort(ptr %r0)
{
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r48 = phi i32 [1,%L1],[%r43,%L7]
    %r5 = load i32, ptr @n
    %r6 = icmp slt i32 %r48,%r5
    br i1 %r6, label %L3, label %L4
L3:  ;
    %r10 = getelementptr i32, ptr %r0, i32 %r48
    %r11 = load i32, ptr %r10
    %r16 = sub i32 %r48,1
    br label %L5
L4:  ;
    ret i32 0
L5:  ;
    %r46 = phi i32 [%r16,%L3],[%r35,%L6]
    %r20 = icmp sgt i32 %r46,-1
    br i1 %r20, label %L8, label %L7
L6:  ;
    %r28 = add i32 %r46,1
    %r29 = getelementptr i32, ptr %r0, i32 %r28
    %r32 = load i32, ptr %r23
    store i32 %r32, ptr %r29
    %r35 = sub i32 %r46,1
    br label %L5
L7:  ;
    %r38 = add i32 %r46,1
    %r39 = getelementptr i32, ptr %r0, i32 %r38
    store i32 %r11, ptr %r39
    %r43 = add i32 %r48,1
    br label %L2
L8:  ;
    %r23 = getelementptr i32, ptr %r0, i32 %r46
    %r24 = load i32, ptr %r23
    %r25 = icmp slt i32 %r11,%r24
    br i1 %r25, label %L6, label %L7
}
define i32 @QuickSort(ptr %r0,i32 %r1,i32 %r2)
{
L0:  ;
    br label %L1
L1:  ;
    %r7 = icmp slt i32 %r1,%r2
    br i1 %r7, label %L2, label %L3
L2:  ;
    %r17 = getelementptr i32, ptr %r0, i32 %r1
    %r18 = load i32, ptr %r17
    br label %L4
L3:  ;
    ret i32 0
L4:  ;
    %r95 = phi i32 [%r1,%L2],[%r96,%L18]
    %r91 = phi i32 [%r2,%L2],[%r92,%L18]
    %r21 = icmp slt i32 %r95,%r91
    br i1 %r21, label %L5, label %L6
L5:  ;
    br label %L7
L6:  ;
    %r69 = getelementptr i32, ptr %r0, i32 %r95
    store i32 %r18, ptr %r69
    %r75 = sub i32 %r95,1
    %r76 = getelementptr i32, ptr %r0
    %r79 = call i32 @QuickSort(ptr %r76,i32 %r1,i32 %r75)
    %r82 = add i32 %r95,1
    %r86 = call i32 @QuickSort(ptr %r76,i32 %r82,i32 %r2)
    br label %L3
L7:  ;
    %r90 = phi i32 [%r91,%L5],[%r34,%L8]
    %r24 = icmp slt i32 %r95,%r90
    br i1 %r24, label %L10, label %L9
L8:  ;
    %r34 = sub i32 %r90,1
    br label %L7
L9:  ;
    br i1 %r24, label %L11, label %L12
L10:  ;
    %r26 = getelementptr i32, ptr %r0, i32 %r90
    %r27 = load i32, ptr %r26
    %r30 = sub i32 %r18,1
    %r31 = icmp sgt i32 %r27,%r30
    br i1 %r31, label %L8, label %L9
L11:  ;
    %r39 = getelementptr i32, ptr %r0, i32 %r95
    %r41 = getelementptr i32, ptr %r0, i32 %r90
    %r42 = load i32, ptr %r41
    store i32 %r42, ptr %r39
    %r45 = add i32 %r95,1
    br label %L12
L12:  ;
    %r94 = phi i32 [%r95,%L9],[%r45,%L11]
    br label %L13
L13:  ;
    %r96 = phi i32 [%r94,%L12],[%r56,%L14]
    %r48 = icmp slt i32 %r96,%r90
    br i1 %r48, label %L16, label %L15
L14:  ;
    %r56 = add i32 %r96,1
    br label %L13
L15:  ;
    br i1 %r48, label %L17, label %L18
L16:  ;
    %r50 = getelementptr i32, ptr %r0, i32 %r96
    %r51 = load i32, ptr %r50
    %r53 = icmp slt i32 %r51,%r18
    br i1 %r53, label %L14, label %L15
L17:  ;
    %r61 = getelementptr i32, ptr %r0, i32 %r90
    %r63 = getelementptr i32, ptr %r0, i32 %r96
    %r64 = load i32, ptr %r63
    store i32 %r64, ptr %r61
    %r67 = sub i32 %r90,1
    br label %L18
L18:  ;
    %r92 = phi i32 [%r90,%L15],[%r67,%L17]
    br label %L4
}
define i32 @getMid(ptr %r0)
{
L0:  ;
    br label %L1
L1:  ;
    %r3 = load i32, ptr @n
    %r5 = srem i32 %r3,2
    %r7 = icmp eq i32 %r5,0
    br i1 %r7, label %L2, label %L3
L2:  ;
    %r8 = load i32, ptr @n
    %r10 = sdiv i32 %r8,2
    %r12 = getelementptr i32, ptr %r0, i32 %r10
    %r13 = load i32, ptr %r12
    %r16 = sub i32 %r10,1
    %r17 = getelementptr i32, ptr %r0, i32 %r16
    %r18 = load i32, ptr %r17
    %r19 = add i32 %r13,%r18
    %r21 = sdiv i32 %r19,2
    ret i32 %r21
L3:  ;
    %r22 = load i32, ptr @n
    %r24 = sdiv i32 %r22,2
    %r26 = getelementptr i32, ptr %r0, i32 %r24
    %r27 = load i32, ptr %r26
    ret i32 %r27
}
define i32 @getMost(ptr %r0)
{
L0:  ;
    %r1 = alloca [1000 x i32]
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r53 = phi i32 [0,%L1],[%r13,%L3]
    %r7 = icmp slt i32 %r53,1000
    br i1 %r7, label %L3, label %L4
L3:  ;
    %r9 = getelementptr [1000 x i32], ptr %r1, i32 0, i32 %r53
    store i32 0, ptr %r9
    %r13 = add i32 %r53,1
    br label %L2
L4:  ;
    br label %L5
L5:  ;
    %r54 = phi i32 [0,%L4],[%r46,%L9]
    %r52 = phi i32 [0,%L4],[%r51,%L9]
    %r50 = phi i32 [0,%L4],[%r49,%L9]
    %r21 = load i32, ptr @n
    %r22 = icmp slt i32 %r54,%r21
    br i1 %r22, label %L6, label %L7
L6:  ;
    %r26 = getelementptr i32, ptr %r0, i32 %r54
    %r27 = load i32, ptr %r26
    %r29 = getelementptr [1000 x i32], ptr %r1, i32 0, i32 %r27
    %r32 = load i32, ptr %r29
    %r34 = add i32 %r32,1
    store i32 %r34, ptr %r29
    %r37 = load i32, ptr %r29
    %r39 = icmp sgt i32 %r37,%r52
    br i1 %r39, label %L8, label %L9
L7:  ;
    ret i32 %r50
L8:  ;
    %r42 = load i32, ptr %r29
    br label %L9
L9:  ;
    %r51 = phi i32 [%r52,%L6],[%r42,%L8]
    %r49 = phi i32 [%r50,%L6],[%r27,%L8]
    %r46 = add i32 %r54,1
    br label %L5
}
define i32 @revert(ptr %r0)
{
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    br label %L4
L4:  ;
    ret i32 0
}
define i32 @arrCopy(ptr %r0,ptr %r1)
{
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r17 = phi i32 [0,%L1],[%r15,%L3]
    %r6 = load i32, ptr @n
    %r7 = icmp slt i32 %r17,%r6
    br i1 %r7, label %L3, label %L4
L3:  ;
    %r9 = getelementptr i32, ptr %r1, i32 %r17
    %r11 = getelementptr i32, ptr %r0, i32 %r17
    %r12 = load i32, ptr %r11
    store i32 %r12, ptr %r9
    %r15 = add i32 %r17,1
    br label %L2
L4:  ;
    ret i32 0
}
define i32 @calSum(ptr %r0,i32 %r1)
{
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r36 = phi i32 [0,%L1],[%r37,%L7]
    %r35 = phi i32 [0,%L1],[%r33,%L7]
    %r10 = load i32, ptr @n
    %r11 = icmp slt i32 %r35,%r10
    br i1 %r11, label %L3, label %L4
L3:  ;
    %r14 = getelementptr i32, ptr %r0, i32 %r35
    %r15 = load i32, ptr %r14
    %r16 = add i32 %r36,%r15
    %r19 = srem i32 %r35,%r1
    %r22 = sub i32 %r1,1
    %r23 = icmp ne i32 %r19,%r22
    br i1 %r23, label %L5, label %L6
L4:  ;
    ret i32 0
L5:  ;
    store i32 0, ptr %r14
    br label %L7
L6:  ;
    store i32 %r16, ptr %r14
    br label %L7
L7:  ;
    %r37 = phi i32 [%r16,%L5],[0,%L6]
    %r33 = add i32 %r35,1
    br label %L2
}
define i32 @avgPooling(ptr %r0,i32 %r1)
{
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r84 = phi i32 [0,%L1],[%r83,%L7]
    %r81 = phi i32 [0,%L1],[%r62,%L7]
    %r80 = phi i32 [0,%L1],[%r79,%L7]
    %r12 = load i32, ptr @n
    %r13 = icmp slt i32 %r81,%r12
    br i1 %r13, label %L3, label %L4
L3:  ;
    %r17 = sub i32 %r1,1
    %r18 = icmp slt i32 %r81,%r17
    br i1 %r18, label %L5, label %L6
L4:  ;
    %r63 = load i32, ptr @n
    %r65 = sub i32 %r63,%r1
    %r67 = add i32 %r65,1
    br label %L11
L5:  ;
    %r21 = getelementptr i32, ptr %r0, i32 %r81
    %r22 = load i32, ptr %r21
    %r23 = add i32 %r84,%r22
    br label %L7
L6:  ;
    %r28 = icmp eq i32 %r81,%r17
    br i1 %r28, label %L8, label %L9
L7:  ;
    %r83 = phi i32 [%r23,%L5],[%r85,%L10]
    %r79 = phi i32 [%r80,%L5],[%r78,%L10]
    %r62 = add i32 %r81,1
    br label %L2
L8:  ;
    %r30 = getelementptr i32, ptr %r0, i32 0
    %r31 = load i32, ptr %r30
    %r36 = sdiv i32 %r84,%r1
    store i32 %r36, ptr %r30
    br label %L10
L9:  ;
    %r39 = getelementptr i32, ptr %r0, i32 %r81
    %r40 = load i32, ptr %r39
    %r41 = add i32 %r84,%r40
    %r43 = sub i32 %r41,%r80
    %r46 = sub i32 %r81,%r1
    %r48 = add i32 %r46,1
    %r49 = getelementptr i32, ptr %r0, i32 %r48
    %r50 = load i32, ptr %r49
    %r59 = sdiv i32 %r43,%r1
    store i32 %r59, ptr %r49
    br label %L10
L10:  ;
    %r85 = phi i32 [%r84,%L8],[%r43,%L9]
    %r78 = phi i32 [%r31,%L8],[%r50,%L9]
    br label %L7
L11:  ;
    %r82 = phi i32 [%r67,%L4],[%r76,%L12]
    %r69 = load i32, ptr @n
    %r70 = icmp slt i32 %r82,%r69
    br i1 %r70, label %L12, label %L13
L12:  ;
    %r72 = getelementptr i32, ptr %r0, i32 %r82
    store i32 0, ptr %r72
    %r76 = add i32 %r82,1
    br label %L11
L13:  ;
    ret i32 0
}
define i32 @main()
{
L0:  ;
    %r2 = alloca [32 x i32]
    %r1 = alloca [32 x i32]
    br label %L1
L1:  ;
    store i32 32, ptr @n
    %r4 = getelementptr [32 x i32], ptr %r1, i32 0, i32 0
    store i32 7, ptr %r4
    %r7 = getelementptr [32 x i32], ptr %r1, i32 0, i32 1
    store i32 23, ptr %r7
    %r10 = getelementptr [32 x i32], ptr %r1, i32 0, i32 2
    store i32 89, ptr %r10
    %r13 = getelementptr [32 x i32], ptr %r1, i32 0, i32 3
    store i32 26, ptr %r13
    %r16 = getelementptr [32 x i32], ptr %r1, i32 0, i32 4
    store i32 282, ptr %r16
    %r19 = getelementptr [32 x i32], ptr %r1, i32 0, i32 5
    store i32 254, ptr %r19
    %r22 = getelementptr [32 x i32], ptr %r1, i32 0, i32 6
    store i32 27, ptr %r22
    %r25 = getelementptr [32 x i32], ptr %r1, i32 0, i32 7
    store i32 5, ptr %r25
    %r28 = getelementptr [32 x i32], ptr %r1, i32 0, i32 8
    store i32 83, ptr %r28
    %r31 = getelementptr [32 x i32], ptr %r1, i32 0, i32 9
    store i32 273, ptr %r31
    %r34 = getelementptr [32 x i32], ptr %r1, i32 0, i32 10
    store i32 574, ptr %r34
    %r37 = getelementptr [32 x i32], ptr %r1, i32 0, i32 11
    store i32 905, ptr %r37
    %r40 = getelementptr [32 x i32], ptr %r1, i32 0, i32 12
    store i32 354, ptr %r40
    %r43 = getelementptr [32 x i32], ptr %r1, i32 0, i32 13
    store i32 657, ptr %r43
    %r46 = getelementptr [32 x i32], ptr %r1, i32 0, i32 14
    store i32 935, ptr %r46
    %r49 = getelementptr [32 x i32], ptr %r1, i32 0, i32 15
    store i32 264, ptr %r49
    %r52 = getelementptr [32 x i32], ptr %r1, i32 0, i32 16
    store i32 639, ptr %r52
    %r55 = getelementptr [32 x i32], ptr %r1, i32 0, i32 17
    store i32 459, ptr %r55
    %r58 = getelementptr [32 x i32], ptr %r1, i32 0, i32 18
    store i32 29, ptr %r58
    %r61 = getelementptr [32 x i32], ptr %r1, i32 0, i32 19
    store i32 68, ptr %r61
    %r64 = getelementptr [32 x i32], ptr %r1, i32 0, i32 20
    store i32 929, ptr %r64
    %r67 = getelementptr [32 x i32], ptr %r1, i32 0, i32 21
    store i32 756, ptr %r67
    %r70 = getelementptr [32 x i32], ptr %r1, i32 0, i32 22
    store i32 452, ptr %r70
    %r73 = getelementptr [32 x i32], ptr %r1, i32 0, i32 23
    store i32 279, ptr %r73
    %r76 = getelementptr [32 x i32], ptr %r1, i32 0, i32 24
    store i32 58, ptr %r76
    %r79 = getelementptr [32 x i32], ptr %r1, i32 0, i32 25
    store i32 87, ptr %r79
    %r82 = getelementptr [32 x i32], ptr %r1, i32 0, i32 26
    store i32 96, ptr %r82
    %r85 = getelementptr [32 x i32], ptr %r1, i32 0, i32 27
    store i32 36, ptr %r85
    %r88 = getelementptr [32 x i32], ptr %r1, i32 0, i32 28
    store i32 39, ptr %r88
    %r91 = getelementptr [32 x i32], ptr %r1, i32 0, i32 29
    store i32 28, ptr %r91
    %r94 = getelementptr [32 x i32], ptr %r1, i32 0, i32 30
    store i32 1, ptr %r94
    %r97 = getelementptr [32 x i32], ptr %r1, i32 0, i32 31
    store i32 290, ptr %r97
    %r101 = getelementptr [32 x i32], ptr %r1, i32 0
    %r102 = getelementptr [32 x i32], ptr %r2, i32 0
    %r103 = call i32 @arrCopy(ptr %r101,ptr %r102)
    %r105 = call i32 @revert(ptr %r102)
    br label %L2
L2:  ;
    %r224 = phi i32 [0,%L1],[%r118,%L3]
    %r111 = icmp slt i32 %r224,32
    br i1 %r111, label %L3, label %L4
L3:  ;
    %r113 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r224
    %r114 = load i32, ptr %r113
    call void @putint(i32 %r114)
    %r118 = add i32 %r224,1
    br label %L2
L4:  ;
    %r120 = call i32 @bubblesort(ptr %r102)
    br label %L5
L5:  ;
    %r225 = phi i32 [0,%L4],[%r131,%L6]
    %r124 = icmp slt i32 %r225,32
    br i1 %r124, label %L6, label %L7
L6:  ;
    %r126 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r225
    %r127 = load i32, ptr %r126
    call void @putint(i32 %r127)
    %r131 = add i32 %r225,1
    br label %L5
L7:  ;
    %r133 = call i32 @getMid(ptr %r102)
    call void @putint(i32 %r133)
    %r136 = call i32 @getMost(ptr %r102)
    call void @putint(i32 %r136)
    %r140 = call i32 @arrCopy(ptr %r101,ptr %r102)
    %r142 = call i32 @bubblesort(ptr %r102)
    br label %L8
L8:  ;
    %r226 = phi i32 [0,%L7],[%r153,%L9]
    %r146 = icmp slt i32 %r226,32
    br i1 %r146, label %L9, label %L10
L9:  ;
    %r148 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r226
    %r149 = load i32, ptr %r148
    call void @putint(i32 %r149)
    %r153 = add i32 %r226,1
    br label %L8
L10:  ;
    %r156 = call i32 @arrCopy(ptr %r101,ptr %r102)
    %r158 = call i32 @insertsort(ptr %r102)
    br label %L11
L11:  ;
    %r227 = phi i32 [0,%L10],[%r169,%L12]
    %r162 = icmp slt i32 %r227,32
    br i1 %r162, label %L12, label %L13
L12:  ;
    %r164 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r227
    %r165 = load i32, ptr %r164
    call void @putint(i32 %r165)
    %r169 = add i32 %r227,1
    br label %L11
L13:  ;
    %r172 = call i32 @arrCopy(ptr %r101,ptr %r102)
    %r178 = call i32 @QuickSort(ptr %r102,i32 0,i32 31)
    br label %L14
L14:  ;
    %r228 = phi i32 [0,%L13],[%r188,%L15]
    %r181 = icmp slt i32 %r228,32
    br i1 %r181, label %L15, label %L16
L15:  ;
    %r183 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r228
    %r184 = load i32, ptr %r183
    call void @putint(i32 %r184)
    %r188 = add i32 %r228,1
    br label %L14
L16:  ;
    %r191 = call i32 @arrCopy(ptr %r101,ptr %r102)
    %r194 = call i32 @calSum(ptr %r102,i32 4)
    br label %L17
L17:  ;
    %r229 = phi i32 [0,%L16],[%r205,%L18]
    %r198 = icmp slt i32 %r229,32
    br i1 %r198, label %L18, label %L19
L18:  ;
    %r200 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r229
    %r201 = load i32, ptr %r200
    call void @putint(i32 %r201)
    %r205 = add i32 %r229,1
    br label %L17
L19:  ;
    %r208 = call i32 @arrCopy(ptr %r101,ptr %r102)
    %r211 = call i32 @avgPooling(ptr %r102,i32 3)
    br label %L20
L20:  ;
    %r230 = phi i32 [0,%L19],[%r222,%L21]
    %r215 = icmp slt i32 %r230,32
    br i1 %r215, label %L21, label %L22
L21:  ;
    %r217 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r230
    %r218 = load i32, ptr %r217
    call void @putint(i32 %r218)
    %r222 = add i32 %r230,1
    br label %L20
L22:  ;
    ret i32 0
}
