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
@M = global i32 zeroinitializer
@L = global i32 zeroinitializer
@N = global i32 zeroinitializer
define i32 @tran(ptr %r0,ptr %r1,ptr %r2,ptr %r3,ptr %r4,ptr %r5,ptr %r6,ptr %r7,ptr %r8)
{
L0:
    %r9 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r9
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r11 = add i32 2,0
    %r12 = getelementptr i32, ptr %r7, i32 %r11
    %r13 = add i32 1,0
    %r14 = getelementptr i32, ptr %r2, i32 %r13
    %r15 = load i32, ptr %r14
    store i32 %r15, ptr %r12
    %r16 = add i32 1,0
    %r17 = getelementptr i32, ptr %r8, i32 %r16
    %r18 = add i32 2,0
    %r19 = getelementptr i32, ptr %r1, i32 %r18
    %r20 = load i32, ptr %r19
    store i32 %r20, ptr %r17
    %r21 = add i32 1,0
    %r22 = getelementptr i32, ptr %r6, i32 %r21
    %r23 = add i32 0,0
    %r24 = getelementptr i32, ptr %r1, i32 %r23
    %r25 = load i32, ptr %r24
    store i32 %r25, ptr %r22
    %r26 = add i32 2,0
    %r27 = getelementptr i32, ptr %r6, i32 %r26
    %r28 = add i32 0,0
    %r29 = getelementptr i32, ptr %r2, i32 %r28
    %r30 = load i32, ptr %r29
    store i32 %r30, ptr %r27
    %r31 = add i32 0,0
    %r32 = getelementptr i32, ptr %r7, i32 %r31
    %r33 = add i32 1,0
    %r34 = getelementptr i32, ptr %r0, i32 %r33
    %r35 = load i32, ptr %r34
    store i32 %r35, ptr %r32
    %r36 = add i32 0,0
    %r37 = getelementptr i32, ptr %r8, i32 %r36
    %r38 = add i32 2,0
    %r39 = getelementptr i32, ptr %r0, i32 %r38
    %r40 = load i32, ptr %r39
    store i32 %r40, ptr %r37
    %r41 = add i32 1,0
    %r42 = getelementptr i32, ptr %r7, i32 %r41
    %r43 = add i32 1,0
    %r44 = getelementptr i32, ptr %r1, i32 %r43
    %r45 = load i32, ptr %r44
    store i32 %r45, ptr %r42
    %r46 = add i32 2,0
    %r47 = getelementptr i32, ptr %r8, i32 %r46
    %r48 = add i32 2,0
    %r49 = getelementptr i32, ptr %r2, i32 %r48
    %r50 = load i32, ptr %r49
    store i32 %r50, ptr %r47
    %r51 = add i32 0,0
    %r52 = getelementptr i32, ptr %r6, i32 %r51
    %r53 = add i32 0,0
    %r54 = getelementptr i32, ptr %r0, i32 %r53
    %r55 = load i32, ptr %r54
    store i32 %r55, ptr %r52
    %r56 = add i32 0,0
    ret i32 %r56
}
define i32 @main()
{
L0:
    %r48 = alloca i32
    %r12 = alloca i32
    %r11 = alloca [3 x i32]
    %r10 = alloca [3 x i32]
    %r9 = alloca [6 x i32]
    %r8 = alloca [3 x i32]
    %r7 = alloca [3 x i32]
    %r6 = alloca [3 x i32]
    %r5 = alloca [3 x i32]
    %r4 = alloca [3 x i32]
    %r3 = alloca [3 x i32]
    br label %L1
L1:
    %r0 = add i32 3,0
    store i32 %r0, ptr @N
    %r1 = add i32 3,0
    store i32 %r1, ptr @M
    %r2 = add i32 3,0
    store i32 %r2, ptr @L
    store i32 0, ptr %r12
    %r13 = add i32 0,0
    store i32 %r13, ptr %r12
    br label %L2
L2:
    %r14 = load i32, ptr %r12
    %r15 = load i32, ptr @M
    %r16 = icmp slt i32 %r14,%r15
    br i1 %r16, label %L3, label %L4
L3:
    %r17 = load i32, ptr %r12
    %r18 = getelementptr [3 x i32], ptr %r3, i32 0, i32 %r17
    %r19 = load i32, ptr %r12
    store i32 %r19, ptr %r18
    %r20 = load i32, ptr %r12
    %r21 = getelementptr [3 x i32], ptr %r4, i32 0, i32 %r20
    %r22 = load i32, ptr %r12
    store i32 %r22, ptr %r21
    %r23 = load i32, ptr %r12
    %r24 = getelementptr [3 x i32], ptr %r5, i32 0, i32 %r23
    %r25 = load i32, ptr %r12
    store i32 %r25, ptr %r24
    %r26 = load i32, ptr %r12
    %r27 = getelementptr [3 x i32], ptr %r6, i32 0, i32 %r26
    %r28 = load i32, ptr %r12
    store i32 %r28, ptr %r27
    %r29 = load i32, ptr %r12
    %r30 = getelementptr [3 x i32], ptr %r7, i32 0, i32 %r29
    %r31 = load i32, ptr %r12
    store i32 %r31, ptr %r30
    %r32 = load i32, ptr %r12
    %r33 = getelementptr [3 x i32], ptr %r8, i32 0, i32 %r32
    %r34 = load i32, ptr %r12
    store i32 %r34, ptr %r33
    %r35 = load i32, ptr %r12
    %r36 = add i32 1,0
    %r37 = add i32 %r35,%r36
    store i32 %r37, ptr %r12
    br label %L2
L4:
    %r38 = getelementptr [3 x i32], ptr %r3, i32 0
    %r39 = getelementptr [3 x i32], ptr %r4, i32 0
    %r40 = getelementptr [3 x i32], ptr %r5, i32 0
    %r41 = getelementptr [3 x i32], ptr %r6, i32 0
    %r42 = getelementptr [3 x i32], ptr %r7, i32 0
    %r43 = getelementptr [3 x i32], ptr %r8, i32 0
    %r44 = getelementptr [6 x i32], ptr %r9, i32 0
    %r45 = getelementptr [3 x i32], ptr %r10, i32 0
    %r46 = getelementptr [3 x i32], ptr %r11, i32 0
    %r47 = call i32 @tran(ptr %r38,ptr %r39,ptr %r40,ptr %r41,ptr %r42,ptr %r43,ptr %r44,ptr %r45,ptr %r46)
    store i32 %r47, ptr %r12
    store i32 0, ptr %r48
    br label %L5
L5:
    %r49 = load i32, ptr %r12
    %r50 = load i32, ptr @N
    %r51 = icmp slt i32 %r49,%r50
    br i1 %r51, label %L6, label %L7
L6:
    %r52 = load i32, ptr %r12
    %r53 = getelementptr [6 x i32], ptr %r9, i32 0, i32 %r52
    %r54 = load i32, ptr %r53
    store i32 %r54, ptr %r48
    %r55 = load i32, ptr %r48
    call void @putint(i32 %r55)
    %r56 = load i32, ptr %r12
    %r57 = add i32 1,0
    %r58 = add i32 %r56,%r57
    store i32 %r58, ptr %r12
    br label %L5
L7:
    %r59 = add i32 10,0
    store i32 %r59, ptr %r48
    %r60 = load i32, ptr %r48
    call void @putch(i32 %r60)
    %r61 = add i32 0,0
    store i32 %r61, ptr %r12
    br label %L8
L8:
    %r62 = load i32, ptr %r12
    %r63 = load i32, ptr @N
    %r64 = icmp slt i32 %r62,%r63
    br i1 %r64, label %L9, label %L10
L9:
    %r65 = load i32, ptr %r12
    %r66 = getelementptr [3 x i32], ptr %r10, i32 0, i32 %r65
    %r67 = load i32, ptr %r66
    store i32 %r67, ptr %r48
    %r68 = load i32, ptr %r48
    call void @putint(i32 %r68)
    %r69 = load i32, ptr %r12
    %r70 = add i32 1,0
    %r71 = add i32 %r69,%r70
    store i32 %r71, ptr %r12
    br label %L8
L10:
    %r72 = add i32 10,0
    store i32 %r72, ptr %r48
    %r73 = add i32 0,0
    store i32 %r73, ptr %r12
    %r74 = load i32, ptr %r48
    call void @putch(i32 %r74)
    br label %L11
L11:
    %r75 = load i32, ptr %r12
    %r76 = load i32, ptr @N
    %r77 = icmp slt i32 %r75,%r76
    br i1 %r77, label %L12, label %L13
L12:
    %r78 = load i32, ptr %r12
    %r79 = getelementptr [3 x i32], ptr %r11, i32 0, i32 %r78
    %r80 = load i32, ptr %r79
    store i32 %r80, ptr %r48
    %r81 = load i32, ptr %r48
    call void @putint(i32 %r81)
    %r82 = load i32, ptr %r12
    %r83 = add i32 1,0
    %r84 = add i32 %r82,%r83
    store i32 %r84, ptr %r12
    br label %L11
L13:
    %r85 = add i32 10,0
    store i32 %r85, ptr %r48
    %r86 = load i32, ptr %r48
    call void @putch(i32 %r86)
    %r87 = add i32 0,0
    ret i32 %r87
}
