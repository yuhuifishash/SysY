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
define i32 @MAX(i32 %r0,i32 %r1)
{
L0:  ;
    br label %L1
L1:  ;
    %r6 = icmp eq i32 %r0,%r1
    br i1 %r6, label %L2, label %L3
L2:  ;
    ret i32 %r0
L3:  ;
    %r10 = icmp sgt i32 %r0,%r1
    br i1 %r10, label %L5, label %L6
L5:  ;
    ret i32 %r0
L6:  ;
    ret i32 %r1
}
define i32 @longest_common_subseq(ptr %r0,i32 %r1,ptr %r2,i32 %r3)
{
L0:  ;
    %r6 = alloca [16 x [16 x i32]]
    br label %L1
L1:  ;
    call void @llvm.memset.p0.i32(ptr %r6,i8 0,i32 1024,i1 0)
    br label %L2
L2:  ;
    %r71 = phi i32 [1,%L1],[%r64,%L7]
    %r14 = icmp sle i32 %r71,%r1
    br i1 %r14, label %L3, label %L4
L3:  ;
    br label %L5
L4:  ;
    %r67 = getelementptr [16 x [16 x i32]], ptr %r6, i32 0, i32 %r1, i32 %r3
    %r68 = load i32, ptr %r67
    ret i32 %r68
L5:  ;
    %r70 = phi i32 [1,%L3],[%r61,%L10]
    %r18 = icmp sle i32 %r70,%r3
    br i1 %r18, label %L6, label %L7
L6:  ;
    %r21 = sub i32 %r71,1
    %r22 = getelementptr i32, ptr %r0, i32 %r21
    %r23 = load i32, ptr %r22
    %r26 = sub i32 %r70,1
    %r27 = getelementptr i32, ptr %r2, i32 %r26
    %r28 = load i32, ptr %r27
    %r29 = icmp eq i32 %r23,%r28
    br i1 %r29, label %L8, label %L9
L7:  ;
    %r64 = add i32 %r71,1
    br label %L2
L8:  ;
    %r32 = getelementptr [16 x [16 x i32]], ptr %r6, i32 0, i32 %r71, i32 %r70
    %r39 = getelementptr [16 x [16 x i32]], ptr %r6, i32 0, i32 %r21, i32 %r26
    %r40 = load i32, ptr %r39
    %r42 = add i32 %r40,1
    store i32 %r42, ptr %r32
    br label %L10
L9:  ;
    %r45 = getelementptr [16 x [16 x i32]], ptr %r6, i32 0, i32 %r71, i32 %r70
    %r50 = getelementptr [16 x [16 x i32]], ptr %r6, i32 0, i32 %r21, i32 %r70
    %r51 = load i32, ptr %r50
    %r56 = getelementptr [16 x [16 x i32]], ptr %r6, i32 0, i32 %r71, i32 %r26
    %r57 = load i32, ptr %r56
    %r58 = call i32 @MAX(i32 %r51,i32 %r57)
    store i32 %r58, ptr %r45
    br label %L10
L10:  ;
    %r61 = add i32 %r70,1
    br label %L5
}
define i32 @max_sum_nonadjacent(ptr %r0,i32 %r1)
{
L0:  ;
    %r3 = alloca [16 x i32]
    br label %L1
L1:  ;
    call void @llvm.memset.p0.i32(ptr %r3,i8 0,i32 64,i1 0)
    %r5 = getelementptr [16 x i32], ptr %r3, i32 0, i32 0
    %r7 = getelementptr i32, ptr %r0, i32 0
    %r8 = load i32, ptr %r7
    store i32 %r8, ptr %r5
    %r10 = getelementptr [16 x i32], ptr %r3, i32 0, i32 1
    %r15 = getelementptr i32, ptr %r0, i32 1
    %r16 = load i32, ptr %r15
    %r17 = call i32 @MAX(i32 %r8,i32 %r16)
    store i32 %r17, ptr %r10
    br label %L2
L2:  ;
    %r48 = phi i32 [2,%L1],[%r42,%L3]
    %r22 = icmp slt i32 %r48,%r1
    br i1 %r22, label %L3, label %L4
L3:  ;
    %r24 = getelementptr [16 x i32], ptr %r3, i32 0, i32 %r48
    %r27 = sub i32 %r48,2
    %r28 = getelementptr [16 x i32], ptr %r3, i32 0, i32 %r27
    %r29 = load i32, ptr %r28
    %r31 = getelementptr i32, ptr %r0, i32 %r48
    %r32 = load i32, ptr %r31
    %r33 = add i32 %r29,%r32
    %r36 = sub i32 %r48,1
    %r37 = getelementptr [16 x i32], ptr %r3, i32 0, i32 %r36
    %r38 = load i32, ptr %r37
    %r39 = call i32 @MAX(i32 %r33,i32 %r38)
    store i32 %r39, ptr %r24
    %r42 = add i32 %r48,1
    br label %L2
L4:  ;
    %r45 = sub i32 %r1,1
    %r46 = getelementptr [16 x i32], ptr %r3, i32 0, i32 %r45
    %r47 = load i32, ptr %r46
    ret i32 %r47
}
define i32 @main()
{
L0:  ;
    %r31 = alloca [13 x i32]
    %r0 = alloca [15 x i32]
    br label %L1
L1:  ;
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
    %r62 = getelementptr [15 x i32], ptr %r0, i32 0
    %r64 = call i32 @max_sum_nonadjacent(ptr %r62,i32 15)
    call void @putint(i32 %r64)
    call void @putch(i32 10)
    %r68 = getelementptr [13 x i32], ptr %r31, i32 0
    %r70 = call i32 @longest_common_subseq(ptr %r62,i32 15,ptr %r68,i32 13)
    call void @putint(i32 %r70)
    call void @putch(i32 10)
    ret i32 0
}
