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
@V = global [200x [200x i32]] zeroinitializer
define i32 @KnapSack(i32 %r0,ptr %r1,ptr %r2,ptr %r3,i32 %r4)
{
L0:  ;
    %r42 = alloca i32
    %r35 = alloca i32
    %r9 = alloca i32
    %r7 = alloca i32
    %r6 = alloca i32
    %r5 = alloca i32
    store i32 %r0, ptr %r5
    store i32 %r4, ptr %r6
    br label %L1
L1:  ;
    %r8 = add i32 0,0
    store i32 %r8, ptr %r7
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r11 = add i32 1,0
    store i32 %r11, ptr %r7
    br label %L2
L2:  ;
    %r12 = load i32, ptr %r7
    %r13 = load i32, ptr %r5
    %r14 = icmp sle i32 %r12,%r13
    br i1 %r14, label %L3, label %L4
L3:  ;
    %r15 = add i32 0,0
    store i32 %r15, ptr %r9
    br label %L5
L4:  ;
    %r74 = load i32, ptr %r6
    store i32 %r74, ptr %r9
    %r75 = load i32, ptr %r5
    store i32 %r75, ptr %r7
    br label %L14
L5:  ;
    %r16 = load i32, ptr %r9
    %r17 = load i32, ptr %r6
    %r18 = add i32 1,0
    %r19 = add i32 %r17,%r18
    %r20 = icmp slt i32 %r16,%r19
    br i1 %r20, label %L6, label %L7
L6:  ;
    %r21 = load i32, ptr %r9
    %r22 = load i32, ptr %r7
    %r23 = getelementptr i32, ptr %r1, i32 %r22
    %r24 = load i32, ptr %r23
    %r25 = icmp slt i32 %r21,%r24
    br i1 %r25, label %L8, label %L9
L7:  ;
    %r71 = load i32, ptr %r7
    %r72 = add i32 1,0
    %r73 = add i32 %r71,%r72
    store i32 %r73, ptr %r7
    br label %L2
L8:  ;
    %r26 = load i32, ptr %r7
    %r27 = load i32, ptr %r9
    %r28 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r26, i32 %r27
    %r29 = load i32, ptr %r7
    %r30 = add i32 1,0
    %r31 = sub i32 %r29,%r30
    %r32 = load i32, ptr %r9
    %r33 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r31, i32 %r32
    %r34 = load i32, ptr %r33
    store i32 %r34, ptr %r28
    br label %L10
L9:  ;
    %r36 = load i32, ptr %r7
    %r37 = add i32 1,0
    %r38 = sub i32 %r36,%r37
    %r39 = load i32, ptr %r9
    %r40 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r38, i32 %r39
    %r41 = load i32, ptr %r40
<<<<<<< HEAD
    store i32 %r41, ptr %r35
    %r43 = load i32, ptr %r7
    %r44 = add i32 1,0
    %r45 = sub i32 %r43,%r44
    %r46 = load i32, ptr %r9
    %r47 = load i32, ptr %r7
    %r48 = getelementptr i32, ptr %r1, i32 %r47
    %r49 = load i32, ptr %r48
    %r50 = sub i32 %r46,%r49
    %r51 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r45, i32 %r50
=======
    %r49 = load i32, ptr %r23
    %r50 = sub i32 %r109,%r49
    %r51 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r38, i32 %r50
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    %r52 = load i32, ptr %r51
    %r53 = load i32, ptr %r7
    %r54 = getelementptr i32, ptr %r2, i32 %r53
    %r55 = load i32, ptr %r54
    %r56 = add i32 %r52,%r55
    store i32 %r56, ptr %r42
    %r57 = load i32, ptr %r35
    %r58 = load i32, ptr %r42
    %r59 = icmp sgt i32 %r57,%r58
    br i1 %r59, label %L11, label %L12
L10:  ;
    %r68 = load i32, ptr %r9
    %r69 = add i32 1,0
    %r70 = add i32 %r68,%r69
    store i32 %r70, ptr %r9
    br label %L5
L11:  ;
    %r60 = load i32, ptr %r7
    %r61 = load i32, ptr %r9
    %r62 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r60, i32 %r61
    %r63 = load i32, ptr %r35
    store i32 %r63, ptr %r62
    br label %L13
L12:  ;
    %r64 = load i32, ptr %r7
    %r65 = load i32, ptr %r9
    %r66 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r64, i32 %r65
    %r67 = load i32, ptr %r42
    store i32 %r67, ptr %r66
    br label %L13
L13:  ;
    br label %L10
L14:  ;
<<<<<<< HEAD
    %r76 = load i32, ptr %r7
    %r77 = add i32 1,0
    %r78 = icmp sge i32 %r76,%r77
=======
    %r113 = phi i32 [%r0,%L4],[%r85,%L19]
    %r111 = phi i32 [%r4,%L4],[%r110,%L19]
    %r78 = icmp sge i32 %r113,1
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    br i1 %r78, label %L15, label %L16
L15:  ;
    %r79 = load i32, ptr %r7
    %r80 = load i32, ptr %r9
    %r81 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r79, i32 %r80
    %r82 = load i32, ptr %r81
    %r83 = load i32, ptr %r7
    %r84 = add i32 1,0
    %r85 = sub i32 %r83,%r84
    %r86 = load i32, ptr %r9
    %r87 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r85, i32 %r86
    %r88 = load i32, ptr %r87
    %r89 = icmp sgt i32 %r82,%r88
    br i1 %r89, label %L17, label %L18
L16:  ;
    %r104 = load i32, ptr %r5
    %r105 = load i32, ptr %r6
    %r106 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r104, i32 %r105
    %r107 = load i32, ptr %r106
    ret i32 %r107
L17:  ;
    %r90 = load i32, ptr %r7
    %r91 = getelementptr i32, ptr %r3, i32 %r90
    %r92 = add i32 1,0
    store i32 %r92, ptr %r91
    %r93 = load i32, ptr %r9
    %r94 = load i32, ptr %r7
    %r95 = getelementptr i32, ptr %r1, i32 %r94
    %r96 = load i32, ptr %r95
    %r97 = sub i32 %r93,%r96
    store i32 %r97, ptr %r9
    br label %L19
L18:  ;
    %r98 = load i32, ptr %r7
    %r99 = getelementptr i32, ptr %r3, i32 %r98
    %r100 = add i32 0,0
    store i32 %r100, ptr %r99
    br label %L19
L19:  ;
<<<<<<< HEAD
    %r101 = load i32, ptr %r7
    %r102 = add i32 1,0
    %r103 = sub i32 %r101,%r102
    store i32 %r103, ptr %r7
=======
    %r110 = phi i32 [%r97,%L17],[%r111,%L18]
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    br label %L14
}
define i32 @main()
{
L0:  ;
    %r31 = alloca i32
    %r29 = alloca i32
    %r28 = alloca [6 x i32]
    %r15 = alloca [6 x i32]
    %r2 = alloca [6 x i32]
    %r0 = alloca i32
    br label %L1
L1:  ;
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    call void @llvm.memset.p0.i32(ptr %r2,i8 0,i32 24,i1 0)
    %r3 = add i32 0,0
    %r4 = getelementptr [6 x i32], ptr %r2, i32 0, i32 0
    store i32 %r3, ptr %r4
    %r5 = add i32 2,0
    %r6 = getelementptr [6 x i32], ptr %r2, i32 0, i32 1
    store i32 %r5, ptr %r6
    %r7 = add i32 2,0
    %r8 = getelementptr [6 x i32], ptr %r2, i32 0, i32 2
    store i32 %r7, ptr %r8
    %r9 = add i32 6,0
    %r10 = getelementptr [6 x i32], ptr %r2, i32 0, i32 3
    store i32 %r9, ptr %r10
    %r11 = add i32 5,0
    %r12 = getelementptr [6 x i32], ptr %r2, i32 0, i32 4
    store i32 %r11, ptr %r12
    %r13 = add i32 4,0
    %r14 = getelementptr [6 x i32], ptr %r2, i32 0, i32 5
    store i32 %r13, ptr %r14
    call void @llvm.memset.p0.i32(ptr %r15,i8 0,i32 24,i1 0)
    %r16 = add i32 0,0
    %r17 = getelementptr [6 x i32], ptr %r15, i32 0, i32 0
    store i32 %r16, ptr %r17
    %r18 = add i32 6,0
    %r19 = getelementptr [6 x i32], ptr %r15, i32 0, i32 1
    store i32 %r18, ptr %r19
    %r20 = add i32 3,0
    %r21 = getelementptr [6 x i32], ptr %r15, i32 0, i32 2
    store i32 %r20, ptr %r21
    %r22 = add i32 5,0
    %r23 = getelementptr [6 x i32], ptr %r15, i32 0, i32 3
    store i32 %r22, ptr %r23
    %r24 = add i32 4,0
    %r25 = getelementptr [6 x i32], ptr %r15, i32 0, i32 4
    store i32 %r24, ptr %r25
    %r26 = add i32 6,0
    %r27 = getelementptr [6 x i32], ptr %r15, i32 0, i32 5
    store i32 %r26, ptr %r27
    %r30 = add i32 5,0
    store i32 %r30, ptr %r29
    %r32 = add i32 10,0
    store i32 %r32, ptr %r31
    %r33 = load i32, ptr %r29
    %r34 = getelementptr [6 x i32], ptr %r2, i32 0
    %r35 = getelementptr [6 x i32], ptr %r15, i32 0
    %r36 = getelementptr [6 x i32], ptr %r28, i32 0
    %r37 = load i32, ptr %r31
    %r38 = call i32 @KnapSack(i32 %r33,ptr %r34,ptr %r35,ptr %r36,i32 %r37)
    store i32 %r38, ptr %r0
    %r39 = load i32, ptr %r0
    call void @putint(i32 %r39)
    %r40 = add i32 0,0
    ret i32 %r40
}
