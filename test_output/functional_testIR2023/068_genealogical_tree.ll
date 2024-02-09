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
L0:
    %r7 = alloca i32
    %r6 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    store i32 0, ptr %r6
    store i32 0, ptr %r7
    %r8 = add i32 1,0
    store i32 %r8, ptr %r6
    %r9 = add i32 1,0
    store i32 %r9, ptr %r7
    br label %L2
L2:
    %r10 = load i32, ptr %r6
    %r11 = load i32, ptr %r1
    %r12 = icmp sle i32 %r10,%r11
    br i1 %r12, label %L3, label %L4
L3:
    %r13 = add i32 1,0
    store i32 %r13, ptr %r7
    br label %L5
L4:
    %r58 = add i32 0,0
    store i32 %r58, ptr %r6
    br label %L16
L5:
    %r14 = load i32, ptr %r7
    %r15 = load i32, ptr %r1
    %r16 = icmp sle i32 %r14,%r15
    br i1 %r16, label %L6, label %L7
L6:
    %r17 = load i32, ptr %r7
    %r18 = getelementptr [10 x i32], ptr @indegree, i32 0, i32 %r17
    %r19 = load i32, ptr %r18
    %r20 = add i32 0,0
    %r21 = icmp eq i32 %r19,%r20
    br i1 %r21, label %L8, label %L9
L7:
    %r26 = load i32, ptr %r4
    %r27 = getelementptr [10 x i32], ptr @queue, i32 0, i32 %r26
    %r28 = load i32, ptr %r2
    store i32 %r28, ptr %r27
    %r29 = load i32, ptr %r4
    %r30 = add i32 1,0
    %r31 = add i32 %r29,%r30
    store i32 %r31, ptr %r4
    %r32 = load i32, ptr %r2
    %r33 = getelementptr [10 x i32], ptr @indegree, i32 0, i32 %r32
    %r34 = add i32 1,0
    %r35 = sub i32 0,%r34
    store i32 %r35, ptr %r33
    %r36 = add i32 1,0
    store i32 %r36, ptr %r7
    br label %L11
L8:
    %r22 = load i32, ptr %r7
    store i32 %r22, ptr %r2
    br label %L7
L9:
    %r23 = load i32, ptr %r7
    %r24 = add i32 1,0
    %r25 = add i32 %r23,%r24
    store i32 %r25, ptr %r7
    br label %L5
L10:
    br label %L9
L11:
    %r37 = load i32, ptr %r7
    %r38 = load i32, ptr %r1
    %r39 = icmp sle i32 %r37,%r38
    br i1 %r39, label %L12, label %L13
L12:
    %r40 = load i32, ptr %r2
    %r41 = load i32, ptr %r7
    %r42 = getelementptr [10 x [10 x i32]], ptr @map, i32 0, i32 %r40, i32 %r41
    %r43 = load i32, ptr %r42
    %r44 = icmp ne i32 %r43,0
    br i1 %r44, label %L14, label %L15
L13:
    %r55 = load i32, ptr %r6
    %r56 = add i32 1,0
    %r57 = add i32 %r55,%r56
    store i32 %r57, ptr %r6
    br label %L2
L14:
    %r45 = load i32, ptr %r7
    %r46 = getelementptr [10 x i32], ptr @indegree, i32 0, i32 %r45
    %r47 = load i32, ptr %r7
    %r48 = getelementptr [10 x i32], ptr @indegree, i32 0, i32 %r47
    %r49 = load i32, ptr %r48
    %r50 = add i32 1,0
    %r51 = sub i32 %r49,%r50
    store i32 %r51, ptr %r46
    br label %L15
L15:
    %r52 = load i32, ptr %r7
    %r53 = add i32 1,0
    %r54 = add i32 %r52,%r53
    store i32 %r54, ptr %r7
    br label %L11
L16:
    %r59 = load i32, ptr %r6
    %r60 = load i32, ptr %r1
    %r61 = icmp slt i32 %r59,%r60
    br i1 %r61, label %L17, label %L18
L17:
    %r62 = load i32, ptr %r6
    %r63 = getelementptr [10 x i32], ptr @queue, i32 0, i32 %r62
    %r64 = load i32, ptr %r63
    call void @putint(i32 %r64)
    %r65 = add i32 10,0
    call void @putch(i32 %r65)
    %r66 = load i32, ptr %r6
    %r67 = add i32 1,0
    %r68 = add i32 %r66,%r67
    store i32 %r68, ptr %r6
    br label %L16
L18:
    ret void
}
define i32 @main()
{
L0:
    %r2 = alloca i32
    %r1 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r0
    store i32 0, ptr %r1
    %r3 = add i32 1,0
    store i32 %r3, ptr %r2
    %r4 = add i32 5,0
    store i32 %r4, ptr %r0
    br label %L2
L2:
    %r5 = load i32, ptr %r2
    %r6 = load i32, ptr %r0
    %r7 = icmp sle i32 %r5,%r6
    br i1 %r7, label %L3, label %L4
L3:
    %r8 = call i32 @getint()
    store i32 %r8, ptr %r1
    br label %L5
L4:
    %r27 = load i32, ptr %r0
    call void @topo(i32 %r27)
    %r28 = add i32 0,0
    ret i32 %r28
L5:
    %r9 = load i32, ptr %r1
    %r10 = add i32 0,0
    %r11 = icmp ne i32 %r9,%r10
    br i1 %r11, label %L6, label %L7
L6:
    %r12 = load i32, ptr %r2
    %r13 = load i32, ptr %r1
    %r14 = getelementptr [10 x [10 x i32]], ptr @map, i32 0, i32 %r12, i32 %r13
    %r15 = add i32 1,0
    store i32 %r15, ptr %r14
    %r16 = load i32, ptr %r1
    %r17 = getelementptr [10 x i32], ptr @indegree, i32 0, i32 %r16
    %r18 = load i32, ptr %r1
    %r19 = getelementptr [10 x i32], ptr @indegree, i32 0, i32 %r18
    %r20 = load i32, ptr %r19
    %r21 = add i32 1,0
    %r22 = add i32 %r20,%r21
    store i32 %r22, ptr %r17
    %r23 = call i32 @getint()
    store i32 %r23, ptr %r1
    br label %L5
L7:
    %r24 = load i32, ptr %r2
    %r25 = add i32 1,0
    %r26 = add i32 %r24,%r25
    store i32 %r26, ptr %r2
    br label %L2
}
