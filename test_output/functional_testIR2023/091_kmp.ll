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
define void @get_next(ptr %r0,ptr %r1)
{
L0:  ;
    br label %L1
L1:  ;
    %r3 = getelementptr i32, ptr %r1, i32 0
    store i32 -1, ptr %r3
    br label %L2
L2:  ;
    %r41 = phi i32 [0,%L1],[%r40,%L7]
    %r39 = phi i32 [-1,%L1],[%r38,%L7]
    %r12 = getelementptr i32, ptr %r0, i32 %r41
    %r13 = load i32, ptr %r12
    %r14 = icmp ne i32 %r13,0
    br i1 %r14, label %L3, label %L4
L3:  ;
    %r18 = icmp eq i32 %r39,-1
    br i1 %r18, label %L5, label %L8
L4:  ;
    ret void
L5:  ;
    %r28 = add i32 %r39,1
    %r31 = add i32 %r41,1
    %r33 = getelementptr i32, ptr %r1, i32 %r31
    store i32 %r28, ptr %r33
    br label %L7
L6:  ;
    %r36 = getelementptr i32, ptr %r1, i32 %r39
    %r37 = load i32, ptr %r36
    br label %L7
L7:  ;latch
    %r40 = phi i32 [%r31,%L5],[%r41,%L6]
    %r38 = phi i32 [%r28,%L5],[%r37,%L6]
    br label %L2
L8:  ;
    %r21 = load i32, ptr %r12
    %r23 = getelementptr i32, ptr %r0, i32 %r39
    %r24 = load i32, ptr %r23
    %r25 = icmp eq i32 %r21,%r24
    br i1 %r25, label %L5, label %L6
}
define i32 @KMP(ptr %r0,ptr %r1)
{
L0:  ;
    %r2 = alloca [4096 x i32]
    br label %L1
L1:  ;
    %r3 = getelementptr i32, ptr %r0
    %r4 = getelementptr [4096 x i32], ptr %r2, i32 0
    call void @get_next(ptr %r3,ptr %r4)
    br label %L2
L2:  ;
    %r50 = phi i32 [0,%L1],[%r49,%L7]
    %r47 = phi i32 [0,%L1],[%r46,%L7]
    %r10 = getelementptr i32, ptr %r1, i32 %r47
    %r11 = load i32, ptr %r10
    %r12 = icmp ne i32 %r11,0
    br i1 %r12, label %L3, label %L4
L3:  ;
    %r14 = getelementptr i32, ptr %r0, i32 %r50
    %r15 = load i32, ptr %r14
    %r18 = load i32, ptr %r10
    %r19 = icmp eq i32 %r15,%r18
    br i1 %r19, label %L5, label %L6
L4:  ;
    ret i32 -1
L5:  ;
    %r22 = add i32 %r50,1
    %r25 = add i32 %r47,1
    %r27 = getelementptr i32, ptr %r0, i32 %r22
    %r28 = load i32, ptr %r27
    %r29 = icmp eq i32 %r28,0
    br i1 %r29, label %L8, label %L9
L6:  ;
    %r32 = getelementptr [4096 x i32], ptr %r2, i32 0, i32 %r50
    %r33 = load i32, ptr %r32
    %r37 = icmp eq i32 %r33,-1
    br i1 %r37, label %L10, label %L11
L7:  ;latch
    %r49 = phi i32 [%r22,%L9],[%r51,%L11]
    %r46 = phi i32 [%r25,%L9],[%r48,%L11]
    br label %L2
L8:  ;
    ret i32 %r25
L9:  ;
    br label %L7
L10:  ;
    %r40 = add i32 %r33,1
    %r43 = add i32 %r47,1
    br label %L11
L11:  ;
    %r51 = phi i32 [%r33,%L6],[%r40,%L10]
    %r48 = phi i32 [%r47,%L6],[%r43,%L10]
    br label %L7
}
define i32 @read_str(ptr %r0)
{
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r20 = phi i32 [0,%L1],[%r15,%L6]
    br label %L3
L3:  ;
    %r6 = getelementptr i32, ptr %r0, i32 %r20
    %r7 = call i32 @getch()
    store i32 %r7, ptr %r6
    %r10 = load i32, ptr %r6
    %r12 = icmp eq i32 %r10,10
    br i1 %r12, label %L5, label %L6
L4:  ;
    store i32 0, ptr %r6
    ret i32 %r20
L5:  ;
    br label %L4
L6:  ;latch
    %r15 = add i32 %r20,1
    br label %L2
}
define i32 @main()
{
L0:  ;
    %r1 = alloca [4096 x i32]
    %r0 = alloca [4096 x i32]
    br label %L1
L1:  ;
    %r2 = getelementptr [4096 x i32], ptr %r0, i32 0
    %r3 = call i32 @read_str(ptr %r2)
    %r4 = getelementptr [4096 x i32], ptr %r1, i32 0
    %r5 = call i32 @read_str(ptr %r4)
    %r8 = call i32 @KMP(ptr %r2,ptr %r4)
    call void @putint(i32 %r8)
    call void @putch(i32 10)
    ret i32 0
}
