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
L0:
    %r39 = alloca [7 x [1 x [5 x i32]]]
    %r33 = alloca i32
    %r24 = alloca [2 x [8 x i32]]
    %r12 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r0
    %r1 = add i32 1,0
    store i32 %r1, ptr %r0
    store i32 0, ptr %r2
    %r3 = add i32 2,0
    store i32 %r3, ptr %r2
    %r4 = add i32 3,0
    store i32 %r4, ptr %r2
    %r5 = load i32, ptr %r2
    call void @putint(i32 %r5)
    %r6 = load i32, ptr %r2
    call void @putint(i32 %r6)
    %r7 = load i32, ptr %r0
    call void @putint(i32 %r7)
    %r8 = add i32 10,0
    call void @putch(i32 %r8)
    br label %L2
L2:
    %r9 = load i32, ptr %r0
    %r10 = add i32 5,0
    %r11 = icmp slt i32 %r9,%r10
    br i1 %r11, label %L3, label %L4
L3:
    %r13 = add i32 0,0
    store i32 %r13, ptr %r12
    %r14 = load i32, ptr %r12
    %r15 = add i32 1,0
    %r16 = add i32 %r14,%r15
    store i32 %r16, ptr %r12
    %r17 = load i32, ptr %r12
    %r18 = icmp ne i32 %r17,0
    br i1 %r18, label %L5, label %L6
L4:
    %r19 = load i32, ptr %r0
    call void @putint(i32 %r19)
    %r20 = add i32 10,0
    call void @putch(i32 %r20)
    %r21 = add i32 2,0
    %r22 = getelementptr [4 x i32], ptr @c, i32 0, i32 %r21
    %r23 = add i32 1,0
    store i32 %r23, ptr %r22
    call void @llvm.memset.p0.i32(ptr %r24,i8 0,i32 64,i1 0)
    %r25 = add i32 0,0
    %r26 = getelementptr [2 x [8 x i32]], ptr %r24, i32 0, i32 0, i32 0
    store i32 %r25, ptr %r26
    %r27 = add i32 9,0
    %r28 = getelementptr [2 x [8 x i32]], ptr %r24, i32 0, i32 0, i32 1
    store i32 %r27, ptr %r28
    %r29 = add i32 8,0
    %r30 = getelementptr [2 x [8 x i32]], ptr %r24, i32 0, i32 1, i32 0
    store i32 %r29, ptr %r30
    %r31 = add i32 3,0
    %r32 = getelementptr [2 x [8 x i32]], ptr %r24, i32 0, i32 1, i32 1
    store i32 %r31, ptr %r32
    %r34 = add i32 2,0
    store i32 %r34, ptr %r33
    %r35 = add i32 2,0
    %r36 = getelementptr [4 x i32], ptr @c, i32 0, i32 %r35
    %r37 = load i32, ptr %r36
    %r38 = icmp ne i32 %r37,0
    br i1 %r38, label %L8, label %L9
L5:
    br label %L4
L6:
    br label %L2
L7:
    br label %L6
L8:
    call void @llvm.memset.p0.i32(ptr %r39,i8 0,i32 140,i1 0)
    %r40 = add i32 2,0
    %r41 = getelementptr [7 x [1 x [5 x i32]]], ptr %r39, i32 0, i32 2, i32 0, i32 0
    store i32 %r40, ptr %r41
    %r42 = add i32 1,0
    %r43 = getelementptr [7 x [1 x [5 x i32]]], ptr %r39, i32 0, i32 2, i32 0, i32 1
    store i32 %r42, ptr %r43
    %r44 = add i32 8,0
    %r45 = getelementptr [7 x [1 x [5 x i32]]], ptr %r39, i32 0, i32 2, i32 0, i32 2
    store i32 %r44, ptr %r45
    %r46 = load i32, ptr %r33
    %r47 = add i32 0,0
    %r48 = add i32 0,0
    %r49 = getelementptr [7 x [1 x [5 x i32]]], ptr %r39, i32 0, i32 %r46, i32 %r47, i32 %r48
    %r50 = load i32, ptr %r49
    call void @putint(i32 %r50)
    %r51 = load i32, ptr %r33
    %r52 = add i32 0,0
    %r53 = add i32 1,0
    %r54 = getelementptr [7 x [1 x [5 x i32]]], ptr %r39, i32 0, i32 %r51, i32 %r52, i32 %r53
    %r55 = load i32, ptr %r54
    call void @putint(i32 %r55)
    %r56 = load i32, ptr %r33
    %r57 = add i32 0,0
    %r58 = add i32 2,0
    %r59 = getelementptr [7 x [1 x [5 x i32]]], ptr %r39, i32 0, i32 %r56, i32 %r57, i32 %r58
    %r60 = load i32, ptr %r59
    call void @putint(i32 %r60)
    br label %L9
L9:
    %r61 = add i32 10,0
    call void @putch(i32 %r61)
    %r62 = load i32, ptr @b
    call void @putint(i32 %r62)
    %r63 = add i32 10,0
    call void @putch(i32 %r63)
    %r64 = add i32 0,0
    %r65 = getelementptr [4 x i32], ptr @c, i32 0, i32 %r64
    %r66 = load i32, ptr %r65
    call void @putint(i32 %r66)
    %r67 = add i32 1,0
    %r68 = getelementptr [4 x i32], ptr @c, i32 0, i32 %r67
    %r69 = load i32, ptr %r68
    call void @putint(i32 %r69)
    %r70 = add i32 2,0
    %r71 = getelementptr [4 x i32], ptr @c, i32 0, i32 %r70
    %r72 = load i32, ptr %r71
    call void @putint(i32 %r72)
    %r73 = add i32 3,0
    %r74 = getelementptr [4 x i32], ptr @c, i32 0, i32 %r73
    %r75 = load i32, ptr %r74
    call void @putint(i32 %r75)
    %r76 = add i32 10,0
    call void @putch(i32 %r76)
    %r77 = add i32 0,0
    ret i32 %r77
}
