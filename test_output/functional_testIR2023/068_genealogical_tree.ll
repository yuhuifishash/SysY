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
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r78 = phi i32 [0,%L1],[%r77,%L13]
    %r76 = phi i32 [0,%L1],[%r33,%L13]
    %r74 = phi i32 [1,%L1],[%r59,%L13]
    %r14 = icmp sle i32 %r74,%r0
    br i1 %r14, label %L3, label %L4
L3:  ;
    br label %L5
L4:  ;
    br label %L16
L5:  ;
    %r72 = phi i32 [1,%L3],[%r27,%L9]
    %r18 = icmp sle i32 %r72,%r0
    br i1 %r18, label %L6, label %L7
L6:  ;
    %r20 = getelementptr [10 x i32], ptr @indegree, i32 0, i32 %r72
    %r21 = load i32, ptr %r20
    %r23 = icmp eq i32 %r21,0
    br i1 %r23, label %L8, label %L9
L7:  ;
    %r77 = phi i32 [%r78,%L5],[%r72,%L8]
    %r29 = getelementptr [10 x i32], ptr @queue, i32 0, i32 %r76
    store i32 %r77, ptr %r29
    %r33 = add i32 %r76,1
    %r35 = getelementptr [10 x i32], ptr @indegree, i32 0, i32 %r77
    store i32 -1, ptr %r35
    br label %L11
L8:  ;
    br label %L7
L9:  ;
    %r27 = add i32 %r72,1
    br label %L5
L11:  ;
    %r73 = phi i32 [1,%L7],[%r56,%L15]
    %r41 = icmp sle i32 %r73,%r0
    br i1 %r41, label %L12, label %L13
L12:  ;
    %r44 = getelementptr [10 x [10 x i32]], ptr @map, i32 0, i32 %r77, i32 %r73
    %r45 = load i32, ptr %r44
    %r46 = icmp ne i32 %r45,0
    br i1 %r46, label %L14, label %L15
L13:  ;
    %r59 = add i32 %r74,1
    br label %L2
L14:  ;
    %r48 = getelementptr [10 x i32], ptr @indegree, i32 0, i32 %r73
    %r51 = load i32, ptr %r48
    %r53 = sub i32 %r51,1
    store i32 %r53, ptr %r48
    br label %L15
L15:  ;
    %r56 = add i32 %r73,1
    br label %L11
L16:  ;
    %r75 = phi i32 [0,%L4],[%r70,%L17]
    %r63 = icmp slt i32 %r75,%r0
    br i1 %r63, label %L17, label %L18
L17:  ;
    %r65 = getelementptr [10 x i32], ptr @queue, i32 0, i32 %r75
    %r66 = load i32, ptr %r65
    call void @putint(i32 %r66)
    call void @putch(i32 10)
    %r70 = add i32 %r75,1
    br label %L16
L18:  ;
    ret void
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r31 = phi i32 [1,%L1],[%r28,%L7]
    %r9 = icmp sle i32 %r31,5
    br i1 %r9, label %L3, label %L4
L3:  ;
    %r10 = call i32 @getint()
    br label %L5
L4:  ;
    call void @topo(i32 5)
    ret i32 0
L5:  ;
    %r33 = phi i32 [%r10,%L3],[%r25,%L6]
    %r13 = icmp ne i32 %r33,0
    br i1 %r13, label %L6, label %L7
L6:  ;
    %r16 = getelementptr [10 x [10 x i32]], ptr @map, i32 0, i32 %r31, i32 %r33
    store i32 1, ptr %r16
    %r19 = getelementptr [10 x i32], ptr @indegree, i32 0, i32 %r33
    %r22 = load i32, ptr %r19
    %r24 = add i32 %r22,1
    store i32 %r24, ptr %r19
    %r25 = call i32 @getint()
    br label %L5
L7:  ;
    %r28 = add i32 %r31,1
    br label %L2
}
