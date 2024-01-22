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
declare void @starttime()
declare void @stoptime()
declare void @llvm.memset.p0.i32(ptr,i8,i32,i1)
@M = global i32 zeroinitializer
@L = global i32 zeroinitializer
@N = global i32 zeroinitializer
define i32 @tran(ptr %r0,ptr %r1,ptr %r2,ptr %r3,ptr %r4,ptr %r5,ptr %r6,ptr %r7,ptr %r8)
{
L0:
    %r9 = alloca i32
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r11 = add i32 0,0
    store i32 %r11, ptr %r9
    %r12 = add i32 0,1
    %r13 = getelementptr i32, ptr %r2, i32 %r12
    %r14 = load i32, ptr %r13
    %r15 = add i32 0,2
    %r16 = getelementptr i32, ptr %r7, i32 %r15
    store i32 %r14, ptr %r16
    %r17 = add i32 0,2
    %r18 = getelementptr i32, ptr %r1, i32 %r17
    %r19 = load i32, ptr %r18
    %r20 = add i32 0,1
    %r21 = getelementptr i32, ptr %r8, i32 %r20
    store i32 %r19, ptr %r21
    %r22 = add i32 0,0
    %r23 = getelementptr i32, ptr %r1, i32 %r22
    %r24 = load i32, ptr %r23
    %r25 = add i32 0,1
    %r26 = getelementptr i32, ptr %r6, i32 %r25
    store i32 %r24, ptr %r26
    %r27 = add i32 0,0
    %r28 = getelementptr i32, ptr %r2, i32 %r27
    %r29 = load i32, ptr %r28
    %r30 = add i32 0,2
    %r31 = getelementptr i32, ptr %r6, i32 %r30
    store i32 %r29, ptr %r31
    %r32 = add i32 0,1
    %r33 = getelementptr i32, ptr %r0, i32 %r32
    %r34 = load i32, ptr %r33
    %r35 = add i32 0,0
    %r36 = getelementptr i32, ptr %r7, i32 %r35
    store i32 %r34, ptr %r36
    %r37 = add i32 0,2
    %r38 = getelementptr i32, ptr %r0, i32 %r37
    %r39 = load i32, ptr %r38
    %r40 = add i32 0,0
    %r41 = getelementptr i32, ptr %r8, i32 %r40
    store i32 %r39, ptr %r41
    %r42 = add i32 0,1
    %r43 = getelementptr i32, ptr %r1, i32 %r42
    %r44 = load i32, ptr %r43
    %r45 = add i32 0,1
    %r46 = getelementptr i32, ptr %r7, i32 %r45
    store i32 %r44, ptr %r46
    %r47 = add i32 0,2
    %r48 = getelementptr i32, ptr %r2, i32 %r47
    %r49 = load i32, ptr %r48
    %r50 = add i32 0,2
    %r51 = getelementptr i32, ptr %r8, i32 %r50
    store i32 %r49, ptr %r51
    %r52 = add i32 0,0
    %r53 = getelementptr i32, ptr %r0, i32 %r52
    %r54 = load i32, ptr %r53
    %r55 = add i32 0,0
    %r56 = getelementptr i32, ptr %r6, i32 %r55
    store i32 %r54, ptr %r56
    %r57 = add i32 0,0
    ret i32 %r57
}
define i32 @main()
{
L0:
    %r51 = alloca i32
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
    %r0 = add i32 0,3
    store i32 %r0, ptr @N
    %r1 = add i32 0,3
    store i32 %r1, ptr @M
    %r2 = add i32 0,3
    store i32 %r2, ptr @L
    %r13 = add i32 0,0
    store i32 %r13, ptr %r12
    %r14 = add i32 0,0
    store i32 %r14, ptr %r12
    br label %L1
L1:
    %r15 = load i32, ptr %r12
    %r16 = load i32, ptr @M
    %r17 = icmp slt i32 %r15,%r16
    br i1 %r17, label %L2, label %L3
L2:
    %r20 = load i32, ptr %r12
    %r21 = load i32, ptr %r12
    %r22 = getelementptr [3 x i32], ptr %r3, i32 0, i32 %r21
    store i32 %r20, ptr %r22
    %r23 = load i32, ptr %r12
    %r24 = load i32, ptr %r12
    %r25 = getelementptr [3 x i32], ptr %r4, i32 0, i32 %r24
    store i32 %r23, ptr %r25
    %r26 = load i32, ptr %r12
    %r27 = load i32, ptr %r12
    %r28 = getelementptr [3 x i32], ptr %r5, i32 0, i32 %r27
    store i32 %r26, ptr %r28
    %r29 = load i32, ptr %r12
    %r30 = load i32, ptr %r12
    %r31 = getelementptr [3 x i32], ptr %r6, i32 0, i32 %r30
    store i32 %r29, ptr %r31
    %r32 = load i32, ptr %r12
    %r33 = load i32, ptr %r12
    %r34 = getelementptr [3 x i32], ptr %r7, i32 0, i32 %r33
    store i32 %r32, ptr %r34
    %r35 = load i32, ptr %r12
    %r36 = load i32, ptr %r12
    %r37 = getelementptr [3 x i32], ptr %r8, i32 0, i32 %r36
    store i32 %r35, ptr %r37
    %r38 = load i32, ptr %r12
    %r39 = add i32 0,1
    %r40 = add i32 %r38,%r39
    store i32 %r40, ptr %r12
    br label %L1
L3:
    %r41 = getelementptr i32, ptr %r3, i32 0
    %r42 = getelementptr i32, ptr %r4, i32 0
    %r43 = getelementptr i32, ptr %r5, i32 0
    %r44 = getelementptr i32, ptr %r6, i32 0
    %r45 = getelementptr i32, ptr %r7, i32 0
    %r46 = getelementptr i32, ptr %r8, i32 0
    %r47 = getelementptr i32, ptr %r9, i32 0
    %r48 = getelementptr i32, ptr %r10, i32 0
    %r49 = getelementptr i32, ptr %r11, i32 0
    %r50 = call i32 @tran(ptr %r41,ptr %r42,ptr %r43,ptr %r44,ptr %r45,ptr %r46,ptr %r47,ptr %r48,ptr %r49)
    store i32 %r50, ptr %r12
    %r52 = add i32 0,0
    store i32 %r52, ptr %r51
    br label %L4
L4:
    %r53 = load i32, ptr %r12
    %r54 = load i32, ptr @N
    %r55 = icmp slt i32 %r53,%r54
    br i1 %r55, label %L5, label %L6
L5:
    %r58 = load i32, ptr %r12
    %r59 = getelementptr [6 x i32], ptr %r9, i32 0, i32 %r58
    %r60 = load i32, ptr %r59
    store i32 %r60, ptr %r51
    %r61 = load i32, ptr %r51
    call void @putint(i32 %r61)
    %r62 = load i32, ptr %r12
    %r63 = add i32 0,1
    %r64 = add i32 %r62,%r63
    store i32 %r64, ptr %r12
    br label %L4
L6:
    %r65 = add i32 0,10
    store i32 %r65, ptr %r51
    %r66 = load i32, ptr %r51
    call void @putch(i32 %r66)
    %r67 = add i32 0,0
    store i32 %r67, ptr %r12
    br label %L7
L7:
    %r68 = load i32, ptr %r12
    %r69 = load i32, ptr @N
    %r70 = icmp slt i32 %r68,%r69
    br i1 %r70, label %L8, label %L9
L8:
    %r73 = load i32, ptr %r12
    %r74 = getelementptr [3 x i32], ptr %r10, i32 0, i32 %r73
    %r75 = load i32, ptr %r74
    store i32 %r75, ptr %r51
    %r76 = load i32, ptr %r51
    call void @putint(i32 %r76)
    %r77 = load i32, ptr %r12
    %r78 = add i32 0,1
    %r79 = add i32 %r77,%r78
    store i32 %r79, ptr %r12
    br label %L7
L9:
    %r80 = add i32 0,10
    store i32 %r80, ptr %r51
    %r81 = add i32 0,0
    store i32 %r81, ptr %r12
    %r82 = load i32, ptr %r51
    call void @putch(i32 %r82)
    br label %L10
L10:
    %r83 = load i32, ptr %r12
    %r84 = load i32, ptr @N
    %r85 = icmp slt i32 %r83,%r84
    br i1 %r85, label %L11, label %L12
L11:
    %r88 = load i32, ptr %r12
    %r89 = getelementptr [3 x i32], ptr %r11, i32 0, i32 %r88
    %r90 = load i32, ptr %r89
    store i32 %r90, ptr %r51
    %r91 = load i32, ptr %r51
    call void @putint(i32 %r91)
    %r92 = load i32, ptr %r12
    %r93 = add i32 0,1
    %r94 = add i32 %r92,%r93
    store i32 %r94, ptr %r12
    br label %L10
L12:
    %r95 = add i32 0,10
    store i32 %r95, ptr %r51
    %r96 = load i32, ptr %r51
    call void @putch(i32 %r96)
    %r97 = add i32 0,0
    ret i32 %r97
}
