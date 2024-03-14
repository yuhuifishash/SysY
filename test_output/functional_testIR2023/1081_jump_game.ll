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
define i32 @canJump(ptr %r0,i32 %r1)
{
L0:  ;
    %r15 = alloca [10 x i32]
    br label %L1
L1:  ;
    %r5 = icmp eq i32 %r1,1
    br i1 %r5, label %L2, label %L3
L2:  ;
    br label %L20
L3:  ;
    %r8 = getelementptr i32, ptr %r0, i32 0
    %r9 = load i32, ptr %r8
    %r12 = sub i32 %r1,2
    %r13 = icmp sgt i32 %r9,%r12
    br i1 %r13, label %L4, label %L5
L4:  ;
    br label %L20
L5:  ;  preheader0
    %r22 = sub i32 %r1,1
    br label %L6
L6:  ;  exiting0  header0
    %r92 = phi i32 [0,%L5],[%r29,%L7]
    %r23 = icmp slt i32 %r92,%r22
    br i1 %r23, label %L7, label %L8
L7:  ;  latch0
    %r25 = getelementptr [10 x i32], ptr %r15, i32 0, i32 %r92
    store i32 0, ptr %r25
    %r29 = add i32 %r92,1
    br label %L6
L8:  ;  preheader1
    %r33 = getelementptr [10 x i32], ptr %r15, i32 0, i32 %r22
    store i32 1, ptr %r33
    br label %L9
L9:  ;  exiting1  header1
    %r93 = phi i32 [%r12,%L8],[%r80,%L17]
    %r41 = icmp sgt i32 %r93,-1
    br i1 %r41, label %L10, label %L11
L10:  ;
    %r45 = getelementptr i32, ptr %r0, i32 %r93
    %r46 = load i32, ptr %r45
    %r51 = sub i32 %r22,%r93
    %r52 = icmp slt i32 %r46,%r51
    br i1 %r52, label %L12, label %L13
L11:  ;
    %r82 = getelementptr [10 x i32], ptr %r15, i32 0, i32 0
    %r83 = load i32, ptr %r82
    br label %L20
L12:  ;
    %r55 = load i32, ptr %r45
    br label %L14
L13:  ;
    br label %L14
L14:  ;  preheader2
    %r89 = phi i32 [%r55,%L12],[%r51,%L13]
    br label %L15
L15:  ;  exiting2  header2
    %r90 = phi i32 [%r89,%L14],[%r77,%L19]
    %r64 = icmp sgt i32 %r90,-1
    br i1 %r64, label %L16, label %L17
L16:  ;
    %r67 = add i32 %r93,%r90
    %r68 = getelementptr [10 x i32], ptr %r15, i32 0, i32 %r67
    %r69 = load i32, ptr %r68
    %r71 = icmp ne i32 %r69,0
    br i1 %r71, label %L18, label %L19
L17:  ;  latch1
    %r80 = sub i32 %r93,1
    br label %L9
L18:  ;
    %r73 = getelementptr [10 x i32], ptr %r15, i32 0, i32 %r93
    store i32 1, ptr %r73
    br label %L19
L19:  ;  latch2
    %r77 = sub i32 %r90,1
    br label %L15
L20:  ;
    %r86 = phi i32 [1,%L2],[1,%L4],[%r83,%L11]
    ret i32 %r86
}
define i32 @main()
{
L0:  ;
    %r2 = alloca [10 x i32]
    br label %L1
L1:  ;
    %r4 = getelementptr [10 x i32], ptr %r2, i32 0, i32 0
    store i32 3, ptr %r4
    %r7 = getelementptr [10 x i32], ptr %r2, i32 0, i32 1
    store i32 3, ptr %r7
    %r10 = getelementptr [10 x i32], ptr %r2, i32 0, i32 2
    store i32 9, ptr %r10
    %r13 = getelementptr [10 x i32], ptr %r2, i32 0, i32 3
    store i32 0, ptr %r13
    %r16 = getelementptr [10 x i32], ptr %r2, i32 0, i32 4
    store i32 0, ptr %r16
    %r19 = getelementptr [10 x i32], ptr %r2, i32 0, i32 5
    store i32 1, ptr %r19
    %r22 = getelementptr [10 x i32], ptr %r2, i32 0, i32 6
    store i32 1, ptr %r22
    %r25 = getelementptr [10 x i32], ptr %r2, i32 0, i32 7
    store i32 5, ptr %r25
    %r28 = getelementptr [10 x i32], ptr %r2, i32 0, i32 8
    store i32 7, ptr %r28
    %r31 = getelementptr [10 x i32], ptr %r2, i32 0, i32 9
    store i32 8, ptr %r31
    %r34 = getelementptr [10 x i32], ptr %r2, i32 0
    %r36 = call i32 @canJump(ptr %r34,i32 10)
    ret i32 %r36
}
