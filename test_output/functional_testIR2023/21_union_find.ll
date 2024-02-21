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
define i32 @find(i32 %r0)
{
L0:  ;
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:  ;
    %r2 = load i32, ptr %r1
    %r3 = getelementptr [1005 x i32], ptr @parent, i32 0, i32 %r2
    %r4 = load i32, ptr %r3
    %r5 = load i32, ptr %r1
    %r6 = icmp eq i32 %r4,%r5
    br i1 %r6, label %L2, label %L3
L2:  ;
    %r7 = load i32, ptr %r1
    ret i32 %r7
L3:  ;
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
}
define void @merge(i32 %r0,i32 %r1)
{
L0:  ;
    %r6 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:  ;
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
L2:  ;
    %r15 = load i32, ptr %r6
    %r16 = getelementptr [1005 x i32], ptr @parent, i32 0, i32 %r15
    %r17 = load i32, ptr %r4
    store i32 %r17, ptr %r16
    br label %L3
L3:  ;
    ret void
}
define i32 @main()
{
L0:  ;
    %r31 = alloca i32
    %r8 = alloca i32
    %r6 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:  ;
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
    br label %L2
L2:  ;
    %r11 = load i32, ptr %r4
    %r12 = load i32, ptr %r0
    %r13 = icmp slt i32 %r11,%r12
    br i1 %r13, label %L3, label %L4
L3:  ;
    %r14 = load i32, ptr %r4
    %r15 = getelementptr [1005 x i32], ptr @parent, i32 0, i32 %r14
    %r16 = load i32, ptr %r4
    store i32 %r16, ptr %r15
    %r17 = load i32, ptr %r4
    %r18 = add i32 1,0
    %r19 = add i32 %r17,%r18
    store i32 %r19, ptr %r4
    br label %L2
L4:  ;
    %r20 = add i32 0,0
    store i32 %r20, ptr %r4
    br label %L5
L5:  ;
    %r21 = load i32, ptr %r4
    %r22 = load i32, ptr %r2
    %r23 = icmp slt i32 %r21,%r22
    br i1 %r23, label %L6, label %L7
L6:  ;
    %r24 = call i32 @getint()
    store i32 %r24, ptr %r6
    %r25 = call i32 @getint()
    store i32 %r25, ptr %r8
    %r26 = load i32, ptr %r6
    %r27 = load i32, ptr %r8
    call void @merge(i32 %r26,i32 %r27)
    %r28 = load i32, ptr %r4
    %r29 = add i32 1,0
    %r30 = add i32 %r28,%r29
    store i32 %r30, ptr %r4
    br label %L5
L7:  ;
    %r32 = add i32 0,0
    store i32 %r32, ptr %r31
    %r33 = add i32 0,0
    store i32 %r33, ptr %r4
    br label %L8
L8:  ;
    %r34 = load i32, ptr %r4
    %r35 = load i32, ptr %r0
    %r36 = icmp slt i32 %r34,%r35
    br i1 %r36, label %L9, label %L10
L9:  ;
    %r37 = load i32, ptr %r4
    %r38 = getelementptr [1005 x i32], ptr @parent, i32 0, i32 %r37
    %r39 = load i32, ptr %r38
    %r40 = load i32, ptr %r4
    %r41 = icmp eq i32 %r39,%r40
    br i1 %r41, label %L11, label %L12
L10:  ;
    %r48 = load i32, ptr %r31
    call void @putint(i32 %r48)
    %r49 = add i32 0,0
    ret i32 %r49
L11:  ;
    %r42 = load i32, ptr %r31
    %r43 = add i32 1,0
    %r44 = add i32 %r42,%r43
    store i32 %r44, ptr %r31
    br label %L12
L12:  ;
    %r45 = load i32, ptr %r4
    %r46 = add i32 1,0
    %r47 = add i32 %r45,%r46
    store i32 %r47, ptr %r4
    br label %L8
}
