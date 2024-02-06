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
    %r48 = alloca [7 x [1 x [5 x i32]]]
    %r42 = alloca i32
    %r33 = alloca [2 x [8 x i32]]
    %r16 = alloca i32
    %r3 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
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
    %r11 = load i32, ptr %r0
    %r12 = add i32 0,5
    %r13 = icmp slt i32 %r11,%r12
    br i1 %r13, label %L3, label %L5
L3:
    %r17 = add i32 0,0
    store i32 %r17, ptr %r16
    %r18 = load i32, ptr %r16
    %r19 = add i32 0,1
    %r20 = add i32 %r18,%r19
    store i32 %r20, ptr %r16
    %r21 = load i32, ptr %r16
    %r22 = icmp ne i32 %r21,0
    br i1 %r22, label %L6, label %L7
L4:
    %r23 = load i32, ptr %r0
    %r24 = add i32 0,5
    %r25 = icmp slt i32 %r23,%r24
    br i1 %r25, label %L3, label %L5
L5:
    %r28 = load i32, ptr %r0
    call void @putint(i32 %r28)
    %r29 = add i32 0,10
    call void @putch(i32 %r29)
    %r30 = add i32 0,1
    %r31 = add i32 0,2
    %r32 = getelementptr [4 x i32], ptr @c, i32 0, i32 %r31
    store i32 %r30, ptr %r32
    call void @llvm.memset.p0.i32(ptr %r33,i8 0,i32 64,i1 0)
    %r34 = add i32 0,0
    %r35 = getelementptr [2 x [8 x i32]], ptr %r33, i32 0, i32 0, i32 0
    store i32 %r34, ptr %r35
    %r36 = add i32 0,9
    %r37 = getelementptr [2 x [8 x i32]], ptr %r33, i32 0, i32 0, i32 1
    store i32 %r36, ptr %r37
    %r38 = add i32 0,8
    %r39 = getelementptr [2 x [8 x i32]], ptr %r33, i32 0, i32 1, i32 0
    store i32 %r38, ptr %r39
    %r40 = add i32 0,3
    %r41 = getelementptr [2 x [8 x i32]], ptr %r33, i32 0, i32 1, i32 1
    store i32 %r40, ptr %r41
    %r43 = add i32 0,2
    store i32 %r43, ptr %r42
    %r44 = add i32 0,2
    %r45 = getelementptr [4 x i32], ptr @c, i32 0, i32 %r44
    %r46 = load i32, ptr %r45
    %r47 = icmp ne i32 %r46,0
    br i1 %r47, label %L9, label %L10
L6:
    br label %L5
L7:
    br label %L4
L9:
    call void @llvm.memset.p0.i32(ptr %r48,i8 0,i32 140,i1 0)
    %r49 = add i32 0,2
    %r50 = getelementptr [7 x [1 x [5 x i32]]], ptr %r48, i32 0, i32 2, i32 0, i32 0
    store i32 %r49, ptr %r50
    %r51 = add i32 0,1
    %r52 = getelementptr [7 x [1 x [5 x i32]]], ptr %r48, i32 0, i32 2, i32 0, i32 1
    store i32 %r51, ptr %r52
    %r53 = add i32 0,8
    %r54 = getelementptr [7 x [1 x [5 x i32]]], ptr %r48, i32 0, i32 2, i32 0, i32 2
    store i32 %r53, ptr %r54
    %r55 = load i32, ptr %r42
    %r56 = add i32 0,0
    %r57 = add i32 0,0
    %r58 = getelementptr [7 x [1 x [5 x i32]]], ptr %r48, i32 0, i32 %r55, i32 %r56, i32 %r57
    %r59 = load i32, ptr %r58
    call void @putint(i32 %r59)
    %r60 = load i32, ptr %r42
    %r61 = add i32 0,0
    %r62 = add i32 0,1
    %r63 = getelementptr [7 x [1 x [5 x i32]]], ptr %r48, i32 0, i32 %r60, i32 %r61, i32 %r62
    %r64 = load i32, ptr %r63
    call void @putint(i32 %r64)
    %r65 = load i32, ptr %r42
    %r66 = add i32 0,0
    %r67 = add i32 0,2
    %r68 = getelementptr [7 x [1 x [5 x i32]]], ptr %r48, i32 0, i32 %r65, i32 %r66, i32 %r67
    %r69 = load i32, ptr %r68
    call void @putint(i32 %r69)
    br label %L10
L10:
    %r70 = add i32 0,10
    call void @putch(i32 %r70)
    %r71 = load i32, ptr @b
    call void @putint(i32 %r71)
    %r72 = add i32 0,10
    call void @putch(i32 %r72)
    %r73 = add i32 0,0
    %r74 = getelementptr [4 x i32], ptr @c, i32 0, i32 %r73
    %r75 = load i32, ptr %r74
    call void @putint(i32 %r75)
    %r76 = add i32 0,1
    %r77 = getelementptr [4 x i32], ptr @c, i32 0, i32 %r76
    %r78 = load i32, ptr %r77
    call void @putint(i32 %r78)
    %r79 = add i32 0,2
    %r80 = getelementptr [4 x i32], ptr @c, i32 0, i32 %r79
    %r81 = load i32, ptr %r80
    call void @putint(i32 %r81)
    %r82 = add i32 0,3
    %r83 = getelementptr [4 x i32], ptr @c, i32 0, i32 %r82
    %r84 = load i32, ptr %r83
    call void @putint(i32 %r84)
    %r85 = add i32 0,10
    call void @putch(i32 %r85)
    %r86 = add i32 0,0
    ret i32 %r86
}
