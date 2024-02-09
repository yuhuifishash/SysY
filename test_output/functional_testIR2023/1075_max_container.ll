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
define i32 @maxArea(ptr %r0,i32 %r1)
{
L0:
    %r15 = alloca i32
    %r9 = alloca i32
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
    %r6 = load i32, ptr %r2
    %r7 = add i32 1,0
    %r8 = sub i32 %r6,%r7
    store i32 %r8, ptr %r4
    store i32 0, ptr %r9
    %r10 = add i32 1,0
    %r11 = sub i32 0,%r10
    store i32 %r11, ptr %r9
    br label %L2
L2:
    %r12 = load i32, ptr %r3
    %r13 = load i32, ptr %r4
    %r14 = icmp slt i32 %r12,%r13
    br i1 %r14, label %L3, label %L4
L3:
    store i32 0, ptr %r15
    %r16 = load i32, ptr %r3
    %r17 = getelementptr i32, ptr %r0, i32 %r16
    %r18 = load i32, ptr %r17
    %r19 = load i32, ptr %r4
    %r20 = getelementptr i32, ptr %r0, i32 %r19
    %r21 = load i32, ptr %r20
    %r22 = icmp slt i32 %r18,%r21
    br i1 %r22, label %L5, label %L6
L4:
    %r54 = load i32, ptr %r9
    ret i32 %r54
L5:
    %r23 = load i32, ptr %r4
    %r24 = load i32, ptr %r3
    %r25 = sub i32 %r23,%r24
    %r26 = load i32, ptr %r3
    %r27 = getelementptr i32, ptr %r0, i32 %r26
    %r28 = load i32, ptr %r27
    %r29 = mul i32 %r25,%r28
    store i32 %r29, ptr %r15
    br label %L7
L6:
    %r30 = load i32, ptr %r4
    %r31 = load i32, ptr %r3
    %r32 = sub i32 %r30,%r31
    %r33 = load i32, ptr %r4
    %r34 = getelementptr i32, ptr %r0, i32 %r33
    %r35 = load i32, ptr %r34
    %r36 = mul i32 %r32,%r35
    store i32 %r36, ptr %r15
    br label %L7
L7:
    %r37 = load i32, ptr %r15
    %r38 = load i32, ptr %r9
    %r39 = icmp sgt i32 %r37,%r38
    br i1 %r39, label %L8, label %L9
L8:
    %r40 = load i32, ptr %r15
    store i32 %r40, ptr %r9
    br label %L9
L9:
    %r41 = load i32, ptr %r3
    %r42 = getelementptr i32, ptr %r0, i32 %r41
    %r43 = load i32, ptr %r42
    %r44 = load i32, ptr %r4
    %r45 = getelementptr i32, ptr %r0, i32 %r44
    %r46 = load i32, ptr %r45
    %r47 = icmp sgt i32 %r43,%r46
    br i1 %r47, label %L10, label %L11
L10:
    %r48 = load i32, ptr %r4
    %r49 = add i32 1,0
    %r50 = sub i32 %r48,%r49
    store i32 %r50, ptr %r4
    br label %L12
L11:
    %r51 = load i32, ptr %r3
    %r52 = add i32 1,0
    %r53 = add i32 %r51,%r52
    store i32 %r53, ptr %r3
    br label %L12
L12:
    br label %L2
}
define i32 @main()
{
L0:
    %r1 = alloca [10 x i32]
    %r0 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r0
    %r2 = add i32 0,0
    %r3 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r2
    %r4 = add i32 3,0
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
    %r13 = add i32 0,0
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
    %r22 = add i32 1,0
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
    %r32 = add i32 10,0
    store i32 %r32, ptr %r0
    %r33 = getelementptr [10 x i32], ptr %r1, i32 0
    %r34 = load i32, ptr %r0
    %r35 = call i32 @maxArea(ptr %r33,i32 %r34)
    store i32 %r35, ptr %r0
    %r36 = load i32, ptr %r0
    ret i32 %r36
}
