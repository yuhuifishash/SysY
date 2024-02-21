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
@b = global i32 5
@c = global [4 x i32] [i32 6,i32 7,i32 8,i32 9]
define i32 @main()
{
L0:  ;
    %r41 = alloca [7 x [1 x [5 x i32]]]
    %r35 = alloca i32
    %r26 = alloca [2 x [8 x i32]]
    %r14 = alloca i32
    %r3 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:  ;
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r2 = add i32 1,0
    store i32 %r2, ptr %r0
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r5 = add i32 2,0
    store i32 %r5, ptr %r3
    %r6 = add i32 3,0
    store i32 %r6, ptr %r3
    %r7 = load i32, ptr %r3
    call void @putint(i32 %r7)
    %r8 = load i32, ptr %r3
    call void @putint(i32 %r8)
    %r9 = load i32, ptr %r0
    call void @putint(i32 %r9)
    %r10 = add i32 10,0
    call void @putch(i32 %r10)
    br label %L2
L2:  ;
    %r11 = load i32, ptr %r0
    %r12 = add i32 5,0
    %r13 = icmp slt i32 %r11,%r12
    br i1 %r13, label %L3, label %L4
L3:  ;
    %r15 = add i32 0,0
    store i32 %r15, ptr %r14
    %r16 = load i32, ptr %r14
    %r17 = add i32 1,0
    %r18 = add i32 %r16,%r17
    store i32 %r18, ptr %r14
    %r19 = load i32, ptr %r14
    %r20 = icmp ne i32 %r19,0
    br i1 %r20, label %L5, label %L6
L4:  ;
    %r21 = load i32, ptr %r0
    call void @putint(i32 %r21)
    %r22 = add i32 10,0
    call void @putch(i32 %r22)
    %r23 = add i32 2,0
    %r24 = getelementptr [4 x i32], ptr @c, i32 0, i32 %r23
    %r25 = add i32 1,0
    store i32 %r25, ptr %r24
    call void @llvm.memset.p0.i32(ptr %r26,i8 0,i32 64,i1 0)
    %r27 = add i32 0,0
    %r28 = getelementptr [2 x [8 x i32]], ptr %r26, i32 0, i32 0, i32 0
    store i32 %r27, ptr %r28
    %r29 = add i32 9,0
    %r30 = getelementptr [2 x [8 x i32]], ptr %r26, i32 0, i32 0, i32 1
    store i32 %r29, ptr %r30
    %r31 = add i32 8,0
    %r32 = getelementptr [2 x [8 x i32]], ptr %r26, i32 0, i32 1, i32 0
    store i32 %r31, ptr %r32
    %r33 = add i32 3,0
    %r34 = getelementptr [2 x [8 x i32]], ptr %r26, i32 0, i32 1, i32 1
<<<<<<< HEAD
    store i32 %r33, ptr %r34
    %r36 = add i32 2,0
    store i32 %r36, ptr %r35
    %r37 = add i32 2,0
    %r38 = getelementptr [4 x i32], ptr @c, i32 0, i32 %r37
    %r39 = load i32, ptr %r38
=======
    store i32 3, ptr %r34
    %r39 = load i32, ptr %r24
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    %r40 = icmp ne i32 %r39,0
    br i1 %r40, label %L8, label %L9
L5:  ;
    br label %L4
L6:  ;
    br label %L2
L8:  ;
    call void @llvm.memset.p0.i32(ptr %r41,i8 0,i32 140,i1 0)
    %r42 = add i32 2,0
    %r43 = getelementptr [7 x [1 x [5 x i32]]], ptr %r41, i32 0, i32 2, i32 0, i32 0
    store i32 %r42, ptr %r43
    %r44 = add i32 1,0
    %r45 = getelementptr [7 x [1 x [5 x i32]]], ptr %r41, i32 0, i32 2, i32 0, i32 1
    store i32 %r44, ptr %r45
    %r46 = add i32 8,0
    %r47 = getelementptr [7 x [1 x [5 x i32]]], ptr %r41, i32 0, i32 2, i32 0, i32 2
<<<<<<< HEAD
    store i32 %r46, ptr %r47
    %r48 = load i32, ptr %r35
    %r49 = add i32 0,0
    %r50 = add i32 0,0
    %r51 = getelementptr [7 x [1 x [5 x i32]]], ptr %r41, i32 0, i32 %r48, i32 %r49, i32 %r50
    %r52 = load i32, ptr %r51
    call void @putint(i32 %r52)
    %r53 = load i32, ptr %r35
    %r54 = add i32 0,0
    %r55 = add i32 1,0
    %r56 = getelementptr [7 x [1 x [5 x i32]]], ptr %r41, i32 0, i32 %r53, i32 %r54, i32 %r55
    %r57 = load i32, ptr %r56
    call void @putint(i32 %r57)
    %r58 = load i32, ptr %r35
    %r59 = add i32 0,0
    %r60 = add i32 2,0
    %r61 = getelementptr [7 x [1 x [5 x i32]]], ptr %r41, i32 0, i32 %r58, i32 %r59, i32 %r60
    %r62 = load i32, ptr %r61
=======
    store i32 8, ptr %r47
    %r52 = load i32, ptr %r43
    call void @putint(i32 %r52)
    %r57 = load i32, ptr %r45
    call void @putint(i32 %r57)
    %r62 = load i32, ptr %r47
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    call void @putint(i32 %r62)
    br label %L9
L9:  ;
    %r63 = add i32 10,0
    call void @putch(i32 %r63)
    %r64 = load i32, ptr @b
    call void @putint(i32 %r64)
    %r65 = add i32 10,0
    call void @putch(i32 %r65)
    %r66 = add i32 0,0
    %r67 = getelementptr [4 x i32], ptr @c, i32 0, i32 %r66
    %r68 = load i32, ptr %r67
    call void @putint(i32 %r68)
    %r69 = add i32 1,0
    %r70 = getelementptr [4 x i32], ptr @c, i32 0, i32 %r69
    %r71 = load i32, ptr %r70
    call void @putint(i32 %r71)
<<<<<<< HEAD
    %r72 = add i32 2,0
    %r73 = getelementptr [4 x i32], ptr @c, i32 0, i32 %r72
    %r74 = load i32, ptr %r73
=======
    %r74 = load i32, ptr %r24
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    call void @putint(i32 %r74)
    %r75 = add i32 3,0
    %r76 = getelementptr [4 x i32], ptr @c, i32 0, i32 %r75
    %r77 = load i32, ptr %r76
    call void @putint(i32 %r77)
    %r78 = add i32 10,0
    call void @putch(i32 %r78)
    %r79 = add i32 0,0
    ret i32 %r79
}
