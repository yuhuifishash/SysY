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
define i32 @concat(ptr %r0,ptr %r1,ptr %r2)
{
L0:
    %r16 = alloca i32
    %r3 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r3
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    br label %L2
L2:
    %r5 = load i32, ptr %r3
    %r6 = add i32 3,0
    %r7 = icmp slt i32 %r5,%r6
    br i1 %r7, label %L3, label %L4
L3:
    %r8 = load i32, ptr %r3
    %r9 = getelementptr i32, ptr %r2, i32 %r8
    %r10 = load i32, ptr %r3
    %r11 = getelementptr i32, ptr %r0, i32 %r10
    %r12 = load i32, ptr %r11
    store i32 %r12, ptr %r9
    %r13 = load i32, ptr %r3
    %r14 = add i32 1,0
    %r15 = add i32 %r13,%r14
    store i32 %r15, ptr %r3
    br label %L2
L4:
    store i32 0, ptr %r16
    %r17 = add i32 0,0
    store i32 %r17, ptr %r16
    br label %L5
L5:
    %r18 = load i32, ptr %r16
    %r19 = add i32 3,0
    %r20 = icmp slt i32 %r18,%r19
    br i1 %r20, label %L6, label %L7
L6:
    %r21 = load i32, ptr %r3
    %r22 = getelementptr i32, ptr %r2, i32 %r21
    %r23 = load i32, ptr %r16
    %r24 = getelementptr i32, ptr %r1, i32 %r23
    %r25 = load i32, ptr %r24
    store i32 %r25, ptr %r22
    %r26 = load i32, ptr %r3
    %r27 = add i32 1,0
    %r28 = add i32 %r26,%r27
    store i32 %r28, ptr %r3
    %r29 = load i32, ptr %r16
    %r30 = add i32 1,0
    %r31 = add i32 %r29,%r30
    store i32 %r31, ptr %r16
    br label %L5
L7:
    %r32 = add i32 0,0
    ret i32 %r32
}
define i32 @main()
{
L0:
    %r39 = alloca i32
    %r9 = alloca i32
    %r8 = alloca [3 x i32]
    %r7 = alloca [3 x i32]
    %r6 = alloca [6 x i32]
    %r5 = alloca [3 x i32]
    %r4 = alloca [3 x i32]
    %r3 = alloca [3 x i32]
    %r2 = alloca [3 x i32]
    %r1 = alloca [3 x i32]
    %r0 = alloca [3 x i32]
    br label %L1
L1:
    store i32 0, ptr %r9
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    br label %L2
L2:
    %r11 = load i32, ptr %r9
    %r12 = add i32 3,0
    %r13 = icmp slt i32 %r11,%r12
    br i1 %r13, label %L3, label %L4
L3:
    %r14 = load i32, ptr %r9
    %r15 = getelementptr [3 x i32], ptr %r0, i32 0, i32 %r14
    %r16 = load i32, ptr %r9
    store i32 %r16, ptr %r15
    %r17 = load i32, ptr %r9
    %r18 = getelementptr [3 x i32], ptr %r1, i32 0, i32 %r17
    %r19 = load i32, ptr %r9
    store i32 %r19, ptr %r18
    %r20 = load i32, ptr %r9
    %r21 = getelementptr [3 x i32], ptr %r2, i32 0, i32 %r20
    %r22 = load i32, ptr %r9
    store i32 %r22, ptr %r21
    %r23 = load i32, ptr %r9
    %r24 = getelementptr [3 x i32], ptr %r3, i32 0, i32 %r23
    %r25 = load i32, ptr %r9
    store i32 %r25, ptr %r24
    %r26 = load i32, ptr %r9
    %r27 = getelementptr [3 x i32], ptr %r4, i32 0, i32 %r26
    %r28 = load i32, ptr %r9
    store i32 %r28, ptr %r27
    %r29 = load i32, ptr %r9
    %r30 = getelementptr [3 x i32], ptr %r5, i32 0, i32 %r29
    %r31 = load i32, ptr %r9
    store i32 %r31, ptr %r30
    %r32 = load i32, ptr %r9
    %r33 = add i32 1,0
    %r34 = add i32 %r32,%r33
    store i32 %r34, ptr %r9
    br label %L2
L4:
    %r35 = getelementptr [3 x i32], ptr %r0, i32 0
    %r36 = getelementptr [3 x i32], ptr %r3, i32 0
    %r37 = getelementptr [6 x i32], ptr %r6, i32 0
    %r38 = call i32 @concat(ptr %r35,ptr %r36,ptr %r37)
    store i32 %r38, ptr %r9
    store i32 0, ptr %r39
    br label %L5
L5:
    %r40 = load i32, ptr %r9
    %r41 = add i32 6,0
    %r42 = icmp slt i32 %r40,%r41
    br i1 %r42, label %L6, label %L7
L6:
    %r43 = load i32, ptr %r9
    %r44 = getelementptr [6 x i32], ptr %r6, i32 0, i32 %r43
    %r45 = load i32, ptr %r44
    store i32 %r45, ptr %r39
    %r46 = load i32, ptr %r39
    call void @putint(i32 %r46)
    %r47 = load i32, ptr %r9
    %r48 = add i32 1,0
    %r49 = add i32 %r47,%r48
    store i32 %r49, ptr %r9
    br label %L5
L7:
    %r50 = add i32 10,0
    store i32 %r50, ptr %r39
    %r51 = load i32, ptr %r39
    call void @putch(i32 %r51)
    %r52 = add i32 0,0
    ret i32 %r52
}
