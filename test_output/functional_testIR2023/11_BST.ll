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
define i32 @search(i32 %r0,i32 %r1)
{
L0:
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r4 = load i32, ptr %r2
    %r5 = add i32 1,0
    %r6 = sub i32 0,%r5
    %r7 = icmp eq i32 %r4,%r6
    br i1 %r7, label %L2, label %L5
L2:
    %r13 = load i32, ptr %r2
    ret i32 %r13
    br label %L4
L3:
    %r14 = load i32, ptr %r3
    %r15 = load i32, ptr %r2
    %r16 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r15
    %r17 = load i32, ptr %r16
    %r18 = icmp sgt i32 %r14,%r17
    br i1 %r18, label %L6, label %L7
L4:
    ret i32 0
L5:
    %r8 = load i32, ptr %r2
    %r9 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r8
    %r10 = load i32, ptr %r9
    %r11 = load i32, ptr %r3
    %r12 = icmp eq i32 %r10,%r11
    br i1 %r12, label %L2, label %L3
L6:
    %r19 = load i32, ptr %r2
    %r20 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r19
    %r21 = load i32, ptr %r20
    %r22 = load i32, ptr %r3
    %r23 = call i32 @search(i32 %r21,i32 %r22)
    ret i32 %r23
    br label %L8
L7:
    %r24 = load i32, ptr %r2
    %r25 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r24
    %r26 = load i32, ptr %r25
    %r27 = load i32, ptr %r3
    %r28 = call i32 @search(i32 %r26,i32 %r27)
    ret i32 %r28
    br label %L8
L8:
    br label %L4
}
define i32 @new_node(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:
    %r2 = load i32, ptr @now
    %r3 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r2
    %r4 = load i32, ptr %r1
    store i32 %r4, ptr %r3
    %r5 = load i32, ptr @now
    %r6 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r5
    %r7 = add i32 1,0
    %r8 = sub i32 0,%r7
    store i32 %r8, ptr %r6
    %r9 = load i32, ptr @now
    %r10 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r9
    %r11 = add i32 1,0
    %r12 = sub i32 0,%r11
    store i32 %r12, ptr %r10
    %r13 = load i32, ptr @now
    %r14 = add i32 1,0
    %r15 = add i32 %r13,%r14
    store i32 %r15, ptr @now
    %r16 = load i32, ptr @now
    %r17 = add i32 1,0
    %r18 = sub i32 %r16,%r17
    ret i32 %r18
}
define i32 @find_minimum(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:
    %r2 = load i32, ptr %r1
    %r3 = add i32 1,0
    %r4 = sub i32 0,%r3
    %r5 = icmp eq i32 %r2,%r4
    br i1 %r5, label %L2, label %L3
L2:
    %r6 = add i32 1,0
    %r7 = sub i32 0,%r6
    ret i32 %r7
    br label %L4
L3:
    %r8 = load i32, ptr %r1
    %r9 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r8
    %r10 = load i32, ptr %r9
    %r11 = add i32 1,0
    %r12 = sub i32 0,%r11
    %r13 = icmp ne i32 %r10,%r12
    br i1 %r13, label %L5, label %L6
L4:
    %r18 = load i32, ptr %r1
    ret i32 %r18
L5:
    %r14 = load i32, ptr %r1
    %r15 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r14
    %r16 = load i32, ptr %r15
    %r17 = call i32 @find_minimum(i32 %r16)
    ret i32 %r17
    br label %L6
L6:
    br label %L4
}
define i32 @insert(i32 %r0,i32 %r1)
{
L0:
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r4 = load i32, ptr %r2
    %r5 = add i32 1,0
    %r6 = sub i32 0,%r5
    %r7 = icmp eq i32 %r4,%r6
    br i1 %r7, label %L2, label %L3
L2:
    %r8 = load i32, ptr %r3
    %r9 = call i32 @new_node(i32 %r8)
    ret i32 %r9
    br label %L4
L3:
    %r10 = load i32, ptr %r3
    %r11 = load i32, ptr %r2
    %r12 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r11
    %r13 = load i32, ptr %r12
    %r14 = icmp sgt i32 %r10,%r13
    br i1 %r14, label %L5, label %L6
L4:
    %r29 = load i32, ptr %r2
    ret i32 %r29
L5:
    %r15 = load i32, ptr %r2
    %r16 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r15
    %r17 = load i32, ptr %r2
    %r18 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r17
    %r19 = load i32, ptr %r18
    %r20 = load i32, ptr %r3
    %r21 = call i32 @insert(i32 %r19,i32 %r20)
    store i32 %r21, ptr %r16
    br label %L7
L6:
    %r22 = load i32, ptr %r2
    %r23 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r22
    %r24 = load i32, ptr %r2
    %r25 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r24
    %r26 = load i32, ptr %r25
    %r27 = load i32, ptr %r3
    %r28 = call i32 @insert(i32 %r26,i32 %r27)
    store i32 %r28, ptr %r23
    br label %L7
L7:
    br label %L4
}
define i32 @main()
{
L0:
    %r9 = alloca i32
    %r6 = alloca i32
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
    %r5 = add i32 0,0
    ret i32 %r5
    br label %L3
L3:
    %r7 = call i32 @getint()
    %r8 = call i32 @new_node(i32 %r7)
    store i32 %r8, ptr %r6
    %r10 = add i32 1,0
    store i32 %r10, ptr %r9
    br label %L4
L4:
    %r11 = load i32, ptr %r9
    %r12 = load i32, ptr %r1
    %r13 = icmp slt i32 %r11,%r12
    br i1 %r13, label %L5, label %L6
L5:
    %r14 = load i32, ptr %r6
    %r15 = call i32 @getint()
    %r16 = call i32 @insert(i32 %r14,i32 %r15)
    %r17 = load i32, ptr %r9
    %r18 = add i32 1,0
    %r19 = add i32 %r17,%r18
    store i32 %r19, ptr %r9
    br label %L4
L6:
    %r20 = load i32, ptr %r6
    call void @inorder(i32 %r20)
    %r21 = load i32, ptr @LF
    call void @putch(i32 %r21)
    %r22 = call i32 @getint()
    store i32 %r22, ptr %r1
    %r23 = add i32 0,0
    store i32 %r23, ptr %r9
    br label %L7
L7:
    %r24 = load i32, ptr %r9
    %r25 = load i32, ptr %r1
    %r26 = icmp slt i32 %r24,%r25
    br i1 %r26, label %L8, label %L9
L8:
    %r27 = load i32, ptr %r6
    %r28 = call i32 @getint()
    %r29 = call i32 @delete(i32 %r27,i32 %r28)
    store i32 %r29, ptr %r6
    %r30 = load i32, ptr %r9
    %r31 = add i32 1,0
    %r32 = add i32 %r30,%r31
    store i32 %r32, ptr %r9
    br label %L7
L9:
    %r33 = load i32, ptr %r6
    call void @inorder(i32 %r33)
    %r34 = load i32, ptr @LF
    call void @putch(i32 %r34)
    %r35 = add i32 0,0
    ret i32 %r35
}
define i32 @delete(i32 %r0,i32 %r1)
{
L0:
    %r72 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r4 = load i32, ptr %r2
    %r5 = add i32 1,0
    %r6 = sub i32 0,%r5
    %r7 = icmp eq i32 %r4,%r6
    br i1 %r7, label %L2, label %L3
L2:
    %r8 = add i32 1,0
    %r9 = sub i32 0,%r8
    ret i32 %r9
    br label %L3
L3:
    %r10 = load i32, ptr %r3
    %r11 = load i32, ptr %r2
    %r12 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r11
    %r13 = load i32, ptr %r12
    %r14 = icmp sgt i32 %r10,%r13
    br i1 %r14, label %L4, label %L5
L4:
    %r15 = load i32, ptr %r2
    %r16 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r15
    %r17 = load i32, ptr %r2
    %r18 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r17
    %r19 = load i32, ptr %r18
    %r20 = load i32, ptr %r3
    %r21 = call i32 @delete(i32 %r19,i32 %r20)
    store i32 %r21, ptr %r16
    br label %L6
L5:
    %r22 = load i32, ptr %r3
    %r23 = load i32, ptr %r2
    %r24 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r23
    %r25 = load i32, ptr %r24
    %r26 = icmp slt i32 %r22,%r25
    br i1 %r26, label %L7, label %L8
L6:
    %r91 = load i32, ptr %r2
    ret i32 %r91
L7:
    %r27 = load i32, ptr %r2
    %r28 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r27
    %r29 = load i32, ptr %r2
    %r30 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r29
    %r31 = load i32, ptr %r30
    %r32 = load i32, ptr %r3
    %r33 = call i32 @delete(i32 %r31,i32 %r32)
    store i32 %r33, ptr %r28
    br label %L9
L8:
    %r34 = load i32, ptr %r2
    %r35 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r34
    %r36 = load i32, ptr %r35
    %r37 = add i32 1,0
    %r38 = sub i32 0,%r37
    %r39 = icmp eq i32 %r36,%r38
    br i1 %r39, label %L13, label %L11
L9:
    br label %L6
L10:
    %r46 = add i32 1,0
    %r47 = sub i32 0,%r46
    ret i32 %r47
    br label %L12
L11:
    %r48 = load i32, ptr %r2
    %r49 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r48
    %r50 = load i32, ptr %r49
    %r51 = add i32 1,0
    %r52 = sub i32 0,%r51
    %r53 = icmp eq i32 %r50,%r52
    br i1 %r53, label %L14, label %L17
L12:
    br label %L9
L13:
    %r40 = load i32, ptr %r2
    %r41 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r40
    %r42 = load i32, ptr %r41
    %r43 = add i32 1,0
    %r44 = sub i32 0,%r43
    %r45 = icmp eq i32 %r42,%r44
    br i1 %r45, label %L10, label %L11
L14:
    %r60 = load i32, ptr %r2
    %r61 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r60
    %r62 = load i32, ptr %r61
    %r63 = add i32 1,0
    %r64 = sub i32 0,%r63
    %r65 = icmp eq i32 %r62,%r64
    br i1 %r65, label %L18, label %L19
L15:
    %r73 = load i32, ptr %r2
    %r74 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r73
    %r75 = load i32, ptr %r74
    %r76 = call i32 @find_minimum(i32 %r75)
    store i32 %r76, ptr %r72
    %r77 = load i32, ptr %r2
    %r78 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r77
    %r79 = load i32, ptr %r72
    %r80 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r79
    %r81 = load i32, ptr %r80
    store i32 %r81, ptr %r78
    %r82 = load i32, ptr %r2
    %r83 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r82
    %r84 = load i32, ptr %r2
    %r85 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r84
    %r86 = load i32, ptr %r85
    %r87 = load i32, ptr %r72
    %r88 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r87
    %r89 = load i32, ptr %r88
    %r90 = call i32 @delete(i32 %r86,i32 %r89)
    store i32 %r90, ptr %r83
    br label %L16
L16:
    br label %L12
L17:
    %r54 = load i32, ptr %r2
    %r55 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r54
    %r56 = load i32, ptr %r55
    %r57 = add i32 1,0
    %r58 = sub i32 0,%r57
    %r59 = icmp eq i32 %r56,%r58
    br i1 %r59, label %L14, label %L15
L18:
    %r66 = load i32, ptr %r2
    %r67 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r66
    %r68 = load i32, ptr %r67
    ret i32 %r68
    br label %L20
L19:
    %r69 = load i32, ptr %r2
    %r70 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r69
    %r71 = load i32, ptr %r70
    ret i32 %r71
    br label %L20
L20:
    br label %L16
}
define void @inorder(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:
    %r2 = load i32, ptr %r1
    %r3 = add i32 1,0
    %r4 = sub i32 0,%r3
    %r5 = icmp ne i32 %r2,%r4
    br i1 %r5, label %L2, label %L3
L2:
    %r6 = load i32, ptr %r1
    %r7 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r6
    %r8 = load i32, ptr %r7
    call void @inorder(i32 %r8)
    %r9 = load i32, ptr %r1
    %r10 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r9
    %r11 = load i32, ptr %r10
    call void @putint(i32 %r11)
    %r12 = load i32, ptr @space
    call void @putch(i32 %r12)
    %r13 = load i32, ptr %r1
    %r14 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r13
    %r15 = load i32, ptr %r14
    call void @inorder(i32 %r15)
    br label %L3
L3:
    ret void
}
