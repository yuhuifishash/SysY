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
define void @swap(i32 %r0,i32 %r1)
{
L0:
    %r4 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r5 = load i32, ptr %r2
    %r6 = getelementptr [1000 x i32], ptr @array, i32 0, i32 %r5
    %r7 = load i32, ptr %r6
    store i32 %r7, ptr %r4
    %r8 = load i32, ptr %r2
    %r9 = getelementptr [1000 x i32], ptr @array, i32 0, i32 %r8
    %r10 = load i32, ptr %r3
    %r11 = getelementptr [1000 x i32], ptr @array, i32 0, i32 %r10
    %r12 = load i32, ptr %r11
    store i32 %r12, ptr %r9
    %r13 = load i32, ptr %r3
    %r14 = getelementptr [1000 x i32], ptr @array, i32 0, i32 %r13
    %r15 = load i32, ptr %r4
    store i32 %r15, ptr %r14
    ret void
}
define i32 @findPivot(i32 %r0,i32 %r1)
{
L0:
    %r10 = alloca i32
    %r8 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
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
    br label %L2
L2:
    %r12 = load i32, ptr %r10
    %r13 = load i32, ptr %r3
    %r14 = icmp slt i32 %r12,%r13
    br i1 %r14, label %L3, label %L4
L3:
    %r15 = load i32, ptr %r10
    %r16 = getelementptr [1000 x i32], ptr @array, i32 0, i32 %r15
    %r17 = load i32, ptr %r16
    %r18 = load i32, ptr %r4
    %r19 = icmp sle i32 %r17,%r18
    br i1 %r19, label %L5, label %L6
L4:
    %r28 = load i32, ptr %r8
    %r29 = load i32, ptr %r3
    call void @swap(i32 %r28,i32 %r29)
    %r30 = load i32, ptr %r8
    ret i32 %r30
L5:
    %r20 = load i32, ptr %r10
    %r21 = load i32, ptr %r8
    call void @swap(i32 %r20,i32 %r21)
    %r22 = load i32, ptr %r8
    %r23 = add i32 1,0
    %r24 = add i32 %r22,%r23
    store i32 %r24, ptr %r8
    br label %L6
L6:
    %r25 = load i32, ptr %r10
    %r26 = add i32 1,0
    %r27 = add i32 %r25,%r26
    store i32 %r27, ptr %r10
    br label %L2
}
define void @findSmallest(i32 %r0,i32 %r1,i32 %r2,i32 %r3)
{
L0:
    %r18 = alloca i32
    %r11 = alloca i32
    %r7 = alloca i32
    %r6 = alloca i32
    %r5 = alloca i32
    %r4 = alloca i32
    store i32 %r0, ptr %r4
    store i32 %r1, ptr %r5
    store i32 %r2, ptr %r6
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
    %r12 = load i32, ptr %r4
    %r13 = load i32, ptr %r5
    %r14 = call i32 @findPivot(i32 %r12,i32 %r13)
    store i32 %r14, ptr %r11
    %r15 = load i32, ptr %r6
    %r16 = load i32, ptr %r11
    %r17 = icmp eq i32 %r15,%r16
    br i1 %r17, label %L5, label %L6
L4:
    ret void
L5:
    %r19 = add i32 0,0
    store i32 %r19, ptr %r18
    br label %L8
L6:
    %r30 = load i32, ptr %r6
    %r31 = load i32, ptr %r11
    %r32 = icmp slt i32 %r30,%r31
    br i1 %r32, label %L11, label %L12
L7:
    br label %L4
L8:
    %r20 = load i32, ptr %r18
    %r21 = load i32, ptr %r11
    %r22 = icmp slt i32 %r20,%r21
    br i1 %r22, label %L9, label %L10
L9:
    %r23 = load i32, ptr %r18
    %r24 = getelementptr [1000 x i32], ptr @array, i32 0, i32 %r23
    %r25 = load i32, ptr %r24
    call void @putint(i32 %r25)
    %r26 = load i32, ptr @space
    call void @putch(i32 %r26)
    %r27 = load i32, ptr %r18
    %r28 = add i32 1,0
    %r29 = add i32 %r27,%r28
    store i32 %r29, ptr %r18
    br label %L8
L10:
    br label %L7
L11:
    %r33 = load i32, ptr %r4
    %r34 = load i32, ptr %r11
    %r35 = add i32 1,0
    %r36 = sub i32 %r34,%r35
    %r37 = load i32, ptr %r6
    %r38 = load i32, ptr %r7
    call void @findSmallest(i32 %r33,i32 %r36,i32 %r37,i32 %r38)
    br label %L13
L12:
    %r39 = load i32, ptr %r11
    %r40 = add i32 1,0
    %r41 = add i32 %r39,%r40
    %r42 = load i32, ptr %r5
    %r43 = load i32, ptr %r6
    %r44 = load i32, ptr %r7
    call void @findSmallest(i32 %r41,i32 %r42,i32 %r43,i32 %r44)
    br label %L13
L13:
    br label %L7
}
define i32 @main()
{
L0:
    %r17 = alloca i32
    %r15 = alloca i32
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
    br label %L2
L2:
    %r6 = load i32, ptr %r4
    %r7 = load i32, ptr %r0
    %r8 = icmp slt i32 %r6,%r7
    br i1 %r8, label %L3, label %L4
L3:
    %r9 = load i32, ptr %r4
    %r10 = getelementptr [1000 x i32], ptr @array, i32 0, i32 %r9
    %r11 = call i32 @getint()
    store i32 %r11, ptr %r10
    %r12 = load i32, ptr %r4
    %r13 = add i32 1,0
    %r14 = add i32 %r12,%r13
    store i32 %r14, ptr %r4
    br label %L2
L4:
    %r16 = add i32 0,0
    store i32 %r16, ptr %r15
    %r18 = load i32, ptr %r0
    %r19 = add i32 1,0
    %r20 = sub i32 %r18,%r19
    store i32 %r20, ptr %r17
    %r21 = load i32, ptr %r15
    %r22 = load i32, ptr %r17
    %r23 = load i32, ptr %r2
    %r24 = load i32, ptr %r0
    call void @findSmallest(i32 %r21,i32 %r22,i32 %r23,i32 %r24)
    %r25 = add i32 0,0
    ret i32 %r25
}
