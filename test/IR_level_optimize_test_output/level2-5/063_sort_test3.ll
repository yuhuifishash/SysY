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
@n = global i32 zeroinitializer
define i32 @QuickSort(ptr %r0,i32 %r1,i32 %r2)
{
L0:
    br label %L1
L1:
    %r7 = icmp slt i32 %r1,%r2
    br i1 %r7, label %L2, label %L3
L2:
    %r19 = getelementptr i32, ptr %r0, i32 %r1
    %r20 = load i32, ptr %r19
    %r23 = icmp slt i32 %r1,%r2
    br i1 %r23, label %L28, label %L7
L3:
    ret i32 0
L5:
    %r156 = phi i32 [%r159,%L6],[%r1,%L28]
    %r151 = phi i32 [%r153,%L6],[%r2,%L28]
    %r28 = icmp slt i32 %r156,%r151
    br i1 %r28, label %L12, label %L11
L6:
    %r124 = icmp slt i32 %r159,%r153
    br i1 %r124, label %L5, label %L7
L7:
    %r157 = phi i32 [%r1,%L2],[%r159,%L6]
    %r129 = getelementptr i32, ptr %r0, i32 %r157
    store i32 %r20, ptr %r129
    %r134 = sub i32 %r157,1
    %r135 = getelementptr i32, ptr %r0
    %r138 = call i32 @QuickSort(ptr %r135,i32 %r1,i32 %r134)
    %r141 = add i32 %r157,1
    %r145 = call i32 @QuickSort(ptr %r135,i32 %r141,i32 %r2)
    br label %L3
L9:
    %r149 = phi i32 [%r45,%L14],[%r151,%L29]
    %r45 = sub i32 %r149,1
    br label %L10
L10:
    %r48 = icmp slt i32 %r156,%r45
    br i1 %r48, label %L14, label %L11
L11:
    %r150 = phi i32 [%r151,%L5],[%r151,%L12],[%r45,%L10],[%r45,%L14]
    %r65 = icmp slt i32 %r156,%r150
    br i1 %r65, label %L16, label %L17
L12:
    %r32 = getelementptr i32, ptr %r0, i32 %r151
    %r33 = load i32, ptr %r32
    %r36 = sub i32 %r20,1
    %r37 = icmp sgt i32 %r33,%r36
    br i1 %r37, label %L29, label %L11
L14:
    %r52 = getelementptr i32, ptr %r0, i32 %r45
    %r53 = load i32, ptr %r52
    %r56 = sub i32 %r20,1
    %r57 = icmp sgt i32 %r53,%r56
    br i1 %r57, label %L9, label %L11
L16:
    %r69 = getelementptr i32, ptr %r0, i32 %r150
    %r70 = load i32, ptr %r69
    %r72 = getelementptr i32, ptr %r0, i32 %r156
    store i32 %r70, ptr %r72
    %r75 = add i32 %r156,1
    br label %L17
L17:
    %r155 = phi i32 [%r156,%L11],[%r75,%L16]
    %r78 = icmp slt i32 %r155,%r150
    br i1 %r78, label %L22, label %L21
L19:
    %r158 = phi i32 [%r93,%L24],[%r155,%L30]
    %r93 = add i32 %r158,1
    br label %L20
L20:
    %r96 = icmp slt i32 %r93,%r150
    br i1 %r96, label %L24, label %L21
L21:
    %r159 = phi i32 [%r155,%L17],[%r155,%L22],[%r93,%L20],[%r93,%L24]
    %r111 = icmp slt i32 %r159,%r150
    br i1 %r111, label %L26, label %L27
L22:
    %r82 = getelementptr i32, ptr %r0, i32 %r155
    %r83 = load i32, ptr %r82
    %r85 = icmp slt i32 %r83,%r20
    br i1 %r85, label %L30, label %L21
L24:
    %r100 = getelementptr i32, ptr %r0, i32 %r93
    %r101 = load i32, ptr %r100
    %r103 = icmp slt i32 %r101,%r20
    br i1 %r103, label %L19, label %L21
L26:
    %r115 = getelementptr i32, ptr %r0, i32 %r159
    %r116 = load i32, ptr %r115
    %r118 = getelementptr i32, ptr %r0, i32 %r150
    store i32 %r116, ptr %r118
    %r121 = sub i32 %r150,1
    br label %L27
L27:
    %r153 = phi i32 [%r150,%L21],[%r121,%L26]
    br label %L6
L28:
    br label %L5
L29:
    br label %L9
L30:
    br label %L19
}
define i32 @main()
{
L0:
    %r1 = alloca [10 x i32]
    br label %L1
L1:
    store i32 10, ptr @n
    %r4 = getelementptr [10 x i32], ptr %r1, i32 0, i32 0
    store i32 4, ptr %r4
    %r7 = getelementptr [10 x i32], ptr %r1, i32 0, i32 1
    store i32 3, ptr %r7
    %r10 = getelementptr [10 x i32], ptr %r1, i32 0, i32 2
    store i32 9, ptr %r10
    %r13 = getelementptr [10 x i32], ptr %r1, i32 0, i32 3
    store i32 2, ptr %r13
    %r16 = getelementptr [10 x i32], ptr %r1, i32 0, i32 4
    store i32 0, ptr %r16
    %r19 = getelementptr [10 x i32], ptr %r1, i32 0, i32 5
    store i32 1, ptr %r19
    %r22 = getelementptr [10 x i32], ptr %r1, i32 0, i32 6
    store i32 6, ptr %r22
    %r25 = getelementptr [10 x i32], ptr %r1, i32 0, i32 7
    store i32 5, ptr %r25
    %r28 = getelementptr [10 x i32], ptr %r1, i32 0, i32 8
    store i32 7, ptr %r28
    %r31 = getelementptr [10 x i32], ptr %r1, i32 0, i32 9
    store i32 8, ptr %r31
    %r38 = getelementptr i32, ptr %r1, i32 0
    %r41 = call i32 @QuickSort(ptr %r38,i32 0,i32 9)
    %r43 = load i32, ptr @n
    %r44 = icmp slt i32 %r41,%r43
    br i1 %r44, label %L6, label %L5
L3:
    %r64 = phi i32 [%r41,%L6],[%r57,%L4]
    %r50 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r64
    %r51 = load i32, ptr %r50
    call void @putint(i32 %r51)
    call void @putch(i32 10)
    %r57 = add i32 %r64,1
    br label %L4
L4:
    %r59 = load i32, ptr @n
    %r60 = icmp slt i32 %r57,%r59
    br i1 %r60, label %L3, label %L5
L5:
    ret i32 0
L6:
    br label %L3
}
