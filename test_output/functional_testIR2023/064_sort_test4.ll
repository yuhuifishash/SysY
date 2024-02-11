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
define i32 @select_sort(ptr %r0,i32 %r1)
{
L0:
    %r36 = alloca i32
    %r7 = alloca i32
    %r5 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r1, ptr %r2
    br label %L1
L1:
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    %r8 = add i32 0,0
    store i32 %r8, ptr %r7
    %r9 = add i32 0,0
    store i32 %r9, ptr %r3
    br label %L2
L2:
    %r10 = load i32, ptr %r3
    %r11 = load i32, ptr %r2
    %r12 = add i32 1,0
    %r13 = sub i32 %r11,%r12
    %r14 = icmp slt i32 %r10,%r13
    br i1 %r14, label %L3, label %L4
L3:
    %r15 = load i32, ptr %r3
    store i32 %r15, ptr %r7
    %r16 = load i32, ptr %r3
    %r17 = add i32 1,0
    %r18 = add i32 %r16,%r17
    store i32 %r18, ptr %r5
    br label %L5
L4:
    %r52 = add i32 0,0
    ret i32 %r52
L5:
    %r19 = load i32, ptr %r5
    %r20 = load i32, ptr %r2
    %r21 = icmp slt i32 %r19,%r20
    br i1 %r21, label %L6, label %L7
L6:
    %r22 = load i32, ptr %r7
    %r23 = getelementptr i32, ptr %r0, i32 %r22
    %r24 = load i32, ptr %r23
    %r25 = load i32, ptr %r5
    %r26 = getelementptr i32, ptr %r0, i32 %r25
    %r27 = load i32, ptr %r26
    %r28 = icmp sgt i32 %r24,%r27
    br i1 %r28, label %L8, label %L9
L7:
    %r33 = load i32, ptr %r7
    %r34 = load i32, ptr %r3
    %r35 = icmp ne i32 %r33,%r34
    br i1 %r35, label %L10, label %L11
L8:
    %r29 = load i32, ptr %r5
    store i32 %r29, ptr %r7
    br label %L9
L9:
    %r30 = load i32, ptr %r5
    %r31 = add i32 1,0
    %r32 = add i32 %r30,%r31
    store i32 %r32, ptr %r5
    br label %L5
L10:
    %r37 = add i32 0,0
    store i32 %r37, ptr %r36
    %r38 = load i32, ptr %r7
    %r39 = getelementptr i32, ptr %r0, i32 %r38
    %r40 = load i32, ptr %r39
    store i32 %r40, ptr %r36
    %r41 = load i32, ptr %r7
    %r42 = getelementptr i32, ptr %r0, i32 %r41
    %r43 = load i32, ptr %r3
    %r44 = getelementptr i32, ptr %r0, i32 %r43
    %r45 = load i32, ptr %r44
    store i32 %r45, ptr %r42
    %r46 = load i32, ptr %r3
    %r47 = getelementptr i32, ptr %r0, i32 %r46
    %r48 = load i32, ptr %r36
    store i32 %r48, ptr %r47
    br label %L11
L11:
    %r49 = load i32, ptr %r3
    %r50 = add i32 1,0
    %r51 = add i32 %r49,%r50
    store i32 %r51, ptr %r3
    br label %L2
}
define i32 @main()
{
L0:
    %r41 = alloca i32
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
    %r33 = add i32 0,0
    store i32 %r33, ptr %r32
    %r34 = add i32 0,0
    store i32 %r34, ptr %r32
    %r35 = getelementptr [10 x i32], ptr %r1, i32 0
    %r36 = load i32, ptr @n
    %r37 = call i32 @select_sort(ptr %r35,i32 %r36)
    store i32 %r37, ptr %r32
    br label %L2
L2:
    %r38 = load i32, ptr %r32
    %r39 = load i32, ptr @n
    %r40 = icmp slt i32 %r38,%r39
    br i1 %r40, label %L3, label %L4
L3:
    %r42 = add i32 0,0
    store i32 %r42, ptr %r41
    %r43 = load i32, ptr %r32
    %r44 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r43
    %r45 = load i32, ptr %r44
    store i32 %r45, ptr %r41
    %r46 = load i32, ptr %r41
    call void @putint(i32 %r46)
    %r47 = add i32 10,0
    store i32 %r47, ptr %r41
    %r48 = load i32, ptr %r41
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
