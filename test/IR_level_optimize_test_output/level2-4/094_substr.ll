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
define i32 @max_sum_nonadjacent(ptr %r0,i32 %r1)
{
L0:
    %r3 = alloca [16 x i32]
    br label %L1
L1:
    call void @llvm.memset.p0.i32(ptr %r3,i8 0,i32 64,i1 0)
    %r5 = getelementptr i32, ptr %r0, i32 0
    %r6 = load i32, ptr %r5
    %r8 = getelementptr [16 x i32], ptr %r3, i32 0, i32 0
    store i32 %r6, ptr %r8
    %r11 = load i32, ptr %r5
    %r13 = getelementptr i32, ptr %r0, i32 1
    %r14 = load i32, ptr %r13
    br label %L6
L3:
    %r55 = phi i32 [%r44,%L4],[2,%L20]
    %r27 = sub i32 %r55,2
    %r28 = getelementptr [16 x i32], ptr %r3, i32 0, i32 %r27
    %r29 = load i32, ptr %r28
    %r31 = getelementptr i32, ptr %r0, i32 %r55
    %r32 = load i32, ptr %r31
    %r33 = add i32 %r29,%r32
    %r36 = sub i32 %r55,1
    %r37 = getelementptr [16 x i32], ptr %r3, i32 0, i32 %r36
    %r38 = load i32, ptr %r37
    br label %L13
L4:
    %r47 = icmp slt i32 %r44,%r1
    br i1 %r47, label %L3, label %L5
L5:
    %r52 = sub i32 %r1,1
    %r53 = getelementptr [16 x i32], ptr %r3, i32 0, i32 %r52
    %r54 = load i32, ptr %r53
    ret i32 %r54
L6:
    br label %L8
L7:
    %r15 = phi i32 [%r11,%L11],[%r11,%L9],[%r14,%L12]
    %r17 = getelementptr [16 x i32], ptr %r3, i32 0, i32 1
    store i32 %r15, ptr %r17
    %r22 = icmp slt i32 2,%r1
    br i1 %r22, label %L20, label %L5
L8:
    %r57 = icmp eq i32 %r11,%r14
    br i1 %r57, label %L9, label %L10
L9:
    br label %L7
L10:
    %r58 = icmp sgt i32 %r11,%r14
    br i1 %r58, label %L11, label %L12
L11:
    br label %L7
L12:
    br label %L7
L13:
    br label %L15
L14:
    %r39 = phi i32 [%r33,%L16],[%r33,%L18],[%r38,%L19]
    %r41 = getelementptr [16 x i32], ptr %r3, i32 0, i32 %r55
    store i32 %r39, ptr %r41
    %r44 = add i32 %r55,1
    br label %L4
L15:
    %r59 = icmp eq i32 %r33,%r38
    br i1 %r59, label %L16, label %L17
L16:
    br label %L14
L17:
    %r60 = icmp sgt i32 %r33,%r38
    br i1 %r60, label %L18, label %L19
L18:
    br label %L14
L19:
    br label %L14
L20:
    br label %L3
}
define i32 @longest_common_subseq(ptr %r0,i32 %r1,ptr %r2,i32 %r3)
{
L0:
    %r6 = alloca [16 x [16 x i32]]
    br label %L1
L1:
    call void @llvm.memset.p0.i32(ptr %r6,i8 0,i32 1024,i1 0)
    %r14 = icmp sle i32 1,%r1
    br i1 %r14, label %L21, label %L5
L3:
    %r89 = phi i32 [%r75,%L4],[1,%L21]
    %r20 = icmp sle i32 1,%r3
    br i1 %r20, label %L20, label %L9
L4:
    %r78 = icmp sle i32 %r75,%r1
    br i1 %r78, label %L3, label %L5
L5:
    %r83 = getelementptr [16 x [16 x i32]], ptr %r6, i32 0, i32 %r1, i32 %r3
    %r84 = load i32, ptr %r83
    ret i32 %r84
L7:
    %r87 = phi i32 [%r67,%L8],[1,%L20]
    %r27 = load i32, ptr %r26
    %r30 = sub i32 %r87,1
    %r31 = getelementptr i32, ptr %r2, i32 %r30
    %r32 = load i32, ptr %r31
    %r33 = icmp eq i32 %r27,%r32
    br i1 %r33, label %L10, label %L11
L8:
    %r70 = icmp sle i32 %r67,%r3
    br i1 %r70, label %L7, label %L9
L9:
    %r75 = add i32 %r89,1
    br label %L4
L10:
    %r38 = sub i32 %r89,1
    %r41 = sub i32 %r87,1
    %r42 = getelementptr [16 x [16 x i32]], ptr %r6, i32 0, i32 %r38, i32 %r41
    %r43 = load i32, ptr %r42
    %r45 = add i32 %r43,1
    %r48 = getelementptr [16 x [16 x i32]], ptr %r6, i32 0, i32 %r89, i32 %r87
    store i32 %r45, ptr %r48
    br label %L12
L11:
    %r51 = sub i32 %r89,1
    %r53 = getelementptr [16 x [16 x i32]], ptr %r6, i32 0, i32 %r51, i32 %r87
    %r54 = load i32, ptr %r53
    %r58 = sub i32 %r87,1
    %r59 = getelementptr [16 x [16 x i32]], ptr %r6, i32 0, i32 %r89, i32 %r58
    %r60 = load i32, ptr %r59
    br label %L13
L12:
    %r67 = add i32 %r87,1
    br label %L8
L13:
    br label %L15
L14:
    %r61 = phi i32 [%r54,%L16],[%r54,%L18],[%r60,%L19]
    %r64 = getelementptr [16 x [16 x i32]], ptr %r6, i32 0, i32 %r89, i32 %r87
    store i32 %r61, ptr %r64
    br label %L12
L15:
    %r91 = icmp eq i32 %r54,%r60
    br i1 %r91, label %L16, label %L17
L16:
    br label %L14
L17:
    %r92 = icmp sgt i32 %r54,%r60
    br i1 %r92, label %L18, label %L19
L18:
    br label %L14
L19:
    br label %L14
L20:
    %r25 = sub i32 %r89,1
    %r26 = getelementptr i32, ptr %r0, i32 %r25
    br label %L7
L21:
    br label %L3
}
define i32 @main()
{
L0:
    %r31 = alloca [13 x i32]
    %r0 = alloca [15 x i32]
    br label %L1
L1:
    call void @llvm.memset.p0.i32(ptr %r0,i8 0,i32 60,i1 0)
    %r2 = getelementptr [15 x i32], ptr %r0, i32 0, i32 0
    store i32 8, ptr %r2
    %r4 = getelementptr [15 x i32], ptr %r0, i32 0, i32 1
    store i32 7, ptr %r4
    %r6 = getelementptr [15 x i32], ptr %r0, i32 0, i32 2
    store i32 4, ptr %r6
    %r8 = getelementptr [15 x i32], ptr %r0, i32 0, i32 3
    store i32 1, ptr %r8
    %r10 = getelementptr [15 x i32], ptr %r0, i32 0, i32 4
    store i32 2, ptr %r10
    %r12 = getelementptr [15 x i32], ptr %r0, i32 0, i32 5
    store i32 7, ptr %r12
    %r14 = getelementptr [15 x i32], ptr %r0, i32 0, i32 6
    store i32 0, ptr %r14
    %r16 = getelementptr [15 x i32], ptr %r0, i32 0, i32 7
    store i32 1, ptr %r16
    %r18 = getelementptr [15 x i32], ptr %r0, i32 0, i32 8
    store i32 9, ptr %r18
    %r20 = getelementptr [15 x i32], ptr %r0, i32 0, i32 9
    store i32 3, ptr %r20
    %r22 = getelementptr [15 x i32], ptr %r0, i32 0, i32 10
    store i32 4, ptr %r22
    %r24 = getelementptr [15 x i32], ptr %r0, i32 0, i32 11
    store i32 8, ptr %r24
    %r26 = getelementptr [15 x i32], ptr %r0, i32 0, i32 12
    store i32 3, ptr %r26
    %r28 = getelementptr [15 x i32], ptr %r0, i32 0, i32 13
    store i32 7, ptr %r28
    %r30 = getelementptr [15 x i32], ptr %r0, i32 0, i32 14
    store i32 0, ptr %r30
    call void @llvm.memset.p0.i32(ptr %r31,i8 0,i32 52,i1 0)
    %r33 = getelementptr [13 x i32], ptr %r31, i32 0, i32 0
    store i32 3, ptr %r33
    %r35 = getelementptr [13 x i32], ptr %r31, i32 0, i32 1
    store i32 9, ptr %r35
    %r37 = getelementptr [13 x i32], ptr %r31, i32 0, i32 2
    store i32 7, ptr %r37
    %r39 = getelementptr [13 x i32], ptr %r31, i32 0, i32 3
    store i32 1, ptr %r39
    %r41 = getelementptr [13 x i32], ptr %r31, i32 0, i32 4
    store i32 4, ptr %r41
    %r43 = getelementptr [13 x i32], ptr %r31, i32 0, i32 5
    store i32 2, ptr %r43
    %r45 = getelementptr [13 x i32], ptr %r31, i32 0, i32 6
    store i32 4, ptr %r45
    %r47 = getelementptr [13 x i32], ptr %r31, i32 0, i32 7
    store i32 3, ptr %r47
    %r49 = getelementptr [13 x i32], ptr %r31, i32 0, i32 8
    store i32 6, ptr %r49
    %r51 = getelementptr [13 x i32], ptr %r31, i32 0, i32 9
    store i32 8, ptr %r51
    %r53 = getelementptr [13 x i32], ptr %r31, i32 0, i32 10
    store i32 0, ptr %r53
    %r55 = getelementptr [13 x i32], ptr %r31, i32 0, i32 11
    store i32 1, ptr %r55
    %r57 = getelementptr [13 x i32], ptr %r31, i32 0, i32 12
    store i32 5, ptr %r57
    %r62 = getelementptr i32, ptr %r0, i32 0
    %r64 = call i32 @max_sum_nonadjacent(ptr %r62,i32 15)
    call void @putint(i32 %r64)
    call void @putch(i32 10)
    %r68 = getelementptr i32, ptr %r31, i32 0
    %r70 = call i32 @longest_common_subseq(ptr %r62,i32 15,ptr %r68,i32 13)
    call void @putint(i32 %r70)
    call void @putch(i32 10)
    ret i32 0
}
define i32 @MAX(i32 %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r6 = icmp eq i32 %r0,%r1
    br i1 %r6, label %L2, label %L3
L2:
    ret i32 %r0
L3:
    %r12 = icmp sgt i32 %r0,%r1
    br i1 %r12, label %L5, label %L6
L5:
    ret i32 %r0
L6:
    ret i32 %r1
}
