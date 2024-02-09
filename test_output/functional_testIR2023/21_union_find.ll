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
@maxN = global i32 1005
@parent = global [1005x i32] zeroinitializer
define void @merge(i32 %r0,i32 %r1)
{
L0:
    %r5 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:
    store i32 0, ptr %r4
    store i32 0, ptr %r5
    %r6 = load i32, ptr %r2
    %r7 = call i32 @find(i32 %r6)
    store i32 %r7, ptr %r4
    %r8 = load i32, ptr %r3
    %r9 = call i32 @find(i32 %r8)
    store i32 %r9, ptr %r5
    %r10 = load i32, ptr %r4
    %r11 = load i32, ptr %r5
    %r12 = icmp ne i32 %r10,%r11
    br i1 %r12, label %L2, label %L3
L2:
    %r13 = load i32, ptr %r5
    %r14 = getelementptr [1005 x i32], ptr @parent, i32 0, i32 %r13
    %r15 = load i32, ptr %r4
    store i32 %r15, ptr %r14
    br label %L3
L3:
    ret void
}
define i32 @find(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:
    %r2 = load i32, ptr %r1
    %r3 = getelementptr [1005 x i32], ptr @parent, i32 0, i32 %r2
    %r4 = load i32, ptr %r3
    %r5 = load i32, ptr %r1
    %r6 = icmp eq i32 %r4,%r5
    br i1 %r6, label %L2, label %L3
L2:
    %r7 = load i32, ptr %r1
    ret i32 %r7
    br label %L4
L3:
    %r8 = load i32, ptr %r1
    %r9 = getelementptr [1005 x i32], ptr @parent, i32 0, i32 %r8
    %r10 = load i32, ptr %r1
    %r11 = getelementptr [1005 x i32], ptr @parent, i32 0, i32 %r10
    %r12 = load i32, ptr %r11
    %r13 = call i32 @find(i32 %r12)
    store i32 %r13, ptr %r9
    %r14 = load i32, ptr %r1
    %r15 = getelementptr [1005 x i32], ptr @parent, i32 0, i32 %r14
    %r16 = load i32, ptr %r15
    ret i32 %r16
    br label %L4
L4:
    ret i32 0
}
define i32 @main()
{
L0:
    %r28 = alloca i32
    %r6 = alloca i32
    %r5 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = call i32 @getint()
    store i32 %r1, ptr %r0
    %r3 = call i32 @getint()
    store i32 %r3, ptr %r2
    store i32 0, ptr %r4
    store i32 0, ptr %r5
    store i32 0, ptr %r6
    %r7 = add i32 0,0
    store i32 %r7, ptr %r4
    br label %L2
L2:
    %r8 = load i32, ptr %r4
    %r9 = load i32, ptr %r0
    %r10 = icmp slt i32 %r8,%r9
    br i1 %r10, label %L3, label %L4
L3:
    %r11 = load i32, ptr %r4
    %r12 = getelementptr [1005 x i32], ptr @parent, i32 0, i32 %r11
    %r13 = load i32, ptr %r4
    store i32 %r13, ptr %r12
    %r14 = load i32, ptr %r4
    %r15 = add i32 1,0
    %r16 = add i32 %r14,%r15
    store i32 %r16, ptr %r4
    br label %L2
L4:
    %r17 = add i32 0,0
    store i32 %r17, ptr %r4
    br label %L5
L5:
    %r18 = load i32, ptr %r4
    %r19 = load i32, ptr %r2
    %r20 = icmp slt i32 %r18,%r19
    br i1 %r20, label %L6, label %L7
L6:
    %r21 = call i32 @getint()
    store i32 %r21, ptr %r5
    %r22 = call i32 @getint()
    store i32 %r22, ptr %r6
    %r23 = load i32, ptr %r5
    %r24 = load i32, ptr %r6
    call void @merge(i32 %r23,i32 %r24)
    %r25 = load i32, ptr %r4
    %r26 = add i32 1,0
    %r27 = add i32 %r25,%r26
    store i32 %r27, ptr %r4
    br label %L5
L7:
    %r29 = add i32 0,0
    store i32 %r29, ptr %r28
    %r30 = add i32 0,0
    store i32 %r30, ptr %r4
    br label %L8
L8:
    %r31 = load i32, ptr %r4
    %r32 = load i32, ptr %r0
    %r33 = icmp slt i32 %r31,%r32
    br i1 %r33, label %L9, label %L10
L9:
    %r34 = load i32, ptr %r4
    %r35 = getelementptr [1005 x i32], ptr @parent, i32 0, i32 %r34
    %r36 = load i32, ptr %r35
    %r37 = load i32, ptr %r4
    %r38 = icmp eq i32 %r36,%r37
    br i1 %r38, label %L11, label %L12
L10:
    %r45 = load i32, ptr %r28
    call void @putint(i32 %r45)
    %r46 = add i32 0,0
    ret i32 %r46
L11:
    %r39 = load i32, ptr %r28
    %r40 = add i32 1,0
    %r41 = add i32 %r39,%r40
    store i32 %r41, ptr %r28
    br label %L12
L12:
    %r42 = load i32, ptr %r4
    %r43 = add i32 1,0
    %r44 = add i32 %r42,%r43
    store i32 %r44, ptr %r4
    br label %L8
}
