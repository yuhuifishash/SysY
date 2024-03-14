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
define i32 @concat(ptr %r0,ptr %r1,ptr %r2)
{
L0:  ;
    br label %L1
L1:  ;  preheader0
    br label %L2
L2:  ;  exiting0  header0
    %r36 = phi i32 [0,%L1],[%r16,%L3]
    %r8 = icmp slt i32 %r36,3
    br i1 %r8, label %L3, label %L4
L3:  ;  latch0
    %r10 = getelementptr i32, ptr %r2, i32 %r36
    %r12 = getelementptr i32, ptr %r0, i32 %r36
    %r13 = load i32, ptr %r12
    store i32 %r13, ptr %r10
    %r16 = add i32 %r36,1
    br label %L2
L4:  ;  preheader1
    br label %L5
L5:  ;  exiting1  header1
    %r37 = phi i32 [%r36,%L4],[%r30,%L6]
    %r35 = phi i32 [0,%L4],[%r33,%L6]
    %r22 = icmp slt i32 %r35,3
    br i1 %r22, label %L6, label %L7
L6:  ;  latch1
    %r24 = getelementptr i32, ptr %r2, i32 %r37
    %r26 = getelementptr i32, ptr %r1, i32 %r35
    %r27 = load i32, ptr %r26
    store i32 %r27, ptr %r24
    %r30 = add i32 %r37,1
    %r33 = add i32 %r35,1
    br label %L5
L7:  ;
    ret i32 0
}
define i32 @main()
{
L0:  ;
    %r6 = alloca [6 x i32]
    %r5 = alloca [3 x i32]
    %r4 = alloca [3 x i32]
    %r3 = alloca [3 x i32]
    %r2 = alloca [3 x i32]
    %r1 = alloca [3 x i32]
    %r0 = alloca [3 x i32]
    br label %L1
L1:  ;  preheader0
    br label %L2
L2:  ;  exiting0  header0
    %r56 = phi i32 [0,%L1],[%r35,%L3]
    %r14 = icmp slt i32 %r56,3
    br i1 %r14, label %L3, label %L4
L3:  ;  latch0
    %r16 = getelementptr [3 x i32], ptr %r0, i32 0, i32 %r56
    store i32 %r56, ptr %r16
    %r19 = getelementptr [3 x i32], ptr %r1, i32 0, i32 %r56
    store i32 %r56, ptr %r19
    %r22 = getelementptr [3 x i32], ptr %r2, i32 0, i32 %r56
    store i32 %r56, ptr %r22
    %r25 = getelementptr [3 x i32], ptr %r3, i32 0, i32 %r56
    store i32 %r56, ptr %r25
    %r28 = getelementptr [3 x i32], ptr %r4, i32 0, i32 %r56
    store i32 %r56, ptr %r28
    %r31 = getelementptr [3 x i32], ptr %r5, i32 0, i32 %r56
    store i32 %r56, ptr %r31
    %r35 = add i32 %r56,1
    br label %L2
L4:  ;  preheader1
    %r36 = getelementptr [3 x i32], ptr %r0, i32 0
    %r37 = getelementptr [3 x i32], ptr %r3, i32 0
    %r38 = getelementptr [6 x i32], ptr %r6, i32 0
    %r39 = call i32 @concat(ptr %r36,ptr %r37,ptr %r38)
    br label %L5
L5:  ;  exiting1  header1
    %r57 = phi i32 [%r39,%L4],[%r51,%L6]
    %r44 = icmp slt i32 %r57,6
    br i1 %r44, label %L6, label %L7
L6:  ;  latch1
    %r46 = getelementptr [6 x i32], ptr %r6, i32 0, i32 %r57
    %r47 = load i32, ptr %r46
    call void @putint(i32 %r47)
    %r51 = add i32 %r57,1
    br label %L5
L7:  ;
    call void @putch(i32 10)
    ret i32 0
}
