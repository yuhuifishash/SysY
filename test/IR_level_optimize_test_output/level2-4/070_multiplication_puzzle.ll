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
@a = global [6 x i32] [i32 10,i32 1,i32 50,i32 50,i32 20,i32 5]
@dp = global [10x [10x i32]] zeroinitializer
define i32 @main()
{
L0:
    br label %L1
L1:
    br label %L18
L3:
    %r140 = phi i32 [%r107,%L4],[3,%L18]
    %r132 = phi i32 [%r131,%L4],[0,%L18]
    %r128 = phi i32 [%r127,%L4],[0,%L18]
    %r124 = phi i32 [%r123,%L4],[0,%L18]
    %r23 = sub i32 6,%r140
    %r25 = add i32 %r23,1
    %r26 = icmp slt i32 0,%r25
    br i1 %r26, label %L19, label %L9
L4:
    %r110 = icmp sle i32 %r107,6
    br i1 %r110, label %L3, label %L5
L5:
    %r117 = getelementptr [10 x [10 x i32]], ptr @dp, i32 0, i32 0, i32 5
    %r118 = load i32, ptr %r117
    call void @putint(i32 %r118)
    ret i32 0
L7:
    %r138 = phi i32 [%r95,%L8],[0,%L19]
    %r122 = phi i32 [%r121,%L8],[%r124,%L19]
    %r31 = add i32 %r138,%r140
    %r33 = sub i32 %r31,1
    %r36 = add i32 %r138,1
    %r39 = icmp slt i32 %r36,%r33
    br i1 %r39, label %L20, label %L13
L8:
    %r102 = icmp slt i32 %r95,%r101
    br i1 %r102, label %L7, label %L9
L9:
    %r131 = phi i32 [%r132,%L3],[%r135,%L8]
    %r127 = phi i32 [%r128,%L3],[%r33,%L8]
    %r123 = phi i32 [%r124,%L3],[%r121,%L8]
    %r107 = add i32 %r140,1
    br label %L4
L11:
    %r134 = phi i32 [%r87,%L12],[%r36,%L20]
    %r44 = getelementptr i32, ptr %r142, i32 %r134
    %r45 = load i32, ptr %r44
    %r48 = getelementptr [10 x [10 x i32]], ptr @dp, i32 0, i32 %r134, i32 %r33
    %r49 = load i32, ptr %r48
    %r50 = add i32 %r45,%r49
    %r53 = load i32, ptr %r52
    %r55 = getelementptr [6 x i32], ptr @a, i32 0, i32 %r134
    %r56 = load i32, ptr %r55
    %r57 = mul i32 %r53,%r56
    %r60 = load i32, ptr %r59
    %r61 = mul i32 %r57,%r60
    %r62 = add i32 %r50,%r61
    %r66 = load i32, ptr %r65
    %r67 = icmp eq i32 %r66,0
    br i1 %r67, label %L14, label %L16
L12:
    %r90 = icmp slt i32 %r87,%r33
    br i1 %r90, label %L11, label %L13
L13:
    %r135 = phi i32 [%r36,%L7],[%r87,%L12]
    %r121 = phi i32 [%r122,%L7],[%r62,%L12]
    %r95 = add i32 %r138,1
    br label %L8
L14:
    %r84 = getelementptr [10 x [10 x i32]], ptr @dp, i32 0, i32 %r138, i32 %r33
    store i32 %r62, ptr %r84
    br label %L15
L15:
    %r87 = add i32 %r134,1
    br label %L12
L16:
    %r73 = getelementptr [10 x [10 x i32]], ptr @dp, i32 0, i32 %r138, i32 %r33
    %r74 = load i32, ptr %r73
    %r75 = icmp slt i32 %r62,%r74
    br i1 %r75, label %L14, label %L15
L18:
    br label %L3
L19:
    %r99 = sub i32 6,%r140
    %r101 = add i32 %r99,1
    br label %L7
L20:
    %r142 = getelementptr [10 x [10 x i32]], ptr @dp, i32 0, i32 %r138
    %r52 = getelementptr [6 x i32], ptr @a, i32 0, i32 %r138
    %r59 = getelementptr [6 x i32], ptr @a, i32 0, i32 %r33
    %r65 = getelementptr i32, ptr %r142, i32 %r33
    br label %L11
}
