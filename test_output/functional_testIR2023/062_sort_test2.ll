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
L0:  ;
    %r12 = alloca i32
    %r7 = alloca i32
    %r1 = alloca i32
    br label %L1
L1:  ;
    %r2 = add i32 0,0
    store i32 %r2, ptr %r1
    %r3 = add i32 1,0
    store i32 %r3, ptr %r1
    br label %L2
L2:  ;
    %r4 = load i32, ptr %r1
    %r5 = load i32, ptr @n
    %r6 = icmp slt i32 %r4,%r5
    br i1 %r6, label %L3, label %L4
L3:  ;
    %r8 = add i32 0,0
    store i32 %r8, ptr %r7
    %r9 = load i32, ptr %r1
    %r10 = getelementptr i32, ptr %r0, i32 %r9
    %r11 = load i32, ptr %r10
    store i32 %r11, ptr %r7
    %r13 = add i32 0,0
    store i32 %r13, ptr %r12
    %r14 = load i32, ptr %r1
    %r15 = add i32 1,0
    %r16 = sub i32 %r14,%r15
    store i32 %r16, ptr %r12
    br label %L5
L4:  ;
    %r44 = add i32 0,0
    ret i32 %r44
L5:  ;
    %r17 = load i32, ptr %r12
    %r18 = add i32 1,0
    %r19 = sub i32 0,%r18
    %r20 = icmp sgt i32 %r17,%r19
    br i1 %r20, label %L8, label %L7
L6:  ;
    %r26 = load i32, ptr %r12
    %r27 = add i32 1,0
    %r28 = add i32 %r26,%r27
    %r29 = getelementptr i32, ptr %r0, i32 %r28
    %r30 = load i32, ptr %r12
    %r31 = getelementptr i32, ptr %r0, i32 %r30
    %r32 = load i32, ptr %r31
    store i32 %r32, ptr %r29
    %r33 = load i32, ptr %r12
    %r34 = add i32 1,0
    %r35 = sub i32 %r33,%r34
    store i32 %r35, ptr %r12
    br label %L5
L7:  ;
    %r36 = load i32, ptr %r12
    %r37 = add i32 1,0
    %r38 = add i32 %r36,%r37
    %r39 = getelementptr i32, ptr %r0, i32 %r38
    %r40 = load i32, ptr %r7
    store i32 %r40, ptr %r39
    %r41 = load i32, ptr %r1
    %r42 = add i32 1,0
    %r43 = add i32 %r41,%r42
    store i32 %r43, ptr %r1
    br label %L2
L8:  ;
    %r21 = load i32, ptr %r7
    %r22 = load i32, ptr %r12
    %r23 = getelementptr i32, ptr %r0, i32 %r22
    %r24 = load i32, ptr %r23
    %r25 = icmp slt i32 %r21,%r24
    br i1 %r25, label %L6, label %L7
}
define i32 @main()
{
L0:  ;
    %r39 = alloca i32
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
    %r34 = getelementptr [10 x i32], ptr %r1, i32 0
    %r35 = call i32 @insertsort(ptr %r34)
    store i32 %r35, ptr %r32
    br label %L2
L2:  ;
    %r36 = load i32, ptr %r32
    %r37 = load i32, ptr @n
    %r38 = icmp slt i32 %r36,%r37
    br i1 %r38, label %L3, label %L4
L3:  ;
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
L4:  ;
    %r50 = add i32 0,0
    ret i32 %r50
}
