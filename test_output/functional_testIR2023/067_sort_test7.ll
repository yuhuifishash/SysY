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
@buf = global [2x [100x i32]] zeroinitializer
define void @merge_sort(i32 %r0,i32 %r1)
{
L0:  ;
    br label %L1
L1:  ;
    %r6 = add i32 %r0,1
    %r8 = icmp sge i32 %r6,%r1
    br i1 %r8, label %L2, label %L3
L2:  ;
    ret void
L3:  ;
    %r12 = add i32 %r0,%r1
    %r14 = sdiv i32 %r12,2
    call void @merge_sort(i32 %r0,i32 %r14)
    call void @merge_sort(i32 %r14,i32 %r1)
    br label %L4
L4:  ;
    %r115 = phi i32 [%r0,%L3],[%r114,%L10]
    %r112 = phi i32 [%r14,%L3],[%r111,%L10]
    %r108 = phi i32 [%r0,%L3],[%r62,%L10]
    %r27 = icmp slt i32 %r115,%r14
    br i1 %r27, label %L7, label %L6
L5:  ;
    %r33 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 0, i32 %r115
    %r34 = load i32, ptr %r33
    %r37 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 0, i32 %r112
    %r38 = load i32, ptr %r37
    %r39 = icmp slt i32 %r34,%r38
    br i1 %r39, label %L8, label %L9
L6:  ;
    br label %L11
L7:  ;
    %r30 = icmp slt i32 %r112,%r1
    br i1 %r30, label %L5, label %L6
L8:  ;
    %r42 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 1, i32 %r108
    %r46 = load i32, ptr %r33
    store i32 %r46, ptr %r42
    %r49 = add i32 %r115,1
    br label %L10
L9:  ;
    %r52 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 1, i32 %r108
    %r56 = load i32, ptr %r37
    store i32 %r56, ptr %r52
    %r59 = add i32 %r112,1
    br label %L10
L10:  ;
    %r114 = phi i32 [%r49,%L8],[%r115,%L9]
    %r111 = phi i32 [%r112,%L8],[%r59,%L9]
    %r62 = add i32 %r108,1
    br label %L4
L11:  ;
    %r116 = phi i32 [%r115,%L6],[%r75,%L12]
    %r109 = phi i32 [%r108,%L6],[%r78,%L12]
    %r65 = icmp slt i32 %r116,%r14
    br i1 %r65, label %L12, label %L13
L12:  ;
    %r68 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 1, i32 %r109
    %r71 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 0, i32 %r116
    %r72 = load i32, ptr %r71
    store i32 %r72, ptr %r68
    %r75 = add i32 %r116,1
    %r78 = add i32 %r109,1
    br label %L11
L13:  ;
    br label %L14
L14:  ;
    %r113 = phi i32 [%r112,%L13],[%r91,%L15]
    %r110 = phi i32 [%r109,%L13],[%r94,%L15]
    %r81 = icmp slt i32 %r113,%r1
    br i1 %r81, label %L15, label %L16
L15:  ;
    %r84 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 1, i32 %r110
    %r87 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 0, i32 %r113
    %r88 = load i32, ptr %r87
    store i32 %r88, ptr %r84
    %r91 = add i32 %r113,1
    %r94 = add i32 %r110,1
    br label %L14
L16:  ;
    br label %L17
L17:  ;
    %r117 = phi i32 [%r0,%L16],[%r107,%L18]
    %r97 = icmp slt i32 %r117,%r1
    br i1 %r97, label %L18, label %L19
L18:  ;
    %r100 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 0, i32 %r117
    %r103 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 1, i32 %r117
    %r104 = load i32, ptr %r103
    store i32 %r104, ptr %r100
    %r107 = add i32 %r117,1
    br label %L17
L19:  ;
    ret void
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r2 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 0
    %r3 = call i32 @getarray(ptr %r2)
    call void @merge_sort(i32 0,i32 %r3)
    call void @putarray(i32 %r3,ptr %r2)
    ret i32 0
}
