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
    %r12 = load i32, ptr %r9
    %r13 = load i32, ptr @M
    %r14 = icmp slt i32 %r12,%r13
    br i1 %r14, label %L3, label %L5
L3:
    %r17 = load i32, ptr %r9
    %r18 = getelementptr i32, ptr %r0, i32 %r17
    %r19 = load i32, ptr %r18
    %r20 = load i32, ptr %r9
    %r21 = getelementptr i32, ptr %r3, i32 %r20
    %r22 = load i32, ptr %r21
    %r23 = add i32 %r19,%r22
    %r24 = load i32, ptr %r9
    %r25 = getelementptr i32, ptr %r6, i32 %r24
    store i32 %r23, ptr %r25
    %r26 = load i32, ptr %r9
    %r27 = getelementptr i32, ptr %r1, i32 %r26
    %r28 = load i32, ptr %r27
    %r29 = load i32, ptr %r9
    %r30 = getelementptr i32, ptr %r4, i32 %r29
    %r31 = load i32, ptr %r30
    %r32 = add i32 %r28,%r31
    %r33 = load i32, ptr %r9
    %r34 = getelementptr i32, ptr %r7, i32 %r33
    store i32 %r32, ptr %r34
    %r35 = load i32, ptr %r9
    %r36 = getelementptr i32, ptr %r2, i32 %r35
    %r37 = load i32, ptr %r36
    %r38 = load i32, ptr %r9
    %r39 = getelementptr i32, ptr %r5, i32 %r38
    %r40 = load i32, ptr %r39
    %r41 = add i32 %r37,%r40
    %r42 = load i32, ptr %r9
    %r43 = getelementptr i32, ptr %r8, i32 %r42
    store i32 %r41, ptr %r43
    %r44 = load i32, ptr %r9
    %r45 = add i32 0,1
    %r46 = add i32 %r44,%r45
    store i32 %r46, ptr %r9
    br label %L4
L4:
    %r47 = load i32, ptr %r9
    %r48 = load i32, ptr @M
    %r49 = icmp slt i32 %r47,%r48
    br i1 %r49, label %L3, label %L5
L5:
    %r52 = add i32 0,0
    ret i32 %r52
}
define i32 @main()
{
L0:
    %r56 = alloca i32
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
    %r15 = load i32, ptr %r12
    %r16 = load i32, ptr @M
    %r17 = icmp slt i32 %r15,%r16
    br i1 %r17, label %L3, label %L5
L3:
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
    br label %L4
L4:
    %r41 = load i32, ptr %r12
    %r42 = load i32, ptr @M
    %r43 = icmp slt i32 %r41,%r42
    br i1 %r43, label %L3, label %L5
L5:
    %r46 = getelementptr i32, ptr %r3, i32 0
    %r47 = getelementptr i32, ptr %r4, i32 0
    %r48 = getelementptr i32, ptr %r5, i32 0
    %r49 = getelementptr i32, ptr %r6, i32 0
    %r50 = getelementptr i32, ptr %r7, i32 0
    %r51 = getelementptr i32, ptr %r8, i32 0
    %r52 = getelementptr i32, ptr %r9, i32 0
    %r53 = getelementptr i32, ptr %r10, i32 0
    %r54 = getelementptr i32, ptr %r11, i32 0
    %r55 = call i32 @add(ptr %r46,ptr %r47,ptr %r48,ptr %r49,ptr %r50,ptr %r51,ptr %r52,ptr %r53,ptr %r54)
    store i32 %r55, ptr %r12
    %r57 = add i32 0,0
    store i32 %r57, ptr %r56
    %r58 = load i32, ptr %r12
    %r59 = load i32, ptr @N
    %r60 = icmp slt i32 %r58,%r59
    br i1 %r60, label %L7, label %L9
L7:
    %r63 = load i32, ptr %r12
    %r64 = getelementptr [6 x i32], ptr %r9, i32 0, i32 %r63
    %r65 = load i32, ptr %r64
    store i32 %r65, ptr %r56
    %r66 = load i32, ptr %r56
    call void @putint(i32 %r66)
    %r67 = load i32, ptr %r12
    %r68 = add i32 0,1
    %r69 = add i32 %r67,%r68
    store i32 %r69, ptr %r12
    br label %L8
L8:
    %r70 = load i32, ptr %r12
    %r71 = load i32, ptr @N
    %r72 = icmp slt i32 %r70,%r71
    br i1 %r72, label %L7, label %L9
L9:
    %r75 = add i32 0,10
    store i32 %r75, ptr %r56
    %r76 = load i32, ptr %r56
    call void @putch(i32 %r76)
    %r77 = add i32 0,0
    store i32 %r77, ptr %r12
    %r78 = load i32, ptr %r12
    %r79 = load i32, ptr @N
    %r80 = icmp slt i32 %r78,%r79
    br i1 %r80, label %L11, label %L13
L11:
    %r83 = load i32, ptr %r12
    %r84 = getelementptr [3 x i32], ptr %r10, i32 0, i32 %r83
    %r85 = load i32, ptr %r84
    store i32 %r85, ptr %r56
    %r86 = load i32, ptr %r56
    call void @putint(i32 %r86)
    %r87 = load i32, ptr %r12
    %r88 = add i32 0,1
    %r89 = add i32 %r87,%r88
    store i32 %r89, ptr %r12
    br label %L12
L12:
    %r90 = load i32, ptr %r12
    %r91 = load i32, ptr @N
    %r92 = icmp slt i32 %r90,%r91
    br i1 %r92, label %L11, label %L13
L13:
    %r95 = add i32 0,10
    store i32 %r95, ptr %r56
    %r96 = load i32, ptr %r56
    call void @putch(i32 %r96)
    %r97 = add i32 0,0
    store i32 %r97, ptr %r12
    %r98 = load i32, ptr %r12
    %r99 = load i32, ptr @N
    %r100 = icmp slt i32 %r98,%r99
    br i1 %r100, label %L15, label %L17
L15:
    %r103 = load i32, ptr %r12
    %r104 = getelementptr [3 x i32], ptr %r11, i32 0, i32 %r103
    %r105 = load i32, ptr %r104
    store i32 %r105, ptr %r56
    %r106 = load i32, ptr %r56
    call void @putint(i32 %r106)
    %r107 = load i32, ptr %r12
    %r108 = add i32 0,1
    %r109 = add i32 %r107,%r108
    store i32 %r109, ptr %r12
    br label %L16
L16:
    %r110 = load i32, ptr %r12
    %r111 = load i32, ptr @N
    %r112 = icmp slt i32 %r110,%r111
    br i1 %r112, label %L15, label %L17
L17:
    %r115 = add i32 0,10
    store i32 %r115, ptr %r56
    %r116 = load i32, ptr %r56
    call void @putch(i32 %r116)
    %r117 = add i32 0,0
    ret i32 %r117
}
