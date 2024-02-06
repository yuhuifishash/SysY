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
@space = global i32 32
@LF = global i32 10
@maxNode = global i32 10000
@value = global [10000x i32] zeroinitializer
@left_child = global [10000x i32] zeroinitializer
@right_child = global [10000x i32] zeroinitializer
@now = global i32 zeroinitializer
define void @inorder(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:
    %r2 = load i32, ptr %r1
    %r3 = add i32 0,1
    %r4 = sub i32 0,%r3
    %r5 = icmp ne i32 %r2,%r4
    br i1 %r5, label %L2, label %L3
L2:
    %r8 = load i32, ptr %r1
    %r9 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r8
    %r10 = load i32, ptr %r9
    call void @inorder(i32 %r10)
    %r11 = load i32, ptr %r1
    %r12 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r11
    %r13 = load i32, ptr %r12
    call void @putint(i32 %r13)
    %r14 = load i32, ptr @space
    call void @putch(i32 %r14)
    %r15 = load i32, ptr %r1
    %r16 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r15
    %r17 = load i32, ptr %r16
    call void @inorder(i32 %r17)
    br label %L3
L3:
    ret void
}
define i32 @main()
{
L0:
    %r11 = alloca i32
    %r8 = alloca i32
    %r1 = alloca i32
    br label %L1
L1:
    %r0 = add i32 0,0
    store i32 %r0, ptr @now
    %r2 = call i32 @getint()
    store i32 %r2, ptr %r1
    %r3 = load i32, ptr %r1
    %r4 = icmp eq i32 %r3,0
    br i1 %r4, label %L2, label %L3
L2:
    %r7 = add i32 0,0
    ret i32 %r7
L3:
    %r9 = call i32 @getint()
    %r10 = call i32 @new_node(i32 %r9)
    store i32 %r10, ptr %r8
    %r12 = add i32 0,1
    store i32 %r12, ptr %r11
    %r13 = load i32, ptr %r11
    %r14 = load i32, ptr %r1
    %r15 = icmp slt i32 %r13,%r14
    br i1 %r15, label %L5, label %L7
L5:
    %r18 = load i32, ptr %r8
    %r19 = call i32 @getint()
    %r20 = call i32 @insert(i32 %r18,i32 %r19)
    %r21 = load i32, ptr %r11
    %r22 = add i32 0,1
    %r23 = add i32 %r21,%r22
    store i32 %r23, ptr %r11
    br label %L6
L6:
    %r24 = load i32, ptr %r11
    %r25 = load i32, ptr %r1
    %r26 = icmp slt i32 %r24,%r25
    br i1 %r26, label %L5, label %L7
L7:
    %r29 = load i32, ptr %r8
    call void @inorder(i32 %r29)
    %r30 = load i32, ptr @LF
    call void @putch(i32 %r30)
    %r31 = call i32 @getint()
    store i32 %r31, ptr %r1
    %r32 = add i32 0,0
    store i32 %r32, ptr %r11
    %r33 = load i32, ptr %r11
    %r34 = load i32, ptr %r1
    %r35 = icmp slt i32 %r33,%r34
    br i1 %r35, label %L9, label %L11
L9:
    %r38 = load i32, ptr %r8
    %r39 = call i32 @getint()
    %r40 = call i32 @delete(i32 %r38,i32 %r39)
    store i32 %r40, ptr %r8
    %r41 = load i32, ptr %r11
    %r42 = add i32 0,1
    %r43 = add i32 %r41,%r42
    store i32 %r43, ptr %r11
    br label %L10
L10:
    %r44 = load i32, ptr %r11
    %r45 = load i32, ptr %r1
    %r46 = icmp slt i32 %r44,%r45
    br i1 %r46, label %L9, label %L11
L11:
    %r49 = load i32, ptr %r8
    call void @inorder(i32 %r49)
    %r50 = load i32, ptr @LF
    call void @putch(i32 %r50)
    %r51 = add i32 0,0
    ret i32 %r51
}
define i32 @find_minimum(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:
    %r2 = load i32, ptr %r1
    %r3 = add i32 0,1
    %r4 = sub i32 0,%r3
    %r5 = icmp eq i32 %r2,%r4
    br i1 %r5, label %L2, label %L3
L2:
    %r8 = add i32 0,1
    %r9 = sub i32 0,%r8
    ret i32 %r9
L3:
    %r10 = load i32, ptr %r1
    %r11 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r10
    %r12 = load i32, ptr %r11
    %r13 = add i32 0,1
    %r14 = sub i32 0,%r13
    %r15 = icmp ne i32 %r12,%r14
    br i1 %r15, label %L5, label %L6
L4:
    %r22 = load i32, ptr %r1
    ret i32 %r22
L5:
    %r18 = load i32, ptr %r1
    %r19 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r18
    %r20 = load i32, ptr %r19
    %r21 = call i32 @find_minimum(i32 %r20)
    ret i32 %r21
L6:
    br label %L4
}
define i32 @search(i32 %r0,i32 %r1)
{
L0:
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r4 = load i32, ptr %r2
    %r5 = add i32 0,1
    %r6 = sub i32 0,%r5
    %r7 = icmp eq i32 %r4,%r6
    br i1 %r7, label %L2, label %L5
L2:
    %r20 = load i32, ptr %r2
    ret i32 %r20
L3:
    %r21 = load i32, ptr %r3
    %r22 = load i32, ptr %r2
    %r23 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r22
    %r24 = load i32, ptr %r23
    %r25 = icmp sgt i32 %r21,%r24
    br i1 %r25, label %L7, label %L8
L5:
    %r10 = load i32, ptr %r2
    %r11 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r10
    %r12 = load i32, ptr %r11
    %r13 = load i32, ptr %r3
    %r14 = icmp eq i32 %r12,%r13
    br i1 %r14, label %L2, label %L3
L7:
    %r28 = load i32, ptr %r2
    %r29 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r28
    %r30 = load i32, ptr %r29
    %r31 = load i32, ptr %r3
    %r32 = call i32 @search(i32 %r30,i32 %r31)
    ret i32 %r32
L8:
    %r33 = load i32, ptr %r2
    %r34 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r33
    %r35 = load i32, ptr %r34
    %r36 = load i32, ptr %r3
    %r37 = call i32 @search(i32 %r35,i32 %r36)
    ret i32 %r37
}
define i32 @new_node(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:
    %r2 = load i32, ptr %r1
    %r3 = load i32, ptr @now
    %r4 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r3
    store i32 %r2, ptr %r4
    %r5 = add i32 0,1
    %r6 = sub i32 0,%r5
    %r7 = load i32, ptr @now
    %r8 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r7
    store i32 %r6, ptr %r8
    %r9 = add i32 0,1
    %r10 = sub i32 0,%r9
    %r11 = load i32, ptr @now
    %r12 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r11
    store i32 %r10, ptr %r12
    %r13 = load i32, ptr @now
    %r14 = add i32 0,1
    %r15 = add i32 %r13,%r14
    store i32 %r15, ptr @now
    %r16 = load i32, ptr @now
    %r17 = add i32 0,1
    %r18 = sub i32 %r16,%r17
    ret i32 %r18
}
define i32 @insert(i32 %r0,i32 %r1)
{
L0:
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r4 = load i32, ptr %r2
    %r5 = add i32 0,1
    %r6 = sub i32 0,%r5
    %r7 = icmp eq i32 %r4,%r6
    br i1 %r7, label %L2, label %L3
L2:
    %r10 = load i32, ptr %r3
    %r11 = call i32 @new_node(i32 %r10)
    ret i32 %r11
L3:
    %r12 = load i32, ptr %r3
    %r13 = load i32, ptr %r2
    %r14 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r13
    %r15 = load i32, ptr %r14
    %r16 = icmp sgt i32 %r12,%r15
    br i1 %r16, label %L5, label %L6
L4:
    %r33 = load i32, ptr %r2
    ret i32 %r33
L5:
    %r19 = load i32, ptr %r2
    %r20 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r19
    %r21 = load i32, ptr %r20
    %r22 = load i32, ptr %r3
    %r23 = call i32 @insert(i32 %r21,i32 %r22)
    %r24 = load i32, ptr %r2
    %r25 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r24
    store i32 %r23, ptr %r25
    br label %L7
L6:
    %r26 = load i32, ptr %r2
    %r27 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r26
    %r28 = load i32, ptr %r27
    %r29 = load i32, ptr %r3
    %r30 = call i32 @insert(i32 %r28,i32 %r29)
    %r31 = load i32, ptr %r2
    %r32 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r31
    store i32 %r30, ptr %r32
    br label %L7
L7:
    br label %L4
}
define i32 @delete(i32 %r0,i32 %r1)
{
L0:
    %r94 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r4 = load i32, ptr %r2
    %r5 = add i32 0,1
    %r6 = sub i32 0,%r5
    %r7 = icmp eq i32 %r4,%r6
    br i1 %r7, label %L2, label %L3
L2:
    %r10 = add i32 0,1
    %r11 = sub i32 0,%r10
    ret i32 %r11
L3:
    %r12 = load i32, ptr %r3
    %r13 = load i32, ptr %r2
    %r14 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r13
    %r15 = load i32, ptr %r14
    %r16 = icmp sgt i32 %r12,%r15
    br i1 %r16, label %L4, label %L5
L4:
    %r19 = load i32, ptr %r2
    %r20 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r19
    %r21 = load i32, ptr %r20
    %r22 = load i32, ptr %r3
    %r23 = call i32 @delete(i32 %r21,i32 %r22)
    %r24 = load i32, ptr %r2
    %r25 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r24
    store i32 %r23, ptr %r25
    br label %L6
L5:
    %r26 = load i32, ptr %r3
    %r27 = load i32, ptr %r2
    %r28 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r27
    %r29 = load i32, ptr %r28
    %r30 = icmp slt i32 %r26,%r29
    br i1 %r30, label %L7, label %L8
L6:
    %r113 = load i32, ptr %r2
    ret i32 %r113
L7:
    %r33 = load i32, ptr %r2
    %r34 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r33
    %r35 = load i32, ptr %r34
    %r36 = load i32, ptr %r3
    %r37 = call i32 @delete(i32 %r35,i32 %r36)
    %r38 = load i32, ptr %r2
    %r39 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r38
    store i32 %r37, ptr %r39
    br label %L9
L8:
    %r40 = load i32, ptr %r2
    %r41 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r40
    %r42 = load i32, ptr %r41
    %r43 = add i32 0,1
    %r44 = sub i32 0,%r43
    %r45 = icmp eq i32 %r42,%r44
    br i1 %r45, label %L13, label %L11
L9:
    br label %L6
L10:
    %r59 = add i32 0,1
    %r60 = sub i32 0,%r59
    ret i32 %r60
L11:
    %r61 = load i32, ptr %r2
    %r62 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r61
    %r63 = load i32, ptr %r62
    %r64 = add i32 0,1
    %r65 = sub i32 0,%r64
    %r66 = icmp eq i32 %r63,%r65
    br i1 %r66, label %L15, label %L18
L12:
    br label %L9
L13:
    %r48 = load i32, ptr %r2
    %r49 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r48
    %r50 = load i32, ptr %r49
    %r51 = add i32 0,1
    %r52 = sub i32 0,%r51
    %r53 = icmp eq i32 %r50,%r52
    br i1 %r53, label %L10, label %L11
L15:
    %r80 = load i32, ptr %r2
    %r81 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r80
    %r82 = load i32, ptr %r81
    %r83 = add i32 0,1
    %r84 = sub i32 0,%r83
    %r85 = icmp eq i32 %r82,%r84
    br i1 %r85, label %L20, label %L21
L16:
    %r95 = load i32, ptr %r2
    %r96 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r95
    %r97 = load i32, ptr %r96
    %r98 = call i32 @find_minimum(i32 %r97)
    store i32 %r98, ptr %r94
    %r99 = load i32, ptr %r94
    %r100 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r99
    %r101 = load i32, ptr %r100
    %r102 = load i32, ptr %r2
    %r103 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r102
    store i32 %r101, ptr %r103
    %r104 = load i32, ptr %r2
    %r105 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r104
    %r106 = load i32, ptr %r105
    %r107 = load i32, ptr %r94
    %r108 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r107
    %r109 = load i32, ptr %r108
    %r110 = call i32 @delete(i32 %r106,i32 %r109)
    %r111 = load i32, ptr %r2
    %r112 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r111
    store i32 %r110, ptr %r112
    br label %L17
L17:
    br label %L12
L18:
    %r69 = load i32, ptr %r2
    %r70 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r69
    %r71 = load i32, ptr %r70
    %r72 = add i32 0,1
    %r73 = sub i32 0,%r72
    %r74 = icmp eq i32 %r71,%r73
    br i1 %r74, label %L15, label %L16
L20:
    %r88 = load i32, ptr %r2
    %r89 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r88
    %r90 = load i32, ptr %r89
    ret i32 %r90
L21:
    %r91 = load i32, ptr %r2
    %r92 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r91
    %r93 = load i32, ptr %r92
    ret i32 %r93
}
