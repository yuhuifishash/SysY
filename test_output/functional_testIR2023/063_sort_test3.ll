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
L0:  ;
    %r71 = alloca i32
    %r14 = alloca i32
    %r11 = alloca i32
    %r8 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    store i32 %r2, ptr %r4
    br label %L1
L1:  ;
    %r5 = load i32, ptr %r3
    %r6 = load i32, ptr %r4
    %r7 = icmp slt i32 %r5,%r6
    br i1 %r7, label %L2, label %L3
L2:  ;
    %r9 = add i32 0,0
    store i32 %r9, ptr %r8
    %r10 = load i32, ptr %r3
    store i32 %r10, ptr %r8
    %r12 = add i32 0,0
    store i32 %r12, ptr %r11
    %r13 = load i32, ptr %r4
    store i32 %r13, ptr %r11
    %r15 = add i32 0,0
    store i32 %r15, ptr %r14
    %r16 = load i32, ptr %r3
    %r17 = getelementptr i32, ptr %r0, i32 %r16
    %r18 = load i32, ptr %r17
    store i32 %r18, ptr %r14
    br label %L4
L3:  ;
    %r87 = add i32 0,0
    ret i32 %r87
L4:  ;
    %r19 = load i32, ptr %r8
    %r20 = load i32, ptr %r11
    %r21 = icmp slt i32 %r19,%r20
    br i1 %r21, label %L5, label %L6
L5:  ;
    br label %L7
L6:  ;
    %r68 = load i32, ptr %r8
    %r69 = getelementptr i32, ptr %r0, i32 %r68
    %r70 = load i32, ptr %r14
    store i32 %r70, ptr %r69
    %r72 = add i32 0,0
    store i32 %r72, ptr %r71
    %r73 = load i32, ptr %r8
    %r74 = add i32 1,0
    %r75 = sub i32 %r73,%r74
    store i32 %r75, ptr %r71
    %r76 = getelementptr i32, ptr %r0
    %r77 = load i32, ptr %r3
    %r78 = load i32, ptr %r71
    %r79 = call i32 @QuickSort(ptr %r76,i32 %r77,i32 %r78)
    store i32 %r79, ptr %r71
    %r80 = load i32, ptr %r8
    %r81 = add i32 1,0
    %r82 = add i32 %r80,%r81
    store i32 %r82, ptr %r71
    %r83 = getelementptr i32, ptr %r0
    %r84 = load i32, ptr %r71
    %r85 = load i32, ptr %r4
    %r86 = call i32 @QuickSort(ptr %r83,i32 %r84,i32 %r85)
    store i32 %r86, ptr %r71
    br label %L3
L7:  ;
    %r22 = load i32, ptr %r8
    %r23 = load i32, ptr %r11
    %r24 = icmp slt i32 %r22,%r23
    br i1 %r24, label %L10, label %L9
L8:  ;
    %r32 = load i32, ptr %r11
    %r33 = add i32 1,0
    %r34 = sub i32 %r32,%r33
    store i32 %r34, ptr %r11
    br label %L7
L9:  ;
    %r35 = load i32, ptr %r8
    %r36 = load i32, ptr %r11
    %r37 = icmp slt i32 %r35,%r36
    br i1 %r37, label %L11, label %L12
L10:  ;
    %r25 = load i32, ptr %r11
    %r26 = getelementptr i32, ptr %r0, i32 %r25
    %r27 = load i32, ptr %r26
    %r28 = load i32, ptr %r14
    %r29 = add i32 1,0
    %r30 = sub i32 %r28,%r29
    %r31 = icmp sgt i32 %r27,%r30
    br i1 %r31, label %L8, label %L9
L11:  ;
    %r38 = load i32, ptr %r8
    %r39 = getelementptr i32, ptr %r0, i32 %r38
    %r40 = load i32, ptr %r11
    %r41 = getelementptr i32, ptr %r0, i32 %r40
    %r42 = load i32, ptr %r41
    store i32 %r42, ptr %r39
    %r43 = load i32, ptr %r8
    %r44 = add i32 1,0
    %r45 = add i32 %r43,%r44
    store i32 %r45, ptr %r8
    br label %L12
L12:  ;
    br label %L13
L13:  ;
    %r46 = load i32, ptr %r8
    %r47 = load i32, ptr %r11
    %r48 = icmp slt i32 %r46,%r47
    br i1 %r48, label %L16, label %L15
L14:  ;
    %r54 = load i32, ptr %r8
    %r55 = add i32 1,0
    %r56 = add i32 %r54,%r55
    store i32 %r56, ptr %r8
    br label %L13
L15:  ;
    %r57 = load i32, ptr %r8
    %r58 = load i32, ptr %r11
    %r59 = icmp slt i32 %r57,%r58
    br i1 %r59, label %L17, label %L18
L16:  ;
    %r49 = load i32, ptr %r8
    %r50 = getelementptr i32, ptr %r0, i32 %r49
    %r51 = load i32, ptr %r50
    %r52 = load i32, ptr %r14
    %r53 = icmp slt i32 %r51,%r52
    br i1 %r53, label %L14, label %L15
L17:  ;
    %r60 = load i32, ptr %r11
    %r61 = getelementptr i32, ptr %r0, i32 %r60
    %r62 = load i32, ptr %r8
    %r63 = getelementptr i32, ptr %r0, i32 %r62
    %r64 = load i32, ptr %r63
    store i32 %r64, ptr %r61
    %r65 = load i32, ptr %r11
    %r66 = add i32 1,0
    %r67 = sub i32 %r65,%r66
    store i32 %r67, ptr %r11
    br label %L18
L18:  ;
    br label %L4
}
define i32 @main()
{
L0:  ;
    %r45 = alloca i32
    %r35 = alloca i32
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
    %r36 = add i32 0,0
    store i32 %r36, ptr %r35
    %r37 = add i32 9,0
    store i32 %r37, ptr %r35
    %r38 = getelementptr [10 x i32], ptr %r1, i32 0
    %r39 = load i32, ptr %r32
    %r40 = load i32, ptr %r35
    %r41 = call i32 @QuickSort(ptr %r38,i32 %r39,i32 %r40)
    store i32 %r41, ptr %r32
    br label %L2
L2:  ;
    %r42 = load i32, ptr %r32
    %r43 = load i32, ptr @n
    %r44 = icmp slt i32 %r42,%r43
    br i1 %r44, label %L3, label %L4
L3:  ;
    %r46 = add i32 0,0
    store i32 %r46, ptr %r45
    %r47 = load i32, ptr %r32
    %r48 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r47
    %r49 = load i32, ptr %r48
    store i32 %r49, ptr %r45
    %r50 = load i32, ptr %r45
    call void @putint(i32 %r50)
    %r51 = add i32 10,0
    store i32 %r51, ptr %r45
    %r52 = load i32, ptr %r45
    call void @putch(i32 %r52)
    %r53 = load i32, ptr %r32
    %r54 = add i32 1,0
    %r55 = add i32 %r53,%r54
    store i32 %r55, ptr %r32
    br label %L2
L4:  ;
    %r56 = add i32 0,0
    ret i32 %r56
}
