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
    %r26 = alloca i32
    %r2 = alloca i32
    %r1 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r1
    store i32 0, ptr %r2
    %r3 = add i32 0,0
    store i32 %r3, ptr %r1
    br label %L2
L2:
    %r4 = load i32, ptr %r1
    %r5 = load i32, ptr @n
    %r6 = add i32 1,0
    %r7 = sub i32 %r5,%r6
    %r8 = icmp slt i32 %r4,%r7
    br i1 %r8, label %L3, label %L4
L3:
    %r9 = add i32 0,0
    store i32 %r9, ptr %r2
    br label %L5
L4:
    %r48 = add i32 0,0
    ret i32 %r48
L5:
    %r10 = load i32, ptr %r2
    %r11 = load i32, ptr @n
    %r12 = load i32, ptr %r1
    %r13 = sub i32 %r11,%r12
    %r14 = add i32 1,0
    %r15 = sub i32 %r13,%r14
    %r16 = icmp slt i32 %r10,%r15
    br i1 %r16, label %L6, label %L7
L6:
    %r17 = load i32, ptr %r2
    %r18 = getelementptr i32, ptr %r0, i32 %r17
    %r19 = load i32, ptr %r18
    %r20 = load i32, ptr %r2
    %r21 = add i32 1,0
    %r22 = add i32 %r20,%r21
    %r23 = getelementptr i32, ptr %r0, i32 %r22
    %r24 = load i32, ptr %r23
    %r25 = icmp sgt i32 %r19,%r24
    br i1 %r25, label %L8, label %L9
L7:
    %r45 = load i32, ptr %r1
    %r46 = add i32 1,0
    %r47 = add i32 %r45,%r46
    store i32 %r47, ptr %r1
    br label %L2
L8:
    store i32 0, ptr %r26
    %r27 = load i32, ptr %r2
    %r28 = add i32 1,0
    %r29 = add i32 %r27,%r28
    %r30 = getelementptr i32, ptr %r0, i32 %r29
    %r31 = load i32, ptr %r30
    store i32 %r31, ptr %r26
    %r32 = load i32, ptr %r2
    %r33 = add i32 1,0
    %r34 = add i32 %r32,%r33
    %r35 = getelementptr i32, ptr %r0, i32 %r34
    %r36 = load i32, ptr %r2
    %r37 = getelementptr i32, ptr %r0, i32 %r36
    %r38 = load i32, ptr %r37
    store i32 %r38, ptr %r35
    %r39 = load i32, ptr %r2
    %r40 = getelementptr i32, ptr %r0, i32 %r39
    %r41 = load i32, ptr %r26
    store i32 %r41, ptr %r40
    br label %L9
L9:
    %r42 = load i32, ptr %r2
    %r43 = add i32 1,0
    %r44 = add i32 %r42,%r43
    store i32 %r44, ptr %r2
    br label %L5
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
    %r34 = call i32 @bubblesort(ptr %r33)
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
