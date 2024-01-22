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
define i32 @maxCliques(i32 %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r10 = load i32, ptr @n
    %r11 = icmp sle i32 1,%r10
    br i1 %r11, label %L12, label %L5
L3:
    %r53 = phi i32 [%r52,%L4],[0,%L12]
    %r49 = phi i32 [%r42,%L4],[1,%L12]
    store i32 %r49, ptr %r16
    %r20 = call i32 @is_clique(i32 %r19)
    %r21 = icmp ne i32 %r20,0
    br i1 %r21, label %L6, label %L7
L4:
    %r44 = load i32, ptr @n
    %r45 = icmp sle i32 %r42,%r44
    br i1 %r45, label %L3, label %L5
L5:
    %r54 = phi i32 [0,%L1],[%r52,%L4]
    ret i32 %r54
L6:
    %r24 = icmp sgt i32 %r1,%r53
    br i1 %r24, label %L8, label %L9
L7:
    %r52 = phi i32 [%r53,%L3],[%r55,%L11]
    %r42 = add i32 %r49,1
    br label %L4
L8:
    br label %L9
L9:
    %r51 = phi i32 [%r53,%L6],[%r1,%L8]
    %r32 = add i32 %r1,1
    %r33 = call i32 @maxCliques(i32 %r49,i32 %r32)
    %r36 = icmp sgt i32 %r33,%r51
    br i1 %r36, label %L10, label %L11
L10:
    br label %L11
L11:
    %r55 = phi i32 [%r51,%L9],[%r33,%L10]
    br label %L7
L12:
    %r16 = getelementptr [30 x i32], ptr @store, i32 0, i32 %r1
    %r19 = add i32 %r1,1
    br label %L3
}
define i32 @main()
{
L0:
    %r2 = alloca [600 x [2 x i32]]
    br label %L1
L1:
    %r0 = call i32 @getint()
    store i32 %r0, ptr @n
    %r1 = call i32 @getint()
    store i32 %r1, ptr @m
    %r6 = load i32, ptr @m
    %r7 = icmp slt i32 0,%r6
    br i1 %r7, label %L10, label %L5
L3:
    %r64 = phi i32 [0,%L10],[%r20,%L4]
    %r10 = call i32 @getint()
    %r68 = getelementptr [600 x [2 x i32]], ptr %r2, i32 0, i32 %r64
    %r13 = getelementptr i32, ptr %r68, i32 0
    store i32 %r10, ptr %r13
    %r14 = call i32 @getint()
    %r17 = getelementptr i32, ptr %r68, i32 1
    store i32 %r14, ptr %r17
    %r20 = add i32 %r64,1
    br label %L4
L4:
    %r22 = load i32, ptr @m
    %r23 = icmp slt i32 %r20,%r22
    br i1 %r23, label %L3, label %L5
L5:
    %r28 = load i32, ptr @m
    %r29 = icmp slt i32 0,%r28
    br i1 %r29, label %L11, label %L9
L7:
    %r66 = phi i32 [0,%L11],[%r54,%L8]
    %r70 = getelementptr [600 x [2 x i32]], ptr %r2, i32 0, i32 %r66
    %r35 = getelementptr i32, ptr %r70, i32 0
    %r36 = load i32, ptr %r35
    %r39 = getelementptr i32, ptr %r70, i32 1
    %r40 = load i32, ptr %r39
    %r41 = getelementptr [30 x [30 x i32]], ptr @graph, i32 0, i32 %r36, i32 %r40
    store i32 1, ptr %r41
    %r46 = load i32, ptr %r39
    %r50 = load i32, ptr %r35
    %r51 = getelementptr [30 x [30 x i32]], ptr @graph, i32 0, i32 %r46, i32 %r50
    store i32 1, ptr %r51
    %r54 = add i32 %r66,1
    br label %L8
L8:
    %r57 = icmp slt i32 %r54,%r56
    br i1 %r57, label %L7, label %L9
L9:
    %r62 = call i32 @maxCliques(i32 0,i32 1)
    call void @putint(i32 %r62)
    ret i32 0
L10:
    br label %L3
L11:
    %r56 = load i32, ptr @m
    br label %L7
}
define i32 @is_clique(i32 %r0)
{
L0:
    br label %L1
L1:
    %r6 = icmp slt i32 1,%r0
    br i1 %r6, label %L12, label %L5
L3:
    %r52 = phi i32 [%r41,%L4],[1,%L12]
    %r12 = add i32 %r52,1
    %r15 = icmp slt i32 %r12,%r0
    br i1 %r15, label %L13, label %L9
L4:
    %r44 = icmp slt i32 %r41,%r0
    br i1 %r44, label %L3, label %L5
L5:
    ret i32 1
L7:
    %r50 = phi i32 [%r33,%L8],[%r12,%L13]
    %r20 = load i32, ptr %r19
    %r22 = getelementptr [30 x i32], ptr @store, i32 0, i32 %r50
    %r23 = load i32, ptr %r22
    %r24 = getelementptr [30 x [30 x i32]], ptr @graph, i32 0, i32 %r20, i32 %r23
    %r25 = load i32, ptr %r24
    %r27 = icmp eq i32 %r25,0
    br i1 %r27, label %L10, label %L11
L8:
    %r36 = icmp slt i32 %r33,%r0
    br i1 %r36, label %L7, label %L9
L9:
    %r41 = add i32 %r52,1
    br label %L4
L10:
    ret i32 0
L11:
    %r33 = add i32 %r50,1
    br label %L8
L12:
    br label %L3
L13:
    %r19 = getelementptr [30 x i32], ptr @store, i32 0, i32 %r52
    br label %L7
}
