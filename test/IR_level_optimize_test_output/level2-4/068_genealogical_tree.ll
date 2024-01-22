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
    br label %L1
L1:
    %r14 = icmp sle i32 1,%r0
    br i1 %r14, label %L23, label %L5
L3:
    %r114 = phi i32 [%r113,%L4],[0,%L23]
    %r111 = phi i32 [%r44,%L4],[0,%L23]
    %r107 = phi i32 [%r77,%L4],[1,%L23]
    %r20 = icmp sle i32 1,%r0
    br i1 %r20, label %L24, label %L9
L4:
    %r80 = icmp sle i32 %r77,%r0
    br i1 %r80, label %L3, label %L5
L5:
    %r86 = icmp slt i32 0,%r0
    br i1 %r86, label %L26, label %L22
L7:
    %r103 = phi i32 [%r33,%L8],[1,%L24]
    %r24 = getelementptr [10 x i32], ptr @indegree, i32 0, i32 %r103
    %r25 = load i32, ptr %r24
    %r27 = icmp eq i32 %r25,0
    br i1 %r27, label %L10, label %L11
L8:
    %r36 = icmp sle i32 %r33,%r0
    br i1 %r36, label %L7, label %L9
L9:
    %r113 = phi i32 [%r114,%L3],[%r103,%L10],[%r114,%L8]
    %r41 = getelementptr [10 x i32], ptr @queue, i32 0, i32 %r111
    store i32 %r113, ptr %r41
    %r44 = add i32 %r111,1
    %r48 = getelementptr [10 x i32], ptr @indegree, i32 0, i32 %r113
    store i32 -1, ptr %r48
    %r52 = icmp sle i32 1,%r0
    br i1 %r52, label %L25, label %L16
L10:
    br label %L9
L11:
    %r33 = add i32 %r103,1
    br label %L8
L14:
    %r105 = phi i32 [%r69,%L15],[1,%L25]
    %r57 = getelementptr i32, ptr %r116, i32 %r105
    %r58 = load i32, ptr %r57
    %r59 = icmp ne i32 %r58,0
    br i1 %r59, label %L17, label %L18
L15:
    %r72 = icmp sle i32 %r69,%r0
    br i1 %r72, label %L14, label %L16
L16:
    %r77 = add i32 %r107,1
    br label %L4
L17:
    %r61 = getelementptr [10 x i32], ptr @indegree, i32 0, i32 %r105
    %r62 = load i32, ptr %r61
    %r64 = sub i32 %r62,1
    store i32 %r64, ptr %r61
    br label %L18
L18:
    %r69 = add i32 %r105,1
    br label %L15
L20:
    %r109 = phi i32 [%r95,%L21],[0,%L26]
    %r90 = getelementptr [10 x i32], ptr @queue, i32 0, i32 %r109
    %r91 = load i32, ptr %r90
    call void @putint(i32 %r91)
    call void @putch(i32 10)
    %r95 = add i32 %r109,1
    br label %L21
L21:
    %r98 = icmp slt i32 %r95,%r0
    br i1 %r98, label %L20, label %L22
L22:
    ret void
L23:
    br label %L3
L24:
    br label %L7
L25:
    %r116 = getelementptr [10 x [10 x i32]], ptr @map, i32 0, i32 %r113
    br label %L14
L26:
    br label %L20
}
define i32 @main()
{
L0:
    br label %L1
L1:
    br label %L10
L3:
    %r45 = phi i32 [1,%L10],[%r37,%L4]
    %r12 = call i32 @getint()
    %r15 = icmp ne i32 %r12,0
    br i1 %r15, label %L11, label %L9
L4:
    %r40 = icmp sle i32 %r37,5
    br i1 %r40, label %L3, label %L5
L5:
    call void @topo(i32 5)
    ret i32 0
L7:
    %r49 = phi i32 [%r29,%L8],[%r12,%L11]
    %r21 = getelementptr i32, ptr %r51, i32 %r49
    store i32 1, ptr %r21
    %r23 = getelementptr [10 x i32], ptr @indegree, i32 0, i32 %r49
    %r24 = load i32, ptr %r23
    %r26 = add i32 %r24,1
    store i32 %r26, ptr %r23
    %r29 = call i32 @getint()
    br label %L8
L8:
    %r32 = icmp ne i32 %r29,0
    br i1 %r32, label %L7, label %L9
L9:
    %r37 = add i32 %r45,1
    br label %L4
L10:
    br label %L3
L11:
    %r51 = getelementptr [10 x [10 x i32]], ptr @map, i32 0, i32 %r45
    br label %L7
}
