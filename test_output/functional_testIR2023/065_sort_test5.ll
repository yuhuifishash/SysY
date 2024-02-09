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
    store i32 0, ptr %r5
    %r6 = load i32, ptr %r3
    %r7 = getelementptr i32, ptr %r0, i32 %r6
    %r8 = load i32, ptr %r7
    store i32 %r8, ptr %r5
    %r9 = load i32, ptr %r3
    %r10 = getelementptr i32, ptr %r0, i32 %r9
    %r11 = load i32, ptr %r4
    %r12 = getelementptr i32, ptr %r0, i32 %r11
    %r13 = load i32, ptr %r12
    store i32 %r13, ptr %r10
    %r14 = load i32, ptr %r4
    %r15 = getelementptr i32, ptr %r0, i32 %r14
    %r16 = load i32, ptr %r5
    store i32 %r16, ptr %r15
    %r17 = add i32 0,0
    ret i32 %r17
}
define i32 @heap_ajust(ptr %r0,i32 %r1,i32 %r2)
{
L0:
    %r7 = alloca i32
    %r5 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    store i32 %r2, ptr %r4
    br label %L1
L1:
    store i32 0, ptr %r5
    %r6 = load i32, ptr %r3
    store i32 %r6, ptr %r5
    store i32 0, ptr %r7
    %r8 = load i32, ptr %r5
    %r9 = add i32 2,0
    %r10 = mul i32 %r8,%r9
    %r11 = add i32 1,0
    %r12 = add i32 %r10,%r11
    store i32 %r12, ptr %r7
    br label %L2
L2:
    %r13 = load i32, ptr %r7
    %r14 = load i32, ptr %r4
    %r15 = add i32 1,0
    %r16 = add i32 %r14,%r15
    %r17 = icmp slt i32 %r13,%r16
    br i1 %r17, label %L3, label %L4
L3:
    %r18 = load i32, ptr %r7
    %r19 = load i32, ptr %r4
    %r20 = icmp slt i32 %r18,%r19
    br i1 %r20, label %L7, label %L6
L4:
    %r51 = add i32 0,0
    ret i32 %r51
L5:
    %r30 = load i32, ptr %r7
    %r31 = add i32 1,0
    %r32 = add i32 %r30,%r31
    store i32 %r32, ptr %r7
    br label %L6
L6:
    %r33 = load i32, ptr %r5
    %r34 = getelementptr i32, ptr %r0, i32 %r33
    %r35 = load i32, ptr %r34
    %r36 = load i32, ptr %r7
    %r37 = getelementptr i32, ptr %r0, i32 %r36
    %r38 = load i32, ptr %r37
    %r39 = icmp sgt i32 %r35,%r38
    br i1 %r39, label %L8, label %L9
L7:
    %r21 = load i32, ptr %r7
    %r22 = getelementptr i32, ptr %r0, i32 %r21
    %r23 = load i32, ptr %r22
    %r24 = load i32, ptr %r7
    %r25 = add i32 1,0
    %r26 = add i32 %r24,%r25
    %r27 = getelementptr i32, ptr %r0, i32 %r26
    %r28 = load i32, ptr %r27
    %r29 = icmp slt i32 %r23,%r28
    br i1 %r29, label %L5, label %L6
L8:
    %r40 = add i32 0,0
    ret i32 %r40
    br label %L10
L9:
    %r41 = getelementptr i32, ptr %r0
    %r42 = load i32, ptr %r5
    %r43 = load i32, ptr %r7
    %r44 = call i32 @swap(ptr %r41,i32 %r42,i32 %r43)
    store i32 %r44, ptr %r5
    %r45 = load i32, ptr %r7
    store i32 %r45, ptr %r5
    %r46 = load i32, ptr %r5
    %r47 = add i32 2,0
    %r48 = mul i32 %r46,%r47
    %r49 = add i32 1,0
    %r50 = add i32 %r48,%r49
    store i32 %r50, ptr %r7
    br label %L10
L10:
    br label %L2
}
define i32 @heap_sort(ptr %r0,i32 %r1)
{
L0:
    %r30 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r1, ptr %r2
    br label %L1
L1:
    store i32 0, ptr %r3
    store i32 0, ptr %r4
    %r5 = load i32, ptr %r2
    %r6 = add i32 2,0
    %r7 = sdiv i32 %r5,%r6
    %r8 = add i32 1,0
    %r9 = sub i32 %r7,%r8
    store i32 %r9, ptr %r3
    br label %L2
L2:
    %r10 = load i32, ptr %r3
    %r11 = add i32 1,0
    %r12 = sub i32 0,%r11
    %r13 = icmp sgt i32 %r10,%r12
    br i1 %r13, label %L3, label %L4
L3:
    %r14 = load i32, ptr %r2
    %r15 = add i32 1,0
    %r16 = sub i32 %r14,%r15
    store i32 %r16, ptr %r4
    %r17 = getelementptr i32, ptr %r0
    %r18 = load i32, ptr %r3
    %r19 = load i32, ptr %r4
    %r20 = call i32 @heap_ajust(ptr %r17,i32 %r18,i32 %r19)
    store i32 %r20, ptr %r4
    %r21 = load i32, ptr %r3
    %r22 = add i32 1,0
    %r23 = sub i32 %r21,%r22
    store i32 %r23, ptr %r3
    br label %L2
L4:
    %r24 = load i32, ptr %r2
    %r25 = add i32 1,0
    %r26 = sub i32 %r24,%r25
    store i32 %r26, ptr %r3
    br label %L5
L5:
    %r27 = load i32, ptr %r3
    %r28 = add i32 0,0
    %r29 = icmp sgt i32 %r27,%r28
    br i1 %r29, label %L6, label %L7
L6:
    store i32 0, ptr %r30
    %r31 = add i32 0,0
    store i32 %r31, ptr %r30
    %r32 = getelementptr i32, ptr %r0
    %r33 = load i32, ptr %r30
    %r34 = load i32, ptr %r3
    %r35 = call i32 @swap(ptr %r32,i32 %r33,i32 %r34)
    store i32 %r35, ptr %r4
    %r36 = load i32, ptr %r3
    %r37 = add i32 1,0
    %r38 = sub i32 %r36,%r37
    store i32 %r38, ptr %r4
    %r39 = getelementptr i32, ptr %r0
    %r40 = load i32, ptr %r30
    %r41 = load i32, ptr %r4
    %r42 = call i32 @heap_ajust(ptr %r39,i32 %r40,i32 %r41)
    store i32 %r42, ptr %r4
    %r43 = load i32, ptr %r3
    %r44 = add i32 1,0
    %r45 = sub i32 %r43,%r44
    store i32 %r45, ptr %r3
    br label %L5
L7:
    %r46 = add i32 0,0
    ret i32 %r46
}
define i32 @main()
{
L0:
    %r40 = alloca i32
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
    %r34 = getelementptr [10 x i32], ptr %r1, i32 0
    %r35 = load i32, ptr @n
    %r36 = call i32 @heap_sort(ptr %r34,i32 %r35)
    store i32 %r36, ptr %r32
    br label %L2
L2:
    %r37 = load i32, ptr %r32
    %r38 = load i32, ptr @n
    %r39 = icmp slt i32 %r37,%r38
    br i1 %r39, label %L3, label %L4
L3:
    store i32 0, ptr %r40
    %r41 = load i32, ptr %r32
    %r42 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r41
    %r43 = load i32, ptr %r42
    store i32 %r43, ptr %r40
    %r44 = load i32, ptr %r40
    call void @putint(i32 %r44)
    %r45 = add i32 10,0
    store i32 %r45, ptr %r40
    %r46 = load i32, ptr %r40
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
