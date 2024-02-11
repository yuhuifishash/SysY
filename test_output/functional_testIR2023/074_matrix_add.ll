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
define i32 @add(ptr %r0,ptr %r1,ptr %r2,ptr %r3,ptr %r4,ptr %r5,ptr %r6,ptr %r7,ptr %r8)
{
L0:
    %r9 = alloca i32
    br label %L1
L1:
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r11 = add i32 0,0
    store i32 %r11, ptr %r9
    br label %L2
L2:
    %r12 = load i32, ptr %r9
    %r13 = load i32, ptr @M
    %r14 = icmp slt i32 %r12,%r13
    br i1 %r14, label %L3, label %L4
L3:
    %r15 = load i32, ptr %r9
    %r16 = getelementptr i32, ptr %r6, i32 %r15
    %r17 = load i32, ptr %r9
    %r18 = getelementptr i32, ptr %r0, i32 %r17
    %r19 = load i32, ptr %r18
    %r20 = load i32, ptr %r9
    %r21 = getelementptr i32, ptr %r3, i32 %r20
    %r22 = load i32, ptr %r21
    %r23 = add i32 %r19,%r22
    store i32 %r23, ptr %r16
    %r24 = load i32, ptr %r9
    %r25 = getelementptr i32, ptr %r7, i32 %r24
    %r26 = load i32, ptr %r9
    %r27 = getelementptr i32, ptr %r1, i32 %r26
    %r28 = load i32, ptr %r27
    %r29 = load i32, ptr %r9
    %r30 = getelementptr i32, ptr %r4, i32 %r29
    %r31 = load i32, ptr %r30
    %r32 = add i32 %r28,%r31
    store i32 %r32, ptr %r25
    %r33 = load i32, ptr %r9
    %r34 = getelementptr i32, ptr %r8, i32 %r33
    %r35 = load i32, ptr %r9
    %r36 = getelementptr i32, ptr %r2, i32 %r35
    %r37 = load i32, ptr %r36
    %r38 = load i32, ptr %r9
    %r39 = getelementptr i32, ptr %r5, i32 %r38
    %r40 = load i32, ptr %r39
    %r41 = add i32 %r37,%r40
    store i32 %r41, ptr %r34
    %r42 = load i32, ptr %r9
    %r43 = add i32 1,0
    %r44 = add i32 %r42,%r43
    store i32 %r44, ptr %r9
    br label %L2
L4:
    %r45 = add i32 0,0
    ret i32 %r45
}
define i32 @main()
{
L0:
    %r49 = alloca i32
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
    %r13 = add i32 0,0
    store i32 %r13, ptr %r12
    %r14 = add i32 0,0
    store i32 %r14, ptr %r12
    br label %L2
L2:
    %r15 = load i32, ptr %r12
    %r16 = load i32, ptr @M
    %r17 = icmp slt i32 %r15,%r16
    br i1 %r17, label %L3, label %L4
L3:
    %r18 = load i32, ptr %r12
    %r19 = getelementptr [3 x i32], ptr %r3, i32 0, i32 %r18
    %r20 = load i32, ptr %r12
    store i32 %r20, ptr %r19
    %r21 = load i32, ptr %r12
    %r22 = getelementptr [3 x i32], ptr %r4, i32 0, i32 %r21
    %r23 = load i32, ptr %r12
    store i32 %r23, ptr %r22
    %r24 = load i32, ptr %r12
    %r25 = getelementptr [3 x i32], ptr %r5, i32 0, i32 %r24
    %r26 = load i32, ptr %r12
    store i32 %r26, ptr %r25
    %r27 = load i32, ptr %r12
    %r28 = getelementptr [3 x i32], ptr %r6, i32 0, i32 %r27
    %r29 = load i32, ptr %r12
    store i32 %r29, ptr %r28
    %r30 = load i32, ptr %r12
    %r31 = getelementptr [3 x i32], ptr %r7, i32 0, i32 %r30
    %r32 = load i32, ptr %r12
    store i32 %r32, ptr %r31
    %r33 = load i32, ptr %r12
    %r34 = getelementptr [3 x i32], ptr %r8, i32 0, i32 %r33
    %r35 = load i32, ptr %r12
    store i32 %r35, ptr %r34
    %r36 = load i32, ptr %r12
    %r37 = add i32 1,0
    %r38 = add i32 %r36,%r37
    store i32 %r38, ptr %r12
    br label %L2
L4:
    %r39 = getelementptr [3 x i32], ptr %r3, i32 0
    %r40 = getelementptr [3 x i32], ptr %r4, i32 0
    %r41 = getelementptr [3 x i32], ptr %r5, i32 0
    %r42 = getelementptr [3 x i32], ptr %r6, i32 0
    %r43 = getelementptr [3 x i32], ptr %r7, i32 0
    %r44 = getelementptr [3 x i32], ptr %r8, i32 0
    %r45 = getelementptr [6 x i32], ptr %r9, i32 0
    %r46 = getelementptr [3 x i32], ptr %r10, i32 0
    %r47 = getelementptr [3 x i32], ptr %r11, i32 0
    %r48 = call i32 @add(ptr %r39,ptr %r40,ptr %r41,ptr %r42,ptr %r43,ptr %r44,ptr %r45,ptr %r46,ptr %r47)
    store i32 %r48, ptr %r12
    %r50 = add i32 0,0
    store i32 %r50, ptr %r49
    br label %L5
L5:
    %r51 = load i32, ptr %r12
    %r52 = load i32, ptr @N
    %r53 = icmp slt i32 %r51,%r52
    br i1 %r53, label %L6, label %L7
L6:
    %r54 = load i32, ptr %r12
    %r55 = getelementptr [6 x i32], ptr %r9, i32 0, i32 %r54
    %r56 = load i32, ptr %r55
    store i32 %r56, ptr %r49
    %r57 = load i32, ptr %r49
    call void @putint(i32 %r57)
    %r58 = load i32, ptr %r12
    %r59 = add i32 1,0
    %r60 = add i32 %r58,%r59
    store i32 %r60, ptr %r12
    br label %L5
L7:
    %r61 = add i32 10,0
    store i32 %r61, ptr %r49
    %r62 = load i32, ptr %r49
    call void @putch(i32 %r62)
    %r63 = add i32 0,0
    store i32 %r63, ptr %r12
    br label %L8
L8:
    %r64 = load i32, ptr %r12
    %r65 = load i32, ptr @N
    %r66 = icmp slt i32 %r64,%r65
    br i1 %r66, label %L9, label %L10
L9:
    %r67 = load i32, ptr %r12
    %r68 = getelementptr [3 x i32], ptr %r10, i32 0, i32 %r67
    %r69 = load i32, ptr %r68
    store i32 %r69, ptr %r49
    %r70 = load i32, ptr %r49
    call void @putint(i32 %r70)
    %r71 = load i32, ptr %r12
    %r72 = add i32 1,0
    %r73 = add i32 %r71,%r72
    store i32 %r73, ptr %r12
    br label %L8
L10:
    %r74 = add i32 10,0
    store i32 %r74, ptr %r49
    %r75 = load i32, ptr %r49
    call void @putch(i32 %r75)
    %r76 = add i32 0,0
    store i32 %r76, ptr %r12
    br label %L11
L11:
    %r77 = load i32, ptr %r12
    %r78 = load i32, ptr @N
    %r79 = icmp slt i32 %r77,%r78
    br i1 %r79, label %L12, label %L13
L12:
    %r80 = load i32, ptr %r12
    %r81 = getelementptr [3 x i32], ptr %r11, i32 0, i32 %r80
    %r82 = load i32, ptr %r81
    store i32 %r82, ptr %r49
    %r83 = load i32, ptr %r49
    call void @putint(i32 %r83)
    %r84 = load i32, ptr %r12
    %r85 = add i32 1,0
    %r86 = add i32 %r84,%r85
    store i32 %r86, ptr %r12
    br label %L11
L13:
    %r87 = add i32 10,0
    store i32 %r87, ptr %r49
    %r88 = load i32, ptr %r49
    call void @putch(i32 %r88)
    %r89 = add i32 0,0
    ret i32 %r89
}
