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
@V = global [200x [200x i32]] zeroinitializer
define i32 @KnapSack(i32 %r0,ptr %r1,ptr %r2,ptr %r3,i32 %r4)
{
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r112 = phi i32 [1,%L1],[%r73,%L7]
    %r14 = icmp sle i32 %r112,%r0
    br i1 %r14, label %L3, label %L4
L3:  ;
    br label %L5
L4:  ;
    br label %L14
L5:  ;
    %r109 = phi i32 [0,%L3],[%r70,%L10]
    %r19 = add i32 %r4,1
    %r20 = icmp slt i32 %r109,%r19
    br i1 %r20, label %L6, label %L7
L6:  ;
    %r23 = getelementptr i32, ptr %r1, i32 %r112
    %r24 = load i32, ptr %r23
    %r25 = icmp slt i32 %r109,%r24
    br i1 %r25, label %L8, label %L9
L7:  ;
    %r73 = add i32 %r112,1
    br label %L2
L8:  ;
    %r28 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r112, i32 %r109
    %r31 = sub i32 %r112,1
    %r33 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r31, i32 %r109
    %r34 = load i32, ptr %r33
    store i32 %r34, ptr %r28
    br label %L10
L9:  ;
    %r38 = sub i32 %r112,1
    %r40 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r38, i32 %r109
    %r41 = load i32, ptr %r40
    %r45 = sub i32 %r112,1
    %r48 = getelementptr i32, ptr %r1, i32 %r112
    %r49 = load i32, ptr %r48
    %r50 = sub i32 %r109,%r49
    %r51 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r45, i32 %r50
    %r52 = load i32, ptr %r51
    %r54 = getelementptr i32, ptr %r2, i32 %r112
    %r55 = load i32, ptr %r54
    %r56 = add i32 %r52,%r55
    %r59 = icmp sgt i32 %r41,%r56
    br i1 %r59, label %L11, label %L12
L10:  ;
    %r70 = add i32 %r109,1
    br label %L5
L11:  ;
    %r62 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r112, i32 %r109
    store i32 %r41, ptr %r62
    br label %L13
L12:  ;
    %r66 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r112, i32 %r109
    store i32 %r56, ptr %r66
    br label %L13
L13:  ;
    br label %L10
L14:  ;
    %r113 = phi i32 [%r0,%L4],[%r103,%L19]
    %r111 = phi i32 [%r4,%L4],[%r110,%L19]
    %r78 = icmp sge i32 %r113,1
    br i1 %r78, label %L15, label %L16
L15:  ;
    %r81 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r113, i32 %r111
    %r82 = load i32, ptr %r81
    %r85 = sub i32 %r113,1
    %r87 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r85, i32 %r111
    %r88 = load i32, ptr %r87
    %r89 = icmp sgt i32 %r82,%r88
    br i1 %r89, label %L17, label %L18
L16:  ;
    %r106 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r0, i32 %r4
    %r107 = load i32, ptr %r106
    ret i32 %r107
L17:  ;
    %r91 = getelementptr i32, ptr %r3, i32 %r113
    store i32 1, ptr %r91
    %r95 = getelementptr i32, ptr %r1, i32 %r113
    %r96 = load i32, ptr %r95
    %r97 = sub i32 %r111,%r96
    br label %L19
L18:  ;
    %r99 = getelementptr i32, ptr %r3, i32 %r113
    store i32 0, ptr %r99
    br label %L19
L19:  ;
    %r110 = phi i32 [%r97,%L17],[%r111,%L18]
    %r103 = sub i32 %r113,1
    br label %L14
}
define i32 @main()
{
L0:  ;
    %r28 = alloca [6 x i32]
    %r15 = alloca [6 x i32]
    %r2 = alloca [6 x i32]
    br label %L1
L1:  ;
    call void @llvm.memset.p0.i32(ptr %r2,i8 0,i32 24,i1 0)
    %r4 = getelementptr [6 x i32], ptr %r2, i32 0, i32 0
    store i32 0, ptr %r4
    %r6 = getelementptr [6 x i32], ptr %r2, i32 0, i32 1
    store i32 2, ptr %r6
    %r8 = getelementptr [6 x i32], ptr %r2, i32 0, i32 2
    store i32 2, ptr %r8
    %r10 = getelementptr [6 x i32], ptr %r2, i32 0, i32 3
    store i32 6, ptr %r10
    %r12 = getelementptr [6 x i32], ptr %r2, i32 0, i32 4
    store i32 5, ptr %r12
    %r14 = getelementptr [6 x i32], ptr %r2, i32 0, i32 5
    store i32 4, ptr %r14
    call void @llvm.memset.p0.i32(ptr %r15,i8 0,i32 24,i1 0)
    %r17 = getelementptr [6 x i32], ptr %r15, i32 0, i32 0
    store i32 0, ptr %r17
    %r19 = getelementptr [6 x i32], ptr %r15, i32 0, i32 1
    store i32 6, ptr %r19
    %r21 = getelementptr [6 x i32], ptr %r15, i32 0, i32 2
    store i32 3, ptr %r21
    %r23 = getelementptr [6 x i32], ptr %r15, i32 0, i32 3
    store i32 5, ptr %r23
    %r25 = getelementptr [6 x i32], ptr %r15, i32 0, i32 4
    store i32 4, ptr %r25
    %r27 = getelementptr [6 x i32], ptr %r15, i32 0, i32 5
    store i32 6, ptr %r27
    %r34 = getelementptr [6 x i32], ptr %r2, i32 0
    %r35 = getelementptr [6 x i32], ptr %r15, i32 0
    %r36 = getelementptr [6 x i32], ptr %r28, i32 0
    %r38 = call i32 @KnapSack(i32 5,ptr %r34,ptr %r35,ptr %r36,i32 10)
    call void @putint(i32 %r38)
    ret i32 0
}
