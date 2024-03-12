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
@INF = global i32 1879048192
@size = global [10x i32] zeroinitializer
@to = global [10x [10x i32]] zeroinitializer
@cap = global [10x [10x i32]] zeroinitializer
@rev = global [10x [10x i32]] zeroinitializer
@used = global [10x i32] zeroinitializer
define void @my_memset(ptr %r0,i32 %r1,i32 %r2)
{
L0:  ;
    br label %L1
L1:  ;  preheader0
    br label %L2
L2:  ;  exiting0  header0
    %r16 = phi i32 [0,%L1],[%r15,%L3]
    %r9 = icmp slt i32 %r16,%r2
    br i1 %r9, label %L3, label %L4
L3:  ;  latch0
    %r11 = getelementptr i32, ptr %r0, i32 %r16
    store i32 %r1, ptr %r11
    %r15 = add i32 %r16,1
    br label %L2
L4:  ;
    ret void
}
define void @add_node(i32 %r0,i32 %r1,i32 %r2)
{
L0:  ;
    br label %L1
L1:  ;
    %r8 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r0
    %r9 = load i32, ptr %r8
    %r10 = getelementptr [10 x [10 x i32]], ptr @to, i32 0, i32 %r0, i32 %r9
    store i32 %r1, ptr %r10
    %r16 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r0, i32 %r9
    store i32 %r2, ptr %r16
    %r22 = getelementptr [10 x [10 x i32]], ptr @rev, i32 0, i32 %r0, i32 %r9
    %r24 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r1
    %r25 = load i32, ptr %r24
    store i32 %r25, ptr %r22
    %r30 = getelementptr [10 x [10 x i32]], ptr @to, i32 0, i32 %r1, i32 %r25
    store i32 %r0, ptr %r30
    %r36 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r1, i32 %r25
    store i32 0, ptr %r36
    %r42 = getelementptr [10 x [10 x i32]], ptr @rev, i32 0, i32 %r1, i32 %r25
    store i32 %r9, ptr %r42
    %r52 = add i32 %r9,1
    store i32 %r52, ptr %r8
    %r59 = add i32 %r25,1
    store i32 %r59, ptr %r24
    ret void
}
define i32 @dfs(i32 %r0,i32 %r1,i32 %r2)
{
L0:  ;
    br label %L1
L1:  ;
    %r8 = icmp eq i32 %r0,%r1
    br i1 %r8, label %L2, label %L3
L2:  ;
    br label %L18
L3:  ;  preheader1
    %r11 = getelementptr [10 x i32], ptr @used, i32 0, i32 %r0
    store i32 1, ptr %r11
    br label %L4
L4:  ;  exiting1  header1
    %r105 = phi i32 [0,%L3],[%r106,%L19]
    %r17 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r0
    %r18 = load i32, ptr %r17
    %r19 = icmp slt i32 %r105,%r18
    br i1 %r19, label %L5, label %L6
L5:  ;
    %r22 = getelementptr [10 x [10 x i32]], ptr @to, i32 0, i32 %r0, i32 %r105
    %r23 = load i32, ptr %r22
    %r24 = getelementptr [10 x i32], ptr @used, i32 0, i32 %r23
    %r25 = load i32, ptr %r24
    %r26 = icmp ne i32 %r25,0
    br i1 %r26, label %L7, label %L8
L6:  ;
    br label %L18
L7:  ;
    %r29 = add i32 %r105,1
    br label %L19
L8:  ;
    %r32 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r0, i32 %r105
    %r33 = load i32, ptr %r32
    %r35 = icmp sle i32 %r33,0
    br i1 %r35, label %L10, label %L11
L10:  ;
    %r38 = add i32 %r105,1
    br label %L19
L11:  ;
    %r45 = load i32, ptr %r32
    %r46 = icmp slt i32 %r2,%r45
    br i1 %r46, label %L13, label %L14
L13:  ;
    br label %L15
L14:  ;
    %r51 = load i32, ptr %r32
    br label %L15
L15:  ;  exiting1
    %r103 = phi i32 [%r2,%L13],[%r51,%L14]
    %r56 = load i32, ptr %r22
    %r59 = call i32 @dfs(i32 %r56,i32 %r1,i32 %r103)
    %r62 = icmp sgt i32 %r59,0
    br i1 %r62, label %L16, label %L17
L16:  ;
    %r69 = load i32, ptr %r32
    %r71 = sub i32 %r69,%r59
    store i32 %r71, ptr %r32
    %r75 = load i32, ptr %r22
    %r78 = getelementptr [10 x [10 x i32]], ptr @rev, i32 0, i32 %r0, i32 %r105
    %r79 = load i32, ptr %r78
    %r80 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r75, i32 %r79
    %r90 = load i32, ptr %r80
    %r92 = add i32 %r90,%r59
    store i32 %r92, ptr %r80
    br label %L18
L17:  ;
    %r96 = add i32 %r105,1
    br label %L19
L18:  ;
    %r100 = phi i32 [%r2,%L2],[0,%L6],[%r59,%L16]
    ret i32 %r100
L19:  ;latch1
    %r106 = phi i32 [%r29,%L7],[%r38,%L10],[%r96,%L17]
    br label %L4
}
define i32 @max_flow(i32 %r0,i32 %r1)
{
L0:  ;
    br label %L1
L1:  ;  preheader0
    br label %L2
L2:  ;  header0
    %r26 = phi i32 [0,%L1],[%r22,%L6]
    br label %L3
L3:  ;  exiting0
    %r8 = getelementptr [10 x i32], ptr @used, i32 0
    call void @my_memset(ptr %r8,i32 0,i32 10)
    %r15 = call i32 @dfs(i32 %r0,i32 %r1,i32 1879048192)
    %r18 = icmp eq i32 %r15,0
    br i1 %r18, label %L5, label %L6
L5:  ;
    br label %L7
L6:  ;  latch0
    %r22 = add i32 %r26,%r15
    br label %L2
L7:  ;
    %r25 = phi i32 [%r26,%L5]
    ret i32 %r25
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;  preheader0
    %r4 = call i32 @getint()
    %r5 = call i32 @getint()
    %r6 = getelementptr [10 x i32], ptr @size, i32 0
    call void @my_memset(ptr %r6,i32 0,i32 10)
    br label %L2
L2:  ;  exiting0  header0
    %r31 = phi i32 [%r5,%L1],[%r25,%L3]
    %r11 = icmp sgt i32 %r31,0
    br i1 %r11, label %L3, label %L4
L3:  ;  latch0
    %r16 = call i32 @getint()
    %r17 = call i32 @getint()
    %r19 = call i32 @getint()
    call void @add_node(i32 %r16,i32 %r17,i32 %r19)
    %r25 = sub i32 %r31,1
    br label %L2
L4:  ;
    %r28 = call i32 @max_flow(i32 1,i32 %r4)
    call void @putint(i32 %r28)
    call void @putch(i32 10)
    ret i32 0
}
