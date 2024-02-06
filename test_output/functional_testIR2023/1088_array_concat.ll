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
    %r24 = alloca i32
    %r3 = alloca i32
    br label %L1
L1:
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r5 = add i32 0,0
    store i32 %r5, ptr %r3
    %r6 = load i32, ptr %r3
    %r7 = add i32 0,3
    %r8 = icmp slt i32 %r6,%r7
    br i1 %r8, label %L3, label %L5
L3:
    %r11 = load i32, ptr %r3
    %r12 = getelementptr i32, ptr %r0, i32 %r11
    %r13 = load i32, ptr %r12
    %r14 = load i32, ptr %r3
    %r15 = getelementptr i32, ptr %r2, i32 %r14
    store i32 %r13, ptr %r15
    %r16 = load i32, ptr %r3
    %r17 = add i32 0,1
    %r18 = add i32 %r16,%r17
    store i32 %r18, ptr %r3
    br label %L4
L4:
    %r19 = load i32, ptr %r3
    %r20 = add i32 0,3
    %r21 = icmp slt i32 %r19,%r20
    br i1 %r21, label %L3, label %L5
L5:
    %r25 = add i32 0,0
    store i32 %r25, ptr %r24
    %r26 = add i32 0,0
    store i32 %r26, ptr %r24
    %r27 = load i32, ptr %r24
    %r28 = add i32 0,3
    %r29 = icmp slt i32 %r27,%r28
    br i1 %r29, label %L7, label %L9
L7:
    %r32 = load i32, ptr %r24
    %r33 = getelementptr i32, ptr %r1, i32 %r32
    %r34 = load i32, ptr %r33
    %r35 = load i32, ptr %r3
    %r36 = getelementptr i32, ptr %r2, i32 %r35
    store i32 %r34, ptr %r36
    %r37 = load i32, ptr %r3
    %r38 = add i32 0,1
    %r39 = add i32 %r37,%r38
    store i32 %r39, ptr %r3
    %r40 = load i32, ptr %r24
    %r41 = add i32 0,1
    %r42 = add i32 %r40,%r41
    store i32 %r42, ptr %r24
    br label %L8
L8:
    %r43 = load i32, ptr %r24
    %r44 = add i32 0,3
    %r45 = icmp slt i32 %r43,%r44
    br i1 %r45, label %L7, label %L9
L9:
    %r48 = add i32 0,0
    ret i32 %r48
}
define i32 @main()
{
L0:
    %r47 = alloca i32
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
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r11 = add i32 0,0
    store i32 %r11, ptr %r9
    %r12 = load i32, ptr %r9
    %r13 = add i32 0,3
    %r14 = icmp slt i32 %r12,%r13
    br i1 %r14, label %L3, label %L5
L3:
    %r17 = load i32, ptr %r9
    %r18 = load i32, ptr %r9
    %r19 = getelementptr [3 x i32], ptr %r0, i32 0, i32 %r18
    store i32 %r17, ptr %r19
    %r20 = load i32, ptr %r9
    %r21 = load i32, ptr %r9
    %r22 = getelementptr [3 x i32], ptr %r1, i32 0, i32 %r21
    store i32 %r20, ptr %r22
    %r23 = load i32, ptr %r9
    %r24 = load i32, ptr %r9
    %r25 = getelementptr [3 x i32], ptr %r2, i32 0, i32 %r24
    store i32 %r23, ptr %r25
    %r26 = load i32, ptr %r9
    %r27 = load i32, ptr %r9
    %r28 = getelementptr [3 x i32], ptr %r3, i32 0, i32 %r27
    store i32 %r26, ptr %r28
    %r29 = load i32, ptr %r9
    %r30 = load i32, ptr %r9
    %r31 = getelementptr [3 x i32], ptr %r4, i32 0, i32 %r30
    store i32 %r29, ptr %r31
    %r32 = load i32, ptr %r9
    %r33 = load i32, ptr %r9
    %r34 = getelementptr [3 x i32], ptr %r5, i32 0, i32 %r33
    store i32 %r32, ptr %r34
    %r35 = load i32, ptr %r9
    %r36 = add i32 0,1
    %r37 = add i32 %r35,%r36
    store i32 %r37, ptr %r9
    br label %L4
L4:
    %r38 = load i32, ptr %r9
    %r39 = add i32 0,3
    %r40 = icmp slt i32 %r38,%r39
    br i1 %r40, label %L3, label %L5
L5:
    %r43 = getelementptr i32, ptr %r0, i32 0
    %r44 = getelementptr i32, ptr %r3, i32 0
    %r45 = getelementptr i32, ptr %r6, i32 0
    %r46 = call i32 @concat(ptr %r43,ptr %r44,ptr %r45)
    store i32 %r46, ptr %r9
    %r48 = add i32 0,0
    store i32 %r48, ptr %r47
    %r49 = load i32, ptr %r9
    %r50 = add i32 0,6
    %r51 = icmp slt i32 %r49,%r50
    br i1 %r51, label %L7, label %L9
L7:
    %r54 = load i32, ptr %r9
    %r55 = getelementptr [6 x i32], ptr %r6, i32 0, i32 %r54
    %r56 = load i32, ptr %r55
    store i32 %r56, ptr %r47
    %r57 = load i32, ptr %r47
    call void @putint(i32 %r57)
    %r58 = load i32, ptr %r9
    %r59 = add i32 0,1
    %r60 = add i32 %r58,%r59
    store i32 %r60, ptr %r9
    br label %L8
L8:
    %r61 = load i32, ptr %r9
    %r62 = add i32 0,6
    %r63 = icmp slt i32 %r61,%r62
    br i1 %r63, label %L7, label %L9
L9:
    %r66 = add i32 0,10
    store i32 %r66, ptr %r47
    %r67 = load i32, ptr %r47
    call void @putch(i32 %r67)
    %r68 = add i32 0,0
    ret i32 %r68
}
