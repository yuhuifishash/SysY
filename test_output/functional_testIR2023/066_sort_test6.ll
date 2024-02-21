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
define i32 @counting_sort(ptr %r0,ptr %r1,i32 %r2)
{
L0:  ;
    %r9 = alloca i32
    %r7 = alloca i32
    %r5 = alloca i32
    %r4 = alloca [10 x i32]
    %r3 = alloca i32
    store i32 %r2, ptr %r3
    br label %L1
L1:  ;
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    %r8 = add i32 0,0
    store i32 %r8, ptr %r7
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r11 = add i32 0,0
    store i32 %r11, ptr %r9
    %r12 = add i32 0,0
    store i32 %r12, ptr %r5
    %r13 = add i32 0,0
    store i32 %r13, ptr %r7
    br label %L2
L2:  ;
    %r14 = load i32, ptr %r9
    %r15 = add i32 10,0
    %r16 = icmp slt i32 %r14,%r15
    br i1 %r16, label %L3, label %L4
L3:  ;
    %r17 = load i32, ptr %r9
    %r18 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r17
    %r19 = add i32 0,0
    store i32 %r19, ptr %r18
    %r20 = load i32, ptr %r9
    %r21 = add i32 1,0
    %r22 = add i32 %r20,%r21
    store i32 %r22, ptr %r9
    br label %L2
L4:  ;
    br label %L5
L5:  ;
    %r23 = load i32, ptr %r5
    %r24 = load i32, ptr %r3
    %r25 = icmp slt i32 %r23,%r24
    br i1 %r25, label %L6, label %L7
L6:  ;
    %r26 = load i32, ptr %r5
    %r27 = getelementptr i32, ptr %r0, i32 %r26
    %r28 = load i32, ptr %r27
    %r29 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r28
<<<<<<< HEAD
    %r30 = load i32, ptr %r5
    %r31 = getelementptr i32, ptr %r0, i32 %r30
    %r32 = load i32, ptr %r31
    %r33 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r32
    %r34 = load i32, ptr %r33
    %r35 = add i32 1,0
    %r36 = add i32 %r34,%r35
=======
    %r34 = load i32, ptr %r29
    %r36 = add i32 %r34,1
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    store i32 %r36, ptr %r29
    %r37 = load i32, ptr %r5
    %r38 = add i32 1,0
    %r39 = add i32 %r37,%r38
    store i32 %r39, ptr %r5
    br label %L5
L7:  ;
    %r40 = add i32 1,0
    store i32 %r40, ptr %r9
    br label %L8
L8:  ;
    %r41 = load i32, ptr %r9
    %r42 = add i32 10,0
    %r43 = icmp slt i32 %r41,%r42
    br i1 %r43, label %L9, label %L10
L9:  ;
<<<<<<< HEAD
    %r44 = load i32, ptr %r9
    %r45 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r44
    %r46 = load i32, ptr %r9
    %r47 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r46
    %r48 = load i32, ptr %r47
    %r49 = load i32, ptr %r9
    %r50 = add i32 1,0
    %r51 = sub i32 %r49,%r50
=======
    %r45 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r95
    %r48 = load i32, ptr %r45
    %r51 = sub i32 %r95,1
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    %r52 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r51
    %r53 = load i32, ptr %r52
    %r54 = add i32 %r48,%r53
    store i32 %r54, ptr %r45
    %r55 = load i32, ptr %r9
    %r56 = add i32 1,0
    %r57 = add i32 %r55,%r56
    store i32 %r57, ptr %r9
    br label %L8
L10:  ;
    %r58 = load i32, ptr %r3
    store i32 %r58, ptr %r7
    br label %L11
L11:  ;
<<<<<<< HEAD
    %r59 = load i32, ptr %r7
    %r60 = add i32 0,0
    %r61 = icmp sgt i32 %r59,%r60
=======
    %r96 = phi i32 [%r2,%L10],[%r64,%L12]
    %r61 = icmp sgt i32 %r96,0
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    br i1 %r61, label %L12, label %L13
L12:  ;
    %r62 = load i32, ptr %r7
    %r63 = add i32 1,0
    %r64 = sub i32 %r62,%r63
    %r65 = getelementptr i32, ptr %r0, i32 %r64
    %r66 = load i32, ptr %r65
    %r67 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r66
<<<<<<< HEAD
    %r68 = load i32, ptr %r7
    %r69 = add i32 1,0
    %r70 = sub i32 %r68,%r69
    %r71 = getelementptr i32, ptr %r0, i32 %r70
    %r72 = load i32, ptr %r71
    %r73 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r72
    %r74 = load i32, ptr %r73
    %r75 = add i32 1,0
    %r76 = sub i32 %r74,%r75
    store i32 %r76, ptr %r67
    %r77 = load i32, ptr %r7
    %r78 = add i32 1,0
    %r79 = sub i32 %r77,%r78
    %r80 = getelementptr i32, ptr %r0, i32 %r79
    %r81 = load i32, ptr %r80
    %r82 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r81
    %r83 = load i32, ptr %r82
    %r84 = getelementptr i32, ptr %r1, i32 %r83
    %r85 = load i32, ptr %r7
    %r86 = add i32 1,0
    %r87 = sub i32 %r85,%r86
    %r88 = getelementptr i32, ptr %r0, i32 %r87
    %r89 = load i32, ptr %r88
    store i32 %r89, ptr %r84
    %r90 = load i32, ptr %r7
    %r91 = add i32 1,0
    %r92 = sub i32 %r90,%r91
    store i32 %r92, ptr %r7
=======
    %r74 = load i32, ptr %r67
    %r76 = sub i32 %r74,1
    store i32 %r76, ptr %r67
    %r83 = load i32, ptr %r67
    %r84 = getelementptr i32, ptr %r1, i32 %r83
    store i32 %r66, ptr %r84
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    br label %L11
L13:  ;
    %r93 = add i32 0,0
    ret i32 %r93
}
define i32 @main()
{
L0:  ;
    %r43 = alloca i32
    %r35 = alloca [10 x i32]
    %r32 = alloca i32
    %r1 = alloca [10 x i32]
    br label %L1
L1:  ;
    %r0 = add i32 10,0
    store i32 %r0, ptr @n
    %r2 = add i32 0,0
    %r3 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r2
    %r4 = add i32 4,0
    store i32 %r4, ptr %r3
    %r5 = add i32 1,0
    %r6 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r5
    %r7 = add i32 3,0
    store i32 %r7, ptr %r6
    %r8 = add i32 2,0
    %r9 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r8
    %r10 = add i32 9,0
    store i32 %r10, ptr %r9
    %r11 = add i32 3,0
    %r12 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r11
    %r13 = add i32 2,0
    store i32 %r13, ptr %r12
    %r14 = add i32 4,0
    %r15 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r14
    %r16 = add i32 0,0
    store i32 %r16, ptr %r15
    %r17 = add i32 5,0
    %r18 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r17
    %r19 = add i32 1,0
    store i32 %r19, ptr %r18
    %r20 = add i32 6,0
    %r21 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r20
    %r22 = add i32 6,0
    store i32 %r22, ptr %r21
    %r23 = add i32 7,0
    %r24 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r23
    %r25 = add i32 5,0
    store i32 %r25, ptr %r24
    %r26 = add i32 8,0
    %r27 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r26
    %r28 = add i32 7,0
    store i32 %r28, ptr %r27
    %r29 = add i32 9,0
    %r30 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r29
    %r31 = add i32 8,0
    store i32 %r31, ptr %r30
    %r33 = add i32 0,0
    store i32 %r33, ptr %r32
    %r34 = add i32 0,0
    store i32 %r34, ptr %r32
    %r36 = getelementptr [10 x i32], ptr %r1, i32 0
    %r37 = getelementptr [10 x i32], ptr %r35, i32 0
    %r38 = load i32, ptr @n
    %r39 = call i32 @counting_sort(ptr %r36,ptr %r37,i32 %r38)
    store i32 %r39, ptr %r32
    br label %L2
L2:  ;
    %r40 = load i32, ptr %r32
    %r41 = load i32, ptr @n
    %r42 = icmp slt i32 %r40,%r41
    br i1 %r42, label %L3, label %L4
L3:  ;
    %r44 = add i32 0,0
    store i32 %r44, ptr %r43
    %r45 = load i32, ptr %r32
    %r46 = getelementptr [10 x i32], ptr %r35, i32 0, i32 %r45
    %r47 = load i32, ptr %r46
    store i32 %r47, ptr %r43
    %r48 = load i32, ptr %r43
    call void @putint(i32 %r48)
    %r49 = add i32 10,0
    store i32 %r49, ptr %r43
    %r50 = load i32, ptr %r43
    call void @putch(i32 %r50)
    %r51 = load i32, ptr %r32
    %r52 = add i32 1,0
    %r53 = add i32 %r51,%r52
    store i32 %r53, ptr %r32
    br label %L2
L4:  ;
    %r54 = add i32 0,0
    ret i32 %r54
}
