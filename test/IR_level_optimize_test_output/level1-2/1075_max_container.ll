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
define i32 @maxArea(ptr %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r10 = sub i32 %r1,1
    %r17 = icmp slt i32 0,%r10
    br i1 %r17, label %L14, label %L5
L3:
    %r82 = phi i32 [%r81,%L4],[0,%L14]
    %r79 = phi i32 [%r78,%L4],[%r10,%L14]
    %r76 = phi i32 [%r75,%L4],[-1,%L14]
    %r23 = getelementptr i32, ptr %r0, i32 %r82
    %r24 = load i32, ptr %r23
    %r26 = getelementptr i32, ptr %r0, i32 %r79
    %r27 = load i32, ptr %r26
    %r28 = icmp slt i32 %r24,%r27
    br i1 %r28, label %L6, label %L7
L4:
    %r68 = icmp slt i32 %r81,%r78
    br i1 %r68, label %L3, label %L5
L5:
    %r77 = phi i32 [-1,%L1],[%r75,%L4]
    ret i32 %r77
L6:
    %r33 = sub i32 %r79,%r82
    %r35 = getelementptr i32, ptr %r0, i32 %r82
    %r36 = load i32, ptr %r35
    %r37 = mul i32 %r33,%r36
    br label %L8
L7:
    %r40 = sub i32 %r79,%r82
    %r42 = getelementptr i32, ptr %r0, i32 %r79
    %r43 = load i32, ptr %r42
    %r44 = mul i32 %r40,%r43
    br label %L8
L8:
    %r74 = phi i32 [%r37,%L6],[%r44,%L7]
    %r47 = icmp sgt i32 %r74,%r76
    br i1 %r47, label %L9, label %L10
L9:
    br label %L10
L10:
    %r75 = phi i32 [%r76,%L8],[%r74,%L9]
    %r52 = getelementptr i32, ptr %r0, i32 %r82
    %r53 = load i32, ptr %r52
    %r55 = getelementptr i32, ptr %r0, i32 %r79
    %r56 = load i32, ptr %r55
    %r57 = icmp sgt i32 %r53,%r56
    br i1 %r57, label %L11, label %L12
L11:
    %r62 = sub i32 %r79,1
    br label %L13
L12:
    %r65 = add i32 %r82,1
    br label %L13
L13:
    %r81 = phi i32 [%r82,%L11],[%r65,%L12]
    %r78 = phi i32 [%r62,%L11],[%r79,%L12]
    br label %L4
L14:
    br label %L3
}
define i32 @main()
{
L0:
    %r2 = alloca [10 x i32]
    br label %L1
L1:
    %r5 = getelementptr [10 x i32], ptr %r2, i32 0, i32 0
    store i32 3, ptr %r5
    %r8 = getelementptr [10 x i32], ptr %r2, i32 0, i32 1
    store i32 3, ptr %r8
    %r11 = getelementptr [10 x i32], ptr %r2, i32 0, i32 2
    store i32 9, ptr %r11
    %r14 = getelementptr [10 x i32], ptr %r2, i32 0, i32 3
    store i32 0, ptr %r14
    %r17 = getelementptr [10 x i32], ptr %r2, i32 0, i32 4
    store i32 0, ptr %r17
    %r20 = getelementptr [10 x i32], ptr %r2, i32 0, i32 5
    store i32 1, ptr %r20
    %r23 = getelementptr [10 x i32], ptr %r2, i32 0, i32 6
    store i32 1, ptr %r23
    %r26 = getelementptr [10 x i32], ptr %r2, i32 0, i32 7
    store i32 5, ptr %r26
    %r29 = getelementptr [10 x i32], ptr %r2, i32 0, i32 8
    store i32 7, ptr %r29
    %r32 = getelementptr [10 x i32], ptr %r2, i32 0, i32 9
    store i32 8, ptr %r32
    %r34 = getelementptr i32, ptr %r2, i32 0
    %r36 = call i32 @maxArea(ptr %r34,i32 10)
    ret i32 %r36
}
