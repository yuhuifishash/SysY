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
define i32 @main()
{
L0:
    %r41 = alloca i32
    %r32 = alloca i32
    %r1 = alloca [10 x i32]
    br label %L1
L1:
    %r0 = add i32 0,10
    store i32 %r0, ptr @n
    %r2 = add i32 0,4
    %r3 = add i32 0,0
    %r4 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r3
    store i32 %r2, ptr %r4
    %r5 = add i32 0,3
    %r6 = add i32 0,1
    %r7 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r6
    store i32 %r5, ptr %r7
    %r8 = add i32 0,9
    %r9 = add i32 0,2
    %r10 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r9
    store i32 %r8, ptr %r10
    %r11 = add i32 0,2
    %r12 = add i32 0,3
    %r13 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r12
    store i32 %r11, ptr %r13
    %r14 = add i32 0,0
    %r15 = add i32 0,4
    %r16 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r15
    store i32 %r14, ptr %r16
    %r17 = add i32 0,1
    %r18 = add i32 0,5
    %r19 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r18
    store i32 %r17, ptr %r19
    %r20 = add i32 0,6
    %r21 = add i32 0,6
    %r22 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r21
    store i32 %r20, ptr %r22
    %r23 = add i32 0,5
    %r24 = add i32 0,7
    %r25 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r24
    store i32 %r23, ptr %r25
    %r26 = add i32 0,7
    %r27 = add i32 0,8
    %r28 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r27
    store i32 %r26, ptr %r28
    %r29 = add i32 0,8
    %r30 = add i32 0,9
    %r31 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r30
    store i32 %r29, ptr %r31
    %r33 = add i32 0,0
    store i32 %r33, ptr %r32
    %r34 = getelementptr i32, ptr %r1, i32 0
    %r35 = call i32 @bubblesort(ptr %r34)
    store i32 %r35, ptr %r32
    %r36 = load i32, ptr %r32
    %r37 = load i32, ptr @n
    %r38 = icmp slt i32 %r36,%r37
    br i1 %r38, label %L3, label %L5
L3:
    %r42 = add i32 0,0
    store i32 %r42, ptr %r41
    %r43 = load i32, ptr %r32
    %r44 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r43
    %r45 = load i32, ptr %r44
    store i32 %r45, ptr %r41
    %r46 = load i32, ptr %r41
    call void @putint(i32 %r46)
    %r47 = add i32 0,10
    store i32 %r47, ptr %r41
    %r48 = load i32, ptr %r41
    call void @putch(i32 %r48)
    %r49 = load i32, ptr %r32
    %r50 = add i32 0,1
    %r51 = add i32 %r49,%r50
    store i32 %r51, ptr %r32
    br label %L4
L4:
    %r52 = load i32, ptr %r32
    %r53 = load i32, ptr @n
    %r54 = icmp slt i32 %r52,%r53
    br i1 %r54, label %L3, label %L5
L5:
    %r57 = add i32 0,0
    ret i32 %r57
}
define i32 @bubblesort(ptr %r0)
{
L0:
    %r34 = alloca i32
    %r3 = alloca i32
    %r1 = alloca i32
    br label %L1
L1:
    %r2 = add i32 0,0
    store i32 %r2, ptr %r1
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r5 = add i32 0,0
    store i32 %r5, ptr %r1
    %r6 = load i32, ptr %r1
    %r7 = load i32, ptr @n
    %r8 = add i32 0,1
    %r9 = sub i32 %r7,%r8
    %r10 = icmp slt i32 %r6,%r9
    br i1 %r10, label %L3, label %L5
L3:
    %r13 = add i32 0,0
    store i32 %r13, ptr %r3
    %r14 = load i32, ptr %r3
    %r15 = load i32, ptr @n
    %r16 = load i32, ptr %r1
    %r17 = sub i32 %r15,%r16
    %r18 = add i32 0,1
    %r19 = sub i32 %r17,%r18
    %r20 = icmp slt i32 %r14,%r19
    br i1 %r20, label %L7, label %L9
L4:
    %r66 = load i32, ptr %r1
    %r67 = load i32, ptr @n
    %r68 = add i32 0,1
    %r69 = sub i32 %r67,%r68
    %r70 = icmp slt i32 %r66,%r69
    br i1 %r70, label %L3, label %L5
L5:
    %r73 = add i32 0,0
    ret i32 %r73
L7:
    %r23 = load i32, ptr %r3
    %r24 = getelementptr i32, ptr %r0, i32 %r23
    %r25 = load i32, ptr %r24
    %r26 = load i32, ptr %r3
    %r27 = add i32 0,1
    %r28 = add i32 %r26,%r27
    %r29 = getelementptr i32, ptr %r0, i32 %r28
    %r30 = load i32, ptr %r29
    %r31 = icmp sgt i32 %r25,%r30
    br i1 %r31, label %L10, label %L11
L8:
    %r54 = load i32, ptr %r3
    %r55 = load i32, ptr @n
    %r56 = load i32, ptr %r1
    %r57 = sub i32 %r55,%r56
    %r58 = add i32 0,1
    %r59 = sub i32 %r57,%r58
    %r60 = icmp slt i32 %r54,%r59
    br i1 %r60, label %L7, label %L9
L9:
    %r63 = load i32, ptr %r1
    %r64 = add i32 0,1
    %r65 = add i32 %r63,%r64
    store i32 %r65, ptr %r1
    br label %L4
L10:
    %r35 = add i32 0,0
    store i32 %r35, ptr %r34
    %r36 = load i32, ptr %r3
    %r37 = add i32 0,1
    %r38 = add i32 %r36,%r37
    %r39 = getelementptr i32, ptr %r0, i32 %r38
    %r40 = load i32, ptr %r39
    store i32 %r40, ptr %r34
    %r41 = load i32, ptr %r3
    %r42 = getelementptr i32, ptr %r0, i32 %r41
    %r43 = load i32, ptr %r42
    %r44 = load i32, ptr %r3
    %r45 = add i32 0,1
    %r46 = add i32 %r44,%r45
    %r47 = getelementptr i32, ptr %r0, i32 %r46
    store i32 %r43, ptr %r47
    %r48 = load i32, ptr %r34
    %r49 = load i32, ptr %r3
    %r50 = getelementptr i32, ptr %r0, i32 %r49
    store i32 %r48, ptr %r50
    br label %L11
L11:
    %r51 = load i32, ptr %r3
    %r52 = add i32 0,1
    %r53 = add i32 %r51,%r52
    store i32 %r53, ptr %r3
    br label %L8
}
