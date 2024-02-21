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
@map = global [10x [10x i32]] zeroinitializer
@indegree = global [10x i32] zeroinitializer
@queue = global [10x i32] zeroinitializer
define void @topo(i32 %r0)
{
L0:  ;
    %r8 = alloca i32
    %r6 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:  ;
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    %r7 = add i32 0,0
    store i32 %r7, ptr %r6
    %r9 = add i32 0,0
    store i32 %r9, ptr %r8
    %r10 = add i32 1,0
    store i32 %r10, ptr %r6
    %r11 = add i32 1,0
    store i32 %r11, ptr %r8
    br label %L2
L2:  ;
    %r12 = load i32, ptr %r6
    %r13 = load i32, ptr %r1
    %r14 = icmp sle i32 %r12,%r13
    br i1 %r14, label %L3, label %L4
L3:  ;
    %r15 = add i32 1,0
    store i32 %r15, ptr %r8
    br label %L5
L4:  ;
    %r60 = add i32 0,0
    store i32 %r60, ptr %r6
    br label %L16
L5:  ;
    %r16 = load i32, ptr %r8
    %r17 = load i32, ptr %r1
    %r18 = icmp sle i32 %r16,%r17
    br i1 %r18, label %L6, label %L7
L6:  ;
    %r19 = load i32, ptr %r8
    %r20 = getelementptr [10 x i32], ptr @indegree, i32 0, i32 %r19
    %r21 = load i32, ptr %r20
    %r22 = add i32 0,0
    %r23 = icmp eq i32 %r21,%r22
    br i1 %r23, label %L8, label %L9
L7:  ;
    %r28 = load i32, ptr %r4
    %r29 = getelementptr [10 x i32], ptr @queue, i32 0, i32 %r28
    %r30 = load i32, ptr %r2
    store i32 %r30, ptr %r29
    %r31 = load i32, ptr %r4
    %r32 = add i32 1,0
    %r33 = add i32 %r31,%r32
    store i32 %r33, ptr %r4
    %r34 = load i32, ptr %r2
    %r35 = getelementptr [10 x i32], ptr @indegree, i32 0, i32 %r34
    %r36 = add i32 1,0
    %r37 = sub i32 0,%r36
    store i32 %r37, ptr %r35
    %r38 = add i32 1,0
    store i32 %r38, ptr %r8
    br label %L11
L8:  ;
    %r24 = load i32, ptr %r8
    store i32 %r24, ptr %r2
    br label %L7
L9:  ;
    %r25 = load i32, ptr %r8
    %r26 = add i32 1,0
    %r27 = add i32 %r25,%r26
    store i32 %r27, ptr %r8
    br label %L5
L11:  ;
    %r39 = load i32, ptr %r8
    %r40 = load i32, ptr %r1
    %r41 = icmp sle i32 %r39,%r40
    br i1 %r41, label %L12, label %L13
L12:  ;
    %r42 = load i32, ptr %r2
    %r43 = load i32, ptr %r8
    %r44 = getelementptr [10 x [10 x i32]], ptr @map, i32 0, i32 %r42, i32 %r43
    %r45 = load i32, ptr %r44
    %r46 = icmp ne i32 %r45,0
    br i1 %r46, label %L14, label %L15
L13:  ;
    %r57 = load i32, ptr %r6
    %r58 = add i32 1,0
    %r59 = add i32 %r57,%r58
    store i32 %r59, ptr %r6
    br label %L2
L14:  ;
<<<<<<< HEAD
    %r47 = load i32, ptr %r8
    %r48 = getelementptr [10 x i32], ptr @indegree, i32 0, i32 %r47
    %r49 = load i32, ptr %r8
    %r50 = getelementptr [10 x i32], ptr @indegree, i32 0, i32 %r49
    %r51 = load i32, ptr %r50
    %r52 = add i32 1,0
    %r53 = sub i32 %r51,%r52
=======
    %r48 = getelementptr [10 x i32], ptr @indegree, i32 0, i32 %r73
    %r51 = load i32, ptr %r48
    %r53 = sub i32 %r51,1
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    store i32 %r53, ptr %r48
    br label %L15
L15:  ;
    %r54 = load i32, ptr %r8
    %r55 = add i32 1,0
    %r56 = add i32 %r54,%r55
    store i32 %r56, ptr %r8
    br label %L11
L16:  ;
    %r61 = load i32, ptr %r6
    %r62 = load i32, ptr %r1
    %r63 = icmp slt i32 %r61,%r62
    br i1 %r63, label %L17, label %L18
L17:  ;
    %r64 = load i32, ptr %r6
    %r65 = getelementptr [10 x i32], ptr @queue, i32 0, i32 %r64
    %r66 = load i32, ptr %r65
    call void @putint(i32 %r66)
    %r67 = add i32 10,0
    call void @putch(i32 %r67)
    %r68 = load i32, ptr %r6
    %r69 = add i32 1,0
    %r70 = add i32 %r68,%r69
    store i32 %r70, ptr %r6
    br label %L16
L18:  ;
    ret void
}
define i32 @main()
{
L0:  ;
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:  ;
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r5 = add i32 1,0
    store i32 %r5, ptr %r4
    %r6 = add i32 5,0
    store i32 %r6, ptr %r0
    br label %L2
L2:  ;
    %r7 = load i32, ptr %r4
    %r8 = load i32, ptr %r0
    %r9 = icmp sle i32 %r7,%r8
    br i1 %r9, label %L3, label %L4
L3:  ;
    %r10 = call i32 @getint()
    store i32 %r10, ptr %r2
    br label %L5
L4:  ;
    %r29 = load i32, ptr %r0
    call void @topo(i32 %r29)
    %r30 = add i32 0,0
    ret i32 %r30
L5:  ;
    %r11 = load i32, ptr %r2
    %r12 = add i32 0,0
    %r13 = icmp ne i32 %r11,%r12
    br i1 %r13, label %L6, label %L7
L6:  ;
<<<<<<< HEAD
    %r14 = load i32, ptr %r4
    %r15 = load i32, ptr %r2
    %r16 = getelementptr [10 x [10 x i32]], ptr @map, i32 0, i32 %r14, i32 %r15
    %r17 = add i32 1,0
    store i32 %r17, ptr %r16
    %r18 = load i32, ptr %r2
    %r19 = getelementptr [10 x i32], ptr @indegree, i32 0, i32 %r18
    %r20 = load i32, ptr %r2
    %r21 = getelementptr [10 x i32], ptr @indegree, i32 0, i32 %r20
    %r22 = load i32, ptr %r21
    %r23 = add i32 1,0
    %r24 = add i32 %r22,%r23
=======
    %r16 = getelementptr [10 x [10 x i32]], ptr @map, i32 0, i32 %r31, i32 %r33
    store i32 1, ptr %r16
    %r19 = getelementptr [10 x i32], ptr @indegree, i32 0, i32 %r33
    %r22 = load i32, ptr %r19
    %r24 = add i32 %r22,1
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    store i32 %r24, ptr %r19
    %r25 = call i32 @getint()
    store i32 %r25, ptr %r2
    br label %L5
L7:  ;
    %r26 = load i32, ptr %r4
    %r27 = add i32 1,0
    %r28 = add i32 %r26,%r27
    store i32 %r28, ptr %r4
    br label %L2
}
