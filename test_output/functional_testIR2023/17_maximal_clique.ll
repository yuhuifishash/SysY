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
@maxN = global i32 30
@maxM = global i32 600
@store = global [30x i32] zeroinitializer
@n = global i32 zeroinitializer
@m = global i32 zeroinitializer
@graph = global [30x [30x i32]] zeroinitializer
define i32 @is_clique(i32 %r0)
{
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r34 = phi i32 [1,%L1],[%r10,%L7]
    %r6 = icmp slt i32 %r34,%r0
    br i1 %r6, label %L3, label %L4
L3:  ;
    %r10 = add i32 %r34,1
    br label %L5
L4:  ;
    ret i32 1
L5:  ;
    %r33 = phi i32 [%r10,%L3],[%r27,%L9]
    %r13 = icmp slt i32 %r33,%r0
    br i1 %r13, label %L6, label %L7
L6:  ;
    %r15 = getelementptr [30 x i32], ptr @store, i32 0, i32 %r34
    %r16 = load i32, ptr %r15
    %r18 = getelementptr [30 x i32], ptr @store, i32 0, i32 %r33
    %r19 = load i32, ptr %r18
    %r20 = getelementptr [30 x [30 x i32]], ptr @graph, i32 0, i32 %r16, i32 %r19
    %r21 = load i32, ptr %r20
    %r23 = icmp eq i32 %r21,0
    br i1 %r23, label %L8, label %L9
L7:  ;latch
    br label %L2
L8:  ;
    ret i32 0
L9:  ;latch
    %r27 = add i32 %r33,1
    br label %L5
}
define i32 @maxCliques(i32 %r0,i32 %r1)
{
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r41 = phi i32 [0,%L1],[%r40,%L6]
    %r38 = phi i32 [1,%L1],[%r36,%L6]
    %r10 = load i32, ptr @n
    %r11 = icmp sle i32 %r38,%r10
    br i1 %r11, label %L3, label %L4
L3:  ;
    %r13 = getelementptr [30 x i32], ptr @store, i32 0, i32 %r1
    store i32 %r38, ptr %r13
    %r17 = add i32 %r1,1
    %r18 = call i32 @is_clique(i32 %r17)
    %r19 = icmp ne i32 %r18,0
    br i1 %r19, label %L5, label %L6
L4:  ;
    ret i32 %r41
L5:  ;
    %r22 = icmp sgt i32 %r1,%r41
    br i1 %r22, label %L7, label %L8
L6:  ;latch
    %r40 = phi i32 [%r41,%L3],[%r42,%L10]
    %r36 = add i32 %r38,1
    br label %L2
L7:  ;
    br label %L8
L8:  ;
    %r39 = phi i32 [%r41,%L5],[%r1,%L7]
    %r29 = call i32 @maxCliques(i32 %r38,i32 %r17)
    %r32 = icmp sgt i32 %r29,%r39
    br i1 %r32, label %L9, label %L10
L9:  ;
    br label %L10
L10:  ;
    %r42 = phi i32 [%r39,%L8],[%r29,%L9]
    br label %L6
}
define i32 @main()
{
L0:  ;
    %r2 = alloca [600 x [2 x i32]]
    br label %L1
L1:  ;
    %r0 = call i32 @getint()
    store i32 %r0, ptr @n
    %r1 = call i32 @getint()
    store i32 %r1, ptr @m
    br label %L2
L2:  ;
    %r50 = phi i32 [0,%L1],[%r18,%L3]
    %r6 = load i32, ptr @m
    %r7 = icmp slt i32 %r50,%r6
    br i1 %r7, label %L3, label %L4
L3:  ;latch
    %r10 = getelementptr [600 x [2 x i32]], ptr %r2, i32 0, i32 %r50, i32 0
    %r11 = call i32 @getint()
    store i32 %r11, ptr %r10
    %r14 = getelementptr [600 x [2 x i32]], ptr %r2, i32 0, i32 %r50, i32 1
    %r15 = call i32 @getint()
    store i32 %r15, ptr %r14
    %r18 = add i32 %r50,1
    br label %L2
L4:  ;
    br label %L5
L5:  ;
    %r51 = phi i32 [0,%L4],[%r45,%L6]
    %r21 = load i32, ptr @m
    %r22 = icmp slt i32 %r51,%r21
    br i1 %r22, label %L6, label %L7
L6:  ;latch
    %r25 = getelementptr [600 x [2 x i32]], ptr %r2, i32 0, i32 %r51, i32 0
    %r26 = load i32, ptr %r25
    %r29 = getelementptr [600 x [2 x i32]], ptr %r2, i32 0, i32 %r51, i32 1
    %r30 = load i32, ptr %r29
    %r31 = getelementptr [30 x [30 x i32]], ptr @graph, i32 0, i32 %r26, i32 %r30
    store i32 1, ptr %r31
    %r41 = getelementptr [30 x [30 x i32]], ptr @graph, i32 0, i32 %r30, i32 %r26
    store i32 1, ptr %r41
    %r45 = add i32 %r51,1
    br label %L5
L7:  ;
    %r48 = call i32 @maxCliques(i32 0,i32 1)
    call void @putint(i32 %r48)
    ret i32 0
}
