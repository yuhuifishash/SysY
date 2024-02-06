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
@maxN = global i32 1000
@space = global i32 32
@array = global [1000x i32] zeroinitializer
define i32 @main()
{
L0:
    %r24 = alloca i32
    %r22 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = call i32 @getint()
    store i32 %r1, ptr %r0
    %r3 = call i32 @getint()
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    %r6 = load i32, ptr %r4
    %r7 = load i32, ptr %r0
    %r8 = icmp slt i32 %r6,%r7
    br i1 %r8, label %L3, label %L5
L3:
    %r11 = call i32 @getint()
    %r12 = load i32, ptr %r4
    %r13 = getelementptr [1000 x i32], ptr @array, i32 0, i32 %r12
    store i32 %r11, ptr %r13
    %r14 = load i32, ptr %r4
    %r15 = add i32 0,1
    %r16 = add i32 %r14,%r15
    store i32 %r16, ptr %r4
    br label %L4
L4:
    %r17 = load i32, ptr %r4
    %r18 = load i32, ptr %r0
    %r19 = icmp slt i32 %r17,%r18
    br i1 %r19, label %L3, label %L5
L5:
    %r23 = add i32 0,0
    store i32 %r23, ptr %r22
    %r25 = load i32, ptr %r0
    %r26 = add i32 0,1
    %r27 = sub i32 %r25,%r26
    store i32 %r27, ptr %r24
    %r28 = load i32, ptr %r22
    %r29 = load i32, ptr %r24
    %r30 = load i32, ptr %r2
    %r31 = load i32, ptr %r0
    call void @findSmallest(i32 %r28,i32 %r29,i32 %r30,i32 %r31)
    %r32 = add i32 0,0
    ret i32 %r32
}
define void @swap(i32 %r0,i32 %r1)
{
L0:
    %r4 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r5 = load i32, ptr %r2
    %r6 = getelementptr [1000 x i32], ptr @array, i32 0, i32 %r5
    %r7 = load i32, ptr %r6
    store i32 %r7, ptr %r4
    %r8 = load i32, ptr %r3
    %r9 = getelementptr [1000 x i32], ptr @array, i32 0, i32 %r8
    %r10 = load i32, ptr %r9
    %r11 = load i32, ptr %r2
    %r12 = getelementptr [1000 x i32], ptr @array, i32 0, i32 %r11
    store i32 %r10, ptr %r12
    %r13 = load i32, ptr %r4
    %r14 = load i32, ptr %r3
    %r15 = getelementptr [1000 x i32], ptr @array, i32 0, i32 %r14
    store i32 %r13, ptr %r15
    ret void
}
define i32 @findPivot(i32 %r0,i32 %r1)
{
L0:
    %r10 = alloca i32
    %r8 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r5 = load i32, ptr %r3
    %r6 = getelementptr [1000 x i32], ptr @array, i32 0, i32 %r5
    %r7 = load i32, ptr %r6
    store i32 %r7, ptr %r4
    %r9 = load i32, ptr %r2
    store i32 %r9, ptr %r8
    %r11 = load i32, ptr %r2
    store i32 %r11, ptr %r10
    %r12 = load i32, ptr %r10
    %r13 = load i32, ptr %r3
    %r14 = icmp slt i32 %r12,%r13
    br i1 %r14, label %L3, label %L5
L3:
    %r17 = load i32, ptr %r10
    %r18 = getelementptr [1000 x i32], ptr @array, i32 0, i32 %r17
    %r19 = load i32, ptr %r18
    %r20 = load i32, ptr %r4
    %r21 = icmp sle i32 %r19,%r20
    br i1 %r21, label %L6, label %L7
L4:
    %r32 = load i32, ptr %r10
    %r33 = load i32, ptr %r3
    %r34 = icmp slt i32 %r32,%r33
    br i1 %r34, label %L3, label %L5
L5:
    %r37 = load i32, ptr %r8
    %r38 = load i32, ptr %r3
    call void @swap(i32 %r37,i32 %r38)
    %r39 = load i32, ptr %r8
    ret i32 %r39
L6:
    %r24 = load i32, ptr %r10
    %r25 = load i32, ptr %r8
    call void @swap(i32 %r24,i32 %r25)
    %r26 = load i32, ptr %r8
    %r27 = add i32 0,1
    %r28 = add i32 %r26,%r27
    store i32 %r28, ptr %r8
    br label %L7
L7:
    %r29 = load i32, ptr %r10
    %r30 = add i32 0,1
    %r31 = add i32 %r29,%r30
    store i32 %r31, ptr %r10
    br label %L4
}
define void @findSmallest(i32 %r0,i32 %r1,i32 %r2,i32 %r3)
{
L0:
    %r22 = alloca i32
    %r13 = alloca i32
    %r4 = alloca i32
    store i32 %r0, ptr %r4
    %r5 = alloca i32
    store i32 %r1, ptr %r5
    %r6 = alloca i32
    store i32 %r2, ptr %r6
    %r7 = alloca i32
    store i32 %r3, ptr %r7
    br label %L1
L1:
    %r8 = load i32, ptr %r4
    %r9 = load i32, ptr %r5
    %r10 = icmp eq i32 %r8,%r9
    br i1 %r10, label %L2, label %L3
L2:
    ret void
L3:
    %r14 = load i32, ptr %r4
    %r15 = load i32, ptr %r5
    %r16 = call i32 @findPivot(i32 %r14,i32 %r15)
    store i32 %r16, ptr %r13
    %r17 = load i32, ptr %r6
    %r18 = load i32, ptr %r13
    %r19 = icmp eq i32 %r17,%r18
    br i1 %r19, label %L5, label %L6
L4:
    ret void
L5:
    %r23 = add i32 0,0
    store i32 %r23, ptr %r22
    %r24 = load i32, ptr %r22
    %r25 = load i32, ptr %r13
    %r26 = icmp slt i32 %r24,%r25
    br i1 %r26, label %L9, label %L11
L6:
    %r41 = load i32, ptr %r6
    %r42 = load i32, ptr %r13
    %r43 = icmp slt i32 %r41,%r42
    br i1 %r43, label %L12, label %L13
L7:
    br label %L4
L9:
    %r29 = load i32, ptr %r22
    %r30 = getelementptr [1000 x i32], ptr @array, i32 0, i32 %r29
    %r31 = load i32, ptr %r30
    call void @putint(i32 %r31)
    %r32 = load i32, ptr @space
    call void @putch(i32 %r32)
    %r33 = load i32, ptr %r22
    %r34 = add i32 0,1
    %r35 = add i32 %r33,%r34
    store i32 %r35, ptr %r22
    br label %L10
L10:
    %r36 = load i32, ptr %r22
    %r37 = load i32, ptr %r13
    %r38 = icmp slt i32 %r36,%r37
    br i1 %r38, label %L9, label %L11
L11:
    br label %L7
L12:
    %r46 = load i32, ptr %r4
    %r47 = load i32, ptr %r13
    %r48 = add i32 0,1
    %r49 = sub i32 %r47,%r48
    %r50 = load i32, ptr %r6
    %r51 = load i32, ptr %r7
    call void @findSmallest(i32 %r46,i32 %r49,i32 %r50,i32 %r51)
    br label %L14
L13:
    %r52 = load i32, ptr %r13
    %r53 = add i32 0,1
    %r54 = add i32 %r52,%r53
    %r55 = load i32, ptr %r5
    %r56 = load i32, ptr %r6
    %r57 = load i32, ptr %r7
    call void @findSmallest(i32 %r54,i32 %r55,i32 %r56,i32 %r57)
    br label %L14
L14:
    br label %L7
}
