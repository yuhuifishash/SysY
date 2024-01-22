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
    br label %L1
L1:
    %r5 = icmp ne i32 %r0,-1
    br i1 %r5, label %L2, label %L3
L2:
    %r9 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r0
    %r10 = load i32, ptr %r9
    call void @inorder(i32 %r10)
    %r12 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r0
    %r13 = load i32, ptr %r12
    call void @putint(i32 %r13)
    call void @putch(i32 32)
    %r16 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r0
    %r17 = load i32, ptr %r16
    call void @inorder(i32 %r17)
    br label %L3
L3:
    ret void
}
define i32 @main()
{
L0:
    br label %L1
L1:
    store i32 0, ptr @now
    %r2 = call i32 @getint()
    %r4 = icmp eq i32 %r2,0
    br i1 %r4, label %L2, label %L3
L2:
    ret i32 0
L3:
    %r9 = call i32 @getint()
    %r10 = call i32 @new_node(i32 %r9)
    %r15 = icmp slt i32 1,%r2
    br i1 %r15, label %L12, label %L7
L5:
    %r52 = phi i32 [%r23,%L6],[1,%L12]
    %r19 = call i32 @getint()
    %r20 = call i32 @insert(i32 %r10,i32 %r19)
    %r23 = add i32 %r52,1
    br label %L6
L6:
    %r26 = icmp slt i32 %r23,%r2
    br i1 %r26, label %L5, label %L7
L7:
    call void @inorder(i32 %r10)
    call void @putch(i32 10)
    %r31 = call i32 @getint()
    %r35 = icmp slt i32 0,%r31
    br i1 %r35, label %L13, label %L11
L9:
    %r56 = phi i32 [%r40,%L10],[%r10,%L13]
    %r54 = phi i32 [0,%L13],[%r43,%L10]
    %r39 = call i32 @getint()
    %r40 = call i32 @delete(i32 %r56,i32 %r39)
    %r43 = add i32 %r54,1
    br label %L10
L10:
    %r46 = icmp slt i32 %r43,%r31
    br i1 %r46, label %L9, label %L11
L11:
    %r57 = phi i32 [%r10,%L7],[%r40,%L10]
    call void @inorder(i32 %r57)
    call void @putch(i32 10)
    ret i32 0
L12:
    br label %L5
L13:
    br label %L9
}
define i32 @find_minimum(i32 %r0)
{
L0:
    br label %L7
L1:
    %r23 = phi i32 [%r0,%L7],[%r20,%L5]
    %r5 = icmp eq i32 %r23,-1
    br i1 %r5, label %L2, label %L3
L2:
    ret i32 -1
L3:
    %r11 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r23
    %r12 = load i32, ptr %r11
    %r15 = icmp ne i32 %r12,-1
    br i1 %r15, label %L5, label %L6
L4:
    ret i32 %r23
L5:
    %r19 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r23
    %r20 = load i32, ptr %r19
    br label %L1
L6:
    br label %L4
L7:
    br label %L1
}
define i32 @search(i32 %r0,i32 %r1)
{
L0:
    br label %L10
L1:
    %r39 = phi i32 [%r1,%L10],[%r39,%L7],[%r39,%L8]
    %r38 = phi i32 [%r30,%L7],[%r35,%L8],[%r0,%L10]
    %r7 = icmp eq i32 %r38,-1
    br i1 %r7, label %L2, label %L5
L2:
    ret i32 %r38
L3:
    %r23 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r38
    %r24 = load i32, ptr %r23
    %r25 = icmp sgt i32 %r39,%r24
    br i1 %r25, label %L7, label %L8
L5:
    %r11 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r38
    %r12 = load i32, ptr %r11
    %r14 = icmp eq i32 %r12,%r39
    br i1 %r14, label %L2, label %L3
L7:
    %r29 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r38
    %r30 = load i32, ptr %r29
    br label %L1
L8:
    %r34 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r38
    %r35 = load i32, ptr %r34
    br label %L1
L10:
    br label %L1
}
define i32 @new_node(i32 %r0)
{
L0:
    br label %L1
L1:
    %r3 = load i32, ptr @now
    %r4 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r3
    store i32 %r0, ptr %r4
    %r7 = load i32, ptr @now
    %r8 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r7
    store i32 -1, ptr %r8
    %r11 = load i32, ptr @now
    %r12 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r11
    store i32 -1, ptr %r12
    %r13 = load i32, ptr @now
    %r15 = add i32 %r13,1
    store i32 %r15, ptr @now
    %r16 = load i32, ptr @now
    %r18 = sub i32 %r16,1
    ret i32 %r18
}
define i32 @insert(i32 %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r7 = icmp eq i32 %r0,-1
    br i1 %r7, label %L2, label %L3
L2:
    %r11 = call i32 @new_node(i32 %r1)
    ret i32 %r11
L3:
    %r14 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r0
    %r15 = load i32, ptr %r14
    %r16 = icmp sgt i32 %r1,%r15
    br i1 %r16, label %L5, label %L6
L4:
    ret i32 %r0
L5:
    %r20 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r0
    %r21 = load i32, ptr %r20
    %r23 = call i32 @insert(i32 %r21,i32 %r1)
    store i32 %r23, ptr %r20
    br label %L7
L6:
    %r27 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r0
    %r28 = load i32, ptr %r27
    %r30 = call i32 @insert(i32 %r28,i32 %r1)
    store i32 %r30, ptr %r27
    br label %L7
L7:
    br label %L4
}
define i32 @delete(i32 %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r7 = icmp eq i32 %r0,-1
    br i1 %r7, label %L2, label %L3
L2:
    ret i32 -1
L3:
    %r14 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r0
    %r15 = load i32, ptr %r14
    %r16 = icmp sgt i32 %r1,%r15
    br i1 %r16, label %L4, label %L5
L4:
    %r20 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r0
    %r21 = load i32, ptr %r20
    %r23 = call i32 @delete(i32 %r21,i32 %r1)
    store i32 %r23, ptr %r20
    br label %L6
L5:
    %r28 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r0
    %r29 = load i32, ptr %r28
    %r30 = icmp slt i32 %r1,%r29
    br i1 %r30, label %L7, label %L8
L6:
    ret i32 %r0
L7:
    %r34 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r0
    %r35 = load i32, ptr %r34
    %r37 = call i32 @delete(i32 %r35,i32 %r1)
    store i32 %r37, ptr %r34
    br label %L9
L8:
    %r41 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r0
    %r42 = load i32, ptr %r41
    %r45 = icmp eq i32 %r42,-1
    br i1 %r45, label %L13, label %L11
L9:
    br label %L6
L10:
    ret i32 -1
L11:
    %r62 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r0
    %r63 = load i32, ptr %r62
    %r66 = icmp eq i32 %r63,-1
    br i1 %r66, label %L15, label %L18
L12:
    br label %L9
L13:
    %r49 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r0
    %r50 = load i32, ptr %r49
    %r53 = icmp eq i32 %r50,-1
    br i1 %r53, label %L10, label %L11
L15:
    %r81 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r0
    %r82 = load i32, ptr %r81
    %r85 = icmp eq i32 %r82,-1
    br i1 %r85, label %L20, label %L21
L16:
    %r96 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r0
    %r97 = load i32, ptr %r96
    %r98 = call i32 @find_minimum(i32 %r97)
    %r100 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r98
    %r101 = load i32, ptr %r100
    %r103 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r0
    store i32 %r101, ptr %r103
    %r106 = load i32, ptr %r96
    %r109 = load i32, ptr %r100
    %r110 = call i32 @delete(i32 %r106,i32 %r109)
    store i32 %r110, ptr %r96
    br label %L17
L17:
    br label %L12
L18:
    %r70 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r0
    %r71 = load i32, ptr %r70
    %r74 = icmp eq i32 %r71,-1
    br i1 %r74, label %L15, label %L16
L20:
    %r89 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r0
    %r90 = load i32, ptr %r89
    ret i32 %r90
L21:
    %r92 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r0
    %r93 = load i32, ptr %r92
    ret i32 %r93
}
