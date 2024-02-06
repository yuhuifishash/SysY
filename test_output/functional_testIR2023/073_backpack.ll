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
@V = global [200x [200x i32]] zeroinitializer
define i32 @main()
{
L0:
    %r31 = alloca i32
    %r29 = alloca i32
    %r28 = alloca [6 x i32]
    %r15 = alloca [6 x i32]
    %r2 = alloca [6 x i32]
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    call void @llvm.memset.p0.i32(ptr %r2,i8 0,i32 24,i1 0)
    %r3 = add i32 0,0
    %r4 = getelementptr [6 x i32], ptr %r2, i32 0, i32 0
    store i32 %r3, ptr %r4
    %r5 = add i32 0,2
    %r6 = getelementptr [6 x i32], ptr %r2, i32 0, i32 1
    store i32 %r5, ptr %r6
    %r7 = add i32 0,2
    %r8 = getelementptr [6 x i32], ptr %r2, i32 0, i32 2
    store i32 %r7, ptr %r8
    %r9 = add i32 0,6
    %r10 = getelementptr [6 x i32], ptr %r2, i32 0, i32 3
    store i32 %r9, ptr %r10
    %r11 = add i32 0,5
    %r12 = getelementptr [6 x i32], ptr %r2, i32 0, i32 4
    store i32 %r11, ptr %r12
    %r13 = add i32 0,4
    %r14 = getelementptr [6 x i32], ptr %r2, i32 0, i32 5
    store i32 %r13, ptr %r14
    call void @llvm.memset.p0.i32(ptr %r15,i8 0,i32 24,i1 0)
    %r16 = add i32 0,0
    %r17 = getelementptr [6 x i32], ptr %r15, i32 0, i32 0
    store i32 %r16, ptr %r17
    %r18 = add i32 0,6
    %r19 = getelementptr [6 x i32], ptr %r15, i32 0, i32 1
    store i32 %r18, ptr %r19
    %r20 = add i32 0,3
    %r21 = getelementptr [6 x i32], ptr %r15, i32 0, i32 2
    store i32 %r20, ptr %r21
    %r22 = add i32 0,5
    %r23 = getelementptr [6 x i32], ptr %r15, i32 0, i32 3
    store i32 %r22, ptr %r23
    %r24 = add i32 0,4
    %r25 = getelementptr [6 x i32], ptr %r15, i32 0, i32 4
    store i32 %r24, ptr %r25
    %r26 = add i32 0,6
    %r27 = getelementptr [6 x i32], ptr %r15, i32 0, i32 5
    store i32 %r26, ptr %r27
    %r30 = add i32 0,5
    store i32 %r30, ptr %r29
    %r32 = add i32 0,10
    store i32 %r32, ptr %r31
    %r33 = load i32, ptr %r29
    %r34 = getelementptr i32, ptr %r2, i32 0
    %r35 = getelementptr i32, ptr %r15, i32 0
    %r36 = getelementptr i32, ptr %r28, i32 0
    %r37 = load i32, ptr %r31
    %r38 = call i32 @KnapSack(i32 %r33,ptr %r34,ptr %r35,ptr %r36,i32 %r37)
    store i32 %r38, ptr %r0
    %r39 = load i32, ptr %r0
    call void @putint(i32 %r39)
    %r40 = add i32 0,0
    ret i32 %r40
}
define i32 @KnapSack(i32 %r0,ptr %r1,ptr %r2,ptr %r3,i32 %r4)
{
L0:
    %r48 = alloca i32
    %r41 = alloca i32
    %r9 = alloca i32
    %r7 = alloca i32
    %r5 = alloca i32
    store i32 %r0, ptr %r5
    %r6 = alloca i32
    store i32 %r4, ptr %r6
    br label %L1
L1:
    %r8 = add i32 0,0
    store i32 %r8, ptr %r7
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r11 = add i32 0,1
    store i32 %r11, ptr %r7
    %r12 = load i32, ptr %r7
    %r13 = load i32, ptr %r5
    %r14 = icmp sle i32 %r12,%r13
    br i1 %r14, label %L3, label %L5
L3:
    %r17 = add i32 0,0
    store i32 %r17, ptr %r9
    %r18 = load i32, ptr %r9
    %r19 = load i32, ptr %r6
    %r20 = add i32 0,1
    %r21 = add i32 %r19,%r20
    %r22 = icmp slt i32 %r18,%r21
    br i1 %r22, label %L7, label %L9
L4:
    %r89 = load i32, ptr %r7
    %r90 = load i32, ptr %r5
    %r91 = icmp sle i32 %r89,%r90
    br i1 %r91, label %L3, label %L5
L5:
    %r94 = load i32, ptr %r6
    store i32 %r94, ptr %r9
    %r95 = load i32, ptr %r5
    store i32 %r95, ptr %r7
    %r96 = load i32, ptr %r7
    %r97 = add i32 0,1
    %r98 = icmp sge i32 %r96,%r97
    br i1 %r98, label %L17, label %L19
L7:
    %r25 = load i32, ptr %r9
    %r26 = load i32, ptr %r7
    %r27 = getelementptr i32, ptr %r1, i32 %r26
    %r28 = load i32, ptr %r27
    %r29 = icmp slt i32 %r25,%r28
    br i1 %r29, label %L10, label %L11
L8:
    %r79 = load i32, ptr %r9
    %r80 = load i32, ptr %r6
    %r81 = add i32 0,1
    %r82 = add i32 %r80,%r81
    %r83 = icmp slt i32 %r79,%r82
    br i1 %r83, label %L7, label %L9
L9:
    %r86 = load i32, ptr %r7
    %r87 = add i32 0,1
    %r88 = add i32 %r86,%r87
    store i32 %r88, ptr %r7
    br label %L4
L10:
    %r32 = load i32, ptr %r7
    %r33 = add i32 0,1
    %r34 = sub i32 %r32,%r33
    %r35 = load i32, ptr %r9
    %r36 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r34, i32 %r35
    %r37 = load i32, ptr %r36
    %r38 = load i32, ptr %r7
    %r39 = load i32, ptr %r9
    %r40 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r38, i32 %r39
    store i32 %r37, ptr %r40
    br label %L12
L11:
    %r42 = load i32, ptr %r7
    %r43 = add i32 0,1
    %r44 = sub i32 %r42,%r43
    %r45 = load i32, ptr %r9
    %r46 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r44, i32 %r45
    %r47 = load i32, ptr %r46
    store i32 %r47, ptr %r41
    %r49 = load i32, ptr %r7
    %r50 = add i32 0,1
    %r51 = sub i32 %r49,%r50
    %r52 = load i32, ptr %r9
    %r53 = load i32, ptr %r7
    %r54 = getelementptr i32, ptr %r1, i32 %r53
    %r55 = load i32, ptr %r54
    %r56 = sub i32 %r52,%r55
    %r57 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r51, i32 %r56
    %r58 = load i32, ptr %r57
    %r59 = load i32, ptr %r7
    %r60 = getelementptr i32, ptr %r2, i32 %r59
    %r61 = load i32, ptr %r60
    %r62 = add i32 %r58,%r61
    store i32 %r62, ptr %r48
    %r63 = load i32, ptr %r41
    %r64 = load i32, ptr %r48
    %r65 = icmp sgt i32 %r63,%r64
    br i1 %r65, label %L13, label %L14
L12:
    %r76 = load i32, ptr %r9
    %r77 = add i32 0,1
    %r78 = add i32 %r76,%r77
    store i32 %r78, ptr %r9
    br label %L8
L13:
    %r68 = load i32, ptr %r41
    %r69 = load i32, ptr %r7
    %r70 = load i32, ptr %r9
    %r71 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r69, i32 %r70
    store i32 %r68, ptr %r71
    br label %L15
L14:
    %r72 = load i32, ptr %r48
    %r73 = load i32, ptr %r7
    %r74 = load i32, ptr %r9
    %r75 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r73, i32 %r74
    store i32 %r72, ptr %r75
    br label %L15
L15:
    br label %L12
L17:
    %r101 = load i32, ptr %r7
    %r102 = load i32, ptr %r9
    %r103 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r101, i32 %r102
    %r104 = load i32, ptr %r103
    %r105 = load i32, ptr %r7
    %r106 = add i32 0,1
    %r107 = sub i32 %r105,%r106
    %r108 = load i32, ptr %r9
    %r109 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r107, i32 %r108
    %r110 = load i32, ptr %r109
    %r111 = icmp sgt i32 %r104,%r110
    br i1 %r111, label %L20, label %L21
L18:
    %r128 = load i32, ptr %r7
    %r129 = add i32 0,1
    %r130 = icmp sge i32 %r128,%r129
    br i1 %r130, label %L17, label %L19
L19:
    %r133 = load i32, ptr %r5
    %r134 = load i32, ptr %r6
    %r135 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r133, i32 %r134
    %r136 = load i32, ptr %r135
    ret i32 %r136
L20:
    %r114 = add i32 0,1
    %r115 = load i32, ptr %r7
    %r116 = getelementptr i32, ptr %r3, i32 %r115
    store i32 %r114, ptr %r116
    %r117 = load i32, ptr %r9
    %r118 = load i32, ptr %r7
    %r119 = getelementptr i32, ptr %r1, i32 %r118
    %r120 = load i32, ptr %r119
    %r121 = sub i32 %r117,%r120
    store i32 %r121, ptr %r9
    br label %L22
L21:
    %r122 = add i32 0,0
    %r123 = load i32, ptr %r7
    %r124 = getelementptr i32, ptr %r3, i32 %r123
    store i32 %r122, ptr %r124
    br label %L22
L22:
    %r125 = load i32, ptr %r7
    %r126 = add i32 0,1
    %r127 = sub i32 %r125,%r126
    store i32 %r127, ptr %r7
    br label %L18
}
