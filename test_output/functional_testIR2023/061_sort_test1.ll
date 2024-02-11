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
define i32 @bubblesort(ptr %r0)
{
L0:
    %r28 = alloca i32
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
    br label %L2
L2:
    %r6 = load i32, ptr %r1
    %r7 = load i32, ptr @n
    %r8 = add i32 1,0
    %r9 = sub i32 %r7,%r8
    %r10 = icmp slt i32 %r6,%r9
    br i1 %r10, label %L3, label %L4
L3:
    %r11 = add i32 0,0
    store i32 %r11, ptr %r3
    br label %L5
L4:
    %r51 = add i32 0,0
    ret i32 %r51
L5:
    %r12 = load i32, ptr %r3
    %r13 = load i32, ptr @n
    %r14 = load i32, ptr %r1
    %r15 = sub i32 %r13,%r14
    %r16 = add i32 1,0
    %r17 = sub i32 %r15,%r16
    %r18 = icmp slt i32 %r12,%r17
    br i1 %r18, label %L6, label %L7
L6:
    %r19 = load i32, ptr %r3
    %r20 = getelementptr i32, ptr %r0, i32 %r19
    %r21 = load i32, ptr %r20
    %r22 = load i32, ptr %r3
    %r23 = add i32 1,0
    %r24 = add i32 %r22,%r23
    %r25 = getelementptr i32, ptr %r0, i32 %r24
    %r26 = load i32, ptr %r25
    %r27 = icmp sgt i32 %r21,%r26
    br i1 %r27, label %L8, label %L9
L7:
    %r48 = load i32, ptr %r1
    %r49 = add i32 1,0
    %r50 = add i32 %r48,%r49
    store i32 %r50, ptr %r1
    br label %L2
L8:
    %r29 = add i32 0,0
    store i32 %r29, ptr %r28
    %r30 = load i32, ptr %r3
    %r31 = add i32 1,0
    %r32 = add i32 %r30,%r31
    %r33 = getelementptr i32, ptr %r0, i32 %r32
    %r34 = load i32, ptr %r33
    store i32 %r34, ptr %r28
    %r35 = load i32, ptr %r3
    %r36 = add i32 1,0
    %r37 = add i32 %r35,%r36
    %r38 = getelementptr i32, ptr %r0, i32 %r37
    %r39 = load i32, ptr %r3
    %r40 = getelementptr i32, ptr %r0, i32 %r39
    %r41 = load i32, ptr %r40
    store i32 %r41, ptr %r38
    %r42 = load i32, ptr %r3
    %r43 = getelementptr i32, ptr %r0, i32 %r42
    %r44 = load i32, ptr %r28
    store i32 %r44, ptr %r43
    br label %L9
L9:
    %r45 = load i32, ptr %r3
    %r46 = add i32 1,0
    %r47 = add i32 %r45,%r46
    store i32 %r47, ptr %r3
    br label %L5
}
define i32 @main()
{
L0:
    %r39 = alloca i32
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
    %r34 = getelementptr [10 x i32], ptr %r1, i32 0
    %r35 = call i32 @bubblesort(ptr %r34)
    store i32 %r35, ptr %r32
    br label %L2
L2:
    %r36 = load i32, ptr %r32
    %r37 = load i32, ptr @n
    %r38 = icmp slt i32 %r36,%r37
    br i1 %r38, label %L3, label %L4
L3:
    %r40 = add i32 0,0
    store i32 %r40, ptr %r39
    %r41 = load i32, ptr %r32
    %r42 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r41
    %r43 = load i32, ptr %r42
    store i32 %r43, ptr %r39
    %r44 = load i32, ptr %r39
    call void @putint(i32 %r44)
    %r45 = add i32 10,0
    store i32 %r45, ptr %r39
    %r46 = load i32, ptr %r39
    call void @putch(i32 %r46)
    %r47 = load i32, ptr %r32
    %r48 = add i32 1,0
    %r49 = add i32 %r47,%r48
    store i32 %r49, ptr %r32
    br label %L2
L4:
    %r50 = add i32 0,0
    ret i32 %r50
}
