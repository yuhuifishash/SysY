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
L0:
    %r7 = alloca i32
    %r6 = alloca i32
    %r5 = alloca i32
    %r4 = alloca [10 x i32]
    %r3 = alloca i32
    store i32 %r2, ptr %r3
    br label %L1
L1:
    store i32 0, ptr %r5
    store i32 0, ptr %r6
    store i32 0, ptr %r7
    %r8 = add i32 0,0
    store i32 %r8, ptr %r7
    %r9 = add i32 0,0
    store i32 %r9, ptr %r5
    %r10 = add i32 0,0
    store i32 %r10, ptr %r6
    br label %L2
L2:
    %r11 = load i32, ptr %r7
    %r12 = add i32 10,0
    %r13 = icmp slt i32 %r11,%r12
    br i1 %r13, label %L3, label %L4
L3:
    %r14 = load i32, ptr %r7
    %r15 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r14
    %r16 = add i32 0,0
    store i32 %r16, ptr %r15
    %r17 = load i32, ptr %r7
    %r18 = add i32 1,0
    %r19 = add i32 %r17,%r18
    store i32 %r19, ptr %r7
    br label %L2
L4:
    br label %L5
L5:
    %r20 = load i32, ptr %r5
    %r21 = load i32, ptr %r3
    %r22 = icmp slt i32 %r20,%r21
    br i1 %r22, label %L6, label %L7
L6:
    %r23 = load i32, ptr %r5
    %r24 = getelementptr i32, ptr %r0, i32 %r23
    %r25 = load i32, ptr %r24
    %r26 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r25
    %r27 = load i32, ptr %r5
    %r28 = getelementptr i32, ptr %r0, i32 %r27
    %r29 = load i32, ptr %r28
    %r30 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r29
    %r31 = load i32, ptr %r30
    %r32 = add i32 1,0
    %r33 = add i32 %r31,%r32
    store i32 %r33, ptr %r26
    %r34 = load i32, ptr %r5
    %r35 = add i32 1,0
    %r36 = add i32 %r34,%r35
    store i32 %r36, ptr %r5
    br label %L5
L7:
    %r37 = add i32 1,0
    store i32 %r37, ptr %r7
    br label %L8
L8:
    %r38 = load i32, ptr %r7
    %r39 = add i32 10,0
    %r40 = icmp slt i32 %r38,%r39
    br i1 %r40, label %L9, label %L10
L9:
    %r41 = load i32, ptr %r7
    %r42 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r41
    %r43 = load i32, ptr %r7
    %r44 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r43
    %r45 = load i32, ptr %r44
    %r46 = load i32, ptr %r7
    %r47 = add i32 1,0
    %r48 = sub i32 %r46,%r47
    %r49 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r48
    %r50 = load i32, ptr %r49
    %r51 = add i32 %r45,%r50
    store i32 %r51, ptr %r42
    %r52 = load i32, ptr %r7
    %r53 = add i32 1,0
    %r54 = add i32 %r52,%r53
    store i32 %r54, ptr %r7
    br label %L8
L10:
    %r55 = load i32, ptr %r3
    store i32 %r55, ptr %r6
    br label %L11
L11:
    %r56 = load i32, ptr %r6
    %r57 = add i32 0,0
    %r58 = icmp sgt i32 %r56,%r57
    br i1 %r58, label %L12, label %L13
L12:
    %r59 = load i32, ptr %r6
    %r60 = add i32 1,0
    %r61 = sub i32 %r59,%r60
    %r62 = getelementptr i32, ptr %r0, i32 %r61
    %r63 = load i32, ptr %r62
    %r64 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r63
    %r65 = load i32, ptr %r6
    %r66 = add i32 1,0
    %r67 = sub i32 %r65,%r66
    %r68 = getelementptr i32, ptr %r0, i32 %r67
    %r69 = load i32, ptr %r68
    %r70 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r69
    %r71 = load i32, ptr %r70
    %r72 = add i32 1,0
    %r73 = sub i32 %r71,%r72
    store i32 %r73, ptr %r64
    %r74 = load i32, ptr %r6
    %r75 = add i32 1,0
    %r76 = sub i32 %r74,%r75
    %r77 = getelementptr i32, ptr %r0, i32 %r76
    %r78 = load i32, ptr %r77
    %r79 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r78
    %r80 = load i32, ptr %r79
    %r81 = getelementptr i32, ptr %r1, i32 %r80
    %r82 = load i32, ptr %r6
    %r83 = add i32 1,0
    %r84 = sub i32 %r82,%r83
    %r85 = getelementptr i32, ptr %r0, i32 %r84
    %r86 = load i32, ptr %r85
    store i32 %r86, ptr %r81
    %r87 = load i32, ptr %r6
    %r88 = add i32 1,0
    %r89 = sub i32 %r87,%r88
    store i32 %r89, ptr %r6
    br label %L11
L13:
    %r90 = add i32 0,0
    ret i32 %r90
}
define i32 @main()
{
L0:
    %r42 = alloca i32
    %r34 = alloca [10 x i32]
    %r32 = alloca i32
    %r1 = alloca [10 x i32]
    br label %L1
L1:
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
    store i32 0, ptr %r32
    %r33 = add i32 0,0
    store i32 %r33, ptr %r32
    %r35 = getelementptr [10 x i32], ptr %r1, i32 0
    %r36 = getelementptr [10 x i32], ptr %r34, i32 0
    %r37 = load i32, ptr @n
    %r38 = call i32 @counting_sort(ptr %r35,ptr %r36,i32 %r37)
    store i32 %r38, ptr %r32
    br label %L2
L2:
    %r39 = load i32, ptr %r32
    %r40 = load i32, ptr @n
    %r41 = icmp slt i32 %r39,%r40
    br i1 %r41, label %L3, label %L4
L3:
    store i32 0, ptr %r42
    %r43 = load i32, ptr %r32
    %r44 = getelementptr [10 x i32], ptr %r34, i32 0, i32 %r43
    %r45 = load i32, ptr %r44
    store i32 %r45, ptr %r42
    %r46 = load i32, ptr %r42
    call void @putint(i32 %r46)
    %r47 = add i32 10,0
    store i32 %r47, ptr %r42
    %r48 = load i32, ptr %r42
    call void @putch(i32 %r48)
    %r49 = load i32, ptr %r32
    %r50 = add i32 1,0
    %r51 = add i32 %r49,%r50
    store i32 %r51, ptr %r32
    br label %L2
L4:
    %r52 = add i32 0,0
    ret i32 %r52
}
