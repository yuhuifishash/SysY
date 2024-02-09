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
@buf = global [2x [100x i32]] zeroinitializer
define void @merge_sort(i32 %r0,i32 %r1)
{
L0:
    %r23 = alloca i32
    %r21 = alloca i32
    %r19 = alloca i32
    %r9 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r4 = load i32, ptr %r2
    %r5 = add i32 1,0
    %r6 = add i32 %r4,%r5
    %r7 = load i32, ptr %r3
    %r8 = icmp sge i32 %r6,%r7
    br i1 %r8, label %L2, label %L3
L2:
    ret void
    br label %L3
L3:
    %r10 = load i32, ptr %r2
    %r11 = load i32, ptr %r3
    %r12 = add i32 %r10,%r11
    %r13 = add i32 2,0
    %r14 = sdiv i32 %r12,%r13
    store i32 %r14, ptr %r9
    %r15 = load i32, ptr %r2
    %r16 = load i32, ptr %r9
    call void @merge_sort(i32 %r15,i32 %r16)
    %r17 = load i32, ptr %r9
    %r18 = load i32, ptr %r3
    call void @merge_sort(i32 %r17,i32 %r18)
    %r20 = load i32, ptr %r2
    store i32 %r20, ptr %r19
    %r22 = load i32, ptr %r9
    store i32 %r22, ptr %r21
    %r24 = load i32, ptr %r2
    store i32 %r24, ptr %r23
    br label %L4
L4:
    %r25 = load i32, ptr %r19
    %r26 = load i32, ptr %r9
    %r27 = icmp slt i32 %r25,%r26
    br i1 %r27, label %L7, label %L6
L5:
    %r31 = add i32 0,0
    %r32 = load i32, ptr %r19
    %r33 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 %r31, i32 %r32
    %r34 = load i32, ptr %r33
    %r35 = add i32 0,0
    %r36 = load i32, ptr %r21
    %r37 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 %r35, i32 %r36
    %r38 = load i32, ptr %r37
    %r39 = icmp slt i32 %r34,%r38
    br i1 %r39, label %L8, label %L9
L6:
    br label %L11
L7:
    %r28 = load i32, ptr %r21
    %r29 = load i32, ptr %r3
    %r30 = icmp slt i32 %r28,%r29
    br i1 %r30, label %L5, label %L6
L8:
    %r40 = add i32 1,0
    %r41 = load i32, ptr %r23
    %r42 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 %r40, i32 %r41
    %r43 = add i32 0,0
    %r44 = load i32, ptr %r19
    %r45 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 %r43, i32 %r44
    %r46 = load i32, ptr %r45
    store i32 %r46, ptr %r42
    %r47 = load i32, ptr %r19
    %r48 = add i32 1,0
    %r49 = add i32 %r47,%r48
    store i32 %r49, ptr %r19
    br label %L10
L9:
    %r50 = add i32 1,0
    %r51 = load i32, ptr %r23
    %r52 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 %r50, i32 %r51
    %r53 = add i32 0,0
    %r54 = load i32, ptr %r21
    %r55 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 %r53, i32 %r54
    %r56 = load i32, ptr %r55
    store i32 %r56, ptr %r52
    %r57 = load i32, ptr %r21
    %r58 = add i32 1,0
    %r59 = add i32 %r57,%r58
    store i32 %r59, ptr %r21
    br label %L10
L10:
    %r60 = load i32, ptr %r23
    %r61 = add i32 1,0
    %r62 = add i32 %r60,%r61
    store i32 %r62, ptr %r23
    br label %L4
L11:
    %r63 = load i32, ptr %r19
    %r64 = load i32, ptr %r9
    %r65 = icmp slt i32 %r63,%r64
    br i1 %r65, label %L12, label %L13
L12:
    %r66 = add i32 1,0
    %r67 = load i32, ptr %r23
    %r68 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 %r66, i32 %r67
    %r69 = add i32 0,0
    %r70 = load i32, ptr %r19
    %r71 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 %r69, i32 %r70
    %r72 = load i32, ptr %r71
    store i32 %r72, ptr %r68
    %r73 = load i32, ptr %r19
    %r74 = add i32 1,0
    %r75 = add i32 %r73,%r74
    store i32 %r75, ptr %r19
    %r76 = load i32, ptr %r23
    %r77 = add i32 1,0
    %r78 = add i32 %r76,%r77
    store i32 %r78, ptr %r23
    br label %L11
L13:
    br label %L14
L14:
    %r79 = load i32, ptr %r21
    %r80 = load i32, ptr %r3
    %r81 = icmp slt i32 %r79,%r80
    br i1 %r81, label %L15, label %L16
L15:
    %r82 = add i32 1,0
    %r83 = load i32, ptr %r23
    %r84 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 %r82, i32 %r83
    %r85 = add i32 0,0
    %r86 = load i32, ptr %r21
    %r87 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 %r85, i32 %r86
    %r88 = load i32, ptr %r87
    store i32 %r88, ptr %r84
    %r89 = load i32, ptr %r21
    %r90 = add i32 1,0
    %r91 = add i32 %r89,%r90
    store i32 %r91, ptr %r21
    %r92 = load i32, ptr %r23
    %r93 = add i32 1,0
    %r94 = add i32 %r92,%r93
    store i32 %r94, ptr %r23
    br label %L14
L16:
    br label %L17
L17:
    %r95 = load i32, ptr %r2
    %r96 = load i32, ptr %r3
    %r97 = icmp slt i32 %r95,%r96
    br i1 %r97, label %L18, label %L19
L18:
    %r98 = add i32 0,0
    %r99 = load i32, ptr %r2
    %r100 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 %r98, i32 %r99
    %r101 = add i32 1,0
    %r102 = load i32, ptr %r2
    %r103 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 %r101, i32 %r102
    %r104 = load i32, ptr %r103
    store i32 %r104, ptr %r100
    %r105 = load i32, ptr %r2
    %r106 = add i32 1,0
    %r107 = add i32 %r105,%r106
    store i32 %r107, ptr %r2
    br label %L17
L19:
    ret void
}
define i32 @main()
{
L0:
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 0,0
    %r2 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 %r1
    %r3 = call i32 @getarray(ptr %r2)
    store i32 %r3, ptr %r0
    %r4 = add i32 0,0
    %r5 = load i32, ptr %r0
    call void @merge_sort(i32 %r4,i32 %r5)
    %r6 = load i32, ptr %r0
    %r7 = add i32 0,0
    %r8 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 %r7
    call void @putarray(i32 %r6,ptr %r8)
    %r9 = add i32 0,0
    ret i32 %r9
}
