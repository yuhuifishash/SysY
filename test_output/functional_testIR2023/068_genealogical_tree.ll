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
    %r8 = alloca i32
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
    %r7 = add i32 0,0
    store i32 %r7, ptr %r6
    %r9 = add i32 0,0
    store i32 %r9, ptr %r8
    %r10 = add i32 0,1
    store i32 %r10, ptr %r6
    %r11 = add i32 0,1
    store i32 %r11, ptr %r8
    %r12 = load i32, ptr %r6
    %r13 = load i32, ptr %r1
    %r14 = icmp sle i32 %r12,%r13
    br i1 %r14, label %L3, label %L5
L3:
    %r17 = add i32 0,1
    store i32 %r17, ptr %r8
    %r18 = load i32, ptr %r8
    %r19 = load i32, ptr %r1
    %r20 = icmp sle i32 %r18,%r19
    br i1 %r20, label %L7, label %L9
L4:
    %r78 = load i32, ptr %r6
    %r79 = load i32, ptr %r1
    %r80 = icmp sle i32 %r78,%r79
    br i1 %r80, label %L3, label %L5
L5:
    %r83 = add i32 0,0
    store i32 %r83, ptr %r6
    %r84 = load i32, ptr %r6
    %r85 = load i32, ptr %r1
    %r86 = icmp slt i32 %r84,%r85
    br i1 %r86, label %L20, label %L22
L7:
    %r23 = load i32, ptr %r8
    %r24 = getelementptr [10 x i32], ptr @indegree, i32 0, i32 %r23
    %r25 = load i32, ptr %r24
    %r26 = add i32 0,0
    %r27 = icmp eq i32 %r25,%r26
    br i1 %r27, label %L10, label %L11
L8:
    %r34 = load i32, ptr %r8
    %r35 = load i32, ptr %r1
    %r36 = icmp sle i32 %r34,%r35
    br i1 %r36, label %L7, label %L9
L9:
    %r39 = load i32, ptr %r2
    %r40 = load i32, ptr %r4
    %r41 = getelementptr [10 x i32], ptr @queue, i32 0, i32 %r40
    store i32 %r39, ptr %r41
    %r42 = load i32, ptr %r4
    %r43 = add i32 0,1
    %r44 = add i32 %r42,%r43
    store i32 %r44, ptr %r4
    %r45 = add i32 0,1
    %r46 = sub i32 0,%r45
    %r47 = load i32, ptr %r2
    %r48 = getelementptr [10 x i32], ptr @indegree, i32 0, i32 %r47
    store i32 %r46, ptr %r48
    %r49 = add i32 0,1
    store i32 %r49, ptr %r8
    %r50 = load i32, ptr %r8
    %r51 = load i32, ptr %r1
    %r52 = icmp sle i32 %r50,%r51
    br i1 %r52, label %L14, label %L16
L10:
    %r30 = load i32, ptr %r8
    store i32 %r30, ptr %r2
    br label %L9
L11:
    %r31 = load i32, ptr %r8
    %r32 = add i32 0,1
    %r33 = add i32 %r31,%r32
    store i32 %r33, ptr %r8
    br label %L8
L14:
    %r55 = load i32, ptr %r2
    %r56 = load i32, ptr %r8
    %r57 = getelementptr [10 x [10 x i32]], ptr @map, i32 0, i32 %r55, i32 %r56
    %r58 = load i32, ptr %r57
    %r59 = icmp ne i32 %r58,0
    br i1 %r59, label %L17, label %L18
L15:
    %r70 = load i32, ptr %r8
    %r71 = load i32, ptr %r1
    %r72 = icmp sle i32 %r70,%r71
    br i1 %r72, label %L14, label %L16
L16:
    %r75 = load i32, ptr %r6
    %r76 = add i32 0,1
    %r77 = add i32 %r75,%r76
    store i32 %r77, ptr %r6
    br label %L4
L17:
    %r60 = load i32, ptr %r8
    %r61 = getelementptr [10 x i32], ptr @indegree, i32 0, i32 %r60
    %r62 = load i32, ptr %r61
    %r63 = add i32 0,1
    %r64 = sub i32 %r62,%r63
    %r65 = load i32, ptr %r8
    %r66 = getelementptr [10 x i32], ptr @indegree, i32 0, i32 %r65
    store i32 %r64, ptr %r66
    br label %L18
L18:
    %r67 = load i32, ptr %r8
    %r68 = add i32 0,1
    %r69 = add i32 %r67,%r68
    store i32 %r69, ptr %r8
    br label %L15
L20:
    %r89 = load i32, ptr %r6
    %r90 = getelementptr [10 x i32], ptr @queue, i32 0, i32 %r89
    %r91 = load i32, ptr %r90
    call void @putint(i32 %r91)
    %r92 = add i32 0,10
    call void @putch(i32 %r92)
    %r93 = load i32, ptr %r6
    %r94 = add i32 0,1
    %r95 = add i32 %r93,%r94
    store i32 %r95, ptr %r6
    br label %L21
L21:
    %r96 = load i32, ptr %r6
    %r97 = load i32, ptr %r1
    %r98 = icmp slt i32 %r96,%r97
    br i1 %r98, label %L20, label %L22
L22:
    ret void
}
define i32 @main()
{
L0:
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r5 = add i32 0,1
    store i32 %r5, ptr %r4
    %r6 = add i32 0,5
    store i32 %r6, ptr %r0
    %r7 = load i32, ptr %r4
    %r8 = load i32, ptr %r0
    %r9 = icmp sle i32 %r7,%r8
    br i1 %r9, label %L3, label %L5
L3:
    %r12 = call i32 @getint()
    store i32 %r12, ptr %r2
    %r13 = load i32, ptr %r2
    %r14 = add i32 0,0
    %r15 = icmp ne i32 %r13,%r14
    br i1 %r15, label %L7, label %L9
L4:
    %r38 = load i32, ptr %r4
    %r39 = load i32, ptr %r0
    %r40 = icmp sle i32 %r38,%r39
    br i1 %r40, label %L3, label %L5
L5:
    %r43 = load i32, ptr %r0
    call void @topo(i32 %r43)
    %r44 = add i32 0,0
    ret i32 %r44
L7:
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
    br label %L8
L8:
    %r30 = load i32, ptr %r2
    %r31 = add i32 0,0
    %r32 = icmp ne i32 %r30,%r31
    br i1 %r32, label %L7, label %L9
L9:
    %r35 = load i32, ptr %r4
    %r36 = add i32 0,1
    %r37 = add i32 %r35,%r36
    store i32 %r37, ptr %r4
    br label %L4
}
