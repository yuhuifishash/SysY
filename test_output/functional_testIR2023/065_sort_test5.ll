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
define i32 @swap(ptr %r0,i32 %r1,i32 %r2)
{
L0:
    %r5 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    store i32 %r2, ptr %r4
    br label %L1
L1:
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    %r7 = load i32, ptr %r3
    %r8 = getelementptr i32, ptr %r0, i32 %r7
    %r9 = load i32, ptr %r8
    store i32 %r9, ptr %r5
    %r10 = load i32, ptr %r3
    %r11 = getelementptr i32, ptr %r0, i32 %r10
    %r12 = load i32, ptr %r4
    %r13 = getelementptr i32, ptr %r0, i32 %r12
    %r14 = load i32, ptr %r13
    store i32 %r14, ptr %r11
    %r15 = load i32, ptr %r4
    %r16 = getelementptr i32, ptr %r0, i32 %r15
    %r17 = load i32, ptr %r5
    store i32 %r17, ptr %r16
    %r18 = add i32 0,0
    ret i32 %r18
}
define i32 @heap_sort(ptr %r0,i32 %r1)
{
L0:
    %r32 = alloca i32
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
    %r7 = load i32, ptr %r2
    %r8 = add i32 2,0
    %r9 = sdiv i32 %r7,%r8
    %r10 = add i32 1,0
    %r11 = sub i32 %r9,%r10
    store i32 %r11, ptr %r3
    br label %L2
L2:
    %r12 = load i32, ptr %r3
    %r13 = add i32 1,0
    %r14 = sub i32 0,%r13
    %r15 = icmp sgt i32 %r12,%r14
    br i1 %r15, label %L3, label %L4
L3:
    %r16 = load i32, ptr %r2
    %r17 = add i32 1,0
    %r18 = sub i32 %r16,%r17
    store i32 %r18, ptr %r5
    %r19 = getelementptr i32, ptr %r0
    %r20 = load i32, ptr %r3
    %r21 = load i32, ptr %r5
    %r22 = call i32 @heap_ajust(ptr %r19,i32 %r20,i32 %r21)
    store i32 %r22, ptr %r5
    %r23 = load i32, ptr %r3
    %r24 = add i32 1,0
    %r25 = sub i32 %r23,%r24
    store i32 %r25, ptr %r3
    br label %L2
L4:
    %r26 = load i32, ptr %r2
    %r27 = add i32 1,0
    %r28 = sub i32 %r26,%r27
    store i32 %r28, ptr %r3
    br label %L5
L5:
    %r29 = load i32, ptr %r3
    %r30 = add i32 0,0
    %r31 = icmp sgt i32 %r29,%r30
    br i1 %r31, label %L6, label %L7
L6:
    %r33 = add i32 0,0
    store i32 %r33, ptr %r32
    %r34 = add i32 0,0
    store i32 %r34, ptr %r32
    %r35 = getelementptr i32, ptr %r0
    %r36 = load i32, ptr %r32
    %r37 = load i32, ptr %r3
    %r38 = call i32 @swap(ptr %r35,i32 %r36,i32 %r37)
    store i32 %r38, ptr %r5
    %r39 = load i32, ptr %r3
    %r40 = add i32 1,0
    %r41 = sub i32 %r39,%r40
    store i32 %r41, ptr %r5
    %r42 = getelementptr i32, ptr %r0
    %r43 = load i32, ptr %r32
    %r44 = load i32, ptr %r5
    %r45 = call i32 @heap_ajust(ptr %r42,i32 %r43,i32 %r44)
    store i32 %r45, ptr %r5
    %r46 = load i32, ptr %r3
    %r47 = add i32 1,0
    %r48 = sub i32 %r46,%r47
    store i32 %r48, ptr %r3
    br label %L5
L7:
    %r49 = add i32 0,0
    ret i32 %r49
}
define i32 @heap_ajust(ptr %r0,i32 %r1,i32 %r2)
{
L0:
    %r8 = alloca i32
    %r5 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    store i32 %r2, ptr %r4
    br label %L1
L1:
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    %r7 = load i32, ptr %r3
    store i32 %r7, ptr %r5
    %r9 = add i32 0,0
    store i32 %r9, ptr %r8
    %r10 = load i32, ptr %r5
    %r11 = add i32 2,0
    %r12 = mul i32 %r10,%r11
    %r13 = add i32 1,0
    %r14 = add i32 %r12,%r13
    store i32 %r14, ptr %r8
    br label %L2
L2:
    %r15 = load i32, ptr %r8
    %r16 = load i32, ptr %r4
    %r17 = add i32 1,0
    %r18 = add i32 %r16,%r17
    %r19 = icmp slt i32 %r15,%r18
    br i1 %r19, label %L3, label %L4
L3:
    %r20 = load i32, ptr %r8
    %r21 = load i32, ptr %r4
    %r22 = icmp slt i32 %r20,%r21
    br i1 %r22, label %L7, label %L6
L4:
    %r53 = add i32 0,0
    ret i32 %r53
L5:
    %r32 = load i32, ptr %r8
    %r33 = add i32 1,0
    %r34 = add i32 %r32,%r33
    store i32 %r34, ptr %r8
    br label %L6
L6:
    %r35 = load i32, ptr %r5
    %r36 = getelementptr i32, ptr %r0, i32 %r35
    %r37 = load i32, ptr %r36
    %r38 = load i32, ptr %r8
    %r39 = getelementptr i32, ptr %r0, i32 %r38
    %r40 = load i32, ptr %r39
    %r41 = icmp sgt i32 %r37,%r40
    br i1 %r41, label %L8, label %L9
L7:
    %r23 = load i32, ptr %r8
    %r24 = getelementptr i32, ptr %r0, i32 %r23
    %r25 = load i32, ptr %r24
    %r26 = load i32, ptr %r8
    %r27 = add i32 1,0
    %r28 = add i32 %r26,%r27
    %r29 = getelementptr i32, ptr %r0, i32 %r28
    %r30 = load i32, ptr %r29
    %r31 = icmp slt i32 %r25,%r30
    br i1 %r31, label %L5, label %L6
L8:
    %r42 = add i32 0,0
    ret i32 %r42
L9:
    %r43 = getelementptr i32, ptr %r0
    %r44 = load i32, ptr %r5
    %r45 = load i32, ptr %r8
    %r46 = call i32 @swap(ptr %r43,i32 %r44,i32 %r45)
    store i32 %r46, ptr %r5
    %r47 = load i32, ptr %r8
    store i32 %r47, ptr %r5
    %r48 = load i32, ptr %r5
    %r49 = add i32 2,0
    %r50 = mul i32 %r48,%r49
    %r51 = add i32 1,0
    %r52 = add i32 %r50,%r51
    store i32 %r52, ptr %r8
    br label %L10
L10:
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
    %r37 = call i32 @heap_sort(ptr %r35,i32 %r36)
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
