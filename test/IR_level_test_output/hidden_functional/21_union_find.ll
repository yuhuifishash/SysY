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
@maxN = global i32 1005
@parent = global [1005x i32] zeroinitializer
define i32 @main()
{
L0:
    %r35 = alloca i32
    %r8 = alloca i32
    %r6 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
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
    br label %L1
L1:
    %r11 = load i32, ptr %r4
    %r12 = load i32, ptr %r0
    %r13 = icmp slt i32 %r11,%r12
    br i1 %r13, label %L2, label %L3
L2:
    %r16 = load i32, ptr %r4
    %r17 = load i32, ptr %r4
    %r18 = getelementptr [1005 x i32], ptr @parent, i32 0, i32 %r17
    store i32 %r16, ptr %r18
    %r19 = load i32, ptr %r4
    %r20 = add i32 0,1
    %r21 = add i32 %r19,%r20
    store i32 %r21, ptr %r4
    br label %L1
L3:
    %r22 = add i32 0,0
    store i32 %r22, ptr %r4
    br label %L4
L4:
    %r23 = load i32, ptr %r4
    %r24 = load i32, ptr %r2
    %r25 = icmp slt i32 %r23,%r24
    br i1 %r25, label %L5, label %L6
L5:
    %r28 = call i32 @getint()
    store i32 %r28, ptr %r6
    %r29 = call i32 @getint()
    store i32 %r29, ptr %r8
    %r30 = load i32, ptr %r6
    %r31 = load i32, ptr %r8
    call void @merge(i32 %r30,i32 %r31)
    %r32 = load i32, ptr %r4
    %r33 = add i32 0,1
    %r34 = add i32 %r32,%r33
    store i32 %r34, ptr %r4
    br label %L4
L6:
    %r36 = add i32 0,0
    store i32 %r36, ptr %r35
    %r37 = add i32 0,0
    store i32 %r37, ptr %r4
    br label %L7
L7:
    %r38 = load i32, ptr %r4
    %r39 = load i32, ptr %r0
    %r40 = icmp slt i32 %r38,%r39
    br i1 %r40, label %L8, label %L9
L8:
    %r43 = load i32, ptr %r4
    %r44 = getelementptr [1005 x i32], ptr @parent, i32 0, i32 %r43
    %r45 = load i32, ptr %r44
    %r46 = load i32, ptr %r4
    %r47 = icmp eq i32 %r45,%r46
    br i1 %r47, label %L10, label %L11
L9:
    %r56 = load i32, ptr %r35
    call void @putint(i32 %r56)
    %r57 = add i32 0,0
    ret i32 %r57
L10:
    %r50 = load i32, ptr %r35
    %r51 = add i32 0,1
    %r52 = add i32 %r50,%r51
    store i32 %r52, ptr %r35
    br label %L11
L11:
    %r53 = load i32, ptr %r4
    %r54 = add i32 0,1
    %r55 = add i32 %r53,%r54
    store i32 %r55, ptr %r4
    br label %L7
}
define i32 @find(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    %r2 = load i32, ptr %r1
    %r3 = getelementptr [1005 x i32], ptr @parent, i32 0, i32 %r2
    %r4 = load i32, ptr %r3
    %r5 = load i32, ptr %r1
    %r6 = icmp eq i32 %r4,%r5
    br i1 %r6, label %L1, label %L2
L1:
    %r9 = load i32, ptr %r1
    ret i32 %r9
L2:
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
    br i1 %r14, label %L1, label %L2
L1:
    %r17 = load i32, ptr %r4
    %r18 = load i32, ptr %r6
    %r19 = getelementptr [1005 x i32], ptr @parent, i32 0, i32 %r18
    store i32 %r17, ptr %r19
    br label %L2
L2:
    ret void
}
