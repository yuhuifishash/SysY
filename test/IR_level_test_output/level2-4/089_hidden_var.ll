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
declare void @starttime()
declare void @stoptime()
declare void @llvm.memset.p0.i32(ptr,i8,i32,i1)
@b = global i32 5
@c = global [4 x i32] [i32 6,i32 7,i32 8,i32 9]
define i32 @main()
{
L0:
    %r43 = alloca [7 x [1 x [5 x i32]]]
    %r37 = alloca i32
    %r28 = alloca [2 x [8 x i32]]
    %r16 = alloca i32
    %r3 = alloca i32
    %r0 = alloca i32
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r2 = add i32 0,1
    store i32 %r2, ptr %r0
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r5 = add i32 0,2
    store i32 %r5, ptr %r3
    %r6 = add i32 0,3
    store i32 %r6, ptr %r3
    %r7 = load i32, ptr %r3
    call void @putint(i32 %r7)
    %r8 = load i32, ptr %r3
    call void @putint(i32 %r8)
    %r9 = load i32, ptr %r0
    call void @putint(i32 %r9)
    %r10 = add i32 0,10
    call void @putch(i32 %r10)
    br label %L1
L1:
    %r11 = load i32, ptr %r0
    %r12 = add i32 0,5
    %r13 = icmp slt i32 %r11,%r12
    br i1 %r13, label %L2, label %L3
L2:
    %r17 = add i32 0,0
    store i32 %r17, ptr %r16
    %r18 = load i32, ptr %r16
    %r19 = add i32 0,1
    %r20 = add i32 %r18,%r19
    store i32 %r20, ptr %r16
    %r21 = load i32, ptr %r16
    %r22 = icmp ne i32 %r21,0
    br i1 %r22, label %L4, label %L5
L3:
    %r23 = load i32, ptr %r0
    call void @putint(i32 %r23)
    %r24 = add i32 0,10
    call void @putch(i32 %r24)
    %r25 = add i32 0,1
    %r26 = add i32 0,2
    %r27 = getelementptr [4 x i32], ptr @c, i32 0, i32 %r26
    store i32 %r25, ptr %r27
    call void @llvm.memset.p0.i32(ptr %r28,i8 0,i32 64,i1 0)
    %r29 = add i32 0,0
    %r30 = getelementptr [2 x [8 x i32]], ptr %r28, i32 0, i32 0, i32 0
    store i32 %r29, ptr %r30
    %r31 = add i32 0,9
    %r32 = getelementptr [2 x [8 x i32]], ptr %r28, i32 0, i32 0, i32 1
    store i32 %r31, ptr %r32
    %r33 = add i32 0,8
    %r34 = getelementptr [2 x [8 x i32]], ptr %r28, i32 0, i32 1, i32 0
    store i32 %r33, ptr %r34
    %r35 = add i32 0,3
    %r36 = getelementptr [2 x [8 x i32]], ptr %r28, i32 0, i32 1, i32 1
    store i32 %r35, ptr %r36
    %r38 = add i32 0,2
    store i32 %r38, ptr %r37
    %r39 = add i32 0,2
    %r40 = getelementptr [4 x i32], ptr @c, i32 0, i32 %r39
    %r41 = load i32, ptr %r40
    %r42 = icmp ne i32 %r41,0
    br i1 %r42, label %L7, label %L8
L4:
    br label %L3
L5:
    br label %L1
L7:
    call void @llvm.memset.p0.i32(ptr %r43,i8 0,i32 140,i1 0)
    %r44 = add i32 0,2
    %r45 = getelementptr [7 x [1 x [5 x i32]]], ptr %r43, i32 0, i32 2, i32 0, i32 0
    store i32 %r44, ptr %r45
    %r46 = add i32 0,1
    %r47 = getelementptr [7 x [1 x [5 x i32]]], ptr %r43, i32 0, i32 2, i32 0, i32 1
    store i32 %r46, ptr %r47
    %r48 = add i32 0,8
    %r49 = getelementptr [7 x [1 x [5 x i32]]], ptr %r43, i32 0, i32 2, i32 0, i32 2
    store i32 %r48, ptr %r49
    %r50 = load i32, ptr %r37
    %r51 = add i32 0,0
    %r52 = add i32 0,0
    %r53 = getelementptr [7 x [1 x [5 x i32]]], ptr %r43, i32 0, i32 %r50, i32 %r51, i32 %r52
    %r54 = load i32, ptr %r53
    call void @putint(i32 %r54)
    %r55 = load i32, ptr %r37
    %r56 = add i32 0,0
    %r57 = add i32 0,1
    %r58 = getelementptr [7 x [1 x [5 x i32]]], ptr %r43, i32 0, i32 %r55, i32 %r56, i32 %r57
    %r59 = load i32, ptr %r58
    call void @putint(i32 %r59)
    %r60 = load i32, ptr %r37
    %r61 = add i32 0,0
    %r62 = add i32 0,2
    %r63 = getelementptr [7 x [1 x [5 x i32]]], ptr %r43, i32 0, i32 %r60, i32 %r61, i32 %r62
    %r64 = load i32, ptr %r63
    call void @putint(i32 %r64)
    br label %L8
L8:
    %r65 = add i32 0,10
    call void @putch(i32 %r65)
    %r66 = load i32, ptr @b
    call void @putint(i32 %r66)
    %r67 = add i32 0,10
    call void @putch(i32 %r67)
    %r68 = add i32 0,0
    %r69 = getelementptr [4 x i32], ptr @c, i32 0, i32 %r68
    %r70 = load i32, ptr %r69
    call void @putint(i32 %r70)
    %r71 = add i32 0,1
    %r72 = getelementptr [4 x i32], ptr @c, i32 0, i32 %r71
    %r73 = load i32, ptr %r72
    call void @putint(i32 %r73)
    %r74 = add i32 0,2
    %r75 = getelementptr [4 x i32], ptr @c, i32 0, i32 %r74
    %r76 = load i32, ptr %r75
    call void @putint(i32 %r76)
    %r77 = add i32 0,3
    %r78 = getelementptr [4 x i32], ptr @c, i32 0, i32 %r77
    %r79 = load i32, ptr %r78
    call void @putint(i32 %r79)
    %r80 = add i32 0,10
    call void @putch(i32 %r80)
    %r81 = add i32 0,0
    ret i32 %r81
}
