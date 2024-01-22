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
@space = global i32 32
@LF = global i32 10
@maxNode = global i32 10000
@value = global [10000x i32] zeroinitializer
@left_child = global [10000x i32] zeroinitializer
@right_child = global [10000x i32] zeroinitializer
@now = global i32 zeroinitializer
define i32 @find_minimum(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    %r2 = load i32, ptr %r1
    %r3 = add i32 0,1
    %r4 = sub i32 0,%r3
    %r5 = icmp eq i32 %r2,%r4
    br i1 %r5, label %L1, label %L2
L1:
    %r8 = add i32 0,1
    %r9 = sub i32 0,%r8
    ret i32 %r9
L2:
    %r10 = load i32, ptr %r1
    %r11 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r10
    %r12 = load i32, ptr %r11
    %r13 = add i32 0,1
    %r14 = sub i32 0,%r13
    %r15 = icmp ne i32 %r12,%r14
    br i1 %r15, label %L4, label %L5
L3:
    %r22 = load i32, ptr %r1
    ret i32 %r22
L4:
    %r18 = load i32, ptr %r1
    %r19 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r18
    %r20 = load i32, ptr %r19
    %r21 = call i32 @find_minimum(i32 %r20)
    ret i32 %r21
L5:
    br label %L3
}
define i32 @search(i32 %r0,i32 %r1)
{
L0:
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    %r4 = load i32, ptr %r2
    %r5 = add i32 0,1
    %r6 = sub i32 0,%r5
    %r7 = icmp eq i32 %r4,%r6
    br i1 %r7, label %L1, label %L4
L1:
    %r20 = load i32, ptr %r2
    ret i32 %r20
L2:
    %r21 = load i32, ptr %r3
    %r22 = load i32, ptr %r2
    %r23 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r22
    %r24 = load i32, ptr %r23
    %r25 = icmp sgt i32 %r21,%r24
    br i1 %r25, label %L6, label %L7
L4:
    %r10 = load i32, ptr %r2
    %r11 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r10
    %r12 = load i32, ptr %r11
    %r13 = load i32, ptr %r3
    %r14 = icmp eq i32 %r12,%r13
    br i1 %r14, label %L1, label %L2
L6:
    %r28 = load i32, ptr %r2
    %r29 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r28
    %r30 = load i32, ptr %r29
    %r31 = load i32, ptr %r3
    %r32 = call i32 @search(i32 %r30,i32 %r31)
    ret i32 %r32
L7:
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
    %r4 = load i32, ptr %r2
    %r5 = add i32 0,1
    %r6 = sub i32 0,%r5
    %r7 = icmp eq i32 %r4,%r6
    br i1 %r7, label %L1, label %L2
L1:
    %r10 = load i32, ptr %r3
    %r11 = call i32 @new_node(i32 %r10)
    ret i32 %r11
L2:
    %r12 = load i32, ptr %r3
    %r13 = load i32, ptr %r2
    %r14 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r13
    %r15 = load i32, ptr %r14
    %r16 = icmp sgt i32 %r12,%r15
    br i1 %r16, label %L4, label %L5
L3:
    %r33 = load i32, ptr %r2
    ret i32 %r33
L4:
    %r19 = load i32, ptr %r2
    %r20 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r19
    %r21 = load i32, ptr %r20
    %r22 = load i32, ptr %r3
    %r23 = call i32 @insert(i32 %r21,i32 %r22)
    %r24 = load i32, ptr %r2
    %r25 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r24
    store i32 %r23, ptr %r25
    br label %L6
L5:
    %r26 = load i32, ptr %r2
    %r27 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r26
    %r28 = load i32, ptr %r27
    %r29 = load i32, ptr %r3
    %r30 = call i32 @insert(i32 %r28,i32 %r29)
    %r31 = load i32, ptr %r2
    %r32 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r31
    store i32 %r30, ptr %r32
    br label %L6
L6:
    br label %L3
}
define void @inorder(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    %r2 = load i32, ptr %r1
    %r3 = add i32 0,1
    %r4 = sub i32 0,%r3
    %r5 = icmp ne i32 %r2,%r4
    br i1 %r5, label %L1, label %L2
L1:
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
    br label %L2
L2:
    ret void
}
define i32 @main()
{
L0:
    %r11 = alloca i32
    %r8 = alloca i32
    %r1 = alloca i32
    %r0 = add i32 0,0
    store i32 %r0, ptr @now
    %r2 = call i32 @getint()
    store i32 %r2, ptr %r1
    %r3 = load i32, ptr %r1
    %r4 = icmp eq i32 %r3,0
    br i1 %r4, label %L1, label %L2
L1:
    %r7 = add i32 0,0
    ret i32 %r7
L2:
    %r9 = call i32 @getint()
    %r10 = call i32 @new_node(i32 %r9)
    store i32 %r10, ptr %r8
    %r12 = add i32 0,1
    store i32 %r12, ptr %r11
    br label %L3
L3:
    %r13 = load i32, ptr %r11
    %r14 = load i32, ptr %r1
    %r15 = icmp slt i32 %r13,%r14
    br i1 %r15, label %L4, label %L5
L4:
    %r18 = load i32, ptr %r8
    %r19 = call i32 @getint()
    %r20 = call i32 @insert(i32 %r18,i32 %r19)
    %r21 = load i32, ptr %r11
    %r22 = add i32 0,1
    %r23 = add i32 %r21,%r22
    store i32 %r23, ptr %r11
    br label %L3
L5:
    %r24 = load i32, ptr %r8
    call void @inorder(i32 %r24)
    %r25 = load i32, ptr @LF
    call void @putch(i32 %r25)
    %r26 = call i32 @getint()
    store i32 %r26, ptr %r1
    %r27 = add i32 0,0
    store i32 %r27, ptr %r11
    br label %L6
L6:
    %r28 = load i32, ptr %r11
    %r29 = load i32, ptr %r1
    %r30 = icmp slt i32 %r28,%r29
    br i1 %r30, label %L7, label %L8
L7:
    %r33 = load i32, ptr %r8
    %r34 = call i32 @getint()
    %r35 = call i32 @delete(i32 %r33,i32 %r34)
    store i32 %r35, ptr %r8
    %r36 = load i32, ptr %r11
    %r37 = add i32 0,1
    %r38 = add i32 %r36,%r37
    store i32 %r38, ptr %r11
    br label %L6
L8:
    %r39 = load i32, ptr %r8
    call void @inorder(i32 %r39)
    %r40 = load i32, ptr @LF
    call void @putch(i32 %r40)
    %r41 = add i32 0,0
    ret i32 %r41
}
define i32 @delete(i32 %r0,i32 %r1)
{
L0:
    %r94 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    %r4 = load i32, ptr %r2
    %r5 = add i32 0,1
    %r6 = sub i32 0,%r5
    %r7 = icmp eq i32 %r4,%r6
    br i1 %r7, label %L1, label %L2
L1:
    %r10 = add i32 0,1
    %r11 = sub i32 0,%r10
    ret i32 %r11
L2:
    %r12 = load i32, ptr %r3
    %r13 = load i32, ptr %r2
    %r14 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r13
    %r15 = load i32, ptr %r14
    %r16 = icmp sgt i32 %r12,%r15
    br i1 %r16, label %L3, label %L4
L3:
    %r19 = load i32, ptr %r2
    %r20 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r19
    %r21 = load i32, ptr %r20
    %r22 = load i32, ptr %r3
    %r23 = call i32 @delete(i32 %r21,i32 %r22)
    %r24 = load i32, ptr %r2
    %r25 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r24
    store i32 %r23, ptr %r25
    br label %L5
L4:
    %r26 = load i32, ptr %r3
    %r27 = load i32, ptr %r2
    %r28 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r27
    %r29 = load i32, ptr %r28
    %r30 = icmp slt i32 %r26,%r29
    br i1 %r30, label %L6, label %L7
L5:
    %r113 = load i32, ptr %r2
    ret i32 %r113
L6:
    %r33 = load i32, ptr %r2
    %r34 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r33
    %r35 = load i32, ptr %r34
    %r36 = load i32, ptr %r3
    %r37 = call i32 @delete(i32 %r35,i32 %r36)
    %r38 = load i32, ptr %r2
    %r39 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r38
    store i32 %r37, ptr %r39
    br label %L8
L7:
    %r40 = load i32, ptr %r2
    %r41 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r40
    %r42 = load i32, ptr %r41
    %r43 = add i32 0,1
    %r44 = sub i32 0,%r43
    %r45 = icmp eq i32 %r42,%r44
    br i1 %r45, label %L12, label %L10
L8:
    br label %L5
L9:
    %r59 = add i32 0,1
    %r60 = sub i32 0,%r59
    ret i32 %r60
L10:
    %r61 = load i32, ptr %r2
    %r62 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r61
    %r63 = load i32, ptr %r62
    %r64 = add i32 0,1
    %r65 = sub i32 0,%r64
    %r66 = icmp eq i32 %r63,%r65
    br i1 %r66, label %L14, label %L17
L11:
    br label %L8
L12:
    %r48 = load i32, ptr %r2
    %r49 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r48
    %r50 = load i32, ptr %r49
    %r51 = add i32 0,1
    %r52 = sub i32 0,%r51
    %r53 = icmp eq i32 %r50,%r52
    br i1 %r53, label %L9, label %L10
L14:
    %r80 = load i32, ptr %r2
    %r81 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r80
    %r82 = load i32, ptr %r81
    %r83 = add i32 0,1
    %r84 = sub i32 0,%r83
    %r85 = icmp eq i32 %r82,%r84
    br i1 %r85, label %L19, label %L20
L15:
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
    br label %L16
L16:
    br label %L11
L17:
    %r69 = load i32, ptr %r2
    %r70 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r69
    %r71 = load i32, ptr %r70
    %r72 = add i32 0,1
    %r73 = sub i32 0,%r72
    %r74 = icmp eq i32 %r71,%r73
    br i1 %r74, label %L14, label %L15
L19:
    %r88 = load i32, ptr %r2
    %r89 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r88
    %r90 = load i32, ptr %r89
    ret i32 %r90
L20:
    %r91 = load i32, ptr %r2
    %r92 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r91
    %r93 = load i32, ptr %r92
    ret i32 %r93
}
