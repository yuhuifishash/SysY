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
define i32 @main()
{
L0:
    %r45 = alloca i32
    %r8 = alloca i32
    %r6 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = call i32 @getint()
    store i32 %r1, ptr %r0
    %r3 = call i32 @getint()
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    %r7 = add i32 0,0
    store i32 %r7, ptr %r6
    %r9 = add i32 0,0
    store i32 %r9, ptr %r8
    %r10 = add i32 0,0
    store i32 %r10, ptr %r4
    %r11 = load i32, ptr %r4
    %r12 = load i32, ptr %r0
    %r13 = icmp slt i32 %r11,%r12
    br i1 %r13, label %L3, label %L5
L3:
    %r16 = load i32, ptr %r4
    %r17 = load i32, ptr %r4
    %r18 = getelementptr [1005 x i32], ptr @parent, i32 0, i32 %r17
    store i32 %r16, ptr %r18
    %r19 = load i32, ptr %r4
    %r20 = add i32 0,1
    %r21 = add i32 %r19,%r20
    store i32 %r21, ptr %r4
    br label %L4
L4:
    %r22 = load i32, ptr %r4
    %r23 = load i32, ptr %r0
    %r24 = icmp slt i32 %r22,%r23
    br i1 %r24, label %L3, label %L5
L5:
    %r27 = add i32 0,0
    store i32 %r27, ptr %r4
    %r28 = load i32, ptr %r4
    %r29 = load i32, ptr %r2
    %r30 = icmp slt i32 %r28,%r29
    br i1 %r30, label %L7, label %L9
L7:
    %r33 = call i32 @getint()
    store i32 %r33, ptr %r6
    %r34 = call i32 @getint()
    store i32 %r34, ptr %r8
    %r35 = load i32, ptr %r6
    %r36 = load i32, ptr %r8
    call void @merge(i32 %r35,i32 %r36)
    %r37 = load i32, ptr %r4
    %r38 = add i32 0,1
    %r39 = add i32 %r37,%r38
    store i32 %r39, ptr %r4
    br label %L8
L8:
    %r40 = load i32, ptr %r4
    %r41 = load i32, ptr %r2
    %r42 = icmp slt i32 %r40,%r41
    br i1 %r42, label %L7, label %L9
L9:
    %r46 = add i32 0,0
    store i32 %r46, ptr %r45
    %r47 = add i32 0,0
    store i32 %r47, ptr %r4
    %r48 = load i32, ptr %r4
    %r49 = load i32, ptr %r0
    %r50 = icmp slt i32 %r48,%r49
    br i1 %r50, label %L11, label %L13
L11:
    %r53 = load i32, ptr %r4
    %r54 = getelementptr [1005 x i32], ptr @parent, i32 0, i32 %r53
    %r55 = load i32, ptr %r54
    %r56 = load i32, ptr %r4
    %r57 = icmp eq i32 %r55,%r56
    br i1 %r57, label %L14, label %L15
L12:
    %r66 = load i32, ptr %r4
    %r67 = load i32, ptr %r0
    %r68 = icmp slt i32 %r66,%r67
    br i1 %r68, label %L11, label %L13
L13:
    %r71 = load i32, ptr %r45
    call void @putint(i32 %r71)
    %r72 = add i32 0,0
    ret i32 %r72
L14:
    %r60 = load i32, ptr %r45
    %r61 = add i32 0,1
    %r62 = add i32 %r60,%r61
    store i32 %r62, ptr %r45
    br label %L15
L15:
    %r63 = load i32, ptr %r4
    %r64 = add i32 0,1
    %r65 = add i32 %r63,%r64
    store i32 %r65, ptr %r4
    br label %L12
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
    %r9 = load i32, ptr %r1
    ret i32 %r9
L3:
    %r10 = load i32, ptr %r1
    %r11 = getelementptr [1005 x i32], ptr @parent, i32 0, i32 %r10
    %r12 = load i32, ptr %r11
    %r13 = call i32 @find(i32 %r12)
    %r14 = load i32, ptr %r1
    %r15 = getelementptr [1005 x i32], ptr @parent, i32 0, i32 %r14
    store i32 %r13, ptr %r15
    %r16 = load i32, ptr %r1
    %r17 = getelementptr [1005 x i32], ptr @parent, i32 0, i32 %r16
    %r18 = load i32, ptr %r17
    ret i32 %r18
}
define void @merge(i32 %r0,i32 %r1)
{
L0:
    %r6 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    %r7 = add i32 0,0
    store i32 %r7, ptr %r6
    %r8 = load i32, ptr %r2
    %r9 = call i32 @find(i32 %r8)
    store i32 %r9, ptr %r4
    %r10 = load i32, ptr %r3
    %r11 = call i32 @find(i32 %r10)
    store i32 %r11, ptr %r6
    %r12 = load i32, ptr %r4
    %r13 = load i32, ptr %r6
    %r14 = icmp ne i32 %r12,%r13
    br i1 %r14, label %L2, label %L3
L2:
    %r17 = load i32, ptr %r4
    %r18 = load i32, ptr %r6
    %r19 = getelementptr [1005 x i32], ptr @parent, i32 0, i32 %r18
    store i32 %r17, ptr %r19
    br label %L3
L3:
    ret void
}
