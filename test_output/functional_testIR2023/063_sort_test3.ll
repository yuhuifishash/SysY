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
define i32 @QuickSort(ptr %r0,i32 %r1,i32 %r2)
{
L0:
    %r68 = alloca i32
    %r12 = alloca i32
    %r10 = alloca i32
    %r8 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    store i32 %r2, ptr %r4
    br label %L1
L1:
    %r5 = load i32, ptr %r3
    %r6 = load i32, ptr %r4
    %r7 = icmp slt i32 %r5,%r6
    br i1 %r7, label %L2, label %L3
L2:
    store i32 0, ptr %r8
    %r9 = load i32, ptr %r3
    store i32 %r9, ptr %r8
    store i32 0, ptr %r10
    %r11 = load i32, ptr %r4
    store i32 %r11, ptr %r10
    store i32 0, ptr %r12
    %r13 = load i32, ptr %r3
    %r14 = getelementptr i32, ptr %r0, i32 %r13
    %r15 = load i32, ptr %r14
    store i32 %r15, ptr %r12
    br label %L4
L3:
    %r83 = add i32 0,0
    ret i32 %r83
L4:
    %r16 = load i32, ptr %r8
    %r17 = load i32, ptr %r10
    %r18 = icmp slt i32 %r16,%r17
    br i1 %r18, label %L5, label %L6
L5:
    br label %L7
L6:
    %r65 = load i32, ptr %r8
    %r66 = getelementptr i32, ptr %r0, i32 %r65
    %r67 = load i32, ptr %r12
    store i32 %r67, ptr %r66
    store i32 0, ptr %r68
    %r69 = load i32, ptr %r8
    %r70 = add i32 1,0
    %r71 = sub i32 %r69,%r70
    store i32 %r71, ptr %r68
    %r72 = getelementptr i32, ptr %r0
    %r73 = load i32, ptr %r3
    %r74 = load i32, ptr %r68
    %r75 = call i32 @QuickSort(ptr %r72,i32 %r73,i32 %r74)
    store i32 %r75, ptr %r68
    %r76 = load i32, ptr %r8
    %r77 = add i32 1,0
    %r78 = add i32 %r76,%r77
    store i32 %r78, ptr %r68
    %r79 = getelementptr i32, ptr %r0
    %r80 = load i32, ptr %r68
    %r81 = load i32, ptr %r4
    %r82 = call i32 @QuickSort(ptr %r79,i32 %r80,i32 %r81)
    store i32 %r82, ptr %r68
    br label %L3
L7:
    %r19 = load i32, ptr %r8
    %r20 = load i32, ptr %r10
    %r21 = icmp slt i32 %r19,%r20
    br i1 %r21, label %L10, label %L9
L8:
    %r29 = load i32, ptr %r10
    %r30 = add i32 1,0
    %r31 = sub i32 %r29,%r30
    store i32 %r31, ptr %r10
    br label %L7
L9:
    %r32 = load i32, ptr %r8
    %r33 = load i32, ptr %r10
    %r34 = icmp slt i32 %r32,%r33
    br i1 %r34, label %L11, label %L12
L10:
    %r22 = load i32, ptr %r10
    %r23 = getelementptr i32, ptr %r0, i32 %r22
    %r24 = load i32, ptr %r23
    %r25 = load i32, ptr %r12
    %r26 = add i32 1,0
    %r27 = sub i32 %r25,%r26
    %r28 = icmp sgt i32 %r24,%r27
    br i1 %r28, label %L8, label %L9
L11:
    %r35 = load i32, ptr %r8
    %r36 = getelementptr i32, ptr %r0, i32 %r35
    %r37 = load i32, ptr %r10
    %r38 = getelementptr i32, ptr %r0, i32 %r37
    %r39 = load i32, ptr %r38
    store i32 %r39, ptr %r36
    %r40 = load i32, ptr %r8
    %r41 = add i32 1,0
    %r42 = add i32 %r40,%r41
    store i32 %r42, ptr %r8
    br label %L12
L12:
    br label %L13
L13:
    %r43 = load i32, ptr %r8
    %r44 = load i32, ptr %r10
    %r45 = icmp slt i32 %r43,%r44
    br i1 %r45, label %L16, label %L15
L14:
    %r51 = load i32, ptr %r8
    %r52 = add i32 1,0
    %r53 = add i32 %r51,%r52
    store i32 %r53, ptr %r8
    br label %L13
L15:
    %r54 = load i32, ptr %r8
    %r55 = load i32, ptr %r10
    %r56 = icmp slt i32 %r54,%r55
    br i1 %r56, label %L17, label %L18
L16:
    %r46 = load i32, ptr %r8
    %r47 = getelementptr i32, ptr %r0, i32 %r46
    %r48 = load i32, ptr %r47
    %r49 = load i32, ptr %r12
    %r50 = icmp slt i32 %r48,%r49
    br i1 %r50, label %L14, label %L15
L17:
    %r57 = load i32, ptr %r10
    %r58 = getelementptr i32, ptr %r0, i32 %r57
    %r59 = load i32, ptr %r8
    %r60 = getelementptr i32, ptr %r0, i32 %r59
    %r61 = load i32, ptr %r60
    store i32 %r61, ptr %r58
    %r62 = load i32, ptr %r10
    %r63 = add i32 1,0
    %r64 = sub i32 %r62,%r63
    store i32 %r64, ptr %r10
    br label %L18
L18:
    br label %L4
}
define i32 @main()
{
L0:
    %r43 = alloca i32
    %r34 = alloca i32
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
    store i32 0, ptr %r34
    %r35 = add i32 9,0
    store i32 %r35, ptr %r34
    %r36 = getelementptr [10 x i32], ptr %r1, i32 0
    %r37 = load i32, ptr %r32
    %r38 = load i32, ptr %r34
    %r39 = call i32 @QuickSort(ptr %r36,i32 %r37,i32 %r38)
    store i32 %r39, ptr %r32
    br label %L2
L2:
    %r40 = load i32, ptr %r32
    %r41 = load i32, ptr @n
    %r42 = icmp slt i32 %r40,%r41
    br i1 %r42, label %L3, label %L4
L3:
    store i32 0, ptr %r43
    %r44 = load i32, ptr %r32
    %r45 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r44
    %r46 = load i32, ptr %r45
    store i32 %r46, ptr %r43
    %r47 = load i32, ptr %r43
    call void @putint(i32 %r47)
    %r48 = add i32 10,0
    store i32 %r48, ptr %r43
    %r49 = load i32, ptr %r43
    call void @putch(i32 %r49)
    %r50 = load i32, ptr %r32
    %r51 = add i32 1,0
    %r52 = add i32 %r50,%r51
    store i32 %r52, ptr %r32
    br label %L2
L4:
    %r53 = add i32 0,0
    ret i32 %r53
}
