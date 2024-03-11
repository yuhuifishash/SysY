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
define i32 @maxSubArray(ptr %r0,i32 %r1)
{
L0:  ;
    br label %L1
L1:  ;
    %r5 = icmp eq i32 %r1,0
    br i1 %r5, label %L2, label %L3
L2:  ;
    ret i32 0
L3:  ;
    %r9 = icmp eq i32 %r1,1
    br i1 %r9, label %L4, label %L5
L4:  ;
    %r11 = getelementptr i32, ptr %r0, i32 0
    %r12 = load i32, ptr %r11
    ret i32 %r12
L5:  ;  preheader0
    %r16 = getelementptr i32, ptr %r0, i32 0
    %r17 = load i32, ptr %r16
    br label %L6
L6:  ;  exiting0  header0
    %r48 = phi i32 [%r17,%L5],[%r35,%L12]
    %r46 = phi i32 [%r17,%L5],[%r45,%L12]
    %r44 = phi i32 [1,%L5],[%r42,%L12]
    %r26 = icmp slt i32 %r44,%r1
    br i1 %r26, label %L7, label %L8
L7:  ;
    %r29 = icmp slt i32 %r48,0
    br i1 %r29, label %L9, label %L10
L8:  ;
    ret i32 %r46
L9:  ;
    br label %L10
L10:  ;
    %r47 = phi i32 [%r48,%L7],[0,%L9]
    %r33 = getelementptr i32, ptr %r0, i32 %r44
    %r34 = load i32, ptr %r33
    %r35 = add i32 %r47,%r34
    %r38 = icmp slt i32 %r46,%r35
    br i1 %r38, label %L11, label %L12
L11:  ;
    br label %L12
L12:  ;  latch0
    %r45 = phi i32 [%r46,%L10],[%r35,%L11]
    %r42 = add i32 %r44,1
    br label %L6
}
define i32 @main()
{
L0:  ;
    %r2 = alloca [10 x i32]
    br label %L1
L1:  ;
    %r4 = getelementptr [10 x i32], ptr %r2, i32 0, i32 0
    store i32 -4, ptr %r4
    %r8 = getelementptr [10 x i32], ptr %r2, i32 0, i32 1
    store i32 3, ptr %r8
    %r11 = getelementptr [10 x i32], ptr %r2, i32 0, i32 2
    store i32 9, ptr %r11
    %r14 = getelementptr [10 x i32], ptr %r2, i32 0, i32 3
    store i32 -2, ptr %r14
    %r18 = getelementptr [10 x i32], ptr %r2, i32 0, i32 4
    store i32 0, ptr %r18
    %r21 = getelementptr [10 x i32], ptr %r2, i32 0, i32 5
    store i32 1, ptr %r21
    %r24 = getelementptr [10 x i32], ptr %r2, i32 0, i32 6
    store i32 -6, ptr %r24
    %r28 = getelementptr [10 x i32], ptr %r2, i32 0, i32 7
    store i32 5, ptr %r28
    %r31 = getelementptr [10 x i32], ptr %r2, i32 0, i32 8
    store i32 7, ptr %r31
    %r34 = getelementptr [10 x i32], ptr %r2, i32 0, i32 9
    store i32 8, ptr %r34
    %r37 = getelementptr [10 x i32], ptr %r2, i32 0
    %r39 = call i32 @maxSubArray(ptr %r37,i32 10)
    ret i32 %r39
}
