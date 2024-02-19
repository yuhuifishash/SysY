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
L0:  ;
    br label %L1
L1:  ;
    %r7 = icmp eq i32 %r0,-1
    br i1 %r7, label %L2, label %L5
L2:  ;
    ret i32 %r0
L3:  ;
    %r16 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r0
    %r17 = load i32, ptr %r16
    %r18 = icmp sgt i32 %r1,%r17
    br i1 %r18, label %L6, label %L7
L5:  ;
    %r9 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r0
    %r10 = load i32, ptr %r9
    %r12 = icmp eq i32 %r10,%r1
    br i1 %r12, label %L2, label %L3
L6:  ;
    %r20 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r0
    %r21 = load i32, ptr %r20
    %r23 = call i32 @search(i32 %r21,i32 %r1)
    ret i32 %r23
L7:  ;
    %r25 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r0
    %r26 = load i32, ptr %r25
    %r28 = call i32 @search(i32 %r26,i32 %r1)
    ret i32 %r28
}
define i32 @new_node(i32 %r0)
{
L0:  ;
    br label %L1
L1:  ;
    %r2 = load i32, ptr @now
    %r3 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r2
    store i32 %r0, ptr %r3
    %r6 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r2
    store i32 -1, ptr %r6
    %r10 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r2
    store i32 -1, ptr %r10
    %r15 = add i32 %r2,1
    store i32 %r15, ptr @now
    %r16 = load i32, ptr @now
    %r18 = sub i32 %r16,1
    ret i32 %r18
}
define i32 @find_minimum(i32 %r0)
{
L0:  ;
    br label %L1
L1:  ;
    %r5 = icmp eq i32 %r0,-1
    br i1 %r5, label %L2, label %L3
L2:  ;
    ret i32 -1
L3:  ;
    %r9 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r0
    %r10 = load i32, ptr %r9
    %r13 = icmp ne i32 %r10,-1
    br i1 %r13, label %L5, label %L6
L4:  ;
    ret i32 %r0
L5:  ;
    %r15 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r0
    %r16 = load i32, ptr %r15
    %r17 = call i32 @find_minimum(i32 %r16)
    ret i32 %r17
L6:  ;
    br label %L4
}
define i32 @insert(i32 %r0,i32 %r1)
{
L0:  ;
    br label %L1
L1:  ;
    %r7 = icmp eq i32 %r0,-1
    br i1 %r7, label %L2, label %L3
L2:  ;
    %r9 = call i32 @new_node(i32 %r1)
    ret i32 %r9
L3:  ;
    %r12 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r0
    %r13 = load i32, ptr %r12
    %r14 = icmp sgt i32 %r1,%r13
    br i1 %r14, label %L5, label %L6
L4:  ;
    ret i32 %r0
L5:  ;
    %r16 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r0
    %r19 = load i32, ptr %r16
    %r21 = call i32 @insert(i32 %r19,i32 %r1)
    store i32 %r21, ptr %r16
    br label %L7
L6:  ;
    %r23 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r0
    %r26 = load i32, ptr %r23
    %r28 = call i32 @insert(i32 %r26,i32 %r1)
    store i32 %r28, ptr %r23
    br label %L7
L7:  ;
    br label %L4
}
define i32 @delete(i32 %r0,i32 %r1)
{
L0:  ;
    br label %L1
L1:  ;
    %r7 = icmp eq i32 %r0,-1
    br i1 %r7, label %L2, label %L3
L2:  ;
    ret i32 -1
L3:  ;
    %r12 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r0
    %r13 = load i32, ptr %r12
    %r14 = icmp sgt i32 %r1,%r13
    br i1 %r14, label %L4, label %L5
L4:  ;
    %r16 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r0
    %r19 = load i32, ptr %r16
    %r21 = call i32 @delete(i32 %r19,i32 %r1)
    store i32 %r21, ptr %r16
    br label %L6
L5:  ;
    %r24 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r0
    %r25 = load i32, ptr %r24
    %r26 = icmp slt i32 %r1,%r25
    br i1 %r26, label %L7, label %L8
L6:  ;
    ret i32 %r0
L7:  ;
    %r28 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r0
    %r31 = load i32, ptr %r28
    %r33 = call i32 @delete(i32 %r31,i32 %r1)
    store i32 %r33, ptr %r28
    br label %L9
L8:  ;
    %r35 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r0
    %r36 = load i32, ptr %r35
    %r39 = icmp eq i32 %r36,-1
    br i1 %r39, label %L13, label %L11
L9:  ;
    br label %L6
L10:  ;
    ret i32 -1
L11:  ;
    %r49 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r0
    %r50 = load i32, ptr %r49
    %r53 = icmp eq i32 %r50,-1
    br i1 %r53, label %L14, label %L17
L12:  ;
    br label %L9
L13:  ;
    %r41 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r0
    %r42 = load i32, ptr %r41
    %r45 = icmp eq i32 %r42,-1
    br i1 %r45, label %L10, label %L11
L14:  ;
    %r61 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r0
    %r62 = load i32, ptr %r61
    %r65 = icmp eq i32 %r62,-1
    br i1 %r65, label %L18, label %L19
L15:  ;
    %r74 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r0
    %r75 = load i32, ptr %r74
    %r76 = call i32 @find_minimum(i32 %r75)
    %r78 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r0
    %r80 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r76
    %r81 = load i32, ptr %r80
    store i32 %r81, ptr %r78
    %r90 = call i32 @delete(i32 %r75,i32 %r81)
    store i32 %r90, ptr %r74
    br label %L16
L16:  ;
    br label %L12
L17:  ;
    %r55 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r0
    %r56 = load i32, ptr %r55
    %r59 = icmp eq i32 %r56,-1
    br i1 %r59, label %L14, label %L15
L18:  ;
    %r67 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r0
    %r68 = load i32, ptr %r67
    ret i32 %r68
L19:  ;
    %r70 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r0
    %r71 = load i32, ptr %r70
    ret i32 %r71
}
define void @inorder(i32 %r0)
{
L0:  ;
    br label %L1
L1:  ;
    %r5 = icmp ne i32 %r0,-1
    br i1 %r5, label %L2, label %L3
L2:  ;
    %r7 = getelementptr [10000 x i32], ptr @left_child, i32 0, i32 %r0
    %r8 = load i32, ptr %r7
    call void @inorder(i32 %r8)
    %r10 = getelementptr [10000 x i32], ptr @value, i32 0, i32 %r0
    %r11 = load i32, ptr %r10
    call void @putint(i32 %r11)
    call void @putch(i32 32)
    %r14 = getelementptr [10000 x i32], ptr @right_child, i32 0, i32 %r0
    %r15 = load i32, ptr %r14
    call void @inorder(i32 %r15)
    br label %L3
L3:  ;
    ret void
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    store i32 0, ptr @now
    %r2 = call i32 @getint()
    %r4 = icmp eq i32 %r2,0
    br i1 %r4, label %L2, label %L3
L2:  ;
    ret i32 0
L3:  ;
    %r7 = call i32 @getint()
    %r8 = call i32 @new_node(i32 %r7)
    br label %L4
L4:  ;
    %r36 = phi i32 [1,%L3],[%r19,%L5]
    %r13 = icmp slt i32 %r36,%r2
    br i1 %r13, label %L5, label %L6
L5:  ;
    %r15 = call i32 @getint()
    %r16 = call i32 @insert(i32 %r8,i32 %r15)
    %r19 = add i32 %r36,1
    br label %L4
L6:  ;
    call void @inorder(i32 %r8)
    call void @putch(i32 10)
    %r22 = call i32 @getint()
    br label %L7
L7:  ;
    %r38 = phi i32 [%r8,%L6],[%r29,%L8]
    %r37 = phi i32 [0,%L6],[%r32,%L8]
    %r26 = icmp slt i32 %r37,%r22
    br i1 %r26, label %L8, label %L9
L8:  ;
    %r28 = call i32 @getint()
    %r29 = call i32 @delete(i32 %r38,i32 %r28)
    %r32 = add i32 %r37,1
    br label %L7
L9:  ;
    call void @inorder(i32 %r38)
    call void @putch(i32 10)
    ret i32 0
}
