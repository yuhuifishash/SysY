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
define i32 @main()
{
L0:  ;
    %r0 = alloca [5 x [5 x i32]]
    br label %L1
L1:  ;  preheader0
    call void @llvm.memset.p0.i32(ptr %r0,i8 0,i32 100,i1 0)
    %r2 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 0, i32 0
    store i32 1, ptr %r2
    %r4 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 0, i32 1
    store i32 1, ptr %r4
    %r6 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 0, i32 2
    store i32 1, ptr %r6
    %r8 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 0, i32 3
    store i32 1, ptr %r8
    %r10 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 0, i32 4
    store i32 1, ptr %r10
    %r12 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 1, i32 0
    store i32 2, ptr %r12
    %r14 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 1, i32 1
    store i32 2, ptr %r14
    %r16 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 1, i32 2
    store i32 2, ptr %r16
    %r18 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 1, i32 3
    store i32 2, ptr %r18
    %r20 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 1, i32 4
    store i32 2, ptr %r20
    %r22 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 2, i32 0
    store i32 3, ptr %r22
    %r24 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 2, i32 1
    store i32 3, ptr %r24
    %r26 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 2, i32 2
    store i32 3, ptr %r26
    %r28 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 2, i32 3
    store i32 3, ptr %r28
    %r30 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 2, i32 4
    store i32 3, ptr %r30
    %r32 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 3, i32 0
    store i32 4, ptr %r32
    %r34 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 3, i32 1
    store i32 4, ptr %r34
    %r36 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 3, i32 2
    store i32 4, ptr %r36
    %r38 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 3, i32 3
    store i32 4, ptr %r38
    %r40 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 3, i32 4
    store i32 4, ptr %r40
    %r42 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 4, i32 0
    store i32 5, ptr %r42
    %r44 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 4, i32 1
    store i32 5, ptr %r44
    %r46 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 4, i32 2
    store i32 5, ptr %r46
    %r48 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 4, i32 3
    store i32 5, ptr %r48
    %r50 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 4, i32 4
    store i32 5, ptr %r50
    br label %L2
L2:  ;  exiting0  header0
    %r95 = phi i32 [0,%L1],[%r90,%L3]
    %r64 = icmp slt i32 %r95,5
    br i1 %r64, label %L3, label %L4
L3:  ;  latch0
    %r69 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 1, i32 %r95
    %r70 = load i32, ptr %r69
    %r80 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 2, i32 %r95
    %r81 = load i32, ptr %r80
    store i32 %r81, ptr %r69
    store i32 %r70, ptr %r80
    %r90 = add i32 %r95,1
    br label %L2
L4:  ;
    %r94 = load i32, ptr %r22
    ret i32 %r94
}
