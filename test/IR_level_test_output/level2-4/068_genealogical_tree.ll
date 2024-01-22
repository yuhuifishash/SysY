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
@map = global [10x [10x i32]] zeroinitializer
@indegree = global [10x i32] zeroinitializer
@queue = global [10x i32] zeroinitializer
define void @topo(i32 %r0)
{
L0:
    %r8 = alloca i32
    %r6 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    %r7 = add i32 0,0
    store i32 %r7, ptr %r6
    %r9 = add i32 0,0
    store i32 %r9, ptr %r8
    %r10 = add i32 0,1
    store i32 %r10, ptr %r6
    %r11 = add i32 0,1
    store i32 %r11, ptr %r8
    br label %L1
L1:
    %r12 = load i32, ptr %r6
    %r13 = load i32, ptr %r1
    %r14 = icmp sle i32 %r12,%r13
    br i1 %r14, label %L2, label %L3
L2:
    %r17 = add i32 0,1
    store i32 %r17, ptr %r8
    br label %L4
L3:
    %r68 = add i32 0,0
    store i32 %r68, ptr %r6
    br label %L15
L4:
    %r18 = load i32, ptr %r8
    %r19 = load i32, ptr %r1
    %r20 = icmp sle i32 %r18,%r19
    br i1 %r20, label %L5, label %L6
L5:
    %r23 = load i32, ptr %r8
    %r24 = getelementptr [10 x i32], ptr @indegree, i32 0, i32 %r23
    %r25 = load i32, ptr %r24
    %r26 = add i32 0,0
    %r27 = icmp eq i32 %r25,%r26
    br i1 %r27, label %L7, label %L8
L6:
    %r34 = load i32, ptr %r2
    %r35 = load i32, ptr %r4
    %r36 = getelementptr [10 x i32], ptr @queue, i32 0, i32 %r35
    store i32 %r34, ptr %r36
    %r37 = load i32, ptr %r4
    %r38 = add i32 0,1
    %r39 = add i32 %r37,%r38
    store i32 %r39, ptr %r4
    %r40 = add i32 0,1
    %r41 = sub i32 0,%r40
    %r42 = load i32, ptr %r2
    %r43 = getelementptr [10 x i32], ptr @indegree, i32 0, i32 %r42
    store i32 %r41, ptr %r43
    %r44 = add i32 0,1
    store i32 %r44, ptr %r8
    br label %L10
L7:
    %r30 = load i32, ptr %r8
    store i32 %r30, ptr %r2
    br label %L6
L8:
    %r31 = load i32, ptr %r8
    %r32 = add i32 0,1
    %r33 = add i32 %r31,%r32
    store i32 %r33, ptr %r8
    br label %L4
L10:
    %r45 = load i32, ptr %r8
    %r46 = load i32, ptr %r1
    %r47 = icmp sle i32 %r45,%r46
    br i1 %r47, label %L11, label %L12
L11:
    %r50 = load i32, ptr %r2
    %r51 = load i32, ptr %r8
    %r52 = getelementptr [10 x [10 x i32]], ptr @map, i32 0, i32 %r50, i32 %r51
    %r53 = load i32, ptr %r52
    %r54 = icmp ne i32 %r53,0
    br i1 %r54, label %L13, label %L14
L12:
    %r65 = load i32, ptr %r6
    %r66 = add i32 0,1
    %r67 = add i32 %r65,%r66
    store i32 %r67, ptr %r6
    br label %L1
L13:
    %r55 = load i32, ptr %r8
    %r56 = getelementptr [10 x i32], ptr @indegree, i32 0, i32 %r55
    %r57 = load i32, ptr %r56
    %r58 = add i32 0,1
    %r59 = sub i32 %r57,%r58
    %r60 = load i32, ptr %r8
    %r61 = getelementptr [10 x i32], ptr @indegree, i32 0, i32 %r60
    store i32 %r59, ptr %r61
    br label %L14
L14:
    %r62 = load i32, ptr %r8
    %r63 = add i32 0,1
    %r64 = add i32 %r62,%r63
    store i32 %r64, ptr %r8
    br label %L10
L15:
    %r69 = load i32, ptr %r6
    %r70 = load i32, ptr %r1
    %r71 = icmp slt i32 %r69,%r70
    br i1 %r71, label %L16, label %L17
L16:
    %r74 = load i32, ptr %r6
    %r75 = getelementptr [10 x i32], ptr @queue, i32 0, i32 %r74
    %r76 = load i32, ptr %r75
    call void @putint(i32 %r76)
    %r77 = add i32 0,10
    call void @putch(i32 %r77)
    %r78 = load i32, ptr %r6
    %r79 = add i32 0,1
    %r80 = add i32 %r78,%r79
    store i32 %r80, ptr %r6
    br label %L15
L17:
    ret void
}
define i32 @main()
{
L0:
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r5 = add i32 0,1
    store i32 %r5, ptr %r4
    %r6 = add i32 0,5
    store i32 %r6, ptr %r0
    br label %L1
L1:
    %r7 = load i32, ptr %r4
    %r8 = load i32, ptr %r0
    %r9 = icmp sle i32 %r7,%r8
    br i1 %r9, label %L2, label %L3
L2:
    %r12 = call i32 @getint()
    store i32 %r12, ptr %r2
    br label %L4
L3:
    %r33 = load i32, ptr %r0
    call void @topo(i32 %r33)
    %r34 = add i32 0,0
    ret i32 %r34
L4:
    %r13 = load i32, ptr %r2
    %r14 = add i32 0,0
    %r15 = icmp ne i32 %r13,%r14
    br i1 %r15, label %L5, label %L6
L5:
    %r18 = add i32 0,1
    %r19 = load i32, ptr %r4
    %r20 = load i32, ptr %r2
    %r21 = getelementptr [10 x [10 x i32]], ptr @map, i32 0, i32 %r19, i32 %r20
    store i32 %r18, ptr %r21
    %r22 = load i32, ptr %r2
    %r23 = getelementptr [10 x i32], ptr @indegree, i32 0, i32 %r22
    %r24 = load i32, ptr %r23
    %r25 = add i32 0,1
    %r26 = add i32 %r24,%r25
    %r27 = load i32, ptr %r2
    %r28 = getelementptr [10 x i32], ptr @indegree, i32 0, i32 %r27
    store i32 %r26, ptr %r28
    %r29 = call i32 @getint()
    store i32 %r29, ptr %r2
    br label %L4
L6:
    %r30 = load i32, ptr %r4
    %r31 = add i32 0,1
    %r32 = add i32 %r30,%r31
    store i32 %r32, ptr %r4
    br label %L1
}
