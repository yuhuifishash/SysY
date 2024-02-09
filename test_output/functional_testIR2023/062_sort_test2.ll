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
define i32 @insertsort(ptr %r0)
{
L0:
    %r10 = alloca i32
    %r6 = alloca i32
    %r1 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r1
    %r2 = add i32 1,0
    store i32 %r2, ptr %r1
    br label %L2
L2:
    %r3 = load i32, ptr %r1
    %r4 = load i32, ptr @n
    %r5 = icmp slt i32 %r3,%r4
    br i1 %r5, label %L3, label %L4
L3:
    store i32 0, ptr %r6
    %r7 = load i32, ptr %r1
    %r8 = getelementptr i32, ptr %r0, i32 %r7
    %r9 = load i32, ptr %r8
    store i32 %r9, ptr %r6
    store i32 0, ptr %r10
    %r11 = load i32, ptr %r1
    %r12 = add i32 1,0
    %r13 = sub i32 %r11,%r12
    store i32 %r13, ptr %r10
    br label %L5
L4:
    %r41 = add i32 0,0
    ret i32 %r41
L5:
    %r14 = load i32, ptr %r10
    %r15 = add i32 1,0
    %r16 = sub i32 0,%r15
    %r17 = icmp sgt i32 %r14,%r16
    br i1 %r17, label %L8, label %L7
L6:
    %r23 = load i32, ptr %r10
    %r24 = add i32 1,0
    %r25 = add i32 %r23,%r24
    %r26 = getelementptr i32, ptr %r0, i32 %r25
    %r27 = load i32, ptr %r10
    %r28 = getelementptr i32, ptr %r0, i32 %r27
    %r29 = load i32, ptr %r28
    store i32 %r29, ptr %r26
    %r30 = load i32, ptr %r10
    %r31 = add i32 1,0
    %r32 = sub i32 %r30,%r31
    store i32 %r32, ptr %r10
    br label %L5
L7:
    %r33 = load i32, ptr %r10
    %r34 = add i32 1,0
    %r35 = add i32 %r33,%r34
    %r36 = getelementptr i32, ptr %r0, i32 %r35
    %r37 = load i32, ptr %r6
    store i32 %r37, ptr %r36
    %r38 = load i32, ptr %r1
    %r39 = add i32 1,0
    %r40 = add i32 %r38,%r39
    store i32 %r40, ptr %r1
    br label %L2
L8:
    %r18 = load i32, ptr %r6
    %r19 = load i32, ptr %r10
    %r20 = getelementptr i32, ptr %r0, i32 %r19
    %r21 = load i32, ptr %r20
    %r22 = icmp slt i32 %r18,%r21
    br i1 %r22, label %L6, label %L7
}
define i32 @main()
{
L0:
    %r38 = alloca i32
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
    %r33 = getelementptr [10 x i32], ptr %r1, i32 0
    %r34 = call i32 @insertsort(ptr %r33)
    store i32 %r34, ptr %r32
    br label %L2
L2:
    %r35 = load i32, ptr %r32
    %r36 = load i32, ptr @n
    %r37 = icmp slt i32 %r35,%r36
    br i1 %r37, label %L3, label %L4
L3:
    store i32 0, ptr %r38
    %r39 = load i32, ptr %r32
    %r40 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r39
    %r41 = load i32, ptr %r40
    store i32 %r41, ptr %r38
    %r42 = load i32, ptr %r38
    call void @putint(i32 %r42)
    %r43 = add i32 10,0
    store i32 %r43, ptr %r38
    %r44 = load i32, ptr %r38
    call void @putch(i32 %r44)
    %r45 = load i32, ptr %r32
    %r46 = add i32 1,0
    %r47 = add i32 %r45,%r46
    store i32 %r47, ptr %r32
    br label %L2
L4:
    %r48 = add i32 0,0
    ret i32 %r48
}
