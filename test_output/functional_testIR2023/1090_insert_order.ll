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
@N = global i32 zeroinitializer
define i32 @insert(ptr %r0,i32 %r1)
{
L0:
    %r4 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r1, ptr %r2
    br label %L1
L1:
    store i32 0, ptr %r3
    store i32 0, ptr %r4
    %r5 = add i32 0,0
    store i32 %r5, ptr %r3
    br label %L2
L2:
    %r6 = load i32, ptr %r2
    %r7 = load i32, ptr %r3
    %r8 = getelementptr i32, ptr %r0, i32 %r7
    %r9 = load i32, ptr %r8
    %r10 = icmp sgt i32 %r6,%r9
    br i1 %r10, label %L5, label %L4
L3:
    %r14 = load i32, ptr %r3
    %r15 = add i32 1,0
    %r16 = add i32 %r14,%r15
    store i32 %r16, ptr %r3
    br label %L2
L4:
    %r17 = load i32, ptr @N
    store i32 %r17, ptr %r4
    br label %L6
L5:
    %r11 = load i32, ptr %r3
    %r12 = load i32, ptr @N
    %r13 = icmp slt i32 %r11,%r12
    br i1 %r13, label %L3, label %L4
L6:
    %r18 = load i32, ptr %r4
    %r19 = load i32, ptr %r3
    %r20 = icmp sgt i32 %r18,%r19
    br i1 %r20, label %L7, label %L8
L7:
    %r21 = load i32, ptr %r4
    %r22 = getelementptr i32, ptr %r0, i32 %r21
    %r23 = load i32, ptr %r4
    %r24 = add i32 1,0
    %r25 = sub i32 %r23,%r24
    %r26 = getelementptr i32, ptr %r0, i32 %r25
    %r27 = load i32, ptr %r26
    store i32 %r27, ptr %r22
    %r28 = load i32, ptr %r3
    %r29 = getelementptr i32, ptr %r0, i32 %r28
    %r30 = load i32, ptr %r2
    store i32 %r30, ptr %r29
    %r31 = load i32, ptr %r4
    %r32 = add i32 1,0
    %r33 = sub i32 %r31,%r32
    store i32 %r33, ptr %r4
    br label %L6
L8:
    %r34 = add i32 0,0
    ret i32 %r34
}
define i32 @main()
{
L0:
    %r33 = alloca i32
    %r32 = alloca i32
    %r1 = alloca [11 x i32]
    br label %L1
L1:
    %r0 = add i32 10,0
    store i32 %r0, ptr @N
    %r2 = add i32 0,0
    %r3 = getelementptr [11 x i32], ptr %r1, i32 0, i32 %r2
    %r4 = add i32 1,0
    store i32 %r4, ptr %r3
    %r5 = add i32 1,0
    %r6 = getelementptr [11 x i32], ptr %r1, i32 0, i32 %r5
    %r7 = add i32 3,0
    store i32 %r7, ptr %r6
    %r8 = add i32 2,0
    %r9 = getelementptr [11 x i32], ptr %r1, i32 0, i32 %r8
    %r10 = add i32 4,0
    store i32 %r10, ptr %r9
    %r11 = add i32 3,0
    %r12 = getelementptr [11 x i32], ptr %r1, i32 0, i32 %r11
    %r13 = add i32 7,0
    store i32 %r13, ptr %r12
    %r14 = add i32 4,0
    %r15 = getelementptr [11 x i32], ptr %r1, i32 0, i32 %r14
    %r16 = add i32 8,0
    store i32 %r16, ptr %r15
    %r17 = add i32 5,0
    %r18 = getelementptr [11 x i32], ptr %r1, i32 0, i32 %r17
    %r19 = add i32 11,0
    store i32 %r19, ptr %r18
    %r20 = add i32 6,0
    %r21 = getelementptr [11 x i32], ptr %r1, i32 0, i32 %r20
    %r22 = add i32 13,0
    store i32 %r22, ptr %r21
    %r23 = add i32 7,0
    %r24 = getelementptr [11 x i32], ptr %r1, i32 0, i32 %r23
    %r25 = add i32 18,0
    store i32 %r25, ptr %r24
    %r26 = add i32 8,0
    %r27 = getelementptr [11 x i32], ptr %r1, i32 0, i32 %r26
    %r28 = add i32 56,0
    store i32 %r28, ptr %r27
    %r29 = add i32 9,0
    %r30 = getelementptr [11 x i32], ptr %r1, i32 0, i32 %r29
    %r31 = add i32 78,0
    store i32 %r31, ptr %r30
    store i32 0, ptr %r32
    store i32 0, ptr %r33
    %r34 = add i32 0,0
    store i32 %r34, ptr %r33
    %r35 = call i32 @getint()
    store i32 %r35, ptr %r32
    %r36 = getelementptr [11 x i32], ptr %r1, i32 0
    %r37 = load i32, ptr %r32
    %r38 = call i32 @insert(ptr %r36,i32 %r37)
    store i32 %r38, ptr %r32
    br label %L2
L2:
    %r39 = load i32, ptr %r33
    %r40 = load i32, ptr @N
    %r41 = icmp slt i32 %r39,%r40
    br i1 %r41, label %L3, label %L4
L3:
    %r42 = load i32, ptr %r33
    %r43 = getelementptr [11 x i32], ptr %r1, i32 0, i32 %r42
    %r44 = load i32, ptr %r43
    store i32 %r44, ptr %r32
    %r45 = load i32, ptr %r32
    call void @putint(i32 %r45)
    %r46 = add i32 10,0
    store i32 %r46, ptr %r32
    %r47 = load i32, ptr %r32
    call void @putch(i32 %r47)
    %r48 = load i32, ptr %r33
    %r49 = add i32 1,0
    %r50 = add i32 %r48,%r49
    store i32 %r50, ptr %r33
    br label %L2
L4:
    %r51 = add i32 0,0
    ret i32 %r51
}
