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
define i32 @main()
{
L0:
    %r28 = alloca [6 x i32]
    %r15 = alloca [6 x i32]
    %r2 = alloca [6 x i32]
    br label %L1
L1:
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
    %r34 = getelementptr i32, ptr %r2, i32 0
    %r35 = getelementptr i32, ptr %r15, i32 0
    %r36 = getelementptr i32, ptr %r28, i32 0
    %r38 = call i32 @KnapSack(i32 5,ptr %r34,ptr %r35,ptr %r36,i32 10)
    call void @putint(i32 %r38)
    ret i32 0
}
define i32 @KnapSack(i32 %r0,ptr %r1,ptr %r2,ptr %r3,i32 %r4)
{
L0:
    br label %L1
L1:
    %r14 = icmp sle i32 1,%r0
    br i1 %r14, label %L23, label %L5
L3:
    %r144 = phi i32 [1,%L23],[%r88,%L4]
    %r22 = icmp slt i32 0,%r21
    br i1 %r22, label %L24, label %L9
L4:
    %r91 = icmp sle i32 %r88,%r0
    br i1 %r91, label %L3, label %L5
L5:
    %r98 = icmp sge i32 %r0,1
    br i1 %r98, label %L25, label %L19
L7:
    %r139 = phi i32 [0,%L24],[%r78,%L8]
    %r28 = load i32, ptr %r27
    %r29 = icmp slt i32 %r139,%r28
    br i1 %r29, label %L10, label %L11
L8:
    %r83 = icmp slt i32 %r78,%r82
    br i1 %r83, label %L7, label %L9
L9:
    %r88 = add i32 %r144,1
    br label %L4
L10:
    %r34 = sub i32 %r144,1
    %r36 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r34, i32 %r139
    %r37 = load i32, ptr %r36
    %r40 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r144, i32 %r139
    store i32 %r37, ptr %r40
    br label %L12
L11:
    %r44 = sub i32 %r144,1
    %r150 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r44
    %r46 = getelementptr i32, ptr %r150, i32 %r139
    %r47 = load i32, ptr %r46
    %r54 = getelementptr i32, ptr %r1, i32 %r144
    %r55 = load i32, ptr %r54
    %r56 = sub i32 %r139,%r55
    %r57 = getelementptr i32, ptr %r150, i32 %r56
    %r58 = load i32, ptr %r57
    %r60 = getelementptr i32, ptr %r2, i32 %r144
    %r61 = load i32, ptr %r60
    %r62 = add i32 %r58,%r61
    %r65 = icmp sgt i32 %r47,%r62
    br i1 %r65, label %L13, label %L14
L12:
    %r78 = add i32 %r139,1
    br label %L8
L13:
    %r71 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r144, i32 %r139
    store i32 %r47, ptr %r71
    br label %L15
L14:
    %r75 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r144, i32 %r139
    store i32 %r62, ptr %r75
    br label %L15
L15:
    br label %L12
L17:
    %r146 = phi i32 [%r0,%L25],[%r127,%L18]
    %r142 = phi i32 [%r4,%L25],[%r141,%L18]
    %r103 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r146, i32 %r142
    %r104 = load i32, ptr %r103
    %r107 = sub i32 %r146,1
    %r109 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r107, i32 %r142
    %r110 = load i32, ptr %r109
    %r111 = icmp sgt i32 %r104,%r110
    br i1 %r111, label %L20, label %L21
L18:
    %r130 = icmp sge i32 %r127,1
    br i1 %r130, label %L17, label %L19
L19:
    %r135 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r0, i32 %r4
    %r136 = load i32, ptr %r135
    ret i32 %r136
L20:
    %r116 = getelementptr i32, ptr %r3, i32 %r146
    store i32 1, ptr %r116
    %r119 = getelementptr i32, ptr %r1, i32 %r146
    %r120 = load i32, ptr %r119
    %r121 = sub i32 %r142,%r120
    br label %L22
L21:
    %r124 = getelementptr i32, ptr %r3, i32 %r146
    store i32 0, ptr %r124
    br label %L22
L22:
    %r141 = phi i32 [%r121,%L20],[%r142,%L21]
    %r127 = sub i32 %r146,1
    br label %L18
L23:
    %r21 = add i32 %r4,1
    br label %L3
L24:
    %r27 = getelementptr i32, ptr %r1, i32 %r144
    %r82 = add i32 %r4,1
    br label %L7
L25:
    br label %L17
}
